; ModuleID = 'display.c'
source_filename = "display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vertex = type { float, float, float }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct.Rgb = type { float, float, float }
%struct._elemvertex = type { %struct.Vertex, %struct.Rgb, float, ptr }
%struct._edge = type { ptr, ptr, ptr, ptr, ptr }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.PlaneEqu = type { %struct.Vertex, float }
%struct._interact = type { ptr, ptr, float, float, float, float }

@view_rot_x = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !0
@view_rot_y = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !17
@view_dist = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !19
@view_zoom = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !21
@view_vec = dso_local global %struct.Vertex zeroinitializer, align 4, !dbg !8

; Function Attrs: noinline nounwind uwtable
define dso_local void @radiosity_averaging(ptr noundef %elem, i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !30 {
entry:
  %pc = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %elem, metadata !159, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 %mode, metadata !160, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !161, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pc) #10, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %pc, metadata !163, metadata !DIExpression()), !dbg !167
  %center = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 3, !dbg !168
  %0 = load ptr, ptr %center, align 8, !dbg !168
  %cmp = icmp eq ptr %0, null, !dbg !168
  br i1 %cmp, label %if.else, label %if.then, !dbg !170

if.then:                                          ; preds = %entry
  tail call void @create_radavg_task(ptr noundef nonnull %0, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !171
  %top = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 4, !dbg !173
  %1 = load ptr, ptr %top, align 8, !dbg !173
  tail call void @create_radavg_task(ptr noundef %1, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !174
  %right = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 6, !dbg !175
  %2 = load ptr, ptr %right, align 8, !dbg !175
  tail call void @create_radavg_task(ptr noundef %2, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !176
  %left = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 5, !dbg !177
  %3 = load ptr, ptr %left, align 8, !dbg !177
  tail call void @create_radavg_task(ptr noundef %3, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !178
  br label %cleanup, !dbg !179

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i64 %mode, 0, !dbg !180
  %ev1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 15, !dbg !182
  %4 = load ptr, ptr %ev1, align 8, !dbg !182
  br i1 %cmp2, label %if.then3, label %if.else22, !dbg !183

if.then3:                                         ; preds = %if.else
  %ev2 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 16, !dbg !184
  %5 = load ptr, ptr %ev2, align 8, !dbg !184
  %ev3 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 17, !dbg !186
  %6 = load ptr, ptr %ev3, align 8, !dbg !186
  call void @center_point(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %pc) #10, !dbg !187
  %e12 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 18, !dbg !188
  %7 = load ptr, ptr %e12, align 8, !dbg !188
  %8 = load ptr, ptr %7, align 8, !dbg !188
  %9 = load ptr, ptr %ev2, align 8, !dbg !188
  %cmp7 = icmp eq ptr %8, %9, !dbg !188
  %10 = zext i1 %cmp7 to i64
  call void @llvm.dbg.value(metadata i64 %10, metadata !164, metadata !DIExpression()), !dbg !165
  %11 = ptrtoint ptr %elem to i64, !dbg !189
  %12 = ptrtoint ptr %pc to i64, !dbg !190
  call void @foreach_leaf_edge(ptr noundef nonnull %7, i64 noundef %10, ptr noundef nonnull @add_radiosity_to_vertex, i64 noundef %11, i64 noundef %12, i64 noundef %process_id) #10, !dbg !191
  %e23 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 19, !dbg !192
  %13 = load ptr, ptr %e23, align 8, !dbg !192
  %14 = load ptr, ptr %13, align 8, !dbg !192
  %15 = load ptr, ptr %ev3, align 8, !dbg !192
  %cmp12 = icmp eq ptr %14, %15, !dbg !192
  %16 = zext i1 %cmp12 to i64
  call void @llvm.dbg.value(metadata i64 %16, metadata !164, metadata !DIExpression()), !dbg !165
  call void @foreach_leaf_edge(ptr noundef nonnull %13, i64 noundef %16, ptr noundef nonnull @add_radiosity_to_vertex, i64 noundef %11, i64 noundef %12, i64 noundef %process_id) #10, !dbg !193
  %e31 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 20, !dbg !194
  %17 = load ptr, ptr %e31, align 8, !dbg !194
  %18 = load ptr, ptr %17, align 8, !dbg !194
  %19 = load ptr, ptr %ev1, align 8, !dbg !194
  %cmp18 = icmp eq ptr %18, %19, !dbg !194
  %20 = zext i1 %cmp18 to i64
  call void @llvm.dbg.value(metadata i64 %20, metadata !164, metadata !DIExpression()), !dbg !165
  call void @foreach_leaf_edge(ptr noundef nonnull %17, i64 noundef %20, ptr noundef nonnull @add_radiosity_to_vertex, i64 noundef %11, i64 noundef %12, i64 noundef %process_id) #10, !dbg !195
  br label %cleanup, !dbg !196

if.else22:                                        ; preds = %if.else
  %ev_lock = getelementptr inbounds %struct._elemvertex, ptr %4, i64 0, i32 3, !dbg !197
  %21 = load ptr, ptr %ev_lock, align 8, !dbg !197
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %21) #10, !dbg !200
  %22 = load ptr, ptr %ev1, align 8, !dbg !201
  %weight = getelementptr inbounds %struct._elemvertex, ptr %22, i64 0, i32 2, !dbg !203
  %23 = load float, ptr %weight, align 8, !dbg !203
  %cmp26 = fcmp une float %23, 1.000000e+00, !dbg !204
  br i1 %cmp26, label %if.then28, label %if.end, !dbg !205

if.then28:                                        ; preds = %if.else22
  %div = fdiv float 1.000000e+00, %23, !dbg !206
  call void @llvm.dbg.value(metadata float %div, metadata !162, metadata !DIExpression()), !dbg !165
  %col = getelementptr inbounds %struct._elemvertex, ptr %22, i64 0, i32 1, !dbg !208
  %24 = load float, ptr %col, align 4, !dbg !209
  %mul = fmul float %div, %24, !dbg !209
  store float %mul, ptr %col, align 4, !dbg !209
  %25 = load ptr, ptr %ev1, align 8, !dbg !210
  %g = getelementptr inbounds %struct._elemvertex, ptr %25, i64 0, i32 1, i32 1, !dbg !211
  %26 = load float, ptr %g, align 4, !dbg !212
  %mul34 = fmul float %div, %26, !dbg !212
  store float %mul34, ptr %g, align 4, !dbg !212
  %27 = load ptr, ptr %ev1, align 8, !dbg !213
  %b = getelementptr inbounds %struct._elemvertex, ptr %27, i64 0, i32 1, i32 2, !dbg !214
  %28 = load float, ptr %b, align 4, !dbg !215
  %mul37 = fmul float %div, %28, !dbg !215
  store float %mul37, ptr %b, align 4, !dbg !215
  %29 = load ptr, ptr %ev1, align 8, !dbg !216
  %weight39 = getelementptr inbounds %struct._elemvertex, ptr %29, i64 0, i32 2, !dbg !217
  store float 1.000000e+00, ptr %weight39, align 8, !dbg !218
  %.pre = load ptr, ptr %ev1, align 8, !dbg !219
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then28, %if.else22
  %30 = phi ptr [ %.pre, %if.then28 ], [ %22, %if.else22 ], !dbg !219
  %ev_lock41 = getelementptr inbounds %struct._elemvertex, ptr %30, i64 0, i32 3, !dbg !222
  %31 = load ptr, ptr %ev_lock41, align 8, !dbg !222
  %call43 = tail call i32 @pthread_mutex_unlock(ptr noundef %31) #10, !dbg !223
  %ev244 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 16, !dbg !224
  %32 = load ptr, ptr %ev244, align 8, !dbg !224
  %ev_lock45 = getelementptr inbounds %struct._elemvertex, ptr %32, i64 0, i32 3, !dbg !226
  %33 = load ptr, ptr %ev_lock45, align 8, !dbg !226
  %call47 = tail call i32 @pthread_mutex_lock(ptr noundef %33) #10, !dbg !227
  %34 = load ptr, ptr %ev244, align 8, !dbg !228
  %weight49 = getelementptr inbounds %struct._elemvertex, ptr %34, i64 0, i32 2, !dbg !230
  %35 = load float, ptr %weight49, align 8, !dbg !230
  %cmp51 = fcmp une float %35, 1.000000e+00, !dbg !231
  br i1 %cmp51, label %if.then53, label %if.end71, !dbg !232

if.then53:                                        ; preds = %if.end
  %div56 = fdiv float 1.000000e+00, %35, !dbg !233
  call void @llvm.dbg.value(metadata float %div56, metadata !162, metadata !DIExpression()), !dbg !165
  %col58 = getelementptr inbounds %struct._elemvertex, ptr %34, i64 0, i32 1, !dbg !235
  %36 = load float, ptr %col58, align 4, !dbg !236
  %mul60 = fmul float %div56, %36, !dbg !236
  store float %mul60, ptr %col58, align 4, !dbg !236
  %37 = load ptr, ptr %ev244, align 8, !dbg !237
  %g63 = getelementptr inbounds %struct._elemvertex, ptr %37, i64 0, i32 1, i32 1, !dbg !238
  %38 = load float, ptr %g63, align 4, !dbg !239
  %mul64 = fmul float %div56, %38, !dbg !239
  store float %mul64, ptr %g63, align 4, !dbg !239
  %39 = load ptr, ptr %ev244, align 8, !dbg !240
  %b67 = getelementptr inbounds %struct._elemvertex, ptr %39, i64 0, i32 1, i32 2, !dbg !241
  %40 = load float, ptr %b67, align 4, !dbg !242
  %mul68 = fmul float %div56, %40, !dbg !242
  store float %mul68, ptr %b67, align 4, !dbg !242
  %41 = load ptr, ptr %ev244, align 8, !dbg !243
  %weight70 = getelementptr inbounds %struct._elemvertex, ptr %41, i64 0, i32 2, !dbg !244
  store float 1.000000e+00, ptr %weight70, align 8, !dbg !245
  %.pre175 = load ptr, ptr %ev244, align 8, !dbg !246
  br label %if.end71, !dbg !248

if.end71:                                         ; preds = %if.then53, %if.end
  %42 = phi ptr [ %.pre175, %if.then53 ], [ %34, %if.end ], !dbg !246
  %ev_lock73 = getelementptr inbounds %struct._elemvertex, ptr %42, i64 0, i32 3, !dbg !249
  %43 = load ptr, ptr %ev_lock73, align 8, !dbg !249
  %call75 = tail call i32 @pthread_mutex_unlock(ptr noundef %43) #10, !dbg !250
  %ev376 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 17, !dbg !251
  %44 = load ptr, ptr %ev376, align 8, !dbg !251
  %ev_lock77 = getelementptr inbounds %struct._elemvertex, ptr %44, i64 0, i32 3, !dbg !253
  %45 = load ptr, ptr %ev_lock77, align 8, !dbg !253
  %call79 = tail call i32 @pthread_mutex_lock(ptr noundef %45) #10, !dbg !254
  %46 = load ptr, ptr %ev376, align 8, !dbg !255
  %weight81 = getelementptr inbounds %struct._elemvertex, ptr %46, i64 0, i32 2, !dbg !257
  %47 = load float, ptr %weight81, align 8, !dbg !257
  %cmp83 = fcmp une float %47, 1.000000e+00, !dbg !258
  br i1 %cmp83, label %if.then85, label %if.end103, !dbg !259

if.then85:                                        ; preds = %if.end71
  %div88 = fdiv float 1.000000e+00, %47, !dbg !260
  call void @llvm.dbg.value(metadata float %div88, metadata !162, metadata !DIExpression()), !dbg !165
  %col90 = getelementptr inbounds %struct._elemvertex, ptr %46, i64 0, i32 1, !dbg !262
  %48 = load float, ptr %col90, align 4, !dbg !263
  %mul92 = fmul float %div88, %48, !dbg !263
  store float %mul92, ptr %col90, align 4, !dbg !263
  %49 = load ptr, ptr %ev376, align 8, !dbg !264
  %g95 = getelementptr inbounds %struct._elemvertex, ptr %49, i64 0, i32 1, i32 1, !dbg !265
  %50 = load float, ptr %g95, align 4, !dbg !266
  %mul96 = fmul float %div88, %50, !dbg !266
  store float %mul96, ptr %g95, align 4, !dbg !266
  %51 = load ptr, ptr %ev376, align 8, !dbg !267
  %b99 = getelementptr inbounds %struct._elemvertex, ptr %51, i64 0, i32 1, i32 2, !dbg !268
  %52 = load float, ptr %b99, align 4, !dbg !269
  %mul100 = fmul float %div88, %52, !dbg !269
  store float %mul100, ptr %b99, align 4, !dbg !269
  %53 = load ptr, ptr %ev376, align 8, !dbg !270
  %weight102 = getelementptr inbounds %struct._elemvertex, ptr %53, i64 0, i32 2, !dbg !271
  store float 1.000000e+00, ptr %weight102, align 8, !dbg !272
  %.pre176 = load ptr, ptr %ev376, align 8, !dbg !273
  br label %if.end103, !dbg !275

if.end103:                                        ; preds = %if.then85, %if.end71
  %54 = phi ptr [ %.pre176, %if.then85 ], [ %46, %if.end71 ], !dbg !273
  %ev_lock105 = getelementptr inbounds %struct._elemvertex, ptr %54, i64 0, i32 3, !dbg !276
  %55 = load ptr, ptr %ev_lock105, align 8, !dbg !276
  %call107 = tail call i32 @pthread_mutex_unlock(ptr noundef %55) #10, !dbg !277
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pc) #10, !dbg !278
  ret void, !dbg !278
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !279 void @create_radavg_task(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !281 void @center_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !285 void @foreach_leaf_edge(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @add_radiosity_to_vertex(ptr nocapture noundef readonly %edge, i64 noundef %reverse, ptr nocapture noundef readonly %elem, ptr noundef %p_c, i64 noundef %process_id) #0 !dbg !291 {
entry:
  call void @llvm.dbg.value(metadata ptr %edge, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i64 %reverse, metadata !296, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata ptr %elem, metadata !297, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata ptr %p_c, metadata !298, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !299, metadata !DIExpression()), !dbg !302
  %tobool.not = icmp eq i64 %reverse, 0, !dbg !303
  %pb = getelementptr inbounds %struct._edge, ptr %edge, i64 0, i32 1
  %spec.select = select i1 %tobool.not, ptr %edge, ptr %pb, !dbg !305
  %ev.0 = load ptr, ptr %spec.select, align 8, !dbg !306
  call void @llvm.dbg.value(metadata ptr %ev.0, metadata !300, metadata !DIExpression()), !dbg !302
  %call = tail call float @distance(ptr noundef %ev.0, ptr noundef %p_c) #10, !dbg !307
  call void @llvm.dbg.value(metadata float undef, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !301, metadata !DIExpression()), !dbg !302
  %area = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 21, !dbg !308
  %0 = load float, ptr %area, align 8, !dbg !308
  call void @llvm.dbg.value(metadata float %0, metadata !301, metadata !DIExpression()), !dbg !302
  %ev_lock = getelementptr inbounds %struct._elemvertex, ptr %ev.0, i64 0, i32 3, !dbg !309
  %1 = load ptr, ptr %ev_lock, align 8, !dbg !309
  %call1 = tail call i32 @pthread_mutex_lock(ptr noundef %1) #10, !dbg !311
  %rad = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, !dbg !312
  %2 = load float, ptr %rad, align 8, !dbg !313
  %col = getelementptr inbounds %struct._elemvertex, ptr %ev.0, i64 0, i32 1, !dbg !314
  %3 = load float, ptr %col, align 4, !dbg !315
  %4 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %3), !dbg !315
  store float %4, ptr %col, align 4, !dbg !315
  %g = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, i32 1, !dbg !316
  %5 = load float, ptr %g, align 4, !dbg !316
  %g5 = getelementptr inbounds %struct._elemvertex, ptr %ev.0, i64 0, i32 1, i32 1, !dbg !317
  %6 = load float, ptr %g5, align 4, !dbg !318
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %0, float %6), !dbg !318
  store float %7, ptr %g5, align 4, !dbg !318
  %b = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, i32 2, !dbg !319
  %8 = load float, ptr %b, align 8, !dbg !319
  %b8 = getelementptr inbounds %struct._elemvertex, ptr %ev.0, i64 0, i32 1, i32 2, !dbg !320
  %9 = load float, ptr %b8, align 4, !dbg !321
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %0, float %9), !dbg !321
  store float %10, ptr %b8, align 4, !dbg !321
  %weight9 = getelementptr inbounds %struct._elemvertex, ptr %ev.0, i64 0, i32 2, !dbg !322
  %11 = load float, ptr %weight9, align 8, !dbg !323
  %add = fadd float %0, %11, !dbg !323
  store float %add, ptr %weight9, align 8, !dbg !323
  %12 = load ptr, ptr %ev_lock, align 8, !dbg !324
  %call12 = tail call i32 @pthread_mutex_unlock(ptr noundef %12) #10, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: nounwind
declare !dbg !328 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !333 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn writeonly uwtable
define dso_local void @setup_view(float noundef %rot_x, float noundef %rot_y, float noundef %dist, float noundef %zoom, i64 noundef %process_id) local_unnamed_addr #5 !dbg !334 {
entry:
  call void @llvm.dbg.value(metadata float %rot_x, metadata !338, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata float %rot_y, metadata !339, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata float %dist, metadata !340, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata float %zoom, metadata !341, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !342, metadata !DIExpression()), !dbg !347
  store float %rot_x, ptr @view_rot_x, align 4, !dbg !348
  store float %rot_y, ptr @view_rot_y, align 4, !dbg !349
  store float %dist, ptr @view_dist, align 4, !dbg !350
  store float %zoom, ptr @view_zoom, align 4, !dbg !351
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !347
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !347
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !347
  %fneg = fneg float %rot_x, !dbg !352
  %conv = fpext float %fneg to double, !dbg !352
  %mul = fmul double %conv, 0x3F91DF46A2529D39, !dbg !353
  %call = tail call double @cos(double noundef %mul) #10, !dbg !354
  %conv1 = fptrunc double %call to float, !dbg !354
  call void @llvm.dbg.value(metadata float %conv1, metadata !345, metadata !DIExpression()), !dbg !347
  %call5 = tail call double @sin(double noundef %mul) #10, !dbg !355
  %conv6 = fptrunc double %call5 to float, !dbg !355
  call void @llvm.dbg.value(metadata float %conv6, metadata !346, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !347
  %neg = fneg float %conv6, !dbg !356
  %0 = tail call float @llvm.fmuladd.f32(float %conv1, float 0.000000e+00, float %neg), !dbg !356
  call void @llvm.dbg.value(metadata float %0, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !347
  %1 = tail call float @llvm.fmuladd.f32(float %conv6, float 0.000000e+00, float %conv1), !dbg !357
  call void @llvm.dbg.value(metadata float %1, metadata !344, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !347
  %fneg19 = fneg float %rot_y, !dbg !358
  %conv20 = fpext float %fneg19 to double, !dbg !358
  %mul21 = fmul double %conv20, 0x3F91DF46A2529D39, !dbg !359
  %call22 = tail call double @cos(double noundef %mul21) #10, !dbg !360
  %conv23 = fptrunc double %call22 to float, !dbg !360
  call void @llvm.dbg.value(metadata float %conv23, metadata !345, metadata !DIExpression()), !dbg !347
  %call27 = tail call double @sin(double noundef %mul21) #10, !dbg !361
  %conv28 = fptrunc double %call27 to float, !dbg !361
  call void @llvm.dbg.value(metadata float %conv28, metadata !346, metadata !DIExpression()), !dbg !347
  %neg33 = fmul float %conv28, -0.000000e+00, !dbg !362
  %2 = tail call float @llvm.fmuladd.f32(float %conv23, float %1, float %neg33), !dbg !362
  call void @llvm.dbg.value(metadata float %2, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !347
  %mul38 = fmul float %conv23, 0.000000e+00, !dbg !363
  %3 = tail call float @llvm.fmuladd.f32(float %conv28, float %1, float %mul38), !dbg !364
  call void @llvm.dbg.value(metadata float %3, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !347
  call void @llvm.dbg.value(metadata float %0, metadata !343, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !347
  store float %3, ptr @view_vec, align 4, !dbg !365
  store float %0, ptr getelementptr inbounds (%struct.Vertex, ptr @view_vec, i64 0, i32 1), align 4, !dbg !365
  store float %2, ptr getelementptr inbounds (%struct.Vertex, ptr @view_vec, i64 0, i32 2), align 4, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_scene(i64 noundef %fill_sw, i64 noundef %patch_sw, i64 noundef %mesh_sw, i64 noundef %interaction_sw, i64 noundef %process_id) local_unnamed_addr #0 !dbg !367 {
entry:
  call void @llvm.dbg.value(metadata i64 %fill_sw, metadata !371, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %patch_sw, metadata !372, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %mesh_sw, metadata !373, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %interaction_sw, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !375, metadata !DIExpression()), !dbg !376
  tail call void @g_clear() #10, !dbg !377
  %0 = load float, ptr @view_rot_x, align 4, !dbg !378
  %1 = load float, ptr @view_rot_y, align 4, !dbg !379
  %2 = load float, ptr @view_dist, align 4, !dbg !380
  %3 = load float, ptr @view_zoom, align 4, !dbg !381
  tail call void @g_setup_view(float noundef %0, float noundef %1, float noundef %2, float noundef %3) #10, !dbg !382
  switch i64 %fill_sw, label %if.end3 [
    i64 2, label %if.end3.sink.split
    i64 1, label %if.then2
  ], !dbg !383

if.then2:                                         ; preds = %entry
  br label %if.end3.sink.split, !dbg !384

if.end3.sink.split:                               ; preds = %entry, %if.then2
  %.sink = phi i64 [ 0, %if.then2 ], [ 1, %entry ]
  tail call void @display_elements_in_bsp_tree(i64 noundef %.sink, i64 noundef %process_id), !dbg !376
  br label %if.end3, !dbg !387

if.end3:                                          ; preds = %if.end3.sink.split, %entry
  %tobool.not = icmp eq i64 %mesh_sw, 0, !dbg !387
  br i1 %tobool.not, label %if.end5, label %if.then4, !dbg !389

if.then4:                                         ; preds = %if.end3
  tail call void @g_color(i64 noundef 260) #10, !dbg !390
  tail call void @display_elements_in_bsp_tree(i64 noundef 2, i64 noundef %process_id), !dbg !392
  br label %if.end5, !dbg !393

if.end5:                                          ; preds = %if.then4, %if.end3
  %tobool6.not = icmp eq i64 %patch_sw, 0, !dbg !394
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !396

if.then7:                                         ; preds = %if.end5
  tail call void @g_color(i64 noundef 257) #10, !dbg !397
  tail call void @display_patches_in_bsp_tree(i64 noundef 2, i64 noundef %process_id), !dbg !399
  br label %if.end8, !dbg !400

if.end8:                                          ; preds = %if.then7, %if.end5
  %tobool9.not = icmp eq i64 %interaction_sw, 0, !dbg !401
  br i1 %tobool9.not, label %if.end11, label %if.then10, !dbg !403

if.then10:                                        ; preds = %if.end8
  tail call void @g_color(i64 noundef 258) #10, !dbg !404
  tail call void @display_interactions_in_bsp_tree(i64 noundef %process_id), !dbg !406
  br label %if.end11, !dbg !407

if.end11:                                         ; preds = %if.then10, %if.end8
  tail call void @g_flush() #10, !dbg !408
  ret void, !dbg !409
}

declare !dbg !410 void @g_clear() local_unnamed_addr #3

declare !dbg !414 void @g_setup_view(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_elements_in_bsp_tree(i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !417 {
entry:
  call void @llvm.dbg.value(metadata i64 %mode, metadata !421, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !422, metadata !DIExpression()), !dbg !423
  tail call void @foreach_depth_sorted_patch(ptr noundef nonnull @view_vec, ptr noundef nonnull @display_elements_in_patch, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !424
  ret void, !dbg !425
}

declare !dbg !426 void @g_color(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_patches_in_bsp_tree(i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !429 {
entry:
  call void @llvm.dbg.value(metadata i64 %mode, metadata !431, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !432, metadata !DIExpression()), !dbg !433
  tail call void @foreach_depth_sorted_patch(ptr noundef nonnull @view_vec, ptr noundef nonnull @display_patch, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_interactions_in_bsp_tree(i64 noundef %process_id) local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !438, metadata !DIExpression()), !dbg !439
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @display_interactions_in_patch, i64 noundef 0, i64 noundef %process_id) #10, !dbg !440
  ret void, !dbg !441
}

declare !dbg !442 void @g_flush() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_patch(ptr noundef %patch, i64 noundef %mode, i64 %process_id) #0 !dbg !443 {
entry:
  %p_buf = alloca [4 x %struct.Vertex], align 16
  %c_buf = alloca [4 x %struct.Rgb], align 16
  call void @llvm.dbg.value(metadata ptr %patch, metadata !447, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %mode, metadata !448, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 undef, metadata !449, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %p_buf, metadata !450, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %c_buf, metadata !454, metadata !DIExpression()), !dbg !460
  switch i64 %mode, label %if.else30 [
    i64 1, label %if.then
    i64 0, label %if.then14
  ], !dbg !461

if.then:                                          ; preds = %entry
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !462
  %call = tail call float @inner_product(ptr noundef nonnull %plane_equ, ptr noundef nonnull @view_vec) #10, !dbg !466
  %conv = fpext float %call to double, !dbg !466
  %cmp1 = fcmp olt double %conv, 0x3EB0C6F7A0B5ED8D, !dbg !467
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !468

if.end:                                           ; preds = %if.then
  %p1 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %p1, i64 12, i1 false), !dbg !469
  %arrayidx4 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !470
  %p2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx4, ptr noundef nonnull align 4 dereferenceable(12) %p2, i64 12, i1 false), !dbg !471
  %arrayidx5 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !472
  %p3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx5, ptr noundef nonnull align 8 dereferenceable(12) %p3, i64 12, i1 false), !dbg !473
  %color = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 11, !dbg !474
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %c_buf, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !474
  %arrayidx7 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 1, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx7, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !476
  %arrayidx9 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 2, !dbg !477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx9, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !478
  call void @g_spolygon(i64 noundef 3, ptr noundef nonnull %p_buf, ptr noundef nonnull %c_buf) #10, !dbg !479
  br label %cleanup, !dbg !480

if.then14:                                        ; preds = %entry
  %plane_equ15 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !481
  %call17 = tail call float @inner_product(ptr noundef nonnull %plane_equ15, ptr noundef nonnull @view_vec) #10, !dbg !485
  %conv18 = fpext float %call17 to double, !dbg !485
  %cmp19 = fcmp olt double %conv18, 0x3EB0C6F7A0B5ED8D, !dbg !486
  br i1 %cmp19, label %cleanup, label %if.end22, !dbg !487

if.end22:                                         ; preds = %if.then14
  %p124 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %p124, i64 12, i1 false), !dbg !488
  %arrayidx25 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !489
  %p226 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !490
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx25, ptr noundef nonnull align 4 dereferenceable(12) %p226, i64 12, i1 false), !dbg !490
  %arrayidx27 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !491
  %p328 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !492
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx27, ptr noundef nonnull align 8 dereferenceable(12) %p328, i64 12, i1 false), !dbg !492
  call void @g_polygon(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !493
  br label %cleanup, !dbg !494

if.else30:                                        ; preds = %entry
  %p131 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !495
  %p232 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !497
  tail call void @g_line(ptr noundef nonnull %p131, ptr noundef nonnull %p232) #10, !dbg !498
  %p334 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !499
  tail call void @g_line(ptr noundef nonnull %p232, ptr noundef nonnull %p334) #10, !dbg !500
  tail call void @g_line(ptr noundef nonnull %p334, ptr noundef nonnull %p131) #10, !dbg !501
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else30, %if.end22, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !502
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !502
  ret void, !dbg !502
}

declare !dbg !503 float @inner_product(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !506 void @g_spolygon(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !510 void @g_polygon(i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !513 void @g_line(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !516 void @foreach_depth_sorted_patch(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_element(ptr nocapture noundef readonly %element, i64 noundef %mode, i64 %process_id) #8 !dbg !519 {
entry:
  %p_buf = alloca [4 x %struct.Vertex], align 16
  call void @llvm.dbg.value(metadata ptr %element, metadata !521, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 %mode, metadata !522, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 undef, metadata !523, metadata !DIExpression()), !dbg !525
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !526
  call void @llvm.dbg.declare(metadata ptr %p_buf, metadata !524, metadata !DIExpression()), !dbg !527
  %patch = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 1, !dbg !528
  %0 = load ptr, ptr %patch, align 8, !dbg !528
  %plane_equ = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 9, !dbg !530
  %call = tail call float @inner_product(ptr noundef nonnull %plane_equ, ptr noundef nonnull @view_vec) #10, !dbg !531
  %conv = fpext float %call to double, !dbg !531
  %cmp = fcmp olt double %conv, 0x3EB0C6F7A0B5ED8D, !dbg !532
  br i1 %cmp, label %cleanup, label %if.end, !dbg !533

if.end:                                           ; preds = %entry
  switch i64 %mode, label %if.else15 [
    i64 1, label %if.then4
    i64 0, label %if.then7
  ], !dbg !534

if.then4:                                         ; preds = %if.end
  %ev1 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !535
  %1 = load ptr, ptr %ev1, align 8, !dbg !535
  %ev2 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !538
  %2 = load ptr, ptr %ev2, align 8, !dbg !538
  %ev3 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !539
  %3 = load ptr, ptr %ev3, align 8, !dbg !539
  tail call fastcc void @_display_shaded_triangle(ptr noundef %1, ptr noundef %2, ptr noundef %3), !dbg !540
  br label %cleanup, !dbg !541

if.then7:                                         ; preds = %if.end
  %rad = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 11, !dbg !542
  %rad.coerce.sroa.0.0.copyload = load <2 x float>, ptr %rad, align 8, !dbg !545
  %rad.coerce.sroa.2.0.rad.sroa_idx = getelementptr inbounds i8, ptr %rad, i64 8, !dbg !545
  %rad.coerce.sroa.2.0.copyload = load float, ptr %rad.coerce.sroa.2.0.rad.sroa_idx, align 8, !dbg !545
  tail call void @g_rgb(<2 x float> %rad.coerce.sroa.0.0.copyload, float %rad.coerce.sroa.2.0.copyload) #10, !dbg !545
  %ev18 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !546
  %4 = load ptr, ptr %ev18, align 8, !dbg !546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !dbg !547
  %arrayidx9 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !548
  %ev210 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !549
  %5 = load ptr, ptr %ev210, align 8, !dbg !549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx9, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !dbg !550
  %arrayidx12 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !551
  %ev313 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !552
  %6 = load ptr, ptr %ev313, align 8, !dbg !552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx12, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !dbg !553
  call void @g_polygon(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !554
  br label %cleanup, !dbg !555

if.else15:                                        ; preds = %if.end
  %ev116 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !556
  %7 = load ptr, ptr %ev116, align 8, !dbg !556
  %ev218 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !558
  %8 = load ptr, ptr %ev218, align 8, !dbg !558
  tail call void @g_line(ptr noundef %7, ptr noundef %8) #10, !dbg !559
  %9 = load ptr, ptr %ev218, align 8, !dbg !560
  %ev322 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !561
  %10 = load ptr, ptr %ev322, align 8, !dbg !561
  tail call void @g_line(ptr noundef %9, ptr noundef %10) #10, !dbg !562
  %11 = load ptr, ptr %ev322, align 8, !dbg !563
  %12 = load ptr, ptr %ev116, align 8, !dbg !564
  tail call void @g_line(ptr noundef %11, ptr noundef %12) #10, !dbg !565
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.else15, %if.then7, %entry
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !566
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_display_shaded_triangle(ptr nocapture noundef readonly %ev1, ptr nocapture noundef readonly %ev2, ptr nocapture noundef readonly %ev3) unnamed_addr #0 !dbg !567 {
entry:
  %p_buf = alloca [4 x %struct.Vertex], align 16
  %c_buf = alloca [4 x %struct.Rgb], align 16
  call void @llvm.dbg.value(metadata ptr %ev1, metadata !571, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr %ev2, metadata !572, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr %ev3, metadata !573, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr undef, metadata !574, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr undef, metadata !575, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr undef, metadata !576, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata i64 undef, metadata !577, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %p_buf, metadata !578, metadata !DIExpression()), !dbg !582
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !583
  call void @llvm.dbg.declare(metadata ptr %c_buf, metadata !579, metadata !DIExpression()), !dbg !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %ev1, i64 12, i1 false), !dbg !585
  %arrayidx1 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx1, ptr noundef nonnull align 8 dereferenceable(12) %ev2, i64 12, i1 false), !dbg !587
  %arrayidx3 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx3, ptr noundef nonnull align 8 dereferenceable(12) %ev3, i64 12, i1 false), !dbg !589
  %col = getelementptr inbounds %struct._elemvertex, ptr %ev1, i64 0, i32 1, !dbg !590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %c_buf, ptr noundef nonnull align 4 dereferenceable(12) %col, i64 12, i1 false), !dbg !590
  %arrayidx6 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 1, !dbg !591
  %col7 = getelementptr inbounds %struct._elemvertex, ptr %ev2, i64 0, i32 1, !dbg !592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx6, ptr noundef nonnull align 4 dereferenceable(12) %col7, i64 12, i1 false), !dbg !592
  %arrayidx8 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 2, !dbg !593
  %col9 = getelementptr inbounds %struct._elemvertex, ptr %ev3, i64 0, i32 1, !dbg !594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx8, ptr noundef nonnull align 4 dereferenceable(12) %col9, i64 12, i1 false), !dbg !594
  call void @g_spolygon(i64 noundef 3, ptr noundef nonnull %p_buf, ptr noundef nonnull %c_buf) #10, !dbg !595
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !596
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !596
  ret void, !dbg !596
}

declare !dbg !597 void @g_rgb(<2 x float>, float) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_elements_in_patch(ptr noundef %patch, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !600 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !602, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %mode, metadata !603, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !604, metadata !DIExpression()), !dbg !605
  tail call void @foreach_leaf_element_in_patch(ptr noundef %patch, ptr noundef nonnull @display_element, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !606
  tail call void @g_flush() #10, !dbg !607
  ret void, !dbg !608
}

declare !dbg !609 void @foreach_leaf_element_in_patch(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_interactions_in_element(ptr noundef %elem, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !612 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !614, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 %mode, metadata !615, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !616, metadata !DIExpression()), !dbg !617
  tail call void @foreach_interaction_in_element(ptr noundef %elem, ptr noundef nonnull @_disp_interactions, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !618
  tail call void @g_flush() #10, !dbg !619
  ret void, !dbg !620
}

declare !dbg !621 void @foreach_interaction_in_element(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @_disp_interactions(ptr nocapture noundef readonly %elem, ptr nocapture noundef readonly %inter, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !624 {
entry:
  %pa = alloca %struct.Vertex, align 4
  %pb = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %elem, metadata !630, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata ptr %inter, metadata !631, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %mode, metadata !632, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !633, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pa) #10, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !634, metadata !DIExpression()), !dbg !639
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pb) #10, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %pb, metadata !635, metadata !DIExpression()), !dbg !640
  %cmp = icmp eq i64 %mode, 1, !dbg !641
  %destination = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1
  %0 = load ptr, ptr %destination, align 8, !dbg !637
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !643

land.lhs.true:                                    ; preds = %entry
  %patch = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 1, !dbg !644
  %1 = load ptr, ptr %patch, align 8, !dbg !644
  %seq_no = getelementptr inbounds %struct._patch, ptr %1, i64 0, i32 17, !dbg !645
  %2 = load i64, ptr %seq_no, align 8, !dbg !645
  %patch1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 1, !dbg !646
  %3 = load ptr, ptr %patch1, align 8, !dbg !646
  %seq_no2 = getelementptr inbounds %struct._patch, ptr %3, i64 0, i32 17, !dbg !647
  %4 = load i64, ptr %seq_no2, align 8, !dbg !647
  %cmp3.not = icmp slt i64 %2, %4, !dbg !648
  br i1 %cmp3.not, label %if.end, label %cleanup, !dbg !649

if.end:                                           ; preds = %entry, %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %0, metadata !636, metadata !DIExpression()), !dbg !637
  %ev1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 15, !dbg !650
  %5 = load ptr, ptr %ev1, align 8, !dbg !650
  %ev2 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 16, !dbg !651
  %6 = load ptr, ptr %ev2, align 8, !dbg !651
  %ev3 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 17, !dbg !652
  %7 = load ptr, ptr %ev3, align 8, !dbg !652
  call void @center_point(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %pa) #10, !dbg !653
  %ev17 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 15, !dbg !654
  %8 = load ptr, ptr %ev17, align 8, !dbg !654
  %ev29 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 16, !dbg !655
  %9 = load ptr, ptr %ev29, align 8, !dbg !655
  %ev311 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 17, !dbg !656
  %10 = load ptr, ptr %ev311, align 8, !dbg !656
  call void @center_point(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %pb) #10, !dbg !657
  call void @g_line(ptr noundef nonnull %pa, ptr noundef nonnull %pb) #10, !dbg !658
  br label %cleanup, !dbg !659

cleanup:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pb) #10, !dbg !659
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pa) #10, !dbg !659
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @display_interactions_in_patch(ptr noundef %patch, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !660 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !662, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %mode, metadata !663, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !664, metadata !DIExpression()), !dbg !665
  tail call void @foreach_element_in_patch(ptr noundef %patch, ptr noundef nonnull @display_interactions_in_element, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !666
  ret void, !dbg !667
}

declare !dbg !668 void @foreach_element_in_patch(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !669 void @foreach_patch_in_bsp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_scene(i64 noundef %fill_sw, i64 noundef %patch_sw, i64 noundef %mesh_sw, i64 noundef %interaction_sw, i64 noundef %process_id) local_unnamed_addr #0 !dbg !672 {
entry:
  call void @llvm.dbg.value(metadata i64 %fill_sw, metadata !674, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %patch_sw, metadata !675, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %mesh_sw, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %interaction_sw, metadata !677, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !678, metadata !DIExpression()), !dbg !679
  %tobool.not = icmp eq i64 %fill_sw, 0, !dbg !680
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !682

if.then:                                          ; preds = %entry
  tail call void @ps_display_elements_in_bsp_tree(i64 noundef 1, i64 noundef %process_id), !dbg !683
  br label %if.end, !dbg !685

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq i64 %mesh_sw, 0, !dbg !686
  br i1 %tobool1.not, label %if.end3, label %if.then2, !dbg !688

if.then2:                                         ; preds = %if.end
  tail call void @ps_linewidth(float noundef 5.000000e-01) #10, !dbg !689
  tail call void @ps_display_elements_in_bsp_tree(i64 noundef 2, i64 noundef %process_id), !dbg !691
  br label %if.end3, !dbg !692

if.end3:                                          ; preds = %if.then2, %if.end
  %tobool4.not = icmp eq i64 %patch_sw, 0, !dbg !693
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !695

if.then5:                                         ; preds = %if.end3
  tail call void @ps_linewidth(float noundef 0x3FF3333340000000) #10, !dbg !696
  tail call void @ps_display_patches_in_bsp_tree(i64 noundef 2, i64 noundef %process_id), !dbg !698
  br label %if.end6, !dbg !699

if.end6:                                          ; preds = %if.then5, %if.end3
  %tobool7.not = icmp eq i64 %interaction_sw, 0, !dbg !700
  br i1 %tobool7.not, label %if.end9, label %if.then8, !dbg !702

if.then8:                                         ; preds = %if.end6
  tail call void @ps_linewidth(float noundef 0x3FC99999A0000000) #10, !dbg !703
  tail call void @ps_display_interactions_in_bsp_tree(i64 noundef %process_id), !dbg !705
  br label %if.end9, !dbg !706

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_elements_in_bsp_tree(i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !708 {
entry:
  call void @llvm.dbg.value(metadata i64 %mode, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !711, metadata !DIExpression()), !dbg !712
  tail call void @foreach_depth_sorted_patch(ptr noundef nonnull @view_vec, ptr noundef nonnull @ps_display_elements_in_patch, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !713
  ret void, !dbg !714
}

declare !dbg !715 void @ps_linewidth(float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_patches_in_bsp_tree(i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !719 {
entry:
  call void @llvm.dbg.value(metadata i64 %mode, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !722, metadata !DIExpression()), !dbg !723
  tail call void @foreach_depth_sorted_patch(ptr noundef nonnull @view_vec, ptr noundef nonnull @ps_display_patch, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !724
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_interactions_in_bsp_tree(i64 noundef %process_id) local_unnamed_addr #0 !dbg !726 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !728, metadata !DIExpression()), !dbg !729
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @ps_display_interactions_in_patch, i64 noundef 0, i64 noundef %process_id) #10, !dbg !730
  ret void, !dbg !731
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_patch(ptr noundef %patch, i64 noundef %mode, i64 %process_id) #0 !dbg !732 {
entry:
  %p_buf = alloca [4 x %struct.Vertex], align 16
  %c_buf = alloca [4 x %struct.Rgb], align 16
  call void @llvm.dbg.value(metadata ptr %patch, metadata !734, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 %mode, metadata !735, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 undef, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %p_buf, metadata !737, metadata !DIExpression()), !dbg !741
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !742
  call void @llvm.dbg.declare(metadata ptr %c_buf, metadata !738, metadata !DIExpression()), !dbg !743
  switch i64 %mode, label %if.else30 [
    i64 1, label %if.then
    i64 0, label %if.then14
  ], !dbg !744

if.then:                                          ; preds = %entry
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !745
  %call = tail call float @inner_product(ptr noundef nonnull %plane_equ, ptr noundef nonnull @view_vec) #10, !dbg !749
  %conv = fpext float %call to double, !dbg !749
  %cmp1 = fcmp olt double %conv, 0x3EB0C6F7A0B5ED8D, !dbg !750
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !751

if.end:                                           ; preds = %if.then
  %p1 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %p1, i64 12, i1 false), !dbg !752
  %arrayidx4 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !753
  %p2 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx4, ptr noundef nonnull align 4 dereferenceable(12) %p2, i64 12, i1 false), !dbg !754
  %arrayidx5 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !755
  %p3 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx5, ptr noundef nonnull align 8 dereferenceable(12) %p3, i64 12, i1 false), !dbg !756
  %color = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 11, !dbg !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %c_buf, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !757
  %arrayidx7 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 1, !dbg !758
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx7, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !759
  %arrayidx9 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 2, !dbg !760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx9, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !761
  call void @ps_spolygon(i64 noundef 3, ptr noundef nonnull %p_buf, ptr noundef nonnull %c_buf) #10, !dbg !762
  br label %cleanup, !dbg !763

if.then14:                                        ; preds = %entry
  %plane_equ15 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !764
  %call17 = tail call float @inner_product(ptr noundef nonnull %plane_equ15, ptr noundef nonnull @view_vec) #10, !dbg !768
  %conv18 = fpext float %call17 to double, !dbg !768
  %cmp19 = fcmp olt double %conv18, 0x3EB0C6F7A0B5ED8D, !dbg !769
  br i1 %cmp19, label %cleanup, label %if.end22, !dbg !770

if.end22:                                         ; preds = %if.then14
  %p124 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %p124, i64 12, i1 false), !dbg !771
  %arrayidx25 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !772
  %p226 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx25, ptr noundef nonnull align 4 dereferenceable(12) %p226, i64 12, i1 false), !dbg !773
  %arrayidx27 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !774
  %p328 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx27, ptr noundef nonnull align 8 dereferenceable(12) %p328, i64 12, i1 false), !dbg !775
  call void @ps_polygon(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !776
  br label %cleanup, !dbg !777

if.else30:                                        ; preds = %entry
  %p132 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %p132, i64 12, i1 false), !dbg !778
  %arrayidx33 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !780
  %p234 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !781
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx33, ptr noundef nonnull align 4 dereferenceable(12) %p234, i64 12, i1 false), !dbg !781
  %arrayidx35 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !782
  %p336 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx35, ptr noundef nonnull align 8 dereferenceable(12) %p336, i64 12, i1 false), !dbg !783
  call void @ps_polygonedge(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !784
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else30, %if.end22, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !785
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !785
  ret void, !dbg !785
}

declare !dbg !786 void @ps_spolygon(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !787 void @ps_polygon(i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !788 void @ps_polygonedge(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_element(ptr nocapture noundef readonly %element, i64 noundef %mode, i64 %process_id) #0 !dbg !789 {
entry:
  %p_buf = alloca [4 x %struct.Vertex], align 16
  %c_buf = alloca [4 x %struct.Rgb], align 16
  call void @llvm.dbg.value(metadata ptr %element, metadata !791, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i64 %mode, metadata !792, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.value(metadata i64 undef, metadata !793, metadata !DIExpression()), !dbg !796
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !797
  call void @llvm.dbg.declare(metadata ptr %p_buf, metadata !794, metadata !DIExpression()), !dbg !798
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %c_buf, metadata !795, metadata !DIExpression()), !dbg !800
  switch i64 %mode, label %if.else36 [
    i64 1, label %if.then
    i64 0, label %if.then16
  ], !dbg !801

if.then:                                          ; preds = %entry
  %patch = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 1, !dbg !802
  %0 = load ptr, ptr %patch, align 8, !dbg !802
  %plane_equ = getelementptr inbounds %struct._patch, ptr %0, i64 0, i32 9, !dbg !806
  %call = tail call float @inner_product(ptr noundef nonnull %plane_equ, ptr noundef nonnull @view_vec) #10, !dbg !807
  %conv = fpext float %call to double, !dbg !807
  %cmp1 = fcmp olt double %conv, 0x3EB0C6F7A0B5ED8D, !dbg !808
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !809

if.end:                                           ; preds = %if.then
  %ev1 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !810
  %1 = load ptr, ptr %ev1, align 8, !dbg !810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 12, i1 false), !dbg !811
  %arrayidx4 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !812
  %ev2 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !813
  %2 = load ptr, ptr %ev2, align 8, !dbg !813
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx4, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !814
  %arrayidx6 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !815
  %ev3 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !816
  %3 = load ptr, ptr %ev3, align 8, !dbg !816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx6, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !dbg !817
  %rad = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 11, !dbg !818
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %c_buf, ptr noundef nonnull align 8 dereferenceable(12) %rad, i64 12, i1 false), !dbg !818
  %arrayidx9 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 1, !dbg !819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx9, ptr noundef nonnull align 8 dereferenceable(12) %rad, i64 12, i1 false), !dbg !820
  %arrayidx11 = getelementptr inbounds [4 x %struct.Rgb], ptr %c_buf, i64 0, i64 2, !dbg !821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx11, ptr noundef nonnull align 8 dereferenceable(12) %rad, i64 12, i1 false), !dbg !822
  call void @ps_spolygon(i64 noundef 3, ptr noundef nonnull %p_buf, ptr noundef nonnull %c_buf) #10, !dbg !823
  br label %cleanup, !dbg !824

if.then16:                                        ; preds = %entry
  %patch17 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 1, !dbg !825
  %4 = load ptr, ptr %patch17, align 8, !dbg !825
  %plane_equ18 = getelementptr inbounds %struct._patch, ptr %4, i64 0, i32 9, !dbg !829
  %call20 = tail call float @inner_product(ptr noundef nonnull %plane_equ18, ptr noundef nonnull @view_vec) #10, !dbg !830
  %conv21 = fpext float %call20 to double, !dbg !830
  %cmp22 = fcmp olt double %conv21, 0x3EB0C6F7A0B5ED8D, !dbg !831
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !832

if.end25:                                         ; preds = %if.then16
  %ev127 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !833
  %5 = load ptr, ptr %ev127, align 8, !dbg !833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 12, i1 false), !dbg !834
  %arrayidx29 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !835
  %ev230 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !836
  %6 = load ptr, ptr %ev230, align 8, !dbg !836
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx29, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !dbg !837
  %arrayidx32 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !838
  %ev333 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !839
  %7 = load ptr, ptr %ev333, align 8, !dbg !839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx32, ptr noundef nonnull align 8 dereferenceable(12) %7, i64 12, i1 false), !dbg !840
  call void @ps_polygon(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !841
  br label %cleanup, !dbg !842

if.else36:                                        ; preds = %entry
  %ev138 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 15, !dbg !843
  %8 = load ptr, ptr %ev138, align 8, !dbg !843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %p_buf, ptr noundef nonnull align 8 dereferenceable(12) %8, i64 12, i1 false), !dbg !845
  %arrayidx40 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 1, !dbg !846
  %ev241 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 16, !dbg !847
  %9 = load ptr, ptr %ev241, align 8, !dbg !847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %arrayidx40, ptr noundef nonnull align 8 dereferenceable(12) %9, i64 12, i1 false), !dbg !848
  %arrayidx43 = getelementptr inbounds [4 x %struct.Vertex], ptr %p_buf, i64 0, i64 2, !dbg !849
  %ev344 = getelementptr inbounds %struct._element, ptr %element, i64 0, i32 17, !dbg !850
  %10 = load ptr, ptr %ev344, align 8, !dbg !850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %arrayidx43, ptr noundef nonnull align 8 dereferenceable(12) %10, i64 12, i1 false), !dbg !851
  call void @ps_polygonedge(i64 noundef 3, ptr noundef nonnull %p_buf) #10, !dbg !852
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else36, %if.end25, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %c_buf) #10, !dbg !853
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p_buf) #10, !dbg !853
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_elements_in_patch(ptr noundef %patch, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !854 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !856, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i64 %mode, metadata !857, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !858, metadata !DIExpression()), !dbg !859
  tail call void @foreach_leaf_element_in_patch(ptr noundef %patch, ptr noundef nonnull @ps_display_element, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !860
  ret void, !dbg !861
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_interactions_in_element(ptr noundef %elem, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !862 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !864, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i64 %mode, metadata !865, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !866, metadata !DIExpression()), !dbg !867
  tail call void @foreach_interaction_in_element(ptr noundef %elem, ptr noundef nonnull @_ps_disp_interactions, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !868
  ret void, !dbg !869
}

; Function Attrs: noinline nounwind uwtable
define internal void @_ps_disp_interactions(ptr nocapture noundef readonly %elem, ptr nocapture noundef readonly %inter, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !870 {
entry:
  %pa = alloca %struct.Vertex, align 4
  %pb = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %elem, metadata !872, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata ptr %inter, metadata !873, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %mode, metadata !874, metadata !DIExpression()), !dbg !879
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !875, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pa) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !876, metadata !DIExpression()), !dbg !881
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pb) #10, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %pb, metadata !877, metadata !DIExpression()), !dbg !882
  %cmp = icmp eq i64 %mode, 1, !dbg !883
  %destination = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1
  %0 = load ptr, ptr %destination, align 8, !dbg !879
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !885

land.lhs.true:                                    ; preds = %entry
  %patch = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 1, !dbg !886
  %1 = load ptr, ptr %patch, align 8, !dbg !886
  %seq_no = getelementptr inbounds %struct._patch, ptr %1, i64 0, i32 17, !dbg !887
  %2 = load i64, ptr %seq_no, align 8, !dbg !887
  %patch1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 1, !dbg !888
  %3 = load ptr, ptr %patch1, align 8, !dbg !888
  %seq_no2 = getelementptr inbounds %struct._patch, ptr %3, i64 0, i32 17, !dbg !889
  %4 = load i64, ptr %seq_no2, align 8, !dbg !889
  %cmp3.not = icmp slt i64 %2, %4, !dbg !890
  br i1 %cmp3.not, label %if.end, label %cleanup, !dbg !891

if.end:                                           ; preds = %entry, %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %0, metadata !878, metadata !DIExpression()), !dbg !879
  %ev1 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 15, !dbg !892
  %5 = load ptr, ptr %ev1, align 8, !dbg !892
  %ev2 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 16, !dbg !893
  %6 = load ptr, ptr %ev2, align 8, !dbg !893
  %ev3 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 17, !dbg !894
  %7 = load ptr, ptr %ev3, align 8, !dbg !894
  call void @center_point(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %pa) #10, !dbg !895
  %ev17 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 15, !dbg !896
  %8 = load ptr, ptr %ev17, align 8, !dbg !896
  %ev29 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 16, !dbg !897
  %9 = load ptr, ptr %ev29, align 8, !dbg !897
  %ev311 = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 17, !dbg !898
  %10 = load ptr, ptr %ev311, align 8, !dbg !898
  call void @center_point(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %pb) #10, !dbg !899
  call void @ps_line(ptr noundef nonnull %pa, ptr noundef nonnull %pb) #10, !dbg !900
  br label %cleanup, !dbg !901

cleanup:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pb) #10, !dbg !901
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pa) #10, !dbg !901
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ps_display_interactions_in_patch(ptr noundef %patch, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !904, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %mode, metadata !905, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !906, metadata !DIExpression()), !dbg !907
  tail call void @foreach_element_in_patch(ptr noundef %patch, ptr noundef nonnull @ps_display_interactions_in_element, i64 noundef %mode, i64 noundef %process_id) #10, !dbg !908
  ret void, !dbg !909
}

declare !dbg !910 float @distance(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !911 void @ps_line(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "view_rot_x", scope: !2, file: !3, line: 1269, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "display.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "96c386141448ebc3fc0922a0fc8526eb")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!6 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!7 = !{!8, !0, !17, !19, !21}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "view_vec", scope: !2, file: !3, line: 1268, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !11, line: 14, baseType: !12)
!11 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 12, size: 96, elements: !13)
!13 = !{!14, !15, !16}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !12, file: !11, line: 13, baseType: !6, size: 32)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !12, file: !11, line: 13, baseType: !6, size: 32, offset: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !12, file: !11, line: 13, baseType: !6, size: 32, offset: 64)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "view_rot_y", scope: !2, file: !3, line: 1269, type: !6, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "view_dist", scope: !2, file: !3, line: 1269, type: !6, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "view_zoom", scope: !2, file: !3, line: 1269, type: !6, isLocal: true, isDefinition: true)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!30 = distinct !DISubprogram(name: "radiosity_averaging", scope: !3, file: !3, line: 1175, type: !31, scopeLine: 1176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !5, !5}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 404, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 379, size: 1536, elements: !36)
!36 = !{!37, !75, !129, !130, !131, !132, !133, !134, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !35, file: !3, line: 380, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 108, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 105, size: 320, elements: !41)
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !40, file: !3, line: 107, baseType: !43, size: 320)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !44, line: 72, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !44, line: 67, size: 320, elements: !46)
!46 = !{!47, !69, !74}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !45, file: !44, line: 69, baseType: !48, size: 320)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !49, line: 22, size: 320, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!50 = !{!51, !53, !55, !56, !57, !58, !60, !61}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !48, file: !49, line: 24, baseType: !52, size: 32)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !48, file: !49, line: 25, baseType: !54, size: 32, offset: 32)
!54 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !48, file: !49, line: 26, baseType: !52, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !48, file: !49, line: 28, baseType: !54, size: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !48, file: !49, line: 32, baseType: !52, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !48, file: !49, line: 34, baseType: !59, size: 16, offset: 160)
!59 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !48, file: !49, line: 35, baseType: !59, size: 16, offset: 176)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !48, file: !49, line: 36, baseType: !62, size: 128, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !63, line: 53, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !63, line: 49, size: 128, elements: !65)
!65 = !{!66, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !64, file: !63, line: 51, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !64, file: !63, line: 52, baseType: !67, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !45, file: !44, line: 70, baseType: !70, size: 320)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 320, elements: !72)
!71 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!72 = !{!73}
!73 = !DISubrange(count: 40)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !45, file: !44, line: 71, baseType: !5, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !35, file: !3, line: 381, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 339, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 323, size: 1344, elements: !79)
!79 = !{!80, !95, !96, !97, !108, !109, !110, !111, !112, !113, !119, !120, !121, !122, !124, !125, !126, !128}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !78, file: !3, line: 324, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 247, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 242, size: 320, elements: !84)
!84 = !{!85, !86, !93, !94}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !83, file: !3, line: 243, baseType: !10, size: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !83, file: !3, line: 244, baseType: !87, size: 96, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !11, line: 24, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 22, size: 96, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !88, file: !11, line: 23, baseType: !6, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !88, file: !11, line: 23, baseType: !6, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !88, file: !11, line: 23, baseType: !6, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !83, file: !3, line: 245, baseType: !6, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !83, file: !3, line: 246, baseType: !38, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !78, file: !3, line: 324, baseType: !81, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !78, file: !3, line: 324, baseType: !81, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !78, file: !3, line: 325, baseType: !98, size: 64, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 270, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 266, size: 320, elements: !101)
!101 = !{!102, !103, !104, !106, !107}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !100, file: !3, line: 267, baseType: !81, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !100, file: !3, line: 267, baseType: !81, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !100, file: !3, line: 268, baseType: !105, size: 64, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !100, file: !3, line: 268, baseType: !105, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !100, file: !3, line: 269, baseType: !38, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !78, file: !3, line: 325, baseType: !98, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !78, file: !3, line: 325, baseType: !98, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !78, file: !3, line: 326, baseType: !10, size: 96, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !78, file: !3, line: 326, baseType: !10, size: 96, offset: 480)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !78, file: !3, line: 326, baseType: !10, size: 96, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !78, file: !3, line: 327, baseType: !114, size: 128, offset: 672)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 295, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 291, size: 128, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !115, file: !3, line: 292, baseType: !10, size: 96)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !115, file: !3, line: 293, baseType: !6, size: 32, offset: 96)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !78, file: !3, line: 328, baseType: !6, size: 32, offset: 800)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !78, file: !3, line: 329, baseType: !87, size: 96, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !78, file: !3, line: 331, baseType: !87, size: 96, offset: 928)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !78, file: !3, line: 333, baseType: !123, size: 64, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !78, file: !3, line: 334, baseType: !123, size: 64, offset: 1088)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !78, file: !3, line: 335, baseType: !123, size: 64, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !78, file: !3, line: 337, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !78, file: !3, line: 338, baseType: !5, size: 64, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !35, file: !3, line: 383, baseType: !127, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !35, file: !3, line: 384, baseType: !127, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !35, file: !3, line: 385, baseType: !127, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !35, file: !3, line: 386, baseType: !127, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !35, file: !3, line: 387, baseType: !127, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !35, file: !3, line: 389, baseType: !135, size: 64, offset: 448)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 425, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !3, line: 426, baseType: !135, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !136, file: !3, line: 427, baseType: !33, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !136, file: !3, line: 428, baseType: !6, size: 32, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !136, file: !3, line: 429, baseType: !6, size: 32, offset: 160)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !136, file: !3, line: 430, baseType: !6, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !136, file: !3, line: 431, baseType: !6, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !35, file: !3, line: 390, baseType: !5, size: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !35, file: !3, line: 391, baseType: !135, size: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !35, file: !3, line: 392, baseType: !5, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !35, file: !3, line: 394, baseType: !87, size: 96, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !35, file: !3, line: 396, baseType: !87, size: 96, offset: 800)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !35, file: !3, line: 397, baseType: !87, size: 96, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !35, file: !3, line: 399, baseType: !5, size: 64, offset: 1024)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !35, file: !3, line: 401, baseType: !81, size: 64, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !35, file: !3, line: 401, baseType: !81, size: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !35, file: !3, line: 401, baseType: !81, size: 64, offset: 1216)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !35, file: !3, line: 402, baseType: !98, size: 64, offset: 1280)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !35, file: !3, line: 402, baseType: !98, size: 64, offset: 1344)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !35, file: !3, line: 402, baseType: !98, size: 64, offset: 1408)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !35, file: !3, line: 403, baseType: !6, size: 32, offset: 1472)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DILocalVariable(name: "elem", arg: 1, scope: !30, file: !3, line: 1175, type: !33)
!160 = !DILocalVariable(name: "mode", arg: 2, scope: !30, file: !3, line: 1175, type: !5)
!161 = !DILocalVariable(name: "process_id", arg: 3, scope: !30, file: !3, line: 1175, type: !5)
!162 = !DILocalVariable(name: "inv_weight", scope: !30, file: !3, line: 1177, type: !6)
!163 = !DILocalVariable(name: "pc", scope: !30, file: !3, line: 1178, type: !10)
!164 = !DILocalVariable(name: "reverse", scope: !30, file: !3, line: 1179, type: !5)
!165 = !DILocation(line: 0, scope: !30)
!166 = !DILocation(line: 1178, column: 5, scope: !30)
!167 = !DILocation(line: 1178, column: 12, scope: !30)
!168 = !DILocation(line: 1181, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !30, file: !3, line: 1181, column: 9)
!170 = !DILocation(line: 1181, column: 9, scope: !30)
!171 = !DILocation(line: 1183, column: 13, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 1182, column: 9)
!173 = !DILocation(line: 1184, column: 39, scope: !172)
!174 = !DILocation(line: 1184, column: 13, scope: !172)
!175 = !DILocation(line: 1185, column: 39, scope: !172)
!176 = !DILocation(line: 1185, column: 13, scope: !172)
!177 = !DILocation(line: 1186, column: 39, scope: !172)
!178 = !DILocation(line: 1186, column: 13, scope: !172)
!179 = !DILocation(line: 1187, column: 13, scope: !172)
!180 = !DILocation(line: 1190, column: 19, scope: !181)
!181 = distinct !DILexicalBlock(scope: !169, file: !3, line: 1190, column: 14)
!182 = !DILocation(line: 0, scope: !181)
!183 = !DILocation(line: 1190, column: 14, scope: !169)
!184 = !DILocation(line: 1193, column: 49, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 1191, column: 9)
!186 = !DILocation(line: 1193, column: 64, scope: !185)
!187 = !DILocation(line: 1193, column: 13, scope: !185)
!188 = !DILocation(line: 1195, column: 23, scope: !185)
!189 = !DILocation(line: 1196, column: 77, scope: !185)
!190 = !DILocation(line: 1196, column: 89, scope: !185)
!191 = !DILocation(line: 1196, column: 13, scope: !185)
!192 = !DILocation(line: 1197, column: 23, scope: !185)
!193 = !DILocation(line: 1198, column: 13, scope: !185)
!194 = !DILocation(line: 1199, column: 23, scope: !185)
!195 = !DILocation(line: 1200, column: 13, scope: !185)
!196 = !DILocation(line: 1201, column: 9, scope: !185)
!197 = !DILocation(line: 1205, column: 46, scope: !198)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1205, column: 13)
!199 = distinct !DILexicalBlock(scope: !181, file: !3, line: 1203, column: 9)
!200 = !DILocation(line: 1205, column: 14, scope: !198)
!201 = !DILocation(line: 1206, column: 23, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1206, column: 17)
!203 = !DILocation(line: 1206, column: 28, scope: !202)
!204 = !DILocation(line: 1206, column: 35, scope: !202)
!205 = !DILocation(line: 1206, column: 17, scope: !199)
!206 = !DILocation(line: 1208, column: 45, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 1207, column: 17)
!208 = !DILocation(line: 1209, column: 32, scope: !207)
!209 = !DILocation(line: 1209, column: 38, scope: !207)
!210 = !DILocation(line: 1210, column: 27, scope: !207)
!211 = !DILocation(line: 1210, column: 36, scope: !207)
!212 = !DILocation(line: 1210, column: 38, scope: !207)
!213 = !DILocation(line: 1211, column: 27, scope: !207)
!214 = !DILocation(line: 1211, column: 36, scope: !207)
!215 = !DILocation(line: 1211, column: 38, scope: !207)
!216 = !DILocation(line: 1212, column: 27, scope: !207)
!217 = !DILocation(line: 1212, column: 32, scope: !207)
!218 = !DILocation(line: 1212, column: 39, scope: !207)
!219 = !DILocation(line: 1214, column: 43, scope: !220)
!220 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1214, column: 13)
!221 = !DILocation(line: 1213, column: 17, scope: !207)
!222 = !DILocation(line: 1214, column: 48, scope: !220)
!223 = !DILocation(line: 1214, column: 14, scope: !220)
!224 = !DILocation(line: 1216, column: 41, scope: !225)
!225 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1216, column: 13)
!226 = !DILocation(line: 1216, column: 46, scope: !225)
!227 = !DILocation(line: 1216, column: 14, scope: !225)
!228 = !DILocation(line: 1217, column: 23, scope: !229)
!229 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1217, column: 17)
!230 = !DILocation(line: 1217, column: 28, scope: !229)
!231 = !DILocation(line: 1217, column: 35, scope: !229)
!232 = !DILocation(line: 1217, column: 17, scope: !199)
!233 = !DILocation(line: 1219, column: 45, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !3, line: 1218, column: 17)
!235 = !DILocation(line: 1220, column: 32, scope: !234)
!236 = !DILocation(line: 1220, column: 38, scope: !234)
!237 = !DILocation(line: 1221, column: 27, scope: !234)
!238 = !DILocation(line: 1221, column: 36, scope: !234)
!239 = !DILocation(line: 1221, column: 38, scope: !234)
!240 = !DILocation(line: 1222, column: 27, scope: !234)
!241 = !DILocation(line: 1222, column: 36, scope: !234)
!242 = !DILocation(line: 1222, column: 38, scope: !234)
!243 = !DILocation(line: 1223, column: 27, scope: !234)
!244 = !DILocation(line: 1223, column: 32, scope: !234)
!245 = !DILocation(line: 1223, column: 39, scope: !234)
!246 = !DILocation(line: 1225, column: 43, scope: !247)
!247 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1225, column: 13)
!248 = !DILocation(line: 1224, column: 17, scope: !234)
!249 = !DILocation(line: 1225, column: 48, scope: !247)
!250 = !DILocation(line: 1225, column: 14, scope: !247)
!251 = !DILocation(line: 1227, column: 41, scope: !252)
!252 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1227, column: 13)
!253 = !DILocation(line: 1227, column: 46, scope: !252)
!254 = !DILocation(line: 1227, column: 14, scope: !252)
!255 = !DILocation(line: 1228, column: 23, scope: !256)
!256 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1228, column: 17)
!257 = !DILocation(line: 1228, column: 28, scope: !256)
!258 = !DILocation(line: 1228, column: 35, scope: !256)
!259 = !DILocation(line: 1228, column: 17, scope: !199)
!260 = !DILocation(line: 1230, column: 45, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 1229, column: 17)
!262 = !DILocation(line: 1231, column: 32, scope: !261)
!263 = !DILocation(line: 1231, column: 38, scope: !261)
!264 = !DILocation(line: 1232, column: 27, scope: !261)
!265 = !DILocation(line: 1232, column: 36, scope: !261)
!266 = !DILocation(line: 1232, column: 38, scope: !261)
!267 = !DILocation(line: 1233, column: 27, scope: !261)
!268 = !DILocation(line: 1233, column: 36, scope: !261)
!269 = !DILocation(line: 1233, column: 38, scope: !261)
!270 = !DILocation(line: 1234, column: 27, scope: !261)
!271 = !DILocation(line: 1234, column: 32, scope: !261)
!272 = !DILocation(line: 1234, column: 39, scope: !261)
!273 = !DILocation(line: 1236, column: 43, scope: !274)
!274 = distinct !DILexicalBlock(scope: !199, file: !3, line: 1236, column: 13)
!275 = !DILocation(line: 1235, column: 17, scope: !261)
!276 = !DILocation(line: 1236, column: 48, scope: !274)
!277 = !DILocation(line: 1236, column: 14, scope: !274)
!278 = !DILocation(line: 1238, column: 1, scope: !30)
!279 = !DISubprogram(name: "create_radavg_task", scope: !3, file: !3, line: 695, type: !31, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!280 = !{}
!281 = !DISubprogram(name: "center_point", scope: !3, file: !3, line: 1128, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284, !284, !284, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!285 = !DISubprogram(name: "foreach_leaf_edge", scope: !3, file: !3, line: 1135, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !98, !5, !288, !5, !5, !5}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, null}
!291 = distinct !DISubprogram(name: "add_radiosity_to_vertex", scope: !3, file: !3, line: 1240, type: !292, scopeLine: 1241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !98, !5, !33, !284, !5}
!294 = !{!295, !296, !297, !298, !299, !300, !301}
!295 = !DILocalVariable(name: "edge", arg: 1, scope: !291, file: !3, line: 1240, type: !98)
!296 = !DILocalVariable(name: "reverse", arg: 2, scope: !291, file: !3, line: 1240, type: !5)
!297 = !DILocalVariable(name: "elem", arg: 3, scope: !291, file: !3, line: 1240, type: !33)
!298 = !DILocalVariable(name: "p_c", arg: 4, scope: !291, file: !3, line: 1240, type: !284)
!299 = !DILocalVariable(name: "process_id", arg: 5, scope: !291, file: !3, line: 1240, type: !5)
!300 = !DILocalVariable(name: "ev", scope: !291, file: !3, line: 1242, type: !81)
!301 = !DILocalVariable(name: "weight", scope: !291, file: !3, line: 1243, type: !6)
!302 = !DILocation(line: 0, scope: !291)
!303 = !DILocation(line: 1245, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !291, file: !3, line: 1245, column: 9)
!305 = !DILocation(line: 1245, column: 9, scope: !291)
!306 = !DILocation(line: 0, scope: !304)
!307 = !DILocation(line: 1250, column: 27, scope: !291)
!308 = !DILocation(line: 1252, column: 20, scope: !291)
!309 = !DILocation(line: 1253, column: 31, scope: !310)
!310 = distinct !DILexicalBlock(scope: !291, file: !3, line: 1253, column: 5)
!311 = !DILocation(line: 1253, column: 6, scope: !310)
!312 = !DILocation(line: 1254, column: 25, scope: !291)
!313 = !DILocation(line: 1254, column: 29, scope: !291)
!314 = !DILocation(line: 1254, column: 9, scope: !291)
!315 = !DILocation(line: 1254, column: 15, scope: !291)
!316 = !DILocation(line: 1255, column: 29, scope: !291)
!317 = !DILocation(line: 1255, column: 13, scope: !291)
!318 = !DILocation(line: 1255, column: 15, scope: !291)
!319 = !DILocation(line: 1256, column: 29, scope: !291)
!320 = !DILocation(line: 1256, column: 13, scope: !291)
!321 = !DILocation(line: 1256, column: 15, scope: !291)
!322 = !DILocation(line: 1257, column: 9, scope: !291)
!323 = !DILocation(line: 1257, column: 16, scope: !291)
!324 = !DILocation(line: 1258, column: 33, scope: !325)
!325 = distinct !DILexicalBlock(scope: !291, file: !3, line: 1258, column: 5)
!326 = !DILocation(line: 1258, column: 6, scope: !325)
!327 = !DILocation(line: 1259, column: 1, scope: !291)
!328 = !DISubprogram(name: "pthread_mutex_lock", scope: !329, file: !329, line: 738, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!329 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!330 = !DISubroutineType(types: !331)
!331 = !{!52, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!333 = !DISubprogram(name: "pthread_mutex_unlock", scope: !329, file: !329, line: 756, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!334 = distinct !DISubprogram(name: "setup_view", scope: !3, file: !3, line: 1272, type: !335, scopeLine: 1273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !6, !6, !6, !6, !5}
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346}
!338 = !DILocalVariable(name: "rot_x", arg: 1, scope: !334, file: !3, line: 1272, type: !6)
!339 = !DILocalVariable(name: "rot_y", arg: 2, scope: !334, file: !3, line: 1272, type: !6)
!340 = !DILocalVariable(name: "dist", arg: 3, scope: !334, file: !3, line: 1272, type: !6)
!341 = !DILocalVariable(name: "zoom", arg: 4, scope: !334, file: !3, line: 1272, type: !6)
!342 = !DILocalVariable(name: "process_id", arg: 5, scope: !334, file: !3, line: 1272, type: !5)
!343 = !DILocalVariable(name: "v1", scope: !334, file: !3, line: 1274, type: !10)
!344 = !DILocalVariable(name: "v2", scope: !334, file: !3, line: 1274, type: !10)
!345 = !DILocalVariable(name: "cc", scope: !334, file: !3, line: 1275, type: !6)
!346 = !DILocalVariable(name: "ss", scope: !334, file: !3, line: 1275, type: !6)
!347 = !DILocation(line: 0, scope: !334)
!348 = !DILocation(line: 1278, column: 16, scope: !334)
!349 = !DILocation(line: 1279, column: 16, scope: !334)
!350 = !DILocation(line: 1280, column: 16, scope: !334)
!351 = !DILocation(line: 1281, column: 16, scope: !334)
!352 = !DILocation(line: 1289, column: 15, scope: !334)
!353 = !DILocation(line: 1289, column: 22, scope: !334)
!354 = !DILocation(line: 1289, column: 10, scope: !334)
!355 = !DILocation(line: 1290, column: 10, scope: !334)
!356 = !DILocation(line: 1292, column: 22, scope: !334)
!357 = !DILocation(line: 1293, column: 22, scope: !334)
!358 = !DILocation(line: 1295, column: 15, scope: !334)
!359 = !DILocation(line: 1295, column: 22, scope: !334)
!360 = !DILocation(line: 1295, column: 10, scope: !334)
!361 = !DILocation(line: 1296, column: 10, scope: !334)
!362 = !DILocation(line: 1297, column: 22, scope: !334)
!363 = !DILocation(line: 1298, column: 27, scope: !334)
!364 = !DILocation(line: 1298, column: 22, scope: !334)
!365 = !DILocation(line: 1302, column: 16, scope: !334)
!366 = !DILocation(line: 1303, column: 1, scope: !334)
!367 = distinct !DISubprogram(name: "display_scene", scope: !3, file: !3, line: 1312, type: !368, scopeLine: 1313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !5, !5, !5, !5, !5}
!370 = !{!371, !372, !373, !374, !375}
!371 = !DILocalVariable(name: "fill_sw", arg: 1, scope: !367, file: !3, line: 1312, type: !5)
!372 = !DILocalVariable(name: "patch_sw", arg: 2, scope: !367, file: !3, line: 1312, type: !5)
!373 = !DILocalVariable(name: "mesh_sw", arg: 3, scope: !367, file: !3, line: 1312, type: !5)
!374 = !DILocalVariable(name: "interaction_sw", arg: 4, scope: !367, file: !3, line: 1312, type: !5)
!375 = !DILocalVariable(name: "process_id", arg: 5, scope: !367, file: !3, line: 1312, type: !5)
!376 = !DILocation(line: 0, scope: !367)
!377 = !DILocation(line: 1315, column: 5, scope: !367)
!378 = !DILocation(line: 1318, column: 19, scope: !367)
!379 = !DILocation(line: 1318, column: 31, scope: !367)
!380 = !DILocation(line: 1318, column: 43, scope: !367)
!381 = !DILocation(line: 1318, column: 54, scope: !367)
!382 = !DILocation(line: 1318, column: 5, scope: !367)
!383 = !DILocation(line: 1320, column: 9, scope: !367)
!384 = !DILocation(line: 1329, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1326, column: 9)
!386 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1325, column: 9)
!387 = !DILocation(line: 1330, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1330, column: 9)
!389 = !DILocation(line: 1330, column: 9, scope: !367)
!390 = !DILocation(line: 1333, column: 13, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1331, column: 9)
!392 = !DILocation(line: 1334, column: 13, scope: !391)
!393 = !DILocation(line: 1335, column: 9, scope: !391)
!394 = !DILocation(line: 1336, column: 9, scope: !395)
!395 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1336, column: 9)
!396 = !DILocation(line: 1336, column: 9, scope: !367)
!397 = !DILocation(line: 1338, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1337, column: 9)
!399 = !DILocation(line: 1339, column: 13, scope: !398)
!400 = !DILocation(line: 1340, column: 9, scope: !398)
!401 = !DILocation(line: 1341, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1341, column: 9)
!403 = !DILocation(line: 1341, column: 9, scope: !367)
!404 = !DILocation(line: 1343, column: 13, scope: !405)
!405 = distinct !DILexicalBlock(scope: !402, file: !3, line: 1342, column: 9)
!406 = !DILocation(line: 1344, column: 13, scope: !405)
!407 = !DILocation(line: 1345, column: 9, scope: !405)
!408 = !DILocation(line: 1348, column: 5, scope: !367)
!409 = !DILocation(line: 1349, column: 1, scope: !367)
!410 = !DISubprogram(name: "g_clear", scope: !411, file: !411, line: 74, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!411 = !DIFile(filename: "./glibdumb/glib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "91b54e106f52da85fe06b27d69797b77")
!412 = !DISubroutineType(types: !413)
!413 = !{null}
!414 = !DISubprogram(name: "g_setup_view", scope: !411, file: !411, line: 75, type: !415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !6, !6, !6, !6}
!417 = distinct !DISubprogram(name: "display_elements_in_bsp_tree", scope: !3, file: !3, line: 1479, type: !418, scopeLine: 1480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !5, !5}
!420 = !{!421, !422}
!421 = !DILocalVariable(name: "mode", arg: 1, scope: !417, file: !3, line: 1479, type: !5)
!422 = !DILocalVariable(name: "process_id", arg: 2, scope: !417, file: !3, line: 1479, type: !5)
!423 = !DILocation(line: 0, scope: !417)
!424 = !DILocation(line: 1481, column: 5, scope: !417)
!425 = !DILocation(line: 1482, column: 1, scope: !417)
!426 = !DISubprogram(name: "g_color", scope: !411, file: !411, line: 69, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !5}
!429 = distinct !DISubprogram(name: "display_patches_in_bsp_tree", scope: !3, file: !3, line: 1402, type: !418, scopeLine: 1403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!430 = !{!431, !432}
!431 = !DILocalVariable(name: "mode", arg: 1, scope: !429, file: !3, line: 1402, type: !5)
!432 = !DILocalVariable(name: "process_id", arg: 2, scope: !429, file: !3, line: 1402, type: !5)
!433 = !DILocation(line: 0, scope: !429)
!434 = !DILocation(line: 1404, column: 5, scope: !429)
!435 = !DILocation(line: 1405, column: 1, scope: !429)
!436 = distinct !DISubprogram(name: "display_interactions_in_bsp_tree", scope: !3, file: !3, line: 1537, type: !427, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!438}
!438 = !DILocalVariable(name: "process_id", arg: 1, scope: !436, file: !3, line: 1537, type: !5)
!439 = !DILocation(line: 0, scope: !436)
!440 = !DILocation(line: 1539, column: 5, scope: !436)
!441 = !DILocation(line: 1540, column: 1, scope: !436)
!442 = !DISubprogram(name: "g_flush", scope: !411, file: !411, line: 77, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!443 = distinct !DISubprogram(name: "display_patch", scope: !3, file: !3, line: 1357, type: !444, scopeLine: 1358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !76, !5, !5}
!446 = !{!447, !448, !449, !450, !454}
!447 = !DILocalVariable(name: "patch", arg: 1, scope: !443, file: !3, line: 1357, type: !76)
!448 = !DILocalVariable(name: "mode", arg: 2, scope: !443, file: !3, line: 1357, type: !5)
!449 = !DILocalVariable(name: "process_id", arg: 3, scope: !443, file: !3, line: 1357, type: !5)
!450 = !DILocalVariable(name: "p_buf", scope: !443, file: !3, line: 1359, type: !451)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 384, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 4)
!454 = !DILocalVariable(name: "c_buf", scope: !443, file: !3, line: 1360, type: !455)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 384, elements: !452)
!456 = !DILocation(line: 0, scope: !443)
!457 = !DILocation(line: 1359, column: 5, scope: !443)
!458 = !DILocation(line: 1359, column: 12, scope: !443)
!459 = !DILocation(line: 1360, column: 5, scope: !443)
!460 = !DILocation(line: 1360, column: 11, scope: !443)
!461 = !DILocation(line: 1362, column: 9, scope: !443)
!462 = !DILocation(line: 1364, column: 40, scope: !463)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 1364, column: 17)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 1363, column: 9)
!465 = distinct !DILexicalBlock(scope: !443, file: !3, line: 1362, column: 9)
!466 = !DILocation(line: 1364, column: 17, scope: !463)
!467 = !DILocation(line: 1364, column: 65, scope: !463)
!468 = !DILocation(line: 1364, column: 17, scope: !464)
!469 = !DILocation(line: 1367, column: 31, scope: !464)
!470 = !DILocation(line: 1368, column: 13, scope: !464)
!471 = !DILocation(line: 1368, column: 31, scope: !464)
!472 = !DILocation(line: 1369, column: 13, scope: !464)
!473 = !DILocation(line: 1369, column: 31, scope: !464)
!474 = !DILocation(line: 1370, column: 31, scope: !464)
!475 = !DILocation(line: 1371, column: 13, scope: !464)
!476 = !DILocation(line: 1371, column: 31, scope: !464)
!477 = !DILocation(line: 1372, column: 13, scope: !464)
!478 = !DILocation(line: 1372, column: 31, scope: !464)
!479 = !DILocation(line: 1374, column: 13, scope: !464)
!480 = !DILocation(line: 1375, column: 9, scope: !464)
!481 = !DILocation(line: 1378, column: 40, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 1378, column: 17)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 1377, column: 9)
!484 = distinct !DILexicalBlock(scope: !465, file: !3, line: 1376, column: 14)
!485 = !DILocation(line: 1378, column: 17, scope: !482)
!486 = !DILocation(line: 1378, column: 65, scope: !482)
!487 = !DILocation(line: 1378, column: 17, scope: !483)
!488 = !DILocation(line: 1381, column: 31, scope: !483)
!489 = !DILocation(line: 1382, column: 13, scope: !483)
!490 = !DILocation(line: 1382, column: 31, scope: !483)
!491 = !DILocation(line: 1383, column: 13, scope: !483)
!492 = !DILocation(line: 1383, column: 31, scope: !483)
!493 = !DILocation(line: 1385, column: 13, scope: !483)
!494 = !DILocation(line: 1386, column: 9, scope: !483)
!495 = !DILocation(line: 1389, column: 29, scope: !496)
!496 = distinct !DILexicalBlock(scope: !484, file: !3, line: 1388, column: 9)
!497 = !DILocation(line: 1389, column: 41, scope: !496)
!498 = !DILocation(line: 1389, column: 13, scope: !496)
!499 = !DILocation(line: 1390, column: 41, scope: !496)
!500 = !DILocation(line: 1390, column: 13, scope: !496)
!501 = !DILocation(line: 1391, column: 13, scope: !496)
!502 = !DILocation(line: 1393, column: 1, scope: !443)
!503 = !DISubprogram(name: "inner_product", scope: !3, file: !3, line: 1125, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!504 = !DISubroutineType(types: !505)
!505 = !{!6, !284, !284}
!506 = !DISubprogram(name: "g_spolygon", scope: !411, file: !411, line: 73, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !5, !284, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!510 = !DISubprogram(name: "g_polygon", scope: !411, file: !411, line: 72, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !5, !284}
!513 = !DISubprogram(name: "g_line", scope: !411, file: !411, line: 71, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !284, !284}
!516 = !DISubprogram(name: "foreach_depth_sorted_patch", scope: !3, file: !3, line: 436, type: !517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !284, !288, !5, !5}
!519 = distinct !DISubprogram(name: "display_element", scope: !3, file: !3, line: 1415, type: !31, scopeLine: 1416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!520 = !{!521, !522, !523, !524}
!521 = !DILocalVariable(name: "element", arg: 1, scope: !519, file: !3, line: 1415, type: !33)
!522 = !DILocalVariable(name: "mode", arg: 2, scope: !519, file: !3, line: 1415, type: !5)
!523 = !DILocalVariable(name: "process_id", arg: 3, scope: !519, file: !3, line: 1415, type: !5)
!524 = !DILocalVariable(name: "p_buf", scope: !519, file: !3, line: 1417, type: !451)
!525 = !DILocation(line: 0, scope: !519)
!526 = !DILocation(line: 1417, column: 5, scope: !519)
!527 = !DILocation(line: 1417, column: 12, scope: !519)
!528 = !DILocation(line: 1419, column: 34, scope: !529)
!529 = distinct !DILexicalBlock(scope: !519, file: !3, line: 1419, column: 9)
!530 = !DILocation(line: 1419, column: 41, scope: !529)
!531 = !DILocation(line: 1419, column: 9, scope: !529)
!532 = !DILocation(line: 1419, column: 66, scope: !529)
!533 = !DILocation(line: 1419, column: 9, scope: !519)
!534 = !DILocation(line: 1422, column: 9, scope: !519)
!535 = !DILocation(line: 1424, column: 48, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !3, line: 1423, column: 9)
!537 = distinct !DILexicalBlock(scope: !519, file: !3, line: 1422, column: 9)
!538 = !DILocation(line: 1424, column: 62, scope: !536)
!539 = !DILocation(line: 1425, column: 47, scope: !536)
!540 = !DILocation(line: 1424, column: 13, scope: !536)
!541 = !DILocation(line: 1427, column: 9, scope: !536)
!542 = !DILocation(line: 1430, column: 29, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 1429, column: 9)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 1428, column: 14)
!545 = !DILocation(line: 1430, column: 13, scope: !543)
!546 = !DILocation(line: 1431, column: 33, scope: !543)
!547 = !DILocation(line: 1431, column: 38, scope: !543)
!548 = !DILocation(line: 1432, column: 13, scope: !543)
!549 = !DILocation(line: 1432, column: 33, scope: !543)
!550 = !DILocation(line: 1432, column: 38, scope: !543)
!551 = !DILocation(line: 1433, column: 13, scope: !543)
!552 = !DILocation(line: 1433, column: 33, scope: !543)
!553 = !DILocation(line: 1433, column: 38, scope: !543)
!554 = !DILocation(line: 1435, column: 13, scope: !543)
!555 = !DILocation(line: 1436, column: 9, scope: !543)
!556 = !DILocation(line: 1439, column: 31, scope: !557)
!557 = distinct !DILexicalBlock(scope: !544, file: !3, line: 1438, column: 9)
!558 = !DILocation(line: 1439, column: 49, scope: !557)
!559 = !DILocation(line: 1439, column: 13, scope: !557)
!560 = !DILocation(line: 1440, column: 31, scope: !557)
!561 = !DILocation(line: 1440, column: 49, scope: !557)
!562 = !DILocation(line: 1440, column: 13, scope: !557)
!563 = !DILocation(line: 1441, column: 31, scope: !557)
!564 = !DILocation(line: 1441, column: 49, scope: !557)
!565 = !DILocation(line: 1441, column: 13, scope: !557)
!566 = !DILocation(line: 1443, column: 1, scope: !519)
!567 = distinct !DISubprogram(name: "_display_shaded_triangle", scope: !3, file: !3, line: 1445, type: !568, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !570)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !81, !81, !81, !98, !98, !98, !5}
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579}
!571 = !DILocalVariable(name: "ev1", arg: 1, scope: !567, file: !3, line: 1445, type: !81)
!572 = !DILocalVariable(name: "ev2", arg: 2, scope: !567, file: !3, line: 1445, type: !81)
!573 = !DILocalVariable(name: "ev3", arg: 3, scope: !567, file: !3, line: 1445, type: !81)
!574 = !DILocalVariable(name: "e12", arg: 4, scope: !567, file: !3, line: 1445, type: !98)
!575 = !DILocalVariable(name: "e23", arg: 5, scope: !567, file: !3, line: 1445, type: !98)
!576 = !DILocalVariable(name: "e31", arg: 6, scope: !567, file: !3, line: 1445, type: !98)
!577 = !DILocalVariable(name: "process_id", arg: 7, scope: !567, file: !3, line: 1445, type: !5)
!578 = !DILocalVariable(name: "p_buf", scope: !567, file: !3, line: 1447, type: !451)
!579 = !DILocalVariable(name: "c_buf", scope: !567, file: !3, line: 1448, type: !455)
!580 = !DILocation(line: 0, scope: !567)
!581 = !DILocation(line: 1447, column: 5, scope: !567)
!582 = !DILocation(line: 1447, column: 12, scope: !567)
!583 = !DILocation(line: 1448, column: 5, scope: !567)
!584 = !DILocation(line: 1448, column: 11, scope: !567)
!585 = !DILocation(line: 1450, column: 21, scope: !567)
!586 = !DILocation(line: 1451, column: 5, scope: !567)
!587 = !DILocation(line: 1451, column: 21, scope: !567)
!588 = !DILocation(line: 1452, column: 5, scope: !567)
!589 = !DILocation(line: 1452, column: 21, scope: !567)
!590 = !DILocation(line: 1453, column: 21, scope: !567)
!591 = !DILocation(line: 1454, column: 5, scope: !567)
!592 = !DILocation(line: 1454, column: 21, scope: !567)
!593 = !DILocation(line: 1455, column: 5, scope: !567)
!594 = !DILocation(line: 1455, column: 21, scope: !567)
!595 = !DILocation(line: 1456, column: 5, scope: !567)
!596 = !DILocation(line: 1457, column: 1, scope: !567)
!597 = !DISubprogram(name: "g_rgb", scope: !411, file: !411, line: 70, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !87}
!600 = distinct !DISubprogram(name: "display_elements_in_patch", scope: !3, file: !3, line: 1466, type: !444, scopeLine: 1467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!601 = !{!602, !603, !604}
!602 = !DILocalVariable(name: "patch", arg: 1, scope: !600, file: !3, line: 1466, type: !76)
!603 = !DILocalVariable(name: "mode", arg: 2, scope: !600, file: !3, line: 1466, type: !5)
!604 = !DILocalVariable(name: "process_id", arg: 3, scope: !600, file: !3, line: 1466, type: !5)
!605 = !DILocation(line: 0, scope: !600)
!606 = !DILocation(line: 1468, column: 5, scope: !600)
!607 = !DILocation(line: 1469, column: 5, scope: !600)
!608 = !DILocation(line: 1470, column: 1, scope: !600)
!609 = !DISubprogram(name: "foreach_leaf_element_in_patch", scope: !3, file: !3, line: 1061, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !76, !288, !5, !5}
!612 = distinct !DISubprogram(name: "display_interactions_in_element", scope: !3, file: !3, line: 1490, type: !31, scopeLine: 1491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(name: "elem", arg: 1, scope: !612, file: !3, line: 1490, type: !33)
!615 = !DILocalVariable(name: "mode", arg: 2, scope: !612, file: !3, line: 1490, type: !5)
!616 = !DILocalVariable(name: "process_id", arg: 3, scope: !612, file: !3, line: 1490, type: !5)
!617 = !DILocation(line: 0, scope: !612)
!618 = !DILocation(line: 1493, column: 5, scope: !612)
!619 = !DILocation(line: 1494, column: 5, scope: !612)
!620 = !DILocation(line: 1495, column: 1, scope: !612)
!621 = !DISubprogram(name: "foreach_interaction_in_element", scope: !3, file: !3, line: 1074, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !33, !288, !5, !5}
!624 = distinct !DISubprogram(name: "_disp_interactions", scope: !3, file: !3, line: 1498, type: !625, scopeLine: 1499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !33, !627, !5, !5}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !3, line: 432, baseType: !136)
!629 = !{!630, !631, !632, !633, !634, !635, !636}
!630 = !DILocalVariable(name: "elem", arg: 1, scope: !624, file: !3, line: 1498, type: !33)
!631 = !DILocalVariable(name: "inter", arg: 2, scope: !624, file: !3, line: 1498, type: !627)
!632 = !DILocalVariable(name: "mode", arg: 3, scope: !624, file: !3, line: 1498, type: !5)
!633 = !DILocalVariable(name: "process_id", arg: 4, scope: !624, file: !3, line: 1498, type: !5)
!634 = !DILocalVariable(name: "pa", scope: !624, file: !3, line: 1500, type: !10)
!635 = !DILocalVariable(name: "pb", scope: !624, file: !3, line: 1500, type: !10)
!636 = !DILocalVariable(name: "edst", scope: !624, file: !3, line: 1501, type: !33)
!637 = !DILocation(line: 0, scope: !624)
!638 = !DILocation(line: 1500, column: 5, scope: !624)
!639 = !DILocation(line: 1500, column: 12, scope: !624)
!640 = !DILocation(line: 1500, column: 16, scope: !624)
!641 = !DILocation(line: 1505, column: 17, scope: !642)
!642 = distinct !DILexicalBlock(scope: !624, file: !3, line: 1505, column: 11)
!643 = !DILocation(line: 1506, column: 8, scope: !642)
!644 = !DILocation(line: 1506, column: 32, scope: !642)
!645 = !DILocation(line: 1506, column: 39, scope: !642)
!646 = !DILocation(line: 1506, column: 55, scope: !642)
!647 = !DILocation(line: 1506, column: 62, scope: !642)
!648 = !DILocation(line: 1506, column: 46, scope: !642)
!649 = !DILocation(line: 1505, column: 11, scope: !624)
!650 = !DILocation(line: 1511, column: 26, scope: !624)
!651 = !DILocation(line: 1511, column: 41, scope: !624)
!652 = !DILocation(line: 1511, column: 56, scope: !624)
!653 = !DILocation(line: 1511, column: 5, scope: !624)
!654 = !DILocation(line: 1512, column: 26, scope: !624)
!655 = !DILocation(line: 1512, column: 41, scope: !624)
!656 = !DILocation(line: 1512, column: 56, scope: !624)
!657 = !DILocation(line: 1512, column: 5, scope: !624)
!658 = !DILocation(line: 1515, column: 5, scope: !624)
!659 = !DILocation(line: 1516, column: 1, scope: !624)
!660 = distinct !DISubprogram(name: "display_interactions_in_patch", scope: !3, file: !3, line: 1526, type: !444, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!661 = !{!662, !663, !664}
!662 = !DILocalVariable(name: "patch", arg: 1, scope: !660, file: !3, line: 1526, type: !76)
!663 = !DILocalVariable(name: "mode", arg: 2, scope: !660, file: !3, line: 1526, type: !5)
!664 = !DILocalVariable(name: "process_id", arg: 3, scope: !660, file: !3, line: 1526, type: !5)
!665 = !DILocation(line: 0, scope: !660)
!666 = !DILocation(line: 1528, column: 5, scope: !660)
!667 = !DILocation(line: 1529, column: 1, scope: !660)
!668 = !DISubprogram(name: "foreach_element_in_patch", scope: !3, file: !3, line: 1060, type: !610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!669 = !DISubprogram(name: "foreach_patch_in_bsp", scope: !3, file: !3, line: 435, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !288, !5, !5}
!672 = distinct !DISubprogram(name: "ps_display_scene", scope: !3, file: !3, line: 1559, type: !368, scopeLine: 1560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !673)
!673 = !{!674, !675, !676, !677, !678}
!674 = !DILocalVariable(name: "fill_sw", arg: 1, scope: !672, file: !3, line: 1559, type: !5)
!675 = !DILocalVariable(name: "patch_sw", arg: 2, scope: !672, file: !3, line: 1559, type: !5)
!676 = !DILocalVariable(name: "mesh_sw", arg: 3, scope: !672, file: !3, line: 1559, type: !5)
!677 = !DILocalVariable(name: "interaction_sw", arg: 4, scope: !672, file: !3, line: 1559, type: !5)
!678 = !DILocalVariable(name: "process_id", arg: 5, scope: !672, file: !3, line: 1559, type: !5)
!679 = !DILocation(line: 0, scope: !672)
!680 = !DILocation(line: 1561, column: 9, scope: !681)
!681 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1561, column: 9)
!682 = !DILocation(line: 1561, column: 9, scope: !672)
!683 = !DILocation(line: 1564, column: 13, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 1562, column: 9)
!685 = !DILocation(line: 1565, column: 9, scope: !684)
!686 = !DILocation(line: 1566, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1566, column: 9)
!688 = !DILocation(line: 1566, column: 9, scope: !672)
!689 = !DILocation(line: 1569, column: 13, scope: !690)
!690 = distinct !DILexicalBlock(scope: !687, file: !3, line: 1567, column: 9)
!691 = !DILocation(line: 1570, column: 13, scope: !690)
!692 = !DILocation(line: 1571, column: 9, scope: !690)
!693 = !DILocation(line: 1572, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1572, column: 9)
!695 = !DILocation(line: 1572, column: 9, scope: !672)
!696 = !DILocation(line: 1575, column: 13, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !3, line: 1573, column: 9)
!698 = !DILocation(line: 1576, column: 13, scope: !697)
!699 = !DILocation(line: 1577, column: 9, scope: !697)
!700 = !DILocation(line: 1578, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !672, file: !3, line: 1578, column: 9)
!702 = !DILocation(line: 1578, column: 9, scope: !672)
!703 = !DILocation(line: 1581, column: 13, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1579, column: 9)
!705 = !DILocation(line: 1582, column: 13, scope: !704)
!706 = !DILocation(line: 1583, column: 9, scope: !704)
!707 = !DILocation(line: 1585, column: 1, scope: !672)
!708 = distinct !DISubprogram(name: "ps_display_elements_in_bsp_tree", scope: !3, file: !3, line: 1710, type: !418, scopeLine: 1711, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !709)
!709 = !{!710, !711}
!710 = !DILocalVariable(name: "mode", arg: 1, scope: !708, file: !3, line: 1710, type: !5)
!711 = !DILocalVariable(name: "process_id", arg: 2, scope: !708, file: !3, line: 1710, type: !5)
!712 = !DILocation(line: 0, scope: !708)
!713 = !DILocation(line: 1712, column: 5, scope: !708)
!714 = !DILocation(line: 1713, column: 1, scope: !708)
!715 = !DISubprogram(name: "ps_linewidth", scope: !716, file: !716, line: 41, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!716 = !DIFile(filename: "./glibps/pslib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "47df8265542401f634629448fc73856a")
!717 = !DISubroutineType(types: !718)
!718 = !{null, !6}
!719 = distinct !DISubprogram(name: "ps_display_patches_in_bsp_tree", scope: !3, file: !3, line: 1638, type: !418, scopeLine: 1639, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !720)
!720 = !{!721, !722}
!721 = !DILocalVariable(name: "mode", arg: 1, scope: !719, file: !3, line: 1638, type: !5)
!722 = !DILocalVariable(name: "process_id", arg: 2, scope: !719, file: !3, line: 1638, type: !5)
!723 = !DILocation(line: 0, scope: !719)
!724 = !DILocation(line: 1640, column: 5, scope: !719)
!725 = !DILocation(line: 1641, column: 1, scope: !719)
!726 = distinct !DISubprogram(name: "ps_display_interactions_in_bsp_tree", scope: !3, file: !3, line: 1765, type: !427, scopeLine: 1766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!727 = !{!728}
!728 = !DILocalVariable(name: "process_id", arg: 1, scope: !726, file: !3, line: 1765, type: !5)
!729 = !DILocation(line: 0, scope: !726)
!730 = !DILocation(line: 1767, column: 5, scope: !726)
!731 = !DILocation(line: 1768, column: 1, scope: !726)
!732 = distinct !DISubprogram(name: "ps_display_patch", scope: !3, file: !3, line: 1593, type: !444, scopeLine: 1594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !733)
!733 = !{!734, !735, !736, !737, !738}
!734 = !DILocalVariable(name: "patch", arg: 1, scope: !732, file: !3, line: 1593, type: !76)
!735 = !DILocalVariable(name: "mode", arg: 2, scope: !732, file: !3, line: 1593, type: !5)
!736 = !DILocalVariable(name: "process_id", arg: 3, scope: !732, file: !3, line: 1593, type: !5)
!737 = !DILocalVariable(name: "p_buf", scope: !732, file: !3, line: 1595, type: !451)
!738 = !DILocalVariable(name: "c_buf", scope: !732, file: !3, line: 1596, type: !455)
!739 = !DILocation(line: 0, scope: !732)
!740 = !DILocation(line: 1595, column: 5, scope: !732)
!741 = !DILocation(line: 1595, column: 12, scope: !732)
!742 = !DILocation(line: 1596, column: 5, scope: !732)
!743 = !DILocation(line: 1596, column: 11, scope: !732)
!744 = !DILocation(line: 1598, column: 9, scope: !732)
!745 = !DILocation(line: 1600, column: 40, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1600, column: 17)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1599, column: 9)
!748 = distinct !DILexicalBlock(scope: !732, file: !3, line: 1598, column: 9)
!749 = !DILocation(line: 1600, column: 17, scope: !746)
!750 = !DILocation(line: 1600, column: 65, scope: !746)
!751 = !DILocation(line: 1600, column: 17, scope: !747)
!752 = !DILocation(line: 1602, column: 31, scope: !747)
!753 = !DILocation(line: 1603, column: 13, scope: !747)
!754 = !DILocation(line: 1603, column: 31, scope: !747)
!755 = !DILocation(line: 1604, column: 13, scope: !747)
!756 = !DILocation(line: 1604, column: 31, scope: !747)
!757 = !DILocation(line: 1605, column: 31, scope: !747)
!758 = !DILocation(line: 1606, column: 13, scope: !747)
!759 = !DILocation(line: 1606, column: 31, scope: !747)
!760 = !DILocation(line: 1607, column: 13, scope: !747)
!761 = !DILocation(line: 1607, column: 31, scope: !747)
!762 = !DILocation(line: 1609, column: 13, scope: !747)
!763 = !DILocation(line: 1610, column: 9, scope: !747)
!764 = !DILocation(line: 1613, column: 40, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 1613, column: 17)
!766 = distinct !DILexicalBlock(scope: !767, file: !3, line: 1612, column: 9)
!767 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1611, column: 14)
!768 = !DILocation(line: 1613, column: 17, scope: !765)
!769 = !DILocation(line: 1613, column: 65, scope: !765)
!770 = !DILocation(line: 1613, column: 17, scope: !766)
!771 = !DILocation(line: 1615, column: 31, scope: !766)
!772 = !DILocation(line: 1616, column: 13, scope: !766)
!773 = !DILocation(line: 1616, column: 31, scope: !766)
!774 = !DILocation(line: 1617, column: 13, scope: !766)
!775 = !DILocation(line: 1617, column: 31, scope: !766)
!776 = !DILocation(line: 1619, column: 13, scope: !766)
!777 = !DILocation(line: 1620, column: 9, scope: !766)
!778 = !DILocation(line: 1623, column: 31, scope: !779)
!779 = distinct !DILexicalBlock(scope: !767, file: !3, line: 1622, column: 9)
!780 = !DILocation(line: 1624, column: 13, scope: !779)
!781 = !DILocation(line: 1624, column: 31, scope: !779)
!782 = !DILocation(line: 1625, column: 13, scope: !779)
!783 = !DILocation(line: 1625, column: 31, scope: !779)
!784 = !DILocation(line: 1627, column: 13, scope: !779)
!785 = !DILocation(line: 1629, column: 1, scope: !732)
!786 = !DISubprogram(name: "ps_spolygon", scope: !716, file: !716, line: 45, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!787 = !DISubprogram(name: "ps_polygon", scope: !716, file: !716, line: 44, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!788 = !DISubprogram(name: "ps_polygonedge", scope: !716, file: !716, line: 43, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!789 = distinct !DISubprogram(name: "ps_display_element", scope: !3, file: !3, line: 1651, type: !31, scopeLine: 1652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!790 = !{!791, !792, !793, !794, !795}
!791 = !DILocalVariable(name: "element", arg: 1, scope: !789, file: !3, line: 1651, type: !33)
!792 = !DILocalVariable(name: "mode", arg: 2, scope: !789, file: !3, line: 1651, type: !5)
!793 = !DILocalVariable(name: "process_id", arg: 3, scope: !789, file: !3, line: 1651, type: !5)
!794 = !DILocalVariable(name: "p_buf", scope: !789, file: !3, line: 1653, type: !451)
!795 = !DILocalVariable(name: "c_buf", scope: !789, file: !3, line: 1654, type: !455)
!796 = !DILocation(line: 0, scope: !789)
!797 = !DILocation(line: 1653, column: 5, scope: !789)
!798 = !DILocation(line: 1653, column: 12, scope: !789)
!799 = !DILocation(line: 1654, column: 5, scope: !789)
!800 = !DILocation(line: 1654, column: 11, scope: !789)
!801 = !DILocation(line: 1656, column: 9, scope: !789)
!802 = !DILocation(line: 1658, column: 42, scope: !803)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1658, column: 17)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1657, column: 9)
!805 = distinct !DILexicalBlock(scope: !789, file: !3, line: 1656, column: 9)
!806 = !DILocation(line: 1658, column: 49, scope: !803)
!807 = !DILocation(line: 1658, column: 17, scope: !803)
!808 = !DILocation(line: 1659, column: 16, scope: !803)
!809 = !DILocation(line: 1658, column: 17, scope: !804)
!810 = !DILocation(line: 1661, column: 33, scope: !804)
!811 = !DILocation(line: 1661, column: 38, scope: !804)
!812 = !DILocation(line: 1662, column: 13, scope: !804)
!813 = !DILocation(line: 1662, column: 33, scope: !804)
!814 = !DILocation(line: 1662, column: 38, scope: !804)
!815 = !DILocation(line: 1663, column: 13, scope: !804)
!816 = !DILocation(line: 1663, column: 33, scope: !804)
!817 = !DILocation(line: 1663, column: 38, scope: !804)
!818 = !DILocation(line: 1664, column: 33, scope: !804)
!819 = !DILocation(line: 1665, column: 13, scope: !804)
!820 = !DILocation(line: 1665, column: 33, scope: !804)
!821 = !DILocation(line: 1666, column: 13, scope: !804)
!822 = !DILocation(line: 1666, column: 33, scope: !804)
!823 = !DILocation(line: 1668, column: 13, scope: !804)
!824 = !DILocation(line: 1669, column: 9, scope: !804)
!825 = !DILocation(line: 1672, column: 42, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 1672, column: 17)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1671, column: 9)
!828 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1670, column: 14)
!829 = !DILocation(line: 1672, column: 49, scope: !826)
!830 = !DILocation(line: 1672, column: 17, scope: !826)
!831 = !DILocation(line: 1673, column: 16, scope: !826)
!832 = !DILocation(line: 1672, column: 17, scope: !827)
!833 = !DILocation(line: 1675, column: 33, scope: !827)
!834 = !DILocation(line: 1675, column: 38, scope: !827)
!835 = !DILocation(line: 1676, column: 13, scope: !827)
!836 = !DILocation(line: 1676, column: 33, scope: !827)
!837 = !DILocation(line: 1676, column: 38, scope: !827)
!838 = !DILocation(line: 1677, column: 13, scope: !827)
!839 = !DILocation(line: 1677, column: 33, scope: !827)
!840 = !DILocation(line: 1677, column: 38, scope: !827)
!841 = !DILocation(line: 1679, column: 13, scope: !827)
!842 = !DILocation(line: 1680, column: 9, scope: !827)
!843 = !DILocation(line: 1683, column: 33, scope: !844)
!844 = distinct !DILexicalBlock(scope: !828, file: !3, line: 1682, column: 9)
!845 = !DILocation(line: 1683, column: 38, scope: !844)
!846 = !DILocation(line: 1684, column: 13, scope: !844)
!847 = !DILocation(line: 1684, column: 33, scope: !844)
!848 = !DILocation(line: 1684, column: 38, scope: !844)
!849 = !DILocation(line: 1685, column: 13, scope: !844)
!850 = !DILocation(line: 1685, column: 33, scope: !844)
!851 = !DILocation(line: 1685, column: 38, scope: !844)
!852 = !DILocation(line: 1687, column: 13, scope: !844)
!853 = !DILocation(line: 1689, column: 1, scope: !789)
!854 = distinct !DISubprogram(name: "ps_display_elements_in_patch", scope: !3, file: !3, line: 1698, type: !444, scopeLine: 1699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!855 = !{!856, !857, !858}
!856 = !DILocalVariable(name: "patch", arg: 1, scope: !854, file: !3, line: 1698, type: !76)
!857 = !DILocalVariable(name: "mode", arg: 2, scope: !854, file: !3, line: 1698, type: !5)
!858 = !DILocalVariable(name: "process_id", arg: 3, scope: !854, file: !3, line: 1698, type: !5)
!859 = !DILocation(line: 0, scope: !854)
!860 = !DILocation(line: 1700, column: 5, scope: !854)
!861 = !DILocation(line: 1701, column: 1, scope: !854)
!862 = distinct !DISubprogram(name: "ps_display_interactions_in_element", scope: !3, file: !3, line: 1721, type: !31, scopeLine: 1722, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!863 = !{!864, !865, !866}
!864 = !DILocalVariable(name: "elem", arg: 1, scope: !862, file: !3, line: 1721, type: !33)
!865 = !DILocalVariable(name: "mode", arg: 2, scope: !862, file: !3, line: 1721, type: !5)
!866 = !DILocalVariable(name: "process_id", arg: 3, scope: !862, file: !3, line: 1721, type: !5)
!867 = !DILocation(line: 0, scope: !862)
!868 = !DILocation(line: 1723, column: 5, scope: !862)
!869 = !DILocation(line: 1724, column: 1, scope: !862)
!870 = distinct !DISubprogram(name: "_ps_disp_interactions", scope: !3, file: !3, line: 1727, type: !625, scopeLine: 1728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878}
!872 = !DILocalVariable(name: "elem", arg: 1, scope: !870, file: !3, line: 1727, type: !33)
!873 = !DILocalVariable(name: "inter", arg: 2, scope: !870, file: !3, line: 1727, type: !627)
!874 = !DILocalVariable(name: "mode", arg: 3, scope: !870, file: !3, line: 1727, type: !5)
!875 = !DILocalVariable(name: "process_id", arg: 4, scope: !870, file: !3, line: 1727, type: !5)
!876 = !DILocalVariable(name: "pa", scope: !870, file: !3, line: 1729, type: !10)
!877 = !DILocalVariable(name: "pb", scope: !870, file: !3, line: 1729, type: !10)
!878 = !DILocalVariable(name: "edst", scope: !870, file: !3, line: 1730, type: !33)
!879 = !DILocation(line: 0, scope: !870)
!880 = !DILocation(line: 1729, column: 5, scope: !870)
!881 = !DILocation(line: 1729, column: 12, scope: !870)
!882 = !DILocation(line: 1729, column: 16, scope: !870)
!883 = !DILocation(line: 1733, column: 17, scope: !884)
!884 = distinct !DILexicalBlock(scope: !870, file: !3, line: 1733, column: 11)
!885 = !DILocation(line: 1734, column: 8, scope: !884)
!886 = !DILocation(line: 1734, column: 32, scope: !884)
!887 = !DILocation(line: 1734, column: 39, scope: !884)
!888 = !DILocation(line: 1734, column: 55, scope: !884)
!889 = !DILocation(line: 1734, column: 62, scope: !884)
!890 = !DILocation(line: 1734, column: 46, scope: !884)
!891 = !DILocation(line: 1733, column: 11, scope: !870)
!892 = !DILocation(line: 1739, column: 26, scope: !870)
!893 = !DILocation(line: 1739, column: 41, scope: !870)
!894 = !DILocation(line: 1739, column: 56, scope: !870)
!895 = !DILocation(line: 1739, column: 5, scope: !870)
!896 = !DILocation(line: 1740, column: 26, scope: !870)
!897 = !DILocation(line: 1740, column: 41, scope: !870)
!898 = !DILocation(line: 1740, column: 56, scope: !870)
!899 = !DILocation(line: 1740, column: 5, scope: !870)
!900 = !DILocation(line: 1743, column: 5, scope: !870)
!901 = !DILocation(line: 1744, column: 1, scope: !870)
!902 = distinct !DISubprogram(name: "ps_display_interactions_in_patch", scope: !3, file: !3, line: 1754, type: !444, scopeLine: 1755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !903)
!903 = !{!904, !905, !906}
!904 = !DILocalVariable(name: "patch", arg: 1, scope: !902, file: !3, line: 1754, type: !76)
!905 = !DILocalVariable(name: "mode", arg: 2, scope: !902, file: !3, line: 1754, type: !5)
!906 = !DILocalVariable(name: "process_id", arg: 3, scope: !902, file: !3, line: 1754, type: !5)
!907 = !DILocation(line: 0, scope: !902)
!908 = !DILocation(line: 1756, column: 5, scope: !902)
!909 = !DILocation(line: 1757, column: 1, scope: !902)
!910 = !DISubprogram(name: "distance", scope: !3, file: !3, line: 1123, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
!911 = !DISubprogram(name: "ps_line", scope: !716, file: !716, line: 42, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !280)
