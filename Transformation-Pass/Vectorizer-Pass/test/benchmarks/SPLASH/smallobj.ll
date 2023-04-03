; ModuleID = 'smallobj.c'
source_filename = "smallobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [4096 x i8], i64, ptr, i64, ptr, i64, [4096 x i8] }
%struct.Vertex = type { float, float, float }
%struct.Rgb = type { float, float, float }
%struct.Global = type { i64, %union.pthread_mutex_t, [1024 x %struct.Task_Queue], [3276800 x %struct._task], %union.pthread_mutex_t, ptr, %union.pthread_mutex_t, i64, %struct.Rgb, %struct.Rgb, float, i64, %union.pthread_mutex_t, i64, i64, [1024 x %struct.Patch_Cost], %struct.anon.0, i64, %union.pthread_mutex_t, i64, %union.pthread_mutex_t, %union.pthread_mutex_t, ptr, i64, i64, [1024 x %struct._patch], %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, i64, ptr, %union.pthread_mutex_t, i64, ptr, [3900 x %struct.Shared_Lock], [1024 x %struct.StatisticalInfo] }
%struct.Task_Queue = type { [4096 x i8], %union.pthread_mutex_t, ptr, ptr, i64, %union.pthread_mutex_t, i64, ptr, [4096 x i8] }
%struct._task = type { i64, ptr, %union.anon }
%union.anon = type { %struct.Refinement_Task }
%struct.Refinement_Task = type { ptr, ptr, float, i64 }
%struct.Patch_Cost = type { ptr, ptr, i64, i64, i64, [11 x i64] }
%struct.anon.0 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.1, %union.anon.3, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.1 = type { i64 }
%union.anon.3 = type { i64 }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.PlaneEqu = type { %struct.Vertex, float }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, ptr }
%struct._elemvertex = type { %struct.Vertex, %struct.Rgb, float, ptr }
%struct._edge = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"\09P(%.2f, %.2f, %.2f)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09RGB(%.2f, %.2f, %.2f)\0A\00", align 1
@sobj_struct = dso_local local_unnamed_addr global [1024 x %struct.anon] zeroinitializer, align 16, !dbg !0
@global = external local_unnamed_addr global ptr, align 8
@MAX_ELEMVERTICES = external local_unnamed_addr global i64, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Fatal:Ran out of ElemVertex buffer\0A\00", align 1
@MAX_EDGES = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Fatal:Ran out of Edge buffer\0A\00", align 1

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local float @vector_length(ptr nocapture noundef readonly %v) local_unnamed_addr #0 !dbg !98 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !103, metadata !DIExpression()), !dbg !108
  %0 = load float, ptr %v, align 4, !dbg !109
  %mul = fmul float %0, %0, !dbg !110
  %conv = fpext float %mul to double, !dbg !111
  call void @llvm.dbg.value(metadata double %conv, metadata !104, metadata !DIExpression()), !dbg !108
  %y = getelementptr inbounds %struct.Vertex, ptr %v, i64 0, i32 1, !dbg !112
  %1 = load float, ptr %y, align 4, !dbg !112
  %mul3 = fmul float %1, %1, !dbg !113
  %conv4 = fpext float %mul3 to double, !dbg !114
  call void @llvm.dbg.value(metadata double %conv4, metadata !106, metadata !DIExpression()), !dbg !108
  %z = getelementptr inbounds %struct.Vertex, ptr %v, i64 0, i32 2, !dbg !115
  %2 = load float, ptr %z, align 4, !dbg !115
  %mul6 = fmul float %2, %2, !dbg !116
  %conv7 = fpext float %mul6 to double, !dbg !117
  call void @llvm.dbg.value(metadata double %conv7, metadata !107, metadata !DIExpression()), !dbg !108
  %add = fadd double %conv, %conv4, !dbg !118
  %add8 = fadd double %add, %conv7, !dbg !119
  %call = tail call double @sqrt(double noundef %add8) #18, !dbg !120
  %conv9 = fptrunc double %call to float, !dbg !121
  ret float %conv9, !dbg !122
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local float @distance(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2) local_unnamed_addr #0 !dbg !123 {
entry:
  %v12 = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %p1, metadata !127, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata ptr %p2, metadata !128, metadata !DIExpression()), !dbg !130
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v12) #18, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %v12, metadata !129, metadata !DIExpression()), !dbg !132
  %0 = load float, ptr %p2, align 4, !dbg !133
  %1 = load float, ptr %p1, align 4, !dbg !134
  %sub = fsub float %0, %1, !dbg !135
  store float %sub, ptr %v12, align 4, !dbg !136
  %y = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 1, !dbg !137
  %2 = load float, ptr %y, align 4, !dbg !137
  %y3 = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 1, !dbg !138
  %3 = load float, ptr %y3, align 4, !dbg !138
  %sub4 = fsub float %2, %3, !dbg !139
  %y5 = getelementptr inbounds %struct.Vertex, ptr %v12, i64 0, i32 1, !dbg !140
  store float %sub4, ptr %y5, align 4, !dbg !141
  %z = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 2, !dbg !142
  %4 = load float, ptr %z, align 4, !dbg !142
  %z6 = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 2, !dbg !143
  %5 = load float, ptr %z6, align 4, !dbg !143
  %sub7 = fsub float %4, %5, !dbg !144
  %z8 = getelementptr inbounds %struct.Vertex, ptr %v12, i64 0, i32 2, !dbg !145
  store float %sub7, ptr %z8, align 4, !dbg !146
  %call = call float @vector_length(ptr noundef nonnull %v12), !dbg !147
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v12) #18, !dbg !148
  ret float %call, !dbg !149
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local float @normalize_vector(ptr nocapture noundef writeonly %v1, ptr nocapture noundef readonly %v2) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata ptr %v1, metadata !152, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %v2, metadata !153, metadata !DIExpression()), !dbg !156
  %call = tail call float @vector_length(ptr noundef %v2), !dbg !157
  call void @llvm.dbg.value(metadata float %call, metadata !155, metadata !DIExpression()), !dbg !156
  %div = fdiv float 1.000000e+00, %call, !dbg !158
  call void @llvm.dbg.value(metadata float %div, metadata !154, metadata !DIExpression()), !dbg !156
  %0 = load float, ptr %v2, align 4, !dbg !159
  %mul = fmul float %0, %div, !dbg !160
  store float %mul, ptr %v1, align 4, !dbg !161
  %y = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 1, !dbg !162
  %1 = load float, ptr %y, align 4, !dbg !162
  %mul2 = fmul float %div, %1, !dbg !163
  %y3 = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 1, !dbg !164
  store float %mul2, ptr %y3, align 4, !dbg !165
  %z = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 2, !dbg !166
  %2 = load float, ptr %z, align 4, !dbg !166
  %mul4 = fmul float %div, %2, !dbg !167
  %z5 = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 2, !dbg !168
  store float %mul4, ptr %z5, align 4, !dbg !169
  ret float %call, !dbg !170
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local float @inner_product(ptr nocapture noundef readonly %v1, ptr nocapture noundef readonly %v2) local_unnamed_addr #4 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata ptr %v1, metadata !173, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata ptr %v2, metadata !174, metadata !DIExpression()), !dbg !176
  %0 = load float, ptr %v1, align 4, !dbg !177
  %1 = load float, ptr %v2, align 4, !dbg !178
  %mul = fmul float %0, %1, !dbg !179
  call void @llvm.dbg.value(metadata float %mul, metadata !175, metadata !DIExpression()), !dbg !176
  %y = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 1, !dbg !180
  %2 = load float, ptr %y, align 4, !dbg !180
  %y2 = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 1, !dbg !181
  %3 = load float, ptr %y2, align 4, !dbg !181
  %4 = tail call float @llvm.fmuladd.f32(float %2, float %3, float %mul), !dbg !182
  call void @llvm.dbg.value(metadata float %4, metadata !175, metadata !DIExpression()), !dbg !176
  %z = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 2, !dbg !183
  %5 = load float, ptr %z, align 4, !dbg !183
  %z4 = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 2, !dbg !184
  %6 = load float, ptr %z4, align 4, !dbg !184
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %4), !dbg !185
  call void @llvm.dbg.value(metadata float %7, metadata !175, metadata !DIExpression()), !dbg !176
  ret float %7, !dbg !186
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @cross_product(ptr nocapture noundef writeonly %vc, ptr nocapture noundef readonly %v1, ptr nocapture noundef readonly %v2) local_unnamed_addr #5 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata ptr %vc, metadata !191, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %v1, metadata !192, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %v2, metadata !193, metadata !DIExpression()), !dbg !194
  %y = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 1, !dbg !195
  %0 = load float, ptr %y, align 4, !dbg !195
  %z = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 2, !dbg !196
  %1 = load float, ptr %z, align 4, !dbg !196
  %z1 = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 2, !dbg !197
  %2 = load float, ptr %z1, align 4, !dbg !197
  %y2 = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 1, !dbg !198
  %3 = load float, ptr %y2, align 4, !dbg !198
  %4 = fneg float %2, !dbg !199
  %neg = fmul float %3, %4, !dbg !199
  %5 = tail call float @llvm.fmuladd.f32(float %0, float %1, float %neg), !dbg !199
  store float %5, ptr %vc, align 4, !dbg !200
  %6 = load float, ptr %z1, align 4, !dbg !201
  %7 = load float, ptr %v2, align 4, !dbg !202
  %8 = load float, ptr %v1, align 4, !dbg !203
  %9 = load float, ptr %z, align 4, !dbg !204
  %10 = fneg float %8, !dbg !205
  %neg9 = fmul float %9, %10, !dbg !205
  %11 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %neg9), !dbg !205
  %y10 = getelementptr inbounds %struct.Vertex, ptr %vc, i64 0, i32 1, !dbg !206
  store float %11, ptr %y10, align 4, !dbg !207
  %12 = load float, ptr %v1, align 4, !dbg !208
  %13 = load float, ptr %y2, align 4, !dbg !209
  %14 = load float, ptr %y, align 4, !dbg !210
  %15 = load float, ptr %v2, align 4, !dbg !211
  %16 = fneg float %14, !dbg !212
  %neg16 = fmul float %15, %16, !dbg !212
  %17 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %neg16), !dbg !212
  %z17 = getelementptr inbounds %struct.Vertex, ptr %vc, i64 0, i32 2, !dbg !213
  store float %17, ptr %z17, align 4, !dbg !214
  ret void, !dbg !215
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local float @plane_normal(ptr nocapture noundef %vc, ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3) local_unnamed_addr #0 !dbg !216 {
entry:
  %v1 = alloca %struct.Vertex, align 4
  %v2 = alloca %struct.Vertex, align 4
  call void @llvm.dbg.value(metadata ptr %vc, metadata !220, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %p1, metadata !221, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %p2, metadata !222, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.value(metadata ptr %p3, metadata !223, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v1) #18, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !224, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %v2) #18, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !225, metadata !DIExpression()), !dbg !229
  %0 = load float, ptr %p2, align 4, !dbg !230
  %1 = load float, ptr %p1, align 4, !dbg !231
  %sub = fsub float %0, %1, !dbg !232
  store float %sub, ptr %v1, align 4, !dbg !233
  %y = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 1, !dbg !234
  %2 = load float, ptr %y, align 4, !dbg !234
  %y3 = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 1, !dbg !235
  %3 = load float, ptr %y3, align 4, !dbg !235
  %sub4 = fsub float %2, %3, !dbg !236
  %y5 = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 1, !dbg !237
  store float %sub4, ptr %y5, align 4, !dbg !238
  %z = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 2, !dbg !239
  %4 = load float, ptr %z, align 4, !dbg !239
  %z6 = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 2, !dbg !240
  %5 = load float, ptr %z6, align 4, !dbg !240
  %sub7 = fsub float %4, %5, !dbg !241
  %z8 = getelementptr inbounds %struct.Vertex, ptr %v1, i64 0, i32 2, !dbg !242
  store float %sub7, ptr %z8, align 4, !dbg !243
  %6 = load float, ptr %p3, align 4, !dbg !244
  %sub11 = fsub float %6, %1, !dbg !245
  store float %sub11, ptr %v2, align 4, !dbg !246
  %y13 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 1, !dbg !247
  %7 = load float, ptr %y13, align 4, !dbg !247
  %sub15 = fsub float %7, %3, !dbg !248
  %y16 = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 1, !dbg !249
  store float %sub15, ptr %y16, align 4, !dbg !250
  %z17 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 2, !dbg !251
  %8 = load float, ptr %z17, align 4, !dbg !251
  %sub19 = fsub float %8, %5, !dbg !252
  %z20 = getelementptr inbounds %struct.Vertex, ptr %v2, i64 0, i32 2, !dbg !253
  store float %sub19, ptr %z20, align 4, !dbg !254
  call void @cross_product(ptr noundef %vc, ptr noundef nonnull %v1, ptr noundef nonnull %v2), !dbg !255
  %call = tail call float @normalize_vector(ptr noundef %vc, ptr noundef %vc), !dbg !256
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v2) #18, !dbg !257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %v1) #18, !dbg !257
  ret float %call, !dbg !258
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @center_point(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef writeonly %pc) local_unnamed_addr #6 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata ptr %p1, metadata !263, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %p2, metadata !264, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %p3, metadata !265, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %pc, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load float, ptr %p1, align 4, !dbg !268
  %1 = load float, ptr %p2, align 4, !dbg !269
  %add = fadd float %0, %1, !dbg !270
  %2 = load float, ptr %p3, align 4, !dbg !271
  %add3 = fadd float %add, %2, !dbg !272
  %mul = fmul float %add3, 0x3FD5555560000000, !dbg !273
  store float %mul, ptr %pc, align 4, !dbg !274
  %y = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 1, !dbg !275
  %3 = load float, ptr %y, align 4, !dbg !275
  %y5 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 1, !dbg !276
  %4 = load float, ptr %y5, align 4, !dbg !276
  %add6 = fadd float %3, %4, !dbg !277
  %y7 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 1, !dbg !278
  %5 = load float, ptr %y7, align 4, !dbg !278
  %add8 = fadd float %add6, %5, !dbg !279
  %mul9 = fmul float %add8, 0x3FD5555560000000, !dbg !280
  %y10 = getelementptr inbounds %struct.Vertex, ptr %pc, i64 0, i32 1, !dbg !281
  store float %mul9, ptr %y10, align 4, !dbg !282
  %z = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 2, !dbg !283
  %6 = load float, ptr %z, align 4, !dbg !283
  %z11 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 2, !dbg !284
  %7 = load float, ptr %z11, align 4, !dbg !284
  %add12 = fadd float %6, %7, !dbg !285
  %z13 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 2, !dbg !286
  %8 = load float, ptr %z13, align 4, !dbg !286
  %add14 = fadd float %add12, %8, !dbg !287
  %mul15 = fmul float %add14, 0x3FD5555560000000, !dbg !288
  %z16 = getelementptr inbounds %struct.Vertex, ptr %pc, i64 0, i32 2, !dbg !289
  store float %mul15, ptr %z16, align 4, !dbg !290
  ret void, !dbg !291
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local void @four_center_points(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2, ptr nocapture noundef readonly %p3, ptr nocapture noundef writeonly %pc, ptr nocapture noundef writeonly %pc1, ptr nocapture noundef writeonly %pc2, ptr nocapture noundef writeonly %pc3) local_unnamed_addr #5 !dbg !292 {
entry:
  call void @llvm.dbg.value(metadata ptr %p1, metadata !296, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %p2, metadata !297, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %p3, metadata !298, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %pc, metadata !299, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %pc1, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %pc2, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %pc3, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load float, ptr %p1, align 4, !dbg !304
  %1 = load float, ptr %p2, align 4, !dbg !305
  %add = fadd float %0, %1, !dbg !306
  %2 = load float, ptr %p3, align 4, !dbg !307
  %add3 = fadd float %add, %2, !dbg !308
  %mul = fmul float %add3, 0x3FD5555560000000, !dbg !309
  store float %mul, ptr %pc, align 4, !dbg !310
  %y = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 1, !dbg !311
  %3 = load float, ptr %y, align 4, !dbg !311
  %y5 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 1, !dbg !312
  %4 = load float, ptr %y5, align 4, !dbg !312
  %add6 = fadd float %3, %4, !dbg !313
  %y7 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 1, !dbg !314
  %5 = load float, ptr %y7, align 4, !dbg !314
  %add8 = fadd float %add6, %5, !dbg !315
  %mul9 = fmul float %add8, 0x3FD5555560000000, !dbg !316
  %y10 = getelementptr inbounds %struct.Vertex, ptr %pc, i64 0, i32 1, !dbg !317
  store float %mul9, ptr %y10, align 4, !dbg !318
  %z = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 2, !dbg !319
  %6 = load float, ptr %z, align 4, !dbg !319
  %z11 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 2, !dbg !320
  %7 = load float, ptr %z11, align 4, !dbg !320
  %add12 = fadd float %6, %7, !dbg !321
  %z13 = getelementptr inbounds %struct.Vertex, ptr %p3, i64 0, i32 2, !dbg !322
  %8 = load float, ptr %z13, align 4, !dbg !322
  %add14 = fadd float %add12, %8, !dbg !323
  %mul15 = fmul float %add14, 0x3FD5555560000000, !dbg !324
  %z16 = getelementptr inbounds %struct.Vertex, ptr %pc, i64 0, i32 2, !dbg !325
  store float %mul15, ptr %z16, align 4, !dbg !326
  %9 = load float, ptr %p1, align 4, !dbg !327
  %10 = load float, ptr %p2, align 4, !dbg !328
  %11 = tail call float @llvm.fmuladd.f32(float %9, float 4.000000e+00, float %10), !dbg !329
  %12 = load float, ptr %p3, align 4, !dbg !330
  %add21 = fadd float %11, %12, !dbg !331
  %mul22 = fmul float %add21, 0x3FC5555560000000, !dbg !332
  store float %mul22, ptr %pc1, align 4, !dbg !333
  %13 = load float, ptr %y, align 4, !dbg !334
  %14 = load float, ptr %y5, align 4, !dbg !335
  %15 = tail call float @llvm.fmuladd.f32(float %13, float 4.000000e+00, float %14), !dbg !336
  %16 = load float, ptr %y7, align 4, !dbg !337
  %add28 = fadd float %15, %16, !dbg !338
  %mul29 = fmul float %add28, 0x3FC5555560000000, !dbg !339
  %y30 = getelementptr inbounds %struct.Vertex, ptr %pc1, i64 0, i32 1, !dbg !340
  store float %mul29, ptr %y30, align 4, !dbg !341
  %17 = load float, ptr %z, align 4, !dbg !342
  %18 = load float, ptr %z11, align 4, !dbg !343
  %19 = tail call float @llvm.fmuladd.f32(float %17, float 4.000000e+00, float %18), !dbg !344
  %20 = load float, ptr %z13, align 4, !dbg !345
  %add35 = fadd float %19, %20, !dbg !346
  %mul36 = fmul float %add35, 0x3FC5555560000000, !dbg !347
  %z37 = getelementptr inbounds %struct.Vertex, ptr %pc1, i64 0, i32 2, !dbg !348
  store float %mul36, ptr %z37, align 4, !dbg !349
  %21 = load float, ptr %p1, align 4, !dbg !350
  %22 = load float, ptr %p2, align 4, !dbg !351
  %23 = tail call float @llvm.fmuladd.f32(float %22, float 4.000000e+00, float %21), !dbg !352
  %24 = load float, ptr %p3, align 4, !dbg !353
  %add42 = fadd float %23, %24, !dbg !354
  %mul43 = fmul float %add42, 0x3FC5555560000000, !dbg !355
  store float %mul43, ptr %pc2, align 4, !dbg !356
  %25 = load float, ptr %y, align 4, !dbg !357
  %26 = load float, ptr %y5, align 4, !dbg !358
  %27 = tail call float @llvm.fmuladd.f32(float %26, float 4.000000e+00, float %25), !dbg !359
  %28 = load float, ptr %y7, align 4, !dbg !360
  %add49 = fadd float %27, %28, !dbg !361
  %mul50 = fmul float %add49, 0x3FC5555560000000, !dbg !362
  %y51 = getelementptr inbounds %struct.Vertex, ptr %pc2, i64 0, i32 1, !dbg !363
  store float %mul50, ptr %y51, align 4, !dbg !364
  %29 = load float, ptr %z, align 4, !dbg !365
  %30 = load float, ptr %z11, align 4, !dbg !366
  %31 = tail call float @llvm.fmuladd.f32(float %30, float 4.000000e+00, float %29), !dbg !367
  %32 = load float, ptr %z13, align 4, !dbg !368
  %add56 = fadd float %31, %32, !dbg !369
  %mul57 = fmul float %add56, 0x3FC5555560000000, !dbg !370
  %z58 = getelementptr inbounds %struct.Vertex, ptr %pc2, i64 0, i32 2, !dbg !371
  store float %mul57, ptr %z58, align 4, !dbg !372
  %33 = load float, ptr %p1, align 4, !dbg !373
  %34 = load float, ptr %p2, align 4, !dbg !374
  %add61 = fadd float %33, %34, !dbg !375
  %35 = load float, ptr %p3, align 4, !dbg !376
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 4.000000e+00, float %add61), !dbg !377
  %mul64 = fmul float %36, 0x3FC5555560000000, !dbg !378
  store float %mul64, ptr %pc3, align 4, !dbg !379
  %37 = load float, ptr %y, align 4, !dbg !380
  %38 = load float, ptr %y5, align 4, !dbg !381
  %add68 = fadd float %37, %38, !dbg !382
  %39 = load float, ptr %y7, align 4, !dbg !383
  %40 = tail call float @llvm.fmuladd.f32(float %39, float 4.000000e+00, float %add68), !dbg !384
  %mul71 = fmul float %40, 0x3FC5555560000000, !dbg !385
  %y72 = getelementptr inbounds %struct.Vertex, ptr %pc3, i64 0, i32 1, !dbg !386
  store float %mul71, ptr %y72, align 4, !dbg !387
  %41 = load float, ptr %z, align 4, !dbg !388
  %42 = load float, ptr %z11, align 4, !dbg !389
  %add75 = fadd float %41, %42, !dbg !390
  %43 = load float, ptr %z13, align 4, !dbg !391
  %44 = tail call float @llvm.fmuladd.f32(float %43, float 4.000000e+00, float %add75), !dbg !392
  %mul78 = fmul float %44, 0x3FC5555560000000, !dbg !393
  %z79 = getelementptr inbounds %struct.Vertex, ptr %pc3, i64 0, i32 2, !dbg !394
  store float %mul78, ptr %z79, align 4, !dbg !395
  ret void, !dbg !396
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_point(ptr nocapture noundef readonly %point) local_unnamed_addr #7 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata ptr %point, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load float, ptr %point, align 4, !dbg !403
  %conv = fpext float %0 to double, !dbg !404
  %y = getelementptr inbounds %struct.Vertex, ptr %point, i64 0, i32 1, !dbg !405
  %1 = load float, ptr %y, align 4, !dbg !405
  %conv1 = fpext float %1 to double, !dbg !406
  %z = getelementptr inbounds %struct.Vertex, ptr %point, i64 0, i32 2, !dbg !407
  %2 = load float, ptr %z, align 4, !dbg !407
  %conv2 = fpext float %2 to double, !dbg !408
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv, double noundef %conv1, double noundef %conv2), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_rgb(ptr nocapture noundef readonly %rgb) local_unnamed_addr #7 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata ptr %rgb, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load float, ptr %rgb, align 4, !dbg !418
  %conv = fpext float %0 to double, !dbg !419
  %g = getelementptr inbounds %struct.Rgb, ptr %rgb, i64 0, i32 1, !dbg !420
  %1 = load float, ptr %g, align 4, !dbg !420
  %conv1 = fpext float %1 to double, !dbg !421
  %b = getelementptr inbounds %struct.Rgb, ptr %rgb, i64 0, i32 2, !dbg !422
  %2 = load float, ptr %b, align 4, !dbg !422
  %conv2 = fpext float %2 to double, !dbg !423
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %conv, double noundef %conv1, double noundef %conv2), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @create_elemvertex(ptr nocapture noundef readonly %p, i64 noundef %process_id) local_unnamed_addr #9 !dbg !426 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !430, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !431, metadata !DIExpression()), !dbg !433
  %call = tail call ptr @get_elemvertex(i64 noundef %process_id), !dbg !434
  call void @llvm.dbg.value(metadata ptr %call, metadata !432, metadata !DIExpression()), !dbg !433
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %call, ptr noundef nonnull align 4 dereferenceable(12) %p, i64 12, i1 false), !dbg !435
  ret ptr %call, !dbg !436
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_elemvertex(i64 noundef %process_id) local_unnamed_addr #9 !dbg !437 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !441, metadata !DIExpression()), !dbg !443
  %n_local_free_elemvertex = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 1, !dbg !444
  %0 = load i64, ptr %n_local_free_elemvertex, align 8, !dbg !444
  %cmp = icmp eq i64 %0, 0, !dbg !446
  br i1 %cmp, label %if.then, label %if.end14, !dbg !447

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @global, align 8, !dbg !448
  %free_elemvertex_lock = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 34, !dbg !451
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_elemvertex_lock) #18, !dbg !452
  %2 = load i64, ptr @MAX_ELEMVERTICES, align 8, !dbg !453
  %3 = load ptr, ptr @global, align 8, !dbg !455
  %free_elemvertex = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 35, !dbg !456
  %4 = load i64, ptr %free_elemvertex, align 8, !dbg !456
  %sub = sub nsw i64 %2, %4, !dbg !457
  %cmp1 = icmp slt i64 %sub, 16, !dbg !458
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !459

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr @stderr, align 8, !dbg !460
  %6 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %5) #19, !dbg !462
  %7 = load ptr, ptr @global, align 8, !dbg !463
  %free_elemvertex_lock4 = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 34, !dbg !465
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_elemvertex_lock4) #18, !dbg !466
  tail call void @exit(i32 noundef 1) #20, !dbg !467
  unreachable, !dbg !467

if.end:                                           ; preds = %if.then
  store i64 16, ptr %n_local_free_elemvertex, align 8, !dbg !468
  %elemvertex_buf = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 36, !dbg !469
  %8 = load ptr, ptr %elemvertex_buf, align 8, !dbg !469
  %9 = load i64, ptr %free_elemvertex, align 8, !dbg !470
  %arrayidx9 = getelementptr inbounds %struct._elemvertex, ptr %8, i64 %9, !dbg !471
  %local_free_elemvertex = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 2, !dbg !472
  store ptr %arrayidx9, ptr %local_free_elemvertex, align 8, !dbg !473
  %10 = load i64, ptr %free_elemvertex, align 8, !dbg !474
  %add = add nsw i64 %10, 16, !dbg !474
  store i64 %add, ptr %free_elemvertex, align 8, !dbg !474
  %free_elemvertex_lock12 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 34, !dbg !475
  %call13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_elemvertex_lock12) #18, !dbg !477
  %.pre = load i64, ptr %n_local_free_elemvertex, align 8, !dbg !478
  br label %if.end14, !dbg !479

if.end14:                                         ; preds = %if.end, %entry
  %11 = phi i64 [ %.pre, %if.end ], [ %0, %entry ], !dbg !478
  %local_free_elemvertex16 = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 2, !dbg !480
  %12 = load ptr, ptr %local_free_elemvertex16, align 8, !dbg !481
  %incdec.ptr = getelementptr inbounds %struct._elemvertex, ptr %12, i64 1, !dbg !481
  store ptr %incdec.ptr, ptr %local_free_elemvertex16, align 8, !dbg !481
  call void @llvm.dbg.value(metadata ptr %12, metadata !442, metadata !DIExpression()), !dbg !443
  %dec = add nsw i64 %11, -1, !dbg !478
  store i64 %dec, ptr %n_local_free_elemvertex, align 8, !dbg !478
  %col = getelementptr inbounds %struct._elemvertex, ptr %12, i64 0, i32 1, !dbg !482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %col, i8 0, i64 16, i1 false), !dbg !483
  ret ptr %12, !dbg !484
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare !dbg !485 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !491 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_elemvertex(i64 noundef %process_id) local_unnamed_addr #9 !dbg !492 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !496, metadata !DIExpression()), !dbg !498
  %0 = load i64, ptr @MAX_ELEMVERTICES, align 8, !dbg !499
  %mul = mul i64 %0, 40, !dbg !500
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !501
  %1 = load ptr, ptr @global, align 8, !dbg !502
  %elemvertex_buf = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 36, !dbg !503
  store ptr %calloc, ptr %elemvertex_buf, align 8, !dbg !504
  %free_elemvertex_lock = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 34, !dbg !505
  %call3 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %free_elemvertex_lock, ptr noundef null) #18, !dbg !507
  %2 = load ptr, ptr @global, align 8, !dbg !508
  %free_elemvertex = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 35, !dbg !509
  store i64 0, ptr %free_elemvertex, align 8, !dbg !510
  call void @llvm.dbg.value(metadata i64 0, metadata !497, metadata !DIExpression()), !dbg !498
  %3 = load i64, ptr @MAX_ELEMVERTICES, align 8, !dbg !511
  %cmp12 = icmp sgt i64 %3, 0, !dbg !514
  br i1 %cmp12, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %entry, %for.body
  %ev_cnt.013 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %ev_cnt.013, metadata !497, metadata !DIExpression()), !dbg !498
  %call4 = tail call ptr @get_sharedlock(i64 noundef 2, i64 noundef %process_id), !dbg !516
  %4 = load ptr, ptr @global, align 8, !dbg !517
  %elemvertex_buf5 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 36, !dbg !518
  %5 = load ptr, ptr %elemvertex_buf5, align 8, !dbg !518
  %ev_lock = getelementptr inbounds %struct._elemvertex, ptr %5, i64 %ev_cnt.013, i32 3, !dbg !519
  store ptr %call4, ptr %ev_lock, align 8, !dbg !520
  %inc = add nuw nsw i64 %ev_cnt.013, 1, !dbg !521
  call void @llvm.dbg.value(metadata i64 %inc, metadata !497, metadata !DIExpression()), !dbg !498
  %6 = load i64, ptr @MAX_ELEMVERTICES, align 8, !dbg !511
  %cmp = icmp slt i64 %inc, %6, !dbg !514
  br i1 %cmp, label %for.body, label %for.end, !dbg !515, !llvm.loop !522

for.end:                                          ; preds = %for.body, %entry
  %n_local_free_elemvertex = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 1, !dbg !526
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %n_local_free_elemvertex, i8 0, i64 16, i1 false), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !529 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local nonnull ptr @get_sharedlock(i64 noundef %segment, i64 noundef %process_id) local_unnamed_addr #14 !dbg !542 {
entry:
  call void @llvm.dbg.value(metadata i64 %segment, metadata !546, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !547, metadata !DIExpression()), !dbg !550
  switch i64 %segment, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
  ], !dbg !551

sw.bb:                                            ; preds = %entry
  %lock_alloc_counter = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 5, !dbg !552
  %0 = load i64, ptr %lock_alloc_counter, align 8, !dbg !552
  %rem = srem i64 %0, 1950, !dbg !554
  call void @llvm.dbg.value(metadata i64 %rem, metadata !549, metadata !DIExpression()), !dbg !550
  br label %sw.epilog, !dbg !555

sw.bb1:                                           ; preds = %entry
  %lock_alloc_counter3 = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 5, !dbg !556
  %1 = load i64, ptr %lock_alloc_counter3, align 8, !dbg !556
  %rem4 = srem i64 %1, 1950, !dbg !557
  %add = add nsw i64 %rem4, 1950, !dbg !558
  call void @llvm.dbg.value(metadata i64 %add, metadata !549, metadata !DIExpression()), !dbg !550
  br label %sw.epilog, !dbg !559

sw.default:                                       ; preds = %entry
  %lock_alloc_counter6 = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 5, !dbg !560
  %2 = load i64, ptr %lock_alloc_counter6, align 8, !dbg !560
  call void @llvm.dbg.value(metadata i64 %2, metadata !549, metadata !DIExpression()), !dbg !550
  br label %sw.epilog, !dbg !561

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %3 = phi i64 [ %2, %sw.default ], [ %1, %sw.bb1 ], [ %0, %sw.bb ], !dbg !562
  %effective_lock_ctr.0 = phi i64 [ %2, %sw.default ], [ %add, %sw.bb1 ], [ %rem, %sw.bb ], !dbg !563
  call void @llvm.dbg.value(metadata i64 %effective_lock_ctr.0, metadata !549, metadata !DIExpression()), !dbg !550
  %4 = load ptr, ptr @global, align 8, !dbg !564
  call void @llvm.dbg.value(metadata !DIArgList(ptr %4, i64 %effective_lock_ctr.0), metadata !548, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 166101728, DW_OP_LLVM_arg, 1, DW_OP_constu, 40, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !550
  %lock_alloc_counter9 = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 5, !dbg !565
  %inc = add nsw i64 %3, 1, !dbg !562
  %cmp = icmp sgt i64 %3, 3898, !dbg !566
  %spec.select = select i1 %cmp, i64 0, i64 %inc, !dbg !568
  store i64 %spec.select, ptr %lock_alloc_counter9, align 8, !dbg !550
  %arrayidx7 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 40, i64 %effective_lock_ctr.0, !dbg !564
  call void @llvm.dbg.value(metadata ptr %arrayidx7, metadata !548, metadata !DIExpression()), !dbg !550
  ret ptr %arrayidx7, !dbg !569
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foreach_leaf_edge(ptr noundef %edge, i64 noundef %reverse, ptr noundef %func, i64 noundef %arg1, i64 noundef %arg2, i64 noundef %process_id) local_unnamed_addr #9 !dbg !570 {
entry:
  %tobool.not = icmp eq i64 %reverse, 0
  br i1 %tobool.not, label %tailrecurse.us, label %tailrecurse, !dbg !585

tailrecurse.us:                                   ; preds = %entry, %tailrecurse.us.backedge
  %edge.tr.us = phi ptr [ %1, %tailrecurse.us.backedge ], [ %edge, %entry ]
  call void @llvm.dbg.value(metadata ptr %edge.tr.us, metadata !577, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %reverse, metadata !578, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %func, metadata !579, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !580, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %arg2, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !582, metadata !DIExpression()), !dbg !588
  %cmp.us = icmp eq ptr %edge.tr.us, null, !dbg !589
  br i1 %cmp.us, label %cleanup, label %if.end.us, !dbg !591

if.end.us:                                        ; preds = %tailrecurse.us
  %ea.us = getelementptr inbounds %struct._edge, ptr %edge.tr.us, i64 0, i32 2, !dbg !592
  %0 = load ptr, ptr %ea.us, align 8, !dbg !592
  %cmp1.us = icmp eq ptr %0, null, !dbg !593
  %eb.us = getelementptr inbounds %struct._edge, ptr %edge.tr.us, i64 0, i32 3
  %1 = load ptr, ptr %eb.us, align 8, !dbg !594
  br i1 %cmp1.us, label %land.lhs.true.us, label %if.then12.us, !dbg !595

land.lhs.true.us:                                 ; preds = %if.end.us
  %cond = icmp eq ptr %1, null, !dbg !596
  br i1 %cond, label %if.then3, label %tailrecurse.us.backedge, !dbg !596

if.then12.us:                                     ; preds = %if.end.us
  call void @llvm.dbg.value(metadata ptr %1, metadata !584, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %0, metadata !583, metadata !DIExpression()), !dbg !588
  tail call void @foreach_leaf_edge(ptr noundef nonnull %0, i64 noundef 0, ptr noundef %func, i64 noundef %arg1, i64 noundef %arg2, i64 noundef %process_id), !dbg !597
  %tobool14.not.us = icmp eq ptr %1, null, !dbg !599
  br i1 %tobool14.not.us, label %cleanup, label %tailrecurse.us.backedge, !dbg !601

tailrecurse.us.backedge:                          ; preds = %if.then12.us, %land.lhs.true.us
  br label %tailrecurse.us, !dbg !588

tailrecurse:                                      ; preds = %entry, %if.end13
  %edge.tr = phi ptr [ %2, %if.end13 ], [ %edge, %entry ]
  call void @llvm.dbg.value(metadata ptr %edge.tr, metadata !577, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %reverse, metadata !578, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %func, metadata !579, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %arg1, metadata !580, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %arg2, metadata !581, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !582, metadata !DIExpression()), !dbg !588
  %cmp = icmp eq ptr %edge.tr, null, !dbg !589
  br i1 %cmp, label %cleanup, label %if.end, !dbg !591

if.end:                                           ; preds = %tailrecurse
  %ea = getelementptr inbounds %struct._edge, ptr %edge.tr, i64 0, i32 2, !dbg !592
  %2 = load ptr, ptr %ea, align 8, !dbg !592
  %cmp1 = icmp eq ptr %2, null, !dbg !593
  %eb = getelementptr inbounds %struct._edge, ptr %edge.tr, i64 0, i32 3
  %3 = load ptr, ptr %eb, align 8, !dbg !594
  %cmp2 = icmp eq ptr %3, null, !dbg !594
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !595

land.lhs.true:                                    ; preds = %if.end
  br i1 %cmp2, label %if.then3, label %if.then12, !dbg !596

if.then3:                                         ; preds = %land.lhs.true, %land.lhs.true.us
  %.us-phi = phi ptr [ %edge.tr.us, %land.lhs.true.us ], [ %edge.tr, %land.lhs.true ]
  tail call void (ptr, i64, i64, i64, i64, ...) %func(ptr noundef nonnull %.us-phi, i64 noundef %reverse, i64 noundef %arg1, i64 noundef %arg2, i64 noundef %process_id) #18, !dbg !602
  br label %cleanup, !dbg !602

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %2, metadata !584, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata ptr %3, metadata !583, metadata !DIExpression()), !dbg !588
  br i1 %cmp2, label %if.end13, label %if.then12, !dbg !603

if.then12:                                        ; preds = %land.lhs.true, %if.else
  tail call void @foreach_leaf_edge(ptr noundef nonnull %3, i64 noundef %reverse, ptr noundef %func, i64 noundef %arg1, i64 noundef %arg2, i64 noundef %process_id), !dbg !597
  br label %if.end13, !dbg !597

if.end13:                                         ; preds = %if.then12, %if.else
  br i1 %cmp1, label %cleanup, label %tailrecurse, !dbg !601

cleanup:                                          ; preds = %tailrecurse, %if.end13, %if.then12.us, %tailrecurse.us, %if.then3
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @create_edge(ptr noundef %v1, ptr noundef %v2, i64 noundef %process_id) local_unnamed_addr #9 !dbg !605 {
entry:
  call void @llvm.dbg.value(metadata ptr %v1, metadata !609, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata ptr %v2, metadata !610, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !611, metadata !DIExpression()), !dbg !613
  %call = tail call ptr @get_edge(i64 noundef %process_id), !dbg !614
  call void @llvm.dbg.value(metadata ptr %call, metadata !612, metadata !DIExpression()), !dbg !613
  store ptr %v1, ptr %call, align 8, !dbg !615
  %pb = getelementptr inbounds %struct._edge, ptr %call, i64 0, i32 1, !dbg !616
  store ptr %v2, ptr %pb, align 8, !dbg !617
  ret ptr %call, !dbg !618
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_edge(i64 noundef %process_id) local_unnamed_addr #9 !dbg !619 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !623, metadata !DIExpression()), !dbg !625
  %n_local_free_edge = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 3, !dbg !626
  %0 = load i64, ptr %n_local_free_edge, align 8, !dbg !626
  %cmp = icmp eq i64 %0, 0, !dbg !628
  br i1 %cmp, label %if.then, label %if.end14, !dbg !629

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @global, align 8, !dbg !630
  %free_edge_lock = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 37, !dbg !633
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %free_edge_lock) #18, !dbg !634
  %2 = load i64, ptr @MAX_EDGES, align 8, !dbg !635
  %3 = load ptr, ptr @global, align 8, !dbg !637
  %free_edge = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 38, !dbg !638
  %4 = load i64, ptr %free_edge, align 8, !dbg !638
  %sub = sub nsw i64 %2, %4, !dbg !639
  %cmp1 = icmp slt i64 %sub, 16, !dbg !640
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !641

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr @stderr, align 8, !dbg !642
  %6 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %5) #19, !dbg !644
  %7 = load ptr, ptr @global, align 8, !dbg !645
  %free_edge_lock4 = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 37, !dbg !647
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_edge_lock4) #18, !dbg !648
  tail call void @exit(i32 noundef 1) #20, !dbg !649
  unreachable, !dbg !649

if.end:                                           ; preds = %if.then
  store i64 16, ptr %n_local_free_edge, align 8, !dbg !650
  %edge_buf = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 39, !dbg !651
  %8 = load ptr, ptr %edge_buf, align 8, !dbg !651
  %9 = load i64, ptr %free_edge, align 8, !dbg !652
  %arrayidx9 = getelementptr inbounds %struct._edge, ptr %8, i64 %9, !dbg !653
  %local_free_edge = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 4, !dbg !654
  store ptr %arrayidx9, ptr %local_free_edge, align 8, !dbg !655
  %10 = load i64, ptr %free_edge, align 8, !dbg !656
  %add = add nsw i64 %10, 16, !dbg !656
  store i64 %add, ptr %free_edge, align 8, !dbg !656
  %free_edge_lock12 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 37, !dbg !657
  %call13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %free_edge_lock12) #18, !dbg !659
  %.pre = load i64, ptr %n_local_free_edge, align 8, !dbg !660
  br label %if.end14, !dbg !661

if.end14:                                         ; preds = %if.end, %entry
  %11 = phi i64 [ %.pre, %if.end ], [ %0, %entry ], !dbg !660
  %local_free_edge16 = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 4, !dbg !662
  %12 = load ptr, ptr %local_free_edge16, align 8, !dbg !663
  %incdec.ptr = getelementptr inbounds %struct._edge, ptr %12, i64 1, !dbg !663
  store ptr %incdec.ptr, ptr %local_free_edge16, align 8, !dbg !663
  call void @llvm.dbg.value(metadata ptr %12, metadata !624, metadata !DIExpression()), !dbg !625
  %dec = add nsw i64 %11, -1, !dbg !660
  store i64 %dec, ptr %n_local_free_edge, align 8, !dbg !660
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false), !dbg !664
  ret ptr %12, !dbg !665
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @subdivide_edge(ptr nocapture noundef %e, float noundef %a_ratio, i64 noundef %process_id) local_unnamed_addr #9 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata float %a_ratio, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !672, metadata !DIExpression()), !dbg !677
  %edge_lock = getelementptr inbounds %struct._edge, ptr %e, i64 0, i32 4, !dbg !678
  %0 = load ptr, ptr %edge_lock, align 8, !dbg !678
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #18, !dbg !680
  %ea = getelementptr inbounds %struct._edge, ptr %e, i64 0, i32 2, !dbg !681
  %1 = load ptr, ptr %ea, align 8, !dbg !681
  %cmp = icmp eq ptr %1, null, !dbg !681
  br i1 %cmp, label %if.end, label %cleanup, !dbg !683

if.end:                                           ; preds = %entry
  %sub = fsub float 1.000000e+00, %a_ratio, !dbg !684
  call void @llvm.dbg.value(metadata float %sub, metadata !676, metadata !DIExpression()), !dbg !677
  %call4 = tail call ptr @get_elemvertex(i64 noundef %process_id), !dbg !685
  call void @llvm.dbg.value(metadata ptr %call4, metadata !675, metadata !DIExpression()), !dbg !677
  %2 = load ptr, ptr %e, align 8, !dbg !686
  %3 = load float, ptr %2, align 8, !dbg !687
  %pb = getelementptr inbounds %struct._edge, ptr %e, i64 0, i32 1, !dbg !688
  %4 = load ptr, ptr %pb, align 8, !dbg !688
  %5 = load float, ptr %4, align 8, !dbg !689
  %mul7 = fmul float %sub, %5, !dbg !690
  %6 = tail call float @llvm.fmuladd.f32(float %a_ratio, float %3, float %mul7), !dbg !691
  store float %6, ptr %call4, align 8, !dbg !692
  %7 = load ptr, ptr %e, align 8, !dbg !693
  %y = getelementptr inbounds %struct.Vertex, ptr %7, i64 0, i32 1, !dbg !694
  %8 = load float, ptr %y, align 4, !dbg !694
  %9 = load ptr, ptr %pb, align 8, !dbg !695
  %y14 = getelementptr inbounds %struct.Vertex, ptr %9, i64 0, i32 1, !dbg !696
  %10 = load float, ptr %y14, align 4, !dbg !696
  %mul15 = fmul float %sub, %10, !dbg !697
  %11 = tail call float @llvm.fmuladd.f32(float %a_ratio, float %8, float %mul15), !dbg !698
  %y17 = getelementptr inbounds %struct.Vertex, ptr %call4, i64 0, i32 1, !dbg !699
  store float %11, ptr %y17, align 4, !dbg !700
  %12 = load ptr, ptr %e, align 8, !dbg !701
  %z = getelementptr inbounds %struct.Vertex, ptr %12, i64 0, i32 2, !dbg !702
  %13 = load float, ptr %z, align 8, !dbg !702
  %14 = load ptr, ptr %pb, align 8, !dbg !703
  %z22 = getelementptr inbounds %struct.Vertex, ptr %14, i64 0, i32 2, !dbg !704
  %15 = load float, ptr %z22, align 8, !dbg !704
  %mul23 = fmul float %sub, %15, !dbg !705
  %16 = tail call float @llvm.fmuladd.f32(float %a_ratio, float %13, float %mul23), !dbg !706
  %z25 = getelementptr inbounds %struct.Vertex, ptr %call4, i64 0, i32 2, !dbg !707
  store float %16, ptr %z25, align 8, !dbg !708
  %call26 = tail call ptr @get_edge(i64 noundef %process_id), !dbg !709
  call void @llvm.dbg.value(metadata ptr %call26, metadata !673, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata ptr %call26, metadata !674, metadata !DIExpression()), !dbg !677
  %17 = load ptr, ptr %e, align 8, !dbg !710
  store ptr %17, ptr %call26, align 8, !dbg !711
  %pb29 = getelementptr inbounds %struct._edge, ptr %call26, i64 0, i32 1, !dbg !712
  store ptr %call4, ptr %pb29, align 8, !dbg !713
  %call30 = tail call ptr @get_edge(i64 noundef %process_id), !dbg !714
  call void @llvm.dbg.value(metadata ptr %call30, metadata !673, metadata !DIExpression()), !dbg !677
  store ptr %call4, ptr %call30, align 8, !dbg !715
  %18 = load ptr, ptr %pb, align 8, !dbg !716
  %pb33 = getelementptr inbounds %struct._edge, ptr %call30, i64 0, i32 1, !dbg !717
  store ptr %18, ptr %pb33, align 8, !dbg !718
  %eb = getelementptr inbounds %struct._edge, ptr %e, i64 0, i32 3, !dbg !719
  store ptr %call30, ptr %eb, align 8, !dbg !720
  store ptr %call26, ptr %ea, align 8, !dbg !721
  br label %cleanup, !dbg !722

cleanup:                                          ; preds = %entry, %if.end
  %19 = load ptr, ptr %edge_lock, align 8, !dbg !677
  %call37 = tail call i32 @pthread_mutex_unlock(ptr noundef %19) #18, !dbg !677
  ret void, !dbg !722
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_edge(i64 noundef %process_id) local_unnamed_addr #9 !dbg !723 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !725, metadata !DIExpression()), !dbg !727
  %0 = load i64, ptr @MAX_EDGES, align 8, !dbg !728
  %mul = mul i64 %0, 40, !dbg !729
  %calloc = call ptr @calloc(i64 1, i64 %mul), !dbg !730
  %1 = load ptr, ptr @global, align 8, !dbg !731
  %edge_buf = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 39, !dbg !732
  store ptr %calloc, ptr %edge_buf, align 8, !dbg !733
  %free_edge_lock = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 37, !dbg !734
  %call3 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %free_edge_lock, ptr noundef null) #18, !dbg !736
  %2 = load ptr, ptr @global, align 8, !dbg !737
  %free_edge = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 38, !dbg !738
  store i64 0, ptr %free_edge, align 8, !dbg !739
  call void @llvm.dbg.value(metadata i64 0, metadata !726, metadata !DIExpression()), !dbg !727
  %3 = load i64, ptr @MAX_EDGES, align 8, !dbg !740
  %cmp12 = icmp sgt i64 %3, 0, !dbg !743
  br i1 %cmp12, label %for.body, label %for.end, !dbg !744

for.body:                                         ; preds = %entry, %for.body
  %edge_cnt.013 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %edge_cnt.013, metadata !726, metadata !DIExpression()), !dbg !727
  %call4 = tail call ptr @get_sharedlock(i64 noundef 0, i64 noundef %process_id), !dbg !745
  %4 = load ptr, ptr @global, align 8, !dbg !746
  %edge_buf5 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 39, !dbg !747
  %5 = load ptr, ptr %edge_buf5, align 8, !dbg !747
  %edge_lock = getelementptr inbounds %struct._edge, ptr %5, i64 %edge_cnt.013, i32 4, !dbg !748
  store ptr %call4, ptr %edge_lock, align 8, !dbg !749
  %inc = add nuw nsw i64 %edge_cnt.013, 1, !dbg !750
  call void @llvm.dbg.value(metadata i64 %inc, metadata !726, metadata !DIExpression()), !dbg !727
  %6 = load i64, ptr @MAX_EDGES, align 8, !dbg !740
  %cmp = icmp slt i64 %inc, %6, !dbg !743
  br i1 %cmp, label %for.body, label %for.end, !dbg !744, !llvm.loop !751

for.end:                                          ; preds = %for.body, %entry
  %n_local_free_edge = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 3, !dbg !753
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %n_local_free_edge, i8 0, i64 16, i1 false), !dbg !754
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_sharedlock(i64 noundef %process_id) local_unnamed_addr #9 !dbg !756 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !758, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata i64 0, metadata !759, metadata !DIExpression()), !dbg !760
  br label %for.body, !dbg !761

for.body:                                         ; preds = %entry, %for.body
  %i.04 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.04, metadata !759, metadata !DIExpression()), !dbg !760
  %0 = load ptr, ptr @global, align 8, !dbg !763
  %arrayidx = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 40, i64 %i.04, !dbg !763
  %call = tail call i32 @pthread_mutex_init(ptr noundef nonnull %arrayidx, ptr noundef null) #18, !dbg !767
  %inc = add nuw nsw i64 %i.04, 1, !dbg !768
  call void @llvm.dbg.value(metadata i64 %inc, metadata !759, metadata !DIExpression()), !dbg !760
  %exitcond.not = icmp eq i64 %inc, 3900, !dbg !769
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !761, !llvm.loop !770

for.end:                                          ; preds = %for.body
  %lock_alloc_counter = getelementptr inbounds [1024 x %struct.anon], ptr @sobj_struct, i64 0, i64 %process_id, i32 5, !dbg !772
  store i64 0, ptr %lock_alloc_counter, align 8, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

attributes #0 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sobj_struct", scope: !2, file: !3, line: 1182, type: !76, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !75, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "smallobj.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "f2c559b78bda30a48e1795fb435113f9")
!4 = !{!5, !6, !65}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 255, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 250, size: 320, elements: !9)
!9 = !{!10, !18, !25, !26}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !8, file: !3, line: 251, baseType: !11, size: 96)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !12, line: 14, baseType: !13)
!12 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 12, size: 96, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !12, line: 13, baseType: !5, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !13, file: !12, line: 13, baseType: !5, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !13, file: !12, line: 13, baseType: !5, size: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !8, file: !3, line: 252, baseType: !19, size: 96, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !12, line: 24, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 22, size: 96, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !20, file: !12, line: 23, baseType: !5, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !20, file: !12, line: 23, baseType: !5, size: 32, offset: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !20, file: !12, line: 23, baseType: !5, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !8, file: !3, line: 253, baseType: !5, size: 32, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !8, file: !3, line: 254, baseType: !27, size: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 116, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 113, size: 320, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !29, file: !3, line: 115, baseType: !32, size: 320)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !33, line: 72, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 67, size: 320, elements: !35)
!35 = !{!36, !58, !63}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !34, file: !33, line: 69, baseType: !37, size: 320)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !38, line: 22, size: 320, elements: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!39 = !{!40, !42, !44, !45, !46, !47, !49, !50}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !37, file: !38, line: 24, baseType: !41, size: 32)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !37, file: !38, line: 25, baseType: !43, size: 32, offset: 32)
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !37, file: !38, line: 26, baseType: !41, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !37, file: !38, line: 28, baseType: !43, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !37, file: !38, line: 32, baseType: !41, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !37, file: !38, line: 34, baseType: !48, size: 16, offset: 160)
!48 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !37, file: !38, line: 35, baseType: !48, size: 16, offset: 176)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !37, file: !38, line: 36, baseType: !51, size: 128, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !52, line: 53, baseType: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !52, line: 49, size: 128, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !53, file: !52, line: 51, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !53, file: !52, line: 52, baseType: !56, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !34, file: !33, line: 70, baseType: !59, size: 320)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 320, elements: !61)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !{!62}
!62 = !DISubrange(count: 40)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !34, file: !33, line: 71, baseType: !64, size: 64)
!64 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 278, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 274, size: 320, elements: !68)
!68 = !{!69, !70, !71, !73, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !67, file: !3, line: 275, baseType: !6, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !67, file: !3, line: 275, baseType: !6, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !67, file: !3, line: 276, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !67, file: !3, line: 276, baseType: !72, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !67, file: !3, line: 277, baseType: !27, size: 64, offset: 256)
!75 = !{!0}
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 67436544, elements: !89)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1172, size: 65856, elements: !78)
!78 = !{!79, !83, !84, !85, !86, !87, !88}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !77, file: !3, line: 1173, baseType: !80, size: 32768)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32768, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 4096)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "n_local_free_elemvertex", scope: !77, file: !3, line: 1175, baseType: !64, size: 64, offset: 32768)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "local_free_elemvertex", scope: !77, file: !3, line: 1176, baseType: !6, size: 64, offset: 32832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "n_local_free_edge", scope: !77, file: !3, line: 1177, baseType: !64, size: 64, offset: 32896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "local_free_edge", scope: !77, file: !3, line: 1178, baseType: !65, size: 64, offset: 32960)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lock_alloc_counter", scope: !77, file: !3, line: 1179, baseType: !64, size: 64, offset: 33024)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !77, file: !3, line: 1180, baseType: !80, size: 32768, offset: 33088)
!89 = !{!90}
!90 = !DISubrange(count: 1024)
!91 = !{i32 7, !"Dwarf Version", i32 5}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 7, !"PIC Level", i32 2}
!95 = !{i32 7, !"PIE Level", i32 2}
!96 = !{i32 7, !"uwtable", i32 2}
!97 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!98 = distinct !DISubprogram(name: "vector_length", scope: !3, file: !3, line: 1202, type: !99, scopeLine: 1203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!99 = !DISubroutineType(types: !100)
!100 = !{!5, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!102 = !{!103, !104, !106, !107}
!103 = !DILocalVariable(name: "v", arg: 1, scope: !98, file: !3, line: 1202, type: !101)
!104 = !DILocalVariable(name: "t0", scope: !98, file: !3, line: 1204, type: !105)
!105 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!106 = !DILocalVariable(name: "t1", scope: !98, file: !3, line: 1204, type: !105)
!107 = !DILocalVariable(name: "t2", scope: !98, file: !3, line: 1204, type: !105)
!108 = !DILocation(line: 0, scope: !98)
!109 = !DILocation(line: 1206, column: 13, scope: !98)
!110 = !DILocation(line: 1206, column: 15, scope: !98)
!111 = !DILocation(line: 1206, column: 10, scope: !98)
!112 = !DILocation(line: 1207, column: 13, scope: !98)
!113 = !DILocation(line: 1207, column: 15, scope: !98)
!114 = !DILocation(line: 1207, column: 10, scope: !98)
!115 = !DILocation(line: 1208, column: 13, scope: !98)
!116 = !DILocation(line: 1208, column: 15, scope: !98)
!117 = !DILocation(line: 1208, column: 10, scope: !98)
!118 = !DILocation(line: 1210, column: 22, scope: !98)
!119 = !DILocation(line: 1210, column: 27, scope: !98)
!120 = !DILocation(line: 1210, column: 13, scope: !98)
!121 = !DILocation(line: 1210, column: 11, scope: !98)
!122 = !DILocation(line: 1210, column: 5, scope: !98)
!123 = distinct !DISubprogram(name: "distance", scope: !3, file: !3, line: 1223, type: !124, scopeLine: 1224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!5, !101, !101}
!126 = !{!127, !128, !129}
!127 = !DILocalVariable(name: "p1", arg: 1, scope: !123, file: !3, line: 1223, type: !101)
!128 = !DILocalVariable(name: "p2", arg: 2, scope: !123, file: !3, line: 1223, type: !101)
!129 = !DILocalVariable(name: "v12", scope: !123, file: !3, line: 1225, type: !11)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 1225, column: 5, scope: !123)
!132 = !DILocation(line: 1225, column: 12, scope: !123)
!133 = !DILocation(line: 1227, column: 17, scope: !123)
!134 = !DILocation(line: 1227, column: 25, scope: !123)
!135 = !DILocation(line: 1227, column: 19, scope: !123)
!136 = !DILocation(line: 1227, column: 11, scope: !123)
!137 = !DILocation(line: 1228, column: 17, scope: !123)
!138 = !DILocation(line: 1228, column: 25, scope: !123)
!139 = !DILocation(line: 1228, column: 19, scope: !123)
!140 = !DILocation(line: 1228, column: 9, scope: !123)
!141 = !DILocation(line: 1228, column: 11, scope: !123)
!142 = !DILocation(line: 1229, column: 17, scope: !123)
!143 = !DILocation(line: 1229, column: 25, scope: !123)
!144 = !DILocation(line: 1229, column: 19, scope: !123)
!145 = !DILocation(line: 1229, column: 9, scope: !123)
!146 = !DILocation(line: 1229, column: 11, scope: !123)
!147 = !DILocation(line: 1231, column: 13, scope: !123)
!148 = !DILocation(line: 1232, column: 1, scope: !123)
!149 = !DILocation(line: 1231, column: 5, scope: !123)
!150 = distinct !DISubprogram(name: "normalize_vector", scope: !3, file: !3, line: 1243, type: !124, scopeLine: 1244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!151 = !{!152, !153, !154, !155}
!152 = !DILocalVariable(name: "v1", arg: 1, scope: !150, file: !3, line: 1243, type: !101)
!153 = !DILocalVariable(name: "v2", arg: 2, scope: !150, file: !3, line: 1243, type: !101)
!154 = !DILocalVariable(name: "t0", scope: !150, file: !3, line: 1245, type: !5)
!155 = !DILocalVariable(name: "length", scope: !150, file: !3, line: 1246, type: !5)
!156 = !DILocation(line: 0, scope: !150)
!157 = !DILocation(line: 1248, column: 14, scope: !150)
!158 = !DILocation(line: 1249, column: 21, scope: !150)
!159 = !DILocation(line: 1251, column: 17, scope: !150)
!160 = !DILocation(line: 1251, column: 19, scope: !150)
!161 = !DILocation(line: 1251, column: 11, scope: !150)
!162 = !DILocation(line: 1252, column: 17, scope: !150)
!163 = !DILocation(line: 1252, column: 19, scope: !150)
!164 = !DILocation(line: 1252, column: 9, scope: !150)
!165 = !DILocation(line: 1252, column: 11, scope: !150)
!166 = !DILocation(line: 1253, column: 17, scope: !150)
!167 = !DILocation(line: 1253, column: 19, scope: !150)
!168 = !DILocation(line: 1253, column: 9, scope: !150)
!169 = !DILocation(line: 1253, column: 11, scope: !150)
!170 = !DILocation(line: 1255, column: 5, scope: !150)
!171 = distinct !DISubprogram(name: "inner_product", scope: !3, file: !3, line: 1267, type: !124, scopeLine: 1268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173, !174, !175}
!173 = !DILocalVariable(name: "v1", arg: 1, scope: !171, file: !3, line: 1267, type: !101)
!174 = !DILocalVariable(name: "v2", arg: 2, scope: !171, file: !3, line: 1267, type: !101)
!175 = !DILocalVariable(name: "ip", scope: !171, file: !3, line: 1269, type: !5)
!176 = !DILocation(line: 0, scope: !171)
!177 = !DILocation(line: 1271, column: 15, scope: !171)
!178 = !DILocation(line: 1271, column: 23, scope: !171)
!179 = !DILocation(line: 1271, column: 17, scope: !171)
!180 = !DILocation(line: 1272, column: 15, scope: !171)
!181 = !DILocation(line: 1272, column: 23, scope: !171)
!182 = !DILocation(line: 1272, column: 8, scope: !171)
!183 = !DILocation(line: 1273, column: 15, scope: !171)
!184 = !DILocation(line: 1273, column: 23, scope: !171)
!185 = !DILocation(line: 1273, column: 8, scope: !171)
!186 = !DILocation(line: 1275, column: 5, scope: !171)
!187 = distinct !DISubprogram(name: "cross_product", scope: !3, file: !3, line: 1287, type: !188, scopeLine: 1288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !101, !101, !101}
!190 = !{!191, !192, !193}
!191 = !DILocalVariable(name: "vc", arg: 1, scope: !187, file: !3, line: 1287, type: !101)
!192 = !DILocalVariable(name: "v1", arg: 2, scope: !187, file: !3, line: 1287, type: !101)
!193 = !DILocalVariable(name: "v2", arg: 3, scope: !187, file: !3, line: 1287, type: !101)
!194 = !DILocation(line: 0, scope: !187)
!195 = !DILocation(line: 1289, column: 17, scope: !187)
!196 = !DILocation(line: 1289, column: 25, scope: !187)
!197 = !DILocation(line: 1289, column: 35, scope: !187)
!198 = !DILocation(line: 1289, column: 43, scope: !187)
!199 = !DILocation(line: 1289, column: 28, scope: !187)
!200 = !DILocation(line: 1289, column: 11, scope: !187)
!201 = !DILocation(line: 1290, column: 17, scope: !187)
!202 = !DILocation(line: 1290, column: 25, scope: !187)
!203 = !DILocation(line: 1290, column: 35, scope: !187)
!204 = !DILocation(line: 1290, column: 43, scope: !187)
!205 = !DILocation(line: 1290, column: 28, scope: !187)
!206 = !DILocation(line: 1290, column: 9, scope: !187)
!207 = !DILocation(line: 1290, column: 11, scope: !187)
!208 = !DILocation(line: 1291, column: 17, scope: !187)
!209 = !DILocation(line: 1291, column: 25, scope: !187)
!210 = !DILocation(line: 1291, column: 35, scope: !187)
!211 = !DILocation(line: 1291, column: 43, scope: !187)
!212 = !DILocation(line: 1291, column: 28, scope: !187)
!213 = !DILocation(line: 1291, column: 9, scope: !187)
!214 = !DILocation(line: 1291, column: 11, scope: !187)
!215 = !DILocation(line: 1292, column: 1, scope: !187)
!216 = distinct !DISubprogram(name: "plane_normal", scope: !3, file: !3, line: 1303, type: !217, scopeLine: 1304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!5, !101, !101, !101, !101}
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DILocalVariable(name: "vc", arg: 1, scope: !216, file: !3, line: 1303, type: !101)
!221 = !DILocalVariable(name: "p1", arg: 2, scope: !216, file: !3, line: 1303, type: !101)
!222 = !DILocalVariable(name: "p2", arg: 3, scope: !216, file: !3, line: 1303, type: !101)
!223 = !DILocalVariable(name: "p3", arg: 4, scope: !216, file: !3, line: 1303, type: !101)
!224 = !DILocalVariable(name: "v1", scope: !216, file: !3, line: 1305, type: !11)
!225 = !DILocalVariable(name: "v2", scope: !216, file: !3, line: 1305, type: !11)
!226 = !DILocation(line: 0, scope: !216)
!227 = !DILocation(line: 1305, column: 5, scope: !216)
!228 = !DILocation(line: 1305, column: 12, scope: !216)
!229 = !DILocation(line: 1305, column: 16, scope: !216)
!230 = !DILocation(line: 1308, column: 16, scope: !216)
!231 = !DILocation(line: 1308, column: 24, scope: !216)
!232 = !DILocation(line: 1308, column: 18, scope: !216)
!233 = !DILocation(line: 1308, column: 10, scope: !216)
!234 = !DILocation(line: 1309, column: 16, scope: !216)
!235 = !DILocation(line: 1309, column: 24, scope: !216)
!236 = !DILocation(line: 1309, column: 18, scope: !216)
!237 = !DILocation(line: 1309, column: 8, scope: !216)
!238 = !DILocation(line: 1309, column: 10, scope: !216)
!239 = !DILocation(line: 1310, column: 16, scope: !216)
!240 = !DILocation(line: 1310, column: 24, scope: !216)
!241 = !DILocation(line: 1310, column: 18, scope: !216)
!242 = !DILocation(line: 1310, column: 8, scope: !216)
!243 = !DILocation(line: 1310, column: 10, scope: !216)
!244 = !DILocation(line: 1312, column: 16, scope: !216)
!245 = !DILocation(line: 1312, column: 18, scope: !216)
!246 = !DILocation(line: 1312, column: 10, scope: !216)
!247 = !DILocation(line: 1313, column: 16, scope: !216)
!248 = !DILocation(line: 1313, column: 18, scope: !216)
!249 = !DILocation(line: 1313, column: 8, scope: !216)
!250 = !DILocation(line: 1313, column: 10, scope: !216)
!251 = !DILocation(line: 1314, column: 16, scope: !216)
!252 = !DILocation(line: 1314, column: 18, scope: !216)
!253 = !DILocation(line: 1314, column: 8, scope: !216)
!254 = !DILocation(line: 1314, column: 10, scope: !216)
!255 = !DILocation(line: 1317, column: 5, scope: !216)
!256 = !DILocation(line: 1318, column: 13, scope: !216)
!257 = !DILocation(line: 1319, column: 1, scope: !216)
!258 = !DILocation(line: 1318, column: 5, scope: !216)
!259 = distinct !DISubprogram(name: "center_point", scope: !3, file: !3, line: 1331, type: !260, scopeLine: 1332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !101, !101, !101, !101}
!262 = !{!263, !264, !265, !266}
!263 = !DILocalVariable(name: "p1", arg: 1, scope: !259, file: !3, line: 1331, type: !101)
!264 = !DILocalVariable(name: "p2", arg: 2, scope: !259, file: !3, line: 1331, type: !101)
!265 = !DILocalVariable(name: "p3", arg: 3, scope: !259, file: !3, line: 1331, type: !101)
!266 = !DILocalVariable(name: "pc", arg: 4, scope: !259, file: !3, line: 1331, type: !101)
!267 = !DILocation(line: 0, scope: !259)
!268 = !DILocation(line: 1335, column: 18, scope: !259)
!269 = !DILocation(line: 1335, column: 26, scope: !259)
!270 = !DILocation(line: 1335, column: 20, scope: !259)
!271 = !DILocation(line: 1335, column: 34, scope: !259)
!272 = !DILocation(line: 1335, column: 28, scope: !259)
!273 = !DILocation(line: 1335, column: 37, scope: !259)
!274 = !DILocation(line: 1335, column: 11, scope: !259)
!275 = !DILocation(line: 1336, column: 18, scope: !259)
!276 = !DILocation(line: 1336, column: 26, scope: !259)
!277 = !DILocation(line: 1336, column: 20, scope: !259)
!278 = !DILocation(line: 1336, column: 34, scope: !259)
!279 = !DILocation(line: 1336, column: 28, scope: !259)
!280 = !DILocation(line: 1336, column: 37, scope: !259)
!281 = !DILocation(line: 1336, column: 9, scope: !259)
!282 = !DILocation(line: 1336, column: 11, scope: !259)
!283 = !DILocation(line: 1337, column: 18, scope: !259)
!284 = !DILocation(line: 1337, column: 26, scope: !259)
!285 = !DILocation(line: 1337, column: 20, scope: !259)
!286 = !DILocation(line: 1337, column: 34, scope: !259)
!287 = !DILocation(line: 1337, column: 28, scope: !259)
!288 = !DILocation(line: 1337, column: 37, scope: !259)
!289 = !DILocation(line: 1337, column: 9, scope: !259)
!290 = !DILocation(line: 1337, column: 11, scope: !259)
!291 = !DILocation(line: 1338, column: 1, scope: !259)
!292 = distinct !DISubprogram(name: "four_center_points", scope: !3, file: !3, line: 1350, type: !293, scopeLine: 1351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !101, !101, !101, !101, !101, !101, !101}
!295 = !{!296, !297, !298, !299, !300, !301, !302}
!296 = !DILocalVariable(name: "p1", arg: 1, scope: !292, file: !3, line: 1350, type: !101)
!297 = !DILocalVariable(name: "p2", arg: 2, scope: !292, file: !3, line: 1350, type: !101)
!298 = !DILocalVariable(name: "p3", arg: 3, scope: !292, file: !3, line: 1350, type: !101)
!299 = !DILocalVariable(name: "pc", arg: 4, scope: !292, file: !3, line: 1350, type: !101)
!300 = !DILocalVariable(name: "pc1", arg: 5, scope: !292, file: !3, line: 1350, type: !101)
!301 = !DILocalVariable(name: "pc2", arg: 6, scope: !292, file: !3, line: 1350, type: !101)
!302 = !DILocalVariable(name: "pc3", arg: 7, scope: !292, file: !3, line: 1350, type: !101)
!303 = !DILocation(line: 0, scope: !292)
!304 = !DILocation(line: 1353, column: 19, scope: !292)
!305 = !DILocation(line: 1353, column: 27, scope: !292)
!306 = !DILocation(line: 1353, column: 21, scope: !292)
!307 = !DILocation(line: 1353, column: 35, scope: !292)
!308 = !DILocation(line: 1353, column: 29, scope: !292)
!309 = !DILocation(line: 1353, column: 38, scope: !292)
!310 = !DILocation(line: 1353, column: 12, scope: !292)
!311 = !DILocation(line: 1354, column: 19, scope: !292)
!312 = !DILocation(line: 1354, column: 27, scope: !292)
!313 = !DILocation(line: 1354, column: 21, scope: !292)
!314 = !DILocation(line: 1354, column: 35, scope: !292)
!315 = !DILocation(line: 1354, column: 29, scope: !292)
!316 = !DILocation(line: 1354, column: 38, scope: !292)
!317 = !DILocation(line: 1354, column: 9, scope: !292)
!318 = !DILocation(line: 1354, column: 12, scope: !292)
!319 = !DILocation(line: 1355, column: 19, scope: !292)
!320 = !DILocation(line: 1355, column: 27, scope: !292)
!321 = !DILocation(line: 1355, column: 21, scope: !292)
!322 = !DILocation(line: 1355, column: 35, scope: !292)
!323 = !DILocation(line: 1355, column: 29, scope: !292)
!324 = !DILocation(line: 1355, column: 38, scope: !292)
!325 = !DILocation(line: 1355, column: 9, scope: !292)
!326 = !DILocation(line: 1355, column: 12, scope: !292)
!327 = !DILocation(line: 1357, column: 19, scope: !292)
!328 = !DILocation(line: 1357, column: 31, scope: !292)
!329 = !DILocation(line: 1357, column: 25, scope: !292)
!330 = !DILocation(line: 1357, column: 39, scope: !292)
!331 = !DILocation(line: 1357, column: 33, scope: !292)
!332 = !DILocation(line: 1357, column: 42, scope: !292)
!333 = !DILocation(line: 1357, column: 12, scope: !292)
!334 = !DILocation(line: 1358, column: 19, scope: !292)
!335 = !DILocation(line: 1358, column: 31, scope: !292)
!336 = !DILocation(line: 1358, column: 25, scope: !292)
!337 = !DILocation(line: 1358, column: 39, scope: !292)
!338 = !DILocation(line: 1358, column: 33, scope: !292)
!339 = !DILocation(line: 1358, column: 42, scope: !292)
!340 = !DILocation(line: 1358, column: 10, scope: !292)
!341 = !DILocation(line: 1358, column: 12, scope: !292)
!342 = !DILocation(line: 1359, column: 19, scope: !292)
!343 = !DILocation(line: 1359, column: 31, scope: !292)
!344 = !DILocation(line: 1359, column: 25, scope: !292)
!345 = !DILocation(line: 1359, column: 39, scope: !292)
!346 = !DILocation(line: 1359, column: 33, scope: !292)
!347 = !DILocation(line: 1359, column: 42, scope: !292)
!348 = !DILocation(line: 1359, column: 10, scope: !292)
!349 = !DILocation(line: 1359, column: 12, scope: !292)
!350 = !DILocation(line: 1361, column: 19, scope: !292)
!351 = !DILocation(line: 1361, column: 27, scope: !292)
!352 = !DILocation(line: 1361, column: 21, scope: !292)
!353 = !DILocation(line: 1361, column: 39, scope: !292)
!354 = !DILocation(line: 1361, column: 33, scope: !292)
!355 = !DILocation(line: 1361, column: 42, scope: !292)
!356 = !DILocation(line: 1361, column: 12, scope: !292)
!357 = !DILocation(line: 1362, column: 19, scope: !292)
!358 = !DILocation(line: 1362, column: 27, scope: !292)
!359 = !DILocation(line: 1362, column: 21, scope: !292)
!360 = !DILocation(line: 1362, column: 39, scope: !292)
!361 = !DILocation(line: 1362, column: 33, scope: !292)
!362 = !DILocation(line: 1362, column: 42, scope: !292)
!363 = !DILocation(line: 1362, column: 10, scope: !292)
!364 = !DILocation(line: 1362, column: 12, scope: !292)
!365 = !DILocation(line: 1363, column: 19, scope: !292)
!366 = !DILocation(line: 1363, column: 27, scope: !292)
!367 = !DILocation(line: 1363, column: 21, scope: !292)
!368 = !DILocation(line: 1363, column: 39, scope: !292)
!369 = !DILocation(line: 1363, column: 33, scope: !292)
!370 = !DILocation(line: 1363, column: 42, scope: !292)
!371 = !DILocation(line: 1363, column: 10, scope: !292)
!372 = !DILocation(line: 1363, column: 12, scope: !292)
!373 = !DILocation(line: 1365, column: 19, scope: !292)
!374 = !DILocation(line: 1365, column: 27, scope: !292)
!375 = !DILocation(line: 1365, column: 21, scope: !292)
!376 = !DILocation(line: 1365, column: 35, scope: !292)
!377 = !DILocation(line: 1365, column: 29, scope: !292)
!378 = !DILocation(line: 1365, column: 42, scope: !292)
!379 = !DILocation(line: 1365, column: 12, scope: !292)
!380 = !DILocation(line: 1366, column: 19, scope: !292)
!381 = !DILocation(line: 1366, column: 27, scope: !292)
!382 = !DILocation(line: 1366, column: 21, scope: !292)
!383 = !DILocation(line: 1366, column: 35, scope: !292)
!384 = !DILocation(line: 1366, column: 29, scope: !292)
!385 = !DILocation(line: 1366, column: 42, scope: !292)
!386 = !DILocation(line: 1366, column: 10, scope: !292)
!387 = !DILocation(line: 1366, column: 12, scope: !292)
!388 = !DILocation(line: 1367, column: 19, scope: !292)
!389 = !DILocation(line: 1367, column: 27, scope: !292)
!390 = !DILocation(line: 1367, column: 21, scope: !292)
!391 = !DILocation(line: 1367, column: 35, scope: !292)
!392 = !DILocation(line: 1367, column: 29, scope: !292)
!393 = !DILocation(line: 1367, column: 42, scope: !292)
!394 = !DILocation(line: 1367, column: 10, scope: !292)
!395 = !DILocation(line: 1367, column: 12, scope: !292)
!396 = !DILocation(line: 1368, column: 1, scope: !292)
!397 = distinct !DISubprogram(name: "print_point", scope: !3, file: !3, line: 1379, type: !398, scopeLine: 1380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !101}
!400 = !{!401}
!401 = !DILocalVariable(name: "point", arg: 1, scope: !397, file: !3, line: 1379, type: !101)
!402 = !DILocation(line: 0, scope: !397)
!403 = !DILocation(line: 1381, column: 47, scope: !397)
!404 = !DILocation(line: 1381, column: 40, scope: !397)
!405 = !DILocation(line: 1381, column: 57, scope: !397)
!406 = !DILocation(line: 1381, column: 50, scope: !397)
!407 = !DILocation(line: 1381, column: 67, scope: !397)
!408 = !DILocation(line: 1381, column: 60, scope: !397)
!409 = !DILocation(line: 1381, column: 5, scope: !397)
!410 = !DILocation(line: 1382, column: 1, scope: !397)
!411 = distinct !DISubprogram(name: "print_rgb", scope: !3, file: !3, line: 1402, type: !412, scopeLine: 1403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!415 = !{!416}
!416 = !DILocalVariable(name: "rgb", arg: 1, scope: !411, file: !3, line: 1402, type: !414)
!417 = !DILocation(line: 0, scope: !411)
!418 = !DILocation(line: 1404, column: 47, scope: !411)
!419 = !DILocation(line: 1404, column: 42, scope: !411)
!420 = !DILocation(line: 1404, column: 55, scope: !411)
!421 = !DILocation(line: 1404, column: 50, scope: !411)
!422 = !DILocation(line: 1404, column: 63, scope: !411)
!423 = !DILocation(line: 1404, column: 58, scope: !411)
!424 = !DILocation(line: 1404, column: 5, scope: !411)
!425 = !DILocation(line: 1405, column: 1, scope: !411)
!426 = distinct !DISubprogram(name: "create_elemvertex", scope: !3, file: !3, line: 1425, type: !427, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!6, !101, !64}
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "p", arg: 1, scope: !426, file: !3, line: 1425, type: !101)
!431 = !DILocalVariable(name: "process_id", arg: 2, scope: !426, file: !3, line: 1425, type: !64)
!432 = !DILocalVariable(name: "ev_new", scope: !426, file: !3, line: 1427, type: !6)
!433 = !DILocation(line: 0, scope: !426)
!434 = !DILocation(line: 1429, column: 14, scope: !426)
!435 = !DILocation(line: 1430, column: 17, scope: !426)
!436 = !DILocation(line: 1432, column: 5, scope: !426)
!437 = distinct !DISubprogram(name: "get_elemvertex", scope: !3, file: !3, line: 1446, type: !438, scopeLine: 1447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !440)
!438 = !DISubroutineType(types: !439)
!439 = !{!6, !64}
!440 = !{!441, !442}
!441 = !DILocalVariable(name: "process_id", arg: 1, scope: !437, file: !3, line: 1446, type: !64)
!442 = !DILocalVariable(name: "ev", scope: !437, file: !3, line: 1448, type: !6)
!443 = !DILocation(line: 0, scope: !437)
!444 = !DILocation(line: 1450, column: 33, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 1450, column: 9)
!446 = !DILocation(line: 1450, column: 57, scope: !445)
!447 = !DILocation(line: 1450, column: 9, scope: !437)
!448 = !DILocation(line: 1452, column: 35, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 1452, column: 13)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 1451, column: 9)
!451 = !DILocation(line: 1452, column: 43, scope: !449)
!452 = !DILocation(line: 1452, column: 14, scope: !449)
!453 = !DILocation(line: 1453, column: 18, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 1453, column: 18)
!455 = !DILocation(line: 1453, column: 37, scope: !454)
!456 = !DILocation(line: 1453, column: 45, scope: !454)
!457 = !DILocation(line: 1453, column: 35, scope: !454)
!458 = !DILocation(line: 1454, column: 17, scope: !454)
!459 = !DILocation(line: 1453, column: 18, scope: !450)
!460 = !DILocation(line: 1456, column: 30, scope: !461)
!461 = distinct !DILexicalBlock(scope: !454, file: !3, line: 1455, column: 17)
!462 = !DILocation(line: 1456, column: 21, scope: !461)
!463 = !DILocation(line: 1457, column: 45, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1457, column: 21)
!465 = !DILocation(line: 1457, column: 53, scope: !464)
!466 = !DILocation(line: 1457, column: 22, scope: !464)
!467 = !DILocation(line: 1458, column: 21, scope: !461)
!468 = !DILocation(line: 1460, column: 61, scope: !450)
!469 = !DILocation(line: 1462, column: 28, scope: !450)
!470 = !DILocation(line: 1462, column: 52, scope: !450)
!471 = !DILocation(line: 1462, column: 20, scope: !450)
!472 = !DILocation(line: 1461, column: 37, scope: !450)
!473 = !DILocation(line: 1462, column: 17, scope: !450)
!474 = !DILocation(line: 1463, column: 37, scope: !450)
!475 = !DILocation(line: 1464, column: 45, scope: !476)
!476 = distinct !DILexicalBlock(scope: !450, file: !3, line: 1464, column: 13)
!477 = !DILocation(line: 1464, column: 14, scope: !476)
!478 = !DILocation(line: 1468, column: 52, scope: !437)
!479 = !DILocation(line: 1465, column: 9, scope: !450)
!480 = !DILocation(line: 1467, column: 34, scope: !437)
!481 = !DILocation(line: 1467, column: 55, scope: !437)
!482 = !DILocation(line: 1472, column: 9, scope: !437)
!483 = !DILocation(line: 1473, column: 16, scope: !437)
!484 = !DILocation(line: 1477, column: 5, scope: !437)
!485 = !DISubprogram(name: "pthread_mutex_lock", scope: !486, file: !486, line: 738, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !490)
!486 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!487 = !DISubroutineType(types: !488)
!488 = !{!41, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!490 = !{}
!491 = !DISubprogram(name: "pthread_mutex_unlock", scope: !486, file: !486, line: 756, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !490)
!492 = distinct !DISubprogram(name: "init_elemvertex", scope: !3, file: !3, line: 1491, type: !493, scopeLine: 1492, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !64}
!495 = !{!496, !497}
!496 = !DILocalVariable(name: "process_id", arg: 1, scope: !492, file: !3, line: 1491, type: !64)
!497 = !DILocalVariable(name: "ev_cnt", scope: !492, file: !3, line: 1493, type: !64)
!498 = !DILocation(line: 0, scope: !492)
!499 = !DILocation(line: 1495, column: 50, scope: !492)
!500 = !DILocation(line: 1495, column: 66, scope: !492)
!501 = !DILocation(line: 1495, column: 43, scope: !492)
!502 = !DILocation(line: 1495, column: 5, scope: !492)
!503 = !DILocation(line: 1495, column: 13, scope: !492)
!504 = !DILocation(line: 1495, column: 28, scope: !492)
!505 = !DILocation(line: 1499, column: 35, scope: !506)
!506 = distinct !DILexicalBlock(scope: !492, file: !3, line: 1499, column: 5)
!507 = !DILocation(line: 1499, column: 6, scope: !506)
!508 = !DILocation(line: 1500, column: 5, scope: !492)
!509 = !DILocation(line: 1500, column: 13, scope: !492)
!510 = !DILocation(line: 1500, column: 29, scope: !492)
!511 = !DILocation(line: 1503, column: 32, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 1503, column: 5)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 1503, column: 5)
!514 = !DILocation(line: 1503, column: 30, scope: !512)
!515 = !DILocation(line: 1503, column: 5, scope: !513)
!516 = !DILocation(line: 1505, column: 15, scope: !512)
!517 = !DILocation(line: 1504, column: 9, scope: !512)
!518 = !DILocation(line: 1504, column: 17, scope: !512)
!519 = !DILocation(line: 1504, column: 42, scope: !512)
!520 = !DILocation(line: 1505, column: 13, scope: !512)
!521 = !DILocation(line: 1503, column: 57, scope: !512)
!522 = distinct !{!522, !515, !523, !524, !525}
!523 = !DILocation(line: 1505, column: 62, scope: !513)
!524 = !{!"llvm.loop.mustprogress"}
!525 = !{!"llvm.loop.unroll.disable"}
!526 = !DILocation(line: 1508, column: 29, scope: !492)
!527 = !DILocation(line: 1509, column: 56, scope: !492)
!528 = !DILocation(line: 1510, column: 1, scope: !492)
!529 = !DISubprogram(name: "pthread_mutex_init", scope: !486, file: !486, line: 725, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !490)
!530 = !DISubroutineType(types: !531)
!531 = !{!41, !489, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !33, line: 36, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !33, line: 32, size: 32, elements: !536)
!536 = !{!537, !541}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !535, file: !33, line: 34, baseType: !538, size: 32)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 4)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !535, file: !33, line: 35, baseType: !41, size: 32)
!542 = distinct !DISubprogram(name: "get_sharedlock", scope: !3, file: !3, line: 1753, type: !543, scopeLine: 1754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!543 = !DISubroutineType(types: !544)
!544 = !{!27, !64, !64}
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(name: "segment", arg: 1, scope: !542, file: !3, line: 1753, type: !64)
!547 = !DILocalVariable(name: "process_id", arg: 2, scope: !542, file: !3, line: 1753, type: !64)
!548 = !DILocalVariable(name: "pshl", scope: !542, file: !3, line: 1755, type: !27)
!549 = !DILocalVariable(name: "effective_lock_ctr", scope: !542, file: !3, line: 1756, type: !64)
!550 = !DILocation(line: 0, scope: !542)
!551 = !DILocation(line: 1759, column: 5, scope: !542)
!552 = !DILocation(line: 1762, column: 58, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1760, column: 9)
!554 = !DILocation(line: 1762, column: 77, scope: !553)
!555 = !DILocation(line: 1763, column: 13, scope: !553)
!556 = !DILocation(line: 1765, column: 58, scope: !553)
!557 = !DILocation(line: 1765, column: 77, scope: !553)
!558 = !DILocation(line: 1766, column: 17, scope: !553)
!559 = !DILocation(line: 1767, column: 13, scope: !553)
!560 = !DILocation(line: 1769, column: 58, scope: !553)
!561 = !DILocation(line: 1770, column: 9, scope: !553)
!562 = !DILocation(line: 1777, column: 47, scope: !542)
!563 = !DILocation(line: 0, scope: !553)
!564 = !DILocation(line: 1774, column: 13, scope: !542)
!565 = !DILocation(line: 1777, column: 29, scope: !542)
!566 = !DILocation(line: 1778, column: 52, scope: !567)
!567 = distinct !DILexicalBlock(scope: !542, file: !3, line: 1778, column: 9)
!568 = !DILocation(line: 1778, column: 9, scope: !542)
!569 = !DILocation(line: 1781, column: 5, scope: !542)
!570 = distinct !DISubprogram(name: "foreach_leaf_edge", scope: !3, file: !3, line: 1534, type: !571, scopeLine: 1535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !65, !64, !573, !64, !64, !64}
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, null}
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584}
!577 = !DILocalVariable(name: "edge", arg: 1, scope: !570, file: !3, line: 1534, type: !65)
!578 = !DILocalVariable(name: "reverse", arg: 2, scope: !570, file: !3, line: 1534, type: !64)
!579 = !DILocalVariable(name: "func", arg: 3, scope: !570, file: !3, line: 1534, type: !573)
!580 = !DILocalVariable(name: "arg1", arg: 4, scope: !570, file: !3, line: 1534, type: !64)
!581 = !DILocalVariable(name: "arg2", arg: 5, scope: !570, file: !3, line: 1534, type: !64)
!582 = !DILocalVariable(name: "process_id", arg: 6, scope: !570, file: !3, line: 1534, type: !64)
!583 = !DILocalVariable(name: "first", scope: !570, file: !3, line: 1536, type: !65)
!584 = !DILocalVariable(name: "second", scope: !570, file: !3, line: 1536, type: !65)
!585 = !DILocation(line: 1545, column: 17, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !3, line: 1544, column: 9)
!587 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1541, column: 9)
!588 = !DILocation(line: 0, scope: !570)
!589 = !DILocation(line: 1538, column: 14, scope: !590)
!590 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1538, column: 9)
!591 = !DILocation(line: 1538, column: 9, scope: !570)
!592 = !DILocation(line: 1541, column: 16, scope: !587)
!593 = !DILocation(line: 1541, column: 19, scope: !587)
!594 = !DILocation(line: 0, scope: !587)
!595 = !DILocation(line: 1541, column: 25, scope: !587)
!596 = !DILocation(line: 1541, column: 9, scope: !570)
!597 = !DILocation(line: 1556, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !586, file: !3, line: 1555, column: 17)
!599 = !DILocation(line: 1557, column: 17, scope: !600)
!600 = distinct !DILexicalBlock(scope: !586, file: !3, line: 1557, column: 17)
!601 = !DILocation(line: 1557, column: 17, scope: !586)
!602 = !DILocation(line: 1542, column: 9, scope: !587)
!603 = !DILocation(line: 1555, column: 17, scope: !586)
!604 = !DILocation(line: 1560, column: 1, scope: !570)
!605 = distinct !DISubprogram(name: "create_edge", scope: !3, file: !3, line: 1571, type: !606, scopeLine: 1572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!65, !6, !6, !64}
!608 = !{!609, !610, !611, !612}
!609 = !DILocalVariable(name: "v1", arg: 1, scope: !605, file: !3, line: 1571, type: !6)
!610 = !DILocalVariable(name: "v2", arg: 2, scope: !605, file: !3, line: 1571, type: !6)
!611 = !DILocalVariable(name: "process_id", arg: 3, scope: !605, file: !3, line: 1571, type: !64)
!612 = !DILocalVariable(name: "enew", scope: !605, file: !3, line: 1573, type: !65)
!613 = !DILocation(line: 0, scope: !605)
!614 = !DILocation(line: 1575, column: 12, scope: !605)
!615 = !DILocation(line: 1576, column: 14, scope: !605)
!616 = !DILocation(line: 1577, column: 11, scope: !605)
!617 = !DILocation(line: 1577, column: 14, scope: !605)
!618 = !DILocation(line: 1578, column: 5, scope: !605)
!619 = distinct !DISubprogram(name: "get_edge", scope: !3, file: !3, line: 1643, type: !620, scopeLine: 1644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{!65, !64}
!622 = !{!623, !624}
!623 = !DILocalVariable(name: "process_id", arg: 1, scope: !619, file: !3, line: 1643, type: !64)
!624 = !DILocalVariable(name: "edge", scope: !619, file: !3, line: 1645, type: !65)
!625 = !DILocation(line: 0, scope: !619)
!626 = !DILocation(line: 1647, column: 33, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1647, column: 9)
!628 = !DILocation(line: 1647, column: 51, scope: !627)
!629 = !DILocation(line: 1647, column: 9, scope: !619)
!630 = !DILocation(line: 1649, column: 35, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 1649, column: 13)
!632 = distinct !DILexicalBlock(scope: !627, file: !3, line: 1648, column: 9)
!633 = !DILocation(line: 1649, column: 43, scope: !631)
!634 = !DILocation(line: 1649, column: 14, scope: !631)
!635 = !DILocation(line: 1650, column: 18, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !3, line: 1650, column: 18)
!637 = !DILocation(line: 1650, column: 30, scope: !636)
!638 = !DILocation(line: 1650, column: 38, scope: !636)
!639 = !DILocation(line: 1650, column: 28, scope: !636)
!640 = !DILocation(line: 1650, column: 48, scope: !636)
!641 = !DILocation(line: 1650, column: 18, scope: !632)
!642 = !DILocation(line: 1652, column: 30, scope: !643)
!643 = distinct !DILexicalBlock(scope: !636, file: !3, line: 1651, column: 17)
!644 = !DILocation(line: 1652, column: 21, scope: !643)
!645 = !DILocation(line: 1653, column: 45, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !3, line: 1653, column: 21)
!647 = !DILocation(line: 1653, column: 53, scope: !646)
!648 = !DILocation(line: 1653, column: 22, scope: !646)
!649 = !DILocation(line: 1654, column: 21, scope: !643)
!650 = !DILocation(line: 1656, column: 55, scope: !632)
!651 = !DILocation(line: 1658, column: 28, scope: !632)
!652 = !DILocation(line: 1658, column: 46, scope: !632)
!653 = !DILocation(line: 1658, column: 20, scope: !632)
!654 = !DILocation(line: 1657, column: 37, scope: !632)
!655 = !DILocation(line: 1658, column: 17, scope: !632)
!656 = !DILocation(line: 1659, column: 31, scope: !632)
!657 = !DILocation(line: 1660, column: 45, scope: !658)
!658 = distinct !DILexicalBlock(scope: !632, file: !3, line: 1660, column: 13)
!659 = !DILocation(line: 1660, column: 14, scope: !658)
!660 = !DILocation(line: 1664, column: 46, scope: !619)
!661 = !DILocation(line: 1661, column: 9, scope: !632)
!662 = !DILocation(line: 1663, column: 36, scope: !619)
!663 = !DILocation(line: 1663, column: 51, scope: !619)
!664 = !DILocation(line: 1669, column: 14, scope: !619)
!665 = !DILocation(line: 1673, column: 5, scope: !619)
!666 = distinct !DISubprogram(name: "subdivide_edge", scope: !3, file: !3, line: 1590, type: !667, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !65, !5, !64}
!669 = !{!670, !671, !672, !673, !674, !675, !676}
!670 = !DILocalVariable(name: "e", arg: 1, scope: !666, file: !3, line: 1590, type: !65)
!671 = !DILocalVariable(name: "a_ratio", arg: 2, scope: !666, file: !3, line: 1590, type: !5)
!672 = !DILocalVariable(name: "process_id", arg: 3, scope: !666, file: !3, line: 1590, type: !64)
!673 = !DILocalVariable(name: "enew", scope: !666, file: !3, line: 1592, type: !65)
!674 = !DILocalVariable(name: "e_am", scope: !666, file: !3, line: 1592, type: !65)
!675 = !DILocalVariable(name: "ev_middle", scope: !666, file: !3, line: 1593, type: !6)
!676 = !DILocalVariable(name: "b_ratio", scope: !666, file: !3, line: 1594, type: !5)
!677 = !DILocation(line: 0, scope: !666)
!678 = !DILocation(line: 1597, column: 30, scope: !679)
!679 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1597, column: 5)
!680 = !DILocation(line: 1597, column: 6, scope: !679)
!681 = !DILocation(line: 1600, column: 11, scope: !682)
!682 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1600, column: 9)
!683 = !DILocation(line: 1600, column: 9, scope: !666)
!684 = !DILocation(line: 1607, column: 26, scope: !666)
!685 = !DILocation(line: 1608, column: 17, scope: !666)
!686 = !DILocation(line: 1609, column: 35, scope: !666)
!687 = !DILocation(line: 1609, column: 41, scope: !666)
!688 = !DILocation(line: 1609, column: 58, scope: !666)
!689 = !DILocation(line: 1609, column: 64, scope: !666)
!690 = !DILocation(line: 1609, column: 53, scope: !666)
!691 = !DILocation(line: 1609, column: 43, scope: !666)
!692 = !DILocation(line: 1609, column: 20, scope: !666)
!693 = !DILocation(line: 1610, column: 35, scope: !666)
!694 = !DILocation(line: 1610, column: 41, scope: !666)
!695 = !DILocation(line: 1610, column: 58, scope: !666)
!696 = !DILocation(line: 1610, column: 64, scope: !666)
!697 = !DILocation(line: 1610, column: 53, scope: !666)
!698 = !DILocation(line: 1610, column: 43, scope: !666)
!699 = !DILocation(line: 1610, column: 18, scope: !666)
!700 = !DILocation(line: 1610, column: 20, scope: !666)
!701 = !DILocation(line: 1611, column: 35, scope: !666)
!702 = !DILocation(line: 1611, column: 41, scope: !666)
!703 = !DILocation(line: 1611, column: 58, scope: !666)
!704 = !DILocation(line: 1611, column: 64, scope: !666)
!705 = !DILocation(line: 1611, column: 53, scope: !666)
!706 = !DILocation(line: 1611, column: 43, scope: !666)
!707 = !DILocation(line: 1611, column: 18, scope: !666)
!708 = !DILocation(line: 1611, column: 20, scope: !666)
!709 = !DILocation(line: 1614, column: 12, scope: !666)
!710 = !DILocation(line: 1616, column: 19, scope: !666)
!711 = !DILocation(line: 1616, column: 14, scope: !666)
!712 = !DILocation(line: 1617, column: 11, scope: !666)
!713 = !DILocation(line: 1617, column: 14, scope: !666)
!714 = !DILocation(line: 1620, column: 12, scope: !666)
!715 = !DILocation(line: 1621, column: 14, scope: !666)
!716 = !DILocation(line: 1622, column: 19, scope: !666)
!717 = !DILocation(line: 1622, column: 11, scope: !666)
!718 = !DILocation(line: 1622, column: 14, scope: !666)
!719 = !DILocation(line: 1623, column: 8, scope: !666)
!720 = !DILocation(line: 1623, column: 11, scope: !666)
!721 = !DILocation(line: 1626, column: 11, scope: !666)
!722 = !DILocation(line: 1630, column: 1, scope: !666)
!723 = distinct !DISubprogram(name: "init_edge", scope: !3, file: !3, line: 1687, type: !493, scopeLine: 1688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !724)
!724 = !{!725, !726}
!725 = !DILocalVariable(name: "process_id", arg: 1, scope: !723, file: !3, line: 1687, type: !64)
!726 = !DILocalVariable(name: "edge_cnt", scope: !723, file: !3, line: 1689, type: !64)
!727 = !DILocation(line: 0, scope: !723)
!728 = !DILocation(line: 1691, column: 38, scope: !723)
!729 = !DILocation(line: 1691, column: 47, scope: !723)
!730 = !DILocation(line: 1691, column: 31, scope: !723)
!731 = !DILocation(line: 1691, column: 5, scope: !723)
!732 = !DILocation(line: 1691, column: 13, scope: !723)
!733 = !DILocation(line: 1691, column: 22, scope: !723)
!734 = !DILocation(line: 1695, column: 35, scope: !735)
!735 = distinct !DILexicalBlock(scope: !723, file: !3, line: 1695, column: 5)
!736 = !DILocation(line: 1695, column: 6, scope: !735)
!737 = !DILocation(line: 1696, column: 5, scope: !723)
!738 = !DILocation(line: 1696, column: 13, scope: !723)
!739 = !DILocation(line: 1696, column: 23, scope: !723)
!740 = !DILocation(line: 1699, column: 36, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1699, column: 5)
!742 = distinct !DILexicalBlock(scope: !723, file: !3, line: 1699, column: 5)
!743 = !DILocation(line: 1699, column: 34, scope: !741)
!744 = !DILocation(line: 1699, column: 5, scope: !742)
!745 = !DILocation(line: 1701, column: 15, scope: !741)
!746 = !DILocation(line: 1700, column: 9, scope: !741)
!747 = !DILocation(line: 1700, column: 17, scope: !741)
!748 = !DILocation(line: 1700, column: 38, scope: !741)
!749 = !DILocation(line: 1701, column: 13, scope: !741)
!750 = !DILocation(line: 1699, column: 56, scope: !741)
!751 = distinct !{!751, !744, !752, !524, !525}
!752 = !DILocation(line: 1701, column: 60, scope: !742)
!753 = !DILocation(line: 1704, column: 29, scope: !723)
!754 = !DILocation(line: 1705, column: 50, scope: !723)
!755 = !DILocation(line: 1706, column: 1, scope: !723)
!756 = distinct !DISubprogram(name: "init_sharedlock", scope: !3, file: !3, line: 1730, type: !493, scopeLine: 1731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !757)
!757 = !{!758, !759}
!758 = !DILocalVariable(name: "process_id", arg: 1, scope: !756, file: !3, line: 1730, type: !64)
!759 = !DILocalVariable(name: "i", scope: !756, file: !3, line: 1732, type: !64)
!760 = !DILocation(line: 0, scope: !756)
!761 = !DILocation(line: 1734, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !756, file: !3, line: 1734, column: 5)
!763 = !DILocation(line: 1736, column: 35, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 1736, column: 13)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 1735, column: 9)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 1734, column: 5)
!767 = !DILocation(line: 1736, column: 14, scope: !764)
!768 = !DILocation(line: 1734, column: 41, scope: !766)
!769 = !DILocation(line: 1734, column: 20, scope: !766)
!770 = distinct !{!770, !761, !771, !524, !525}
!771 = !DILocation(line: 1737, column: 9, scope: !762)
!772 = !DILocation(line: 1739, column: 29, scope: !756)
!773 = !DILocation(line: 1739, column: 48, scope: !756)
!774 = !DILocation(line: 1740, column: 1, scope: !756)
