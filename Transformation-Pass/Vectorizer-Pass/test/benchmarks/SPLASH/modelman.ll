; ModuleID = 'modelman.c'
source_filename = "modelman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Model_Triangle = type { %struct.Rgb, %struct.Rgb, %struct.Vertex, %struct.Vertex, %struct.Vertex }
%struct.Rgb = type { float, float, float }
%struct.Vertex = type { float, float, float }
%struct.ModelDataBase = type { i64, %struct.Model }
%struct.Model = type { %struct.Rgb, %struct.Rgb, [4 x %struct.Vertex] }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.PlaneEqu = type { %struct.Vertex, float }
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

@tri1 = dso_local local_unnamed_addr global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex zeroinitializer, %struct.Vertex { float 1.000000e+02, float 0.000000e+00, float 0.000000e+00 }, %struct.Vertex { float 0.000000e+00, float 1.000000e+02, float 0.000000e+00 } }, align 4, !dbg !0
@tri2 = dso_local local_unnamed_addr global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float 0.000000e+00, float 0.000000e+00, float 1.000000e+02 }, %struct.Vertex { float 1.000000e+02, float 1.000000e+02, float 0.000000e+00 }, %struct.Vertex { float 0.000000e+00, float 0.000000e+00, float -1.000000e+02 } }, align 4, !dbg !41
@Floor = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float 6.000000e+02, float -6.000000e+02, float 7.000000e+02 }, %struct.Vertex { float 6.000000e+02, float -6.000000e+02, float -7.000000e+02 }, %struct.Vertex { float -8.000000e+02, float -6.000000e+02, float 7.000000e+02 } }, align 4, !dbg !43
@Ceiling = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float 6.000000e+02, float 6.000000e+02, float 7.000000e+02 }, %struct.Vertex { float -8.000000e+02, float 6.000000e+02, float 7.000000e+02 }, %struct.Vertex { float 6.000000e+02, float 6.000000e+02, float -7.000000e+02 } }, align 4, !dbg !45
@wall1 = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float -8.000000e+02, float -6.000000e+02, float 7.000000e+02 }, %struct.Vertex { float -8.000000e+02, float -6.000000e+02, float -7.000000e+02 }, %struct.Vertex { float -8.000000e+02, float 6.000000e+02, float 7.000000e+02 } }, align 4, !dbg !47
@wall2 = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float 6.000000e+02, float -6.000000e+02, float -7.000000e+02 }, %struct.Vertex { float 6.000000e+02, float 6.000000e+02, float -7.000000e+02 }, %struct.Vertex { float -8.000000e+02, float -6.000000e+02, float -7.000000e+02 } }, align 4, !dbg !49
@deskTop = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FB99999A0000000, float 0x3FECCCCCC0000000, float 0x3FB99999A0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float -7.950000e+02, float -3.200000e+02, float 3.000000e+02 }, %struct.Vertex { float -4.000000e+02, float -3.200000e+02, float 3.000000e+02 }, %struct.Vertex { float -7.950000e+02, float -3.200000e+02, float -3.000000e+02 } }, align 4, !dbg !51
@deskBtm = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FB99999A0000000, float 0x3FECCCCCC0000000, float 0x3FB99999A0000000 }, %struct.Rgb zeroinitializer, %struct.Vertex { float -7.950000e+02, float -3.400000e+02, float 3.000000e+02 }, %struct.Vertex { float -7.950000e+02, float -3.400000e+02, float -3.000000e+02 }, %struct.Vertex { float -4.000000e+02, float -3.400000e+02, float 3.000000e+02 } }, align 4, !dbg !53
@light1 = dso_local global %struct.Model_Triangle { %struct.Rgb { float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000 }, %struct.Rgb { float 2.000000e+02, float 2.000000e+02, float 2.000000e+02 }, %struct.Vertex { float -7.950000e+02, float -5.000000e+01, float 5.000000e+01 }, %struct.Vertex { float -7.950000e+02, float -5.000000e+01, float -5.000000e+01 }, %struct.Vertex { float -7.950000e+02, float 5.000000e+01, float 5.000000e+01 } }, align 4, !dbg !55
@model_selector = dso_local local_unnamed_addr global i64 0, align 8, !dbg !57
@room_model = external global [0 x %struct.ModelDataBase], align 8
@largeroom_model = external global [0 x %struct.ModelDataBase], align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [38 x i8] c"Panic:process_model:Illegal type %ld\0A\00", align 1
@global = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_modeling_tasks(i64 noundef %process_id) local_unnamed_addr #0 !dbg !67 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !71, metadata !DIExpression()), !dbg !72
  %call = tail call i64 @check_task_counter() #5, !dbg !73
  %tobool.not = icmp eq i64 %call, 0, !dbg !73
  br i1 %tobool.not, label %sw.epilog, label %if.end, !dbg !75

if.end:                                           ; preds = %entry
  %0 = load i64, ptr @model_selector, align 8, !dbg !76
  switch i64 %0, label %sw.default [
    i64 2, label %sw.bb2
    i64 1, label %sw.bb1
  ], !dbg !77

sw.default:                                       ; preds = %if.end
  tail call fastcc void @init_test_model_tasks(i64 noundef %process_id), !dbg !78
  br label %sw.epilog, !dbg !80

sw.bb1:                                           ; preds = %if.end
  tail call fastcc void @init_room_model_tasks(ptr noundef nonnull @room_model, i64 noundef %process_id), !dbg !81
  br label %sw.epilog, !dbg !82

sw.bb2:                                           ; preds = %if.end
  tail call fastcc void @init_room_model_tasks(ptr noundef nonnull @largeroom_model, i64 noundef %process_id), !dbg !83
  br label %sw.epilog, !dbg !84

sw.epilog:                                        ; preds = %entry, %sw.bb2, %sw.bb1, %sw.default
  ret void, !dbg !85
}

declare !dbg !86 i64 @check_task_counter() local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_test_model_tasks(i64 noundef %process_id) unnamed_addr #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !92, metadata !DIExpression()), !dbg !93
  tail call void @create_modeling_task(ptr noundef nonnull @Floor, i64 noundef 1, i64 noundef %process_id) #5, !dbg !94
  tail call void @create_modeling_task(ptr noundef nonnull @Ceiling, i64 noundef 1, i64 noundef %process_id) #5, !dbg !95
  tail call void @create_modeling_task(ptr noundef nonnull @wall1, i64 noundef 1, i64 noundef %process_id) #5, !dbg !96
  tail call void @create_modeling_task(ptr noundef nonnull @wall2, i64 noundef 1, i64 noundef %process_id) #5, !dbg !97
  tail call void @create_modeling_task(ptr noundef nonnull @deskTop, i64 noundef 1, i64 noundef %process_id) #5, !dbg !98
  tail call void @create_modeling_task(ptr noundef nonnull @deskBtm, i64 noundef 1, i64 noundef %process_id) #5, !dbg !99
  tail call void @create_modeling_task(ptr noundef nonnull @light1, i64 noundef 1, i64 noundef %process_id) #5, !dbg !100
  ret void, !dbg !101
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_room_model_tasks(ptr noundef %model, i64 noundef %process_id) unnamed_addr #0 !dbg !102 {
entry:
  call void @llvm.dbg.value(metadata ptr %model, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %model, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i64, ptr %model, align 8, !dbg !116
  %cmp.not6 = icmp eq i64 %0, -1, !dbg !119
  br i1 %cmp.not6, label %for.end, label %for.body, !dbg !120

for.body:                                         ; preds = %entry, %for.body
  %1 = phi i64 [ %2, %for.body ], [ %0, %entry ]
  %pm.07 = phi ptr [ %incdec.ptr, %for.body ], [ %model, %entry ]
  call void @llvm.dbg.value(metadata ptr %pm.07, metadata !114, metadata !DIExpression()), !dbg !115
  %model1 = getelementptr inbounds %struct.ModelDataBase, ptr %pm.07, i64 0, i32 1, !dbg !121
  tail call void @create_modeling_task(ptr noundef nonnull %model1, i64 noundef %1, i64 noundef %process_id) #5, !dbg !122
  %incdec.ptr = getelementptr inbounds %struct.ModelDataBase, ptr %pm.07, i64 1, !dbg !123
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !114, metadata !DIExpression()), !dbg !115
  %2 = load i64, ptr %incdec.ptr, align 8, !dbg !116
  %cmp.not = icmp eq i64 %2, -1, !dbg !119
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !120, !llvm.loop !124

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !128
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_model(ptr noundef %model, i64 noundef %type, i64 noundef %process_id) local_unnamed_addr #0 !dbg !129 {
entry:
  call void @llvm.dbg.value(metadata ptr %model, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i64 %type, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !135, metadata !DIExpression()), !dbg !136
  switch i64 %type, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
  ], !dbg !137

sw.bb:                                            ; preds = %entry
  tail call fastcc void @process_triangle(ptr noundef %model, i64 noundef %process_id), !dbg !138
  br label %sw.epilog, !dbg !140

sw.bb1:                                           ; preds = %entry
  tail call fastcc void @process_rectangle(ptr noundef %model, i64 noundef %process_id), !dbg !141
  br label %sw.epilog, !dbg !142

sw.default:                                       ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !143
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef %type) #6, !dbg !144
  br label %sw.epilog, !dbg !145

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !146
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_triangle(ptr noundef %model, i64 noundef %process_id) unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata ptr %model, metadata !151, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !152, metadata !DIExpression()), !dbg !274
  %call = tail call ptr @get_patch(i64 noundef %process_id) #5, !dbg !275
  call void @llvm.dbg.value(metadata ptr %call, metadata !153, metadata !DIExpression()), !dbg !274
  %p1 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 6, !dbg !276
  %p11 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 2, !dbg !277
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p1, ptr noundef nonnull align 4 dereferenceable(12) %p11, i64 12, i1 false), !dbg !277
  %p2 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 7, !dbg !278
  %p22 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 3, !dbg !279
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p2, ptr noundef nonnull align 4 dereferenceable(12) %p22, i64 12, i1 false), !dbg !279
  %p3 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 8, !dbg !280
  %p33 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 4, !dbg !281
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p3, ptr noundef nonnull align 4 dereferenceable(12) %p33, i64 12, i1 false), !dbg !281
  %call5 = tail call ptr @create_elemvertex(ptr noundef nonnull %p1, i64 noundef %process_id) #5, !dbg !282
  store ptr %call5, ptr %call, align 8, !dbg !283
  %call7 = tail call ptr @create_elemvertex(ptr noundef nonnull %p2, i64 noundef %process_id) #5, !dbg !284
  %ev2 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 1, !dbg !285
  store ptr %call7, ptr %ev2, align 8, !dbg !286
  %call9 = tail call ptr @create_elemvertex(ptr noundef nonnull %p3, i64 noundef %process_id) #5, !dbg !287
  %ev3 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 2, !dbg !288
  store ptr %call9, ptr %ev3, align 8, !dbg !289
  %0 = load ptr, ptr %call, align 8, !dbg !290
  %1 = load ptr, ptr %ev2, align 8, !dbg !291
  %call12 = tail call ptr @create_edge(ptr noundef %0, ptr noundef %1, i64 noundef %process_id) #5, !dbg !292
  %e12 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 3, !dbg !293
  store ptr %call12, ptr %e12, align 8, !dbg !294
  %2 = load ptr, ptr %ev2, align 8, !dbg !295
  %3 = load ptr, ptr %ev3, align 8, !dbg !296
  %call15 = tail call ptr @create_edge(ptr noundef %2, ptr noundef %3, i64 noundef %process_id) #5, !dbg !297
  %e23 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 4, !dbg !298
  store ptr %call15, ptr %e23, align 8, !dbg !299
  %4 = load ptr, ptr %ev3, align 8, !dbg !300
  %5 = load ptr, ptr %call, align 8, !dbg !301
  %call18 = tail call ptr @create_edge(ptr noundef %4, ptr noundef %5, i64 noundef %process_id) #5, !dbg !302
  %e31 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 5, !dbg !303
  store ptr %call18, ptr %e31, align 8, !dbg !304
  %plane_equ = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 9, !dbg !305
  %call22 = tail call float @comp_plane_equ(ptr noundef nonnull %plane_equ, ptr noundef nonnull %p11, ptr noundef nonnull %p22, ptr noundef nonnull %p33, i64 noundef %process_id) #5, !dbg !306
  call void @llvm.dbg.value(metadata float %call22, metadata !273, metadata !DIExpression()), !dbg !274
  %mul = fmul float %call22, 5.000000e-01, !dbg !307
  %area = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 10, !dbg !308
  store float %mul, ptr %area, align 4, !dbg !309
  %color = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 11, !dbg !310
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color, ptr noundef nonnull align 4 dereferenceable(12) %model, i64 12, i1 false), !dbg !311
  %emittance = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 12, !dbg !312
  %emittance24 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 1, !dbg !313
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance, ptr noundef nonnull align 4 dereferenceable(12) %emittance24, i64 12, i1 false), !dbg !313
  %6 = load ptr, ptr @global, align 8, !dbg !314
  %bsp_root = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 5, !dbg !315
  %7 = load ptr, ptr %bsp_root, align 8, !dbg !315
  tail call void @create_bsp_task(ptr noundef nonnull %call, ptr noundef %7, i64 noundef %process_id) #5, !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @process_rectangle(ptr noundef %model, i64 noundef %process_id) unnamed_addr #0 !dbg !318 {
entry:
  call void @llvm.dbg.value(metadata ptr %model, metadata !322, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !323, metadata !DIExpression()), !dbg !327
  %call = tail call ptr @get_patch(i64 noundef %process_id) #5, !dbg !328
  call void @llvm.dbg.value(metadata ptr %call, metadata !324, metadata !DIExpression()), !dbg !327
  %p1 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 6, !dbg !329
  %p11 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 2, !dbg !330
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p1, ptr noundef nonnull align 4 dereferenceable(12) %p11, i64 12, i1 false), !dbg !330
  %p2 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 7, !dbg !331
  %p22 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 3, !dbg !332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p2, ptr noundef nonnull align 4 dereferenceable(12) %p22, i64 12, i1 false), !dbg !332
  %p3 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 8, !dbg !333
  %p33 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 4, !dbg !334
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p3, ptr noundef nonnull align 4 dereferenceable(12) %p33, i64 12, i1 false), !dbg !334
  %call5 = tail call ptr @create_elemvertex(ptr noundef nonnull %p1, i64 noundef %process_id) #5, !dbg !335
  store ptr %call5, ptr %call, align 8, !dbg !336
  %call7 = tail call ptr @create_elemvertex(ptr noundef nonnull %p2, i64 noundef %process_id) #5, !dbg !337
  %ev2 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 1, !dbg !338
  store ptr %call7, ptr %ev2, align 8, !dbg !339
  %call9 = tail call ptr @create_elemvertex(ptr noundef nonnull %p3, i64 noundef %process_id) #5, !dbg !340
  %ev3 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 2, !dbg !341
  store ptr %call9, ptr %ev3, align 8, !dbg !342
  %0 = load ptr, ptr %call, align 8, !dbg !343
  %1 = load ptr, ptr %ev2, align 8, !dbg !344
  %call12 = tail call ptr @create_edge(ptr noundef %0, ptr noundef %1, i64 noundef %process_id) #5, !dbg !345
  %e12 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 3, !dbg !346
  store ptr %call12, ptr %e12, align 8, !dbg !347
  %2 = load ptr, ptr %ev2, align 8, !dbg !348
  %3 = load ptr, ptr %ev3, align 8, !dbg !349
  %call15 = tail call ptr @create_edge(ptr noundef %2, ptr noundef %3, i64 noundef %process_id) #5, !dbg !350
  %e23 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 4, !dbg !351
  store ptr %call15, ptr %e23, align 8, !dbg !352
  %4 = load ptr, ptr %ev3, align 8, !dbg !353
  %5 = load ptr, ptr %call, align 8, !dbg !354
  %call18 = tail call ptr @create_edge(ptr noundef %4, ptr noundef %5, i64 noundef %process_id) #5, !dbg !355
  %e31 = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 5, !dbg !356
  store ptr %call18, ptr %e31, align 8, !dbg !357
  %plane_equ = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 9, !dbg !358
  %call22 = tail call float @comp_plane_equ(ptr noundef nonnull %plane_equ, ptr noundef nonnull %p11, ptr noundef nonnull %p22, ptr noundef nonnull %p33, i64 noundef %process_id) #5, !dbg !359
  call void @llvm.dbg.value(metadata float %call22, metadata !326, metadata !DIExpression()), !dbg !327
  %mul = fmul float %call22, 5.000000e-01, !dbg !360
  %area = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 10, !dbg !361
  store float %mul, ptr %area, align 4, !dbg !362
  %color = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 11, !dbg !363
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color, ptr noundef nonnull align 4 dereferenceable(12) %model, i64 12, i1 false), !dbg !364
  %emittance = getelementptr inbounds %struct._patch, ptr %call, i64 0, i32 12, !dbg !365
  %emittance24 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 1, !dbg !366
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance, ptr noundef nonnull align 4 dereferenceable(12) %emittance24, i64 12, i1 false), !dbg !366
  %call25 = tail call ptr @get_patch(i64 noundef %process_id) #5, !dbg !367
  call void @llvm.dbg.value(metadata ptr %call25, metadata !325, metadata !DIExpression()), !dbg !327
  %6 = load float, ptr %p22, align 4, !dbg !368
  %7 = load float, ptr %p33, align 4, !dbg !369
  %add = fadd float %6, %7, !dbg !370
  %8 = load float, ptr %p11, align 4, !dbg !371
  %sub = fsub float %add, %8, !dbg !372
  %p131 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 6, !dbg !373
  store float %sub, ptr %p131, align 8, !dbg !374
  %y = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 3, i32 1, !dbg !375
  %9 = load float, ptr %y, align 4, !dbg !375
  %y35 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 4, i32 1, !dbg !376
  %10 = load float, ptr %y35, align 4, !dbg !376
  %add36 = fadd float %9, %10, !dbg !377
  %y38 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 2, i32 1, !dbg !378
  %11 = load float, ptr %y38, align 4, !dbg !378
  %sub39 = fsub float %add36, %11, !dbg !379
  %y41 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 6, i32 1, !dbg !380
  store float %sub39, ptr %y41, align 4, !dbg !381
  %z = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 3, i32 2, !dbg !382
  %12 = load float, ptr %z, align 4, !dbg !382
  %z44 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 4, i32 2, !dbg !383
  %13 = load float, ptr %z44, align 4, !dbg !383
  %add45 = fadd float %12, %13, !dbg !384
  %z47 = getelementptr inbounds %struct.Model_Triangle, ptr %model, i64 0, i32 2, i32 2, !dbg !385
  %14 = load float, ptr %z47, align 4, !dbg !385
  %sub48 = fsub float %add45, %14, !dbg !386
  %z50 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 6, i32 2, !dbg !387
  store float %sub48, ptr %z50, align 8, !dbg !388
  %p251 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 7, !dbg !389
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %p251, ptr noundef nonnull align 4 dereferenceable(12) %p33, i64 12, i1 false), !dbg !390
  %p353 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 8, !dbg !391
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %p353, ptr noundef nonnull align 4 dereferenceable(12) %p22, i64 12, i1 false), !dbg !392
  %call56 = tail call ptr @create_elemvertex(ptr noundef nonnull %p131, i64 noundef %process_id) #5, !dbg !393
  store ptr %call56, ptr %call25, align 8, !dbg !394
  %15 = load ptr, ptr %ev3, align 8, !dbg !395
  %ev259 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 1, !dbg !396
  store ptr %15, ptr %ev259, align 8, !dbg !397
  %16 = load ptr, ptr %ev2, align 8, !dbg !398
  %ev361 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 2, !dbg !399
  store ptr %16, ptr %ev361, align 8, !dbg !400
  %call64 = tail call ptr @create_edge(ptr noundef %call56, ptr noundef %15, i64 noundef %process_id) #5, !dbg !401
  %e1265 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 3, !dbg !402
  store ptr %call64, ptr %e1265, align 8, !dbg !403
  %17 = load ptr, ptr %e23, align 8, !dbg !404
  %e2367 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 4, !dbg !405
  store ptr %17, ptr %e2367, align 8, !dbg !406
  %18 = load ptr, ptr %ev361, align 8, !dbg !407
  %19 = load ptr, ptr %call25, align 8, !dbg !408
  %call70 = tail call ptr @create_edge(ptr noundef %18, ptr noundef %19, i64 noundef %process_id) #5, !dbg !409
  %e3171 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 5, !dbg !410
  store ptr %call70, ptr %e3171, align 8, !dbg !411
  %plane_equ72 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 9, !dbg !412
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %plane_equ72, ptr noundef nonnull align 4 dereferenceable(16) %plane_equ, i64 16, i1 false), !dbg !413
  %20 = load float, ptr %area, align 4, !dbg !414
  %area75 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 10, !dbg !415
  store float %20, ptr %area75, align 4, !dbg !416
  %color76 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 11, !dbg !417
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %color76, ptr noundef nonnull align 8 dereferenceable(12) %color, i64 12, i1 false), !dbg !418
  %emittance78 = getelementptr inbounds %struct._patch, ptr %call25, i64 0, i32 12, !dbg !419
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %emittance78, ptr noundef nonnull align 4 dereferenceable(12) %emittance, i64 12, i1 false), !dbg !420
  %21 = load ptr, ptr @global, align 8, !dbg !421
  %bsp_root = getelementptr inbounds %struct.Global, ptr %21, i64 0, i32 5, !dbg !422
  %22 = load ptr, ptr %bsp_root, align 8, !dbg !422
  tail call void @create_bsp_task(ptr noundef nonnull %call, ptr noundef %22, i64 noundef %process_id) #5, !dbg !423
  %23 = load ptr, ptr @global, align 8, !dbg !424
  %bsp_root80 = getelementptr inbounds %struct.Global, ptr %23, i64 0, i32 5, !dbg !425
  %24 = load ptr, ptr %bsp_root80, align 8, !dbg !425
  tail call void @create_bsp_task(ptr noundef nonnull %call25, ptr noundef %24, i64 noundef %process_id) #5, !dbg !426
  ret void, !dbg !427
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare !dbg !428 void @create_modeling_task(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !429 ptr @get_patch(i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !432 ptr @create_elemvertex(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !436 ptr @create_edge(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !439 float @comp_plane_equ(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !443 void @create_bsp_task(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tri1", scope: !2, file: !3, line: 1190, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !40, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "modelman.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "0282d9f6e10a67fd0c4b06bad0bf6cbb")
!4 = !{!5, !28, !30, !15}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "Model_Triangle", file: !3, line: 521, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 517, size: 480, elements: !8)
!8 = !{!9, !18, !19, !26, !27}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !7, file: !3, line: 518, baseType: !10, size: 96)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !11, line: 24, baseType: !12)
!11 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 22, size: 96, elements: !13)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !12, file: !11, line: 23, baseType: !15, size: 32)
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !12, file: !11, line: 23, baseType: !15, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !12, file: !11, line: 23, baseType: !15, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !7, file: !3, line: 519, baseType: !10, size: 96, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !7, file: !3, line: 520, baseType: !20, size: 96, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !11, line: 14, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 12, size: 96, elements: !22)
!22 = !{!23, !24, !25}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !21, file: !11, line: 13, baseType: !15, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !21, file: !11, line: 13, baseType: !15, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !21, file: !11, line: 13, baseType: !15, size: 32, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !7, file: !3, line: 520, baseType: !20, size: 96, offset: 288)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !7, file: !3, line: 520, baseType: !20, size: 96, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Model_Rectangle", file: !3, line: 523, baseType: !6)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "Model", file: !3, line: 514, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 510, size: 576, elements: !33)
!33 = !{!34, !35, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !32, file: !3, line: 511, baseType: !10, size: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !32, file: !3, line: 512, baseType: !10, size: 96, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy", scope: !32, file: !3, line: 513, baseType: !37, size: 384, offset: 192)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !{!0, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "tri2", scope: !2, file: !3, line: 1196, type: !6, isLocal: false, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "Floor", scope: !2, file: !3, line: 1202, type: !29, isLocal: false, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "Ceiling", scope: !2, file: !3, line: 1208, type: !29, isLocal: false, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "wall1", scope: !2, file: !3, line: 1214, type: !29, isLocal: false, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "wall2", scope: !2, file: !3, line: 1220, type: !29, isLocal: false, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "deskTop", scope: !2, file: !3, line: 1226, type: !29, isLocal: false, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "deskBtm", scope: !2, file: !3, line: 1232, type: !29, isLocal: false, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "light1", scope: !2, file: !3, line: 1238, type: !29, isLocal: false, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "model_selector", scope: !2, file: !3, line: 1260, type: !59, isLocal: false, isDefinition: true)
!59 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!60 = !{i32 7, !"Dwarf Version", i32 5}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{i32 7, !"PIC Level", i32 2}
!64 = !{i32 7, !"PIE Level", i32 2}
!65 = !{i32 7, !"uwtable", i32 2}
!66 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!67 = distinct !DISubprogram(name: "init_modeling_tasks", scope: !3, file: !3, line: 1262, type: !68, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !70)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !59}
!70 = !{!71}
!71 = !DILocalVariable(name: "process_id", arg: 1, scope: !67, file: !3, line: 1262, type: !59)
!72 = !DILocation(line: 0, scope: !67)
!73 = !DILocation(line: 1268, column: 11, scope: !74)
!74 = distinct !DILexicalBlock(scope: !67, file: !3, line: 1268, column: 9)
!75 = !DILocation(line: 1268, column: 9, scope: !67)
!76 = !DILocation(line: 1271, column: 13, scope: !67)
!77 = !DILocation(line: 1271, column: 5, scope: !67)
!78 = !DILocation(line: 1275, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !67, file: !3, line: 1272, column: 9)
!80 = !DILocation(line: 1276, column: 13, scope: !79)
!81 = !DILocation(line: 1278, column: 13, scope: !79)
!82 = !DILocation(line: 1279, column: 13, scope: !79)
!83 = !DILocation(line: 1281, column: 13, scope: !79)
!84 = !DILocation(line: 1282, column: 13, scope: !79)
!85 = !DILocation(line: 1284, column: 1, scope: !67)
!86 = !DISubprogram(name: "check_task_counter", scope: !3, file: !3, line: 713, type: !87, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{!59}
!89 = !{}
!90 = distinct !DISubprogram(name: "init_test_model_tasks", scope: !3, file: !3, line: 1288, type: !68, scopeLine: 1289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!91 = !{!92}
!92 = !DILocalVariable(name: "process_id", arg: 1, scope: !90, file: !3, line: 1288, type: !59)
!93 = !DILocation(line: 0, scope: !90)
!94 = !DILocation(line: 1290, column: 5, scope: !90)
!95 = !DILocation(line: 1291, column: 5, scope: !90)
!96 = !DILocation(line: 1292, column: 5, scope: !90)
!97 = !DILocation(line: 1293, column: 5, scope: !90)
!98 = !DILocation(line: 1294, column: 5, scope: !90)
!99 = !DILocation(line: 1295, column: 5, scope: !90)
!100 = !DILocation(line: 1296, column: 5, scope: !90)
!101 = !DILocation(line: 1297, column: 1, scope: !90)
!102 = distinct !DISubprogram(name: "init_room_model_tasks", scope: !3, file: !3, line: 1301, type: !103, scopeLine: 1302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105, !59}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ModelDataBase", file: !3, line: 529, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 526, size: 640, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !3, line: 527, baseType: !59, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !107, file: !3, line: 528, baseType: !31, size: 576, offset: 64)
!111 = !{!112, !113, !114}
!112 = !DILocalVariable(name: "model", arg: 1, scope: !102, file: !3, line: 1301, type: !105)
!113 = !DILocalVariable(name: "process_id", arg: 2, scope: !102, file: !3, line: 1301, type: !59)
!114 = !DILocalVariable(name: "pm", scope: !102, file: !3, line: 1303, type: !105)
!115 = !DILocation(line: 0, scope: !102)
!116 = !DILocation(line: 1305, column: 27, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 1305, column: 5)
!118 = distinct !DILexicalBlock(scope: !102, file: !3, line: 1305, column: 5)
!119 = !DILocation(line: 1305, column: 32, scope: !117)
!120 = !DILocation(line: 1305, column: 5, scope: !118)
!121 = !DILocation(line: 1306, column: 36, scope: !117)
!122 = !DILocation(line: 1306, column: 9, scope: !117)
!123 = !DILocation(line: 1305, column: 50, scope: !117)
!124 = distinct !{!124, !120, !125, !126, !127}
!125 = !DILocation(line: 1306, column: 64, scope: !118)
!126 = !{!"llvm.loop.mustprogress"}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !DILocation(line: 1307, column: 1, scope: !102)
!129 = distinct !DISubprogram(name: "process_model", scope: !3, file: !3, line: 1316, type: !130, scopeLine: 1317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !30, !59, !59}
!132 = !{!133, !134, !135}
!133 = !DILocalVariable(name: "model", arg: 1, scope: !129, file: !3, line: 1316, type: !30)
!134 = !DILocalVariable(name: "type", arg: 2, scope: !129, file: !3, line: 1316, type: !59)
!135 = !DILocalVariable(name: "process_id", arg: 3, scope: !129, file: !3, line: 1316, type: !59)
!136 = !DILocation(line: 0, scope: !129)
!137 = !DILocation(line: 1318, column: 5, scope: !129)
!138 = !DILocation(line: 1321, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !3, line: 1319, column: 9)
!140 = !DILocation(line: 1322, column: 13, scope: !139)
!141 = !DILocation(line: 1324, column: 13, scope: !139)
!142 = !DILocation(line: 1325, column: 13, scope: !139)
!143 = !DILocation(line: 1327, column: 22, scope: !139)
!144 = !DILocation(line: 1327, column: 13, scope: !139)
!145 = !DILocation(line: 1328, column: 9, scope: !139)
!146 = !DILocation(line: 1329, column: 1, scope: !129)
!147 = distinct !DISubprogram(name: "process_triangle", scope: !3, file: !3, line: 1339, type: !148, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !5, !59}
!150 = !{!151, !152, !153, !273}
!151 = !DILocalVariable(name: "model", arg: 1, scope: !147, file: !3, line: 1339, type: !5)
!152 = !DILocalVariable(name: "process_id", arg: 2, scope: !147, file: !3, line: 1339, type: !59)
!153 = !DILocalVariable(name: "p", scope: !147, file: !3, line: 1341, type: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 349, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 333, size: 1344, elements: !157)
!157 = !{!158, !204, !205, !206, !217, !218, !219, !220, !221, !222, !228, !229, !230, !231, !233, !234, !235, !272}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !156, file: !3, line: 334, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 257, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 252, size: 320, elements: !162)
!162 = !{!163, !164, !165, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !161, file: !3, line: 253, baseType: !20, size: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !161, file: !3, line: 254, baseType: !10, size: 96, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !161, file: !3, line: 255, baseType: !15, size: 32, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !161, file: !3, line: 256, baseType: !167, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 118, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 115, size: 320, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !169, file: !3, line: 117, baseType: !172, size: 320)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !173, line: 72, baseType: !174)
!173 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !173, line: 67, size: 320, elements: !175)
!175 = !{!176, !198, !203}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !174, file: !173, line: 69, baseType: !177, size: 320)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !178, line: 22, size: 320, elements: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!179 = !{!180, !182, !184, !185, !186, !187, !189, !190}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !177, file: !178, line: 24, baseType: !181, size: 32)
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !177, file: !178, line: 25, baseType: !183, size: 32, offset: 32)
!183 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !177, file: !178, line: 26, baseType: !181, size: 32, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !177, file: !178, line: 28, baseType: !183, size: 32, offset: 96)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !177, file: !178, line: 32, baseType: !181, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !177, file: !178, line: 34, baseType: !188, size: 16, offset: 160)
!188 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !177, file: !178, line: 35, baseType: !188, size: 16, offset: 176)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !177, file: !178, line: 36, baseType: !191, size: 128, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !192, line: 53, baseType: !193)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !192, line: 49, size: 128, elements: !194)
!194 = !{!195, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !193, file: !192, line: 51, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !193, file: !192, line: 52, baseType: !196, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !174, file: !173, line: 70, baseType: !199, size: 320)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 320, elements: !201)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!201 = !{!202}
!202 = !DISubrange(count: 40)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !174, file: !173, line: 71, baseType: !59, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !156, file: !3, line: 334, baseType: !159, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !156, file: !3, line: 334, baseType: !159, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !156, file: !3, line: 335, baseType: !207, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 280, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 276, size: 320, elements: !210)
!210 = !{!211, !212, !213, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !209, file: !3, line: 277, baseType: !159, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !209, file: !3, line: 277, baseType: !159, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !209, file: !3, line: 278, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !209, file: !3, line: 278, baseType: !214, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !209, file: !3, line: 279, baseType: !167, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !156, file: !3, line: 335, baseType: !207, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !156, file: !3, line: 335, baseType: !207, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !156, file: !3, line: 336, baseType: !20, size: 96, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !156, file: !3, line: 336, baseType: !20, size: 96, offset: 480)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !156, file: !3, line: 336, baseType: !20, size: 96, offset: 576)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !156, file: !3, line: 337, baseType: !223, size: 128, offset: 672)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 305, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 301, size: 128, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !224, file: !3, line: 302, baseType: !20, size: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !224, file: !3, line: 303, baseType: !15, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !156, file: !3, line: 338, baseType: !15, size: 32, offset: 800)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !156, file: !3, line: 339, baseType: !10, size: 96, offset: 832)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !156, file: !3, line: 341, baseType: !10, size: 96, offset: 928)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !156, file: !3, line: 343, baseType: !232, size: 64, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !156, file: !3, line: 344, baseType: !232, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !156, file: !3, line: 345, baseType: !232, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !156, file: !3, line: 347, baseType: !236, size: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 389, size: 1536, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !237, file: !3, line: 390, baseType: !167, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !237, file: !3, line: 391, baseType: !154, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !237, file: !3, line: 393, baseType: !236, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !237, file: !3, line: 394, baseType: !236, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !237, file: !3, line: 395, baseType: !236, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !237, file: !3, line: 396, baseType: !236, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !237, file: !3, line: 397, baseType: !236, size: 64, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !237, file: !3, line: 399, baseType: !247, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 435, size: 256, elements: !249)
!249 = !{!250, !251, !254, !255, !256, !257}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !3, line: 436, baseType: !247, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !248, file: !3, line: 437, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 414, baseType: !237)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !248, file: !3, line: 438, baseType: !15, size: 32, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !248, file: !3, line: 439, baseType: !15, size: 32, offset: 160)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !248, file: !3, line: 440, baseType: !15, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !248, file: !3, line: 441, baseType: !15, size: 32, offset: 224)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !237, file: !3, line: 400, baseType: !59, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !237, file: !3, line: 401, baseType: !247, size: 64, offset: 576)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !237, file: !3, line: 402, baseType: !59, size: 64, offset: 640)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !237, file: !3, line: 404, baseType: !10, size: 96, offset: 704)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !237, file: !3, line: 406, baseType: !10, size: 96, offset: 800)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !237, file: !3, line: 407, baseType: !10, size: 96, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !237, file: !3, line: 409, baseType: !59, size: 64, offset: 1024)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !237, file: !3, line: 411, baseType: !159, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !237, file: !3, line: 411, baseType: !159, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !237, file: !3, line: 411, baseType: !159, size: 64, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !237, file: !3, line: 412, baseType: !207, size: 64, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !237, file: !3, line: 412, baseType: !207, size: 64, offset: 1344)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !237, file: !3, line: 412, baseType: !207, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !237, file: !3, line: 413, baseType: !15, size: 32, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !156, file: !3, line: 348, baseType: !59, size: 64, offset: 1280)
!273 = !DILocalVariable(name: "length", scope: !147, file: !3, line: 1342, type: !15)
!274 = !DILocation(line: 0, scope: !147)
!275 = !DILocation(line: 1345, column: 9, scope: !147)
!276 = !DILocation(line: 1348, column: 8, scope: !147)
!277 = !DILocation(line: 1348, column: 21, scope: !147)
!278 = !DILocation(line: 1349, column: 8, scope: !147)
!279 = !DILocation(line: 1349, column: 21, scope: !147)
!280 = !DILocation(line: 1350, column: 8, scope: !147)
!281 = !DILocation(line: 1350, column: 21, scope: !147)
!282 = !DILocation(line: 1353, column: 14, scope: !147)
!283 = !DILocation(line: 1353, column: 12, scope: !147)
!284 = !DILocation(line: 1354, column: 14, scope: !147)
!285 = !DILocation(line: 1354, column: 8, scope: !147)
!286 = !DILocation(line: 1354, column: 12, scope: !147)
!287 = !DILocation(line: 1355, column: 14, scope: !147)
!288 = !DILocation(line: 1355, column: 8, scope: !147)
!289 = !DILocation(line: 1355, column: 12, scope: !147)
!290 = !DILocation(line: 1356, column: 30, scope: !147)
!291 = !DILocation(line: 1356, column: 38, scope: !147)
!292 = !DILocation(line: 1356, column: 14, scope: !147)
!293 = !DILocation(line: 1356, column: 8, scope: !147)
!294 = !DILocation(line: 1356, column: 12, scope: !147)
!295 = !DILocation(line: 1357, column: 30, scope: !147)
!296 = !DILocation(line: 1357, column: 38, scope: !147)
!297 = !DILocation(line: 1357, column: 14, scope: !147)
!298 = !DILocation(line: 1357, column: 8, scope: !147)
!299 = !DILocation(line: 1357, column: 12, scope: !147)
!300 = !DILocation(line: 1358, column: 30, scope: !147)
!301 = !DILocation(line: 1358, column: 38, scope: !147)
!302 = !DILocation(line: 1358, column: 14, scope: !147)
!303 = !DILocation(line: 1358, column: 8, scope: !147)
!304 = !DILocation(line: 1358, column: 12, scope: !147)
!305 = !DILocation(line: 1361, column: 34, scope: !147)
!306 = !DILocation(line: 1361, column: 14, scope: !147)
!307 = !DILocation(line: 1363, column: 27, scope: !147)
!308 = !DILocation(line: 1363, column: 8, scope: !147)
!309 = !DILocation(line: 1363, column: 18, scope: !147)
!310 = !DILocation(line: 1364, column: 8, scope: !147)
!311 = !DILocation(line: 1364, column: 27, scope: !147)
!312 = !DILocation(line: 1365, column: 8, scope: !147)
!313 = !DILocation(line: 1365, column: 27, scope: !147)
!314 = !DILocation(line: 1369, column: 25, scope: !147)
!315 = !DILocation(line: 1369, column: 33, scope: !147)
!316 = !DILocation(line: 1369, column: 5, scope: !147)
!317 = !DILocation(line: 1370, column: 1, scope: !147)
!318 = distinct !DISubprogram(name: "process_rectangle", scope: !3, file: !3, line: 1379, type: !319, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !28, !59}
!321 = !{!322, !323, !324, !325, !326}
!322 = !DILocalVariable(name: "model", arg: 1, scope: !318, file: !3, line: 1379, type: !28)
!323 = !DILocalVariable(name: "process_id", arg: 2, scope: !318, file: !3, line: 1379, type: !59)
!324 = !DILocalVariable(name: "p", scope: !318, file: !3, line: 1381, type: !154)
!325 = !DILocalVariable(name: "q", scope: !318, file: !3, line: 1381, type: !154)
!326 = !DILocalVariable(name: "length", scope: !318, file: !3, line: 1382, type: !15)
!327 = !DILocation(line: 0, scope: !318)
!328 = !DILocation(line: 1385, column: 9, scope: !318)
!329 = !DILocation(line: 1388, column: 8, scope: !318)
!330 = !DILocation(line: 1388, column: 21, scope: !318)
!331 = !DILocation(line: 1389, column: 8, scope: !318)
!332 = !DILocation(line: 1389, column: 21, scope: !318)
!333 = !DILocation(line: 1390, column: 8, scope: !318)
!334 = !DILocation(line: 1390, column: 21, scope: !318)
!335 = !DILocation(line: 1393, column: 14, scope: !318)
!336 = !DILocation(line: 1393, column: 12, scope: !318)
!337 = !DILocation(line: 1394, column: 14, scope: !318)
!338 = !DILocation(line: 1394, column: 8, scope: !318)
!339 = !DILocation(line: 1394, column: 12, scope: !318)
!340 = !DILocation(line: 1395, column: 14, scope: !318)
!341 = !DILocation(line: 1395, column: 8, scope: !318)
!342 = !DILocation(line: 1395, column: 12, scope: !318)
!343 = !DILocation(line: 1396, column: 30, scope: !318)
!344 = !DILocation(line: 1396, column: 38, scope: !318)
!345 = !DILocation(line: 1396, column: 14, scope: !318)
!346 = !DILocation(line: 1396, column: 8, scope: !318)
!347 = !DILocation(line: 1396, column: 12, scope: !318)
!348 = !DILocation(line: 1397, column: 30, scope: !318)
!349 = !DILocation(line: 1397, column: 38, scope: !318)
!350 = !DILocation(line: 1397, column: 14, scope: !318)
!351 = !DILocation(line: 1397, column: 8, scope: !318)
!352 = !DILocation(line: 1397, column: 12, scope: !318)
!353 = !DILocation(line: 1398, column: 30, scope: !318)
!354 = !DILocation(line: 1398, column: 38, scope: !318)
!355 = !DILocation(line: 1398, column: 14, scope: !318)
!356 = !DILocation(line: 1398, column: 8, scope: !318)
!357 = !DILocation(line: 1398, column: 12, scope: !318)
!358 = !DILocation(line: 1401, column: 34, scope: !318)
!359 = !DILocation(line: 1401, column: 14, scope: !318)
!360 = !DILocation(line: 1403, column: 26, scope: !318)
!361 = !DILocation(line: 1403, column: 8, scope: !318)
!362 = !DILocation(line: 1403, column: 17, scope: !318)
!363 = !DILocation(line: 1404, column: 8, scope: !318)
!364 = !DILocation(line: 1404, column: 26, scope: !318)
!365 = !DILocation(line: 1405, column: 8, scope: !318)
!366 = !DILocation(line: 1405, column: 26, scope: !318)
!367 = !DILocation(line: 1409, column: 9, scope: !318)
!368 = !DILocation(line: 1412, column: 29, scope: !318)
!369 = !DILocation(line: 1412, column: 43, scope: !318)
!370 = !DILocation(line: 1412, column: 31, scope: !318)
!371 = !DILocation(line: 1412, column: 57, scope: !318)
!372 = !DILocation(line: 1412, column: 45, scope: !318)
!373 = !DILocation(line: 1412, column: 8, scope: !318)
!374 = !DILocation(line: 1412, column: 17, scope: !318)
!375 = !DILocation(line: 1413, column: 29, scope: !318)
!376 = !DILocation(line: 1413, column: 43, scope: !318)
!377 = !DILocation(line: 1413, column: 31, scope: !318)
!378 = !DILocation(line: 1413, column: 57, scope: !318)
!379 = !DILocation(line: 1413, column: 45, scope: !318)
!380 = !DILocation(line: 1413, column: 11, scope: !318)
!381 = !DILocation(line: 1413, column: 17, scope: !318)
!382 = !DILocation(line: 1414, column: 29, scope: !318)
!383 = !DILocation(line: 1414, column: 43, scope: !318)
!384 = !DILocation(line: 1414, column: 31, scope: !318)
!385 = !DILocation(line: 1414, column: 57, scope: !318)
!386 = !DILocation(line: 1414, column: 45, scope: !318)
!387 = !DILocation(line: 1414, column: 11, scope: !318)
!388 = !DILocation(line: 1414, column: 17, scope: !318)
!389 = !DILocation(line: 1415, column: 8, scope: !318)
!390 = !DILocation(line: 1415, column: 26, scope: !318)
!391 = !DILocation(line: 1416, column: 8, scope: !318)
!392 = !DILocation(line: 1416, column: 26, scope: !318)
!393 = !DILocation(line: 1419, column: 14, scope: !318)
!394 = !DILocation(line: 1419, column: 12, scope: !318)
!395 = !DILocation(line: 1420, column: 17, scope: !318)
!396 = !DILocation(line: 1420, column: 8, scope: !318)
!397 = !DILocation(line: 1420, column: 12, scope: !318)
!398 = !DILocation(line: 1421, column: 17, scope: !318)
!399 = !DILocation(line: 1421, column: 8, scope: !318)
!400 = !DILocation(line: 1421, column: 12, scope: !318)
!401 = !DILocation(line: 1422, column: 14, scope: !318)
!402 = !DILocation(line: 1422, column: 8, scope: !318)
!403 = !DILocation(line: 1422, column: 12, scope: !318)
!404 = !DILocation(line: 1423, column: 17, scope: !318)
!405 = !DILocation(line: 1423, column: 8, scope: !318)
!406 = !DILocation(line: 1423, column: 12, scope: !318)
!407 = !DILocation(line: 1424, column: 30, scope: !318)
!408 = !DILocation(line: 1424, column: 38, scope: !318)
!409 = !DILocation(line: 1424, column: 14, scope: !318)
!410 = !DILocation(line: 1424, column: 8, scope: !318)
!411 = !DILocation(line: 1424, column: 12, scope: !318)
!412 = !DILocation(line: 1427, column: 8, scope: !318)
!413 = !DILocation(line: 1427, column: 22, scope: !318)
!414 = !DILocation(line: 1428, column: 22, scope: !318)
!415 = !DILocation(line: 1428, column: 8, scope: !318)
!416 = !DILocation(line: 1428, column: 17, scope: !318)
!417 = !DILocation(line: 1429, column: 8, scope: !318)
!418 = !DILocation(line: 1429, column: 22, scope: !318)
!419 = !DILocation(line: 1430, column: 8, scope: !318)
!420 = !DILocation(line: 1430, column: 22, scope: !318)
!421 = !DILocation(line: 1433, column: 25, scope: !318)
!422 = !DILocation(line: 1433, column: 33, scope: !318)
!423 = !DILocation(line: 1433, column: 5, scope: !318)
!424 = !DILocation(line: 1434, column: 25, scope: !318)
!425 = !DILocation(line: 1434, column: 33, scope: !318)
!426 = !DILocation(line: 1434, column: 5, scope: !318)
!427 = !DILocation(line: 1435, column: 1, scope: !318)
!428 = !DISubprogram(name: "create_modeling_task", scope: !3, file: !3, line: 699, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!429 = !DISubprogram(name: "get_patch", scope: !3, file: !3, line: 451, type: !430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!430 = !DISubroutineType(types: !431)
!431 = !{!154, !59}
!432 = !DISubprogram(name: "create_elemvertex", scope: !3, file: !3, line: 1142, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!433 = !DISubroutineType(types: !434)
!434 = !{!159, !435, !59}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!436 = !DISubprogram(name: "create_edge", scope: !3, file: !3, line: 1146, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!437 = !DISubroutineType(types: !438)
!438 = !{!207, !159, !159, !59}
!439 = !DISubprogram(name: "comp_plane_equ", scope: !3, file: !3, line: 457, type: !440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!440 = !DISubroutineType(types: !441)
!441 = !{!15, !442, !435, !435, !435, !59}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!443 = !DISubprogram(name: "create_bsp_task", scope: !3, file: !3, line: 700, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !89)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !154, !154, !59}
