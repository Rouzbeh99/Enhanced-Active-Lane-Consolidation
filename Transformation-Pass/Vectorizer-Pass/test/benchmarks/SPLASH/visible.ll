; ModuleID = 'visible.c'
source_filename = "visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v_struct = type { [4096 x i8], ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.Vertex, i64, i64, [16 x %struct.Ray], [16 x %struct.Vertex], i64, [2 x ptr], [4096 x i8] }
%struct.Vertex = type { float, float, float }
%struct.Ray = type { float, float, float }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.PlaneEqu = type { %struct.Vertex, float }
%struct.Rgb = type { float, float, float }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._interact = type { ptr, ptr, float, float, float, float }

@rand_ray1 = dso_local local_unnamed_addr global [16 x [2 x float]] zeroinitializer, align 16, !dbg !0
@rand_ray2 = dso_local local_unnamed_addr global [16 x [2 x float]] zeroinitializer, align 16, !dbg !15
@vis_struct = dso_local global [1024 x %struct.v_struct] zeroinitializer, align 16, !dbg !21

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @init_visibility_module(i64 noundef %process_id) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !195, metadata !DIExpression()), !dbg !196
  store float 0x3FB5555560000000, ptr @rand_ray1, align 16, !dbg !197
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 0, i64 1), align 4, !dbg !198
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 1), align 8, !dbg !199
  store float 0x3FEAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 1, i64 1), align 4, !dbg !200
  store float 0x3FEAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 2), align 16, !dbg !201
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 2, i64 1), align 4, !dbg !202
  store float 0x3FB5555560000000, ptr @rand_ray2, align 16, !dbg !203
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 0, i64 1), align 4, !dbg !204
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 1), align 8, !dbg !205
  store float 0x3FEAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 1, i64 1), align 4, !dbg !206
  store float 0x3FEAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 2), align 16, !dbg !207
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 2, i64 1), align 4, !dbg !208
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 3), align 8, !dbg !209
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 3, i64 1), align 4, !dbg !210
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 4), align 16, !dbg !211
  store float 0x3FE5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 4, i64 1), align 4, !dbg !212
  store float 0x3FE5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 5), align 8, !dbg !213
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 5, i64 1), align 4, !dbg !214
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 4), align 16, !dbg !215
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 4, i64 1), align 4, !dbg !216
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 5), align 8, !dbg !217
  store float 0x3FE5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 5, i64 1), align 4, !dbg !218
  store float 0x3FE5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 3), align 8, !dbg !219
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 3, i64 1), align 4, !dbg !220
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 6), align 16, !dbg !221
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 6, i64 1), align 4, !dbg !222
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 7), align 8, !dbg !223
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 7, i64 1), align 4, !dbg !224
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 8), align 16, !dbg !225
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 8, i64 1), align 4, !dbg !226
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 8), align 16, !dbg !227
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 8, i64 1), align 4, !dbg !228
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 6), align 16, !dbg !229
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 6, i64 1), align 4, !dbg !230
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 7), align 8, !dbg !231
  store float 0x3FC5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 7, i64 1), align 4, !dbg !232
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 9), align 8, !dbg !233
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 9, i64 1), align 4, !dbg !234
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 9), align 8, !dbg !235
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 9, i64 1), align 4, !dbg !236
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 10), align 16, !dbg !237
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 10, i64 1), align 4, !dbg !238
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 11), align 8, !dbg !239
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 11, i64 1), align 4, !dbg !240
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 12), align 16, !dbg !241
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 12, i64 1), align 4, !dbg !242
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 12), align 16, !dbg !243
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 12, i64 1), align 4, !dbg !244
  store float 0x3FDAAAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 10), align 16, !dbg !245
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 10, i64 1), align 4, !dbg !246
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 11), align 8, !dbg !247
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 11, i64 1), align 4, !dbg !248
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 13), align 8, !dbg !249
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 13, i64 1), align 4, !dbg !250
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 14), align 16, !dbg !251
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 14, i64 1), align 4, !dbg !252
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 15), align 8, !dbg !253
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray1, i64 0, i64 15, i64 1), align 4, !dbg !254
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 14), align 16, !dbg !255
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 14, i64 1), align 4, !dbg !256
  store float 0x3FD5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 15), align 8, !dbg !257
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 15, i64 1), align 4, !dbg !258
  store float 0x3FE2AAAAA0000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 13), align 8, !dbg !259
  store float 0x3FB5555560000000, ptr getelementptr inbounds ([16 x [2 x float]], ptr @rand_ray2, i64 0, i64 13, i64 1), align 4, !dbg !260
  tail call void @init_patch_cache(i64 noundef %process_id), !dbg !261
  ret void, !dbg !262
}

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly uwtable
define dso_local void @init_patch_cache(i64 noundef %process_id) local_unnamed_addr #0 !dbg !263 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !265, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i64 0, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = mul nsw i64 %process_id, 8704, !dbg !268
  %1 = add nsw i64 %0, 4592, !dbg !268
  %uglygep = getelementptr i8, ptr @vis_struct, i64 %1, !dbg !268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !dbg !270
  call void @llvm.dbg.value(metadata i32 undef, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 undef, metadata !266, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !267
  ret void, !dbg !272
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @get_test_rays(ptr nocapture noundef %p_src, ptr nocapture noundef writeonly %v, i64 noundef %no, i64 noundef %process_id) local_unnamed_addr #1 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !278, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata ptr %v, metadata !279, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %no, metadata !280, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !281, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 undef, metadata !280, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 0, metadata !282, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !278, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata ptr %v, metadata !279, metadata !DIExpression()), !dbg !287
  %cmp1115 = icmp sgt i64 %no, 0, !dbg !288
  br i1 %cmp1115, label %for.body.lr.ph, label %for.end, !dbg !291

for.body.lr.ph:                                   ; preds = %entry
  %0 = tail call i64 @llvm.smin.i64(i64 %no, i64 16), !dbg !292
  call void @llvm.dbg.value(metadata i64 %0, metadata !280, metadata !DIExpression()), !dbg !287
  %v_src_p1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3
  %v_src_v12 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5
  %v_src_v13 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6
  %y = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3, i32 1
  %y15 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5, i32 1
  %y18 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6, i32 1
  %z = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3, i32 2
  %z24 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5, i32 2
  %z27 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6, i32 2
  %v_dest_p1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4
  %v_dest_v12 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7
  %v_dest_v13 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8
  %y42 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4, i32 1
  %y45 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7, i32 1
  %y48 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8, i32 1
  %z52 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4, i32 2
  %z55 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7, i32 2
  %z58 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8, i32 2
  br label %for.body, !dbg !291

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %p_src.addr.0119 = phi ptr [ %p_src, %for.body.lr.ph ], [ %incdec.ptr, %for.body ]
  %v.addr.0118 = phi ptr [ %v, %for.body.lr.ph ], [ %incdec.ptr71, %for.body ]
  %g_index.0117 = phi i64 [ 0, %for.body.lr.ph ], [ %inc72, %for.body ]
  call void @llvm.dbg.value(metadata ptr %p_src.addr.0119, metadata !278, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata ptr %v.addr.0118, metadata !279, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %g_index.0117, metadata !282, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %g_index.0117, metadata !283, metadata !DIExpression()), !dbg !287
  %arrayidx = getelementptr inbounds [16 x [2 x float]], ptr @rand_ray1, i64 0, i64 %g_index.0117, !dbg !293
  %1 = load float, ptr %arrayidx, align 8, !dbg !293
  call void @llvm.dbg.value(metadata float %1, metadata !285, metadata !DIExpression()), !dbg !287
  %arrayidx4 = getelementptr inbounds [16 x [2 x float]], ptr @rand_ray1, i64 0, i64 %g_index.0117, i64 1, !dbg !295
  %2 = load float, ptr %arrayidx4, align 4, !dbg !295
  call void @llvm.dbg.value(metadata float %2, metadata !286, metadata !DIExpression()), !dbg !287
  %3 = load float, ptr %v_src_p1, align 16, !dbg !296
  %4 = load float, ptr %v_src_v12, align 8, !dbg !297
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %1, float %3), !dbg !298
  %6 = load float, ptr %v_src_v13, align 4, !dbg !299
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %2, float %5), !dbg !300
  store float %7, ptr %p_src.addr.0119, align 4, !dbg !301
  %8 = load float, ptr %y, align 4, !dbg !302
  %9 = load float, ptr %y15, align 4, !dbg !303
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %1, float %8), !dbg !304
  %11 = load float, ptr %y18, align 8, !dbg !305
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %2, float %10), !dbg !306
  %y19 = getelementptr inbounds %struct.Vertex, ptr %p_src.addr.0119, i64 0, i32 1, !dbg !307
  store float %12, ptr %y19, align 4, !dbg !308
  %13 = load float, ptr %z, align 8, !dbg !309
  %14 = load float, ptr %z24, align 16, !dbg !310
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %1, float %13), !dbg !311
  %16 = load float, ptr %z27, align 4, !dbg !312
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %2, float %15), !dbg !313
  %z28 = getelementptr inbounds %struct.Vertex, ptr %p_src.addr.0119, i64 0, i32 2, !dbg !314
  store float %17, ptr %z28, align 4, !dbg !315
  %arrayidx29 = getelementptr inbounds [16 x [2 x float]], ptr @rand_ray2, i64 0, i64 %g_index.0117, !dbg !316
  %18 = load float, ptr %arrayidx29, align 8, !dbg !316
  call void @llvm.dbg.value(metadata float %18, metadata !285, metadata !DIExpression()), !dbg !287
  %arrayidx32 = getelementptr inbounds [16 x [2 x float]], ptr @rand_ray2, i64 0, i64 %g_index.0117, i64 1, !dbg !317
  %19 = load float, ptr %arrayidx32, align 4, !dbg !317
  call void @llvm.dbg.value(metadata float %19, metadata !286, metadata !DIExpression()), !dbg !287
  %20 = load float, ptr %v_dest_p1, align 4, !dbg !318
  %21 = load float, ptr %v_dest_v12, align 16, !dbg !319
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %18, float %20), !dbg !320
  %23 = load float, ptr %v_dest_v13, align 4, !dbg !321
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %19, float %22), !dbg !322
  call void @llvm.dbg.value(metadata float %24, metadata !284, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !287
  %25 = load float, ptr %y42, align 16, !dbg !323
  %26 = load float, ptr %y45, align 4, !dbg !324
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %18, float %25), !dbg !325
  %28 = load float, ptr %y48, align 16, !dbg !326
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %19, float %27), !dbg !327
  call void @llvm.dbg.value(metadata float %29, metadata !284, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !287
  %30 = load float, ptr %z52, align 4, !dbg !328
  %31 = load float, ptr %z55, align 8, !dbg !329
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %18, float %30), !dbg !330
  %33 = load float, ptr %z58, align 4, !dbg !331
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %19, float %32), !dbg !332
  call void @llvm.dbg.value(metadata float %34, metadata !284, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !287
  %sub = fsub float %24, %7, !dbg !333
  store float %sub, ptr %v.addr.0118, align 4, !dbg !334
  %35 = load float, ptr %y19, align 4, !dbg !335
  %sub65 = fsub float %29, %35, !dbg !336
  %y66 = getelementptr inbounds %struct.Ray, ptr %v.addr.0118, i64 0, i32 1, !dbg !337
  store float %sub65, ptr %y66, align 4, !dbg !338
  %36 = load float, ptr %z28, align 4, !dbg !339
  %sub69 = fsub float %34, %36, !dbg !340
  %z70 = getelementptr inbounds %struct.Ray, ptr %v.addr.0118, i64 0, i32 2, !dbg !341
  store float %sub69, ptr %z70, align 4, !dbg !342
  %incdec.ptr = getelementptr inbounds %struct.Vertex, ptr %p_src.addr.0119, i64 1, !dbg !343
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !278, metadata !DIExpression()), !dbg !287
  %incdec.ptr71 = getelementptr inbounds %struct.Ray, ptr %v.addr.0118, i64 1, !dbg !344
  call void @llvm.dbg.value(metadata ptr %incdec.ptr71, metadata !279, metadata !DIExpression()), !dbg !287
  %inc72 = add nuw nsw i64 %g_index.0117, 1, !dbg !345
  call void @llvm.dbg.value(metadata i64 %inc72, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i64 %inc72, metadata !282, metadata !DIExpression()), !dbg !287
  %exitcond.not = icmp eq i64 %inc72, %0, !dbg !288
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !291, !llvm.loop !346

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !350
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i64 @v_intersect(ptr noundef readonly %patch, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ray, float noundef %t) local_unnamed_addr #4 !dbg !351 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !355, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %p, metadata !356, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata ptr %ray, metadata !357, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %t, metadata !358, metadata !DIExpression()), !dbg !382
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !383
  %0 = load float, ptr %plane_equ, align 4, !dbg !384
  call void @llvm.dbg.value(metadata float %0, metadata !362, metadata !DIExpression()), !dbg !382
  %y7 = getelementptr inbounds %struct.Vertex, ptr %plane_equ, i64 0, i32 1, !dbg !385
  %1 = load float, ptr %y7, align 4, !dbg !385
  call void @llvm.dbg.value(metadata float %1, metadata !363, metadata !DIExpression()), !dbg !382
  %z = getelementptr inbounds %struct.Vertex, ptr %plane_equ, i64 0, i32 2, !dbg !386
  %2 = load float, ptr %z, align 4, !dbg !386
  call void @llvm.dbg.value(metadata float %2, metadata !364, metadata !DIExpression()), !dbg !382
  %3 = load float, ptr %ray, align 4, !dbg !387
  call void @llvm.dbg.value(metadata float %3, metadata !365, metadata !DIExpression()), !dbg !382
  %y11 = getelementptr inbounds %struct.Ray, ptr %ray, i64 0, i32 1, !dbg !388
  %4 = load float, ptr %y11, align 4, !dbg !388
  call void @llvm.dbg.value(metadata float %4, metadata !366, metadata !DIExpression()), !dbg !382
  %z12 = getelementptr inbounds %struct.Ray, ptr %ray, i64 0, i32 2, !dbg !389
  %5 = load float, ptr %z12, align 4, !dbg !389
  call void @llvm.dbg.value(metadata float %5, metadata !367, metadata !DIExpression()), !dbg !382
  %6 = load float, ptr %p, align 4, !dbg !390
  call void @llvm.dbg.value(metadata float %6, metadata !359, metadata !DIExpression()), !dbg !382
  %y14 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 1, !dbg !391
  %7 = load float, ptr %y14, align 4, !dbg !391
  call void @llvm.dbg.value(metadata float %7, metadata !360, metadata !DIExpression()), !dbg !382
  %z15 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 2, !dbg !392
  %8 = load float, ptr %z15, align 4, !dbg !392
  call void @llvm.dbg.value(metadata float %8, metadata !361, metadata !DIExpression()), !dbg !382
  %cmp = fcmp olt float %0, 0.000000e+00, !dbg !393
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !393

cond.true:                                        ; preds = %entry
  %fneg = fneg float %0, !dbg !393
  br label %cond.end, !dbg !393

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi float [ %fneg, %cond.true ], [ %0, %entry ], !dbg !393
  call void @llvm.dbg.value(metadata float %cond, metadata !376, metadata !DIExpression()), !dbg !382
  %cmp16 = fcmp olt float %1, 0.000000e+00, !dbg !394
  br i1 %cmp16, label %cond.true17, label %cond.end20, !dbg !394

cond.true17:                                      ; preds = %cond.end
  %fneg18 = fneg float %1, !dbg !394
  br label %cond.end20, !dbg !394

cond.end20:                                       ; preds = %cond.end, %cond.true17
  %cond21 = phi float [ %fneg18, %cond.true17 ], [ %1, %cond.end ], !dbg !394
  call void @llvm.dbg.value(metadata float %cond21, metadata !377, metadata !DIExpression()), !dbg !382
  %cmp22 = fcmp olt float %2, 0.000000e+00, !dbg !395
  br i1 %cmp22, label %cond.true23, label %cond.end26, !dbg !395

cond.true23:                                      ; preds = %cond.end20
  %fneg24 = fneg float %2, !dbg !395
  br label %cond.end26, !dbg !395

cond.end26:                                       ; preds = %cond.end20, %cond.true23
  %cond27 = phi float [ %fneg24, %cond.true23 ], [ %2, %cond.end20 ], !dbg !395
  call void @llvm.dbg.value(metadata float %cond27, metadata !378, metadata !DIExpression()), !dbg !382
  %cmp28 = fcmp ogt float %cond, %cond21, !dbg !396
  br i1 %cmp28, label %if.then, label %if.else52, !dbg !398

if.then:                                          ; preds = %cond.end26
  %cmp29 = fcmp ogt float %cond, %cond27, !dbg !399
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !401

if.then30:                                        ; preds = %if.then
  %9 = tail call float @llvm.fmuladd.f32(float %t, float %4, float %7), !dbg !402
  call void @llvm.dbg.value(metadata float %9, metadata !368, metadata !DIExpression()), !dbg !382
  %10 = tail call float @llvm.fmuladd.f32(float %t, float %5, float %8), !dbg !404
  call void @llvm.dbg.value(metadata float %10, metadata !369, metadata !DIExpression()), !dbg !382
  %y31 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, i32 1, !dbg !405
  call void @llvm.dbg.value(metadata float undef, metadata !370, metadata !DIExpression()), !dbg !382
  %z33 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, i32 2, !dbg !406
  call void @llvm.dbg.value(metadata float undef, metadata !373, metadata !DIExpression()), !dbg !382
  %y34 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, i32 1, !dbg !407
  call void @llvm.dbg.value(metadata float undef, metadata !371, metadata !DIExpression()), !dbg !382
  %z36 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, i32 2, !dbg !408
  call void @llvm.dbg.value(metadata float undef, metadata !374, metadata !DIExpression()), !dbg !382
  %y37 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, i32 1, !dbg !409
  call void @llvm.dbg.value(metadata float undef, metadata !372, metadata !DIExpression()), !dbg !382
  %z39 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, i32 2, !dbg !410
  call void @llvm.dbg.value(metadata float undef, metadata !375, metadata !DIExpression()), !dbg !382
  br label %if.end81, !dbg !411

if.else:                                          ; preds = %if.then
  %11 = tail call float @llvm.fmuladd.f32(float %t, float %3, float %6), !dbg !412
  call void @llvm.dbg.value(metadata float %11, metadata !368, metadata !DIExpression()), !dbg !382
  %12 = tail call float @llvm.fmuladd.f32(float %t, float %4, float %7), !dbg !414
  call void @llvm.dbg.value(metadata float %12, metadata !369, metadata !DIExpression()), !dbg !382
  %p140 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !415
  call void @llvm.dbg.value(metadata float undef, metadata !370, metadata !DIExpression()), !dbg !382
  %y43 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, i32 1, !dbg !416
  call void @llvm.dbg.value(metadata float undef, metadata !373, metadata !DIExpression()), !dbg !382
  %p244 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !417
  call void @llvm.dbg.value(metadata float undef, metadata !371, metadata !DIExpression()), !dbg !382
  %y47 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, i32 1, !dbg !418
  call void @llvm.dbg.value(metadata float undef, metadata !374, metadata !DIExpression()), !dbg !382
  %p348 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !419
  call void @llvm.dbg.value(metadata float undef, metadata !372, metadata !DIExpression()), !dbg !382
  %y51 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, i32 1, !dbg !420
  call void @llvm.dbg.value(metadata float undef, metadata !375, metadata !DIExpression()), !dbg !382
  br label %if.end81

if.else52:                                        ; preds = %cond.end26
  %cmp53 = fcmp ogt float %cond21, %cond27, !dbg !421
  %13 = tail call float @llvm.fmuladd.f32(float %t, float %3, float %6), !dbg !423
  call void @llvm.dbg.value(metadata float %13, metadata !368, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %13, metadata !368, metadata !DIExpression()), !dbg !382
  br i1 %cmp53, label %if.then54, label %if.else67, !dbg !424

if.then54:                                        ; preds = %if.else52
  %14 = tail call float @llvm.fmuladd.f32(float %t, float %5, float %8), !dbg !425
  call void @llvm.dbg.value(metadata float %14, metadata !369, metadata !DIExpression()), !dbg !382
  %p155 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !427
  call void @llvm.dbg.value(metadata float undef, metadata !370, metadata !DIExpression()), !dbg !382
  %z58 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, i32 2, !dbg !428
  call void @llvm.dbg.value(metadata float undef, metadata !373, metadata !DIExpression()), !dbg !382
  %p259 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !429
  call void @llvm.dbg.value(metadata float undef, metadata !371, metadata !DIExpression()), !dbg !382
  %z62 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, i32 2, !dbg !430
  call void @llvm.dbg.value(metadata float undef, metadata !374, metadata !DIExpression()), !dbg !382
  %p363 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !431
  call void @llvm.dbg.value(metadata float undef, metadata !372, metadata !DIExpression()), !dbg !382
  %z66 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, i32 2, !dbg !432
  call void @llvm.dbg.value(metadata float undef, metadata !375, metadata !DIExpression()), !dbg !382
  br label %if.end81, !dbg !433

if.else67:                                        ; preds = %if.else52
  %15 = tail call float @llvm.fmuladd.f32(float %t, float %4, float %7), !dbg !434
  call void @llvm.dbg.value(metadata float %15, metadata !369, metadata !DIExpression()), !dbg !382
  %p168 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, !dbg !436
  call void @llvm.dbg.value(metadata float undef, metadata !370, metadata !DIExpression()), !dbg !382
  %y71 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 6, i32 1, !dbg !437
  call void @llvm.dbg.value(metadata float undef, metadata !373, metadata !DIExpression()), !dbg !382
  %p272 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, !dbg !438
  call void @llvm.dbg.value(metadata float undef, metadata !371, metadata !DIExpression()), !dbg !382
  %y75 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 7, i32 1, !dbg !439
  call void @llvm.dbg.value(metadata float undef, metadata !374, metadata !DIExpression()), !dbg !382
  %p376 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, !dbg !440
  call void @llvm.dbg.value(metadata float undef, metadata !372, metadata !DIExpression()), !dbg !382
  %y79 = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 8, i32 1, !dbg !441
  call void @llvm.dbg.value(metadata float undef, metadata !375, metadata !DIExpression()), !dbg !382
  br label %if.end81

if.end81:                                         ; preds = %if.then54, %if.else67, %if.then30, %if.else
  %x1.0.in = phi ptr [ %y31, %if.then30 ], [ %p140, %if.else ], [ %p155, %if.then54 ], [ %p168, %if.else67 ]
  %x2.0.in = phi ptr [ %y34, %if.then30 ], [ %p244, %if.else ], [ %p259, %if.then54 ], [ %p272, %if.else67 ]
  %x3.0.in = phi ptr [ %y37, %if.then30 ], [ %p348, %if.else ], [ %p363, %if.then54 ], [ %p376, %if.else67 ]
  %y1.0.in = phi ptr [ %z33, %if.then30 ], [ %y43, %if.else ], [ %z58, %if.then54 ], [ %y71, %if.else67 ]
  %y2.0.in = phi ptr [ %z36, %if.then30 ], [ %y47, %if.else ], [ %z62, %if.then54 ], [ %y75, %if.else67 ]
  %y3.0.in = phi ptr [ %z39, %if.then30 ], [ %y51, %if.else ], [ %z66, %if.then54 ], [ %y79, %if.else67 ]
  %y.0 = phi float [ %10, %if.then30 ], [ %12, %if.else ], [ %14, %if.then54 ], [ %15, %if.else67 ], !dbg !442
  %x.0 = phi float [ %9, %if.then30 ], [ %11, %if.else ], [ %13, %if.then54 ], [ %13, %if.else67 ], !dbg !442
  %y3.0 = load float, ptr %y3.0.in, align 4, !dbg !442
  %y2.0 = load float, ptr %y2.0.in, align 4, !dbg !442
  %y1.0 = load float, ptr %y1.0.in, align 4, !dbg !442
  %x3.0 = load float, ptr %x3.0.in, align 4, !dbg !442
  %x2.0 = load float, ptr %x2.0.in, align 4, !dbg !442
  %x1.0 = load float, ptr %x1.0.in, align 4, !dbg !442
  call void @llvm.dbg.value(metadata float %x.0, metadata !368, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %y.0, metadata !369, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %y3.0, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %y2.0, metadata !374, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %y1.0, metadata !373, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %x3.0, metadata !372, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %x2.0, metadata !371, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata float %x1.0, metadata !370, metadata !DIExpression()), !dbg !382
  %sub = fsub float %x1.0, %x.0, !dbg !443
  call void @llvm.dbg.value(metadata float %sub, metadata !370, metadata !DIExpression()), !dbg !382
  %sub82 = fsub float %y1.0, %y.0, !dbg !444
  call void @llvm.dbg.value(metadata float %sub82, metadata !373, metadata !DIExpression()), !dbg !382
  %sub83 = fsub float %x2.0, %x.0, !dbg !445
  call void @llvm.dbg.value(metadata float %sub83, metadata !371, metadata !DIExpression()), !dbg !382
  %sub84 = fsub float %y2.0, %y.0, !dbg !446
  call void @llvm.dbg.value(metadata float %sub84, metadata !374, metadata !DIExpression()), !dbg !382
  %sub85 = fsub float %x3.0, %x.0, !dbg !447
  call void @llvm.dbg.value(metadata float %sub85, metadata !372, metadata !DIExpression()), !dbg !382
  %sub86 = fsub float %y3.0, %y.0, !dbg !448
  call void @llvm.dbg.value(metadata float %sub86, metadata !375, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !382
  %cmp87 = fcmp oge float %sub82, 0.000000e+00, !dbg !449
  %. = select i1 %cmp87, i64 1, i64 -1
  call void @llvm.dbg.value(metadata i64 %., metadata !380, metadata !DIExpression()), !dbg !382
  %cmp93 = fcmp ult float %sub84, 0.000000e+00, !dbg !451
  br i1 %cmp93, label %if.else96, label %if.end97, !dbg !453

if.else96:                                        ; preds = %if.end81
  call void @llvm.dbg.value(metadata i64 -1, metadata !381, metadata !DIExpression()), !dbg !382
  br label %if.end97

if.end97:                                         ; preds = %if.end81, %if.else96
  %nsh.0 = phi i64 [ -1, %if.else96 ], [ 1, %if.end81 ], !dbg !454
  call void @llvm.dbg.value(metadata i64 %nsh.0, metadata !381, metadata !DIExpression()), !dbg !382
  %cmp98.not = icmp eq i64 %., %nsh.0, !dbg !455
  br i1 %cmp98.not, label %if.end127, label %if.then100, !dbg !457

if.then100:                                       ; preds = %if.end97
  %cmp102 = fcmp ult float %sub, 0.000000e+00, !dbg !458
  %cmp105 = fcmp ult float %sub83, 0.000000e+00
  %or.cond = select i1 %cmp102, i1 true, i1 %cmp105, !dbg !461
  br i1 %or.cond, label %if.else108, label %if.end127, !dbg !461

if.else108:                                       ; preds = %if.then100
  %or.cond348 = select i1 %cmp102, i1 %cmp105, i1 false, !dbg !462
  br i1 %or.cond348, label %if.end127, label %if.then115, !dbg !462

if.then115:                                       ; preds = %if.else108
  %sub116 = fsub float %sub83, %sub, !dbg !464
  %mul = fmul float %sub82, %sub116, !dbg !466
  %sub117 = fsub float %sub84, %sub82, !dbg !467
  %div = fdiv float %mul, %sub117, !dbg !468
  %sub118 = fsub float %sub, %div, !dbg !469
  %cmp120 = fcmp ogt float %sub118, 0.000000e+00, !dbg !470
  br i1 %cmp120, label %if.then122, label %if.end127, !dbg !471

if.then122:                                       ; preds = %if.then115
  call void @llvm.dbg.value(metadata i64 1, metadata !379, metadata !DIExpression()), !dbg !382
  br label %if.end127, !dbg !472

if.end127:                                        ; preds = %if.then115, %if.then122, %if.then100, %if.else108, %if.end97
  %nc.1 = phi i64 [ 0, %if.end97 ], [ 1, %if.then122 ], [ 0, %if.then115 ], [ 1, %if.then100 ], [ 0, %if.else108 ], !dbg !382
  %sh.1 = phi i64 [ %., %if.end97 ], [ %nsh.0, %if.then122 ], [ %nsh.0, %if.then115 ], [ %nsh.0, %if.then100 ], [ %nsh.0, %if.else108 ], !dbg !382
  call void @llvm.dbg.value(metadata i64 %sh.1, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %nc.1, metadata !379, metadata !DIExpression()), !dbg !382
  %cmp129 = fcmp ult float %sub86, 0.000000e+00, !dbg !473
  %.349 = select i1 %cmp129, i64 -1, i64 1
  call void @llvm.dbg.value(metadata i64 %.349, metadata !381, metadata !DIExpression()), !dbg !382
  %cmp134.not = icmp eq i64 %sh.1, %.349, !dbg !475
  br i1 %cmp134.not, label %if.end168, label %if.then136, !dbg !477

if.then136:                                       ; preds = %if.end127
  %cmp138 = fcmp ult float %sub83, 0.000000e+00, !dbg !478
  %cmp142 = fcmp ult float %sub85, 0.000000e+00
  %or.cond350 = select i1 %cmp138, i1 true, i1 %cmp142, !dbg !481
  br i1 %or.cond350, label %if.else146, label %if.then144, !dbg !481

if.then144:                                       ; preds = %if.then136
  %inc145 = add nuw nsw i64 %nc.1, 1, !dbg !482
  call void @llvm.dbg.value(metadata i64 %inc145, metadata !379, metadata !DIExpression()), !dbg !382
  br label %if.end168, !dbg !483

if.else146:                                       ; preds = %if.then136
  %or.cond352 = select i1 %cmp138, i1 %cmp142, i1 false, !dbg !484
  br i1 %or.cond352, label %if.end168, label %if.then154, !dbg !484

if.then154:                                       ; preds = %if.else146
  %sub155 = fsub float %sub85, %sub83, !dbg !486
  %mul156 = fmul float %sub84, %sub155, !dbg !488
  %sub157 = fsub float %sub86, %sub84, !dbg !489
  %div158 = fdiv float %mul156, %sub157, !dbg !490
  %sub159 = fsub float %sub83, %div158, !dbg !491
  %cmp161 = fcmp ogt float %sub159, 0.000000e+00, !dbg !492
  br i1 %cmp161, label %if.then163, label %if.end168, !dbg !493

if.then163:                                       ; preds = %if.then154
  %inc164 = add nuw nsw i64 %nc.1, 1, !dbg !494
  call void @llvm.dbg.value(metadata i64 %inc164, metadata !379, metadata !DIExpression()), !dbg !382
  br label %if.end168, !dbg !495

if.end168:                                        ; preds = %if.then144, %if.then154, %if.then163, %if.else146, %if.end127
  %nc.3 = phi i64 [ %nc.1, %if.end127 ], [ %inc145, %if.then144 ], [ %inc164, %if.then163 ], [ %nc.1, %if.then154 ], [ %nc.1, %if.else146 ], !dbg !382
  %sh.2 = phi i64 [ %sh.1, %if.end127 ], [ %.349, %if.then144 ], [ %.349, %if.then163 ], [ %.349, %if.then154 ], [ %.349, %if.else146 ], !dbg !382
  call void @llvm.dbg.value(metadata i64 %sh.2, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %nc.3, metadata !379, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.value(metadata i64 %., metadata !381, metadata !DIExpression()), !dbg !382
  %cmp175.not = icmp eq i64 %sh.2, %., !dbg !496
  br i1 %cmp175.not, label %if.end209, label %if.then177, !dbg !498

if.then177:                                       ; preds = %if.end168
  %cmp179 = fcmp ult float %sub85, 0.000000e+00, !dbg !499
  %cmp183 = fcmp ult float %sub, 0.000000e+00
  %or.cond354 = select i1 %cmp179, i1 true, i1 %cmp183, !dbg !502
  br i1 %or.cond354, label %if.else187, label %if.then185, !dbg !502

if.then185:                                       ; preds = %if.then177
  %inc186 = add nuw nsw i64 %nc.3, 1, !dbg !503
  call void @llvm.dbg.value(metadata i64 %inc186, metadata !379, metadata !DIExpression()), !dbg !382
  br label %if.end209, !dbg !504

if.else187:                                       ; preds = %if.then177
  %or.cond356 = select i1 %cmp179, i1 %cmp183, i1 false, !dbg !505
  br i1 %or.cond356, label %if.end209, label %if.then195, !dbg !505

if.then195:                                       ; preds = %if.else187
  %sub196 = fsub float %sub, %sub85, !dbg !507
  %mul197 = fmul float %sub82, %sub196, !dbg !509
  %sub198 = fsub float %sub82, %sub86, !dbg !510
  %div199 = fdiv float %mul197, %sub198, !dbg !511
  %sub200 = fsub float %sub, %div199, !dbg !512
  %cmp202 = fcmp ogt float %sub200, 0.000000e+00, !dbg !513
  br i1 %cmp202, label %if.then204, label %if.end209, !dbg !514

if.then204:                                       ; preds = %if.then195
  %inc205 = add nuw nsw i64 %nc.3, 1, !dbg !515
  call void @llvm.dbg.value(metadata i64 %inc205, metadata !379, metadata !DIExpression()), !dbg !382
  br label %if.end209, !dbg !516

if.end209:                                        ; preds = %if.then185, %if.then195, %if.then204, %if.else187, %if.end168
  %nc.5 = phi i64 [ %nc.3, %if.end168 ], [ %inc186, %if.then185 ], [ %inc205, %if.then204 ], [ %nc.3, %if.then195 ], [ %nc.3, %if.else187 ], !dbg !382
  call void @llvm.dbg.value(metadata i64 %nc.5, metadata !379, metadata !DIExpression()), !dbg !382
  %16 = and i64 %nc.5, 1, !dbg !517
  ret i64 %16, !dbg !519
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @traverse_bsp(ptr noundef readonly %src_node, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id) local_unnamed_addr #1 !dbg !520 {
entry:
  %t = alloca float, align 4
  call void @llvm.dbg.value(metadata ptr %src_node, metadata !524, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata ptr %p, metadata !525, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata ptr %ray, metadata !526, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata float %r_min, metadata !527, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata float %r_max, metadata !528, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !529, metadata !DIExpression()), !dbg !534
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #14, !dbg !535
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !530, metadata !DIExpression()), !dbg !534
  store float 0.000000e+00, ptr %t, align 4, !dbg !536
  %call = tail call i64 @check_patch_cache(ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id), !dbg !537
  %tobool.not = icmp eq i64 %call, 0, !dbg !537
  br i1 %tobool.not, label %if.end, label %cleanup, !dbg !539

if.end:                                           ; preds = %entry
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %src_node, i64 0, i32 13, !dbg !540
  %0 = load ptr, ptr %bsp_positive, align 8, !dbg !540
  %call1 = tail call i64 @traverse_subtree(ptr noundef %0, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id), !dbg !542
  %tobool2.not = icmp eq i64 %call1, 0, !dbg !542
  br i1 %tobool2.not, label %for.cond.preheader, label %cleanup, !dbg !543

for.cond.preheader:                               ; preds = %if.end
  %parent.0.in82 = getelementptr inbounds %struct._patch, ptr %src_node, i64 0, i32 15, !dbg !544
  %parent.083 = load ptr, ptr %parent.0.in82, align 8, !dbg !544
  call void @llvm.dbg.value(metadata ptr %src_node, metadata !532, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata ptr %parent.083, metadata !531, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata float %r_min, metadata !527, metadata !DIExpression()), !dbg !534
  %tobool5.not84 = icmp eq ptr %parent.083, null, !dbg !546
  br i1 %tobool5.not84, label %cleanup, label %for.body, !dbg !546

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %parent.087 = phi ptr [ %parent.0, %for.inc ], [ %parent.083, %for.cond.preheader ]
  %visited_child.086 = phi ptr [ %parent.087, %for.inc ], [ %src_node, %for.cond.preheader ]
  %r_min.addr.085 = phi float [ %r_min.addr.1, %for.inc ], [ %r_min, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %visited_child.086, metadata !532, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata float %r_min.addr.085, metadata !527, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata ptr %t, metadata !530, metadata !DIExpression(DW_OP_deref)), !dbg !534
  %call6 = call i64 @intersection_type(ptr noundef nonnull %parent.087, ptr noundef %p, ptr noundef %ray, ptr noundef nonnull %t, float noundef %r_min.addr.085, float noundef %r_max), !dbg !547
  call void @llvm.dbg.value(metadata i64 %call6, metadata !533, metadata !DIExpression()), !dbg !534
  %cmp = icmp ne i64 %call6, 1, !dbg !550
  %cmp7 = icmp ne i64 %call6, 2
  %1 = add i64 %call6, -3, !dbg !552
  %2 = icmp ult i64 %1, -2, !dbg !552
  br i1 %2, label %if.then8, label %if.end14, !dbg !552

if.then8:                                         ; preds = %for.body
  %3 = load float, ptr %t, align 4, !dbg !553
  call void @llvm.dbg.value(metadata float %3, metadata !530, metadata !DIExpression()), !dbg !534
  %call9 = tail call i64 @test_intersection(ptr noundef nonnull %parent.087, ptr noundef %p, ptr noundef %ray, float noundef %3, i64 noundef %process_id), !dbg !556
  %tobool10.not = icmp eq i64 %call9, 0, !dbg !556
  br i1 %tobool10.not, label %if.end12, label %cleanup, !dbg !557

if.end12:                                         ; preds = %if.then8
  call void @llvm.dbg.value(metadata float %3, metadata !530, metadata !DIExpression()), !dbg !534
  %conv = fpext float %3 to double, !dbg !558
  %sub = fadd double %conv, -1.000000e-02, !dbg !559
  %conv13 = fptrunc double %sub to float, !dbg !558
  call void @llvm.dbg.value(metadata float %conv13, metadata !527, metadata !DIExpression()), !dbg !534
  br label %if.end14, !dbg !560

if.end14:                                         ; preds = %if.end12, %for.body
  %r_min.addr.1 = phi float [ %conv13, %if.end12 ], [ %r_min.addr.085, %for.body ]
  call void @llvm.dbg.value(metadata float %r_min.addr.1, metadata !527, metadata !DIExpression()), !dbg !534
  %bsp_positive15 = getelementptr inbounds %struct._patch, ptr %parent.087, i64 0, i32 13, !dbg !561
  %4 = load ptr, ptr %bsp_positive15, align 8, !dbg !561
  %cmp16 = icmp eq ptr %4, %visited_child.086, !dbg !563
  %or.cond44 = select i1 %cmp16, i1 %cmp, i1 false, !dbg !564
  br i1 %or.cond44, label %if.then21, label %if.else, !dbg !564

if.then21:                                        ; preds = %if.end14
  %bsp_negative = getelementptr inbounds %struct._patch, ptr %parent.087, i64 0, i32 14, !dbg !565
  %5 = load ptr, ptr %bsp_negative, align 8, !dbg !565
  %call22 = tail call i64 @traverse_subtree(ptr noundef %5, ptr noundef %p, ptr noundef %ray, float noundef %r_min.addr.1, float noundef %r_max, i64 noundef %process_id), !dbg !568
  %tobool23.not = icmp eq i64 %call22, 0, !dbg !568
  br i1 %tobool23.not, label %for.inc, label %cleanup, !dbg !569

if.else:                                          ; preds = %if.end14
  %cmp27 = icmp ne ptr %4, %visited_child.086, !dbg !570
  %or.cond45 = select i1 %cmp27, i1 %cmp7, i1 false, !dbg !572
  br i1 %or.cond45, label %if.then32, label %for.inc, !dbg !572

if.then32:                                        ; preds = %if.else
  %call34 = tail call i64 @traverse_subtree(ptr noundef %4, ptr noundef %p, ptr noundef %ray, float noundef %r_min.addr.1, float noundef %r_max, i64 noundef %process_id), !dbg !573
  %tobool35.not = icmp eq i64 %call34, 0, !dbg !573
  br i1 %tobool35.not, label %for.inc, label %cleanup, !dbg !576

for.inc:                                          ; preds = %if.then21, %if.then32, %if.else
  call void @llvm.dbg.value(metadata ptr %parent.087, metadata !532, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata ptr undef, metadata !531, metadata !DIExpression()), !dbg !534
  %parent.0.in = getelementptr inbounds %struct._patch, ptr %parent.087, i64 0, i32 15, !dbg !544
  %parent.0 = load ptr, ptr %parent.0.in, align 8, !dbg !544
  call void @llvm.dbg.value(metadata ptr %parent.0, metadata !531, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.value(metadata float %r_min.addr.1, metadata !527, metadata !DIExpression()), !dbg !534
  %tobool5.not = icmp eq ptr %parent.0, null, !dbg !546
  br i1 %tobool5.not, label %cleanup, label %for.body, !dbg !546, !llvm.loop !577

cleanup:                                          ; preds = %if.then8, %if.then21, %if.then32, %for.inc, %for.cond.preheader, %if.end, %entry
  %retval.0 = phi i64 [ 1, %entry ], [ 1, %if.end ], [ 0, %for.cond.preheader ], [ 1, %if.then8 ], [ 1, %if.then21 ], [ 1, %if.then32 ], [ 0, %for.inc ], !dbg !534
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #14, !dbg !579
  ret i64 %retval.0, !dbg !579
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @check_patch_cache(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id) local_unnamed_addr #1 !dbg !580 {
entry:
  %t = alloca float, align 4
  call void @llvm.dbg.value(metadata ptr %p, metadata !584, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr %ray, metadata !585, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata float %r_min, metadata !586, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata float %r_max, metadata !587, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !588, metadata !DIExpression()), !dbg !593
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #14, !dbg !594
  call void @llvm.dbg.value(metadata i64 0, metadata !589, metadata !DIExpression()), !dbg !593
  %v_dest_patch = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 2
  %v_src_patch = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 1
  br label %for.body, !dbg !595

for.body:                                         ; preds = %entry, %for.inc
  %cmp29.not = phi i1 [ true, %entry ], [ false, %for.inc ]
  %i.075 = phi i64 [ 0, %entry ], [ 1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.075, metadata !589, metadata !DIExpression()), !dbg !593
  %arrayidx1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 14, i64 %i.075, !dbg !597
  %0 = load ptr, ptr %arrayidx1, align 8, !dbg !597
  %cmp2 = icmp eq ptr %0, null, !dbg !601
  br i1 %cmp2, label %for.inc, label %lor.lhs.false, !dbg !602

lor.lhs.false:                                    ; preds = %for.body
  %1 = load ptr, ptr %v_dest_patch, align 8, !dbg !603
  %cmp7 = icmp eq ptr %0, %1, !dbg !604
  br i1 %cmp7, label %for.inc, label %lor.lhs.false8, !dbg !605

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %v_src_patch, align 16, !dbg !606
  %cmp13 = icmp eq ptr %0, %2, !dbg !607
  br i1 %cmp13, label %for.inc, label %if.end, !dbg !608

if.end:                                           ; preds = %lor.lhs.false8
  call void @llvm.dbg.value(metadata ptr %t, metadata !590, metadata !DIExpression(DW_OP_deref)), !dbg !593
  %call = call i64 @intersection_type(ptr noundef nonnull %0, ptr noundef %p, ptr noundef %ray, ptr noundef nonnull %t, float noundef %r_min, float noundef %r_max), !dbg !609
  call void @llvm.dbg.value(metadata i64 %call, metadata !592, metadata !DIExpression()), !dbg !593
  %3 = add i64 %call, -1, !dbg !610
  %4 = icmp ult i64 %3, 2, !dbg !610
  br i1 %4, label %for.inc, label %if.end21, !dbg !610

if.end21:                                         ; preds = %if.end
  %cmp22 = icmp eq i64 %call, 0, !dbg !612
  br i1 %cmp22, label %if.then28, label %lor.lhs.false23, !dbg !614

lor.lhs.false23:                                  ; preds = %if.end21
  %5 = load float, ptr %t, align 4, !dbg !615
  call void @llvm.dbg.value(metadata float %5, metadata !590, metadata !DIExpression()), !dbg !593
  %call27 = tail call i64 @v_intersect(ptr noundef nonnull %0, ptr noundef %p, ptr noundef %ray, float noundef %5), !dbg !616
  %tobool.not = icmp eq i64 %call27, 0, !dbg !616
  br i1 %tobool.not, label %for.inc, label %if.then28, !dbg !617

if.then28:                                        ; preds = %lor.lhs.false23, %if.end21
  br i1 %cmp29.not, label %cleanup, label %if.then30, !dbg !618

if.then30:                                        ; preds = %if.then28
  %patch_cache.le = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 14, !dbg !620
  %6 = load ptr, ptr %patch_cache.le, align 16, !dbg !621
  call void @llvm.dbg.value(metadata ptr %6, metadata !591, metadata !DIExpression()), !dbg !593
  store ptr %0, ptr %patch_cache.le, align 16, !dbg !624
  store ptr %6, ptr %arrayidx1, align 8, !dbg !625
  br label %cleanup, !dbg !626

for.inc:                                          ; preds = %lor.lhs.false23, %if.end, %for.body, %lor.lhs.false, %lor.lhs.false8
  call void @llvm.dbg.value(metadata i64 %i.075, metadata !589, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !593
  br i1 %cmp29.not, label %for.body, label %cleanup, !dbg !595, !llvm.loop !627

cleanup:                                          ; preds = %for.inc, %if.then28, %if.then30
  %retval.0 = phi i64 [ 1, %if.then30 ], [ 1, %if.then28 ], [ 0, %for.inc ], !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #14, !dbg !629
  ret i64 %retval.0, !dbg !629
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @traverse_subtree(ptr noundef %node, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id) local_unnamed_addr #1 !dbg !630 {
entry:
  %t = alloca float, align 4
  call void @llvm.dbg.value(metadata ptr %node, metadata !632, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata ptr %p, metadata !633, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata ptr %ray, metadata !634, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata float %r_min, metadata !635, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata float %r_max, metadata !636, metadata !DIExpression()), !dbg !640
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !637, metadata !DIExpression()), !dbg !640
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #14, !dbg !641
  %cmp = icmp eq ptr %node, null, !dbg !642
  br i1 %cmp, label %cleanup, label %if.end, !dbg !644

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %t, metadata !638, metadata !DIExpression(DW_OP_deref)), !dbg !640
  %call = call i64 @intersection_type(ptr noundef nonnull %node, ptr noundef %p, ptr noundef %ray, ptr noundef nonnull %t, float noundef %r_min, float noundef %r_max), !dbg !645
  call void @llvm.dbg.value(metadata i64 %call, metadata !639, metadata !DIExpression()), !dbg !640
  switch i64 %call, label %cleanup [
    i64 3, label %if.then2
    i64 4, label %if.then16
    i64 1, label %if.then37
    i64 2, label %if.then43
  ], !dbg !646

if.then2:                                         ; preds = %if.end
  %bsp_positive = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 13, !dbg !647
  %0 = load ptr, ptr %bsp_positive, align 8, !dbg !647
  %1 = load float, ptr %t, align 4, !dbg !651
  call void @llvm.dbg.value(metadata float %1, metadata !638, metadata !DIExpression()), !dbg !640
  %conv = fpext float %1 to double, !dbg !651
  %add = fadd double %conv, 1.000000e-02, !dbg !652
  %conv3 = fptrunc double %add to float, !dbg !651
  %call4 = tail call i64 @traverse_subtree(ptr noundef %0, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %conv3, i64 noundef %process_id), !dbg !653
  %tobool.not = icmp eq i64 %call4, 0, !dbg !653
  br i1 %tobool.not, label %if.end6, label %cleanup, !dbg !654

if.end6:                                          ; preds = %if.then2
  call void @llvm.dbg.value(metadata float %1, metadata !638, metadata !DIExpression()), !dbg !640
  %call7 = tail call i64 @test_intersection(ptr noundef nonnull %node, ptr noundef %p, ptr noundef %ray, float noundef %1, i64 noundef %process_id), !dbg !655
  %tobool8.not = icmp eq i64 %call7, 0, !dbg !655
  br i1 %tobool8.not, label %if.end10, label %cleanup, !dbg !657

if.end10:                                         ; preds = %if.end6
  %bsp_negative = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 14, !dbg !658
  %2 = load ptr, ptr %bsp_negative, align 8, !dbg !658
  call void @llvm.dbg.value(metadata float %1, metadata !638, metadata !DIExpression()), !dbg !640
  %sub = fadd double %conv, -1.000000e-02, !dbg !659
  %conv12 = fptrunc double %sub to float, !dbg !660
  %call13 = tail call i64 @traverse_subtree(ptr noundef %2, ptr noundef %p, ptr noundef %ray, float noundef %conv12, float noundef %r_max, i64 noundef %process_id), !dbg !661
  br label %cleanup, !dbg !662

if.then16:                                        ; preds = %if.end
  %bsp_negative17 = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 14, !dbg !663
  %3 = load ptr, ptr %bsp_negative17, align 8, !dbg !663
  %4 = load float, ptr %t, align 4, !dbg !667
  call void @llvm.dbg.value(metadata float %4, metadata !638, metadata !DIExpression()), !dbg !640
  %conv18 = fpext float %4 to double, !dbg !667
  %add19 = fadd double %conv18, 1.000000e-02, !dbg !668
  %conv20 = fptrunc double %add19 to float, !dbg !667
  %call21 = tail call i64 @traverse_subtree(ptr noundef %3, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %conv20, i64 noundef %process_id), !dbg !669
  %tobool22.not = icmp eq i64 %call21, 0, !dbg !669
  br i1 %tobool22.not, label %if.end24, label %cleanup, !dbg !670

if.end24:                                         ; preds = %if.then16
  call void @llvm.dbg.value(metadata float %4, metadata !638, metadata !DIExpression()), !dbg !640
  %call25 = tail call i64 @test_intersection(ptr noundef nonnull %node, ptr noundef %p, ptr noundef %ray, float noundef %4, i64 noundef %process_id), !dbg !671
  %tobool26.not = icmp eq i64 %call25, 0, !dbg !671
  br i1 %tobool26.not, label %if.end28, label %cleanup, !dbg !673

if.end28:                                         ; preds = %if.end24
  %bsp_positive29 = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 13, !dbg !674
  %5 = load ptr, ptr %bsp_positive29, align 8, !dbg !674
  call void @llvm.dbg.value(metadata float %4, metadata !638, metadata !DIExpression()), !dbg !640
  %sub31 = fadd double %conv18, -1.000000e-02, !dbg !675
  %conv32 = fptrunc double %sub31 to float, !dbg !676
  %call33 = tail call i64 @traverse_subtree(ptr noundef %5, ptr noundef %p, ptr noundef %ray, float noundef %conv32, float noundef %r_max, i64 noundef %process_id), !dbg !677
  br label %cleanup, !dbg !678

if.then37:                                        ; preds = %if.end
  %bsp_positive38 = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 13, !dbg !679
  %6 = load ptr, ptr %bsp_positive38, align 8, !dbg !679
  %call39 = tail call i64 @traverse_subtree(ptr noundef %6, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id), !dbg !681
  br label %cleanup, !dbg !682

if.then43:                                        ; preds = %if.end
  %bsp_negative44 = getelementptr inbounds %struct._patch, ptr %node, i64 0, i32 14, !dbg !683
  %7 = load ptr, ptr %bsp_negative44, align 8, !dbg !683
  %call45 = tail call i64 @traverse_subtree(ptr noundef %7, ptr noundef %p, ptr noundef %ray, float noundef %r_min, float noundef %r_max, i64 noundef %process_id), !dbg !685
  br label %cleanup, !dbg !686

cleanup:                                          ; preds = %if.end, %if.end24, %if.then16, %if.end6, %if.then2, %entry, %if.then43, %if.then37, %if.end28, %if.end10
  %retval.0 = phi i64 [ %call13, %if.end10 ], [ %call33, %if.end28 ], [ %call39, %if.then37 ], [ %call45, %if.then43 ], [ 0, %entry ], [ 1, %if.then2 ], [ 1, %if.end6 ], [ 1, %if.then16 ], [ 1, %if.end24 ], [ 1, %if.end ], !dbg !640
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #14, !dbg !687
  ret i64 %retval.0, !dbg !687
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local i64 @intersection_type(ptr nocapture noundef readonly %patch, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ray, ptr nocapture noundef writeonly %tval, float noundef %range_min, float noundef %range_max) local_unnamed_addr #5 !dbg !688 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !693, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata ptr %p, metadata !694, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata ptr %ray, metadata !695, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata ptr %tval, metadata !696, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata float %range_min, metadata !697, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata float %range_max, metadata !698, metadata !DIExpression()), !dbg !705
  %plane_equ = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, !dbg !706
  %0 = load float, ptr %plane_equ, align 4, !dbg !707
  call void @llvm.dbg.value(metadata float %0, metadata !702, metadata !DIExpression()), !dbg !705
  %y = getelementptr inbounds %struct.Vertex, ptr %plane_equ, i64 0, i32 1, !dbg !708
  %1 = load float, ptr %y, align 4, !dbg !708
  call void @llvm.dbg.value(metadata float %1, metadata !703, metadata !DIExpression()), !dbg !705
  %z = getelementptr inbounds %struct.Vertex, ptr %plane_equ, i64 0, i32 2, !dbg !709
  %2 = load float, ptr %z, align 4, !dbg !709
  call void @llvm.dbg.value(metadata float %2, metadata !704, metadata !DIExpression()), !dbg !705
  %3 = load float, ptr %ray, align 4, !dbg !710
  %y6 = getelementptr inbounds %struct.Ray, ptr %ray, i64 0, i32 1, !dbg !711
  %4 = load float, ptr %y6, align 4, !dbg !711
  %mul7 = fmul float %1, %4, !dbg !712
  %5 = tail call float @llvm.fmuladd.f32(float %0, float %3, float %mul7), !dbg !713
  %z8 = getelementptr inbounds %struct.Ray, ptr %ray, i64 0, i32 2, !dbg !714
  %6 = load float, ptr %z8, align 4, !dbg !714
  %7 = tail call float @llvm.fmuladd.f32(float %2, float %6, float %5), !dbg !715
  call void @llvm.dbg.value(metadata float %7, metadata !699, metadata !DIExpression()), !dbg !705
  %c = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 9, i32 1, !dbg !716
  %8 = load float, ptr %c, align 4, !dbg !716
  %9 = load float, ptr %p, align 4, !dbg !717
  %10 = tail call float @llvm.fmuladd.f32(float %9, float %0, float %8), !dbg !718
  %y11 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 1, !dbg !719
  %11 = load float, ptr %y11, align 4, !dbg !719
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %1, float %10), !dbg !720
  %z12 = getelementptr inbounds %struct.Vertex, ptr %p, i64 0, i32 2, !dbg !721
  %13 = load float, ptr %z12, align 4, !dbg !721
  %14 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %12), !dbg !722
  call void @llvm.dbg.value(metadata float %14, metadata !700, metadata !DIExpression()), !dbg !705
  %cmp = fcmp ogt float %7, 0xBEB0C6F7A0000000, !dbg !723
  %cmp13 = fcmp olt float %7, 0x3EB0C6F7A0000000
  %or.cond = and i1 %cmp, %cmp13, !dbg !725
  br i1 %or.cond, label %if.then, label %if.end20, !dbg !725

if.then:                                          ; preds = %entry
  %cmp14 = fcmp ogt float %14, 0x3FA99999A0000000, !dbg !726
  br i1 %cmp14, label %cleanup, label %if.else, !dbg !729

if.else:                                          ; preds = %if.then
  %conv = fpext float %14 to double, !dbg !730
  %cmp16 = fcmp olt double %conv, -5.000000e-02, !dbg !732
  %. = select i1 %cmp16, i64 2, i64 0, !dbg !733
  br label %cleanup, !dbg !733

if.end20:                                         ; preds = %entry
  %fneg = fneg float %14, !dbg !734
  %div = fdiv float %fneg, %7, !dbg !735
  call void @llvm.dbg.value(metadata float %div, metadata !701, metadata !DIExpression()), !dbg !705
  store float %div, ptr %tval, align 4, !dbg !736
  %cmp21 = fcmp olt float %div, %range_min, !dbg !737
  br i1 %cmp21, label %if.then23, label %if.else28, !dbg !739

if.then23:                                        ; preds = %if.end20
  %cmp24 = fcmp ult float %7, 0.000000e+00, !dbg !740
  %.65 = select i1 %cmp24, i64 2, i64 1, !dbg !743
  br label %cleanup, !dbg !743

if.else28:                                        ; preds = %if.end20
  %cmp29 = fcmp ogt float %div, %range_max, !dbg !744
  %cmp32 = fcmp ult float %7, 0.000000e+00, !dbg !746
  br i1 %cmp29, label %if.then31, label %if.else36, !dbg !747

if.then31:                                        ; preds = %if.else28
  %.66 = select i1 %cmp32, i64 1, i64 2, !dbg !748
  br label %cleanup, !dbg !748

if.else36:                                        ; preds = %if.else28
  %.67 = select i1 %cmp32, i64 3, i64 4, !dbg !751
  br label %cleanup, !dbg !751

cleanup:                                          ; preds = %if.else36, %if.then31, %if.then23, %if.else, %if.then
  %retval.0 = phi i64 [ 1, %if.then ], [ %., %if.else ], [ %.65, %if.then23 ], [ %.66, %if.then31 ], [ %.67, %if.else36 ], !dbg !705
  ret i64 %retval.0, !dbg !754
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i64 @test_intersection(ptr noundef %patch, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %ray, float noundef %tval, i64 noundef %process_id) local_unnamed_addr #1 !dbg !755 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !759, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %p, metadata !760, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata ptr %ray, metadata !761, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata float %tval, metadata !762, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !763, metadata !DIExpression()), !dbg !764
  %v_dest_patch = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 2, !dbg !765
  %0 = load ptr, ptr %v_dest_patch, align 8, !dbg !765
  %cmp = icmp eq ptr %0, %patch, !dbg !767
  br i1 %cmp, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  %pool_dst_hits = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 13, !dbg !769
  %1 = load i64, ptr %pool_dst_hits, align 8, !dbg !771
  %inc = add nsw i64 %1, 1, !dbg !771
  store i64 %inc, ptr %pool_dst_hits, align 8, !dbg !771
  br label %return, !dbg !772

if.end:                                           ; preds = %entry
  %call = tail call i64 @patch_tested(ptr noundef %patch, i64 noundef %process_id), !dbg !773
  %tobool.not = icmp eq i64 %call, 0, !dbg !773
  br i1 %tobool.not, label %if.end3, label %return, !dbg !775

if.end3:                                          ; preds = %if.end
  %call4 = tail call i64 @v_intersect(ptr noundef %patch, ptr noundef %p, ptr noundef %ray, float noundef %tval), !dbg !776
  %tobool5.not = icmp eq i64 %call4, 0, !dbg !776
  br i1 %tobool5.not, label %return, label %if.then6, !dbg !778

if.then6:                                         ; preds = %if.end3
  tail call void @update_patch_cache(ptr noundef %patch, i64 noundef %process_id), !dbg !779
  br label %return, !dbg !781

return:                                           ; preds = %if.end3, %if.end, %if.then6, %if.then
  %retval.0 = phi i64 [ 1, %if.then ], [ 1, %if.then6 ], [ 0, %if.end ], [ 0, %if.end3 ], !dbg !764
  ret i64 %retval.0, !dbg !782
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @patch_tested(ptr noundef readnone %p, i64 noundef %process_id) local_unnamed_addr #6 !dbg !783 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !787, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !788, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata i64 0, metadata !789, metadata !DIExpression()), !dbg !790
  br label %for.body, !dbg !791

for.body:                                         ; preds = %for.body, %entry
  %cmp = phi i1 [ false, %entry ], [ true, %for.body ]
  %i.05 = phi i64 [ 0, %entry ], [ 1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.05, metadata !789, metadata !DIExpression()), !dbg !790
  %arrayidx1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 14, i64 %i.05, !dbg !793
  %0 = load ptr, ptr %arrayidx1, align 8, !dbg !793
  %cmp2 = icmp eq ptr %0, %p, !dbg !797
  call void @llvm.dbg.value(metadata i64 %i.05, metadata !789, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !790
  %brmerge = or i1 %cmp2, %cmp, !dbg !798
  br i1 %brmerge, label %cleanup, label %for.body, !dbg !798

cleanup:                                          ; preds = %for.body
  %.mux = zext i1 %cmp2 to i64, !dbg !798
  ret i64 %.mux, !dbg !799
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @update_patch_cache(ptr noundef %patch, i64 noundef %process_id) local_unnamed_addr #7 !dbg !800 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !804, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !805, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 1, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 undef, metadata !806, metadata !DIExpression()), !dbg !807
  %patch_cache = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 14, !dbg !808
  %0 = load ptr, ptr %patch_cache, align 16, !dbg !811
  %arrayidx4 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 14, i64 1, !dbg !812
  store ptr %0, ptr %arrayidx4, align 8, !dbg !813
  call void @llvm.dbg.value(metadata i64 0, metadata !806, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i64 undef, metadata !806, metadata !DIExpression()), !dbg !807
  store ptr %patch, ptr %patch_cache, align 16, !dbg !814
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @visibility(ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2, i64 noundef %n_rays, i64 noundef %process_id) local_unnamed_addr #8 !dbg !816 {
entry:
  call void @llvm.dbg.value(metadata ptr %e1, metadata !820, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr %e2, metadata !821, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %n_rays, metadata !822, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !823, metadata !DIExpression()), !dbg !829
  %patch = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 1, !dbg !830
  %0 = load ptr, ptr %patch, align 8, !dbg !830
  %v_src_patch = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 1, !dbg !831
  store ptr %0, ptr %v_src_patch, align 16, !dbg !832
  %patch1 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 1, !dbg !833
  %1 = load ptr, ptr %patch1, align 8, !dbg !833
  %v_dest_patch = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 2, !dbg !834
  store ptr %1, ptr %v_dest_patch, align 8, !dbg !835
  %v_src_p1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3, !dbg !836
  %ev1 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 15, !dbg !837
  %2 = load ptr, ptr %ev1, align 8, !dbg !837
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %v_src_p1, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false), !dbg !838
  %ev2 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 16, !dbg !839
  %3 = load ptr, ptr %ev2, align 8, !dbg !839
  %4 = load float, ptr %3, align 8, !dbg !840
  %5 = load float, ptr %v_src_p1, align 16, !dbg !841
  %sub = fsub float %4, %5, !dbg !842
  %v_src_v12 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5, !dbg !843
  store float %sub, ptr %v_src_v12, align 8, !dbg !844
  %6 = load ptr, ptr %ev2, align 8, !dbg !845
  %y = getelementptr inbounds %struct.Vertex, ptr %6, i64 0, i32 1, !dbg !846
  %7 = load float, ptr %y, align 4, !dbg !846
  %y14 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3, i32 1, !dbg !847
  %8 = load float, ptr %y14, align 4, !dbg !847
  %sub15 = fsub float %7, %8, !dbg !848
  %y18 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5, i32 1, !dbg !849
  store float %sub15, ptr %y18, align 4, !dbg !850
  %9 = load ptr, ptr %ev2, align 8, !dbg !851
  %z = getelementptr inbounds %struct.Vertex, ptr %9, i64 0, i32 2, !dbg !852
  %10 = load float, ptr %z, align 8, !dbg !852
  %z23 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 3, i32 2, !dbg !853
  %11 = load float, ptr %z23, align 8, !dbg !853
  %sub24 = fsub float %10, %11, !dbg !854
  %z27 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 5, i32 2, !dbg !855
  store float %sub24, ptr %z27, align 16, !dbg !856
  %ev3 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 17, !dbg !857
  %12 = load ptr, ptr %ev3, align 8, !dbg !857
  %13 = load float, ptr %12, align 8, !dbg !858
  %sub33 = fsub float %13, %5, !dbg !859
  %v_src_v13 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6, !dbg !860
  store float %sub33, ptr %v_src_v13, align 4, !dbg !861
  %14 = load ptr, ptr %ev3, align 8, !dbg !862
  %y38 = getelementptr inbounds %struct.Vertex, ptr %14, i64 0, i32 1, !dbg !863
  %15 = load float, ptr %y38, align 4, !dbg !863
  %sub42 = fsub float %15, %8, !dbg !864
  %y45 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6, i32 1, !dbg !865
  store float %sub42, ptr %y45, align 8, !dbg !866
  %16 = load ptr, ptr %ev3, align 8, !dbg !867
  %z48 = getelementptr inbounds %struct.Vertex, ptr %16, i64 0, i32 2, !dbg !868
  %17 = load float, ptr %z48, align 8, !dbg !868
  %sub52 = fsub float %17, %11, !dbg !869
  %z55 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 6, i32 2, !dbg !870
  store float %sub52, ptr %z55, align 4, !dbg !871
  %v_dest_p1 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4, !dbg !872
  %ev157 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 15, !dbg !873
  %18 = load ptr, ptr %ev157, align 8, !dbg !873
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %v_dest_p1, ptr noundef nonnull align 8 dereferenceable(12) %18, i64 12, i1 false), !dbg !874
  %ev259 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 16, !dbg !875
  %19 = load ptr, ptr %ev259, align 8, !dbg !875
  %20 = load float, ptr %19, align 8, !dbg !876
  %21 = load float, ptr %v_dest_p1, align 4, !dbg !877
  %sub65 = fsub float %20, %21, !dbg !878
  %v_dest_v12 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7, !dbg !879
  store float %sub65, ptr %v_dest_v12, align 16, !dbg !880
  %22 = load ptr, ptr %ev259, align 8, !dbg !881
  %y70 = getelementptr inbounds %struct.Vertex, ptr %22, i64 0, i32 1, !dbg !882
  %23 = load float, ptr %y70, align 4, !dbg !882
  %y73 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4, i32 1, !dbg !883
  %24 = load float, ptr %y73, align 16, !dbg !883
  %sub74 = fsub float %23, %24, !dbg !884
  %y77 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7, i32 1, !dbg !885
  store float %sub74, ptr %y77, align 4, !dbg !886
  %25 = load ptr, ptr %ev259, align 8, !dbg !887
  %z80 = getelementptr inbounds %struct.Vertex, ptr %25, i64 0, i32 2, !dbg !888
  %26 = load float, ptr %z80, align 8, !dbg !888
  %z83 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 4, i32 2, !dbg !889
  %27 = load float, ptr %z83, align 4, !dbg !889
  %sub84 = fsub float %26, %27, !dbg !890
  %z87 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 7, i32 2, !dbg !891
  store float %sub84, ptr %z87, align 8, !dbg !892
  %ev388 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 17, !dbg !893
  %28 = load ptr, ptr %ev388, align 8, !dbg !893
  %29 = load float, ptr %28, align 8, !dbg !894
  %sub94 = fsub float %29, %21, !dbg !895
  %v_dest_v13 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8, !dbg !896
  store float %sub94, ptr %v_dest_v13, align 4, !dbg !897
  %30 = load ptr, ptr %ev388, align 8, !dbg !898
  %y99 = getelementptr inbounds %struct.Vertex, ptr %30, i64 0, i32 1, !dbg !899
  %31 = load float, ptr %y99, align 4, !dbg !899
  %sub103 = fsub float %31, %24, !dbg !900
  %y106 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8, i32 1, !dbg !901
  store float %sub103, ptr %y106, align 16, !dbg !902
  %32 = load ptr, ptr %ev388, align 8, !dbg !903
  %z109 = getelementptr inbounds %struct.Vertex, ptr %32, i64 0, i32 2, !dbg !904
  %33 = load float, ptr %z109, align 8, !dbg !904
  %sub113 = fsub float %33, %27, !dbg !905
  %z116 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 8, i32 2, !dbg !906
  store float %sub113, ptr %z116, align 4, !dbg !907
  %point_pool = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 12, !dbg !908
  %ray_pool = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 11, !dbg !909
  tail call void @get_test_rays(ptr noundef nonnull %point_pool, ptr noundef nonnull %ray_pool, i64 noundef %n_rays, i64 noundef %process_id), !dbg !910
  call void @llvm.dbg.value(metadata float 0xBF847AE140000000, metadata !825, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata float 0x3FF028F5C0000000, metadata !824, metadata !DIExpression()), !dbg !829
  %pool_dst_hits = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 13, !dbg !911
  store i64 0, ptr %pool_dst_hits, align 8, !dbg !912
  call void @llvm.dbg.value(metadata i64 0, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 0, metadata !826, metadata !DIExpression()), !dbg !829
  %cmp215 = icmp sgt i64 %n_rays, 0, !dbg !913
  br i1 %cmp215, label %for.body, label %for.end, !dbg !916

for.body:                                         ; preds = %entry, %for.inc
  %ray_reject.0219 = phi i64 [ %ray_reject.1, %for.inc ], [ 0, %entry ]
  %i.0216 = phi i64 [ %inc142, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %ray_reject.0219, metadata !828, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i64 %i.0216, metadata !826, metadata !DIExpression()), !dbg !829
  %arrayidx123 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 11, i64 %i.0216, !dbg !917
  call void @llvm.dbg.value(metadata ptr %arrayidx123, metadata !827, metadata !DIExpression()), !dbg !829
  %34 = load ptr, ptr %v_src_patch, align 16, !dbg !919
  %plane_equ = getelementptr inbounds %struct._patch, ptr %34, i64 0, i32 9, !dbg !921
  %call = tail call float @inner_product(ptr noundef nonnull %arrayidx123, ptr noundef nonnull %plane_equ) #14, !dbg !922
  %cmp126 = fcmp ugt float %call, 0.000000e+00, !dbg !923
  br i1 %cmp126, label %lor.lhs.false, label %if.then, !dbg !924

lor.lhs.false:                                    ; preds = %for.body
  %35 = load ptr, ptr %v_dest_patch, align 8, !dbg !925
  %plane_equ130 = getelementptr inbounds %struct._patch, ptr %35, i64 0, i32 9, !dbg !926
  %call132 = tail call float @inner_product(ptr noundef nonnull %arrayidx123, ptr noundef nonnull %plane_equ130) #14, !dbg !927
  %cmp134 = fcmp ult float %call132, 0.000000e+00, !dbg !928
  br i1 %cmp134, label %if.end, label %if.then, !dbg !929

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %inc = add nsw i64 %ray_reject.0219, 1, !dbg !930
  call void @llvm.dbg.value(metadata i64 %inc, metadata !828, metadata !DIExpression()), !dbg !829
  br label %for.inc, !dbg !932

if.end:                                           ; preds = %lor.lhs.false
  %36 = load ptr, ptr %v_src_patch, align 16, !dbg !933
  %arrayidx140 = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 12, i64 %i.0216, !dbg !934
  %call141 = tail call i64 @traverse_bsp(ptr noundef %36, ptr noundef nonnull %arrayidx140, ptr noundef nonnull %arrayidx123, float noundef 0xBF847AE140000000, float noundef 0x3FF028F5C0000000, i64 noundef %process_id), !dbg !935
  br label %for.inc, !dbg !936

for.inc:                                          ; preds = %if.end, %if.then
  %ray_reject.1 = phi i64 [ %inc, %if.then ], [ %ray_reject.0219, %if.end ], !dbg !829
  call void @llvm.dbg.value(metadata i64 %ray_reject.1, metadata !828, metadata !DIExpression()), !dbg !829
  %inc142 = add nuw nsw i64 %i.0216, 1, !dbg !937
  call void @llvm.dbg.value(metadata i64 %inc142, metadata !826, metadata !DIExpression()), !dbg !829
  %exitcond.not = icmp eq i64 %inc142, %n_rays, !dbg !913
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !916, !llvm.loop !938

for.end:                                          ; preds = %for.inc, %entry
  %ray_reject.0.lcssa = phi i64 [ 0, %entry ], [ %ray_reject.1, %for.inc ], !dbg !829
  %cmp143 = icmp eq i64 %ray_reject.0.lcssa, %n_rays, !dbg !940
  br i1 %cmp143, label %if.then145, label %for.end.if.end148_crit_edge, !dbg !942

for.end.if.end148_crit_edge:                      ; preds = %for.end
  %.pre = load i64, ptr %pool_dst_hits, align 8, !dbg !943
  %phi.cast = sitofp i64 %.pre to float, !dbg !942
  br label %if.end148, !dbg !942

if.then145:                                       ; preds = %for.end
  store i64 1, ptr %pool_dst_hits, align 8, !dbg !944
  br label %if.end148, !dbg !946

if.end148:                                        ; preds = %for.end.if.end148_crit_edge, %if.then145
  %37 = phi float [ %phi.cast, %for.end.if.end148_crit_edge ], [ 1.000000e+00, %if.then145 ]
  %conv152 = sitofp i64 %n_rays to float, !dbg !947
  %div = fdiv float %37, %conv152, !dbg !948
  ret float %div, !dbg !949
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare !dbg !950 float @inner_product(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_visibility_values(ptr nocapture noundef readonly %elem, ptr nocapture noundef %inter, i64 noundef %n_inter, i64 noundef %process_id) local_unnamed_addr #8 !dbg !954 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !960, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %inter, metadata !961, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %n_inter, metadata !962, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !963, metadata !DIExpression()), !dbg !968
  %cmp13 = icmp sgt i64 %n_inter, 0, !dbg !969
  br i1 %cmp13, label %for.body.lr.ph, label %for.end, !dbg !970

for.body.lr.ph:                                   ; preds = %entry
  %bsp_nodes_visited = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 9
  %total_bsp_nodes_visited = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 10
  br label %for.body, !dbg !970

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %inter.addr.015 = phi ptr [ %inter, %for.body.lr.ph ], [ %4, %for.inc ]
  %n_inter.addr.014 = phi i64 [ %n_inter, %for.body.lr.ph ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %inter.addr.015, metadata !961, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %n_inter.addr.014, metadata !962, metadata !DIExpression()), !dbg !968
  %visibility = getelementptr inbounds %struct._interact, ptr %inter.addr.015, i64 0, i32 5, !dbg !971
  %0 = load float, ptr %visibility, align 4, !dbg !971
  %cmp1 = fcmp une float %0, -1.000000e+00, !dbg !973
  br i1 %cmp1, label %for.inc, label %if.end, !dbg !974

if.end:                                           ; preds = %for.body
  store i64 0, ptr %bsp_nodes_visited, align 8, !dbg !975
  %destination = getelementptr inbounds %struct._interact, ptr %inter.addr.015, i64 0, i32 1, !dbg !976
  %1 = load ptr, ptr %destination, align 8, !dbg !976
  %call = tail call float @visibility(ptr noundef %elem, ptr noundef %1, i64 noundef 10, i64 noundef %process_id), !dbg !977
  call void @llvm.dbg.value(metadata float %call, metadata !964, metadata !DIExpression()), !dbg !978
  store float %call, ptr %visibility, align 4, !dbg !979
  %2 = load i64, ptr %bsp_nodes_visited, align 8, !dbg !980
  %3 = load i64, ptr %total_bsp_nodes_visited, align 16, !dbg !981
  %add = add nsw i64 %3, %2, !dbg !981
  store i64 %add, ptr %total_bsp_nodes_visited, align 16, !dbg !981
  br label %for.inc, !dbg !982

for.inc:                                          ; preds = %for.body, %if.end
  %4 = load ptr, ptr %inter.addr.015, align 8, !dbg !983
  call void @llvm.dbg.value(metadata ptr %4, metadata !961, metadata !DIExpression()), !dbg !968
  %dec = add nsw i64 %n_inter.addr.014, -1, !dbg !984
  call void @llvm.dbg.value(metadata i64 %dec, metadata !962, metadata !DIExpression()), !dbg !968
  %cmp = icmp sgt i64 %n_inter.addr.014, 1, !dbg !969
  br i1 %cmp, label %for.body, label %for.end, !dbg !970, !llvm.loop !985

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !987
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @visibility_task(ptr noundef %elem, ptr nocapture noundef %inter, i64 noundef %n_inter, ptr nocapture noundef readonly %k, i64 noundef %process_id) local_unnamed_addr #8 !dbg !988 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !995, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr %inter, metadata !996, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %n_inter, metadata !997, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata ptr %k, metadata !998, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !999, metadata !DIExpression()), !dbg !1001
  %total_bsp_nodes_visited = getelementptr inbounds [1024 x %struct.v_struct], ptr @vis_struct, i64 0, i64 %process_id, i32 10, !dbg !1002
  store i64 0, ptr %total_bsp_nodes_visited, align 16, !dbg !1003
  tail call void @compute_visibility_values(ptr noundef %elem, ptr noundef %inter, i64 noundef %n_inter, i64 noundef %process_id), !dbg !1004
  %0 = load ptr, ptr %elem, align 8, !dbg !1005
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #14, !dbg !1007
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 10, !dbg !1008
  %1 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !1009
  %sub = sub nsw i64 %1, %n_inter, !dbg !1009
  store i64 %sub, ptr %n_vis_undef_inter, align 8, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1000, metadata !DIExpression()), !dbg !1001
  %2 = load ptr, ptr %elem, align 8, !dbg !1010
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %2) #14, !dbg !1012
  %cmp = icmp eq i64 %1, %n_inter, !dbg !1013
  br i1 %cmp, label %if.then, label %if.end, !dbg !1015

if.then:                                          ; preds = %entry
  tail call void (ptr, i64, ...) %k(ptr noundef nonnull %elem, i64 noundef %process_id) #14, !dbg !1016
  br label %if.end, !dbg !1016

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1017
}

; Function Attrs: nounwind
declare !dbg !1018 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !1023 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rand_ray1", scope: !2, file: !3, line: 1180, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "visible.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "3cb97117406aaa90c6142c6be2d51b41")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !8, line: 14, baseType: !9)
!8 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 12, size: 96, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !9, file: !8, line: 13, baseType: !5, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !9, file: !8, line: 13, baseType: !5, size: 32, offset: 32)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !9, file: !8, line: 13, baseType: !5, size: 32, offset: 64)
!14 = !{!0, !15, !21}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "rand_ray2", scope: !2, file: !3, line: 1180, type: !17, isLocal: false, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1024, elements: !18)
!18 = !{!19, !20}
!19 = !DISubrange(count: 16)
!20 = !DISubrange(count: 2)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "vis_struct", scope: !2, file: !3, line: 1197, type: !23, isLocal: false, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 71303168, elements: !182)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "v_struct", file: !3, line: 1182, size: 69632, elements: !25)
!25 = !{!26, !31, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !175, !177, !178, !181}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !24, file: !3, line: 1183, baseType: !27, size: 32768)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32768, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 4096)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "v_src_patch", scope: !24, file: !3, line: 1185, baseType: !32, size: 64, offset: 32768)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 347, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 331, size: 1344, elements: !35)
!35 = !{!36, !88, !89, !90, !101, !102, !103, !104, !105, !106, !112, !113, !114, !115, !117, !118, !119, !156}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !34, file: !3, line: 332, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 255, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 250, size: 320, elements: !40)
!40 = !{!41, !42, !49, !50}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !39, file: !3, line: 251, baseType: !7, size: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !39, file: !3, line: 252, baseType: !43, size: 96, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !8, line: 24, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 22, size: 96, elements: !45)
!45 = !{!46, !47, !48}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !44, file: !8, line: 23, baseType: !5, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !44, file: !8, line: 23, baseType: !5, size: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !44, file: !8, line: 23, baseType: !5, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !39, file: !3, line: 253, baseType: !5, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !39, file: !3, line: 254, baseType: !51, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 116, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 113, size: 320, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !53, file: !3, line: 115, baseType: !56, size: 320)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !57, line: 67, size: 320, elements: !59)
!59 = !{!60, !82, !86}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !58, file: !57, line: 69, baseType: !61, size: 320)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !62, line: 22, size: 320, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!63 = !{!64, !66, !68, !69, !70, !71, !73, !74}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !61, file: !62, line: 24, baseType: !65, size: 32)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !61, file: !62, line: 25, baseType: !67, size: 32, offset: 32)
!67 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !61, file: !62, line: 26, baseType: !65, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !61, file: !62, line: 28, baseType: !67, size: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !61, file: !62, line: 32, baseType: !65, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !61, file: !62, line: 34, baseType: !72, size: 16, offset: 160)
!72 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !61, file: !62, line: 35, baseType: !72, size: 16, offset: 176)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !61, file: !62, line: 36, baseType: !75, size: 128, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !76, line: 53, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !76, line: 49, size: 128, elements: !78)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !77, file: !76, line: 51, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !77, file: !76, line: 52, baseType: !80, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !58, file: !57, line: 70, baseType: !83, size: 320)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 320, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 40)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !58, file: !57, line: 71, baseType: !87, size: 64)
!87 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !34, file: !3, line: 332, baseType: !37, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !34, file: !3, line: 332, baseType: !37, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !34, file: !3, line: 333, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 278, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 274, size: 320, elements: !94)
!94 = !{!95, !96, !97, !99, !100}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !93, file: !3, line: 275, baseType: !37, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !93, file: !3, line: 275, baseType: !37, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !93, file: !3, line: 276, baseType: !98, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !93, file: !3, line: 276, baseType: !98, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !93, file: !3, line: 277, baseType: !51, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !34, file: !3, line: 333, baseType: !91, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !34, file: !3, line: 333, baseType: !91, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !34, file: !3, line: 334, baseType: !7, size: 96, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !34, file: !3, line: 334, baseType: !7, size: 96, offset: 480)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !34, file: !3, line: 334, baseType: !7, size: 96, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !34, file: !3, line: 335, baseType: !107, size: 128, offset: 672)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 303, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 299, size: 128, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !108, file: !3, line: 300, baseType: !7, size: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !108, file: !3, line: 301, baseType: !5, size: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !34, file: !3, line: 336, baseType: !5, size: 32, offset: 800)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !34, file: !3, line: 337, baseType: !43, size: 96, offset: 832)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !34, file: !3, line: 339, baseType: !43, size: 96, offset: 928)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !34, file: !3, line: 341, baseType: !116, size: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !34, file: !3, line: 342, baseType: !116, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !34, file: !3, line: 343, baseType: !116, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !34, file: !3, line: 345, baseType: !120, size: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 387, size: 1536, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !121, file: !3, line: 388, baseType: !51, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !121, file: !3, line: 389, baseType: !32, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !3, line: 391, baseType: !120, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !121, file: !3, line: 392, baseType: !120, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !121, file: !3, line: 393, baseType: !120, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !121, file: !3, line: 394, baseType: !120, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !121, file: !3, line: 395, baseType: !120, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !121, file: !3, line: 397, baseType: !131, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 433, size: 256, elements: !133)
!133 = !{!134, !135, !138, !139, !140, !141}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !132, file: !3, line: 434, baseType: !131, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !132, file: !3, line: 435, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 412, baseType: !121)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !132, file: !3, line: 436, baseType: !5, size: 32, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !132, file: !3, line: 437, baseType: !5, size: 32, offset: 160)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !132, file: !3, line: 438, baseType: !5, size: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !132, file: !3, line: 439, baseType: !5, size: 32, offset: 224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !121, file: !3, line: 398, baseType: !87, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !121, file: !3, line: 399, baseType: !131, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !121, file: !3, line: 400, baseType: !87, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !121, file: !3, line: 402, baseType: !43, size: 96, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !121, file: !3, line: 404, baseType: !43, size: 96, offset: 800)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !121, file: !3, line: 405, baseType: !43, size: 96, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !121, file: !3, line: 407, baseType: !87, size: 64, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !121, file: !3, line: 409, baseType: !37, size: 64, offset: 1088)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !121, file: !3, line: 409, baseType: !37, size: 64, offset: 1152)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !121, file: !3, line: 409, baseType: !37, size: 64, offset: 1216)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !121, file: !3, line: 410, baseType: !91, size: 64, offset: 1280)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !121, file: !3, line: 410, baseType: !91, size: 64, offset: 1344)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !121, file: !3, line: 410, baseType: !91, size: 64, offset: 1408)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !121, file: !3, line: 411, baseType: !5, size: 32, offset: 1472)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !34, file: !3, line: 346, baseType: !87, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "v_dest_patch", scope: !24, file: !3, line: 1185, baseType: !32, size: 64, offset: 32832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "v_src_p1", scope: !24, file: !3, line: 1186, baseType: !7, size: 96, offset: 32896)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "v_dest_p1", scope: !24, file: !3, line: 1186, baseType: !7, size: 96, offset: 32992)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "v_src_v12", scope: !24, file: !3, line: 1187, baseType: !7, size: 96, offset: 33088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "v_src_v13", scope: !24, file: !3, line: 1187, baseType: !7, size: 96, offset: 33184)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "v_dest_v12", scope: !24, file: !3, line: 1188, baseType: !7, size: 96, offset: 33280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "v_dest_v13", scope: !24, file: !3, line: 1188, baseType: !7, size: 96, offset: 33376)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_nodes_visited", scope: !24, file: !3, line: 1190, baseType: !87, size: 64, offset: 33472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "total_bsp_nodes_visited", scope: !24, file: !3, line: 1190, baseType: !87, size: 64, offset: 33536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ray_pool", scope: !24, file: !3, line: 1191, baseType: !167, size: 1536, offset: 33600)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 1536, elements: !174)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ray", file: !8, line: 34, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 32, size: 96, elements: !170)
!170 = !{!171, !172, !173}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !169, file: !8, line: 33, baseType: !5, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !169, file: !8, line: 33, baseType: !5, size: 32, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !169, file: !8, line: 33, baseType: !5, size: 32, offset: 64)
!174 = !{!19}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "point_pool", scope: !24, file: !3, line: 1192, baseType: !176, size: 1536, offset: 35136)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1536, elements: !174)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pool_dst_hits", scope: !24, file: !3, line: 1193, baseType: !87, size: 64, offset: 36672)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "patch_cache", scope: !24, file: !3, line: 1194, baseType: !179, size: 128, offset: 36736)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !180)
!180 = !{!20}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !24, file: !3, line: 1195, baseType: !27, size: 32768, offset: 36864)
!182 = !{!183}
!183 = !DISubrange(count: 1024)
!184 = !{i32 7, !"Dwarf Version", i32 5}
!185 = !{i32 2, !"Debug Info Version", i32 3}
!186 = !{i32 1, !"wchar_size", i32 4}
!187 = !{i32 7, !"PIC Level", i32 2}
!188 = !{i32 7, !"PIE Level", i32 2}
!189 = !{i32 7, !"uwtable", i32 2}
!190 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!191 = distinct !DISubprogram(name: "init_visibility_module", scope: !3, file: !3, line: 1218, type: !192, scopeLine: 1219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !87}
!194 = !{!195}
!195 = !DILocalVariable(name: "process_id", arg: 1, scope: !191, file: !3, line: 1218, type: !87)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocation(line: 1223, column: 21, scope: !191)
!198 = !DILocation(line: 1223, column: 52, scope: !191)
!199 = !DILocation(line: 1224, column: 21, scope: !191)
!200 = !DILocation(line: 1224, column: 52, scope: !191)
!201 = !DILocation(line: 1225, column: 21, scope: !191)
!202 = !DILocation(line: 1225, column: 52, scope: !191)
!203 = !DILocation(line: 1226, column: 21, scope: !191)
!204 = !DILocation(line: 1226, column: 52, scope: !191)
!205 = !DILocation(line: 1227, column: 21, scope: !191)
!206 = !DILocation(line: 1227, column: 52, scope: !191)
!207 = !DILocation(line: 1228, column: 21, scope: !191)
!208 = !DILocation(line: 1228, column: 52, scope: !191)
!209 = !DILocation(line: 1231, column: 21, scope: !191)
!210 = !DILocation(line: 1231, column: 52, scope: !191)
!211 = !DILocation(line: 1232, column: 21, scope: !191)
!212 = !DILocation(line: 1232, column: 52, scope: !191)
!213 = !DILocation(line: 1233, column: 21, scope: !191)
!214 = !DILocation(line: 1233, column: 52, scope: !191)
!215 = !DILocation(line: 1234, column: 21, scope: !191)
!216 = !DILocation(line: 1234, column: 52, scope: !191)
!217 = !DILocation(line: 1235, column: 21, scope: !191)
!218 = !DILocation(line: 1235, column: 52, scope: !191)
!219 = !DILocation(line: 1236, column: 21, scope: !191)
!220 = !DILocation(line: 1236, column: 52, scope: !191)
!221 = !DILocation(line: 1239, column: 21, scope: !191)
!222 = !DILocation(line: 1239, column: 52, scope: !191)
!223 = !DILocation(line: 1240, column: 21, scope: !191)
!224 = !DILocation(line: 1240, column: 52, scope: !191)
!225 = !DILocation(line: 1241, column: 21, scope: !191)
!226 = !DILocation(line: 1241, column: 52, scope: !191)
!227 = !DILocation(line: 1242, column: 21, scope: !191)
!228 = !DILocation(line: 1242, column: 52, scope: !191)
!229 = !DILocation(line: 1243, column: 21, scope: !191)
!230 = !DILocation(line: 1243, column: 52, scope: !191)
!231 = !DILocation(line: 1244, column: 21, scope: !191)
!232 = !DILocation(line: 1244, column: 52, scope: !191)
!233 = !DILocation(line: 1247, column: 21, scope: !191)
!234 = !DILocation(line: 1247, column: 52, scope: !191)
!235 = !DILocation(line: 1248, column: 21, scope: !191)
!236 = !DILocation(line: 1248, column: 52, scope: !191)
!237 = !DILocation(line: 1251, column: 22, scope: !191)
!238 = !DILocation(line: 1251, column: 54, scope: !191)
!239 = !DILocation(line: 1252, column: 22, scope: !191)
!240 = !DILocation(line: 1252, column: 54, scope: !191)
!241 = !DILocation(line: 1253, column: 22, scope: !191)
!242 = !DILocation(line: 1253, column: 54, scope: !191)
!243 = !DILocation(line: 1254, column: 22, scope: !191)
!244 = !DILocation(line: 1254, column: 54, scope: !191)
!245 = !DILocation(line: 1255, column: 22, scope: !191)
!246 = !DILocation(line: 1255, column: 54, scope: !191)
!247 = !DILocation(line: 1256, column: 22, scope: !191)
!248 = !DILocation(line: 1256, column: 54, scope: !191)
!249 = !DILocation(line: 1259, column: 22, scope: !191)
!250 = !DILocation(line: 1259, column: 54, scope: !191)
!251 = !DILocation(line: 1260, column: 22, scope: !191)
!252 = !DILocation(line: 1260, column: 54, scope: !191)
!253 = !DILocation(line: 1261, column: 22, scope: !191)
!254 = !DILocation(line: 1261, column: 54, scope: !191)
!255 = !DILocation(line: 1262, column: 22, scope: !191)
!256 = !DILocation(line: 1262, column: 54, scope: !191)
!257 = !DILocation(line: 1263, column: 22, scope: !191)
!258 = !DILocation(line: 1263, column: 54, scope: !191)
!259 = !DILocation(line: 1264, column: 22, scope: !191)
!260 = !DILocation(line: 1264, column: 54, scope: !191)
!261 = !DILocation(line: 1267, column: 5, scope: !191)
!262 = !DILocation(line: 1268, column: 1, scope: !191)
!263 = distinct !DISubprogram(name: "init_patch_cache", scope: !3, file: !3, line: 1757, type: !192, scopeLine: 1758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "process_id", arg: 1, scope: !263, file: !3, line: 1757, type: !87)
!266 = !DILocalVariable(name: "i", scope: !263, file: !3, line: 1759, type: !87)
!267 = !DILocation(line: 0, scope: !263)
!268 = !DILocation(line: 1761, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !263, file: !3, line: 1761, column: 5)
!270 = !DILocation(line: 1762, column: 49, scope: !271)
!271 = distinct !DILexicalBlock(scope: !269, file: !3, line: 1761, column: 5)
!272 = !DILocation(line: 1763, column: 1, scope: !263)
!273 = distinct !DISubprogram(name: "get_test_rays", scope: !3, file: !3, line: 1281, type: !274, scopeLine: 1282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !6, !276, !87, !87}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!277 = !{!278, !279, !280, !281, !282, !283, !284, !285, !286}
!278 = !DILocalVariable(name: "p_src", arg: 1, scope: !273, file: !3, line: 1281, type: !6)
!279 = !DILocalVariable(name: "v", arg: 2, scope: !273, file: !3, line: 1281, type: !276)
!280 = !DILocalVariable(name: "no", arg: 3, scope: !273, file: !3, line: 1281, type: !87)
!281 = !DILocalVariable(name: "process_id", arg: 4, scope: !273, file: !3, line: 1281, type: !87)
!282 = !DILocalVariable(name: "g_index", scope: !273, file: !3, line: 1283, type: !87)
!283 = !DILocalVariable(name: "i", scope: !273, file: !3, line: 1283, type: !87)
!284 = !DILocalVariable(name: "p_dst", scope: !273, file: !3, line: 1284, type: !7)
!285 = !DILocalVariable(name: "fv1", scope: !273, file: !3, line: 1285, type: !5)
!286 = !DILocalVariable(name: "fv2", scope: !273, file: !3, line: 1285, type: !5)
!287 = !DILocation(line: 0, scope: !273)
!288 = !DILocation(line: 1290, column: 33, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 1290, column: 5)
!290 = distinct !DILexicalBlock(scope: !273, file: !3, line: 1290, column: 5)
!291 = !DILocation(line: 1290, column: 5, scope: !290)
!292 = !DILocation(line: 1287, column: 9, scope: !273)
!293 = !DILocation(line: 1292, column: 15, scope: !294)
!294 = distinct !DILexicalBlock(scope: !289, file: !3, line: 1290, column: 55)
!295 = !DILocation(line: 1293, column: 15, scope: !294)
!296 = !DILocation(line: 1294, column: 52, scope: !294)
!297 = !DILocation(line: 1294, column: 89, scope: !294)
!298 = !DILocation(line: 1294, column: 54, scope: !294)
!299 = !DILocation(line: 1294, column: 132, scope: !294)
!300 = !DILocation(line: 1294, column: 97, scope: !294)
!301 = !DILocation(line: 1294, column: 18, scope: !294)
!302 = !DILocation(line: 1295, column: 52, scope: !294)
!303 = !DILocation(line: 1295, column: 89, scope: !294)
!304 = !DILocation(line: 1295, column: 54, scope: !294)
!305 = !DILocation(line: 1295, column: 132, scope: !294)
!306 = !DILocation(line: 1295, column: 97, scope: !294)
!307 = !DILocation(line: 1295, column: 16, scope: !294)
!308 = !DILocation(line: 1295, column: 18, scope: !294)
!309 = !DILocation(line: 1296, column: 52, scope: !294)
!310 = !DILocation(line: 1296, column: 89, scope: !294)
!311 = !DILocation(line: 1296, column: 54, scope: !294)
!312 = !DILocation(line: 1296, column: 132, scope: !294)
!313 = !DILocation(line: 1296, column: 97, scope: !294)
!314 = !DILocation(line: 1296, column: 16, scope: !294)
!315 = !DILocation(line: 1296, column: 18, scope: !294)
!316 = !DILocation(line: 1298, column: 15, scope: !294)
!317 = !DILocation(line: 1299, column: 15, scope: !294)
!318 = !DILocation(line: 1300, column: 52, scope: !294)
!319 = !DILocation(line: 1300, column: 90, scope: !294)
!320 = !DILocation(line: 1300, column: 54, scope: !294)
!321 = !DILocation(line: 1300, column: 134, scope: !294)
!322 = !DILocation(line: 1300, column: 98, scope: !294)
!323 = !DILocation(line: 1301, column: 52, scope: !294)
!324 = !DILocation(line: 1301, column: 90, scope: !294)
!325 = !DILocation(line: 1301, column: 54, scope: !294)
!326 = !DILocation(line: 1301, column: 134, scope: !294)
!327 = !DILocation(line: 1301, column: 98, scope: !294)
!328 = !DILocation(line: 1302, column: 52, scope: !294)
!329 = !DILocation(line: 1302, column: 90, scope: !294)
!330 = !DILocation(line: 1302, column: 54, scope: !294)
!331 = !DILocation(line: 1302, column: 134, scope: !294)
!332 = !DILocation(line: 1302, column: 98, scope: !294)
!333 = !DILocation(line: 1304, column: 24, scope: !294)
!334 = !DILocation(line: 1304, column: 14, scope: !294)
!335 = !DILocation(line: 1305, column: 33, scope: !294)
!336 = !DILocation(line: 1305, column: 24, scope: !294)
!337 = !DILocation(line: 1305, column: 12, scope: !294)
!338 = !DILocation(line: 1305, column: 14, scope: !294)
!339 = !DILocation(line: 1306, column: 33, scope: !294)
!340 = !DILocation(line: 1306, column: 24, scope: !294)
!341 = !DILocation(line: 1306, column: 12, scope: !294)
!342 = !DILocation(line: 1306, column: 14, scope: !294)
!343 = !DILocation(line: 1308, column: 14, scope: !294)
!344 = !DILocation(line: 1309, column: 10, scope: !294)
!345 = !DILocation(line: 1290, column: 51, scope: !289)
!346 = distinct !{!346, !291, !347, !348, !349}
!347 = !DILocation(line: 1310, column: 5, scope: !290)
!348 = !{!"llvm.loop.mustprogress"}
!349 = !{!"llvm.loop.unroll.disable"}
!350 = !DILocation(line: 1311, column: 1, scope: !273)
!351 = distinct !DISubprogram(name: "v_intersect", scope: !3, file: !3, line: 1321, type: !352, scopeLine: 1322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !354)
!352 = !DISubroutineType(types: !353)
!353 = !{!87, !32, !6, !276, !5}
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381}
!355 = !DILocalVariable(name: "patch", arg: 1, scope: !351, file: !3, line: 1321, type: !32)
!356 = !DILocalVariable(name: "p", arg: 2, scope: !351, file: !3, line: 1321, type: !6)
!357 = !DILocalVariable(name: "ray", arg: 3, scope: !351, file: !3, line: 1321, type: !276)
!358 = !DILocalVariable(name: "t", arg: 4, scope: !351, file: !3, line: 1321, type: !5)
!359 = !DILocalVariable(name: "px", scope: !351, file: !3, line: 1323, type: !5)
!360 = !DILocalVariable(name: "py", scope: !351, file: !3, line: 1323, type: !5)
!361 = !DILocalVariable(name: "pz", scope: !351, file: !3, line: 1323, type: !5)
!362 = !DILocalVariable(name: "nx", scope: !351, file: !3, line: 1324, type: !5)
!363 = !DILocalVariable(name: "ny", scope: !351, file: !3, line: 1324, type: !5)
!364 = !DILocalVariable(name: "nz", scope: !351, file: !3, line: 1324, type: !5)
!365 = !DILocalVariable(name: "rx", scope: !351, file: !3, line: 1325, type: !5)
!366 = !DILocalVariable(name: "ry", scope: !351, file: !3, line: 1325, type: !5)
!367 = !DILocalVariable(name: "rz", scope: !351, file: !3, line: 1325, type: !5)
!368 = !DILocalVariable(name: "x", scope: !351, file: !3, line: 1326, type: !5)
!369 = !DILocalVariable(name: "y", scope: !351, file: !3, line: 1326, type: !5)
!370 = !DILocalVariable(name: "x1", scope: !351, file: !3, line: 1326, type: !5)
!371 = !DILocalVariable(name: "x2", scope: !351, file: !3, line: 1326, type: !5)
!372 = !DILocalVariable(name: "x3", scope: !351, file: !3, line: 1326, type: !5)
!373 = !DILocalVariable(name: "y1", scope: !351, file: !3, line: 1326, type: !5)
!374 = !DILocalVariable(name: "y2", scope: !351, file: !3, line: 1326, type: !5)
!375 = !DILocalVariable(name: "y3", scope: !351, file: !3, line: 1326, type: !5)
!376 = !DILocalVariable(name: "a", scope: !351, file: !3, line: 1327, type: !5)
!377 = !DILocalVariable(name: "b", scope: !351, file: !3, line: 1327, type: !5)
!378 = !DILocalVariable(name: "c", scope: !351, file: !3, line: 1327, type: !5)
!379 = !DILocalVariable(name: "nc", scope: !351, file: !3, line: 1328, type: !87)
!380 = !DILocalVariable(name: "sh", scope: !351, file: !3, line: 1328, type: !87)
!381 = !DILocalVariable(name: "nsh", scope: !351, file: !3, line: 1328, type: !87)
!382 = !DILocation(line: 0, scope: !351)
!383 = !DILocation(line: 1330, column: 17, scope: !351)
!384 = !DILocation(line: 1330, column: 29, scope: !351)
!385 = !DILocation(line: 1331, column: 29, scope: !351)
!386 = !DILocation(line: 1332, column: 29, scope: !351)
!387 = !DILocation(line: 1334, column: 15, scope: !351)
!388 = !DILocation(line: 1335, column: 15, scope: !351)
!389 = !DILocation(line: 1336, column: 15, scope: !351)
!390 = !DILocation(line: 1338, column: 13, scope: !351)
!391 = !DILocation(line: 1339, column: 13, scope: !351)
!392 = !DILocation(line: 1340, column: 13, scope: !351)
!393 = !DILocation(line: 1343, column: 9, scope: !351)
!394 = !DILocation(line: 1343, column: 23, scope: !351)
!395 = !DILocation(line: 1343, column: 37, scope: !351)
!396 = !DILocation(line: 1345, column: 11, scope: !397)
!397 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1345, column: 9)
!398 = !DILocation(line: 1345, column: 9, scope: !351)
!399 = !DILocation(line: 1346, column: 15, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 1346, column: 13)
!401 = !DILocation(line: 1346, column: 13, scope: !397)
!402 = !DILocation(line: 1347, column: 21, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !3, line: 1346, column: 20)
!404 = !DILocation(line: 1347, column: 38, scope: !403)
!405 = !DILocation(line: 1348, column: 28, scope: !403)
!406 = !DILocation(line: 1348, column: 46, scope: !403)
!407 = !DILocation(line: 1349, column: 28, scope: !403)
!408 = !DILocation(line: 1349, column: 46, scope: !403)
!409 = !DILocation(line: 1350, column: 28, scope: !403)
!410 = !DILocation(line: 1350, column: 46, scope: !403)
!411 = !DILocation(line: 1351, column: 9, scope: !403)
!412 = !DILocation(line: 1352, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !400, file: !3, line: 1351, column: 16)
!414 = !DILocation(line: 1352, column: 38, scope: !413)
!415 = !DILocation(line: 1353, column: 25, scope: !413)
!416 = !DILocation(line: 1353, column: 46, scope: !413)
!417 = !DILocation(line: 1354, column: 25, scope: !413)
!418 = !DILocation(line: 1354, column: 46, scope: !413)
!419 = !DILocation(line: 1355, column: 25, scope: !413)
!420 = !DILocation(line: 1355, column: 46, scope: !413)
!421 = !DILocation(line: 1357, column: 16, scope: !422)
!422 = distinct !DILexicalBlock(scope: !397, file: !3, line: 1357, column: 14)
!423 = !DILocation(line: 0, scope: !422)
!424 = !DILocation(line: 1357, column: 14, scope: !397)
!425 = !DILocation(line: 1358, column: 34, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !3, line: 1357, column: 21)
!427 = !DILocation(line: 1359, column: 21, scope: !426)
!428 = !DILocation(line: 1359, column: 42, scope: !426)
!429 = !DILocation(line: 1360, column: 21, scope: !426)
!430 = !DILocation(line: 1360, column: 42, scope: !426)
!431 = !DILocation(line: 1361, column: 21, scope: !426)
!432 = !DILocation(line: 1361, column: 42, scope: !426)
!433 = !DILocation(line: 1362, column: 5, scope: !426)
!434 = !DILocation(line: 1363, column: 34, scope: !435)
!435 = distinct !DILexicalBlock(scope: !422, file: !3, line: 1362, column: 12)
!436 = !DILocation(line: 1364, column: 21, scope: !435)
!437 = !DILocation(line: 1364, column: 42, scope: !435)
!438 = !DILocation(line: 1365, column: 21, scope: !435)
!439 = !DILocation(line: 1365, column: 42, scope: !435)
!440 = !DILocation(line: 1366, column: 21, scope: !435)
!441 = !DILocation(line: 1366, column: 42, scope: !435)
!442 = !DILocation(line: 0, scope: !397)
!443 = !DILocation(line: 1370, column: 8, scope: !351)
!444 = !DILocation(line: 1370, column: 17, scope: !351)
!445 = !DILocation(line: 1371, column: 8, scope: !351)
!446 = !DILocation(line: 1371, column: 17, scope: !351)
!447 = !DILocation(line: 1372, column: 8, scope: !351)
!448 = !DILocation(line: 1372, column: 17, scope: !351)
!449 = !DILocation(line: 1376, column: 12, scope: !450)
!450 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1376, column: 9)
!451 = !DILocation(line: 1381, column: 12, scope: !452)
!452 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1381, column: 9)
!453 = !DILocation(line: 1381, column: 9, scope: !351)
!454 = !DILocation(line: 0, scope: !452)
!455 = !DILocation(line: 1386, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1386, column: 9)
!457 = !DILocation(line: 1386, column: 9, scope: !351)
!458 = !DILocation(line: 1387, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 1387, column: 13)
!460 = distinct !DILexicalBlock(scope: !456, file: !3, line: 1386, column: 20)
!461 = !DILocation(line: 1387, column: 25, scope: !459)
!462 = !DILocation(line: 1389, column: 30, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 1389, column: 18)
!464 = !DILocation(line: 1390, column: 32, scope: !465)
!465 = distinct !DILexicalBlock(scope: !463, file: !3, line: 1390, column: 17)
!466 = !DILocation(line: 1390, column: 26, scope: !465)
!467 = !DILocation(line: 1390, column: 44, scope: !465)
!468 = !DILocation(line: 1390, column: 38, scope: !465)
!469 = !DILocation(line: 1390, column: 21, scope: !465)
!470 = !DILocation(line: 1390, column: 51, scope: !465)
!471 = !DILocation(line: 1390, column: 17, scope: !463)
!472 = !DILocation(line: 1391, column: 17, scope: !465)
!473 = !DILocation(line: 1395, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1395, column: 9)
!475 = !DILocation(line: 1400, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1400, column: 9)
!477 = !DILocation(line: 1400, column: 9, scope: !351)
!478 = !DILocation(line: 1401, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 1401, column: 13)
!480 = distinct !DILexicalBlock(scope: !476, file: !3, line: 1400, column: 20)
!481 = !DILocation(line: 1401, column: 25, scope: !479)
!482 = !DILocation(line: 1402, column: 15, scope: !479)
!483 = !DILocation(line: 1402, column: 13, scope: !479)
!484 = !DILocation(line: 1403, column: 30, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !3, line: 1403, column: 18)
!486 = !DILocation(line: 1404, column: 32, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !3, line: 1404, column: 17)
!488 = !DILocation(line: 1404, column: 26, scope: !487)
!489 = !DILocation(line: 1404, column: 44, scope: !487)
!490 = !DILocation(line: 1404, column: 38, scope: !487)
!491 = !DILocation(line: 1404, column: 21, scope: !487)
!492 = !DILocation(line: 1404, column: 51, scope: !487)
!493 = !DILocation(line: 1404, column: 17, scope: !485)
!494 = !DILocation(line: 1405, column: 19, scope: !487)
!495 = !DILocation(line: 1405, column: 17, scope: !487)
!496 = !DILocation(line: 1414, column: 12, scope: !497)
!497 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1414, column: 9)
!498 = !DILocation(line: 1414, column: 9, scope: !351)
!499 = !DILocation(line: 1415, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 1415, column: 13)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 1414, column: 20)
!502 = !DILocation(line: 1415, column: 25, scope: !500)
!503 = !DILocation(line: 1416, column: 15, scope: !500)
!504 = !DILocation(line: 1416, column: 13, scope: !500)
!505 = !DILocation(line: 1417, column: 30, scope: !506)
!506 = distinct !DILexicalBlock(scope: !500, file: !3, line: 1417, column: 18)
!507 = !DILocation(line: 1418, column: 32, scope: !508)
!508 = distinct !DILexicalBlock(scope: !506, file: !3, line: 1418, column: 17)
!509 = !DILocation(line: 1418, column: 26, scope: !508)
!510 = !DILocation(line: 1418, column: 44, scope: !508)
!511 = !DILocation(line: 1418, column: 38, scope: !508)
!512 = !DILocation(line: 1418, column: 21, scope: !508)
!513 = !DILocation(line: 1418, column: 51, scope: !508)
!514 = !DILocation(line: 1418, column: 17, scope: !506)
!515 = !DILocation(line: 1419, column: 19, scope: !508)
!516 = !DILocation(line: 1419, column: 17, scope: !508)
!517 = !DILocation(line: 1423, column: 18, scope: !518)
!518 = distinct !DILexicalBlock(scope: !351, file: !3, line: 1423, column: 9)
!519 = !DILocation(line: 1429, column: 1, scope: !351)
!520 = distinct !DISubprogram(name: "traverse_bsp", scope: !3, file: !3, line: 1466, type: !521, scopeLine: 1467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!87, !32, !6, !276, !5, !5, !87}
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!524 = !DILocalVariable(name: "src_node", arg: 1, scope: !520, file: !3, line: 1466, type: !32)
!525 = !DILocalVariable(name: "p", arg: 2, scope: !520, file: !3, line: 1466, type: !6)
!526 = !DILocalVariable(name: "ray", arg: 3, scope: !520, file: !3, line: 1466, type: !276)
!527 = !DILocalVariable(name: "r_min", arg: 4, scope: !520, file: !3, line: 1466, type: !5)
!528 = !DILocalVariable(name: "r_max", arg: 5, scope: !520, file: !3, line: 1466, type: !5)
!529 = !DILocalVariable(name: "process_id", arg: 6, scope: !520, file: !3, line: 1466, type: !87)
!530 = !DILocalVariable(name: "t", scope: !520, file: !3, line: 1468, type: !5)
!531 = !DILocalVariable(name: "parent", scope: !520, file: !3, line: 1469, type: !32)
!532 = !DILocalVariable(name: "visited_child", scope: !520, file: !3, line: 1469, type: !32)
!533 = !DILocalVariable(name: "advice", scope: !520, file: !3, line: 1470, type: !87)
!534 = !DILocation(line: 0, scope: !520)
!535 = !DILocation(line: 1468, column: 5, scope: !520)
!536 = !DILocation(line: 1468, column: 11, scope: !520)
!537 = !DILocation(line: 1474, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !520, file: !3, line: 1474, column: 9)
!539 = !DILocation(line: 1474, column: 9, scope: !520)
!540 = !DILocation(line: 1478, column: 37, scope: !541)
!541 = distinct !DILexicalBlock(scope: !520, file: !3, line: 1478, column: 9)
!542 = !DILocation(line: 1478, column: 9, scope: !541)
!543 = !DILocation(line: 1478, column: 9, scope: !520)
!544 = !DILocation(line: 0, scope: !545)
!545 = distinct !DILexicalBlock(scope: !520, file: !3, line: 1482, column: 5)
!546 = !DILocation(line: 1482, column: 5, scope: !545)
!547 = !DILocation(line: 1487, column: 22, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 1485, column: 9)
!549 = distinct !DILexicalBlock(scope: !545, file: !3, line: 1482, column: 5)
!550 = !DILocation(line: 1488, column: 25, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !3, line: 1488, column: 17)
!552 = !DILocation(line: 1488, column: 51, scope: !551)
!553 = !DILocation(line: 1490, column: 60, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 1490, column: 25)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 1489, column: 17)
!556 = !DILocation(line: 1490, column: 25, scope: !554)
!557 = !DILocation(line: 1490, column: 25, scope: !555)
!558 = !DILocation(line: 1493, column: 29, scope: !555)
!559 = !DILocation(line: 1493, column: 31, scope: !555)
!560 = !DILocation(line: 1494, column: 17, scope: !555)
!561 = !DILocation(line: 1497, column: 28, scope: !562)
!562 = distinct !DILexicalBlock(scope: !548, file: !3, line: 1497, column: 19)
!563 = !DILocation(line: 1497, column: 41, scope: !562)
!564 = !DILocation(line: 1497, column: 59, scope: !562)
!565 = !DILocation(line: 1499, column: 51, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 1499, column: 25)
!567 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1498, column: 17)
!568 = !DILocation(line: 1499, column: 25, scope: !566)
!569 = !DILocation(line: 1499, column: 25, scope: !567)
!570 = !DILocation(line: 1502, column: 44, scope: !571)
!571 = distinct !DILexicalBlock(scope: !562, file: !3, line: 1502, column: 22)
!572 = !DILocation(line: 1502, column: 62, scope: !571)
!573 = !DILocation(line: 1504, column: 25, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1504, column: 25)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 1503, column: 17)
!576 = !DILocation(line: 1504, column: 25, scope: !575)
!577 = distinct !{!577, !546, !578, !348, !349}
!578 = !DILocation(line: 1507, column: 9, scope: !545)
!579 = !DILocation(line: 1510, column: 1, scope: !520)
!580 = distinct !DISubprogram(name: "check_patch_cache", scope: !3, file: !3, line: 1716, type: !581, scopeLine: 1717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!87, !6, !276, !5, !5, !87}
!583 = !{!584, !585, !586, !587, !588, !589, !590, !591, !592}
!584 = !DILocalVariable(name: "p", arg: 1, scope: !580, file: !3, line: 1716, type: !6)
!585 = !DILocalVariable(name: "ray", arg: 2, scope: !580, file: !3, line: 1716, type: !276)
!586 = !DILocalVariable(name: "r_min", arg: 3, scope: !580, file: !3, line: 1716, type: !5)
!587 = !DILocalVariable(name: "r_max", arg: 4, scope: !580, file: !3, line: 1716, type: !5)
!588 = !DILocalVariable(name: "process_id", arg: 5, scope: !580, file: !3, line: 1716, type: !87)
!589 = !DILocalVariable(name: "i", scope: !580, file: !3, line: 1718, type: !87)
!590 = !DILocalVariable(name: "t", scope: !580, file: !3, line: 1719, type: !5)
!591 = !DILocalVariable(name: "temp", scope: !580, file: !3, line: 1720, type: !32)
!592 = !DILocalVariable(name: "advice", scope: !580, file: !3, line: 1721, type: !87)
!593 = !DILocation(line: 0, scope: !580)
!594 = !DILocation(line: 1719, column: 5, scope: !580)
!595 = !DILocation(line: 1723, column: 5, scope: !596)
!596 = distinct !DILexicalBlock(scope: !580, file: !3, line: 1723, column: 5)
!597 = !DILocation(line: 1725, column: 20, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 1725, column: 19)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 1724, column: 9)
!600 = distinct !DILexicalBlock(scope: !596, file: !3, line: 1723, column: 5)
!601 = !DILocation(line: 1725, column: 58, scope: !598)
!602 = !DILocation(line: 1726, column: 16, scope: !598)
!603 = !DILocation(line: 1726, column: 84, scope: !598)
!604 = !DILocation(line: 1726, column: 58, scope: !598)
!605 = !DILocation(line: 1727, column: 16, scope: !598)
!606 = !DILocation(line: 1727, column: 84, scope: !598)
!607 = !DILocation(line: 1727, column: 58, scope: !598)
!608 = !DILocation(line: 1725, column: 19, scope: !599)
!609 = !DILocation(line: 1730, column: 22, scope: !599)
!610 = !DILocation(line: 1734, column: 16, scope: !611)
!611 = distinct !DILexicalBlock(scope: !599, file: !3, line: 1733, column: 19)
!612 = !DILocation(line: 1737, column: 27, scope: !613)
!613 = distinct !DILexicalBlock(scope: !599, file: !3, line: 1737, column: 19)
!614 = !DILocation(line: 1737, column: 44, scope: !613)
!615 = !DILocation(line: 1737, column: 107, scope: !613)
!616 = !DILocation(line: 1737, column: 47, scope: !613)
!617 = !DILocation(line: 1737, column: 19, scope: !599)
!618 = !DILocation(line: 1740, column: 25, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !3, line: 1738, column: 17)
!620 = !DILocation(line: 1725, column: 43, scope: !598)
!621 = !DILocation(line: 1742, column: 36, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 1741, column: 25)
!623 = distinct !DILexicalBlock(scope: !619, file: !3, line: 1740, column: 25)
!624 = !DILocation(line: 1743, column: 71, scope: !622)
!625 = !DILocation(line: 1744, column: 69, scope: !622)
!626 = !DILocation(line: 1745, column: 25, scope: !622)
!627 = distinct !{!627, !595, !628, !348, !349}
!628 = !DILocation(line: 1749, column: 9, scope: !596)
!629 = !DILocation(line: 1753, column: 1, scope: !580)
!630 = distinct !DISubprogram(name: "traverse_subtree", scope: !3, file: !3, line: 1515, type: !521, scopeLine: 1528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639}
!632 = !DILocalVariable(name: "node", arg: 1, scope: !630, file: !3, line: 1515, type: !32)
!633 = !DILocalVariable(name: "p", arg: 2, scope: !630, file: !3, line: 1515, type: !6)
!634 = !DILocalVariable(name: "ray", arg: 3, scope: !630, file: !3, line: 1515, type: !276)
!635 = !DILocalVariable(name: "r_min", arg: 4, scope: !630, file: !3, line: 1515, type: !5)
!636 = !DILocalVariable(name: "r_max", arg: 5, scope: !630, file: !3, line: 1515, type: !5)
!637 = !DILocalVariable(name: "process_id", arg: 6, scope: !630, file: !3, line: 1515, type: !87)
!638 = !DILocalVariable(name: "t", scope: !630, file: !3, line: 1529, type: !5)
!639 = !DILocalVariable(name: "advice", scope: !630, file: !3, line: 1530, type: !87)
!640 = !DILocation(line: 0, scope: !630)
!641 = !DILocation(line: 1529, column: 5, scope: !630)
!642 = !DILocation(line: 1533, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !630, file: !3, line: 1533, column: 9)
!644 = !DILocation(line: 1533, column: 9, scope: !630)
!645 = !DILocation(line: 1536, column: 14, scope: !630)
!646 = !DILocation(line: 1537, column: 9, scope: !630)
!647 = !DILocation(line: 1540, column: 41, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !3, line: 1540, column: 17)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 1538, column: 9)
!650 = distinct !DILexicalBlock(scope: !630, file: !3, line: 1537, column: 9)
!651 = !DILocation(line: 1541, column: 41, scope: !648)
!652 = !DILocation(line: 1541, column: 43, scope: !648)
!653 = !DILocation(line: 1540, column: 17, scope: !648)
!654 = !DILocation(line: 1540, column: 17, scope: !649)
!655 = !DILocation(line: 1544, column: 17, scope: !656)
!656 = distinct !DILexicalBlock(scope: !649, file: !3, line: 1544, column: 17)
!657 = !DILocation(line: 1544, column: 17, scope: !649)
!658 = !DILocation(line: 1546, column: 45, scope: !649)
!659 = !DILocation(line: 1547, column: 40, scope: !649)
!660 = !DILocation(line: 1547, column: 38, scope: !649)
!661 = !DILocation(line: 1546, column: 21, scope: !649)
!662 = !DILocation(line: 1546, column: 13, scope: !649)
!663 = !DILocation(line: 1552, column: 41, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1552, column: 17)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1550, column: 9)
!666 = distinct !DILexicalBlock(scope: !650, file: !3, line: 1549, column: 14)
!667 = !DILocation(line: 1553, column: 41, scope: !664)
!668 = !DILocation(line: 1553, column: 43, scope: !664)
!669 = !DILocation(line: 1552, column: 17, scope: !664)
!670 = !DILocation(line: 1552, column: 17, scope: !665)
!671 = !DILocation(line: 1555, column: 17, scope: !672)
!672 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1555, column: 17)
!673 = !DILocation(line: 1555, column: 17, scope: !665)
!674 = !DILocation(line: 1558, column: 45, scope: !665)
!675 = !DILocation(line: 1559, column: 40, scope: !665)
!676 = !DILocation(line: 1559, column: 38, scope: !665)
!677 = !DILocation(line: 1558, column: 21, scope: !665)
!678 = !DILocation(line: 1558, column: 13, scope: !665)
!679 = !DILocation(line: 1563, column: 41, scope: !680)
!680 = distinct !DILexicalBlock(scope: !666, file: !3, line: 1562, column: 14)
!681 = !DILocation(line: 1563, column: 17, scope: !680)
!682 = !DILocation(line: 1563, column: 9, scope: !680)
!683 = !DILocation(line: 1566, column: 41, scope: !684)
!684 = distinct !DILexicalBlock(scope: !680, file: !3, line: 1565, column: 14)
!685 = !DILocation(line: 1566, column: 17, scope: !684)
!686 = !DILocation(line: 1566, column: 9, scope: !684)
!687 = !DILocation(line: 1571, column: 1, scope: !630)
!688 = distinct !DISubprogram(name: "intersection_type", scope: !3, file: !3, line: 1594, type: !689, scopeLine: 1595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!87, !32, !6, !276, !691, !5, !5}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704}
!693 = !DILocalVariable(name: "patch", arg: 1, scope: !688, file: !3, line: 1594, type: !32)
!694 = !DILocalVariable(name: "p", arg: 2, scope: !688, file: !3, line: 1594, type: !6)
!695 = !DILocalVariable(name: "ray", arg: 3, scope: !688, file: !3, line: 1594, type: !276)
!696 = !DILocalVariable(name: "tval", arg: 4, scope: !688, file: !3, line: 1594, type: !691)
!697 = !DILocalVariable(name: "range_min", arg: 5, scope: !688, file: !3, line: 1594, type: !5)
!698 = !DILocalVariable(name: "range_max", arg: 6, scope: !688, file: !3, line: 1594, type: !5)
!699 = !DILocalVariable(name: "r_dot_n", scope: !688, file: !3, line: 1596, type: !5)
!700 = !DILocalVariable(name: "dist", scope: !688, file: !3, line: 1597, type: !5)
!701 = !DILocalVariable(name: "t", scope: !688, file: !3, line: 1598, type: !5)
!702 = !DILocalVariable(name: "nx", scope: !688, file: !3, line: 1599, type: !5)
!703 = !DILocalVariable(name: "ny", scope: !688, file: !3, line: 1599, type: !5)
!704 = !DILocalVariable(name: "nz", scope: !688, file: !3, line: 1599, type: !5)
!705 = !DILocation(line: 0, scope: !688)
!706 = !DILocation(line: 1606, column: 17, scope: !688)
!707 = !DILocation(line: 1606, column: 29, scope: !688)
!708 = !DILocation(line: 1607, column: 29, scope: !688)
!709 = !DILocation(line: 1608, column: 29, scope: !688)
!710 = !DILocation(line: 1610, column: 25, scope: !688)
!711 = !DILocation(line: 1610, column: 39, scope: !688)
!712 = !DILocation(line: 1610, column: 32, scope: !688)
!713 = !DILocation(line: 1610, column: 27, scope: !688)
!714 = !DILocation(line: 1610, column: 53, scope: !688)
!715 = !DILocation(line: 1610, column: 41, scope: !688)
!716 = !DILocation(line: 1611, column: 29, scope: !688)
!717 = !DILocation(line: 1611, column: 38, scope: !688)
!718 = !DILocation(line: 1611, column: 32, scope: !688)
!719 = !DILocation(line: 1611, column: 52, scope: !688)
!720 = !DILocation(line: 1611, column: 46, scope: !688)
!721 = !DILocation(line: 1611, column: 66, scope: !688)
!722 = !DILocation(line: 1611, column: 60, scope: !688)
!723 = !DILocation(line: 1613, column: 25, scope: !724)
!724 = distinct !DILexicalBlock(scope: !688, file: !3, line: 1613, column: 9)
!725 = !DILocation(line: 1613, column: 36, scope: !724)
!726 = !DILocation(line: 1615, column: 22, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 1615, column: 17)
!728 = distinct !DILexicalBlock(scope: !724, file: !3, line: 1614, column: 9)
!729 = !DILocation(line: 1615, column: 17, scope: !728)
!730 = !DILocation(line: 1617, column: 22, scope: !731)
!731 = distinct !DILexicalBlock(scope: !727, file: !3, line: 1617, column: 22)
!732 = !DILocation(line: 1617, column: 27, scope: !731)
!733 = !DILocation(line: 0, scope: !728)
!734 = !DILocation(line: 1623, column: 9, scope: !688)
!735 = !DILocation(line: 1623, column: 15, scope: !688)
!736 = !DILocation(line: 1624, column: 11, scope: !688)
!737 = !DILocation(line: 1626, column: 11, scope: !738)
!738 = distinct !DILexicalBlock(scope: !688, file: !3, line: 1626, column: 9)
!739 = !DILocation(line: 1626, column: 9, scope: !688)
!740 = !DILocation(line: 1628, column: 25, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1628, column: 17)
!742 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1627, column: 9)
!743 = !DILocation(line: 0, scope: !741)
!744 = !DILocation(line: 1633, column: 17, scope: !745)
!745 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1633, column: 15)
!746 = !DILocation(line: 0, scope: !745)
!747 = !DILocation(line: 1633, column: 15, scope: !738)
!748 = !DILocation(line: 0, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1635, column: 17)
!750 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1634, column: 9)
!751 = !DILocation(line: 0, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1642, column: 17)
!753 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1641, column: 9)
!754 = !DILocation(line: 1647, column: 1, scope: !688)
!755 = distinct !DISubprogram(name: "test_intersection", scope: !3, file: !3, line: 1656, type: !756, scopeLine: 1657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!87, !32, !6, !276, !5, !87}
!758 = !{!759, !760, !761, !762, !763}
!759 = !DILocalVariable(name: "patch", arg: 1, scope: !755, file: !3, line: 1656, type: !32)
!760 = !DILocalVariable(name: "p", arg: 2, scope: !755, file: !3, line: 1656, type: !6)
!761 = !DILocalVariable(name: "ray", arg: 3, scope: !755, file: !3, line: 1656, type: !276)
!762 = !DILocalVariable(name: "tval", arg: 4, scope: !755, file: !3, line: 1656, type: !5)
!763 = !DILocalVariable(name: "process_id", arg: 5, scope: !755, file: !3, line: 1656, type: !87)
!764 = !DILocation(line: 0, scope: !755)
!765 = !DILocation(line: 1661, column: 41, scope: !766)
!766 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1661, column: 9)
!767 = !DILocation(line: 1661, column: 15, scope: !766)
!768 = !DILocation(line: 1661, column: 9, scope: !755)
!769 = !DILocation(line: 1663, column: 36, scope: !770)
!770 = distinct !DILexicalBlock(scope: !766, file: !3, line: 1662, column: 9)
!771 = !DILocation(line: 1663, column: 49, scope: !770)
!772 = !DILocation(line: 1664, column: 13, scope: !770)
!773 = !DILocation(line: 1667, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1667, column: 9)
!775 = !DILocation(line: 1667, column: 9, scope: !755)
!776 = !DILocation(line: 1670, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !755, file: !3, line: 1670, column: 9)
!778 = !DILocation(line: 1670, column: 9, scope: !755)
!779 = !DILocation(line: 1673, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !3, line: 1671, column: 9)
!781 = !DILocation(line: 1674, column: 13, scope: !780)
!782 = !DILocation(line: 1678, column: 1, scope: !755)
!783 = distinct !DISubprogram(name: "patch_tested", scope: !3, file: !3, line: 1766, type: !784, scopeLine: 1767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!87, !32, !87}
!786 = !{!787, !788, !789}
!787 = !DILocalVariable(name: "p", arg: 1, scope: !783, file: !3, line: 1766, type: !32)
!788 = !DILocalVariable(name: "process_id", arg: 2, scope: !783, file: !3, line: 1766, type: !87)
!789 = !DILocalVariable(name: "i", scope: !783, file: !3, line: 1768, type: !87)
!790 = !DILocation(line: 0, scope: !783)
!791 = !DILocation(line: 1770, column: 5, scope: !792)
!792 = distinct !DILexicalBlock(scope: !783, file: !3, line: 1770, column: 5)
!793 = !DILocation(line: 1772, column: 22, scope: !794)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 1772, column: 17)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 1771, column: 9)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 1770, column: 5)
!797 = !DILocation(line: 1772, column: 19, scope: !794)
!798 = !DILocation(line: 1772, column: 17, scope: !795)
!799 = !DILocation(line: 1777, column: 1, scope: !783)
!800 = distinct !DISubprogram(name: "update_patch_cache", scope: !3, file: !3, line: 1702, type: !801, scopeLine: 1703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !32, !87}
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(name: "patch", arg: 1, scope: !800, file: !3, line: 1702, type: !32)
!805 = !DILocalVariable(name: "process_id", arg: 2, scope: !800, file: !3, line: 1702, type: !87)
!806 = !DILocalVariable(name: "i", scope: !800, file: !3, line: 1704, type: !87)
!807 = !DILocation(line: 0, scope: !800)
!808 = !DILocation(line: 1708, column: 72, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1707, column: 5)
!810 = distinct !DILexicalBlock(scope: !800, file: !3, line: 1707, column: 5)
!811 = !DILocation(line: 1708, column: 49, scope: !809)
!812 = !DILocation(line: 1708, column: 9, scope: !809)
!813 = !DILocation(line: 1708, column: 47, scope: !809)
!814 = !DILocation(line: 1711, column: 43, scope: !800)
!815 = !DILocation(line: 1712, column: 1, scope: !800)
!816 = distinct !DISubprogram(name: "visibility", scope: !3, file: !3, line: 1787, type: !817, scopeLine: 1788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{!5, !136, !136, !87, !87}
!819 = !{!820, !821, !822, !823, !824, !825, !826, !827, !828}
!820 = !DILocalVariable(name: "e1", arg: 1, scope: !816, file: !3, line: 1787, type: !136)
!821 = !DILocalVariable(name: "e2", arg: 2, scope: !816, file: !3, line: 1787, type: !136)
!822 = !DILocalVariable(name: "n_rays", arg: 3, scope: !816, file: !3, line: 1787, type: !87)
!823 = !DILocalVariable(name: "process_id", arg: 4, scope: !816, file: !3, line: 1787, type: !87)
!824 = !DILocalVariable(name: "range_max", scope: !816, file: !3, line: 1789, type: !5)
!825 = !DILocalVariable(name: "range_min", scope: !816, file: !3, line: 1789, type: !5)
!826 = !DILocalVariable(name: "i", scope: !816, file: !3, line: 1790, type: !87)
!827 = !DILocalVariable(name: "r", scope: !816, file: !3, line: 1791, type: !276)
!828 = !DILocalVariable(name: "ray_reject", scope: !816, file: !3, line: 1792, type: !87)
!829 = !DILocation(line: 0, scope: !816)
!830 = !DILocation(line: 1794, column: 47, scope: !816)
!831 = !DILocation(line: 1794, column: 28, scope: !816)
!832 = !DILocation(line: 1794, column: 41, scope: !816)
!833 = !DILocation(line: 1795, column: 47, scope: !816)
!834 = !DILocation(line: 1795, column: 28, scope: !816)
!835 = !DILocation(line: 1795, column: 41, scope: !816)
!836 = !DILocation(line: 1797, column: 28, scope: !816)
!837 = !DILocation(line: 1797, column: 43, scope: !816)
!838 = !DILocation(line: 1797, column: 48, scope: !816)
!839 = !DILocation(line: 1798, column: 46, scope: !816)
!840 = !DILocation(line: 1798, column: 53, scope: !816)
!841 = !DILocation(line: 1798, column: 89, scope: !816)
!842 = !DILocation(line: 1798, column: 55, scope: !816)
!843 = !DILocation(line: 1798, column: 28, scope: !816)
!844 = !DILocation(line: 1798, column: 40, scope: !816)
!845 = !DILocation(line: 1799, column: 46, scope: !816)
!846 = !DILocation(line: 1799, column: 53, scope: !816)
!847 = !DILocation(line: 1799, column: 89, scope: !816)
!848 = !DILocation(line: 1799, column: 55, scope: !816)
!849 = !DILocation(line: 1799, column: 38, scope: !816)
!850 = !DILocation(line: 1799, column: 40, scope: !816)
!851 = !DILocation(line: 1800, column: 46, scope: !816)
!852 = !DILocation(line: 1800, column: 53, scope: !816)
!853 = !DILocation(line: 1800, column: 89, scope: !816)
!854 = !DILocation(line: 1800, column: 55, scope: !816)
!855 = !DILocation(line: 1800, column: 38, scope: !816)
!856 = !DILocation(line: 1800, column: 40, scope: !816)
!857 = !DILocation(line: 1801, column: 46, scope: !816)
!858 = !DILocation(line: 1801, column: 53, scope: !816)
!859 = !DILocation(line: 1801, column: 55, scope: !816)
!860 = !DILocation(line: 1801, column: 28, scope: !816)
!861 = !DILocation(line: 1801, column: 40, scope: !816)
!862 = !DILocation(line: 1802, column: 46, scope: !816)
!863 = !DILocation(line: 1802, column: 53, scope: !816)
!864 = !DILocation(line: 1802, column: 55, scope: !816)
!865 = !DILocation(line: 1802, column: 38, scope: !816)
!866 = !DILocation(line: 1802, column: 40, scope: !816)
!867 = !DILocation(line: 1803, column: 46, scope: !816)
!868 = !DILocation(line: 1803, column: 53, scope: !816)
!869 = !DILocation(line: 1803, column: 55, scope: !816)
!870 = !DILocation(line: 1803, column: 38, scope: !816)
!871 = !DILocation(line: 1803, column: 40, scope: !816)
!872 = !DILocation(line: 1805, column: 28, scope: !816)
!873 = !DILocation(line: 1805, column: 44, scope: !816)
!874 = !DILocation(line: 1805, column: 49, scope: !816)
!875 = !DILocation(line: 1806, column: 47, scope: !816)
!876 = !DILocation(line: 1806, column: 54, scope: !816)
!877 = !DILocation(line: 1806, column: 91, scope: !816)
!878 = !DILocation(line: 1806, column: 56, scope: !816)
!879 = !DILocation(line: 1806, column: 28, scope: !816)
!880 = !DILocation(line: 1806, column: 41, scope: !816)
!881 = !DILocation(line: 1807, column: 47, scope: !816)
!882 = !DILocation(line: 1807, column: 54, scope: !816)
!883 = !DILocation(line: 1807, column: 91, scope: !816)
!884 = !DILocation(line: 1807, column: 56, scope: !816)
!885 = !DILocation(line: 1807, column: 39, scope: !816)
!886 = !DILocation(line: 1807, column: 41, scope: !816)
!887 = !DILocation(line: 1808, column: 47, scope: !816)
!888 = !DILocation(line: 1808, column: 54, scope: !816)
!889 = !DILocation(line: 1808, column: 91, scope: !816)
!890 = !DILocation(line: 1808, column: 56, scope: !816)
!891 = !DILocation(line: 1808, column: 39, scope: !816)
!892 = !DILocation(line: 1808, column: 41, scope: !816)
!893 = !DILocation(line: 1809, column: 47, scope: !816)
!894 = !DILocation(line: 1809, column: 54, scope: !816)
!895 = !DILocation(line: 1809, column: 56, scope: !816)
!896 = !DILocation(line: 1809, column: 28, scope: !816)
!897 = !DILocation(line: 1809, column: 41, scope: !816)
!898 = !DILocation(line: 1810, column: 47, scope: !816)
!899 = !DILocation(line: 1810, column: 54, scope: !816)
!900 = !DILocation(line: 1810, column: 56, scope: !816)
!901 = !DILocation(line: 1810, column: 39, scope: !816)
!902 = !DILocation(line: 1810, column: 41, scope: !816)
!903 = !DILocation(line: 1811, column: 47, scope: !816)
!904 = !DILocation(line: 1811, column: 54, scope: !816)
!905 = !DILocation(line: 1811, column: 56, scope: !816)
!906 = !DILocation(line: 1811, column: 39, scope: !816)
!907 = !DILocation(line: 1811, column: 41, scope: !816)
!908 = !DILocation(line: 1813, column: 43, scope: !816)
!909 = !DILocation(line: 1813, column: 78, scope: !816)
!910 = !DILocation(line: 1813, column: 5, scope: !816)
!911 = !DILocation(line: 1818, column: 28, scope: !816)
!912 = !DILocation(line: 1818, column: 42, scope: !816)
!913 = !DILocation(line: 1820, column: 21, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1820, column: 5)
!915 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1820, column: 5)
!916 = !DILocation(line: 1820, column: 5, scope: !915)
!917 = !DILocation(line: 1822, column: 19, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1821, column: 9)
!919 = !DILocation(line: 1824, column: 73, scope: !920)
!920 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1824, column: 19)
!921 = !DILocation(line: 1824, column: 87, scope: !920)
!922 = !DILocation(line: 1824, column: 20, scope: !920)
!923 = !DILocation(line: 1824, column: 101, scope: !920)
!924 = !DILocation(line: 1825, column: 17, scope: !920)
!925 = !DILocation(line: 1825, column: 73, scope: !920)
!926 = !DILocation(line: 1825, column: 88, scope: !920)
!927 = !DILocation(line: 1825, column: 20, scope: !920)
!928 = !DILocation(line: 1825, column: 102, scope: !920)
!929 = !DILocation(line: 1824, column: 19, scope: !918)
!930 = !DILocation(line: 1827, column: 31, scope: !931)
!931 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1826, column: 17)
!932 = !DILocation(line: 1828, column: 21, scope: !931)
!933 = !DILocation(line: 1831, column: 50, scope: !918)
!934 = !DILocation(line: 1831, column: 64, scope: !918)
!935 = !DILocation(line: 1831, column: 13, scope: !918)
!936 = !DILocation(line: 1832, column: 9, scope: !918)
!937 = !DILocation(line: 1820, column: 33, scope: !914)
!938 = distinct !{!938, !916, !939, !348, !349}
!939 = !DILocation(line: 1832, column: 9, scope: !915)
!940 = !DILocation(line: 1834, column: 20, scope: !941)
!941 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1834, column: 9)
!942 = !DILocation(line: 1834, column: 9, scope: !816)
!943 = !DILocation(line: 1843, column: 43, scope: !816)
!944 = !DILocation(line: 1840, column: 46, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !3, line: 1834, column: 31)
!946 = !DILocation(line: 1841, column: 5, scope: !945)
!947 = !DILocation(line: 1843, column: 59, scope: !816)
!948 = !DILocation(line: 1843, column: 57, scope: !816)
!949 = !DILocation(line: 1843, column: 5, scope: !816)
!950 = !DISubprogram(name: "inner_product", scope: !3, file: !3, line: 1133, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !953)
!951 = !DISubroutineType(types: !952)
!952 = !{!5, !6, !6}
!953 = !{}
!954 = distinct !DISubprogram(name: "compute_visibility_values", scope: !3, file: !3, line: 1856, type: !955, scopeLine: 1857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !959)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !136, !957, !87, !87}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !3, line: 440, baseType: !132)
!959 = !{!960, !961, !962, !963, !964}
!960 = !DILocalVariable(name: "elem", arg: 1, scope: !954, file: !3, line: 1856, type: !136)
!961 = !DILocalVariable(name: "inter", arg: 2, scope: !954, file: !3, line: 1856, type: !957)
!962 = !DILocalVariable(name: "n_inter", arg: 3, scope: !954, file: !3, line: 1856, type: !87)
!963 = !DILocalVariable(name: "process_id", arg: 4, scope: !954, file: !3, line: 1856, type: !87)
!964 = !DILocalVariable(name: "v", scope: !965, file: !3, line: 1866, type: !5)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1859, column: 9)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 1858, column: 5)
!967 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1858, column: 5)
!968 = !DILocation(line: 0, scope: !954)
!969 = !DILocation(line: 1858, column: 20, scope: !966)
!970 = !DILocation(line: 1858, column: 5, scope: !967)
!971 = !DILocation(line: 1860, column: 23, scope: !972)
!972 = distinct !DILexicalBlock(scope: !965, file: !3, line: 1860, column: 16)
!973 = !DILocation(line: 1860, column: 34, scope: !972)
!974 = !DILocation(line: 1860, column: 16, scope: !965)
!975 = !DILocation(line: 1864, column: 54, scope: !965)
!976 = !DILocation(line: 1866, column: 39, scope: !965)
!977 = !DILocation(line: 1866, column: 14, scope: !965)
!978 = !DILocation(line: 0, scope: !965)
!979 = !DILocation(line: 1868, column: 31, scope: !965)
!980 = !DILocation(line: 1869, column: 86, scope: !965)
!981 = !DILocation(line: 1869, column: 60, scope: !965)
!982 = !DILocation(line: 1870, column: 9, scope: !965)
!983 = !DILocation(line: 1858, column: 41, scope: !966)
!984 = !DILocation(line: 1858, column: 54, scope: !966)
!985 = distinct !{!985, !970, !986, !348, !349}
!986 = !DILocation(line: 1870, column: 9, scope: !967)
!987 = !DILocation(line: 1871, column: 1, scope: !954)
!988 = distinct !DISubprogram(name: "visibility_task", scope: !3, file: !3, line: 1883, type: !989, scopeLine: 1884, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !136, !957, !87, !991, !87}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, null}
!994 = !{!995, !996, !997, !998, !999, !1000}
!995 = !DILocalVariable(name: "elem", arg: 1, scope: !988, file: !3, line: 1883, type: !136)
!996 = !DILocalVariable(name: "inter", arg: 2, scope: !988, file: !3, line: 1883, type: !957)
!997 = !DILocalVariable(name: "n_inter", arg: 3, scope: !988, file: !3, line: 1883, type: !87)
!998 = !DILocalVariable(name: "k", arg: 4, scope: !988, file: !3, line: 1883, type: !991)
!999 = !DILocalVariable(name: "process_id", arg: 5, scope: !988, file: !3, line: 1883, type: !87)
!1000 = !DILocalVariable(name: "new_vis_undef_count", scope: !988, file: !3, line: 1888, type: !87)
!1001 = !DILocation(line: 0, scope: !988)
!1002 = !DILocation(line: 1891, column: 28, scope: !988)
!1003 = !DILocation(line: 1891, column: 52, scope: !988)
!1004 = !DILocation(line: 1892, column: 5, scope: !988)
!1005 = !DILocation(line: 1895, column: 33, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1895, column: 5)
!1007 = !DILocation(line: 1895, column: 6, scope: !1006)
!1008 = !DILocation(line: 1896, column: 11, scope: !988)
!1009 = !DILocation(line: 1896, column: 29, scope: !988)
!1010 = !DILocation(line: 1898, column: 35, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1898, column: 5)
!1012 = !DILocation(line: 1898, column: 6, scope: !1011)
!1013 = !DILocation(line: 1908, column: 29, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1908, column: 9)
!1015 = !DILocation(line: 1908, column: 9, scope: !988)
!1016 = !DILocation(line: 1909, column: 9, scope: !1014)
!1017 = !DILocation(line: 1910, column: 1, scope: !988)
!1018 = !DISubprogram(name: "pthread_mutex_lock", scope: !1019, file: !1019, line: 738, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !953)
!1019 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!65, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!1023 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1019, file: !1019, line: 756, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !953)
