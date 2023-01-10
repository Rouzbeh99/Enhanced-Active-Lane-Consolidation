; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/mc.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.7], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.6 = type { i32, i32 }
%struct.anon.7 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.8 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.9 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.10 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.11, %struct.anon.12, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.11 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.12 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.13 = type { %struct.anon.14, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.14 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }

@weight_none = dso_local local_unnamed_addr constant [3 x %struct.x264_weight_t] [%struct.x264_weight_t { [8 x i16] zeroinitializer, [8 x i16] zeroinitializer, i32 0, i32 0, i32 0, ptr null, [8 x i8] undef }, %struct.x264_weight_t zeroinitializer, %struct.x264_weight_t zeroinitializer], align 16, !dbg !0
@x264_mc_weight_wtab = internal global [6 x ptr] [ptr @mc_weight_w2, ptr @mc_weight_w4, ptr @mc_weight_w8, ptr @mc_weight_w12, ptr @mc_weight_w16, ptr @mc_weight_w20], align 16, !dbg !39
@hpel_ref0 = internal unnamed_addr constant [16 x i8] c"\00\01\01\01\00\01\01\01\02\03\03\03\00\01\01\01", align 16, !dbg !26
@hpel_ref1 = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\02\02\03\02\02\02\03\02\02\02\03\02", align 16, !dbg !37

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_plane_copy_c(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %w, i32 noundef %h) #0 !dbg !82 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !86, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata ptr %src, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !89, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %w, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %h, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %h, metadata !91, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !92
  %tobool.not5 = icmp eq i32 %h, 0, !dbg !93
  br i1 %tobool.not5, label %while.end, label %while.body.lr.ph, !dbg !93

while.body.lr.ph:                                 ; preds = %entry
  %conv = sext i32 %w to i64
  %idx.ext = sext i32 %i_dst to i64
  %idx.ext1 = sext i32 %i_src to i64
  br label %while.body, !dbg !93

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %h.addr.08 = phi i32 [ %h, %while.body.lr.ph ], [ %dec, %while.body ]
  %dst.addr.07 = phi ptr [ %dst, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %src.addr.06 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  call void @llvm.dbg.value(metadata i32 %h.addr.08, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata ptr %dst.addr.07, metadata !86, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata ptr %src.addr.06, metadata !88, metadata !DIExpression()), !dbg !92
  %dec = add nsw i32 %h.addr.08, -1, !dbg !94
  call void @llvm.dbg.value(metadata i32 %dec, metadata !91, metadata !DIExpression()), !dbg !92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07, ptr align 1 %src.addr.06, i64 %conv, i1 false), !dbg !95
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.07, i64 %idx.ext, !dbg !97
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !86, metadata !DIExpression()), !dbg !92
  %add.ptr2 = getelementptr inbounds i8, ptr %src.addr.06, i64 %idx.ext1, !dbg !98
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !88, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %dec, metadata !91, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !92
  %tobool.not = icmp eq i32 %dec, 0, !dbg !93
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !93, !llvm.loop !99

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !103
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_init_lowres(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #2 !dbg !104 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1377, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata ptr %frame, metadata !1378, metadata !DIExpression()), !dbg !1395
  %plane = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30, !dbg !1396
  %0 = load ptr, ptr %plane, align 8, !dbg !1397, !tbaa !1398
  call void @llvm.dbg.value(metadata ptr %0, metadata !1379, metadata !DIExpression()), !dbg !1395
  %i_stride1 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, !dbg !1402
  %1 = load i32, ptr %i_stride1, align 8, !dbg !1403, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %1, metadata !1380, metadata !DIExpression()), !dbg !1395
  %i_lines = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 26, !dbg !1406
  %2 = load i32, ptr %i_lines, align 16, !dbg !1407, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %2, metadata !1381, metadata !DIExpression()), !dbg !1395
  %i_width4 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 25, !dbg !1408
  %3 = load i32, ptr %i_width4, align 4, !dbg !1409, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %3, metadata !1382, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32 0, metadata !1383, metadata !DIExpression()), !dbg !1410
  %cmp120 = icmp sgt i32 %2, 0, !dbg !1411
  br i1 %cmp120, label %for.body.preheader, label %for.cond.cleanup, !dbg !1413

for.body.preheader:                               ; preds = %entry
  %4 = sext i32 %1 to i64, !dbg !1413
  %5 = sext i32 %3 to i64, !dbg !1413
  %wide.trip.count = zext i32 %2 to i64, !dbg !1411
  br label %for.body, !dbg !1413

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %mul11 = mul nsw i32 %2, %1, !dbg !1414
  %idx.ext = sext i32 %mul11 to i64, !dbg !1415
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !1415
  %sub12 = add nsw i32 %2, -1, !dbg !1416
  %mul13 = mul nsw i32 %sub12, %1, !dbg !1417
  %idx.ext14 = sext i32 %mul13 to i64, !dbg !1418
  %add.ptr15 = getelementptr inbounds i8, ptr %0, i64 %idx.ext14, !dbg !1418
  %add16 = add nsw i32 %3, 1, !dbg !1419
  %conv = sext i32 %add16 to i64, !dbg !1420
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %add.ptr15, i64 %conv, i1 false), !dbg !1421
  %frame_init_lowres_core = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 16, !dbg !1422
  %6 = load ptr, ptr %frame_init_lowres_core, align 8, !dbg !1422, !tbaa !1423
  %lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 32, !dbg !1449
  %7 = load ptr, ptr %lowres, align 16, !dbg !1450, !tbaa !1398
  %arrayidx19 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 32, i64 1, !dbg !1451
  %8 = load ptr, ptr %arrayidx19, align 8, !dbg !1451, !tbaa !1398
  %arrayidx21 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 32, i64 2, !dbg !1452
  %9 = load ptr, ptr %arrayidx21, align 16, !dbg !1452, !tbaa !1398
  %arrayidx23 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 32, i64 3, !dbg !1453
  %10 = load ptr, ptr %arrayidx23, align 8, !dbg !1453, !tbaa !1398
  %i_stride_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 27, !dbg !1454
  %11 = load i32, ptr %i_stride_lowres, align 4, !dbg !1454, !tbaa !1455
  %i_width_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 28, !dbg !1458
  %12 = load i32, ptr %i_width_lowres, align 16, !dbg !1458, !tbaa !1459
  %i_lines_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 29, !dbg !1460
  %13 = load i32, ptr %i_lines_lowres, align 4, !dbg !1460, !tbaa !1461
  tail call void %6(ptr noundef %0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %1, i32 noundef %11, i32 noundef %12, i32 noundef %13) #14, !dbg !1462
  tail call void @x264_frame_expand_border_lowres(ptr noundef %frame) #14, !dbg !1463
  %i_cost_est = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 52, !dbg !1464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1296) %i_cost_est, i8 -1, i64 1296, i1 false), !dbg !1465
  call void @llvm.dbg.value(metadata i32 0, metadata !1385, metadata !DIExpression()), !dbg !1466
  %i_bframe = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 17
  %14 = load i32, ptr %i_bframe, align 4, !dbg !1467, !tbaa !1468
  %cmp27126 = icmp sgt i32 %14, -2, !dbg !1469
  br i1 %cmp27126, label %for.cond31.preheader, label %for.cond.cleanup57, !dbg !1470

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1383, metadata !DIExpression()), !dbg !1410
  %15 = mul nsw i64 %indvars.iv, %4, !dbg !1471
  %16 = add nsw i64 %15, %5, !dbg !1472
  %add = shl i64 %16, 32, !dbg !1473
  %sext = add i64 %add, -4294967296, !dbg !1473
  %idxprom = ashr exact i64 %sext, 32, !dbg !1473
  %arrayidx6 = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !1473
  %17 = load i8, ptr %arrayidx6, align 1, !dbg !1473, !tbaa !1474
  %arrayidx10 = getelementptr inbounds i8, ptr %0, i64 %16, !dbg !1475
  store i8 %17, ptr %arrayidx10, align 1, !dbg !1476, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1383, metadata !DIExpression()), !dbg !1410
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1411
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1413, !llvm.loop !1478

for.cond31.preheader:                             ; preds = %for.cond.cleanup, %for.cond.cleanup37
  %18 = phi i32 [ %.lcssa159.sink, %for.cond.cleanup37 ], [ %14, %for.cond.cleanup ]
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.cond.cleanup37 ], [ 0, %for.cond.cleanup ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv142, metadata !1385, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i32 0, metadata !1387, metadata !DIExpression()), !dbg !1480
  %cmp35123 = icmp sgt i32 %18, -2, !dbg !1481
  br i1 %cmp35123, label %for.body38, label %for.cond.cleanup37, !dbg !1483

for.cond51.preheader:                             ; preds = %for.cond.cleanup37
  %cmp63.not129 = icmp slt i32 %.lcssa159.sink, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !1390, metadata !DIExpression()), !dbg !1484
  br i1 %cmp63.not129, label %for.cond.cleanup57, label %for.cond60.preheader.preheader, !dbg !1485

for.cond60.preheader.preheader:                   ; preds = %for.cond51.preheader
  %tobool.not = icmp eq i32 %.lcssa159.sink, 0
  %19 = add nuw i32 %.lcssa159.sink, 1, !dbg !1486
  %20 = select i1 %tobool.not, i64 1, i64 2, !dbg !1486
  %wide.trip.count148 = zext i32 %19 to i64
  br label %for.cond60.preheader, !dbg !1486

for.cond.cleanup37:                               ; preds = %for.body38, %for.cond31.preheader
  %.lcssa159.sink = phi i32 [ %18, %for.cond31.preheader ], [ %23, %for.body38 ]
  %21 = sext i32 %.lcssa159.sink to i64, !dbg !1487
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1, !dbg !1488
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next143, metadata !1385, metadata !DIExpression()), !dbg !1466
  %cmp27.not = icmp sgt i64 %indvars.iv142, %21, !dbg !1469
  br i1 %cmp27.not, label %for.cond51.preheader, label %for.cond31.preheader, !dbg !1470, !llvm.loop !1489

for.body38:                                       ; preds = %for.cond31.preheader, %for.body38
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.body38 ], [ 0, %for.cond31.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv139, metadata !1387, metadata !DIExpression()), !dbg !1480
  %arrayidx42 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 56, i64 %indvars.iv142, i64 %indvars.iv139, !dbg !1491
  %22 = load ptr, ptr %arrayidx42, align 8, !dbg !1491, !tbaa !1398
  store i32 -1, ptr %22, align 4, !dbg !1492, !tbaa !1404
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1, !dbg !1493
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next140, metadata !1387, metadata !DIExpression()), !dbg !1480
  %23 = load i32, ptr %i_bframe, align 4, !dbg !1494, !tbaa !1468
  %24 = sext i32 %23 to i64, !dbg !1481
  %cmp35.not = icmp sgt i64 %indvars.iv139, %24, !dbg !1481
  br i1 %cmp35.not, label %for.cond.cleanup37, label %for.body38, !dbg !1483, !llvm.loop !1495

for.cond60.preheader:                             ; preds = %for.cond60.preheader.preheader, %for.cond60.for.cond.cleanup65_crit_edge
  %indvars.iv150 = phi i64 [ 0, %for.cond60.preheader.preheader ], [ %indvars.iv.next151, %for.cond60.for.cond.cleanup65_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv150, metadata !1390, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1497
  br label %for.body66, !dbg !1485

for.cond.cleanup57:                               ; preds = %for.cond60.for.cond.cleanup65_crit_edge, %for.cond.cleanup, %for.cond51.preheader
  ret void, !dbg !1498

for.cond60.for.cond.cleanup65_crit_edge:          ; preds = %for.body66
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next151, metadata !1390, metadata !DIExpression()), !dbg !1484
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %20, !dbg !1500
  br i1 %exitcond154.not, label %for.cond.cleanup57, label %for.cond60.preheader, !dbg !1486, !llvm.loop !1501

for.body66:                                       ; preds = %for.cond60.preheader, %for.body66
  %indvars.iv145 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next146, %for.body66 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv145, metadata !1392, metadata !DIExpression()), !dbg !1497
  %arrayidx70 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 45, i64 %indvars.iv150, i64 %indvars.iv145, !dbg !1503
  %25 = load ptr, ptr %arrayidx70, align 8, !dbg !1503, !tbaa !1398
  store i16 32767, ptr %25, align 2, !dbg !1505, !tbaa !1506
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next146, metadata !1392, metadata !DIExpression()), !dbg !1497
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148, !dbg !1509
  br i1 %exitcond149.not, label %for.cond60.for.cond.cleanup65_crit_edge, label %for.body66, !dbg !1485, !llvm.loop !1510
}

declare !dbg !1512 void @x264_frame_expand_border_lowres(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_mc_init(i32 noundef %cpu, ptr noundef writeonly %pf) local_unnamed_addr #5 !dbg !1516 {
entry:
  call void @llvm.dbg.value(metadata i32 %cpu, metadata !1521, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata ptr %pf, metadata !1522, metadata !DIExpression()), !dbg !1523
  store ptr @mc_luma, ptr %pf, align 8, !dbg !1524, !tbaa !1525
  %get_ref = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 1, !dbg !1526
  store ptr @get_ref, ptr %get_ref, align 8, !dbg !1527, !tbaa !1528
  %mc_chroma = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 2, !dbg !1529
  store ptr @mc_chroma, ptr %mc_chroma, align 8, !dbg !1530, !tbaa !1531
  %avg = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, !dbg !1532
  store ptr @pixel_avg_16x16, ptr %avg, align 8, !dbg !1533, !tbaa !1398
  %arrayidx2 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 1, !dbg !1534
  store ptr @pixel_avg_16x8, ptr %arrayidx2, align 8, !dbg !1535, !tbaa !1398
  %arrayidx4 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 2, !dbg !1536
  store ptr @pixel_avg_8x16, ptr %arrayidx4, align 8, !dbg !1537, !tbaa !1398
  %arrayidx6 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 3, !dbg !1538
  store ptr @pixel_avg_8x8, ptr %arrayidx6, align 8, !dbg !1539, !tbaa !1398
  %arrayidx8 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 4, !dbg !1540
  store ptr @pixel_avg_8x4, ptr %arrayidx8, align 8, !dbg !1541, !tbaa !1398
  %arrayidx10 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 5, !dbg !1542
  store ptr @pixel_avg_4x8, ptr %arrayidx10, align 8, !dbg !1543, !tbaa !1398
  %arrayidx12 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 6, !dbg !1544
  store ptr @pixel_avg_4x4, ptr %arrayidx12, align 8, !dbg !1545, !tbaa !1398
  %arrayidx14 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 7, !dbg !1546
  store ptr @pixel_avg_4x2, ptr %arrayidx14, align 8, !dbg !1547, !tbaa !1398
  %arrayidx16 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 8, !dbg !1548
  store ptr @pixel_avg_2x4, ptr %arrayidx16, align 8, !dbg !1549, !tbaa !1398
  %arrayidx18 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 3, i64 9, !dbg !1550
  store ptr @pixel_avg_2x2, ptr %arrayidx18, align 8, !dbg !1551, !tbaa !1398
  %weight = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 17, !dbg !1552
  store ptr @x264_mc_weight_wtab, ptr %weight, align 8, !dbg !1553, !tbaa !1554
  %offsetadd = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 18, !dbg !1555
  store ptr @x264_mc_weight_wtab, ptr %offsetadd, align 8, !dbg !1556, !tbaa !1557
  %offsetsub = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 19, !dbg !1558
  store ptr @x264_mc_weight_wtab, ptr %offsetsub, align 8, !dbg !1559, !tbaa !1560
  %weight_cache = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 20, !dbg !1561
  store ptr @x264_weight_cache, ptr %weight_cache, align 8, !dbg !1562, !tbaa !1563
  %copy_16x16_unaligned = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 5, !dbg !1564
  store ptr @mc_copy_w16, ptr %copy_16x16_unaligned, align 8, !dbg !1565, !tbaa !1566
  %copy = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 4, !dbg !1567
  store ptr @mc_copy_w16, ptr %copy, align 8, !dbg !1568, !tbaa !1398
  %arrayidx21 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 4, i64 3, !dbg !1569
  store ptr @mc_copy_w8, ptr %arrayidx21, align 8, !dbg !1570, !tbaa !1398
  %arrayidx23 = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 4, i64 6, !dbg !1571
  store ptr @mc_copy_w4, ptr %arrayidx23, align 8, !dbg !1572, !tbaa !1398
  %plane_copy = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 6, !dbg !1573
  store ptr @x264_plane_copy_c, ptr %plane_copy, align 8, !dbg !1574, !tbaa !1575
  %hpel_filter = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 7, !dbg !1576
  store ptr @hpel_filter, ptr %hpel_filter, align 8, !dbg !1577, !tbaa !1578
  %prefetch_fenc = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 8, !dbg !1579
  store ptr @prefetch_fenc_null, ptr %prefetch_fenc, align 8, !dbg !1580, !tbaa !1581
  %prefetch_ref = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 9, !dbg !1582
  store ptr @prefetch_ref_null, ptr %prefetch_ref, align 8, !dbg !1583, !tbaa !1584
  %memcpy_aligned = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 10, !dbg !1585
  store ptr @memcpy, ptr %memcpy_aligned, align 8, !dbg !1586, !tbaa !1587
  %memzero_aligned = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 11, !dbg !1588
  store ptr @memzero_aligned, ptr %memzero_aligned, align 8, !dbg !1589, !tbaa !1590
  %frame_init_lowres_core = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 16, !dbg !1591
  store ptr @frame_init_lowres_core, ptr %frame_init_lowres_core, align 8, !dbg !1592, !tbaa !1593
  %integral_init4h = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 12, !dbg !1594
  store ptr @integral_init4h, ptr %integral_init4h, align 8, !dbg !1595, !tbaa !1596
  %integral_init8h = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 13, !dbg !1597
  store ptr @integral_init8h, ptr %integral_init8h, align 8, !dbg !1598, !tbaa !1599
  %integral_init4v = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 14, !dbg !1600
  store ptr @integral_init4v, ptr %integral_init4v, align 8, !dbg !1601, !tbaa !1602
  %integral_init8v = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 15, !dbg !1603
  store ptr @integral_init8v, ptr %integral_init8v, align 8, !dbg !1604, !tbaa !1605
  %mbtree_propagate_cost = getelementptr inbounds %struct.x264_mc_functions_t, ptr %pf, i64 0, i32 21, !dbg !1606
  store ptr @mbtree_propagate_cost, ptr %mbtree_propagate_cost, align 8, !dbg !1607, !tbaa !1608
  ret void, !dbg !1609
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @mc_luma(ptr nocapture noundef %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height, ptr nocapture noundef readonly %weight) #0 !dbg !1610 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1612, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1613, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata ptr %src, metadata !1614, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1615, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %mvx, metadata !1616, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %mvy, metadata !1617, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1618, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1619, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1620, metadata !DIExpression()), !dbg !1627
  %and = and i32 %mvy, 3, !dbg !1628
  %shl = shl nuw nsw i32 %and, 2, !dbg !1629
  %and1 = and i32 %mvx, 3, !dbg !1630
  %add = or i32 %shl, %and1, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %add, metadata !1621, metadata !DIExpression()), !dbg !1627
  %shr = ashr i32 %mvy, 2, !dbg !1632
  %mul = mul nsw i32 %shr, %i_src_stride, !dbg !1633
  %shr2 = ashr i32 %mvx, 2, !dbg !1634
  %add3 = add nsw i32 %mul, %shr2, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %add3, metadata !1622, metadata !DIExpression()), !dbg !1627
  %0 = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %0, !dbg !1636
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1636, !tbaa !1474
  %idxprom4 = zext i8 %1 to i64, !dbg !1637
  %arrayidx5 = getelementptr inbounds ptr, ptr %src, i64 %idxprom4, !dbg !1637
  %2 = load ptr, ptr %arrayidx5, align 8, !dbg !1637, !tbaa !1398
  %idx.ext = sext i32 %add3 to i64, !dbg !1638
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1638
  %cmp = icmp eq i32 %and, 3, !dbg !1639
  %mul7 = select i1 %cmp, i32 %i_src_stride, i32 0, !dbg !1640
  %idx.ext8 = sext i32 %mul7 to i64, !dbg !1641
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext8, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1623, metadata !DIExpression()), !dbg !1627
  %and10 = and i32 %add, 5, !dbg !1642
  %tobool.not = icmp eq i32 %and10, 0, !dbg !1642
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1643

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %0, !dbg !1644
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !1644, !tbaa !1474
  %idxprom13 = zext i8 %3 to i64, !dbg !1645
  %arrayidx14 = getelementptr inbounds ptr, ptr %src, i64 %idxprom13, !dbg !1645
  %4 = load ptr, ptr %arrayidx14, align 8, !dbg !1645, !tbaa !1398
  %add.ptr16 = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !1646
  %cmp18 = icmp eq i32 %and1, 3, !dbg !1647
  %5 = zext i1 %cmp18 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr16, i64 %5, !dbg !1648
  call void @llvm.dbg.value(metadata ptr %add.ptr21, metadata !1624, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1650, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1655, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1656, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1657, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %add.ptr21, metadata !1658, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1659, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1660, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1661, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()), !dbg !1670
  %cmp29.i = icmp sgt i32 %i_height, 0, !dbg !1671
  br i1 %cmp29.i, label %for.cond1.preheader.lr.ph.i, label %pixel_avg.exit, !dbg !1672

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then
  %cmp227.i = icmp sgt i32 %i_width, 0
  %idx.ext.i = sext i32 %i_dst_stride to i64
  %idx.ext12.i = sext i32 %i_src_stride to i64
  br i1 %cmp227.i, label %for.cond1.preheader.us.preheader.i, label %pixel_avg.exit, !dbg !1673

for.cond1.preheader.us.preheader.i:               ; preds = %for.cond1.preheader.lr.ph.i
  %wide.trip.count.i = zext i32 %i_width to i64
  br label %for.cond1.preheader.us.i, !dbg !1672

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.preheader.i ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.preheader.i ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr9, %for.cond1.preheader.us.preheader.i ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr21, %for.cond1.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !1662, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !1650, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !1656, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !1658, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 0, metadata !1664, metadata !DIExpression()), !dbg !1674
  br label %for.body4.us.i, !dbg !1673

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1664, metadata !DIExpression()), !dbg !1674
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !1675
  %6 = load i8, ptr %arrayidx.us.i, align 1, !dbg !1675, !tbaa !1474
  %conv.us.i = zext i8 %6 to i16, !dbg !1675
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !1677
  %7 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !1677, !tbaa !1474
  %conv7.us.i = zext i8 %7 to i16, !dbg !1677
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !1678
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !1679
  %8 = lshr i16 %add8.us.i, 1, !dbg !1680
  %conv9.us.i = trunc i16 %8 to i8, !dbg !1681
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !1682
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !1683, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1664, metadata !DIExpression()), !dbg !1674
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !1685
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !1673, !llvm.loop !1686

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext.i, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !1650, metadata !DIExpression()), !dbg !1668
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext12.i, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !1656, metadata !DIExpression()), !dbg !1668
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !1690
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !1658, metadata !DIExpression()), !dbg !1668
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !1662, metadata !DIExpression()), !dbg !1670
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, %i_height, !dbg !1671
  br i1 %exitcond36.not.i, label %pixel_avg.exit, label %for.cond1.preheader.us.i, !dbg !1672, !llvm.loop !1692

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then, %for.cond1.preheader.lr.ph.i
  %weightfn = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 5, !dbg !1694
  %9 = load ptr, ptr %weightfn, align 16, !dbg !1694, !tbaa !1696
  %tobool22.not = icmp eq ptr %9, null, !dbg !1698
  br i1 %tobool22.not, label %if.end29, label %if.then23, !dbg !1699

if.then23:                                        ; preds = %pixel_avg.exit
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1705, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1707, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1708, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1709, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1710, metadata !DIExpression()), !dbg !1724
  %i_denom.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !1726
  %10 = load i32, ptr %i_denom.i, align 16, !dbg !1726, !tbaa !1727
  %cmp.i = icmp sgt i32 %10, 0, !dbg !1728
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond17.preheader.i, !dbg !1729

for.cond17.preheader.i:                           ; preds = %if.then23
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1724
  br i1 %cmp29.i, label %for.cond23.preheader.lr.ph.i, label %if.end29, !dbg !1731

for.cond23.preheader.lr.ph.i:                     ; preds = %for.cond17.preheader.i
  %cmp2479.i = icmp sgt i32 %i_width, 0
  %i_scale31.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43.i = sext i32 %i_dst_stride to i64
  br i1 %cmp2479.i, label %for.cond23.preheader.us.preheader.i, label %if.end29, !dbg !1732

for.cond23.preheader.us.preheader.i:              ; preds = %for.cond23.preheader.lr.ph.i
  %wide.trip.count.i62 = zext i32 %i_width to i64
  br label %for.cond23.preheader.us.i, !dbg !1731

for.cond23.preheader.us.i:                        ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond23.preheader.us.preheader.i
  %y16.084.us.i = phi i32 [ %inc42.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ 0, %for.cond23.preheader.us.preheader.i ]
  %dst.addr.183.us.i = phi ptr [ %add.ptr44.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ %dst, %for.cond23.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y16.084.us.i, metadata !1718, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i, metadata !1706, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1733
  br label %for.body27.us.i, !dbg !1732

for.body27.us.i:                                  ; preds = %x264_clip_uint8.exit77.us.i, %for.cond23.preheader.us.i
  %indvars.iv.i63 = phi i64 [ 0, %for.cond23.preheader.us.i ], [ %indvars.iv.next.i64, %x264_clip_uint8.exit77.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i63, metadata !1721, metadata !DIExpression()), !dbg !1733
  %arrayidx29.us.i = getelementptr inbounds i8, ptr %dst.addr.183.us.i, i64 %indvars.iv.i63, !dbg !1734
  %11 = load i8, ptr %arrayidx29.us.i, align 1, !dbg !1734, !tbaa !1474
  %conv30.us.i = zext i8 %11 to i32, !dbg !1734
  %12 = load i32, ptr %i_scale31.i, align 4, !dbg !1734, !tbaa !1736
  %mul32.us.i = mul nsw i32 %12, %conv30.us.i, !dbg !1734
  %13 = load i32, ptr %i_offset33.i, align 8, !dbg !1734, !tbaa !1737
  %add34.us.i = add nsw i32 %mul32.us.i, %13, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %add34.us.i, metadata !1738, metadata !DIExpression()), !dbg !1743
  %tobool.not.i72.us.i = icmp ult i32 %add34.us.i, 256, !dbg !1745
  br i1 %tobool.not.i72.us.i, label %x264_clip_uint8.exit77.us.i, label %cond.true.i74.us.i, !dbg !1746

cond.true.i74.us.i:                               ; preds = %for.body27.us.i
  %14 = icmp sgt i32 %add34.us.i, 0, !dbg !1747
  %shr.i73.us.i = sext i1 %14 to i32, !dbg !1747
  br label %x264_clip_uint8.exit77.us.i, !dbg !1746

x264_clip_uint8.exit77.us.i:                      ; preds = %cond.true.i74.us.i, %for.body27.us.i
  %cond.i75.us.i = phi i32 [ %shr.i73.us.i, %cond.true.i74.us.i ], [ %add34.us.i, %for.body27.us.i ], !dbg !1746
  %conv.i76.us.i = trunc i32 %cond.i75.us.i to i8, !dbg !1746
  store i8 %conv.i76.us.i, ptr %arrayidx29.us.i, align 1, !dbg !1734, !tbaa !1474
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i64, metadata !1721, metadata !DIExpression()), !dbg !1733
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next.i64, %wide.trip.count.i62, !dbg !1749
  br i1 %exitcond.not.i65, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i, !dbg !1732, !llvm.loop !1750

for.cond23.for.cond.cleanup26_crit_edge.us.i:     ; preds = %x264_clip_uint8.exit77.us.i
  %inc42.us.i = add nuw nsw i32 %y16.084.us.i, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %inc42.us.i, metadata !1718, metadata !DIExpression()), !dbg !1730
  %add.ptr44.us.i = getelementptr inbounds i8, ptr %dst.addr.183.us.i, i64 %idx.ext43.i, !dbg !1753
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i, metadata !1706, metadata !DIExpression()), !dbg !1724
  %exitcond95.not.i = icmp eq i32 %inc42.us.i, %i_height, !dbg !1754
  br i1 %exitcond95.not.i, label %if.end29, label %for.cond23.preheader.us.i, !dbg !1731, !llvm.loop !1755

for.cond.preheader.i:                             ; preds = %if.then23
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1724
  br i1 %cmp29.i, label %for.cond2.preheader.lr.ph.i, label %if.end29, !dbg !1758

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp385.i = icmp sgt i32 %i_width, 0
  %i_scale.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext.i66 = sext i32 %i_dst_stride to i64
  br i1 %cmp385.i, label %for.cond2.preheader.us.preheader.i, label %if.end29, !dbg !1759

for.cond2.preheader.us.preheader.i:               ; preds = %for.cond2.preheader.lr.ph.i
  %wide.trip.count99.i = zext i32 %i_width to i64
  br label %for.cond2.preheader.us.i, !dbg !1758

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond2.preheader.us.preheader.i
  %y.090.us.i = phi i32 [ %inc12.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.us.preheader.i ]
  %dst.addr.089.us.i = phi ptr [ %add.ptr.us.i71, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y.090.us.i, metadata !1711, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i, metadata !1706, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1760
  br label %for.body5.us.i, !dbg !1759

for.body5.us.i:                                   ; preds = %x264_clip_uint8.exit.us.i, %for.cond2.preheader.us.i
  %indvars.iv96.i = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %indvars.iv.next97.i, %x264_clip_uint8.exit.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv96.i, metadata !1715, metadata !DIExpression()), !dbg !1760
  %arrayidx.us.i67 = getelementptr inbounds i8, ptr %dst.addr.089.us.i, i64 %indvars.iv96.i, !dbg !1761
  %15 = load i8, ptr %arrayidx.us.i67, align 1, !dbg !1761, !tbaa !1474
  %conv.us.i68 = zext i8 %15 to i32, !dbg !1761
  %16 = load i32, ptr %i_scale.i, align 4, !dbg !1761, !tbaa !1736
  %mul.us.i = mul nsw i32 %16, %conv.us.i68, !dbg !1761
  %17 = load i32, ptr %i_denom.i, align 16, !dbg !1761, !tbaa !1727
  %sub.us.i = add nsw i32 %17, -1, !dbg !1761
  %shl.us.i = shl nuw i32 1, %sub.us.i, !dbg !1761
  %add.us.i69 = add nsw i32 %shl.us.i, %mul.us.i, !dbg !1761
  %shr.us.i = ashr i32 %add.us.i69, %17, !dbg !1761
  %18 = load i32, ptr %i_offset.i, align 8, !dbg !1761, !tbaa !1737
  %add8.us.i70 = add nsw i32 %shr.us.i, %18, !dbg !1761
  call void @llvm.dbg.value(metadata i32 %add8.us.i70, metadata !1738, metadata !DIExpression()), !dbg !1763
  %tobool.not.i.us.i = icmp ult i32 %add8.us.i70, 256, !dbg !1765
  br i1 %tobool.not.i.us.i, label %x264_clip_uint8.exit.us.i, label %cond.true.i.us.i, !dbg !1766

cond.true.i.us.i:                                 ; preds = %for.body5.us.i
  %19 = icmp sgt i32 %add8.us.i70, 0, !dbg !1767
  %shr.i.us.i = sext i1 %19 to i32, !dbg !1767
  br label %x264_clip_uint8.exit.us.i, !dbg !1766

x264_clip_uint8.exit.us.i:                        ; preds = %cond.true.i.us.i, %for.body5.us.i
  %cond.i.us.i = phi i32 [ %shr.i.us.i, %cond.true.i.us.i ], [ %add8.us.i70, %for.body5.us.i ], !dbg !1766
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8, !dbg !1766
  store i8 %conv.i.us.i, ptr %arrayidx.us.i67, align 1, !dbg !1761, !tbaa !1474
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next97.i, metadata !1715, metadata !DIExpression()), !dbg !1760
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count99.i, !dbg !1769
  br i1 %exitcond100.not.i, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i, !dbg !1759, !llvm.loop !1770

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %x264_clip_uint8.exit.us.i
  %inc12.us.i = add nuw nsw i32 %y.090.us.i, 1, !dbg !1772
  call void @llvm.dbg.value(metadata i32 %inc12.us.i, metadata !1711, metadata !DIExpression()), !dbg !1757
  %add.ptr.us.i71 = getelementptr inbounds i8, ptr %dst.addr.089.us.i, i64 %idx.ext.i66, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i71, metadata !1700, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i71, metadata !1706, metadata !DIExpression()), !dbg !1724
  %exitcond101.not.i = icmp eq i32 %inc12.us.i, %i_height, !dbg !1774
  br i1 %exitcond101.not.i, label %if.end29, label %for.cond2.preheader.us.i, !dbg !1758, !llvm.loop !1775

if.else:                                          ; preds = %entry
  %weightfn24 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 5, !dbg !1777
  %20 = load ptr, ptr %weightfn24, align 16, !dbg !1777, !tbaa !1696
  %tobool25.not = icmp eq ptr %20, null, !dbg !1779
  br i1 %tobool25.not, label %if.else27, label %if.then26, !dbg !1780

if.then26:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1705, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1707, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1708, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1709, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1710, metadata !DIExpression()), !dbg !1781
  %i_denom.i72 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !1783
  %21 = load i32, ptr %i_denom.i72, align 16, !dbg !1783, !tbaa !1727
  %cmp.i73 = icmp sgt i32 %21, 0, !dbg !1784
  %cmp187.i74 = icmp sgt i32 %i_height, 0, !dbg !1785
  br i1 %cmp.i73, label %for.cond.preheader.i108, label %for.cond17.preheader.i75, !dbg !1786

for.cond17.preheader.i75:                         ; preds = %if.then26
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1781
  br i1 %cmp187.i74, label %for.cond23.preheader.lr.ph.i81, label %if.end29, !dbg !1788

for.cond23.preheader.lr.ph.i81:                   ; preds = %for.cond17.preheader.i75
  %cmp2479.i76 = icmp sgt i32 %i_width, 0
  %i_scale31.i77 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33.i78 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43.i79 = sext i32 %i_dst_stride to i64
  %idx.ext45.i80 = sext i32 %i_src_stride to i64
  br i1 %cmp2479.i76, label %for.cond23.preheader.us.preheader.i83, label %if.end29, !dbg !1789

for.cond23.preheader.us.preheader.i83:            ; preds = %for.cond23.preheader.lr.ph.i81
  %wide.trip.count.i82 = zext i32 %i_width to i64
  br label %for.cond23.preheader.us.i87, !dbg !1788

for.cond23.preheader.us.i87:                      ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i107, %for.cond23.preheader.us.preheader.i83
  %y16.084.us.i84 = phi i32 [ %inc42.us.i103, %for.cond23.for.cond.cleanup26_crit_edge.us.i107 ], [ 0, %for.cond23.preheader.us.preheader.i83 ]
  %dst.addr.183.us.i85 = phi ptr [ %add.ptr44.us.i104, %for.cond23.for.cond.cleanup26_crit_edge.us.i107 ], [ %dst, %for.cond23.preheader.us.preheader.i83 ]
  %src.addr.182.us.i86 = phi ptr [ %add.ptr46.us.i105, %for.cond23.for.cond.cleanup26_crit_edge.us.i107 ], [ %add.ptr9, %for.cond23.preheader.us.preheader.i83 ]
  call void @llvm.dbg.value(metadata i32 %y16.084.us.i84, metadata !1718, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i85, metadata !1700, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %src.addr.182.us.i86, metadata !1706, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1790
  br label %for.body27.us.i94, !dbg !1789

for.body27.us.i94:                                ; preds = %x264_clip_uint8.exit77.us.i102, %for.cond23.preheader.us.i87
  %indvars.iv.i88 = phi i64 [ 0, %for.cond23.preheader.us.i87 ], [ %indvars.iv.next.i100, %x264_clip_uint8.exit77.us.i102 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i88, metadata !1721, metadata !DIExpression()), !dbg !1790
  %arrayidx29.us.i89 = getelementptr inbounds i8, ptr %src.addr.182.us.i86, i64 %indvars.iv.i88, !dbg !1791
  %22 = load i8, ptr %arrayidx29.us.i89, align 1, !dbg !1791, !tbaa !1474
  %conv30.us.i90 = zext i8 %22 to i32, !dbg !1791
  %23 = load i32, ptr %i_scale31.i77, align 4, !dbg !1791, !tbaa !1736
  %mul32.us.i91 = mul nsw i32 %23, %conv30.us.i90, !dbg !1791
  %24 = load i32, ptr %i_offset33.i78, align 8, !dbg !1791, !tbaa !1737
  %add34.us.i92 = add nsw i32 %mul32.us.i91, %24, !dbg !1791
  call void @llvm.dbg.value(metadata i32 %add34.us.i92, metadata !1738, metadata !DIExpression()), !dbg !1792
  %tobool.not.i72.us.i93 = icmp ult i32 %add34.us.i92, 256, !dbg !1794
  br i1 %tobool.not.i72.us.i93, label %x264_clip_uint8.exit77.us.i102, label %cond.true.i74.us.i96, !dbg !1795

cond.true.i74.us.i96:                             ; preds = %for.body27.us.i94
  %25 = icmp sgt i32 %add34.us.i92, 0, !dbg !1796
  %shr.i73.us.i95 = sext i1 %25 to i32, !dbg !1796
  br label %x264_clip_uint8.exit77.us.i102, !dbg !1795

x264_clip_uint8.exit77.us.i102:                   ; preds = %cond.true.i74.us.i96, %for.body27.us.i94
  %cond.i75.us.i97 = phi i32 [ %shr.i73.us.i95, %cond.true.i74.us.i96 ], [ %add34.us.i92, %for.body27.us.i94 ], !dbg !1795
  %conv.i76.us.i98 = trunc i32 %cond.i75.us.i97 to i8, !dbg !1795
  %arrayidx37.us.i99 = getelementptr inbounds i8, ptr %dst.addr.183.us.i85, i64 %indvars.iv.i88, !dbg !1791
  store i8 %conv.i76.us.i98, ptr %arrayidx37.us.i99, align 1, !dbg !1791, !tbaa !1474
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i88, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i100, metadata !1721, metadata !DIExpression()), !dbg !1790
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i82, !dbg !1798
  br i1 %exitcond.not.i101, label %for.cond23.for.cond.cleanup26_crit_edge.us.i107, label %for.body27.us.i94, !dbg !1789, !llvm.loop !1799

for.cond23.for.cond.cleanup26_crit_edge.us.i107:  ; preds = %x264_clip_uint8.exit77.us.i102
  %inc42.us.i103 = add nuw nsw i32 %y16.084.us.i84, 1, !dbg !1801
  call void @llvm.dbg.value(metadata i32 %inc42.us.i103, metadata !1718, metadata !DIExpression()), !dbg !1787
  %add.ptr44.us.i104 = getelementptr inbounds i8, ptr %dst.addr.183.us.i85, i64 %idx.ext43.i79, !dbg !1802
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i104, metadata !1700, metadata !DIExpression()), !dbg !1781
  %add.ptr46.us.i105 = getelementptr inbounds i8, ptr %src.addr.182.us.i86, i64 %idx.ext45.i80, !dbg !1803
  call void @llvm.dbg.value(metadata ptr %add.ptr46.us.i105, metadata !1706, metadata !DIExpression()), !dbg !1781
  %exitcond95.not.i106 = icmp eq i32 %inc42.us.i103, %i_height, !dbg !1804
  br i1 %exitcond95.not.i106, label %if.end29, label %for.cond23.preheader.us.i87, !dbg !1788, !llvm.loop !1805

for.cond.preheader.i108:                          ; preds = %if.then26
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1781
  br i1 %cmp187.i74, label %for.cond2.preheader.lr.ph.i114, label %if.end29, !dbg !1808

for.cond2.preheader.lr.ph.i114:                   ; preds = %for.cond.preheader.i108
  %cmp385.i109 = icmp sgt i32 %i_width, 0
  %i_scale.i110 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset.i111 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext.i112 = sext i32 %i_dst_stride to i64
  %idx.ext13.i113 = sext i32 %i_src_stride to i64
  br i1 %cmp385.i109, label %for.cond2.preheader.us.preheader.i116, label %if.end29, !dbg !1809

for.cond2.preheader.us.preheader.i116:            ; preds = %for.cond2.preheader.lr.ph.i114
  %wide.trip.count99.i115 = zext i32 %i_width to i64
  br label %for.cond2.preheader.us.i120, !dbg !1808

for.cond2.preheader.us.i120:                      ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i144, %for.cond2.preheader.us.preheader.i116
  %y.090.us.i117 = phi i32 [ %inc12.us.i140, %for.cond2.for.cond.cleanup4_crit_edge.us.i144 ], [ 0, %for.cond2.preheader.us.preheader.i116 ]
  %dst.addr.089.us.i118 = phi ptr [ %add.ptr.us.i141, %for.cond2.for.cond.cleanup4_crit_edge.us.i144 ], [ %dst, %for.cond2.preheader.us.preheader.i116 ]
  %src.addr.088.us.i119 = phi ptr [ %add.ptr14.us.i142, %for.cond2.for.cond.cleanup4_crit_edge.us.i144 ], [ %add.ptr9, %for.cond2.preheader.us.preheader.i116 ]
  call void @llvm.dbg.value(metadata i32 %y.090.us.i117, metadata !1711, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i118, metadata !1700, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %src.addr.088.us.i119, metadata !1706, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1810
  br label %for.body5.us.i131, !dbg !1809

for.body5.us.i131:                                ; preds = %x264_clip_uint8.exit.us.i139, %for.cond2.preheader.us.i120
  %indvars.iv96.i121 = phi i64 [ 0, %for.cond2.preheader.us.i120 ], [ %indvars.iv.next97.i137, %x264_clip_uint8.exit.us.i139 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv96.i121, metadata !1715, metadata !DIExpression()), !dbg !1810
  %arrayidx.us.i122 = getelementptr inbounds i8, ptr %src.addr.088.us.i119, i64 %indvars.iv96.i121, !dbg !1811
  %26 = load i8, ptr %arrayidx.us.i122, align 1, !dbg !1811, !tbaa !1474
  %conv.us.i123 = zext i8 %26 to i32, !dbg !1811
  %27 = load i32, ptr %i_scale.i110, align 4, !dbg !1811, !tbaa !1736
  %mul.us.i124 = mul nsw i32 %27, %conv.us.i123, !dbg !1811
  %28 = load i32, ptr %i_denom.i72, align 16, !dbg !1811, !tbaa !1727
  %sub.us.i125 = add nsw i32 %28, -1, !dbg !1811
  %shl.us.i126 = shl nuw i32 1, %sub.us.i125, !dbg !1811
  %add.us.i127 = add nsw i32 %shl.us.i126, %mul.us.i124, !dbg !1811
  %shr.us.i128 = ashr i32 %add.us.i127, %28, !dbg !1811
  %29 = load i32, ptr %i_offset.i111, align 8, !dbg !1811, !tbaa !1737
  %add8.us.i129 = add nsw i32 %shr.us.i128, %29, !dbg !1811
  call void @llvm.dbg.value(metadata i32 %add8.us.i129, metadata !1738, metadata !DIExpression()), !dbg !1812
  %tobool.not.i.us.i130 = icmp ult i32 %add8.us.i129, 256, !dbg !1814
  br i1 %tobool.not.i.us.i130, label %x264_clip_uint8.exit.us.i139, label %cond.true.i.us.i133, !dbg !1815

cond.true.i.us.i133:                              ; preds = %for.body5.us.i131
  %30 = icmp sgt i32 %add8.us.i129, 0, !dbg !1816
  %shr.i.us.i132 = sext i1 %30 to i32, !dbg !1816
  br label %x264_clip_uint8.exit.us.i139, !dbg !1815

x264_clip_uint8.exit.us.i139:                     ; preds = %cond.true.i.us.i133, %for.body5.us.i131
  %cond.i.us.i134 = phi i32 [ %shr.i.us.i132, %cond.true.i.us.i133 ], [ %add8.us.i129, %for.body5.us.i131 ], !dbg !1815
  %conv.i.us.i135 = trunc i32 %cond.i.us.i134 to i8, !dbg !1815
  %arrayidx10.us.i136 = getelementptr inbounds i8, ptr %dst.addr.089.us.i118, i64 %indvars.iv96.i121, !dbg !1811
  store i8 %conv.i.us.i135, ptr %arrayidx10.us.i136, align 1, !dbg !1811, !tbaa !1474
  %indvars.iv.next97.i137 = add nuw nsw i64 %indvars.iv96.i121, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next97.i137, metadata !1715, metadata !DIExpression()), !dbg !1810
  %exitcond100.not.i138 = icmp eq i64 %indvars.iv.next97.i137, %wide.trip.count99.i115, !dbg !1818
  br i1 %exitcond100.not.i138, label %for.cond2.for.cond.cleanup4_crit_edge.us.i144, label %for.body5.us.i131, !dbg !1809, !llvm.loop !1819

for.cond2.for.cond.cleanup4_crit_edge.us.i144:    ; preds = %x264_clip_uint8.exit.us.i139
  %inc12.us.i140 = add nuw nsw i32 %y.090.us.i117, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %inc12.us.i140, metadata !1711, metadata !DIExpression()), !dbg !1807
  %add.ptr.us.i141 = getelementptr inbounds i8, ptr %dst.addr.089.us.i118, i64 %idx.ext.i112, !dbg !1822
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i141, metadata !1700, metadata !DIExpression()), !dbg !1781
  %add.ptr14.us.i142 = getelementptr inbounds i8, ptr %src.addr.088.us.i119, i64 %idx.ext13.i113, !dbg !1823
  call void @llvm.dbg.value(metadata ptr %add.ptr14.us.i142, metadata !1706, metadata !DIExpression()), !dbg !1781
  %exitcond101.not.i143 = icmp eq i32 %inc12.us.i140, %i_height, !dbg !1824
  br i1 %exitcond101.not.i143, label %if.end29, label %for.cond2.preheader.us.i120, !dbg !1808, !llvm.loop !1825

if.else27:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1827, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1830, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1831, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !1832, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1833, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1834, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()) #14, !dbg !1839
  %cmp6.i = icmp sgt i32 %i_height, 0, !dbg !1840
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %if.end29, !dbg !1842

for.body.lr.ph.i:                                 ; preds = %if.else27
  %conv.i = sext i32 %i_width to i64
  %idx.ext.i146 = sext i32 %i_src_stride to i64
  %idx.ext1.i = sext i32 %i_dst_stride to i64
  br label %for.body.i, !dbg !1842

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %y.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %src.addr.08.i = phi ptr [ %add.ptr9, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i32 %y.09.i, metadata !1835, metadata !DIExpression()) #14, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %src.addr.08.i, metadata !1827, metadata !DIExpression()) #14, !dbg !1837
  call void @llvm.dbg.value(metadata ptr %dst.addr.07.i, metadata !1831, metadata !DIExpression()) #14, !dbg !1837
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %dst.addr.07.i, ptr align 1 %src.addr.08.i, i64 %conv.i, i1 false) #14, !dbg !1843
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i146, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1827, metadata !DIExpression()) #14, !dbg !1837
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1831, metadata !DIExpression()) #14, !dbg !1837
  %inc.i = add nuw nsw i32 %y.09.i, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1835, metadata !DIExpression()) #14, !dbg !1839
  %exitcond.not.i147 = icmp eq i32 %inc.i, %i_height, !dbg !1840
  br i1 %exitcond.not.i147, label %if.end29, label %for.body.i, !dbg !1842, !llvm.loop !1848

if.end29:                                         ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i107, %for.cond2.for.cond.cleanup4_crit_edge.us.i144, %for.body.i, %if.else27, %for.cond2.preheader.lr.ph.i114, %for.cond.preheader.i108, %for.cond23.preheader.lr.ph.i81, %for.cond17.preheader.i75, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond23.preheader.lr.ph.i, %for.cond17.preheader.i, %pixel_avg.exit
  ret void, !dbg !1850
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal ptr @get_ref(ptr noundef %dst, ptr nocapture noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height, ptr nocapture noundef readonly %weight) #6 !dbg !1851 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1853, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata ptr %i_dst_stride, metadata !1854, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata ptr %src, metadata !1855, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1856, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %mvx, metadata !1857, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %mvy, metadata !1858, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1859, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1860, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1861, metadata !DIExpression()), !dbg !1868
  %and = and i32 %mvy, 3, !dbg !1869
  %shl = shl nuw nsw i32 %and, 2, !dbg !1870
  %and1 = and i32 %mvx, 3, !dbg !1871
  %add = or i32 %shl, %and1, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %add, metadata !1862, metadata !DIExpression()), !dbg !1868
  %shr = ashr i32 %mvy, 2, !dbg !1873
  %mul = mul nsw i32 %shr, %i_src_stride, !dbg !1874
  %shr2 = ashr i32 %mvx, 2, !dbg !1875
  %add3 = add nsw i32 %mul, %shr2, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %add3, metadata !1863, metadata !DIExpression()), !dbg !1868
  %0 = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @hpel_ref0, i64 0, i64 %0, !dbg !1877
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1877, !tbaa !1474
  %idxprom4 = zext i8 %1 to i64, !dbg !1878
  %arrayidx5 = getelementptr inbounds ptr, ptr %src, i64 %idxprom4, !dbg !1878
  %2 = load ptr, ptr %arrayidx5, align 8, !dbg !1878, !tbaa !1398
  %idx.ext = sext i32 %add3 to i64, !dbg !1879
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !1879
  %cmp = icmp eq i32 %and, 3, !dbg !1880
  %mul7 = select i1 %cmp, i32 %i_src_stride, i32 0, !dbg !1881
  %idx.ext8 = sext i32 %mul7 to i64, !dbg !1882
  %add.ptr9 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext8, !dbg !1882
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1864, metadata !DIExpression()), !dbg !1868
  %and10 = and i32 %add, 5, !dbg !1883
  %tobool.not = icmp eq i32 %and10, 0, !dbg !1883
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1884

if.then:                                          ; preds = %entry
  %arrayidx12 = getelementptr inbounds [16 x i8], ptr @hpel_ref1, i64 0, i64 %0, !dbg !1885
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !1885, !tbaa !1474
  %idxprom13 = zext i8 %3 to i64, !dbg !1886
  %arrayidx14 = getelementptr inbounds ptr, ptr %src, i64 %idxprom13, !dbg !1886
  %4 = load ptr, ptr %arrayidx14, align 8, !dbg !1886, !tbaa !1398
  %add.ptr16 = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !1887
  %cmp18 = icmp eq i32 %and1, 3, !dbg !1888
  %5 = zext i1 %cmp18 to i64
  %add.ptr21 = getelementptr inbounds i8, ptr %add.ptr16, i64 %5, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %add.ptr21, metadata !1865, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1650, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 undef, metadata !1655, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1656, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1657, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %add.ptr21, metadata !1658, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1659, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1660, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1661, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1662, metadata !DIExpression()), !dbg !1893
  %cmp29.i = icmp sgt i32 %i_height, 0, !dbg !1894
  br i1 %cmp29.i, label %for.cond1.preheader.lr.ph.i, label %pixel_avg.exit, !dbg !1895

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then
  %6 = load i32, ptr %i_dst_stride, align 4, !dbg !1896, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %6, metadata !1655, metadata !DIExpression()), !dbg !1891
  %cmp227.i = icmp sgt i32 %i_width, 0
  %idx.ext.i = sext i32 %6 to i64
  %idx.ext12.i = sext i32 %i_src_stride to i64
  br i1 %cmp227.i, label %for.cond1.preheader.us.preheader.i, label %pixel_avg.exit, !dbg !1897

for.cond1.preheader.us.preheader.i:               ; preds = %for.cond1.preheader.lr.ph.i
  %wide.trip.count.i = zext i32 %i_width to i64
  br label %for.cond1.preheader.us.i, !dbg !1895

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.cond1.preheader.us.preheader.i
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.preheader.i ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %dst, %for.cond1.preheader.us.preheader.i ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr9, %for.cond1.preheader.us.preheader.i ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %add.ptr21, %for.cond1.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !1662, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !1650, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !1656, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !1658, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1664, metadata !DIExpression()), !dbg !1898
  br label %for.body4.us.i, !dbg !1897

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1664, metadata !DIExpression()), !dbg !1898
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !1899
  %7 = load i8, ptr %arrayidx.us.i, align 1, !dbg !1899, !tbaa !1474
  %conv.us.i = zext i8 %7 to i16, !dbg !1899
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !1900
  %8 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !1900, !tbaa !1474
  %conv7.us.i = zext i8 %8 to i16, !dbg !1900
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !1901
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !1902
  %9 = lshr i16 %add8.us.i, 1, !dbg !1903
  %conv9.us.i = trunc i16 %9 to i8, !dbg !1904
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !1905
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !1906, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1664, metadata !DIExpression()), !dbg !1898
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !1908
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !1897, !llvm.loop !1909

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext.i, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !1650, metadata !DIExpression()), !dbg !1891
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext12.i, !dbg !1912
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !1656, metadata !DIExpression()), !dbg !1891
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !1913
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !1658, metadata !DIExpression()), !dbg !1891
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !1662, metadata !DIExpression()), !dbg !1893
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, %i_height, !dbg !1894
  br i1 %exitcond36.not.i, label %pixel_avg.exit, label %for.cond1.preheader.us.i, !dbg !1895, !llvm.loop !1915

pixel_avg.exit:                                   ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then, %for.cond1.preheader.lr.ph.i
  %weightfn = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 5, !dbg !1917
  %10 = load ptr, ptr %weightfn, align 16, !dbg !1917, !tbaa !1696
  %tobool22.not = icmp eq ptr %10, null, !dbg !1919
  br i1 %tobool22.not, label %cleanup, label %if.then23, !dbg !1920

if.then23:                                        ; preds = %pixel_avg.exit
  %11 = load i32, ptr %i_dst_stride, align 4, !dbg !1921, !tbaa !1404
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %11, metadata !1705, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %11, metadata !1707, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1708, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1709, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1710, metadata !DIExpression()), !dbg !1922
  %i_denom.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !1924
  %12 = load i32, ptr %i_denom.i, align 16, !dbg !1924, !tbaa !1727
  %cmp.i = icmp sgt i32 %12, 0, !dbg !1925
  br i1 %cmp.i, label %for.cond.preheader.i, label %for.cond17.preheader.i, !dbg !1926

for.cond17.preheader.i:                           ; preds = %if.then23
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1922
  br i1 %cmp29.i, label %for.cond23.preheader.lr.ph.i, label %cleanup, !dbg !1928

for.cond23.preheader.lr.ph.i:                     ; preds = %for.cond17.preheader.i
  %cmp2479.i = icmp sgt i32 %i_width, 0
  %i_scale31.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43.i = sext i32 %11 to i64
  br i1 %cmp2479.i, label %for.cond23.preheader.us.preheader.i, label %cleanup, !dbg !1929

for.cond23.preheader.us.preheader.i:              ; preds = %for.cond23.preheader.lr.ph.i
  %wide.trip.count.i61 = zext i32 %i_width to i64
  br label %for.cond23.preheader.us.i, !dbg !1928

for.cond23.preheader.us.i:                        ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond23.preheader.us.preheader.i
  %y16.084.us.i = phi i32 [ %inc42.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ 0, %for.cond23.preheader.us.preheader.i ]
  %dst.addr.183.us.i = phi ptr [ %add.ptr44.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], [ %dst, %for.cond23.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y16.084.us.i, metadata !1718, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i, metadata !1706, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1930
  br label %for.body27.us.i, !dbg !1929

for.body27.us.i:                                  ; preds = %x264_clip_uint8.exit77.us.i, %for.cond23.preheader.us.i
  %indvars.iv.i62 = phi i64 [ 0, %for.cond23.preheader.us.i ], [ %indvars.iv.next.i63, %x264_clip_uint8.exit77.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i62, metadata !1721, metadata !DIExpression()), !dbg !1930
  %arrayidx29.us.i = getelementptr inbounds i8, ptr %dst.addr.183.us.i, i64 %indvars.iv.i62, !dbg !1931
  %13 = load i8, ptr %arrayidx29.us.i, align 1, !dbg !1931, !tbaa !1474
  %conv30.us.i = zext i8 %13 to i32, !dbg !1931
  %14 = load i32, ptr %i_scale31.i, align 4, !dbg !1931, !tbaa !1736
  %mul32.us.i = mul nsw i32 %14, %conv30.us.i, !dbg !1931
  %15 = load i32, ptr %i_offset33.i, align 8, !dbg !1931, !tbaa !1737
  %add34.us.i = add nsw i32 %mul32.us.i, %15, !dbg !1931
  call void @llvm.dbg.value(metadata i32 %add34.us.i, metadata !1738, metadata !DIExpression()), !dbg !1932
  %tobool.not.i72.us.i = icmp ult i32 %add34.us.i, 256, !dbg !1934
  br i1 %tobool.not.i72.us.i, label %x264_clip_uint8.exit77.us.i, label %cond.true.i74.us.i, !dbg !1935

cond.true.i74.us.i:                               ; preds = %for.body27.us.i
  %16 = icmp sgt i32 %add34.us.i, 0, !dbg !1936
  %shr.i73.us.i = sext i1 %16 to i32, !dbg !1936
  br label %x264_clip_uint8.exit77.us.i, !dbg !1935

x264_clip_uint8.exit77.us.i:                      ; preds = %cond.true.i74.us.i, %for.body27.us.i
  %cond.i75.us.i = phi i32 [ %shr.i73.us.i, %cond.true.i74.us.i ], [ %add34.us.i, %for.body27.us.i ], !dbg !1935
  %conv.i76.us.i = trunc i32 %cond.i75.us.i to i8, !dbg !1935
  store i8 %conv.i76.us.i, ptr %arrayidx29.us.i, align 1, !dbg !1931, !tbaa !1474
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i63, metadata !1721, metadata !DIExpression()), !dbg !1930
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i61, !dbg !1938
  br i1 %exitcond.not.i64, label %for.cond23.for.cond.cleanup26_crit_edge.us.i, label %for.body27.us.i, !dbg !1929, !llvm.loop !1939

for.cond23.for.cond.cleanup26_crit_edge.us.i:     ; preds = %x264_clip_uint8.exit77.us.i
  %inc42.us.i = add nuw nsw i32 %y16.084.us.i, 1, !dbg !1941
  call void @llvm.dbg.value(metadata i32 %inc42.us.i, metadata !1718, metadata !DIExpression()), !dbg !1927
  %add.ptr44.us.i = getelementptr inbounds i8, ptr %dst.addr.183.us.i, i64 %idx.ext43.i, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i, metadata !1706, metadata !DIExpression()), !dbg !1922
  %exitcond95.not.i = icmp eq i32 %inc42.us.i, %i_height, !dbg !1943
  br i1 %exitcond95.not.i, label %cleanup, label %for.cond23.preheader.us.i, !dbg !1928, !llvm.loop !1944

for.cond.preheader.i:                             ; preds = %if.then23
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1706, metadata !DIExpression()), !dbg !1922
  br i1 %cmp29.i, label %for.cond2.preheader.lr.ph.i, label %cleanup, !dbg !1947

for.cond2.preheader.lr.ph.i:                      ; preds = %for.cond.preheader.i
  %cmp385.i = icmp sgt i32 %i_width, 0
  %i_scale.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset.i = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext.i65 = sext i32 %11 to i64
  br i1 %cmp385.i, label %for.cond2.preheader.us.preheader.i, label %cleanup, !dbg !1948

for.cond2.preheader.us.preheader.i:               ; preds = %for.cond2.preheader.lr.ph.i
  %wide.trip.count99.i = zext i32 %i_width to i64
  br label %for.cond2.preheader.us.i, !dbg !1947

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond2.preheader.us.preheader.i
  %y.090.us.i = phi i32 [ %inc12.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ 0, %for.cond2.preheader.us.preheader.i ]
  %dst.addr.089.us.i = phi ptr [ %add.ptr.us.i70, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond2.preheader.us.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %y.090.us.i, metadata !1711, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i, metadata !1706, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !1949
  br label %for.body5.us.i, !dbg !1948

for.body5.us.i:                                   ; preds = %x264_clip_uint8.exit.us.i, %for.cond2.preheader.us.i
  %indvars.iv96.i = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %indvars.iv.next97.i, %x264_clip_uint8.exit.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv96.i, metadata !1715, metadata !DIExpression()), !dbg !1949
  %arrayidx.us.i66 = getelementptr inbounds i8, ptr %dst.addr.089.us.i, i64 %indvars.iv96.i, !dbg !1950
  %17 = load i8, ptr %arrayidx.us.i66, align 1, !dbg !1950, !tbaa !1474
  %conv.us.i67 = zext i8 %17 to i32, !dbg !1950
  %18 = load i32, ptr %i_scale.i, align 4, !dbg !1950, !tbaa !1736
  %mul.us.i = mul nsw i32 %18, %conv.us.i67, !dbg !1950
  %19 = load i32, ptr %i_denom.i, align 16, !dbg !1950, !tbaa !1727
  %sub.us.i = add nsw i32 %19, -1, !dbg !1950
  %shl.us.i = shl nuw i32 1, %sub.us.i, !dbg !1950
  %add.us.i68 = add nsw i32 %shl.us.i, %mul.us.i, !dbg !1950
  %shr.us.i = ashr i32 %add.us.i68, %19, !dbg !1950
  %20 = load i32, ptr %i_offset.i, align 8, !dbg !1950, !tbaa !1737
  %add8.us.i69 = add nsw i32 %shr.us.i, %20, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %add8.us.i69, metadata !1738, metadata !DIExpression()), !dbg !1951
  %tobool.not.i.us.i = icmp ult i32 %add8.us.i69, 256, !dbg !1953
  br i1 %tobool.not.i.us.i, label %x264_clip_uint8.exit.us.i, label %cond.true.i.us.i, !dbg !1954

cond.true.i.us.i:                                 ; preds = %for.body5.us.i
  %21 = icmp sgt i32 %add8.us.i69, 0, !dbg !1955
  %shr.i.us.i = sext i1 %21 to i32, !dbg !1955
  br label %x264_clip_uint8.exit.us.i, !dbg !1954

x264_clip_uint8.exit.us.i:                        ; preds = %cond.true.i.us.i, %for.body5.us.i
  %cond.i.us.i = phi i32 [ %shr.i.us.i, %cond.true.i.us.i ], [ %add8.us.i69, %for.body5.us.i ], !dbg !1954
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8, !dbg !1954
  store i8 %conv.i.us.i, ptr %arrayidx.us.i66, align 1, !dbg !1950, !tbaa !1474
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next97.i, metadata !1715, metadata !DIExpression()), !dbg !1949
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count99.i, !dbg !1957
  br i1 %exitcond100.not.i, label %for.cond2.for.cond.cleanup4_crit_edge.us.i, label %for.body5.us.i, !dbg !1948, !llvm.loop !1958

for.cond2.for.cond.cleanup4_crit_edge.us.i:       ; preds = %x264_clip_uint8.exit.us.i
  %inc12.us.i = add nuw nsw i32 %y.090.us.i, 1, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %inc12.us.i, metadata !1711, metadata !DIExpression()), !dbg !1946
  %add.ptr.us.i70 = getelementptr inbounds i8, ptr %dst.addr.089.us.i, i64 %idx.ext.i65, !dbg !1961
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i70, metadata !1700, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i70, metadata !1706, metadata !DIExpression()), !dbg !1922
  %exitcond101.not.i = icmp eq i32 %inc12.us.i, %i_height, !dbg !1962
  br i1 %exitcond101.not.i, label %cleanup, label %for.cond2.preheader.us.i, !dbg !1947, !llvm.loop !1963

if.else:                                          ; preds = %entry
  %weightfn24 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 5, !dbg !1965
  %22 = load ptr, ptr %weightfn24, align 16, !dbg !1965, !tbaa !1696
  %tobool25.not = icmp eq ptr %22, null, !dbg !1967
  br i1 %tobool25.not, label %if.else27, label %if.then26, !dbg !1968

if.then26:                                        ; preds = %if.else
  %23 = load i32, ptr %i_dst_stride, align 4, !dbg !1969, !tbaa !1404
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %23, metadata !1705, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !1707, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %weight, metadata !1708, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1709, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1710, metadata !DIExpression()), !dbg !1971
  %i_denom.i71 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !1973
  %24 = load i32, ptr %i_denom.i71, align 16, !dbg !1973, !tbaa !1727
  %cmp.i72 = icmp sgt i32 %24, 0, !dbg !1974
  %cmp187.i73 = icmp sgt i32 %i_height, 0, !dbg !1975
  br i1 %cmp.i72, label %for.cond.preheader.i107, label %for.cond17.preheader.i74, !dbg !1976

for.cond17.preheader.i74:                         ; preds = %if.then26
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1971
  br i1 %cmp187.i73, label %for.cond23.preheader.lr.ph.i80, label %cleanup, !dbg !1978

for.cond23.preheader.lr.ph.i80:                   ; preds = %for.cond17.preheader.i74
  %cmp2479.i75 = icmp sgt i32 %i_width, 0
  %i_scale31.i76 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33.i77 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43.i78 = sext i32 %23 to i64
  %idx.ext45.i79 = sext i32 %i_src_stride to i64
  br i1 %cmp2479.i75, label %for.cond23.preheader.us.preheader.i82, label %cleanup, !dbg !1979

for.cond23.preheader.us.preheader.i82:            ; preds = %for.cond23.preheader.lr.ph.i80
  %wide.trip.count.i81 = zext i32 %i_width to i64
  br label %for.cond23.preheader.us.i86, !dbg !1978

for.cond23.preheader.us.i86:                      ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i106, %for.cond23.preheader.us.preheader.i82
  %y16.084.us.i83 = phi i32 [ %inc42.us.i102, %for.cond23.for.cond.cleanup26_crit_edge.us.i106 ], [ 0, %for.cond23.preheader.us.preheader.i82 ]
  %dst.addr.183.us.i84 = phi ptr [ %add.ptr44.us.i103, %for.cond23.for.cond.cleanup26_crit_edge.us.i106 ], [ %dst, %for.cond23.preheader.us.preheader.i82 ]
  %src.addr.182.us.i85 = phi ptr [ %add.ptr46.us.i104, %for.cond23.for.cond.cleanup26_crit_edge.us.i106 ], [ %add.ptr9, %for.cond23.preheader.us.preheader.i82 ]
  call void @llvm.dbg.value(metadata i32 %y16.084.us.i83, metadata !1718, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr %dst.addr.183.us.i84, metadata !1700, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %src.addr.182.us.i85, metadata !1706, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()), !dbg !1980
  br label %for.body27.us.i93, !dbg !1979

for.body27.us.i93:                                ; preds = %x264_clip_uint8.exit77.us.i101, %for.cond23.preheader.us.i86
  %indvars.iv.i87 = phi i64 [ 0, %for.cond23.preheader.us.i86 ], [ %indvars.iv.next.i99, %x264_clip_uint8.exit77.us.i101 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i87, metadata !1721, metadata !DIExpression()), !dbg !1980
  %arrayidx29.us.i88 = getelementptr inbounds i8, ptr %src.addr.182.us.i85, i64 %indvars.iv.i87, !dbg !1981
  %25 = load i8, ptr %arrayidx29.us.i88, align 1, !dbg !1981, !tbaa !1474
  %conv30.us.i89 = zext i8 %25 to i32, !dbg !1981
  %26 = load i32, ptr %i_scale31.i76, align 4, !dbg !1981, !tbaa !1736
  %mul32.us.i90 = mul nsw i32 %26, %conv30.us.i89, !dbg !1981
  %27 = load i32, ptr %i_offset33.i77, align 8, !dbg !1981, !tbaa !1737
  %add34.us.i91 = add nsw i32 %mul32.us.i90, %27, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %add34.us.i91, metadata !1738, metadata !DIExpression()), !dbg !1982
  %tobool.not.i72.us.i92 = icmp ult i32 %add34.us.i91, 256, !dbg !1984
  br i1 %tobool.not.i72.us.i92, label %x264_clip_uint8.exit77.us.i101, label %cond.true.i74.us.i95, !dbg !1985

cond.true.i74.us.i95:                             ; preds = %for.body27.us.i93
  %28 = icmp sgt i32 %add34.us.i91, 0, !dbg !1986
  %shr.i73.us.i94 = sext i1 %28 to i32, !dbg !1986
  br label %x264_clip_uint8.exit77.us.i101, !dbg !1985

x264_clip_uint8.exit77.us.i101:                   ; preds = %cond.true.i74.us.i95, %for.body27.us.i93
  %cond.i75.us.i96 = phi i32 [ %shr.i73.us.i94, %cond.true.i74.us.i95 ], [ %add34.us.i91, %for.body27.us.i93 ], !dbg !1985
  %conv.i76.us.i97 = trunc i32 %cond.i75.us.i96 to i8, !dbg !1985
  %arrayidx37.us.i98 = getelementptr inbounds i8, ptr %dst.addr.183.us.i84, i64 %indvars.iv.i87, !dbg !1981
  store i8 %conv.i76.us.i97, ptr %arrayidx37.us.i98, align 1, !dbg !1981, !tbaa !1474
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i87, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i99, metadata !1721, metadata !DIExpression()), !dbg !1980
  %exitcond.not.i100 = icmp eq i64 %indvars.iv.next.i99, %wide.trip.count.i81, !dbg !1988
  br i1 %exitcond.not.i100, label %for.cond23.for.cond.cleanup26_crit_edge.us.i106, label %for.body27.us.i93, !dbg !1979, !llvm.loop !1989

for.cond23.for.cond.cleanup26_crit_edge.us.i106:  ; preds = %x264_clip_uint8.exit77.us.i101
  %inc42.us.i102 = add nuw nsw i32 %y16.084.us.i83, 1, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %inc42.us.i102, metadata !1718, metadata !DIExpression()), !dbg !1977
  %add.ptr44.us.i103 = getelementptr inbounds i8, ptr %dst.addr.183.us.i84, i64 %idx.ext43.i78, !dbg !1992
  call void @llvm.dbg.value(metadata ptr %add.ptr44.us.i103, metadata !1700, metadata !DIExpression()), !dbg !1971
  %add.ptr46.us.i104 = getelementptr inbounds i8, ptr %src.addr.182.us.i85, i64 %idx.ext45.i79, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %add.ptr46.us.i104, metadata !1706, metadata !DIExpression()), !dbg !1971
  %exitcond95.not.i105 = icmp eq i32 %inc42.us.i102, %i_height, !dbg !1994
  br i1 %exitcond95.not.i105, label %cleanup, label %for.cond23.preheader.us.i86, !dbg !1978, !llvm.loop !1995

for.cond.preheader.i107:                          ; preds = %if.then26
  call void @llvm.dbg.value(metadata i32 0, metadata !1711, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1700, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !1706, metadata !DIExpression()), !dbg !1971
  br i1 %cmp187.i73, label %for.cond2.preheader.lr.ph.i113, label %cleanup, !dbg !1998

for.cond2.preheader.lr.ph.i113:                   ; preds = %for.cond.preheader.i107
  %cmp385.i108 = icmp sgt i32 %i_width, 0
  %i_scale.i109 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset.i110 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext.i111 = sext i32 %23 to i64
  %idx.ext13.i112 = sext i32 %i_src_stride to i64
  br i1 %cmp385.i108, label %for.cond2.preheader.us.preheader.i115, label %cleanup, !dbg !1999

for.cond2.preheader.us.preheader.i115:            ; preds = %for.cond2.preheader.lr.ph.i113
  %wide.trip.count99.i114 = zext i32 %i_width to i64
  br label %for.cond2.preheader.us.i119, !dbg !1998

for.cond2.preheader.us.i119:                      ; preds = %for.cond2.for.cond.cleanup4_crit_edge.us.i143, %for.cond2.preheader.us.preheader.i115
  %y.090.us.i116 = phi i32 [ %inc12.us.i139, %for.cond2.for.cond.cleanup4_crit_edge.us.i143 ], [ 0, %for.cond2.preheader.us.preheader.i115 ]
  %dst.addr.089.us.i117 = phi ptr [ %add.ptr.us.i140, %for.cond2.for.cond.cleanup4_crit_edge.us.i143 ], [ %dst, %for.cond2.preheader.us.preheader.i115 ]
  %src.addr.088.us.i118 = phi ptr [ %add.ptr14.us.i141, %for.cond2.for.cond.cleanup4_crit_edge.us.i143 ], [ %add.ptr9, %for.cond2.preheader.us.preheader.i115 ]
  call void @llvm.dbg.value(metadata i32 %y.090.us.i116, metadata !1711, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata ptr %dst.addr.089.us.i117, metadata !1700, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata ptr %src.addr.088.us.i118, metadata !1706, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 0, metadata !1715, metadata !DIExpression()), !dbg !2000
  br label %for.body5.us.i130, !dbg !1999

for.body5.us.i130:                                ; preds = %x264_clip_uint8.exit.us.i138, %for.cond2.preheader.us.i119
  %indvars.iv96.i120 = phi i64 [ 0, %for.cond2.preheader.us.i119 ], [ %indvars.iv.next97.i136, %x264_clip_uint8.exit.us.i138 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv96.i120, metadata !1715, metadata !DIExpression()), !dbg !2000
  %arrayidx.us.i121 = getelementptr inbounds i8, ptr %src.addr.088.us.i118, i64 %indvars.iv96.i120, !dbg !2001
  %29 = load i8, ptr %arrayidx.us.i121, align 1, !dbg !2001, !tbaa !1474
  %conv.us.i122 = zext i8 %29 to i32, !dbg !2001
  %30 = load i32, ptr %i_scale.i109, align 4, !dbg !2001, !tbaa !1736
  %mul.us.i123 = mul nsw i32 %30, %conv.us.i122, !dbg !2001
  %31 = load i32, ptr %i_denom.i71, align 16, !dbg !2001, !tbaa !1727
  %sub.us.i124 = add nsw i32 %31, -1, !dbg !2001
  %shl.us.i125 = shl nuw i32 1, %sub.us.i124, !dbg !2001
  %add.us.i126 = add nsw i32 %shl.us.i125, %mul.us.i123, !dbg !2001
  %shr.us.i127 = ashr i32 %add.us.i126, %31, !dbg !2001
  %32 = load i32, ptr %i_offset.i110, align 8, !dbg !2001, !tbaa !1737
  %add8.us.i128 = add nsw i32 %shr.us.i127, %32, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %add8.us.i128, metadata !1738, metadata !DIExpression()), !dbg !2002
  %tobool.not.i.us.i129 = icmp ult i32 %add8.us.i128, 256, !dbg !2004
  br i1 %tobool.not.i.us.i129, label %x264_clip_uint8.exit.us.i138, label %cond.true.i.us.i132, !dbg !2005

cond.true.i.us.i132:                              ; preds = %for.body5.us.i130
  %33 = icmp sgt i32 %add8.us.i128, 0, !dbg !2006
  %shr.i.us.i131 = sext i1 %33 to i32, !dbg !2006
  br label %x264_clip_uint8.exit.us.i138, !dbg !2005

x264_clip_uint8.exit.us.i138:                     ; preds = %cond.true.i.us.i132, %for.body5.us.i130
  %cond.i.us.i133 = phi i32 [ %shr.i.us.i131, %cond.true.i.us.i132 ], [ %add8.us.i128, %for.body5.us.i130 ], !dbg !2005
  %conv.i.us.i134 = trunc i32 %cond.i.us.i133 to i8, !dbg !2005
  %arrayidx10.us.i135 = getelementptr inbounds i8, ptr %dst.addr.089.us.i117, i64 %indvars.iv96.i120, !dbg !2001
  store i8 %conv.i.us.i134, ptr %arrayidx10.us.i135, align 1, !dbg !2001, !tbaa !1474
  %indvars.iv.next97.i136 = add nuw nsw i64 %indvars.iv96.i120, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next97.i136, metadata !1715, metadata !DIExpression()), !dbg !2000
  %exitcond100.not.i137 = icmp eq i64 %indvars.iv.next97.i136, %wide.trip.count99.i114, !dbg !2008
  br i1 %exitcond100.not.i137, label %for.cond2.for.cond.cleanup4_crit_edge.us.i143, label %for.body5.us.i130, !dbg !1999, !llvm.loop !2009

for.cond2.for.cond.cleanup4_crit_edge.us.i143:    ; preds = %x264_clip_uint8.exit.us.i138
  %inc12.us.i139 = add nuw nsw i32 %y.090.us.i116, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %inc12.us.i139, metadata !1711, metadata !DIExpression()), !dbg !1997
  %add.ptr.us.i140 = getelementptr inbounds i8, ptr %dst.addr.089.us.i117, i64 %idx.ext.i111, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i140, metadata !1700, metadata !DIExpression()), !dbg !1971
  %add.ptr14.us.i141 = getelementptr inbounds i8, ptr %src.addr.088.us.i118, i64 %idx.ext13.i112, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %add.ptr14.us.i141, metadata !1706, metadata !DIExpression()), !dbg !1971
  %exitcond101.not.i142 = icmp eq i32 %inc12.us.i139, %i_height, !dbg !2014
  br i1 %exitcond101.not.i142, label %cleanup, label %for.cond2.preheader.us.i119, !dbg !1998, !llvm.loop !2015

if.else27:                                        ; preds = %if.else
  store i32 %i_src_stride, ptr %i_dst_stride, align 4, !dbg !2017, !tbaa !1404
  br label %cleanup, !dbg !2019

cleanup:                                          ; preds = %for.cond23.for.cond.cleanup26_crit_edge.us.i, %for.cond2.for.cond.cleanup4_crit_edge.us.i, %for.cond23.for.cond.cleanup26_crit_edge.us.i106, %for.cond2.for.cond.cleanup4_crit_edge.us.i143, %for.cond2.preheader.lr.ph.i113, %for.cond.preheader.i107, %for.cond23.preheader.lr.ph.i80, %for.cond17.preheader.i74, %for.cond2.preheader.lr.ph.i, %for.cond.preheader.i, %for.cond23.preheader.lr.ph.i, %for.cond17.preheader.i, %pixel_avg.exit, %if.else27
  %retval.0 = phi ptr [ %add.ptr9, %if.else27 ], [ %dst, %pixel_avg.exit ], [ %dst, %for.cond17.preheader.i ], [ %dst, %for.cond23.preheader.lr.ph.i ], [ %dst, %for.cond.preheader.i ], [ %dst, %for.cond2.preheader.lr.ph.i ], [ %dst, %for.cond17.preheader.i74 ], [ %dst, %for.cond23.preheader.lr.ph.i80 ], [ %dst, %for.cond.preheader.i107 ], [ %dst, %for.cond2.preheader.lr.ph.i113 ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i143 ], [ %dst, %for.cond23.for.cond.cleanup26_crit_edge.us.i106 ], [ %dst, %for.cond2.for.cond.cleanup4_crit_edge.us.i ], [ %dst, %for.cond23.for.cond.cleanup26_crit_edge.us.i ], !dbg !2020
  ret ptr %retval.0, !dbg !2021
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_chroma(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, i32 noundef %mvx, i32 noundef %mvy, i32 noundef %i_width, i32 noundef %i_height) #6 !dbg !2022 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2024, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !2025, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %src, metadata !2026, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !2027, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %mvx, metadata !2028, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %mvy, metadata !2029, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !2030, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !2031, metadata !DIExpression()), !dbg !2045
  %and = and i32 %mvx, 7, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %and, metadata !2033, metadata !DIExpression()), !dbg !2045
  %and1 = and i32 %mvy, 7, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %and1, metadata !2034, metadata !DIExpression()), !dbg !2045
  %sub = sub nuw nsw i32 8, %and, !dbg !2048
  %sub2 = sub nuw nsw i32 8, %and1, !dbg !2049
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub2, i32 %sub), metadata !2035, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub2, i32 %and), metadata !2036, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub, i32 %and1), metadata !2037, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(i32 %and1, i32 %and), metadata !2038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %idxprom = sext i32 %i_src_stride to i64, !dbg !2050
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata i32 0, metadata !2039, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2024, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %cmp75 = icmp sgt i32 %i_height, 0, !dbg !2052
  br i1 %cmp75, label %for.cond10.preheader.lr.ph, label %for.cond.cleanup, !dbg !2053

for.cond10.preheader.lr.ph:                       ; preds = %entry
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %cmp1172 = icmp sgt i32 %i_width, 0
  %idx.ext39 = sext i32 %i_dst_stride to i64
  br i1 %cmp1172, label %for.cond10.preheader.us.preheader, label %for.cond.cleanup, !dbg !2054

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %shr = ashr i32 %mvy, 3, !dbg !2055
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %shr, i32 %mvx, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %shr, i32 %mvx, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %mul8 = mul nsw i32 %shr, %i_src_stride, !dbg !2056
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mul8, i32 %mvx), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mul8, i32 %mvx), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shra, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %shr9 = ashr i32 %mvx, 3, !dbg !2057
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %mvy, i32 %shr9, i32 %i_src_stride), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %mvy, i32 %shr9, i32 %i_src_stride), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shra, DW_OP_LLVM_arg, 4, DW_OP_mul, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %add = add nsw i32 %mul8, %shr9, !dbg !2058
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i32 %add), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i32 %add), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %idx.ext = sext i32 %add to i64, !dbg !2059
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idx.ext), metadata !2026, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %src, i64 %idxprom, i64 %idx.ext), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %add.ptr = getelementptr inbounds i8, ptr %src, i64 %idx.ext, !dbg !2059
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2026, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr, i64 %idxprom), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %wide.trip.count = zext i32 %i_width to i64
  br label %for.cond10.preheader.us, !dbg !2053

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.cond10.for.cond.cleanup12_crit_edge.us
  %y.078.us = phi i32 [ %inc44.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ 0, %for.cond10.preheader.us.preheader ]
  %dst.addr.077.us = phi ptr [ %add.ptr40.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %dst, %for.cond10.preheader.us.preheader ]
  %src.addr.076.us = phi ptr [ %srcp.079.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %add.ptr, %for.cond10.preheader.us.preheader ]
  %srcp.079.us = getelementptr inbounds i8, ptr %src.addr.076.us, i64 %idxprom, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %y.078.us, metadata !2039, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata ptr %dst.addr.077.us, metadata !2024, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %src.addr.076.us, metadata !2026, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata i32 0, metadata !2041, metadata !DIExpression()), !dbg !2060
  br label %for.body13.us, !dbg !2054

for.body13.us:                                    ; preds = %for.cond10.preheader.us, %for.body13.us
  %indvars.iv = phi i64 [ 0, %for.cond10.preheader.us ], [ %indvars.iv.next, %for.body13.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2041, metadata !DIExpression()), !dbg !2060
  %arrayidx15.us = getelementptr inbounds i8, ptr %src.addr.076.us, i64 %indvars.iv, !dbg !2061
  %0 = load i8, ptr %arrayidx15.us, align 1, !dbg !2061, !tbaa !1474
  %conv.us = zext i8 %0 to i32, !dbg !2061
  %mul16.us = mul nuw nsw i32 %sub, %conv.us, !dbg !2063
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2064
  %arrayidx19.us = getelementptr inbounds i8, ptr %src.addr.076.us, i64 %indvars.iv.next, !dbg !2065
  %1 = load i8, ptr %arrayidx19.us, align 1, !dbg !2065, !tbaa !1474
  %conv20.us = zext i8 %1 to i32, !dbg !2065
  %mul21.us = mul nuw nsw i32 %and, %conv20.us, !dbg !2066
  %arrayidx24.us = getelementptr inbounds i8, ptr %srcp.079.us, i64 %indvars.iv, !dbg !2067
  %2 = load i8, ptr %arrayidx24.us, align 1, !dbg !2067, !tbaa !1474
  %conv25.us = zext i8 %2 to i32, !dbg !2067
  %mul26.us = mul nuw nsw i32 %sub, %conv25.us, !dbg !2068
  %arrayidx30.us = getelementptr inbounds i8, ptr %srcp.079.us, i64 %indvars.iv.next, !dbg !2069
  %3 = load i8, ptr %arrayidx30.us, align 1, !dbg !2069, !tbaa !1474
  %conv31.us = zext i8 %3 to i32, !dbg !2069
  %mul32.us = mul nuw nsw i32 %and, %conv31.us, !dbg !2070
  %reass.add.us = add nuw nsw i32 %mul32.us, %mul26.us
  %reass.mul.us = mul nuw nsw i32 %reass.add.us, %and1
  %reass.add70.us = add nuw nsw i32 %mul21.us, %mul16.us
  %reass.mul71.us = mul nuw nsw i32 %reass.add70.us, %sub2
  %add33.us = add nuw nsw i32 %reass.mul71.us, 32, !dbg !2071
  %add34.us = add nuw nsw i32 %add33.us, %reass.mul.us, !dbg !2072
  %4 = lshr i32 %add34.us, 6, !dbg !2073
  %conv36.us = trunc i32 %4 to i8, !dbg !2074
  %arrayidx38.us = getelementptr inbounds i8, ptr %dst.addr.077.us, i64 %indvars.iv, !dbg !2075
  store i8 %conv36.us, ptr %arrayidx38.us, align 1, !dbg !2076, !tbaa !1474
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2041, metadata !DIExpression()), !dbg !2060
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2077
  br i1 %exitcond.not, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %for.body13.us, !dbg !2054, !llvm.loop !2078

for.cond10.for.cond.cleanup12_crit_edge.us:       ; preds = %for.body13.us
  %add.ptr40.us = getelementptr inbounds i8, ptr %dst.addr.077.us, i64 %idx.ext39, !dbg !2080
  call void @llvm.dbg.value(metadata ptr %add.ptr40.us, metadata !2024, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata ptr %srcp.079.us, metadata !2026, metadata !DIExpression()), !dbg !2045
  call void @llvm.dbg.value(metadata !DIArgList(ptr %srcp.079.us, i64 %idxprom), metadata !2032, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2045
  %inc44.us = add nuw nsw i32 %y.078.us, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i32 %inc44.us, metadata !2039, metadata !DIExpression()), !dbg !2051
  %exitcond82.not = icmp eq i32 %inc44.us, %i_height, !dbg !2052
  br i1 %exitcond82.not, label %for.cond.cleanup, label %for.cond10.preheader.us, !dbg !2053, !llvm.loop !2082

for.cond.cleanup:                                 ; preds = %for.cond10.for.cond.cleanup12_crit_edge.us, %for.cond10.preheader.lr.ph, %entry
  ret void, !dbg !2084
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_16x16(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2085 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2087, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2088, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2089, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2093, metadata !DIExpression()), !dbg !2094
  %cmp = icmp eq i32 %weight, 32, !dbg !2095
  br i1 %cmp, label %if.then, label %if.else, !dbg !2097

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 16, metadata !2106, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 16, metadata !2107, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2116
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2117

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2118
  br label %for.body4.us.i, !dbg !2119

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2118
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2120
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2120, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2120
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2122
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2122, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2122
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2123
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2124
  %2 = lshr i16 %add8.us.i, 1, !dbg !2125
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2126
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2127
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2128, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2118
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16, !dbg !2130
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2119, !llvm.loop !2131

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2114
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2134
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2114
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2114
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2116
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 16, !dbg !2137
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2117, !llvm.loop !2138

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 16, i32 noundef 16, i32 noundef %weight), !dbg !2095
  br label %if.end

if.end:                                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.else
  ret void, !dbg !2097
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_16x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2140 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2142, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2143, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2144, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2145, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2146, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2148, metadata !DIExpression()), !dbg !2149
  %cmp = icmp eq i32 %weight, 32, !dbg !2150
  br i1 %cmp, label %if.then, label %if.else, !dbg !2152

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 16, metadata !2106, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 8, metadata !2107, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2155
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2156

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2157
  br label %for.body4.us.i, !dbg !2158

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2157
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2159
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2159, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2159
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2160
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2160, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2160
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2161
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2162
  %2 = lshr i16 %add8.us.i, 1, !dbg !2163
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2164
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2165
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2166, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2167
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2157
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16, !dbg !2168
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2158, !llvm.loop !2169

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2153
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2153
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2153
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2155
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 8, !dbg !2175
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2156, !llvm.loop !2176

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 16, i32 noundef 8, i32 noundef %weight), !dbg !2150
  br label %if.end

if.end:                                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.else
  ret void, !dbg !2152
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_8x16(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2178 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2180, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2181, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2183, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2184, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2185, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2186, metadata !DIExpression()), !dbg !2187
  %cmp = icmp eq i32 %weight, 32, !dbg !2188
  br i1 %cmp, label %if.then, label %if.else, !dbg !2190

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 8, metadata !2106, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 16, metadata !2107, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2193
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2194

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2195
  br label %for.body4.us.i, !dbg !2196

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2195
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2197
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2197, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2197
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2198
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2198, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2198
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2199
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2200
  %2 = lshr i16 %add8.us.i, 1, !dbg !2201
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2202
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2203
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2204, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2195
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !2206
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2196, !llvm.loop !2207

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2191
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2191
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2211
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2191
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2193
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 16, !dbg !2213
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2194, !llvm.loop !2214

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 16, i32 noundef %weight), !dbg !2188
  br label %if.end

if.end:                                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.else
  ret void, !dbg !2190
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_8x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2216 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2218, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2219, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2220, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2224, metadata !DIExpression()), !dbg !2225
  %cmp = icmp eq i32 %weight, 32, !dbg !2226
  br i1 %cmp, label %if.then, label %if.else, !dbg !2228

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 8, metadata !2106, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 8, metadata !2107, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2231
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2232

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2233
  br label %for.body4.us.i, !dbg !2234

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2233
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2235
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2235, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2235
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2236
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2236, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2236
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2237
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2238
  %2 = lshr i16 %add8.us.i, 1, !dbg !2239
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2240
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2241
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2242, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2233
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !2244
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2234, !llvm.loop !2245

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2247
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2229
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2229
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2249
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2229
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2231
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 8, !dbg !2251
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2232, !llvm.loop !2252

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 8, i32 noundef %weight), !dbg !2226
  br label %if.end

if.end:                                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.else
  ret void, !dbg !2228
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_8x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2254 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2256, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2257, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2258, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2260, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2262, metadata !DIExpression()), !dbg !2263
  %cmp = icmp eq i32 %weight, 32, !dbg !2264
  br i1 %cmp, label %if.then, label %if.else, !dbg !2266

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 8, metadata !2106, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 4, metadata !2107, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2269
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2270

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2271
  br label %for.body4.us.i, !dbg !2272

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2271
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2273
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2273, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2273
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2274
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2274, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2274
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2275
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2276
  %2 = lshr i16 %add8.us.i, 1, !dbg !2277
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2278
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2279
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2280, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2271
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !2282
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2272, !llvm.loop !2283

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2285
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2267
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2286
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2267
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2287
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2267
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2269
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 4, !dbg !2289
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2270, !llvm.loop !2290

if.else:                                          ; preds = %entry
  tail call fastcc void @pixel_avg_weight_wxh(ptr noundef %pix1, i32 noundef %i_stride_pix1, ptr noundef %pix2, i32 noundef %i_stride_pix2, ptr noundef %pix3, i32 noundef %i_stride_pix3, i32 noundef 8, i32 noundef 4, i32 noundef %weight), !dbg !2264
  br label %if.end

if.end:                                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.else
  ret void, !dbg !2266
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_4x8(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2292 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2294, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2295, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2296, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2297, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2298, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2299, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2300, metadata !DIExpression()), !dbg !2301
  %cmp = icmp eq i32 %weight, 32, !dbg !2302
  br i1 %cmp, label %if.then, label %if.else, !dbg !2304

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 4, metadata !2106, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 8, metadata !2107, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2307
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2308

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2309
  br label %for.body4.us.i, !dbg !2310

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2309
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2311
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2311, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2311
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2312
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2312, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2312
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2313
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2314
  %2 = lshr i16 %add8.us.i, 1, !dbg !2315
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2316
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2317
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2318, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2309
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !2320
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2310, !llvm.loop !2321

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2323
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2305
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2324
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2305
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2305
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2307
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 8, !dbg !2327
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2308, !llvm.loop !2328

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2330, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2335, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2336, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2337, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2338, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2339, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 4, metadata !2340, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 8, metadata !2341, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2342, metadata !DIExpression()), !dbg !2347
  %sub.i = sub nsw i32 64, %weight, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2343, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2350
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %x264_clip_uint8.exit284.i, %if.else
  %y.0364.i = phi i32 [ %inc.i, %x264_clip_uint8.exit284.i ], [ 0, %if.else ]
  %dst.addr.0362.i = phi ptr [ %add.ptr.i, %x264_clip_uint8.exit284.i ], [ %pix1, %if.else ]
  %src1.addr.0360.i = phi ptr [ %add.ptr182.i, %x264_clip_uint8.exit284.i ], [ %pix2, %if.else ]
  %src2.addr.0358.i = phi ptr [ %add.ptr184.i, %x264_clip_uint8.exit284.i ], [ %pix3, %if.else ]
  call void @llvm.dbg.value(metadata i32 %y.0364.i, metadata !2345, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.i, metadata !2330, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.i, metadata !2336, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.i, metadata !2338, metadata !DIExpression()), !dbg !2347
  %3 = load i8, ptr %src1.addr.0360.i, align 1, !dbg !2351, !tbaa !1474
  %conv.i = zext i8 %3 to i32, !dbg !2351
  %mul.i = mul nsw i32 %conv.i, %weight, !dbg !2351
  %4 = load i8, ptr %src2.addr.0358.i, align 1, !dbg !2351, !tbaa !1474
  %conv2.i = zext i8 %4 to i32, !dbg !2351
  %mul3.i = mul nsw i32 %sub.i, %conv2.i, !dbg !2351
  %add.i = add nsw i32 %mul3.i, %mul.i, !dbg !2351
  %add4.i = add nsw i32 %add.i, 32, !dbg !2351
  %shr.i = ashr i32 %add4.i, 6, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !1738, metadata !DIExpression()), !dbg !2354
  %tobool.not.i.i = icmp ult i32 %add4.i, 16384, !dbg !2356
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !2357

cond.true.i.i:                                    ; preds = %for.body.i
  %5 = icmp sgt i32 %add.i, 31, !dbg !2358
  %shr.i.i = sext i1 %5 to i32, !dbg !2358
  br label %x264_clip_uint8.exit.i, !dbg !2357

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %for.body.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %shr.i, %for.body.i ], !dbg !2357
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !2357
  store i8 %conv.i.i, ptr %dst.addr.0362.i, align 1, !dbg !2351, !tbaa !1474
  %arrayidx6.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 1, !dbg !2359
  %6 = load i8, ptr %arrayidx6.i, align 1, !dbg !2359, !tbaa !1474
  %conv7.i = zext i8 %6 to i32, !dbg !2359
  %mul8.i = mul nsw i32 %conv7.i, %weight, !dbg !2359
  %arrayidx9.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 1, !dbg !2359
  %7 = load i8, ptr %arrayidx9.i, align 1, !dbg !2359, !tbaa !1474
  %conv10.i = zext i8 %7 to i32, !dbg !2359
  %mul11.i = mul nsw i32 %sub.i, %conv10.i, !dbg !2359
  %add12.i = add nsw i32 %mul11.i, %mul8.i, !dbg !2359
  %add13.i = add nsw i32 %add12.i, 32, !dbg !2359
  %shr14.i = ashr i32 %add13.i, 6, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %shr14.i, metadata !1738, metadata !DIExpression()), !dbg !2360
  %tobool.not.i267.i = icmp ult i32 %add13.i, 16384, !dbg !2362
  br i1 %tobool.not.i267.i, label %x264_clip_uint8.exit272.i, label %cond.true.i269.i, !dbg !2363

cond.true.i269.i:                                 ; preds = %x264_clip_uint8.exit.i
  %8 = icmp sgt i32 %add12.i, 31, !dbg !2364
  %shr.i268.i = sext i1 %8 to i32, !dbg !2364
  br label %x264_clip_uint8.exit272.i, !dbg !2363

x264_clip_uint8.exit272.i:                        ; preds = %cond.true.i269.i, %x264_clip_uint8.exit.i
  %cond.i270.i = phi i32 [ %shr.i268.i, %cond.true.i269.i ], [ %shr14.i, %x264_clip_uint8.exit.i ], !dbg !2363
  %conv.i271.i = trunc i32 %cond.i270.i to i8, !dbg !2363
  %arrayidx16.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 1, !dbg !2359
  store i8 %conv.i271.i, ptr %arrayidx16.i, align 1, !dbg !2359, !tbaa !1474
  %arrayidx19.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 2, !dbg !2365
  %9 = load i8, ptr %arrayidx19.i, align 1, !dbg !2365, !tbaa !1474
  %conv20.i = zext i8 %9 to i32, !dbg !2365
  %mul21.i = mul nsw i32 %conv20.i, %weight, !dbg !2365
  %arrayidx22.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 2, !dbg !2365
  %10 = load i8, ptr %arrayidx22.i, align 1, !dbg !2365, !tbaa !1474
  %conv23.i = zext i8 %10 to i32, !dbg !2365
  %mul24.i = mul nsw i32 %sub.i, %conv23.i, !dbg !2365
  %add25.i = add nsw i32 %mul24.i, %mul21.i, !dbg !2365
  %add26.i = add nsw i32 %add25.i, 32, !dbg !2365
  %shr27.i = ashr i32 %add26.i, 6, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %shr27.i, metadata !1738, metadata !DIExpression()), !dbg !2366
  %tobool.not.i273.i = icmp ult i32 %add26.i, 16384, !dbg !2368
  br i1 %tobool.not.i273.i, label %x264_clip_uint8.exit278.i, label %cond.true.i275.i, !dbg !2369

cond.true.i275.i:                                 ; preds = %x264_clip_uint8.exit272.i
  %11 = icmp sgt i32 %add25.i, 31, !dbg !2370
  %shr.i274.i = sext i1 %11 to i32, !dbg !2370
  br label %x264_clip_uint8.exit278.i, !dbg !2369

x264_clip_uint8.exit278.i:                        ; preds = %cond.true.i275.i, %x264_clip_uint8.exit272.i
  %cond.i276.i = phi i32 [ %shr.i274.i, %cond.true.i275.i ], [ %shr27.i, %x264_clip_uint8.exit272.i ], !dbg !2369
  %conv.i277.i = trunc i32 %cond.i276.i to i8, !dbg !2369
  %arrayidx29.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 2, !dbg !2365
  store i8 %conv.i277.i, ptr %arrayidx29.i, align 1, !dbg !2365, !tbaa !1474
  %arrayidx30.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 3, !dbg !2371
  %12 = load i8, ptr %arrayidx30.i, align 1, !dbg !2371, !tbaa !1474
  %conv31.i = zext i8 %12 to i32, !dbg !2371
  %mul32.i = mul nsw i32 %conv31.i, %weight, !dbg !2371
  %arrayidx33.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 3, !dbg !2371
  %13 = load i8, ptr %arrayidx33.i, align 1, !dbg !2371, !tbaa !1474
  %conv34.i = zext i8 %13 to i32, !dbg !2371
  %mul35.i = mul nsw i32 %sub.i, %conv34.i, !dbg !2371
  %add36.i = add nsw i32 %mul35.i, %mul32.i, !dbg !2371
  %add37.i = add nsw i32 %add36.i, 32, !dbg !2371
  %shr38.i = ashr i32 %add37.i, 6, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %shr38.i, metadata !1738, metadata !DIExpression()), !dbg !2372
  %tobool.not.i279.i = icmp ult i32 %add37.i, 16384, !dbg !2374
  br i1 %tobool.not.i279.i, label %x264_clip_uint8.exit284.i, label %cond.true.i281.i, !dbg !2375

cond.true.i281.i:                                 ; preds = %x264_clip_uint8.exit278.i
  %14 = icmp sgt i32 %add36.i, 31, !dbg !2376
  %shr.i280.i = sext i1 %14 to i32, !dbg !2376
  br label %x264_clip_uint8.exit284.i, !dbg !2375

x264_clip_uint8.exit284.i:                        ; preds = %cond.true.i281.i, %x264_clip_uint8.exit278.i
  %cond.i282.i = phi i32 [ %shr.i280.i, %cond.true.i281.i ], [ %shr38.i, %x264_clip_uint8.exit278.i ], !dbg !2375
  %conv.i283.i = trunc i32 %cond.i282.i to i8, !dbg !2375
  %arrayidx40.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 3, !dbg !2371
  store i8 %conv.i283.i, ptr %arrayidx40.i, align 1, !dbg !2371, !tbaa !1474
  %inc.i = add nuw nsw i32 %y.0364.i, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2345, metadata !DIExpression()), !dbg !2350
  %add.ptr.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 %idx.ext.i8, !dbg !2378
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2330, metadata !DIExpression()), !dbg !2347
  %add.ptr182.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 %idx.ext181.i, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %add.ptr182.i, metadata !2336, metadata !DIExpression()), !dbg !2347
  %add.ptr184.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 %idx.ext183.i, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %add.ptr184.i, metadata !2338, metadata !DIExpression()), !dbg !2347
  %exitcond.not.i9 = icmp eq i32 %inc.i, 8, !dbg !2381
  br i1 %exitcond.not.i9, label %if.end, label %for.body.i, !dbg !2382, !llvm.loop !2383

if.end:                                           ; preds = %x264_clip_uint8.exit284.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  ret void, !dbg !2304
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_4x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2387, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2388, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2389, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2393, metadata !DIExpression()), !dbg !2394
  %cmp = icmp eq i32 %weight, 32, !dbg !2395
  br i1 %cmp, label %if.then, label %if.else, !dbg !2397

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 4, metadata !2106, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 4, metadata !2107, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2400
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2401

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2402
  br label %for.body4.us.i, !dbg !2403

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2402
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2404
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2404, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2404
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2405
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2405, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2405
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2406
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2407
  %2 = lshr i16 %add8.us.i, 1, !dbg !2408
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2409
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2410
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2411, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2402
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !2413
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2403, !llvm.loop !2414

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2398
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2398
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2398
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2400
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 4, !dbg !2420
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2401, !llvm.loop !2421

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2330, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2335, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2336, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2337, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2338, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2339, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 4, metadata !2340, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 4, metadata !2341, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2342, metadata !DIExpression()), !dbg !2423
  %sub.i = sub nsw i32 64, %weight, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2343, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2426
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %x264_clip_uint8.exit284.i, %if.else
  %y.0364.i = phi i32 [ %inc.i, %x264_clip_uint8.exit284.i ], [ 0, %if.else ]
  %dst.addr.0362.i = phi ptr [ %add.ptr.i, %x264_clip_uint8.exit284.i ], [ %pix1, %if.else ]
  %src1.addr.0360.i = phi ptr [ %add.ptr182.i, %x264_clip_uint8.exit284.i ], [ %pix2, %if.else ]
  %src2.addr.0358.i = phi ptr [ %add.ptr184.i, %x264_clip_uint8.exit284.i ], [ %pix3, %if.else ]
  call void @llvm.dbg.value(metadata i32 %y.0364.i, metadata !2345, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.i, metadata !2330, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.i, metadata !2336, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.i, metadata !2338, metadata !DIExpression()), !dbg !2423
  %3 = load i8, ptr %src1.addr.0360.i, align 1, !dbg !2427, !tbaa !1474
  %conv.i = zext i8 %3 to i32, !dbg !2427
  %mul.i = mul nsw i32 %conv.i, %weight, !dbg !2427
  %4 = load i8, ptr %src2.addr.0358.i, align 1, !dbg !2427, !tbaa !1474
  %conv2.i = zext i8 %4 to i32, !dbg !2427
  %mul3.i = mul nsw i32 %sub.i, %conv2.i, !dbg !2427
  %add.i = add nsw i32 %mul3.i, %mul.i, !dbg !2427
  %add4.i = add nsw i32 %add.i, 32, !dbg !2427
  %shr.i = ashr i32 %add4.i, 6, !dbg !2427
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !1738, metadata !DIExpression()), !dbg !2428
  %tobool.not.i.i = icmp ult i32 %add4.i, 16384, !dbg !2430
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !2431

cond.true.i.i:                                    ; preds = %for.body.i
  %5 = icmp sgt i32 %add.i, 31, !dbg !2432
  %shr.i.i = sext i1 %5 to i32, !dbg !2432
  br label %x264_clip_uint8.exit.i, !dbg !2431

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %for.body.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %shr.i, %for.body.i ], !dbg !2431
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !2431
  store i8 %conv.i.i, ptr %dst.addr.0362.i, align 1, !dbg !2427, !tbaa !1474
  %arrayidx6.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 1, !dbg !2433
  %6 = load i8, ptr %arrayidx6.i, align 1, !dbg !2433, !tbaa !1474
  %conv7.i = zext i8 %6 to i32, !dbg !2433
  %mul8.i = mul nsw i32 %conv7.i, %weight, !dbg !2433
  %arrayidx9.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 1, !dbg !2433
  %7 = load i8, ptr %arrayidx9.i, align 1, !dbg !2433, !tbaa !1474
  %conv10.i = zext i8 %7 to i32, !dbg !2433
  %mul11.i = mul nsw i32 %sub.i, %conv10.i, !dbg !2433
  %add12.i = add nsw i32 %mul11.i, %mul8.i, !dbg !2433
  %add13.i = add nsw i32 %add12.i, 32, !dbg !2433
  %shr14.i = ashr i32 %add13.i, 6, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %shr14.i, metadata !1738, metadata !DIExpression()), !dbg !2434
  %tobool.not.i267.i = icmp ult i32 %add13.i, 16384, !dbg !2436
  br i1 %tobool.not.i267.i, label %x264_clip_uint8.exit272.i, label %cond.true.i269.i, !dbg !2437

cond.true.i269.i:                                 ; preds = %x264_clip_uint8.exit.i
  %8 = icmp sgt i32 %add12.i, 31, !dbg !2438
  %shr.i268.i = sext i1 %8 to i32, !dbg !2438
  br label %x264_clip_uint8.exit272.i, !dbg !2437

x264_clip_uint8.exit272.i:                        ; preds = %cond.true.i269.i, %x264_clip_uint8.exit.i
  %cond.i270.i = phi i32 [ %shr.i268.i, %cond.true.i269.i ], [ %shr14.i, %x264_clip_uint8.exit.i ], !dbg !2437
  %conv.i271.i = trunc i32 %cond.i270.i to i8, !dbg !2437
  %arrayidx16.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 1, !dbg !2433
  store i8 %conv.i271.i, ptr %arrayidx16.i, align 1, !dbg !2433, !tbaa !1474
  %arrayidx19.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 2, !dbg !2439
  %9 = load i8, ptr %arrayidx19.i, align 1, !dbg !2439, !tbaa !1474
  %conv20.i = zext i8 %9 to i32, !dbg !2439
  %mul21.i = mul nsw i32 %conv20.i, %weight, !dbg !2439
  %arrayidx22.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 2, !dbg !2439
  %10 = load i8, ptr %arrayidx22.i, align 1, !dbg !2439, !tbaa !1474
  %conv23.i = zext i8 %10 to i32, !dbg !2439
  %mul24.i = mul nsw i32 %sub.i, %conv23.i, !dbg !2439
  %add25.i = add nsw i32 %mul24.i, %mul21.i, !dbg !2439
  %add26.i = add nsw i32 %add25.i, 32, !dbg !2439
  %shr27.i = ashr i32 %add26.i, 6, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %shr27.i, metadata !1738, metadata !DIExpression()), !dbg !2440
  %tobool.not.i273.i = icmp ult i32 %add26.i, 16384, !dbg !2442
  br i1 %tobool.not.i273.i, label %x264_clip_uint8.exit278.i, label %cond.true.i275.i, !dbg !2443

cond.true.i275.i:                                 ; preds = %x264_clip_uint8.exit272.i
  %11 = icmp sgt i32 %add25.i, 31, !dbg !2444
  %shr.i274.i = sext i1 %11 to i32, !dbg !2444
  br label %x264_clip_uint8.exit278.i, !dbg !2443

x264_clip_uint8.exit278.i:                        ; preds = %cond.true.i275.i, %x264_clip_uint8.exit272.i
  %cond.i276.i = phi i32 [ %shr.i274.i, %cond.true.i275.i ], [ %shr27.i, %x264_clip_uint8.exit272.i ], !dbg !2443
  %conv.i277.i = trunc i32 %cond.i276.i to i8, !dbg !2443
  %arrayidx29.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 2, !dbg !2439
  store i8 %conv.i277.i, ptr %arrayidx29.i, align 1, !dbg !2439, !tbaa !1474
  %arrayidx30.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 3, !dbg !2445
  %12 = load i8, ptr %arrayidx30.i, align 1, !dbg !2445, !tbaa !1474
  %conv31.i = zext i8 %12 to i32, !dbg !2445
  %mul32.i = mul nsw i32 %conv31.i, %weight, !dbg !2445
  %arrayidx33.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 3, !dbg !2445
  %13 = load i8, ptr %arrayidx33.i, align 1, !dbg !2445, !tbaa !1474
  %conv34.i = zext i8 %13 to i32, !dbg !2445
  %mul35.i = mul nsw i32 %sub.i, %conv34.i, !dbg !2445
  %add36.i = add nsw i32 %mul35.i, %mul32.i, !dbg !2445
  %add37.i = add nsw i32 %add36.i, 32, !dbg !2445
  %shr38.i = ashr i32 %add37.i, 6, !dbg !2445
  call void @llvm.dbg.value(metadata i32 %shr38.i, metadata !1738, metadata !DIExpression()), !dbg !2446
  %tobool.not.i279.i = icmp ult i32 %add37.i, 16384, !dbg !2448
  br i1 %tobool.not.i279.i, label %x264_clip_uint8.exit284.i, label %cond.true.i281.i, !dbg !2449

cond.true.i281.i:                                 ; preds = %x264_clip_uint8.exit278.i
  %14 = icmp sgt i32 %add36.i, 31, !dbg !2450
  %shr.i280.i = sext i1 %14 to i32, !dbg !2450
  br label %x264_clip_uint8.exit284.i, !dbg !2449

x264_clip_uint8.exit284.i:                        ; preds = %cond.true.i281.i, %x264_clip_uint8.exit278.i
  %cond.i282.i = phi i32 [ %shr.i280.i, %cond.true.i281.i ], [ %shr38.i, %x264_clip_uint8.exit278.i ], !dbg !2449
  %conv.i283.i = trunc i32 %cond.i282.i to i8, !dbg !2449
  %arrayidx40.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 3, !dbg !2445
  store i8 %conv.i283.i, ptr %arrayidx40.i, align 1, !dbg !2445, !tbaa !1474
  %inc.i = add nuw nsw i32 %y.0364.i, 1, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2345, metadata !DIExpression()), !dbg !2426
  %add.ptr.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 %idx.ext.i8, !dbg !2452
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2330, metadata !DIExpression()), !dbg !2423
  %add.ptr182.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 %idx.ext181.i, !dbg !2453
  call void @llvm.dbg.value(metadata ptr %add.ptr182.i, metadata !2336, metadata !DIExpression()), !dbg !2423
  %add.ptr184.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 %idx.ext183.i, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %add.ptr184.i, metadata !2338, metadata !DIExpression()), !dbg !2423
  %exitcond.not.i9 = icmp eq i32 %inc.i, 4, !dbg !2455
  br i1 %exitcond.not.i9, label %if.end, label %for.body.i, !dbg !2456, !llvm.loop !2457

if.end:                                           ; preds = %x264_clip_uint8.exit284.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  ret void, !dbg !2397
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_4x2(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2459 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2461, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2462, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2463, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2464, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2465, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2467, metadata !DIExpression()), !dbg !2468
  %cmp = icmp eq i32 %weight, 32, !dbg !2469
  br i1 %cmp, label %if.then, label %if.else, !dbg !2471

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 4, metadata !2106, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 2, metadata !2107, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2474
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2475

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2476
  br label %for.body4.us.i, !dbg !2477

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2476
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2478
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2478, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2478
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2479
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2479, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2479
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2480
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2481
  %2 = lshr i16 %add8.us.i, 1, !dbg !2482
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2483
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2484
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2485, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2486
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2476
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !2487
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2477, !llvm.loop !2488

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2490
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2472
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2472
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2472
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2493
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2474
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 2, !dbg !2494
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2475, !llvm.loop !2495

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2330, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2335, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2336, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2337, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2338, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2339, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 4, metadata !2340, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 2, metadata !2341, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2342, metadata !DIExpression()), !dbg !2497
  %sub.i = sub nsw i32 64, %weight, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2343, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2500
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %x264_clip_uint8.exit284.i, %if.else
  %y.0364.i = phi i32 [ %inc.i, %x264_clip_uint8.exit284.i ], [ 0, %if.else ]
  %dst.addr.0362.i = phi ptr [ %add.ptr.i, %x264_clip_uint8.exit284.i ], [ %pix1, %if.else ]
  %src1.addr.0360.i = phi ptr [ %add.ptr182.i, %x264_clip_uint8.exit284.i ], [ %pix2, %if.else ]
  %src2.addr.0358.i = phi ptr [ %add.ptr184.i, %x264_clip_uint8.exit284.i ], [ %pix3, %if.else ]
  call void @llvm.dbg.value(metadata i32 %y.0364.i, metadata !2345, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.i, metadata !2330, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.i, metadata !2336, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.i, metadata !2338, metadata !DIExpression()), !dbg !2497
  %3 = load i8, ptr %src1.addr.0360.i, align 1, !dbg !2501, !tbaa !1474
  %conv.i = zext i8 %3 to i32, !dbg !2501
  %mul.i = mul nsw i32 %conv.i, %weight, !dbg !2501
  %4 = load i8, ptr %src2.addr.0358.i, align 1, !dbg !2501, !tbaa !1474
  %conv2.i = zext i8 %4 to i32, !dbg !2501
  %mul3.i = mul nsw i32 %sub.i, %conv2.i, !dbg !2501
  %add.i = add nsw i32 %mul3.i, %mul.i, !dbg !2501
  %add4.i = add nsw i32 %add.i, 32, !dbg !2501
  %shr.i = ashr i32 %add4.i, 6, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !1738, metadata !DIExpression()), !dbg !2502
  %tobool.not.i.i = icmp ult i32 %add4.i, 16384, !dbg !2504
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !2505

cond.true.i.i:                                    ; preds = %for.body.i
  %5 = icmp sgt i32 %add.i, 31, !dbg !2506
  %shr.i.i = sext i1 %5 to i32, !dbg !2506
  br label %x264_clip_uint8.exit.i, !dbg !2505

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %for.body.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %shr.i, %for.body.i ], !dbg !2505
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !2505
  store i8 %conv.i.i, ptr %dst.addr.0362.i, align 1, !dbg !2501, !tbaa !1474
  %arrayidx6.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 1, !dbg !2507
  %6 = load i8, ptr %arrayidx6.i, align 1, !dbg !2507, !tbaa !1474
  %conv7.i = zext i8 %6 to i32, !dbg !2507
  %mul8.i = mul nsw i32 %conv7.i, %weight, !dbg !2507
  %arrayidx9.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 1, !dbg !2507
  %7 = load i8, ptr %arrayidx9.i, align 1, !dbg !2507, !tbaa !1474
  %conv10.i = zext i8 %7 to i32, !dbg !2507
  %mul11.i = mul nsw i32 %sub.i, %conv10.i, !dbg !2507
  %add12.i = add nsw i32 %mul11.i, %mul8.i, !dbg !2507
  %add13.i = add nsw i32 %add12.i, 32, !dbg !2507
  %shr14.i = ashr i32 %add13.i, 6, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %shr14.i, metadata !1738, metadata !DIExpression()), !dbg !2508
  %tobool.not.i267.i = icmp ult i32 %add13.i, 16384, !dbg !2510
  br i1 %tobool.not.i267.i, label %x264_clip_uint8.exit272.i, label %cond.true.i269.i, !dbg !2511

cond.true.i269.i:                                 ; preds = %x264_clip_uint8.exit.i
  %8 = icmp sgt i32 %add12.i, 31, !dbg !2512
  %shr.i268.i = sext i1 %8 to i32, !dbg !2512
  br label %x264_clip_uint8.exit272.i, !dbg !2511

x264_clip_uint8.exit272.i:                        ; preds = %cond.true.i269.i, %x264_clip_uint8.exit.i
  %cond.i270.i = phi i32 [ %shr.i268.i, %cond.true.i269.i ], [ %shr14.i, %x264_clip_uint8.exit.i ], !dbg !2511
  %conv.i271.i = trunc i32 %cond.i270.i to i8, !dbg !2511
  %arrayidx16.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 1, !dbg !2507
  store i8 %conv.i271.i, ptr %arrayidx16.i, align 1, !dbg !2507, !tbaa !1474
  %arrayidx19.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 2, !dbg !2513
  %9 = load i8, ptr %arrayidx19.i, align 1, !dbg !2513, !tbaa !1474
  %conv20.i = zext i8 %9 to i32, !dbg !2513
  %mul21.i = mul nsw i32 %conv20.i, %weight, !dbg !2513
  %arrayidx22.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 2, !dbg !2513
  %10 = load i8, ptr %arrayidx22.i, align 1, !dbg !2513, !tbaa !1474
  %conv23.i = zext i8 %10 to i32, !dbg !2513
  %mul24.i = mul nsw i32 %sub.i, %conv23.i, !dbg !2513
  %add25.i = add nsw i32 %mul24.i, %mul21.i, !dbg !2513
  %add26.i = add nsw i32 %add25.i, 32, !dbg !2513
  %shr27.i = ashr i32 %add26.i, 6, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %shr27.i, metadata !1738, metadata !DIExpression()), !dbg !2514
  %tobool.not.i273.i = icmp ult i32 %add26.i, 16384, !dbg !2516
  br i1 %tobool.not.i273.i, label %x264_clip_uint8.exit278.i, label %cond.true.i275.i, !dbg !2517

cond.true.i275.i:                                 ; preds = %x264_clip_uint8.exit272.i
  %11 = icmp sgt i32 %add25.i, 31, !dbg !2518
  %shr.i274.i = sext i1 %11 to i32, !dbg !2518
  br label %x264_clip_uint8.exit278.i, !dbg !2517

x264_clip_uint8.exit278.i:                        ; preds = %cond.true.i275.i, %x264_clip_uint8.exit272.i
  %cond.i276.i = phi i32 [ %shr.i274.i, %cond.true.i275.i ], [ %shr27.i, %x264_clip_uint8.exit272.i ], !dbg !2517
  %conv.i277.i = trunc i32 %cond.i276.i to i8, !dbg !2517
  %arrayidx29.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 2, !dbg !2513
  store i8 %conv.i277.i, ptr %arrayidx29.i, align 1, !dbg !2513, !tbaa !1474
  %arrayidx30.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 3, !dbg !2519
  %12 = load i8, ptr %arrayidx30.i, align 1, !dbg !2519, !tbaa !1474
  %conv31.i = zext i8 %12 to i32, !dbg !2519
  %mul32.i = mul nsw i32 %conv31.i, %weight, !dbg !2519
  %arrayidx33.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 3, !dbg !2519
  %13 = load i8, ptr %arrayidx33.i, align 1, !dbg !2519, !tbaa !1474
  %conv34.i = zext i8 %13 to i32, !dbg !2519
  %mul35.i = mul nsw i32 %sub.i, %conv34.i, !dbg !2519
  %add36.i = add nsw i32 %mul35.i, %mul32.i, !dbg !2519
  %add37.i = add nsw i32 %add36.i, 32, !dbg !2519
  %shr38.i = ashr i32 %add37.i, 6, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %shr38.i, metadata !1738, metadata !DIExpression()), !dbg !2520
  %tobool.not.i279.i = icmp ult i32 %add37.i, 16384, !dbg !2522
  br i1 %tobool.not.i279.i, label %x264_clip_uint8.exit284.i, label %cond.true.i281.i, !dbg !2523

cond.true.i281.i:                                 ; preds = %x264_clip_uint8.exit278.i
  %14 = icmp sgt i32 %add36.i, 31, !dbg !2524
  %shr.i280.i = sext i1 %14 to i32, !dbg !2524
  br label %x264_clip_uint8.exit284.i, !dbg !2523

x264_clip_uint8.exit284.i:                        ; preds = %cond.true.i281.i, %x264_clip_uint8.exit278.i
  %cond.i282.i = phi i32 [ %shr.i280.i, %cond.true.i281.i ], [ %shr38.i, %x264_clip_uint8.exit278.i ], !dbg !2523
  %conv.i283.i = trunc i32 %cond.i282.i to i8, !dbg !2523
  %arrayidx40.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 3, !dbg !2519
  store i8 %conv.i283.i, ptr %arrayidx40.i, align 1, !dbg !2519, !tbaa !1474
  %inc.i = add nuw nsw i32 %y.0364.i, 1, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2345, metadata !DIExpression()), !dbg !2500
  %add.ptr.i = getelementptr inbounds i8, ptr %dst.addr.0362.i, i64 %idx.ext.i8, !dbg !2526
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2330, metadata !DIExpression()), !dbg !2497
  %add.ptr182.i = getelementptr inbounds i8, ptr %src1.addr.0360.i, i64 %idx.ext181.i, !dbg !2527
  call void @llvm.dbg.value(metadata ptr %add.ptr182.i, metadata !2336, metadata !DIExpression()), !dbg !2497
  %add.ptr184.i = getelementptr inbounds i8, ptr %src2.addr.0358.i, i64 %idx.ext183.i, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %add.ptr184.i, metadata !2338, metadata !DIExpression()), !dbg !2497
  %exitcond.not.i9 = icmp eq i32 %inc.i, 2, !dbg !2529
  br i1 %exitcond.not.i9, label %if.end, label %for.body.i, !dbg !2530, !llvm.loop !2531

if.end:                                           ; preds = %x264_clip_uint8.exit284.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  ret void, !dbg !2471
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_2x4(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2533 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2535, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2536, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2537, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2538, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2539, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2540, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2541, metadata !DIExpression()), !dbg !2542
  %cmp = icmp eq i32 %weight, 32, !dbg !2543
  br i1 %cmp, label %if.then, label %if.else, !dbg !2545

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 2, metadata !2106, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 4, metadata !2107, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2548
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2549

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2550
  br label %for.body4.us.i, !dbg !2551

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2550
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2552
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2552, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2552
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2553
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2553, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2553
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2554
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2555
  %2 = lshr i16 %add8.us.i, 1, !dbg !2556
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2557
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2558
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2559, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2550
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2, !dbg !2561
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2551, !llvm.loop !2562

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2564
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2546
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2546
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2546
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2548
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 4, !dbg !2568
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2549, !llvm.loop !2569

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2330, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2335, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2336, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2337, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2338, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2339, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 2, metadata !2340, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 4, metadata !2341, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2342, metadata !DIExpression()), !dbg !2571
  %sub.i = sub nsw i32 64, %weight, !dbg !2573
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2343, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2574
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %x264_clip_uint8.exit272.us.i, %if.else
  %y.0364.us.i = phi i32 [ %inc.us.i, %x264_clip_uint8.exit272.us.i ], [ 0, %if.else ]
  %dst.addr.0362.us.i = phi ptr [ %add.ptr.us.i13, %x264_clip_uint8.exit272.us.i ], [ %pix1, %if.else ]
  %src1.addr.0360.us.i = phi ptr [ %add.ptr182.us.i, %x264_clip_uint8.exit272.us.i ], [ %pix2, %if.else ]
  %src2.addr.0358.us.i = phi ptr [ %add.ptr184.us.i, %x264_clip_uint8.exit272.us.i ], [ %pix3, %if.else ]
  call void @llvm.dbg.value(metadata i32 %y.0364.us.i, metadata !2345, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.us.i, metadata !2330, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.us.i, metadata !2336, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.us.i, metadata !2338, metadata !DIExpression()), !dbg !2571
  %3 = load i8, ptr %src1.addr.0360.us.i, align 1, !dbg !2575, !tbaa !1474
  %conv.us.i9 = zext i8 %3 to i32, !dbg !2575
  %mul.us.i = mul nsw i32 %conv.us.i9, %weight, !dbg !2575
  %4 = load i8, ptr %src2.addr.0358.us.i, align 1, !dbg !2575, !tbaa !1474
  %conv2.us.i = zext i8 %4 to i32, !dbg !2575
  %mul3.us.i = mul nsw i32 %sub.i, %conv2.us.i, !dbg !2575
  %add.us.i10 = add nsw i32 %mul3.us.i, %mul.us.i, !dbg !2575
  %add4.us.i = add nsw i32 %add.us.i10, 32, !dbg !2575
  %shr.us.i = ashr i32 %add4.us.i, 6, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %shr.us.i, metadata !1738, metadata !DIExpression()), !dbg !2576
  %tobool.not.i.us.i = icmp ult i32 %add4.us.i, 16384, !dbg !2578
  br i1 %tobool.not.i.us.i, label %x264_clip_uint8.exit.us.i, label %cond.true.i.us.i, !dbg !2579

cond.true.i.us.i:                                 ; preds = %for.body.us.i
  %5 = icmp sgt i32 %add.us.i10, 31, !dbg !2580
  %shr.i.us.i = sext i1 %5 to i32, !dbg !2580
  br label %x264_clip_uint8.exit.us.i, !dbg !2579

x264_clip_uint8.exit.us.i:                        ; preds = %cond.true.i.us.i, %for.body.us.i
  %cond.i.us.i = phi i32 [ %shr.i.us.i, %cond.true.i.us.i ], [ %shr.us.i, %for.body.us.i ], !dbg !2579
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8, !dbg !2579
  store i8 %conv.i.us.i, ptr %dst.addr.0362.us.i, align 1, !dbg !2575, !tbaa !1474
  %arrayidx6.us.i11 = getelementptr inbounds i8, ptr %src1.addr.0360.us.i, i64 1, !dbg !2581
  %6 = load i8, ptr %arrayidx6.us.i11, align 1, !dbg !2581, !tbaa !1474
  %conv7.us.i12 = zext i8 %6 to i32, !dbg !2581
  %mul8.us.i = mul nsw i32 %conv7.us.i12, %weight, !dbg !2581
  %arrayidx9.us.i = getelementptr inbounds i8, ptr %src2.addr.0358.us.i, i64 1, !dbg !2581
  %7 = load i8, ptr %arrayidx9.us.i, align 1, !dbg !2581, !tbaa !1474
  %conv10.us.i = zext i8 %7 to i32, !dbg !2581
  %mul11.us.i = mul nsw i32 %sub.i, %conv10.us.i, !dbg !2581
  %add12.us.i = add nsw i32 %mul11.us.i, %mul8.us.i, !dbg !2581
  %add13.us.i = add nsw i32 %add12.us.i, 32, !dbg !2581
  %shr14.us.i = ashr i32 %add13.us.i, 6, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %shr14.us.i, metadata !1738, metadata !DIExpression()), !dbg !2582
  %tobool.not.i267.us.i = icmp ult i32 %add13.us.i, 16384, !dbg !2584
  br i1 %tobool.not.i267.us.i, label %x264_clip_uint8.exit272.us.i, label %cond.true.i269.us.i, !dbg !2585

cond.true.i269.us.i:                              ; preds = %x264_clip_uint8.exit.us.i
  %8 = icmp sgt i32 %add12.us.i, 31, !dbg !2586
  %shr.i268.us.i = sext i1 %8 to i32, !dbg !2586
  br label %x264_clip_uint8.exit272.us.i, !dbg !2585

x264_clip_uint8.exit272.us.i:                     ; preds = %cond.true.i269.us.i, %x264_clip_uint8.exit.us.i
  %cond.i270.us.i = phi i32 [ %shr.i268.us.i, %cond.true.i269.us.i ], [ %shr14.us.i, %x264_clip_uint8.exit.us.i ], !dbg !2585
  %conv.i271.us.i = trunc i32 %cond.i270.us.i to i8, !dbg !2585
  %arrayidx16.us.i = getelementptr inbounds i8, ptr %dst.addr.0362.us.i, i64 1, !dbg !2581
  store i8 %conv.i271.us.i, ptr %arrayidx16.us.i, align 1, !dbg !2581, !tbaa !1474
  %inc.us.i = add nuw nsw i32 %y.0364.us.i, 1, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %inc.us.i, metadata !2345, metadata !DIExpression()), !dbg !2574
  %add.ptr.us.i13 = getelementptr inbounds i8, ptr %dst.addr.0362.us.i, i64 %idx.ext.i8, !dbg !2588
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i13, metadata !2330, metadata !DIExpression()), !dbg !2571
  %add.ptr182.us.i = getelementptr inbounds i8, ptr %src1.addr.0360.us.i, i64 %idx.ext181.i, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %add.ptr182.us.i, metadata !2336, metadata !DIExpression()), !dbg !2571
  %add.ptr184.us.i = getelementptr inbounds i8, ptr %src2.addr.0358.us.i, i64 %idx.ext183.i, !dbg !2590
  call void @llvm.dbg.value(metadata ptr %add.ptr184.us.i, metadata !2338, metadata !DIExpression()), !dbg !2571
  %exitcond366.not.i = icmp eq i32 %inc.us.i, 4, !dbg !2591
  br i1 %exitcond366.not.i, label %if.end, label %for.body.us.i, !dbg !2592, !llvm.loop !2593

if.end:                                           ; preds = %x264_clip_uint8.exit272.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  ret void, !dbg !2545
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @pixel_avg_2x2(ptr nocapture noundef writeonly %pix1, i32 noundef %i_stride_pix1, ptr nocapture noundef readonly %pix2, i32 noundef %i_stride_pix2, ptr nocapture noundef readonly %pix3, i32 noundef %i_stride_pix3, i32 noundef %weight) #6 !dbg !2595 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2597, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2598, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2599, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2602, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2603, metadata !DIExpression()), !dbg !2604
  %cmp = icmp eq i32 %weight, 32, !dbg !2605
  br i1 %cmp, label %if.then, label %if.else, !dbg !2607

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2098, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2101, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2102, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2103, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2104, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2105, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 2, metadata !2106, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 2, metadata !2107, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2108, metadata !DIExpression()), !dbg !2610
  %idx.ext.i = sext i32 %i_stride_pix2 to i64
  %idx.ext12.i = sext i32 %i_stride_pix3 to i64
  %idx.ext14.i = sext i32 %i_stride_pix1 to i64
  br label %for.cond1.preheader.us.i, !dbg !2611

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %if.then
  %y.033.us.i = phi i32 [ %inc17.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %if.then ]
  %dst.addr.032.us.i = phi ptr [ %add.ptr15.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix1, %if.then ]
  %src1.addr.031.us.i = phi ptr [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix2, %if.then ]
  %src2.addr.030.us.i = phi ptr [ %add.ptr13.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ %pix3, %if.then ]
  call void @llvm.dbg.value(metadata i32 %y.033.us.i, metadata !2108, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %dst.addr.032.us.i, metadata !2098, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %src1.addr.031.us.i, metadata !2102, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata ptr %src2.addr.030.us.i, metadata !2104, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()), !dbg !2612
  br label %for.body4.us.i, !dbg !2613

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2110, metadata !DIExpression()), !dbg !2612
  %arrayidx.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %indvars.iv.i, !dbg !2614
  %0 = load i8, ptr %arrayidx.us.i, align 1, !dbg !2614, !tbaa !1474
  %conv.us.i = zext i8 %0 to i16, !dbg !2614
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %indvars.iv.i, !dbg !2615
  %1 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !2615, !tbaa !1474
  %conv7.us.i = zext i8 %1 to i16, !dbg !2615
  %add.us.i = add nuw nsw i16 %conv.us.i, 1, !dbg !2616
  %add8.us.i = add nuw nsw i16 %add.us.i, %conv7.us.i, !dbg !2617
  %2 = lshr i16 %add8.us.i, 1, !dbg !2618
  %conv9.us.i = trunc i16 %2 to i8, !dbg !2619
  %arrayidx11.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %indvars.iv.i, !dbg !2620
  store i8 %conv9.us.i, ptr %arrayidx11.us.i, align 1, !dbg !2621, !tbaa !1474
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2110, metadata !DIExpression()), !dbg !2612
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2, !dbg !2623
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !2613, !llvm.loop !2624

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %src1.addr.031.us.i, i64 %idx.ext.i, !dbg !2626
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !2102, metadata !DIExpression()), !dbg !2608
  %add.ptr13.us.i = getelementptr inbounds i8, ptr %src2.addr.030.us.i, i64 %idx.ext12.i, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us.i, metadata !2104, metadata !DIExpression()), !dbg !2608
  %add.ptr15.us.i = getelementptr inbounds i8, ptr %dst.addr.032.us.i, i64 %idx.ext14.i, !dbg !2628
  call void @llvm.dbg.value(metadata ptr %add.ptr15.us.i, metadata !2098, metadata !DIExpression()), !dbg !2608
  %inc17.us.i = add nuw nsw i32 %y.033.us.i, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %inc17.us.i, metadata !2108, metadata !DIExpression()), !dbg !2610
  %exitcond36.not.i = icmp eq i32 %inc17.us.i, 2, !dbg !2630
  br i1 %exitcond36.not.i, label %if.end, label %for.cond1.preheader.us.i, !dbg !2611, !llvm.loop !2631

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !2330, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %i_stride_pix1, metadata !2335, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !2336, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %i_stride_pix2, metadata !2337, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %pix3, metadata !2338, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %i_stride_pix3, metadata !2339, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 2, metadata !2340, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 2, metadata !2341, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 %weight, metadata !2342, metadata !DIExpression()), !dbg !2633
  %sub.i = sub nsw i32 64, %weight, !dbg !2635
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2343, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !2636
  %idx.ext.i8 = sext i32 %i_stride_pix1 to i64
  %idx.ext181.i = sext i32 %i_stride_pix2 to i64
  %idx.ext183.i = sext i32 %i_stride_pix3 to i64
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %x264_clip_uint8.exit272.us.i, %if.else
  %y.0364.us.i = phi i32 [ %inc.us.i, %x264_clip_uint8.exit272.us.i ], [ 0, %if.else ]
  %dst.addr.0362.us.i = phi ptr [ %add.ptr.us.i13, %x264_clip_uint8.exit272.us.i ], [ %pix1, %if.else ]
  %src1.addr.0360.us.i = phi ptr [ %add.ptr182.us.i, %x264_clip_uint8.exit272.us.i ], [ %pix2, %if.else ]
  %src2.addr.0358.us.i = phi ptr [ %add.ptr184.us.i, %x264_clip_uint8.exit272.us.i ], [ %pix3, %if.else ]
  call void @llvm.dbg.value(metadata i32 %y.0364.us.i, metadata !2345, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.us.i, metadata !2330, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.us.i, metadata !2336, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.us.i, metadata !2338, metadata !DIExpression()), !dbg !2633
  %3 = load i8, ptr %src1.addr.0360.us.i, align 1, !dbg !2637, !tbaa !1474
  %conv.us.i9 = zext i8 %3 to i32, !dbg !2637
  %mul.us.i = mul nsw i32 %conv.us.i9, %weight, !dbg !2637
  %4 = load i8, ptr %src2.addr.0358.us.i, align 1, !dbg !2637, !tbaa !1474
  %conv2.us.i = zext i8 %4 to i32, !dbg !2637
  %mul3.us.i = mul nsw i32 %sub.i, %conv2.us.i, !dbg !2637
  %add.us.i10 = add nsw i32 %mul3.us.i, %mul.us.i, !dbg !2637
  %add4.us.i = add nsw i32 %add.us.i10, 32, !dbg !2637
  %shr.us.i = ashr i32 %add4.us.i, 6, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %shr.us.i, metadata !1738, metadata !DIExpression()), !dbg !2638
  %tobool.not.i.us.i = icmp ult i32 %add4.us.i, 16384, !dbg !2640
  br i1 %tobool.not.i.us.i, label %x264_clip_uint8.exit.us.i, label %cond.true.i.us.i, !dbg !2641

cond.true.i.us.i:                                 ; preds = %for.body.us.i
  %5 = icmp sgt i32 %add.us.i10, 31, !dbg !2642
  %shr.i.us.i = sext i1 %5 to i32, !dbg !2642
  br label %x264_clip_uint8.exit.us.i, !dbg !2641

x264_clip_uint8.exit.us.i:                        ; preds = %cond.true.i.us.i, %for.body.us.i
  %cond.i.us.i = phi i32 [ %shr.i.us.i, %cond.true.i.us.i ], [ %shr.us.i, %for.body.us.i ], !dbg !2641
  %conv.i.us.i = trunc i32 %cond.i.us.i to i8, !dbg !2641
  store i8 %conv.i.us.i, ptr %dst.addr.0362.us.i, align 1, !dbg !2637, !tbaa !1474
  %arrayidx6.us.i11 = getelementptr inbounds i8, ptr %src1.addr.0360.us.i, i64 1, !dbg !2643
  %6 = load i8, ptr %arrayidx6.us.i11, align 1, !dbg !2643, !tbaa !1474
  %conv7.us.i12 = zext i8 %6 to i32, !dbg !2643
  %mul8.us.i = mul nsw i32 %conv7.us.i12, %weight, !dbg !2643
  %arrayidx9.us.i = getelementptr inbounds i8, ptr %src2.addr.0358.us.i, i64 1, !dbg !2643
  %7 = load i8, ptr %arrayidx9.us.i, align 1, !dbg !2643, !tbaa !1474
  %conv10.us.i = zext i8 %7 to i32, !dbg !2643
  %mul11.us.i = mul nsw i32 %sub.i, %conv10.us.i, !dbg !2643
  %add12.us.i = add nsw i32 %mul11.us.i, %mul8.us.i, !dbg !2643
  %add13.us.i = add nsw i32 %add12.us.i, 32, !dbg !2643
  %shr14.us.i = ashr i32 %add13.us.i, 6, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %shr14.us.i, metadata !1738, metadata !DIExpression()), !dbg !2644
  %tobool.not.i267.us.i = icmp ult i32 %add13.us.i, 16384, !dbg !2646
  br i1 %tobool.not.i267.us.i, label %x264_clip_uint8.exit272.us.i, label %cond.true.i269.us.i, !dbg !2647

cond.true.i269.us.i:                              ; preds = %x264_clip_uint8.exit.us.i
  %8 = icmp sgt i32 %add12.us.i, 31, !dbg !2648
  %shr.i268.us.i = sext i1 %8 to i32, !dbg !2648
  br label %x264_clip_uint8.exit272.us.i, !dbg !2647

x264_clip_uint8.exit272.us.i:                     ; preds = %cond.true.i269.us.i, %x264_clip_uint8.exit.us.i
  %cond.i270.us.i = phi i32 [ %shr.i268.us.i, %cond.true.i269.us.i ], [ %shr14.us.i, %x264_clip_uint8.exit.us.i ], !dbg !2647
  %conv.i271.us.i = trunc i32 %cond.i270.us.i to i8, !dbg !2647
  %arrayidx16.us.i = getelementptr inbounds i8, ptr %dst.addr.0362.us.i, i64 1, !dbg !2643
  store i8 %conv.i271.us.i, ptr %arrayidx16.us.i, align 1, !dbg !2643, !tbaa !1474
  %inc.us.i = add nuw nsw i32 %y.0364.us.i, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %inc.us.i, metadata !2345, metadata !DIExpression()), !dbg !2636
  %add.ptr.us.i13 = getelementptr inbounds i8, ptr %dst.addr.0362.us.i, i64 %idx.ext.i8, !dbg !2650
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i13, metadata !2330, metadata !DIExpression()), !dbg !2633
  %add.ptr182.us.i = getelementptr inbounds i8, ptr %src1.addr.0360.us.i, i64 %idx.ext181.i, !dbg !2651
  call void @llvm.dbg.value(metadata ptr %add.ptr182.us.i, metadata !2336, metadata !DIExpression()), !dbg !2633
  %add.ptr184.us.i = getelementptr inbounds i8, ptr %src2.addr.0358.us.i, i64 %idx.ext183.i, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %add.ptr184.us.i, metadata !2338, metadata !DIExpression()), !dbg !2633
  %exitcond366.not.i = icmp eq i32 %inc.us.i, 2, !dbg !2653
  br i1 %exitcond366.not.i, label %if.end, label %for.body.us.i, !dbg !2654, !llvm.loop !2655

if.end:                                           ; preds = %x264_clip_uint8.exit272.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  ret void, !dbg !2607
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @x264_weight_cache(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %w) #7 !dbg !2657 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2659, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %w, metadata !2660, metadata !DIExpression()), !dbg !2661
  %weight = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 17, !dbg !2662
  %0 = load ptr, ptr %weight, align 8, !dbg !2662, !tbaa !2663
  %weightfn = getelementptr inbounds %struct.x264_weight_t, ptr %w, i64 0, i32 5, !dbg !2664
  store ptr %0, ptr %weightfn, align 16, !dbg !2665, !tbaa !1696
  ret void, !dbg !2666
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @mc_copy_w16(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 !dbg !2667 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2669, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !2670, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %src, metadata !2671, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !2672, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %src, metadata !1827, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !1830, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1831, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !1832, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata i32 16, metadata !1833, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1834, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()) #14, !dbg !2677
  %cmp6.i = icmp sgt i32 %i_height, 0, !dbg !2678
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit, !dbg !2679

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  br label %for.body.i, !dbg !2679

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %y.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i32 %y.09.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %src.addr.08.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2675
  call void @llvm.dbg.value(metadata ptr %dst.addr.07.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2675
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %dst.addr.07.i, ptr noundef nonnull align 1 dereferenceable(16) %src.addr.08.i, i64 16, i1 false) #14, !dbg !2680
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i, !dbg !2681
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2675
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2675
  %inc.i = add nuw nsw i32 %y.09.i, 1, !dbg !2683
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2677
  %exitcond.not.i = icmp eq i32 %inc.i, %i_height, !dbg !2678
  br i1 %exitcond.not.i, label %mc_copy.exit, label %for.body.i, !dbg !2679, !llvm.loop !2684

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void, !dbg !2686
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @mc_copy_w8(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 !dbg !2687 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2689, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !2690, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %src, metadata !2691, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !2692, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %src, metadata !1827, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !1830, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1831, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !1832, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata i32 8, metadata !1833, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1834, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()) #14, !dbg !2697
  %cmp6.i = icmp sgt i32 %i_height, 0, !dbg !2698
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit, !dbg !2699

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  br label %for.body.i, !dbg !2699

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %y.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i32 %y.09.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %src.addr.08.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %dst.addr.07.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2695
  %0 = load i64, ptr %src.addr.08.i, align 1, !dbg !2700
  store i64 %0, ptr %dst.addr.07.i, align 1, !dbg !2700
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i, !dbg !2701
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2695
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i, !dbg !2702
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2695
  %inc.i = add nuw nsw i32 %y.09.i, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2697
  %exitcond.not.i = icmp eq i32 %inc.i, %i_height, !dbg !2698
  br i1 %exitcond.not.i, label %mc_copy.exit, label %for.body.i, !dbg !2699, !llvm.loop !2704

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void, !dbg !2706
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @mc_copy_w4(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src, i32 noundef %i_src, i32 noundef %i_height) #0 !dbg !2707 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2709, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !2710, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %src, metadata !2711, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %src, metadata !1827, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %i_src, metadata !1830, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1831, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !1832, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata i32 4, metadata !1833, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !1834, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata i32 0, metadata !1835, metadata !DIExpression()) #14, !dbg !2717
  %cmp6.i = icmp sgt i32 %i_height, 0, !dbg !2718
  br i1 %cmp6.i, label %for.body.lr.ph.i, label %mc_copy.exit, !dbg !2719

for.body.lr.ph.i:                                 ; preds = %entry
  %idx.ext.i = sext i32 %i_src to i64
  %idx.ext1.i = sext i32 %i_dst to i64
  br label %for.body.i, !dbg !2719

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %y.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %src.addr.08.i = phi ptr [ %src, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %dst.addr.07.i = phi ptr [ %dst, %for.body.lr.ph.i ], [ %add.ptr2.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i32 %y.09.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2717
  call void @llvm.dbg.value(metadata ptr %src.addr.08.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %dst.addr.07.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2715
  %0 = load i32, ptr %src.addr.08.i, align 1, !dbg !2720
  store i32 %0, ptr %dst.addr.07.i, align 1, !dbg !2720
  %add.ptr.i = getelementptr inbounds i8, ptr %src.addr.08.i, i64 %idx.ext.i, !dbg !2721
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1827, metadata !DIExpression()) #14, !dbg !2715
  %add.ptr2.i = getelementptr inbounds i8, ptr %dst.addr.07.i, i64 %idx.ext1.i, !dbg !2722
  call void @llvm.dbg.value(metadata ptr %add.ptr2.i, metadata !1831, metadata !DIExpression()) #14, !dbg !2715
  %inc.i = add nuw nsw i32 %y.09.i, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1835, metadata !DIExpression()) #14, !dbg !2717
  %exitcond.not.i = icmp eq i32 %inc.i, %i_height, !dbg !2718
  br i1 %exitcond.not.i, label %mc_copy.exit, label %for.body.i, !dbg !2719, !llvm.loop !2724

mc_copy.exit:                                     ; preds = %for.body.i, %entry
  ret void, !dbg !2726
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @hpel_filter(ptr nocapture noundef writeonly %dsth, ptr nocapture noundef writeonly %dstv, ptr nocapture noundef writeonly %dstc, ptr nocapture noundef readonly %src, i32 noundef %stride, i32 noundef %width, i32 noundef %height, ptr nocapture noundef %buf) #6 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata ptr %dsth, metadata !2729, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %dstv, metadata !2730, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %dstc, metadata !2731, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %src, metadata !2732, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2733, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %width, metadata !2734, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %height, metadata !2735, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %buf, metadata !2736, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2737, metadata !DIExpression()), !dbg !2751
  %cmp219 = icmp sgt i32 %height, 0, !dbg !2752
  br i1 %cmp219, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup, !dbg !2753

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp2213 = icmp sgt i32 %width, -5
  %mul = shl nsw i32 %stride, 1
  %mul5 = mul nsw i32 %stride, 3
  %cmp42215 = icmp sgt i32 %width, 0
  %add.ptr = getelementptr inbounds i16, ptr %buf, i64 2
  %idx.ext = sext i32 %stride to i64
  %0 = sext i32 %mul to i64, !dbg !2753
  %1 = sext i32 %mul5 to i64, !dbg !2753
  %2 = add i32 %width, 2, !dbg !2753
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 -2), !dbg !2753
  %3 = add i32 %smax, 1, !dbg !2753
  %wide.trip.count = zext i32 %width to i64
  %wide.trip.count247 = zext i32 %width to i64
  br label %for.cond1.preheader, !dbg !2753

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond.cleanup93
  %dsth.addr.0224 = phi ptr [ %dsth, %for.cond1.preheader.lr.ph ], [ %add.ptr133, %for.cond.cleanup93 ]
  %y.0223 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc141, %for.cond.cleanup93 ]
  %dstv.addr.0222 = phi ptr [ %dstv, %for.cond1.preheader.lr.ph ], [ %add.ptr135, %for.cond.cleanup93 ]
  %dstc.addr.0221 = phi ptr [ %dstc, %for.cond1.preheader.lr.ph ], [ %add.ptr137, %for.cond.cleanup93 ]
  %src.addr.0220 = phi ptr [ %src, %for.cond1.preheader.lr.ph ], [ %add.ptr139, %for.cond.cleanup93 ]
  call void @llvm.dbg.value(metadata ptr %dsth.addr.0224, metadata !2729, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 %y.0223, metadata !2737, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %dstv.addr.0222, metadata !2730, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %dstc.addr.0221, metadata !2731, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata ptr %src.addr.0220, metadata !2732, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 -2, metadata !2739, metadata !DIExpression()), !dbg !2754
  br i1 %cmp2213, label %for.body4, label %for.cond41.preheader, !dbg !2755

for.cond.cleanup:                                 ; preds = %for.cond.cleanup93, %entry
  ret void, !dbg !2756

for.cond41.preheader:                             ; preds = %x264_clip_uint8.exit, %for.cond1.preheader
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2757
  br i1 %cmp42215, label %for.body45, label %for.cond.cleanup93, !dbg !2758

for.body4:                                        ; preds = %for.cond1.preheader, %x264_clip_uint8.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %x264_clip_uint8.exit ], [ -2, %for.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2739, metadata !DIExpression()), !dbg !2754
  %4 = sub nsw i64 %indvars.iv, %0, !dbg !2759
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.0220, i64 %4, !dbg !2759
  %5 = load i8, ptr %arrayidx, align 1, !dbg !2759, !tbaa !1474
  %conv = zext i8 %5 to i32, !dbg !2759
  %6 = add nsw i64 %indvars.iv, %1, !dbg !2759
  %arrayidx8 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %6, !dbg !2759
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !2759, !tbaa !1474
  %conv9 = zext i8 %7 to i32, !dbg !2759
  %add10 = add nuw nsw i32 %conv9, %conv, !dbg !2759
  %8 = sub nsw i64 %indvars.iv, %idx.ext, !dbg !2759
  %arrayidx13 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %8, !dbg !2759
  %9 = load i8, ptr %arrayidx13, align 1, !dbg !2759, !tbaa !1474
  %conv14 = zext i8 %9 to i32, !dbg !2759
  %10 = add nsw i64 %indvars.iv, %0, !dbg !2759
  %arrayidx18 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %10, !dbg !2759
  %11 = load i8, ptr %arrayidx18, align 1, !dbg !2759, !tbaa !1474
  %conv19 = zext i8 %11 to i32, !dbg !2759
  %add20 = add nuw nsw i32 %conv19, %conv14, !dbg !2759
  %mul21.neg = mul nsw i32 %add20, -5, !dbg !2759
  %sub22 = add nsw i32 %add10, %mul21.neg, !dbg !2759
  %arrayidx24 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %indvars.iv, !dbg !2759
  %12 = load i8, ptr %arrayidx24, align 1, !dbg !2759, !tbaa !1474
  %conv25 = zext i8 %12 to i32, !dbg !2759
  %13 = add nsw i64 %indvars.iv, %idx.ext, !dbg !2759
  %arrayidx28 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %13, !dbg !2759
  %14 = load i8, ptr %arrayidx28, align 1, !dbg !2759, !tbaa !1474
  %conv29 = zext i8 %14 to i32, !dbg !2759
  %add30 = add nuw nsw i32 %conv29, %conv25, !dbg !2759
  %mul31 = mul nuw nsw i32 %add30, 20, !dbg !2759
  %add32 = add nsw i32 %sub22, %mul31, !dbg !2759
  call void @llvm.dbg.value(metadata i32 %add32, metadata !2743, metadata !DIExpression()), !dbg !2760
  %add33 = add nsw i32 %add32, 16, !dbg !2761
  %shr = ashr i32 %add33, 5, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1738, metadata !DIExpression()), !dbg !2763
  %tobool.not.i = icmp ult i32 %add33, 8192, !dbg !2765
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !2766

cond.true.i:                                      ; preds = %for.body4
  %15 = icmp sgt i32 %add32, 15, !dbg !2767
  %shr.i = sext i1 %15 to i32, !dbg !2767
  br label %x264_clip_uint8.exit, !dbg !2766

x264_clip_uint8.exit:                             ; preds = %for.body4, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %shr, %for.body4 ], !dbg !2766
  %conv.i = trunc i32 %cond.i to i8, !dbg !2766
  %arrayidx35 = getelementptr inbounds i8, ptr %dstv.addr.0222, i64 %indvars.iv, !dbg !2768
  store i8 %conv.i, ptr %arrayidx35, align 1, !dbg !2769, !tbaa !1474
  %conv36 = trunc i32 %add32 to i16, !dbg !2770
  %16 = add nsw i64 %indvars.iv, 2, !dbg !2771
  %arrayidx39 = getelementptr inbounds i16, ptr %buf, i64 %16, !dbg !2772
  store i16 %conv36, ptr %arrayidx39, align 2, !dbg !2773, !tbaa !1506
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2739, metadata !DIExpression()), !dbg !2754
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2775
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv, !dbg !2775
  br i1 %exitcond.not, label %for.cond41.preheader, label %for.body4, !dbg !2755, !llvm.loop !2776

for.cond90.preheader:                             ; preds = %x264_clip_uint8.exit206
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()), !dbg !2778
  br i1 %cmp42215, label %for.body94, label %for.cond.cleanup93, !dbg !2779

for.body45:                                       ; preds = %for.cond41.preheader, %x264_clip_uint8.exit206
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %x264_clip_uint8.exit206 ], [ 0, %for.cond41.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv232, metadata !2746, metadata !DIExpression()), !dbg !2757
  %arrayidx48 = getelementptr inbounds i16, ptr %buf, i64 %indvars.iv232, !dbg !2780
  %17 = load i16, ptr %arrayidx48, align 2, !dbg !2780, !tbaa !1506
  %conv49 = sext i16 %17 to i32, !dbg !2780
  %18 = add nuw nsw i64 %indvars.iv232, 3, !dbg !2780
  %arrayidx53 = getelementptr inbounds i16, ptr %add.ptr, i64 %18, !dbg !2780
  %19 = load i16, ptr %arrayidx53, align 2, !dbg !2780, !tbaa !1506
  %conv54 = sext i16 %19 to i32, !dbg !2780
  %add55 = add nsw i32 %conv54, %conv49, !dbg !2780
  %20 = add nsw i64 %indvars.iv232, -1, !dbg !2780
  %arrayidx59 = getelementptr inbounds i16, ptr %add.ptr, i64 %20, !dbg !2780
  %21 = load i16, ptr %arrayidx59, align 2, !dbg !2780, !tbaa !1506
  %conv60 = sext i16 %21 to i32, !dbg !2780
  %22 = add nuw nsw i64 %indvars.iv232, 2, !dbg !2780
  %arrayidx64 = getelementptr inbounds i16, ptr %add.ptr, i64 %22, !dbg !2780
  %23 = load i16, ptr %arrayidx64, align 2, !dbg !2780, !tbaa !1506
  %conv65 = sext i16 %23 to i32, !dbg !2780
  %add66 = add nsw i32 %conv65, %conv60, !dbg !2780
  %mul67.neg = mul nsw i32 %add66, -5, !dbg !2780
  %sub68 = add nsw i32 %add55, %mul67.neg, !dbg !2780
  %arrayidx71 = getelementptr inbounds i16, ptr %add.ptr, i64 %indvars.iv232, !dbg !2780
  %24 = load i16, ptr %arrayidx71, align 2, !dbg !2780, !tbaa !1506
  %conv72 = sext i16 %24 to i32, !dbg !2780
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1, !dbg !2780
  %arrayidx76 = getelementptr inbounds i16, ptr %add.ptr, i64 %indvars.iv.next233, !dbg !2780
  %25 = load i16, ptr %arrayidx76, align 2, !dbg !2780, !tbaa !1506
  %conv77 = sext i16 %25 to i32, !dbg !2780
  %add78 = add nsw i32 %conv77, %conv72, !dbg !2780
  %mul79 = mul nsw i32 %add78, 20, !dbg !2780
  %add80 = add nsw i32 %sub68, %mul79, !dbg !2780
  %add81 = add nsw i32 %add80, 512, !dbg !2782
  %shr82 = ashr i32 %add81, 10, !dbg !2783
  call void @llvm.dbg.value(metadata i32 %shr82, metadata !1738, metadata !DIExpression()), !dbg !2784
  %tobool.not.i201 = icmp ult i32 %add81, 262144, !dbg !2786
  br i1 %tobool.not.i201, label %x264_clip_uint8.exit206, label %cond.true.i203, !dbg !2787

cond.true.i203:                                   ; preds = %for.body45
  %26 = icmp sgt i32 %add80, 511, !dbg !2788
  %shr.i202 = sext i1 %26 to i32, !dbg !2788
  br label %x264_clip_uint8.exit206, !dbg !2787

x264_clip_uint8.exit206:                          ; preds = %for.body45, %cond.true.i203
  %cond.i204 = phi i32 [ %shr.i202, %cond.true.i203 ], [ %shr82, %for.body45 ], !dbg !2787
  %conv.i205 = trunc i32 %cond.i204 to i8, !dbg !2787
  %arrayidx85 = getelementptr inbounds i8, ptr %dstc.addr.0221, i64 %indvars.iv232, !dbg !2789
  store i8 %conv.i205, ptr %arrayidx85, align 1, !dbg !2790, !tbaa !1474
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next233, metadata !2746, metadata !DIExpression()), !dbg !2757
  %exitcond239.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count, !dbg !2791
  br i1 %exitcond239.not, label %for.cond90.preheader, label %for.body45, !dbg !2758, !llvm.loop !2792

for.cond.cleanup93:                               ; preds = %x264_clip_uint8.exit212, %for.cond41.preheader, %for.cond90.preheader
  %add.ptr133 = getelementptr inbounds i8, ptr %dsth.addr.0224, i64 %idx.ext, !dbg !2794
  call void @llvm.dbg.value(metadata ptr %add.ptr133, metadata !2729, metadata !DIExpression()), !dbg !2750
  %add.ptr135 = getelementptr inbounds i8, ptr %dstv.addr.0222, i64 %idx.ext, !dbg !2795
  call void @llvm.dbg.value(metadata ptr %add.ptr135, metadata !2730, metadata !DIExpression()), !dbg !2750
  %add.ptr137 = getelementptr inbounds i8, ptr %dstc.addr.0221, i64 %idx.ext, !dbg !2796
  call void @llvm.dbg.value(metadata ptr %add.ptr137, metadata !2731, metadata !DIExpression()), !dbg !2750
  %add.ptr139 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %idx.ext, !dbg !2797
  call void @llvm.dbg.value(metadata ptr %add.ptr139, metadata !2732, metadata !DIExpression()), !dbg !2750
  %inc141 = add nuw nsw i32 %y.0223, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i32 %inc141, metadata !2737, metadata !DIExpression()), !dbg !2751
  %exitcond249.not = icmp eq i32 %inc141, %height, !dbg !2752
  br i1 %exitcond249.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !2753, !llvm.loop !2799

for.body94:                                       ; preds = %for.cond90.preheader, %x264_clip_uint8.exit212
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %x264_clip_uint8.exit212 ], [ 0, %for.cond90.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv240, metadata !2748, metadata !DIExpression()), !dbg !2778
  %27 = add nsw i64 %indvars.iv240, -2, !dbg !2801
  %arrayidx97 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %27, !dbg !2801
  %28 = load i8, ptr %arrayidx97, align 1, !dbg !2801, !tbaa !1474
  %conv98 = zext i8 %28 to i32, !dbg !2801
  %29 = add nuw nsw i64 %indvars.iv240, 3, !dbg !2801
  %arrayidx101 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %29, !dbg !2801
  %30 = load i8, ptr %arrayidx101, align 1, !dbg !2801, !tbaa !1474
  %conv102 = zext i8 %30 to i32, !dbg !2801
  %add103 = add nuw nsw i32 %conv102, %conv98, !dbg !2801
  %31 = add nsw i64 %indvars.iv240, -1, !dbg !2801
  %arrayidx106 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %31, !dbg !2801
  %32 = load i8, ptr %arrayidx106, align 1, !dbg !2801, !tbaa !1474
  %conv107 = zext i8 %32 to i32, !dbg !2801
  %33 = add nuw nsw i64 %indvars.iv240, 2, !dbg !2801
  %arrayidx110 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %33, !dbg !2801
  %34 = load i8, ptr %arrayidx110, align 1, !dbg !2801, !tbaa !1474
  %conv111 = zext i8 %34 to i32, !dbg !2801
  %add112 = add nuw nsw i32 %conv111, %conv107, !dbg !2801
  %mul113.neg = mul nsw i32 %add112, -5, !dbg !2801
  %sub114 = add nsw i32 %add103, %mul113.neg, !dbg !2801
  %arrayidx116 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %indvars.iv240, !dbg !2801
  %35 = load i8, ptr %arrayidx116, align 1, !dbg !2801, !tbaa !1474
  %conv117 = zext i8 %35 to i32, !dbg !2801
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1, !dbg !2801
  %arrayidx120 = getelementptr inbounds i8, ptr %src.addr.0220, i64 %indvars.iv.next241, !dbg !2801
  %36 = load i8, ptr %arrayidx120, align 1, !dbg !2801, !tbaa !1474
  %conv121 = zext i8 %36 to i32, !dbg !2801
  %add122 = add nuw nsw i32 %conv121, %conv117, !dbg !2801
  %mul123 = mul nuw nsw i32 %add122, 20, !dbg !2801
  %add124 = add nsw i32 %sub114, %mul123, !dbg !2801
  %add125 = add nsw i32 %add124, 16, !dbg !2803
  %shr126 = ashr i32 %add125, 5, !dbg !2804
  call void @llvm.dbg.value(metadata i32 %shr126, metadata !1738, metadata !DIExpression()), !dbg !2805
  %tobool.not.i207 = icmp ult i32 %add125, 8192, !dbg !2807
  br i1 %tobool.not.i207, label %x264_clip_uint8.exit212, label %cond.true.i209, !dbg !2808

cond.true.i209:                                   ; preds = %for.body94
  %37 = icmp sgt i32 %add124, 15, !dbg !2809
  %shr.i208 = sext i1 %37 to i32, !dbg !2809
  br label %x264_clip_uint8.exit212, !dbg !2808

x264_clip_uint8.exit212:                          ; preds = %for.body94, %cond.true.i209
  %cond.i210 = phi i32 [ %shr.i208, %cond.true.i209 ], [ %shr126, %for.body94 ], !dbg !2808
  %conv.i211 = trunc i32 %cond.i210 to i8, !dbg !2808
  %arrayidx129 = getelementptr inbounds i8, ptr %dsth.addr.0224, i64 %indvars.iv240, !dbg !2810
  store i8 %conv.i211, ptr %arrayidx129, align 1, !dbg !2811, !tbaa !1474
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next241, metadata !2748, metadata !DIExpression()), !dbg !2778
  %exitcond248.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count247, !dbg !2812
  br i1 %exitcond248.not, label %for.cond.cleanup93, label %for.body94, !dbg !2779, !llvm.loop !2813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal void @prefetch_fenc_null(ptr nocapture noundef %pix_y, i32 noundef %stride_y, ptr nocapture noundef %pix_uv, i32 noundef %stride_uv, i32 noundef %mb_x) #8 !dbg !2815 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix_y, metadata !2817, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %stride_y, metadata !2818, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %pix_uv, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %stride_uv, metadata !2820, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !2821, metadata !DIExpression()), !dbg !2822
  ret void, !dbg !2823
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal void @prefetch_ref_null(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %parity) #8 !dbg !2824 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2827, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %parity, metadata !2828, metadata !DIExpression()), !dbg !2829
  ret void, !dbg !2830
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @memcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) #9

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable
define internal void @memzero_aligned(ptr nocapture noundef writeonly %dst, i32 noundef %n) #10 !dbg !2831 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i32 %n, metadata !2834, metadata !DIExpression()), !dbg !2835
  %conv = sext i32 %n to i64, !dbg !2836
  tail call void @llvm.memset.p0.i64(ptr align 1 %dst, i8 0, i64 %conv, i1 false), !dbg !2837
  ret void, !dbg !2838
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @frame_init_lowres_core(ptr nocapture noundef readonly %src0, ptr nocapture noundef writeonly %dst0, ptr nocapture noundef writeonly %dsth, ptr nocapture noundef writeonly %dstv, ptr nocapture noundef writeonly %dstc, i32 noundef %src_stride, i32 noundef %dst_stride, i32 noundef %width, i32 noundef %height) #6 !dbg !2839 {
entry:
  call void @llvm.dbg.value(metadata ptr %src0, metadata !2841, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dst0, metadata !2842, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dsth, metadata !2843, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dstv, metadata !2844, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dstc, metadata !2845, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %src_stride, metadata !2846, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %dst_stride, metadata !2847, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %width, metadata !2848, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %height, metadata !2849, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 0, metadata !2850, metadata !DIExpression()), !dbg !2859
  %cmp188 = icmp sgt i32 %height, 0, !dbg !2860
  br i1 %cmp188, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !2861

for.body.lr.ph:                                   ; preds = %entry
  %idx.ext = sext i32 %src_stride to i64
  %cmp4186 = icmp sgt i32 %width, 0
  %mul125 = shl nsw i32 %src_stride, 1
  %idx.ext126 = sext i32 %mul125 to i64
  %idx.ext128 = sext i32 %dst_stride to i64
  br i1 %cmp4186, label %for.body.us.preheader, label %for.cond.cleanup, !dbg !2862

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext i32 %width to i64
  br label %for.body.us, !dbg !2861

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond3.for.cond.cleanup5_crit_edge.us
  %src0.addr.0194.us = phi ptr [ %add.ptr127.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %src0, %for.body.us.preheader ]
  %dst0.addr.0193.us = phi ptr [ %add.ptr129.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dst0, %for.body.us.preheader ]
  %y.0192.us = phi i32 [ %inc137.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ 0, %for.body.us.preheader ]
  %dsth.addr.0191.us = phi ptr [ %add.ptr131.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dsth, %for.body.us.preheader ]
  %dstv.addr.0190.us = phi ptr [ %add.ptr133.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dstv, %for.body.us.preheader ]
  %dstc.addr.0189.us = phi ptr [ %add.ptr135.us, %for.cond3.for.cond.cleanup5_crit_edge.us ], [ %dstc, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata ptr %src0.addr.0194.us, metadata !2841, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dst0.addr.0193.us, metadata !2842, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %y.0192.us, metadata !2850, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %dsth.addr.0191.us, metadata !2843, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dstv.addr.0190.us, metadata !2844, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata ptr %dstc.addr.0189.us, metadata !2845, metadata !DIExpression()), !dbg !2858
  %add.ptr.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %idx.ext, !dbg !2863
  call void @llvm.dbg.value(metadata ptr %add.ptr.us, metadata !2852, metadata !DIExpression()), !dbg !2864
  %add.ptr2.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idx.ext, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %add.ptr2.us, metadata !2855, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i32 0, metadata !2856, metadata !DIExpression()), !dbg !2866
  br label %for.body6.us, !dbg !2862

for.body6.us:                                     ; preds = %for.body.us, %for.body6.us
  %indvars.iv = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next, %for.body6.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2856, metadata !DIExpression()), !dbg !2866
  %0 = shl nuw nsw i64 %indvars.iv, 1, !dbg !2867
  %arrayidx.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %0, !dbg !2867
  %1 = load i8, ptr %arrayidx.us, align 1, !dbg !2867, !tbaa !1474
  %conv.us = zext i8 %1 to i16, !dbg !2867
  %arrayidx9.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %0, !dbg !2867
  %2 = load i8, ptr %arrayidx9.us, align 1, !dbg !2867, !tbaa !1474
  %conv10.us = zext i8 %2 to i16, !dbg !2867
  %add.us = add nuw nsw i16 %conv.us, 1, !dbg !2867
  %add11.us = add nuw nsw i16 %add.us, %conv10.us, !dbg !2867
  %3 = lshr i16 %add11.us, 1, !dbg !2867
  %4 = or i64 %0, 1, !dbg !2867
  %arrayidx15.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %4, !dbg !2867
  %5 = load i8, ptr %arrayidx15.us, align 1, !dbg !2867, !tbaa !1474
  %conv16.us = zext i8 %5 to i16, !dbg !2867
  %arrayidx20.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %4, !dbg !2867
  %6 = load i8, ptr %arrayidx20.us, align 1, !dbg !2867, !tbaa !1474
  %conv21.us = zext i8 %6 to i16, !dbg !2867
  %add22.us = add nuw nsw i16 %conv16.us, 1, !dbg !2867
  %add23.us = add nuw nsw i16 %add22.us, %conv21.us, !dbg !2867
  %7 = lshr i16 %add23.us, 1, !dbg !2867
  %add25.us = add nuw nsw i16 %3, 1, !dbg !2867
  %add26.us = add nuw nsw i16 %add25.us, %7, !dbg !2867
  %8 = lshr i16 %add26.us, 1, !dbg !2867
  %conv28.us = trunc i16 %8 to i8, !dbg !2867
  %arrayidx30.us = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %indvars.iv, !dbg !2870
  store i8 %conv28.us, ptr %arrayidx30.us, align 1, !dbg !2871, !tbaa !1474
  %9 = load i8, ptr %arrayidx15.us, align 1, !dbg !2872, !tbaa !1474
  %conv35.us = zext i8 %9 to i16, !dbg !2872
  %10 = load i8, ptr %arrayidx20.us, align 1, !dbg !2872, !tbaa !1474
  %conv40.us = zext i8 %10 to i16, !dbg !2872
  %add41.us = add nuw nsw i16 %conv35.us, 1, !dbg !2872
  %add42.us = add nuw nsw i16 %add41.us, %conv40.us, !dbg !2872
  %11 = lshr i16 %add42.us, 1, !dbg !2872
  %12 = add nuw i64 %0, 2, !dbg !2872
  %idxprom46.us = and i64 %12, 4294967294, !dbg !2872
  %arrayidx47.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %idxprom46.us, !dbg !2872
  %13 = load i8, ptr %arrayidx47.us, align 1, !dbg !2872, !tbaa !1474
  %conv48.us = zext i8 %13 to i16, !dbg !2872
  %arrayidx52.us = getelementptr inbounds i8, ptr %add.ptr.us, i64 %idxprom46.us, !dbg !2872
  %14 = load i8, ptr %arrayidx52.us, align 1, !dbg !2872, !tbaa !1474
  %conv53.us = zext i8 %14 to i16, !dbg !2872
  %add54.us = add nuw nsw i16 %conv48.us, 1, !dbg !2872
  %add55.us = add nuw nsw i16 %add54.us, %conv53.us, !dbg !2872
  %15 = lshr i16 %add55.us, 1, !dbg !2872
  %add57.us = add nuw nsw i16 %11, 1, !dbg !2872
  %add58.us = add nuw nsw i16 %add57.us, %15, !dbg !2872
  %16 = lshr i16 %add58.us, 1, !dbg !2872
  %conv60.us = trunc i16 %16 to i8, !dbg !2872
  %arrayidx62.us = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %indvars.iv, !dbg !2873
  store i8 %conv60.us, ptr %arrayidx62.us, align 1, !dbg !2874, !tbaa !1474
  %17 = load i8, ptr %arrayidx9.us, align 1, !dbg !2875, !tbaa !1474
  %conv66.us = zext i8 %17 to i16, !dbg !2875
  %arrayidx69.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %0, !dbg !2875
  %18 = load i8, ptr %arrayidx69.us, align 1, !dbg !2875, !tbaa !1474
  %conv70.us = zext i8 %18 to i16, !dbg !2875
  %add71.us = add nuw nsw i16 %conv66.us, 1, !dbg !2875
  %add72.us = add nuw nsw i16 %add71.us, %conv70.us, !dbg !2875
  %19 = lshr i16 %add72.us, 1, !dbg !2875
  %20 = load i8, ptr %arrayidx20.us, align 1, !dbg !2875, !tbaa !1474
  %conv78.us = zext i8 %20 to i16, !dbg !2875
  %arrayidx82.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %4, !dbg !2875
  %21 = load i8, ptr %arrayidx82.us, align 1, !dbg !2875, !tbaa !1474
  %conv83.us = zext i8 %21 to i16, !dbg !2875
  %add84.us = add nuw nsw i16 %conv78.us, 1, !dbg !2875
  %add85.us = add nuw nsw i16 %add84.us, %conv83.us, !dbg !2875
  %22 = lshr i16 %add85.us, 1, !dbg !2875
  %add87.us = add nuw nsw i16 %19, 1, !dbg !2875
  %add88.us = add nuw nsw i16 %add87.us, %22, !dbg !2875
  %23 = lshr i16 %add88.us, 1, !dbg !2875
  %conv90.us = trunc i16 %23 to i8, !dbg !2875
  %arrayidx92.us = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %indvars.iv, !dbg !2876
  store i8 %conv90.us, ptr %arrayidx92.us, align 1, !dbg !2877, !tbaa !1474
  %24 = load i8, ptr %arrayidx20.us, align 1, !dbg !2878, !tbaa !1474
  %conv97.us = zext i8 %24 to i16, !dbg !2878
  %25 = load i8, ptr %arrayidx82.us, align 1, !dbg !2878, !tbaa !1474
  %conv102.us = zext i8 %25 to i16, !dbg !2878
  %add103.us = add nuw nsw i16 %conv97.us, 1, !dbg !2878
  %add104.us = add nuw nsw i16 %add103.us, %conv102.us, !dbg !2878
  %26 = lshr i16 %add104.us, 1, !dbg !2878
  %27 = load i8, ptr %arrayidx52.us, align 1, !dbg !2878, !tbaa !1474
  %conv110.us = zext i8 %27 to i16, !dbg !2878
  %arrayidx114.us = getelementptr inbounds i8, ptr %add.ptr2.us, i64 %idxprom46.us, !dbg !2878
  %28 = load i8, ptr %arrayidx114.us, align 1, !dbg !2878, !tbaa !1474
  %conv115.us = zext i8 %28 to i16, !dbg !2878
  %add116.us = add nuw nsw i16 %conv110.us, 1, !dbg !2878
  %add117.us = add nuw nsw i16 %add116.us, %conv115.us, !dbg !2878
  %29 = lshr i16 %add117.us, 1, !dbg !2878
  %add119.us = add nuw nsw i16 %26, 1, !dbg !2878
  %add120.us = add nuw nsw i16 %add119.us, %29, !dbg !2878
  %30 = lshr i16 %add120.us, 1, !dbg !2878
  %conv122.us = trunc i16 %30 to i8, !dbg !2878
  %arrayidx124.us = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %indvars.iv, !dbg !2879
  store i8 %conv122.us, ptr %arrayidx124.us, align 1, !dbg !2880, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2856, metadata !DIExpression()), !dbg !2866
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2882
  br i1 %exitcond.not, label %for.cond3.for.cond.cleanup5_crit_edge.us, label %for.body6.us, !dbg !2862, !llvm.loop !2883

for.cond3.for.cond.cleanup5_crit_edge.us:         ; preds = %for.body6.us
  %add.ptr127.us = getelementptr inbounds i8, ptr %src0.addr.0194.us, i64 %idx.ext126, !dbg !2885
  call void @llvm.dbg.value(metadata ptr %add.ptr127.us, metadata !2841, metadata !DIExpression()), !dbg !2858
  %add.ptr129.us = getelementptr inbounds i8, ptr %dst0.addr.0193.us, i64 %idx.ext128, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %add.ptr129.us, metadata !2842, metadata !DIExpression()), !dbg !2858
  %add.ptr131.us = getelementptr inbounds i8, ptr %dsth.addr.0191.us, i64 %idx.ext128, !dbg !2887
  call void @llvm.dbg.value(metadata ptr %add.ptr131.us, metadata !2843, metadata !DIExpression()), !dbg !2858
  %add.ptr133.us = getelementptr inbounds i8, ptr %dstv.addr.0190.us, i64 %idx.ext128, !dbg !2888
  call void @llvm.dbg.value(metadata ptr %add.ptr133.us, metadata !2844, metadata !DIExpression()), !dbg !2858
  %add.ptr135.us = getelementptr inbounds i8, ptr %dstc.addr.0189.us, i64 %idx.ext128, !dbg !2889
  call void @llvm.dbg.value(metadata ptr %add.ptr135.us, metadata !2845, metadata !DIExpression()), !dbg !2858
  %inc137.us = add nuw nsw i32 %y.0192.us, 1, !dbg !2890
  call void @llvm.dbg.value(metadata i32 %inc137.us, metadata !2850, metadata !DIExpression()), !dbg !2859
  %exitcond200.not = icmp eq i32 %inc137.us, %height, !dbg !2860
  br i1 %exitcond200.not, label %for.cond.cleanup, label %for.body.us, !dbg !2861, !llvm.loop !2891

for.cond.cleanup:                                 ; preds = %for.cond3.for.cond.cleanup5_crit_edge.us, %for.body.lr.ph, %entry
  ret void, !dbg !2893
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @integral_init4h(ptr nocapture noundef %sum, ptr nocapture noundef readonly %pix, i32 noundef %stride) #11 !dbg !2894 {
entry:
  call void @llvm.dbg.value(metadata ptr %sum, metadata !2896, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2897, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2898, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 undef, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 0, metadata !2900, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 0, metadata !2900, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 poison, metadata !2899, metadata !DIExpression()), !dbg !2902
  %cmp39 = icmp sgt i32 %stride, 4, !dbg !2904
  br i1 %cmp39, label %for.body.preheader, label %for.cond.cleanup, !dbg !2906

for.body.preheader:                               ; preds = %entry
  %sub = add nsw i32 %stride, -4
  %arrayidx1 = getelementptr inbounds i8, ptr %pix, i64 1, !dbg !2907
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !2907, !tbaa !1474
  %conv2 = zext i8 %0 to i16, !dbg !2907
  %1 = load i8, ptr %pix, align 1, !dbg !2908, !tbaa !1474
  %conv = zext i8 %1 to i16, !dbg !2908
  %add = add nuw nsw i16 %conv2, %conv, !dbg !2909
  %arrayidx3 = getelementptr inbounds i8, ptr %pix, i64 2, !dbg !2910
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2910, !tbaa !1474
  %conv4 = zext i8 %2 to i16, !dbg !2910
  %add5 = add nuw nsw i16 %add, %conv4, !dbg !2911
  %arrayidx6 = getelementptr inbounds i8, ptr %pix, i64 3, !dbg !2912
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !2912, !tbaa !1474
  %conv7 = zext i8 %3 to i16, !dbg !2912
  %add8 = add nuw nsw i16 %add5, %conv7, !dbg !2913
  %4 = zext i32 %stride to i64, !dbg !2906
  %wide.trip.count = zext i32 %sub to i64, !dbg !2904
  br label %for.body, !dbg !2906

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !2914

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %v.040 = phi i16 [ %add8, %for.body.preheader ], [ %add25, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2900, metadata !DIExpression()), !dbg !2903
  %5 = sub nsw i64 %indvars.iv, %4, !dbg !2915
  %arrayidx11 = getelementptr inbounds i16, ptr %sum, i64 %5, !dbg !2917
  %6 = load i16, ptr %arrayidx11, align 2, !dbg !2917, !tbaa !1506
  %conv14 = add i16 %6, %v.040, !dbg !2918
  %arrayidx16 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv, !dbg !2919
  store i16 %conv14, ptr %arrayidx16, align 2, !dbg !2920, !tbaa !1506
  %7 = add nuw nsw i64 %indvars.iv, 4, !dbg !2921
  %arrayidx19 = getelementptr inbounds i8, ptr %pix, i64 %7, !dbg !2922
  %8 = load i8, ptr %arrayidx19, align 1, !dbg !2922, !tbaa !1474
  %conv20 = zext i8 %8 to i16, !dbg !2922
  %arrayidx22 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv, !dbg !2923
  %9 = load i8, ptr %arrayidx22, align 1, !dbg !2923, !tbaa !1474
  %conv23 = zext i8 %9 to i16, !dbg !2923
  %sub24 = add i16 %v.040, %conv20, !dbg !2924
  %add25 = sub i16 %sub24, %conv23, !dbg !2925
  call void @llvm.dbg.value(metadata i32 undef, metadata !2899, metadata !DIExpression()), !dbg !2902
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2900, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 poison, metadata !2899, metadata !DIExpression()), !dbg !2902
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2904
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2906, !llvm.loop !2927
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @integral_init8h(ptr nocapture noundef %sum, ptr nocapture noundef readonly %pix, i32 noundef %stride) #11 !dbg !2929 {
entry:
  call void @llvm.dbg.value(metadata ptr %sum, metadata !2931, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2932, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 undef, metadata !2934, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i32 0, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 0, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 poison, metadata !2934, metadata !DIExpression()), !dbg !2937
  %cmp55 = icmp sgt i32 %stride, 8, !dbg !2939
  br i1 %cmp55, label %for.body.preheader, label %for.cond.cleanup, !dbg !2941

for.body.preheader:                               ; preds = %entry
  %sub = add nsw i32 %stride, -8
  %arrayidx1 = getelementptr inbounds i8, ptr %pix, i64 1, !dbg !2942
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !2942, !tbaa !1474
  %conv2 = zext i8 %0 to i16, !dbg !2942
  %1 = load i8, ptr %pix, align 1, !dbg !2943, !tbaa !1474
  %conv = zext i8 %1 to i16, !dbg !2943
  %add = add nuw nsw i16 %conv2, %conv, !dbg !2944
  %arrayidx3 = getelementptr inbounds i8, ptr %pix, i64 2, !dbg !2945
  %2 = load i8, ptr %arrayidx3, align 1, !dbg !2945, !tbaa !1474
  %conv4 = zext i8 %2 to i16, !dbg !2945
  %add5 = add nuw nsw i16 %add, %conv4, !dbg !2946
  %arrayidx6 = getelementptr inbounds i8, ptr %pix, i64 3, !dbg !2947
  %3 = load i8, ptr %arrayidx6, align 1, !dbg !2947, !tbaa !1474
  %conv7 = zext i8 %3 to i16, !dbg !2947
  %add8 = add nuw nsw i16 %add5, %conv7, !dbg !2948
  %arrayidx9 = getelementptr inbounds i8, ptr %pix, i64 4, !dbg !2949
  %4 = load i8, ptr %arrayidx9, align 1, !dbg !2949, !tbaa !1474
  %conv10 = zext i8 %4 to i16, !dbg !2949
  %add11 = add nuw nsw i16 %add8, %conv10, !dbg !2950
  %arrayidx12 = getelementptr inbounds i8, ptr %pix, i64 5, !dbg !2951
  %5 = load i8, ptr %arrayidx12, align 1, !dbg !2951, !tbaa !1474
  %conv13 = zext i8 %5 to i16, !dbg !2951
  %add14 = add nuw nsw i16 %add11, %conv13, !dbg !2952
  %arrayidx15 = getelementptr inbounds i8, ptr %pix, i64 6, !dbg !2953
  %6 = load i8, ptr %arrayidx15, align 1, !dbg !2953, !tbaa !1474
  %conv16 = zext i8 %6 to i16, !dbg !2953
  %add17 = add nuw nsw i16 %add14, %conv16, !dbg !2954
  %arrayidx18 = getelementptr inbounds i8, ptr %pix, i64 7, !dbg !2955
  %7 = load i8, ptr %arrayidx18, align 1, !dbg !2955, !tbaa !1474
  %conv19 = zext i8 %7 to i16, !dbg !2955
  %add20 = add nuw nsw i16 %add17, %conv19, !dbg !2956
  %8 = zext i32 %stride to i64, !dbg !2941
  %wide.trip.count = zext i32 %sub to i64, !dbg !2939
  br label %for.body, !dbg !2941

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !2957

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %v.056 = phi i16 [ %add20, %for.body.preheader ], [ %add37, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2935, metadata !DIExpression()), !dbg !2938
  %9 = sub nsw i64 %indvars.iv, %8, !dbg !2958
  %arrayidx23 = getelementptr inbounds i16, ptr %sum, i64 %9, !dbg !2960
  %10 = load i16, ptr %arrayidx23, align 2, !dbg !2960, !tbaa !1506
  %conv26 = add i16 %10, %v.056, !dbg !2961
  %arrayidx28 = getelementptr inbounds i16, ptr %sum, i64 %indvars.iv, !dbg !2962
  store i16 %conv26, ptr %arrayidx28, align 2, !dbg !2963, !tbaa !1506
  %11 = add nuw nsw i64 %indvars.iv, 8, !dbg !2964
  %arrayidx31 = getelementptr inbounds i8, ptr %pix, i64 %11, !dbg !2965
  %12 = load i8, ptr %arrayidx31, align 1, !dbg !2965, !tbaa !1474
  %conv32 = zext i8 %12 to i16, !dbg !2965
  %arrayidx34 = getelementptr inbounds i8, ptr %pix, i64 %indvars.iv, !dbg !2966
  %13 = load i8, ptr %arrayidx34, align 1, !dbg !2966, !tbaa !1474
  %conv35 = zext i8 %13 to i16, !dbg !2966
  %sub36 = add i16 %v.056, %conv32, !dbg !2967
  %add37 = sub i16 %sub36, %conv35, !dbg !2968
  call void @llvm.dbg.value(metadata i32 undef, metadata !2934, metadata !DIExpression()), !dbg !2937
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 poison, metadata !2934, metadata !DIExpression()), !dbg !2937
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2939
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2941, !llvm.loop !2970
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @integral_init4v(ptr nocapture noundef %sum8, ptr nocapture noundef writeonly %sum4, i32 noundef %stride) #11 !dbg !2972 {
entry:
  call void @llvm.dbg.value(metadata ptr %sum8, metadata !2974, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata ptr %sum4, metadata !2975, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2976, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()), !dbg !2982
  %sub = add i32 %stride, -8
  call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression()), !dbg !2982
  %cmp64 = icmp sgt i32 %stride, 8, !dbg !2983
  br i1 %cmp64, label %for.body.lr.ph, label %for.cond.cleanup13, !dbg !2985

for.body.lr.ph:                                   ; preds = %entry
  %mul = shl nsw i32 %stride, 2
  %0 = sext i32 %mul to i64, !dbg !2985
  %wide.trip.count = zext i32 %sub to i64, !dbg !2983
  br label %for.body, !dbg !2985

for.cond9.preheader:                              ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 0, metadata !2979, metadata !DIExpression()), !dbg !2986
  br i1 %cmp64, label %for.body14.lr.ph, label %for.cond.cleanup13, !dbg !2987

for.body14.lr.ph:                                 ; preds = %for.cond9.preheader
  %mul15 = shl nsw i32 %stride, 3
  %1 = sext i32 %mul15 to i64, !dbg !2987
  %wide.trip.count76 = zext i32 %sub to i64, !dbg !2988
  br label %for.body14, !dbg !2987

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2977, metadata !DIExpression()), !dbg !2982
  %2 = add nsw i64 %indvars.iv, %0, !dbg !2990
  %arrayidx = getelementptr inbounds i16, ptr %sum8, i64 %2, !dbg !2991
  %3 = load i16, ptr %arrayidx, align 2, !dbg !2991, !tbaa !1506
  %arrayidx2 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv, !dbg !2992
  %4 = load i16, ptr %arrayidx2, align 2, !dbg !2992, !tbaa !1506
  %sub4 = sub i16 %3, %4, !dbg !2993
  %arrayidx7 = getelementptr inbounds i16, ptr %sum4, i64 %indvars.iv, !dbg !2994
  store i16 %sub4, ptr %arrayidx7, align 2, !dbg !2995, !tbaa !1506
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2996
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2977, metadata !DIExpression()), !dbg !2982
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2983
  br i1 %exitcond.not, label %for.cond9.preheader, label %for.body, !dbg !2985, !llvm.loop !2997

for.cond.cleanup13:                               ; preds = %for.body14, %entry, %for.cond9.preheader
  ret void, !dbg !2999

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %indvars.iv70 = phi i64 [ 0, %for.body14.lr.ph ], [ %indvars.iv.next71, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv70, metadata !2979, metadata !DIExpression()), !dbg !2986
  %5 = add nsw i64 %indvars.iv70, %1, !dbg !3000
  %arrayidx18 = getelementptr inbounds i16, ptr %sum8, i64 %5, !dbg !3001
  %6 = load i16, ptr %arrayidx18, align 2, !dbg !3001, !tbaa !1506
  %7 = add nsw i64 %5, 4, !dbg !3002
  %arrayidx24 = getelementptr inbounds i16, ptr %sum8, i64 %7, !dbg !3003
  %8 = load i16, ptr %arrayidx24, align 2, !dbg !3003, !tbaa !1506
  %arrayidx28 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv70, !dbg !3004
  %9 = load i16, ptr %arrayidx28, align 2, !dbg !3004, !tbaa !1506
  %10 = add nuw nsw i64 %indvars.iv70, 4, !dbg !3005
  %arrayidx33 = getelementptr inbounds i16, ptr %sum8, i64 %10, !dbg !3006
  %11 = load i16, ptr %arrayidx33, align 2, !dbg !3006, !tbaa !1506
  %.neg63 = add i16 %8, %6, !dbg !3007
  %12 = add i16 %9, %11, !dbg !3007
  %sub35 = sub i16 %.neg63, %12, !dbg !3007
  store i16 %sub35, ptr %arrayidx28, align 2, !dbg !3008, !tbaa !1506
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1, !dbg !3009
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next71, metadata !2979, metadata !DIExpression()), !dbg !2986
  %exitcond77.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count76, !dbg !2988
  br i1 %exitcond77.not, label %for.cond.cleanup13, label %for.body14, !dbg !2987, !llvm.loop !3010
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @integral_init8v(ptr nocapture noundef %sum8, i32 noundef %stride) #11 !dbg !3012 {
entry:
  call void @llvm.dbg.value(metadata ptr %sum8, metadata !3014, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 %stride, metadata !3015, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !3016, metadata !DIExpression()), !dbg !3019
  %cmp15 = icmp sgt i32 %stride, 8, !dbg !3020
  br i1 %cmp15, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !3022

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %stride, -8
  %mul = shl nsw i32 %stride, 3
  %0 = sext i32 %mul to i64, !dbg !3022
  %wide.trip.count = zext i32 %sub to i64, !dbg !3020
  br label %for.body, !dbg !3022

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !3023

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3016, metadata !DIExpression()), !dbg !3019
  %1 = add nsw i64 %indvars.iv, %0, !dbg !3024
  %arrayidx = getelementptr inbounds i16, ptr %sum8, i64 %1, !dbg !3025
  %2 = load i16, ptr %arrayidx, align 2, !dbg !3025, !tbaa !1506
  %arrayidx2 = getelementptr inbounds i16, ptr %sum8, i64 %indvars.iv, !dbg !3026
  %3 = load i16, ptr %arrayidx2, align 2, !dbg !3026, !tbaa !1506
  %sub4 = sub i16 %2, %3, !dbg !3027
  store i16 %sub4, ptr %arrayidx2, align 2, !dbg !3028, !tbaa !1506
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3016, metadata !DIExpression()), !dbg !3019
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3020
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !3022, !llvm.loop !3030
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @mbtree_propagate_cost(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %propagate_in, ptr nocapture noundef readonly %intra_costs, ptr nocapture noundef readonly %inter_costs, ptr nocapture noundef readonly %inv_qscales, i32 noundef %len) #11 !dbg !3032 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3034, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %propagate_in, metadata !3035, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %intra_costs, metadata !3036, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %inter_costs, metadata !3037, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata ptr %inv_qscales, metadata !3038, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 %len, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3046
  %cmp33 = icmp sgt i32 %len, 0, !dbg !3047
  br i1 %cmp33, label %for.body.preheader, label %for.cond.cleanup, !dbg !3048

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %len to i64, !dbg !3047
  br label %for.body, !dbg !3048

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void, !dbg !3049

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3040, metadata !DIExpression()), !dbg !3046
  %arrayidx = getelementptr inbounds i16, ptr %propagate_in, i64 %indvars.iv, !dbg !3050
  %0 = load i16, ptr %arrayidx, align 2, !dbg !3050, !tbaa !1506
  %conv = zext i16 %0 to i32, !dbg !3050
  %arrayidx2 = getelementptr inbounds i16, ptr %intra_costs, i64 %indvars.iv, !dbg !3051
  %1 = load i16, ptr %arrayidx2, align 2, !dbg !3051, !tbaa !1506
  %conv3 = zext i16 %1 to i32, !dbg !3051
  %arrayidx5 = getelementptr inbounds i16, ptr %inv_qscales, i64 %indvars.iv, !dbg !3052
  %2 = load i16, ptr %arrayidx5, align 2, !dbg !3052, !tbaa !1506
  %conv6 = zext i16 %2 to i32, !dbg !3052
  %mul = mul nuw nsw i32 %conv6, %conv3, !dbg !3053
  %add = add nuw nsw i32 %mul, 128, !dbg !3054
  %3 = lshr i32 %add, 8, !dbg !3055
  %add7 = add nuw nsw i32 %3, %conv, !dbg !3056
  call void @llvm.dbg.value(metadata i32 %add7, metadata !3042, metadata !DIExpression()), !dbg !3057
  %conv8 = zext i32 %add7 to i64, !dbg !3058
  %arrayidx13 = getelementptr inbounds i16, ptr %inter_costs, i64 %indvars.iv, !dbg !3058
  %4 = load i16, ptr %arrayidx13, align 2, !dbg !3058, !tbaa !1506
  %5 = and i16 %4, 16383, !dbg !3058
  %and = zext i16 %5 to i32, !dbg !3058
  %sub = sub nsw i32 %conv3, %and, !dbg !3058
  %conv15 = sext i32 %sub to i64, !dbg !3058
  %mul16 = mul nsw i64 %conv8, %conv15, !dbg !3058
  %conv19 = zext i16 %1 to i64, !dbg !3058
  %div = sdiv i64 %mul16, %conv19, !dbg !3058
  %conv20 = trunc i64 %div to i32, !dbg !3058
  %arrayidx22 = getelementptr inbounds i32, ptr %dst, i64 %indvars.iv, !dbg !3059
  store i32 %conv20, ptr %arrayidx22, align 4, !dbg !3060, !tbaa !1404
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3040, metadata !DIExpression()), !dbg !3046
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3047
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !3048, !llvm.loop !3062
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_filter(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #2 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3068, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %frame, metadata !3069, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !3070, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !3071, metadata !DIExpression()), !dbg !3089
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !3090
  %0 = load i32, ptr %b_mbaff, align 4, !dbg !3090, !tbaa !3091
  call void @llvm.dbg.value(metadata i32 %0, metadata !3072, metadata !DIExpression()), !dbg !3089
  %i_stride = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, !dbg !3092
  %1 = load i32, ptr %i_stride, align 8, !dbg !3093, !tbaa !1404
  %shl = shl i32 %1, %0, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %shl, metadata !3073, metadata !DIExpression()), !dbg !3089
  %i_width = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 25, !dbg !3095
  %2 = load i32, ptr %i_width, align 4, !dbg !3096, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %2, metadata !3074, metadata !DIExpression()), !dbg !3089
  %mul = shl nsw i32 %mb_y, 4, !dbg !3097
  %shr = ashr i32 %mul, %0, !dbg !3098
  %sub = add nsw i32 %shr, -8, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3075, metadata !DIExpression()), !dbg !3089
  %tobool.not = icmp eq i32 %b_end, 0, !dbg !3100
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !3100

cond.true:                                        ; preds = %entry
  %i_lines = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 26, !dbg !3101
  %3 = load i32, ptr %i_lines, align 16, !dbg !3102, !tbaa !1404
  %.pre = ashr i32 %3, %0, !dbg !3103
  br label %cond.end, !dbg !3100

cond.end:                                         ; preds = %entry, %cond.true
  %shr4.pre-phi = phi i32 [ %shr, %entry ], [ %.pre, %cond.true ], !dbg !3103
  %add = add nsw i32 %shr4.pre-phi, 8, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %add, metadata !3076, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub, i32 %shl), metadata !3077, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !3089
  %and = and i32 %0, %mb_y, !dbg !3105
  %tobool7.not = icmp eq i32 %and, 0, !dbg !3105
  br i1 %tobool7.not, label %if.end, label %cleanup, !dbg !3107

if.end:                                           ; preds = %cond.end
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub, i32 %shl), metadata !3077, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !3089
  call void @llvm.dbg.value(metadata !DIArgList(i32 %sub, i32 %shl), metadata !3077, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !3089
  call void @llvm.dbg.value(metadata i32 0, metadata !3078, metadata !DIExpression()), !dbg !3108
  %cmp.not155 = icmp slt i32 %0, 0, !dbg !3109
  br i1 %cmp.not155, label %for.cond.cleanup, label %for.body.lr.ph, !dbg !3111

for.body.lr.ph:                                   ; preds = %if.end
  %mul5 = mul nsw i32 %sub, %shl, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %mul5, metadata !3077, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !3089
  %sub6 = add nsw i32 %mul5, -8, !dbg !3113
  call void @llvm.dbg.value(metadata i32 %sub6, metadata !3077, metadata !DIExpression()), !dbg !3089
  %hpel_filter = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 7
  %arrayidx8 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 31, i64 1
  %arrayidx10 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 31, i64 2
  %arrayidx14 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 31, i64 3
  %plane = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30
  %add20 = add nsw i32 %2, 16
  %sub21 = sub nsw i32 %add, %sub
  %scratch_buffer = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 61
  br label %for.body, !dbg !3111

for.cond.cleanup:                                 ; preds = %for.body, %if.end
  %integral = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 33, !dbg !3114
  %4 = load ptr, ptr %integral, align 16, !dbg !3114, !tbaa !3115
  %tobool25.not = icmp eq ptr %4, null, !dbg !3116
  br i1 %tobool25.not, label %cleanup, label %if.then26, !dbg !3117

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %y.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %offs.0156 = phi i32 [ %sub6, %for.body.lr.ph ], [ %add24, %for.body ]
  call void @llvm.dbg.value(metadata i32 %y.0157, metadata !3078, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i32 %offs.0156, metadata !3077, metadata !DIExpression()), !dbg !3089
  %5 = load ptr, ptr %hpel_filter, align 8, !dbg !3118, !tbaa !3120
  %6 = load ptr, ptr %arrayidx8, align 8, !dbg !3121, !tbaa !1398
  %idx.ext = sext i32 %offs.0156 to i64, !dbg !3122
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext, !dbg !3122
  %7 = load ptr, ptr %arrayidx10, align 16, !dbg !3123, !tbaa !1398
  %add.ptr12 = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !3124
  %8 = load ptr, ptr %arrayidx14, align 8, !dbg !3125, !tbaa !1398
  %add.ptr16 = getelementptr inbounds i8, ptr %8, i64 %idx.ext, !dbg !3126
  %9 = load ptr, ptr %plane, align 8, !dbg !3127, !tbaa !1398
  %add.ptr19 = getelementptr inbounds i8, ptr %9, i64 %idx.ext, !dbg !3128
  %10 = load ptr, ptr %scratch_buffer, align 8, !dbg !3129, !tbaa !3130
  tail call void %5(ptr noundef %add.ptr, ptr noundef %add.ptr12, ptr noundef %add.ptr16, ptr noundef %add.ptr19, i32 noundef %shl, i32 noundef %add20, i32 noundef %sub21, ptr noundef %10) #14, !dbg !3131
  %inc = add nuw i32 %y.0157, 1, !dbg !3132
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3078, metadata !DIExpression()), !dbg !3108
  %11 = load i32, ptr %i_stride, align 8, !dbg !3133, !tbaa !1404
  %add24 = add nsw i32 %11, %offs.0156, !dbg !3134
  call void @llvm.dbg.value(metadata i32 %add24, metadata !3077, metadata !DIExpression()), !dbg !3089
  %exitcond.not = icmp eq i32 %y.0157, %0, !dbg !3109
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !3111, !llvm.loop !3135

if.then26:                                        ; preds = %for.cond.cleanup
  %cmp27 = icmp slt i32 %shr, 8, !dbg !3137
  br i1 %cmp27, label %if.then28, label %if.end35, !dbg !3139

if.then28:                                        ; preds = %if.then26
  %mul30 = shl nsw i32 %shl, 5, !dbg !3140
  %idx.ext31 = sext i32 %mul30 to i64, !dbg !3142
  %idx.neg = sub nsw i64 0, %idx.ext31, !dbg !3142
  %add.ptr32 = getelementptr inbounds i16, ptr %4, i64 %idx.neg, !dbg !3142
  %add.ptr33 = getelementptr inbounds i16, ptr %add.ptr32, i64 -32, !dbg !3143
  %conv = sext i32 %shl to i64, !dbg !3144
  %mul34 = shl nsw i64 %conv, 1, !dbg !3145
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %add.ptr33, i8 0, i64 %mul34, i1 false), !dbg !3146
  call void @llvm.dbg.value(metadata i32 -32, metadata !3075, metadata !DIExpression()), !dbg !3089
  br label %if.end35, !dbg !3147

if.end35:                                         ; preds = %if.then28, %if.then26
  %start.0 = phi i32 [ -32, %if.then28 ], [ %sub, %if.then26 ], !dbg !3089
  call void @llvm.dbg.value(metadata i32 %start.0, metadata !3075, metadata !DIExpression()), !dbg !3089
  %add38 = add nsw i32 %shr4.pre-phi, 31
  %spec.select = select i1 %tobool.not, i32 %add, i32 %add38, !dbg !3148
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3076, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i32 %start.0, metadata !3080, metadata !DIExpression()), !dbg !3149
  %cmp42158 = icmp slt i32 %start.0, %spec.select, !dbg !3150
  br i1 %cmp42158, label %for.body45.lr.ph, label %cleanup, !dbg !3151

for.body45.lr.ph:                                 ; preds = %if.end35
  %plane46 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30
  %b_have_sub8x8_esa = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 17
  %integral_init4h = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 12
  %mul61 = shl nsw i32 %shl, 3
  %idx.ext62 = sext i32 %mul61 to i64
  %idx.neg63 = sub nsw i64 0, %idx.ext62
  %i_lines65 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 26
  %integral_init4v = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 14
  %integral_init8h = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 13
  %integral_init8v = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 15
  %12 = sext i32 %start.0 to i64, !dbg !3151
  %13 = sext i32 %shl to i64, !dbg !3151
  br label %for.body45, !dbg !3151

for.body45:                                       ; preds = %for.body45.lr.ph, %if.end86
  %indvars.iv = phi i64 [ %12, %for.body45.lr.ph ], [ %indvars.iv.next, %if.end86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3080, metadata !DIExpression()), !dbg !3149
  %14 = load ptr, ptr %plane46, align 8, !dbg !3152, !tbaa !1398
  %15 = mul nsw i64 %indvars.iv, %13, !dbg !3153
  %add.ptr50 = getelementptr inbounds i8, ptr %14, i64 -32, !dbg !3154
  %add.ptr51 = getelementptr inbounds i8, ptr %add.ptr50, i64 %15, !dbg !3155
  call void @llvm.dbg.value(metadata ptr %add.ptr51, metadata !3084, metadata !DIExpression()), !dbg !3156
  %16 = load ptr, ptr %integral, align 16, !dbg !3157, !tbaa !3115
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3158
  %17 = mul nsw i64 %indvars.iv.next, %13, !dbg !3159
  %add.ptr56 = getelementptr inbounds i16, ptr %16, i64 -32, !dbg !3160
  %add.ptr57 = getelementptr inbounds i16, ptr %add.ptr56, i64 %17, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %add.ptr57, metadata !3087, metadata !DIExpression()), !dbg !3156
  %18 = load i32, ptr %b_have_sub8x8_esa, align 4, !dbg !3162, !tbaa !3164
  %tobool58.not = icmp eq i32 %18, 0, !dbg !3165
  br i1 %tobool58.not, label %if.else, label %if.then59, !dbg !3166

if.then59:                                        ; preds = %for.body45
  %19 = load ptr, ptr %integral_init4h, align 8, !dbg !3167, !tbaa !3169
  tail call void %19(ptr noundef nonnull %add.ptr57, ptr noundef nonnull %add.ptr51, i32 noundef %shl) #14, !dbg !3170
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i64 0, i32 %shl), metadata !3087, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i32 %shl, i32 undef, i64 0, i32 %shl), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 64, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %cmp71 = icmp sgt i64 %indvars.iv, -25, !dbg !3171
  br i1 %cmp71, label %if.then73, label %if.end86, !dbg !3173

if.then73:                                        ; preds = %if.then59
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i64 %idx.neg63), metadata !3087, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i32 %shl, i32 undef, i64 %idx.neg63), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 64, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %add.ptr64 = getelementptr inbounds i16, ptr %add.ptr57, i64 %idx.neg63, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %add.ptr64, metadata !3087, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr64, i32 %shl, i32 undef), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 64, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %20 = load i32, ptr %i_lines65, align 16, !dbg !3175, !tbaa !1404
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i32 %shl, i32 %20, i64 0, i32 %shl), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_plus_uconst, 64, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %add67 = add nsw i32 %20, 64, !dbg !3176
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i32 %shl, i32 %add67, i64 0, i32 %shl), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %mul68 = mul nsw i32 %add67, %shl, !dbg !3177
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i32 %mul68, i64 0, i32 %shl), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %idx.ext69 = sext i32 %mul68 to i64, !dbg !3178
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr57, i64 %idx.ext69, i64 0, i32 %shl), metadata !3088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_minus, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %add.ptr70 = getelementptr inbounds i16, ptr %add.ptr64, i64 %idx.ext69, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %add.ptr70, metadata !3088, metadata !DIExpression()), !dbg !3156
  %21 = load ptr, ptr %integral_init4v, align 8, !dbg !3179, !tbaa !3180
  tail call void %21(ptr noundef nonnull %add.ptr64, ptr noundef nonnull %add.ptr70, i32 noundef %shl) #14, !dbg !3181
  br label %if.end86, !dbg !3181

if.else:                                          ; preds = %for.body45
  %22 = load ptr, ptr %integral_init8h, align 8, !dbg !3182, !tbaa !3184
  tail call void %22(ptr noundef nonnull %add.ptr57, ptr noundef nonnull %add.ptr51, i32 noundef %shl) #14, !dbg !3185
  %cmp77 = icmp sgt i64 %indvars.iv, -25, !dbg !3186
  br i1 %cmp77, label %if.then79, label %if.end86, !dbg !3188

if.then79:                                        ; preds = %if.else
  %23 = load ptr, ptr %integral_init8v, align 8, !dbg !3189, !tbaa !3190
  %add.ptr84 = getelementptr inbounds i16, ptr %add.ptr57, i64 %idx.neg63, !dbg !3191
  tail call void %23(ptr noundef nonnull %add.ptr84, i32 noundef %shl) #14, !dbg !3192
  br label %if.end86, !dbg !3192

if.end86:                                         ; preds = %if.else, %if.then79, %if.then59, %if.then73
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3080, metadata !DIExpression()), !dbg !3149
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3150
  %exitcond163.not = icmp eq i32 %spec.select, %lftr.wideiv, !dbg !3150
  br i1 %exitcond163.not, label %cleanup, label %for.body45, !dbg !3151, !llvm.loop !3193

cleanup:                                          ; preds = %if.end86, %if.end35, %for.cond.cleanup, %cond.end
  ret void, !dbg !3195
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind uwtable
define internal fastcc void @pixel_avg_weight_wxh(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst, ptr nocapture noundef readonly %src1, i32 noundef %i_src1, ptr nocapture noundef readonly %src2, i32 noundef %i_src2, i32 noundef %width, i32 noundef %height, i32 noundef %i_weight1) unnamed_addr #12 !dbg !2331 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2330, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %i_dst, metadata !2335, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src1, metadata !2336, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %i_src1, metadata !2337, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src2, metadata !2338, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %i_src2, metadata !2339, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %width, metadata !2340, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %height, metadata !2341, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 %i_weight1, metadata !2342, metadata !DIExpression()), !dbg !3196
  %sub = sub nsw i32 64, %i_weight1, !dbg !3197
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2343, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !2345, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2330, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src1, metadata !2336, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src2, metadata !2338, metadata !DIExpression()), !dbg !3196
  %cmp357 = icmp sgt i32 %height, 0, !dbg !3199
  br i1 %cmp357, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !3200

for.body.lr.ph:                                   ; preds = %entry
  %cmp17 = icmp eq i32 %width, 2
  %cmp41 = icmp eq i32 %width, 4
  %cmp89 = icmp eq i32 %width, 8
  %idx.ext = sext i32 %i_dst to i64
  %idx.ext181 = sext i32 %i_src1 to i64
  %idx.ext183 = sext i32 %i_src2 to i64
  br i1 %cmp17, label %for.body.us, label %for.body, !dbg !3201

for.body.us:                                      ; preds = %for.body.lr.ph, %x264_clip_uint8.exit272.us
  %y.0364.us = phi i32 [ %inc.us, %x264_clip_uint8.exit272.us ], [ 0, %for.body.lr.ph ]
  %dst.addr.0362.us = phi ptr [ %add.ptr.us, %x264_clip_uint8.exit272.us ], [ %dst, %for.body.lr.ph ]
  %src1.addr.0360.us = phi ptr [ %add.ptr182.us, %x264_clip_uint8.exit272.us ], [ %src1, %for.body.lr.ph ]
  %src2.addr.0358.us = phi ptr [ %add.ptr184.us, %x264_clip_uint8.exit272.us ], [ %src2, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %y.0364.us, metadata !2345, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362.us, metadata !2330, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360.us, metadata !2336, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358.us, metadata !2338, metadata !DIExpression()), !dbg !3196
  %0 = load i8, ptr %src1.addr.0360.us, align 1, !dbg !3202, !tbaa !1474
  %conv.us = zext i8 %0 to i32, !dbg !3202
  %mul.us = mul nsw i32 %conv.us, %i_weight1, !dbg !3202
  %1 = load i8, ptr %src2.addr.0358.us, align 1, !dbg !3202, !tbaa !1474
  %conv2.us = zext i8 %1 to i32, !dbg !3202
  %mul3.us = mul nsw i32 %sub, %conv2.us, !dbg !3202
  %add.us = add nsw i32 %mul3.us, %mul.us, !dbg !3202
  %add4.us = add nsw i32 %add.us, 32, !dbg !3202
  %shr.us = ashr i32 %add4.us, 6, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %shr.us, metadata !1738, metadata !DIExpression()), !dbg !3203
  %tobool.not.i.us = icmp ult i32 %add4.us, 16384, !dbg !3205
  br i1 %tobool.not.i.us, label %x264_clip_uint8.exit.us, label %cond.true.i.us, !dbg !3206

cond.true.i.us:                                   ; preds = %for.body.us
  %2 = icmp sgt i32 %add.us, 31, !dbg !3207
  %shr.i.us = sext i1 %2 to i32, !dbg !3207
  br label %x264_clip_uint8.exit.us, !dbg !3206

x264_clip_uint8.exit.us:                          ; preds = %cond.true.i.us, %for.body.us
  %cond.i.us = phi i32 [ %shr.i.us, %cond.true.i.us ], [ %shr.us, %for.body.us ], !dbg !3206
  %conv.i.us = trunc i32 %cond.i.us to i8, !dbg !3206
  store i8 %conv.i.us, ptr %dst.addr.0362.us, align 1, !dbg !3202, !tbaa !1474
  %arrayidx6.us = getelementptr inbounds i8, ptr %src1.addr.0360.us, i64 1, !dbg !3208
  %3 = load i8, ptr %arrayidx6.us, align 1, !dbg !3208, !tbaa !1474
  %conv7.us = zext i8 %3 to i32, !dbg !3208
  %mul8.us = mul nsw i32 %conv7.us, %i_weight1, !dbg !3208
  %arrayidx9.us = getelementptr inbounds i8, ptr %src2.addr.0358.us, i64 1, !dbg !3208
  %4 = load i8, ptr %arrayidx9.us, align 1, !dbg !3208, !tbaa !1474
  %conv10.us = zext i8 %4 to i32, !dbg !3208
  %mul11.us = mul nsw i32 %sub, %conv10.us, !dbg !3208
  %add12.us = add nsw i32 %mul11.us, %mul8.us, !dbg !3208
  %add13.us = add nsw i32 %add12.us, 32, !dbg !3208
  %shr14.us = ashr i32 %add13.us, 6, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %shr14.us, metadata !1738, metadata !DIExpression()), !dbg !3209
  %tobool.not.i267.us = icmp ult i32 %add13.us, 16384, !dbg !3211
  br i1 %tobool.not.i267.us, label %x264_clip_uint8.exit272.us, label %cond.true.i269.us, !dbg !3212

cond.true.i269.us:                                ; preds = %x264_clip_uint8.exit.us
  %5 = icmp sgt i32 %add12.us, 31, !dbg !3213
  %shr.i268.us = sext i1 %5 to i32, !dbg !3213
  br label %x264_clip_uint8.exit272.us, !dbg !3212

x264_clip_uint8.exit272.us:                       ; preds = %cond.true.i269.us, %x264_clip_uint8.exit.us
  %cond.i270.us = phi i32 [ %shr.i268.us, %cond.true.i269.us ], [ %shr14.us, %x264_clip_uint8.exit.us ], !dbg !3212
  %conv.i271.us = trunc i32 %cond.i270.us to i8, !dbg !3212
  %arrayidx16.us = getelementptr inbounds i8, ptr %dst.addr.0362.us, i64 1, !dbg !3208
  store i8 %conv.i271.us, ptr %arrayidx16.us, align 1, !dbg !3208, !tbaa !1474
  %inc.us = add nuw nsw i32 %y.0364.us, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !2345, metadata !DIExpression()), !dbg !3198
  %add.ptr.us = getelementptr inbounds i8, ptr %dst.addr.0362.us, i64 %idx.ext, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %add.ptr.us, metadata !2330, metadata !DIExpression()), !dbg !3196
  %add.ptr182.us = getelementptr inbounds i8, ptr %src1.addr.0360.us, i64 %idx.ext181, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %add.ptr182.us, metadata !2336, metadata !DIExpression()), !dbg !3196
  %add.ptr184.us = getelementptr inbounds i8, ptr %src2.addr.0358.us, i64 %idx.ext183, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %add.ptr184.us, metadata !2338, metadata !DIExpression()), !dbg !3196
  %exitcond366.not = icmp eq i32 %inc.us, %height, !dbg !3199
  br i1 %exitcond366.not, label %for.cond.cleanup, label %for.body.us, !dbg !3200, !llvm.loop !3218

for.cond.cleanup:                                 ; preds = %for.inc, %x264_clip_uint8.exit272.us, %entry
  ret void, !dbg !3220

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %y.0364 = phi i32 [ %inc, %for.inc ], [ 0, %for.body.lr.ph ]
  %dst.addr.0362 = phi ptr [ %add.ptr, %for.inc ], [ %dst, %for.body.lr.ph ]
  %src1.addr.0360 = phi ptr [ %add.ptr182, %for.inc ], [ %src1, %for.body.lr.ph ]
  %src2.addr.0358 = phi ptr [ %add.ptr184, %for.inc ], [ %src2, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i32 %y.0364, metadata !2345, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %dst.addr.0362, metadata !2330, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src1.addr.0360, metadata !2336, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %src2.addr.0358, metadata !2338, metadata !DIExpression()), !dbg !3196
  %6 = load i8, ptr %src1.addr.0360, align 1, !dbg !3202, !tbaa !1474
  %conv = zext i8 %6 to i32, !dbg !3202
  %mul = mul nsw i32 %conv, %i_weight1, !dbg !3202
  %7 = load i8, ptr %src2.addr.0358, align 1, !dbg !3202, !tbaa !1474
  %conv2 = zext i8 %7 to i32, !dbg !3202
  %mul3 = mul nsw i32 %sub, %conv2, !dbg !3202
  %add = add nsw i32 %mul3, %mul, !dbg !3202
  %add4 = add nsw i32 %add, 32, !dbg !3202
  %shr = ashr i32 %add4, 6, !dbg !3202
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1738, metadata !DIExpression()), !dbg !3203
  %tobool.not.i = icmp ult i32 %add4, 16384, !dbg !3205
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3206

cond.true.i:                                      ; preds = %for.body
  %8 = icmp sgt i32 %add, 31, !dbg !3207
  %shr.i = sext i1 %8 to i32, !dbg !3207
  br label %x264_clip_uint8.exit, !dbg !3206

x264_clip_uint8.exit:                             ; preds = %for.body, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %shr, %for.body ], !dbg !3206
  %conv.i = trunc i32 %cond.i to i8, !dbg !3206
  store i8 %conv.i, ptr %dst.addr.0362, align 1, !dbg !3202, !tbaa !1474
  %arrayidx6 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 1, !dbg !3208
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !3208, !tbaa !1474
  %conv7 = zext i8 %9 to i32, !dbg !3208
  %mul8 = mul nsw i32 %conv7, %i_weight1, !dbg !3208
  %arrayidx9 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 1, !dbg !3208
  %10 = load i8, ptr %arrayidx9, align 1, !dbg !3208, !tbaa !1474
  %conv10 = zext i8 %10 to i32, !dbg !3208
  %mul11 = mul nsw i32 %sub, %conv10, !dbg !3208
  %add12 = add nsw i32 %mul11, %mul8, !dbg !3208
  %add13 = add nsw i32 %add12, 32, !dbg !3208
  %shr14 = ashr i32 %add13, 6, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %shr14, metadata !1738, metadata !DIExpression()), !dbg !3209
  %tobool.not.i267 = icmp ult i32 %add13, 16384, !dbg !3211
  br i1 %tobool.not.i267, label %x264_clip_uint8.exit272, label %cond.true.i269, !dbg !3212

cond.true.i269:                                   ; preds = %x264_clip_uint8.exit
  %11 = icmp sgt i32 %add12, 31, !dbg !3213
  %shr.i268 = sext i1 %11 to i32, !dbg !3213
  br label %x264_clip_uint8.exit272, !dbg !3212

x264_clip_uint8.exit272:                          ; preds = %x264_clip_uint8.exit, %cond.true.i269
  %cond.i270 = phi i32 [ %shr.i268, %cond.true.i269 ], [ %shr14, %x264_clip_uint8.exit ], !dbg !3212
  %conv.i271 = trunc i32 %cond.i270 to i8, !dbg !3212
  %arrayidx16 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 1, !dbg !3208
  store i8 %conv.i271, ptr %arrayidx16, align 1, !dbg !3208, !tbaa !1474
  %arrayidx19 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 2, !dbg !3221
  %12 = load i8, ptr %arrayidx19, align 1, !dbg !3221, !tbaa !1474
  %conv20 = zext i8 %12 to i32, !dbg !3221
  %mul21 = mul nsw i32 %conv20, %i_weight1, !dbg !3221
  %arrayidx22 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 2, !dbg !3221
  %13 = load i8, ptr %arrayidx22, align 1, !dbg !3221, !tbaa !1474
  %conv23 = zext i8 %13 to i32, !dbg !3221
  %mul24 = mul nsw i32 %sub, %conv23, !dbg !3221
  %add25 = add nsw i32 %mul24, %mul21, !dbg !3221
  %add26 = add nsw i32 %add25, 32, !dbg !3221
  %shr27 = ashr i32 %add26, 6, !dbg !3221
  call void @llvm.dbg.value(metadata i32 %shr27, metadata !1738, metadata !DIExpression()), !dbg !3222
  %tobool.not.i273 = icmp ult i32 %add26, 16384, !dbg !3224
  br i1 %tobool.not.i273, label %x264_clip_uint8.exit278, label %cond.true.i275, !dbg !3225

cond.true.i275:                                   ; preds = %x264_clip_uint8.exit272
  %14 = icmp sgt i32 %add25, 31, !dbg !3226
  %shr.i274 = sext i1 %14 to i32, !dbg !3226
  br label %x264_clip_uint8.exit278, !dbg !3225

x264_clip_uint8.exit278:                          ; preds = %x264_clip_uint8.exit272, %cond.true.i275
  %cond.i276 = phi i32 [ %shr.i274, %cond.true.i275 ], [ %shr27, %x264_clip_uint8.exit272 ], !dbg !3225
  %conv.i277 = trunc i32 %cond.i276 to i8, !dbg !3225
  %arrayidx29 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 2, !dbg !3221
  store i8 %conv.i277, ptr %arrayidx29, align 1, !dbg !3221, !tbaa !1474
  %arrayidx30 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 3, !dbg !3227
  %15 = load i8, ptr %arrayidx30, align 1, !dbg !3227, !tbaa !1474
  %conv31 = zext i8 %15 to i32, !dbg !3227
  %mul32 = mul nsw i32 %conv31, %i_weight1, !dbg !3227
  %arrayidx33 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 3, !dbg !3227
  %16 = load i8, ptr %arrayidx33, align 1, !dbg !3227, !tbaa !1474
  %conv34 = zext i8 %16 to i32, !dbg !3227
  %mul35 = mul nsw i32 %sub, %conv34, !dbg !3227
  %add36 = add nsw i32 %mul35, %mul32, !dbg !3227
  %add37 = add nsw i32 %add36, 32, !dbg !3227
  %shr38 = ashr i32 %add37, 6, !dbg !3227
  call void @llvm.dbg.value(metadata i32 %shr38, metadata !1738, metadata !DIExpression()), !dbg !3228
  %tobool.not.i279 = icmp ult i32 %add37, 16384, !dbg !3230
  br i1 %tobool.not.i279, label %x264_clip_uint8.exit284, label %cond.true.i281, !dbg !3231

cond.true.i281:                                   ; preds = %x264_clip_uint8.exit278
  %17 = icmp sgt i32 %add36, 31, !dbg !3232
  %shr.i280 = sext i1 %17 to i32, !dbg !3232
  br label %x264_clip_uint8.exit284, !dbg !3231

x264_clip_uint8.exit284:                          ; preds = %x264_clip_uint8.exit278, %cond.true.i281
  %cond.i282 = phi i32 [ %shr.i280, %cond.true.i281 ], [ %shr38, %x264_clip_uint8.exit278 ], !dbg !3231
  %conv.i283 = trunc i32 %cond.i282 to i8, !dbg !3231
  %arrayidx40 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 3, !dbg !3227
  store i8 %conv.i283, ptr %arrayidx40, align 1, !dbg !3227, !tbaa !1474
  br i1 %cmp41, label %for.inc, label %if.end44, !dbg !3233

if.end44:                                         ; preds = %x264_clip_uint8.exit284
  %arrayidx45 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 4, !dbg !3234
  %18 = load i8, ptr %arrayidx45, align 1, !dbg !3234, !tbaa !1474
  %conv46 = zext i8 %18 to i32, !dbg !3234
  %mul47 = mul nsw i32 %conv46, %i_weight1, !dbg !3234
  %arrayidx48 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 4, !dbg !3234
  %19 = load i8, ptr %arrayidx48, align 1, !dbg !3234, !tbaa !1474
  %conv49 = zext i8 %19 to i32, !dbg !3234
  %mul50 = mul nsw i32 %sub, %conv49, !dbg !3234
  %add51 = add nsw i32 %mul50, %mul47, !dbg !3234
  %add52 = add nsw i32 %add51, 32, !dbg !3234
  %shr53 = ashr i32 %add52, 6, !dbg !3234
  call void @llvm.dbg.value(metadata i32 %shr53, metadata !1738, metadata !DIExpression()), !dbg !3235
  %tobool.not.i285 = icmp ult i32 %add52, 16384, !dbg !3237
  br i1 %tobool.not.i285, label %x264_clip_uint8.exit290, label %cond.true.i287, !dbg !3238

cond.true.i287:                                   ; preds = %if.end44
  %20 = icmp sgt i32 %add51, 31, !dbg !3239
  %shr.i286 = sext i1 %20 to i32, !dbg !3239
  br label %x264_clip_uint8.exit290, !dbg !3238

x264_clip_uint8.exit290:                          ; preds = %if.end44, %cond.true.i287
  %cond.i288 = phi i32 [ %shr.i286, %cond.true.i287 ], [ %shr53, %if.end44 ], !dbg !3238
  %conv.i289 = trunc i32 %cond.i288 to i8, !dbg !3238
  %arrayidx55 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 4, !dbg !3234
  store i8 %conv.i289, ptr %arrayidx55, align 1, !dbg !3234, !tbaa !1474
  %arrayidx56 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 5, !dbg !3240
  %21 = load i8, ptr %arrayidx56, align 1, !dbg !3240, !tbaa !1474
  %conv57 = zext i8 %21 to i32, !dbg !3240
  %mul58 = mul nsw i32 %conv57, %i_weight1, !dbg !3240
  %arrayidx59 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 5, !dbg !3240
  %22 = load i8, ptr %arrayidx59, align 1, !dbg !3240, !tbaa !1474
  %conv60 = zext i8 %22 to i32, !dbg !3240
  %mul61 = mul nsw i32 %sub, %conv60, !dbg !3240
  %add62 = add nsw i32 %mul61, %mul58, !dbg !3240
  %add63 = add nsw i32 %add62, 32, !dbg !3240
  %shr64 = ashr i32 %add63, 6, !dbg !3240
  call void @llvm.dbg.value(metadata i32 %shr64, metadata !1738, metadata !DIExpression()), !dbg !3241
  %tobool.not.i291 = icmp ult i32 %add63, 16384, !dbg !3243
  br i1 %tobool.not.i291, label %x264_clip_uint8.exit296, label %cond.true.i293, !dbg !3244

cond.true.i293:                                   ; preds = %x264_clip_uint8.exit290
  %23 = icmp sgt i32 %add62, 31, !dbg !3245
  %shr.i292 = sext i1 %23 to i32, !dbg !3245
  br label %x264_clip_uint8.exit296, !dbg !3244

x264_clip_uint8.exit296:                          ; preds = %x264_clip_uint8.exit290, %cond.true.i293
  %cond.i294 = phi i32 [ %shr.i292, %cond.true.i293 ], [ %shr64, %x264_clip_uint8.exit290 ], !dbg !3244
  %conv.i295 = trunc i32 %cond.i294 to i8, !dbg !3244
  %arrayidx66 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 5, !dbg !3240
  store i8 %conv.i295, ptr %arrayidx66, align 1, !dbg !3240, !tbaa !1474
  %arrayidx67 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 6, !dbg !3246
  %24 = load i8, ptr %arrayidx67, align 1, !dbg !3246, !tbaa !1474
  %conv68 = zext i8 %24 to i32, !dbg !3246
  %mul69 = mul nsw i32 %conv68, %i_weight1, !dbg !3246
  %arrayidx70 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 6, !dbg !3246
  %25 = load i8, ptr %arrayidx70, align 1, !dbg !3246, !tbaa !1474
  %conv71 = zext i8 %25 to i32, !dbg !3246
  %mul72 = mul nsw i32 %sub, %conv71, !dbg !3246
  %add73 = add nsw i32 %mul72, %mul69, !dbg !3246
  %add74 = add nsw i32 %add73, 32, !dbg !3246
  %shr75 = ashr i32 %add74, 6, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %shr75, metadata !1738, metadata !DIExpression()), !dbg !3247
  %tobool.not.i297 = icmp ult i32 %add74, 16384, !dbg !3249
  br i1 %tobool.not.i297, label %x264_clip_uint8.exit302, label %cond.true.i299, !dbg !3250

cond.true.i299:                                   ; preds = %x264_clip_uint8.exit296
  %26 = icmp sgt i32 %add73, 31, !dbg !3251
  %shr.i298 = sext i1 %26 to i32, !dbg !3251
  br label %x264_clip_uint8.exit302, !dbg !3250

x264_clip_uint8.exit302:                          ; preds = %x264_clip_uint8.exit296, %cond.true.i299
  %cond.i300 = phi i32 [ %shr.i298, %cond.true.i299 ], [ %shr75, %x264_clip_uint8.exit296 ], !dbg !3250
  %conv.i301 = trunc i32 %cond.i300 to i8, !dbg !3250
  %arrayidx77 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 6, !dbg !3246
  store i8 %conv.i301, ptr %arrayidx77, align 1, !dbg !3246, !tbaa !1474
  %arrayidx78 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 7, !dbg !3252
  %27 = load i8, ptr %arrayidx78, align 1, !dbg !3252, !tbaa !1474
  %conv79 = zext i8 %27 to i32, !dbg !3252
  %mul80 = mul nsw i32 %conv79, %i_weight1, !dbg !3252
  %arrayidx81 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 7, !dbg !3252
  %28 = load i8, ptr %arrayidx81, align 1, !dbg !3252, !tbaa !1474
  %conv82 = zext i8 %28 to i32, !dbg !3252
  %mul83 = mul nsw i32 %sub, %conv82, !dbg !3252
  %add84 = add nsw i32 %mul83, %mul80, !dbg !3252
  %add85 = add nsw i32 %add84, 32, !dbg !3252
  %shr86 = ashr i32 %add85, 6, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %shr86, metadata !1738, metadata !DIExpression()), !dbg !3253
  %tobool.not.i303 = icmp ult i32 %add85, 16384, !dbg !3255
  br i1 %tobool.not.i303, label %x264_clip_uint8.exit308, label %cond.true.i305, !dbg !3256

cond.true.i305:                                   ; preds = %x264_clip_uint8.exit302
  %29 = icmp sgt i32 %add84, 31, !dbg !3257
  %shr.i304 = sext i1 %29 to i32, !dbg !3257
  br label %x264_clip_uint8.exit308, !dbg !3256

x264_clip_uint8.exit308:                          ; preds = %x264_clip_uint8.exit302, %cond.true.i305
  %cond.i306 = phi i32 [ %shr.i304, %cond.true.i305 ], [ %shr86, %x264_clip_uint8.exit302 ], !dbg !3256
  %conv.i307 = trunc i32 %cond.i306 to i8, !dbg !3256
  %arrayidx88 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 7, !dbg !3252
  store i8 %conv.i307, ptr %arrayidx88, align 1, !dbg !3252, !tbaa !1474
  br i1 %cmp89, label %for.inc, label %if.end92, !dbg !3258

if.end92:                                         ; preds = %x264_clip_uint8.exit308
  %arrayidx93 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 8, !dbg !3259
  %30 = load i8, ptr %arrayidx93, align 1, !dbg !3259, !tbaa !1474
  %conv94 = zext i8 %30 to i32, !dbg !3259
  %mul95 = mul nsw i32 %conv94, %i_weight1, !dbg !3259
  %arrayidx96 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 8, !dbg !3259
  %31 = load i8, ptr %arrayidx96, align 1, !dbg !3259, !tbaa !1474
  %conv97 = zext i8 %31 to i32, !dbg !3259
  %mul98 = mul nsw i32 %sub, %conv97, !dbg !3259
  %add99 = add nsw i32 %mul98, %mul95, !dbg !3259
  %add100 = add nsw i32 %add99, 32, !dbg !3259
  %shr101 = ashr i32 %add100, 6, !dbg !3259
  call void @llvm.dbg.value(metadata i32 %shr101, metadata !1738, metadata !DIExpression()), !dbg !3260
  %tobool.not.i309 = icmp ult i32 %add100, 16384, !dbg !3262
  br i1 %tobool.not.i309, label %x264_clip_uint8.exit314, label %cond.true.i311, !dbg !3263

cond.true.i311:                                   ; preds = %if.end92
  %32 = icmp sgt i32 %add99, 31, !dbg !3264
  %shr.i310 = sext i1 %32 to i32, !dbg !3264
  br label %x264_clip_uint8.exit314, !dbg !3263

x264_clip_uint8.exit314:                          ; preds = %if.end92, %cond.true.i311
  %cond.i312 = phi i32 [ %shr.i310, %cond.true.i311 ], [ %shr101, %if.end92 ], !dbg !3263
  %conv.i313 = trunc i32 %cond.i312 to i8, !dbg !3263
  %arrayidx103 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 8, !dbg !3259
  store i8 %conv.i313, ptr %arrayidx103, align 1, !dbg !3259, !tbaa !1474
  %arrayidx104 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 9, !dbg !3265
  %33 = load i8, ptr %arrayidx104, align 1, !dbg !3265, !tbaa !1474
  %conv105 = zext i8 %33 to i32, !dbg !3265
  %mul106 = mul nsw i32 %conv105, %i_weight1, !dbg !3265
  %arrayidx107 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 9, !dbg !3265
  %34 = load i8, ptr %arrayidx107, align 1, !dbg !3265, !tbaa !1474
  %conv108 = zext i8 %34 to i32, !dbg !3265
  %mul109 = mul nsw i32 %sub, %conv108, !dbg !3265
  %add110 = add nsw i32 %mul109, %mul106, !dbg !3265
  %add111 = add nsw i32 %add110, 32, !dbg !3265
  %shr112 = ashr i32 %add111, 6, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %shr112, metadata !1738, metadata !DIExpression()), !dbg !3266
  %tobool.not.i315 = icmp ult i32 %add111, 16384, !dbg !3268
  br i1 %tobool.not.i315, label %x264_clip_uint8.exit320, label %cond.true.i317, !dbg !3269

cond.true.i317:                                   ; preds = %x264_clip_uint8.exit314
  %35 = icmp sgt i32 %add110, 31, !dbg !3270
  %shr.i316 = sext i1 %35 to i32, !dbg !3270
  br label %x264_clip_uint8.exit320, !dbg !3269

x264_clip_uint8.exit320:                          ; preds = %x264_clip_uint8.exit314, %cond.true.i317
  %cond.i318 = phi i32 [ %shr.i316, %cond.true.i317 ], [ %shr112, %x264_clip_uint8.exit314 ], !dbg !3269
  %conv.i319 = trunc i32 %cond.i318 to i8, !dbg !3269
  %arrayidx114 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 9, !dbg !3265
  store i8 %conv.i319, ptr %arrayidx114, align 1, !dbg !3265, !tbaa !1474
  %arrayidx115 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 10, !dbg !3271
  %36 = load i8, ptr %arrayidx115, align 1, !dbg !3271, !tbaa !1474
  %conv116 = zext i8 %36 to i32, !dbg !3271
  %mul117 = mul nsw i32 %conv116, %i_weight1, !dbg !3271
  %arrayidx118 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 10, !dbg !3271
  %37 = load i8, ptr %arrayidx118, align 1, !dbg !3271, !tbaa !1474
  %conv119 = zext i8 %37 to i32, !dbg !3271
  %mul120 = mul nsw i32 %sub, %conv119, !dbg !3271
  %add121 = add nsw i32 %mul120, %mul117, !dbg !3271
  %add122 = add nsw i32 %add121, 32, !dbg !3271
  %shr123 = ashr i32 %add122, 6, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %shr123, metadata !1738, metadata !DIExpression()), !dbg !3272
  %tobool.not.i321 = icmp ult i32 %add122, 16384, !dbg !3274
  br i1 %tobool.not.i321, label %x264_clip_uint8.exit326, label %cond.true.i323, !dbg !3275

cond.true.i323:                                   ; preds = %x264_clip_uint8.exit320
  %38 = icmp sgt i32 %add121, 31, !dbg !3276
  %shr.i322 = sext i1 %38 to i32, !dbg !3276
  br label %x264_clip_uint8.exit326, !dbg !3275

x264_clip_uint8.exit326:                          ; preds = %x264_clip_uint8.exit320, %cond.true.i323
  %cond.i324 = phi i32 [ %shr.i322, %cond.true.i323 ], [ %shr123, %x264_clip_uint8.exit320 ], !dbg !3275
  %conv.i325 = trunc i32 %cond.i324 to i8, !dbg !3275
  %arrayidx125 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 10, !dbg !3271
  store i8 %conv.i325, ptr %arrayidx125, align 1, !dbg !3271, !tbaa !1474
  %arrayidx126 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 11, !dbg !3277
  %39 = load i8, ptr %arrayidx126, align 1, !dbg !3277, !tbaa !1474
  %conv127 = zext i8 %39 to i32, !dbg !3277
  %mul128 = mul nsw i32 %conv127, %i_weight1, !dbg !3277
  %arrayidx129 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 11, !dbg !3277
  %40 = load i8, ptr %arrayidx129, align 1, !dbg !3277, !tbaa !1474
  %conv130 = zext i8 %40 to i32, !dbg !3277
  %mul131 = mul nsw i32 %sub, %conv130, !dbg !3277
  %add132 = add nsw i32 %mul131, %mul128, !dbg !3277
  %add133 = add nsw i32 %add132, 32, !dbg !3277
  %shr134 = ashr i32 %add133, 6, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %shr134, metadata !1738, metadata !DIExpression()), !dbg !3278
  %tobool.not.i327 = icmp ult i32 %add133, 16384, !dbg !3280
  br i1 %tobool.not.i327, label %x264_clip_uint8.exit332, label %cond.true.i329, !dbg !3281

cond.true.i329:                                   ; preds = %x264_clip_uint8.exit326
  %41 = icmp sgt i32 %add132, 31, !dbg !3282
  %shr.i328 = sext i1 %41 to i32, !dbg !3282
  br label %x264_clip_uint8.exit332, !dbg !3281

x264_clip_uint8.exit332:                          ; preds = %x264_clip_uint8.exit326, %cond.true.i329
  %cond.i330 = phi i32 [ %shr.i328, %cond.true.i329 ], [ %shr134, %x264_clip_uint8.exit326 ], !dbg !3281
  %conv.i331 = trunc i32 %cond.i330 to i8, !dbg !3281
  %arrayidx136 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 11, !dbg !3277
  store i8 %conv.i331, ptr %arrayidx136, align 1, !dbg !3277, !tbaa !1474
  %arrayidx137 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 12, !dbg !3283
  %42 = load i8, ptr %arrayidx137, align 1, !dbg !3283, !tbaa !1474
  %conv138 = zext i8 %42 to i32, !dbg !3283
  %mul139 = mul nsw i32 %conv138, %i_weight1, !dbg !3283
  %arrayidx140 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 12, !dbg !3283
  %43 = load i8, ptr %arrayidx140, align 1, !dbg !3283, !tbaa !1474
  %conv141 = zext i8 %43 to i32, !dbg !3283
  %mul142 = mul nsw i32 %sub, %conv141, !dbg !3283
  %add143 = add nsw i32 %mul142, %mul139, !dbg !3283
  %add144 = add nsw i32 %add143, 32, !dbg !3283
  %shr145 = ashr i32 %add144, 6, !dbg !3283
  call void @llvm.dbg.value(metadata i32 %shr145, metadata !1738, metadata !DIExpression()), !dbg !3284
  %tobool.not.i333 = icmp ult i32 %add144, 16384, !dbg !3286
  br i1 %tobool.not.i333, label %x264_clip_uint8.exit338, label %cond.true.i335, !dbg !3287

cond.true.i335:                                   ; preds = %x264_clip_uint8.exit332
  %44 = icmp sgt i32 %add143, 31, !dbg !3288
  %shr.i334 = sext i1 %44 to i32, !dbg !3288
  br label %x264_clip_uint8.exit338, !dbg !3287

x264_clip_uint8.exit338:                          ; preds = %x264_clip_uint8.exit332, %cond.true.i335
  %cond.i336 = phi i32 [ %shr.i334, %cond.true.i335 ], [ %shr145, %x264_clip_uint8.exit332 ], !dbg !3287
  %conv.i337 = trunc i32 %cond.i336 to i8, !dbg !3287
  %arrayidx147 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 12, !dbg !3283
  store i8 %conv.i337, ptr %arrayidx147, align 1, !dbg !3283, !tbaa !1474
  %arrayidx148 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 13, !dbg !3289
  %45 = load i8, ptr %arrayidx148, align 1, !dbg !3289, !tbaa !1474
  %conv149 = zext i8 %45 to i32, !dbg !3289
  %mul150 = mul nsw i32 %conv149, %i_weight1, !dbg !3289
  %arrayidx151 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 13, !dbg !3289
  %46 = load i8, ptr %arrayidx151, align 1, !dbg !3289, !tbaa !1474
  %conv152 = zext i8 %46 to i32, !dbg !3289
  %mul153 = mul nsw i32 %sub, %conv152, !dbg !3289
  %add154 = add nsw i32 %mul153, %mul150, !dbg !3289
  %add155 = add nsw i32 %add154, 32, !dbg !3289
  %shr156 = ashr i32 %add155, 6, !dbg !3289
  call void @llvm.dbg.value(metadata i32 %shr156, metadata !1738, metadata !DIExpression()), !dbg !3290
  %tobool.not.i339 = icmp ult i32 %add155, 16384, !dbg !3292
  br i1 %tobool.not.i339, label %x264_clip_uint8.exit344, label %cond.true.i341, !dbg !3293

cond.true.i341:                                   ; preds = %x264_clip_uint8.exit338
  %47 = icmp sgt i32 %add154, 31, !dbg !3294
  %shr.i340 = sext i1 %47 to i32, !dbg !3294
  br label %x264_clip_uint8.exit344, !dbg !3293

x264_clip_uint8.exit344:                          ; preds = %x264_clip_uint8.exit338, %cond.true.i341
  %cond.i342 = phi i32 [ %shr.i340, %cond.true.i341 ], [ %shr156, %x264_clip_uint8.exit338 ], !dbg !3293
  %conv.i343 = trunc i32 %cond.i342 to i8, !dbg !3293
  %arrayidx158 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 13, !dbg !3289
  store i8 %conv.i343, ptr %arrayidx158, align 1, !dbg !3289, !tbaa !1474
  %arrayidx159 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 14, !dbg !3295
  %48 = load i8, ptr %arrayidx159, align 1, !dbg !3295, !tbaa !1474
  %conv160 = zext i8 %48 to i32, !dbg !3295
  %mul161 = mul nsw i32 %conv160, %i_weight1, !dbg !3295
  %arrayidx162 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 14, !dbg !3295
  %49 = load i8, ptr %arrayidx162, align 1, !dbg !3295, !tbaa !1474
  %conv163 = zext i8 %49 to i32, !dbg !3295
  %mul164 = mul nsw i32 %sub, %conv163, !dbg !3295
  %add165 = add nsw i32 %mul164, %mul161, !dbg !3295
  %add166 = add nsw i32 %add165, 32, !dbg !3295
  %shr167 = ashr i32 %add166, 6, !dbg !3295
  call void @llvm.dbg.value(metadata i32 %shr167, metadata !1738, metadata !DIExpression()), !dbg !3296
  %tobool.not.i345 = icmp ult i32 %add166, 16384, !dbg !3298
  br i1 %tobool.not.i345, label %x264_clip_uint8.exit350, label %cond.true.i347, !dbg !3299

cond.true.i347:                                   ; preds = %x264_clip_uint8.exit344
  %50 = icmp sgt i32 %add165, 31, !dbg !3300
  %shr.i346 = sext i1 %50 to i32, !dbg !3300
  br label %x264_clip_uint8.exit350, !dbg !3299

x264_clip_uint8.exit350:                          ; preds = %x264_clip_uint8.exit344, %cond.true.i347
  %cond.i348 = phi i32 [ %shr.i346, %cond.true.i347 ], [ %shr167, %x264_clip_uint8.exit344 ], !dbg !3299
  %conv.i349 = trunc i32 %cond.i348 to i8, !dbg !3299
  %arrayidx169 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 14, !dbg !3295
  store i8 %conv.i349, ptr %arrayidx169, align 1, !dbg !3295, !tbaa !1474
  %arrayidx170 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 15, !dbg !3301
  %51 = load i8, ptr %arrayidx170, align 1, !dbg !3301, !tbaa !1474
  %conv171 = zext i8 %51 to i32, !dbg !3301
  %mul172 = mul nsw i32 %conv171, %i_weight1, !dbg !3301
  %arrayidx173 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 15, !dbg !3301
  %52 = load i8, ptr %arrayidx173, align 1, !dbg !3301, !tbaa !1474
  %conv174 = zext i8 %52 to i32, !dbg !3301
  %mul175 = mul nsw i32 %sub, %conv174, !dbg !3301
  %add176 = add nsw i32 %mul175, %mul172, !dbg !3301
  %add177 = add nsw i32 %add176, 32, !dbg !3301
  %shr178 = ashr i32 %add177, 6, !dbg !3301
  call void @llvm.dbg.value(metadata i32 %shr178, metadata !1738, metadata !DIExpression()), !dbg !3302
  %tobool.not.i351 = icmp ult i32 %add177, 16384, !dbg !3304
  br i1 %tobool.not.i351, label %x264_clip_uint8.exit356, label %cond.true.i353, !dbg !3305

cond.true.i353:                                   ; preds = %x264_clip_uint8.exit350
  %53 = icmp sgt i32 %add176, 31, !dbg !3306
  %shr.i352 = sext i1 %53 to i32, !dbg !3306
  br label %x264_clip_uint8.exit356, !dbg !3305

x264_clip_uint8.exit356:                          ; preds = %x264_clip_uint8.exit350, %cond.true.i353
  %cond.i354 = phi i32 [ %shr.i352, %cond.true.i353 ], [ %shr178, %x264_clip_uint8.exit350 ], !dbg !3305
  %conv.i355 = trunc i32 %cond.i354 to i8, !dbg !3305
  %arrayidx180 = getelementptr inbounds i8, ptr %dst.addr.0362, i64 15, !dbg !3301
  store i8 %conv.i355, ptr %arrayidx180, align 1, !dbg !3301, !tbaa !1474
  br label %for.inc, !dbg !3307

for.inc:                                          ; preds = %x264_clip_uint8.exit308, %x264_clip_uint8.exit284, %x264_clip_uint8.exit356
  %inc = add nuw nsw i32 %y.0364, 1, !dbg !3214
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2345, metadata !DIExpression()), !dbg !3198
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.0362, i64 %idx.ext, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2330, metadata !DIExpression()), !dbg !3196
  %add.ptr182 = getelementptr inbounds i8, ptr %src1.addr.0360, i64 %idx.ext181, !dbg !3216
  call void @llvm.dbg.value(metadata ptr %add.ptr182, metadata !2336, metadata !DIExpression()), !dbg !3196
  %add.ptr184 = getelementptr inbounds i8, ptr %src2.addr.0358, i64 %idx.ext183, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %add.ptr184, metadata !2338, metadata !DIExpression()), !dbg !3196
  %exitcond.not = icmp eq i32 %inc, %height, !dbg !3199
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !3200, !llvm.loop !3218
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w2(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3308 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3312, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3313, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %src, metadata !3314, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3315, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3316, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %height, metadata !3317, metadata !DIExpression()), !dbg !3331
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3332
  %0 = load i32, ptr %i_denom, align 16, !dbg !3332, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3332
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3333
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3334

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3325, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3312, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %src, metadata !3314, metadata !DIExpression()), !dbg !3331
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3336

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3336

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3318, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3312, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %src, metadata !3314, metadata !DIExpression()), !dbg !3331
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3338

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3338

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3318, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3312, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3314, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()), !dbg !3339
  br label %for.body5, !dbg !3340

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3318, metadata !DIExpression()), !dbg !3337
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3312, metadata !DIExpression()), !dbg !3331
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3314, metadata !DIExpression()), !dbg !3331
  %exitcond93.not = icmp eq i32 %inc12, %height, !dbg !3341
  br i1 %exitcond93.not, label %if.end, label %for.cond2.preheader, !dbg !3338, !llvm.loop !3342

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %cmp3 = phi i1 [ true, %for.cond2.preheader ], [ false, %x264_clip_uint8.exit ]
  %indvars.iv90 = phi i64 [ 0, %for.cond2.preheader ], [ 1, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv90, metadata !3322, metadata !DIExpression()), !dbg !3339
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv90, !dbg !3343
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3343, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3343
  %2 = load i32, ptr %i_scale, align 4, !dbg !3343, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3343
  %3 = load i32, ptr %i_denom, align 16, !dbg !3343, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3343
  %shl = shl nuw i32 1, %sub, !dbg !3343
  %add = add nsw i32 %shl, %mul, !dbg !3343
  %shr = ashr i32 %add, %3, !dbg !3343
  %4 = load i32, ptr %i_offset, align 8, !dbg !3343, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3343
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3345
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3347
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3348

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3349
  %shr.i = sext i1 %5 to i32, !dbg !3349
  br label %x264_clip_uint8.exit, !dbg !3348

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3348
  %conv.i = trunc i32 %cond.i to i8, !dbg !3348
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv90, !dbg !3343
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3343, !tbaa !1474
  call void @llvm.dbg.value(metadata i64 %indvars.iv90, metadata !3322, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3339
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !3340, !llvm.loop !3350

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3325, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3312, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3314, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 0, metadata !3328, metadata !DIExpression()), !dbg !3351
  br label %for.body27, !dbg !3352

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3325, metadata !DIExpression()), !dbg !3335
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3312, metadata !DIExpression()), !dbg !3331
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3314, metadata !DIExpression()), !dbg !3331
  %exitcond.not = icmp eq i32 %inc42, %height, !dbg !3353
  br i1 %exitcond.not, label %if.end, label %for.cond23.preheader, !dbg !3336, !llvm.loop !3354

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %cmp24 = phi i1 [ true, %for.cond23.preheader ], [ false, %x264_clip_uint8.exit76 ]
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ 1, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3328, metadata !DIExpression()), !dbg !3351
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3355
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3355, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3355
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3355, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3355
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3355, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3355
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3357
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3359
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3360

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3361
  %shr.i72 = sext i1 %9 to i32, !dbg !3361
  br label %x264_clip_uint8.exit76, !dbg !3360

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3360
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3360
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3355
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3355, !tbaa !1474
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3328, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3351
  br i1 %cmp24, label %for.body27, label %for.cond.cleanup26, !dbg !3352, !llvm.loop !3362

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3334
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w4(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3363 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3365, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3366, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %src, metadata !3367, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3368, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3369, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %height, metadata !3370, metadata !DIExpression()), !dbg !3384
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3385
  %0 = load i32, ptr %i_denom, align 16, !dbg !3385, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3385
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3386
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3387

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3378, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3365, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %src, metadata !3367, metadata !DIExpression()), !dbg !3384
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3389

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3389

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3371, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3365, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %src, metadata !3367, metadata !DIExpression()), !dbg !3384
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3391

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3391

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3371, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3365, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3367, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 0, metadata !3375, metadata !DIExpression()), !dbg !3392
  br label %for.body5, !dbg !3393

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3394
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3371, metadata !DIExpression()), !dbg !3390
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3365, metadata !DIExpression()), !dbg !3384
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3394
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3367, metadata !DIExpression()), !dbg !3384
  %exitcond95.not = icmp eq i32 %inc12, %height, !dbg !3394
  br i1 %exitcond95.not, label %if.end, label %for.cond2.preheader, !dbg !3391, !llvm.loop !3395

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %indvars.iv91 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next92, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv91, metadata !3375, metadata !DIExpression()), !dbg !3392
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv91, !dbg !3396
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3396, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3396
  %2 = load i32, ptr %i_scale, align 4, !dbg !3396, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3396
  %3 = load i32, ptr %i_denom, align 16, !dbg !3396, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3396
  %shl = shl nuw i32 1, %sub, !dbg !3396
  %add = add nsw i32 %shl, %mul, !dbg !3396
  %shr = ashr i32 %add, %3, !dbg !3396
  %4 = load i32, ptr %i_offset, align 8, !dbg !3396, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3396
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3398
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3400
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3401

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3402
  %shr.i = sext i1 %5 to i32, !dbg !3402
  br label %x264_clip_uint8.exit, !dbg !3401

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3401
  %conv.i = trunc i32 %cond.i to i8, !dbg !3401
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv91, !dbg !3396
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3396, !tbaa !1474
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !3396
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next92, metadata !3375, metadata !DIExpression()), !dbg !3392
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 4, !dbg !3396
  br i1 %exitcond94.not, label %for.cond.cleanup4, label %for.body5, !dbg !3393, !llvm.loop !3403

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3378, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3365, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3367, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 0, metadata !3381, metadata !DIExpression()), !dbg !3404
  br label %for.body27, !dbg !3405

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3378, metadata !DIExpression()), !dbg !3388
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3365, metadata !DIExpression()), !dbg !3384
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3406
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3367, metadata !DIExpression()), !dbg !3384
  %exitcond90.not = icmp eq i32 %inc42, %height, !dbg !3406
  br i1 %exitcond90.not, label %if.end, label %for.cond23.preheader, !dbg !3389, !llvm.loop !3407

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3381, metadata !DIExpression()), !dbg !3404
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3408
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3408, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3408
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3408, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3408
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3408, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3408
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3410
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3412
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3413

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3414
  %shr.i72 = sext i1 %9 to i32, !dbg !3414
  br label %x264_clip_uint8.exit76, !dbg !3413

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3413
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3413
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3408
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3408, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3381, metadata !DIExpression()), !dbg !3404
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !3408
  br i1 %exitcond.not, label %for.cond.cleanup26, label %for.body27, !dbg !3405, !llvm.loop !3415

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3387
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w8(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3416 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3418, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3419, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %src, metadata !3420, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3421, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3422, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 %height, metadata !3423, metadata !DIExpression()), !dbg !3437
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3438
  %0 = load i32, ptr %i_denom, align 16, !dbg !3438, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3438
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3439
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3440

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3418, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %src, metadata !3420, metadata !DIExpression()), !dbg !3437
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3442

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3442

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3424, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3418, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %src, metadata !3420, metadata !DIExpression()), !dbg !3437
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3444

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3444

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3424, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3418, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3420, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !3428, metadata !DIExpression()), !dbg !3445
  br label %for.body5, !dbg !3446

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3447
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3424, metadata !DIExpression()), !dbg !3443
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3418, metadata !DIExpression()), !dbg !3437
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3447
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3420, metadata !DIExpression()), !dbg !3437
  %exitcond95.not = icmp eq i32 %inc12, %height, !dbg !3447
  br i1 %exitcond95.not, label %if.end, label %for.cond2.preheader, !dbg !3444, !llvm.loop !3448

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %indvars.iv91 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next92, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv91, metadata !3428, metadata !DIExpression()), !dbg !3445
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv91, !dbg !3449
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3449, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3449
  %2 = load i32, ptr %i_scale, align 4, !dbg !3449, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3449
  %3 = load i32, ptr %i_denom, align 16, !dbg !3449, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3449
  %shl = shl nuw i32 1, %sub, !dbg !3449
  %add = add nsw i32 %shl, %mul, !dbg !3449
  %shr = ashr i32 %add, %3, !dbg !3449
  %4 = load i32, ptr %i_offset, align 8, !dbg !3449, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3451
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3453
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3454

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3455
  %shr.i = sext i1 %5 to i32, !dbg !3455
  br label %x264_clip_uint8.exit, !dbg !3454

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3454
  %conv.i = trunc i32 %cond.i to i8, !dbg !3454
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv91, !dbg !3449
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3449, !tbaa !1474
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next92, metadata !3428, metadata !DIExpression()), !dbg !3445
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 8, !dbg !3449
  br i1 %exitcond94.not, label %for.cond.cleanup4, label %for.body5, !dbg !3446, !llvm.loop !3456

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3431, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3418, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3420, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i32 0, metadata !3434, metadata !DIExpression()), !dbg !3457
  br label %for.body27, !dbg !3458

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3459
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3431, metadata !DIExpression()), !dbg !3441
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3418, metadata !DIExpression()), !dbg !3437
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3420, metadata !DIExpression()), !dbg !3437
  %exitcond90.not = icmp eq i32 %inc42, %height, !dbg !3459
  br i1 %exitcond90.not, label %if.end, label %for.cond23.preheader, !dbg !3442, !llvm.loop !3460

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3434, metadata !DIExpression()), !dbg !3457
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3461
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3461, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3461
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3461, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3461
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3461, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3461
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3463
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3465
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3466

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3467
  %shr.i72 = sext i1 %9 to i32, !dbg !3467
  br label %x264_clip_uint8.exit76, !dbg !3466

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3466
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3466
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3461
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3461, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3434, metadata !DIExpression()), !dbg !3457
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !3461
  br i1 %exitcond.not, label %for.cond.cleanup26, label %for.body27, !dbg !3458, !llvm.loop !3468

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3440
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w12(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3469 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3472, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %src, metadata !3473, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3474, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3475, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %height, metadata !3476, metadata !DIExpression()), !dbg !3490
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3491
  %0 = load i32, ptr %i_denom, align 16, !dbg !3491, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3491
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3492
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3493

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3484, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %src, metadata !3473, metadata !DIExpression()), !dbg !3490
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3495

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3495

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3477, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %src, metadata !3473, metadata !DIExpression()), !dbg !3490
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3497

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3497

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3477, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3473, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()), !dbg !3498
  br label %for.body5, !dbg !3499

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3477, metadata !DIExpression()), !dbg !3496
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3471, metadata !DIExpression()), !dbg !3490
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3473, metadata !DIExpression()), !dbg !3490
  %exitcond95.not = icmp eq i32 %inc12, %height, !dbg !3500
  br i1 %exitcond95.not, label %if.end, label %for.cond2.preheader, !dbg !3497, !llvm.loop !3501

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %indvars.iv91 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next92, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv91, metadata !3481, metadata !DIExpression()), !dbg !3498
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv91, !dbg !3502
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3502, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3502
  %2 = load i32, ptr %i_scale, align 4, !dbg !3502, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3502
  %3 = load i32, ptr %i_denom, align 16, !dbg !3502, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3502
  %shl = shl nuw i32 1, %sub, !dbg !3502
  %add = add nsw i32 %shl, %mul, !dbg !3502
  %shr = ashr i32 %add, %3, !dbg !3502
  %4 = load i32, ptr %i_offset, align 8, !dbg !3502, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3504
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3506
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3507

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3508
  %shr.i = sext i1 %5 to i32, !dbg !3508
  br label %x264_clip_uint8.exit, !dbg !3507

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3507
  %conv.i = trunc i32 %cond.i to i8, !dbg !3507
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv91, !dbg !3502
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3502, !tbaa !1474
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !3502
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next92, metadata !3481, metadata !DIExpression()), !dbg !3498
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 12, !dbg !3502
  br i1 %exitcond94.not, label %for.cond.cleanup4, label %for.body5, !dbg !3499, !llvm.loop !3509

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3484, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3471, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3473, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 0, metadata !3487, metadata !DIExpression()), !dbg !3510
  br label %for.body27, !dbg !3511

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3484, metadata !DIExpression()), !dbg !3494
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3471, metadata !DIExpression()), !dbg !3490
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3473, metadata !DIExpression()), !dbg !3490
  %exitcond90.not = icmp eq i32 %inc42, %height, !dbg !3512
  br i1 %exitcond90.not, label %if.end, label %for.cond23.preheader, !dbg !3495, !llvm.loop !3513

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3487, metadata !DIExpression()), !dbg !3510
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3514
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3514, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3514
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3514, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3514
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3514, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3516
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3518
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3519

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3520
  %shr.i72 = sext i1 %9 to i32, !dbg !3520
  br label %x264_clip_uint8.exit76, !dbg !3519

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3519
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3519
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3514
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3514, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3487, metadata !DIExpression()), !dbg !3510
  %exitcond.not = icmp eq i64 %indvars.iv.next, 12, !dbg !3514
  br i1 %exitcond.not, label %for.cond.cleanup26, label %for.body27, !dbg !3511, !llvm.loop !3521

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3493
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w16(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3522 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3525, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %src, metadata !3526, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3527, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3528, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 %height, metadata !3529, metadata !DIExpression()), !dbg !3543
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3544
  %0 = load i32, ptr %i_denom, align 16, !dbg !3544, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3544
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3545
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3546

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3537, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %src, metadata !3526, metadata !DIExpression()), !dbg !3543
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3548

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3548

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3530, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %src, metadata !3526, metadata !DIExpression()), !dbg !3543
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3550

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3550

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3530, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3526, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3534, metadata !DIExpression()), !dbg !3551
  br label %for.body5, !dbg !3552

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3530, metadata !DIExpression()), !dbg !3549
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3524, metadata !DIExpression()), !dbg !3543
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3553
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3526, metadata !DIExpression()), !dbg !3543
  %exitcond95.not = icmp eq i32 %inc12, %height, !dbg !3553
  br i1 %exitcond95.not, label %if.end, label %for.cond2.preheader, !dbg !3550, !llvm.loop !3554

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %indvars.iv91 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next92, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv91, metadata !3534, metadata !DIExpression()), !dbg !3551
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv91, !dbg !3555
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3555, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3555
  %2 = load i32, ptr %i_scale, align 4, !dbg !3555, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3555
  %3 = load i32, ptr %i_denom, align 16, !dbg !3555, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3555
  %shl = shl nuw i32 1, %sub, !dbg !3555
  %add = add nsw i32 %shl, %mul, !dbg !3555
  %shr = ashr i32 %add, %3, !dbg !3555
  %4 = load i32, ptr %i_offset, align 8, !dbg !3555, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3557
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3559
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3560

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3561
  %shr.i = sext i1 %5 to i32, !dbg !3561
  br label %x264_clip_uint8.exit, !dbg !3560

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3560
  %conv.i = trunc i32 %cond.i to i8, !dbg !3560
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv91, !dbg !3555
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3555, !tbaa !1474
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next92, metadata !3534, metadata !DIExpression()), !dbg !3551
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 16, !dbg !3555
  br i1 %exitcond94.not, label %for.cond.cleanup4, label %for.body5, !dbg !3552, !llvm.loop !3562

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3537, metadata !DIExpression()), !dbg !3547
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3524, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3526, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i32 0, metadata !3540, metadata !DIExpression()), !dbg !3563
  br label %for.body27, !dbg !3564

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3537, metadata !DIExpression()), !dbg !3547
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3565
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3524, metadata !DIExpression()), !dbg !3543
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3565
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3526, metadata !DIExpression()), !dbg !3543
  %exitcond90.not = icmp eq i32 %inc42, %height, !dbg !3565
  br i1 %exitcond90.not, label %if.end, label %for.cond23.preheader, !dbg !3548, !llvm.loop !3566

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3540, metadata !DIExpression()), !dbg !3563
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3567
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3567, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3567
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3567, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3567
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3567, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3567
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3569
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3571
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3572

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3573
  %shr.i72 = sext i1 %9 to i32, !dbg !3573
  br label %x264_clip_uint8.exit76, !dbg !3572

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3572
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3572
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3567
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3567, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3540, metadata !DIExpression()), !dbg !3563
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !3567
  br i1 %exitcond.not, label %for.cond.cleanup26, label %for.body27, !dbg !3564, !llvm.loop !3574

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3546
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @mc_weight_w20(ptr nocapture noundef writeonly %dst, i32 noundef %i_dst_stride, ptr nocapture noundef readonly %src, i32 noundef %i_src_stride, ptr nocapture noundef readonly %weight, i32 noundef %height) #6 !dbg !3575 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3577, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !3578, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %src, metadata !3579, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !3580, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %weight, metadata !3581, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 %height, metadata !3582, metadata !DIExpression()), !dbg !3596
  %i_denom = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 2, !dbg !3597
  %0 = load i32, ptr %i_denom, align 16, !dbg !3597, !tbaa !1727
  %cmp = icmp sgt i32 %0, 0, !dbg !3597
  %cmp184 = icmp sgt i32 %height, 0, !dbg !3598
  br i1 %cmp, label %for.cond.preheader, label %for.cond17.preheader, !dbg !3599

for.cond17.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3590, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3577, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %src, metadata !3579, metadata !DIExpression()), !dbg !3596
  br i1 %cmp184, label %for.cond23.preheader.lr.ph, label %if.end, !dbg !3601

for.cond23.preheader.lr.ph:                       ; preds = %for.cond17.preheader
  %i_scale31 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset33 = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext43 = sext i32 %i_dst_stride to i64
  %idx.ext45 = sext i32 %i_src_stride to i64
  br label %for.cond23.preheader, !dbg !3601

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %dst, metadata !3577, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %src, metadata !3579, metadata !DIExpression()), !dbg !3596
  br i1 %cmp184, label %for.cond2.preheader.lr.ph, label %if.end, !dbg !3603

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %i_scale = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 3
  %i_offset = getelementptr inbounds %struct.x264_weight_t, ptr %weight, i64 0, i32 4
  %idx.ext = sext i32 %i_dst_stride to i64
  %idx.ext13 = sext i32 %i_src_stride to i64
  br label %for.cond2.preheader, !dbg !3603

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.cond.cleanup4
  %y.087 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc12, %for.cond.cleanup4 ]
  %dst.addr.086 = phi ptr [ %dst, %for.cond2.preheader.lr.ph ], [ %add.ptr, %for.cond.cleanup4 ]
  %src.addr.085 = phi ptr [ %src, %for.cond2.preheader.lr.ph ], [ %add.ptr14, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %y.087, metadata !3583, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata ptr %dst.addr.086, metadata !3577, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %src.addr.085, metadata !3579, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3604
  br label %for.body5, !dbg !3605

for.cond.cleanup4:                                ; preds = %x264_clip_uint8.exit
  %inc12 = add nuw nsw i32 %y.087, 1, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %inc12, metadata !3583, metadata !DIExpression()), !dbg !3602
  %add.ptr = getelementptr inbounds i8, ptr %dst.addr.086, i64 %idx.ext, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3577, metadata !DIExpression()), !dbg !3596
  %add.ptr14 = getelementptr inbounds i8, ptr %src.addr.085, i64 %idx.ext13, !dbg !3606
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !3579, metadata !DIExpression()), !dbg !3596
  %exitcond95.not = icmp eq i32 %inc12, %height, !dbg !3606
  br i1 %exitcond95.not, label %if.end, label %for.cond2.preheader, !dbg !3603, !llvm.loop !3607

for.body5:                                        ; preds = %for.cond2.preheader, %x264_clip_uint8.exit
  %indvars.iv91 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next92, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv91, metadata !3587, metadata !DIExpression()), !dbg !3604
  %arrayidx = getelementptr inbounds i8, ptr %src.addr.085, i64 %indvars.iv91, !dbg !3608
  %1 = load i8, ptr %arrayidx, align 1, !dbg !3608, !tbaa !1474
  %conv = zext i8 %1 to i32, !dbg !3608
  %2 = load i32, ptr %i_scale, align 4, !dbg !3608, !tbaa !1736
  %mul = mul nsw i32 %2, %conv, !dbg !3608
  %3 = load i32, ptr %i_denom, align 16, !dbg !3608, !tbaa !1727
  %sub = add nsw i32 %3, -1, !dbg !3608
  %shl = shl nuw i32 1, %sub, !dbg !3608
  %add = add nsw i32 %shl, %mul, !dbg !3608
  %shr = ashr i32 %add, %3, !dbg !3608
  %4 = load i32, ptr %i_offset, align 8, !dbg !3608, !tbaa !1737
  %add8 = add nsw i32 %shr, %4, !dbg !3608
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1738, metadata !DIExpression()), !dbg !3610
  %tobool.not.i = icmp ult i32 %add8, 256, !dbg !3612
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !3613

cond.true.i:                                      ; preds = %for.body5
  %5 = icmp sgt i32 %add8, 0, !dbg !3614
  %shr.i = sext i1 %5 to i32, !dbg !3614
  br label %x264_clip_uint8.exit, !dbg !3613

x264_clip_uint8.exit:                             ; preds = %for.body5, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add8, %for.body5 ], !dbg !3613
  %conv.i = trunc i32 %cond.i to i8, !dbg !3613
  %arrayidx10 = getelementptr inbounds i8, ptr %dst.addr.086, i64 %indvars.iv91, !dbg !3608
  store i8 %conv.i, ptr %arrayidx10, align 1, !dbg !3608, !tbaa !1474
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next92, metadata !3587, metadata !DIExpression()), !dbg !3604
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, 20, !dbg !3608
  br i1 %exitcond94.not, label %for.cond.cleanup4, label %for.body5, !dbg !3605, !llvm.loop !3615

for.cond23.preheader:                             ; preds = %for.cond23.preheader.lr.ph, %for.cond.cleanup26
  %y16.082 = phi i32 [ 0, %for.cond23.preheader.lr.ph ], [ %inc42, %for.cond.cleanup26 ]
  %dst.addr.181 = phi ptr [ %dst, %for.cond23.preheader.lr.ph ], [ %add.ptr44, %for.cond.cleanup26 ]
  %src.addr.180 = phi ptr [ %src, %for.cond23.preheader.lr.ph ], [ %add.ptr46, %for.cond.cleanup26 ]
  call void @llvm.dbg.value(metadata i32 %y16.082, metadata !3590, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %dst.addr.181, metadata !3577, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata ptr %src.addr.180, metadata !3579, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3593, metadata !DIExpression()), !dbg !3616
  br label %for.body27, !dbg !3617

for.cond.cleanup26:                               ; preds = %x264_clip_uint8.exit76
  %inc42 = add nuw nsw i32 %y16.082, 1, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %inc42, metadata !3590, metadata !DIExpression()), !dbg !3600
  %add.ptr44 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %idx.ext43, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %add.ptr44, metadata !3577, metadata !DIExpression()), !dbg !3596
  %add.ptr46 = getelementptr inbounds i8, ptr %src.addr.180, i64 %idx.ext45, !dbg !3618
  call void @llvm.dbg.value(metadata ptr %add.ptr46, metadata !3579, metadata !DIExpression()), !dbg !3596
  %exitcond90.not = icmp eq i32 %inc42, %height, !dbg !3618
  br i1 %exitcond90.not, label %if.end, label %for.cond23.preheader, !dbg !3601, !llvm.loop !3619

for.body27:                                       ; preds = %for.cond23.preheader, %x264_clip_uint8.exit76
  %indvars.iv = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next, %x264_clip_uint8.exit76 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3593, metadata !DIExpression()), !dbg !3616
  %arrayidx29 = getelementptr inbounds i8, ptr %src.addr.180, i64 %indvars.iv, !dbg !3620
  %6 = load i8, ptr %arrayidx29, align 1, !dbg !3620, !tbaa !1474
  %conv30 = zext i8 %6 to i32, !dbg !3620
  %7 = load i32, ptr %i_scale31, align 4, !dbg !3620, !tbaa !1736
  %mul32 = mul nsw i32 %7, %conv30, !dbg !3620
  %8 = load i32, ptr %i_offset33, align 8, !dbg !3620, !tbaa !1737
  %add34 = add nsw i32 %mul32, %8, !dbg !3620
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1738, metadata !DIExpression()), !dbg !3622
  %tobool.not.i71 = icmp ult i32 %add34, 256, !dbg !3624
  br i1 %tobool.not.i71, label %x264_clip_uint8.exit76, label %cond.true.i73, !dbg !3625

cond.true.i73:                                    ; preds = %for.body27
  %9 = icmp sgt i32 %add34, 0, !dbg !3626
  %shr.i72 = sext i1 %9 to i32, !dbg !3626
  br label %x264_clip_uint8.exit76, !dbg !3625

x264_clip_uint8.exit76:                           ; preds = %for.body27, %cond.true.i73
  %cond.i74 = phi i32 [ %shr.i72, %cond.true.i73 ], [ %add34, %for.body27 ], !dbg !3625
  %conv.i75 = trunc i32 %cond.i74 to i8, !dbg !3625
  %arrayidx37 = getelementptr inbounds i8, ptr %dst.addr.181, i64 %indvars.iv, !dbg !3620
  store i8 %conv.i75, ptr %arrayidx37, align 1, !dbg !3620, !tbaa !1474
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3593, metadata !DIExpression()), !dbg !3616
  %exitcond.not = icmp eq i64 %indvars.iv.next, 20, !dbg !3620
  br i1 %exitcond.not, label %for.cond.cleanup26, label %for.body27, !dbg !3617, !llvm.loop !3627

if.end:                                           ; preds = %for.cond.cleanup26, %for.cond.cleanup4, %for.cond17.preheader, %for.cond.preheader
  ret void, !dbg !3599
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "weight_none", scope: !2, file: !28, line: 171, type: !70, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/mc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "5b5840f7c133c196a2452d152d36293d")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!9 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!10 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!11 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!12 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!13 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!14 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!15 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!16 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!17 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!18 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !21, line: 27, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !23, line: 44, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!24 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!25 = !{!0, !26, !37, !39}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "hpel_ref0", scope: !2, file: !28, line: 206, type: !29, isLocal: true, isDefinition: true)
!28 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5b5840f7c133c196a2452d152d36293d")
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !35)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !23, line: 38, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 16)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "hpel_ref1", scope: !2, file: !28, line: 207, type: !29, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "x264_mc_weight_wtab", scope: !2, file: !28, line: 162, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 384, elements: !68)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !43, line: 25, baseType: !44)
!43 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48, !47, !48, !49, !48}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !43, line: 26, size: 512, elements: !52)
!52 = !{!53, !60, !61, !64, !65, !66}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !51, file: !43, line: 30, baseType: !54, size: 128, align: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !58)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !21, line: 25, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !23, line: 39, baseType: !57)
!57 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!58 = !{!59}
!59 = !DISubrange(count: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !51, file: !43, line: 31, baseType: !54, size: 128, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !51, file: !43, line: 32, baseType: !62, size: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !21, line: 26, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !23, line: 41, baseType: !48)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !51, file: !43, line: 33, baseType: !62, size: 32, offset: 288)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !51, file: !43, line: 34, baseType: !62, size: 32, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !51, file: !43, line: 35, baseType: !67, size: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!68 = !{!69}
!69 = !DISubrange(count: 6)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1536, align: 128, elements: !73)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !43, line: 36, baseType: !51, align: 128)
!73 = !{!74}
!74 = !DISubrange(count: 3)
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 7, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!82 = distinct !DISubprogram(name: "x264_plane_copy_c", scope: !28, file: !28, line: 299, type: !83, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !47, !48, !47, !48, !48, !48}
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DILocalVariable(name: "dst", arg: 1, scope: !82, file: !28, line: 299, type: !47)
!87 = !DILocalVariable(name: "i_dst", arg: 2, scope: !82, file: !28, line: 299, type: !48)
!88 = !DILocalVariable(name: "src", arg: 3, scope: !82, file: !28, line: 300, type: !47)
!89 = !DILocalVariable(name: "i_src", arg: 4, scope: !82, file: !28, line: 300, type: !48)
!90 = !DILocalVariable(name: "w", arg: 5, scope: !82, file: !28, line: 300, type: !48)
!91 = !DILocalVariable(name: "h", arg: 6, scope: !82, file: !28, line: 300, type: !48)
!92 = !DILocation(line: 0, scope: !82)
!93 = !DILocation(line: 302, column: 5, scope: !82)
!94 = !DILocation(line: 302, column: 13, scope: !82)
!95 = !DILocation(line: 304, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !82, file: !28, line: 303, column: 5)
!97 = !DILocation(line: 305, column: 13, scope: !96)
!98 = !DILocation(line: 306, column: 13, scope: !96)
!99 = distinct !{!99, !93, !100, !101, !102}
!100 = !DILocation(line: 307, column: 5, scope: !82)
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !DILocation(line: 308, column: 1, scope: !82)
!104 = distinct !DISubprogram(name: "x264_frame_init_lowres", scope: !28, file: !28, line: 356, type: !105, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1376)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !566}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !111, line: 381, size: 266752, elements: !112)
!111 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!112 = !{!113, !284, !288, !289, !290, !291, !292, !293, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !427, !429, !454, !456, !457, !458, !464, !468, !469, !470, !477, !481, !482, !483, !488, !491, !492, !544, !561, !722, !723, !724, !725, !729, !730, !731, !732, !733, !734, !735, !750, !944, !948, !1009, !1012, !1014, !1016, !1017, !1020, !1025, !1034, !1035, !1043, !1045, !1050, !1125, !1208, !1252, !1274, !1323, !1352}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !110, file: !111, line: 384, baseType: !114, size: 5632)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !109, line: 376, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !109, line: 176, size: 5632, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !160, !162, !163, !164, !165, !169, !170, !185, !186, !187, !188, !189, !220, !262, !263, !264, !265, !266, !267, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !115, file: !109, line: 179, baseType: !7, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !115, file: !109, line: 180, baseType: !48, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !115, file: !109, line: 181, baseType: !48, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !115, file: !109, line: 182, baseType: !48, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !115, file: !109, line: 183, baseType: !48, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !115, file: !109, line: 186, baseType: !48, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !115, file: !109, line: 187, baseType: !48, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !115, file: !109, line: 188, baseType: !48, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !115, file: !109, line: 189, baseType: !48, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !115, file: !109, line: 190, baseType: !48, size: 32, offset: 288)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !115, file: !109, line: 198, baseType: !48, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !115, file: !109, line: 215, baseType: !129, size: 288, offset: 352)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !109, line: 200, size: 288, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !129, file: !109, line: 203, baseType: !48, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !129, file: !109, line: 204, baseType: !48, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !129, file: !109, line: 206, baseType: !48, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !129, file: !109, line: 209, baseType: !48, size: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !129, file: !109, line: 210, baseType: !48, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !129, file: !109, line: 211, baseType: !48, size: 32, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !129, file: !109, line: 212, baseType: !48, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !129, file: !109, line: 213, baseType: !48, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !129, file: !109, line: 214, baseType: !48, size: 32, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !115, file: !109, line: 218, baseType: !48, size: 32, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !115, file: !109, line: 219, baseType: !48, size: 32, offset: 672)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !115, file: !109, line: 220, baseType: !48, size: 32, offset: 704)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !115, file: !109, line: 221, baseType: !48, size: 32, offset: 736)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !115, file: !109, line: 222, baseType: !48, size: 32, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !115, file: !109, line: 224, baseType: !48, size: 32, offset: 800)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !115, file: !109, line: 225, baseType: !48, size: 32, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !115, file: !109, line: 226, baseType: !48, size: 32, offset: 864)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !115, file: !109, line: 227, baseType: !48, size: 32, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !115, file: !109, line: 229, baseType: !48, size: 32, offset: 928)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !115, file: !109, line: 230, baseType: !48, size: 32, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !115, file: !109, line: 231, baseType: !48, size: 32, offset: 992)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !115, file: !109, line: 233, baseType: !48, size: 32, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !115, file: !109, line: 234, baseType: !48, size: 32, offset: 1056)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !115, file: !109, line: 236, baseType: !48, size: 32, offset: 1088)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !115, file: !109, line: 237, baseType: !48, size: 32, offset: 1120)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !115, file: !109, line: 239, baseType: !48, size: 32, offset: 1152)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !115, file: !109, line: 240, baseType: !158, size: 64, offset: 1216)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !115, file: !109, line: 241, baseType: !161, size: 128, offset: 1280)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !35)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !115, file: !109, line: 242, baseType: !161, size: 128, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !115, file: !109, line: 243, baseType: !161, size: 128, offset: 1536)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !115, file: !109, line: 244, baseType: !161, size: 128, offset: 1664)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !115, file: !109, line: 245, baseType: !166, size: 512, offset: 1792)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !115, file: !109, line: 246, baseType: !166, size: 512, offset: 2304)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !115, file: !109, line: 249, baseType: !171, size: 64, offset: 2816)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174, !48, !175, !177}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !179)
!179 = !{!180, !182, !183, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !178, file: !181, line: 308, baseType: !7, size: 32)
!181 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !178, file: !181, line: 308, baseType: !7, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !178, file: !181, line: 308, baseType: !174, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !178, file: !181, line: 308, baseType: !174, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !115, file: !109, line: 250, baseType: !174, size: 64, offset: 2880)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !115, file: !109, line: 251, baseType: !48, size: 32, offset: 2944)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !115, file: !109, line: 252, baseType: !48, size: 32, offset: 2976)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !115, file: !109, line: 253, baseType: !158, size: 64, offset: 3008)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !115, file: !109, line: 287, baseType: !190, size: 800, offset: 3072)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !109, line: 256, size: 800, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !212, !213, !214, !218, !219}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !190, file: !109, line: 258, baseType: !7, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !190, file: !109, line: 259, baseType: !7, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !190, file: !109, line: 261, baseType: !48, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !190, file: !109, line: 262, baseType: !48, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !190, file: !109, line: 263, baseType: !48, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !190, file: !109, line: 264, baseType: !48, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !190, file: !109, line: 265, baseType: !48, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !190, file: !109, line: 267, baseType: !48, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !190, file: !109, line: 268, baseType: !48, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !190, file: !109, line: 269, baseType: !48, size: 32, offset: 288)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !190, file: !109, line: 270, baseType: !48, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !190, file: !109, line: 271, baseType: !48, size: 32, offset: 352)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !190, file: !109, line: 272, baseType: !48, size: 32, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !190, file: !109, line: 273, baseType: !48, size: 32, offset: 416)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !190, file: !109, line: 274, baseType: !48, size: 32, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !190, file: !109, line: 275, baseType: !48, size: 32, offset: 480)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !190, file: !109, line: 276, baseType: !48, size: 32, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !190, file: !109, line: 277, baseType: !48, size: 32, offset: 544)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !190, file: !109, line: 278, baseType: !211, size: 32, offset: 576)
!211 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !190, file: !109, line: 279, baseType: !211, size: 32, offset: 608)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !190, file: !109, line: 280, baseType: !48, size: 32, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !190, file: !109, line: 283, baseType: !215, size: 64, offset: 672)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 2)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !190, file: !109, line: 285, baseType: !48, size: 32, offset: 736)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !190, file: !109, line: 286, baseType: !48, size: 32, offset: 768)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !115, file: !109, line: 327, baseType: !221, size: 1152, offset: 3904)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !109, line: 290, size: 1152, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !260, !261}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !221, file: !109, line: 292, baseType: !48, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !221, file: !109, line: 294, baseType: !48, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !221, file: !109, line: 295, baseType: !48, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !221, file: !109, line: 296, baseType: !48, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !221, file: !109, line: 297, baseType: !48, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !221, file: !109, line: 299, baseType: !48, size: 32, offset: 160)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !221, file: !109, line: 300, baseType: !211, size: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !221, file: !109, line: 301, baseType: !211, size: 32, offset: 224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !221, file: !109, line: 302, baseType: !211, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !221, file: !109, line: 303, baseType: !48, size: 32, offset: 288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !221, file: !109, line: 304, baseType: !48, size: 32, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !221, file: !109, line: 305, baseType: !211, size: 32, offset: 352)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !221, file: !109, line: 306, baseType: !211, size: 32, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !221, file: !109, line: 307, baseType: !211, size: 32, offset: 416)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !221, file: !109, line: 309, baseType: !48, size: 32, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !221, file: !109, line: 310, baseType: !211, size: 32, offset: 480)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !221, file: !109, line: 311, baseType: !48, size: 32, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !221, file: !109, line: 312, baseType: !48, size: 32, offset: 544)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !221, file: !109, line: 315, baseType: !48, size: 32, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !221, file: !109, line: 316, baseType: !158, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !221, file: !109, line: 317, baseType: !48, size: 32, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !221, file: !109, line: 318, baseType: !158, size: 64, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !221, file: !109, line: 321, baseType: !211, size: 32, offset: 832)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !221, file: !109, line: 322, baseType: !211, size: 32, offset: 864)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !221, file: !109, line: 323, baseType: !211, size: 32, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !221, file: !109, line: 324, baseType: !249, size: 64, offset: 960)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !109, line: 174, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 167, size: 256, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !251, file: !109, line: 169, baseType: !48, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !251, file: !109, line: 169, baseType: !48, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !251, file: !109, line: 170, baseType: !48, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !251, file: !109, line: 171, baseType: !48, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !251, file: !109, line: 172, baseType: !211, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !251, file: !109, line: 173, baseType: !259, size: 64, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !221, file: !109, line: 325, baseType: !48, size: 32, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !221, file: !109, line: 326, baseType: !158, size: 64, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !115, file: !109, line: 330, baseType: !48, size: 32, offset: 5056)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !115, file: !109, line: 331, baseType: !48, size: 32, offset: 5088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !115, file: !109, line: 332, baseType: !48, size: 32, offset: 5120)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !115, file: !109, line: 334, baseType: !48, size: 32, offset: 5152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !115, file: !109, line: 335, baseType: !48, size: 32, offset: 5184)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !115, file: !109, line: 336, baseType: !268, size: 32, offset: 5216)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 42, baseType: !7)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !115, file: !109, line: 337, baseType: !268, size: 32, offset: 5248)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !115, file: !109, line: 338, baseType: !268, size: 32, offset: 5280)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !115, file: !109, line: 339, baseType: !268, size: 32, offset: 5312)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !115, file: !109, line: 340, baseType: !48, size: 32, offset: 5344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !115, file: !109, line: 344, baseType: !48, size: 32, offset: 5376)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !115, file: !109, line: 356, baseType: !48, size: 32, offset: 5408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !115, file: !109, line: 364, baseType: !48, size: 32, offset: 5440)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !115, file: !109, line: 367, baseType: !48, size: 32, offset: 5472)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !115, file: !109, line: 368, baseType: !48, size: 32, offset: 5504)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !115, file: !109, line: 369, baseType: !48, size: 32, offset: 5536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !115, file: !109, line: 375, baseType: !281, size: 64, offset: 5568)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !174}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !110, file: !111, line: 386, baseType: !285, size: 8256, offset: 5632)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 8256, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 129)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !110, file: !111, line: 387, baseType: !48, size: 32, offset: 13888)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !110, file: !111, line: 388, baseType: !48, size: 32, offset: 13920)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !110, file: !111, line: 389, baseType: !48, size: 32, offset: 13952)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !110, file: !111, line: 390, baseType: !48, size: 32, offset: 13984)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !110, file: !111, line: 391, baseType: !48, size: 32, offset: 14016)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !110, file: !111, line: 402, baseType: !294, size: 576, offset: 14080)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !111, line: 394, size: 576, elements: !295)
!295 = !{!296, !297, !298, !307, !308, !309}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !294, file: !111, line: 396, baseType: !48, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !294, file: !111, line: 397, baseType: !48, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !294, file: !111, line: 398, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !109, line: 604, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 593, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !301, file: !109, line: 595, baseType: !48, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !301, file: !109, line: 596, baseType: !48, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !301, file: !109, line: 599, baseType: !48, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !301, file: !109, line: 603, baseType: !47, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !294, file: !111, line: 399, baseType: !48, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !294, file: !111, line: 400, baseType: !47, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !294, file: !111, line: 401, baseType: !310, size: 320, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !311, line: 56, baseType: !312)
!311 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !311, line: 47, size: 320, elements: !313)
!313 = !{!314, !315, !316, !317, !320, !321}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !312, file: !311, line: 49, baseType: !47, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !312, file: !311, line: 50, baseType: !47, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !312, file: !311, line: 51, baseType: !47, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !312, file: !311, line: 53, baseType: !318, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !319, line: 87, baseType: !24)
!319 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !312, file: !311, line: 54, baseType: !48, size: 32, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !312, file: !311, line: 55, baseType: !48, size: 32, offset: 288)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !110, file: !111, line: 404, baseType: !47, size: 64, offset: 14656)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !110, file: !111, line: 405, baseType: !48, size: 32, offset: 14720)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !110, file: !111, line: 410, baseType: !48, size: 32, offset: 14752)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !110, file: !111, line: 411, baseType: !48, size: 32, offset: 14784)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !110, file: !111, line: 413, baseType: !48, size: 32, offset: 14816)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !110, file: !111, line: 415, baseType: !48, size: 32, offset: 14848)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !110, file: !111, line: 416, baseType: !48, size: 32, offset: 14880)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !110, file: !111, line: 418, baseType: !48, size: 32, offset: 14912)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !110, file: !111, line: 419, baseType: !48, size: 32, offset: 14944)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !110, file: !111, line: 420, baseType: !48, size: 32, offset: 14976)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !110, file: !111, line: 421, baseType: !48, size: 32, offset: 15008)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !110, file: !111, line: 422, baseType: !48, size: 32, offset: 15040)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !110, file: !111, line: 424, baseType: !48, size: 32, offset: 15072)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !110, file: !111, line: 425, baseType: !48, size: 32, offset: 15104)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !110, file: !111, line: 427, baseType: !48, size: 32, offset: 15136)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !110, file: !111, line: 430, baseType: !338, size: 10400, offset: 15168)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 10400, elements: !425)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !340, line: 154, baseType: !341)
!340 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 52, size: 10400, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !360, !361, !362, !363, !364, !365, !366, !367, !368, !375, !376, !424}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !341, file: !340, line: 54, baseType: !48, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !341, file: !340, line: 56, baseType: !48, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !341, file: !340, line: 57, baseType: !48, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !341, file: !340, line: 59, baseType: !48, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !341, file: !340, line: 60, baseType: !48, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !341, file: !340, line: 61, baseType: !48, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !341, file: !340, line: 63, baseType: !48, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !341, file: !340, line: 65, baseType: !48, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !341, file: !340, line: 67, baseType: !48, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !341, file: !340, line: 69, baseType: !48, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !341, file: !340, line: 70, baseType: !48, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !341, file: !340, line: 71, baseType: !48, size: 32, offset: 352)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !341, file: !340, line: 72, baseType: !48, size: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !341, file: !340, line: 73, baseType: !357, size: 8192, offset: 416)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8192, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !341, file: !340, line: 75, baseType: !48, size: 32, offset: 8608)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !341, file: !340, line: 76, baseType: !48, size: 32, offset: 8640)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !341, file: !340, line: 77, baseType: !48, size: 32, offset: 8672)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !341, file: !340, line: 78, baseType: !48, size: 32, offset: 8704)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !341, file: !340, line: 79, baseType: !48, size: 32, offset: 8736)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !341, file: !340, line: 80, baseType: !48, size: 32, offset: 8768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !341, file: !340, line: 81, baseType: !48, size: 32, offset: 8800)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !341, file: !340, line: 83, baseType: !48, size: 32, offset: 8832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !341, file: !340, line: 90, baseType: !369, size: 128, offset: 8864)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !340, line: 84, size: 128, elements: !370)
!370 = !{!371, !372, !373, !374}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !369, file: !340, line: 86, baseType: !48, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !369, file: !340, line: 87, baseType: !48, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !369, file: !340, line: 88, baseType: !48, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !369, file: !340, line: 89, baseType: !48, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !341, file: !340, line: 92, baseType: !48, size: 32, offset: 8992)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !341, file: !340, line: 150, baseType: !377, size: 1344, offset: 9024)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !341, file: !340, line: 93, size: 1344, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !377, file: !340, line: 95, baseType: !48, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !377, file: !340, line: 96, baseType: !48, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !377, file: !340, line: 97, baseType: !48, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !377, file: !340, line: 99, baseType: !48, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !377, file: !340, line: 100, baseType: !48, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !377, file: !340, line: 102, baseType: !48, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !377, file: !340, line: 103, baseType: !48, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !377, file: !340, line: 104, baseType: !48, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !377, file: !340, line: 105, baseType: !48, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !377, file: !340, line: 106, baseType: !48, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !377, file: !340, line: 107, baseType: !48, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !377, file: !340, line: 108, baseType: !48, size: 32, offset: 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !377, file: !340, line: 110, baseType: !48, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !377, file: !340, line: 111, baseType: !48, size: 32, offset: 416)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !377, file: !340, line: 112, baseType: !48, size: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !377, file: !340, line: 114, baseType: !48, size: 32, offset: 480)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !377, file: !340, line: 115, baseType: !268, size: 32, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !377, file: !340, line: 116, baseType: !268, size: 32, offset: 544)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !377, file: !340, line: 117, baseType: !48, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !377, file: !340, line: 119, baseType: !48, size: 32, offset: 608)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !377, file: !340, line: 120, baseType: !48, size: 32, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !377, file: !340, line: 137, baseType: !401, size: 384, offset: 672)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !377, file: !340, line: 122, size: 384, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !401, file: !340, line: 124, baseType: !48, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !401, file: !340, line: 125, baseType: !48, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !401, file: !340, line: 126, baseType: !48, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !401, file: !340, line: 127, baseType: !48, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !401, file: !340, line: 128, baseType: !48, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !401, file: !340, line: 129, baseType: !48, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !401, file: !340, line: 130, baseType: !48, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !401, file: !340, line: 131, baseType: !48, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !401, file: !340, line: 133, baseType: !48, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !401, file: !340, line: 134, baseType: !48, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !401, file: !340, line: 135, baseType: !48, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !401, file: !340, line: 136, baseType: !48, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !377, file: !340, line: 139, baseType: !48, size: 32, offset: 1056)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !377, file: !340, line: 140, baseType: !48, size: 32, offset: 1088)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !377, file: !340, line: 141, baseType: !48, size: 32, offset: 1120)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !377, file: !340, line: 142, baseType: !48, size: 32, offset: 1152)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !377, file: !340, line: 143, baseType: !48, size: 32, offset: 1184)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !377, file: !340, line: 144, baseType: !48, size: 32, offset: 1216)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !377, file: !340, line: 145, baseType: !48, size: 32, offset: 1248)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !377, file: !340, line: 146, baseType: !48, size: 32, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !377, file: !340, line: 147, baseType: !48, size: 32, offset: 1312)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !341, file: !340, line: 152, baseType: !48, size: 32, offset: 10368)
!425 = !{!426}
!426 = !DISubrange(count: 1)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !110, file: !111, line: 431, baseType: !428, size: 64, offset: 25600)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !110, file: !111, line: 432, baseType: !430, size: 960, offset: 25664)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 960, elements: !425)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !340, line: 186, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 156, size: 960, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !432, file: !340, line: 158, baseType: !48, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !432, file: !340, line: 159, baseType: !48, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !432, file: !340, line: 161, baseType: !48, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !432, file: !340, line: 163, baseType: !48, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !432, file: !340, line: 164, baseType: !48, size: 32, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !432, file: !340, line: 166, baseType: !48, size: 32, offset: 160)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !432, file: !340, line: 167, baseType: !48, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !432, file: !340, line: 169, baseType: !48, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !432, file: !340, line: 170, baseType: !48, size: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !432, file: !340, line: 172, baseType: !48, size: 32, offset: 288)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !432, file: !340, line: 173, baseType: !48, size: 32, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !432, file: !340, line: 175, baseType: !48, size: 32, offset: 352)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !432, file: !340, line: 177, baseType: !48, size: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !432, file: !340, line: 178, baseType: !48, size: 32, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !432, file: !340, line: 179, baseType: !48, size: 32, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !432, file: !340, line: 181, baseType: !48, size: 32, offset: 480)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !432, file: !340, line: 183, baseType: !48, size: 32, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !432, file: !340, line: 184, baseType: !452, size: 384, offset: 576)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 384, elements: !68)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !110, file: !111, line: 433, baseType: !455, size: 64, offset: 26624)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !110, file: !111, line: 434, baseType: !48, size: 32, offset: 26688)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !110, file: !111, line: 437, baseType: !48, size: 32, offset: 26720)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !110, file: !111, line: 440, baseType: !459, size: 256, offset: 26752)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 256, elements: !462)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 512, elements: !35)
!462 = !{!463}
!463 = !DISubrange(count: 4)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !110, file: !111, line: 441, baseType: !465, size: 128, offset: 27008)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 128, elements: !216)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !167)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !110, file: !111, line: 443, baseType: !459, size: 256, offset: 27136)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !110, file: !111, line: 444, baseType: !465, size: 128, offset: 27392)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !110, file: !111, line: 446, baseType: !471, size: 256, offset: 27520)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 256, elements: !462)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 256, elements: !35)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !32, line: 25, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !23, line: 40, baseType: !476)
!476 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !110, file: !111, line: 447, baseType: !478, size: 128, offset: 27776)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 128, elements: !216)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 1024, elements: !167)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !110, file: !111, line: 448, baseType: !471, size: 256, offset: 27904)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !110, file: !111, line: 449, baseType: !478, size: 128, offset: 28160)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !110, file: !111, line: 454, baseType: !484, size: 5888, offset: 28288)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 5888, elements: !486)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!486 = !{!487}
!487 = !DISubrange(count: 92)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !110, file: !111, line: 455, baseType: !489, size: 23552, offset: 34176)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 23552, elements: !490)
!490 = !{!487, !463}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !110, file: !111, line: 457, baseType: !453, size: 64, offset: 57728)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !110, file: !111, line: 460, baseType: !493, size: 53376, offset: 57856)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !111, line: 364, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 302, size: 53376, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !524, !528, !529, !530, !536, !537, !538, !539, !540, !541, !542, !543}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !494, file: !111, line: 304, baseType: !428, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !494, file: !111, line: 305, baseType: !455, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !494, file: !111, line: 307, baseType: !48, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !494, file: !111, line: 308, baseType: !48, size: 32, offset: 160)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !494, file: !111, line: 309, baseType: !48, size: 32, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !494, file: !111, line: 311, baseType: !48, size: 32, offset: 224)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !494, file: !111, line: 313, baseType: !48, size: 32, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !494, file: !111, line: 315, baseType: !48, size: 32, offset: 288)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !494, file: !111, line: 316, baseType: !48, size: 32, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !494, file: !111, line: 317, baseType: !48, size: 32, offset: 352)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !494, file: !111, line: 319, baseType: !48, size: 32, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !494, file: !111, line: 321, baseType: !48, size: 32, offset: 416)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !494, file: !111, line: 322, baseType: !48, size: 32, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !494, file: !111, line: 324, baseType: !215, size: 64, offset: 480)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !494, file: !111, line: 325, baseType: !48, size: 32, offset: 544)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !494, file: !111, line: 327, baseType: !48, size: 32, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !494, file: !111, line: 329, baseType: !48, size: 32, offset: 608)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !494, file: !111, line: 330, baseType: !48, size: 32, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !494, file: !111, line: 331, baseType: !48, size: 32, offset: 672)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !494, file: !111, line: 333, baseType: !48, size: 32, offset: 704)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !494, file: !111, line: 334, baseType: !48, size: 32, offset: 736)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !494, file: !111, line: 339, baseType: !518, size: 2048, offset: 768)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !519, size: 2048, elements: !523)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !111, line: 335, size: 64, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !519, file: !111, line: 337, baseType: !48, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !519, file: !111, line: 338, baseType: !48, size: 32, offset: 32)
!523 = !{!217, !36}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !494, file: !111, line: 342, baseType: !525, size: 49152, align: 128, offset: 2816)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 49152, align: 128, elements: !526)
!526 = !{!527, !74}
!527 = !DISubrange(count: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !494, file: !111, line: 344, baseType: !48, size: 32, offset: 51968)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !494, file: !111, line: 345, baseType: !48, size: 32, offset: 52000)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !494, file: !111, line: 350, baseType: !531, size: 1024, offset: 52032)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 1024, elements: !35)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !111, line: 346, size: 64, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !532, file: !111, line: 348, baseType: !48, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !532, file: !111, line: 349, baseType: !48, size: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !494, file: !111, line: 352, baseType: !48, size: 32, offset: 53056)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !494, file: !111, line: 354, baseType: !48, size: 32, offset: 53088)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !494, file: !111, line: 355, baseType: !48, size: 32, offset: 53120)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !494, file: !111, line: 356, baseType: !48, size: 32, offset: 53152)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !494, file: !111, line: 357, baseType: !48, size: 32, offset: 53184)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !494, file: !111, line: 360, baseType: !48, size: 32, offset: 53216)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !494, file: !111, line: 361, baseType: !48, size: 32, offset: 53248)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !494, file: !111, line: 362, baseType: !48, size: 32, offset: 53280)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !110, file: !111, line: 463, baseType: !545, size: 4096, offset: 111232)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !546, line: 46, baseType: !547)
!546 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 27, size: 4096, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !547, file: !546, line: 30, baseType: !48, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !547, file: !546, line: 31, baseType: !48, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !547, file: !546, line: 34, baseType: !48, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !547, file: !546, line: 35, baseType: !48, size: 32, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !547, file: !546, line: 37, baseType: !47, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !547, file: !546, line: 38, baseType: !47, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !547, file: !546, line: 39, baseType: !47, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !547, file: !546, line: 42, baseType: !48, size: 32, align: 128, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !547, file: !546, line: 45, baseType: !558, size: 3680, offset: 416)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3680, elements: !559)
!559 = !{!560}
!560 = !DISubrange(count: 460)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !110, file: !111, line: 494, baseType: !562, size: 2112, offset: 115328)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !111, line: 465, size: 2112, elements: !563)
!563 = !{!564, !702, !704, !705, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !718, !719, !720, !721}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !562, file: !111, line: 468, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !568, line: 146, baseType: !569)
!568 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !568, line: 31, size: 125056, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !598, !599, !600, !601, !602, !603, !605, !607, !608, !609, !610, !611, !614, !616, !617, !619, !624, !625, !629, !630, !634, !638, !641, !643, !644, !646, !647, !649, !650, !651, !654, !656, !657, !658, !660, !661, !662, !663, !664, !665, !666, !667, !669, !670, !674, !683, !687, !689, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !569, file: !568, line: 34, baseType: !48, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !569, file: !568, line: 35, baseType: !48, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !569, file: !568, line: 36, baseType: !48, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !569, file: !568, line: 37, baseType: !20, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !569, file: !568, line: 38, baseType: !20, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !569, file: !568, line: 39, baseType: !48, size: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !569, file: !568, line: 40, baseType: !48, size: 32, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !569, file: !568, line: 41, baseType: !48, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !569, file: !568, line: 42, baseType: !48, size: 32, offset: 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !569, file: !568, line: 43, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !569, file: !568, line: 45, baseType: !48, size: 32, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !569, file: !568, line: 46, baseType: !48, size: 32, offset: 480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !569, file: !568, line: 47, baseType: !48, size: 32, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !569, file: !568, line: 48, baseType: !48, size: 32, offset: 544)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !569, file: !568, line: 49, baseType: !48, size: 32, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !569, file: !568, line: 50, baseType: !48, size: 32, offset: 608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !569, file: !568, line: 51, baseType: !48, size: 32, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !569, file: !568, line: 52, baseType: !31, size: 8, offset: 672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !569, file: !568, line: 53, baseType: !31, size: 8, offset: 680)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !569, file: !568, line: 54, baseType: !31, size: 8, offset: 688)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !569, file: !568, line: 55, baseType: !211, size: 32, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !569, file: !568, line: 56, baseType: !211, size: 32, offset: 736)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !569, file: !568, line: 57, baseType: !48, size: 32, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !569, file: !568, line: 60, baseType: !48, size: 32, offset: 800)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !569, file: !568, line: 61, baseType: !597, size: 96, offset: 832)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 96, elements: !73)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !569, file: !568, line: 62, baseType: !597, size: 96, offset: 928)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !569, file: !568, line: 63, baseType: !597, size: 96, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !569, file: !568, line: 64, baseType: !48, size: 32, offset: 1120)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !569, file: !568, line: 65, baseType: !48, size: 32, offset: 1152)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !569, file: !568, line: 66, baseType: !48, size: 32, offset: 1184)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !569, file: !568, line: 67, baseType: !604, size: 192, offset: 1216)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 192, elements: !73)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !569, file: !568, line: 68, baseType: !606, size: 256, offset: 1408)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !462)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !569, file: !568, line: 69, baseType: !606, size: 256, offset: 1664)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !569, file: !568, line: 70, baseType: !485, size: 64, offset: 1920)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !569, file: !568, line: 74, baseType: !606, size: 256, offset: 1984)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !569, file: !568, line: 75, baseType: !606, size: 256, offset: 2240)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !569, file: !568, line: 77, baseType: !612, size: 24576, align: 128, offset: 2560)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 24576, align: 128, elements: !613)
!613 = !{!36, !74}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !569, file: !568, line: 78, baseType: !615, size: 1024, offset: 27136)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, elements: !35)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !569, file: !568, line: 79, baseType: !48, size: 32, offset: 28160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !569, file: !568, line: 80, baseType: !618, size: 64, offset: 28224)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !569, file: !568, line: 83, baseType: !620, size: 64, offset: 28288)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !21, line: 24, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !23, line: 37, baseType: !623)
!623 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !569, file: !568, line: 84, baseType: !47, size: 64, offset: 28352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !569, file: !568, line: 85, baseType: !626, size: 128, offset: 28416)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 128, elements: !216)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 32, elements: !216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !569, file: !568, line: 86, baseType: !627, size: 64, offset: 28544)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !569, file: !568, line: 87, baseType: !631, size: 2176, offset: 28608)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 2176, elements: !632)
!632 = !{!217, !633}
!633 = !DISubrange(count: 17)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !569, file: !568, line: 92, baseType: !635, size: 20736, offset: 30784)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 20736, elements: !636)
!636 = !{!637, !637}
!637 = !DISubrange(count: 18)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !569, file: !568, line: 96, baseType: !639, size: 2176, offset: 51520)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 2176, elements: !632)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !569, file: !568, line: 97, baseType: !642, size: 128, offset: 53696)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 128, elements: !216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !569, file: !568, line: 98, baseType: !215, size: 64, offset: 53824)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !569, file: !568, line: 99, baseType: !645, size: 1024, offset: 53888)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1024, elements: !523)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !569, file: !568, line: 100, baseType: !628, size: 32, offset: 54912)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !569, file: !568, line: 105, baseType: !648, size: 10368, offset: 54944)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 10368, elements: !636)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !569, file: !568, line: 106, baseType: !648, size: 10368, offset: 65312)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !569, file: !568, line: 107, baseType: !48, size: 32, offset: 75680)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !569, file: !568, line: 108, baseType: !652, size: 576, offset: 75712)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 576, elements: !653)
!653 = !{!637}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !569, file: !568, line: 109, baseType: !655, size: 20736, offset: 76288)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 20736, elements: !636)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !569, file: !568, line: 110, baseType: !640, size: 64, offset: 97024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !569, file: !568, line: 111, baseType: !640, size: 64, offset: 97088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !569, file: !568, line: 112, baseType: !659, size: 64, offset: 97152)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !569, file: !568, line: 113, baseType: !659, size: 64, offset: 97216)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !569, file: !568, line: 114, baseType: !659, size: 64, offset: 97280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !569, file: !568, line: 115, baseType: !48, size: 32, offset: 97344)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !569, file: !568, line: 116, baseType: !485, size: 64, offset: 97408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !569, file: !568, line: 117, baseType: !485, size: 64, offset: 97472)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !569, file: !568, line: 118, baseType: !485, size: 64, offset: 97536)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !569, file: !568, line: 119, baseType: !48, size: 32, offset: 97600)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !569, file: !568, line: 120, baseType: !668, size: 576, offset: 97632)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 576, elements: !653)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !569, file: !568, line: 121, baseType: !268, size: 32, offset: 98208)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !569, file: !568, line: 122, baseType: !671, size: 64, offset: 98240)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !23, line: 45, baseType: !673)
!673 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !569, file: !568, line: 125, baseType: !675, size: 256, offset: 98304)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !109, line: 503, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 496, size: 256, elements: !677)
!677 = !{!678, !680, !681, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !676, file: !109, line: 498, baseType: !679, size: 64)
!679 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !676, file: !109, line: 499, baseType: !679, size: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !676, file: !109, line: 500, baseType: !679, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !676, file: !109, line: 502, baseType: !679, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !569, file: !568, line: 128, baseType: !684, size: 2008, offset: 98560)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2008, elements: !685)
!685 = !{!686}
!686 = !DISubrange(count: 251)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !569, file: !568, line: 129, baseType: !688, size: 8032, offset: 100576)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8032, elements: !685)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !569, file: !568, line: 130, baseType: !690, size: 16064, offset: 108608)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 16064, elements: !685)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !569, file: !568, line: 131, baseType: !48, size: 32, offset: 124672)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !569, file: !568, line: 132, baseType: !48, size: 32, offset: 124704)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !569, file: !568, line: 135, baseType: !48, size: 32, offset: 124736)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !569, file: !568, line: 136, baseType: !48, size: 32, offset: 124768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !569, file: !568, line: 137, baseType: !48, size: 32, offset: 124800)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !569, file: !568, line: 138, baseType: !48, size: 32, offset: 124832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !569, file: !568, line: 139, baseType: !48, size: 32, offset: 124864)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !569, file: !568, line: 142, baseType: !211, size: 32, offset: 124896)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !569, file: !568, line: 143, baseType: !48, size: 32, offset: 124928)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !569, file: !568, line: 144, baseType: !48, size: 32, offset: 124960)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !569, file: !568, line: 145, baseType: !48, size: 32, offset: 124992)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !562, file: !111, line: 470, baseType: !703, size: 128, offset: 64)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 128, elements: !216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !562, file: !111, line: 473, baseType: !565, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !562, file: !111, line: 476, baseType: !706, size: 1152, offset: 256)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 1152, elements: !653)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !562, file: !111, line: 478, baseType: !48, size: 32, offset: 1408)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !562, file: !111, line: 480, baseType: !48, size: 32, offset: 1440)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !562, file: !111, line: 482, baseType: !48, size: 32, offset: 1472)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !562, file: !111, line: 483, baseType: !48, size: 32, offset: 1504)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !562, file: !111, line: 484, baseType: !48, size: 32, offset: 1536)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !562, file: !111, line: 485, baseType: !48, size: 32, offset: 1568)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !562, file: !111, line: 486, baseType: !48, size: 32, offset: 1600)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !562, file: !111, line: 487, baseType: !20, size: 64, offset: 1664)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !562, file: !111, line: 488, baseType: !20, size: 64, offset: 1728)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !562, file: !111, line: 489, baseType: !717, size: 128, offset: 1792)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !562, file: !111, line: 490, baseType: !20, size: 64, offset: 1920)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !562, file: !111, line: 491, baseType: !20, size: 64, offset: 1984)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !562, file: !111, line: 492, baseType: !48, size: 32, offset: 2048)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !562, file: !111, line: 493, baseType: !48, size: 32, offset: 2080)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !110, file: !111, line: 497, baseType: !566, size: 64, offset: 117440)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !110, file: !111, line: 500, baseType: !566, size: 64, offset: 117504)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !110, file: !111, line: 503, baseType: !48, size: 32, offset: 117568)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !110, file: !111, line: 504, baseType: !726, size: 1216, offset: 117632)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 1216, elements: !727)
!727 = !{!728}
!728 = !DISubrange(count: 19)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !110, file: !111, line: 505, baseType: !48, size: 32, offset: 118848)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !110, file: !111, line: 506, baseType: !726, size: 1216, offset: 118912)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !110, file: !111, line: 507, baseType: !215, size: 64, offset: 120128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !110, file: !111, line: 510, baseType: !48, size: 32, offset: 120192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !110, file: !111, line: 511, baseType: !48, size: 32, offset: 120224)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !110, file: !111, line: 512, baseType: !20, size: 64, offset: 120256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !110, file: !111, line: 522, baseType: !736, size: 10624, offset: 120320)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !111, line: 515, size: 10624, elements: !737)
!737 = !{!738, !740, !743, !746}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !736, file: !111, line: 517, baseType: !739, size: 256, align: 128)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !35)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !736, file: !111, line: 518, baseType: !741, size: 128, align: 128, offset: 256)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 128, elements: !742)
!742 = !{!217, !463}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !736, file: !111, line: 520, baseType: !744, size: 4096, align: 128, offset: 384)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 4096, elements: !745)
!745 = !{!463, !168}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !736, file: !111, line: 521, baseType: !747, size: 6144, align: 128, offset: 4480)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 6144, elements: !748)
!748 = !{!749, !36}
!749 = !DISubrange(count: 24)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !110, file: !111, line: 732, baseType: !751, size: 82688, offset: 130944)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !111, line: 525, size: 82688, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !780, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !798, !801, !805, !806, !807, !812, !813, !816, !817, !818, !819, !820, !821, !822, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !882, !913, !914, !915, !916, !917, !918, !919, !920, !921, !924, !925, !926, !929, !932, !934, !937, !939, !940}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !751, file: !111, line: 527, baseType: !48, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !751, file: !111, line: 530, baseType: !48, size: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !751, file: !111, line: 531, baseType: !48, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !751, file: !111, line: 532, baseType: !48, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !751, file: !111, line: 535, baseType: !48, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !751, file: !111, line: 536, baseType: !48, size: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !751, file: !111, line: 537, baseType: !48, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !751, file: !111, line: 538, baseType: !48, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !751, file: !111, line: 539, baseType: !48, size: 32, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !751, file: !111, line: 542, baseType: !48, size: 32, offset: 288)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !751, file: !111, line: 543, baseType: !48, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !751, file: !111, line: 544, baseType: !48, size: 32, offset: 352)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !751, file: !111, line: 545, baseType: !48, size: 32, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !751, file: !111, line: 546, baseType: !48, size: 32, offset: 416)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !751, file: !111, line: 547, baseType: !48, size: 32, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !751, file: !111, line: 548, baseType: !48, size: 32, offset: 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !751, file: !111, line: 549, baseType: !48, size: 32, offset: 512)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !751, file: !111, line: 551, baseType: !48, size: 32, offset: 544)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !751, file: !111, line: 554, baseType: !215, size: 64, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !751, file: !111, line: 555, baseType: !215, size: 64, offset: 640)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !751, file: !111, line: 558, baseType: !215, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !751, file: !111, line: 559, baseType: !215, size: 64, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !751, file: !111, line: 561, baseType: !215, size: 64, offset: 832)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !751, file: !111, line: 562, baseType: !215, size: 64, offset: 896)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !751, file: !111, line: 565, baseType: !7, size: 32, offset: 960)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !751, file: !111, line: 566, baseType: !779, size: 128, offset: 992)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !462)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !751, file: !111, line: 567, baseType: !781, size: 512, offset: 1120)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !35)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !751, file: !111, line: 568, baseType: !7, size: 32, offset: 1632)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !751, file: !111, line: 569, baseType: !7, size: 32, offset: 1664)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !751, file: !111, line: 570, baseType: !48, size: 32, offset: 1696)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !751, file: !111, line: 571, baseType: !48, size: 32, offset: 1728)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !751, file: !111, line: 572, baseType: !48, size: 32, offset: 1760)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !751, file: !111, line: 573, baseType: !48, size: 32, offset: 1792)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !751, file: !111, line: 574, baseType: !48, size: 32, offset: 1824)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !751, file: !111, line: 575, baseType: !48, size: 32, offset: 1856)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !751, file: !111, line: 576, baseType: !48, size: 32, offset: 1888)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !751, file: !111, line: 577, baseType: !48, size: 32, offset: 1920)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !751, file: !111, line: 578, baseType: !48, size: 32, offset: 1952)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !751, file: !111, line: 585, baseType: !620, size: 64, offset: 1984)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !751, file: !111, line: 586, baseType: !47, size: 64, offset: 2048)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !751, file: !111, line: 587, baseType: !620, size: 64, offset: 2112)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !751, file: !111, line: 588, baseType: !797, size: 64, offset: 2176)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !751, file: !111, line: 589, baseType: !799, size: 64, offset: 2240)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 64, elements: !58)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !751, file: !111, line: 591, baseType: !802, size: 64, offset: 2304)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 192, elements: !804)
!804 = !{!749}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !751, file: !111, line: 592, baseType: !620, size: 64, offset: 2368)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !751, file: !111, line: 593, baseType: !626, size: 128, offset: 2432)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !751, file: !111, line: 594, baseType: !808, size: 128, offset: 2560)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !809, size: 128, elements: !216)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !811)
!811 = !{!59, !217}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !751, file: !111, line: 595, baseType: !642, size: 128, offset: 2688)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !751, file: !111, line: 596, baseType: !814, size: 4096, offset: 2816)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 4096, elements: !815)
!815 = !{!217, !527}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !751, file: !111, line: 597, baseType: !620, size: 64, offset: 6912)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !751, file: !111, line: 598, baseType: !620, size: 64, offset: 6976)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !751, file: !111, line: 599, baseType: !485, size: 64, offset: 7040)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !751, file: !111, line: 603, baseType: !615, size: 1024, offset: 7104)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !751, file: !111, line: 606, baseType: !48, size: 32, offset: 8128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !751, file: !111, line: 607, baseType: !48, size: 32, offset: 8160)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !751, file: !111, line: 608, baseType: !823, size: 32, align: 32, offset: 8192)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !462)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !751, file: !111, line: 609, baseType: !48, size: 32, offset: 8224)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !751, file: !111, line: 611, baseType: !48, size: 32, offset: 8256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !751, file: !111, line: 612, baseType: !48, size: 32, offset: 8288)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !751, file: !111, line: 614, baseType: !48, size: 32, offset: 8320)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !751, file: !111, line: 615, baseType: !48, size: 32, offset: 8352)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !751, file: !111, line: 621, baseType: !48, size: 32, offset: 8384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !751, file: !111, line: 624, baseType: !48, size: 32, offset: 8416)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !751, file: !111, line: 626, baseType: !48, size: 32, offset: 8448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !751, file: !111, line: 627, baseType: !48, size: 32, offset: 8480)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !751, file: !111, line: 671, baseType: !834, size: 60672, offset: 8576)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !111, line: 629, size: 60672, elements: !835)
!835 = !{!836, !840, !844, !846, !847, !850, !854, !856, !857, !858, !859, !860, !863, !867, !870, !871, !872, !873, !874, !877, !879, !881}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !834, file: !111, line: 634, baseType: !837, size: 3072, align: 128)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3072, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 384)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !834, file: !111, line: 635, baseType: !841, size: 6912, align: 128, offset: 3072)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 6912, elements: !842)
!842 = !{!843}
!843 = !DISubrange(count: 864)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !834, file: !111, line: 638, baseType: !845, size: 2048, align: 128, offset: 9984)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !358)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !834, file: !111, line: 639, baseType: !845, size: 2048, align: 128, offset: 12032)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !834, file: !111, line: 640, baseType: !848, size: 3072, align: 128, offset: 14080)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3072, elements: !849)
!849 = !{!74, !168}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !834, file: !111, line: 641, baseType: !851, size: 3840, align: 128, offset: 17152)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 3840, elements: !852)
!852 = !{!853, !36}
!853 = !DISubrange(count: 15)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !834, file: !111, line: 642, baseType: !855, size: 128, offset: 20992)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !462)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !834, file: !111, line: 643, baseType: !855, size: 128, offset: 21120)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !834, file: !111, line: 644, baseType: !48, size: 32, offset: 21248)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !834, file: !111, line: 645, baseType: !48, size: 32, offset: 21280)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !834, file: !111, line: 648, baseType: !744, size: 4096, align: 128, offset: 21376)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !834, file: !111, line: 649, baseType: !861, size: 4096, align: 128, offset: 25472)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 4096, elements: !862)
!862 = !{!36, !36}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !834, file: !111, line: 652, baseType: !864, size: 576, align: 128, offset: 29568)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 576, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 9)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !834, file: !111, line: 653, baseType: !868, size: 1024, align: 128, offset: 30208)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 1024, elements: !869)
!869 = !{!527}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !834, file: !111, line: 656, baseType: !604, size: 192, offset: 31232)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !834, file: !111, line: 658, baseType: !604, size: 192, offset: 31424)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !834, file: !111, line: 661, baseType: !604, size: 192, offset: 31616)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !834, file: !111, line: 664, baseType: !215, size: 64, offset: 31808)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !834, file: !111, line: 665, baseType: !875, size: 24576, offset: 31872)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24576, elements: !876)
!876 = !{!217, !527, !69}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !834, file: !111, line: 666, baseType: !878, size: 2048, offset: 56448)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2048, elements: !869)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !834, file: !111, line: 667, baseType: !880, size: 2048, offset: 58496)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 2048, elements: !523)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !834, file: !111, line: 670, baseType: !597, size: 96, offset: 60544)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !751, file: !111, line: 704, baseType: !883, size: 6144, offset: 69248)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !751, file: !111, line: 674, size: 6144, elements: !884)
!884 = !{!885, !889, !893, !896, !899, !901, !902, !905, !907, !908, !909, !910, !911, !912}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !883, file: !111, line: 677, baseType: !886, size: 320, align: 64)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 320, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 40)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !883, file: !111, line: 680, baseType: !890, size: 384, align: 128, offset: 384)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 384, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 48)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !883, file: !111, line: 683, baseType: !894, size: 640, align: 32, offset: 768)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 640, elements: !895)
!895 = !{!217, !888}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !883, file: !111, line: 686, baseType: !897, size: 2560, align: 128, offset: 1408)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 2560, elements: !898)
!898 = !{!217, !888, !217}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !883, file: !111, line: 687, baseType: !900, size: 1280, align: 64, offset: 3968)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1280, elements: !898)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !883, file: !111, line: 690, baseType: !886, size: 320, align: 32, offset: 5248)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !883, file: !111, line: 692, baseType: !903, size: 256, align: 32, offset: 5568)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 256, elements: !904)
!904 = !{!217, !463, !217}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !883, file: !111, line: 693, baseType: !906, size: 64, align: 32, offset: 5824)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 64, elements: !742)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !883, file: !111, line: 694, baseType: !48, size: 32, offset: 5888)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !883, file: !111, line: 695, baseType: !628, size: 32, align: 32, offset: 5920)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !883, file: !111, line: 698, baseType: !48, size: 32, offset: 5952)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !883, file: !111, line: 699, baseType: !48, size: 32, offset: 5984)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !883, file: !111, line: 702, baseType: !48, size: 32, offset: 6016)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !883, file: !111, line: 703, baseType: !48, size: 32, offset: 6048)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !751, file: !111, line: 707, baseType: !48, size: 32, offset: 75392)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !751, file: !111, line: 708, baseType: !48, size: 32, offset: 75424)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !751, file: !111, line: 709, baseType: !48, size: 32, offset: 75456)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !751, file: !111, line: 710, baseType: !48, size: 32, offset: 75488)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !751, file: !111, line: 711, baseType: !48, size: 32, offset: 75520)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !751, file: !111, line: 712, baseType: !48, size: 32, offset: 75552)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !751, file: !111, line: 713, baseType: !48, size: 32, offset: 75584)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !751, file: !111, line: 714, baseType: !48, size: 32, offset: 75616)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !751, file: !111, line: 717, baseType: !922, size: 128, offset: 75648)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, elements: !923)
!923 = !{!217, !217}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !751, file: !111, line: 718, baseType: !48, size: 32, offset: 75776)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !751, file: !111, line: 719, baseType: !48, size: 32, offset: 75808)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !751, file: !111, line: 722, baseType: !927, size: 4096, offset: 75840)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 4096, elements: !928)
!928 = !{!217, !527, !463}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !751, file: !111, line: 723, baseType: !930, size: 64, offset: 79936)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, elements: !462)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !751, file: !111, line: 724, baseType: !933, size: 2048, offset: 80000)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 2048, elements: !928)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !751, file: !111, line: 725, baseType: !935, size: 64, offset: 82048)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 32, elements: !462)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !751, file: !111, line: 728, baseType: !938, size: 144, offset: 82112)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 144, elements: !653)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !751, file: !111, line: 729, baseType: !48, size: 32, offset: 82272)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !751, file: !111, line: 730, baseType: !941, size: 272, offset: 82304)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 272, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 34)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !110, file: !111, line: 735, baseType: !945, size: 64, offset: 213632)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !111, line: 379, baseType: !947)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !111, line: 379, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !110, file: !111, line: 793, baseType: !949, size: 29504, offset: 213696)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !110, file: !111, line: 738, size: 29504, elements: !950)
!950 = !{!951, !978, !982, !984, !986, !987, !988, !989, !990, !991, !992, !993, !996, !998, !999, !1002, !1004, !1006, !1007, !1008}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !949, file: !111, line: 764, baseType: !952, size: 5632)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !111, line: 741, size: 5632, elements: !953)
!953 = !{!954, !955, !956, !957, !959, !960, !961, !962, !963, !965, !968, !970, !974, !975, !977}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !952, file: !111, line: 744, baseType: !48, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !952, file: !111, line: 746, baseType: !48, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !952, file: !111, line: 748, baseType: !48, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !952, file: !111, line: 750, baseType: !958, size: 608, offset: 96)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 608, elements: !727)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !952, file: !111, line: 751, baseType: !48, size: 32, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !952, file: !111, line: 752, baseType: !48, size: 32, offset: 736)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !952, file: !111, line: 753, baseType: !48, size: 32, offset: 768)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !952, file: !111, line: 754, baseType: !215, size: 64, offset: 800)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !952, file: !111, line: 755, baseType: !964, size: 2048, offset: 864)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2048, elements: !815)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !952, file: !111, line: 756, baseType: !966, size: 544, offset: 2912)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 544, elements: !967)
!967 = !{!633}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !952, file: !111, line: 757, baseType: !969, size: 192, offset: 3456)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 192, elements: !68)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !952, file: !111, line: 758, baseType: !971, size: 1664, offset: 3648)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1664, elements: !972)
!972 = !{!463, !973}
!973 = !DISubrange(count: 13)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !952, file: !111, line: 760, baseType: !215, size: 64, offset: 5312)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !952, file: !111, line: 762, baseType: !976, size: 192, offset: 5376)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !73)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !952, file: !111, line: 763, baseType: !679, size: 64, offset: 5568)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !949, file: !111, line: 769, baseType: !979, size: 160, offset: 5632)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 5)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !949, file: !111, line: 770, baseType: !983, size: 320, offset: 5824)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320, elements: !980)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !949, file: !111, line: 771, baseType: !985, size: 320, offset: 6144)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 320, elements: !980)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !949, file: !111, line: 772, baseType: !966, size: 544, offset: 6464)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !949, file: !111, line: 774, baseType: !983, size: 320, offset: 7040)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !949, file: !111, line: 775, baseType: !985, size: 320, offset: 7360)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !949, file: !111, line: 776, baseType: !985, size: 320, offset: 7680)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !949, file: !111, line: 777, baseType: !985, size: 320, offset: 8000)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !949, file: !111, line: 778, baseType: !985, size: 320, offset: 8320)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !949, file: !111, line: 779, baseType: !985, size: 320, offset: 8640)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !949, file: !111, line: 781, baseType: !994, size: 6080, offset: 8960)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 6080, elements: !995)
!995 = !{!981, !728}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !949, file: !111, line: 782, baseType: !997, size: 2176, offset: 15040)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2176, elements: !632)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !949, file: !111, line: 783, baseType: !717, size: 128, offset: 17216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !949, file: !111, line: 784, baseType: !1000, size: 8192, offset: 17344)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8192, elements: !1001)
!1001 = !{!217, !217, !527}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !949, file: !111, line: 785, baseType: !1003, size: 384, offset: 25536)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !68)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !949, file: !111, line: 786, baseType: !1005, size: 3328, offset: 25920)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 3328, elements: !972)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !949, file: !111, line: 788, baseType: !215, size: 64, offset: 29248)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !949, file: !111, line: 789, baseType: !215, size: 64, offset: 29312)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !949, file: !111, line: 791, baseType: !597, size: 96, offset: 29376)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !110, file: !111, line: 795, baseType: !1010, size: 4096, align: 128, offset: 243200)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4096, elements: !1011)
!1011 = !{!217, !168}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !110, file: !111, line: 796, baseType: !1013, size: 2048, align: 128, offset: 247296)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 2048, elements: !1011)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !110, file: !111, line: 797, baseType: !1015, size: 64, offset: 249344)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 64, elements: !216)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !110, file: !111, line: 800, baseType: !174, size: 64, offset: 249408)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !110, file: !111, line: 801, baseType: !1018, size: 384, offset: 249472)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 384, elements: !1019)
!1019 = !{!217, !74}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !110, file: !111, line: 802, baseType: !1021, size: 128, offset: 249856)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 128, elements: !216)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, elements: !1024)
!1024 = !{!217, !463, !463}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !110, file: !111, line: 805, baseType: !1026, size: 448, offset: 249984)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 448, elements: !1032)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1028, line: 27, baseType: !1029)
!1028 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !47}
!1032 = !{!1033}
!1033 = !DISubrange(count: 7)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !110, file: !111, line: 806, baseType: !1026, size: 448, offset: 250432)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !110, file: !111, line: 807, baseType: !1036, size: 768, offset: 250880)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1037, size: 768, elements: !1041)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1028, line: 28, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{null, !47, !47}
!1041 = !{!1042}
!1042 = !DISubrange(count: 12)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !110, file: !111, line: 808, baseType: !1044, size: 768, offset: 251648)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 768, elements: !1041)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !110, file: !111, line: 809, baseType: !1046, size: 64, offset: 252416)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1028, line: 29, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !47, !47, !48, !48}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !110, file: !111, line: 811, baseType: !1051, size: 8448, offset: 252480)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !6, line: 110, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 63, size: 8448, elements: !1053)
!1053 = !{!1054, !1060, !1061, !1062, !1063, !1065, !1066, !1067, !1068, !1074, !1080, !1081, !1085, !1090, !1091, !1097, !1101, !1102, !1103, !1104, !1105, !1110, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1052, file: !6, line: 65, baseType: !1055, size: 448)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 448, elements: !1032)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !6, line: 26, baseType: !1057)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!48, !47, !48, !47, !48}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1052, file: !6, line: 66, baseType: !1055, size: 448, offset: 448)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1052, file: !6, line: 67, baseType: !1055, size: 448, offset: 896)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1052, file: !6, line: 68, baseType: !1055, size: 448, offset: 1344)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1052, file: !6, line: 69, baseType: !1064, size: 256, offset: 1792)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1056, size: 256, elements: !462)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1052, file: !6, line: 70, baseType: !1055, size: 448, offset: 2048)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1052, file: !6, line: 71, baseType: !1055, size: 448, offset: 2496)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1052, file: !6, line: 72, baseType: !1055, size: 448, offset: 2944)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1052, file: !6, line: 73, baseType: !1069, size: 448, offset: 3392)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 448, elements: !1032)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !6, line: 27, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !47, !47, !47, !47, !48, !640}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1052, file: !6, line: 74, baseType: !1075, size: 448, offset: 3840)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1076, size: 448, elements: !1032)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !6, line: 28, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !47, !47, !47, !47, !47, !48, !640}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1052, file: !6, line: 75, baseType: !1055, size: 448, offset: 4288)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1052, file: !6, line: 76, baseType: !1082, size: 64, offset: 4736)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!48, !47, !48, !47, !48, !640}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1052, file: !6, line: 78, baseType: !1086, size: 256, offset: 4800)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 256, elements: !462)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!671, !47, !48}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1052, file: !6, line: 79, baseType: !1086, size: 256, offset: 5056)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1052, file: !6, line: 81, baseType: !1092, size: 64, offset: 5312)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !453, !48, !453, !48, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, elements: !462)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1052, file: !6, line: 83, baseType: !1098, size: 64, offset: 5376)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!211, !1095, !1095, !48}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1052, file: !6, line: 86, baseType: !1069, size: 448, offset: 5440)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1052, file: !6, line: 87, baseType: !1075, size: 448, offset: 5888)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1052, file: !6, line: 88, baseType: !1069, size: 448, offset: 6336)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1052, file: !6, line: 89, baseType: !1075, size: 448, offset: 6784)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1052, file: !6, line: 93, baseType: !1106, size: 448, offset: 7232)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 448, elements: !1032)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!48, !640, !485, !48, !485, !797, !48, !48}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1052, file: !6, line: 98, baseType: !1111, size: 64, offset: 7680)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !47, !47, !640}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1052, file: !6, line: 99, baseType: !1111, size: 64, offset: 7744)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1052, file: !6, line: 100, baseType: !1111, size: 64, offset: 7808)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1052, file: !6, line: 101, baseType: !1111, size: 64, offset: 7872)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1052, file: !6, line: 102, baseType: !1111, size: 64, offset: 7936)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1052, file: !6, line: 103, baseType: !1111, size: 64, offset: 8000)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1052, file: !6, line: 104, baseType: !1111, size: 64, offset: 8064)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1052, file: !6, line: 105, baseType: !1111, size: 64, offset: 8128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1052, file: !6, line: 106, baseType: !1111, size: 64, offset: 8192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1052, file: !6, line: 107, baseType: !1111, size: 64, offset: 8256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1052, file: !6, line: 108, baseType: !1111, size: 64, offset: 8320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1052, file: !6, line: 109, baseType: !1111, size: 64, offset: 8384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !110, file: !111, line: 812, baseType: !1126, size: 2368, offset: 260928)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !43, line: 111, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 58, size: 2368, elements: !1128)
!1128 = !{!1129, !1135, !1139, !1143, !1150, !1155, !1156, !1158, !1162, !1163, !1167, !1175, !1179, !1183, !1184, !1188, !1192, !1196, !1197, !1198, !1199, !1204}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1127, file: !43, line: 60, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !47, !48, !1133, !48, !48, !48, !48, !48, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1127, file: !43, line: 65, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!47, !47, !640, !1133, !48, !48, !48, !48, !48, !1134}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1127, file: !43, line: 71, baseType: !1140, size: 64, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !47, !48, !47, !48, !48, !48, !48, !48}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1127, file: !43, line: 75, baseType: !1144, size: 640, offset: 192)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 640, elements: !1148)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !47, !48, !47, !48, !47, !48, !48}
!1148 = !{!1149}
!1149 = !DISubrange(count: 10)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1127, file: !43, line: 78, baseType: !1151, size: 448, offset: 832)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 448, elements: !1032)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !47, !48, !47, !48, !48}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1127, file: !43, line: 79, baseType: !1152, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1127, file: !43, line: 81, baseType: !1157, size: 64, offset: 1344)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1127, file: !43, line: 84, baseType: !1159, size: 64, offset: 1408)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !47, !47, !47, !47, !48, !48, !48, !797}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1127, file: !43, line: 88, baseType: !1152, size: 64, offset: 1472)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1127, file: !43, line: 91, baseType: !1164, size: 64, offset: 1536)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null, !47, !48, !48}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1127, file: !43, line: 93, baseType: !1168, size: 64, offset: 1600)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!174, !174, !1171, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1174, line: 46, baseType: !673)
!1174 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1127, file: !43, line: 94, baseType: !1176, size: 64, offset: 1664)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !174, !48}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1127, file: !43, line: 97, baseType: !1180, size: 64, offset: 1728)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !485, !47, !48}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1127, file: !43, line: 98, baseType: !1180, size: 64, offset: 1792)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1127, file: !43, line: 99, baseType: !1185, size: 64, offset: 1856)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !485, !485, !48}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1127, file: !43, line: 100, baseType: !1189, size: 64, offset: 1920)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{null, !485, !48}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1127, file: !43, line: 102, baseType: !1193, size: 64, offset: 1984)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !47, !47, !47, !47, !47, !48, !48, !48, !48}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1127, file: !43, line: 104, baseType: !67, size: 64, offset: 2048)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1127, file: !43, line: 105, baseType: !67, size: 64, offset: 2112)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1127, file: !43, line: 106, baseType: !67, size: 64, offset: 2176)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1127, file: !43, line: 107, baseType: !1200, size: 64, offset: 2240)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !107, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1127, file: !43, line: 109, baseType: !1205, size: 64, offset: 2304)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !640, !485, !485, !485, !485, !48}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !110, file: !111, line: 813, baseType: !1209, size: 960, offset: 263296)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1210, line: 115, baseType: !1211)
!1210 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 89, size: 960, elements: !1212)
!1212 = !{!1213, !1217, !1221, !1226, !1227, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1243, !1247, !1251}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1211, file: !1210, line: 94, baseType: !1214, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !797, !47, !47}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1211, file: !1210, line: 95, baseType: !1218, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !47, !797}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1211, file: !1210, line: 97, baseType: !1222, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1225, !47, !47}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1211, file: !1210, line: 98, baseType: !1214, size: 64, offset: 192)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1211, file: !1210, line: 99, baseType: !1228, size: 64, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !47, !1225}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1211, file: !1210, line: 100, baseType: !1218, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1211, file: !1210, line: 102, baseType: !1222, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1211, file: !1210, line: 103, baseType: !1228, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1211, file: !1210, line: 104, baseType: !1218, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1211, file: !1210, line: 106, baseType: !1214, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1211, file: !1210, line: 107, baseType: !1218, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1211, file: !1210, line: 109, baseType: !1238, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !1241, !47, !47}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1024, elements: !167)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1211, file: !1210, line: 110, baseType: !1244, size: 64, offset: 768)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !47, !1241}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1211, file: !1210, line: 112, baseType: !1248, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !797}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1211, file: !1210, line: 113, baseType: !1248, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !110, file: !111, line: 814, baseType: !1253, size: 384, offset: 264256)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1210, line: 126, baseType: !1254)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1210, line: 117, size: 384, elements: !1255)
!1255 = !{!1256, !1260, !1261, !1265, !1266, !1270}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1254, file: !1210, line: 119, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null, !797, !797}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1254, file: !1210, line: 120, baseType: !1257, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1254, file: !1210, line: 121, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!48, !797, !453, !47}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1254, file: !1210, line: 122, baseType: !1262, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1254, file: !1210, line: 123, baseType: !1267, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!48, !797, !453, !47, !797}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1254, file: !1210, line: 124, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !797, !797, !47}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !110, file: !111, line: 815, baseType: !1275, size: 1408, offset: 264640)
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1276, line: 44, baseType: !1277)
!1276 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1276, line: 26, size: 1408, elements: !1278)
!1278 = !{!1279, !1283, !1284, !1288, !1289, !1293, !1297, !1298, !1303, !1307, !1308, !1309, !1311}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1277, file: !1276, line: 28, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!48, !797, !485, !485}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1277, file: !1276, line: 29, baseType: !1280, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1277, file: !1276, line: 30, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!48, !797, !48, !48}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1277, file: !1276, line: 31, baseType: !1285, size: 64, offset: 192)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1277, file: !1276, line: 33, baseType: !1290, size: 64, offset: 256)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !797, !466, !48}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1277, file: !1276, line: 34, baseType: !1294, size: 64, offset: 320)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !797, !460, !48}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1277, file: !1276, line: 35, baseType: !1294, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1277, file: !1276, line: 37, baseType: !1299, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !797, !1302, !485, !48}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1277, file: !1276, line: 39, baseType: !1304, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!48, !797}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1277, file: !1276, line: 40, baseType: !1304, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1277, file: !1276, line: 41, baseType: !1304, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1277, file: !1276, line: 42, baseType: !1310, size: 384, offset: 704)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1304, size: 384, elements: !68)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1277, file: !1276, line: 43, baseType: !1312, size: 320, offset: 1088)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 320, elements: !980)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!48, !797, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !311, line: 63, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !311, line: 58, size: 416, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1318, file: !311, line: 60, baseType: !48, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1318, file: !311, line: 61, baseType: !739, size: 256, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1318, file: !311, line: 62, baseType: !161, size: 128, offset: 288)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !110, file: !111, line: 816, baseType: !1324, size: 576, offset: 266048)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !568, line: 170, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 161, size: 576, elements: !1326)
!1326 = !{!1327, !1333, !1334, !1340, !1341}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1325, file: !568, line: 163, baseType: !1328, size: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1329, size: 128, elements: !216)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !568, line: 159, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{null, !47, !48, !48, !48, !620}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1325, file: !568, line: 164, baseType: !1328, size: 128, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1325, file: !568, line: 165, baseType: !1335, size: 128, offset: 256)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 128, elements: !216)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !568, line: 160, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{null, !47, !48, !48, !48}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1325, file: !568, line: 166, baseType: !1335, size: 128, offset: 384)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1325, file: !568, line: 167, baseType: !1342, size: 64, offset: 512)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{null, !47, !1345, !1346, !1349, !48, !48}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 1280, elements: !1348)
!1348 = !{!888, !217}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 128, elements: !1351)
!1351 = !{!463, !463}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !110, file: !111, line: 821, baseType: !1353, size: 64, offset: 266624)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !111, line: 377, baseType: !1355)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !111, line: 366, size: 960, elements: !1356)
!1356 = !{!1357, !1359, !1360, !1361, !1362, !1363, !1364, !1374, !1375}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1355, file: !111, line: 368, baseType: !1358, size: 8)
!1358 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1355, file: !111, line: 369, baseType: !31, size: 8, offset: 8)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1355, file: !111, line: 370, baseType: !31, size: 8, offset: 16)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1355, file: !111, line: 371, baseType: !48, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1355, file: !111, line: 372, baseType: !48, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1355, file: !111, line: 373, baseType: !566, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1355, file: !111, line: 374, baseType: !1365, size: 256, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !568, line: 157, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !568, line: 149, size: 256, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1366, file: !568, line: 151, baseType: !565, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1366, file: !568, line: 152, baseType: !48, size: 32, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1366, file: !568, line: 153, baseType: !48, size: 32, offset: 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1366, file: !568, line: 154, baseType: !48, size: 32, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1366, file: !568, line: 155, baseType: !48, size: 32, offset: 160)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1366, file: !568, line: 156, baseType: !48, size: 32, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1355, file: !111, line: 375, baseType: !1365, size: 256, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1355, file: !111, line: 376, baseType: !1365, size: 256, offset: 704)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1382, !1383, !1385, !1387, !1390, !1392}
!1377 = !DILocalVariable(name: "h", arg: 1, scope: !104, file: !28, line: 356, type: !107)
!1378 = !DILocalVariable(name: "frame", arg: 2, scope: !104, file: !28, line: 356, type: !566)
!1379 = !DILocalVariable(name: "src", scope: !104, file: !28, line: 358, type: !47)
!1380 = !DILocalVariable(name: "i_stride", scope: !104, file: !28, line: 359, type: !48)
!1381 = !DILocalVariable(name: "i_height", scope: !104, file: !28, line: 360, type: !48)
!1382 = !DILocalVariable(name: "i_width", scope: !104, file: !28, line: 361, type: !48)
!1383 = !DILocalVariable(name: "y", scope: !1384, file: !28, line: 364, type: !48)
!1384 = distinct !DILexicalBlock(scope: !104, file: !28, line: 364, column: 5)
!1385 = !DILocalVariable(name: "y", scope: !1386, file: !28, line: 373, type: !48)
!1386 = distinct !DILexicalBlock(scope: !104, file: !28, line: 373, column: 5)
!1387 = !DILocalVariable(name: "x", scope: !1388, file: !28, line: 374, type: !48)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !28, line: 374, column: 9)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !28, line: 373, column: 5)
!1390 = !DILocalVariable(name: "y", scope: !1391, file: !28, line: 377, type: !48)
!1391 = distinct !DILexicalBlock(scope: !104, file: !28, line: 377, column: 5)
!1392 = !DILocalVariable(name: "x", scope: !1393, file: !28, line: 378, type: !48)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !28, line: 378, column: 9)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !28, line: 377, column: 5)
!1395 = !DILocation(line: 0, scope: !104)
!1396 = !DILocation(line: 358, column: 27, scope: !104)
!1397 = !DILocation(line: 358, column: 20, scope: !104)
!1398 = !{!1399, !1399, i64 0}
!1399 = !{!"any pointer", !1400, i64 0}
!1400 = !{!"omnipotent char", !1401, i64 0}
!1401 = !{!"Simple C/C++ TBAA"}
!1402 = !DILocation(line: 359, column: 27, scope: !104)
!1403 = !DILocation(line: 359, column: 20, scope: !104)
!1404 = !{!1405, !1405, i64 0}
!1405 = !{!"int", !1400, i64 0}
!1406 = !DILocation(line: 360, column: 27, scope: !104)
!1407 = !DILocation(line: 360, column: 20, scope: !104)
!1408 = !DILocation(line: 361, column: 27, scope: !104)
!1409 = !DILocation(line: 361, column: 20, scope: !104)
!1410 = !DILocation(line: 0, scope: !1384)
!1411 = !DILocation(line: 364, column: 23, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1384, file: !28, line: 364, column: 5)
!1413 = !DILocation(line: 364, column: 5, scope: !1384)
!1414 = !DILocation(line: 366, column: 25, scope: !104)
!1415 = !DILocation(line: 366, column: 16, scope: !104)
!1416 = !DILocation(line: 366, column: 58, scope: !104)
!1417 = !DILocation(line: 366, column: 48, scope: !104)
!1418 = !DILocation(line: 366, column: 39, scope: !104)
!1419 = !DILocation(line: 366, column: 70, scope: !104)
!1420 = !DILocation(line: 366, column: 63, scope: !104)
!1421 = !DILocation(line: 366, column: 5, scope: !104)
!1422 = !DILocation(line: 367, column: 11, scope: !104)
!1423 = !{!1424, !1399, i64 32864}
!1424 = !{!"x264_t", !1425, i64 0, !1400, i64 704, !1405, i64 1736, !1405, i64 1740, !1405, i64 1744, !1405, i64 1748, !1405, i64 1752, !1430, i64 1760, !1399, i64 1832, !1405, i64 1840, !1405, i64 1844, !1405, i64 1848, !1405, i64 1852, !1405, i64 1856, !1405, i64 1860, !1405, i64 1864, !1405, i64 1868, !1405, i64 1872, !1405, i64 1876, !1405, i64 1880, !1405, i64 1884, !1405, i64 1888, !1405, i64 1892, !1400, i64 1896, !1399, i64 3200, !1400, i64 3208, !1399, i64 3328, !1405, i64 3336, !1405, i64 3340, !1400, i64 3344, !1400, i64 3376, !1400, i64 3392, !1400, i64 3424, !1400, i64 3440, !1400, i64 3472, !1400, i64 3488, !1400, i64 3520, !1400, i64 3536, !1400, i64 4272, !1399, i64 7216, !1433, i64 7232, !1434, i64 13904, !1435, i64 14416, !1399, i64 14680, !1399, i64 14688, !1405, i64 14696, !1400, i64 14704, !1405, i64 14856, !1400, i64 14864, !1400, i64 15016, !1405, i64 15024, !1405, i64 15028, !1432, i64 15032, !1436, i64 15040, !1437, i64 16368, !1399, i64 26704, !1440, i64 26712, !1400, i64 30400, !1400, i64 30912, !1400, i64 31168, !1399, i64 31176, !1400, i64 31184, !1400, i64 31232, !1400, i64 31248, !1400, i64 31304, !1400, i64 31360, !1400, i64 31456, !1399, i64 31552, !1443, i64 31560, !1444, i64 32616, !1445, i64 32912, !1446, i64 33032, !1447, i64 33080, !1448, i64 33256, !1399, i64 33328}
!1425 = !{!"x264_param_t", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1405, i64 16, !1405, i64 20, !1405, i64 24, !1405, i64 28, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1426, i64 44, !1405, i64 80, !1405, i64 84, !1405, i64 88, !1405, i64 92, !1405, i64 96, !1405, i64 100, !1405, i64 104, !1405, i64 108, !1405, i64 112, !1405, i64 116, !1405, i64 120, !1405, i64 124, !1405, i64 128, !1405, i64 132, !1405, i64 136, !1405, i64 140, !1405, i64 144, !1399, i64 152, !1400, i64 160, !1400, i64 176, !1400, i64 192, !1400, i64 208, !1400, i64 224, !1400, i64 288, !1399, i64 352, !1399, i64 360, !1405, i64 368, !1405, i64 372, !1399, i64 376, !1427, i64 384, !1429, i64 488, !1405, i64 632, !1405, i64 636, !1405, i64 640, !1405, i64 644, !1405, i64 648, !1405, i64 652, !1405, i64 656, !1405, i64 660, !1405, i64 664, !1405, i64 668, !1405, i64 672, !1405, i64 676, !1405, i64 680, !1405, i64 684, !1405, i64 688, !1405, i64 692, !1399, i64 696}
!1426 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1405, i64 16, !1405, i64 20, !1405, i64 24, !1405, i64 28, !1405, i64 32}
!1427 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1405, i64 16, !1405, i64 20, !1405, i64 24, !1405, i64 28, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1405, i64 44, !1405, i64 48, !1405, i64 52, !1405, i64 56, !1405, i64 60, !1405, i64 64, !1405, i64 68, !1428, i64 72, !1428, i64 76, !1405, i64 80, !1400, i64 84, !1405, i64 92, !1405, i64 96}
!1428 = !{!"float", !1400, i64 0}
!1429 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1405, i64 16, !1405, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1405, i64 36, !1405, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1405, i64 56, !1428, i64 60, !1405, i64 64, !1405, i64 68, !1405, i64 72, !1399, i64 80, !1405, i64 88, !1399, i64 96, !1428, i64 104, !1428, i64 108, !1428, i64 112, !1399, i64 120, !1405, i64 128, !1399, i64 136}
!1430 = !{!"", !1405, i64 0, !1405, i64 4, !1399, i64 8, !1405, i64 16, !1399, i64 24, !1431, i64 32}
!1431 = !{!"bs_s", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1432, i64 24, !1405, i64 32, !1405, i64 36}
!1432 = !{!"long", !1400, i64 0}
!1433 = !{!"", !1399, i64 0, !1399, i64 8, !1405, i64 16, !1405, i64 20, !1405, i64 24, !1405, i64 28, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1405, i64 44, !1405, i64 48, !1405, i64 52, !1405, i64 56, !1400, i64 60, !1405, i64 68, !1405, i64 72, !1405, i64 76, !1405, i64 80, !1405, i64 84, !1405, i64 88, !1405, i64 92, !1400, i64 96, !1400, i64 352, !1405, i64 6496, !1405, i64 6500, !1400, i64 6504, !1405, i64 6632, !1405, i64 6636, !1405, i64 6640, !1405, i64 6644, !1405, i64 6648, !1405, i64 6652, !1405, i64 6656, !1405, i64 6660}
!1434 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1399, i64 16, !1399, i64 24, !1399, i64 32, !1405, i64 48, !1400, i64 52}
!1435 = !{!"", !1399, i64 0, !1400, i64 8, !1399, i64 24, !1400, i64 32, !1405, i64 176, !1405, i64 180, !1405, i64 184, !1405, i64 188, !1405, i64 192, !1405, i64 196, !1405, i64 200, !1432, i64 208, !1432, i64 216, !1400, i64 224, !1432, i64 240, !1432, i64 248, !1405, i64 256, !1405, i64 260}
!1436 = !{!"", !1400, i64 0, !1400, i64 32, !1400, i64 48, !1400, i64 560}
!1437 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1405, i64 12, !1405, i64 16, !1405, i64 20, !1405, i64 24, !1405, i64 28, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1405, i64 44, !1405, i64 48, !1405, i64 52, !1405, i64 56, !1405, i64 60, !1405, i64 64, !1405, i64 68, !1400, i64 72, !1400, i64 80, !1400, i64 88, !1400, i64 96, !1400, i64 104, !1400, i64 112, !1405, i64 120, !1400, i64 124, !1400, i64 140, !1405, i64 204, !1405, i64 208, !1405, i64 212, !1405, i64 216, !1405, i64 220, !1405, i64 224, !1405, i64 228, !1405, i64 232, !1405, i64 236, !1405, i64 240, !1405, i64 244, !1399, i64 248, !1399, i64 256, !1399, i64 264, !1399, i64 272, !1399, i64 280, !1399, i64 288, !1399, i64 296, !1400, i64 304, !1400, i64 320, !1400, i64 336, !1400, i64 352, !1399, i64 864, !1399, i64 872, !1399, i64 880, !1400, i64 888, !1405, i64 1016, !1405, i64 1020, !1400, i64 1024, !1405, i64 1028, !1405, i64 1032, !1405, i64 1036, !1405, i64 1040, !1405, i64 1044, !1405, i64 1048, !1405, i64 1052, !1405, i64 1056, !1405, i64 1060, !1438, i64 1072, !1439, i64 8656, !1405, i64 9424, !1405, i64 9428, !1405, i64 9432, !1405, i64 9436, !1405, i64 9440, !1405, i64 9444, !1405, i64 9448, !1405, i64 9452, !1400, i64 9456, !1405, i64 9472, !1405, i64 9476, !1400, i64 9480, !1399, i64 9992, !1400, i64 10000, !1399, i64 10256, !1400, i64 10264, !1405, i64 10284, !1400, i64 10288}
!1438 = !{!"", !1400, i64 0, !1400, i64 384, !1400, i64 1248, !1400, i64 1504, !1400, i64 1760, !1400, i64 2144, !1400, i64 2624, !1400, i64 2640, !1405, i64 2656, !1405, i64 2660, !1400, i64 2672, !1400, i64 3184, !1400, i64 3696, !1400, i64 3776, !1400, i64 3904, !1400, i64 3928, !1400, i64 3952, !1400, i64 3976, !1400, i64 3984, !1400, i64 7056, !1400, i64 7312, !1400, i64 7568}
!1439 = !{!"", !1400, i64 0, !1400, i64 48, !1400, i64 96, !1400, i64 176, !1400, i64 496, !1400, i64 656, !1400, i64 696, !1400, i64 728, !1405, i64 736, !1400, i64 740, !1405, i64 744, !1405, i64 748, !1405, i64 752, !1405, i64 756}
!1440 = !{!"", !1441, i64 0, !1400, i64 704, !1400, i64 728, !1400, i64 768, !1400, i64 808, !1400, i64 880, !1400, i64 920, !1400, i64 960, !1400, i64 1000, !1400, i64 1040, !1400, i64 1080, !1400, i64 1120, !1400, i64 1880, !1400, i64 2152, !1400, i64 2168, !1400, i64 3192, !1400, i64 3240, !1400, i64 3656, !1400, i64 3664, !1400, i64 3672}
!1441 = !{!"", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1400, i64 12, !1405, i64 88, !1405, i64 92, !1405, i64 96, !1400, i64 100, !1400, i64 108, !1400, i64 364, !1400, i64 432, !1400, i64 456, !1400, i64 664, !1400, i64 672, !1442, i64 696}
!1442 = !{!"double", !1400, i64 0}
!1443 = !{!"", !1400, i64 0, !1400, i64 56, !1400, i64 112, !1400, i64 168, !1400, i64 224, !1400, i64 256, !1400, i64 312, !1400, i64 368, !1400, i64 424, !1400, i64 480, !1400, i64 536, !1399, i64 592, !1400, i64 600, !1400, i64 632, !1399, i64 664, !1399, i64 672, !1400, i64 680, !1400, i64 736, !1400, i64 792, !1400, i64 848, !1400, i64 904, !1399, i64 960, !1399, i64 968, !1399, i64 976, !1399, i64 984, !1399, i64 992, !1399, i64 1000, !1399, i64 1008, !1399, i64 1016, !1399, i64 1024, !1399, i64 1032, !1399, i64 1040, !1399, i64 1048}
!1444 = !{!"", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1400, i64 24, !1400, i64 104, !1399, i64 160, !1399, i64 168, !1399, i64 176, !1399, i64 184, !1399, i64 192, !1399, i64 200, !1399, i64 208, !1399, i64 216, !1399, i64 224, !1399, i64 232, !1399, i64 240, !1399, i64 248, !1399, i64 256, !1399, i64 264, !1399, i64 272, !1399, i64 280, !1399, i64 288}
!1445 = !{!"", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1399, i64 24, !1399, i64 32, !1399, i64 40, !1399, i64 48, !1399, i64 56, !1399, i64 64, !1399, i64 72, !1399, i64 80, !1399, i64 88, !1399, i64 96, !1399, i64 104, !1399, i64 112}
!1446 = !{!"", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1399, i64 24, !1399, i64 32, !1399, i64 40}
!1447 = !{!"", !1399, i64 0, !1399, i64 8, !1399, i64 16, !1399, i64 24, !1399, i64 32, !1399, i64 40, !1399, i64 48, !1399, i64 56, !1399, i64 64, !1399, i64 72, !1399, i64 80, !1400, i64 88, !1400, i64 136}
!1448 = !{!"", !1400, i64 0, !1400, i64 16, !1400, i64 32, !1400, i64 48, !1399, i64 64}
!1449 = !DILocation(line: 367, column: 47, scope: !104)
!1450 = !DILocation(line: 367, column: 40, scope: !104)
!1451 = !DILocation(line: 367, column: 58, scope: !104)
!1452 = !DILocation(line: 367, column: 76, scope: !104)
!1453 = !DILocation(line: 367, column: 94, scope: !104)
!1454 = !DILocation(line: 368, column: 52, scope: !104)
!1455 = !{!1456, !1405, i64 140}
!1456 = !{!"x264_frame", !1405, i64 0, !1405, i64 4, !1405, i64 8, !1432, i64 16, !1432, i64 24, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1405, i64 44, !1399, i64 48, !1405, i64 56, !1405, i64 60, !1405, i64 64, !1405, i64 68, !1405, i64 72, !1405, i64 76, !1405, i64 80, !1400, i64 84, !1400, i64 85, !1400, i64 86, !1428, i64 88, !1428, i64 92, !1405, i64 96, !1405, i64 100, !1400, i64 104, !1400, i64 116, !1400, i64 128, !1405, i64 140, !1405, i64 144, !1405, i64 148, !1400, i64 152, !1400, i64 176, !1400, i64 208, !1399, i64 240, !1400, i64 248, !1400, i64 280, !1400, i64 320, !1400, i64 3392, !1405, i64 3520, !1399, i64 3528, !1399, i64 3536, !1399, i64 3544, !1400, i64 3552, !1399, i64 3568, !1400, i64 3576, !1400, i64 3848, !1400, i64 6440, !1400, i64 6712, !1400, i64 6728, !1400, i64 6736, !1400, i64 6864, !1400, i64 6868, !1400, i64 8164, !1405, i64 9460, !1400, i64 9464, !1400, i64 9536, !1399, i64 12128, !1399, i64 12136, !1399, i64 12144, !1399, i64 12152, !1399, i64 12160, !1405, i64 12168, !1399, i64 12176, !1399, i64 12184, !1399, i64 12192, !1405, i64 12200, !1400, i64 12204, !1405, i64 12276, !1432, i64 12280, !1457, i64 12288, !1400, i64 12320, !1400, i64 12572, !1400, i64 13576, !1405, i64 15584, !1405, i64 15588, !1405, i64 15592, !1405, i64 15596, !1405, i64 15600, !1405, i64 15604, !1405, i64 15608, !1428, i64 15612, !1405, i64 15616, !1405, i64 15620, !1405, i64 15624}
!1457 = !{!"", !1442, i64 0, !1442, i64 8, !1442, i64 16, !1442, i64 24}
!1458 = !DILocation(line: 368, column: 76, scope: !104)
!1459 = !{!1456, !1405, i64 144}
!1460 = !DILocation(line: 368, column: 99, scope: !104)
!1461 = !{!1456, !1405, i64 148}
!1462 = !DILocation(line: 367, column: 5, scope: !104)
!1463 = !DILocation(line: 369, column: 5, scope: !104)
!1464 = !DILocation(line: 371, column: 20, scope: !104)
!1465 = !DILocation(line: 371, column: 5, scope: !104)
!1466 = !DILocation(line: 0, scope: !1386)
!1467 = !DILocation(line: 373, column: 34, scope: !1389)
!1468 = !{!1424, !1405, i64 100}
!1469 = !DILocation(line: 373, column: 23, scope: !1389)
!1470 = !DILocation(line: 373, column: 5, scope: !1386)
!1471 = !DILocation(line: 365, column: 50, scope: !1412)
!1472 = !DILocation(line: 365, column: 46, scope: !1412)
!1473 = !DILocation(line: 365, column: 35, scope: !1412)
!1474 = !{!1400, !1400, i64 0}
!1475 = !DILocation(line: 365, column: 9, scope: !1412)
!1476 = !DILocation(line: 365, column: 33, scope: !1412)
!1477 = !DILocation(line: 364, column: 36, scope: !1412)
!1478 = distinct !{!1478, !1413, !1479, !101, !102}
!1479 = !DILocation(line: 365, column: 59, scope: !1384)
!1480 = !DILocation(line: 0, scope: !1388)
!1481 = !DILocation(line: 374, column: 27, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1388, file: !28, line: 374, column: 9)
!1483 = !DILocation(line: 374, column: 9, scope: !1388)
!1484 = !DILocation(line: 0, scope: !1391)
!1485 = !DILocation(line: 378, column: 9, scope: !1393)
!1486 = !DILocation(line: 377, column: 5, scope: !1391)
!1487 = !DILocation(line: 0, scope: !1389)
!1488 = !DILocation(line: 373, column: 49, scope: !1389)
!1489 = distinct !{!1489, !1470, !1490, !101, !102}
!1490 = !DILocation(line: 375, column: 44, scope: !1386)
!1491 = !DILocation(line: 375, column: 13, scope: !1482)
!1492 = !DILocation(line: 375, column: 41, scope: !1482)
!1493 = !DILocation(line: 374, column: 53, scope: !1482)
!1494 = !DILocation(line: 374, column: 38, scope: !1482)
!1495 = distinct !{!1495, !1483, !1496, !101, !102}
!1496 = !DILocation(line: 375, column: 44, scope: !1388)
!1497 = !DILocation(line: 0, scope: !1393)
!1498 = !DILocation(line: 380, column: 1, scope: !104)
!1499 = !DILocation(line: 377, column: 48, scope: !1394)
!1500 = !DILocation(line: 377, column: 23, scope: !1394)
!1501 = distinct !{!1501, !1486, !1502, !101, !102}
!1502 = !DILocation(line: 379, column: 45, scope: !1391)
!1503 = !DILocation(line: 379, column: 13, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1393, file: !28, line: 378, column: 9)
!1505 = !DILocation(line: 379, column: 43, scope: !1504)
!1506 = !{!1507, !1507, i64 0}
!1507 = !{!"short", !1400, i64 0}
!1508 = !DILocation(line: 378, column: 50, scope: !1504)
!1509 = !DILocation(line: 378, column: 27, scope: !1504)
!1510 = distinct !{!1510, !1485, !1511, !101, !102}
!1511 = !DILocation(line: 379, column: 45, scope: !1393)
!1512 = !DISubprogram(name: "x264_frame_expand_border_lowres", scope: !568, file: !568, line: 179, type: !1513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !566}
!1515 = !{}
!1516 = distinct !DISubprogram(name: "x264_mc_init", scope: !28, file: !28, line: 434, type: !1517, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !48, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "cpu", arg: 1, scope: !1516, file: !28, line: 434, type: !48)
!1522 = !DILocalVariable(name: "pf", arg: 2, scope: !1516, file: !28, line: 434, type: !1519)
!1523 = !DILocation(line: 0, scope: !1516)
!1524 = !DILocation(line: 436, column: 19, scope: !1516)
!1525 = !{!1444, !1399, i64 0}
!1526 = !DILocation(line: 437, column: 9, scope: !1516)
!1527 = !DILocation(line: 437, column: 19, scope: !1516)
!1528 = !{!1444, !1399, i64 8}
!1529 = !DILocation(line: 438, column: 9, scope: !1516)
!1530 = !DILocation(line: 438, column: 19, scope: !1516)
!1531 = !{!1444, !1399, i64 16}
!1532 = !DILocation(line: 440, column: 9, scope: !1516)
!1533 = !DILocation(line: 440, column: 25, scope: !1516)
!1534 = !DILocation(line: 441, column: 5, scope: !1516)
!1535 = !DILocation(line: 441, column: 25, scope: !1516)
!1536 = !DILocation(line: 442, column: 5, scope: !1516)
!1537 = !DILocation(line: 442, column: 25, scope: !1516)
!1538 = !DILocation(line: 443, column: 5, scope: !1516)
!1539 = !DILocation(line: 443, column: 25, scope: !1516)
!1540 = !DILocation(line: 444, column: 5, scope: !1516)
!1541 = !DILocation(line: 444, column: 25, scope: !1516)
!1542 = !DILocation(line: 445, column: 5, scope: !1516)
!1543 = !DILocation(line: 445, column: 25, scope: !1516)
!1544 = !DILocation(line: 446, column: 5, scope: !1516)
!1545 = !DILocation(line: 446, column: 25, scope: !1516)
!1546 = !DILocation(line: 447, column: 5, scope: !1516)
!1547 = !DILocation(line: 447, column: 25, scope: !1516)
!1548 = !DILocation(line: 448, column: 5, scope: !1516)
!1549 = !DILocation(line: 448, column: 25, scope: !1516)
!1550 = !DILocation(line: 449, column: 5, scope: !1516)
!1551 = !DILocation(line: 449, column: 25, scope: !1516)
!1552 = !DILocation(line: 451, column: 9, scope: !1516)
!1553 = !DILocation(line: 451, column: 19, scope: !1516)
!1554 = !{!1444, !1399, i64 256}
!1555 = !DILocation(line: 452, column: 9, scope: !1516)
!1556 = !DILocation(line: 452, column: 19, scope: !1516)
!1557 = !{!1444, !1399, i64 264}
!1558 = !DILocation(line: 453, column: 9, scope: !1516)
!1559 = !DILocation(line: 453, column: 19, scope: !1516)
!1560 = !{!1444, !1399, i64 272}
!1561 = !DILocation(line: 454, column: 9, scope: !1516)
!1562 = !DILocation(line: 454, column: 22, scope: !1516)
!1563 = !{!1444, !1399, i64 280}
!1564 = !DILocation(line: 456, column: 9, scope: !1516)
!1565 = !DILocation(line: 456, column: 30, scope: !1516)
!1566 = !{!1444, !1399, i64 160}
!1567 = !DILocation(line: 457, column: 9, scope: !1516)
!1568 = !DILocation(line: 457, column: 27, scope: !1516)
!1569 = !DILocation(line: 458, column: 5, scope: !1516)
!1570 = !DILocation(line: 458, column: 27, scope: !1516)
!1571 = !DILocation(line: 459, column: 5, scope: !1516)
!1572 = !DILocation(line: 459, column: 27, scope: !1516)
!1573 = !DILocation(line: 461, column: 9, scope: !1516)
!1574 = !DILocation(line: 461, column: 20, scope: !1516)
!1575 = !{!1444, !1399, i64 168}
!1576 = !DILocation(line: 462, column: 9, scope: !1516)
!1577 = !DILocation(line: 462, column: 21, scope: !1516)
!1578 = !{!1444, !1399, i64 176}
!1579 = !DILocation(line: 464, column: 9, scope: !1516)
!1580 = !DILocation(line: 464, column: 23, scope: !1516)
!1581 = !{!1444, !1399, i64 184}
!1582 = !DILocation(line: 465, column: 9, scope: !1516)
!1583 = !DILocation(line: 465, column: 23, scope: !1516)
!1584 = !{!1444, !1399, i64 192}
!1585 = !DILocation(line: 466, column: 9, scope: !1516)
!1586 = !DILocation(line: 466, column: 24, scope: !1516)
!1587 = !{!1444, !1399, i64 200}
!1588 = !DILocation(line: 467, column: 9, scope: !1516)
!1589 = !DILocation(line: 467, column: 25, scope: !1516)
!1590 = !{!1444, !1399, i64 208}
!1591 = !DILocation(line: 468, column: 9, scope: !1516)
!1592 = !DILocation(line: 468, column: 32, scope: !1516)
!1593 = !{!1444, !1399, i64 248}
!1594 = !DILocation(line: 470, column: 9, scope: !1516)
!1595 = !DILocation(line: 470, column: 25, scope: !1516)
!1596 = !{!1444, !1399, i64 216}
!1597 = !DILocation(line: 471, column: 9, scope: !1516)
!1598 = !DILocation(line: 471, column: 25, scope: !1516)
!1599 = !{!1444, !1399, i64 224}
!1600 = !DILocation(line: 472, column: 9, scope: !1516)
!1601 = !DILocation(line: 472, column: 25, scope: !1516)
!1602 = !{!1444, !1399, i64 232}
!1603 = !DILocation(line: 473, column: 9, scope: !1516)
!1604 = !DILocation(line: 473, column: 25, scope: !1516)
!1605 = !{!1444, !1399, i64 240}
!1606 = !DILocation(line: 475, column: 9, scope: !1516)
!1607 = !DILocation(line: 475, column: 31, scope: !1516)
!1608 = !{!1444, !1399, i64 288}
!1609 = !DILocation(line: 487, column: 1, scope: !1516)
!1610 = distinct !DISubprogram(name: "mc_luma", scope: !28, file: !28, line: 209, type: !1131, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1611)
!1611 = !{!1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1612 = !DILocalVariable(name: "dst", arg: 1, scope: !1610, file: !28, line: 209, type: !47)
!1613 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1610, file: !28, line: 209, type: !48)
!1614 = !DILocalVariable(name: "src", arg: 3, scope: !1610, file: !28, line: 210, type: !1133)
!1615 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1610, file: !28, line: 210, type: !48)
!1616 = !DILocalVariable(name: "mvx", arg: 5, scope: !1610, file: !28, line: 211, type: !48)
!1617 = !DILocalVariable(name: "mvy", arg: 6, scope: !1610, file: !28, line: 211, type: !48)
!1618 = !DILocalVariable(name: "i_width", arg: 7, scope: !1610, file: !28, line: 212, type: !48)
!1619 = !DILocalVariable(name: "i_height", arg: 8, scope: !1610, file: !28, line: 212, type: !48)
!1620 = !DILocalVariable(name: "weight", arg: 9, scope: !1610, file: !28, line: 212, type: !1134)
!1621 = !DILocalVariable(name: "qpel_idx", scope: !1610, file: !28, line: 214, type: !48)
!1622 = !DILocalVariable(name: "offset", scope: !1610, file: !28, line: 215, type: !48)
!1623 = !DILocalVariable(name: "src1", scope: !1610, file: !28, line: 216, type: !47)
!1624 = !DILocalVariable(name: "src2", scope: !1625, file: !28, line: 220, type: !47)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !28, line: 219, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1610, file: !28, line: 218, column: 9)
!1627 = !DILocation(line: 0, scope: !1610)
!1628 = !DILocation(line: 214, column: 25, scope: !1610)
!1629 = !DILocation(line: 214, column: 28, scope: !1610)
!1630 = !DILocation(line: 214, column: 39, scope: !1610)
!1631 = !DILocation(line: 214, column: 33, scope: !1610)
!1632 = !DILocation(line: 215, column: 22, scope: !1610)
!1633 = !DILocation(line: 215, column: 26, scope: !1610)
!1634 = !DILocation(line: 215, column: 46, scope: !1610)
!1635 = !DILocation(line: 215, column: 40, scope: !1610)
!1636 = !DILocation(line: 216, column: 25, scope: !1610)
!1637 = !DILocation(line: 216, column: 21, scope: !1610)
!1638 = !DILocation(line: 216, column: 46, scope: !1610)
!1639 = !DILocation(line: 216, column: 66, scope: !1610)
!1640 = !DILocation(line: 216, column: 72, scope: !1610)
!1641 = !DILocation(line: 216, column: 55, scope: !1610)
!1642 = !DILocation(line: 218, column: 18, scope: !1626)
!1643 = !DILocation(line: 218, column: 9, scope: !1610)
!1644 = !DILocation(line: 220, column: 29, scope: !1625)
!1645 = !DILocation(line: 220, column: 25, scope: !1625)
!1646 = !DILocation(line: 220, column: 50, scope: !1625)
!1647 = !DILocation(line: 220, column: 70, scope: !1625)
!1648 = !DILocation(line: 220, column: 59, scope: !1625)
!1649 = !DILocation(line: 0, scope: !1625)
!1650 = !DILocalVariable(name: "dst", arg: 1, scope: !1651, file: !28, line: 37, type: !47)
!1651 = distinct !DISubprogram(name: "pixel_avg", scope: !28, file: !28, line: 37, type: !1652, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1654)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !47, !48, !47, !48, !47, !48, !48, !48}
!1654 = !{!1650, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1664}
!1655 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1651, file: !28, line: 37, type: !48)
!1656 = !DILocalVariable(name: "src1", arg: 3, scope: !1651, file: !28, line: 38, type: !47)
!1657 = !DILocalVariable(name: "i_src1_stride", arg: 4, scope: !1651, file: !28, line: 38, type: !48)
!1658 = !DILocalVariable(name: "src2", arg: 5, scope: !1651, file: !28, line: 39, type: !47)
!1659 = !DILocalVariable(name: "i_src2_stride", arg: 6, scope: !1651, file: !28, line: 39, type: !48)
!1660 = !DILocalVariable(name: "i_width", arg: 7, scope: !1651, file: !28, line: 40, type: !48)
!1661 = !DILocalVariable(name: "i_height", arg: 8, scope: !1651, file: !28, line: 40, type: !48)
!1662 = !DILocalVariable(name: "y", scope: !1663, file: !28, line: 42, type: !48)
!1663 = distinct !DILexicalBlock(scope: !1651, file: !28, line: 42, column: 5)
!1664 = !DILocalVariable(name: "x", scope: !1665, file: !28, line: 44, type: !48)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !28, line: 44, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !28, line: 43, column: 5)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !28, line: 42, column: 5)
!1668 = !DILocation(line: 0, scope: !1651, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 221, column: 9, scope: !1625)
!1670 = !DILocation(line: 0, scope: !1663, inlinedAt: !1669)
!1671 = !DILocation(line: 42, column: 23, scope: !1667, inlinedAt: !1669)
!1672 = !DILocation(line: 42, column: 5, scope: !1663, inlinedAt: !1669)
!1673 = !DILocation(line: 44, column: 9, scope: !1665, inlinedAt: !1669)
!1674 = !DILocation(line: 0, scope: !1665, inlinedAt: !1669)
!1675 = !DILocation(line: 45, column: 24, scope: !1676, inlinedAt: !1669)
!1676 = distinct !DILexicalBlock(scope: !1665, file: !28, line: 44, column: 9)
!1677 = !DILocation(line: 45, column: 34, scope: !1676, inlinedAt: !1669)
!1678 = !DILocation(line: 45, column: 32, scope: !1676, inlinedAt: !1669)
!1679 = !DILocation(line: 45, column: 42, scope: !1676, inlinedAt: !1669)
!1680 = !DILocation(line: 45, column: 48, scope: !1676, inlinedAt: !1669)
!1681 = !DILocation(line: 45, column: 22, scope: !1676, inlinedAt: !1669)
!1682 = !DILocation(line: 45, column: 13, scope: !1676, inlinedAt: !1669)
!1683 = !DILocation(line: 45, column: 20, scope: !1676, inlinedAt: !1669)
!1684 = !DILocation(line: 44, column: 39, scope: !1676, inlinedAt: !1669)
!1685 = !DILocation(line: 44, column: 27, scope: !1676, inlinedAt: !1669)
!1686 = distinct !{!1686, !1673, !1687, !101, !102}
!1687 = !DILocation(line: 45, column: 51, scope: !1665, inlinedAt: !1669)
!1688 = !DILocation(line: 46, column: 14, scope: !1666, inlinedAt: !1669)
!1689 = !DILocation(line: 47, column: 14, scope: !1666, inlinedAt: !1669)
!1690 = !DILocation(line: 48, column: 14, scope: !1666, inlinedAt: !1669)
!1691 = !DILocation(line: 42, column: 36, scope: !1667, inlinedAt: !1669)
!1692 = distinct !{!1692, !1672, !1693, !101, !102}
!1693 = !DILocation(line: 49, column: 5, scope: !1663, inlinedAt: !1669)
!1694 = !DILocation(line: 223, column: 21, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1625, file: !28, line: 223, column: 13)
!1696 = !{!1697, !1399, i64 48}
!1697 = !{!"x264_weight_t", !1400, i64 0, !1400, i64 16, !1405, i64 32, !1405, i64 36, !1405, i64 40, !1399, i64 48}
!1698 = !DILocation(line: 223, column: 13, scope: !1695)
!1699 = !DILocation(line: 223, column: 13, scope: !1625)
!1700 = !DILocalVariable(name: "dst", arg: 1, scope: !1701, file: !28, line: 122, type: !47)
!1701 = distinct !DISubprogram(name: "mc_weight", scope: !28, file: !28, line: 122, type: !1702, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !47, !48, !47, !48, !1134, !48, !48}
!1704 = !{!1700, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1715, !1718, !1721}
!1705 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1701, file: !28, line: 122, type: !48)
!1706 = !DILocalVariable(name: "src", arg: 3, scope: !1701, file: !28, line: 122, type: !47)
!1707 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1701, file: !28, line: 122, type: !48)
!1708 = !DILocalVariable(name: "weight", arg: 5, scope: !1701, file: !28, line: 122, type: !1134)
!1709 = !DILocalVariable(name: "i_width", arg: 6, scope: !1701, file: !28, line: 122, type: !48)
!1710 = !DILocalVariable(name: "i_height", arg: 7, scope: !1701, file: !28, line: 122, type: !48)
!1711 = !DILocalVariable(name: "y", scope: !1712, file: !28, line: 126, type: !48)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !28, line: 126, column: 9)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !28, line: 125, column: 5)
!1714 = distinct !DILexicalBlock(scope: !1701, file: !28, line: 124, column: 9)
!1715 = !DILocalVariable(name: "x", scope: !1716, file: !28, line: 127, type: !48)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !28, line: 127, column: 13)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !28, line: 126, column: 9)
!1718 = !DILocalVariable(name: "y", scope: !1719, file: !28, line: 132, type: !48)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !28, line: 132, column: 9)
!1720 = distinct !DILexicalBlock(scope: !1714, file: !28, line: 131, column: 5)
!1721 = !DILocalVariable(name: "x", scope: !1722, file: !28, line: 133, type: !48)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !28, line: 133, column: 13)
!1723 = distinct !DILexicalBlock(scope: !1719, file: !28, line: 132, column: 9)
!1724 = !DILocation(line: 0, scope: !1701, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 224, column: 13, scope: !1695)
!1726 = !DILocation(line: 124, column: 17, scope: !1714, inlinedAt: !1725)
!1727 = !{!1697, !1405, i64 32}
!1728 = !DILocation(line: 124, column: 25, scope: !1714, inlinedAt: !1725)
!1729 = !DILocation(line: 124, column: 9, scope: !1701, inlinedAt: !1725)
!1730 = !DILocation(line: 0, scope: !1719, inlinedAt: !1725)
!1731 = !DILocation(line: 132, column: 9, scope: !1719, inlinedAt: !1725)
!1732 = !DILocation(line: 133, column: 13, scope: !1722, inlinedAt: !1725)
!1733 = !DILocation(line: 0, scope: !1722, inlinedAt: !1725)
!1734 = !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1725)
!1735 = distinct !DILexicalBlock(scope: !1722, file: !28, line: 133, column: 13)
!1736 = !{!1697, !1405, i64 36}
!1737 = !{!1697, !1405, i64 40}
!1738 = !DILocalVariable(name: "x", arg: 1, scope: !1739, file: !111, line: 195, type: !48)
!1739 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !111, file: !111, line: 195, type: !1740, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!31, !48}
!1742 = !{!1738}
!1743 = !DILocation(line: 0, scope: !1739, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1725)
!1745 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1744)
!1746 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1744)
!1747 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1744)
!1748 = !DILocation(line: 133, column: 43, scope: !1735, inlinedAt: !1725)
!1749 = !DILocation(line: 133, column: 31, scope: !1735, inlinedAt: !1725)
!1750 = distinct !{!1750, !1732, !1751, !101, !102}
!1751 = !DILocation(line: 134, column: 17, scope: !1722, inlinedAt: !1725)
!1752 = !DILocation(line: 132, column: 40, scope: !1723, inlinedAt: !1725)
!1753 = !DILocation(line: 132, column: 48, scope: !1723, inlinedAt: !1725)
!1754 = !DILocation(line: 132, column: 27, scope: !1723, inlinedAt: !1725)
!1755 = distinct !{!1755, !1731, !1756, !101, !102}
!1756 = !DILocation(line: 134, column: 17, scope: !1719, inlinedAt: !1725)
!1757 = !DILocation(line: 0, scope: !1712, inlinedAt: !1725)
!1758 = !DILocation(line: 126, column: 9, scope: !1712, inlinedAt: !1725)
!1759 = !DILocation(line: 127, column: 13, scope: !1716, inlinedAt: !1725)
!1760 = !DILocation(line: 0, scope: !1716, inlinedAt: !1725)
!1761 = !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1725)
!1762 = distinct !DILexicalBlock(scope: !1716, file: !28, line: 127, column: 13)
!1763 = !DILocation(line: 0, scope: !1739, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1725)
!1765 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1764)
!1766 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1764)
!1767 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1764)
!1768 = !DILocation(line: 127, column: 43, scope: !1762, inlinedAt: !1725)
!1769 = !DILocation(line: 127, column: 31, scope: !1762, inlinedAt: !1725)
!1770 = distinct !{!1770, !1759, !1771, !101, !102}
!1771 = !DILocation(line: 128, column: 17, scope: !1716, inlinedAt: !1725)
!1772 = !DILocation(line: 126, column: 40, scope: !1717, inlinedAt: !1725)
!1773 = !DILocation(line: 126, column: 48, scope: !1717, inlinedAt: !1725)
!1774 = !DILocation(line: 126, column: 27, scope: !1717, inlinedAt: !1725)
!1775 = distinct !{!1775, !1758, !1776, !101, !102}
!1776 = !DILocation(line: 128, column: 17, scope: !1712, inlinedAt: !1725)
!1777 = !DILocation(line: 226, column: 22, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1626, file: !28, line: 226, column: 14)
!1779 = !DILocation(line: 226, column: 14, scope: !1778)
!1780 = !DILocation(line: 226, column: 14, scope: !1626)
!1781 = !DILocation(line: 0, scope: !1701, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 227, column: 9, scope: !1778)
!1783 = !DILocation(line: 124, column: 17, scope: !1714, inlinedAt: !1782)
!1784 = !DILocation(line: 124, column: 25, scope: !1714, inlinedAt: !1782)
!1785 = !DILocation(line: 0, scope: !1714, inlinedAt: !1782)
!1786 = !DILocation(line: 124, column: 9, scope: !1701, inlinedAt: !1782)
!1787 = !DILocation(line: 0, scope: !1719, inlinedAt: !1782)
!1788 = !DILocation(line: 132, column: 9, scope: !1719, inlinedAt: !1782)
!1789 = !DILocation(line: 133, column: 13, scope: !1722, inlinedAt: !1782)
!1790 = !DILocation(line: 0, scope: !1722, inlinedAt: !1782)
!1791 = !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1782)
!1792 = !DILocation(line: 0, scope: !1739, inlinedAt: !1793)
!1793 = distinct !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1782)
!1794 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1793)
!1795 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1793)
!1796 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1793)
!1797 = !DILocation(line: 133, column: 43, scope: !1735, inlinedAt: !1782)
!1798 = !DILocation(line: 133, column: 31, scope: !1735, inlinedAt: !1782)
!1799 = distinct !{!1799, !1789, !1800, !101, !102}
!1800 = !DILocation(line: 134, column: 17, scope: !1722, inlinedAt: !1782)
!1801 = !DILocation(line: 132, column: 40, scope: !1723, inlinedAt: !1782)
!1802 = !DILocation(line: 132, column: 48, scope: !1723, inlinedAt: !1782)
!1803 = !DILocation(line: 132, column: 69, scope: !1723, inlinedAt: !1782)
!1804 = !DILocation(line: 132, column: 27, scope: !1723, inlinedAt: !1782)
!1805 = distinct !{!1805, !1788, !1806, !101, !102}
!1806 = !DILocation(line: 134, column: 17, scope: !1719, inlinedAt: !1782)
!1807 = !DILocation(line: 0, scope: !1712, inlinedAt: !1782)
!1808 = !DILocation(line: 126, column: 9, scope: !1712, inlinedAt: !1782)
!1809 = !DILocation(line: 127, column: 13, scope: !1716, inlinedAt: !1782)
!1810 = !DILocation(line: 0, scope: !1716, inlinedAt: !1782)
!1811 = !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1782)
!1812 = !DILocation(line: 0, scope: !1739, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1782)
!1814 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1813)
!1815 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1813)
!1816 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1813)
!1817 = !DILocation(line: 127, column: 43, scope: !1762, inlinedAt: !1782)
!1818 = !DILocation(line: 127, column: 31, scope: !1762, inlinedAt: !1782)
!1819 = distinct !{!1819, !1809, !1820, !101, !102}
!1820 = !DILocation(line: 128, column: 17, scope: !1716, inlinedAt: !1782)
!1821 = !DILocation(line: 126, column: 40, scope: !1717, inlinedAt: !1782)
!1822 = !DILocation(line: 126, column: 48, scope: !1717, inlinedAt: !1782)
!1823 = !DILocation(line: 126, column: 69, scope: !1717, inlinedAt: !1782)
!1824 = !DILocation(line: 126, column: 27, scope: !1717, inlinedAt: !1782)
!1825 = distinct !{!1825, !1808, !1826, !101, !102}
!1826 = !DILocation(line: 128, column: 17, scope: !1712, inlinedAt: !1782)
!1827 = !DILocalVariable(name: "src", arg: 1, scope: !1828, file: !28, line: 172, type: !47)
!1828 = distinct !DISubprogram(name: "mc_copy", scope: !28, file: !28, line: 172, type: !83, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1829)
!1829 = !{!1827, !1830, !1831, !1832, !1833, !1834, !1835}
!1830 = !DILocalVariable(name: "i_src_stride", arg: 2, scope: !1828, file: !28, line: 172, type: !48)
!1831 = !DILocalVariable(name: "dst", arg: 3, scope: !1828, file: !28, line: 172, type: !47)
!1832 = !DILocalVariable(name: "i_dst_stride", arg: 4, scope: !1828, file: !28, line: 172, type: !48)
!1833 = !DILocalVariable(name: "i_width", arg: 5, scope: !1828, file: !28, line: 172, type: !48)
!1834 = !DILocalVariable(name: "i_height", arg: 6, scope: !1828, file: !28, line: 172, type: !48)
!1835 = !DILocalVariable(name: "y", scope: !1836, file: !28, line: 174, type: !48)
!1836 = distinct !DILexicalBlock(scope: !1828, file: !28, line: 174, column: 5)
!1837 = !DILocation(line: 0, scope: !1828, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 229, column: 9, scope: !1778)
!1839 = !DILocation(line: 0, scope: !1836, inlinedAt: !1838)
!1840 = !DILocation(line: 174, column: 23, scope: !1841, inlinedAt: !1838)
!1841 = distinct !DILexicalBlock(scope: !1836, file: !28, line: 174, column: 5)
!1842 = !DILocation(line: 174, column: 5, scope: !1836, inlinedAt: !1838)
!1843 = !DILocation(line: 176, column: 9, scope: !1844, inlinedAt: !1838)
!1844 = distinct !DILexicalBlock(scope: !1841, file: !28, line: 175, column: 5)
!1845 = !DILocation(line: 178, column: 13, scope: !1844, inlinedAt: !1838)
!1846 = !DILocation(line: 179, column: 13, scope: !1844, inlinedAt: !1838)
!1847 = !DILocation(line: 174, column: 36, scope: !1841, inlinedAt: !1838)
!1848 = distinct !{!1848, !1842, !1849, !101, !102}
!1849 = !DILocation(line: 180, column: 5, scope: !1836, inlinedAt: !1838)
!1850 = !DILocation(line: 230, column: 1, scope: !1610)
!1851 = distinct !DISubprogram(name: "get_ref", scope: !28, file: !28, line: 232, type: !1137, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1852)
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865}
!1853 = !DILocalVariable(name: "dst", arg: 1, scope: !1851, file: !28, line: 232, type: !47)
!1854 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !1851, file: !28, line: 232, type: !640)
!1855 = !DILocalVariable(name: "src", arg: 3, scope: !1851, file: !28, line: 233, type: !1133)
!1856 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !1851, file: !28, line: 233, type: !48)
!1857 = !DILocalVariable(name: "mvx", arg: 5, scope: !1851, file: !28, line: 234, type: !48)
!1858 = !DILocalVariable(name: "mvy", arg: 6, scope: !1851, file: !28, line: 234, type: !48)
!1859 = !DILocalVariable(name: "i_width", arg: 7, scope: !1851, file: !28, line: 235, type: !48)
!1860 = !DILocalVariable(name: "i_height", arg: 8, scope: !1851, file: !28, line: 235, type: !48)
!1861 = !DILocalVariable(name: "weight", arg: 9, scope: !1851, file: !28, line: 235, type: !1134)
!1862 = !DILocalVariable(name: "qpel_idx", scope: !1851, file: !28, line: 237, type: !48)
!1863 = !DILocalVariable(name: "offset", scope: !1851, file: !28, line: 238, type: !48)
!1864 = !DILocalVariable(name: "src1", scope: !1851, file: !28, line: 239, type: !47)
!1865 = !DILocalVariable(name: "src2", scope: !1866, file: !28, line: 243, type: !47)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !28, line: 242, column: 5)
!1867 = distinct !DILexicalBlock(scope: !1851, file: !28, line: 241, column: 9)
!1868 = !DILocation(line: 0, scope: !1851)
!1869 = !DILocation(line: 237, column: 25, scope: !1851)
!1870 = !DILocation(line: 237, column: 28, scope: !1851)
!1871 = !DILocation(line: 237, column: 39, scope: !1851)
!1872 = !DILocation(line: 237, column: 33, scope: !1851)
!1873 = !DILocation(line: 238, column: 22, scope: !1851)
!1874 = !DILocation(line: 238, column: 26, scope: !1851)
!1875 = !DILocation(line: 238, column: 46, scope: !1851)
!1876 = !DILocation(line: 238, column: 40, scope: !1851)
!1877 = !DILocation(line: 239, column: 25, scope: !1851)
!1878 = !DILocation(line: 239, column: 21, scope: !1851)
!1879 = !DILocation(line: 239, column: 46, scope: !1851)
!1880 = !DILocation(line: 239, column: 66, scope: !1851)
!1881 = !DILocation(line: 239, column: 72, scope: !1851)
!1882 = !DILocation(line: 239, column: 55, scope: !1851)
!1883 = !DILocation(line: 241, column: 18, scope: !1867)
!1884 = !DILocation(line: 241, column: 9, scope: !1851)
!1885 = !DILocation(line: 243, column: 29, scope: !1866)
!1886 = !DILocation(line: 243, column: 25, scope: !1866)
!1887 = !DILocation(line: 243, column: 50, scope: !1866)
!1888 = !DILocation(line: 243, column: 70, scope: !1866)
!1889 = !DILocation(line: 243, column: 59, scope: !1866)
!1890 = !DILocation(line: 0, scope: !1866)
!1891 = !DILocation(line: 0, scope: !1651, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 244, column: 9, scope: !1866)
!1893 = !DILocation(line: 0, scope: !1663, inlinedAt: !1892)
!1894 = !DILocation(line: 42, column: 23, scope: !1667, inlinedAt: !1892)
!1895 = !DILocation(line: 42, column: 5, scope: !1663, inlinedAt: !1892)
!1896 = !DILocation(line: 244, column: 25, scope: !1866)
!1897 = !DILocation(line: 44, column: 9, scope: !1665, inlinedAt: !1892)
!1898 = !DILocation(line: 0, scope: !1665, inlinedAt: !1892)
!1899 = !DILocation(line: 45, column: 24, scope: !1676, inlinedAt: !1892)
!1900 = !DILocation(line: 45, column: 34, scope: !1676, inlinedAt: !1892)
!1901 = !DILocation(line: 45, column: 32, scope: !1676, inlinedAt: !1892)
!1902 = !DILocation(line: 45, column: 42, scope: !1676, inlinedAt: !1892)
!1903 = !DILocation(line: 45, column: 48, scope: !1676, inlinedAt: !1892)
!1904 = !DILocation(line: 45, column: 22, scope: !1676, inlinedAt: !1892)
!1905 = !DILocation(line: 45, column: 13, scope: !1676, inlinedAt: !1892)
!1906 = !DILocation(line: 45, column: 20, scope: !1676, inlinedAt: !1892)
!1907 = !DILocation(line: 44, column: 39, scope: !1676, inlinedAt: !1892)
!1908 = !DILocation(line: 44, column: 27, scope: !1676, inlinedAt: !1892)
!1909 = distinct !{!1909, !1897, !1910, !101, !102}
!1910 = !DILocation(line: 45, column: 51, scope: !1665, inlinedAt: !1892)
!1911 = !DILocation(line: 46, column: 14, scope: !1666, inlinedAt: !1892)
!1912 = !DILocation(line: 47, column: 14, scope: !1666, inlinedAt: !1892)
!1913 = !DILocation(line: 48, column: 14, scope: !1666, inlinedAt: !1892)
!1914 = !DILocation(line: 42, column: 36, scope: !1667, inlinedAt: !1892)
!1915 = distinct !{!1915, !1895, !1916, !101, !102}
!1916 = !DILocation(line: 49, column: 5, scope: !1663, inlinedAt: !1892)
!1917 = !DILocation(line: 246, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1866, file: !28, line: 246, column: 13)
!1919 = !DILocation(line: 246, column: 13, scope: !1918)
!1920 = !DILocation(line: 246, column: 13, scope: !1866)
!1921 = !DILocation(line: 247, column: 29, scope: !1918)
!1922 = !DILocation(line: 0, scope: !1701, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 247, column: 13, scope: !1918)
!1924 = !DILocation(line: 124, column: 17, scope: !1714, inlinedAt: !1923)
!1925 = !DILocation(line: 124, column: 25, scope: !1714, inlinedAt: !1923)
!1926 = !DILocation(line: 124, column: 9, scope: !1701, inlinedAt: !1923)
!1927 = !DILocation(line: 0, scope: !1719, inlinedAt: !1923)
!1928 = !DILocation(line: 132, column: 9, scope: !1719, inlinedAt: !1923)
!1929 = !DILocation(line: 133, column: 13, scope: !1722, inlinedAt: !1923)
!1930 = !DILocation(line: 0, scope: !1722, inlinedAt: !1923)
!1931 = !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1923)
!1932 = !DILocation(line: 0, scope: !1739, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1923)
!1934 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1933)
!1935 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1933)
!1936 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1933)
!1937 = !DILocation(line: 133, column: 43, scope: !1735, inlinedAt: !1923)
!1938 = !DILocation(line: 133, column: 31, scope: !1735, inlinedAt: !1923)
!1939 = distinct !{!1939, !1929, !1940, !101, !102}
!1940 = !DILocation(line: 134, column: 17, scope: !1722, inlinedAt: !1923)
!1941 = !DILocation(line: 132, column: 40, scope: !1723, inlinedAt: !1923)
!1942 = !DILocation(line: 132, column: 48, scope: !1723, inlinedAt: !1923)
!1943 = !DILocation(line: 132, column: 27, scope: !1723, inlinedAt: !1923)
!1944 = distinct !{!1944, !1928, !1945, !101, !102}
!1945 = !DILocation(line: 134, column: 17, scope: !1719, inlinedAt: !1923)
!1946 = !DILocation(line: 0, scope: !1712, inlinedAt: !1923)
!1947 = !DILocation(line: 126, column: 9, scope: !1712, inlinedAt: !1923)
!1948 = !DILocation(line: 127, column: 13, scope: !1716, inlinedAt: !1923)
!1949 = !DILocation(line: 0, scope: !1716, inlinedAt: !1923)
!1950 = !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1923)
!1951 = !DILocation(line: 0, scope: !1739, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1923)
!1953 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1952)
!1954 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1952)
!1955 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1952)
!1956 = !DILocation(line: 127, column: 43, scope: !1762, inlinedAt: !1923)
!1957 = !DILocation(line: 127, column: 31, scope: !1762, inlinedAt: !1923)
!1958 = distinct !{!1958, !1948, !1959, !101, !102}
!1959 = !DILocation(line: 128, column: 17, scope: !1716, inlinedAt: !1923)
!1960 = !DILocation(line: 126, column: 40, scope: !1717, inlinedAt: !1923)
!1961 = !DILocation(line: 126, column: 48, scope: !1717, inlinedAt: !1923)
!1962 = !DILocation(line: 126, column: 27, scope: !1717, inlinedAt: !1923)
!1963 = distinct !{!1963, !1947, !1964, !101, !102}
!1964 = !DILocation(line: 128, column: 17, scope: !1712, inlinedAt: !1923)
!1965 = !DILocation(line: 250, column: 22, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1867, file: !28, line: 250, column: 14)
!1967 = !DILocation(line: 250, column: 14, scope: !1966)
!1968 = !DILocation(line: 250, column: 14, scope: !1867)
!1969 = !DILocation(line: 252, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !28, line: 251, column: 5)
!1971 = !DILocation(line: 0, scope: !1701, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 252, column: 9, scope: !1970)
!1973 = !DILocation(line: 124, column: 17, scope: !1714, inlinedAt: !1972)
!1974 = !DILocation(line: 124, column: 25, scope: !1714, inlinedAt: !1972)
!1975 = !DILocation(line: 0, scope: !1714, inlinedAt: !1972)
!1976 = !DILocation(line: 124, column: 9, scope: !1701, inlinedAt: !1972)
!1977 = !DILocation(line: 0, scope: !1719, inlinedAt: !1972)
!1978 = !DILocation(line: 132, column: 9, scope: !1719, inlinedAt: !1972)
!1979 = !DILocation(line: 133, column: 13, scope: !1722, inlinedAt: !1972)
!1980 = !DILocation(line: 0, scope: !1722, inlinedAt: !1972)
!1981 = !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1972)
!1982 = !DILocation(line: 0, scope: !1739, inlinedAt: !1983)
!1983 = distinct !DILocation(line: 134, column: 17, scope: !1735, inlinedAt: !1972)
!1984 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !1983)
!1985 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !1983)
!1986 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !1983)
!1987 = !DILocation(line: 133, column: 43, scope: !1735, inlinedAt: !1972)
!1988 = !DILocation(line: 133, column: 31, scope: !1735, inlinedAt: !1972)
!1989 = distinct !{!1989, !1979, !1990, !101, !102}
!1990 = !DILocation(line: 134, column: 17, scope: !1722, inlinedAt: !1972)
!1991 = !DILocation(line: 132, column: 40, scope: !1723, inlinedAt: !1972)
!1992 = !DILocation(line: 132, column: 48, scope: !1723, inlinedAt: !1972)
!1993 = !DILocation(line: 132, column: 69, scope: !1723, inlinedAt: !1972)
!1994 = !DILocation(line: 132, column: 27, scope: !1723, inlinedAt: !1972)
!1995 = distinct !{!1995, !1978, !1996, !101, !102}
!1996 = !DILocation(line: 134, column: 17, scope: !1719, inlinedAt: !1972)
!1997 = !DILocation(line: 0, scope: !1712, inlinedAt: !1972)
!1998 = !DILocation(line: 126, column: 9, scope: !1712, inlinedAt: !1972)
!1999 = !DILocation(line: 127, column: 13, scope: !1716, inlinedAt: !1972)
!2000 = !DILocation(line: 0, scope: !1716, inlinedAt: !1972)
!2001 = !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1972)
!2002 = !DILocation(line: 0, scope: !1739, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 128, column: 17, scope: !1762, inlinedAt: !1972)
!2004 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2003)
!2005 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2003)
!2006 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2003)
!2007 = !DILocation(line: 127, column: 43, scope: !1762, inlinedAt: !1972)
!2008 = !DILocation(line: 127, column: 31, scope: !1762, inlinedAt: !1972)
!2009 = distinct !{!2009, !1999, !2010, !101, !102}
!2010 = !DILocation(line: 128, column: 17, scope: !1716, inlinedAt: !1972)
!2011 = !DILocation(line: 126, column: 40, scope: !1717, inlinedAt: !1972)
!2012 = !DILocation(line: 126, column: 48, scope: !1717, inlinedAt: !1972)
!2013 = !DILocation(line: 126, column: 69, scope: !1717, inlinedAt: !1972)
!2014 = !DILocation(line: 126, column: 27, scope: !1717, inlinedAt: !1972)
!2015 = distinct !{!2015, !1998, !2016, !101, !102}
!2016 = !DILocation(line: 128, column: 17, scope: !1712, inlinedAt: !1972)
!2017 = !DILocation(line: 257, column: 23, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1966, file: !28, line: 256, column: 5)
!2019 = !DILocation(line: 258, column: 9, scope: !2018)
!2020 = !DILocation(line: 0, scope: !1867)
!2021 = !DILocation(line: 260, column: 1, scope: !1851)
!2022 = distinct !DISubprogram(name: "mc_chroma", scope: !28, file: !28, line: 263, type: !1141, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2023 = !{!2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2041}
!2024 = !DILocalVariable(name: "dst", arg: 1, scope: !2022, file: !28, line: 263, type: !47)
!2025 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !2022, file: !28, line: 263, type: !48)
!2026 = !DILocalVariable(name: "src", arg: 3, scope: !2022, file: !28, line: 264, type: !47)
!2027 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !2022, file: !28, line: 264, type: !48)
!2028 = !DILocalVariable(name: "mvx", arg: 5, scope: !2022, file: !28, line: 265, type: !48)
!2029 = !DILocalVariable(name: "mvy", arg: 6, scope: !2022, file: !28, line: 265, type: !48)
!2030 = !DILocalVariable(name: "i_width", arg: 7, scope: !2022, file: !28, line: 266, type: !48)
!2031 = !DILocalVariable(name: "i_height", arg: 8, scope: !2022, file: !28, line: 266, type: !48)
!2032 = !DILocalVariable(name: "srcp", scope: !2022, file: !28, line: 268, type: !47)
!2033 = !DILocalVariable(name: "d8x", scope: !2022, file: !28, line: 270, type: !48)
!2034 = !DILocalVariable(name: "d8y", scope: !2022, file: !28, line: 271, type: !48)
!2035 = !DILocalVariable(name: "cA", scope: !2022, file: !28, line: 272, type: !48)
!2036 = !DILocalVariable(name: "cB", scope: !2022, file: !28, line: 273, type: !48)
!2037 = !DILocalVariable(name: "cC", scope: !2022, file: !28, line: 274, type: !48)
!2038 = !DILocalVariable(name: "cD", scope: !2022, file: !28, line: 275, type: !48)
!2039 = !DILocalVariable(name: "y", scope: !2040, file: !28, line: 280, type: !48)
!2040 = distinct !DILexicalBlock(scope: !2022, file: !28, line: 280, column: 5)
!2041 = !DILocalVariable(name: "x", scope: !2042, file: !28, line: 282, type: !48)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !28, line: 282, column: 9)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !28, line: 281, column: 5)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !28, line: 280, column: 5)
!2045 = !DILocation(line: 0, scope: !2022)
!2046 = !DILocation(line: 270, column: 18, scope: !2022)
!2047 = !DILocation(line: 271, column: 18, scope: !2022)
!2048 = !DILocation(line: 272, column: 16, scope: !2022)
!2049 = !DILocation(line: 272, column: 24, scope: !2022)
!2050 = !DILocation(line: 278, column: 13, scope: !2022)
!2051 = !DILocation(line: 0, scope: !2040)
!2052 = !DILocation(line: 280, column: 23, scope: !2044)
!2053 = !DILocation(line: 280, column: 5, scope: !2040)
!2054 = !DILocation(line: 282, column: 9, scope: !2042)
!2055 = !DILocation(line: 277, column: 17, scope: !2022)
!2056 = !DILocation(line: 277, column: 23, scope: !2022)
!2057 = !DILocation(line: 277, column: 45, scope: !2022)
!2058 = !DILocation(line: 277, column: 38, scope: !2022)
!2059 = !DILocation(line: 277, column: 9, scope: !2022)
!2060 = !DILocation(line: 0, scope: !2042)
!2061 = !DILocation(line: 283, column: 27, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2042, file: !28, line: 282, column: 9)
!2063 = !DILocation(line: 283, column: 26, scope: !2062)
!2064 = !DILocation(line: 283, column: 45, scope: !2062)
!2065 = !DILocation(line: 283, column: 40, scope: !2062)
!2066 = !DILocation(line: 283, column: 39, scope: !2062)
!2067 = !DILocation(line: 283, column: 54, scope: !2062)
!2068 = !DILocation(line: 283, column: 53, scope: !2062)
!2069 = !DILocation(line: 283, column: 67, scope: !2062)
!2070 = !DILocation(line: 283, column: 66, scope: !2062)
!2071 = !DILocation(line: 283, column: 62, scope: !2062)
!2072 = !DILocation(line: 283, column: 77, scope: !2062)
!2073 = !DILocation(line: 283, column: 84, scope: !2062)
!2074 = !DILocation(line: 283, column: 22, scope: !2062)
!2075 = !DILocation(line: 283, column: 13, scope: !2062)
!2076 = !DILocation(line: 283, column: 20, scope: !2062)
!2077 = !DILocation(line: 282, column: 27, scope: !2062)
!2078 = distinct !{!2078, !2054, !2079, !101, !102}
!2079 = !DILocation(line: 283, column: 87, scope: !2042)
!2080 = !DILocation(line: 284, column: 14, scope: !2043)
!2081 = !DILocation(line: 280, column: 36, scope: !2044)
!2082 = distinct !{!2082, !2053, !2083, !101, !102}
!2083 = !DILocation(line: 287, column: 5, scope: !2040)
!2084 = !DILocation(line: 288, column: 1, scope: !2022)
!2085 = distinct !DISubprogram(name: "pixel_avg_16x16", scope: !28, file: !28, line: 105, type: !1146, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2086)
!2086 = !{!2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2087 = !DILocalVariable(name: "pix1", arg: 1, scope: !2085, file: !28, line: 105, type: !47)
!2088 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2085, file: !28, line: 105, type: !48)
!2089 = !DILocalVariable(name: "pix2", arg: 3, scope: !2085, file: !28, line: 105, type: !47)
!2090 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2085, file: !28, line: 105, type: !48)
!2091 = !DILocalVariable(name: "pix3", arg: 5, scope: !2085, file: !28, line: 105, type: !47)
!2092 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2085, file: !28, line: 105, type: !48)
!2093 = !DILocalVariable(name: "weight", arg: 7, scope: !2085, file: !28, line: 105, type: !48)
!2094 = !DILocation(line: 0, scope: !2085)
!2095 = !DILocation(line: 105, column: 1, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2085, file: !28, line: 105, column: 1)
!2097 = !DILocation(line: 105, column: 1, scope: !2085)
!2098 = !DILocalVariable(name: "dst", arg: 1, scope: !2099, file: !28, line: 52, type: !47)
!2099 = distinct !DISubprogram(name: "pixel_avg_wxh", scope: !28, file: !28, line: 52, type: !1652, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2100)
!2100 = !{!2098, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2110}
!2101 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2099, file: !28, line: 52, type: !48)
!2102 = !DILocalVariable(name: "src1", arg: 3, scope: !2099, file: !28, line: 52, type: !47)
!2103 = !DILocalVariable(name: "i_src1", arg: 4, scope: !2099, file: !28, line: 52, type: !48)
!2104 = !DILocalVariable(name: "src2", arg: 5, scope: !2099, file: !28, line: 52, type: !47)
!2105 = !DILocalVariable(name: "i_src2", arg: 6, scope: !2099, file: !28, line: 52, type: !48)
!2106 = !DILocalVariable(name: "width", arg: 7, scope: !2099, file: !28, line: 52, type: !48)
!2107 = !DILocalVariable(name: "height", arg: 8, scope: !2099, file: !28, line: 52, type: !48)
!2108 = !DILocalVariable(name: "y", scope: !2109, file: !28, line: 54, type: !48)
!2109 = distinct !DILexicalBlock(scope: !2099, file: !28, line: 54, column: 5)
!2110 = !DILocalVariable(name: "x", scope: !2111, file: !28, line: 56, type: !48)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !28, line: 56, column: 9)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !28, line: 55, column: 5)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !28, line: 54, column: 5)
!2114 = !DILocation(line: 0, scope: !2099, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 105, column: 1, scope: !2096)
!2116 = !DILocation(line: 0, scope: !2109, inlinedAt: !2115)
!2117 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2115)
!2118 = !DILocation(line: 0, scope: !2111, inlinedAt: !2115)
!2119 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2115)
!2120 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2115)
!2121 = distinct !DILexicalBlock(scope: !2111, file: !28, line: 56, column: 9)
!2122 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2115)
!2123 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2115)
!2124 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2115)
!2125 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2115)
!2126 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2115)
!2127 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2115)
!2128 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2115)
!2129 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2115)
!2130 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2115)
!2131 = distinct !{!2131, !2119, !2132, !101, !102}
!2132 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2115)
!2133 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2115)
!2134 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2115)
!2135 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2115)
!2136 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2115)
!2137 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2115)
!2138 = distinct !{!2138, !2117, !2139, !101, !102}
!2139 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2115)
!2140 = distinct !DISubprogram(name: "pixel_avg_16x8", scope: !28, file: !28, line: 106, type: !1146, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2141)
!2141 = !{!2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2142 = !DILocalVariable(name: "pix1", arg: 1, scope: !2140, file: !28, line: 106, type: !47)
!2143 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2140, file: !28, line: 106, type: !48)
!2144 = !DILocalVariable(name: "pix2", arg: 3, scope: !2140, file: !28, line: 106, type: !47)
!2145 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2140, file: !28, line: 106, type: !48)
!2146 = !DILocalVariable(name: "pix3", arg: 5, scope: !2140, file: !28, line: 106, type: !47)
!2147 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2140, file: !28, line: 106, type: !48)
!2148 = !DILocalVariable(name: "weight", arg: 7, scope: !2140, file: !28, line: 106, type: !48)
!2149 = !DILocation(line: 0, scope: !2140)
!2150 = !DILocation(line: 106, column: 1, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2140, file: !28, line: 106, column: 1)
!2152 = !DILocation(line: 106, column: 1, scope: !2140)
!2153 = !DILocation(line: 0, scope: !2099, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 106, column: 1, scope: !2151)
!2155 = !DILocation(line: 0, scope: !2109, inlinedAt: !2154)
!2156 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2154)
!2157 = !DILocation(line: 0, scope: !2111, inlinedAt: !2154)
!2158 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2154)
!2159 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2154)
!2160 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2154)
!2161 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2154)
!2162 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2154)
!2163 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2154)
!2164 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2154)
!2165 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2154)
!2166 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2154)
!2167 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2154)
!2168 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2154)
!2169 = distinct !{!2169, !2158, !2170, !101, !102}
!2170 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2154)
!2171 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2154)
!2172 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2154)
!2173 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2154)
!2174 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2154)
!2175 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2154)
!2176 = distinct !{!2176, !2156, !2177, !101, !102}
!2177 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2154)
!2178 = distinct !DISubprogram(name: "pixel_avg_8x16", scope: !28, file: !28, line: 107, type: !1146, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2179)
!2179 = !{!2180, !2181, !2182, !2183, !2184, !2185, !2186}
!2180 = !DILocalVariable(name: "pix1", arg: 1, scope: !2178, file: !28, line: 107, type: !47)
!2181 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2178, file: !28, line: 107, type: !48)
!2182 = !DILocalVariable(name: "pix2", arg: 3, scope: !2178, file: !28, line: 107, type: !47)
!2183 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2178, file: !28, line: 107, type: !48)
!2184 = !DILocalVariable(name: "pix3", arg: 5, scope: !2178, file: !28, line: 107, type: !47)
!2185 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2178, file: !28, line: 107, type: !48)
!2186 = !DILocalVariable(name: "weight", arg: 7, scope: !2178, file: !28, line: 107, type: !48)
!2187 = !DILocation(line: 0, scope: !2178)
!2188 = !DILocation(line: 107, column: 1, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2178, file: !28, line: 107, column: 1)
!2190 = !DILocation(line: 107, column: 1, scope: !2178)
!2191 = !DILocation(line: 0, scope: !2099, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 107, column: 1, scope: !2189)
!2193 = !DILocation(line: 0, scope: !2109, inlinedAt: !2192)
!2194 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2192)
!2195 = !DILocation(line: 0, scope: !2111, inlinedAt: !2192)
!2196 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2192)
!2197 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2192)
!2198 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2192)
!2199 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2192)
!2200 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2192)
!2201 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2192)
!2202 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2192)
!2203 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2192)
!2204 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2192)
!2205 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2192)
!2206 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2192)
!2207 = distinct !{!2207, !2196, !2208, !101, !102}
!2208 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2192)
!2209 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2192)
!2210 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2192)
!2211 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2192)
!2212 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2192)
!2213 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2192)
!2214 = distinct !{!2214, !2194, !2215, !101, !102}
!2215 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2192)
!2216 = distinct !DISubprogram(name: "pixel_avg_8x8", scope: !28, file: !28, line: 108, type: !1146, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2218 = !DILocalVariable(name: "pix1", arg: 1, scope: !2216, file: !28, line: 108, type: !47)
!2219 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2216, file: !28, line: 108, type: !48)
!2220 = !DILocalVariable(name: "pix2", arg: 3, scope: !2216, file: !28, line: 108, type: !47)
!2221 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2216, file: !28, line: 108, type: !48)
!2222 = !DILocalVariable(name: "pix3", arg: 5, scope: !2216, file: !28, line: 108, type: !47)
!2223 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2216, file: !28, line: 108, type: !48)
!2224 = !DILocalVariable(name: "weight", arg: 7, scope: !2216, file: !28, line: 108, type: !48)
!2225 = !DILocation(line: 0, scope: !2216)
!2226 = !DILocation(line: 108, column: 1, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !28, line: 108, column: 1)
!2228 = !DILocation(line: 108, column: 1, scope: !2216)
!2229 = !DILocation(line: 0, scope: !2099, inlinedAt: !2230)
!2230 = distinct !DILocation(line: 108, column: 1, scope: !2227)
!2231 = !DILocation(line: 0, scope: !2109, inlinedAt: !2230)
!2232 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2230)
!2233 = !DILocation(line: 0, scope: !2111, inlinedAt: !2230)
!2234 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2230)
!2235 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2230)
!2236 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2230)
!2237 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2230)
!2238 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2230)
!2239 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2230)
!2240 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2230)
!2241 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2230)
!2242 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2230)
!2243 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2230)
!2244 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2230)
!2245 = distinct !{!2245, !2234, !2246, !101, !102}
!2246 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2230)
!2247 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2230)
!2248 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2230)
!2249 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2230)
!2250 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2230)
!2251 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2230)
!2252 = distinct !{!2252, !2232, !2253, !101, !102}
!2253 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2230)
!2254 = distinct !DISubprogram(name: "pixel_avg_8x4", scope: !28, file: !28, line: 109, type: !1146, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2255)
!2255 = !{!2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2256 = !DILocalVariable(name: "pix1", arg: 1, scope: !2254, file: !28, line: 109, type: !47)
!2257 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2254, file: !28, line: 109, type: !48)
!2258 = !DILocalVariable(name: "pix2", arg: 3, scope: !2254, file: !28, line: 109, type: !47)
!2259 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2254, file: !28, line: 109, type: !48)
!2260 = !DILocalVariable(name: "pix3", arg: 5, scope: !2254, file: !28, line: 109, type: !47)
!2261 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2254, file: !28, line: 109, type: !48)
!2262 = !DILocalVariable(name: "weight", arg: 7, scope: !2254, file: !28, line: 109, type: !48)
!2263 = !DILocation(line: 0, scope: !2254)
!2264 = !DILocation(line: 109, column: 1, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2254, file: !28, line: 109, column: 1)
!2266 = !DILocation(line: 109, column: 1, scope: !2254)
!2267 = !DILocation(line: 0, scope: !2099, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 109, column: 1, scope: !2265)
!2269 = !DILocation(line: 0, scope: !2109, inlinedAt: !2268)
!2270 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2268)
!2271 = !DILocation(line: 0, scope: !2111, inlinedAt: !2268)
!2272 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2268)
!2273 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2268)
!2274 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2268)
!2275 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2268)
!2276 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2268)
!2277 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2268)
!2278 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2268)
!2279 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2268)
!2280 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2268)
!2281 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2268)
!2282 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2268)
!2283 = distinct !{!2283, !2272, !2284, !101, !102}
!2284 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2268)
!2285 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2268)
!2286 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2268)
!2287 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2268)
!2288 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2268)
!2289 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2268)
!2290 = distinct !{!2290, !2270, !2291, !101, !102}
!2291 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2268)
!2292 = distinct !DISubprogram(name: "pixel_avg_4x8", scope: !28, file: !28, line: 110, type: !1146, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300}
!2294 = !DILocalVariable(name: "pix1", arg: 1, scope: !2292, file: !28, line: 110, type: !47)
!2295 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2292, file: !28, line: 110, type: !48)
!2296 = !DILocalVariable(name: "pix2", arg: 3, scope: !2292, file: !28, line: 110, type: !47)
!2297 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2292, file: !28, line: 110, type: !48)
!2298 = !DILocalVariable(name: "pix3", arg: 5, scope: !2292, file: !28, line: 110, type: !47)
!2299 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2292, file: !28, line: 110, type: !48)
!2300 = !DILocalVariable(name: "weight", arg: 7, scope: !2292, file: !28, line: 110, type: !48)
!2301 = !DILocation(line: 0, scope: !2292)
!2302 = !DILocation(line: 110, column: 1, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2292, file: !28, line: 110, column: 1)
!2304 = !DILocation(line: 110, column: 1, scope: !2292)
!2305 = !DILocation(line: 0, scope: !2099, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 110, column: 1, scope: !2303)
!2307 = !DILocation(line: 0, scope: !2109, inlinedAt: !2306)
!2308 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2306)
!2309 = !DILocation(line: 0, scope: !2111, inlinedAt: !2306)
!2310 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2306)
!2311 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2306)
!2312 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2306)
!2313 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2306)
!2314 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2306)
!2315 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2306)
!2316 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2306)
!2317 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2306)
!2318 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2306)
!2319 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2306)
!2320 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2306)
!2321 = distinct !{!2321, !2310, !2322, !101, !102}
!2322 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2306)
!2323 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2306)
!2324 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2306)
!2325 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2306)
!2326 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2306)
!2327 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2306)
!2328 = distinct !{!2328, !2308, !2329, !101, !102}
!2329 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2306)
!2330 = !DILocalVariable(name: "dst", arg: 1, scope: !2331, file: !28, line: 67, type: !47)
!2331 = distinct !DISubprogram(name: "pixel_avg_weight_wxh", scope: !28, file: !28, line: 67, type: !2332, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2334)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{null, !47, !48, !47, !48, !47, !48, !48, !48, !48}
!2334 = !{!2330, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2345}
!2335 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2331, file: !28, line: 67, type: !48)
!2336 = !DILocalVariable(name: "src1", arg: 3, scope: !2331, file: !28, line: 67, type: !47)
!2337 = !DILocalVariable(name: "i_src1", arg: 4, scope: !2331, file: !28, line: 67, type: !48)
!2338 = !DILocalVariable(name: "src2", arg: 5, scope: !2331, file: !28, line: 67, type: !47)
!2339 = !DILocalVariable(name: "i_src2", arg: 6, scope: !2331, file: !28, line: 67, type: !48)
!2340 = !DILocalVariable(name: "width", arg: 7, scope: !2331, file: !28, line: 67, type: !48)
!2341 = !DILocalVariable(name: "height", arg: 8, scope: !2331, file: !28, line: 67, type: !48)
!2342 = !DILocalVariable(name: "i_weight1", arg: 9, scope: !2331, file: !28, line: 67, type: !48)
!2343 = !DILocalVariable(name: "i_weight2", scope: !2331, file: !28, line: 69, type: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!2345 = !DILocalVariable(name: "y", scope: !2346, file: !28, line: 70, type: !48)
!2346 = distinct !DILexicalBlock(scope: !2331, file: !28, line: 70, column: 5)
!2347 = !DILocation(line: 0, scope: !2331, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 110, column: 1, scope: !2303)
!2349 = !DILocation(line: 69, column: 30, scope: !2331, inlinedAt: !2348)
!2350 = !DILocation(line: 0, scope: !2346, inlinedAt: !2348)
!2351 = !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2348)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !28, line: 71, column: 5)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !28, line: 70, column: 5)
!2354 = !DILocation(line: 0, scope: !1739, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2348)
!2356 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2355)
!2357 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2355)
!2358 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2355)
!2359 = !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2348)
!2360 = !DILocation(line: 0, scope: !1739, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2348)
!2362 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2361)
!2363 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2361)
!2364 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2361)
!2365 = !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2348)
!2366 = !DILocation(line: 0, scope: !1739, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2348)
!2368 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2367)
!2369 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2367)
!2370 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2367)
!2371 = !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2348)
!2372 = !DILocation(line: 0, scope: !1739, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2348)
!2374 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2373)
!2375 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2373)
!2376 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2373)
!2377 = !DILocation(line: 70, column: 32, scope: !2353, inlinedAt: !2348)
!2378 = !DILocation(line: 70, column: 40, scope: !2353, inlinedAt: !2348)
!2379 = !DILocation(line: 70, column: 55, scope: !2353, inlinedAt: !2348)
!2380 = !DILocation(line: 70, column: 71, scope: !2353, inlinedAt: !2348)
!2381 = !DILocation(line: 70, column: 22, scope: !2353, inlinedAt: !2348)
!2382 = !DILocation(line: 70, column: 5, scope: !2346, inlinedAt: !2348)
!2383 = distinct !{!2383, !2382, !2384, !101, !102}
!2384 = !DILocation(line: 91, column: 5, scope: !2346, inlinedAt: !2348)
!2385 = distinct !DISubprogram(name: "pixel_avg_4x4", scope: !28, file: !28, line: 111, type: !1146, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393}
!2387 = !DILocalVariable(name: "pix1", arg: 1, scope: !2385, file: !28, line: 111, type: !47)
!2388 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2385, file: !28, line: 111, type: !48)
!2389 = !DILocalVariable(name: "pix2", arg: 3, scope: !2385, file: !28, line: 111, type: !47)
!2390 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2385, file: !28, line: 111, type: !48)
!2391 = !DILocalVariable(name: "pix3", arg: 5, scope: !2385, file: !28, line: 111, type: !47)
!2392 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2385, file: !28, line: 111, type: !48)
!2393 = !DILocalVariable(name: "weight", arg: 7, scope: !2385, file: !28, line: 111, type: !48)
!2394 = !DILocation(line: 0, scope: !2385)
!2395 = !DILocation(line: 111, column: 1, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2385, file: !28, line: 111, column: 1)
!2397 = !DILocation(line: 111, column: 1, scope: !2385)
!2398 = !DILocation(line: 0, scope: !2099, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 111, column: 1, scope: !2396)
!2400 = !DILocation(line: 0, scope: !2109, inlinedAt: !2399)
!2401 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2399)
!2402 = !DILocation(line: 0, scope: !2111, inlinedAt: !2399)
!2403 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2399)
!2404 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2399)
!2405 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2399)
!2406 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2399)
!2407 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2399)
!2408 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2399)
!2409 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2399)
!2410 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2399)
!2411 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2399)
!2412 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2399)
!2413 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2399)
!2414 = distinct !{!2414, !2403, !2415, !101, !102}
!2415 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2399)
!2416 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2399)
!2417 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2399)
!2418 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2399)
!2419 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2399)
!2420 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2399)
!2421 = distinct !{!2421, !2401, !2422, !101, !102}
!2422 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2399)
!2423 = !DILocation(line: 0, scope: !2331, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 111, column: 1, scope: !2396)
!2425 = !DILocation(line: 69, column: 30, scope: !2331, inlinedAt: !2424)
!2426 = !DILocation(line: 0, scope: !2346, inlinedAt: !2424)
!2427 = !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2424)
!2428 = !DILocation(line: 0, scope: !1739, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2424)
!2430 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2429)
!2431 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2429)
!2432 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2429)
!2433 = !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2424)
!2434 = !DILocation(line: 0, scope: !1739, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2424)
!2436 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2435)
!2437 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2435)
!2438 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2435)
!2439 = !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2424)
!2440 = !DILocation(line: 0, scope: !1739, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2424)
!2442 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2441)
!2443 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2441)
!2444 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2441)
!2445 = !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2424)
!2446 = !DILocation(line: 0, scope: !1739, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2424)
!2448 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2447)
!2449 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2447)
!2450 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2447)
!2451 = !DILocation(line: 70, column: 32, scope: !2353, inlinedAt: !2424)
!2452 = !DILocation(line: 70, column: 40, scope: !2353, inlinedAt: !2424)
!2453 = !DILocation(line: 70, column: 55, scope: !2353, inlinedAt: !2424)
!2454 = !DILocation(line: 70, column: 71, scope: !2353, inlinedAt: !2424)
!2455 = !DILocation(line: 70, column: 22, scope: !2353, inlinedAt: !2424)
!2456 = !DILocation(line: 70, column: 5, scope: !2346, inlinedAt: !2424)
!2457 = distinct !{!2457, !2456, !2458, !101, !102}
!2458 = !DILocation(line: 91, column: 5, scope: !2346, inlinedAt: !2424)
!2459 = distinct !DISubprogram(name: "pixel_avg_4x2", scope: !28, file: !28, line: 112, type: !1146, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2460)
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2461 = !DILocalVariable(name: "pix1", arg: 1, scope: !2459, file: !28, line: 112, type: !47)
!2462 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2459, file: !28, line: 112, type: !48)
!2463 = !DILocalVariable(name: "pix2", arg: 3, scope: !2459, file: !28, line: 112, type: !47)
!2464 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2459, file: !28, line: 112, type: !48)
!2465 = !DILocalVariable(name: "pix3", arg: 5, scope: !2459, file: !28, line: 112, type: !47)
!2466 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2459, file: !28, line: 112, type: !48)
!2467 = !DILocalVariable(name: "weight", arg: 7, scope: !2459, file: !28, line: 112, type: !48)
!2468 = !DILocation(line: 0, scope: !2459)
!2469 = !DILocation(line: 112, column: 1, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2459, file: !28, line: 112, column: 1)
!2471 = !DILocation(line: 112, column: 1, scope: !2459)
!2472 = !DILocation(line: 0, scope: !2099, inlinedAt: !2473)
!2473 = distinct !DILocation(line: 112, column: 1, scope: !2470)
!2474 = !DILocation(line: 0, scope: !2109, inlinedAt: !2473)
!2475 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2473)
!2476 = !DILocation(line: 0, scope: !2111, inlinedAt: !2473)
!2477 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2473)
!2478 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2473)
!2479 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2473)
!2480 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2473)
!2481 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2473)
!2482 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2473)
!2483 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2473)
!2484 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2473)
!2485 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2473)
!2486 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2473)
!2487 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2473)
!2488 = distinct !{!2488, !2477, !2489, !101, !102}
!2489 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2473)
!2490 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2473)
!2491 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2473)
!2492 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2473)
!2493 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2473)
!2494 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2473)
!2495 = distinct !{!2495, !2475, !2496, !101, !102}
!2496 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2473)
!2497 = !DILocation(line: 0, scope: !2331, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 112, column: 1, scope: !2470)
!2499 = !DILocation(line: 69, column: 30, scope: !2331, inlinedAt: !2498)
!2500 = !DILocation(line: 0, scope: !2346, inlinedAt: !2498)
!2501 = !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2498)
!2502 = !DILocation(line: 0, scope: !1739, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2498)
!2504 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2503)
!2505 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2503)
!2506 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2503)
!2507 = !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2498)
!2508 = !DILocation(line: 0, scope: !1739, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2498)
!2510 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2509)
!2511 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2509)
!2512 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2509)
!2513 = !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2498)
!2514 = !DILocation(line: 0, scope: !1739, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 75, column: 9, scope: !2352, inlinedAt: !2498)
!2516 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2515)
!2517 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2515)
!2518 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2515)
!2519 = !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2498)
!2520 = !DILocation(line: 0, scope: !1739, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 76, column: 9, scope: !2352, inlinedAt: !2498)
!2522 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2521)
!2523 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2521)
!2524 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2521)
!2525 = !DILocation(line: 70, column: 32, scope: !2353, inlinedAt: !2498)
!2526 = !DILocation(line: 70, column: 40, scope: !2353, inlinedAt: !2498)
!2527 = !DILocation(line: 70, column: 55, scope: !2353, inlinedAt: !2498)
!2528 = !DILocation(line: 70, column: 71, scope: !2353, inlinedAt: !2498)
!2529 = !DILocation(line: 70, column: 22, scope: !2353, inlinedAt: !2498)
!2530 = !DILocation(line: 70, column: 5, scope: !2346, inlinedAt: !2498)
!2531 = distinct !{!2531, !2530, !2532, !101, !102}
!2532 = !DILocation(line: 91, column: 5, scope: !2346, inlinedAt: !2498)
!2533 = distinct !DISubprogram(name: "pixel_avg_2x4", scope: !28, file: !28, line: 113, type: !1146, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541}
!2535 = !DILocalVariable(name: "pix1", arg: 1, scope: !2533, file: !28, line: 113, type: !47)
!2536 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2533, file: !28, line: 113, type: !48)
!2537 = !DILocalVariable(name: "pix2", arg: 3, scope: !2533, file: !28, line: 113, type: !47)
!2538 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2533, file: !28, line: 113, type: !48)
!2539 = !DILocalVariable(name: "pix3", arg: 5, scope: !2533, file: !28, line: 113, type: !47)
!2540 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2533, file: !28, line: 113, type: !48)
!2541 = !DILocalVariable(name: "weight", arg: 7, scope: !2533, file: !28, line: 113, type: !48)
!2542 = !DILocation(line: 0, scope: !2533)
!2543 = !DILocation(line: 113, column: 1, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2533, file: !28, line: 113, column: 1)
!2545 = !DILocation(line: 113, column: 1, scope: !2533)
!2546 = !DILocation(line: 0, scope: !2099, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 113, column: 1, scope: !2544)
!2548 = !DILocation(line: 0, scope: !2109, inlinedAt: !2547)
!2549 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2547)
!2550 = !DILocation(line: 0, scope: !2111, inlinedAt: !2547)
!2551 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2547)
!2552 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2547)
!2553 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2547)
!2554 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2547)
!2555 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2547)
!2556 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2547)
!2557 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2547)
!2558 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2547)
!2559 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2547)
!2560 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2547)
!2561 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2547)
!2562 = distinct !{!2562, !2551, !2563, !101, !102}
!2563 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2547)
!2564 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2547)
!2565 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2547)
!2566 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2547)
!2567 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2547)
!2568 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2547)
!2569 = distinct !{!2569, !2549, !2570, !101, !102}
!2570 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2547)
!2571 = !DILocation(line: 0, scope: !2331, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 113, column: 1, scope: !2544)
!2573 = !DILocation(line: 69, column: 30, scope: !2331, inlinedAt: !2572)
!2574 = !DILocation(line: 0, scope: !2346, inlinedAt: !2572)
!2575 = !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2572)
!2576 = !DILocation(line: 0, scope: !1739, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2572)
!2578 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2577)
!2579 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2577)
!2580 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2577)
!2581 = !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2572)
!2582 = !DILocation(line: 0, scope: !1739, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2572)
!2584 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2583)
!2585 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2583)
!2586 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2583)
!2587 = !DILocation(line: 70, column: 32, scope: !2353, inlinedAt: !2572)
!2588 = !DILocation(line: 70, column: 40, scope: !2353, inlinedAt: !2572)
!2589 = !DILocation(line: 70, column: 55, scope: !2353, inlinedAt: !2572)
!2590 = !DILocation(line: 70, column: 71, scope: !2353, inlinedAt: !2572)
!2591 = !DILocation(line: 70, column: 22, scope: !2353, inlinedAt: !2572)
!2592 = !DILocation(line: 70, column: 5, scope: !2346, inlinedAt: !2572)
!2593 = distinct !{!2593, !2592, !2594, !101, !102}
!2594 = !DILocation(line: 91, column: 5, scope: !2346, inlinedAt: !2572)
!2595 = distinct !DISubprogram(name: "pixel_avg_2x2", scope: !28, file: !28, line: 114, type: !1146, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603}
!2597 = !DILocalVariable(name: "pix1", arg: 1, scope: !2595, file: !28, line: 114, type: !47)
!2598 = !DILocalVariable(name: "i_stride_pix1", arg: 2, scope: !2595, file: !28, line: 114, type: !48)
!2599 = !DILocalVariable(name: "pix2", arg: 3, scope: !2595, file: !28, line: 114, type: !47)
!2600 = !DILocalVariable(name: "i_stride_pix2", arg: 4, scope: !2595, file: !28, line: 114, type: !48)
!2601 = !DILocalVariable(name: "pix3", arg: 5, scope: !2595, file: !28, line: 114, type: !47)
!2602 = !DILocalVariable(name: "i_stride_pix3", arg: 6, scope: !2595, file: !28, line: 114, type: !48)
!2603 = !DILocalVariable(name: "weight", arg: 7, scope: !2595, file: !28, line: 114, type: !48)
!2604 = !DILocation(line: 0, scope: !2595)
!2605 = !DILocation(line: 114, column: 1, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2595, file: !28, line: 114, column: 1)
!2607 = !DILocation(line: 114, column: 1, scope: !2595)
!2608 = !DILocation(line: 0, scope: !2099, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 114, column: 1, scope: !2606)
!2610 = !DILocation(line: 0, scope: !2109, inlinedAt: !2609)
!2611 = !DILocation(line: 54, column: 5, scope: !2109, inlinedAt: !2609)
!2612 = !DILocation(line: 0, scope: !2111, inlinedAt: !2609)
!2613 = !DILocation(line: 56, column: 9, scope: !2111, inlinedAt: !2609)
!2614 = !DILocation(line: 57, column: 24, scope: !2121, inlinedAt: !2609)
!2615 = !DILocation(line: 57, column: 34, scope: !2121, inlinedAt: !2609)
!2616 = !DILocation(line: 57, column: 32, scope: !2121, inlinedAt: !2609)
!2617 = !DILocation(line: 57, column: 42, scope: !2121, inlinedAt: !2609)
!2618 = !DILocation(line: 57, column: 48, scope: !2121, inlinedAt: !2609)
!2619 = !DILocation(line: 57, column: 22, scope: !2121, inlinedAt: !2609)
!2620 = !DILocation(line: 57, column: 13, scope: !2121, inlinedAt: !2609)
!2621 = !DILocation(line: 57, column: 20, scope: !2121, inlinedAt: !2609)
!2622 = !DILocation(line: 56, column: 37, scope: !2121, inlinedAt: !2609)
!2623 = !DILocation(line: 56, column: 27, scope: !2121, inlinedAt: !2609)
!2624 = distinct !{!2624, !2613, !2625, !101, !102}
!2625 = !DILocation(line: 57, column: 51, scope: !2111, inlinedAt: !2609)
!2626 = !DILocation(line: 58, column: 14, scope: !2112, inlinedAt: !2609)
!2627 = !DILocation(line: 59, column: 14, scope: !2112, inlinedAt: !2609)
!2628 = !DILocation(line: 60, column: 13, scope: !2112, inlinedAt: !2609)
!2629 = !DILocation(line: 54, column: 34, scope: !2113, inlinedAt: !2609)
!2630 = !DILocation(line: 54, column: 23, scope: !2113, inlinedAt: !2609)
!2631 = distinct !{!2631, !2611, !2632, !101, !102}
!2632 = !DILocation(line: 61, column: 5, scope: !2109, inlinedAt: !2609)
!2633 = !DILocation(line: 0, scope: !2331, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 114, column: 1, scope: !2606)
!2635 = !DILocation(line: 69, column: 30, scope: !2331, inlinedAt: !2634)
!2636 = !DILocation(line: 0, scope: !2346, inlinedAt: !2634)
!2637 = !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2634)
!2638 = !DILocation(line: 0, scope: !1739, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 72, column: 9, scope: !2352, inlinedAt: !2634)
!2640 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2639)
!2641 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2639)
!2642 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2639)
!2643 = !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2634)
!2644 = !DILocation(line: 0, scope: !1739, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 73, column: 9, scope: !2352, inlinedAt: !2634)
!2646 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2645)
!2647 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2645)
!2648 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2645)
!2649 = !DILocation(line: 70, column: 32, scope: !2353, inlinedAt: !2634)
!2650 = !DILocation(line: 70, column: 40, scope: !2353, inlinedAt: !2634)
!2651 = !DILocation(line: 70, column: 55, scope: !2353, inlinedAt: !2634)
!2652 = !DILocation(line: 70, column: 71, scope: !2353, inlinedAt: !2634)
!2653 = !DILocation(line: 70, column: 22, scope: !2353, inlinedAt: !2634)
!2654 = !DILocation(line: 70, column: 5, scope: !2346, inlinedAt: !2634)
!2655 = distinct !{!2655, !2654, !2656, !101, !102}
!2656 = !DILocation(line: 91, column: 5, scope: !2346, inlinedAt: !2634)
!2657 = distinct !DISubprogram(name: "x264_weight_cache", scope: !28, file: !28, line: 116, type: !1201, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2658 = !{!2659, !2660}
!2659 = !DILocalVariable(name: "h", arg: 1, scope: !2657, file: !28, line: 116, type: !107)
!2660 = !DILocalVariable(name: "w", arg: 2, scope: !2657, file: !28, line: 116, type: !1203)
!2661 = !DILocation(line: 0, scope: !2657)
!2662 = !DILocation(line: 118, column: 25, scope: !2657)
!2663 = !{!1424, !1399, i64 32872}
!2664 = !DILocation(line: 118, column: 8, scope: !2657)
!2665 = !DILocation(line: 118, column: 17, scope: !2657)
!2666 = !DILocation(line: 119, column: 1, scope: !2657)
!2667 = distinct !DISubprogram(name: "mc_copy_w16", scope: !28, file: !28, line: 295, type: !1153, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2668)
!2668 = !{!2669, !2670, !2671, !2672, !2673}
!2669 = !DILocalVariable(name: "dst", arg: 1, scope: !2667, file: !28, line: 295, type: !47)
!2670 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2667, file: !28, line: 295, type: !48)
!2671 = !DILocalVariable(name: "src", arg: 3, scope: !2667, file: !28, line: 295, type: !47)
!2672 = !DILocalVariable(name: "i_src", arg: 4, scope: !2667, file: !28, line: 295, type: !48)
!2673 = !DILocalVariable(name: "i_height", arg: 5, scope: !2667, file: !28, line: 295, type: !48)
!2674 = !DILocation(line: 0, scope: !2667)
!2675 = !DILocation(line: 0, scope: !1828, inlinedAt: !2676)
!2676 = distinct !DILocation(line: 295, column: 1, scope: !2667)
!2677 = !DILocation(line: 0, scope: !1836, inlinedAt: !2676)
!2678 = !DILocation(line: 174, column: 23, scope: !1841, inlinedAt: !2676)
!2679 = !DILocation(line: 174, column: 5, scope: !1836, inlinedAt: !2676)
!2680 = !DILocation(line: 176, column: 9, scope: !1844, inlinedAt: !2676)
!2681 = !DILocation(line: 178, column: 13, scope: !1844, inlinedAt: !2676)
!2682 = !DILocation(line: 179, column: 13, scope: !1844, inlinedAt: !2676)
!2683 = !DILocation(line: 174, column: 36, scope: !1841, inlinedAt: !2676)
!2684 = distinct !{!2684, !2679, !2685, !101, !102}
!2685 = !DILocation(line: 180, column: 5, scope: !1836, inlinedAt: !2676)
!2686 = !DILocation(line: 295, column: 1, scope: !2667)
!2687 = distinct !DISubprogram(name: "mc_copy_w8", scope: !28, file: !28, line: 296, type: !1153, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2688)
!2688 = !{!2689, !2690, !2691, !2692, !2693}
!2689 = !DILocalVariable(name: "dst", arg: 1, scope: !2687, file: !28, line: 296, type: !47)
!2690 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2687, file: !28, line: 296, type: !48)
!2691 = !DILocalVariable(name: "src", arg: 3, scope: !2687, file: !28, line: 296, type: !47)
!2692 = !DILocalVariable(name: "i_src", arg: 4, scope: !2687, file: !28, line: 296, type: !48)
!2693 = !DILocalVariable(name: "i_height", arg: 5, scope: !2687, file: !28, line: 296, type: !48)
!2694 = !DILocation(line: 0, scope: !2687)
!2695 = !DILocation(line: 0, scope: !1828, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 296, column: 1, scope: !2687)
!2697 = !DILocation(line: 0, scope: !1836, inlinedAt: !2696)
!2698 = !DILocation(line: 174, column: 23, scope: !1841, inlinedAt: !2696)
!2699 = !DILocation(line: 174, column: 5, scope: !1836, inlinedAt: !2696)
!2700 = !DILocation(line: 176, column: 9, scope: !1844, inlinedAt: !2696)
!2701 = !DILocation(line: 178, column: 13, scope: !1844, inlinedAt: !2696)
!2702 = !DILocation(line: 179, column: 13, scope: !1844, inlinedAt: !2696)
!2703 = !DILocation(line: 174, column: 36, scope: !1841, inlinedAt: !2696)
!2704 = distinct !{!2704, !2699, !2705, !101, !102}
!2705 = !DILocation(line: 180, column: 5, scope: !1836, inlinedAt: !2696)
!2706 = !DILocation(line: 296, column: 1, scope: !2687)
!2707 = distinct !DISubprogram(name: "mc_copy_w4", scope: !28, file: !28, line: 297, type: !1153, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713}
!2709 = !DILocalVariable(name: "dst", arg: 1, scope: !2707, file: !28, line: 297, type: !47)
!2710 = !DILocalVariable(name: "i_dst", arg: 2, scope: !2707, file: !28, line: 297, type: !48)
!2711 = !DILocalVariable(name: "src", arg: 3, scope: !2707, file: !28, line: 297, type: !47)
!2712 = !DILocalVariable(name: "i_src", arg: 4, scope: !2707, file: !28, line: 297, type: !48)
!2713 = !DILocalVariable(name: "i_height", arg: 5, scope: !2707, file: !28, line: 297, type: !48)
!2714 = !DILocation(line: 0, scope: !2707)
!2715 = !DILocation(line: 0, scope: !1828, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 297, column: 1, scope: !2707)
!2717 = !DILocation(line: 0, scope: !1836, inlinedAt: !2716)
!2718 = !DILocation(line: 174, column: 23, scope: !1841, inlinedAt: !2716)
!2719 = !DILocation(line: 174, column: 5, scope: !1836, inlinedAt: !2716)
!2720 = !DILocation(line: 176, column: 9, scope: !1844, inlinedAt: !2716)
!2721 = !DILocation(line: 178, column: 13, scope: !1844, inlinedAt: !2716)
!2722 = !DILocation(line: 179, column: 13, scope: !1844, inlinedAt: !2716)
!2723 = !DILocation(line: 174, column: 36, scope: !1841, inlinedAt: !2716)
!2724 = distinct !{!2724, !2719, !2725, !101, !102}
!2725 = !DILocation(line: 180, column: 5, scope: !1836, inlinedAt: !2716)
!2726 = !DILocation(line: 297, column: 1, scope: !2707)
!2727 = distinct !DISubprogram(name: "hpel_filter", scope: !28, file: !28, line: 184, type: !1160, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2739, !2743, !2746, !2748}
!2729 = !DILocalVariable(name: "dsth", arg: 1, scope: !2727, file: !28, line: 184, type: !47)
!2730 = !DILocalVariable(name: "dstv", arg: 2, scope: !2727, file: !28, line: 184, type: !47)
!2731 = !DILocalVariable(name: "dstc", arg: 3, scope: !2727, file: !28, line: 184, type: !47)
!2732 = !DILocalVariable(name: "src", arg: 4, scope: !2727, file: !28, line: 184, type: !47)
!2733 = !DILocalVariable(name: "stride", arg: 5, scope: !2727, file: !28, line: 185, type: !48)
!2734 = !DILocalVariable(name: "width", arg: 6, scope: !2727, file: !28, line: 185, type: !48)
!2735 = !DILocalVariable(name: "height", arg: 7, scope: !2727, file: !28, line: 185, type: !48)
!2736 = !DILocalVariable(name: "buf", arg: 8, scope: !2727, file: !28, line: 185, type: !797)
!2737 = !DILocalVariable(name: "y", scope: !2738, file: !28, line: 187, type: !48)
!2738 = distinct !DILexicalBlock(scope: !2727, file: !28, line: 187, column: 5)
!2739 = !DILocalVariable(name: "x", scope: !2740, file: !28, line: 189, type: !48)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !28, line: 189, column: 9)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !28, line: 188, column: 5)
!2742 = distinct !DILexicalBlock(scope: !2738, file: !28, line: 187, column: 5)
!2743 = !DILocalVariable(name: "v", scope: !2744, file: !28, line: 191, type: !48)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !28, line: 190, column: 9)
!2745 = distinct !DILexicalBlock(scope: !2740, file: !28, line: 189, column: 9)
!2746 = !DILocalVariable(name: "x", scope: !2747, file: !28, line: 195, type: !48)
!2747 = distinct !DILexicalBlock(scope: !2741, file: !28, line: 195, column: 9)
!2748 = !DILocalVariable(name: "x", scope: !2749, file: !28, line: 197, type: !48)
!2749 = distinct !DILexicalBlock(scope: !2741, file: !28, line: 197, column: 9)
!2750 = !DILocation(line: 0, scope: !2727)
!2751 = !DILocation(line: 0, scope: !2738)
!2752 = !DILocation(line: 187, column: 23, scope: !2742)
!2753 = !DILocation(line: 187, column: 5, scope: !2738)
!2754 = !DILocation(line: 0, scope: !2740)
!2755 = !DILocation(line: 189, column: 9, scope: !2740)
!2756 = !DILocation(line: 204, column: 1, scope: !2727)
!2757 = !DILocation(line: 0, scope: !2747)
!2758 = !DILocation(line: 195, column: 9, scope: !2747)
!2759 = !DILocation(line: 191, column: 21, scope: !2744)
!2760 = !DILocation(line: 0, scope: !2744)
!2761 = !DILocation(line: 192, column: 43, scope: !2744)
!2762 = !DILocation(line: 192, column: 49, scope: !2744)
!2763 = !DILocation(line: 0, scope: !1739, inlinedAt: !2764)
!2764 = distinct !DILocation(line: 192, column: 23, scope: !2744)
!2765 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2764)
!2766 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2764)
!2767 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2764)
!2768 = !DILocation(line: 192, column: 13, scope: !2744)
!2769 = !DILocation(line: 192, column: 21, scope: !2744)
!2770 = !DILocation(line: 193, column: 24, scope: !2744)
!2771 = !DILocation(line: 193, column: 18, scope: !2744)
!2772 = !DILocation(line: 193, column: 13, scope: !2744)
!2773 = !DILocation(line: 193, column: 22, scope: !2744)
!2774 = !DILocation(line: 189, column: 40, scope: !2745)
!2775 = !DILocation(line: 189, column: 28, scope: !2745)
!2776 = distinct !{!2776, !2755, !2777, !101, !102}
!2777 = !DILocation(line: 194, column: 9, scope: !2740)
!2778 = !DILocation(line: 0, scope: !2749)
!2779 = !DILocation(line: 197, column: 9, scope: !2749)
!2780 = !DILocation(line: 196, column: 41, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2747, file: !28, line: 195, column: 9)
!2782 = !DILocation(line: 196, column: 60, scope: !2781)
!2783 = !DILocation(line: 196, column: 67, scope: !2781)
!2784 = !DILocation(line: 0, scope: !1739, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 196, column: 23, scope: !2781)
!2786 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2785)
!2787 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2785)
!2788 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2785)
!2789 = !DILocation(line: 196, column: 13, scope: !2781)
!2790 = !DILocation(line: 196, column: 21, scope: !2781)
!2791 = !DILocation(line: 195, column: 27, scope: !2781)
!2792 = distinct !{!2792, !2758, !2793, !101, !102}
!2793 = !DILocation(line: 196, column: 73, scope: !2747)
!2794 = !DILocation(line: 199, column: 14, scope: !2741)
!2795 = !DILocation(line: 200, column: 14, scope: !2741)
!2796 = !DILocation(line: 201, column: 14, scope: !2741)
!2797 = !DILocation(line: 202, column: 13, scope: !2741)
!2798 = !DILocation(line: 187, column: 34, scope: !2742)
!2799 = distinct !{!2799, !2753, !2800, !101, !102}
!2800 = !DILocation(line: 203, column: 5, scope: !2738)
!2801 = !DILocation(line: 198, column: 41, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2749, file: !28, line: 197, column: 9)
!2803 = !DILocation(line: 198, column: 58, scope: !2802)
!2804 = !DILocation(line: 198, column: 64, scope: !2802)
!2805 = !DILocation(line: 0, scope: !1739, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 198, column: 23, scope: !2802)
!2807 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !2806)
!2808 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !2806)
!2809 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !2806)
!2810 = !DILocation(line: 198, column: 13, scope: !2802)
!2811 = !DILocation(line: 198, column: 21, scope: !2802)
!2812 = !DILocation(line: 197, column: 27, scope: !2802)
!2813 = distinct !{!2813, !2779, !2814, !101, !102}
!2814 = !DILocation(line: 198, column: 69, scope: !2749)
!2815 = distinct !DISubprogram(name: "prefetch_fenc_null", scope: !28, file: !28, line: 310, type: !1153, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821}
!2817 = !DILocalVariable(name: "pix_y", arg: 1, scope: !2815, file: !28, line: 310, type: !47)
!2818 = !DILocalVariable(name: "stride_y", arg: 2, scope: !2815, file: !28, line: 310, type: !48)
!2819 = !DILocalVariable(name: "pix_uv", arg: 3, scope: !2815, file: !28, line: 311, type: !47)
!2820 = !DILocalVariable(name: "stride_uv", arg: 4, scope: !2815, file: !28, line: 311, type: !48)
!2821 = !DILocalVariable(name: "mb_x", arg: 5, scope: !2815, file: !28, line: 311, type: !48)
!2822 = !DILocation(line: 0, scope: !2815)
!2823 = !DILocation(line: 312, column: 2, scope: !2815)
!2824 = distinct !DISubprogram(name: "prefetch_ref_null", scope: !28, file: !28, line: 314, type: !1165, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DILocalVariable(name: "pix", arg: 1, scope: !2824, file: !28, line: 314, type: !47)
!2827 = !DILocalVariable(name: "stride", arg: 2, scope: !2824, file: !28, line: 314, type: !48)
!2828 = !DILocalVariable(name: "parity", arg: 3, scope: !2824, file: !28, line: 314, type: !48)
!2829 = !DILocation(line: 0, scope: !2824)
!2830 = !DILocation(line: 315, column: 2, scope: !2824)
!2831 = distinct !DISubprogram(name: "memzero_aligned", scope: !28, file: !28, line: 317, type: !1177, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2832)
!2832 = !{!2833, !2834}
!2833 = !DILocalVariable(name: "dst", arg: 1, scope: !2831, file: !28, line: 317, type: !174)
!2834 = !DILocalVariable(name: "n", arg: 2, scope: !2831, file: !28, line: 317, type: !48)
!2835 = !DILocation(line: 0, scope: !2831)
!2836 = !DILocation(line: 319, column: 21, scope: !2831)
!2837 = !DILocation(line: 319, column: 5, scope: !2831)
!2838 = !DILocation(line: 320, column: 1, scope: !2831)
!2839 = distinct !DISubprogram(name: "frame_init_lowres_core", scope: !28, file: !28, line: 382, type: !1194, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2852, !2855, !2856}
!2841 = !DILocalVariable(name: "src0", arg: 1, scope: !2839, file: !28, line: 382, type: !47)
!2842 = !DILocalVariable(name: "dst0", arg: 2, scope: !2839, file: !28, line: 382, type: !47)
!2843 = !DILocalVariable(name: "dsth", arg: 3, scope: !2839, file: !28, line: 382, type: !47)
!2844 = !DILocalVariable(name: "dstv", arg: 4, scope: !2839, file: !28, line: 382, type: !47)
!2845 = !DILocalVariable(name: "dstc", arg: 5, scope: !2839, file: !28, line: 382, type: !47)
!2846 = !DILocalVariable(name: "src_stride", arg: 6, scope: !2839, file: !28, line: 383, type: !48)
!2847 = !DILocalVariable(name: "dst_stride", arg: 7, scope: !2839, file: !28, line: 383, type: !48)
!2848 = !DILocalVariable(name: "width", arg: 8, scope: !2839, file: !28, line: 383, type: !48)
!2849 = !DILocalVariable(name: "height", arg: 9, scope: !2839, file: !28, line: 383, type: !48)
!2850 = !DILocalVariable(name: "y", scope: !2851, file: !28, line: 385, type: !48)
!2851 = distinct !DILexicalBlock(scope: !2839, file: !28, line: 385, column: 5)
!2852 = !DILocalVariable(name: "src1", scope: !2853, file: !28, line: 387, type: !47)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !28, line: 386, column: 5)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !28, line: 385, column: 5)
!2855 = !DILocalVariable(name: "src2", scope: !2853, file: !28, line: 388, type: !47)
!2856 = !DILocalVariable(name: "x", scope: !2857, file: !28, line: 389, type: !48)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !28, line: 389, column: 9)
!2858 = !DILocation(line: 0, scope: !2839)
!2859 = !DILocation(line: 0, scope: !2851)
!2860 = !DILocation(line: 385, column: 23, scope: !2854)
!2861 = !DILocation(line: 385, column: 5, scope: !2851)
!2862 = !DILocation(line: 389, column: 9, scope: !2857)
!2863 = !DILocation(line: 387, column: 29, scope: !2853)
!2864 = !DILocation(line: 0, scope: !2853)
!2865 = !DILocation(line: 388, column: 29, scope: !2853)
!2866 = !DILocation(line: 0, scope: !2857)
!2867 = !DILocation(line: 393, column: 23, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !28, line: 390, column: 9)
!2869 = distinct !DILexicalBlock(scope: !2857, file: !28, line: 389, column: 9)
!2870 = !DILocation(line: 393, column: 13, scope: !2868)
!2871 = !DILocation(line: 393, column: 21, scope: !2868)
!2872 = !DILocation(line: 394, column: 23, scope: !2868)
!2873 = !DILocation(line: 394, column: 13, scope: !2868)
!2874 = !DILocation(line: 394, column: 21, scope: !2868)
!2875 = !DILocation(line: 395, column: 23, scope: !2868)
!2876 = !DILocation(line: 395, column: 13, scope: !2868)
!2877 = !DILocation(line: 395, column: 21, scope: !2868)
!2878 = !DILocation(line: 396, column: 23, scope: !2868)
!2879 = !DILocation(line: 396, column: 13, scope: !2868)
!2880 = !DILocation(line: 396, column: 21, scope: !2868)
!2881 = !DILocation(line: 389, column: 35, scope: !2869)
!2882 = !DILocation(line: 389, column: 26, scope: !2869)
!2883 = distinct !{!2883, !2862, !2884, !101, !102}
!2884 = !DILocation(line: 398, column: 9, scope: !2857)
!2885 = !DILocation(line: 399, column: 14, scope: !2853)
!2886 = !DILocation(line: 400, column: 14, scope: !2853)
!2887 = !DILocation(line: 401, column: 14, scope: !2853)
!2888 = !DILocation(line: 402, column: 14, scope: !2853)
!2889 = !DILocation(line: 403, column: 14, scope: !2853)
!2890 = !DILocation(line: 385, column: 34, scope: !2854)
!2891 = distinct !{!2891, !2861, !2892, !101, !102}
!2892 = !DILocation(line: 404, column: 5, scope: !2851)
!2893 = !DILocation(line: 405, column: 1, scope: !2839)
!2894 = distinct !DISubprogram(name: "integral_init4h", scope: !28, file: !28, line: 322, type: !1181, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900}
!2896 = !DILocalVariable(name: "sum", arg: 1, scope: !2894, file: !28, line: 322, type: !485)
!2897 = !DILocalVariable(name: "pix", arg: 2, scope: !2894, file: !28, line: 322, type: !47)
!2898 = !DILocalVariable(name: "stride", arg: 3, scope: !2894, file: !28, line: 322, type: !48)
!2899 = !DILocalVariable(name: "v", scope: !2894, file: !28, line: 324, type: !48)
!2900 = !DILocalVariable(name: "x", scope: !2901, file: !28, line: 325, type: !48)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !28, line: 325, column: 5)
!2902 = !DILocation(line: 0, scope: !2894)
!2903 = !DILocation(line: 0, scope: !2901)
!2904 = !DILocation(line: 325, column: 23, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !28, line: 325, column: 5)
!2906 = !DILocation(line: 325, column: 5, scope: !2901)
!2907 = !DILocation(line: 324, column: 20, scope: !2894)
!2908 = !DILocation(line: 324, column: 13, scope: !2894)
!2909 = !DILocation(line: 324, column: 19, scope: !2894)
!2910 = !DILocation(line: 324, column: 27, scope: !2894)
!2911 = !DILocation(line: 324, column: 26, scope: !2894)
!2912 = !DILocation(line: 324, column: 34, scope: !2894)
!2913 = !DILocation(line: 324, column: 33, scope: !2894)
!2914 = !DILocation(line: 330, column: 1, scope: !2894)
!2915 = !DILocation(line: 327, column: 27, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2905, file: !28, line: 326, column: 5)
!2917 = !DILocation(line: 327, column: 22, scope: !2916)
!2918 = !DILocation(line: 327, column: 18, scope: !2916)
!2919 = !DILocation(line: 327, column: 9, scope: !2916)
!2920 = !DILocation(line: 327, column: 16, scope: !2916)
!2921 = !DILocation(line: 328, column: 19, scope: !2916)
!2922 = !DILocation(line: 328, column: 14, scope: !2916)
!2923 = !DILocation(line: 328, column: 25, scope: !2916)
!2924 = !DILocation(line: 328, column: 23, scope: !2916)
!2925 = !DILocation(line: 328, column: 11, scope: !2916)
!2926 = !DILocation(line: 325, column: 36, scope: !2905)
!2927 = distinct !{!2927, !2906, !2928, !101, !102}
!2928 = !DILocation(line: 329, column: 5, scope: !2901)
!2929 = distinct !DISubprogram(name: "integral_init8h", scope: !28, file: !28, line: 332, type: !1181, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935}
!2931 = !DILocalVariable(name: "sum", arg: 1, scope: !2929, file: !28, line: 332, type: !485)
!2932 = !DILocalVariable(name: "pix", arg: 2, scope: !2929, file: !28, line: 332, type: !47)
!2933 = !DILocalVariable(name: "stride", arg: 3, scope: !2929, file: !28, line: 332, type: !48)
!2934 = !DILocalVariable(name: "v", scope: !2929, file: !28, line: 334, type: !48)
!2935 = !DILocalVariable(name: "x", scope: !2936, file: !28, line: 335, type: !48)
!2936 = distinct !DILexicalBlock(scope: !2929, file: !28, line: 335, column: 5)
!2937 = !DILocation(line: 0, scope: !2929)
!2938 = !DILocation(line: 0, scope: !2936)
!2939 = !DILocation(line: 335, column: 23, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2936, file: !28, line: 335, column: 5)
!2941 = !DILocation(line: 335, column: 5, scope: !2936)
!2942 = !DILocation(line: 334, column: 20, scope: !2929)
!2943 = !DILocation(line: 334, column: 13, scope: !2929)
!2944 = !DILocation(line: 334, column: 19, scope: !2929)
!2945 = !DILocation(line: 334, column: 27, scope: !2929)
!2946 = !DILocation(line: 334, column: 26, scope: !2929)
!2947 = !DILocation(line: 334, column: 34, scope: !2929)
!2948 = !DILocation(line: 334, column: 33, scope: !2929)
!2949 = !DILocation(line: 334, column: 41, scope: !2929)
!2950 = !DILocation(line: 334, column: 40, scope: !2929)
!2951 = !DILocation(line: 334, column: 48, scope: !2929)
!2952 = !DILocation(line: 334, column: 47, scope: !2929)
!2953 = !DILocation(line: 334, column: 55, scope: !2929)
!2954 = !DILocation(line: 334, column: 54, scope: !2929)
!2955 = !DILocation(line: 334, column: 62, scope: !2929)
!2956 = !DILocation(line: 334, column: 61, scope: !2929)
!2957 = !DILocation(line: 340, column: 1, scope: !2929)
!2958 = !DILocation(line: 337, column: 27, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2940, file: !28, line: 336, column: 5)
!2960 = !DILocation(line: 337, column: 22, scope: !2959)
!2961 = !DILocation(line: 337, column: 18, scope: !2959)
!2962 = !DILocation(line: 337, column: 9, scope: !2959)
!2963 = !DILocation(line: 337, column: 16, scope: !2959)
!2964 = !DILocation(line: 338, column: 19, scope: !2959)
!2965 = !DILocation(line: 338, column: 14, scope: !2959)
!2966 = !DILocation(line: 338, column: 25, scope: !2959)
!2967 = !DILocation(line: 338, column: 23, scope: !2959)
!2968 = !DILocation(line: 338, column: 11, scope: !2959)
!2969 = !DILocation(line: 335, column: 36, scope: !2940)
!2970 = distinct !{!2970, !2941, !2971, !101, !102}
!2971 = !DILocation(line: 339, column: 5, scope: !2936)
!2972 = distinct !DISubprogram(name: "integral_init4v", scope: !28, file: !28, line: 342, type: !1186, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2973)
!2973 = !{!2974, !2975, !2976, !2977, !2979}
!2974 = !DILocalVariable(name: "sum8", arg: 1, scope: !2972, file: !28, line: 342, type: !485)
!2975 = !DILocalVariable(name: "sum4", arg: 2, scope: !2972, file: !28, line: 342, type: !485)
!2976 = !DILocalVariable(name: "stride", arg: 3, scope: !2972, file: !28, line: 342, type: !48)
!2977 = !DILocalVariable(name: "x", scope: !2978, file: !28, line: 344, type: !48)
!2978 = distinct !DILexicalBlock(scope: !2972, file: !28, line: 344, column: 5)
!2979 = !DILocalVariable(name: "x", scope: !2980, file: !28, line: 346, type: !48)
!2980 = distinct !DILexicalBlock(scope: !2972, file: !28, line: 346, column: 5)
!2981 = !DILocation(line: 0, scope: !2972)
!2982 = !DILocation(line: 0, scope: !2978)
!2983 = !DILocation(line: 344, column: 23, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2978, file: !28, line: 344, column: 5)
!2985 = !DILocation(line: 344, column: 5, scope: !2978)
!2986 = !DILocation(line: 0, scope: !2980)
!2987 = !DILocation(line: 346, column: 5, scope: !2980)
!2988 = !DILocation(line: 346, column: 23, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2980, file: !28, line: 346, column: 5)
!2990 = !DILocation(line: 345, column: 25, scope: !2984)
!2991 = !DILocation(line: 345, column: 19, scope: !2984)
!2992 = !DILocation(line: 345, column: 38, scope: !2984)
!2993 = !DILocation(line: 345, column: 36, scope: !2984)
!2994 = !DILocation(line: 345, column: 9, scope: !2984)
!2995 = !DILocation(line: 345, column: 17, scope: !2984)
!2996 = !DILocation(line: 344, column: 36, scope: !2984)
!2997 = distinct !{!2997, !2985, !2998, !101, !102}
!2998 = !DILocation(line: 345, column: 44, scope: !2978)
!2999 = !DILocation(line: 348, column: 1, scope: !2972)
!3000 = !DILocation(line: 347, column: 25, scope: !2989)
!3001 = !DILocation(line: 347, column: 19, scope: !2989)
!3002 = !DILocation(line: 347, column: 53, scope: !2989)
!3003 = !DILocation(line: 347, column: 38, scope: !2989)
!3004 = !DILocation(line: 347, column: 59, scope: !2989)
!3005 = !DILocation(line: 347, column: 75, scope: !2989)
!3006 = !DILocation(line: 347, column: 69, scope: !2989)
!3007 = !DILocation(line: 347, column: 67, scope: !2989)
!3008 = !DILocation(line: 347, column: 17, scope: !2989)
!3009 = !DILocation(line: 346, column: 36, scope: !2989)
!3010 = distinct !{!3010, !2987, !3011, !101, !102}
!3011 = !DILocation(line: 347, column: 77, scope: !2980)
!3012 = distinct !DISubprogram(name: "integral_init8v", scope: !28, file: !28, line: 350, type: !1190, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3013)
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "sum8", arg: 1, scope: !3012, file: !28, line: 350, type: !485)
!3015 = !DILocalVariable(name: "stride", arg: 2, scope: !3012, file: !28, line: 350, type: !48)
!3016 = !DILocalVariable(name: "x", scope: !3017, file: !28, line: 352, type: !48)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !28, line: 352, column: 5)
!3018 = !DILocation(line: 0, scope: !3012)
!3019 = !DILocation(line: 0, scope: !3017)
!3020 = !DILocation(line: 352, column: 23, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !28, line: 352, column: 5)
!3022 = !DILocation(line: 352, column: 5, scope: !3017)
!3023 = !DILocation(line: 354, column: 1, scope: !3012)
!3024 = !DILocation(line: 353, column: 25, scope: !3021)
!3025 = !DILocation(line: 353, column: 19, scope: !3021)
!3026 = !DILocation(line: 353, column: 38, scope: !3021)
!3027 = !DILocation(line: 353, column: 36, scope: !3021)
!3028 = !DILocation(line: 353, column: 17, scope: !3021)
!3029 = !DILocation(line: 352, column: 36, scope: !3021)
!3030 = distinct !{!3030, !3022, !3031, !101, !102}
!3031 = !DILocation(line: 353, column: 44, scope: !3017)
!3032 = distinct !DISubprogram(name: "mbtree_propagate_cost", scope: !28, file: !28, line: 424, type: !1206, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035, !3036, !3037, !3038, !3039, !3040, !3042}
!3034 = !DILocalVariable(name: "dst", arg: 1, scope: !3032, file: !28, line: 424, type: !640)
!3035 = !DILocalVariable(name: "propagate_in", arg: 2, scope: !3032, file: !28, line: 424, type: !485)
!3036 = !DILocalVariable(name: "intra_costs", arg: 3, scope: !3032, file: !28, line: 424, type: !485)
!3037 = !DILocalVariable(name: "inter_costs", arg: 4, scope: !3032, file: !28, line: 425, type: !485)
!3038 = !DILocalVariable(name: "inv_qscales", arg: 5, scope: !3032, file: !28, line: 425, type: !485)
!3039 = !DILocalVariable(name: "len", arg: 6, scope: !3032, file: !28, line: 425, type: !48)
!3040 = !DILocalVariable(name: "i", scope: !3041, file: !28, line: 427, type: !48)
!3041 = distinct !DILexicalBlock(scope: !3032, file: !28, line: 427, column: 5)
!3042 = !DILocalVariable(name: "propagate_amount", scope: !3043, file: !28, line: 429, type: !48)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !28, line: 428, column: 5)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !28, line: 427, column: 5)
!3045 = !DILocation(line: 0, scope: !3032)
!3046 = !DILocation(line: 0, scope: !3041)
!3047 = !DILocation(line: 427, column: 23, scope: !3044)
!3048 = !DILocation(line: 427, column: 5, scope: !3041)
!3049 = !DILocation(line: 432, column: 1, scope: !3032)
!3050 = !DILocation(line: 429, column: 32, scope: !3043)
!3051 = !DILocation(line: 429, column: 52, scope: !3043)
!3052 = !DILocation(line: 429, column: 69, scope: !3043)
!3053 = !DILocation(line: 429, column: 67, scope: !3043)
!3054 = !DILocation(line: 429, column: 84, scope: !3043)
!3055 = !DILocation(line: 429, column: 90, scope: !3043)
!3056 = !DILocation(line: 429, column: 48, scope: !3043)
!3057 = !DILocation(line: 0, scope: !3043)
!3058 = !DILocation(line: 430, column: 18, scope: !3043)
!3059 = !DILocation(line: 430, column: 9, scope: !3043)
!3060 = !DILocation(line: 430, column: 16, scope: !3043)
!3061 = !DILocation(line: 427, column: 31, scope: !3044)
!3062 = distinct !{!3062, !3048, !3063, !101, !102}
!3063 = !DILocation(line: 431, column: 5, scope: !3041)
!3064 = distinct !DISubprogram(name: "x264_frame_filter", scope: !28, file: !28, line: 489, type: !3065, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !107, !566, !48, !48}
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3080, !3084, !3087, !3088}
!3068 = !DILocalVariable(name: "h", arg: 1, scope: !3064, file: !28, line: 489, type: !107)
!3069 = !DILocalVariable(name: "frame", arg: 2, scope: !3064, file: !28, line: 489, type: !566)
!3070 = !DILocalVariable(name: "mb_y", arg: 3, scope: !3064, file: !28, line: 489, type: !48)
!3071 = !DILocalVariable(name: "b_end", arg: 4, scope: !3064, file: !28, line: 489, type: !48)
!3072 = !DILocalVariable(name: "b_interlaced", scope: !3064, file: !28, line: 491, type: !2344)
!3073 = !DILocalVariable(name: "stride", scope: !3064, file: !28, line: 492, type: !2344)
!3074 = !DILocalVariable(name: "width", scope: !3064, file: !28, line: 493, type: !2344)
!3075 = !DILocalVariable(name: "start", scope: !3064, file: !28, line: 494, type: !48)
!3076 = !DILocalVariable(name: "height", scope: !3064, file: !28, line: 495, type: !48)
!3077 = !DILocalVariable(name: "offs", scope: !3064, file: !28, line: 496, type: !48)
!3078 = !DILocalVariable(name: "y", scope: !3079, file: !28, line: 501, type: !48)
!3079 = distinct !DILexicalBlock(scope: !3064, file: !28, line: 501, column: 5)
!3080 = !DILocalVariable(name: "y", scope: !3081, file: !28, line: 526, type: !48)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !28, line: 526, column: 9)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !28, line: 518, column: 5)
!3083 = distinct !DILexicalBlock(scope: !3064, file: !28, line: 517, column: 9)
!3084 = !DILocalVariable(name: "pix", scope: !3085, file: !28, line: 528, type: !47)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !28, line: 527, column: 9)
!3086 = distinct !DILexicalBlock(scope: !3081, file: !28, line: 526, column: 9)
!3087 = !DILocalVariable(name: "sum8", scope: !3085, file: !28, line: 529, type: !485)
!3088 = !DILocalVariable(name: "sum4", scope: !3085, file: !28, line: 530, type: !485)
!3089 = !DILocation(line: 0, scope: !3064)
!3090 = !DILocation(line: 491, column: 36, scope: !3064)
!3091 = !{!1424, !1405, i64 7268}
!3092 = !DILocation(line: 492, column: 31, scope: !3064)
!3093 = !DILocation(line: 492, column: 24, scope: !3064)
!3094 = !DILocation(line: 492, column: 43, scope: !3064)
!3095 = !DILocation(line: 493, column: 30, scope: !3064)
!3096 = !DILocation(line: 493, column: 23, scope: !3064)
!3097 = !DILocation(line: 494, column: 22, scope: !3064)
!3098 = !DILocation(line: 494, column: 26, scope: !3064)
!3099 = !DILocation(line: 494, column: 43, scope: !3064)
!3100 = !DILocation(line: 495, column: 20, scope: !3064)
!3101 = !DILocation(line: 495, column: 35, scope: !3064)
!3102 = !DILocation(line: 495, column: 28, scope: !3064)
!3103 = !DILocation(line: 495, column: 57, scope: !3064)
!3104 = !DILocation(line: 495, column: 74, scope: !3064)
!3105 = !DILocation(line: 498, column: 14, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3064, file: !28, line: 498, column: 9)
!3107 = !DILocation(line: 498, column: 9, scope: !3064)
!3108 = !DILocation(line: 0, scope: !3079)
!3109 = !DILocation(line: 501, column: 23, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3079, file: !28, line: 501, column: 5)
!3111 = !DILocation(line: 501, column: 5, scope: !3079)
!3112 = !DILocation(line: 496, column: 21, scope: !3064)
!3113 = !DILocation(line: 496, column: 29, scope: !3064)
!3114 = !DILocation(line: 517, column: 16, scope: !3083)
!3115 = !{!1456, !1399, i64 240}
!3116 = !DILocation(line: 517, column: 9, scope: !3083)
!3117 = !DILocation(line: 517, column: 9, scope: !3064)
!3118 = !DILocation(line: 503, column: 15, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3110, file: !28, line: 502, column: 5)
!3120 = !{!1424, !1399, i64 32792}
!3121 = !DILocation(line: 504, column: 13, scope: !3119)
!3122 = !DILocation(line: 504, column: 32, scope: !3119)
!3123 = !DILocation(line: 505, column: 13, scope: !3119)
!3124 = !DILocation(line: 505, column: 32, scope: !3119)
!3125 = !DILocation(line: 506, column: 13, scope: !3119)
!3126 = !DILocation(line: 506, column: 32, scope: !3119)
!3127 = !DILocation(line: 507, column: 13, scope: !3119)
!3128 = !DILocation(line: 507, column: 29, scope: !3119)
!3129 = !DILocation(line: 509, column: 16, scope: !3119)
!3130 = !{!1424, !1399, i64 31176}
!3131 = !DILocation(line: 503, column: 9, scope: !3119)
!3132 = !DILocation(line: 501, column: 41, scope: !3110)
!3133 = !DILocation(line: 501, column: 53, scope: !3110)
!3134 = !DILocation(line: 501, column: 50, scope: !3110)
!3135 = distinct !{!3135, !3111, !3136, !101, !102}
!3136 = !DILocation(line: 510, column: 5, scope: !3079)
!3137 = !DILocation(line: 519, column: 19, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3082, file: !28, line: 519, column: 13)
!3139 = !DILocation(line: 519, column: 13, scope: !3082)
!3140 = !DILocation(line: 521, column: 44, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3138, file: !28, line: 520, column: 9)
!3142 = !DILocation(line: 521, column: 37, scope: !3141)
!3143 = !DILocation(line: 521, column: 53, scope: !3141)
!3144 = !DILocation(line: 521, column: 64, scope: !3141)
!3145 = !DILocation(line: 521, column: 71, scope: !3141)
!3146 = !DILocation(line: 521, column: 13, scope: !3141)
!3147 = !DILocation(line: 523, column: 9, scope: !3141)
!3148 = !DILocation(line: 524, column: 13, scope: !3082)
!3149 = !DILocation(line: 0, scope: !3081)
!3150 = !DILocation(line: 526, column: 31, scope: !3086)
!3151 = !DILocation(line: 526, column: 9, scope: !3081)
!3152 = !DILocation(line: 528, column: 30, scope: !3085)
!3153 = !DILocation(line: 528, column: 50, scope: !3085)
!3154 = !DILocation(line: 528, column: 46, scope: !3085)
!3155 = !DILocation(line: 528, column: 59, scope: !3085)
!3156 = !DILocation(line: 0, scope: !3085)
!3157 = !DILocation(line: 529, column: 37, scope: !3085)
!3158 = !DILocation(line: 529, column: 50, scope: !3085)
!3159 = !DILocation(line: 529, column: 54, scope: !3085)
!3160 = !DILocation(line: 529, column: 46, scope: !3085)
!3161 = !DILocation(line: 529, column: 63, scope: !3085)
!3162 = !DILocation(line: 531, column: 27, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3085, file: !28, line: 531, column: 17)
!3164 = !{!1424, !1405, i64 14676}
!3165 = !DILocation(line: 531, column: 17, scope: !3163)
!3166 = !DILocation(line: 531, column: 17, scope: !3085)
!3167 = !DILocation(line: 533, column: 23, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3163, file: !28, line: 532, column: 13)
!3169 = !{!1424, !1399, i64 32832}
!3170 = !DILocation(line: 533, column: 17, scope: !3168)
!3171 = !DILocation(line: 536, column: 23, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !28, line: 536, column: 21)
!3173 = !DILocation(line: 536, column: 21, scope: !3168)
!3174 = !DILocation(line: 534, column: 22, scope: !3168)
!3175 = !DILocation(line: 535, column: 41, scope: !3168)
!3176 = !DILocation(line: 535, column: 59, scope: !3168)
!3177 = !DILocation(line: 535, column: 38, scope: !3168)
!3178 = !DILocation(line: 535, column: 29, scope: !3168)
!3179 = !DILocation(line: 537, column: 27, scope: !3172)
!3180 = !{!1424, !1399, i64 32848}
!3181 = !DILocation(line: 537, column: 21, scope: !3172)
!3182 = !DILocation(line: 541, column: 23, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3163, file: !28, line: 540, column: 13)
!3184 = !{!1424, !1399, i64 32840}
!3185 = !DILocation(line: 541, column: 17, scope: !3183)
!3186 = !DILocation(line: 542, column: 23, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !28, line: 542, column: 21)
!3188 = !DILocation(line: 542, column: 21, scope: !3183)
!3189 = !DILocation(line: 543, column: 27, scope: !3187)
!3190 = !{!1424, !1399, i64 32856}
!3191 = !DILocation(line: 543, column: 48, scope: !3187)
!3192 = !DILocation(line: 543, column: 21, scope: !3187)
!3193 = distinct !{!3193, !3151, !3194, !101, !102}
!3194 = !DILocation(line: 545, column: 9, scope: !3081)
!3195 = !DILocation(line: 547, column: 1, scope: !3064)
!3196 = !DILocation(line: 0, scope: !2331)
!3197 = !DILocation(line: 69, column: 30, scope: !2331)
!3198 = !DILocation(line: 0, scope: !2346)
!3199 = !DILocation(line: 70, column: 22, scope: !2353)
!3200 = !DILocation(line: 70, column: 5, scope: !2346)
!3201 = !DILocation(line: 74, column: 12, scope: !2352)
!3202 = !DILocation(line: 72, column: 9, scope: !2352)
!3203 = !DILocation(line: 0, scope: !1739, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 72, column: 9, scope: !2352)
!3205 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3204)
!3206 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3204)
!3207 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3204)
!3208 = !DILocation(line: 73, column: 9, scope: !2352)
!3209 = !DILocation(line: 0, scope: !1739, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 73, column: 9, scope: !2352)
!3211 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3210)
!3212 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3210)
!3213 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3210)
!3214 = !DILocation(line: 70, column: 32, scope: !2353)
!3215 = !DILocation(line: 70, column: 40, scope: !2353)
!3216 = !DILocation(line: 70, column: 55, scope: !2353)
!3217 = !DILocation(line: 70, column: 71, scope: !2353)
!3218 = distinct !{!3218, !3200, !3219, !101, !102}
!3219 = !DILocation(line: 91, column: 5, scope: !2346)
!3220 = !DILocation(line: 92, column: 1, scope: !2331)
!3221 = !DILocation(line: 75, column: 9, scope: !2352)
!3222 = !DILocation(line: 0, scope: !1739, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 75, column: 9, scope: !2352)
!3224 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3223)
!3225 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3223)
!3226 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3223)
!3227 = !DILocation(line: 76, column: 9, scope: !2352)
!3228 = !DILocation(line: 0, scope: !1739, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 76, column: 9, scope: !2352)
!3230 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3229)
!3231 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3229)
!3232 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3229)
!3233 = !DILocation(line: 77, column: 12, scope: !2352)
!3234 = !DILocation(line: 78, column: 9, scope: !2352)
!3235 = !DILocation(line: 0, scope: !1739, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 78, column: 9, scope: !2352)
!3237 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3236)
!3238 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3236)
!3239 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3236)
!3240 = !DILocation(line: 79, column: 9, scope: !2352)
!3241 = !DILocation(line: 0, scope: !1739, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 79, column: 9, scope: !2352)
!3243 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3242)
!3244 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3242)
!3245 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3242)
!3246 = !DILocation(line: 80, column: 9, scope: !2352)
!3247 = !DILocation(line: 0, scope: !1739, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 80, column: 9, scope: !2352)
!3249 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3248)
!3250 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3248)
!3251 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3248)
!3252 = !DILocation(line: 81, column: 9, scope: !2352)
!3253 = !DILocation(line: 0, scope: !1739, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 81, column: 9, scope: !2352)
!3255 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3254)
!3256 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3254)
!3257 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3254)
!3258 = !DILocation(line: 82, column: 12, scope: !2352)
!3259 = !DILocation(line: 83, column: 9, scope: !2352)
!3260 = !DILocation(line: 0, scope: !1739, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 83, column: 9, scope: !2352)
!3262 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3261)
!3263 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3261)
!3264 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3261)
!3265 = !DILocation(line: 84, column: 9, scope: !2352)
!3266 = !DILocation(line: 0, scope: !1739, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 84, column: 9, scope: !2352)
!3268 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3267)
!3269 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3267)
!3270 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3267)
!3271 = !DILocation(line: 85, column: 9, scope: !2352)
!3272 = !DILocation(line: 0, scope: !1739, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 85, column: 9, scope: !2352)
!3274 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3273)
!3275 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3273)
!3276 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3273)
!3277 = !DILocation(line: 86, column: 9, scope: !2352)
!3278 = !DILocation(line: 0, scope: !1739, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 86, column: 9, scope: !2352)
!3280 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3279)
!3281 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3279)
!3282 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3279)
!3283 = !DILocation(line: 87, column: 9, scope: !2352)
!3284 = !DILocation(line: 0, scope: !1739, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 87, column: 9, scope: !2352)
!3286 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3285)
!3287 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3285)
!3288 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3285)
!3289 = !DILocation(line: 88, column: 9, scope: !2352)
!3290 = !DILocation(line: 0, scope: !1739, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 88, column: 9, scope: !2352)
!3292 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3291)
!3293 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3291)
!3294 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3291)
!3295 = !DILocation(line: 89, column: 9, scope: !2352)
!3296 = !DILocation(line: 0, scope: !1739, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 89, column: 9, scope: !2352)
!3298 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3297)
!3299 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3297)
!3300 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3297)
!3301 = !DILocation(line: 90, column: 9, scope: !2352)
!3302 = !DILocation(line: 0, scope: !1739, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 90, column: 9, scope: !2352)
!3304 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3303)
!3305 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3303)
!3306 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3303)
!3307 = !DILocation(line: 91, column: 5, scope: !2352)
!3308 = distinct !DISubprogram(name: "mc_weight_w2", scope: !28, file: !28, line: 160, type: !3309, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{null, !47, !48, !47, !48, !1134, !48}
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3322, !3325, !3328}
!3312 = !DILocalVariable(name: "dst", arg: 1, scope: !3308, file: !28, line: 160, type: !47)
!3313 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3308, file: !28, line: 160, type: !48)
!3314 = !DILocalVariable(name: "src", arg: 3, scope: !3308, file: !28, line: 160, type: !47)
!3315 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3308, file: !28, line: 160, type: !48)
!3316 = !DILocalVariable(name: "weight", arg: 5, scope: !3308, file: !28, line: 160, type: !1134)
!3317 = !DILocalVariable(name: "height", arg: 6, scope: !3308, file: !28, line: 160, type: !48)
!3318 = !DILocalVariable(name: "y", scope: !3319, file: !28, line: 160, type: !48)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !28, line: 160, column: 1)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !28, line: 160, column: 1)
!3321 = distinct !DILexicalBlock(scope: !3308, file: !28, line: 160, column: 1)
!3322 = !DILocalVariable(name: "x", scope: !3323, file: !28, line: 160, type: !48)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !28, line: 160, column: 1)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !28, line: 160, column: 1)
!3325 = !DILocalVariable(name: "y", scope: !3326, file: !28, line: 160, type: !48)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !28, line: 160, column: 1)
!3327 = distinct !DILexicalBlock(scope: !3321, file: !28, line: 160, column: 1)
!3328 = !DILocalVariable(name: "x", scope: !3329, file: !28, line: 160, type: !48)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !28, line: 160, column: 1)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !28, line: 160, column: 1)
!3331 = !DILocation(line: 0, scope: !3308)
!3332 = !DILocation(line: 160, column: 1, scope: !3321)
!3333 = !DILocation(line: 0, scope: !3321)
!3334 = !DILocation(line: 160, column: 1, scope: !3308)
!3335 = !DILocation(line: 0, scope: !3326)
!3336 = !DILocation(line: 160, column: 1, scope: !3326)
!3337 = !DILocation(line: 0, scope: !3319)
!3338 = !DILocation(line: 160, column: 1, scope: !3319)
!3339 = !DILocation(line: 0, scope: !3323)
!3340 = !DILocation(line: 160, column: 1, scope: !3323)
!3341 = !DILocation(line: 160, column: 1, scope: !3324)
!3342 = distinct !{!3342, !3338, !3338, !101, !102}
!3343 = !DILocation(line: 160, column: 1, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3323, file: !28, line: 160, column: 1)
!3345 = !DILocation(line: 0, scope: !1739, inlinedAt: !3346)
!3346 = distinct !DILocation(line: 160, column: 1, scope: !3344)
!3347 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3346)
!3348 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3346)
!3349 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3346)
!3350 = distinct !{!3350, !3340, !3340, !101, !102}
!3351 = !DILocation(line: 0, scope: !3329)
!3352 = !DILocation(line: 160, column: 1, scope: !3329)
!3353 = !DILocation(line: 160, column: 1, scope: !3330)
!3354 = distinct !{!3354, !3336, !3336, !101, !102}
!3355 = !DILocation(line: 160, column: 1, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3329, file: !28, line: 160, column: 1)
!3357 = !DILocation(line: 0, scope: !1739, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 160, column: 1, scope: !3356)
!3359 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3358)
!3360 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3358)
!3361 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3358)
!3362 = distinct !{!3362, !3352, !3352, !101, !102}
!3363 = distinct !DISubprogram(name: "mc_weight_w4", scope: !28, file: !28, line: 159, type: !3309, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3375, !3378, !3381}
!3365 = !DILocalVariable(name: "dst", arg: 1, scope: !3363, file: !28, line: 159, type: !47)
!3366 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3363, file: !28, line: 159, type: !48)
!3367 = !DILocalVariable(name: "src", arg: 3, scope: !3363, file: !28, line: 159, type: !47)
!3368 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3363, file: !28, line: 159, type: !48)
!3369 = !DILocalVariable(name: "weight", arg: 5, scope: !3363, file: !28, line: 159, type: !1134)
!3370 = !DILocalVariable(name: "height", arg: 6, scope: !3363, file: !28, line: 159, type: !48)
!3371 = !DILocalVariable(name: "y", scope: !3372, file: !28, line: 159, type: !48)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !28, line: 159, column: 1)
!3373 = distinct !DILexicalBlock(scope: !3374, file: !28, line: 159, column: 1)
!3374 = distinct !DILexicalBlock(scope: !3363, file: !28, line: 159, column: 1)
!3375 = !DILocalVariable(name: "x", scope: !3376, file: !28, line: 159, type: !48)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !28, line: 159, column: 1)
!3377 = distinct !DILexicalBlock(scope: !3372, file: !28, line: 159, column: 1)
!3378 = !DILocalVariable(name: "y", scope: !3379, file: !28, line: 159, type: !48)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !28, line: 159, column: 1)
!3380 = distinct !DILexicalBlock(scope: !3374, file: !28, line: 159, column: 1)
!3381 = !DILocalVariable(name: "x", scope: !3382, file: !28, line: 159, type: !48)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !28, line: 159, column: 1)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !28, line: 159, column: 1)
!3384 = !DILocation(line: 0, scope: !3363)
!3385 = !DILocation(line: 159, column: 1, scope: !3374)
!3386 = !DILocation(line: 0, scope: !3374)
!3387 = !DILocation(line: 159, column: 1, scope: !3363)
!3388 = !DILocation(line: 0, scope: !3379)
!3389 = !DILocation(line: 159, column: 1, scope: !3379)
!3390 = !DILocation(line: 0, scope: !3372)
!3391 = !DILocation(line: 159, column: 1, scope: !3372)
!3392 = !DILocation(line: 0, scope: !3376)
!3393 = !DILocation(line: 159, column: 1, scope: !3376)
!3394 = !DILocation(line: 159, column: 1, scope: !3377)
!3395 = distinct !{!3395, !3391, !3391, !101, !102}
!3396 = !DILocation(line: 159, column: 1, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3376, file: !28, line: 159, column: 1)
!3398 = !DILocation(line: 0, scope: !1739, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 159, column: 1, scope: !3397)
!3400 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3399)
!3401 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3399)
!3402 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3399)
!3403 = distinct !{!3403, !3393, !3393, !101, !102}
!3404 = !DILocation(line: 0, scope: !3382)
!3405 = !DILocation(line: 159, column: 1, scope: !3382)
!3406 = !DILocation(line: 159, column: 1, scope: !3383)
!3407 = distinct !{!3407, !3389, !3389, !101, !102}
!3408 = !DILocation(line: 159, column: 1, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3382, file: !28, line: 159, column: 1)
!3410 = !DILocation(line: 0, scope: !1739, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 159, column: 1, scope: !3409)
!3412 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3411)
!3413 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3411)
!3414 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3411)
!3415 = distinct !{!3415, !3405, !3405, !101, !102}
!3416 = distinct !DISubprogram(name: "mc_weight_w8", scope: !28, file: !28, line: 158, type: !3309, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3428, !3431, !3434}
!3418 = !DILocalVariable(name: "dst", arg: 1, scope: !3416, file: !28, line: 158, type: !47)
!3419 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3416, file: !28, line: 158, type: !48)
!3420 = !DILocalVariable(name: "src", arg: 3, scope: !3416, file: !28, line: 158, type: !47)
!3421 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3416, file: !28, line: 158, type: !48)
!3422 = !DILocalVariable(name: "weight", arg: 5, scope: !3416, file: !28, line: 158, type: !1134)
!3423 = !DILocalVariable(name: "height", arg: 6, scope: !3416, file: !28, line: 158, type: !48)
!3424 = !DILocalVariable(name: "y", scope: !3425, file: !28, line: 158, type: !48)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !28, line: 158, column: 1)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !28, line: 158, column: 1)
!3427 = distinct !DILexicalBlock(scope: !3416, file: !28, line: 158, column: 1)
!3428 = !DILocalVariable(name: "x", scope: !3429, file: !28, line: 158, type: !48)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !28, line: 158, column: 1)
!3430 = distinct !DILexicalBlock(scope: !3425, file: !28, line: 158, column: 1)
!3431 = !DILocalVariable(name: "y", scope: !3432, file: !28, line: 158, type: !48)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !28, line: 158, column: 1)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !28, line: 158, column: 1)
!3434 = !DILocalVariable(name: "x", scope: !3435, file: !28, line: 158, type: !48)
!3435 = distinct !DILexicalBlock(scope: !3436, file: !28, line: 158, column: 1)
!3436 = distinct !DILexicalBlock(scope: !3432, file: !28, line: 158, column: 1)
!3437 = !DILocation(line: 0, scope: !3416)
!3438 = !DILocation(line: 158, column: 1, scope: !3427)
!3439 = !DILocation(line: 0, scope: !3427)
!3440 = !DILocation(line: 158, column: 1, scope: !3416)
!3441 = !DILocation(line: 0, scope: !3432)
!3442 = !DILocation(line: 158, column: 1, scope: !3432)
!3443 = !DILocation(line: 0, scope: !3425)
!3444 = !DILocation(line: 158, column: 1, scope: !3425)
!3445 = !DILocation(line: 0, scope: !3429)
!3446 = !DILocation(line: 158, column: 1, scope: !3429)
!3447 = !DILocation(line: 158, column: 1, scope: !3430)
!3448 = distinct !{!3448, !3444, !3444, !101, !102}
!3449 = !DILocation(line: 158, column: 1, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3429, file: !28, line: 158, column: 1)
!3451 = !DILocation(line: 0, scope: !1739, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 158, column: 1, scope: !3450)
!3453 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3452)
!3454 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3452)
!3455 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3452)
!3456 = distinct !{!3456, !3446, !3446, !101, !102}
!3457 = !DILocation(line: 0, scope: !3435)
!3458 = !DILocation(line: 158, column: 1, scope: !3435)
!3459 = !DILocation(line: 158, column: 1, scope: !3436)
!3460 = distinct !{!3460, !3442, !3442, !101, !102}
!3461 = !DILocation(line: 158, column: 1, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3435, file: !28, line: 158, column: 1)
!3463 = !DILocation(line: 0, scope: !1739, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 158, column: 1, scope: !3462)
!3465 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3464)
!3466 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3464)
!3467 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3464)
!3468 = distinct !{!3468, !3458, !3458, !101, !102}
!3469 = distinct !DISubprogram(name: "mc_weight_w12", scope: !28, file: !28, line: 157, type: !3309, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3481, !3484, !3487}
!3471 = !DILocalVariable(name: "dst", arg: 1, scope: !3469, file: !28, line: 157, type: !47)
!3472 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3469, file: !28, line: 157, type: !48)
!3473 = !DILocalVariable(name: "src", arg: 3, scope: !3469, file: !28, line: 157, type: !47)
!3474 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3469, file: !28, line: 157, type: !48)
!3475 = !DILocalVariable(name: "weight", arg: 5, scope: !3469, file: !28, line: 157, type: !1134)
!3476 = !DILocalVariable(name: "height", arg: 6, scope: !3469, file: !28, line: 157, type: !48)
!3477 = !DILocalVariable(name: "y", scope: !3478, file: !28, line: 157, type: !48)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !28, line: 157, column: 1)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !28, line: 157, column: 1)
!3480 = distinct !DILexicalBlock(scope: !3469, file: !28, line: 157, column: 1)
!3481 = !DILocalVariable(name: "x", scope: !3482, file: !28, line: 157, type: !48)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !28, line: 157, column: 1)
!3483 = distinct !DILexicalBlock(scope: !3478, file: !28, line: 157, column: 1)
!3484 = !DILocalVariable(name: "y", scope: !3485, file: !28, line: 157, type: !48)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !28, line: 157, column: 1)
!3486 = distinct !DILexicalBlock(scope: !3480, file: !28, line: 157, column: 1)
!3487 = !DILocalVariable(name: "x", scope: !3488, file: !28, line: 157, type: !48)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !28, line: 157, column: 1)
!3489 = distinct !DILexicalBlock(scope: !3485, file: !28, line: 157, column: 1)
!3490 = !DILocation(line: 0, scope: !3469)
!3491 = !DILocation(line: 157, column: 1, scope: !3480)
!3492 = !DILocation(line: 0, scope: !3480)
!3493 = !DILocation(line: 157, column: 1, scope: !3469)
!3494 = !DILocation(line: 0, scope: !3485)
!3495 = !DILocation(line: 157, column: 1, scope: !3485)
!3496 = !DILocation(line: 0, scope: !3478)
!3497 = !DILocation(line: 157, column: 1, scope: !3478)
!3498 = !DILocation(line: 0, scope: !3482)
!3499 = !DILocation(line: 157, column: 1, scope: !3482)
!3500 = !DILocation(line: 157, column: 1, scope: !3483)
!3501 = distinct !{!3501, !3497, !3497, !101, !102}
!3502 = !DILocation(line: 157, column: 1, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3482, file: !28, line: 157, column: 1)
!3504 = !DILocation(line: 0, scope: !1739, inlinedAt: !3505)
!3505 = distinct !DILocation(line: 157, column: 1, scope: !3503)
!3506 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3505)
!3507 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3505)
!3508 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3505)
!3509 = distinct !{!3509, !3499, !3499, !101, !102}
!3510 = !DILocation(line: 0, scope: !3488)
!3511 = !DILocation(line: 157, column: 1, scope: !3488)
!3512 = !DILocation(line: 157, column: 1, scope: !3489)
!3513 = distinct !{!3513, !3495, !3495, !101, !102}
!3514 = !DILocation(line: 157, column: 1, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3488, file: !28, line: 157, column: 1)
!3516 = !DILocation(line: 0, scope: !1739, inlinedAt: !3517)
!3517 = distinct !DILocation(line: 157, column: 1, scope: !3515)
!3518 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3517)
!3519 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3517)
!3520 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3517)
!3521 = distinct !{!3521, !3511, !3511, !101, !102}
!3522 = distinct !DISubprogram(name: "mc_weight_w16", scope: !28, file: !28, line: 156, type: !3309, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3529, !3530, !3534, !3537, !3540}
!3524 = !DILocalVariable(name: "dst", arg: 1, scope: !3522, file: !28, line: 156, type: !47)
!3525 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3522, file: !28, line: 156, type: !48)
!3526 = !DILocalVariable(name: "src", arg: 3, scope: !3522, file: !28, line: 156, type: !47)
!3527 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3522, file: !28, line: 156, type: !48)
!3528 = !DILocalVariable(name: "weight", arg: 5, scope: !3522, file: !28, line: 156, type: !1134)
!3529 = !DILocalVariable(name: "height", arg: 6, scope: !3522, file: !28, line: 156, type: !48)
!3530 = !DILocalVariable(name: "y", scope: !3531, file: !28, line: 156, type: !48)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !28, line: 156, column: 1)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !28, line: 156, column: 1)
!3533 = distinct !DILexicalBlock(scope: !3522, file: !28, line: 156, column: 1)
!3534 = !DILocalVariable(name: "x", scope: !3535, file: !28, line: 156, type: !48)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !28, line: 156, column: 1)
!3536 = distinct !DILexicalBlock(scope: !3531, file: !28, line: 156, column: 1)
!3537 = !DILocalVariable(name: "y", scope: !3538, file: !28, line: 156, type: !48)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !28, line: 156, column: 1)
!3539 = distinct !DILexicalBlock(scope: !3533, file: !28, line: 156, column: 1)
!3540 = !DILocalVariable(name: "x", scope: !3541, file: !28, line: 156, type: !48)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !28, line: 156, column: 1)
!3542 = distinct !DILexicalBlock(scope: !3538, file: !28, line: 156, column: 1)
!3543 = !DILocation(line: 0, scope: !3522)
!3544 = !DILocation(line: 156, column: 1, scope: !3533)
!3545 = !DILocation(line: 0, scope: !3533)
!3546 = !DILocation(line: 156, column: 1, scope: !3522)
!3547 = !DILocation(line: 0, scope: !3538)
!3548 = !DILocation(line: 156, column: 1, scope: !3538)
!3549 = !DILocation(line: 0, scope: !3531)
!3550 = !DILocation(line: 156, column: 1, scope: !3531)
!3551 = !DILocation(line: 0, scope: !3535)
!3552 = !DILocation(line: 156, column: 1, scope: !3535)
!3553 = !DILocation(line: 156, column: 1, scope: !3536)
!3554 = distinct !{!3554, !3550, !3550, !101, !102}
!3555 = !DILocation(line: 156, column: 1, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3535, file: !28, line: 156, column: 1)
!3557 = !DILocation(line: 0, scope: !1739, inlinedAt: !3558)
!3558 = distinct !DILocation(line: 156, column: 1, scope: !3556)
!3559 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3558)
!3560 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3558)
!3561 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3558)
!3562 = distinct !{!3562, !3552, !3552, !101, !102}
!3563 = !DILocation(line: 0, scope: !3541)
!3564 = !DILocation(line: 156, column: 1, scope: !3541)
!3565 = !DILocation(line: 156, column: 1, scope: !3542)
!3566 = distinct !{!3566, !3548, !3548, !101, !102}
!3567 = !DILocation(line: 156, column: 1, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3541, file: !28, line: 156, column: 1)
!3569 = !DILocation(line: 0, scope: !1739, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 156, column: 1, scope: !3568)
!3571 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3570)
!3572 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3570)
!3573 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3570)
!3574 = distinct !{!3574, !3564, !3564, !101, !102}
!3575 = distinct !DISubprogram(name: "mc_weight_w20", scope: !28, file: !28, line: 155, type: !3309, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3576)
!3576 = !{!3577, !3578, !3579, !3580, !3581, !3582, !3583, !3587, !3590, !3593}
!3577 = !DILocalVariable(name: "dst", arg: 1, scope: !3575, file: !28, line: 155, type: !47)
!3578 = !DILocalVariable(name: "i_dst_stride", arg: 2, scope: !3575, file: !28, line: 155, type: !48)
!3579 = !DILocalVariable(name: "src", arg: 3, scope: !3575, file: !28, line: 155, type: !47)
!3580 = !DILocalVariable(name: "i_src_stride", arg: 4, scope: !3575, file: !28, line: 155, type: !48)
!3581 = !DILocalVariable(name: "weight", arg: 5, scope: !3575, file: !28, line: 155, type: !1134)
!3582 = !DILocalVariable(name: "height", arg: 6, scope: !3575, file: !28, line: 155, type: !48)
!3583 = !DILocalVariable(name: "y", scope: !3584, file: !28, line: 155, type: !48)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !28, line: 155, column: 1)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !28, line: 155, column: 1)
!3586 = distinct !DILexicalBlock(scope: !3575, file: !28, line: 155, column: 1)
!3587 = !DILocalVariable(name: "x", scope: !3588, file: !28, line: 155, type: !48)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !28, line: 155, column: 1)
!3589 = distinct !DILexicalBlock(scope: !3584, file: !28, line: 155, column: 1)
!3590 = !DILocalVariable(name: "y", scope: !3591, file: !28, line: 155, type: !48)
!3591 = distinct !DILexicalBlock(scope: !3592, file: !28, line: 155, column: 1)
!3592 = distinct !DILexicalBlock(scope: !3586, file: !28, line: 155, column: 1)
!3593 = !DILocalVariable(name: "x", scope: !3594, file: !28, line: 155, type: !48)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !28, line: 155, column: 1)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !28, line: 155, column: 1)
!3596 = !DILocation(line: 0, scope: !3575)
!3597 = !DILocation(line: 155, column: 1, scope: !3586)
!3598 = !DILocation(line: 0, scope: !3586)
!3599 = !DILocation(line: 155, column: 1, scope: !3575)
!3600 = !DILocation(line: 0, scope: !3591)
!3601 = !DILocation(line: 155, column: 1, scope: !3591)
!3602 = !DILocation(line: 0, scope: !3584)
!3603 = !DILocation(line: 155, column: 1, scope: !3584)
!3604 = !DILocation(line: 0, scope: !3588)
!3605 = !DILocation(line: 155, column: 1, scope: !3588)
!3606 = !DILocation(line: 155, column: 1, scope: !3589)
!3607 = distinct !{!3607, !3603, !3603, !101, !102}
!3608 = !DILocation(line: 155, column: 1, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3588, file: !28, line: 155, column: 1)
!3610 = !DILocation(line: 0, scope: !1739, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 155, column: 1, scope: !3609)
!3612 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3611)
!3613 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3611)
!3614 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3611)
!3615 = distinct !{!3615, !3605, !3605, !101, !102}
!3616 = !DILocation(line: 0, scope: !3594)
!3617 = !DILocation(line: 155, column: 1, scope: !3594)
!3618 = !DILocation(line: 155, column: 1, scope: !3595)
!3619 = distinct !{!3619, !3601, !3601, !101, !102}
!3620 = !DILocation(line: 155, column: 1, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3594, file: !28, line: 155, column: 1)
!3622 = !DILocation(line: 0, scope: !1739, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 155, column: 1, scope: !3621)
!3624 = !DILocation(line: 197, column: 13, scope: !1739, inlinedAt: !3623)
!3625 = !DILocation(line: 197, column: 12, scope: !1739, inlinedAt: !3623)
!3626 = !DILocation(line: 197, column: 27, scope: !1739, inlinedAt: !3623)
!3627 = distinct !{!3627, !3617, !3617, !101, !102}
