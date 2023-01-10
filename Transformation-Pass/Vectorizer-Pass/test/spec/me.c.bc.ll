; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/encoder/me.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/me.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.15 = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_me_t = type { i32, ptr, i32, i32, ptr, [6 x ptr], ptr, [3 x ptr], ptr, [2 x i32], [2 x i16], i32, i32, [2 x i16] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
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
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.mvsad_t = type { i32, [2 x i16] }

@x264_pixel_size = internal unnamed_addr constant [7 x %struct.anon.15] [%struct.anon.15 { i32 16, i32 16 }, %struct.anon.15 { i32 16, i32 8 }, %struct.anon.15 { i32 8, i32 16 }, %struct.anon.15 { i32 8, i32 8 }, %struct.anon.15 { i32 8, i32 4 }, %struct.anon.15 { i32 4, i32 8 }, %struct.anon.15 { i32 4, i32 4 }], align 16, !dbg !0
@hex2 = internal unnamed_addr constant [8 x [2 x i8]] [[2 x i8] c"\FF\FE", [2 x i8] c"\FE\00", [2 x i8] c"\FF\02", [2 x i8] c"\01\02", [2 x i8] c"\02\00", [2 x i8] c"\01\FE", [2 x i8] c"\FF\FE", [2 x i8] c"\FE\00"], align 16, !dbg !1704
@mod6m1 = internal unnamed_addr constant [8 x i8] c"\05\00\01\02\03\04\05\00", align 1, !dbg !1707
@square1 = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\00\01", [2 x i8] c"\FF\00", [2 x i8] c"\01\00", [2 x i8] c"\FF\FF", [2 x i8] c"\FF\01", [2 x i8] c"\01\FF", [2 x i8] c"\01\01"], align 16, !dbg !1710
@x264_me_search_ref.x264_pixel_size_shift = internal unnamed_addr constant [7 x i8] c"\00\01\01\02\03\03\04", align 1, !dbg !81
@x264_me_search_ref.range_mul = internal unnamed_addr constant [4 x [4 x i8]] [[4 x i8] c"\03\03\04\04", [4 x i8] c"\03\04\04\04", [4 x i8] c"\04\04\04\05", [4 x i8] c"\04\04\05\06"], align 16, !dbg !1690
@x264_me_search_ref.hex4 = internal unnamed_addr constant [16 x [2 x i8]] [[2 x i8] c"\00\FC", [2 x i8] c"\00\04", [2 x i8] c"\FE\FD", [2 x i8] c"\02\FD", [2 x i8] c"\FC\FE", [2 x i8] c"\04\FE", [2 x i8] c"\FC\FF", [2 x i8] c"\04\FF", [2 x i8] c"\FC\00", [2 x i8] c"\04\00", [2 x i8] c"\FC\01", [2 x i8] c"\04\01", [2 x i8] c"\FC\02", [2 x i8] c"\04\02", [2 x i8] c"\FE\03", [2 x i8] c"\02\03"], align 16, !dbg !1693
@x264_me_search_ref.zero = internal global [128 x i8] zeroinitializer, align 16, !dbg !1697
@x264_lambda_tab = external local_unnamed_addr constant [52 x i8], align 16
@subpel_iterations = internal unnamed_addr constant [11 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\01\01\00\00", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\02\01\00", [4 x i8] c"\00\02\01\01", [4 x i8] c"\00\02\01\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\02\02", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A", [4 x i8] c"\00\00\04\0A"], align 16, !dbg !1714
@x264_iter_kludge = dso_local local_unnamed_addr global i32 0, align 4, !dbg !1702
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !1816
@block_idx_xy_fdec = internal unnamed_addr constant [16 x i16] [i16 0, i16 4, i16 128, i16 132, i16 8, i16 12, i16 136, i16 140, i16 256, i16 260, i16 384, i16 388, i16 264, i16 268, i16 392, i16 396], align 16, !dbg !1821
@block_idx_x = internal unnamed_addr constant [16 x i8] c"\00\01\00\01\02\03\02\03\00\01\00\01\02\03\02\03", align 16, !dbg !1825
@block_idx_y = internal unnamed_addr constant [16 x i8] c"\00\00\01\01\00\00\01\01\02\02\03\03\02\02\03\03", align 16, !dbg !1828
@x264_me_refine_bidir.dia4d = internal unnamed_addr constant [33 x [4 x i8]] [[4 x i8] zeroinitializer, [4 x i8] c"\00\00\00\01", [4 x i8] c"\00\00\00\FF", [4 x i8] c"\00\00\01\00", [4 x i8] c"\00\00\FF\00", [4 x i8] c"\00\01\00\00", [4 x i8] c"\00\FF\00\00", [4 x i8] c"\01\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\00\00\01\01", [4 x i8] c"\00\00\FF\FF", [4 x i8] c"\00\01\01\00", [4 x i8] c"\00\FF\FF\00", [4 x i8] c"\01\01\00\00", [4 x i8] c"\FF\FF\00\00", [4 x i8] c"\01\00\00\01", [4 x i8] c"\FF\00\00\FF", [4 x i8] c"\00\01\00\01", [4 x i8] c"\00\FF\00\FF", [4 x i8] c"\01\00\01\00", [4 x i8] c"\FF\00\FF\00", [4 x i8] c"\00\00\FF\01", [4 x i8] c"\00\00\01\FF", [4 x i8] c"\00\FF\01\00", [4 x i8] c"\00\01\FF\00", [4 x i8] c"\FF\01\00\00", [4 x i8] c"\01\FF\00\00", [4 x i8] c"\01\00\00\FF", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\00\FF\00\01", [4 x i8] c"\00\01\00\FF", [4 x i8] c"\FF\00\01\00", [4 x i8] c"\01\00\FF\00"], align 8, !dbg !1719
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_search_ref(ptr noundef %h, ptr noundef %m, ptr nocapture noundef readonly %mvc, i32 noundef %i_mvc, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 !dbg !83 {
entry:
  %pix = alloca [256 x i8], align 16
  %costs = alloca [16 x i32], align 16
  %stride2 = alloca i32, align 4
  %stride291 = alloca i32, align 4
  %mvc_fpel = alloca [16 x [2 x i16]], align 8
  %enc_dc = alloca [4 x i32], align 16
  %sads = alloca [3 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %h, metadata !1394, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %m, metadata !1395, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %mvc, metadata !1396, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i_mvc, metadata !1397, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %p_halfpel_thresh, metadata !1398, metadata !DIExpression()), !dbg !1843
  %0 = load i32, ptr %m, align 16, !dbg !1844, !tbaa !1845
  %idxprom = sext i32 %0 to i64, !dbg !1851
  %arrayidx = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom, !dbg !1851
  %1 = load i32, ptr %arrayidx, align 8, !dbg !1852, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !1399, metadata !DIExpression()), !dbg !1843
  %h4 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom, i32 1, !dbg !1855
  %2 = load i32, ptr %h4, align 4, !dbg !1855, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %2, metadata !1401, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %0, metadata !1402, metadata !DIExpression()), !dbg !1843
  %i_stride = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, !dbg !1857
  %3 = load i32, ptr %i_stride, align 8, !dbg !1858, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %3, metadata !1403, metadata !DIExpression()), !dbg !1843
  %i_me_range8 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 8, !dbg !1860
  %4 = load i32, ptr %i_me_range8, align 16, !dbg !1860, !tbaa !1861
  call void @llvm.dbg.value(metadata i32 %4, metadata !1404, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 268435456, metadata !1410, metadata !DIExpression()), !dbg !1843
  %p_fenc9 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, !dbg !1887
  %5 = load ptr, ptr %p_fenc9, align 8, !dbg !1888, !tbaa !1889
  call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !1843
  %p_fref_w11 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 6, !dbg !1890
  %6 = load ptr, ptr %p_fref_w11, align 16, !dbg !1890, !tbaa !1891
  call void @llvm.dbg.value(metadata ptr %6, metadata !1416, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %pix) #5, !dbg !1892
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !1417, metadata !DIExpression()), !dbg !1892
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %costs) #5, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %costs, metadata !1418, metadata !DIExpression()), !dbg !1894
  %mv_min_fpel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 22, !dbg !1895
  %7 = load i32, ptr %mv_min_fpel, align 8, !dbg !1896, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %7, metadata !1419, metadata !DIExpression()), !dbg !1843
  %arrayidx15 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 22, i64 1, !dbg !1897
  %8 = load i32, ptr %arrayidx15, align 4, !dbg !1897, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %8, metadata !1420, metadata !DIExpression()), !dbg !1843
  %mv_max_fpel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 23, !dbg !1898
  %9 = load i32, ptr %mv_max_fpel, align 16, !dbg !1899, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %9, metadata !1421, metadata !DIExpression()), !dbg !1843
  %arrayidx20 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 23, i64 1, !dbg !1900
  %10 = load i32, ptr %arrayidx20, align 4, !dbg !1900, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %10, metadata !1422, metadata !DIExpression()), !dbg !1843
  %shl = shl i32 %7, 2, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1423, metadata !DIExpression()), !dbg !1843
  %shl21 = shl i32 %8, 2, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %shl21, metadata !1424, metadata !DIExpression()), !dbg !1843
  %shl22 = shl i32 %9, 2, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %shl22, metadata !1425, metadata !DIExpression()), !dbg !1843
  %shl23 = shl i32 %10, 2, !dbg !1904
  call void @llvm.dbg.value(metadata i32 %shl23, metadata !1426, metadata !DIExpression()), !dbg !1843
  %.neg = mul i32 %7, -65536, !dbg !1905
  %sub25 = sub nsw i32 0, %8, !dbg !1905
  %and = and i32 %sub25, 32767, !dbg !1905
  %or = or i32 %and, %.neg, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %or, metadata !1427, metadata !DIExpression()), !dbg !1843
  %shl26 = shl i32 %9, 16, !dbg !1906
  %and27 = and i32 %10, 32767, !dbg !1906
  %or28 = or i32 %and27, %shl26, !dbg !1906
  %or29 = or i32 %or28, 32768, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %or29, metadata !1428, metadata !DIExpression()), !dbg !1843
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 1, !dbg !1908
  %11 = load ptr, ptr %p_cost_mv, align 8, !dbg !1908, !tbaa !1909
  %mvp = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, !dbg !1910
  %12 = load i16, ptr %mvp, align 16, !dbg !1911, !tbaa !1912
  %conv = sext i16 %12 to i32, !dbg !1911
  %idx.ext = sext i16 %12 to i64, !dbg !1914
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !1914
  %add.ptr = getelementptr inbounds i16, ptr %11, i64 %idx.neg, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1429, metadata !DIExpression()), !dbg !1843
  %arrayidx33 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, i64 1, !dbg !1915
  %13 = load i16, ptr %arrayidx33, align 2, !dbg !1915, !tbaa !1912
  %idx.ext35 = sext i16 %13 to i64, !dbg !1916
  %idx.neg36 = sub nsw i64 0, %idx.ext35, !dbg !1916
  %add.ptr37 = getelementptr inbounds i16, ptr %11, i64 %idx.neg36, !dbg !1916
  call void @llvm.dbg.value(metadata ptr %add.ptr37, metadata !1432, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1917, metadata !DIExpression()) #5, !dbg !1924
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1922, metadata !DIExpression()) #5, !dbg !1924
  call void @llvm.dbg.value(metadata i32 %shl22, metadata !1923, metadata !DIExpression()) #5, !dbg !1924
  %cmp.i = icmp sgt i32 %shl, %conv, !dbg !1926
  %14 = tail call i32 @llvm.smin.i32(i32 %conv, i32 %shl22) #5
  %spec.select.i = select i1 %cmp.i, i32 %shl, i32 %14, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1405, metadata !DIExpression()), !dbg !1843
  %conv43 = sext i16 %13 to i32, !dbg !1928
  call void @llvm.dbg.value(metadata i32 %conv43, metadata !1917, metadata !DIExpression()) #5, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %shl21, metadata !1922, metadata !DIExpression()) #5, !dbg !1929
  call void @llvm.dbg.value(metadata i32 %shl23, metadata !1923, metadata !DIExpression()) #5, !dbg !1929
  %cmp.i6265 = icmp sgt i32 %shl21, %conv43, !dbg !1931
  %15 = tail call i32 @llvm.smin.i32(i32 %conv43, i32 %shl23) #5
  %spec.select.i6266 = select i1 %cmp.i6265, i32 %shl21, i32 %15, !dbg !1932
  call void @llvm.dbg.value(metadata i32 %spec.select.i6266, metadata !1406, metadata !DIExpression()), !dbg !1843
  %add = add nsw i32 %spec.select.i, 2, !dbg !1933
  %shr = ashr i32 %add, 2, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1413, metadata !DIExpression()), !dbg !1843
  %add45 = add nsw i32 %spec.select.i6266, 2, !dbg !1935
  %shr46 = ashr i32 %add45, 2, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1414, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 268435456, metadata !1407, metadata !DIExpression()), !dbg !1843
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !1937
  %16 = load i32, ptr %i_subpel_refine, align 8, !dbg !1937, !tbaa !1938
  %cmp = icmp sgt i32 %16, 2, !dbg !1939
  br i1 %cmp, label %if.then, label %if.else, !dbg !1940

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1941, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %spec.select.i6266, metadata !1946, metadata !DIExpression()), !dbg !1947
  %and.i = and i32 %spec.select.i, 65535, !dbg !1949
  %shl.i = shl i32 %spec.select.i6266, 16, !dbg !1950
  %add.i = or i32 %shl.i, %and.i, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1433, metadata !DIExpression()), !dbg !1843
  %tobool.not = icmp eq i32 %i_mvc, 0, !dbg !1952
  br i1 %tobool.not, label %for.cond.cleanup, label %if.then50, !dbg !1953

if.then50:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride2) #5, !dbg !1954
  call void @llvm.dbg.value(metadata i32 16, metadata !1434, metadata !DIExpression()), !dbg !1955
  store i32 16, ptr %stride2, align 4, !dbg !1954, !tbaa !1859
  %get_ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1, !dbg !1954
  %17 = load ptr, ptr %get_ref, align 8, !dbg !1954, !tbaa !1956
  %p_fref = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, !dbg !1954
  %weight = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4, !dbg !1954
  %18 = load ptr, ptr %weight, align 8, !dbg !1954, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride2, metadata !1434, metadata !DIExpression(DW_OP_deref)), !dbg !1955
  %call53 = call ptr %17(ptr noundef nonnull %pix, ptr noundef nonnull %stride2, ptr noundef nonnull %p_fref, i32 noundef %3, i32 noundef %spec.select.i, i32 noundef %spec.select.i6266, i32 noundef %1, i32 noundef %2, ptr noundef %18) #5, !dbg !1954
  call void @llvm.dbg.value(metadata ptr %call53, metadata !1439, metadata !DIExpression()), !dbg !1955
  %arrayidx55 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom, !dbg !1954
  %19 = load ptr, ptr %arrayidx55, align 8, !dbg !1954, !tbaa !1889
  %20 = load i32, ptr %stride2, align 4, !dbg !1954, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %20, metadata !1434, metadata !DIExpression()), !dbg !1955
  %call56 = call i32 %19(ptr noundef %5, i32 noundef 16, ptr noundef %call53, i32 noundef %20) #5, !dbg !1954
  %idxprom57 = sext i32 %spec.select.i to i64, !dbg !1954
  %arrayidx58 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom57, !dbg !1954
  %21 = load i16, ptr %arrayidx58, align 2, !dbg !1954, !tbaa !1912
  %conv59 = zext i16 %21 to i32, !dbg !1954
  %add60 = add nsw i32 %call56, %conv59, !dbg !1954
  %idxprom61 = sext i32 %spec.select.i6266 to i64, !dbg !1954
  %arrayidx62 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom61, !dbg !1954
  %22 = load i16, ptr %arrayidx62, align 2, !dbg !1954, !tbaa !1912
  %conv63 = zext i16 %22 to i32, !dbg !1954
  %add64 = add nsw i32 %add60, %conv63, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %add64, metadata !1440, metadata !DIExpression()), !dbg !1955
  %cmp65 = icmp slt i32 %add64, 268435456, !dbg !1958
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !1954

if.then67:                                        ; preds = %if.then50
  call void @llvm.dbg.value(metadata i32 %add64, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select.i6266, metadata !1409, metadata !DIExpression()), !dbg !1843
  br label %if.end68, !dbg !1960

if.end68:                                         ; preds = %if.then50, %if.then67
  %bpred_cost.0 = phi i32 [ %add64, %if.then67 ], [ 268435456, %if.then50 ], !dbg !1843
  %bpred_my.0 = phi i32 [ %spec.select.i6266, %if.then67 ], [ 0, %if.then50 ], !dbg !1843
  %bpred_mx.0 = phi i32 [ %spec.select.i, %if.then67 ], [ 0, %if.then50 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_mx.0, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_my.0, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_cost.0, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride2) #5, !dbg !1962
  call void @llvm.dbg.value(metadata i32 0, metadata !1441, metadata !DIExpression()), !dbg !1963
  %cmp696323 = icmp sgt i32 %i_mvc, 0, !dbg !1964
  br i1 %cmp696323, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1965

for.body.lr.ph:                                   ; preds = %if.end68
  %get_ref94 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1
  %p_fref96 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5
  %weight98 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4
  %arrayidx105 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %wide.trip.count6501 = zext i32 %i_mvc to i64, !dbg !1964
  br label %for.body, !dbg !1965

for.cond.cleanup:                                 ; preds = %for.inc, %if.then, %if.end68
  %bpred_cost.2.lcssa = phi i32 [ %bpred_cost.0, %if.end68 ], [ 268435456, %if.then ], [ %bpred_cost.4, %for.inc ], !dbg !1966
  %bpred_my.2.lcssa = phi i32 [ %bpred_my.0, %if.end68 ], [ 0, %if.then ], [ %bpred_my.4, %for.inc ], !dbg !1966
  %bpred_mx.2.lcssa = phi i32 [ %bpred_mx.0, %if.end68 ], [ 0, %if.then ], [ %bpred_mx.4, %for.inc ], !dbg !1966
  %add120 = add nsw i32 %bpred_mx.2.lcssa, 2, !dbg !1967
  %shr121 = ashr i32 %add120, 2, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %shr121, metadata !1405, metadata !DIExpression()), !dbg !1843
  %add122 = add nsw i32 %bpred_my.2.lcssa, 2, !dbg !1969
  %shr123 = ashr i32 %add122, 2, !dbg !1970
  call void @llvm.dbg.value(metadata i32 %shr123, metadata !1406, metadata !DIExpression()), !dbg !1843
  %arrayidx128 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom, !dbg !1971
  %23 = load ptr, ptr %arrayidx128, align 8, !dbg !1971, !tbaa !1889
  %mul = mul nsw i32 %shr123, %3, !dbg !1971
  %add129 = add nsw i32 %mul, %shr121, !dbg !1971
  %idxprom130 = sext i32 %add129 to i64, !dbg !1971
  %arrayidx131 = getelementptr inbounds i8, ptr %6, i64 %idxprom130, !dbg !1971
  %call132 = call i32 %23(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx131, i32 noundef %3) #5, !dbg !1971
  %shl133 = and i32 %add120, -4, !dbg !1971
  %idxprom134 = sext i32 %shl133 to i64, !dbg !1971
  %arrayidx135 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom134, !dbg !1971
  %24 = load i16, ptr %arrayidx135, align 2, !dbg !1971, !tbaa !1912
  %conv136 = zext i16 %24 to i32, !dbg !1971
  %shl137 = and i32 %add122, -4, !dbg !1971
  %idxprom138 = sext i32 %shl137 to i64, !dbg !1971
  %arrayidx139 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom138, !dbg !1971
  %25 = load i16, ptr %arrayidx139, align 2, !dbg !1971, !tbaa !1912
  %conv140 = zext i16 %25 to i32, !dbg !1971
  %add141 = add i32 %call132, %conv136, !dbg !1971
  %add142 = add i32 %add141, %conv140, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %add142, metadata !1453, metadata !DIExpression()), !dbg !1972
  %26 = call i32 @llvm.smin.i32(i32 %add142, i32 268435456), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %26, metadata !1407, metadata !DIExpression()), !dbg !1843
  br label %if.end241, !dbg !1973

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv6498 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next6499, %for.inc ]
  %bpred_mx.26327 = phi i32 [ %bpred_mx.0, %for.body.lr.ph ], [ %bpred_mx.4, %for.inc ]
  %bpred_my.26326 = phi i32 [ %bpred_my.0, %for.body.lr.ph ], [ %bpred_my.4, %for.inc ]
  %bpred_cost.26325 = phi i32 [ %bpred_cost.0, %for.body.lr.ph ], [ %bpred_cost.4, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %bpred_mx.26327, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_my.26326, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_cost.26325, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6498, metadata !1441, metadata !DIExpression()), !dbg !1963
  %arrayidx72 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv6498, !dbg !1974
  %27 = load i32, ptr %arrayidx72, align 4, !dbg !1974, !tbaa !1975
  %tobool74.not = icmp eq i32 %27, 0, !dbg !1974
  %cmp78.not = icmp eq i32 %add.i, %27
  %or.cond = select i1 %tobool74.not, i1 true, i1 %cmp78.not, !dbg !1976
  br i1 %or.cond, label %for.inc, label %if.then80, !dbg !1976

if.then80:                                        ; preds = %for.body
  %sext6656 = shl i32 %27, 16, !dbg !1977
  %conv84 = ashr exact i32 %sext6656, 16, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %conv84, metadata !1917, metadata !DIExpression()) #5, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1922, metadata !DIExpression()) #5, !dbg !1978
  call void @llvm.dbg.value(metadata i32 %shl22, metadata !1923, metadata !DIExpression()) #5, !dbg !1978
  %cmp.i6267 = icmp sgt i32 %shl, %conv84, !dbg !1980
  %28 = call i32 @llvm.smin.i32(i32 %conv84, i32 %shl22) #5
  %spec.select.i6268 = select i1 %cmp.i6267, i32 %shl, i32 %28, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %spec.select.i6268, metadata !1443, metadata !DIExpression()), !dbg !1982
  %conv89 = ashr i32 %27, 16, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %conv89, metadata !1917, metadata !DIExpression()) #5, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %shl21, metadata !1922, metadata !DIExpression()) #5, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %shl23, metadata !1923, metadata !DIExpression()) #5, !dbg !1984
  %cmp.i6269 = icmp sgt i32 %shl21, %conv89, !dbg !1986
  %29 = call i32 @llvm.smin.i32(i32 %conv89, i32 %shl23) #5
  %spec.select.i6270 = select i1 %cmp.i6269, i32 %shl21, i32 %29, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %spec.select.i6270, metadata !1448, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride291) #5, !dbg !1988
  call void @llvm.dbg.value(metadata i32 16, metadata !1449, metadata !DIExpression()), !dbg !1989
  store i32 16, ptr %stride291, align 4, !dbg !1988, !tbaa !1859
  %30 = load ptr, ptr %get_ref94, align 8, !dbg !1988, !tbaa !1956
  %31 = load ptr, ptr %weight98, align 8, !dbg !1988, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride291, metadata !1449, metadata !DIExpression(DW_OP_deref)), !dbg !1989
  %call100 = call ptr %30(ptr noundef nonnull %pix, ptr noundef nonnull %stride291, ptr noundef nonnull %p_fref96, i32 noundef %3, i32 noundef %spec.select.i6268, i32 noundef %spec.select.i6270, i32 noundef %1, i32 noundef %2, ptr noundef %31) #5, !dbg !1988
  call void @llvm.dbg.value(metadata ptr %call100, metadata !1451, metadata !DIExpression()), !dbg !1989
  %32 = load ptr, ptr %arrayidx105, align 8, !dbg !1988, !tbaa !1889
  %33 = load i32, ptr %stride291, align 4, !dbg !1988, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %33, metadata !1449, metadata !DIExpression()), !dbg !1989
  %call106 = call i32 %32(ptr noundef %5, i32 noundef 16, ptr noundef %call100, i32 noundef %33) #5, !dbg !1988
  %idxprom107 = sext i32 %spec.select.i6268 to i64, !dbg !1988
  %arrayidx108 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom107, !dbg !1988
  %34 = load i16, ptr %arrayidx108, align 2, !dbg !1988, !tbaa !1912
  %conv109 = zext i16 %34 to i32, !dbg !1988
  %add110 = add nsw i32 %call106, %conv109, !dbg !1988
  %idxprom111 = sext i32 %spec.select.i6270 to i64, !dbg !1988
  %arrayidx112 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom111, !dbg !1988
  %35 = load i16, ptr %arrayidx112, align 2, !dbg !1988, !tbaa !1912
  %conv113 = zext i16 %35 to i32, !dbg !1988
  %add114 = add nsw i32 %add110, %conv113, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %add114, metadata !1452, metadata !DIExpression()), !dbg !1989
  %cmp115 = icmp slt i32 %add114, %bpred_cost.26325, !dbg !1990
  br i1 %cmp115, label %if.then117, label %if.end118, !dbg !1988

if.then117:                                       ; preds = %if.then80
  call void @llvm.dbg.value(metadata i32 %add114, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select.i6268, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select.i6270, metadata !1409, metadata !DIExpression()), !dbg !1843
  br label %if.end118, !dbg !1992

if.end118:                                        ; preds = %if.then117, %if.then80
  %bpred_cost.3 = phi i32 [ %add114, %if.then117 ], [ %bpred_cost.26325, %if.then80 ], !dbg !1966
  %bpred_my.3 = phi i32 [ %spec.select.i6270, %if.then117 ], [ %bpred_my.26326, %if.then80 ], !dbg !1966
  %bpred_mx.3 = phi i32 [ %spec.select.i6268, %if.then117 ], [ %bpred_mx.26327, %if.then80 ], !dbg !1966
  call void @llvm.dbg.value(metadata i32 %bpred_mx.3, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_my.3, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_cost.3, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride291) #5, !dbg !1994
  br label %for.inc, !dbg !1995

for.inc:                                          ; preds = %for.body, %if.end118
  %bpred_cost.4 = phi i32 [ %bpred_cost.3, %if.end118 ], [ %bpred_cost.26325, %for.body ], !dbg !1966
  %bpred_my.4 = phi i32 [ %bpred_my.3, %if.end118 ], [ %bpred_my.26326, %for.body ], !dbg !1966
  %bpred_mx.4 = phi i32 [ %bpred_mx.3, %if.end118 ], [ %bpred_mx.26327, %for.body ], !dbg !1966
  call void @llvm.dbg.value(metadata i32 %bpred_mx.4, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_my.4, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_cost.4, metadata !1410, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6499 = add nuw nsw i64 %indvars.iv6498, 1, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6499, metadata !1441, metadata !DIExpression()), !dbg !1963
  %exitcond6502.not = icmp eq i64 %indvars.iv.next6499, %wide.trip.count6501, !dbg !1964
  br i1 %exitcond6502.not, label %for.cond.cleanup, label %for.body, !dbg !1965, !llvm.loop !1997

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1406, metadata !DIExpression()), !dbg !1843
  %arrayidx150 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom, !dbg !2001
  %36 = load ptr, ptr %arrayidx150, align 8, !dbg !2001, !tbaa !1889
  %mul151 = mul nsw i32 %shr46, %3, !dbg !2002
  %add152 = add nsw i32 %mul151, %shr, !dbg !2003
  %idxprom153 = sext i32 %add152 to i64, !dbg !2004
  %arrayidx154 = getelementptr inbounds i8, ptr %6, i64 %idxprom153, !dbg !2004
  %call155 = tail call i32 %36(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx154, i32 noundef %3) #5, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %call155, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1941, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1946, metadata !DIExpression()), !dbg !2005
  %and.i6271 = and i32 %shr, 65535, !dbg !2007
  %shl.i6272 = shl i32 %shr46, 16, !dbg !2008
  %add.i6273 = or i32 %shl.i6272, %and.i6271, !dbg !2009
  call void @llvm.dbg.value(metadata i32 %add.i6273, metadata !1433, metadata !DIExpression()), !dbg !1843
  %cmp157 = icmp sgt i32 %i_mvc, 0, !dbg !2010
  br i1 %cmp157, label %for.body.preheader.i, label %if.end241, !dbg !2011

for.body.preheader.i:                             ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mvc_fpel) #5, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %mvc_fpel, metadata !1455, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata ptr %mvc_fpel, metadata !2013, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %mvc, metadata !2018, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %i_mvc, metadata !2019, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %7, metadata !2020, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %9, metadata !2021, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %8, metadata !2022, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 %10, metadata !2023, metadata !DIExpression()) #5, !dbg !2030
  call void @llvm.dbg.value(metadata i32 0, metadata !2024, metadata !DIExpression()) #5, !dbg !2032
  %wide.trip.count.i = zext i32 %i_mvc to i64, !dbg !2033
  br label %for.body.i, !dbg !2034

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2024, metadata !DIExpression()) #5, !dbg !2032
  %arrayidx.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.i, !dbg !2035
  %37 = load i16, ptr %arrayidx.i, align 2, !dbg !2035, !tbaa !1912
  %conv.i = sext i16 %37 to i32, !dbg !2035
  %add.i6274 = add nsw i32 %conv.i, 2, !dbg !2036
  %shr.i = ashr i32 %add.i6274, 2, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !2026, metadata !DIExpression()) #5, !dbg !2038
  %arrayidx4.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.i, i64 1, !dbg !2039
  %38 = load i16, ptr %arrayidx4.i, align 2, !dbg !2039, !tbaa !1912
  %conv5.i = sext i16 %38 to i32, !dbg !2039
  %add6.i = add nsw i32 %conv5.i, 2, !dbg !2040
  %shr7.i = ashr i32 %add6.i, 2, !dbg !2041
  call void @llvm.dbg.value(metadata i32 %shr7.i, metadata !2029, metadata !DIExpression()) #5, !dbg !2038
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !1917, metadata !DIExpression()) #5, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %7, metadata !1922, metadata !DIExpression()) #5, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %9, metadata !1923, metadata !DIExpression()) #5, !dbg !2042
  %cmp.i.i = icmp slt i32 %shr.i, %7, !dbg !2044
  %39 = tail call i32 @llvm.smin.i32(i32 %shr.i, i32 %9) #5
  %spec.select.i.i = select i1 %cmp.i.i, i32 %7, i32 %39, !dbg !2045
  %conv8.i = trunc i32 %spec.select.i.i to i16, !dbg !2046
  %arrayidx10.i = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %indvars.iv.i, !dbg !2047
  store i16 %conv8.i, ptr %arrayidx10.i, align 4, !dbg !2048, !tbaa !1912
  call void @llvm.dbg.value(metadata i32 %shr7.i, metadata !1917, metadata !DIExpression()) #5, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %8, metadata !1922, metadata !DIExpression()) #5, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %10, metadata !1923, metadata !DIExpression()) #5, !dbg !2049
  %cmp.i24.i = icmp slt i32 %shr7.i, %8, !dbg !2051
  %40 = tail call i32 @llvm.smin.i32(i32 %shr7.i, i32 %10) #5
  %spec.select.i25.i = select i1 %cmp.i24.i, i32 %8, i32 %40, !dbg !2052
  %conv13.i = trunc i32 %spec.select.i25.i to i16, !dbg !2053
  %arrayidx16.i = getelementptr inbounds [2 x i16], ptr %mvc_fpel, i64 %indvars.iv.i, i64 1, !dbg !2054
  store i16 %conv13.i, ptr %arrayidx16.i, align 2, !dbg !2055, !tbaa !1912
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2024, metadata !DIExpression()) #5, !dbg !2032
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !2033
  br i1 %exitcond.not.i, label %x264_predictor_roundclip.exit, label %for.body.i, !dbg !2034, !llvm.loop !2057

x264_predictor_roundclip.exit:                    ; preds = %for.body.i
  %shl161 = shl i32 %call155, 4, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %shl161, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 1, metadata !1461, metadata !DIExpression()), !dbg !2060
  %cmp164.not6319 = icmp slt i32 %i_mvc, 1, !dbg !2061
  br i1 %cmp164.not6319, label %for.cond.cleanup166, label %for.body167.preheader, !dbg !2062

for.body167.preheader:                            ; preds = %x264_predictor_roundclip.exit
  %41 = add nuw i32 %i_mvc, 1, !dbg !2062
  %wide.trip.count = zext i32 %41 to i64, !dbg !2061
  br label %for.body167, !dbg !2062

for.cond.cleanup166:                              ; preds = %for.inc220, %x264_predictor_roundclip.exit
  %bcost.1.lcssa = phi i32 [ %shl161, %x264_predictor_roundclip.exit ], [ %bcost.3, %for.inc220 ], !dbg !2063
  %and223 = and i32 %bcost.1.lcssa, 15, !dbg !2064
  %tobool224.not = icmp eq i32 %and223, 0, !dbg !2064
  br i1 %tobool224.not, label %if.end238, label %if.then225, !dbg !2066

for.body167:                                      ; preds = %for.body167.preheader, %for.inc220
  %indvars.iv = phi i64 [ 1, %for.body167.preheader ], [ %indvars.iv.next, %for.inc220 ]
  %bcost.16322 = phi i32 [ %shl161, %for.body167.preheader ], [ %bcost.3, %for.inc220 ]
  call void @llvm.dbg.value(metadata i32 %bcost.16322, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1461, metadata !DIExpression()), !dbg !2060
  %42 = add nsw i64 %indvars.iv, -1, !dbg !2067
  %arrayidx170 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %42, !dbg !2067
  %43 = load i32, ptr %arrayidx170, align 4, !dbg !2067, !tbaa !1975
  %tobool172.not = icmp eq i32 %43, 0, !dbg !2067
  br i1 %tobool172.not, label %for.inc220, label %land.lhs.true173, !dbg !2068

land.lhs.true173:                                 ; preds = %for.body167
  %arrayidx176 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %42, !dbg !2069
  %44 = load i32, ptr %arrayidx176, align 4, !dbg !2069, !tbaa !1975
  %cmp178.not = icmp eq i32 %add.i6273, %44, !dbg !2070
  br i1 %cmp178.not, label %for.inc220, label %if.then180, !dbg !2071

if.then180:                                       ; preds = %land.lhs.true173
  %sext = shl i32 %43, 16, !dbg !2072
  %conv186 = ashr exact i32 %sext, 16, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %conv186, metadata !1463, metadata !DIExpression()), !dbg !2073
  %conv192 = ashr i32 %43, 16, !dbg !2074
  call void @llvm.dbg.value(metadata i32 %conv192, metadata !1468, metadata !DIExpression()), !dbg !2073
  %45 = load ptr, ptr %arrayidx150, align 8, !dbg !2075, !tbaa !1889
  %mul198 = mul nsw i32 %3, %conv192, !dbg !2076
  %add199 = add nsw i32 %mul198, %conv186, !dbg !2077
  %idxprom200 = sext i32 %add199 to i64, !dbg !2078
  %arrayidx201 = getelementptr inbounds i8, ptr %6, i64 %idxprom200, !dbg !2078
  %call202 = tail call i32 %45(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx201, i32 noundef %3) #5, !dbg !2075
  %shl203 = ashr exact i32 %sext, 14, !dbg !2079
  %idxprom204 = sext i32 %shl203 to i64, !dbg !2079
  %arrayidx205 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom204, !dbg !2079
  %46 = load i16, ptr %arrayidx205, align 2, !dbg !2079, !tbaa !1912
  %conv206 = zext i16 %46 to i32, !dbg !2079
  %shl207 = shl nsw i32 %conv192, 2, !dbg !2079
  %idxprom208 = sext i32 %shl207 to i64, !dbg !2079
  %arrayidx209 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom208, !dbg !2079
  %47 = load i16, ptr %arrayidx209, align 2, !dbg !2079, !tbaa !1912
  %conv210 = zext i16 %47 to i32, !dbg !2079
  %add211 = add i32 %call202, %conv206, !dbg !2079
  %add212 = add i32 %add211, %conv210, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %add212, metadata !1469, metadata !DIExpression()), !dbg !2073
  %shl213 = shl i32 %add212, 4, !dbg !2081
  %48 = trunc i64 %indvars.iv to i32, !dbg !2082
  %add214 = add nsw i32 %shl213, %48, !dbg !2082
  call void @llvm.dbg.value(metadata i32 %add214, metadata !1469, metadata !DIExpression()), !dbg !2073
  %49 = tail call i32 @llvm.smin.i32(i32 %add214, i32 %bcost.16322), !dbg !2083
  call void @llvm.dbg.value(metadata i32 %49, metadata !1407, metadata !DIExpression()), !dbg !1843
  br label %for.inc220, !dbg !2084

for.inc220:                                       ; preds = %for.body167, %land.lhs.true173, %if.then180
  %bcost.3 = phi i32 [ %49, %if.then180 ], [ %bcost.16322, %land.lhs.true173 ], [ %bcost.16322, %for.body167 ], !dbg !2063
  call void @llvm.dbg.value(metadata i32 %bcost.3, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1461, metadata !DIExpression()), !dbg !2060
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2061
  br i1 %exitcond.not, label %for.cond.cleanup166, label %for.body167, !dbg !2062, !llvm.loop !2086

if.then225:                                       ; preds = %for.cond.cleanup166
  %sub227 = add nsw i32 %and223, -1, !dbg !2088
  %50 = zext i32 %sub227 to i64
  %arrayidx229 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %50, !dbg !2090
  %51 = load i16, ptr %arrayidx229, align 4, !dbg !2090, !tbaa !1912
  %conv231 = sext i16 %51 to i32, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %conv231, metadata !1405, metadata !DIExpression()), !dbg !1843
  %arrayidx236 = getelementptr inbounds [16 x [2 x i16]], ptr %mvc_fpel, i64 0, i64 %50, i64 1, !dbg !2091
  %52 = load i16, ptr %arrayidx236, align 2, !dbg !2091, !tbaa !1912
  %conv237 = sext i16 %52 to i32, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %conv237, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end238, !dbg !2092

if.end238:                                        ; preds = %if.then225, %for.cond.cleanup166
  %bmy.1 = phi i32 [ %conv237, %if.then225 ], [ %shr46, %for.cond.cleanup166 ], !dbg !2093
  %bmx.1 = phi i32 [ %conv231, %if.then225 ], [ %shr, %for.cond.cleanup166 ], !dbg !2093
  call void @llvm.dbg.value(metadata i32 %bmx.1, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.1, metadata !1406, metadata !DIExpression()), !dbg !1843
  %shr239 = ashr i32 %bcost.1.lcssa, 4, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %shr239, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mvc_fpel) #5, !dbg !2095
  br label %if.end241, !dbg !2096

if.end241:                                        ; preds = %if.else, %if.end238, %for.cond.cleanup
  %pmv.0 = phi i32 [ %add.i, %for.cond.cleanup ], [ %add.i6273, %if.end238 ], [ %add.i6273, %if.else ], !dbg !2097
  %bpred_cost.5 = phi i32 [ %bpred_cost.2.lcssa, %for.cond.cleanup ], [ 268435456, %if.end238 ], [ 268435456, %if.else ], !dbg !1843
  %bpred_my.5 = phi i32 [ %bpred_my.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ], !dbg !1843
  %bpred_mx.5 = phi i32 [ %bpred_mx.2.lcssa, %for.cond.cleanup ], [ 0, %if.end238 ], [ 0, %if.else ], !dbg !1843
  %bcost.4 = phi i32 [ %26, %for.cond.cleanup ], [ %shr239, %if.end238 ], [ %call155, %if.else ], !dbg !2097
  %bmy.2 = phi i32 [ %shr123, %for.cond.cleanup ], [ %bmy.1, %if.end238 ], [ %shr46, %if.else ], !dbg !2097
  %bmx.2 = phi i32 [ %shr121, %for.cond.cleanup ], [ %bmx.1, %if.end238 ], [ %shr, %if.else ], !dbg !2097
  call void @llvm.dbg.value(metadata i32 %bmx.2, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.2, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.4, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_mx.5, metadata !1408, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_my.5, metadata !1409, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bpred_cost.5, metadata !1410, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %pmv.0, metadata !1433, metadata !DIExpression()), !dbg !1843
  %tobool242.not = icmp eq i32 %pmv.0, 0, !dbg !2098
  br i1 %tobool242.not, label %if.end264, label %if.then243, !dbg !2099

if.then243:                                       ; preds = %if.end241
  %arrayidx248 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom, !dbg !2100
  %53 = load ptr, ptr %arrayidx248, align 8, !dbg !2100, !tbaa !1889
  %call253 = call i32 %53(ptr noundef %5, i32 noundef 16, ptr noundef %6, i32 noundef %3) #5, !dbg !2100
  %54 = load i16, ptr %add.ptr, align 2, !dbg !2100, !tbaa !1912
  %conv255 = zext i16 %54 to i32, !dbg !2100
  %55 = load i16, ptr %add.ptr37, align 2, !dbg !2100, !tbaa !1912
  %conv257 = zext i16 %55 to i32, !dbg !2100
  %add258 = add i32 %call253, %conv255, !dbg !2100
  %add259 = add i32 %add258, %conv257, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %add259, metadata !1470, metadata !DIExpression()), !dbg !2101
  %cmp260 = icmp slt i32 %add259, %bcost.4, !dbg !2102
  br i1 %cmp260, label %if.then262, label %if.end264, !dbg !2100

if.then262:                                       ; preds = %if.then243
  call void @llvm.dbg.value(metadata i32 %add259, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end264, !dbg !2104

if.end264:                                        ; preds = %if.then243, %if.then262, %if.end241
  %bcost.6 = phi i32 [ %bcost.4, %if.end241 ], [ %add259, %if.then262 ], [ %bcost.4, %if.then243 ], !dbg !1843
  %bmy.4 = phi i32 [ %bmy.2, %if.end241 ], [ 0, %if.then262 ], [ %bmy.2, %if.then243 ], !dbg !1843
  %bmx.4 = phi i32 [ %bmx.2, %if.end241 ], [ 0, %if.then262 ], [ %bmx.2, %if.then243 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.4, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !1407, metadata !DIExpression()), !dbg !1843
  %i_me_method = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 9, !dbg !2106
  %56 = load i32, ptr %i_me_method, align 4, !dbg !2106, !tbaa !2107
  switch i32 %56, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %me_hex2
    i32 2, label %sw.bb1041
    i32 3, label %sw.bb3561
    i32 4, label %sw.bb3561
  ], !dbg !2108

sw.bb:                                            ; preds = %if.end264
  %shl266 = shl i32 %bcost.6, 4, !dbg !2109
  call void @llvm.dbg.value(metadata i32 %shl266, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %4, metadata !1473, metadata !DIExpression()), !dbg !2110
  %arrayidx275 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 9, i64 %idxprom
  %mul277 = sub nsw i32 0, %3
  %idx.ext278 = sext i32 %mul277 to i64
  %idx.ext282 = sext i32 %3 to i64
  %arrayidx317 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 1
  %arrayidx330 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 2
  %arrayidx343 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 3
  br label %do.body, !dbg !2111

do.body:                                          ; preds = %land.rhs, %sw.bb
  %i267.0 = phi i32 [ %4, %sw.bb ], [ %dec, %land.rhs ], !dbg !2110
  %bcost.7 = phi i32 [ %shl266, %sw.bb ], [ %and395, %land.rhs ], !dbg !2110
  %bmy.5 = phi i32 [ %bmy.4, %sw.bb ], [ %sub394, %land.rhs ], !dbg !1843
  %bmx.5 = phi i32 [ %bmx.4, %sw.bb ], [ %sub391, %land.rhs ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.5, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.5, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.7, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i267.0, metadata !1473, metadata !DIExpression()), !dbg !2110
  %idx.ext268 = sext i32 %bmx.5 to i64, !dbg !2112
  %add.ptr269 = getelementptr inbounds i8, ptr %6, i64 %idx.ext268, !dbg !2112
  %mul270 = mul nsw i32 %bmy.5, %3, !dbg !2112
  %idx.ext271 = sext i32 %mul270 to i64, !dbg !2112
  %add.ptr272 = getelementptr inbounds i8, ptr %add.ptr269, i64 %idx.ext271, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %add.ptr272, metadata !1476, metadata !DIExpression()), !dbg !2113
  %57 = load ptr, ptr %arrayidx275, align 8, !dbg !2112, !tbaa !1889
  %add.ptr279 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext278, !dbg !2112
  %add.ptr283 = getelementptr inbounds i8, ptr %add.ptr272, i64 %idx.ext282, !dbg !2112
  %add.ptr284 = getelementptr inbounds i8, ptr %add.ptr272, i64 -1, !dbg !2112
  %add.ptr288 = getelementptr inbounds i8, ptr %add.ptr272, i64 1, !dbg !2112
  call void %57(ptr noundef %5, ptr noundef %add.ptr279, ptr noundef %add.ptr283, ptr noundef nonnull %add.ptr284, ptr noundef nonnull %add.ptr288, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2112
  %shl294 = shl i32 %bmx.5, 2, !dbg !2112
  %idxprom295 = sext i32 %shl294 to i64, !dbg !2112
  %arrayidx296 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom295, !dbg !2112
  %58 = load i16, ptr %arrayidx296, align 2, !dbg !2112, !tbaa !1912
  %conv297 = zext i16 %58 to i32, !dbg !2112
  %add298 = shl i32 %bmy.5, 2, !dbg !2112
  %shl299 = add i32 %add298, -4, !dbg !2112
  %idxprom300 = sext i32 %shl299 to i64, !dbg !2112
  %arrayidx301 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom300, !dbg !2112
  %59 = load i16, ptr %arrayidx301, align 2, !dbg !2112, !tbaa !1912
  %conv302 = zext i16 %59 to i32, !dbg !2112
  %add303 = add nuw nsw i32 %conv302, %conv297, !dbg !2112
  %60 = load i32, ptr %costs, align 16, !dbg !2112, !tbaa !1859
  %add305 = add nsw i32 %add303, %60, !dbg !2112
  store i32 %add305, ptr %costs, align 16, !dbg !2112, !tbaa !1859
  %shl312 = add i32 %add298, 4, !dbg !2112
  %idxprom313 = sext i32 %shl312 to i64, !dbg !2112
  %arrayidx314 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom313, !dbg !2112
  %61 = load i16, ptr %arrayidx314, align 2, !dbg !2112, !tbaa !1912
  %conv315 = zext i16 %61 to i32, !dbg !2112
  %add316 = add nuw nsw i32 %conv315, %conv297, !dbg !2112
  %62 = load i32, ptr %arrayidx317, align 4, !dbg !2112, !tbaa !1859
  %add318 = add nsw i32 %add316, %62, !dbg !2112
  store i32 %add318, ptr %arrayidx317, align 4, !dbg !2112, !tbaa !1859
  %shl320 = add i32 %shl294, -4, !dbg !2112
  %idxprom321 = sext i32 %shl320 to i64, !dbg !2112
  %arrayidx322 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom321, !dbg !2112
  %63 = load i16, ptr %arrayidx322, align 2, !dbg !2112, !tbaa !1912
  %conv323 = zext i16 %63 to i32, !dbg !2112
  %idxprom326 = sext i32 %add298 to i64, !dbg !2112
  %arrayidx327 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom326, !dbg !2112
  %64 = load i16, ptr %arrayidx327, align 2, !dbg !2112, !tbaa !1912
  %conv328 = zext i16 %64 to i32, !dbg !2112
  %add329 = add nuw nsw i32 %conv328, %conv323, !dbg !2112
  %65 = load i32, ptr %arrayidx330, align 8, !dbg !2112, !tbaa !1859
  %add331 = add nsw i32 %add329, %65, !dbg !2112
  store i32 %add331, ptr %arrayidx330, align 8, !dbg !2112, !tbaa !1859
  %shl333 = add i32 %shl294, 4, !dbg !2112
  %idxprom334 = sext i32 %shl333 to i64, !dbg !2112
  %arrayidx335 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom334, !dbg !2112
  %66 = load i16, ptr %arrayidx335, align 2, !dbg !2112, !tbaa !1912
  %conv336 = zext i16 %66 to i32, !dbg !2112
  %add342 = add nuw nsw i32 %conv336, %conv328, !dbg !2112
  %67 = load i32, ptr %arrayidx343, align 4, !dbg !2112, !tbaa !1859
  %add344 = add nsw i32 %add342, %67, !dbg !2112
  store i32 %add344, ptr %arrayidx343, align 4, !dbg !2112, !tbaa !1859
  %shl346 = shl i32 %add305, 4, !dbg !2114
  %add347 = or i32 %shl346, 1, !dbg !2114
  %68 = call i32 @llvm.smin.i32(i32 %add347, i32 %bcost.7), !dbg !2116
  call void @llvm.dbg.value(metadata i32 %68, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl356 = shl i32 %add318, 4, !dbg !2117
  %add357 = or i32 %shl356, 3, !dbg !2117
  %69 = call i32 @llvm.smin.i32(i32 %add357, i32 %68), !dbg !2119
  call void @llvm.dbg.value(metadata i32 %69, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl366 = shl i32 %add331, 4, !dbg !2120
  %add367 = or i32 %shl366, 4, !dbg !2120
  %70 = call i32 @llvm.smin.i32(i32 %add367, i32 %69), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %70, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl376 = shl i32 %add344, 4, !dbg !2123
  %add377 = or i32 %shl376, 12, !dbg !2123
  %71 = call i32 @llvm.smin.i32(i32 %add377, i32 %70), !dbg !2125
  call void @llvm.dbg.value(metadata i32 %71, metadata !1407, metadata !DIExpression()), !dbg !1843
  %and385 = and i32 %71, 15, !dbg !2126
  %tobool386.not = icmp eq i32 %and385, 0, !dbg !2126
  br i1 %tobool386.not, label %do.end, label %if.end388, !dbg !2128

if.end388:                                        ; preds = %do.body
  %shl389 = shl i32 %71, 28, !dbg !2129
  %shr390 = ashr i32 %shl389, 30, !dbg !2130
  %sub391 = sub nsw i32 %bmx.5, %shr390, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %sub391, metadata !1405, metadata !DIExpression()), !dbg !1843
  %shl392 = shl i32 %71, 30, !dbg !2132
  %shr393 = ashr exact i32 %shl392, 30, !dbg !2133
  %sub394 = sub nsw i32 %bmy.5, %shr393, !dbg !2134
  call void @llvm.dbg.value(metadata i32 %sub394, metadata !1406, metadata !DIExpression()), !dbg !1843
  %and395 = and i32 %71, -16, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %and395, metadata !1407, metadata !DIExpression()), !dbg !1843
  %dec = add nsw i32 %i267.0, -1, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1473, metadata !DIExpression()), !dbg !2110
  %tobool396.not = icmp eq i32 %dec, 0, !dbg !2136
  br i1 %tobool396.not, label %do.end, label %land.rhs, !dbg !2137

land.rhs:                                         ; preds = %if.end388
  %shl397 = shl i32 %sub391, 16, !dbg !2138
  %and398 = and i32 %sub394, 32767, !dbg !2138
  %or399 = or i32 %shl397, %and398, !dbg !2138
  %add400 = add i32 %or399, %or, !dbg !2138
  %sub404 = sub i32 %or29, %or399, !dbg !2138
  %or405 = or i32 %add400, %sub404, !dbg !2138
  %and406 = and i32 %or405, -2147467264, !dbg !2138
  %tobool407.not = icmp eq i32 %and406, 0, !dbg !2138
  br i1 %tobool407.not, label %do.body, label %do.end, !dbg !2139, !llvm.loop !2140

do.end:                                           ; preds = %if.end388, %do.body, %land.rhs
  %bcost.12 = phi i32 [ %and395, %land.rhs ], [ %and395, %if.end388 ], [ %71, %do.body ], !dbg !2142
  %bmy.6 = phi i32 [ %sub394, %land.rhs ], [ %sub394, %if.end388 ], [ %bmy.5, %do.body ], !dbg !1843
  %bmx.6 = phi i32 [ %sub391, %land.rhs ], [ %sub391, %if.end388 ], [ %bmx.5, %do.body ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.6, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.12, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shr408 = ashr i32 %bcost.12, 4, !dbg !2143
  call void @llvm.dbg.value(metadata i32 %shr408, metadata !1407, metadata !DIExpression()), !dbg !1843
  br label %sw.epilog

me_hex2:                                          ; preds = %if.end1267, %cleanup3557, %if.end264
  %bcost.13 = phi i32 [ %bcost.133, %cleanup3557 ], [ %bcost.6, %if.end264 ], [ %bcost.42, %if.end1267 ], !dbg !1843
  %bmy.7 = phi i32 [ %bmy.94, %cleanup3557 ], [ %bmy.4, %if.end264 ], [ %bmy.18, %if.end1267 ], !dbg !1843
  %bmx.7 = phi i32 [ %bmx.94, %cleanup3557 ], [ %bmx.4, %if.end264 ], [ %bmx.18, %if.end1267 ], !dbg !1843
  %i_me_range.0 = phi i32 [ %i_me_range.1, %cleanup3557 ], [ %4, %if.end264 ], [ %4, %if.end1267 ], !dbg !2144
  call void @llvm.dbg.value(metadata i32 %i_me_range.0, metadata !1404, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.7, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.7, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.13, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.label(metadata !1688), !dbg !2145
  %idx.ext411 = sext i32 %bmx.7 to i64, !dbg !2146
  %add.ptr412 = getelementptr inbounds i8, ptr %6, i64 %idx.ext411, !dbg !2146
  %mul413 = mul nsw i32 %bmy.7, %3, !dbg !2146
  %idx.ext414 = sext i32 %mul413 to i64, !dbg !2146
  %add.ptr415 = getelementptr inbounds i8, ptr %add.ptr412, i64 %idx.ext414, !dbg !2146
  call void @llvm.dbg.value(metadata ptr %add.ptr415, metadata !1479, metadata !DIExpression()), !dbg !2147
  %arrayidx418 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 8, i64 %idxprom, !dbg !2146
  %72 = load ptr, ptr %arrayidx418, align 8, !dbg !2146, !tbaa !1889
  %add.ptr419 = getelementptr inbounds i8, ptr %add.ptr415, i64 -2, !dbg !2146
  %add.ptr423 = getelementptr inbounds i8, ptr %add.ptr415, i64 -1, !dbg !2146
  %mul424 = shl nsw i32 %3, 1, !dbg !2146
  %idx.ext425 = sext i32 %mul424 to i64, !dbg !2146
  %add.ptr426 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext425, !dbg !2146
  %add.ptr427 = getelementptr inbounds i8, ptr %add.ptr415, i64 1, !dbg !2146
  %add.ptr430 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext425, !dbg !2146
  call void %72(ptr noundef %5, ptr noundef nonnull %add.ptr419, ptr noundef nonnull %add.ptr426, ptr noundef nonnull %add.ptr430, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2146
  %add432 = shl i32 %bmx.7, 2, !dbg !2146
  %shl433 = add i32 %add432, -8, !dbg !2146
  %idxprom434 = sext i32 %shl433 to i64, !dbg !2146
  %arrayidx435 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom434, !dbg !2146
  %73 = load i16, ptr %arrayidx435, align 2, !dbg !2146, !tbaa !1912
  %conv436 = zext i16 %73 to i32, !dbg !2146
  %shl438 = shl i32 %bmy.7, 2, !dbg !2146
  %idxprom439 = sext i32 %shl438 to i64, !dbg !2146
  %arrayidx440 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom439, !dbg !2146
  %74 = load i16, ptr %arrayidx440, align 2, !dbg !2146, !tbaa !1912
  %conv441 = zext i16 %74 to i32, !dbg !2146
  %add442 = add nuw nsw i32 %conv441, %conv436, !dbg !2146
  %75 = load i32, ptr %costs, align 16, !dbg !2146, !tbaa !1859
  %add444 = add nsw i32 %add442, %75, !dbg !2146
  store i32 %add444, ptr %costs, align 16, !dbg !2146, !tbaa !1859
  %shl446 = add i32 %add432, -4, !dbg !2146
  %idxprom447 = sext i32 %shl446 to i64, !dbg !2146
  %arrayidx448 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom447, !dbg !2146
  %76 = load i16, ptr %arrayidx448, align 2, !dbg !2146, !tbaa !1912
  %conv449 = zext i16 %76 to i32, !dbg !2146
  %shl451 = add i32 %shl438, 8, !dbg !2146
  %idxprom452 = sext i32 %shl451 to i64, !dbg !2146
  %arrayidx453 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom452, !dbg !2146
  %77 = load i16, ptr %arrayidx453, align 2, !dbg !2146, !tbaa !1912
  %conv454 = zext i16 %77 to i32, !dbg !2146
  %add455 = add nuw nsw i32 %conv454, %conv449, !dbg !2146
  %arrayidx456 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 1, !dbg !2146
  %78 = load i32, ptr %arrayidx456, align 4, !dbg !2146, !tbaa !1859
  %add457 = add nsw i32 %add455, %78, !dbg !2146
  store i32 %add457, ptr %arrayidx456, align 4, !dbg !2146, !tbaa !1859
  %shl459 = add i32 %add432, 4, !dbg !2146
  %idxprom460 = sext i32 %shl459 to i64, !dbg !2146
  %arrayidx461 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom460, !dbg !2146
  %79 = load i16, ptr %arrayidx461, align 2, !dbg !2146, !tbaa !1912
  %conv462 = zext i16 %79 to i32, !dbg !2146
  %add468 = add nuw nsw i32 %conv462, %conv454, !dbg !2146
  %arrayidx469 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 2, !dbg !2146
  %80 = load i32, ptr %arrayidx469, align 8, !dbg !2146, !tbaa !1859
  %add470 = add nsw i32 %add468, %80, !dbg !2146
  store i32 %add470, ptr %arrayidx469, align 8, !dbg !2146, !tbaa !1859
  call void @llvm.dbg.value(metadata ptr %add.ptr415, metadata !1482, metadata !DIExpression()), !dbg !2148
  %81 = load ptr, ptr %arrayidx418, align 8, !dbg !2149, !tbaa !1889
  %add.ptr481 = getelementptr inbounds i8, ptr %add.ptr415, i64 2, !dbg !2149
  %mul486 = mul nsw i32 %3, -2, !dbg !2149
  %idx.ext487 = sext i32 %mul486 to i64, !dbg !2149
  %add.ptr488 = getelementptr inbounds i8, ptr %add.ptr427, i64 %idx.ext487, !dbg !2149
  %add.ptr492 = getelementptr inbounds i8, ptr %add.ptr423, i64 %idx.ext487, !dbg !2149
  %add.ptr494 = getelementptr inbounds i32, ptr %costs, i64 3, !dbg !2149
  call void %81(ptr noundef %5, ptr noundef nonnull %add.ptr481, ptr noundef nonnull %add.ptr488, ptr noundef nonnull %add.ptr492, i32 noundef %3, ptr noundef nonnull %add.ptr494) #5, !dbg !2149
  %shl496 = add i32 %add432, 8, !dbg !2149
  %idxprom497 = sext i32 %shl496 to i64, !dbg !2149
  %arrayidx498 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom497, !dbg !2149
  %82 = load i16, ptr %arrayidx498, align 2, !dbg !2149, !tbaa !1912
  %conv499 = zext i16 %82 to i32, !dbg !2149
  %83 = load i16, ptr %arrayidx440, align 2, !dbg !2149, !tbaa !1912
  %conv504 = zext i16 %83 to i32, !dbg !2149
  %add505 = add nuw nsw i32 %conv504, %conv499, !dbg !2149
  %84 = load i32, ptr %add.ptr494, align 4, !dbg !2149, !tbaa !1859
  %add509 = add nsw i32 %add505, %84, !dbg !2149
  store i32 %add509, ptr %add.ptr494, align 4, !dbg !2149, !tbaa !1859
  %85 = load i16, ptr %arrayidx461, align 2, !dbg !2149, !tbaa !1912
  %conv514 = zext i16 %85 to i32, !dbg !2149
  %shl516 = add i32 %shl438, -8, !dbg !2149
  %idxprom517 = sext i32 %shl516 to i64, !dbg !2149
  %arrayidx518 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom517, !dbg !2149
  %86 = load i16, ptr %arrayidx518, align 2, !dbg !2149, !tbaa !1912
  %conv519 = zext i16 %86 to i32, !dbg !2149
  %add520 = add nuw nsw i32 %conv519, %conv514, !dbg !2149
  %arrayidx523 = getelementptr inbounds i32, ptr %costs, i64 4, !dbg !2149
  %87 = load i32, ptr %arrayidx523, align 16, !dbg !2149, !tbaa !1859
  %add524 = add nsw i32 %add520, %87, !dbg !2149
  store i32 %add524, ptr %arrayidx523, align 16, !dbg !2149, !tbaa !1859
  %88 = load i16, ptr %arrayidx448, align 2, !dbg !2149, !tbaa !1912
  %conv529 = zext i16 %88 to i32, !dbg !2149
  %add535 = add nuw nsw i32 %conv529, %conv519, !dbg !2149
  %arrayidx538 = getelementptr inbounds i32, ptr %costs, i64 5, !dbg !2149
  %89 = load i32, ptr %arrayidx538, align 4, !dbg !2149, !tbaa !1859
  %add539 = add nsw i32 %add535, %89, !dbg !2149
  store i32 %add539, ptr %arrayidx538, align 4, !dbg !2149, !tbaa !1859
  %shl540 = shl i32 %bcost.13, 3, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %shl540, metadata !1407, metadata !DIExpression()), !dbg !1843
  %90 = load i32, ptr %costs, align 16, !dbg !2151, !tbaa !1859
  %shl542 = shl i32 %90, 3, !dbg !2151
  %add543 = or i32 %shl542, 2, !dbg !2151
  %91 = call i32 @llvm.smin.i32(i32 %add543, i32 %shl540), !dbg !2153
  call void @llvm.dbg.value(metadata i32 %91, metadata !1407, metadata !DIExpression()), !dbg !1843
  %92 = load i32, ptr %arrayidx456, align 4, !dbg !2154, !tbaa !1859
  %shl552 = shl i32 %92, 3, !dbg !2154
  %add553 = or i32 %shl552, 3, !dbg !2154
  %93 = call i32 @llvm.smin.i32(i32 %add553, i32 %91), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %93, metadata !1407, metadata !DIExpression()), !dbg !1843
  %94 = load i32, ptr %arrayidx469, align 8, !dbg !2157, !tbaa !1859
  %shl562 = shl i32 %94, 3, !dbg !2157
  %add563 = or i32 %shl562, 4, !dbg !2157
  %95 = call i32 @llvm.smin.i32(i32 %add563, i32 %93), !dbg !2159
  call void @llvm.dbg.value(metadata i32 %95, metadata !1407, metadata !DIExpression()), !dbg !1843
  %arrayidx571 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 3, !dbg !2160
  %shl572 = shl i32 %add509, 3, !dbg !2160
  %add573 = or i32 %shl572, 5, !dbg !2160
  %96 = call i32 @llvm.smin.i32(i32 %add573, i32 %95), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %96, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl582 = shl i32 %add524, 3, !dbg !2163
  %add583 = or i32 %shl582, 6, !dbg !2163
  %97 = call i32 @llvm.smin.i32(i32 %add583, i32 %96), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %97, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl592 = shl i32 %add539, 3, !dbg !2166
  %add593 = or i32 %shl592, 7, !dbg !2166
  %98 = call i32 @llvm.smin.i32(i32 %add593, i32 %97), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %98, metadata !1407, metadata !DIExpression()), !dbg !1843
  %and601 = and i32 %98, 7, !dbg !2169
  %tobool602.not = icmp eq i32 %and601, 0, !dbg !2169
  br i1 %tobool602.not, label %if.end822, label %if.then603, !dbg !2170

if.then603:                                       ; preds = %me_hex2
  call void @llvm.dbg.value(metadata i32 %and601, metadata !1484, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2171
  %add606 = add nsw i32 %and601, -1, !dbg !2172
  %99 = zext i32 %add606 to i64
  %arrayidx608 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %99, !dbg !2173
  %100 = load i8, ptr %arrayidx608, align 2, !dbg !2173, !tbaa !1975
  %conv610 = sext i8 %100 to i32, !dbg !2173
  %add611 = add nsw i32 %bmx.7, %conv610, !dbg !2174
  call void @llvm.dbg.value(metadata i32 %add611, metadata !1405, metadata !DIExpression()), !dbg !1843
  %arrayidx615 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %99, i64 1, !dbg !2175
  %101 = load i8, ptr %arrayidx615, align 1, !dbg !2175, !tbaa !1975
  %conv616 = sext i8 %101 to i32, !dbg !2175
  %add617 = add nsw i32 %bmy.7, %conv616, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %add617, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %98, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i_me_range.0, metadata !1487, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shra, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2177
  %cmp6226480 = icmp sgt i32 %i_me_range.0, 3, !dbg !2178
  br i1 %cmp6226480, label %land.rhs624.preheader, label %if.end822, !dbg !2179

land.rhs624.preheader:                            ; preds = %if.then603
  %shr6196669 = lshr i32 %i_me_range.0, 1, !dbg !2180
  call void @llvm.dbg.value(metadata i32 %shr6196669, metadata !1487, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2177
  %sub605 = add nsw i32 %and601, -2, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %sub605, metadata !1484, metadata !DIExpression()), !dbg !2171
  br label %land.rhs624, !dbg !2182

land.rhs624:                                      ; preds = %land.rhs624.preheader, %if.end799
  %102 = phi i8 [ %125, %if.end799 ], [ %101, %land.rhs624.preheader ]
  %103 = phi i8 [ %124, %if.end799 ], [ %100, %land.rhs624.preheader ]
  %i618.06485.in = phi i32 [ %i618.06485, %if.end799 ], [ %shr6196669, %land.rhs624.preheader ]
  %bmx.86484 = phi i32 [ %add812, %if.end799 ], [ %add611, %land.rhs624.preheader ]
  %bmy.86483 = phi i32 [ %add818, %if.end799 ], [ %add617, %land.rhs624.preheader ]
  %bcost.206482 = phi i32 [ %121, %if.end799 ], [ %98, %land.rhs624.preheader ]
  %dir.06481 = phi i32 [ %conv806, %if.end799 ], [ %sub605, %land.rhs624.preheader ]
  %i618.06485 = add nsw i32 %i618.06485.in, -1, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %bmx.86484, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.86483, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.206482, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %dir.06481, metadata !1484, metadata !DIExpression()), !dbg !2171
  %shl625 = shl i32 %bmx.86484, 16, !dbg !2183
  %and626 = and i32 %bmy.86483, 32767, !dbg !2183
  %or627 = or i32 %shl625, %and626, !dbg !2183
  %add628 = add i32 %or627, %or, !dbg !2183
  %sub632 = sub i32 %or29, %or627, !dbg !2183
  %or633 = or i32 %add628, %sub632, !dbg !2183
  %and634 = and i32 %or633, -2147467264, !dbg !2183
  %tobool635.not = icmp eq i32 %and634, 0, !dbg !2183
  br i1 %tobool635.not, label %for.body639, label %if.end822, !dbg !2182

for.body639:                                      ; preds = %land.rhs624
  %idx.ext641 = sext i32 %bmx.86484 to i64, !dbg !2184
  %add.ptr642 = getelementptr inbounds i8, ptr %6, i64 %idx.ext641, !dbg !2184
  %mul643 = mul nsw i32 %bmy.86483, %3, !dbg !2184
  %idx.ext644 = sext i32 %mul643 to i64, !dbg !2184
  %add.ptr645 = getelementptr inbounds i8, ptr %add.ptr642, i64 %idx.ext644, !dbg !2184
  call void @llvm.dbg.value(metadata ptr %add.ptr645, metadata !1489, metadata !DIExpression()), !dbg !2185
  %104 = load ptr, ptr %arrayidx418, align 8, !dbg !2184, !tbaa !1889
  %idxprom651 = sext i32 %dir.06481 to i64, !dbg !2184
  %arrayidx652 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom651, !dbg !2184
  %105 = load i8, ptr %arrayidx652, align 2, !dbg !2184, !tbaa !1975
  %idx.ext655 = sext i8 %105 to i64, !dbg !2184
  %add.ptr656 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext655, !dbg !2184
  %arrayidx660 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %idxprom651, i64 1, !dbg !2184
  %106 = load i8, ptr %arrayidx660, align 1, !dbg !2184, !tbaa !1975
  %conv661 = sext i8 %106 to i32, !dbg !2184
  %mul662 = mul nsw i32 %3, %conv661, !dbg !2184
  %idx.ext663 = sext i32 %mul662 to i64, !dbg !2184
  %add.ptr664 = getelementptr inbounds i8, ptr %add.ptr656, i64 %idx.ext663, !dbg !2184
  %idx.ext670 = sext i8 %103 to i64, !dbg !2184
  %add.ptr671 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext670, !dbg !2184
  %conv676 = sext i8 %102 to i32, !dbg !2184
  %mul677 = mul nsw i32 %3, %conv676, !dbg !2184
  %idx.ext678 = sext i32 %mul677 to i64, !dbg !2184
  %add.ptr679 = getelementptr inbounds i8, ptr %add.ptr671, i64 %idx.ext678, !dbg !2184
  %add680 = add nsw i32 %dir.06481, 2, !dbg !2184
  %107 = zext i32 %add680 to i64
  %arrayidx682 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %107, !dbg !2184
  %108 = load i8, ptr %arrayidx682, align 2, !dbg !2184, !tbaa !1975
  %idx.ext685 = sext i8 %108 to i64, !dbg !2184
  %add.ptr686 = getelementptr inbounds i8, ptr %add.ptr645, i64 %idx.ext685, !dbg !2184
  %arrayidx690 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %107, i64 1, !dbg !2184
  %109 = load i8, ptr %arrayidx690, align 1, !dbg !2184, !tbaa !1975
  %conv691 = sext i8 %109 to i32, !dbg !2184
  %mul692 = mul nsw i32 %3, %conv691, !dbg !2184
  %idx.ext693 = sext i32 %mul692 to i64, !dbg !2184
  %add.ptr694 = getelementptr inbounds i8, ptr %add.ptr686, i64 %idx.ext693, !dbg !2184
  call void %104(ptr noundef %5, ptr noundef %add.ptr664, ptr noundef %add.ptr679, ptr noundef %add.ptr694, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2184
  %conv700 = sext i8 %105 to i32, !dbg !2184
  %add701 = add nsw i32 %bmx.86484, %conv700, !dbg !2184
  %shl702 = shl i32 %add701, 2, !dbg !2184
  %idxprom703 = sext i32 %shl702 to i64, !dbg !2184
  %arrayidx704 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom703, !dbg !2184
  %110 = load i16, ptr %arrayidx704, align 2, !dbg !2184, !tbaa !1912
  %conv705 = zext i16 %110 to i32, !dbg !2184
  %add711 = add nsw i32 %bmy.86483, %conv661, !dbg !2184
  %shl712 = shl i32 %add711, 2, !dbg !2184
  %idxprom713 = sext i32 %shl712 to i64, !dbg !2184
  %arrayidx714 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom713, !dbg !2184
  %111 = load i16, ptr %arrayidx714, align 2, !dbg !2184, !tbaa !1912
  %conv715 = zext i16 %111 to i32, !dbg !2184
  %add716 = add nuw nsw i32 %conv715, %conv705, !dbg !2184
  %112 = load i32, ptr %costs, align 16, !dbg !2184, !tbaa !1859
  %add718 = add nsw i32 %add716, %112, !dbg !2184
  store i32 %add718, ptr %costs, align 16, !dbg !2184, !tbaa !1859
  %conv723 = sext i8 %103 to i32, !dbg !2184
  %add724 = add nsw i32 %bmx.86484, %conv723, !dbg !2184
  %shl725 = shl i32 %add724, 2, !dbg !2184
  %idxprom726 = sext i32 %shl725 to i64, !dbg !2184
  %arrayidx727 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom726, !dbg !2184
  %113 = load i16, ptr %arrayidx727, align 2, !dbg !2184, !tbaa !1912
  %conv728 = zext i16 %113 to i32, !dbg !2184
  %add734 = add nsw i32 %bmy.86483, %conv676, !dbg !2184
  %shl735 = shl i32 %add734, 2, !dbg !2184
  %idxprom736 = sext i32 %shl735 to i64, !dbg !2184
  %arrayidx737 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom736, !dbg !2184
  %114 = load i16, ptr %arrayidx737, align 2, !dbg !2184, !tbaa !1912
  %conv738 = zext i16 %114 to i32, !dbg !2184
  %add739 = add nuw nsw i32 %conv738, %conv728, !dbg !2184
  %115 = load i32, ptr %arrayidx456, align 4, !dbg !2184, !tbaa !1859
  %add741 = add nsw i32 %add739, %115, !dbg !2184
  store i32 %add741, ptr %arrayidx456, align 4, !dbg !2184, !tbaa !1859
  %conv746 = sext i8 %108 to i32, !dbg !2184
  %add747 = add nsw i32 %bmx.86484, %conv746, !dbg !2184
  %shl748 = shl i32 %add747, 2, !dbg !2184
  %idxprom749 = sext i32 %shl748 to i64, !dbg !2184
  %arrayidx750 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom749, !dbg !2184
  %116 = load i16, ptr %arrayidx750, align 2, !dbg !2184, !tbaa !1912
  %conv751 = zext i16 %116 to i32, !dbg !2184
  %add757 = add nsw i32 %bmy.86483, %conv691, !dbg !2184
  %shl758 = shl i32 %add757, 2, !dbg !2184
  %idxprom759 = sext i32 %shl758 to i64, !dbg !2184
  %arrayidx760 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom759, !dbg !2184
  %117 = load i16, ptr %arrayidx760, align 2, !dbg !2184, !tbaa !1912
  %conv761 = zext i16 %117 to i32, !dbg !2184
  %add762 = add nuw nsw i32 %conv761, %conv751, !dbg !2184
  %118 = load i32, ptr %arrayidx469, align 8, !dbg !2184, !tbaa !1859
  %add764 = add nsw i32 %add762, %118, !dbg !2184
  store i32 %add764, ptr %arrayidx469, align 8, !dbg !2184, !tbaa !1859
  %and765 = and i32 %bcost.206482, -8, !dbg !2186
  call void @llvm.dbg.value(metadata i32 %and765, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl767 = shl i32 %add718, 3, !dbg !2187
  %add768 = or i32 %shl767, 1, !dbg !2187
  %119 = call i32 @llvm.smin.i32(i32 %add768, i32 %and765), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %119, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl777 = shl i32 %add741, 3, !dbg !2190
  %add778 = or i32 %shl777, 2, !dbg !2190
  %120 = call i32 @llvm.smin.i32(i32 %add778, i32 %119), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %120, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shl787 = shl i32 %add764, 3, !dbg !2193
  %add788 = or i32 %shl787, 3, !dbg !2193
  %121 = call i32 @llvm.smin.i32(i32 %add788, i32 %120), !dbg !2195
  call void @llvm.dbg.value(metadata i32 %121, metadata !1407, metadata !DIExpression()), !dbg !1843
  %and796 = and i32 %121, 3, !dbg !2196
  %tobool797.not = icmp eq i32 %and796, 0, !dbg !2196
  br i1 %tobool797.not, label %if.end822, label %if.end799, !dbg !2198

if.end799:                                        ; preds = %for.body639
  call void @llvm.dbg.value(metadata i32 undef, metadata !1484, metadata !DIExpression()), !dbg !2171
  %add802 = add nsw i32 %dir.06481, -1, !dbg !2199
  %add803 = add nsw i32 %add802, %and796, !dbg !2200
  %idxprom804 = sext i32 %add803 to i64, !dbg !2201
  %arrayidx805 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom804, !dbg !2201
  %122 = load i8, ptr %arrayidx805, align 1, !dbg !2201, !tbaa !1975
  %conv806 = zext i8 %122 to i32, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %conv806, metadata !1484, metadata !DIExpression()), !dbg !2171
  %add807 = add nuw nsw i32 %conv806, 1, !dbg !2202
  %123 = zext i32 %add807 to i64
  %arrayidx809 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %123, !dbg !2203
  %124 = load i8, ptr %arrayidx809, align 2, !dbg !2203, !tbaa !1975
  %conv811 = sext i8 %124 to i32, !dbg !2203
  %add812 = add nsw i32 %bmx.86484, %conv811, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %add812, metadata !1405, metadata !DIExpression()), !dbg !1843
  %arrayidx816 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %123, i64 1, !dbg !2205
  %125 = load i8, ptr %arrayidx816, align 1, !dbg !2205, !tbaa !1975
  %conv817 = sext i8 %125 to i32, !dbg !2205
  %add818 = add nsw i32 %bmy.86483, %conv817, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %add818, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %121, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i618.06485, metadata !1487, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2177
  %cmp622 = icmp ugt i32 %i618.06485.in, 2, !dbg !2178
  br i1 %cmp622, label %land.rhs624, label %if.end822, !dbg !2179, !llvm.loop !2207

if.end822:                                        ; preds = %for.body639, %land.rhs624, %if.end799, %if.then603, %me_hex2
  %bcost.25 = phi i32 [ %98, %me_hex2 ], [ %98, %if.then603 ], [ %121, %for.body639 ], [ %bcost.206482, %land.rhs624 ], [ %121, %if.end799 ], !dbg !2209
  %bmy.9 = phi i32 [ %bmy.7, %me_hex2 ], [ %add617, %if.then603 ], [ %bmy.86483, %for.body639 ], [ %bmy.86483, %land.rhs624 ], [ %add818, %if.end799 ], !dbg !2210
  %bmx.9 = phi i32 [ %bmx.7, %me_hex2 ], [ %add611, %if.then603 ], [ %bmx.86484, %for.body639 ], [ %bmx.86484, %land.rhs624 ], [ %add812, %if.end799 ], !dbg !2210
  call void @llvm.dbg.value(metadata i32 %bmx.9, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.9, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.25, metadata !1407, metadata !DIExpression()), !dbg !1843
  %shr823 = ashr i32 %bcost.25, 3, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %shr823, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1493, metadata !DIExpression()), !dbg !2209
  %idx.ext826 = sext i32 %bmx.9 to i64, !dbg !2212
  %add.ptr827 = getelementptr inbounds i8, ptr %6, i64 %idx.ext826, !dbg !2212
  %mul828 = mul nsw i32 %bmy.9, %3, !dbg !2212
  %idx.ext829 = sext i32 %mul828 to i64, !dbg !2212
  %add.ptr830 = getelementptr inbounds i8, ptr %add.ptr827, i64 %idx.ext829, !dbg !2212
  call void @llvm.dbg.value(metadata ptr %add.ptr830, metadata !1494, metadata !DIExpression()), !dbg !2213
  %arrayidx834 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 9, i64 %idxprom, !dbg !2212
  %126 = load ptr, ptr %arrayidx834, align 8, !dbg !2212, !tbaa !1889
  %mul836 = sub nsw i32 0, %3, !dbg !2212
  %idx.ext837 = sext i32 %mul836 to i64, !dbg !2212
  %add.ptr838 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext837, !dbg !2212
  %idx.ext841 = sext i32 %3 to i64, !dbg !2212
  %add.ptr842 = getelementptr inbounds i8, ptr %add.ptr830, i64 %idx.ext841, !dbg !2212
  %add.ptr843 = getelementptr inbounds i8, ptr %add.ptr830, i64 -1, !dbg !2212
  %add.ptr847 = getelementptr inbounds i8, ptr %add.ptr830, i64 1, !dbg !2212
  call void %126(ptr noundef %5, ptr noundef %add.ptr838, ptr noundef %add.ptr842, ptr noundef nonnull %add.ptr843, ptr noundef nonnull %add.ptr847, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2212
  %shl853 = shl i32 %bmx.9, 2, !dbg !2212
  %idxprom854 = sext i32 %shl853 to i64, !dbg !2212
  %arrayidx855 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom854, !dbg !2212
  %127 = load i16, ptr %arrayidx855, align 2, !dbg !2212, !tbaa !1912
  %conv856 = zext i16 %127 to i32, !dbg !2212
  %add857 = shl i32 %bmy.9, 2, !dbg !2212
  %shl858 = add i32 %add857, -4, !dbg !2212
  %idxprom859 = sext i32 %shl858 to i64, !dbg !2212
  %arrayidx860 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom859, !dbg !2212
  %128 = load i16, ptr %arrayidx860, align 2, !dbg !2212, !tbaa !1912
  %conv861 = zext i16 %128 to i32, !dbg !2212
  %add862 = add nuw nsw i32 %conv861, %conv856, !dbg !2212
  %129 = load i32, ptr %costs, align 16, !dbg !2212, !tbaa !1859
  %add864 = add nsw i32 %add862, %129, !dbg !2212
  store i32 %add864, ptr %costs, align 16, !dbg !2212, !tbaa !1859
  %shl871 = add i32 %add857, 4, !dbg !2212
  %idxprom872 = sext i32 %shl871 to i64, !dbg !2212
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom872, !dbg !2212
  %130 = load i16, ptr %arrayidx873, align 2, !dbg !2212, !tbaa !1912
  %conv874 = zext i16 %130 to i32, !dbg !2212
  %add875 = add nuw nsw i32 %conv874, %conv856, !dbg !2212
  %131 = load i32, ptr %arrayidx456, align 4, !dbg !2212, !tbaa !1859
  %add877 = add nsw i32 %add875, %131, !dbg !2212
  store i32 %add877, ptr %arrayidx456, align 4, !dbg !2212, !tbaa !1859
  %shl879 = add i32 %shl853, -4, !dbg !2212
  %idxprom880 = sext i32 %shl879 to i64, !dbg !2212
  %arrayidx881 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom880, !dbg !2212
  %132 = load i16, ptr %arrayidx881, align 2, !dbg !2212, !tbaa !1912
  %conv882 = zext i16 %132 to i32, !dbg !2212
  %idxprom885 = sext i32 %add857 to i64, !dbg !2212
  %arrayidx886 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom885, !dbg !2212
  %133 = load i16, ptr %arrayidx886, align 2, !dbg !2212, !tbaa !1912
  %conv887 = zext i16 %133 to i32, !dbg !2212
  %add888 = add nuw nsw i32 %conv887, %conv882, !dbg !2212
  %134 = load i32, ptr %arrayidx469, align 8, !dbg !2212, !tbaa !1859
  %add890 = add nsw i32 %add888, %134, !dbg !2212
  store i32 %add890, ptr %arrayidx469, align 8, !dbg !2212, !tbaa !1859
  %shl892 = add i32 %shl853, 4, !dbg !2212
  %idxprom893 = sext i32 %shl892 to i64, !dbg !2212
  %arrayidx894 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom893, !dbg !2212
  %135 = load i16, ptr %arrayidx894, align 2, !dbg !2212, !tbaa !1912
  %conv895 = zext i16 %135 to i32, !dbg !2212
  %add901 = add nuw nsw i32 %conv895, %conv887, !dbg !2212
  %136 = load i32, ptr %arrayidx571, align 4, !dbg !2212, !tbaa !1859
  %add903 = add nsw i32 %add901, %136, !dbg !2212
  store i32 %add903, ptr %arrayidx571, align 4, !dbg !2212, !tbaa !1859
  %cmp905 = icmp slt i32 %add864, %shr823, !dbg !2214
  %spec.select6186 = zext i1 %cmp905 to i64, !dbg !2216
  %137 = call i32 @llvm.smin.i32(i32 %add864, i32 %shr823), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %137, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 undef, metadata !1493, metadata !DIExpression()), !dbg !2209
  %cmp911 = icmp slt i32 %add877, %137, !dbg !2217
  %spec.select6230 = select i1 %cmp911, i64 2, i64 %spec.select6186, !dbg !2219
  %138 = call i32 @llvm.smin.i32(i32 %add877, i32 %137), !dbg !2219
  call void @llvm.dbg.value(metadata i32 %138, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp917 = icmp slt i32 %add890, %138, !dbg !2220
  %spec.select6188 = select i1 %cmp917, i64 3, i64 %spec.select6230, !dbg !2222
  %139 = call i32 @llvm.smin.i32(i32 %add890, i32 %138), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %139, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp923 = icmp slt i32 %add903, %139, !dbg !2223
  %spec.select6252 = select i1 %cmp923, i64 4, i64 %spec.select6188, !dbg !2225
  %140 = call i32 @llvm.smin.i32(i32 %add903, i32 %139), !dbg !2225
  call void @llvm.dbg.value(metadata i32 %140, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %add.ptr830, metadata !1496, metadata !DIExpression()), !dbg !2226
  %141 = load ptr, ptr %arrayidx834, align 8, !dbg !2227, !tbaa !1889
  %add.ptr941 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext837, !dbg !2227
  %add.ptr945 = getelementptr inbounds i8, ptr %add.ptr843, i64 %idx.ext841, !dbg !2227
  %add.ptr949 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext837, !dbg !2227
  %add.ptr953 = getelementptr inbounds i8, ptr %add.ptr847, i64 %idx.ext841, !dbg !2227
  call void %141(ptr noundef %5, ptr noundef nonnull %add.ptr941, ptr noundef nonnull %add.ptr945, ptr noundef nonnull %add.ptr949, ptr noundef nonnull %add.ptr953, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2227
  %142 = load i16, ptr %arrayidx881, align 2, !dbg !2227, !tbaa !1912
  %conv959 = zext i16 %142 to i32, !dbg !2227
  %143 = load i16, ptr %arrayidx860, align 2, !dbg !2227, !tbaa !1912
  %conv964 = zext i16 %143 to i32, !dbg !2227
  %add965 = add nuw nsw i32 %conv964, %conv959, !dbg !2227
  %144 = load i32, ptr %costs, align 16, !dbg !2227, !tbaa !1859
  %add967 = add nsw i32 %add965, %144, !dbg !2227
  store i32 %add967, ptr %costs, align 16, !dbg !2227, !tbaa !1859
  %145 = load i16, ptr %arrayidx873, align 2, !dbg !2227, !tbaa !1912
  %conv977 = zext i16 %145 to i32, !dbg !2227
  %add978 = add nuw nsw i32 %conv977, %conv959, !dbg !2227
  %146 = load i32, ptr %arrayidx456, align 4, !dbg !2227, !tbaa !1859
  %add980 = add nsw i32 %add978, %146, !dbg !2227
  store i32 %add980, ptr %arrayidx456, align 4, !dbg !2227, !tbaa !1859
  %147 = load i16, ptr %arrayidx894, align 2, !dbg !2227, !tbaa !1912
  %conv985 = zext i16 %147 to i32, !dbg !2227
  %add991 = add nuw nsw i32 %conv985, %conv964, !dbg !2227
  %148 = load i32, ptr %arrayidx469, align 8, !dbg !2227, !tbaa !1859
  %add993 = add nsw i32 %add991, %148, !dbg !2227
  store i32 %add993, ptr %arrayidx469, align 8, !dbg !2227, !tbaa !1859
  %add1004 = add nuw nsw i32 %conv985, %conv977, !dbg !2227
  %149 = load i32, ptr %arrayidx571, align 4, !dbg !2227, !tbaa !1859
  %add1006 = add nsw i32 %add1004, %149, !dbg !2227
  store i32 %add1006, ptr %arrayidx571, align 4, !dbg !2227, !tbaa !1859
  %cmp1008 = icmp slt i32 %add967, %140, !dbg !2228
  %spec.select6190 = select i1 %cmp1008, i64 5, i64 %spec.select6252, !dbg !2230
  %150 = call i32 @llvm.smin.i32(i32 %add967, i32 %140), !dbg !2230
  call void @llvm.dbg.value(metadata i32 %150, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1014 = icmp slt i32 %add980, %150, !dbg !2231
  %spec.select6232 = select i1 %cmp1014, i64 6, i64 %spec.select6190, !dbg !2233
  %151 = call i32 @llvm.smin.i32(i32 %add980, i32 %150), !dbg !2233
  call void @llvm.dbg.value(metadata i32 %151, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1020 = icmp slt i32 %add993, %151, !dbg !2234
  %spec.select6192 = select i1 %cmp1020, i64 7, i64 %spec.select6232, !dbg !2236
  %152 = call i32 @llvm.smin.i32(i32 %add993, i32 %151), !dbg !2236
  call void @llvm.dbg.value(metadata i32 %152, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1026 = icmp slt i32 %add1006, %152, !dbg !2237
  %spec.select6259 = select i1 %cmp1026, i64 8, i64 %spec.select6192, !dbg !2239
  %153 = call i32 @llvm.smin.i32(i32 %add1006, i32 %152), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %153, metadata !1407, metadata !DIExpression()), !dbg !1843
  %arrayidx1032 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %spec.select6259, !dbg !2240
  %154 = load i8, ptr %arrayidx1032, align 2, !dbg !2240, !tbaa !1975
  %conv1034 = sext i8 %154 to i32, !dbg !2240
  %add1035 = add nsw i32 %bmx.9, %conv1034, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %add1035, metadata !1405, metadata !DIExpression()), !dbg !1843
  %arrayidx1038 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %spec.select6259, i64 1, !dbg !2242
  %155 = load i8, ptr %arrayidx1038, align 1, !dbg !2242, !tbaa !1975
  %conv1039 = sext i8 %155 to i32, !dbg !2242
  %add1040 = add nsw i32 %bmy.9, %conv1039, !dbg !2243
  call void @llvm.dbg.value(metadata i32 %add1040, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %sw.epilog, !dbg !2244

sw.bb1041:                                        ; preds = %if.end264
  call void @llvm.dbg.value(metadata i32 1, metadata !1501, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !1498, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1411, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1412, metadata !DIExpression()), !dbg !1843
  %idx.ext1043 = sext i32 %shr to i64, !dbg !2246
  %add.ptr1044 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1043, !dbg !2246
  %mul1045 = mul nsw i32 %shr46, %3, !dbg !2246
  %idx.ext1046 = sext i32 %mul1045 to i64, !dbg !2246
  %add.ptr1047 = getelementptr inbounds i8, ptr %add.ptr1044, i64 %idx.ext1046, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %add.ptr1047, metadata !1502, metadata !DIExpression()), !dbg !2247
  %arrayidx1051 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 9, i64 %idxprom, !dbg !2246
  %156 = load ptr, ptr %arrayidx1051, align 8, !dbg !2246, !tbaa !1889
  %mul1053 = sub nsw i32 0, %3, !dbg !2246
  %idx.ext1054 = sext i32 %mul1053 to i64, !dbg !2246
  %add.ptr1055 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1054, !dbg !2246
  %idx.ext1058 = sext i32 %3 to i64, !dbg !2246
  %add.ptr1059 = getelementptr inbounds i8, ptr %add.ptr1047, i64 %idx.ext1058, !dbg !2246
  %add.ptr1060 = getelementptr inbounds i8, ptr %add.ptr1047, i64 -1, !dbg !2246
  %add.ptr1064 = getelementptr inbounds i8, ptr %add.ptr1047, i64 1, !dbg !2246
  call void %156(ptr noundef %5, ptr noundef %add.ptr1055, ptr noundef %add.ptr1059, ptr noundef nonnull %add.ptr1060, ptr noundef nonnull %add.ptr1064, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2246
  %shl1070 = and i32 %add, -4, !dbg !2246
  %idxprom1071 = sext i32 %shl1070 to i64, !dbg !2246
  %arrayidx1072 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1071, !dbg !2246
  %157 = load i16, ptr %arrayidx1072, align 2, !dbg !2246, !tbaa !1912
  %conv1073 = zext i16 %157 to i32, !dbg !2246
  %add1074 = add nsw i32 %shr46, -1, !dbg !2246
  %shl1075 = shl i32 %add1074, 2, !dbg !2246
  %idxprom1076 = sext i32 %shl1075 to i64, !dbg !2246
  %arrayidx1077 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1076, !dbg !2246
  %158 = load i16, ptr %arrayidx1077, align 2, !dbg !2246, !tbaa !1912
  %conv1078 = zext i16 %158 to i32, !dbg !2246
  %add1079 = add nuw nsw i32 %conv1078, %conv1073, !dbg !2246
  %159 = load i32, ptr %costs, align 16, !dbg !2246, !tbaa !1859
  %add1081 = add nsw i32 %add1079, %159, !dbg !2246
  store i32 %add1081, ptr %costs, align 16, !dbg !2246, !tbaa !1859
  %add1087 = add nsw i32 %shr46, 1, !dbg !2246
  %shl1088 = shl i32 %add1087, 2, !dbg !2246
  %idxprom1089 = sext i32 %shl1088 to i64, !dbg !2246
  %arrayidx1090 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1089, !dbg !2246
  %160 = load i16, ptr %arrayidx1090, align 2, !dbg !2246, !tbaa !1912
  %conv1091 = zext i16 %160 to i32, !dbg !2246
  %add1092 = add nuw nsw i32 %conv1091, %conv1073, !dbg !2246
  %arrayidx1093 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 1, !dbg !2246
  %161 = load i32, ptr %arrayidx1093, align 4, !dbg !2246, !tbaa !1859
  %add1094 = add nsw i32 %add1092, %161, !dbg !2246
  store i32 %add1094, ptr %arrayidx1093, align 4, !dbg !2246, !tbaa !1859
  %add1095 = add nsw i32 %shr, -1, !dbg !2246
  %shl1096 = shl i32 %add1095, 2, !dbg !2246
  %idxprom1097 = sext i32 %shl1096 to i64, !dbg !2246
  %arrayidx1098 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1097, !dbg !2246
  %162 = load i16, ptr %arrayidx1098, align 2, !dbg !2246, !tbaa !1912
  %conv1099 = zext i16 %162 to i32, !dbg !2246
  %shl1101 = and i32 %add45, -4, !dbg !2246
  %idxprom1102 = sext i32 %shl1101 to i64, !dbg !2246
  %arrayidx1103 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1102, !dbg !2246
  %163 = load i16, ptr %arrayidx1103, align 2, !dbg !2246, !tbaa !1912
  %conv1104 = zext i16 %163 to i32, !dbg !2246
  %add1105 = add nuw nsw i32 %conv1104, %conv1099, !dbg !2246
  %arrayidx1106 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 2, !dbg !2246
  %164 = load i32, ptr %arrayidx1106, align 8, !dbg !2246, !tbaa !1859
  %add1107 = add nsw i32 %add1105, %164, !dbg !2246
  store i32 %add1107, ptr %arrayidx1106, align 8, !dbg !2246, !tbaa !1859
  %add1108 = add nsw i32 %shr, 1, !dbg !2246
  %shl1109 = shl i32 %add1108, 2, !dbg !2246
  %idxprom1110 = sext i32 %shl1109 to i64, !dbg !2246
  %arrayidx1111 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1110, !dbg !2246
  %165 = load i16, ptr %arrayidx1111, align 2, !dbg !2246, !tbaa !1912
  %conv1112 = zext i16 %165 to i32, !dbg !2246
  %add1118 = add nuw nsw i32 %conv1112, %conv1104, !dbg !2246
  %arrayidx1119 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 3, !dbg !2246
  %166 = load i32, ptr %arrayidx1119, align 4, !dbg !2246, !tbaa !1859
  %add1120 = add nsw i32 %add1118, %166, !dbg !2246
  store i32 %add1120, ptr %arrayidx1119, align 4, !dbg !2246, !tbaa !1859
  %cmp1122 = icmp slt i32 %add1081, %bcost.6, !dbg !2248
  br i1 %cmp1122, label %if.then1124, label %if.end1128, !dbg !2246

if.then1124:                                      ; preds = %sw.bb1041
  call void @llvm.dbg.value(metadata i32 %add1081, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1074, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1128, !dbg !2250

if.end1128:                                       ; preds = %if.then1124, %sw.bb1041
  %bcost.34 = phi i32 [ %add1081, %if.then1124 ], [ %bcost.6, %sw.bb1041 ], !dbg !1843
  %bmy.10 = phi i32 [ %add1074, %if.then1124 ], [ %bmy.4, %sw.bb1041 ], !dbg !1843
  %bmx.10 = phi i32 [ %shr, %if.then1124 ], [ %bmx.4, %sw.bb1041 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.10, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.10, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.34, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1130 = icmp slt i32 %add1094, %bcost.34, !dbg !2252
  br i1 %cmp1130, label %if.then1132, label %if.end1136, !dbg !2246

if.then1132:                                      ; preds = %if.end1128
  call void @llvm.dbg.value(metadata i32 %add1094, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1087, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1136, !dbg !2254

if.end1136:                                       ; preds = %if.then1132, %if.end1128
  %bcost.35 = phi i32 [ %add1094, %if.then1132 ], [ %bcost.34, %if.end1128 ], !dbg !2247
  %bmy.11 = phi i32 [ %add1087, %if.then1132 ], [ %bmy.10, %if.end1128 ], !dbg !2247
  %bmx.11 = phi i32 [ %shr, %if.then1132 ], [ %bmx.10, %if.end1128 ], !dbg !2247
  call void @llvm.dbg.value(metadata i32 %bmx.11, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.11, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.35, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1138 = icmp slt i32 %add1107, %bcost.35, !dbg !2256
  br i1 %cmp1138, label %if.then1140, label %if.end1144, !dbg !2246

if.then1140:                                      ; preds = %if.end1136
  call void @llvm.dbg.value(metadata i32 %add1107, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1095, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1144, !dbg !2258

if.end1144:                                       ; preds = %if.then1140, %if.end1136
  %bcost.36 = phi i32 [ %add1107, %if.then1140 ], [ %bcost.35, %if.end1136 ], !dbg !2247
  %bmy.12 = phi i32 [ %shr46, %if.then1140 ], [ %bmy.11, %if.end1136 ], !dbg !2247
  %bmx.12 = phi i32 [ %add1095, %if.then1140 ], [ %bmx.11, %if.end1136 ], !dbg !2247
  call void @llvm.dbg.value(metadata i32 %bmx.12, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.12, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.36, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1146 = icmp slt i32 %add1120, %bcost.36, !dbg !2260
  br i1 %cmp1146, label %if.then1148, label %if.end1152, !dbg !2246

if.then1148:                                      ; preds = %if.end1144
  call void @llvm.dbg.value(metadata i32 %add1120, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1108, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %shr46, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1152, !dbg !2262

if.end1152:                                       ; preds = %if.then1148, %if.end1144
  %bcost.37 = phi i32 [ %add1120, %if.then1148 ], [ %bcost.36, %if.end1144 ], !dbg !2247
  %bmy.13 = phi i32 [ %shr46, %if.then1148 ], [ %bmy.12, %if.end1144 ], !dbg !2247
  %bmx.13 = phi i32 [ %add1108, %if.then1148 ], [ %bmx.12, %if.end1144 ], !dbg !2247
  call void @llvm.dbg.value(metadata i32 %bmx.13, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.13, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.37, metadata !1407, metadata !DIExpression()), !dbg !1843
  %or1153 = or i32 %shr46, %shr, !dbg !2264
  %tobool1154.not = icmp eq i32 %or1153, 0, !dbg !2264
  br i1 %tobool1154.not, label %if.end1267, label %if.then1155, !dbg !2265

if.then1155:                                      ; preds = %if.end1152
  call void @llvm.dbg.value(metadata i32 0, metadata !1411, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1412, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %6, metadata !1505, metadata !DIExpression()), !dbg !2266
  %167 = load ptr, ptr %arrayidx1051, align 8, !dbg !2267, !tbaa !1889
  %add.ptr1169 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1054, !dbg !2267
  %add.ptr1173 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1058, !dbg !2267
  %add.ptr1174 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2267
  %add.ptr1178 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !2267
  call void %167(ptr noundef %5, ptr noundef %add.ptr1169, ptr noundef %add.ptr1173, ptr noundef nonnull %add.ptr1174, ptr noundef nonnull %add.ptr1178, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2267
  %168 = load i16, ptr %add.ptr, align 2, !dbg !2267, !tbaa !1912
  %conv1187 = zext i16 %168 to i32, !dbg !2267
  %arrayidx1191 = getelementptr inbounds i16, ptr %add.ptr37, i64 -4, !dbg !2267
  %169 = load i16, ptr %arrayidx1191, align 2, !dbg !2267, !tbaa !1912
  %conv1192 = zext i16 %169 to i32, !dbg !2267
  %add1193 = add nuw nsw i32 %conv1192, %conv1187, !dbg !2267
  %170 = load i32, ptr %costs, align 16, !dbg !2267, !tbaa !1859
  %add1195 = add nsw i32 %add1193, %170, !dbg !2267
  store i32 %add1195, ptr %costs, align 16, !dbg !2267, !tbaa !1859
  %arrayidx1204 = getelementptr inbounds i16, ptr %add.ptr37, i64 4, !dbg !2267
  %171 = load i16, ptr %arrayidx1204, align 2, !dbg !2267, !tbaa !1912
  %conv1205 = zext i16 %171 to i32, !dbg !2267
  %add1206 = add nuw nsw i32 %conv1205, %conv1187, !dbg !2267
  %172 = load i32, ptr %arrayidx1093, align 4, !dbg !2267, !tbaa !1859
  %add1208 = add nsw i32 %add1206, %172, !dbg !2267
  store i32 %add1208, ptr %arrayidx1093, align 4, !dbg !2267, !tbaa !1859
  %arrayidx1212 = getelementptr inbounds i16, ptr %add.ptr, i64 -4, !dbg !2267
  %173 = load i16, ptr %arrayidx1212, align 2, !dbg !2267, !tbaa !1912
  %conv1213 = zext i16 %173 to i32, !dbg !2267
  %174 = load i16, ptr %add.ptr37, align 2, !dbg !2267, !tbaa !1912
  %conv1218 = zext i16 %174 to i32, !dbg !2267
  %add1219 = add nuw nsw i32 %conv1218, %conv1213, !dbg !2267
  %175 = load i32, ptr %arrayidx1106, align 8, !dbg !2267, !tbaa !1859
  %add1221 = add nsw i32 %add1219, %175, !dbg !2267
  store i32 %add1221, ptr %arrayidx1106, align 8, !dbg !2267, !tbaa !1859
  %arrayidx1225 = getelementptr inbounds i16, ptr %add.ptr, i64 4, !dbg !2267
  %176 = load i16, ptr %arrayidx1225, align 2, !dbg !2267, !tbaa !1912
  %conv1226 = zext i16 %176 to i32, !dbg !2267
  %add1232 = add nuw nsw i32 %conv1226, %conv1218, !dbg !2267
  %177 = load i32, ptr %arrayidx1119, align 4, !dbg !2267, !tbaa !1859
  %add1234 = add nsw i32 %add1232, %177, !dbg !2267
  store i32 %add1234, ptr %arrayidx1119, align 4, !dbg !2267, !tbaa !1859
  %cmp1236 = icmp slt i32 %add1195, %bcost.37, !dbg !2268
  br i1 %cmp1236, label %if.then1238, label %if.end1242, !dbg !2267

if.then1238:                                      ; preds = %if.then1155
  call void @llvm.dbg.value(metadata i32 %add1195, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 -1, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1242, !dbg !2270

if.end1242:                                       ; preds = %if.then1238, %if.then1155
  %bcost.38 = phi i32 [ %add1195, %if.then1238 ], [ %bcost.37, %if.then1155 ], !dbg !2245
  %bmy.14 = phi i32 [ -1, %if.then1238 ], [ %bmy.13, %if.then1155 ], !dbg !2245
  %bmx.14 = phi i32 [ 0, %if.then1238 ], [ %bmx.13, %if.then1155 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.14, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.14, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.38, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1244 = icmp slt i32 %add1208, %bcost.38, !dbg !2272
  br i1 %cmp1244, label %if.then1246, label %if.end1250, !dbg !2267

if.then1246:                                      ; preds = %if.end1242
  call void @llvm.dbg.value(metadata i32 %add1208, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 1, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1250, !dbg !2274

if.end1250:                                       ; preds = %if.then1246, %if.end1242
  %bcost.39 = phi i32 [ %add1208, %if.then1246 ], [ %bcost.38, %if.end1242 ], !dbg !2266
  %bmy.15 = phi i32 [ 1, %if.then1246 ], [ %bmy.14, %if.end1242 ], !dbg !2266
  %bmx.15 = phi i32 [ 0, %if.then1246 ], [ %bmx.14, %if.end1242 ], !dbg !2266
  call void @llvm.dbg.value(metadata i32 %bmx.15, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.15, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.39, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1252 = icmp slt i32 %add1221, %bcost.39, !dbg !2276
  br i1 %cmp1252, label %if.then1254, label %if.end1258, !dbg !2267

if.then1254:                                      ; preds = %if.end1250
  call void @llvm.dbg.value(metadata i32 %add1221, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 -1, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1258, !dbg !2278

if.end1258:                                       ; preds = %if.then1254, %if.end1250
  %bcost.40 = phi i32 [ %add1221, %if.then1254 ], [ %bcost.39, %if.end1250 ], !dbg !2266
  %bmy.16 = phi i32 [ 0, %if.then1254 ], [ %bmy.15, %if.end1250 ], !dbg !2266
  %bmx.16 = phi i32 [ -1, %if.then1254 ], [ %bmx.15, %if.end1250 ], !dbg !2266
  call void @llvm.dbg.value(metadata i32 %bmx.16, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.16, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.40, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1260 = icmp slt i32 %add1234, %bcost.40, !dbg !2280
  br i1 %cmp1260, label %if.then1262, label %if.end1267, !dbg !2267

if.then1262:                                      ; preds = %if.end1258
  call void @llvm.dbg.value(metadata i32 %add1234, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 1, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1267, !dbg !2282

if.end1267:                                       ; preds = %if.end1258, %if.then1262, %if.end1152
  %bcost.42 = phi i32 [ %bcost.37, %if.end1152 ], [ %add1234, %if.then1262 ], [ %bcost.40, %if.end1258 ], !dbg !2245
  %bmy.18 = phi i32 [ %bmy.13, %if.end1152 ], [ 0, %if.then1262 ], [ %bmy.16, %if.end1258 ], !dbg !2245
  %bmx.18 = phi i32 [ %bmx.13, %if.end1152 ], [ 1, %if.then1262 ], [ %bmx.16, %if.end1258 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.18, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.18, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.42, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1268 = icmp eq i32 %0, 6, !dbg !2284
  br i1 %cmp1268, label %me_hex2, label %if.end1271, !dbg !2286

if.end1271:                                       ; preds = %if.end1267
  call void @llvm.dbg.value(metadata i32 %bcost.42, metadata !1500, metadata !DIExpression()), !dbg !2245
  %or1272 = or i32 %bmx.18, %bmy.18, !dbg !2287
  %tobool1273.not = icmp eq i32 %or1272, 0, !dbg !2287
  br i1 %tobool1273.not, label %land.lhs.true1398, label %land.lhs.true1274, !dbg !2288

land.lhs.true1274:                                ; preds = %if.end1271
  %sub1275 = sub nsw i32 %bmx.18, %shr, !dbg !2289
  %sub1276 = sub nsw i32 %bmy.18, %shr46, !dbg !2290
  %or1277 = or i32 %sub1275, %sub1276, !dbg !2291
  %tobool1278.not = icmp eq i32 %or1277, 0, !dbg !2291
  br i1 %tobool1278.not, label %land.lhs.true1398, label %if.then1279, !dbg !2292

if.then1279:                                      ; preds = %land.lhs.true1274
  call void @llvm.dbg.value(metadata i32 %bmx.18, metadata !1411, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.18, metadata !1412, metadata !DIExpression()), !dbg !1843
  %idx.ext1281 = sext i32 %bmx.18 to i64, !dbg !2293
  %add.ptr1282 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1281, !dbg !2293
  %mul1283 = mul nsw i32 %bmy.18, %3, !dbg !2293
  %idx.ext1284 = sext i32 %mul1283 to i64, !dbg !2293
  %add.ptr1285 = getelementptr inbounds i8, ptr %add.ptr1282, i64 %idx.ext1284, !dbg !2293
  call void @llvm.dbg.value(metadata ptr %add.ptr1285, metadata !1509, metadata !DIExpression()), !dbg !2294
  %178 = load ptr, ptr %arrayidx1051, align 8, !dbg !2293, !tbaa !1889
  %add.ptr1293 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1054, !dbg !2293
  %add.ptr1297 = getelementptr inbounds i8, ptr %add.ptr1285, i64 %idx.ext1058, !dbg !2293
  %add.ptr1298 = getelementptr inbounds i8, ptr %add.ptr1285, i64 -1, !dbg !2293
  %add.ptr1302 = getelementptr inbounds i8, ptr %add.ptr1285, i64 1, !dbg !2293
  call void %178(ptr noundef %5, ptr noundef %add.ptr1293, ptr noundef %add.ptr1297, ptr noundef nonnull %add.ptr1298, ptr noundef nonnull %add.ptr1302, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2293
  %shl1308 = shl i32 %bmx.18, 2, !dbg !2293
  %idxprom1309 = sext i32 %shl1308 to i64, !dbg !2293
  %arrayidx1310 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1309, !dbg !2293
  %179 = load i16, ptr %arrayidx1310, align 2, !dbg !2293, !tbaa !1912
  %conv1311 = zext i16 %179 to i32, !dbg !2293
  %add1312 = add nsw i32 %bmy.18, -1, !dbg !2293
  %shl1313 = shl i32 %add1312, 2, !dbg !2293
  %idxprom1314 = sext i32 %shl1313 to i64, !dbg !2293
  %arrayidx1315 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1314, !dbg !2293
  %180 = load i16, ptr %arrayidx1315, align 2, !dbg !2293, !tbaa !1912
  %conv1316 = zext i16 %180 to i32, !dbg !2293
  %add1317 = add nuw nsw i32 %conv1316, %conv1311, !dbg !2293
  %181 = load i32, ptr %costs, align 16, !dbg !2293, !tbaa !1859
  %add1319 = add nsw i32 %add1317, %181, !dbg !2293
  store i32 %add1319, ptr %costs, align 16, !dbg !2293, !tbaa !1859
  %add1325 = add nsw i32 %bmy.18, 1, !dbg !2293
  %shl1326 = shl i32 %add1325, 2, !dbg !2293
  %idxprom1327 = sext i32 %shl1326 to i64, !dbg !2293
  %arrayidx1328 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1327, !dbg !2293
  %182 = load i16, ptr %arrayidx1328, align 2, !dbg !2293, !tbaa !1912
  %conv1329 = zext i16 %182 to i32, !dbg !2293
  %add1330 = add nuw nsw i32 %conv1329, %conv1311, !dbg !2293
  %183 = load i32, ptr %arrayidx1093, align 4, !dbg !2293, !tbaa !1859
  %add1332 = add nsw i32 %add1330, %183, !dbg !2293
  store i32 %add1332, ptr %arrayidx1093, align 4, !dbg !2293, !tbaa !1859
  %add1333 = add nsw i32 %bmx.18, -1, !dbg !2293
  %shl1334 = shl i32 %add1333, 2, !dbg !2293
  %idxprom1335 = sext i32 %shl1334 to i64, !dbg !2293
  %arrayidx1336 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1335, !dbg !2293
  %184 = load i16, ptr %arrayidx1336, align 2, !dbg !2293, !tbaa !1912
  %conv1337 = zext i16 %184 to i32, !dbg !2293
  %shl1339 = shl i32 %bmy.18, 2, !dbg !2293
  %idxprom1340 = sext i32 %shl1339 to i64, !dbg !2293
  %arrayidx1341 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1340, !dbg !2293
  %185 = load i16, ptr %arrayidx1341, align 2, !dbg !2293, !tbaa !1912
  %conv1342 = zext i16 %185 to i32, !dbg !2293
  %add1343 = add nuw nsw i32 %conv1342, %conv1337, !dbg !2293
  %186 = load i32, ptr %arrayidx1106, align 8, !dbg !2293, !tbaa !1859
  %add1345 = add nsw i32 %add1343, %186, !dbg !2293
  store i32 %add1345, ptr %arrayidx1106, align 8, !dbg !2293, !tbaa !1859
  %add1346 = add nsw i32 %bmx.18, 1, !dbg !2293
  %shl1347 = shl i32 %add1346, 2, !dbg !2293
  %idxprom1348 = sext i32 %shl1347 to i64, !dbg !2293
  %arrayidx1349 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1348, !dbg !2293
  %187 = load i16, ptr %arrayidx1349, align 2, !dbg !2293, !tbaa !1912
  %conv1350 = zext i16 %187 to i32, !dbg !2293
  %add1356 = add nuw nsw i32 %conv1350, %conv1342, !dbg !2293
  %188 = load i32, ptr %arrayidx1119, align 4, !dbg !2293, !tbaa !1859
  %add1358 = add nsw i32 %add1356, %188, !dbg !2293
  store i32 %add1358, ptr %arrayidx1119, align 4, !dbg !2293, !tbaa !1859
  %cmp1360 = icmp slt i32 %add1319, %bcost.42, !dbg !2295
  %189 = call i32 @llvm.smin.i32(i32 %add1319, i32 %bcost.42), !dbg !2293
  %spec.select6195 = select i1 %cmp1360, i32 %add1312, i32 %bmy.18, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %bmx.18, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6195, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %189, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1368 = icmp slt i32 %add1332, %189, !dbg !2297
  %190 = call i32 @llvm.smin.i32(i32 %add1332, i32 %189), !dbg !2293
  %spec.select6235 = select i1 %cmp1368, i32 %add1325, i32 %spec.select6195, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %spec.select6235, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %190, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1376 = icmp slt i32 %add1345, %190, !dbg !2299
  br i1 %cmp1376, label %if.then1378, label %if.end1382, !dbg !2293

if.then1378:                                      ; preds = %if.then1279
  call void @llvm.dbg.value(metadata i32 %add1345, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1333, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.18, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1382, !dbg !2301

if.end1382:                                       ; preds = %if.then1378, %if.then1279
  %bcost.45 = phi i32 [ %add1345, %if.then1378 ], [ %190, %if.then1279 ], !dbg !2294
  %bmy.21 = phi i32 [ %bmy.18, %if.then1378 ], [ %spec.select6235, %if.then1279 ], !dbg !2294
  %bmx.21 = phi i32 [ %add1333, %if.then1378 ], [ %bmx.18, %if.then1279 ], !dbg !2294
  call void @llvm.dbg.value(metadata i32 %bmx.21, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.21, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.45, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1384 = icmp slt i32 %add1358, %bcost.45, !dbg !2303
  br i1 %cmp1384, label %if.then1386, label %if.end1391, !dbg !2293

if.then1386:                                      ; preds = %if.end1382
  call void @llvm.dbg.value(metadata i32 %add1358, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1346, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.18, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1391, !dbg !2305

if.end1391:                                       ; preds = %if.end1382, %if.then1386
  %bcost.47 = phi i32 [ %add1358, %if.then1386 ], [ %bcost.45, %if.end1382 ], !dbg !2245
  %bmy.23 = phi i32 [ %bmy.18, %if.then1386 ], [ %bmy.21, %if.end1382 ], !dbg !2245
  %bmx.23 = phi i32 [ %add1346, %if.then1386 ], [ %bmx.21, %if.end1382 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.47, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1392 = icmp eq i32 %bcost.47, %bcost.42, !dbg !2307
  call void @llvm.dbg.value(metadata i32 undef, metadata !1501, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1411, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1412, metadata !DIExpression()), !dbg !1843
  br i1 %cmp1392, label %land.lhs.true1398, label %if.end2306, !dbg !2309

land.lhs.true1398:                                ; preds = %if.end1271, %land.lhs.true1274, %if.end1391
  %bmx.236292 = phi i32 [ %bmx.23, %if.end1391 ], [ %bmx.18, %land.lhs.true1274 ], [ %bmx.18, %if.end1271 ]
  %bmy.236287 = phi i32 [ %bmy.23, %if.end1391 ], [ %bmy.18, %land.lhs.true1274 ], [ %bmy.18, %if.end1271 ]
  %arrayidx1400 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom, !dbg !2310
  %191 = load i8, ptr %arrayidx1400, align 1, !dbg !2310, !tbaa !1975
  %conv1401 = zext i8 %191 to i32, !dbg !2310
  %shr1402 = lshr i32 2000, %conv1401, !dbg !2310
  %cmp1403 = icmp slt i32 %bcost.42, %shr1402, !dbg !2310
  br i1 %cmp1403, label %if.then1405, label %if.end2306, !dbg !2311

if.then1405:                                      ; preds = %land.lhs.true1398
  %idx.ext1407 = sext i32 %bmx.236292 to i64, !dbg !2312
  %add.ptr1408 = getelementptr inbounds i8, ptr %6, i64 %idx.ext1407, !dbg !2312
  %mul1409 = mul nsw i32 %bmy.236287, %3, !dbg !2312
  %idx.ext1410 = sext i32 %mul1409 to i64, !dbg !2312
  %add.ptr1411 = getelementptr inbounds i8, ptr %add.ptr1408, i64 %idx.ext1410, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1513, metadata !DIExpression()), !dbg !2313
  %192 = load ptr, ptr %arrayidx1051, align 8, !dbg !2312, !tbaa !1889
  %mul1417 = mul nsw i32 %3, -2, !dbg !2312
  %idx.ext1418 = sext i32 %mul1417 to i64, !dbg !2312
  %add.ptr1419 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1418, !dbg !2312
  %add.ptr1420 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -1, !dbg !2312
  %add.ptr1423 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1054, !dbg !2312
  %add.ptr1424 = getelementptr inbounds i8, ptr %add.ptr1411, i64 1, !dbg !2312
  %add.ptr1427 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1054, !dbg !2312
  %add.ptr1428 = getelementptr inbounds i8, ptr %add.ptr1411, i64 -2, !dbg !2312
  call void %192(ptr noundef %5, ptr noundef %add.ptr1419, ptr noundef nonnull %add.ptr1423, ptr noundef nonnull %add.ptr1427, ptr noundef nonnull %add.ptr1428, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2312
  %shl1434 = shl i32 %bmx.236292, 2, !dbg !2312
  %idxprom1435 = sext i32 %shl1434 to i64, !dbg !2312
  %arrayidx1436 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1435, !dbg !2312
  %193 = load i16, ptr %arrayidx1436, align 2, !dbg !2312, !tbaa !1912
  %conv1437 = zext i16 %193 to i32, !dbg !2312
  %add1438 = add nsw i32 %bmy.236287, -2, !dbg !2312
  %shl1439 = shl i32 %add1438, 2, !dbg !2312
  %idxprom1440 = sext i32 %shl1439 to i64, !dbg !2312
  %arrayidx1441 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1440, !dbg !2312
  %194 = load i16, ptr %arrayidx1441, align 2, !dbg !2312, !tbaa !1912
  %conv1442 = zext i16 %194 to i32, !dbg !2312
  %add1443 = add nuw nsw i32 %conv1442, %conv1437, !dbg !2312
  %195 = load i32, ptr %costs, align 16, !dbg !2312, !tbaa !1859
  %add1445 = add nsw i32 %add1443, %195, !dbg !2312
  store i32 %add1445, ptr %costs, align 16, !dbg !2312, !tbaa !1859
  %add1446 = add nsw i32 %bmx.236292, -1, !dbg !2312
  %shl1447 = shl i32 %add1446, 2, !dbg !2312
  %idxprom1448 = sext i32 %shl1447 to i64, !dbg !2312
  %arrayidx1449 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1448, !dbg !2312
  %196 = load i16, ptr %arrayidx1449, align 2, !dbg !2312, !tbaa !1912
  %conv1450 = zext i16 %196 to i32, !dbg !2312
  %add1451 = add nsw i32 %bmy.236287, -1, !dbg !2312
  %shl1452 = shl i32 %add1451, 2, !dbg !2312
  %idxprom1453 = sext i32 %shl1452 to i64, !dbg !2312
  %arrayidx1454 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1453, !dbg !2312
  %197 = load i16, ptr %arrayidx1454, align 2, !dbg !2312, !tbaa !1912
  %conv1455 = zext i16 %197 to i32, !dbg !2312
  %add1456 = add nuw nsw i32 %conv1455, %conv1450, !dbg !2312
  %198 = load i32, ptr %arrayidx1093, align 4, !dbg !2312, !tbaa !1859
  %add1458 = add nsw i32 %add1456, %198, !dbg !2312
  store i32 %add1458, ptr %arrayidx1093, align 4, !dbg !2312, !tbaa !1859
  %add1459 = add nsw i32 %bmx.236292, 1, !dbg !2312
  %shl1460 = shl i32 %add1459, 2, !dbg !2312
  %idxprom1461 = sext i32 %shl1460 to i64, !dbg !2312
  %arrayidx1462 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1461, !dbg !2312
  %199 = load i16, ptr %arrayidx1462, align 2, !dbg !2312, !tbaa !1912
  %conv1463 = zext i16 %199 to i32, !dbg !2312
  %add1469 = add nuw nsw i32 %conv1463, %conv1455, !dbg !2312
  %200 = load i32, ptr %arrayidx1106, align 8, !dbg !2312, !tbaa !1859
  %add1471 = add nsw i32 %add1469, %200, !dbg !2312
  store i32 %add1471, ptr %arrayidx1106, align 8, !dbg !2312, !tbaa !1859
  %add1472 = add nsw i32 %bmx.236292, -2, !dbg !2312
  %shl1473 = shl i32 %add1472, 2, !dbg !2312
  %idxprom1474 = sext i32 %shl1473 to i64, !dbg !2312
  %arrayidx1475 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1474, !dbg !2312
  %201 = load i16, ptr %arrayidx1475, align 2, !dbg !2312, !tbaa !1912
  %conv1476 = zext i16 %201 to i32, !dbg !2312
  %shl1478 = shl i32 %bmy.236287, 2, !dbg !2312
  %idxprom1479 = sext i32 %shl1478 to i64, !dbg !2312
  %arrayidx1480 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1479, !dbg !2312
  %202 = load i16, ptr %arrayidx1480, align 2, !dbg !2312, !tbaa !1912
  %conv1481 = zext i16 %202 to i32, !dbg !2312
  %add1482 = add nuw nsw i32 %conv1481, %conv1476, !dbg !2312
  %203 = load i32, ptr %arrayidx1119, align 4, !dbg !2312, !tbaa !1859
  %add1484 = add nsw i32 %add1482, %203, !dbg !2312
  store i32 %add1484, ptr %arrayidx1119, align 4, !dbg !2312, !tbaa !1859
  %cmp1486 = icmp slt i32 %add1445, %bcost.42, !dbg !2314
  %204 = call i32 @llvm.smin.i32(i32 %add1445, i32 %bcost.42), !dbg !2312
  %spec.select6198 = select i1 %cmp1486, i32 %add1438, i32 %bmy.236287, !dbg !2312
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6198, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %204, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1494 = icmp slt i32 %add1458, %204, !dbg !2316
  br i1 %cmp1494, label %if.then1496, label %if.end1500, !dbg !2312

if.then1496:                                      ; preds = %if.then1405
  call void @llvm.dbg.value(metadata i32 %add1458, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1446, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1451, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1500, !dbg !2318

if.end1500:                                       ; preds = %if.then1496, %if.then1405
  %bcost.49 = phi i32 [ %add1458, %if.then1496 ], [ %204, %if.then1405 ], !dbg !2313
  %bmy.25 = phi i32 [ %add1451, %if.then1496 ], [ %spec.select6198, %if.then1405 ], !dbg !2313
  %bmx.25 = phi i32 [ %add1446, %if.then1496 ], [ %bmx.236292, %if.then1405 ], !dbg !2313
  call void @llvm.dbg.value(metadata i32 %bmx.25, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.25, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.49, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1502 = icmp slt i32 %add1471, %bcost.49, !dbg !2320
  br i1 %cmp1502, label %if.then1504, label %if.end1508, !dbg !2312

if.then1504:                                      ; preds = %if.end1500
  call void @llvm.dbg.value(metadata i32 %add1471, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1459, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1451, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1508, !dbg !2322

if.end1508:                                       ; preds = %if.then1504, %if.end1500
  %bcost.50 = phi i32 [ %add1471, %if.then1504 ], [ %bcost.49, %if.end1500 ], !dbg !2313
  %bmy.26 = phi i32 [ %add1451, %if.then1504 ], [ %bmy.25, %if.end1500 ], !dbg !2313
  %bmx.26 = phi i32 [ %add1459, %if.then1504 ], [ %bmx.25, %if.end1500 ], !dbg !2313
  call void @llvm.dbg.value(metadata i32 %bmx.26, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.26, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.50, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1510 = icmp slt i32 %add1484, %bcost.50, !dbg !2324
  br i1 %cmp1510, label %if.then1512, label %if.end1516, !dbg !2312

if.then1512:                                      ; preds = %if.end1508
  call void @llvm.dbg.value(metadata i32 %add1484, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1472, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1516, !dbg !2326

if.end1516:                                       ; preds = %if.then1512, %if.end1508
  %bcost.51 = phi i32 [ %add1484, %if.then1512 ], [ %bcost.50, %if.end1508 ], !dbg !2313
  %bmy.27 = phi i32 [ %bmy.236287, %if.then1512 ], [ %bmy.26, %if.end1508 ], !dbg !2313
  %bmx.27 = phi i32 [ %add1472, %if.then1512 ], [ %bmx.26, %if.end1508 ], !dbg !2313
  call void @llvm.dbg.value(metadata i32 %bmx.27, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.27, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.51, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1517, metadata !DIExpression()), !dbg !2328
  %205 = load ptr, ptr %arrayidx1051, align 8, !dbg !2329, !tbaa !1889
  %add.ptr1527 = getelementptr inbounds i8, ptr %add.ptr1411, i64 2, !dbg !2329
  %add.ptr1534 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1058, !dbg !2329
  %add.ptr1538 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1058, !dbg !2329
  %mul1540 = shl nsw i32 %3, 1, !dbg !2329
  %idx.ext1541 = sext i32 %mul1540 to i64, !dbg !2329
  %add.ptr1542 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1541, !dbg !2329
  call void %205(ptr noundef %5, ptr noundef nonnull %add.ptr1527, ptr noundef nonnull %add.ptr1534, ptr noundef nonnull %add.ptr1538, ptr noundef %add.ptr1542, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2329
  %add1544 = add nsw i32 %bmx.236292, 2, !dbg !2329
  %shl1545 = shl i32 %add1544, 2, !dbg !2329
  %idxprom1546 = sext i32 %shl1545 to i64, !dbg !2329
  %arrayidx1547 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1546, !dbg !2329
  %206 = load i16, ptr %arrayidx1547, align 2, !dbg !2329, !tbaa !1912
  %conv1548 = zext i16 %206 to i32, !dbg !2329
  %207 = load i16, ptr %arrayidx1480, align 2, !dbg !2329, !tbaa !1912
  %conv1553 = zext i16 %207 to i32, !dbg !2329
  %add1554 = add nuw nsw i32 %conv1553, %conv1548, !dbg !2329
  %208 = load i32, ptr %costs, align 16, !dbg !2329, !tbaa !1859
  %add1556 = add nsw i32 %add1554, %208, !dbg !2329
  store i32 %add1556, ptr %costs, align 16, !dbg !2329, !tbaa !1859
  %209 = load i16, ptr %arrayidx1449, align 2, !dbg !2329, !tbaa !1912
  %conv1561 = zext i16 %209 to i32, !dbg !2329
  %add1562 = add nsw i32 %bmy.236287, 1, !dbg !2329
  %shl1563 = shl i32 %add1562, 2, !dbg !2329
  %idxprom1564 = sext i32 %shl1563 to i64, !dbg !2329
  %arrayidx1565 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1564, !dbg !2329
  %210 = load i16, ptr %arrayidx1565, align 2, !dbg !2329, !tbaa !1912
  %conv1566 = zext i16 %210 to i32, !dbg !2329
  %add1567 = add nuw nsw i32 %conv1566, %conv1561, !dbg !2329
  %211 = load i32, ptr %arrayidx1093, align 4, !dbg !2329, !tbaa !1859
  %add1569 = add nsw i32 %add1567, %211, !dbg !2329
  store i32 %add1569, ptr %arrayidx1093, align 4, !dbg !2329, !tbaa !1859
  %212 = load i16, ptr %arrayidx1462, align 2, !dbg !2329, !tbaa !1912
  %conv1574 = zext i16 %212 to i32, !dbg !2329
  %add1580 = add nuw nsw i32 %conv1574, %conv1566, !dbg !2329
  %213 = load i32, ptr %arrayidx1106, align 8, !dbg !2329, !tbaa !1859
  %add1582 = add nsw i32 %add1580, %213, !dbg !2329
  store i32 %add1582, ptr %arrayidx1106, align 8, !dbg !2329, !tbaa !1859
  %214 = load i16, ptr %arrayidx1436, align 2, !dbg !2329, !tbaa !1912
  %conv1587 = zext i16 %214 to i32, !dbg !2329
  %add1588 = add nsw i32 %bmy.236287, 2, !dbg !2329
  %shl1589 = shl i32 %add1588, 2, !dbg !2329
  %idxprom1590 = sext i32 %shl1589 to i64, !dbg !2329
  %arrayidx1591 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1590, !dbg !2329
  %215 = load i16, ptr %arrayidx1591, align 2, !dbg !2329, !tbaa !1912
  %conv1592 = zext i16 %215 to i32, !dbg !2329
  %add1593 = add nuw nsw i32 %conv1592, %conv1587, !dbg !2329
  %216 = load i32, ptr %arrayidx1119, align 4, !dbg !2329, !tbaa !1859
  %add1595 = add nsw i32 %add1593, %216, !dbg !2329
  store i32 %add1595, ptr %arrayidx1119, align 4, !dbg !2329, !tbaa !1859
  %cmp1597 = icmp slt i32 %add1556, %bcost.51, !dbg !2330
  br i1 %cmp1597, label %if.then1599, label %if.end1603, !dbg !2329

if.then1599:                                      ; preds = %if.end1516
  call void @llvm.dbg.value(metadata i32 %add1556, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1544, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1603, !dbg !2332

if.end1603:                                       ; preds = %if.then1599, %if.end1516
  %bcost.52 = phi i32 [ %add1556, %if.then1599 ], [ %bcost.51, %if.end1516 ], !dbg !2334
  %bmy.28 = phi i32 [ %bmy.236287, %if.then1599 ], [ %bmy.27, %if.end1516 ], !dbg !2334
  %bmx.28 = phi i32 [ %add1544, %if.then1599 ], [ %bmx.27, %if.end1516 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.28, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.28, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.52, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1605 = icmp slt i32 %add1569, %bcost.52, !dbg !2335
  br i1 %cmp1605, label %if.then1607, label %if.end1611, !dbg !2329

if.then1607:                                      ; preds = %if.end1603
  call void @llvm.dbg.value(metadata i32 %add1569, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1446, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1562, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1611, !dbg !2337

if.end1611:                                       ; preds = %if.then1607, %if.end1603
  %bcost.53 = phi i32 [ %add1569, %if.then1607 ], [ %bcost.52, %if.end1603 ], !dbg !2328
  %bmy.29 = phi i32 [ %add1562, %if.then1607 ], [ %bmy.28, %if.end1603 ], !dbg !2328
  %bmx.29 = phi i32 [ %add1446, %if.then1607 ], [ %bmx.28, %if.end1603 ], !dbg !2328
  call void @llvm.dbg.value(metadata i32 %bmx.29, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.29, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.53, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1613 = icmp slt i32 %add1582, %bcost.53, !dbg !2339
  br i1 %cmp1613, label %if.then1615, label %if.end1619, !dbg !2329

if.then1615:                                      ; preds = %if.end1611
  call void @llvm.dbg.value(metadata i32 %add1582, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1459, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1562, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1619, !dbg !2341

if.end1619:                                       ; preds = %if.then1615, %if.end1611
  %bcost.54 = phi i32 [ %add1582, %if.then1615 ], [ %bcost.53, %if.end1611 ], !dbg !2328
  %bmy.30 = phi i32 [ %add1562, %if.then1615 ], [ %bmy.29, %if.end1611 ], !dbg !2328
  %bmx.30 = phi i32 [ %add1459, %if.then1615 ], [ %bmx.29, %if.end1611 ], !dbg !2328
  call void @llvm.dbg.value(metadata i32 %bmx.30, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.30, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.54, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1621 = icmp slt i32 %add1595, %bcost.54, !dbg !2343
  br i1 %cmp1621, label %if.then1623, label %if.end1627, !dbg !2329

if.then1623:                                      ; preds = %if.end1619
  call void @llvm.dbg.value(metadata i32 %add1595, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1588, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1627, !dbg !2345

if.end1627:                                       ; preds = %if.then1623, %if.end1619
  %bcost.55 = phi i32 [ %add1595, %if.then1623 ], [ %bcost.54, %if.end1619 ], !dbg !2328
  %bmy.31 = phi i32 [ %add1588, %if.then1623 ], [ %bmy.30, %if.end1619 ], !dbg !2328
  %bmx.31 = phi i32 [ %bmx.236292, %if.then1623 ], [ %bmx.30, %if.end1619 ], !dbg !2328
  call void @llvm.dbg.value(metadata i32 %bmx.31, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.31, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.55, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1628 = icmp eq i32 %bcost.55, %bcost.6, !dbg !2347
  %shr1634 = lshr i32 500, %conv1401
  %cmp1635 = icmp slt i32 %bcost.55, %shr1634
  %or.cond6315 = select i1 %cmp1628, i1 %cmp1635, i1 false, !dbg !2349
  br i1 %or.cond6315, label %sw.epilog, label %if.end1638, !dbg !2349

if.end1638:                                       ; preds = %if.end1627
  %cmp1639 = icmp eq i32 %bcost.55, %bcost.42, !dbg !2350
  br i1 %cmp1639, label %if.then1641, label %if.end2306, !dbg !2351

if.then1641:                                      ; preds = %if.end1638
  %shr1642 = ashr i32 %4, 1, !dbg !2352
  %or1643 = or i32 %shr1642, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %or1643, metadata !1519, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 3, metadata !1522, metadata !DIExpression()), !dbg !2355
  %sub1645 = sub nsw i32 %9, %bmx.236292, !dbg !2356
  %sub1646 = sub nsw i32 %bmx.236292, %7, !dbg !2356
  %217 = call i32 @llvm.smin.i32(i32 %sub1645, i32 %sub1646), !dbg !2356
  %cmp1651.not = icmp sle i32 %or1643, %217, !dbg !2356
  %cmp16566407 = icmp sgt i32 %or1643, 5
  %or.cond6676 = and i1 %cmp1651.not, %cmp16566407, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %bmx.31, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.31, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.55, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 3, metadata !1522, metadata !DIExpression()), !dbg !2355
  br i1 %or.cond6676, label %for.body1658.preheader, label %if.end1789, !dbg !2357

for.body1658.preheader:                           ; preds = %if.then1641
  %sub1655 = add nsw i32 %or1643, -2
  %218 = zext i32 %sub1655 to i64, !dbg !2358
  br label %for.body1658, !dbg !2358

for.body1658:                                     ; preds = %for.body1658.preheader, %if.end1785
  %indvars.iv6555 = phi i64 [ 3, %for.body1658.preheader ], [ %indvars.iv.next6556, %if.end1785 ]
  %bmx.326411 = phi i32 [ %bmx.31, %for.body1658.preheader ], [ %bmx.36, %if.end1785 ]
  %bmy.326410 = phi i32 [ %bmy.31, %for.body1658.preheader ], [ %bmy.36, %if.end1785 ]
  %bcost.566409 = phi i32 [ %bcost.42, %for.body1658.preheader ], [ %bcost.60, %if.end1785 ]
  call void @llvm.dbg.value(metadata i32 %bmx.326411, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.326410, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.566409, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6555, metadata !1522, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1524, metadata !DIExpression()), !dbg !2359
  %219 = load ptr, ptr %arrayidx1051, align 8, !dbg !2360, !tbaa !1889
  %add.ptr1670 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %indvars.iv6555, !dbg !2360
  %220 = sub nsw i64 0, %indvars.iv6555, !dbg !2360
  %add.ptr1676 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %220, !dbg !2360
  %221 = add nuw nsw i64 %indvars.iv6555, 2, !dbg !2360
  %add.ptr1682 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %221, !dbg !2360
  %222 = sub nuw nsw i64 -2, %indvars.iv6555, !dbg !2360
  %add.ptr1689 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %222, !dbg !2360
  call void %219(ptr noundef %5, ptr noundef nonnull %add.ptr1670, ptr noundef %add.ptr1676, ptr noundef nonnull %add.ptr1682, ptr noundef nonnull %add.ptr1689, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2360
  %223 = trunc i64 %indvars.iv6555 to i32, !dbg !2360
  %224 = add i32 %bmx.236292, %223, !dbg !2360
  %shl1695 = shl i32 %224, 2, !dbg !2360
  %idxprom1696 = sext i32 %shl1695 to i64, !dbg !2360
  %arrayidx1697 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1696, !dbg !2360
  %225 = load i16, ptr %arrayidx1697, align 2, !dbg !2360, !tbaa !1912
  %conv1698 = zext i16 %225 to i32, !dbg !2360
  %226 = load i16, ptr %arrayidx1480, align 2, !dbg !2360, !tbaa !1912
  %conv1703 = zext i16 %226 to i32, !dbg !2360
  %add1704 = add nuw nsw i32 %conv1703, %conv1698, !dbg !2360
  %227 = load i32, ptr %costs, align 16, !dbg !2360, !tbaa !1859
  %add1706 = add nsw i32 %add1704, %227, !dbg !2360
  store i32 %add1706, ptr %costs, align 16, !dbg !2360, !tbaa !1859
  %228 = trunc i64 %indvars.iv6555 to i32, !dbg !2360
  %229 = sub i32 %bmx.236292, %228, !dbg !2360
  %shl1709 = shl i32 %229, 2, !dbg !2360
  %idxprom1710 = sext i32 %shl1709 to i64, !dbg !2360
  %arrayidx1711 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1710, !dbg !2360
  %230 = load i16, ptr %arrayidx1711, align 2, !dbg !2360, !tbaa !1912
  %conv1712 = zext i16 %230 to i32, !dbg !2360
  %add1718 = add nuw nsw i32 %conv1712, %conv1703, !dbg !2360
  %231 = load i32, ptr %arrayidx1093, align 4, !dbg !2360, !tbaa !1859
  %add1720 = add nsw i32 %add1718, %231, !dbg !2360
  store i32 %add1720, ptr %arrayidx1093, align 4, !dbg !2360, !tbaa !1859
  %232 = trunc i64 %221 to i32, !dbg !2360
  %233 = add i32 %bmx.236292, %232, !dbg !2360
  %shl1723 = shl i32 %233, 2, !dbg !2360
  %idxprom1724 = sext i32 %shl1723 to i64, !dbg !2360
  %arrayidx1725 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1724, !dbg !2360
  %234 = load i16, ptr %arrayidx1725, align 2, !dbg !2360, !tbaa !1912
  %conv1726 = zext i16 %234 to i32, !dbg !2360
  %add1732 = add nuw nsw i32 %conv1726, %conv1703, !dbg !2360
  %235 = load i32, ptr %arrayidx1106, align 8, !dbg !2360, !tbaa !1859
  %add1734 = add nsw i32 %add1732, %235, !dbg !2360
  store i32 %add1734, ptr %arrayidx1106, align 8, !dbg !2360, !tbaa !1859
  %236 = trunc i64 %222 to i32, !dbg !2360
  %237 = add i32 %bmx.236292, %236, !dbg !2360
  %shl1738 = shl i32 %237, 2, !dbg !2360
  %idxprom1739 = sext i32 %shl1738 to i64, !dbg !2360
  %arrayidx1740 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1739, !dbg !2360
  %238 = load i16, ptr %arrayidx1740, align 2, !dbg !2360, !tbaa !1912
  %conv1741 = zext i16 %238 to i32, !dbg !2360
  %add1747 = add nuw nsw i32 %conv1741, %conv1703, !dbg !2360
  %239 = load i32, ptr %arrayidx1119, align 4, !dbg !2360, !tbaa !1859
  %add1749 = add nsw i32 %add1747, %239, !dbg !2360
  store i32 %add1749, ptr %arrayidx1119, align 4, !dbg !2360, !tbaa !1859
  %cmp1751 = icmp slt i32 %add1706, %bcost.566409, !dbg !2361
  br i1 %cmp1751, label %if.then1753, label %if.end1757, !dbg !2360

if.then1753:                                      ; preds = %for.body1658
  call void @llvm.dbg.value(metadata i32 %add1706, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv6555, i64 %idx.ext1407), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1757, !dbg !2363

if.end1757:                                       ; preds = %if.then1753, %for.body1658
  %bcost.57 = phi i32 [ %add1706, %if.then1753 ], [ %bcost.566409, %for.body1658 ], !dbg !2334
  %bmy.33 = phi i32 [ %bmy.236287, %if.then1753 ], [ %bmy.326410, %for.body1658 ], !dbg !2334
  %bmx.33 = phi i32 [ %224, %if.then1753 ], [ %bmx.326411, %for.body1658 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.33, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.33, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.57, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1759 = icmp slt i32 %add1720, %bcost.57, !dbg !2365
  br i1 %cmp1759, label %if.then1761, label %if.end1766, !dbg !2360

if.then1761:                                      ; preds = %if.end1757
  call void @llvm.dbg.value(metadata i32 %add1720, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %idx.ext1407, i64 %indvars.iv6555), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1766, !dbg !2367

if.end1766:                                       ; preds = %if.then1761, %if.end1757
  %bcost.58 = phi i32 [ %add1720, %if.then1761 ], [ %bcost.57, %if.end1757 ], !dbg !2359
  %bmy.34 = phi i32 [ %bmy.236287, %if.then1761 ], [ %bmy.33, %if.end1757 ], !dbg !2359
  %bmx.34 = phi i32 [ %229, %if.then1761 ], [ %bmx.33, %if.end1757 ], !dbg !2359
  call void @llvm.dbg.value(metadata i32 %bmx.34, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.34, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.58, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1768 = icmp slt i32 %add1734, %bcost.58, !dbg !2369
  br i1 %cmp1768, label %if.then1770, label %if.end1775, !dbg !2360

if.then1770:                                      ; preds = %if.end1766
  call void @llvm.dbg.value(metadata i32 %add1734, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %221, i64 %idx.ext1407), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1775, !dbg !2371

if.end1775:                                       ; preds = %if.then1770, %if.end1766
  %bcost.59 = phi i32 [ %add1734, %if.then1770 ], [ %bcost.58, %if.end1766 ], !dbg !2359
  %bmy.35 = phi i32 [ %bmy.236287, %if.then1770 ], [ %bmy.34, %if.end1766 ], !dbg !2359
  %bmx.35 = phi i32 [ %233, %if.then1770 ], [ %bmx.34, %if.end1766 ], !dbg !2359
  call void @llvm.dbg.value(metadata i32 %bmx.35, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.35, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.59, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1777 = icmp slt i32 %add1749, %bcost.59, !dbg !2373
  br i1 %cmp1777, label %if.then1779, label %if.end1785, !dbg !2360

if.then1779:                                      ; preds = %if.end1775
  call void @llvm.dbg.value(metadata i32 %add1749, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %222, i64 %idx.ext1407), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1785, !dbg !2375

if.end1785:                                       ; preds = %if.then1779, %if.end1775
  %bcost.60 = phi i32 [ %add1749, %if.then1779 ], [ %bcost.59, %if.end1775 ], !dbg !2359
  %bmy.36 = phi i32 [ %bmy.236287, %if.then1779 ], [ %bmy.35, %if.end1775 ], !dbg !2359
  %bmx.36 = phi i32 [ %237, %if.then1779 ], [ %bmx.35, %if.end1775 ], !dbg !2359
  call void @llvm.dbg.value(metadata i32 %bmx.36, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.36, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.60, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6556 = add nuw nsw i64 %indvars.iv6555, 4, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6556, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp1656 = icmp ult i64 %indvars.iv.next6556, %218, !dbg !2377
  br i1 %cmp1656, label %for.body1658, label %if.end1789.loopexit, !dbg !2358, !llvm.loop !2378

if.end1789.loopexit:                              ; preds = %if.end1785
  %240 = trunc i64 %indvars.iv.next6556 to i32, !dbg !2379
  br label %if.end1789, !dbg !2379

if.end1789:                                       ; preds = %if.end1789.loopexit, %if.then1641
  %i1644.1 = phi i32 [ 3, %if.then1641 ], [ %240, %if.end1789.loopexit ], !dbg !2357
  %bcost.61 = phi i32 [ %bcost.42, %if.then1641 ], [ %bcost.60, %if.end1789.loopexit ], !dbg !2345
  %bmy.37 = phi i32 [ %bmy.31, %if.then1641 ], [ %bmy.36, %if.end1789.loopexit ], !dbg !2345
  %bmx.37 = phi i32 [ %bmx.31, %if.then1641 ], [ %bmx.36, %if.end1789.loopexit ], !dbg !2345
  call void @llvm.dbg.value(metadata i32 %bmx.37, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.37, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.61, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i1644.1, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp17916416 = icmp slt i32 %i1644.1, %or1643, !dbg !2379
  br i1 %cmp17916416, label %for.body1793.lr.ph, label %for.end1860, !dbg !2380

for.body1793.lr.ph:                               ; preds = %if.end1789
  %arrayidx1802 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %241 = zext i32 %i1644.1 to i64, !dbg !2380
  %242 = sext i32 %9 to i64, !dbg !2380
  %243 = sext i32 %7 to i64, !dbg !2380
  %244 = sext i32 %or1643 to i64, !dbg !2380
  br label %for.body1793, !dbg !2380

for.body1793:                                     ; preds = %for.body1793.lr.ph, %for.inc1858
  %indvars.iv6565 = phi i64 [ %241, %for.body1793.lr.ph ], [ %indvars.iv.next6566, %for.inc1858 ]
  %bmx.386420 = phi i32 [ %bmx.37, %for.body1793.lr.ph ], [ %bmx.42, %for.inc1858 ]
  %bmy.386419 = phi i32 [ %bmy.37, %for.body1793.lr.ph ], [ %bmy.42, %for.inc1858 ]
  %bcost.626418 = phi i32 [ %bcost.61, %for.body1793.lr.ph ], [ %bcost.66, %for.inc1858 ]
  call void @llvm.dbg.value(metadata i32 %bmx.386420, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.386419, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.626418, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6565, metadata !1522, metadata !DIExpression()), !dbg !2355
  %245 = add nsw i64 %indvars.iv6565, %idx.ext1407, !dbg !2381
  %cmp1795.not = icmp sgt i64 %245, %242, !dbg !2381
  br i1 %cmp1795.not, label %if.end1825, label %if.then1797, !dbg !2382

if.then1797:                                      ; preds = %for.body1793
  %246 = load ptr, ptr %arrayidx1802, align 8, !dbg !2383, !tbaa !1889
  %247 = add nsw i64 %245, %idx.ext1410, !dbg !2383
  %arrayidx1807 = getelementptr inbounds i8, ptr %6, i64 %247, !dbg !2383
  %call1808 = call i32 %246(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx1807, i32 noundef %3) #5, !dbg !2383
  %248 = trunc i64 %245 to i32, !dbg !2383
  %shl1810 = shl i32 %248, 2, !dbg !2383
  %idxprom1811 = sext i32 %shl1810 to i64, !dbg !2383
  %arrayidx1812 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1811, !dbg !2383
  %249 = load i16, ptr %arrayidx1812, align 2, !dbg !2383, !tbaa !1912
  %conv1813 = zext i16 %249 to i32, !dbg !2383
  %250 = load i16, ptr %arrayidx1480, align 2, !dbg !2383, !tbaa !1912
  %conv1817 = zext i16 %250 to i32, !dbg !2383
  %add1818 = add i32 %call1808, %conv1813, !dbg !2383
  %add1819 = add i32 %add1818, %conv1817, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %add1819, metadata !1529, metadata !DIExpression()), !dbg !2384
  %cmp1820 = icmp slt i32 %add1819, %bcost.626418, !dbg !2385
  br i1 %cmp1820, label %if.then1822, label %if.end1825, !dbg !2383

if.then1822:                                      ; preds = %if.then1797
  call void @llvm.dbg.value(metadata i32 %add1819, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %245, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1825, !dbg !2387

if.end1825:                                       ; preds = %if.then1797, %if.then1822, %for.body1793
  %bcost.64 = phi i32 [ %bcost.626418, %for.body1793 ], [ %add1819, %if.then1822 ], [ %bcost.626418, %if.then1797 ], !dbg !2334
  %bmy.40 = phi i32 [ %bmy.386419, %for.body1793 ], [ %bmy.236287, %if.then1822 ], [ %bmy.386419, %if.then1797 ], !dbg !2334
  %bmx.40 = phi i32 [ %bmx.386420, %for.body1793 ], [ %248, %if.then1822 ], [ %bmx.386420, %if.then1797 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.40, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.40, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.64, metadata !1407, metadata !DIExpression()), !dbg !1843
  %251 = sub nsw i64 %idx.ext1407, %indvars.iv6565, !dbg !2389
  %cmp1827.not = icmp slt i64 %251, %243, !dbg !2389
  br i1 %cmp1827.not, label %for.inc1858, label %if.then1829, !dbg !2382

if.then1829:                                      ; preds = %if.end1825
  %252 = load ptr, ptr %arrayidx1802, align 8, !dbg !2390, !tbaa !1889
  %253 = add nsw i64 %251, %idx.ext1410, !dbg !2390
  %arrayidx1839 = getelementptr inbounds i8, ptr %6, i64 %253, !dbg !2390
  %call1840 = call i32 %252(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx1839, i32 noundef %3) #5, !dbg !2390
  %254 = trunc i64 %251 to i32, !dbg !2390
  %shl1842 = shl i32 %254, 2, !dbg !2390
  %idxprom1843 = sext i32 %shl1842 to i64, !dbg !2390
  %arrayidx1844 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1843, !dbg !2390
  %255 = load i16, ptr %arrayidx1844, align 2, !dbg !2390, !tbaa !1912
  %conv1845 = zext i16 %255 to i32, !dbg !2390
  %256 = load i16, ptr %arrayidx1480, align 2, !dbg !2390, !tbaa !1912
  %conv1849 = zext i16 %256 to i32, !dbg !2390
  %add1850 = add i32 %call1840, %conv1845, !dbg !2390
  %add1851 = add i32 %add1850, %conv1849, !dbg !2390
  call void @llvm.dbg.value(metadata i32 %add1851, metadata !1535, metadata !DIExpression()), !dbg !2391
  %cmp1852 = icmp slt i32 %add1851, %bcost.64, !dbg !2392
  br i1 %cmp1852, label %if.then1854, label %for.inc1858, !dbg !2390

if.then1854:                                      ; preds = %if.then1829
  call void @llvm.dbg.value(metadata i32 %add1851, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %251, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %for.inc1858, !dbg !2394

for.inc1858:                                      ; preds = %if.then1829, %if.then1854, %if.end1825
  %bcost.66 = phi i32 [ %bcost.64, %if.end1825 ], [ %add1851, %if.then1854 ], [ %bcost.64, %if.then1829 ], !dbg !2396
  %bmy.42 = phi i32 [ %bmy.40, %if.end1825 ], [ %bmy.236287, %if.then1854 ], [ %bmy.40, %if.then1829 ], !dbg !2396
  %bmx.42 = phi i32 [ %bmx.40, %if.end1825 ], [ %254, %if.then1854 ], [ %bmx.40, %if.then1829 ], !dbg !2396
  call void @llvm.dbg.value(metadata i32 %bmx.42, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.42, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.66, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6566 = add nuw nsw i64 %indvars.iv6565, 2, !dbg !2379
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6566, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp1791 = icmp slt i64 %indvars.iv.next6566, %244, !dbg !2379
  br i1 %cmp1791, label %for.body1793, label %for.end1860, !dbg !2380, !llvm.loop !2397

for.end1860:                                      ; preds = %for.inc1858, %if.end1789
  %bcost.62.lcssa = phi i32 [ %bcost.61, %if.end1789 ], [ %bcost.66, %for.inc1858 ], !dbg !2334
  %bmy.38.lcssa = phi i32 [ %bmy.37, %if.end1789 ], [ %bmy.42, %for.inc1858 ], !dbg !2334
  %bmx.38.lcssa = phi i32 [ %bmx.37, %if.end1789 ], [ %bmx.42, %for.inc1858 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 3, metadata !1522, metadata !DIExpression()), !dbg !2355
  %sub1861 = sub nsw i32 %10, %bmy.236287, !dbg !2398
  %sub1862 = sub nsw i32 %bmy.236287, %8, !dbg !2398
  %257 = call i32 @llvm.smin.i32(i32 %sub1861, i32 %sub1862), !dbg !2398
  %cmp1871.not = icmp sle i32 %or1643, %257, !dbg !2398
  %cmp18766424 = icmp sgt i32 %or1643, 5
  %or.cond6677 = and i1 %cmp1871.not, %cmp18766424, !dbg !2357
  call void @llvm.dbg.value(metadata i32 %bmx.38.lcssa, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.38.lcssa, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.62.lcssa, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 3, metadata !1522, metadata !DIExpression()), !dbg !2355
  br i1 %or.cond6677, label %for.body1878.preheader, label %if.end2005, !dbg !2357

for.body1878.preheader:                           ; preds = %for.end1860
  %sub1875 = add nsw i32 %or1643, -2
  %258 = zext i32 %sub1875 to i64, !dbg !2399
  br label %for.body1878, !dbg !2399

for.body1878:                                     ; preds = %for.body1878.preheader, %if.end2001
  %indvars.iv6572 = phi i64 [ 3, %for.body1878.preheader ], [ %indvars.iv.next6573, %if.end2001 ]
  %bmx.436428 = phi i32 [ %bmx.38.lcssa, %for.body1878.preheader ], [ %bmx.47, %if.end2001 ]
  %bmy.436427 = phi i32 [ %bmy.38.lcssa, %for.body1878.preheader ], [ %bmy.47, %if.end2001 ]
  %bcost.676426 = phi i32 [ %bcost.62.lcssa, %for.body1878.preheader ], [ %bcost.71, %if.end2001 ]
  call void @llvm.dbg.value(metadata i32 %bmx.436428, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.436427, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.676426, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6572, metadata !1522, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1538, metadata !DIExpression()), !dbg !2400
  %259 = load ptr, ptr %arrayidx1051, align 8, !dbg !2401, !tbaa !1889
  %260 = mul nsw i64 %indvars.iv6572, %idx.ext1058, !dbg !2401
  %add.ptr1892 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %260, !dbg !2401
  %.neg6654 = mul i64 %260, -4294967296, !dbg !2401
  %idx.ext1896 = ashr exact i64 %.neg6654, 32, !dbg !2401
  %add.ptr1897 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %idx.ext1896, !dbg !2401
  %261 = add nuw nsw i64 %indvars.iv6572, 2, !dbg !2401
  %262 = mul nsw i64 %261, %idx.ext1058, !dbg !2401
  %add.ptr1902 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %262, !dbg !2401
  %263 = sub nuw nsw i64 -2, %indvars.iv6572, !dbg !2401
  %264 = mul nsw i64 %263, %idx.ext1058, !dbg !2401
  %add.ptr1908 = getelementptr inbounds i8, ptr %add.ptr1411, i64 %264, !dbg !2401
  call void %259(ptr noundef %5, ptr noundef %add.ptr1892, ptr noundef %add.ptr1897, ptr noundef %add.ptr1902, ptr noundef %add.ptr1908, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2401
  %265 = load i16, ptr %arrayidx1436, align 2, !dbg !2401, !tbaa !1912
  %conv1914 = zext i16 %265 to i32, !dbg !2401
  %266 = trunc i64 %indvars.iv6572 to i32, !dbg !2401
  %267 = add i32 %bmy.236287, %266, !dbg !2401
  %shl1916 = shl i32 %267, 2, !dbg !2401
  %idxprom1917 = sext i32 %shl1916 to i64, !dbg !2401
  %arrayidx1918 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1917, !dbg !2401
  %268 = load i16, ptr %arrayidx1918, align 2, !dbg !2401, !tbaa !1912
  %conv1919 = zext i16 %268 to i32, !dbg !2401
  %add1920 = add nuw nsw i32 %conv1919, %conv1914, !dbg !2401
  %269 = load i32, ptr %costs, align 16, !dbg !2401, !tbaa !1859
  %add1922 = add nsw i32 %add1920, %269, !dbg !2401
  store i32 %add1922, ptr %costs, align 16, !dbg !2401, !tbaa !1859
  %270 = trunc i64 %indvars.iv6572 to i32, !dbg !2401
  %add1929 = sub i32 %bmy.236287, %270, !dbg !2401
  %shl1930 = shl i32 %add1929, 2, !dbg !2401
  %idxprom1931 = sext i32 %shl1930 to i64, !dbg !2401
  %arrayidx1932 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1931, !dbg !2401
  %271 = load i16, ptr %arrayidx1932, align 2, !dbg !2401, !tbaa !1912
  %conv1933 = zext i16 %271 to i32, !dbg !2401
  %add1934 = add nuw nsw i32 %conv1933, %conv1914, !dbg !2401
  %272 = load i32, ptr %arrayidx1093, align 4, !dbg !2401, !tbaa !1859
  %add1936 = add nsw i32 %add1934, %272, !dbg !2401
  store i32 %add1936, ptr %arrayidx1093, align 4, !dbg !2401, !tbaa !1859
  %273 = trunc i64 %261 to i32, !dbg !2401
  %274 = add i32 %bmy.236287, %273, !dbg !2401
  %shl1944 = shl i32 %274, 2, !dbg !2401
  %idxprom1945 = sext i32 %shl1944 to i64, !dbg !2401
  %arrayidx1946 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1945, !dbg !2401
  %275 = load i16, ptr %arrayidx1946, align 2, !dbg !2401, !tbaa !1912
  %conv1947 = zext i16 %275 to i32, !dbg !2401
  %add1948 = add nuw nsw i32 %conv1947, %conv1914, !dbg !2401
  %276 = load i32, ptr %arrayidx1106, align 8, !dbg !2401, !tbaa !1859
  %add1950 = add nsw i32 %add1948, %276, !dbg !2401
  store i32 %add1950, ptr %arrayidx1106, align 8, !dbg !2401, !tbaa !1859
  %277 = trunc i64 %263 to i32, !dbg !2401
  %278 = add i32 %bmy.236287, %277, !dbg !2401
  %shl1959 = shl i32 %278, 2, !dbg !2401
  %idxprom1960 = sext i32 %shl1959 to i64, !dbg !2401
  %arrayidx1961 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom1960, !dbg !2401
  %279 = load i16, ptr %arrayidx1961, align 2, !dbg !2401, !tbaa !1912
  %conv1962 = zext i16 %279 to i32, !dbg !2401
  %add1963 = add nuw nsw i32 %conv1962, %conv1914, !dbg !2401
  %280 = load i32, ptr %arrayidx1119, align 4, !dbg !2401, !tbaa !1859
  %add1965 = add nsw i32 %add1963, %280, !dbg !2401
  store i32 %add1965, ptr %arrayidx1119, align 4, !dbg !2401, !tbaa !1859
  %cmp1967 = icmp slt i32 %add1922, %bcost.676426, !dbg !2402
  br i1 %cmp1967, label %if.then1969, label %if.end1973, !dbg !2401

if.then1969:                                      ; preds = %for.body1878
  call void @llvm.dbg.value(metadata i32 %add1922, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv6572, i32 %bmy.236287), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end1973, !dbg !2404

if.end1973:                                       ; preds = %if.then1969, %for.body1878
  %bcost.68 = phi i32 [ %add1922, %if.then1969 ], [ %bcost.676426, %for.body1878 ], !dbg !2334
  %bmy.44 = phi i32 [ %267, %if.then1969 ], [ %bmy.436427, %for.body1878 ], !dbg !2334
  %bmx.44 = phi i32 [ %bmx.236292, %if.then1969 ], [ %bmx.436428, %for.body1878 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.44, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.44, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.68, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1975 = icmp slt i32 %add1936, %bcost.68, !dbg !2406
  br i1 %cmp1975, label %if.then1977, label %if.end1982, !dbg !2401

if.then1977:                                      ; preds = %if.end1973
  call void @llvm.dbg.value(metadata i32 %add1936, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1929, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end1982, !dbg !2408

if.end1982:                                       ; preds = %if.then1977, %if.end1973
  %bcost.69 = phi i32 [ %add1936, %if.then1977 ], [ %bcost.68, %if.end1973 ], !dbg !2400
  %bmy.45 = phi i32 [ %add1929, %if.then1977 ], [ %bmy.44, %if.end1973 ], !dbg !2400
  %bmx.45 = phi i32 [ %bmx.236292, %if.then1977 ], [ %bmx.44, %if.end1973 ], !dbg !2400
  call void @llvm.dbg.value(metadata i32 %bmx.45, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.45, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.69, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1984 = icmp slt i32 %add1950, %bcost.69, !dbg !2410
  br i1 %cmp1984, label %if.then1986, label %if.end1991, !dbg !2401

if.then1986:                                      ; preds = %if.end1982
  call void @llvm.dbg.value(metadata i32 %add1950, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %261, i32 %bmy.236287), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end1991, !dbg !2412

if.end1991:                                       ; preds = %if.then1986, %if.end1982
  %bcost.70 = phi i32 [ %add1950, %if.then1986 ], [ %bcost.69, %if.end1982 ], !dbg !2400
  %bmy.46 = phi i32 [ %274, %if.then1986 ], [ %bmy.45, %if.end1982 ], !dbg !2400
  %bmx.46 = phi i32 [ %bmx.236292, %if.then1986 ], [ %bmx.45, %if.end1982 ], !dbg !2400
  call void @llvm.dbg.value(metadata i32 %bmx.46, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.46, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.70, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp1993 = icmp slt i32 %add1965, %bcost.70, !dbg !2414
  br i1 %cmp1993, label %if.then1995, label %if.end2001, !dbg !2401

if.then1995:                                      ; preds = %if.end1991
  call void @llvm.dbg.value(metadata i32 %add1965, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %263, i32 %bmy.236287), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end2001, !dbg !2416

if.end2001:                                       ; preds = %if.then1995, %if.end1991
  %bcost.71 = phi i32 [ %add1965, %if.then1995 ], [ %bcost.70, %if.end1991 ], !dbg !2400
  %bmy.47 = phi i32 [ %278, %if.then1995 ], [ %bmy.46, %if.end1991 ], !dbg !2400
  %bmx.47 = phi i32 [ %bmx.236292, %if.then1995 ], [ %bmx.46, %if.end1991 ], !dbg !2400
  call void @llvm.dbg.value(metadata i32 %bmx.47, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.47, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.71, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6573 = add nuw nsw i64 %indvars.iv6572, 4, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6573, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp1876 = icmp ult i64 %indvars.iv.next6573, %258, !dbg !2418
  br i1 %cmp1876, label %for.body1878, label %if.end2005.loopexit, !dbg !2399, !llvm.loop !2419

if.end2005.loopexit:                              ; preds = %if.end2001
  %281 = trunc i64 %indvars.iv.next6573 to i32, !dbg !2420
  br label %if.end2005, !dbg !2420

if.end2005:                                       ; preds = %if.end2005.loopexit, %for.end1860
  %i1644.4 = phi i32 [ 3, %for.end1860 ], [ %281, %if.end2005.loopexit ], !dbg !2357
  %bcost.72 = phi i32 [ %bcost.62.lcssa, %for.end1860 ], [ %bcost.71, %if.end2005.loopexit ], !dbg !2345
  %bmy.48 = phi i32 [ %bmy.38.lcssa, %for.end1860 ], [ %bmy.47, %if.end2005.loopexit ], !dbg !2345
  %bmx.48 = phi i32 [ %bmx.38.lcssa, %for.end1860 ], [ %bmx.47, %if.end2005.loopexit ], !dbg !2345
  call void @llvm.dbg.value(metadata i32 %bmx.48, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.48, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.72, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i1644.4, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp20076433 = icmp slt i32 %i1644.4, %or1643, !dbg !2420
  br i1 %cmp20076433, label %for.body2009.lr.ph, label %for.end2076, !dbg !2421

for.body2009.lr.ph:                               ; preds = %if.end2005
  %arrayidx2018 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %282 = zext i32 %i1644.4 to i64, !dbg !2421
  %283 = sext i32 %bmy.236287 to i64, !dbg !2421
  %284 = sext i32 %10 to i64, !dbg !2421
  %285 = sext i32 %8 to i64, !dbg !2421
  %286 = sext i32 %or1643 to i64, !dbg !2421
  br label %for.body2009, !dbg !2421

for.body2009:                                     ; preds = %for.body2009.lr.ph, %for.inc2074
  %indvars.iv6583 = phi i64 [ %282, %for.body2009.lr.ph ], [ %indvars.iv.next6584, %for.inc2074 ]
  %bmx.496437 = phi i32 [ %bmx.48, %for.body2009.lr.ph ], [ %bmx.53, %for.inc2074 ]
  %bmy.496436 = phi i32 [ %bmy.48, %for.body2009.lr.ph ], [ %bmy.53, %for.inc2074 ]
  %bcost.736435 = phi i32 [ %bcost.72, %for.body2009.lr.ph ], [ %bcost.77, %for.inc2074 ]
  call void @llvm.dbg.value(metadata i32 %bmx.496437, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.496436, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.736435, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6583, metadata !1522, metadata !DIExpression()), !dbg !2355
  %287 = add nsw i64 %indvars.iv6583, %283, !dbg !2422
  %cmp2011.not = icmp sgt i64 %287, %284, !dbg !2422
  br i1 %cmp2011.not, label %if.end2041, label %if.then2013, !dbg !2423

if.then2013:                                      ; preds = %for.body2009
  %288 = load ptr, ptr %arrayidx2018, align 8, !dbg !2424, !tbaa !1889
  %289 = mul nsw i64 %287, %idx.ext1058, !dbg !2424
  %290 = add nsw i64 %289, %idx.ext1407, !dbg !2424
  %arrayidx2023 = getelementptr inbounds i8, ptr %6, i64 %290, !dbg !2424
  %call2024 = call i32 %288(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2023, i32 noundef %3) #5, !dbg !2424
  %291 = load i16, ptr %arrayidx1436, align 2, !dbg !2424, !tbaa !1912
  %conv2028 = zext i16 %291 to i32, !dbg !2424
  %292 = trunc i64 %287 to i32, !dbg !2424
  %shl2030 = shl i32 %292, 2, !dbg !2424
  %idxprom2031 = sext i32 %shl2030 to i64, !dbg !2424
  %arrayidx2032 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2031, !dbg !2424
  %293 = load i16, ptr %arrayidx2032, align 2, !dbg !2424, !tbaa !1912
  %conv2033 = zext i16 %293 to i32, !dbg !2424
  %add2034 = add i32 %call2024, %conv2028, !dbg !2424
  %add2035 = add i32 %add2034, %conv2033, !dbg !2424
  call void @llvm.dbg.value(metadata i32 %add2035, metadata !1543, metadata !DIExpression()), !dbg !2425
  %cmp2036 = icmp slt i32 %add2035, %bcost.736435, !dbg !2426
  br i1 %cmp2036, label %if.then2038, label %if.end2041, !dbg !2424

if.then2038:                                      ; preds = %if.then2013
  call void @llvm.dbg.value(metadata i32 %add2035, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %287, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2041, !dbg !2428

if.end2041:                                       ; preds = %if.then2013, %if.then2038, %for.body2009
  %bcost.75 = phi i32 [ %bcost.736435, %for.body2009 ], [ %add2035, %if.then2038 ], [ %bcost.736435, %if.then2013 ], !dbg !2334
  %bmy.51 = phi i32 [ %bmy.496436, %for.body2009 ], [ %292, %if.then2038 ], [ %bmy.496436, %if.then2013 ], !dbg !2334
  %bmx.51 = phi i32 [ %bmx.496437, %for.body2009 ], [ %bmx.236292, %if.then2038 ], [ %bmx.496437, %if.then2013 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.51, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.51, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.75, metadata !1407, metadata !DIExpression()), !dbg !1843
  %294 = sub nsw i64 %283, %indvars.iv6583, !dbg !2430
  %cmp2043.not = icmp slt i64 %294, %285, !dbg !2430
  br i1 %cmp2043.not, label %for.inc2074, label %if.then2045, !dbg !2423

if.then2045:                                      ; preds = %if.end2041
  %295 = load ptr, ptr %arrayidx2018, align 8, !dbg !2431, !tbaa !1889
  %296 = mul nsw i64 %294, %idx.ext1058, !dbg !2431
  %297 = add nsw i64 %296, %idx.ext1407, !dbg !2431
  %arrayidx2055 = getelementptr inbounds i8, ptr %6, i64 %297, !dbg !2431
  %call2056 = call i32 %295(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2055, i32 noundef %3) #5, !dbg !2431
  %298 = load i16, ptr %arrayidx1436, align 2, !dbg !2431, !tbaa !1912
  %conv2060 = zext i16 %298 to i32, !dbg !2431
  %299 = trunc i64 %294 to i32, !dbg !2431
  %shl2062 = shl i32 %299, 2, !dbg !2431
  %idxprom2063 = sext i32 %shl2062 to i64, !dbg !2431
  %arrayidx2064 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2063, !dbg !2431
  %300 = load i16, ptr %arrayidx2064, align 2, !dbg !2431, !tbaa !1912
  %conv2065 = zext i16 %300 to i32, !dbg !2431
  %add2066 = add i32 %call2056, %conv2060, !dbg !2431
  %add2067 = add i32 %add2066, %conv2065, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %add2067, metadata !1549, metadata !DIExpression()), !dbg !2432
  %cmp2068 = icmp slt i32 %add2067, %bcost.75, !dbg !2433
  br i1 %cmp2068, label %if.then2070, label %for.inc2074, !dbg !2431

if.then2070:                                      ; preds = %if.then2045
  call void @llvm.dbg.value(metadata i32 %add2067, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %294, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %for.inc2074, !dbg !2435

for.inc2074:                                      ; preds = %if.then2045, %if.then2070, %if.end2041
  %bcost.77 = phi i32 [ %bcost.75, %if.end2041 ], [ %add2067, %if.then2070 ], [ %bcost.75, %if.then2045 ], !dbg !2437
  %bmy.53 = phi i32 [ %bmy.51, %if.end2041 ], [ %299, %if.then2070 ], [ %bmy.51, %if.then2045 ], !dbg !2437
  %bmx.53 = phi i32 [ %bmx.51, %if.end2041 ], [ %bmx.236292, %if.then2070 ], [ %bmx.51, %if.then2045 ], !dbg !2437
  call void @llvm.dbg.value(metadata i32 %bmx.53, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.53, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.77, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6584 = add nuw nsw i64 %indvars.iv6583, 2, !dbg !2420
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6584, metadata !1522, metadata !DIExpression()), !dbg !2355
  %cmp2007 = icmp slt i64 %indvars.iv.next6584, %286, !dbg !2420
  br i1 %cmp2007, label %for.body2009, label %for.end2076, !dbg !2421, !llvm.loop !2438

for.end2076:                                      ; preds = %for.inc2074, %if.end2005
  %bcost.73.lcssa = phi i32 [ %bcost.72, %if.end2005 ], [ %bcost.77, %for.inc2074 ], !dbg !2334
  %bmy.49.lcssa = phi i32 [ %bmy.48, %if.end2005 ], [ %bmy.53, %for.inc2074 ], !dbg !2334
  %bmx.49.lcssa = phi i32 [ %bmx.48, %if.end2005 ], [ %bmx.53, %for.inc2074 ], !dbg !2334
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1552, metadata !DIExpression()), !dbg !2439
  %301 = load ptr, ptr %arrayidx1051, align 8, !dbg !2440, !tbaa !1889
  %add.ptr2090 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1418, !dbg !2440
  %add.ptr2094 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1418, !dbg !2440
  %add.ptr2098 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1054, !dbg !2440
  %add.ptr2102 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1054, !dbg !2440
  call void %301(ptr noundef %5, ptr noundef nonnull %add.ptr2090, ptr noundef nonnull %add.ptr2094, ptr noundef nonnull %add.ptr2098, ptr noundef nonnull %add.ptr2102, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2440
  %302 = load i16, ptr %arrayidx1449, align 2, !dbg !2440, !tbaa !1912
  %conv2108 = zext i16 %302 to i32, !dbg !2440
  %303 = load i16, ptr %arrayidx1441, align 2, !dbg !2440, !tbaa !1912
  %conv2113 = zext i16 %303 to i32, !dbg !2440
  %add2114 = add nuw nsw i32 %conv2113, %conv2108, !dbg !2440
  %304 = load i32, ptr %costs, align 16, !dbg !2440, !tbaa !1859
  %add2116 = add nsw i32 %add2114, %304, !dbg !2440
  store i32 %add2116, ptr %costs, align 16, !dbg !2440, !tbaa !1859
  %305 = load i16, ptr %arrayidx1462, align 2, !dbg !2440, !tbaa !1912
  %conv2121 = zext i16 %305 to i32, !dbg !2440
  %add2127 = add nuw nsw i32 %conv2121, %conv2113, !dbg !2440
  %306 = load i32, ptr %arrayidx1093, align 4, !dbg !2440, !tbaa !1859
  %add2129 = add nsw i32 %add2127, %306, !dbg !2440
  store i32 %add2129, ptr %arrayidx1093, align 4, !dbg !2440, !tbaa !1859
  %307 = load i16, ptr %arrayidx1475, align 2, !dbg !2440, !tbaa !1912
  %conv2134 = zext i16 %307 to i32, !dbg !2440
  %308 = load i16, ptr %arrayidx1454, align 2, !dbg !2440, !tbaa !1912
  %conv2139 = zext i16 %308 to i32, !dbg !2440
  %add2140 = add nuw nsw i32 %conv2139, %conv2134, !dbg !2440
  %309 = load i32, ptr %arrayidx1106, align 8, !dbg !2440, !tbaa !1859
  %add2142 = add nsw i32 %add2140, %309, !dbg !2440
  store i32 %add2142, ptr %arrayidx1106, align 8, !dbg !2440, !tbaa !1859
  %310 = load i16, ptr %arrayidx1547, align 2, !dbg !2440, !tbaa !1912
  %conv2147 = zext i16 %310 to i32, !dbg !2440
  %add2153 = add nuw nsw i32 %conv2147, %conv2139, !dbg !2440
  %311 = load i32, ptr %arrayidx1119, align 4, !dbg !2440, !tbaa !1859
  %add2155 = add nsw i32 %add2153, %311, !dbg !2440
  store i32 %add2155, ptr %arrayidx1119, align 4, !dbg !2440, !tbaa !1859
  %cmp2157 = icmp slt i32 %add2116, %bcost.73.lcssa, !dbg !2441
  br i1 %cmp2157, label %if.then2159, label %if.end2163, !dbg !2440

if.then2159:                                      ; preds = %for.end2076
  call void @llvm.dbg.value(metadata i32 %add2116, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1446, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1438, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2163, !dbg !2443

if.end2163:                                       ; preds = %if.then2159, %for.end2076
  %bcost.78 = phi i32 [ %add2116, %if.then2159 ], [ %bcost.73.lcssa, %for.end2076 ], !dbg !2334
  %bmy.54 = phi i32 [ %add1438, %if.then2159 ], [ %bmy.49.lcssa, %for.end2076 ], !dbg !2334
  %bmx.54 = phi i32 [ %add1446, %if.then2159 ], [ %bmx.49.lcssa, %for.end2076 ], !dbg !2334
  call void @llvm.dbg.value(metadata i32 %bmx.54, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.54, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.78, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2165 = icmp slt i32 %add2129, %bcost.78, !dbg !2445
  br i1 %cmp2165, label %if.then2167, label %if.end2171, !dbg !2440

if.then2167:                                      ; preds = %if.end2163
  call void @llvm.dbg.value(metadata i32 %add2129, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1459, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1438, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2171, !dbg !2447

if.end2171:                                       ; preds = %if.then2167, %if.end2163
  %bcost.79 = phi i32 [ %add2129, %if.then2167 ], [ %bcost.78, %if.end2163 ], !dbg !2439
  %bmy.55 = phi i32 [ %add1438, %if.then2167 ], [ %bmy.54, %if.end2163 ], !dbg !2439
  %bmx.55 = phi i32 [ %add1459, %if.then2167 ], [ %bmx.54, %if.end2163 ], !dbg !2439
  call void @llvm.dbg.value(metadata i32 %bmx.55, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.55, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.79, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2173 = icmp slt i32 %add2142, %bcost.79, !dbg !2449
  br i1 %cmp2173, label %if.then2175, label %if.end2179, !dbg !2440

if.then2175:                                      ; preds = %if.end2171
  call void @llvm.dbg.value(metadata i32 %add2142, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1472, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1451, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2179, !dbg !2451

if.end2179:                                       ; preds = %if.then2175, %if.end2171
  %bcost.80 = phi i32 [ %add2142, %if.then2175 ], [ %bcost.79, %if.end2171 ], !dbg !2439
  %bmy.56 = phi i32 [ %add1451, %if.then2175 ], [ %bmy.55, %if.end2171 ], !dbg !2439
  %bmx.56 = phi i32 [ %add1472, %if.then2175 ], [ %bmx.55, %if.end2171 ], !dbg !2439
  call void @llvm.dbg.value(metadata i32 %bmx.56, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.56, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.80, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2181 = icmp slt i32 %add2155, %bcost.80, !dbg !2453
  br i1 %cmp2181, label %if.then2183, label %if.end2187, !dbg !2440

if.then2183:                                      ; preds = %if.end2179
  call void @llvm.dbg.value(metadata i32 %add2155, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1544, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1451, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2187, !dbg !2455

if.end2187:                                       ; preds = %if.then2183, %if.end2179
  %bcost.81 = phi i32 [ %add2155, %if.then2183 ], [ %bcost.80, %if.end2179 ], !dbg !2439
  %bmy.57 = phi i32 [ %add1451, %if.then2183 ], [ %bmy.56, %if.end2179 ], !dbg !2439
  %bmx.57 = phi i32 [ %add1544, %if.then2183 ], [ %bmx.56, %if.end2179 ], !dbg !2439
  call void @llvm.dbg.value(metadata i32 %bmx.57, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.57, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.81, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata ptr %add.ptr1411, metadata !1554, metadata !DIExpression()), !dbg !2457
  %312 = load ptr, ptr %arrayidx1051, align 8, !dbg !2458, !tbaa !1889
  %add.ptr2201 = getelementptr inbounds i8, ptr %add.ptr1428, i64 %idx.ext1058, !dbg !2458
  %add.ptr2205 = getelementptr inbounds i8, ptr %add.ptr1527, i64 %idx.ext1058, !dbg !2458
  %add.ptr2209 = getelementptr inbounds i8, ptr %add.ptr1420, i64 %idx.ext1541, !dbg !2458
  %add.ptr2213 = getelementptr inbounds i8, ptr %add.ptr1424, i64 %idx.ext1541, !dbg !2458
  call void %312(ptr noundef %5, ptr noundef nonnull %add.ptr2201, ptr noundef nonnull %add.ptr2205, ptr noundef nonnull %add.ptr2209, ptr noundef nonnull %add.ptr2213, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2458
  %313 = load i16, ptr %arrayidx1475, align 2, !dbg !2458, !tbaa !1912
  %conv2219 = zext i16 %313 to i32, !dbg !2458
  %314 = load i16, ptr %arrayidx1565, align 2, !dbg !2458, !tbaa !1912
  %conv2224 = zext i16 %314 to i32, !dbg !2458
  %add2225 = add nuw nsw i32 %conv2224, %conv2219, !dbg !2458
  %315 = load i32, ptr %costs, align 16, !dbg !2458, !tbaa !1859
  %add2227 = add nsw i32 %add2225, %315, !dbg !2458
  store i32 %add2227, ptr %costs, align 16, !dbg !2458, !tbaa !1859
  %316 = load i16, ptr %arrayidx1547, align 2, !dbg !2458, !tbaa !1912
  %conv2232 = zext i16 %316 to i32, !dbg !2458
  %add2238 = add nuw nsw i32 %conv2232, %conv2224, !dbg !2458
  %317 = load i32, ptr %arrayidx1093, align 4, !dbg !2458, !tbaa !1859
  %add2240 = add nsw i32 %add2238, %317, !dbg !2458
  store i32 %add2240, ptr %arrayidx1093, align 4, !dbg !2458, !tbaa !1859
  %318 = load i16, ptr %arrayidx1449, align 2, !dbg !2458, !tbaa !1912
  %conv2245 = zext i16 %318 to i32, !dbg !2458
  %319 = load i16, ptr %arrayidx1591, align 2, !dbg !2458, !tbaa !1912
  %conv2250 = zext i16 %319 to i32, !dbg !2458
  %add2251 = add nuw nsw i32 %conv2250, %conv2245, !dbg !2458
  %320 = load i32, ptr %arrayidx1106, align 8, !dbg !2458, !tbaa !1859
  %add2253 = add nsw i32 %add2251, %320, !dbg !2458
  store i32 %add2253, ptr %arrayidx1106, align 8, !dbg !2458, !tbaa !1859
  %321 = load i16, ptr %arrayidx1462, align 2, !dbg !2458, !tbaa !1912
  %conv2258 = zext i16 %321 to i32, !dbg !2458
  %add2264 = add nuw nsw i32 %conv2258, %conv2250, !dbg !2458
  %322 = load i32, ptr %arrayidx1119, align 4, !dbg !2458, !tbaa !1859
  %add2266 = add nsw i32 %add2264, %322, !dbg !2458
  store i32 %add2266, ptr %arrayidx1119, align 4, !dbg !2458, !tbaa !1859
  %cmp2268 = icmp slt i32 %add2227, %bcost.81, !dbg !2459
  br i1 %cmp2268, label %if.then2270, label %if.end2274, !dbg !2458

if.then2270:                                      ; preds = %if.end2187
  call void @llvm.dbg.value(metadata i32 %add2227, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1472, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1562, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2274, !dbg !2461

if.end2274:                                       ; preds = %if.then2270, %if.end2187
  %bcost.82 = phi i32 [ %add2227, %if.then2270 ], [ %bcost.81, %if.end2187 ], !dbg !2354
  %bmy.58 = phi i32 [ %add1562, %if.then2270 ], [ %bmy.57, %if.end2187 ], !dbg !2354
  %bmx.58 = phi i32 [ %add1472, %if.then2270 ], [ %bmx.57, %if.end2187 ], !dbg !2354
  call void @llvm.dbg.value(metadata i32 %bmx.58, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.58, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.82, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2276 = icmp slt i32 %add2240, %bcost.82, !dbg !2463
  br i1 %cmp2276, label %if.then2278, label %if.end2282, !dbg !2458

if.then2278:                                      ; preds = %if.end2274
  call void @llvm.dbg.value(metadata i32 %add2240, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1544, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1562, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2282, !dbg !2465

if.end2282:                                       ; preds = %if.then2278, %if.end2274
  %bcost.83 = phi i32 [ %add2240, %if.then2278 ], [ %bcost.82, %if.end2274 ], !dbg !2457
  %bmy.59 = phi i32 [ %add1562, %if.then2278 ], [ %bmy.58, %if.end2274 ], !dbg !2457
  %bmx.59 = phi i32 [ %add1544, %if.then2278 ], [ %bmx.58, %if.end2274 ], !dbg !2457
  call void @llvm.dbg.value(metadata i32 %bmx.59, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.59, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.83, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2284 = icmp slt i32 %add2253, %bcost.83, !dbg !2467
  br i1 %cmp2284, label %if.then2286, label %if.end2290, !dbg !2458

if.then2286:                                      ; preds = %if.end2282
  call void @llvm.dbg.value(metadata i32 %add2253, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1446, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1588, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2290, !dbg !2469

if.end2290:                                       ; preds = %if.then2286, %if.end2282
  %bcost.84 = phi i32 [ %add2253, %if.then2286 ], [ %bcost.83, %if.end2282 ], !dbg !2457
  %bmy.60 = phi i32 [ %add1588, %if.then2286 ], [ %bmy.59, %if.end2282 ], !dbg !2457
  %bmx.60 = phi i32 [ %add1446, %if.then2286 ], [ %bmx.59, %if.end2282 ], !dbg !2457
  call void @llvm.dbg.value(metadata i32 %bmx.60, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.60, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.84, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2292 = icmp slt i32 %add2266, %bcost.84, !dbg !2471
  br i1 %cmp2292, label %if.then2294, label %if.end2298, !dbg !2458

if.then2294:                                      ; preds = %if.end2290
  call void @llvm.dbg.value(metadata i32 %add2266, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1459, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add1588, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2298, !dbg !2473

if.end2298:                                       ; preds = %if.then2294, %if.end2290
  %bcost.85 = phi i32 [ %add2266, %if.then2294 ], [ %bcost.84, %if.end2290 ], !dbg !2457
  %bmy.61 = phi i32 [ %add1588, %if.then2294 ], [ %bmy.60, %if.end2290 ], !dbg !2457
  %bmx.61 = phi i32 [ %add1459, %if.then2294 ], [ %bmx.60, %if.end2290 ], !dbg !2457
  call void @llvm.dbg.value(metadata i32 %bmx.61, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.61, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.85, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2299 = icmp eq i32 %bcost.85, %bcost.42, !dbg !2475
  %add2303 = add nsw i32 %or1643, 2
  call void @llvm.dbg.value(metadata i32 undef, metadata !1501, metadata !DIExpression()), !dbg !2245
  br i1 %cmp2299, label %sw.epilog, label %if.end2306

if.end2306:                                       ; preds = %if.end1638, %if.end2298, %land.lhs.true1398, %if.end1391
  %bmx.236294 = phi i32 [ %bmx.236292, %if.end2298 ], [ %bmx.236292, %if.end1638 ], [ %bmx.236292, %land.lhs.true1398 ], [ %bmx.23, %if.end1391 ]
  %bmy.236289 = phi i32 [ %bmy.236287, %if.end2298 ], [ %bmy.236287, %if.end1638 ], [ %bmy.236287, %land.lhs.true1398 ], [ %bmy.23, %if.end1391 ]
  %cross_start.2 = phi i32 [ %add2303, %if.end2298 ], [ 3, %if.end1638 ], [ 3, %land.lhs.true1398 ], [ 1, %if.end1391 ], !dbg !2477
  %bcost.86 = phi i32 [ %bcost.85, %if.end2298 ], [ %bcost.55, %if.end1638 ], [ %bcost.42, %land.lhs.true1398 ], [ %bcost.47, %if.end1391 ], !dbg !2245
  %bmy.62 = phi i32 [ %bmy.61, %if.end2298 ], [ %bmy.31, %if.end1638 ], [ %bmy.236287, %land.lhs.true1398 ], [ %bmy.23, %if.end1391 ], !dbg !2245
  %bmx.62 = phi i32 [ %bmx.61, %if.end2298 ], [ %bmx.31, %if.end1638 ], [ %bmx.236292, %land.lhs.true1398 ], [ %bmx.23, %if.end1391 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.62, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.62, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.86, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %cross_start.2, metadata !1501, metadata !DIExpression()), !dbg !2245
  switch i32 %i_mvc, label %if.else2334 [
    i32 0, label %if.end2414
    i32 1, label %if.then2311
  ], !dbg !2478

if.then2311:                                      ; preds = %if.end2306
  %cmp2312 = icmp eq i32 %0, 0, !dbg !2479
  br i1 %cmp2312, label %if.end2361, label %if.else2315, !dbg !2483

if.else2315:                                      ; preds = %if.then2311
  %323 = load i16, ptr %mvp, align 16, !dbg !2484, !tbaa !1912
  %conv2318 = sext i16 %323 to i32, !dbg !2484
  %324 = load i16, ptr %mvc, align 2, !dbg !2485, !tbaa !1912
  %conv2321 = sext i16 %324 to i32, !dbg !2485
  %sub2322 = sub nsw i32 %conv2318, %conv2321, !dbg !2486
  %325 = call i32 @llvm.abs.i32(i32 %sub2322, i1 true), !dbg !2487
  %326 = load i16, ptr %arrayidx33, align 2, !dbg !2488, !tbaa !1912
  %conv2326 = sext i16 %326 to i32, !dbg !2488
  %arrayidx2328 = getelementptr inbounds [2 x i16], ptr %mvc, i64 0, i64 1, !dbg !2489
  %327 = load i16, ptr %arrayidx2328, align 2, !dbg !2489, !tbaa !1912
  %conv2329 = sext i16 %327 to i32, !dbg !2489
  %sub2330 = sub nsw i32 %conv2326, %conv2329, !dbg !2490
  %328 = call i32 @llvm.abs.i32(i32 %sub2330, i1 true), !dbg !2491
  %add2332 = add nuw nsw i32 %328, %325, !dbg !2492
  call void @llvm.dbg.value(metadata i32 %add2332, metadata !1556, metadata !DIExpression()), !dbg !2493
  br label %if.end2361

if.else2334:                                      ; preds = %if.end2306
  %sub2335 = add nsw i32 %i_mvc, -1, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %sub2335, metadata !1561, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 0, metadata !1556, metadata !DIExpression()), !dbg !2493
  %cmp2336.not = icmp eq i32 %0, 0, !dbg !2496
  br i1 %cmp2336.not, label %if.end2357, label %if.then2338, !dbg !2498

if.then2338:                                      ; preds = %if.else2334
  %329 = load i16, ptr %mvp, align 16, !dbg !2499, !tbaa !1912
  %conv2341 = sext i16 %329 to i32, !dbg !2499
  %330 = load i16, ptr %mvc, align 2, !dbg !2501, !tbaa !1912
  %conv2344 = sext i16 %330 to i32, !dbg !2501
  %sub2345 = sub nsw i32 %conv2341, %conv2344, !dbg !2502
  %331 = call i32 @llvm.abs.i32(i32 %sub2345, i1 true), !dbg !2503
  %332 = load i16, ptr %arrayidx33, align 2, !dbg !2504, !tbaa !1912
  %conv2349 = sext i16 %332 to i32, !dbg !2504
  %arrayidx2351 = getelementptr inbounds [2 x i16], ptr %mvc, i64 0, i64 1, !dbg !2505
  %333 = load i16, ptr %arrayidx2351, align 2, !dbg !2505, !tbaa !1912
  %conv2352 = sext i16 %333 to i32, !dbg !2505
  %sub2353 = sub nsw i32 %conv2349, %conv2352, !dbg !2506
  %334 = call i32 @llvm.abs.i32(i32 %sub2353, i1 true), !dbg !2507
  %add2355 = add nuw nsw i32 %334, %331, !dbg !2508
  call void @llvm.dbg.value(metadata i32 %add2355, metadata !1556, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %i_mvc, metadata !1561, metadata !DIExpression()), !dbg !2493
  br label %if.end2357, !dbg !2509

if.end2357:                                       ; preds = %if.then2338, %if.else2334
  %denom.0 = phi i32 [ %i_mvc, %if.then2338 ], [ %sub2335, %if.else2334 ], !dbg !2510
  %mvd.0 = phi i32 [ %add2355, %if.then2338 ], [ 0, %if.else2334 ], !dbg !2510
  call void @llvm.dbg.value(metadata i32 %mvd.0, metadata !1556, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %denom.0, metadata !1561, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %mvc, metadata !2511, metadata !DIExpression()) #5, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %i_mvc, metadata !2516, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #5, !dbg !2520
  call void @llvm.dbg.value(metadata i32 0, metadata !2518, metadata !DIExpression()) #5, !dbg !2522
  call void @llvm.dbg.value(metadata i32 0, metadata !2517, metadata !DIExpression()) #5, !dbg !2520
  %cmp31.i = icmp sgt i32 %i_mvc, 1, !dbg !2523
  br i1 %cmp31.i, label %for.body.preheader.i6275, label %x264_predictor_difference.exit, !dbg !2525

for.body.preheader.i6275:                         ; preds = %if.end2357
  %conv23586670 = zext i32 %i_mvc to i64, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %conv23586670, metadata !2516, metadata !DIExpression()) #5, !dbg !2520
  %.pre.i = load i16, ptr %mvc, align 2, !dbg !2527, !tbaa !1912
  %arrayidx11.phi.trans.insert.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 0, i64 1
  %.pre36.i = load i16, ptr %arrayidx11.phi.trans.insert.i, align 2, !dbg !2529, !tbaa !1912
  %335 = add nsw i64 %conv23586670, -2
  br label %for.body.i6280, !dbg !2525

for.body.i6280:                                   ; preds = %for.body.i6280, %for.body.preheader.i6275
  %336 = phi i16 [ %.pre36.i, %for.body.preheader.i6275 ], [ %340, %for.body.i6280 ], !dbg !2529
  %337 = phi i16 [ %.pre.i, %for.body.preheader.i6275 ], [ %338, %for.body.i6280 ], !dbg !2527
  %indvars.iv.i6276 = phi i64 [ 0, %for.body.preheader.i6275 ], [ %indvars.iv.next.i6277, %for.body.i6280 ]
  %sum.032.i = phi i32 [ 0, %for.body.preheader.i6275 ], [ %add21.i, %for.body.i6280 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i6276, metadata !2518, metadata !DIExpression()) #5, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %sum.032.i, metadata !2517, metadata !DIExpression()) #5, !dbg !2520
  %conv3.i = sext i16 %337 to i32, !dbg !2527
  %indvars.iv.next.i6277 = add nuw nsw i64 %indvars.iv.i6276, 1, !dbg !2530
  %arrayidx5.i = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.next.i6277, !dbg !2531
  %338 = load i16, ptr %arrayidx5.i, align 2, !dbg !2531, !tbaa !1912
  %conv7.i = sext i16 %338 to i32, !dbg !2531
  %sub8.i = sub nsw i32 %conv3.i, %conv7.i, !dbg !2532
  %339 = call i32 @llvm.abs.i32(i32 %sub8.i, i1 true) #5, !dbg !2533
  %conv12.i = sext i16 %336 to i32, !dbg !2529
  %arrayidx16.i6278 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %indvars.iv.next.i6277, i64 1, !dbg !2534
  %340 = load i16, ptr %arrayidx16.i6278, align 2, !dbg !2534, !tbaa !1912
  %conv17.i = sext i16 %340 to i32, !dbg !2534
  %sub18.i = sub nsw i32 %conv12.i, %conv17.i, !dbg !2535
  %341 = call i32 @llvm.abs.i32(i32 %sub18.i, i1 true) #5, !dbg !2536
  %add20.i = add i32 %339, %sum.032.i, !dbg !2537
  %add21.i = add i32 %add20.i, %341, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i6277, metadata !2518, metadata !DIExpression()) #5, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %add21.i, metadata !2517, metadata !DIExpression()) #5, !dbg !2520
  %exitcond.not.i6279 = icmp eq i64 %indvars.iv.i6276, %335, !dbg !2523
  br i1 %exitcond.not.i6279, label %x264_predictor_difference.exit, label %for.body.i6280, !dbg !2525, !llvm.loop !2539

x264_predictor_difference.exit:                   ; preds = %for.body.i6280, %if.end2357
  %sum.0.lcssa.i = phi i32 [ 0, %if.end2357 ], [ %add21.i, %for.body.i6280 ], !dbg !2520
  %add2360 = add nsw i32 %sum.0.lcssa.i, %mvd.0, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %add2360, metadata !1556, metadata !DIExpression()), !dbg !2493
  br label %if.end2361

if.end2361:                                       ; preds = %if.then2311, %if.else2315, %x264_predictor_difference.exit
  %denom.1 = phi i32 [ 1, %if.else2315 ], [ %denom.0, %x264_predictor_difference.exit ], [ 1, %if.then2311 ], !dbg !2493
  %mvd.1 = phi i32 [ %add2332, %if.else2315 ], [ %add2360, %x264_predictor_difference.exit ], [ 25, %if.then2311 ], !dbg !2542
  call void @llvm.dbg.value(metadata i32 %mvd.1, metadata !1556, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %denom.1, metadata !1561, metadata !DIExpression()), !dbg !2493
  %arrayidx2363 = getelementptr inbounds [7 x i8], ptr @x264_me_search_ref.x264_pixel_size_shift, i64 0, i64 %idxprom, !dbg !2543
  %342 = load i8, ptr %arrayidx2363, align 1, !dbg !2543, !tbaa !1975
  %conv2364 = zext i8 %342 to i32, !dbg !2543
  %shr2365 = lshr i32 1000, %conv2364, !dbg !2543
  %cmp2366 = icmp slt i32 %bcost.86, %shr2365, !dbg !2543
  br i1 %cmp2366, label %cond.end2387, label %cond.false2369, !dbg !2543

cond.false2369:                                   ; preds = %if.end2361
  %shr2373 = lshr i32 2000, %conv2364, !dbg !2544
  %cmp2374 = icmp slt i32 %bcost.86, %shr2373, !dbg !2544
  br i1 %cmp2374, label %cond.end2387, label %cond.false2377, !dbg !2544

cond.false2377:                                   ; preds = %cond.false2369
  %shr2381 = lshr i32 4000, %conv2364, !dbg !2545
  %cmp2382 = icmp slt i32 %bcost.86, %shr2381, !dbg !2545
  %cond2384 = select i1 %cmp2382, i64 2, i64 3, !dbg !2545
  br label %cond.end2387, !dbg !2544

cond.end2387:                                     ; preds = %cond.false2377, %cond.false2369, %if.end2361
  %cond2388 = phi i64 [ 0, %if.end2361 ], [ %cond2384, %cond.false2377 ], [ 1, %cond.false2369 ], !dbg !2543
  call void @llvm.dbg.value(metadata i32 undef, metadata !1559, metadata !DIExpression()), !dbg !2493
  %mul2389 = mul nsw i32 %denom.1, 10, !dbg !2546
  %cmp2390 = icmp slt i32 %mvd.1, %mul2389, !dbg !2547
  br i1 %cmp2390, label %cond.end2405, label %cond.false2393, !dbg !2548

cond.false2393:                                   ; preds = %cond.end2387
  %mul2394 = mul nsw i32 %denom.1, 20, !dbg !2549
  %cmp2395 = icmp slt i32 %mvd.1, %mul2394, !dbg !2550
  br i1 %cmp2395, label %cond.end2405, label %cond.false2398, !dbg !2551

cond.false2398:                                   ; preds = %cond.false2393
  %mul2399 = mul nsw i32 %denom.1, 40, !dbg !2552
  %cmp2400 = icmp slt i32 %mvd.1, %mul2399, !dbg !2553
  %cond2402 = select i1 %cmp2400, i64 2, i64 3, !dbg !2554
  br label %cond.end2405, !dbg !2551

cond.end2405:                                     ; preds = %cond.false2398, %cond.false2393, %cond.end2387
  %cond2406 = phi i64 [ 0, %cond.end2387 ], [ %cond2402, %cond.false2398 ], [ 1, %cond.false2393 ], !dbg !2548
  call void @llvm.dbg.value(metadata i64 %cond2406, metadata !1560, metadata !DIExpression()), !dbg !2493
  %arrayidx2410 = getelementptr inbounds [4 x [4 x i8]], ptr @x264_me_search_ref.range_mul, i64 0, i64 %cond2406, i64 %cond2388, !dbg !2555
  %343 = load i8, ptr %arrayidx2410, align 1, !dbg !2555, !tbaa !1975
  %conv2411 = zext i8 %343 to i32, !dbg !2555
  %mul2412 = mul nsw i32 %4, %conv2411, !dbg !2556
  %shr2413 = ashr i32 %mul2412, 2, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %shr2413, metadata !1404, metadata !DIExpression()), !dbg !1843
  br label %if.end2414, !dbg !2558

if.end2414:                                       ; preds = %if.end2306, %cond.end2405
  %i_me_range.1 = phi i32 [ %shr2413, %cond.end2405 ], [ %4, %if.end2306 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i_me_range.1, metadata !1404, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %cross_start.2, metadata !1562, metadata !DIExpression()), !dbg !2559
  %sub2416 = sub nsw i32 %9, %bmx.236294, !dbg !2560
  %sub2417 = sub nsw i32 %bmx.236294, %7, !dbg !2560
  %344 = call i32 @llvm.smin.i32(i32 %sub2416, i32 %sub2417), !dbg !2560
  %cmp2426.not = icmp sgt i32 %i_me_range.1, %344, !dbg !2560
  br i1 %cmp2426.not, label %if.end2564, label %for.cond2429.preheader, !dbg !2561

for.cond2429.preheader:                           ; preds = %if.end2414
  %sub2430 = add nsw i32 %i_me_range.1, -2
  call void @llvm.dbg.value(metadata i32 %bmx.62, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.62, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.86, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %cross_start.2, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp24316441 = icmp slt i32 %cross_start.2, %sub2430, !dbg !2562
  br i1 %cmp24316441, label %for.body2433.lr.ph, label %if.end2564, !dbg !2563

for.body2433.lr.ph:                               ; preds = %for.cond2429.preheader
  %idx.ext2435 = sext i32 %bmx.236294 to i64
  %add.ptr2436 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2435
  %mul2437 = mul nsw i32 %bmy.236289, %3
  %idx.ext2438 = sext i32 %mul2437 to i64
  %add.ptr2439 = getelementptr inbounds i8, ptr %add.ptr2436, i64 %idx.ext2438
  %shl2475 = shl i32 %bmy.236289, 2
  %idxprom2476 = sext i32 %shl2475 to i64
  %arrayidx2477 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2476
  %345 = sext i32 %cross_start.2 to i64, !dbg !2563
  %346 = sext i32 %sub2430 to i64, !dbg !2563
  br label %for.body2433, !dbg !2563

for.body2433:                                     ; preds = %for.body2433.lr.ph, %if.end2560
  %indvars.iv6592 = phi i64 [ %345, %for.body2433.lr.ph ], [ %indvars.iv.next6593, %if.end2560 ]
  %bmx.636445 = phi i32 [ %bmx.62, %for.body2433.lr.ph ], [ %bmx.67, %if.end2560 ]
  %bmy.636444 = phi i32 [ %bmy.62, %for.body2433.lr.ph ], [ %bmy.67, %if.end2560 ]
  %bcost.876443 = phi i32 [ %bcost.86, %for.body2433.lr.ph ], [ %bcost.91, %if.end2560 ]
  call void @llvm.dbg.value(metadata i32 %bmx.636445, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.636444, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.876443, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6592, metadata !1562, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %add.ptr2439, metadata !1564, metadata !DIExpression()), !dbg !2564
  %347 = load ptr, ptr %arrayidx1051, align 8, !dbg !2565, !tbaa !1889
  %add.ptr2445 = getelementptr inbounds i8, ptr %add.ptr2439, i64 %indvars.iv6592, !dbg !2565
  %348 = sub nsw i64 0, %indvars.iv6592, !dbg !2565
  %add.ptr2451 = getelementptr inbounds i8, ptr %add.ptr2439, i64 %348, !dbg !2565
  %349 = add nsw i64 %indvars.iv6592, 2, !dbg !2565
  %add.ptr2457 = getelementptr inbounds i8, ptr %add.ptr2439, i64 %349, !dbg !2565
  %350 = sub nsw i64 -2, %indvars.iv6592, !dbg !2565
  %add.ptr2464 = getelementptr inbounds i8, ptr %add.ptr2439, i64 %350, !dbg !2565
  call void %347(ptr noundef %5, ptr noundef %add.ptr2445, ptr noundef %add.ptr2451, ptr noundef %add.ptr2457, ptr noundef %add.ptr2464, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2565
  %351 = trunc i64 %indvars.iv6592 to i32, !dbg !2565
  %352 = add i32 %bmx.236294, %351, !dbg !2565
  %shl2470 = shl i32 %352, 2, !dbg !2565
  %idxprom2471 = sext i32 %shl2470 to i64, !dbg !2565
  %arrayidx2472 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2471, !dbg !2565
  %353 = load i16, ptr %arrayidx2472, align 2, !dbg !2565, !tbaa !1912
  %conv2473 = zext i16 %353 to i32, !dbg !2565
  %354 = load i16, ptr %arrayidx2477, align 2, !dbg !2565, !tbaa !1912
  %conv2478 = zext i16 %354 to i32, !dbg !2565
  %add2479 = add nuw nsw i32 %conv2478, %conv2473, !dbg !2565
  %355 = load i32, ptr %costs, align 16, !dbg !2565, !tbaa !1859
  %add2481 = add nsw i32 %add2479, %355, !dbg !2565
  store i32 %add2481, ptr %costs, align 16, !dbg !2565, !tbaa !1859
  %356 = trunc i64 %indvars.iv6592 to i32, !dbg !2565
  %add2483 = sub i32 %bmx.236294, %356, !dbg !2565
  %shl2484 = shl i32 %add2483, 2, !dbg !2565
  %idxprom2485 = sext i32 %shl2484 to i64, !dbg !2565
  %arrayidx2486 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2485, !dbg !2565
  %357 = load i16, ptr %arrayidx2486, align 2, !dbg !2565, !tbaa !1912
  %conv2487 = zext i16 %357 to i32, !dbg !2565
  %add2493 = add nuw nsw i32 %conv2487, %conv2478, !dbg !2565
  %358 = load i32, ptr %arrayidx1093, align 4, !dbg !2565, !tbaa !1859
  %add2495 = add nsw i32 %add2493, %358, !dbg !2565
  store i32 %add2495, ptr %arrayidx1093, align 4, !dbg !2565, !tbaa !1859
  %359 = trunc i64 %349 to i32, !dbg !2565
  %360 = add i32 %bmx.236294, %359, !dbg !2565
  %shl2498 = shl i32 %360, 2, !dbg !2565
  %idxprom2499 = sext i32 %shl2498 to i64, !dbg !2565
  %arrayidx2500 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2499, !dbg !2565
  %361 = load i16, ptr %arrayidx2500, align 2, !dbg !2565, !tbaa !1912
  %conv2501 = zext i16 %361 to i32, !dbg !2565
  %add2507 = add nuw nsw i32 %conv2501, %conv2478, !dbg !2565
  %362 = load i32, ptr %arrayidx1106, align 8, !dbg !2565, !tbaa !1859
  %add2509 = add nsw i32 %add2507, %362, !dbg !2565
  store i32 %add2509, ptr %arrayidx1106, align 8, !dbg !2565, !tbaa !1859
  %363 = trunc i64 %350 to i32, !dbg !2565
  %364 = add i32 %bmx.236294, %363, !dbg !2565
  %shl2513 = shl i32 %364, 2, !dbg !2565
  %idxprom2514 = sext i32 %shl2513 to i64, !dbg !2565
  %arrayidx2515 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2514, !dbg !2565
  %365 = load i16, ptr %arrayidx2515, align 2, !dbg !2565, !tbaa !1912
  %conv2516 = zext i16 %365 to i32, !dbg !2565
  %add2522 = add nuw nsw i32 %conv2516, %conv2478, !dbg !2565
  %366 = load i32, ptr %arrayidx1119, align 4, !dbg !2565, !tbaa !1859
  %add2524 = add nsw i32 %add2522, %366, !dbg !2565
  store i32 %add2524, ptr %arrayidx1119, align 4, !dbg !2565, !tbaa !1859
  %cmp2526 = icmp slt i32 %add2481, %bcost.876443, !dbg !2566
  br i1 %cmp2526, label %if.then2528, label %if.end2532, !dbg !2565

if.then2528:                                      ; preds = %for.body2433
  call void @llvm.dbg.value(metadata i32 %add2481, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv6592, i64 %idx.ext2435), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2532, !dbg !2568

if.end2532:                                       ; preds = %if.then2528, %for.body2433
  %bcost.88 = phi i32 [ %add2481, %if.then2528 ], [ %bcost.876443, %for.body2433 ], !dbg !2245
  %bmy.64 = phi i32 [ %bmy.236289, %if.then2528 ], [ %bmy.636444, %for.body2433 ], !dbg !2245
  %bmx.64 = phi i32 [ %352, %if.then2528 ], [ %bmx.636445, %for.body2433 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.64, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.64, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.88, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2534 = icmp slt i32 %add2495, %bcost.88, !dbg !2570
  br i1 %cmp2534, label %if.then2536, label %if.end2541, !dbg !2565

if.then2536:                                      ; preds = %if.end2532
  call void @llvm.dbg.value(metadata i32 %add2495, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2483, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2541, !dbg !2572

if.end2541:                                       ; preds = %if.then2536, %if.end2532
  %bcost.89 = phi i32 [ %add2495, %if.then2536 ], [ %bcost.88, %if.end2532 ], !dbg !2564
  %bmy.65 = phi i32 [ %bmy.236289, %if.then2536 ], [ %bmy.64, %if.end2532 ], !dbg !2564
  %bmx.65 = phi i32 [ %add2483, %if.then2536 ], [ %bmx.64, %if.end2532 ], !dbg !2564
  call void @llvm.dbg.value(metadata i32 %bmx.65, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.65, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.89, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2543 = icmp slt i32 %add2509, %bcost.89, !dbg !2574
  br i1 %cmp2543, label %if.then2545, label %if.end2550, !dbg !2565

if.then2545:                                      ; preds = %if.end2541
  call void @llvm.dbg.value(metadata i32 %add2509, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %349, i64 %idx.ext2435), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2550, !dbg !2576

if.end2550:                                       ; preds = %if.then2545, %if.end2541
  %bcost.90 = phi i32 [ %add2509, %if.then2545 ], [ %bcost.89, %if.end2541 ], !dbg !2564
  %bmy.66 = phi i32 [ %bmy.236289, %if.then2545 ], [ %bmy.65, %if.end2541 ], !dbg !2564
  %bmx.66 = phi i32 [ %360, %if.then2545 ], [ %bmx.65, %if.end2541 ], !dbg !2564
  call void @llvm.dbg.value(metadata i32 %bmx.66, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.66, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.90, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2552 = icmp slt i32 %add2524, %bcost.90, !dbg !2578
  br i1 %cmp2552, label %if.then2554, label %if.end2560, !dbg !2565

if.then2554:                                      ; preds = %if.end2550
  call void @llvm.dbg.value(metadata i32 %add2524, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i64 %idx.ext2435), metadata !1405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2560, !dbg !2580

if.end2560:                                       ; preds = %if.then2554, %if.end2550
  %bcost.91 = phi i32 [ %add2524, %if.then2554 ], [ %bcost.90, %if.end2550 ], !dbg !2564
  %bmy.67 = phi i32 [ %bmy.236289, %if.then2554 ], [ %bmy.66, %if.end2550 ], !dbg !2564
  %bmx.67 = phi i32 [ %364, %if.then2554 ], [ %bmx.66, %if.end2550 ], !dbg !2564
  call void @llvm.dbg.value(metadata i32 %bmx.67, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.67, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.91, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6593 = add i64 %indvars.iv6592, 4, !dbg !2562
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6593, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp2431 = icmp slt i64 %indvars.iv.next6593, %346, !dbg !2562
  br i1 %cmp2431, label %for.body2433, label %if.end2564.loopexit, !dbg !2563, !llvm.loop !2582

if.end2564.loopexit:                              ; preds = %if.end2560
  %367 = trunc i64 %indvars.iv.next6593 to i32, !dbg !2583
  br label %if.end2564, !dbg !2583

if.end2564:                                       ; preds = %if.end2564.loopexit, %for.cond2429.preheader, %if.end2414
  %i2415.1 = phi i32 [ %cross_start.2, %if.end2414 ], [ %cross_start.2, %for.cond2429.preheader ], [ %367, %if.end2564.loopexit ], !dbg !2561
  %bcost.92 = phi i32 [ %bcost.86, %if.end2414 ], [ %bcost.86, %for.cond2429.preheader ], [ %bcost.91, %if.end2564.loopexit ], !dbg !2473
  %bmy.68 = phi i32 [ %bmy.62, %if.end2414 ], [ %bmy.62, %for.cond2429.preheader ], [ %bmy.67, %if.end2564.loopexit ], !dbg !2473
  %bmx.68 = phi i32 [ %bmx.62, %if.end2414 ], [ %bmx.62, %for.cond2429.preheader ], [ %bmx.67, %if.end2564.loopexit ], !dbg !2473
  call void @llvm.dbg.value(metadata i32 %bmx.68, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.68, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.92, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i2415.1, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp25666450 = icmp slt i32 %i2415.1, %i_me_range.1, !dbg !2583
  br i1 %cmp25666450, label %for.body2568.lr.ph, label %for.end2635, !dbg !2584

for.body2568.lr.ph:                               ; preds = %if.end2564
  %arrayidx2577 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %mul2578 = mul nsw i32 %bmy.236289, %3
  %shl2589 = shl i32 %bmy.236289, 2
  %idxprom2590 = sext i32 %shl2589 to i64
  %arrayidx2591 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2590
  %368 = sext i32 %i2415.1 to i64, !dbg !2584
  %369 = sext i32 %bmx.236294 to i64, !dbg !2584
  %370 = sext i32 %9 to i64, !dbg !2584
  %371 = sext i32 %mul2578 to i64, !dbg !2584
  %372 = sext i32 %7 to i64, !dbg !2584
  %373 = sext i32 %i_me_range.1 to i64, !dbg !2584
  br label %for.body2568, !dbg !2584

for.body2568:                                     ; preds = %for.body2568.lr.ph, %for.inc2633
  %indvars.iv6601 = phi i64 [ %368, %for.body2568.lr.ph ], [ %indvars.iv.next6602, %for.inc2633 ]
  %bmx.696454 = phi i32 [ %bmx.68, %for.body2568.lr.ph ], [ %bmx.73, %for.inc2633 ]
  %bmy.696453 = phi i32 [ %bmy.68, %for.body2568.lr.ph ], [ %bmy.73, %for.inc2633 ]
  %bcost.936452 = phi i32 [ %bcost.92, %for.body2568.lr.ph ], [ %bcost.97, %for.inc2633 ]
  call void @llvm.dbg.value(metadata i32 %bmx.696454, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.696453, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.936452, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6601, metadata !1562, metadata !DIExpression()), !dbg !2559
  %374 = add nsw i64 %indvars.iv6601, %369, !dbg !2585
  %cmp2570.not = icmp sgt i64 %374, %370, !dbg !2585
  br i1 %cmp2570.not, label %if.end2600, label %if.then2572, !dbg !2586

if.then2572:                                      ; preds = %for.body2568
  %375 = load ptr, ptr %arrayidx2577, align 8, !dbg !2587, !tbaa !1889
  %376 = add nsw i64 %374, %371, !dbg !2587
  %arrayidx2582 = getelementptr inbounds i8, ptr %6, i64 %376, !dbg !2587
  %call2583 = call i32 %375(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2582, i32 noundef %3) #5, !dbg !2587
  %377 = trunc i64 %374 to i32, !dbg !2587
  %shl2585 = shl i32 %377, 2, !dbg !2587
  %idxprom2586 = sext i32 %shl2585 to i64, !dbg !2587
  %arrayidx2587 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2586, !dbg !2587
  %378 = load i16, ptr %arrayidx2587, align 2, !dbg !2587, !tbaa !1912
  %conv2588 = zext i16 %378 to i32, !dbg !2587
  %379 = load i16, ptr %arrayidx2591, align 2, !dbg !2587, !tbaa !1912
  %conv2592 = zext i16 %379 to i32, !dbg !2587
  %add2593 = add i32 %call2583, %conv2588, !dbg !2587
  %add2594 = add i32 %add2593, %conv2592, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %add2594, metadata !1569, metadata !DIExpression()), !dbg !2588
  %cmp2595 = icmp slt i32 %add2594, %bcost.936452, !dbg !2589
  br i1 %cmp2595, label %if.then2597, label %if.end2600, !dbg !2587

if.then2597:                                      ; preds = %if.then2572
  call void @llvm.dbg.value(metadata i32 %add2594, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %374, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2600, !dbg !2591

if.end2600:                                       ; preds = %if.then2572, %if.then2597, %for.body2568
  %bcost.95 = phi i32 [ %bcost.936452, %for.body2568 ], [ %add2594, %if.then2597 ], [ %bcost.936452, %if.then2572 ], !dbg !2245
  %bmy.71 = phi i32 [ %bmy.696453, %for.body2568 ], [ %bmy.236289, %if.then2597 ], [ %bmy.696453, %if.then2572 ], !dbg !2245
  %bmx.71 = phi i32 [ %bmx.696454, %for.body2568 ], [ %377, %if.then2597 ], [ %bmx.696454, %if.then2572 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.71, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.71, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.95, metadata !1407, metadata !DIExpression()), !dbg !1843
  %380 = sub nsw i64 %369, %indvars.iv6601, !dbg !2593
  %cmp2602.not = icmp slt i64 %380, %372, !dbg !2593
  br i1 %cmp2602.not, label %for.inc2633, label %if.then2604, !dbg !2586

if.then2604:                                      ; preds = %if.end2600
  %381 = load ptr, ptr %arrayidx2577, align 8, !dbg !2594, !tbaa !1889
  %382 = add nsw i64 %380, %371, !dbg !2594
  %arrayidx2614 = getelementptr inbounds i8, ptr %6, i64 %382, !dbg !2594
  %call2615 = call i32 %381(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2614, i32 noundef %3) #5, !dbg !2594
  %383 = trunc i64 %380 to i32, !dbg !2594
  %shl2617 = shl i32 %383, 2, !dbg !2594
  %idxprom2618 = sext i32 %shl2617 to i64, !dbg !2594
  %arrayidx2619 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2618, !dbg !2594
  %384 = load i16, ptr %arrayidx2619, align 2, !dbg !2594, !tbaa !1912
  %conv2620 = zext i16 %384 to i32, !dbg !2594
  %385 = load i16, ptr %arrayidx2591, align 2, !dbg !2594, !tbaa !1912
  %conv2624 = zext i16 %385 to i32, !dbg !2594
  %add2625 = add i32 %call2615, %conv2620, !dbg !2594
  %add2626 = add i32 %add2625, %conv2624, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %add2626, metadata !1575, metadata !DIExpression()), !dbg !2595
  %cmp2627 = icmp slt i32 %add2626, %bcost.95, !dbg !2596
  br i1 %cmp2627, label %if.then2629, label %for.inc2633, !dbg !2594

if.then2629:                                      ; preds = %if.then2604
  call void @llvm.dbg.value(metadata i32 %add2626, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %380, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %for.inc2633, !dbg !2598

for.inc2633:                                      ; preds = %if.then2604, %if.then2629, %if.end2600
  %bcost.97 = phi i32 [ %bcost.95, %if.end2600 ], [ %add2626, %if.then2629 ], [ %bcost.95, %if.then2604 ], !dbg !2600
  %bmy.73 = phi i32 [ %bmy.71, %if.end2600 ], [ %bmy.236289, %if.then2629 ], [ %bmy.71, %if.then2604 ], !dbg !2600
  %bmx.73 = phi i32 [ %bmx.71, %if.end2600 ], [ %383, %if.then2629 ], [ %bmx.71, %if.then2604 ], !dbg !2600
  call void @llvm.dbg.value(metadata i32 %bmx.73, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.73, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.97, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6602 = add i64 %indvars.iv6601, 2, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6602, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp2566 = icmp slt i64 %indvars.iv.next6602, %373, !dbg !2583
  br i1 %cmp2566, label %for.body2568, label %for.end2635, !dbg !2584, !llvm.loop !2601

for.end2635:                                      ; preds = %for.inc2633, %if.end2564
  %bcost.93.lcssa = phi i32 [ %bcost.92, %if.end2564 ], [ %bcost.97, %for.inc2633 ], !dbg !2245
  %bmy.69.lcssa = phi i32 [ %bmy.68, %if.end2564 ], [ %bmy.73, %for.inc2633 ], !dbg !2245
  %bmx.69.lcssa = phi i32 [ %bmx.68, %if.end2564 ], [ %bmx.73, %for.inc2633 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %cross_start.2, metadata !1562, metadata !DIExpression()), !dbg !2559
  %shr2636 = ashr i32 %i_me_range.1, 1, !dbg !2602
  %sub2637 = sub nsw i32 %10, %bmy.236289, !dbg !2602
  %sub2638 = sub nsw i32 %bmy.236289, %8, !dbg !2602
  %386 = call i32 @llvm.smin.i32(i32 %sub2637, i32 %sub2638), !dbg !2602
  %cmp2647.not = icmp sgt i32 %shr2636, %386, !dbg !2602
  br i1 %cmp2647.not, label %if.end2782, label %for.cond2650.preheader, !dbg !2561

for.cond2650.preheader:                           ; preds = %for.end2635
  %sub2652 = add nsw i32 %shr2636, -2
  call void @llvm.dbg.value(metadata i32 %bmx.69.lcssa, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.69.lcssa, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.93.lcssa, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %cross_start.2, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp26536458 = icmp slt i32 %cross_start.2, %sub2652, !dbg !2603
  br i1 %cmp26536458, label %for.body2655.lr.ph, label %if.end2782, !dbg !2604

for.body2655.lr.ph:                               ; preds = %for.cond2650.preheader
  %idx.ext2657 = sext i32 %bmx.236294 to i64
  %add.ptr2658 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2657
  %mul2659 = mul nsw i32 %bmy.236289, %3
  %idx.ext2660 = sext i32 %mul2659 to i64
  %add.ptr2661 = getelementptr inbounds i8, ptr %add.ptr2658, i64 %idx.ext2660
  %shl2688 = shl i32 %bmx.236294, 2
  %idxprom2689 = sext i32 %shl2688 to i64
  %arrayidx2690 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2689
  %387 = sext i32 %cross_start.2 to i64, !dbg !2604
  %388 = sext i32 %sub2652 to i64, !dbg !2604
  br label %for.body2655, !dbg !2604

for.body2655:                                     ; preds = %for.body2655.lr.ph, %if.end2778
  %indvars.iv6608 = phi i64 [ %387, %for.body2655.lr.ph ], [ %indvars.iv.next6609, %if.end2778 ]
  %bmx.746462 = phi i32 [ %bmx.69.lcssa, %for.body2655.lr.ph ], [ %bmx.78, %if.end2778 ]
  %bmy.746461 = phi i32 [ %bmy.69.lcssa, %for.body2655.lr.ph ], [ %bmy.78, %if.end2778 ]
  %bcost.986460 = phi i32 [ %bcost.93.lcssa, %for.body2655.lr.ph ], [ %bcost.102, %if.end2778 ]
  call void @llvm.dbg.value(metadata i32 %bmx.746462, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.746461, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.986460, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6608, metadata !1562, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %add.ptr2661, metadata !1578, metadata !DIExpression()), !dbg !2605
  %389 = load ptr, ptr %arrayidx1051, align 8, !dbg !2606, !tbaa !1889
  %390 = mul nsw i64 %indvars.iv6608, %idx.ext1058, !dbg !2606
  %add.ptr2669 = getelementptr inbounds i8, ptr %add.ptr2661, i64 %390, !dbg !2606
  %.neg6653 = mul i64 %390, -4294967296, !dbg !2606
  %idx.ext2673 = ashr exact i64 %.neg6653, 32, !dbg !2606
  %add.ptr2674 = getelementptr inbounds i8, ptr %add.ptr2661, i64 %idx.ext2673, !dbg !2606
  %391 = add nsw i64 %indvars.iv6608, 2, !dbg !2606
  %392 = mul nsw i64 %391, %idx.ext1058, !dbg !2606
  %add.ptr2679 = getelementptr inbounds i8, ptr %add.ptr2661, i64 %392, !dbg !2606
  %393 = sub nsw i64 -2, %indvars.iv6608, !dbg !2606
  %394 = mul nsw i64 %393, %idx.ext1058, !dbg !2606
  %add.ptr2685 = getelementptr inbounds i8, ptr %add.ptr2661, i64 %394, !dbg !2606
  call void %389(ptr noundef %5, ptr noundef %add.ptr2669, ptr noundef %add.ptr2674, ptr noundef %add.ptr2679, ptr noundef %add.ptr2685, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2606
  %395 = load i16, ptr %arrayidx2690, align 2, !dbg !2606, !tbaa !1912
  %conv2691 = zext i16 %395 to i32, !dbg !2606
  %396 = trunc i64 %indvars.iv6608 to i32, !dbg !2606
  %397 = add i32 %bmy.236289, %396, !dbg !2606
  %shl2693 = shl i32 %397, 2, !dbg !2606
  %idxprom2694 = sext i32 %shl2693 to i64, !dbg !2606
  %arrayidx2695 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2694, !dbg !2606
  %398 = load i16, ptr %arrayidx2695, align 2, !dbg !2606, !tbaa !1912
  %conv2696 = zext i16 %398 to i32, !dbg !2606
  %add2697 = add nuw nsw i32 %conv2696, %conv2691, !dbg !2606
  %399 = load i32, ptr %costs, align 16, !dbg !2606, !tbaa !1859
  %add2699 = add nsw i32 %add2697, %399, !dbg !2606
  store i32 %add2699, ptr %costs, align 16, !dbg !2606, !tbaa !1859
  %400 = trunc i64 %indvars.iv6608 to i32, !dbg !2606
  %add2706 = sub i32 %bmy.236289, %400, !dbg !2606
  %shl2707 = shl i32 %add2706, 2, !dbg !2606
  %idxprom2708 = sext i32 %shl2707 to i64, !dbg !2606
  %arrayidx2709 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2708, !dbg !2606
  %401 = load i16, ptr %arrayidx2709, align 2, !dbg !2606, !tbaa !1912
  %conv2710 = zext i16 %401 to i32, !dbg !2606
  %add2711 = add nuw nsw i32 %conv2710, %conv2691, !dbg !2606
  %402 = load i32, ptr %arrayidx1093, align 4, !dbg !2606, !tbaa !1859
  %add2713 = add nsw i32 %add2711, %402, !dbg !2606
  store i32 %add2713, ptr %arrayidx1093, align 4, !dbg !2606, !tbaa !1859
  %403 = trunc i64 %391 to i32, !dbg !2606
  %404 = add i32 %bmy.236289, %403, !dbg !2606
  %shl2721 = shl i32 %404, 2, !dbg !2606
  %idxprom2722 = sext i32 %shl2721 to i64, !dbg !2606
  %arrayidx2723 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2722, !dbg !2606
  %405 = load i16, ptr %arrayidx2723, align 2, !dbg !2606, !tbaa !1912
  %conv2724 = zext i16 %405 to i32, !dbg !2606
  %add2725 = add nuw nsw i32 %conv2724, %conv2691, !dbg !2606
  %406 = load i32, ptr %arrayidx1106, align 8, !dbg !2606, !tbaa !1859
  %add2727 = add nsw i32 %add2725, %406, !dbg !2606
  store i32 %add2727, ptr %arrayidx1106, align 8, !dbg !2606, !tbaa !1859
  %407 = trunc i64 %393 to i32, !dbg !2606
  %408 = add i32 %bmy.236289, %407, !dbg !2606
  %shl2736 = shl i32 %408, 2, !dbg !2606
  %idxprom2737 = sext i32 %shl2736 to i64, !dbg !2606
  %arrayidx2738 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2737, !dbg !2606
  %409 = load i16, ptr %arrayidx2738, align 2, !dbg !2606, !tbaa !1912
  %conv2739 = zext i16 %409 to i32, !dbg !2606
  %add2740 = add nuw nsw i32 %conv2739, %conv2691, !dbg !2606
  %410 = load i32, ptr %arrayidx1119, align 4, !dbg !2606, !tbaa !1859
  %add2742 = add nsw i32 %add2740, %410, !dbg !2606
  store i32 %add2742, ptr %arrayidx1119, align 4, !dbg !2606, !tbaa !1859
  %cmp2744 = icmp slt i32 %add2699, %bcost.986460, !dbg !2607
  br i1 %cmp2744, label %if.then2746, label %if.end2750, !dbg !2606

if.then2746:                                      ; preds = %for.body2655
  call void @llvm.dbg.value(metadata i32 %add2699, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv6608, i32 %bmy.236289), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end2750, !dbg !2609

if.end2750:                                       ; preds = %if.then2746, %for.body2655
  %bcost.99 = phi i32 [ %add2699, %if.then2746 ], [ %bcost.986460, %for.body2655 ], !dbg !2245
  %bmy.75 = phi i32 [ %397, %if.then2746 ], [ %bmy.746461, %for.body2655 ], !dbg !2245
  %bmx.75 = phi i32 [ %bmx.236294, %if.then2746 ], [ %bmx.746462, %for.body2655 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.75, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.75, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.99, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2752 = icmp slt i32 %add2713, %bcost.99, !dbg !2611
  br i1 %cmp2752, label %if.then2754, label %if.end2759, !dbg !2606

if.then2754:                                      ; preds = %if.end2750
  call void @llvm.dbg.value(metadata i32 %add2713, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2706, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2759, !dbg !2613

if.end2759:                                       ; preds = %if.then2754, %if.end2750
  %bcost.100 = phi i32 [ %add2713, %if.then2754 ], [ %bcost.99, %if.end2750 ], !dbg !2605
  %bmy.76 = phi i32 [ %add2706, %if.then2754 ], [ %bmy.75, %if.end2750 ], !dbg !2605
  %bmx.76 = phi i32 [ %bmx.236294, %if.then2754 ], [ %bmx.75, %if.end2750 ], !dbg !2605
  call void @llvm.dbg.value(metadata i32 %bmx.76, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.76, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.100, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2761 = icmp slt i32 %add2727, %bcost.100, !dbg !2615
  br i1 %cmp2761, label %if.then2763, label %if.end2768, !dbg !2606

if.then2763:                                      ; preds = %if.end2759
  call void @llvm.dbg.value(metadata i32 %add2727, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %391, i32 %bmy.236289), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end2768, !dbg !2617

if.end2768:                                       ; preds = %if.then2763, %if.end2759
  %bcost.101 = phi i32 [ %add2727, %if.then2763 ], [ %bcost.100, %if.end2759 ], !dbg !2605
  %bmy.77 = phi i32 [ %404, %if.then2763 ], [ %bmy.76, %if.end2759 ], !dbg !2605
  %bmx.77 = phi i32 [ %bmx.236294, %if.then2763 ], [ %bmx.76, %if.end2759 ], !dbg !2605
  call void @llvm.dbg.value(metadata i32 %bmx.77, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.77, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.101, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2770 = icmp slt i32 %add2742, %bcost.101, !dbg !2619
  br i1 %cmp2770, label %if.then2772, label %if.end2778, !dbg !2606

if.then2772:                                      ; preds = %if.end2768
  call void @llvm.dbg.value(metadata i32 %add2742, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata !DIArgList(i64 %393, i32 %bmy.236289), metadata !1406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_plus, DW_OP_stack_value)), !dbg !1843
  br label %if.end2778, !dbg !2621

if.end2778:                                       ; preds = %if.then2772, %if.end2768
  %bcost.102 = phi i32 [ %add2742, %if.then2772 ], [ %bcost.101, %if.end2768 ], !dbg !2605
  %bmy.78 = phi i32 [ %408, %if.then2772 ], [ %bmy.77, %if.end2768 ], !dbg !2605
  %bmx.78 = phi i32 [ %bmx.236294, %if.then2772 ], [ %bmx.77, %if.end2768 ], !dbg !2605
  call void @llvm.dbg.value(metadata i32 %bmx.78, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.78, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.102, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6609 = add nsw i64 %indvars.iv6608, 4, !dbg !2603
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6609, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp2653 = icmp slt i64 %indvars.iv.next6609, %388, !dbg !2603
  br i1 %cmp2653, label %for.body2655, label %if.end2782.loopexit, !dbg !2604, !llvm.loop !2623

if.end2782.loopexit:                              ; preds = %if.end2778
  %411 = trunc i64 %indvars.iv.next6609 to i32, !dbg !2624
  br label %if.end2782, !dbg !2624

if.end2782:                                       ; preds = %if.end2782.loopexit, %for.cond2650.preheader, %for.end2635
  %i2415.4 = phi i32 [ %cross_start.2, %for.end2635 ], [ %cross_start.2, %for.cond2650.preheader ], [ %411, %if.end2782.loopexit ], !dbg !2561
  %bcost.103 = phi i32 [ %bcost.93.lcssa, %for.end2635 ], [ %bcost.93.lcssa, %for.cond2650.preheader ], [ %bcost.102, %if.end2782.loopexit ], !dbg !2473
  %bmy.79 = phi i32 [ %bmy.69.lcssa, %for.end2635 ], [ %bmy.69.lcssa, %for.cond2650.preheader ], [ %bmy.78, %if.end2782.loopexit ], !dbg !2473
  %bmx.79 = phi i32 [ %bmx.69.lcssa, %for.end2635 ], [ %bmx.69.lcssa, %for.cond2650.preheader ], [ %bmx.78, %if.end2782.loopexit ], !dbg !2473
  call void @llvm.dbg.value(metadata i32 %bmx.79, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.79, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.103, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i2415.4, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp27856467 = icmp slt i32 %i2415.4, %shr2636, !dbg !2624
  br i1 %cmp27856467, label %for.body2787.lr.ph, label %if.end2782.for.end2854_crit_edge, !dbg !2625

if.end2782.for.end2854_crit_edge:                 ; preds = %if.end2782
  %.pre = sext i32 %bmx.236294 to i64, !dbg !2626
  br label %for.end2854, !dbg !2625

for.body2787.lr.ph:                               ; preds = %if.end2782
  %arrayidx2796 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %shl2803 = shl i32 %bmx.236294, 2
  %idxprom2804 = sext i32 %shl2803 to i64
  %arrayidx2805 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2804
  %412 = sext i32 %i2415.4 to i64, !dbg !2625
  %413 = sext i32 %bmy.236289 to i64, !dbg !2625
  %414 = sext i32 %10 to i64, !dbg !2625
  %415 = sext i32 %bmx.236294 to i64, !dbg !2625
  %416 = sext i32 %8 to i64, !dbg !2625
  %417 = sext i32 %shr2636 to i64, !dbg !2625
  br label %for.body2787, !dbg !2625

for.body2787:                                     ; preds = %for.body2787.lr.ph, %for.inc2852
  %indvars.iv6619 = phi i64 [ %412, %for.body2787.lr.ph ], [ %indvars.iv.next6620, %for.inc2852 ]
  %bmx.806471 = phi i32 [ %bmx.79, %for.body2787.lr.ph ], [ %bmx.84, %for.inc2852 ]
  %bmy.806470 = phi i32 [ %bmy.79, %for.body2787.lr.ph ], [ %bmy.84, %for.inc2852 ]
  %bcost.1046469 = phi i32 [ %bcost.103, %for.body2787.lr.ph ], [ %bcost.108, %for.inc2852 ]
  call void @llvm.dbg.value(metadata i32 %bmx.806471, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.806470, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1046469, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6619, metadata !1562, metadata !DIExpression()), !dbg !2559
  %418 = add nsw i64 %indvars.iv6619, %413, !dbg !2627
  %cmp2789.not = icmp sgt i64 %418, %414, !dbg !2627
  br i1 %cmp2789.not, label %if.end2819, label %if.then2791, !dbg !2628

if.then2791:                                      ; preds = %for.body2787
  %419 = load ptr, ptr %arrayidx2796, align 8, !dbg !2629, !tbaa !1889
  %420 = mul nsw i64 %418, %idx.ext1058, !dbg !2629
  %421 = add nsw i64 %420, %415, !dbg !2629
  %arrayidx2801 = getelementptr inbounds i8, ptr %6, i64 %421, !dbg !2629
  %call2802 = call i32 %419(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2801, i32 noundef %3) #5, !dbg !2629
  %422 = load i16, ptr %arrayidx2805, align 2, !dbg !2629, !tbaa !1912
  %conv2806 = zext i16 %422 to i32, !dbg !2629
  %423 = trunc i64 %418 to i32, !dbg !2629
  %shl2808 = shl i32 %423, 2, !dbg !2629
  %idxprom2809 = sext i32 %shl2808 to i64, !dbg !2629
  %arrayidx2810 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2809, !dbg !2629
  %424 = load i16, ptr %arrayidx2810, align 2, !dbg !2629, !tbaa !1912
  %conv2811 = zext i16 %424 to i32, !dbg !2629
  %add2812 = add i32 %call2802, %conv2806, !dbg !2629
  %add2813 = add i32 %add2812, %conv2811, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %add2813, metadata !1583, metadata !DIExpression()), !dbg !2630
  %cmp2814 = icmp slt i32 %add2813, %bcost.1046469, !dbg !2631
  br i1 %cmp2814, label %if.then2816, label %if.end2819, !dbg !2629

if.then2816:                                      ; preds = %if.then2791
  call void @llvm.dbg.value(metadata i32 %add2813, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %418, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2819, !dbg !2633

if.end2819:                                       ; preds = %if.then2791, %if.then2816, %for.body2787
  %bcost.106 = phi i32 [ %bcost.1046469, %for.body2787 ], [ %add2813, %if.then2816 ], [ %bcost.1046469, %if.then2791 ], !dbg !2245
  %bmy.82 = phi i32 [ %bmy.806470, %for.body2787 ], [ %423, %if.then2816 ], [ %bmy.806470, %if.then2791 ], !dbg !2245
  %bmx.82 = phi i32 [ %bmx.806471, %for.body2787 ], [ %bmx.236294, %if.then2816 ], [ %bmx.806471, %if.then2791 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.82, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.82, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.106, metadata !1407, metadata !DIExpression()), !dbg !1843
  %425 = sub nsw i64 %413, %indvars.iv6619, !dbg !2635
  %cmp2821.not = icmp slt i64 %425, %416, !dbg !2635
  br i1 %cmp2821.not, label %for.inc2852, label %if.then2823, !dbg !2628

if.then2823:                                      ; preds = %if.end2819
  %426 = load ptr, ptr %arrayidx2796, align 8, !dbg !2636, !tbaa !1889
  %427 = mul nsw i64 %425, %idx.ext1058, !dbg !2636
  %428 = add nsw i64 %427, %415, !dbg !2636
  %arrayidx2833 = getelementptr inbounds i8, ptr %6, i64 %428, !dbg !2636
  %call2834 = call i32 %426(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx2833, i32 noundef %3) #5, !dbg !2636
  %429 = load i16, ptr %arrayidx2805, align 2, !dbg !2636, !tbaa !1912
  %conv2838 = zext i16 %429 to i32, !dbg !2636
  %430 = trunc i64 %425 to i32, !dbg !2636
  %shl2840 = shl i32 %430, 2, !dbg !2636
  %idxprom2841 = sext i32 %shl2840 to i64, !dbg !2636
  %arrayidx2842 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2841, !dbg !2636
  %431 = load i16, ptr %arrayidx2842, align 2, !dbg !2636, !tbaa !1912
  %conv2843 = zext i16 %431 to i32, !dbg !2636
  %add2844 = add i32 %call2834, %conv2838, !dbg !2636
  %add2845 = add i32 %add2844, %conv2843, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %add2845, metadata !1589, metadata !DIExpression()), !dbg !2637
  %cmp2846 = icmp slt i32 %add2845, %bcost.106, !dbg !2638
  br i1 %cmp2846, label %if.then2848, label %for.inc2852, !dbg !2636

if.then2848:                                      ; preds = %if.then2823
  call void @llvm.dbg.value(metadata i32 %add2845, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.23, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %425, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %for.inc2852, !dbg !2640

for.inc2852:                                      ; preds = %if.then2823, %if.then2848, %if.end2819
  %bcost.108 = phi i32 [ %bcost.106, %if.end2819 ], [ %add2845, %if.then2848 ], [ %bcost.106, %if.then2823 ], !dbg !2642
  %bmy.84 = phi i32 [ %bmy.82, %if.end2819 ], [ %430, %if.then2848 ], [ %bmy.82, %if.then2823 ], !dbg !2642
  %bmx.84 = phi i32 [ %bmx.82, %if.end2819 ], [ %bmx.236294, %if.then2848 ], [ %bmx.82, %if.then2823 ], !dbg !2642
  call void @llvm.dbg.value(metadata i32 %bmx.84, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.84, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.108, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6620 = add nsw i64 %indvars.iv6619, 2, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6620, metadata !1562, metadata !DIExpression()), !dbg !2559
  %cmp2785 = icmp slt i64 %indvars.iv.next6620, %417, !dbg !2624
  br i1 %cmp2785, label %for.body2787, label %for.end2854, !dbg !2625, !llvm.loop !2643

for.end2854:                                      ; preds = %for.inc2852, %if.end2782.for.end2854_crit_edge
  %idx.ext2856.pre-phi = phi i64 [ %.pre, %if.end2782.for.end2854_crit_edge ], [ %415, %for.inc2852 ], !dbg !2626
  %bcost.104.lcssa = phi i32 [ %bcost.103, %if.end2782.for.end2854_crit_edge ], [ %bcost.108, %for.inc2852 ], !dbg !2245
  %bmy.80.lcssa = phi i32 [ %bmy.79, %if.end2782.for.end2854_crit_edge ], [ %bmy.84, %for.inc2852 ], !dbg !2245
  %bmx.80.lcssa = phi i32 [ %bmx.79, %if.end2782.for.end2854_crit_edge ], [ %bmx.84, %for.inc2852 ], !dbg !2245
  %add.ptr2857 = getelementptr inbounds i8, ptr %6, i64 %idx.ext2856.pre-phi, !dbg !2626
  %mul2858 = mul nsw i32 %bmy.236289, %3, !dbg !2626
  %idx.ext2859 = sext i32 %mul2858 to i64, !dbg !2626
  %add.ptr2860 = getelementptr inbounds i8, ptr %add.ptr2857, i64 %idx.ext2859, !dbg !2626
  call void @llvm.dbg.value(metadata ptr %add.ptr2860, metadata !1592, metadata !DIExpression()), !dbg !2644
  %432 = load ptr, ptr %arrayidx1051, align 8, !dbg !2626, !tbaa !1889
  %add.ptr2865 = getelementptr inbounds i8, ptr %add.ptr2860, i64 -2, !dbg !2626
  %mul2866 = mul nsw i32 %3, -2, !dbg !2626
  %idx.ext2867 = sext i32 %mul2866 to i64, !dbg !2626
  %add.ptr2868 = getelementptr inbounds i8, ptr %add.ptr2865, i64 %idx.ext2867, !dbg !2626
  %mul2870 = shl nsw i32 %3, 1, !dbg !2626
  %idx.ext2871 = sext i32 %mul2870 to i64, !dbg !2626
  %add.ptr2872 = getelementptr inbounds i8, ptr %add.ptr2865, i64 %idx.ext2871, !dbg !2626
  %add.ptr2873 = getelementptr inbounds i8, ptr %add.ptr2860, i64 2, !dbg !2626
  %add.ptr2876 = getelementptr inbounds i8, ptr %add.ptr2873, i64 %idx.ext2867, !dbg !2626
  %add.ptr2880 = getelementptr inbounds i8, ptr %add.ptr2873, i64 %idx.ext2871, !dbg !2626
  call void %432(ptr noundef %5, ptr noundef nonnull %add.ptr2868, ptr noundef nonnull %add.ptr2872, ptr noundef nonnull %add.ptr2876, ptr noundef nonnull %add.ptr2880, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2626
  %add2882 = add nsw i32 %bmx.236294, -2, !dbg !2626
  %shl2883 = shl i32 %add2882, 2, !dbg !2626
  %idxprom2884 = sext i32 %shl2883 to i64, !dbg !2626
  %arrayidx2885 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2884, !dbg !2626
  %433 = load i16, ptr %arrayidx2885, align 2, !dbg !2626, !tbaa !1912
  %conv2886 = zext i16 %433 to i32, !dbg !2626
  %add2887 = add nsw i32 %bmy.236289, -2, !dbg !2626
  %shl2888 = shl i32 %add2887, 2, !dbg !2626
  %idxprom2889 = sext i32 %shl2888 to i64, !dbg !2626
  %arrayidx2890 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2889, !dbg !2626
  %434 = load i16, ptr %arrayidx2890, align 2, !dbg !2626, !tbaa !1912
  %conv2891 = zext i16 %434 to i32, !dbg !2626
  %add2892 = add nuw nsw i32 %conv2891, %conv2886, !dbg !2626
  %435 = load i32, ptr %costs, align 16, !dbg !2626, !tbaa !1859
  %add2894 = add nsw i32 %add2892, %435, !dbg !2626
  store i32 %add2894, ptr %costs, align 16, !dbg !2626, !tbaa !1859
  %add2900 = add nsw i32 %bmy.236289, 2, !dbg !2626
  %shl2901 = shl i32 %add2900, 2, !dbg !2626
  %idxprom2902 = sext i32 %shl2901 to i64, !dbg !2626
  %arrayidx2903 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom2902, !dbg !2626
  %436 = load i16, ptr %arrayidx2903, align 2, !dbg !2626, !tbaa !1912
  %conv2904 = zext i16 %436 to i32, !dbg !2626
  %add2905 = add nuw nsw i32 %conv2904, %conv2886, !dbg !2626
  %437 = load i32, ptr %arrayidx1093, align 4, !dbg !2626, !tbaa !1859
  %add2907 = add nsw i32 %add2905, %437, !dbg !2626
  store i32 %add2907, ptr %arrayidx1093, align 4, !dbg !2626, !tbaa !1859
  %add2908 = add nsw i32 %bmx.236294, 2, !dbg !2626
  %shl2909 = shl i32 %add2908, 2, !dbg !2626
  %idxprom2910 = sext i32 %shl2909 to i64, !dbg !2626
  %arrayidx2911 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2910, !dbg !2626
  %438 = load i16, ptr %arrayidx2911, align 2, !dbg !2626, !tbaa !1912
  %conv2912 = zext i16 %438 to i32, !dbg !2626
  %add2918 = add nuw nsw i32 %conv2912, %conv2891, !dbg !2626
  %439 = load i32, ptr %arrayidx1106, align 8, !dbg !2626, !tbaa !1859
  %add2920 = add nsw i32 %add2918, %439, !dbg !2626
  store i32 %add2920, ptr %arrayidx1106, align 8, !dbg !2626, !tbaa !1859
  %add2931 = add nuw nsw i32 %conv2912, %conv2904, !dbg !2626
  %440 = load i32, ptr %arrayidx1119, align 4, !dbg !2626, !tbaa !1859
  %add2933 = add nsw i32 %add2931, %440, !dbg !2626
  store i32 %add2933, ptr %arrayidx1119, align 4, !dbg !2626, !tbaa !1859
  %cmp2935 = icmp slt i32 %add2894, %bcost.104.lcssa, !dbg !2645
  br i1 %cmp2935, label %if.then2937, label %if.end2941, !dbg !2626

if.then2937:                                      ; preds = %for.end2854
  call void @llvm.dbg.value(metadata i32 %add2894, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2882, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2887, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2941, !dbg !2647

if.end2941:                                       ; preds = %if.then2937, %for.end2854
  %bcost.109 = phi i32 [ %add2894, %if.then2937 ], [ %bcost.104.lcssa, %for.end2854 ], !dbg !2245
  %bmy.85 = phi i32 [ %add2887, %if.then2937 ], [ %bmy.80.lcssa, %for.end2854 ], !dbg !2245
  %bmx.85 = phi i32 [ %add2882, %if.then2937 ], [ %bmx.80.lcssa, %for.end2854 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.85, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.85, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.109, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2943 = icmp slt i32 %add2907, %bcost.109, !dbg !2649
  br i1 %cmp2943, label %if.then2945, label %if.end2949, !dbg !2626

if.then2945:                                      ; preds = %if.end2941
  call void @llvm.dbg.value(metadata i32 %add2907, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2882, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2900, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2949, !dbg !2651

if.end2949:                                       ; preds = %if.then2945, %if.end2941
  %bcost.110 = phi i32 [ %add2907, %if.then2945 ], [ %bcost.109, %if.end2941 ], !dbg !2644
  %bmy.86 = phi i32 [ %add2900, %if.then2945 ], [ %bmy.85, %if.end2941 ], !dbg !2644
  %bmx.86 = phi i32 [ %add2882, %if.then2945 ], [ %bmx.85, %if.end2941 ], !dbg !2644
  call void @llvm.dbg.value(metadata i32 %bmx.86, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.86, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.110, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2951 = icmp slt i32 %add2920, %bcost.110, !dbg !2653
  br i1 %cmp2951, label %if.then2953, label %if.end2957, !dbg !2626

if.then2953:                                      ; preds = %if.end2949
  call void @llvm.dbg.value(metadata i32 %add2920, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2908, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add2887, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end2957, !dbg !2655

if.end2957:                                       ; preds = %if.then2953, %if.end2949
  %bcost.111 = phi i32 [ %add2920, %if.then2953 ], [ %bcost.110, %if.end2949 ], !dbg !2644
  %bmy.87 = phi i32 [ %add2887, %if.then2953 ], [ %bmy.86, %if.end2949 ], !dbg !2644
  %bmx.87 = phi i32 [ %add2908, %if.then2953 ], [ %bmx.86, %if.end2949 ], !dbg !2644
  call void @llvm.dbg.value(metadata i32 %bmx.87, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.87, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.111, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp2959 = icmp slt i32 %add2933, %bcost.111, !dbg !2657
  br i1 %cmp2959, label %if.end2965, label %if.end2957.if.end2965_crit_edge, !dbg !2626

if.end2957.if.end2965_crit_edge:                  ; preds = %if.end2957
  %.pre6649 = shl nsw i32 %bmx.87, 2, !dbg !2659
  %.pre6650 = sext i32 %.pre6649 to i64, !dbg !2660
  %.pre6651 = shl nsw i32 %bmy.87, 2, !dbg !2661
  %.pre6652 = sext i32 %.pre6651 to i64, !dbg !2662
  br label %if.end2965, !dbg !2626

if.end2965:                                       ; preds = %if.end2957, %if.end2957.if.end2965_crit_edge
  %idx.ext2970.pre-phi = phi i64 [ %.pre6652, %if.end2957.if.end2965_crit_edge ], [ %idxprom2902, %if.end2957 ], !dbg !2662
  %idx.ext2967.pre-phi = phi i64 [ %.pre6650, %if.end2957.if.end2965_crit_edge ], [ %idxprom2910, %if.end2957 ], !dbg !2660
  %bcost.112 = phi i32 [ %bcost.111, %if.end2957.if.end2965_crit_edge ], [ %add2933, %if.end2957 ], !dbg !2644
  %bmy.88 = phi i32 [ %bmy.87, %if.end2957.if.end2965_crit_edge ], [ %add2900, %if.end2957 ], !dbg !2644
  %bmx.88 = phi i32 [ %bmx.87, %if.end2957.if.end2965_crit_edge ], [ %add2908, %if.end2957 ], !dbg !2644
  call void @llvm.dbg.value(metadata i32 %bmx.88, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.88, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.112, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.88, metadata !1411, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.88, metadata !1412, metadata !DIExpression()), !dbg !1843
  %add.ptr2968 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.ext2967.pre-phi, !dbg !2660
  call void @llvm.dbg.value(metadata ptr %add.ptr2968, metadata !1594, metadata !DIExpression()), !dbg !2245
  %add.ptr2971 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idx.ext2970.pre-phi, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %add.ptr2971, metadata !1595, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 1, metadata !1596, metadata !DIExpression()), !dbg !2245
  %sub2975 = sub nsw i32 %9, %bmx.88
  %sub2976 = sub nsw i32 %bmx.88, %7
  %sub2977 = sub nsw i32 %10, %bmy.88
  %sub2978 = sub nsw i32 %bmy.88, %8
  %441 = call i32 @llvm.smin.i32(i32 %sub2977, i32 %sub2978), !dbg !1843
  %442 = call i32 @llvm.smin.i32(i32 %sub2976, i32 %441), !dbg !1843
  %443 = call i32 @llvm.smin.i32(i32 %sub2975, i32 %442), !dbg !1843
  %idx.ext3105 = sext i32 %bmx.88 to i64
  %add.ptr3106 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3105
  %add.ptr3178 = getelementptr inbounds i32, ptr %costs, i64 4
  %add.ptr3213 = getelementptr inbounds i32, ptr %costs, i64 8
  %add.ptr3248 = getelementptr inbounds i32, ptr %costs, i64 12
  %arrayidx3305 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 4
  %arrayidx3316 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 5
  %arrayidx3327 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 6
  %arrayidx3338 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 7
  %arrayidx3349 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 8
  %arrayidx3360 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 9
  %arrayidx3371 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 10
  %arrayidx3382 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 11
  %arrayidx3393 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 12
  %arrayidx3404 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 13
  %arrayidx3415 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 14
  %arrayidx3426 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 15
  %arrayidx3077 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %shr3537 = ashr i32 %i_me_range.1, 2
  %444 = sext i32 %bmy.88 to i64, !dbg !2663
  %445 = sext i32 %443 to i64, !dbg !2663
  %smax = call i32 @llvm.smax.i32(i32 %shr3537, i32 1), !dbg !2663
  %446 = add nuw nsw i32 %smax, 1, !dbg !2663
  %wide.trip.count6646 = zext i32 %446 to i64, !dbg !2664
  br label %do.body2973, !dbg !2663

do.body2973:                                      ; preds = %do.cond3535, %if.end2965
  %indvars.iv6632 = phi i64 [ %indvars.iv.next6633, %do.cond3535 ], [ 1, %if.end2965 ], !dbg !2245
  %bcost.113 = phi i32 [ %bcost.133, %do.cond3535 ], [ %bcost.112, %if.end2965 ], !dbg !2665
  %bmy.89 = phi i32 [ %bmy.94, %do.cond3535 ], [ %bmy.88, %if.end2965 ], !dbg !2665
  %bmx.89 = phi i32 [ %bmx.94, %do.cond3535 ], [ %bmx.88, %if.end2965 ], !dbg !2665
  call void @llvm.dbg.value(metadata i32 %bmx.89, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.89, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.113, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6632, metadata !1596, metadata !DIExpression()), !dbg !2245
  %447 = shl nsw i64 %indvars.iv6632, 2, !dbg !2667
  %cmp3039 = icmp sgt i64 %447, %445, !dbg !2668
  br i1 %cmp3039, label %for.body3046.preheader, label %if.else3102, !dbg !2669

for.body3046.preheader:                           ; preds = %do.body2973
  %448 = trunc i64 %indvars.iv6632 to i32
  br label %for.body3046, !dbg !2670

for.body3046:                                     ; preds = %for.body3046.preheader, %if.end3097
  %indvars.iv6628 = phi i64 [ 0, %for.body3046.preheader ], [ %indvars.iv.next6629, %if.end3097 ]
  %bmx.906478 = phi i32 [ %bmx.89, %for.body3046.preheader ], [ %bmx.92, %if.end3097 ]
  %bmy.906477 = phi i32 [ %bmy.89, %for.body3046.preheader ], [ %bmy.92, %if.end3097 ]
  %bcost.1146476 = phi i32 [ %bcost.113, %for.body3046.preheader ], [ %bcost.116, %if.end3097 ]
  call void @llvm.dbg.value(metadata i32 %bmx.906478, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.906477, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1146476, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6628, metadata !1597, metadata !DIExpression()), !dbg !2671
  %arrayidx3049 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %indvars.iv6628, !dbg !2672
  %449 = load i8, ptr %arrayidx3049, align 2, !dbg !2672, !tbaa !1975
  %conv3051 = sext i8 %449 to i32, !dbg !2672
  %mul3052 = mul nsw i32 %448, %conv3051, !dbg !2673
  %add3053 = add nsw i32 %mul3052, %bmx.88, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %add3053, metadata !1602, metadata !DIExpression()), !dbg !2675
  %arrayidx3057 = getelementptr inbounds [16 x [2 x i8]], ptr @x264_me_search_ref.hex4, i64 0, i64 %indvars.iv6628, i64 1, !dbg !2676
  %450 = load i8, ptr %arrayidx3057, align 1, !dbg !2676, !tbaa !1975
  %conv3058 = sext i8 %450 to i32, !dbg !2676
  %mul3059 = mul nsw i32 %448, %conv3058, !dbg !2677
  %add3060 = add nsw i32 %mul3059, %bmy.88, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %add3060, metadata !1605, metadata !DIExpression()), !dbg !2675
  %shl3061 = shl i32 %add3053, 16, !dbg !2679
  %and3062 = and i32 %add3060, 32767, !dbg !2679
  %or3063 = or i32 %and3062, %shl3061, !dbg !2679
  %add3064 = add i32 %or3063, %or, !dbg !2679
  %sub3068 = sub i32 %or29, %or3063, !dbg !2679
  %or3069 = or i32 %add3064, %sub3068, !dbg !2679
  %and3070 = and i32 %or3069, -2147467264, !dbg !2679
  %tobool3071.not = icmp eq i32 %and3070, 0, !dbg !2679
  br i1 %tobool3071.not, label %if.then3072, label %if.end3097, !dbg !2680

if.then3072:                                      ; preds = %for.body3046
  %451 = load ptr, ptr %arrayidx3077, align 8, !dbg !2681, !tbaa !1889
  %mul3078 = mul nsw i32 %add3060, %3, !dbg !2681
  %add3079 = add nsw i32 %mul3078, %add3053, !dbg !2681
  %idxprom3080 = sext i32 %add3079 to i64, !dbg !2681
  %arrayidx3081 = getelementptr inbounds i8, ptr %6, i64 %idxprom3080, !dbg !2681
  %call3082 = call i32 %451(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3081, i32 noundef %3) #5, !dbg !2681
  %shl3083 = shl i32 %add3053, 2, !dbg !2681
  %idxprom3084 = sext i32 %shl3083 to i64, !dbg !2681
  %arrayidx3085 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3084, !dbg !2681
  %452 = load i16, ptr %arrayidx3085, align 2, !dbg !2681, !tbaa !1912
  %conv3086 = zext i16 %452 to i32, !dbg !2681
  %shl3087 = shl i32 %add3060, 2, !dbg !2681
  %idxprom3088 = sext i32 %shl3087 to i64, !dbg !2681
  %arrayidx3089 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3088, !dbg !2681
  %453 = load i16, ptr %arrayidx3089, align 2, !dbg !2681, !tbaa !1912
  %conv3090 = zext i16 %453 to i32, !dbg !2681
  %add3091 = add i32 %call3082, %conv3086, !dbg !2681
  %add3092 = add i32 %add3091, %conv3090, !dbg !2681
  call void @llvm.dbg.value(metadata i32 %add3092, metadata !1606, metadata !DIExpression()), !dbg !2682
  %cmp3093 = icmp slt i32 %add3092, %bcost.1146476, !dbg !2683
  br i1 %cmp3093, label %if.then3095, label %if.end3097, !dbg !2681

if.then3095:                                      ; preds = %if.then3072
  call void @llvm.dbg.value(metadata i32 %add3092, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add3053, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add3060, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end3097, !dbg !2685

if.end3097:                                       ; preds = %if.then3072, %if.then3095, %for.body3046
  %bcost.116 = phi i32 [ %bcost.1146476, %for.body3046 ], [ %add3092, %if.then3095 ], [ %bcost.1146476, %if.then3072 ], !dbg !2245
  %bmy.92 = phi i32 [ %bmy.906477, %for.body3046 ], [ %add3060, %if.then3095 ], [ %bmy.906477, %if.then3072 ], !dbg !2245
  %bmx.92 = phi i32 [ %bmx.906478, %for.body3046 ], [ %add3053, %if.then3095 ], [ %bmx.906478, %if.then3072 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.92, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.92, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.116, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6629 = add nuw nsw i64 %indvars.iv6628, 1, !dbg !2687
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6629, metadata !1597, metadata !DIExpression()), !dbg !2671
  %exitcond6631.not = icmp eq i64 %indvars.iv.next6629, 16, !dbg !2688
  br i1 %exitcond6631.not, label %do.cond3535, label %for.body3046, !dbg !2670, !llvm.loop !2689

if.else3102:                                      ; preds = %do.body2973
  call void @llvm.dbg.value(metadata i32 0, metadata !1609, metadata !DIExpression()), !dbg !2691
  %454 = sub nsw i64 %444, %447, !dbg !2692
  %455 = mul nsw i64 %454, %idx.ext1058, !dbg !2693
  %add.ptr3111 = getelementptr inbounds i8, ptr %add.ptr3106, i64 %455, !dbg !2694
  call void @llvm.dbg.value(metadata ptr %add.ptr3111, metadata !1611, metadata !DIExpression()), !dbg !2691
  %456 = mul nsw i64 %indvars.iv6632, %idx.ext1058, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %456, metadata !1612, metadata !DIExpression()), !dbg !2691
  %457 = load ptr, ptr %arrayidx1051, align 8, !dbg !2696, !tbaa !1889
  %458 = trunc i64 %456 to i32, !dbg !2696
  %mul3126 = shl nsw i32 %458, 3, !dbg !2696
  %idx.ext3127 = sext i32 %mul3126 to i64, !dbg !2696
  %add.ptr3128 = getelementptr inbounds i8, ptr %add.ptr3111, i64 %idx.ext3127, !dbg !2696
  %459 = shl nuw nsw i64 %indvars.iv6632, 1, !dbg !2696
  %idx.neg3131 = sub nsw i64 0, %459, !dbg !2696
  %add.ptr3132 = getelementptr inbounds i8, ptr %add.ptr3111, i64 %idx.neg3131, !dbg !2696
  %add.ptr3135 = getelementptr inbounds i8, ptr %add.ptr3132, i64 %456, !dbg !2696
  %add.ptr3138 = getelementptr inbounds i8, ptr %add.ptr3111, i64 %459, !dbg !2696
  %add.ptr3141 = getelementptr inbounds i8, ptr %add.ptr3138, i64 %456, !dbg !2696
  call void %457(ptr noundef %5, ptr noundef %add.ptr3111, ptr noundef %add.ptr3128, ptr noundef %add.ptr3135, ptr noundef nonnull %add.ptr3141, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !2696
  %mul3144 = shl nsw i32 %458, 1, !dbg !2696
  %idx.ext3145 = sext i32 %mul3144 to i64, !dbg !2696
  %add.ptr3146 = getelementptr inbounds i8, ptr %add.ptr3111, i64 %idx.ext3145, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %add.ptr3146, metadata !1611, metadata !DIExpression()), !dbg !2691
  %460 = load ptr, ptr %arrayidx1051, align 8, !dbg !2697, !tbaa !1889
  %idx.neg3153 = sub nsw i64 0, %447, !dbg !2697
  %add.ptr3154 = getelementptr inbounds i8, ptr %add.ptr3146, i64 %idx.neg3153, !dbg !2697
  %add.ptr3160 = getelementptr inbounds i8, ptr %add.ptr3146, i64 %447, !dbg !2697
  %add.ptr3170 = getelementptr inbounds i8, ptr %add.ptr3154, i64 %456, !dbg !2697
  %add.ptr3176 = getelementptr inbounds i8, ptr %add.ptr3160, i64 %456, !dbg !2697
  call void %460(ptr noundef %5, ptr noundef %add.ptr3154, ptr noundef %add.ptr3160, ptr noundef %add.ptr3170, ptr noundef %add.ptr3176, i32 noundef %3, ptr noundef nonnull %add.ptr3178) #5, !dbg !2697
  %add.ptr3181 = getelementptr inbounds i8, ptr %add.ptr3146, i64 %idx.ext3145, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %add.ptr3181, metadata !1611, metadata !DIExpression()), !dbg !2691
  %461 = load ptr, ptr %arrayidx1051, align 8, !dbg !2698, !tbaa !1889
  %add.ptr3189 = getelementptr inbounds i8, ptr %add.ptr3181, i64 %idx.neg3153, !dbg !2698
  %add.ptr3195 = getelementptr inbounds i8, ptr %add.ptr3181, i64 %447, !dbg !2698
  %add.ptr3205 = getelementptr inbounds i8, ptr %add.ptr3189, i64 %456, !dbg !2698
  %add.ptr3211 = getelementptr inbounds i8, ptr %add.ptr3195, i64 %456, !dbg !2698
  call void %461(ptr noundef %5, ptr noundef %add.ptr3189, ptr noundef %add.ptr3195, ptr noundef %add.ptr3205, ptr noundef %add.ptr3211, i32 noundef %3, ptr noundef nonnull %add.ptr3213) #5, !dbg !2698
  %add.ptr3216 = getelementptr inbounds i8, ptr %add.ptr3181, i64 %idx.ext3145, !dbg !2698
  call void @llvm.dbg.value(metadata ptr %add.ptr3216, metadata !1611, metadata !DIExpression()), !dbg !2691
  %462 = load ptr, ptr %arrayidx1051, align 8, !dbg !2699, !tbaa !1889
  %add.ptr3224 = getelementptr inbounds i8, ptr %add.ptr3216, i64 %idx.neg3153, !dbg !2699
  %add.ptr3230 = getelementptr inbounds i8, ptr %add.ptr3216, i64 %447, !dbg !2699
  %add.ptr3237 = getelementptr inbounds i8, ptr %add.ptr3216, i64 %idx.neg3131, !dbg !2699
  %add.ptr3240 = getelementptr inbounds i8, ptr %add.ptr3237, i64 %456, !dbg !2699
  %add.ptr3243 = getelementptr inbounds i8, ptr %add.ptr3216, i64 %459, !dbg !2699
  %add.ptr3246 = getelementptr inbounds i8, ptr %add.ptr3243, i64 %456, !dbg !2699
  call void %462(ptr noundef %5, ptr noundef %add.ptr3224, ptr noundef %add.ptr3230, ptr noundef %add.ptr3240, ptr noundef nonnull %add.ptr3246, i32 noundef %3, ptr noundef nonnull %add.ptr3248) #5, !dbg !2699
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr3216, i64 %idx.ext3145), metadata !1611, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2691
  %463 = load i16, ptr %add.ptr2968, align 2, !dbg !2700, !tbaa !1912
  %conv3255 = zext i16 %463 to i32, !dbg !2700
  %464 = mul nsw i64 %indvars.iv6632, -16, !dbg !2700
  %arrayidx3258 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %464, !dbg !2700
  %465 = load i16, ptr %arrayidx3258, align 2, !dbg !2700, !tbaa !1912
  %conv3259 = zext i16 %465 to i32, !dbg !2700
  %add3260 = add nuw nsw i32 %conv3259, %conv3255, !dbg !2700
  %466 = load i32, ptr %costs, align 16, !dbg !2700, !tbaa !1859
  %add3262 = add nsw i32 %add3260, %466, !dbg !2700
  store i32 %add3262, ptr %costs, align 16, !dbg !2700, !tbaa !1859
  %mul3267 = shl i64 %indvars.iv6632, 4, !dbg !2701
  %idxprom3268 = and i64 %mul3267, 4294967280, !dbg !2701
  %arrayidx3269 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %idxprom3268, !dbg !2701
  %467 = load i16, ptr %arrayidx3269, align 2, !dbg !2701, !tbaa !1912
  %conv3270 = zext i16 %467 to i32, !dbg !2701
  %add3271 = add nuw nsw i32 %conv3270, %conv3255, !dbg !2701
  %468 = load i32, ptr %arrayidx1093, align 4, !dbg !2701, !tbaa !1859
  %add3273 = add nsw i32 %add3271, %468, !dbg !2701
  store i32 %add3273, ptr %arrayidx1093, align 4, !dbg !2701, !tbaa !1859
  %469 = mul nsw i64 %indvars.iv6632, -8, !dbg !2702
  %arrayidx3276 = getelementptr inbounds i16, ptr %add.ptr2968, i64 %469, !dbg !2702
  %470 = load i16, ptr %arrayidx3276, align 2, !dbg !2702, !tbaa !1912
  %conv3277 = zext i16 %470 to i32, !dbg !2702
  %471 = mul nsw i64 %indvars.iv6632, -12, !dbg !2702
  %arrayidx3280 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %471, !dbg !2702
  %472 = load i16, ptr %arrayidx3280, align 2, !dbg !2702, !tbaa !1912
  %conv3281 = zext i16 %472 to i32, !dbg !2702
  %add3282 = add nuw nsw i32 %conv3281, %conv3277, !dbg !2702
  %473 = load i32, ptr %arrayidx1106, align 8, !dbg !2702, !tbaa !1859
  %add3284 = add nsw i32 %add3282, %473, !dbg !2702
  store i32 %add3284, ptr %arrayidx1106, align 8, !dbg !2702, !tbaa !1859
  %474 = shl nsw i64 %indvars.iv6632, 3, !dbg !2703
  %arrayidx3287 = getelementptr inbounds i16, ptr %add.ptr2968, i64 %474, !dbg !2703
  %475 = load i16, ptr %arrayidx3287, align 2, !dbg !2703, !tbaa !1912
  %conv3288 = zext i16 %475 to i32, !dbg !2703
  %add3293 = add nuw nsw i32 %conv3288, %conv3281, !dbg !2703
  %476 = load i32, ptr %arrayidx1119, align 4, !dbg !2703, !tbaa !1859
  %add3295 = add nsw i32 %add3293, %476, !dbg !2703
  store i32 %add3295, ptr %arrayidx1119, align 4, !dbg !2703, !tbaa !1859
  %arrayidx3298 = getelementptr inbounds i16, ptr %add.ptr2968, i64 %464, !dbg !2704
  %477 = load i16, ptr %arrayidx3298, align 2, !dbg !2704, !tbaa !1912
  %conv3299 = zext i16 %477 to i32, !dbg !2704
  %arrayidx3302 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %469, !dbg !2704
  %478 = load i16, ptr %arrayidx3302, align 2, !dbg !2704, !tbaa !1912
  %conv3303 = zext i16 %478 to i32, !dbg !2704
  %add3304 = add nuw nsw i32 %conv3303, %conv3299, !dbg !2704
  %479 = load i32, ptr %arrayidx3305, align 16, !dbg !2704, !tbaa !1859
  %add3306 = add nsw i32 %add3304, %479, !dbg !2704
  store i32 %add3306, ptr %arrayidx3305, align 16, !dbg !2704, !tbaa !1859
  %arrayidx3309 = getelementptr inbounds i16, ptr %add.ptr2968, i64 %idxprom3268, !dbg !2705
  %480 = load i16, ptr %arrayidx3309, align 2, !dbg !2705, !tbaa !1912
  %conv3310 = zext i16 %480 to i32, !dbg !2705
  %add3315 = add nuw nsw i32 %conv3310, %conv3303, !dbg !2705
  %481 = load i32, ptr %arrayidx3316, align 4, !dbg !2705, !tbaa !1859
  %add3317 = add nsw i32 %add3315, %481, !dbg !2705
  store i32 %add3317, ptr %arrayidx3316, align 4, !dbg !2705, !tbaa !1859
  %482 = mul nsw i64 %indvars.iv6632, -4, !dbg !2706
  %arrayidx3324 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %482, !dbg !2706
  %483 = load i16, ptr %arrayidx3324, align 2, !dbg !2706, !tbaa !1912
  %conv3325 = zext i16 %483 to i32, !dbg !2706
  %add3326 = add nuw nsw i32 %conv3325, %conv3299, !dbg !2706
  %484 = load i32, ptr %arrayidx3327, align 8, !dbg !2706, !tbaa !1859
  %add3328 = add nsw i32 %add3326, %484, !dbg !2706
  store i32 %add3328, ptr %arrayidx3327, align 8, !dbg !2706, !tbaa !1859
  %add3337 = add nuw nsw i32 %conv3325, %conv3310, !dbg !2707
  %485 = load i32, ptr %arrayidx3338, align 4, !dbg !2707, !tbaa !1859
  %add3339 = add nsw i32 %add3337, %485, !dbg !2707
  store i32 %add3339, ptr %arrayidx3338, align 4, !dbg !2707, !tbaa !1859
  %486 = load i16, ptr %add.ptr2971, align 2, !dbg !2708, !tbaa !1912
  %conv3347 = zext i16 %486 to i32, !dbg !2708
  %add3348 = add nuw nsw i32 %conv3347, %conv3299, !dbg !2708
  %487 = load i32, ptr %arrayidx3349, align 16, !dbg !2708, !tbaa !1859
  %add3350 = add nsw i32 %add3348, %487, !dbg !2708
  store i32 %add3350, ptr %arrayidx3349, align 16, !dbg !2708, !tbaa !1859
  %add3359 = add nuw nsw i32 %conv3347, %conv3310, !dbg !2709
  %488 = load i32, ptr %arrayidx3360, align 4, !dbg !2709, !tbaa !1859
  %add3361 = add nsw i32 %add3359, %488, !dbg !2709
  store i32 %add3361, ptr %arrayidx3360, align 4, !dbg !2709, !tbaa !1859
  %arrayidx3368 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %447, !dbg !2710
  %489 = load i16, ptr %arrayidx3368, align 2, !dbg !2710, !tbaa !1912
  %conv3369 = zext i16 %489 to i32, !dbg !2710
  %add3370 = add nuw nsw i32 %conv3369, %conv3299, !dbg !2710
  %490 = load i32, ptr %arrayidx3371, align 8, !dbg !2710, !tbaa !1859
  %add3372 = add nsw i32 %add3370, %490, !dbg !2710
  store i32 %add3372, ptr %arrayidx3371, align 8, !dbg !2710, !tbaa !1859
  %add3381 = add nuw nsw i32 %conv3369, %conv3310, !dbg !2711
  %491 = load i32, ptr %arrayidx3382, align 4, !dbg !2711, !tbaa !1859
  %add3383 = add nsw i32 %add3381, %491, !dbg !2711
  store i32 %add3383, ptr %arrayidx3382, align 4, !dbg !2711, !tbaa !1859
  %arrayidx3390 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %474, !dbg !2712
  %492 = load i16, ptr %arrayidx3390, align 2, !dbg !2712, !tbaa !1912
  %conv3391 = zext i16 %492 to i32, !dbg !2712
  %add3392 = add nuw nsw i32 %conv3391, %conv3299, !dbg !2712
  %493 = load i32, ptr %arrayidx3393, align 16, !dbg !2712, !tbaa !1859
  %add3394 = add nsw i32 %add3392, %493, !dbg !2712
  store i32 %add3394, ptr %arrayidx3393, align 16, !dbg !2712, !tbaa !1859
  %add3403 = add nuw nsw i32 %conv3391, %conv3310, !dbg !2713
  %494 = load i32, ptr %arrayidx3404, align 4, !dbg !2713, !tbaa !1859
  %add3405 = add nsw i32 %add3403, %494, !dbg !2713
  store i32 %add3405, ptr %arrayidx3404, align 4, !dbg !2713, !tbaa !1859
  %495 = mul i64 %indvars.iv6632, 12, !dbg !2714
  %idxprom3411 = and i64 %495, 4294967292, !dbg !2714
  %arrayidx3412 = getelementptr inbounds i16, ptr %add.ptr2971, i64 %idxprom3411, !dbg !2714
  %496 = load i16, ptr %arrayidx3412, align 2, !dbg !2714, !tbaa !1912
  %conv3413 = zext i16 %496 to i32, !dbg !2714
  %add3414 = add nuw nsw i32 %conv3413, %conv3277, !dbg !2714
  %497 = load i32, ptr %arrayidx3415, align 8, !dbg !2714, !tbaa !1859
  %add3416 = add nsw i32 %add3414, %497, !dbg !2714
  store i32 %add3416, ptr %arrayidx3415, align 8, !dbg !2714, !tbaa !1859
  %add3425 = add nuw nsw i32 %conv3413, %conv3288, !dbg !2715
  %498 = load i32, ptr %arrayidx3426, align 4, !dbg !2715, !tbaa !1859
  %add3427 = add nsw i32 %add3425, %498, !dbg !2715
  store i32 %add3427, ptr %arrayidx3426, align 4, !dbg !2715, !tbaa !1859
  %cmp3429 = icmp slt i32 %add3262, %bcost.113, !dbg !2716
  %spec.select6202 = select i1 %cmp3429, i32 12, i32 0, !dbg !2718
  %499 = call i32 @llvm.smin.i32(i32 %add3262, i32 %bcost.113), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %499, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6202, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3435 = icmp slt i32 %add3273, %499, !dbg !2719
  %spec.select6240 = select i1 %cmp3435, i32 4, i32 %spec.select6202, !dbg !2721
  %500 = call i32 @llvm.smin.i32(i32 %add3273, i32 %499), !dbg !2721
  call void @llvm.dbg.value(metadata i32 %500, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6240, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3441 = icmp slt i32 %add3284, %500, !dbg !2722
  %spec.select6204 = select i1 %cmp3441, i32 -19, i32 %spec.select6240, !dbg !2724
  %501 = call i32 @llvm.smin.i32(i32 %add3284, i32 %500), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %501, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6204, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3447 = icmp slt i32 %add3295, %501, !dbg !2725
  %spec.select6254 = select i1 %cmp3447, i32 45, i32 %spec.select6204, !dbg !2727
  %502 = call i32 @llvm.smin.i32(i32 %add3295, i32 %501), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %502, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6254, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3453 = icmp slt i32 %add3306, %502, !dbg !2728
  %spec.select6206 = select i1 %cmp3453, i32 -50, i32 %spec.select6254, !dbg !2730
  %503 = call i32 @llvm.smin.i32(i32 %add3306, i32 %502), !dbg !2730
  call void @llvm.dbg.value(metadata i32 %503, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6206, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3459 = icmp slt i32 %add3317, %503, !dbg !2731
  %spec.select6242 = select i1 %cmp3459, i32 78, i32 %spec.select6206, !dbg !2733
  %504 = call i32 @llvm.smin.i32(i32 %add3317, i32 %503), !dbg !2733
  call void @llvm.dbg.value(metadata i32 %504, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6242, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3465 = icmp slt i32 %add3328, %504, !dbg !2734
  %spec.select6208 = select i1 %cmp3465, i32 -49, i32 %spec.select6242, !dbg !2736
  %505 = call i32 @llvm.smin.i32(i32 %add3328, i32 %504), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %505, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6208, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3471 = icmp slt i32 %add3339, %505, !dbg !2737
  %spec.select6261 = select i1 %cmp3471, i32 79, i32 %spec.select6208, !dbg !2739
  %506 = call i32 @llvm.smin.i32(i32 %add3339, i32 %505), !dbg !2739
  call void @llvm.dbg.value(metadata i32 %506, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6261, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3477 = icmp slt i32 %add3350, %506, !dbg !2740
  %spec.select6210 = select i1 %cmp3477, i32 -64, i32 %spec.select6261, !dbg !2742
  %507 = call i32 @llvm.smin.i32(i32 %add3350, i32 %506), !dbg !2742
  call void @llvm.dbg.value(metadata i32 %507, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6210, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3483 = icmp slt i32 %add3361, %507, !dbg !2743
  %spec.select6244 = select i1 %cmp3483, i32 64, i32 %spec.select6210, !dbg !2745
  %508 = call i32 @llvm.smin.i32(i32 %add3361, i32 %507), !dbg !2745
  call void @llvm.dbg.value(metadata i32 %508, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6244, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3489 = icmp slt i32 %add3372, %508, !dbg !2746
  %spec.select6212 = select i1 %cmp3489, i32 -63, i32 %spec.select6244, !dbg !2748
  %509 = call i32 @llvm.smin.i32(i32 %add3372, i32 %508), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %509, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6212, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3495 = icmp slt i32 %add3383, %509, !dbg !2749
  %spec.select6256 = select i1 %cmp3495, i32 65, i32 %spec.select6212, !dbg !2751
  %510 = call i32 @llvm.smin.i32(i32 %add3383, i32 %509), !dbg !2751
  call void @llvm.dbg.value(metadata i32 %510, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6256, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3501 = icmp slt i32 %add3394, %510, !dbg !2752
  %spec.select6214 = select i1 %cmp3501, i32 -62, i32 %spec.select6256, !dbg !2754
  %511 = call i32 @llvm.smin.i32(i32 %add3394, i32 %510), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %511, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6214, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3507 = icmp slt i32 %add3405, %511, !dbg !2755
  %spec.select6246 = select i1 %cmp3507, i32 66, i32 %spec.select6214, !dbg !2757
  %512 = call i32 @llvm.smin.i32(i32 %add3405, i32 %511), !dbg !2757
  call void @llvm.dbg.value(metadata i32 %512, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6246, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3513 = icmp slt i32 %add3416, %512, !dbg !2758
  %spec.select6216 = select i1 %cmp3513, i32 -29, i32 %spec.select6246, !dbg !2760
  %513 = call i32 @llvm.smin.i32(i32 %add3416, i32 %512), !dbg !2760
  call void @llvm.dbg.value(metadata i32 %513, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6216, metadata !1609, metadata !DIExpression()), !dbg !2691
  %cmp3519 = icmp slt i32 %add3427, %513, !dbg !2761
  %spec.select6263 = select i1 %cmp3519, i32 35, i32 %spec.select6216, !dbg !2763
  %514 = call i32 @llvm.smin.i32(i32 %add3427, i32 %513), !dbg !2763
  call void @llvm.dbg.value(metadata i32 %514, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %spec.select6263, metadata !1609, metadata !DIExpression()), !dbg !2691
  %tobool3524.not = icmp eq i32 %spec.select6263, 0, !dbg !2764
  br i1 %tobool3524.not, label %do.cond3535, label %if.then3525, !dbg !2766

if.then3525:                                      ; preds = %if.else3102
  %515 = trunc i64 %indvars.iv6632 to i32, !dbg !2701
  %shr3526 = ashr i32 %spec.select6263, 4, !dbg !2767
  %mul3527 = mul nsw i32 %shr3526, %515, !dbg !2769
  %add3528 = add nsw i32 %mul3527, %bmx.88, !dbg !2770
  call void @llvm.dbg.value(metadata i32 %add3528, metadata !1405, metadata !DIExpression()), !dbg !1843
  %shl3529 = shl i32 %spec.select6263, 28, !dbg !2771
  %shr3530 = ashr exact i32 %shl3529, 28, !dbg !2772
  %mul3531 = mul nsw i32 %shr3530, %515, !dbg !2773
  %add3532 = add nsw i32 %mul3531, %bmy.88, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %add3532, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %do.cond3535, !dbg !2775

do.cond3535:                                      ; preds = %if.end3097, %if.else3102, %if.then3525
  %bcost.133 = phi i32 [ %514, %if.then3525 ], [ %514, %if.else3102 ], [ %bcost.116, %if.end3097 ], !dbg !2245
  %bmy.94 = phi i32 [ %add3532, %if.then3525 ], [ %bmy.89, %if.else3102 ], [ %bmy.92, %if.end3097 ], !dbg !2245
  %bmx.94 = phi i32 [ %add3528, %if.then3525 ], [ %bmx.89, %if.else3102 ], [ %bmx.92, %if.end3097 ], !dbg !2245
  call void @llvm.dbg.value(metadata i32 %bmx.94, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.94, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.133, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6633 = add nuw nsw i64 %indvars.iv6632, 1, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6633, metadata !1596, metadata !DIExpression()), !dbg !2245
  %exitcond6647.not = icmp eq i64 %indvars.iv.next6633, %wide.trip.count6646, !dbg !2664
  br i1 %exitcond6647.not, label %cleanup3557, label %do.body2973, !dbg !2777, !llvm.loop !2778

cleanup3557:                                      ; preds = %do.cond3535
  %cmp3541.not = icmp sle i32 %bmy.94, %10, !dbg !2780
  %cmp3544.not = icmp sge i32 %bmy.94, %8
  %or.cond6218 = select i1 %cmp3541.not, i1 %cmp3544.not, i1 false, !dbg !2782
  %cmp3547.not = icmp sle i32 %bmx.94, %9
  %or.cond6219 = select i1 %or.cond6218, i1 %cmp3547.not, i1 false, !dbg !2782
  %cmp3550.not = icmp sge i32 %bmx.94, %7
  %or.cond6220 = select i1 %or.cond6219, i1 %cmp3550.not, i1 false, !dbg !2782
  call void @llvm.dbg.value(metadata i32 %i_me_range.1, metadata !1404, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.94, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.94, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.133, metadata !1407, metadata !DIExpression()), !dbg !1843
  br i1 %or.cond6220, label %me_hex2, label %sw.epilog

sw.bb3561:                                        ; preds = %if.end264, %if.end264
  %sub3562 = sub nsw i32 %bmx.4, %4, !dbg !2783
  %516 = call i32 @llvm.smax.i32(i32 %sub3562, i32 %7), !dbg !2783
  call void @llvm.dbg.value(metadata i32 %516, metadata !1613, metadata !DIExpression()), !dbg !2784
  %sub3570 = sub nsw i32 %bmy.4, %4, !dbg !2785
  %517 = call i32 @llvm.smax.i32(i32 %sub3570, i32 %8), !dbg !2785
  call void @llvm.dbg.value(metadata i32 %517, metadata !1615, metadata !DIExpression()), !dbg !2784
  %add3578 = add nsw i32 %bmx.4, %4, !dbg !2786
  %518 = call i32 @llvm.smin.i32(i32 %add3578, i32 %9), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %518, metadata !1616, metadata !DIExpression()), !dbg !2784
  %add3586 = add nsw i32 %bmy.4, %4, !dbg !2787
  %519 = call i32 @llvm.smin.i32(i32 %add3586, i32 %10), !dbg !2787
  call void @llvm.dbg.value(metadata i32 %519, metadata !1617, metadata !DIExpression()), !dbg !2784
  %sub3594 = sub i32 3, %516, !dbg !2788
  %add3595 = add i32 %sub3594, %518, !dbg !2789
  %and3596 = and i32 %add3595, -4, !dbg !2790
  call void @llvm.dbg.value(metadata i32 %and3596, metadata !1618, metadata !DIExpression()), !dbg !2784
  %integral = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 8, !dbg !2791
  %520 = load ptr, ptr %integral, align 16, !dbg !2791, !tbaa !2792
  call void @llvm.dbg.value(metadata ptr %520, metadata !1619, metadata !DIExpression()), !dbg !2784
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %enc_dc) #5, !dbg !2793
  call void @llvm.dbg.declare(metadata ptr %enc_dc, metadata !1620, metadata !DIExpression()), !dbg !2793
  %cmp3597.inv = icmp sgt i32 %0, 3, !dbg !2794
  %cond3599 = select i1 %cmp3597.inv, i64 6, i64 3, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %cond3599, metadata !1621, metadata !DIExpression()), !dbg !2784
  %arrayidx3601 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %cond3599, !dbg !2795
  %521 = load i32, ptr %arrayidx3601, align 8, !dbg !2796, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %521, metadata !1622, metadata !DIExpression()), !dbg !2784
  %scratch_buffer = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 61, !dbg !2797
  %522 = load ptr, ptr %scratch_buffer, align 8, !dbg !2797, !tbaa !2798
  call void @llvm.dbg.value(metadata ptr %522, metadata !1623, metadata !DIExpression()), !dbg !2784
  %i_qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 68, !dbg !2799
  %523 = load i32, ptr %i_qp, align 16, !dbg !2799, !tbaa !2800
  %idxprom3604 = sext i32 %523 to i64, !dbg !2801
  %arrayidx3605 = getelementptr inbounds [52 x i8], ptr @x264_lambda_tab, i64 0, i64 %idxprom3604, !dbg !2801
  %524 = load i8, ptr %arrayidx3605, align 1, !dbg !2801, !tbaa !1975
  %idxprom3606 = zext i8 %524 to i64, !dbg !2802
  %525 = load i16, ptr %mvp, align 16, !dbg !2803, !tbaa !1912
  %conv3610 = sext i16 %525 to i32, !dbg !2803
  %sub3611 = sub nsw i32 0, %conv3610, !dbg !2804
  %and3612 = and i32 %sub3611, 3, !dbg !2805
  %526 = zext i32 %and3612 to i64
  %arrayidx3614 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 38, i64 %idxprom3606, i64 %526, !dbg !2802
  %527 = load ptr, ptr %arrayidx3614, align 8, !dbg !2802, !tbaa !1889
  %shr3619 = ashr i32 %sub3611, 2, !dbg !2806
  %idx.ext3620 = sext i32 %shr3619 to i64, !dbg !2807
  %add.ptr3621 = getelementptr inbounds i16, ptr %527, i64 %idx.ext3620, !dbg !2807
  call void @llvm.dbg.value(metadata ptr %add.ptr3621, metadata !1625, metadata !DIExpression()), !dbg !2784
  %pixf3622 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, !dbg !2808
  %arrayidx3624 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 17, i64 %cond3599, !dbg !2809
  %528 = load ptr, ptr %arrayidx3624, align 8, !dbg !2809, !tbaa !1889
  %idx.ext3625 = sext i32 %521 to i64, !dbg !2810
  %add.ptr3626 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3625, !dbg !2810
  %mul3627 = shl nsw i32 %521, 4, !dbg !2811
  %idx.ext3628 = sext i32 %mul3627 to i64, !dbg !2812
  %add.ptr3629 = getelementptr inbounds i8, ptr %5, i64 %idx.ext3628, !dbg !2812
  %add.ptr3634 = getelementptr inbounds i8, ptr %add.ptr3626, i64 %idx.ext3628, !dbg !2813
  call void %528(ptr noundef nonnull @x264_me_search_ref.zero, ptr noundef %5, ptr noundef %add.ptr3626, ptr noundef %add.ptr3629, ptr noundef %add.ptr3634, i32 noundef 16, ptr noundef nonnull %enc_dc) #5, !dbg !2809
  %cmp3636 = icmp eq i32 %521, 4, !dbg !2814
  br i1 %cmp3636, label %if.then3638, label %if.end3644, !dbg !2816

if.then3638:                                      ; preds = %sw.bb3561
  %fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 44, !dbg !2817
  %529 = load ptr, ptr %fenc, align 8, !dbg !2817, !tbaa !2818
  %i_lines = getelementptr inbounds %struct.x264_frame, ptr %529, i64 0, i32 26, !dbg !2819
  %530 = load i32, ptr %i_lines, align 16, !dbg !2820, !tbaa !1859
  %add3640 = add nsw i32 %530, 64, !dbg !2821
  %mul3641 = mul nsw i32 %add3640, %3, !dbg !2822
  %idx.ext3642 = sext i32 %mul3641 to i64, !dbg !2823
  %add.ptr3643 = getelementptr inbounds i16, ptr %520, i64 %idx.ext3642, !dbg !2823
  call void @llvm.dbg.value(metadata ptr %add.ptr3643, metadata !1619, metadata !DIExpression()), !dbg !2784
  br label %if.end3644, !dbg !2824

if.end3644:                                       ; preds = %if.then3638, %sw.bb3561
  %sums_base.0 = phi ptr [ %add.ptr3643, %if.then3638 ], [ %520, %sw.bb3561 ], !dbg !2784
  call void @llvm.dbg.value(metadata ptr %sums_base.0, metadata !1619, metadata !DIExpression()), !dbg !2784
  switch i32 %0, label %if.end3654 [
    i32 5, label %if.then3652
    i32 2, label %if.then3652
    i32 0, label %if.then3652
  ], !dbg !2825

if.then3652:                                      ; preds = %if.end3644, %if.end3644, %if.end3644
  %mul3653 = mul nsw i32 %521, %3, !dbg !2827
  call void @llvm.dbg.value(metadata i32 %mul3653, metadata !1622, metadata !DIExpression()), !dbg !2784
  br label %if.end3654, !dbg !2828

if.end3654:                                       ; preds = %if.end3644, %if.then3652
  %delta.0 = phi i32 [ %mul3653, %if.then3652 ], [ %521, %if.end3644 ], !dbg !2784
  call void @llvm.dbg.value(metadata i32 %delta.0, metadata !1622, metadata !DIExpression()), !dbg !2784
  switch i32 %0, label %if.end3663 [
    i32 5, label %if.then3660
    i32 2, label %if.then3660
  ], !dbg !2829

if.then3660:                                      ; preds = %if.end3654, %if.end3654
  %arrayidx3661 = getelementptr inbounds [4 x i32], ptr %enc_dc, i64 0, i64 2, !dbg !2831
  %531 = load i32, ptr %arrayidx3661, align 8, !dbg !2831, !tbaa !1859
  %arrayidx3662 = getelementptr inbounds [4 x i32], ptr %enc_dc, i64 0, i64 1, !dbg !2832
  store i32 %531, ptr %arrayidx3662, align 4, !dbg !2833, !tbaa !1859
  br label %if.end3663, !dbg !2832

if.end3663:                                       ; preds = %if.end3654, %if.then3660
  %532 = load i32, ptr %i_me_method, align 4, !dbg !2834, !tbaa !2107
  %cmp3666 = icmp eq i32 %532, 4, !dbg !2835
  br i1 %cmp3666, label %if.then3668, label %for.cond4019.preheader, !dbg !2836

for.cond4019.preheader:                           ; preds = %if.end3663
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.4, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %517, metadata !1673, metadata !DIExpression()), !dbg !2837
  %cmp4020.not6348 = icmp sgt i32 %517, %519, !dbg !2838
  br i1 %cmp4020.not6348, label %if.end4206, label %for.body4023.lr.ph, !dbg !2839

for.body4023.lr.ph:                               ; preds = %for.cond4019.preheader
  %arrayidx4038 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 20, i64 %idxprom
  %idx.ext4040 = sext i32 %516 to i64
  %add.ptr4041 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext4040
  %add.ptr4046 = getelementptr inbounds i16, ptr %add.ptr3621, i64 %idx.ext4040
  %arrayidx4056 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 8, i64 %idxprom
  %arrayidx4106 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 1
  %arrayidx4117 = getelementptr inbounds [16 x i32], ptr %costs, i64 0, i64 2
  %arrayidx4163 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %533 = sext i32 %517 to i64, !dbg !2839
  %534 = sext i32 %3 to i64, !dbg !2839
  %535 = add i32 %519, 1, !dbg !2839
  br label %for.body4023, !dbg !2839

if.then3668:                                      ; preds = %if.end3663
  %add3669 = add nsw i32 %and3596, 15, !dbg !2840
  %and3670 = and i32 %add3669, -16, !dbg !2841
  %idx.ext3671 = sext i32 %and3670 to i64, !dbg !2842
  %add.ptr3672 = getelementptr inbounds i16, ptr %522, i64 %idx.ext3671, !dbg !2842
  call void @llvm.dbg.value(metadata ptr %add.ptr3672, metadata !1626, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 0, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp3673 = icmp slt i32 %4, 17, !dbg !2844
  br i1 %cmp3673, label %cond.end3680, label %cond.false3676, !dbg !2845

cond.false3676:                                   ; preds = %if.then3668
  %cmp3677 = icmp ult i32 %4, 25, !dbg !2846
  %cond3679 = select i1 %cmp3677, i32 11, i32 12, !dbg !2847
  br label %cond.end3680, !dbg !2845

cond.end3680:                                     ; preds = %if.then3668, %cond.false3676
  %cond3681 = phi i32 [ %cond3679, %cond.false3676 ], [ 10, %if.then3668 ], !dbg !2845
  call void @llvm.dbg.value(metadata i32 %cond3681, metadata !1631, metadata !DIExpression()), !dbg !2843
  %arrayidx3684 = getelementptr inbounds [7 x ptr], ptr %pixf3622, i64 0, i64 %idxprom, !dbg !2848
  %536 = load ptr, ptr %arrayidx3684, align 8, !dbg !2848, !tbaa !1889
  %mul3685 = mul nsw i32 %bmy.4, %3, !dbg !2849
  %idx.ext3686 = sext i32 %mul3685 to i64, !dbg !2850
  %add.ptr3687 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3686, !dbg !2850
  %idx.ext3688 = sext i32 %bmx.4 to i64, !dbg !2851
  %add.ptr3689 = getelementptr inbounds i8, ptr %add.ptr3687, i64 %idx.ext3688, !dbg !2851
  %call3690 = call i32 %536(ptr noundef %5, i32 noundef 16, ptr noundef %add.ptr3689, i32 noundef %3) #5, !dbg !2848
  %shl3691 = shl nsw i32 %bmx.4, 2, !dbg !2852
  %idxprom3692 = sext i32 %shl3691 to i64, !dbg !2852
  %arrayidx3693 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3692, !dbg !2852
  %537 = load i16, ptr %arrayidx3693, align 2, !dbg !2852, !tbaa !1912
  %conv3694 = zext i16 %537 to i32, !dbg !2852
  %shl3695 = shl nsw i32 %bmy.4, 2, !dbg !2852
  %idxprom3696 = sext i32 %shl3695 to i64, !dbg !2852
  %arrayidx3697 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3696, !dbg !2852
  %538 = load i16, ptr %arrayidx3697, align 2, !dbg !2852, !tbaa !1912
  %conv3698 = zext i16 %538 to i32, !dbg !2852
  %add3699 = add i32 %call3690, %conv3694, !dbg !2852
  %add3700 = add i32 %add3699, %conv3698, !dbg !2853
  call void @llvm.dbg.value(metadata i32 %add3700, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %517, metadata !1633, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 0, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp3703.not6372 = icmp sgt i32 %517, %519, !dbg !2855
  br i1 %cmp3703.not6372, label %for.cond.cleanup3705, label %for.body3706.lr.ph, !dbg !2856

for.body3706.lr.ph:                               ; preds = %cond.end3680
  %arrayidx3719 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 20, i64 %idxprom
  %idx.ext3721 = sext i32 %516 to i64
  %add.ptr3722 = getelementptr inbounds i16, ptr %sums_base.0, i64 %idx.ext3721
  %add.ptr3727 = getelementptr inbounds i16, ptr %add.ptr3621, i64 %idx.ext3721
  %add.ptr3736 = getelementptr inbounds i8, ptr %6, i64 %idx.ext3721
  %arrayidx3742 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 16, i64 %idxprom
  %539 = trunc i32 %516 to i16
  %540 = sext i32 %517 to i64, !dbg !2856
  %541 = sext i32 %3 to i64, !dbg !2856
  %542 = add i32 %519, 1, !dbg !2856
  br label %for.body3706, !dbg !2856

for.cond.cleanup3705:                             ; preds = %cleanup3868, %cond.end3680
  %nmvsad.0.lcssa = phi i32 [ 0, %cond.end3680 ], [ %nmvsad.6, %cleanup3868 ], !dbg !2857
  %bsad.0.lcssa = phi i32 [ %add3700, %cond.end3680 ], [ %bsad.8, %cleanup3868 ], !dbg !2858
  %shr3876 = ashr i32 %4, 1, !dbg !2859
  call void @llvm.dbg.value(metadata i32 %shr3876, metadata !1630, metadata !DIExpression()), !dbg !2843
  %mul3877 = mul nsw i32 %bsad.0.lcssa, %cond3681, !dbg !2860
  %shr3878 = ashr i32 %mul3877, 3, !dbg !2861
  call void @llvm.dbg.value(metadata i32 %shr3878, metadata !1631, metadata !DIExpression()), !dbg !2843
  %mul3879 = and i32 %4, -2
  call void @llvm.dbg.value(metadata i32 %nmvsad.0.lcssa, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp38806386 = icmp sgt i32 %nmvsad.0.lcssa, %mul3879, !dbg !2862
  %cmp38836387 = icmp sgt i32 %shr3878, %bsad.0.lcssa
  %or.cond62236388 = select i1 %cmp38806386, i1 %cmp38836387, i1 false, !dbg !2863
  br i1 %or.cond62236388, label %while.body, label %while.cond3923.preheader, !dbg !2863

for.body3706:                                     ; preds = %for.body3706.lr.ph, %cleanup3868
  %indvars.iv6529 = phi i64 [ %540, %for.body3706.lr.ph ], [ %indvars.iv.next6530, %cleanup3868 ]
  %bsad.06374 = phi i32 [ %add3700, %for.body3706.lr.ph ], [ %bsad.8, %cleanup3868 ]
  %nmvsad.06373 = phi i32 [ 0, %for.body3706.lr.ph ], [ %nmvsad.6, %cleanup3868 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6529, metadata !1633, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i32 %bsad.06374, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.06373, metadata !1629, metadata !DIExpression()), !dbg !2843
  %543 = trunc i64 %indvars.iv6529 to i32, !dbg !2864
  %shl3708 = shl i32 %543, 2, !dbg !2864
  %idxprom3709 = sext i32 %shl3708 to i64, !dbg !2865
  %arrayidx3710 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3709, !dbg !2865
  %544 = load i16, ptr %arrayidx3710, align 2, !dbg !2865, !tbaa !1912
  %conv3711 = zext i16 %544 to i32, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %conv3711, metadata !1638, metadata !DIExpression()), !dbg !2866
  %cmp3712.not = icmp sgt i32 %bsad.06374, %conv3711, !dbg !2867
  br i1 %cmp3712.not, label %if.end3715, label %cleanup3868, !dbg !2869

if.end3715:                                       ; preds = %for.body3706
  %sub3716 = sub nsw i32 %bsad.06374, %conv3711, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %sub3716, metadata !1632, metadata !DIExpression()), !dbg !2843
  %545 = load ptr, ptr %arrayidx3719, align 8, !dbg !2871, !tbaa !1889
  %546 = mul nsw i64 %indvars.iv6529, %541, !dbg !2872
  %add.ptr3725 = getelementptr inbounds i16, ptr %add.ptr3722, i64 %546, !dbg !2873
  %mul3728 = mul nsw i32 %sub3716, 17, !dbg !2874
  %div = sdiv i32 %mul3728, 16, !dbg !2875
  %call3729 = call i32 %545(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr3725, i32 noundef %delta.0, ptr noundef %add.ptr3727, ptr noundef %522, i32 noundef %and3596, i32 noundef %div) #5, !dbg !2871
  call void @llvm.dbg.value(metadata i32 %call3729, metadata !1624, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !1635, metadata !DIExpression()), !dbg !2866
  %sub3731 = add nsw i32 %call3729, -2
  call void @llvm.dbg.value(metadata i32 %nmvsad.06373, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp37326359 = icmp sgt i32 %call3729, 2, !dbg !2876
  br i1 %cmp37326359, label %for.body3734.lr.ph, label %for.cond3813.preheader, !dbg !2877

for.body3734.lr.ph:                               ; preds = %if.end3715
  %add.ptr3739 = getelementptr inbounds i8, ptr %add.ptr3736, i64 %546
  %conv3799 = trunc i64 %indvars.iv6529 to i16
  br label %for.body3734, !dbg !2877

for.cond3813.preheader.loopexit:                  ; preds = %for.cond.cleanup3765
  %547 = trunc i64 %indvars.iv.next6522 to i32, !dbg !2876
  br label %for.cond3813.preheader, !dbg !2878

for.cond3813.preheader:                           ; preds = %for.cond3813.preheader.loopexit, %if.end3715
  %nmvsad.1.lcssa = phi i32 [ %nmvsad.06373, %if.end3715 ], [ %nmvsad.3, %for.cond3813.preheader.loopexit ], !dbg !2857
  %bsad.1.lcssa = phi i32 [ %sub3716, %if.end3715 ], [ %bsad.4, %for.cond3813.preheader.loopexit ], !dbg !2870
  %i3707.0.lcssa = phi i32 [ 0, %if.end3715 ], [ %547, %for.cond3813.preheader.loopexit ], !dbg !2879
  call void @llvm.dbg.value(metadata i32 %i3707.0.lcssa, metadata !1635, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.1.lcssa, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.1.lcssa, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp38146366 = icmp slt i32 %i3707.0.lcssa, %call3729, !dbg !2878
  br i1 %cmp38146366, label %for.body3816.lr.ph, label %for.end3866, !dbg !2880

for.body3816.lr.ph:                               ; preds = %for.cond3813.preheader
  %conv3857 = trunc i64 %indvars.iv6529 to i16
  %548 = zext i32 %i3707.0.lcssa to i64, !dbg !2880
  %add.ptr3828 = getelementptr inbounds i8, ptr %6, i64 %546
  br label %for.body3816, !dbg !2880

for.body3734:                                     ; preds = %for.body3734.lr.ph, %for.cond.cleanup3765
  %indvars.iv6521 = phi i64 [ 0, %for.body3734.lr.ph ], [ %indvars.iv.next6522, %for.cond.cleanup3765 ]
  %bsad.16361 = phi i32 [ %sub3716, %for.body3734.lr.ph ], [ %bsad.4, %for.cond.cleanup3765 ]
  %nmvsad.16360 = phi i32 [ %nmvsad.06373, %for.body3734.lr.ph ], [ %nmvsad.3, %for.cond.cleanup3765 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6521, metadata !1635, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.16361, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.16360, metadata !1629, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %add.ptr3739, metadata !1639, metadata !DIExpression()), !dbg !2881
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sads) #5, !dbg !2882
  call void @llvm.dbg.declare(metadata ptr %sads, metadata !1643, metadata !DIExpression()), !dbg !2883
  %549 = load ptr, ptr %arrayidx3742, align 8, !dbg !2884, !tbaa !1889
  %arrayidx3744 = getelementptr inbounds i16, ptr %522, i64 %indvars.iv6521, !dbg !2885
  %550 = load i16, ptr %arrayidx3744, align 2, !dbg !2885, !tbaa !1912
  %idx.ext3746 = sext i16 %550 to i64, !dbg !2886
  %add.ptr3747 = getelementptr inbounds i8, ptr %add.ptr3739, i64 %idx.ext3746, !dbg !2886
  %551 = add nuw nsw i64 %indvars.iv6521, 1, !dbg !2887
  %arrayidx3750 = getelementptr inbounds i16, ptr %522, i64 %551, !dbg !2888
  %552 = load i16, ptr %arrayidx3750, align 2, !dbg !2888, !tbaa !1912
  %idx.ext3752 = sext i16 %552 to i64, !dbg !2889
  %add.ptr3753 = getelementptr inbounds i8, ptr %add.ptr3739, i64 %idx.ext3752, !dbg !2889
  %553 = add nuw nsw i64 %indvars.iv6521, 2, !dbg !2890
  %arrayidx3756 = getelementptr inbounds i16, ptr %522, i64 %553, !dbg !2891
  %554 = load i16, ptr %arrayidx3756, align 2, !dbg !2891, !tbaa !1912
  %idx.ext3758 = sext i16 %554 to i64, !dbg !2892
  %add.ptr3759 = getelementptr inbounds i8, ptr %add.ptr3739, i64 %idx.ext3758, !dbg !2892
  call void %549(ptr noundef %5, ptr noundef %add.ptr3747, ptr noundef %add.ptr3753, ptr noundef %add.ptr3759, i32 noundef %3, ptr noundef nonnull %sads) #5, !dbg !2884
  call void @llvm.dbg.value(metadata i32 0, metadata !1644, metadata !DIExpression()), !dbg !2893
  br label %for.body3766, !dbg !2894

for.cond.cleanup3765:                             ; preds = %if.end3805
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sads) #5, !dbg !2895
  %indvars.iv.next6522 = add nuw i64 %indvars.iv6521, 3, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6522, metadata !1635, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.4, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.3, metadata !1629, metadata !DIExpression()), !dbg !2843
  %555 = trunc i64 %indvars.iv.next6522 to i32, !dbg !2876
  %cmp3732 = icmp sgt i32 %sub3731, %555, !dbg !2876
  br i1 %cmp3732, label %for.body3734, label %for.cond3813.preheader.loopexit, !dbg !2877, !llvm.loop !2897

for.body3766:                                     ; preds = %for.body3734, %if.end3805
  %indvars.iv6516 = phi i64 [ 0, %for.body3734 ], [ %indvars.iv.next6517, %if.end3805 ]
  %bsad.26357 = phi i32 [ %bsad.16361, %for.body3734 ], [ %bsad.4, %if.end3805 ]
  %nmvsad.26356 = phi i32 [ %nmvsad.16360, %for.body3734 ], [ %nmvsad.3, %if.end3805 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6516, metadata !1644, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 %bsad.26357, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.26356, metadata !1629, metadata !DIExpression()), !dbg !2843
  %arrayidx3769 = getelementptr inbounds [3 x i32], ptr %sads, i64 0, i64 %indvars.iv6516, !dbg !2899
  %556 = load i32, ptr %arrayidx3769, align 4, !dbg !2899, !tbaa !1859
  %557 = add nuw nsw i64 %indvars.iv6516, %indvars.iv6521, !dbg !2900
  %arrayidx3772 = getelementptr inbounds i16, ptr %522, i64 %557, !dbg !2901
  %558 = load i16, ptr %arrayidx3772, align 2, !dbg !2901, !tbaa !1912
  %idxprom3773 = sext i16 %558 to i64, !dbg !2902
  %arrayidx3774 = getelementptr inbounds i16, ptr %add.ptr3621, i64 %idxprom3773, !dbg !2902
  %559 = load i16, ptr %arrayidx3774, align 2, !dbg !2902, !tbaa !1912
  %conv3775 = zext i16 %559 to i32, !dbg !2902
  %add3776 = add nsw i32 %556, %conv3775, !dbg !2903
  call void @llvm.dbg.value(metadata i32 %add3776, metadata !1646, metadata !DIExpression()), !dbg !2904
  %mul3777 = mul nsw i32 %bsad.26357, %cond3681, !dbg !2905
  %shr3778 = ashr i32 %mul3777, 3, !dbg !2907
  %cmp3779 = icmp slt i32 %add3776, %shr3778, !dbg !2908
  br i1 %cmp3779, label %if.then3781, label %if.end3805, !dbg !2909

if.then3781:                                      ; preds = %for.body3766
  %560 = call i32 @llvm.smin.i32(i32 %add3776, i32 %bsad.26357), !dbg !2910
  call void @llvm.dbg.value(metadata i32 %560, metadata !1632, metadata !DIExpression()), !dbg !2843
  %add3786 = add nsw i32 %add3776, %conv3711, !dbg !2912
  %idxprom3787 = sext i32 %nmvsad.26356 to i64, !dbg !2913
  %arrayidx3788 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %idxprom3787, !dbg !2913
  store i32 %add3786, ptr %arrayidx3788, align 4, !dbg !2914, !tbaa !2915
  %conv3795 = add i16 %558, %539, !dbg !2917
  %mv = getelementptr inbounds %struct.mvsad_t, ptr %arrayidx3788, i64 0, i32 1, !dbg !2918
  store i16 %conv3795, ptr %mv, align 4, !dbg !2919, !tbaa !1912
  %arrayidx3803 = getelementptr inbounds [2 x i16], ptr %mv, i64 0, i64 1, !dbg !2920
  store i16 %conv3799, ptr %arrayidx3803, align 2, !dbg !2921, !tbaa !1912
  %inc3804 = add nsw i32 %nmvsad.26356, 1, !dbg !2922
  call void @llvm.dbg.value(metadata i32 %inc3804, metadata !1629, metadata !DIExpression()), !dbg !2843
  br label %if.end3805, !dbg !2923

if.end3805:                                       ; preds = %if.then3781, %for.body3766
  %nmvsad.3 = phi i32 [ %inc3804, %if.then3781 ], [ %nmvsad.26356, %for.body3766 ], !dbg !2843
  %bsad.4 = phi i32 [ %560, %if.then3781 ], [ %bsad.26357, %for.body3766 ], !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.4, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.3, metadata !1629, metadata !DIExpression()), !dbg !2843
  %indvars.iv.next6517 = add nuw nsw i64 %indvars.iv6516, 1, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6517, metadata !1644, metadata !DIExpression()), !dbg !2893
  %exitcond6520.not = icmp eq i64 %indvars.iv.next6517, 3, !dbg !2925
  br i1 %exitcond6520.not, label %for.cond.cleanup3765, label %for.body3766, !dbg !2894, !llvm.loop !2926

for.body3816:                                     ; preds = %for.body3816.lr.ph, %if.end3863
  %indvars.iv6526 = phi i64 [ %548, %for.body3816.lr.ph ], [ %indvars.iv.next6527, %if.end3863 ]
  %bsad.56368 = phi i32 [ %bsad.1.lcssa, %for.body3816.lr.ph ], [ %bsad.7, %if.end3863 ]
  %nmvsad.46367 = phi i32 [ %nmvsad.1.lcssa, %for.body3816.lr.ph ], [ %nmvsad.5, %if.end3863 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6526, metadata !1635, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.56368, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.46367, metadata !1629, metadata !DIExpression()), !dbg !2843
  %arrayidx3819 = getelementptr inbounds i16, ptr %522, i64 %indvars.iv6526, !dbg !2928
  %561 = load i16, ptr %arrayidx3819, align 2, !dbg !2928, !tbaa !1912
  %conv3820 = sext i16 %561 to i32, !dbg !2928
  %add3821 = add nsw i32 %516, %conv3820, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %add3821, metadata !1649, metadata !DIExpression()), !dbg !2930
  %562 = load ptr, ptr %arrayidx3684, align 8, !dbg !2931, !tbaa !1889
  %idx.ext3827 = sext i32 %add3821 to i64, !dbg !2932
  %add.ptr3831 = getelementptr inbounds i8, ptr %add.ptr3828, i64 %idx.ext3827, !dbg !2933
  %call3832 = call i32 %562(ptr noundef %5, i32 noundef 16, ptr noundef %add.ptr3831, i32 noundef %3) #5, !dbg !2931
  %563 = load i16, ptr %arrayidx3819, align 2, !dbg !2934, !tbaa !1912
  %idxprom3835 = sext i16 %563 to i64, !dbg !2935
  %arrayidx3836 = getelementptr inbounds i16, ptr %add.ptr3621, i64 %idxprom3835, !dbg !2935
  %564 = load i16, ptr %arrayidx3836, align 2, !dbg !2935, !tbaa !1912
  %conv3837 = zext i16 %564 to i32, !dbg !2935
  %add3838 = add nsw i32 %call3832, %conv3837, !dbg !2936
  call void @llvm.dbg.value(metadata i32 %add3838, metadata !1653, metadata !DIExpression()), !dbg !2930
  %mul3839 = mul nsw i32 %bsad.56368, %cond3681, !dbg !2937
  %shr3840 = ashr i32 %mul3839, 3, !dbg !2939
  %cmp3841 = icmp slt i32 %add3838, %shr3840, !dbg !2940
  br i1 %cmp3841, label %if.then3843, label %if.end3863, !dbg !2941

if.then3843:                                      ; preds = %for.body3816
  %565 = call i32 @llvm.smin.i32(i32 %add3838, i32 %bsad.56368), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %565, metadata !1632, metadata !DIExpression()), !dbg !2843
  %add3848 = add nsw i32 %add3838, %conv3711, !dbg !2944
  %idxprom3849 = sext i32 %nmvsad.46367 to i64, !dbg !2945
  %arrayidx3850 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %idxprom3849, !dbg !2945
  store i32 %add3848, ptr %arrayidx3850, align 4, !dbg !2946, !tbaa !2915
  %conv3852 = trunc i32 %add3821 to i16, !dbg !2947
  %mv3855 = getelementptr inbounds %struct.mvsad_t, ptr %arrayidx3850, i64 0, i32 1, !dbg !2948
  store i16 %conv3852, ptr %mv3855, align 4, !dbg !2949, !tbaa !1912
  %arrayidx3861 = getelementptr inbounds [2 x i16], ptr %mv3855, i64 0, i64 1, !dbg !2950
  store i16 %conv3857, ptr %arrayidx3861, align 2, !dbg !2951, !tbaa !1912
  %inc3862 = add nsw i32 %nmvsad.46367, 1, !dbg !2952
  call void @llvm.dbg.value(metadata i32 %inc3862, metadata !1629, metadata !DIExpression()), !dbg !2843
  br label %if.end3863, !dbg !2953

if.end3863:                                       ; preds = %if.then3843, %for.body3816
  %nmvsad.5 = phi i32 [ %inc3862, %if.then3843 ], [ %nmvsad.46367, %for.body3816 ], !dbg !2843
  %bsad.7 = phi i32 [ %565, %if.then3843 ], [ %bsad.56368, %for.body3816 ], !dbg !2866
  call void @llvm.dbg.value(metadata i32 %bsad.7, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.5, metadata !1629, metadata !DIExpression()), !dbg !2843
  %indvars.iv.next6527 = add nuw nsw i64 %indvars.iv6526, 1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6527, metadata !1635, metadata !DIExpression()), !dbg !2866
  %566 = trunc i64 %indvars.iv.next6527 to i32, !dbg !2878
  %cmp3814 = icmp sgt i32 %call3729, %566, !dbg !2878
  br i1 %cmp3814, label %for.body3816, label %for.end3866, !dbg !2880, !llvm.loop !2955

for.end3866:                                      ; preds = %if.end3863, %for.cond3813.preheader
  %nmvsad.4.lcssa = phi i32 [ %nmvsad.1.lcssa, %for.cond3813.preheader ], [ %nmvsad.5, %if.end3863 ], !dbg !2843
  %bsad.5.lcssa = phi i32 [ %bsad.1.lcssa, %for.cond3813.preheader ], [ %bsad.7, %if.end3863 ], !dbg !2866
  %add3867 = add nsw i32 %bsad.5.lcssa, %conv3711, !dbg !2957
  call void @llvm.dbg.value(metadata i32 %add3867, metadata !1632, metadata !DIExpression()), !dbg !2843
  br label %cleanup3868, !dbg !2958

cleanup3868:                                      ; preds = %for.body3706, %for.end3866
  %nmvsad.6 = phi i32 [ %nmvsad.4.lcssa, %for.end3866 ], [ %nmvsad.06373, %for.body3706 ], !dbg !2857
  %bsad.8 = phi i32 [ %add3867, %for.end3866 ], [ %bsad.06374, %for.body3706 ], !dbg !2843
  call void @llvm.dbg.value(metadata i32 %bsad.8, metadata !1632, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.6, metadata !1629, metadata !DIExpression()), !dbg !2843
  %indvars.iv.next6530 = add nsw i64 %indvars.iv6529, 1, !dbg !2959
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6530, metadata !1633, metadata !DIExpression()), !dbg !2854
  %lftr.wideiv6533 = trunc i64 %indvars.iv.next6530 to i32, !dbg !2855
  %exitcond6534.not = icmp eq i32 %542, %lftr.wideiv6533, !dbg !2855
  br i1 %exitcond6534.not, label %for.cond.cleanup3705, label %for.body3706, !dbg !2856, !llvm.loop !2960

while.cond.loopexit:                              ; preds = %for.inc3900, %for.body3908, %for.end3902
  %i3886.1.lcssa = phi i32 [ %i3886.0.lcssa, %for.end3902 ], [ %add3918, %for.body3908 ], [ %nmvsad.76389, %for.inc3900 ], !dbg !2962
  call void @llvm.dbg.value(metadata i32 %shr3888, metadata !1631, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %i3886.1.lcssa, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp3880 = icmp sgt i32 %i3886.1.lcssa, %mul3879, !dbg !2862
  %cmp3883 = icmp sgt i32 %shr3888, %bsad.0.lcssa
  %or.cond6223 = select i1 %cmp3880, i1 %cmp3883, i1 false, !dbg !2863
  br i1 %or.cond6223, label %while.body, label %while.cond3923.preheader, !dbg !2863, !llvm.loop !2963

while.cond3923.preheader:                         ; preds = %while.cond.loopexit, %for.cond.cleanup3705
  %nmvsad.7.lcssa = phi i32 [ %nmvsad.0.lcssa, %for.cond.cleanup3705 ], [ %i3886.1.lcssa, %while.cond.loopexit ], !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.7.lcssa, metadata !1629, metadata !DIExpression()), !dbg !2843
  %cmp39246396 = icmp sgt i32 %nmvsad.7.lcssa, %shr3876, !dbg !2966
  br i1 %cmp39246396, label %for.cond3928.preheader.preheader, label %for.cond3954.preheader, !dbg !2967

for.cond3928.preheader.preheader:                 ; preds = %while.cond3923.preheader
  %567 = sext i32 %nmvsad.7.lcssa to i64, !dbg !2967
  %568 = sext i32 %shr3876 to i64, !dbg !2967
  br label %for.cond3928.preheader, !dbg !2967

while.body:                                       ; preds = %for.cond.cleanup3705, %while.cond.loopexit
  %sad_thresh.06390 = phi i32 [ %shr3888, %while.cond.loopexit ], [ %shr3878, %for.cond.cleanup3705 ]
  %nmvsad.76389 = phi i32 [ %i3886.1.lcssa, %while.cond.loopexit ], [ %nmvsad.0.lcssa, %for.cond.cleanup3705 ]
  call void @llvm.dbg.value(metadata i32 %sad_thresh.06390, metadata !1631, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 %nmvsad.76389, metadata !1629, metadata !DIExpression()), !dbg !2843
  %add3887 = add nsw i32 %sad_thresh.06390, %bsad.0.lcssa, !dbg !2968
  %shr3888 = ashr i32 %add3887, 1, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %shr3888, metadata !1631, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 0, metadata !1654, metadata !DIExpression()), !dbg !2962
  %cmp38906378 = icmp sgt i32 %nmvsad.76389, 0, !dbg !2970
  br i1 %cmp38906378, label %land.rhs3892.preheader, label %for.end3902, !dbg !2973

land.rhs3892.preheader:                           ; preds = %while.body
  %569 = zext i32 %nmvsad.76389 to i64, !dbg !2974
  br label %land.rhs3892, !dbg !2974

land.rhs3892:                                     ; preds = %land.rhs3892.preheader, %for.inc3900
  %indvars.iv6535 = phi i64 [ 0, %land.rhs3892.preheader ], [ %indvars.iv.next6536, %for.inc3900 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6535, metadata !1654, metadata !DIExpression()), !dbg !2962
  %arrayidx3894 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %indvars.iv6535, !dbg !2975
  %570 = load i32, ptr %arrayidx3894, align 4, !dbg !2976, !tbaa !2915
  %cmp3896.not = icmp sgt i32 %570, %shr3888, !dbg !2977
  br i1 %cmp3896.not, label %for.end3902.loopexit, label %for.inc3900, !dbg !2974

for.inc3900:                                      ; preds = %land.rhs3892
  %indvars.iv.next6536 = add nuw nsw i64 %indvars.iv6535, 1, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6536, metadata !1654, metadata !DIExpression()), !dbg !2962
  %exitcond6538.not = icmp eq i64 %indvars.iv.next6536, %569, !dbg !2970
  br i1 %exitcond6538.not, label %while.cond.loopexit, label %land.rhs3892, !dbg !2973, !llvm.loop !2979

for.end3902.loopexit:                             ; preds = %land.rhs3892
  %571 = trunc i64 %indvars.iv6535 to i32, !dbg !2974
  br label %for.end3902, !dbg !2981

for.end3902:                                      ; preds = %for.end3902.loopexit, %while.body
  %i3886.0.lcssa = phi i32 [ 0, %while.body ], [ %571, %for.end3902.loopexit ], !dbg !2982
  call void @llvm.dbg.value(metadata i32 %i3886.0.lcssa, metadata !1656, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %i3886.0.lcssa, metadata !1654, metadata !DIExpression()), !dbg !2962
  %cmp39056382 = icmp slt i32 %i3886.0.lcssa, %nmvsad.76389, !dbg !2981
  br i1 %cmp39056382, label %for.body3908.lr.ph, label %while.cond.loopexit, !dbg !2984

for.body3908.lr.ph:                               ; preds = %for.end3902
  %add3915.neg = xor i32 %shr3888, -1
  %572 = zext i32 %i3886.0.lcssa to i64, !dbg !2984
  br label %for.body3908, !dbg !2984

for.body3908:                                     ; preds = %for.body3908.lr.ph, %for.body3908
  %indvars.iv6539 = phi i64 [ %572, %for.body3908.lr.ph ], [ %indvars.iv.next6540, %for.body3908 ]
  %i3886.16383 = phi i32 [ %i3886.0.lcssa, %for.body3908.lr.ph ], [ %add3918, %for.body3908 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6539, metadata !1656, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i32 %i3886.16383, metadata !1654, metadata !DIExpression()), !dbg !2962
  %arrayidx3911 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %indvars.iv6539, !dbg !2985
  %573 = load i64, ptr %arrayidx3911, align 8, !dbg !2985, !tbaa !1975
  %idxprom3912 = sext i32 %i3886.16383 to i64, !dbg !2986
  %arrayidx3913 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %idxprom3912, !dbg !2986
  store i64 %573, ptr %arrayidx3913, align 8, !dbg !2987, !tbaa !1975
  call void @llvm.dbg.value(metadata i64 %573, metadata !1661, metadata !DIExpression()), !dbg !2988
  %conv3914 = trunc i64 %573 to i32, !dbg !2989
  call void @llvm.dbg.value(metadata i32 %conv3914, metadata !1658, metadata !DIExpression()), !dbg !2990
  %sub3916 = add i32 %conv3914, %add3915.neg, !dbg !2991
  %shr3917 = lshr i32 %sub3916, 31, !dbg !2992
  %add3918 = add i32 %shr3917, %i3886.16383, !dbg !2993
  call void @llvm.dbg.value(metadata i32 %add3918, metadata !1654, metadata !DIExpression()), !dbg !2962
  %indvars.iv.next6540 = add nuw nsw i64 %indvars.iv6539, 1, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6540, metadata !1656, metadata !DIExpression()), !dbg !2983
  %574 = trunc i64 %indvars.iv.next6540 to i32, !dbg !2981
  %cmp3905 = icmp sgt i32 %nmvsad.76389, %574, !dbg !2981
  br i1 %cmp3905, label %for.body3908, label %while.cond.loopexit, !dbg !2984, !llvm.loop !2995

for.cond3928.preheader:                           ; preds = %for.cond3928.preheader.preheader, %for.cond.cleanup3931
  %indvars.iv6547 = phi i64 [ %567, %for.cond3928.preheader.preheader ], [ %indvars.iv.next6548, %for.cond.cleanup3931 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6547, metadata !1629, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i32 1, metadata !1666, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 0, metadata !1664, metadata !DIExpression()), !dbg !2998
  %cmp39296392 = icmp sgt i64 %indvars.iv6547, 1, !dbg !2999
  br i1 %cmp39296392, label %for.body3932.preheader, label %for.cond.cleanup3931, !dbg !3001

for.body3932.preheader:                           ; preds = %for.cond3928.preheader
  %wide.trip.count6545 = and i64 %indvars.iv6547, 4294967295, !dbg !2999
  br label %for.body3932, !dbg !3001

for.cond3954.preheader.loopexit:                  ; preds = %for.cond.cleanup3931
  %575 = trunc i64 %indvars.iv.next6548 to i32, !dbg !3002
  br label %for.cond3954.preheader, !dbg !3002

for.cond3954.preheader:                           ; preds = %for.cond3954.preheader.loopexit, %while.cond3923.preheader
  %nmvsad.8.lcssa = phi i32 [ %nmvsad.7.lcssa, %while.cond3923.preheader ], [ %575, %for.cond3954.preheader.loopexit ], !dbg !2843
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.4, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 0, metadata !1668, metadata !DIExpression()), !dbg !3003
  %cmp39556399 = icmp sgt i32 %nmvsad.8.lcssa, 0, !dbg !3002
  br i1 %cmp39556399, label %for.body3958.lr.ph, label %if.end4206, !dbg !3004

for.body3958.lr.ph:                               ; preds = %for.cond3954.preheader
  %arrayidx3963 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom
  %wide.trip.count6553 = zext i32 %nmvsad.8.lcssa to i64, !dbg !3002
  br label %for.body3958, !dbg !3004

for.cond.cleanup3931:                             ; preds = %for.body3932, %for.cond3928.preheader
  %bi.0.lcssa = phi i32 [ 0, %for.cond3928.preheader ], [ %spec.select6224, %for.body3932 ], !dbg !2998
  %indvars.iv.next6548 = add nsw i64 %indvars.iv6547, -1, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6548, metadata !1629, metadata !DIExpression()), !dbg !2843
  %arrayidx3949 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %indvars.iv.next6548, !dbg !3006
  %576 = load i64, ptr %arrayidx3949, align 8, !dbg !3006, !tbaa !1975
  %idxprom3950 = sext i32 %bi.0.lcssa to i64, !dbg !3006
  %arrayidx3951 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %idxprom3950, !dbg !3006
  store i64 %576, ptr %arrayidx3951, align 8, !dbg !3006, !tbaa !1975
  %cmp3924 = icmp sgt i64 %indvars.iv.next6548, %568, !dbg !2966
  br i1 %cmp3924, label %for.cond3928.preheader, label %for.cond3954.preheader.loopexit, !dbg !2967, !llvm.loop !3008

for.body3932:                                     ; preds = %for.body3932.preheader, %for.body3932
  %indvars.iv6542 = phi i64 [ 1, %for.body3932.preheader ], [ %indvars.iv.next6543, %for.body3932 ]
  %bi.06393 = phi i32 [ 0, %for.body3932.preheader ], [ %spec.select6224, %for.body3932 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv6542, metadata !1666, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 %bi.06393, metadata !1664, metadata !DIExpression()), !dbg !2998
  %arrayidx3934 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %indvars.iv6542, !dbg !3010
  %577 = load i32, ptr %arrayidx3934, align 4, !dbg !3012, !tbaa !2915
  %idxprom3936 = sext i32 %bi.06393 to i64, !dbg !3013
  %arrayidx3937 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %idxprom3936, !dbg !3013
  %578 = load i32, ptr %arrayidx3937, align 4, !dbg !3014, !tbaa !2915
  %cmp3939 = icmp sgt i32 %577, %578, !dbg !3015
  %579 = trunc i64 %indvars.iv6542 to i32, !dbg !3016
  %spec.select6224 = select i1 %cmp3939, i32 %579, i32 %bi.06393, !dbg !3016
  call void @llvm.dbg.value(metadata i32 %spec.select6224, metadata !1664, metadata !DIExpression()), !dbg !2998
  %indvars.iv.next6543 = add nuw nsw i64 %indvars.iv6542, 1, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6543, metadata !1666, metadata !DIExpression()), !dbg !2997
  %exitcond6546.not = icmp eq i64 %indvars.iv.next6543, %wide.trip.count6545, !dbg !2999
  br i1 %exitcond6546.not, label %for.cond.cleanup3931, label %for.body3932, !dbg !3001, !llvm.loop !3018

for.body3958:                                     ; preds = %for.body3958.lr.ph, %if.end4012
  %indvars.iv6550 = phi i64 [ 0, %for.body3958.lr.ph ], [ %indvars.iv.next6551, %if.end4012 ]
  %bmx.966403 = phi i32 [ %bmx.4, %for.body3958.lr.ph ], [ %bmx.97, %if.end4012 ]
  %bmy.966402 = phi i32 [ %bmy.4, %for.body3958.lr.ph ], [ %bmy.97, %if.end4012 ]
  %bcost.1356401 = phi i32 [ %bcost.6, %for.body3958.lr.ph ], [ %bcost.136, %if.end4012 ]
  call void @llvm.dbg.value(metadata i32 %bmx.966403, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.966402, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1356401, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6550, metadata !1668, metadata !DIExpression()), !dbg !3003
  %580 = load ptr, ptr %arrayidx3963, align 8, !dbg !3020, !tbaa !1889
  %arrayidx3965 = getelementptr inbounds %struct.mvsad_t, ptr %add.ptr3672, i64 %indvars.iv6550, !dbg !3020
  %mv3966 = getelementptr inbounds %struct.mvsad_t, ptr %arrayidx3965, i64 0, i32 1, !dbg !3020
  %arrayidx3967 = getelementptr inbounds [2 x i16], ptr %mv3966, i64 0, i64 1, !dbg !3020
  %581 = load i16, ptr %arrayidx3967, align 2, !dbg !3020, !tbaa !1912
  %conv3968 = sext i16 %581 to i32, !dbg !3020
  %mul3969 = mul nsw i32 %3, %conv3968, !dbg !3020
  %582 = load i16, ptr %mv3966, align 4, !dbg !3020, !tbaa !1912
  %conv3974 = sext i16 %582 to i32, !dbg !3020
  %add3975 = add nsw i32 %mul3969, %conv3974, !dbg !3020
  %idxprom3976 = sext i32 %add3975 to i64, !dbg !3020
  %arrayidx3977 = getelementptr inbounds i8, ptr %6, i64 %idxprom3976, !dbg !3020
  %call3978 = call i32 %580(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx3977, i32 noundef %3) #5, !dbg !3020
  %583 = load i16, ptr %mv3966, align 4, !dbg !3020, !tbaa !1912
  %conv3983 = sext i16 %583 to i32, !dbg !3020
  %shl3984 = shl nsw i32 %conv3983, 2, !dbg !3020
  %idxprom3985 = sext i32 %shl3984 to i64, !dbg !3020
  %arrayidx3986 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom3985, !dbg !3020
  %584 = load i16, ptr %arrayidx3986, align 2, !dbg !3020, !tbaa !1912
  %conv3987 = zext i16 %584 to i32, !dbg !3020
  %585 = load i16, ptr %arrayidx3967, align 2, !dbg !3020, !tbaa !1912
  %conv3992 = sext i16 %585 to i32, !dbg !3020
  %shl3993 = shl nsw i32 %conv3992, 2, !dbg !3020
  %idxprom3994 = sext i32 %shl3993 to i64, !dbg !3020
  %arrayidx3995 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom3994, !dbg !3020
  %586 = load i16, ptr %arrayidx3995, align 2, !dbg !3020, !tbaa !1912
  %conv3996 = zext i16 %586 to i32, !dbg !3020
  %add3997 = add i32 %call3978, %conv3987, !dbg !3020
  %add3998 = add i32 %add3997, %conv3996, !dbg !3020
  call void @llvm.dbg.value(metadata i32 %add3998, metadata !1670, metadata !DIExpression()), !dbg !3021
  %cmp3999 = icmp slt i32 %add3998, %bcost.1356401, !dbg !3022
  br i1 %cmp3999, label %if.then4001, label %if.end4012, !dbg !3020

if.then4001:                                      ; preds = %for.body3958
  call void @llvm.dbg.value(metadata i32 %add3998, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %conv3983, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %conv3992, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end4012, !dbg !3024

if.end4012:                                       ; preds = %if.then4001, %for.body3958
  %bcost.136 = phi i32 [ %add3998, %if.then4001 ], [ %bcost.1356401, %for.body3958 ], !dbg !1843
  %bmy.97 = phi i32 [ %conv3992, %if.then4001 ], [ %bmy.966402, %for.body3958 ], !dbg !1843
  %bmx.97 = phi i32 [ %conv3983, %if.then4001 ], [ %bmx.966403, %for.body3958 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.97, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.97, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.136, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6551 = add nuw nsw i64 %indvars.iv6550, 1, !dbg !3026
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6551, metadata !1668, metadata !DIExpression()), !dbg !3003
  %exitcond6554.not = icmp eq i64 %indvars.iv.next6551, %wide.trip.count6553, !dbg !3002
  br i1 %exitcond6554.not, label %if.end4206, label %for.body3958, !dbg !3004, !llvm.loop !3027

for.body4023:                                     ; preds = %for.body4023.lr.ph, %cleanup4198
  %indvars.iv6511 = phi i64 [ %533, %for.body4023.lr.ph ], [ %indvars.iv.next6512, %cleanup4198 ]
  %bmx.986352 = phi i32 [ %bmx.4, %for.body4023.lr.ph ], [ %bmx.105, %cleanup4198 ]
  %bmy.986351 = phi i32 [ %bmy.4, %for.body4023.lr.ph ], [ %bmy.105, %cleanup4198 ]
  %bcost.1376350 = phi i32 [ %bcost.6, %for.body4023.lr.ph ], [ %bcost.144, %cleanup4198 ]
  call void @llvm.dbg.value(metadata i32 %bmx.986352, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.986351, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1376350, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6511, metadata !1673, metadata !DIExpression()), !dbg !2837
  %587 = trunc i64 %indvars.iv6511 to i32, !dbg !3029
  %shl4026 = shl i32 %587, 2, !dbg !3029
  %idxprom4027 = sext i32 %shl4026 to i64, !dbg !3030
  %arrayidx4028 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4027, !dbg !3030
  %588 = load i16, ptr %arrayidx4028, align 2, !dbg !3030, !tbaa !1912
  %conv4029 = zext i16 %588 to i32, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %conv4029, metadata !1679, metadata !DIExpression()), !dbg !3031
  %cmp4030.not = icmp sgt i32 %bcost.1376350, %conv4029, !dbg !3032
  br i1 %cmp4030.not, label %if.end4033, label %cleanup4198, !dbg !3034

if.end4033:                                       ; preds = %for.body4023
  %sub4034 = sub nsw i32 %bcost.1376350, %conv4029, !dbg !3035
  call void @llvm.dbg.value(metadata i32 %sub4034, metadata !1407, metadata !DIExpression()), !dbg !1843
  %589 = load ptr, ptr %arrayidx4038, align 8, !dbg !3036, !tbaa !1889
  %590 = mul nsw i64 %indvars.iv6511, %534, !dbg !3037
  %add.ptr4044 = getelementptr inbounds i16, ptr %add.ptr4041, i64 %590, !dbg !3038
  %call4047 = call i32 %589(ptr noundef nonnull %enc_dc, ptr noundef %add.ptr4044, i32 noundef %delta.0, ptr noundef %add.ptr4046, ptr noundef %522, i32 noundef %and3596, i32 noundef %sub4034) #5, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %call4047, metadata !1624, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i32 0, metadata !1676, metadata !DIExpression()), !dbg !3031
  %sub4049 = add nsw i32 %call4047, -2
  call void @llvm.dbg.value(metadata i32 %bmx.986352, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.986351, metadata !1406, metadata !DIExpression()), !dbg !1843
  %cmp40506331 = icmp sgt i32 %call4047, 2, !dbg !3039
  br i1 %cmp40506331, label %for.body4052.preheader, label %for.end4153, !dbg !3042

for.body4052.preheader:                           ; preds = %if.end4033
  %add.ptr4062 = getelementptr inbounds i8, ptr %6, i64 %590
  %add.ptr4072 = getelementptr inbounds i8, ptr %6, i64 %590
  %add.ptr4082 = getelementptr inbounds i8, ptr %6, i64 %590
  br label %for.body4052, !dbg !3042

for.body4052:                                     ; preds = %for.body4052.preheader, %for.inc4151
  %indvars.iv6503 = phi i64 [ 0, %for.body4052.preheader ], [ %indvars.iv.next6504, %for.inc4151 ]
  %bmx.996335 = phi i32 [ %bmx.986352, %for.body4052.preheader ], [ %bmx.102, %for.inc4151 ]
  %bmy.996334 = phi i32 [ %bmy.986351, %for.body4052.preheader ], [ %bmy.102, %for.inc4151 ]
  %bcost.1386333 = phi i32 [ %sub4034, %for.body4052.preheader ], [ %bcost.141, %for.inc4151 ]
  call void @llvm.dbg.value(metadata i32 %bmx.996335, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.996334, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1386333, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6503, metadata !1676, metadata !DIExpression()), !dbg !3031
  %591 = load ptr, ptr %arrayidx4056, align 8, !dbg !3043, !tbaa !1889
  %arrayidx4058 = getelementptr inbounds i16, ptr %522, i64 %indvars.iv6503, !dbg !3043
  %592 = load i16, ptr %arrayidx4058, align 2, !dbg !3043, !tbaa !1912
  %conv4059 = sext i16 %592 to i32, !dbg !3043
  %add4060 = add nsw i32 %516, %conv4059, !dbg !3043
  %idx.ext4061 = sext i32 %add4060 to i64, !dbg !3043
  %add.ptr4065 = getelementptr inbounds i8, ptr %add.ptr4062, i64 %idx.ext4061, !dbg !3043
  %593 = add nuw nsw i64 %indvars.iv6503, 1, !dbg !3043
  %arrayidx4068 = getelementptr inbounds i16, ptr %522, i64 %593, !dbg !3043
  %594 = load i16, ptr %arrayidx4068, align 2, !dbg !3043, !tbaa !1912
  %conv4069 = sext i16 %594 to i32, !dbg !3043
  %add4070 = add nsw i32 %516, %conv4069, !dbg !3043
  %idx.ext4071 = sext i32 %add4070 to i64, !dbg !3043
  %add.ptr4075 = getelementptr inbounds i8, ptr %add.ptr4072, i64 %idx.ext4071, !dbg !3043
  %595 = add nuw nsw i64 %indvars.iv6503, 2, !dbg !3043
  %arrayidx4078 = getelementptr inbounds i16, ptr %522, i64 %595, !dbg !3043
  %596 = load i16, ptr %arrayidx4078, align 2, !dbg !3043, !tbaa !1912
  %conv4079 = sext i16 %596 to i32, !dbg !3043
  %add4080 = add nsw i32 %516, %conv4079, !dbg !3043
  %idx.ext4081 = sext i32 %add4080 to i64, !dbg !3043
  %add.ptr4085 = getelementptr inbounds i8, ptr %add.ptr4082, i64 %idx.ext4081, !dbg !3043
  call void %591(ptr noundef %5, ptr noundef %add.ptr4065, ptr noundef %add.ptr4075, ptr noundef %add.ptr4085, i32 noundef %3, ptr noundef nonnull %costs) #5, !dbg !3043
  %597 = load i16, ptr %arrayidx4058, align 2, !dbg !3043, !tbaa !1912
  %conv4089 = sext i16 %597 to i32, !dbg !3043
  %add4090 = add nsw i32 %516, %conv4089, !dbg !3043
  %shl4091 = shl i32 %add4090, 2, !dbg !3043
  %idxprom4092 = sext i32 %shl4091 to i64, !dbg !3043
  %arrayidx4093 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4092, !dbg !3043
  %598 = load i16, ptr %arrayidx4093, align 2, !dbg !3043, !tbaa !1912
  %conv4094 = zext i16 %598 to i32, !dbg !3043
  %599 = load i32, ptr %costs, align 16, !dbg !3043, !tbaa !1859
  %add4096 = add nsw i32 %599, %conv4094, !dbg !3043
  store i32 %add4096, ptr %costs, align 16, !dbg !3043, !tbaa !1859
  %600 = load i16, ptr %arrayidx4068, align 2, !dbg !3043, !tbaa !1912
  %conv4100 = sext i16 %600 to i32, !dbg !3043
  %add4101 = add nsw i32 %516, %conv4100, !dbg !3043
  %shl4102 = shl i32 %add4101, 2, !dbg !3043
  %idxprom4103 = sext i32 %shl4102 to i64, !dbg !3043
  %arrayidx4104 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4103, !dbg !3043
  %601 = load i16, ptr %arrayidx4104, align 2, !dbg !3043, !tbaa !1912
  %conv4105 = zext i16 %601 to i32, !dbg !3043
  %602 = load i32, ptr %arrayidx4106, align 4, !dbg !3043, !tbaa !1859
  %add4107 = add nsw i32 %602, %conv4105, !dbg !3043
  store i32 %add4107, ptr %arrayidx4106, align 4, !dbg !3043, !tbaa !1859
  %603 = load i16, ptr %arrayidx4078, align 2, !dbg !3043, !tbaa !1912
  %conv4111 = sext i16 %603 to i32, !dbg !3043
  %add4112 = add nsw i32 %516, %conv4111, !dbg !3043
  %shl4113 = shl i32 %add4112, 2, !dbg !3043
  %idxprom4114 = sext i32 %shl4113 to i64, !dbg !3043
  %arrayidx4115 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4114, !dbg !3043
  %604 = load i16, ptr %arrayidx4115, align 2, !dbg !3043, !tbaa !1912
  %conv4116 = zext i16 %604 to i32, !dbg !3043
  %605 = load i32, ptr %arrayidx4117, align 8, !dbg !3043, !tbaa !1859
  %add4118 = add nsw i32 %605, %conv4116, !dbg !3043
  store i32 %add4118, ptr %arrayidx4117, align 8, !dbg !3043, !tbaa !1859
  %cmp4120 = icmp slt i32 %add4096, %bcost.1386333, !dbg !3045
  br i1 %cmp4120, label %if.then4122, label %if.end4128, !dbg !3043

if.then4122:                                      ; preds = %for.body4052
  call void @llvm.dbg.value(metadata i32 %add4096, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add4090, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6511, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end4128, !dbg !3047

if.end4128:                                       ; preds = %if.then4122, %for.body4052
  %bcost.139 = phi i32 [ %add4096, %if.then4122 ], [ %bcost.1386333, %for.body4052 ], !dbg !3031
  %bmy.100 = phi i32 [ %587, %if.then4122 ], [ %bmy.996334, %for.body4052 ], !dbg !1843
  %bmx.100 = phi i32 [ %add4090, %if.then4122 ], [ %bmx.996335, %for.body4052 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.100, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.100, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.139, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp4130 = icmp slt i32 %add4107, %bcost.139, !dbg !3049
  br i1 %cmp4130, label %if.then4132, label %if.end4139, !dbg !3043

if.then4132:                                      ; preds = %if.end4128
  call void @llvm.dbg.value(metadata i32 %add4107, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add4101, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6511, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end4139, !dbg !3051

if.end4139:                                       ; preds = %if.then4132, %if.end4128
  %bcost.140 = phi i32 [ %add4107, %if.then4132 ], [ %bcost.139, %if.end4128 ], !dbg !3053
  %bmy.101 = phi i32 [ %587, %if.then4132 ], [ %bmy.100, %if.end4128 ], !dbg !3053
  %bmx.101 = phi i32 [ %add4101, %if.then4132 ], [ %bmx.100, %if.end4128 ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %bmx.101, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.101, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.140, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp4141 = icmp slt i32 %add4118, %bcost.140, !dbg !3054
  br i1 %cmp4141, label %if.then4143, label %for.inc4151, !dbg !3043

if.then4143:                                      ; preds = %if.end4139
  call void @llvm.dbg.value(metadata i32 %add4118, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add4112, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6511, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %for.inc4151, !dbg !3056

for.inc4151:                                      ; preds = %if.end4139, %if.then4143
  %bcost.141 = phi i32 [ %add4118, %if.then4143 ], [ %bcost.140, %if.end4139 ], !dbg !3053
  %bmy.102 = phi i32 [ %587, %if.then4143 ], [ %bmy.101, %if.end4139 ], !dbg !3053
  %bmx.102 = phi i32 [ %add4112, %if.then4143 ], [ %bmx.101, %if.end4139 ], !dbg !3053
  call void @llvm.dbg.value(metadata i32 %bmx.102, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.102, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.141, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6504 = add nuw i64 %indvars.iv6503, 3, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6504, metadata !1676, metadata !DIExpression()), !dbg !3031
  %606 = trunc i64 %indvars.iv.next6504 to i32, !dbg !3039
  %cmp4050 = icmp sgt i32 %sub4049, %606, !dbg !3039
  br i1 %cmp4050, label %for.body4052, label %for.end4153.loopexit, !dbg !3042, !llvm.loop !3059

for.end4153.loopexit:                             ; preds = %for.inc4151
  %607 = trunc i64 %indvars.iv.next6504 to i32, !dbg !3039
  br label %for.end4153, !dbg !3061

for.end4153:                                      ; preds = %for.end4153.loopexit, %if.end4033
  %i4024.0.lcssa = phi i32 [ 0, %if.end4033 ], [ %607, %for.end4153.loopexit ], !dbg !3062
  %bcost.138.lcssa = phi i32 [ %sub4034, %if.end4033 ], [ %bcost.141, %for.end4153.loopexit ], !dbg !3031
  %bmy.99.lcssa = phi i32 [ %bmy.986351, %if.end4033 ], [ %bmy.102, %for.end4153.loopexit ], !dbg !1843
  %bmx.99.lcssa = phi i32 [ %bmx.986352, %if.end4033 ], [ %bmx.102, %for.end4153.loopexit ], !dbg !1843
  %add4154 = add nsw i32 %bcost.138.lcssa, %conv4029, !dbg !3061
  call void @llvm.dbg.value(metadata i32 %add4154, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.99.lcssa, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.99.lcssa, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %i4024.0.lcssa, metadata !1676, metadata !DIExpression()), !dbg !3031
  %cmp41566340 = icmp slt i32 %i4024.0.lcssa, %call4047, !dbg !3063
  br i1 %cmp41566340, label %for.body4158.lr.ph, label %cleanup4198, !dbg !3064

for.body4158.lr.ph:                               ; preds = %for.end4153
  %608 = trunc i64 %590 to i32
  %add4168 = add i32 %516, %608
  %609 = zext i32 %i4024.0.lcssa to i64, !dbg !3064
  br label %for.body4158, !dbg !3064

for.body4158:                                     ; preds = %for.body4158.lr.ph, %if.end4194
  %indvars.iv6508 = phi i64 [ %609, %for.body4158.lr.ph ], [ %indvars.iv.next6509, %if.end4194 ]
  %bmx.1036344 = phi i32 [ %bmx.99.lcssa, %for.body4158.lr.ph ], [ %bmx.104, %if.end4194 ]
  %bmy.1036343 = phi i32 [ %bmy.99.lcssa, %for.body4158.lr.ph ], [ %bmy.104, %if.end4194 ]
  %bcost.1426342 = phi i32 [ %add4154, %for.body4158.lr.ph ], [ %bcost.143, %if.end4194 ]
  call void @llvm.dbg.value(metadata i32 %bmx.1036344, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.1036343, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.1426342, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6508, metadata !1676, metadata !DIExpression()), !dbg !3031
  %610 = load ptr, ptr %arrayidx4163, align 8, !dbg !3065, !tbaa !1889
  %arrayidx4166 = getelementptr inbounds i16, ptr %522, i64 %indvars.iv6508, !dbg !3065
  %611 = load i16, ptr %arrayidx4166, align 2, !dbg !3065, !tbaa !1912
  %conv4167 = sext i16 %611 to i32, !dbg !3065
  %add4169 = add i32 %add4168, %conv4167, !dbg !3065
  %idxprom4170 = sext i32 %add4169 to i64, !dbg !3065
  %arrayidx4171 = getelementptr inbounds i8, ptr %6, i64 %idxprom4170, !dbg !3065
  %call4172 = call i32 %610(ptr noundef %5, i32 noundef 16, ptr noundef %arrayidx4171, i32 noundef %3) #5, !dbg !3065
  %612 = load i16, ptr %arrayidx4166, align 2, !dbg !3065, !tbaa !1912
  %conv4175 = sext i16 %612 to i32, !dbg !3065
  %add4176 = add nsw i32 %516, %conv4175, !dbg !3065
  %shl4177 = shl i32 %add4176, 2, !dbg !3065
  %idxprom4178 = sext i32 %shl4177 to i64, !dbg !3065
  %arrayidx4179 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4178, !dbg !3065
  %613 = load i16, ptr %arrayidx4179, align 2, !dbg !3065, !tbaa !1912
  %conv4180 = zext i16 %613 to i32, !dbg !3065
  %614 = load i16, ptr %arrayidx4028, align 2, !dbg !3065, !tbaa !1912
  %conv4184 = zext i16 %614 to i32, !dbg !3065
  %add4185 = add i32 %call4172, %conv4180, !dbg !3065
  %add4186 = add i32 %add4185, %conv4184, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %add4186, metadata !1680, metadata !DIExpression()), !dbg !3066
  %cmp4187 = icmp slt i32 %add4186, %bcost.1426342, !dbg !3067
  br i1 %cmp4187, label %if.then4189, label %if.end4194, !dbg !3065

if.then4189:                                      ; preds = %for.body4158
  call void @llvm.dbg.value(metadata i32 %add4186, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %add4176, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i64 %indvars.iv6511, metadata !1406, metadata !DIExpression()), !dbg !1843
  br label %if.end4194, !dbg !3069

if.end4194:                                       ; preds = %if.then4189, %for.body4158
  %bcost.143 = phi i32 [ %add4186, %if.then4189 ], [ %bcost.1426342, %for.body4158 ], !dbg !3031
  %bmy.104 = phi i32 [ %587, %if.then4189 ], [ %bmy.1036343, %for.body4158 ], !dbg !1843
  %bmx.104 = phi i32 [ %add4176, %if.then4189 ], [ %bmx.1036344, %for.body4158 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.104, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.104, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.143, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6509 = add nuw nsw i64 %indvars.iv6508, 1, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6509, metadata !1676, metadata !DIExpression()), !dbg !3031
  %615 = trunc i64 %indvars.iv.next6509 to i32, !dbg !3063
  %cmp4156 = icmp sgt i32 %call4047, %615, !dbg !3063
  br i1 %cmp4156, label %for.body4158, label %cleanup4198, !dbg !3064, !llvm.loop !3072

cleanup4198:                                      ; preds = %if.end4194, %for.end4153, %for.body4023
  %bcost.144 = phi i32 [ %bcost.1376350, %for.body4023 ], [ %add4154, %for.end4153 ], [ %bcost.143, %if.end4194 ], !dbg !1843
  %bmy.105 = phi i32 [ %bmy.986351, %for.body4023 ], [ %bmy.99.lcssa, %for.end4153 ], [ %bmy.104, %if.end4194 ], !dbg !2104
  %bmx.105 = phi i32 [ %bmx.986352, %for.body4023 ], [ %bmx.99.lcssa, %for.end4153 ], [ %bmx.104, %if.end4194 ], !dbg !2104
  call void @llvm.dbg.value(metadata i32 %bmx.105, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.105, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.144, metadata !1407, metadata !DIExpression()), !dbg !1843
  %indvars.iv.next6512 = add nsw i64 %indvars.iv6511, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next6512, metadata !1673, metadata !DIExpression()), !dbg !2837
  %lftr.wideiv = trunc i64 %indvars.iv.next6512 to i32, !dbg !2838
  %exitcond6515.not = icmp eq i32 %535, %lftr.wideiv, !dbg !2838
  br i1 %exitcond6515.not, label %if.end4206, label %for.body4023, !dbg !2839, !llvm.loop !3075

if.end4206:                                       ; preds = %cleanup4198, %if.end4012, %for.cond4019.preheader, %for.cond3954.preheader
  %bcost.145 = phi i32 [ %bcost.6, %for.cond3954.preheader ], [ %bcost.6, %for.cond4019.preheader ], [ %bcost.136, %if.end4012 ], [ %bcost.144, %cleanup4198 ], !dbg !2104
  %bmy.106 = phi i32 [ %bmy.4, %for.cond3954.preheader ], [ %bmy.4, %for.cond4019.preheader ], [ %bmy.97, %if.end4012 ], [ %bmy.105, %cleanup4198 ], !dbg !2104
  %bmx.106 = phi i32 [ %bmx.4, %for.cond3954.preheader ], [ %bmx.4, %for.cond4019.preheader ], [ %bmx.97, %if.end4012 ], [ %bmx.105, %cleanup4198 ], !dbg !2104
  call void @llvm.dbg.value(metadata i32 %bmx.106, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.106, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.145, metadata !1407, metadata !DIExpression()), !dbg !1843
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %enc_dc) #5, !dbg !3077
  br label %sw.epilog, !dbg !3078

sw.epilog:                                        ; preds = %if.end2298, %if.end1627, %cleanup3557, %if.end264, %if.end4206, %if.end822, %do.end
  %bcost.146 = phi i32 [ %bcost.6, %if.end264 ], [ %bcost.145, %if.end4206 ], [ %bcost.133, %cleanup3557 ], [ %153, %if.end822 ], [ %shr408, %do.end ], [ %bcost.6, %if.end1627 ], [ %bcost.42, %if.end2298 ], !dbg !1843
  %bmy.107 = phi i32 [ %bmy.4, %if.end264 ], [ %bmy.106, %if.end4206 ], [ %bmy.94, %cleanup3557 ], [ %add1040, %if.end822 ], [ %bmy.6, %do.end ], [ %bmy.31, %if.end1627 ], [ %bmy.61, %if.end2298 ], !dbg !1843
  %bmx.107 = phi i32 [ %bmx.4, %if.end264 ], [ %bmx.106, %if.end4206 ], [ %bmx.94, %cleanup3557 ], [ %add1035, %if.end822 ], [ %bmx.6, %do.end ], [ %bmx.31, %if.end1627 ], [ %bmx.61, %if.end2298 ], !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmx.107, metadata !1405, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bmy.107, metadata !1406, metadata !DIExpression()), !dbg !1843
  call void @llvm.dbg.value(metadata i32 %bcost.146, metadata !1407, metadata !DIExpression()), !dbg !1843
  %cmp4207 = icmp slt i32 %bpred_cost.5, %bcost.146, !dbg !3079
  br i1 %cmp4207, label %if.then4209, label %if.else4217, !dbg !3081

if.then4209:                                      ; preds = %sw.epilog
  %conv4210 = trunc i32 %bpred_mx.5 to i16, !dbg !3082
  %conv4213 = trunc i32 %bpred_my.5 to i16, !dbg !3084
  br label %if.end4227, !dbg !3085

if.else4217:                                      ; preds = %sw.epilog
  %bmx.107.tr = trunc i32 %bmx.107 to i16, !dbg !3086
  %conv4219 = shl i16 %bmx.107.tr, 2, !dbg !3086
  %bmy.107.tr = trunc i32 %bmy.107 to i16, !dbg !3088
  %conv4223 = shl i16 %bmy.107.tr, 2, !dbg !3088
  br label %if.end4227

if.end4227:                                       ; preds = %if.else4217, %if.then4209
  %conv4219.sink = phi i16 [ %conv4210, %if.then4209 ], [ %conv4219, %if.else4217 ], !dbg !3089
  %conv4223.sink = phi i16 [ %conv4213, %if.then4209 ], [ %conv4223, %if.else4217 ], !dbg !3089
  %616 = phi i32 [ %bpred_cost.5, %if.then4209 ], [ %bcost.146, %if.else4217 ], !dbg !3089
  %617 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, !dbg !3090
  store i16 %conv4219.sink, ptr %617, align 4, !dbg !3091
  %618 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, i64 1, !dbg !3092
  store i16 %conv4223.sink, ptr %618, align 2, !dbg !3093
  %619 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 12, !dbg !3094
  store i32 %616, ptr %619, align 8, !dbg !3095
  %idxprom4230 = sext i16 %conv4219.sink to i64, !dbg !3096
  %arrayidx4231 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom4230, !dbg !3096
  %620 = load i16, ptr %arrayidx4231, align 2, !dbg !3096, !tbaa !1912
  %conv4232 = zext i16 %620 to i32, !dbg !3096
  %idxprom4235 = sext i16 %conv4223.sink to i64, !dbg !3097
  %arrayidx4236 = getelementptr inbounds i16, ptr %add.ptr37, i64 %idxprom4235, !dbg !3097
  %621 = load i16, ptr %arrayidx4236, align 2, !dbg !3097, !tbaa !1912
  %conv4237 = zext i16 %621 to i32, !dbg !3097
  %add4238 = add nuw nsw i32 %conv4237, %conv4232, !dbg !3098
  %cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 11, !dbg !3099
  store i32 %add4238, ptr %cost_mv, align 4, !dbg !3100, !tbaa !3101
  %cmp4239 = icmp eq i32 %bmx.107, %shr, !dbg !3102
  %cmp4242 = icmp eq i32 %bmy.107, %shr46
  %or.cond6225 = select i1 %cmp4239, i1 %cmp4242, i1 false, !dbg !3104
  %622 = load i32, ptr %i_subpel_refine, align 8, !dbg !1843, !tbaa !1938
  br i1 %or.cond6225, label %land.lhs.true4244, label %if.end4253, !dbg !3104

land.lhs.true4244:                                ; preds = %if.end4227
  %cmp4247 = icmp slt i32 %622, 3, !dbg !3105
  br i1 %cmp4247, label %if.then4249, label %if.then4258, !dbg !3106

if.then4249:                                      ; preds = %land.lhs.true4244
  %add4252 = add nsw i32 %616, %add4238, !dbg !3107
  store i32 %add4252, ptr %619, align 8, !dbg !3107, !tbaa !3108
  br label %if.end4253, !dbg !3109

if.end4253:                                       ; preds = %if.end4227, %if.then4249
  %cmp4256 = icmp sgt i32 %622, 1, !dbg !3110
  br i1 %cmp4256, label %if.then4258, label %if.end4271, !dbg !3111

if.then4258:                                      ; preds = %land.lhs.true4244, %if.end4253
  %idxprom42616314 = zext i32 %622 to i64, !dbg !3112
  %arrayidx4263 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom42616314, i64 2, !dbg !3112
  %623 = load i8, ptr %arrayidx4263, align 2, !dbg !3112, !tbaa !1975
  %conv4264 = zext i8 %623 to i32, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %conv4264, metadata !1684, metadata !DIExpression()), !dbg !3113
  %arrayidx4269 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom42616314, i64 3, !dbg !3114
  %624 = load i8, ptr %arrayidx4269, align 1, !dbg !3114, !tbaa !1975
  %conv4270 = zext i8 %624 to i32, !dbg !3114
  call void @llvm.dbg.value(metadata i32 %conv4270, metadata !1687, metadata !DIExpression()), !dbg !3113
  call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv4264, i32 noundef %conv4270, ptr noundef %p_halfpel_thresh, i32 noundef 0), !dbg !3115
  br label %if.end4271, !dbg !3116

if.end4271:                                       ; preds = %if.then4258, %if.end4253
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %costs) #5, !dbg !3117
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %pix) #5, !dbg !3117
  ret void, !dbg !3117
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @refine_subpel(ptr noundef readonly %h, ptr noundef %m, i32 noundef %hpel_iters, i32 noundef %qpel_iters, ptr noundef %p_halfpel_thresh, i32 noundef %b_refine_qpel) unnamed_addr #0 !dbg !3118 {
entry:
  %pix = alloca [1152 x i8], align 16
  %stride = alloca i32, align 4
  %costs = alloca [4 x i32], align 16
  %stride78 = alloca i32, align 4
  %stride245 = alloca i32, align 4
  %stride433 = alloca i32, align 4
  %stride572 = alloca i32, align 4
  %stride711 = alloca i32, align 4
  %stride850 = alloca i32, align 4
  %costs1025 = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %h, metadata !3122, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %m, metadata !3123, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %hpel_iters, metadata !3124, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %qpel_iters, metadata !3125, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata ptr %p_halfpel_thresh, metadata !3126, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %b_refine_qpel, metadata !3127, metadata !DIExpression()), !dbg !3205
  %0 = load i32, ptr %m, align 16, !dbg !3206, !tbaa !1845
  %idxprom = sext i32 %0 to i64, !dbg !3207
  %arrayidx = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom, !dbg !3207
  %1 = load i32, ptr %arrayidx, align 8, !dbg !3208, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %1, metadata !3128, metadata !DIExpression()), !dbg !3205
  %h4 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom, i32 1, !dbg !3209
  %2 = load i32, ptr %h4, align 4, !dbg !3209, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %2, metadata !3129, metadata !DIExpression()), !dbg !3205
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 1, !dbg !3210
  %3 = load ptr, ptr %p_cost_mv, align 8, !dbg !3210, !tbaa !1909
  %mvp = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, !dbg !3211
  %4 = load i16, ptr %mvp, align 16, !dbg !3212, !tbaa !1912
  %idx.ext = sext i16 %4 to i64, !dbg !3213
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !3213
  %add.ptr = getelementptr inbounds i16, ptr %3, i64 %idx.neg, !dbg !3213
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !3130, metadata !DIExpression()), !dbg !3205
  %arrayidx8 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, i64 1, !dbg !3214
  %5 = load i16, ptr %arrayidx8, align 2, !dbg !3214, !tbaa !1912
  %idx.ext10 = sext i16 %5 to i64, !dbg !3215
  %idx.neg11 = sub nsw i64 0, %idx.ext10, !dbg !3215
  %add.ptr12 = getelementptr inbounds i16, ptr %3, i64 %idx.neg11, !dbg !3215
  call void @llvm.dbg.value(metadata ptr %add.ptr12, metadata !3131, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %0, metadata !3132, metadata !DIExpression()), !dbg !3205
  %b_chroma_me15 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 11, !dbg !3216
  %6 = load i32, ptr %b_chroma_me15, align 4, !dbg !3216, !tbaa !3217
  %tobool.not = icmp ne i32 %6, 0, !dbg !3218
  %cmp = icmp slt i32 %0, 4
  %spec.select = select i1 %tobool.not, i1 %cmp, i1 false, !dbg !3219
  call void @llvm.dbg.value(metadata i1 %spec.select, metadata !3133, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3205
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3220
  %7 = load i32, ptr %b_interlaced, align 4, !dbg !3220, !tbaa !3221
  %i_ref = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 3, !dbg !3222
  %8 = load i32, ptr %i_ref, align 4, !dbg !3222, !tbaa !3223
  %and = and i32 %8, %7, !dbg !3224
  %tobool18.not = icmp eq i32 %and, 0, !dbg !3224
  br i1 %tobool18.not, label %cond.end, label %cond.true, !dbg !3225

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !3226
  %9 = load i32, ptr %i_mb_y, align 4, !dbg !3226, !tbaa !3227
  %and20 = shl i32 %9, 2, !dbg !3228
  %mul = and i32 %and20, 4, !dbg !3228
  %sub = add nsw i32 %mul, -2, !dbg !3229
  br label %cond.end, !dbg !3225

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !3225
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3134, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pix) #5, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %pix, metadata !3135, metadata !DIExpression()), !dbg !3230
  %mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, !dbg !3231
  %10 = load i16, ptr %mv, align 4, !dbg !3232, !tbaa !1912
  %conv22 = sext i16 %10 to i32, !dbg !3232
  call void @llvm.dbg.value(metadata i32 %conv22, metadata !3139, metadata !DIExpression()), !dbg !3205
  %arrayidx24 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, i64 1, !dbg !3233
  %11 = load i16, ptr %arrayidx24, align 2, !dbg !3233, !tbaa !1912
  %conv25 = sext i16 %11 to i32, !dbg !3233
  call void @llvm.dbg.value(metadata i32 %conv25, metadata !3140, metadata !DIExpression()), !dbg !3205
  %cost = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 12, !dbg !3234
  %12 = load i32, ptr %cost, align 8, !dbg !3234, !tbaa !3108
  call void @llvm.dbg.value(metadata i32 %12, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 -1, metadata !3142, metadata !DIExpression()), !dbg !3205
  %tobool26.not = icmp eq i32 %hpel_iters, 0, !dbg !3235
  br i1 %tobool26.not, label %cleanup228, label %land.lhs.true, !dbg !3236

land.lhs.true:                                    ; preds = %cond.end
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !3237
  %13 = load i32, ptr %i_subpel_refine, align 8, !dbg !3237, !tbaa !1938
  %cmp28 = icmp slt i32 %13, 3, !dbg !3238
  br i1 %cmp28, label %if.then, label %if.end75, !dbg !3239

if.then:                                          ; preds = %land.lhs.true
  %conv32 = sext i16 %4 to i32, !dbg !3240
  %mv_min_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, !dbg !3241
  %14 = load i32, ptr %mv_min_spel, align 8, !dbg !3242, !tbaa !1859
  %add = add nsw i32 %14, 2, !dbg !3243
  %mv_max_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !3244
  %15 = load i32, ptr %mv_max_spel, align 16, !dbg !3245, !tbaa !1859
  %sub37 = add nsw i32 %15, -2, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %conv32, metadata !1917, metadata !DIExpression()) #5, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %add, metadata !1922, metadata !DIExpression()) #5, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %sub37, metadata !1923, metadata !DIExpression()) #5, !dbg !3247
  %cmp.i = icmp sgt i32 %add, %conv32, !dbg !3249
  %16 = tail call i32 @llvm.smin.i32(i32 %conv32, i32 %sub37) #5
  %spec.select.i = select i1 %cmp.i, i32 %add, i32 %16, !dbg !3250
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !3144, metadata !DIExpression()), !dbg !3251
  %conv40 = sext i16 %5 to i32, !dbg !3252
  %arrayidx43 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, i64 1, !dbg !3253
  %17 = load i32, ptr %arrayidx43, align 4, !dbg !3253, !tbaa !1859
  %add44 = add nsw i32 %17, 2, !dbg !3254
  %arrayidx47 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !3255
  %18 = load i32, ptr %arrayidx47, align 4, !dbg !3255, !tbaa !1859
  %sub48 = add nsw i32 %18, -2, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %conv40, metadata !1917, metadata !DIExpression()) #5, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %add44, metadata !1922, metadata !DIExpression()) #5, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %sub48, metadata !1923, metadata !DIExpression()) #5, !dbg !3257
  %cmp.i1775 = icmp sgt i32 %add44, %conv40, !dbg !3259
  %19 = tail call i32 @llvm.smin.i32(i32 %conv40, i32 %sub48) #5
  %spec.select.i1776 = select i1 %cmp.i1775, i32 %add44, i32 %19, !dbg !3260
  call void @llvm.dbg.value(metadata i32 %spec.select.i1776, metadata !3147, metadata !DIExpression()), !dbg !3251
  %sub50 = sub nsw i32 %spec.select.i, %conv22, !dbg !3261
  %sub51 = sub nsw i32 %spec.select.i1776, %conv25, !dbg !3262
  %or = or i32 %sub51, %sub50, !dbg !3263
  %tobool52.not = icmp eq i32 %or, 0, !dbg !3263
  br i1 %tobool52.not, label %if.end75, label %if.then53, !dbg !3264

if.then53:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride) #5, !dbg !3265
  call void @llvm.dbg.value(metadata i32 16, metadata !3148, metadata !DIExpression()), !dbg !3266
  store i32 16, ptr %stride, align 4, !dbg !3265, !tbaa !1859
  %get_ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1, !dbg !3265
  %20 = load ptr, ptr %get_ref, align 8, !dbg !3265, !tbaa !1956
  %p_fref = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, !dbg !3265
  %i_stride = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, !dbg !3265
  %21 = load i32, ptr %i_stride, align 8, !dbg !3265, !tbaa !1859
  %weight = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4, !dbg !3265
  %22 = load ptr, ptr %weight, align 8, !dbg !3265, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride, metadata !3148, metadata !DIExpression(DW_OP_deref)), !dbg !3266
  %call57 = call ptr %20(ptr noundef nonnull %pix, ptr noundef nonnull %stride, ptr noundef nonnull %p_fref, i32 noundef %21, i32 noundef %spec.select.i, i32 noundef %spec.select.i1776, i32 noundef %1, i32 noundef %2, ptr noundef %22) #5, !dbg !3265
  call void @llvm.dbg.value(metadata ptr %call57, metadata !3151, metadata !DIExpression()), !dbg !3266
  %arrayidx60 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, i64 %idxprom, !dbg !3265
  %23 = load ptr, ptr %arrayidx60, align 8, !dbg !3265, !tbaa !1889
  %p_fenc = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, !dbg !3265
  %24 = load ptr, ptr %p_fenc, align 8, !dbg !3265, !tbaa !1889
  %25 = load i32, ptr %stride, align 4, !dbg !3265, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %25, metadata !3148, metadata !DIExpression()), !dbg !3266
  %call62 = call i32 %23(ptr noundef %24, i32 noundef 16, ptr noundef %call57, i32 noundef %25) #5, !dbg !3265
  %idxprom63 = sext i32 %spec.select.i to i64, !dbg !3265
  %arrayidx64 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom63, !dbg !3265
  %26 = load i16, ptr %arrayidx64, align 2, !dbg !3265, !tbaa !1912
  %conv65 = zext i16 %26 to i32, !dbg !3265
  %add66 = add nsw i32 %call62, %conv65, !dbg !3265
  %idxprom67 = sext i32 %spec.select.i1776 to i64, !dbg !3265
  %arrayidx68 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom67, !dbg !3265
  %27 = load i16, ptr %arrayidx68, align 2, !dbg !3265, !tbaa !1912
  %conv69 = zext i16 %27 to i32, !dbg !3265
  %add70 = add nsw i32 %add66, %conv69, !dbg !3265
  call void @llvm.dbg.value(metadata i32 %add70, metadata !3152, metadata !DIExpression()), !dbg !3266
  %cmp71 = icmp slt i32 %add70, %12, !dbg !3267
  br i1 %cmp71, label %if.then73, label %if.end, !dbg !3265

if.then73:                                        ; preds = %if.then53
  call void @llvm.dbg.value(metadata i32 %add70, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %spec.select.i1776, metadata !3140, metadata !DIExpression()), !dbg !3205
  br label %if.end, !dbg !3269

if.end:                                           ; preds = %if.then73, %if.then53
  %bcost.0 = phi i32 [ %add70, %if.then73 ], [ %12, %if.then53 ], !dbg !3205
  %bmy.0 = phi i32 [ %spec.select.i1776, %if.then73 ], [ %conv25, %if.then53 ], !dbg !3205
  %bmx.0 = phi i32 [ %spec.select.i, %if.then73 ], [ %conv22, %if.then53 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.0, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.0, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.0, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride) #5, !dbg !3271
  br label %if.end75, !dbg !3265

if.end75:                                         ; preds = %if.then, %if.end, %land.lhs.true
  %bcost.2 = phi i32 [ %12, %land.lhs.true ], [ %bcost.0, %if.end ], [ %12, %if.then ], !dbg !3205
  %bmy.2 = phi i32 [ %conv25, %land.lhs.true ], [ %bmy.0, %if.end ], [ %conv25, %if.then ], !dbg !3205
  %bmx.2 = phi i32 [ %conv22, %land.lhs.true ], [ %bmx.0, %if.end ], [ %conv22, %if.then ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.2, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.2, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.2, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %hpel_iters, metadata !3153, metadata !DIExpression()), !dbg !3272
  %cmp761812 = icmp sgt i32 %hpel_iters, 0, !dbg !3273
  br i1 %cmp761812, label %for.body.lr.ph, label %cleanup228, !dbg !3274

for.body.lr.ph:                                   ; preds = %if.end75
  %get_ref80 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1
  %p_fref82 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5
  %i_stride84 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9
  %add87 = add nsw i32 %2, 1
  %weight88 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4
  %add.ptr94 = getelementptr inbounds i8, ptr %pix, i64 32
  %add100 = add nsw i32 %1, 4
  %arrayidx109 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 9, i64 %idxprom
  %p_fenc110 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7
  %arrayidx138 = getelementptr inbounds [4 x i32], ptr %costs, i64 0, i64 1
  %arrayidx163 = getelementptr inbounds [4 x i32], ptr %costs, i64 0, i64 2
  %arrayidx188 = getelementptr inbounds [4 x i32], ptr %costs, i64 0, i64 3
  br label %for.body, !dbg !3274

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %bmx.31816 = phi i32 [ %bmx.2, %for.body.lr.ph ], [ %bmx.51785, %for.inc ]
  %bmy.31815 = phi i32 [ %bmy.2, %for.body.lr.ph ], [ %bmy.71784, %for.inc ]
  %bcost.31814 = phi i32 [ %bcost.2, %for.body.lr.ph ], [ %bcost.71783, %for.inc ]
  %i.01813 = phi i32 [ %hpel_iters, %for.body.lr.ph ], [ %dec, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %bmx.31816, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.31815, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.31814, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %i.01813, metadata !3153, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i32 %bmx.31816, metadata !3155, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %bmy.31815, metadata !3158, metadata !DIExpression()), !dbg !3275
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs) #5, !dbg !3276
  call void @llvm.dbg.declare(metadata ptr %costs, metadata !3159, metadata !DIExpression()), !dbg !3277
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride78) #5, !dbg !3278
  call void @llvm.dbg.value(metadata i32 64, metadata !3160, metadata !DIExpression()), !dbg !3275
  store i32 64, ptr %stride78, align 4, !dbg !3279, !tbaa !1859
  %28 = load ptr, ptr %get_ref80, align 8, !dbg !3280, !tbaa !1956
  %29 = load i32, ptr %i_stride84, align 8, !dbg !3281, !tbaa !1859
  %sub86 = add nsw i32 %bmy.31815, -2, !dbg !3282
  %30 = load ptr, ptr %weight88, align 8, !dbg !3283, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride78, metadata !3160, metadata !DIExpression(DW_OP_deref)), !dbg !3275
  %call90 = call ptr %28(ptr noundef nonnull %pix, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %29, i32 noundef %bmx.31816, i32 noundef %sub86, i32 noundef %1, i32 noundef %add87, ptr noundef %30) #5, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %call90, metadata !3161, metadata !DIExpression()), !dbg !3275
  %31 = load ptr, ptr %get_ref80, align 8, !dbg !3285, !tbaa !1956
  %32 = load i32, ptr %i_stride84, align 8, !dbg !3286, !tbaa !1859
  %sub99 = add nsw i32 %bmx.31816, -2, !dbg !3287
  %33 = load ptr, ptr %weight88, align 8, !dbg !3288, !tbaa !1957
  %call103 = call ptr %31(ptr noundef nonnull %add.ptr94, ptr noundef nonnull %stride78, ptr noundef nonnull %p_fref82, i32 noundef %32, i32 noundef %sub99, i32 noundef %bmy.31815, i32 noundef %add100, i32 noundef %2, ptr noundef %33) #5, !dbg !3289
  call void @llvm.dbg.value(metadata ptr %call103, metadata !3163, metadata !DIExpression()), !dbg !3275
  %34 = load i32, ptr %stride78, align 4, !dbg !3290, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %34, metadata !3160, metadata !DIExpression()), !dbg !3275
  %idx.ext104 = sext i32 %34 to i64, !dbg !3291
  %add.ptr105 = getelementptr inbounds i8, ptr %call90, i64 %idx.ext104, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %add.ptr105, metadata !3162, metadata !DIExpression()), !dbg !3275
  %add.ptr106 = getelementptr inbounds i8, ptr %call103, i64 1, !dbg !3292
  call void @llvm.dbg.value(metadata ptr %add.ptr106, metadata !3164, metadata !DIExpression()), !dbg !3275
  %35 = load ptr, ptr %arrayidx109, align 8, !dbg !3293, !tbaa !1889
  %36 = load ptr, ptr %p_fenc110, align 8, !dbg !3294, !tbaa !1889
  call void %35(ptr noundef %36, ptr noundef %call90, ptr noundef %add.ptr105, ptr noundef %call103, ptr noundef nonnull %add.ptr106, i32 noundef %34, ptr noundef nonnull %costs) #5, !dbg !3293
  %37 = load i32, ptr %costs, align 16, !dbg !3295, !tbaa !1859
  %idxprom114 = sext i32 %bmx.31816 to i64, !dbg !3295
  %arrayidx115 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom114, !dbg !3295
  %38 = load i16, ptr %arrayidx115, align 2, !dbg !3295, !tbaa !1912
  %conv116 = zext i16 %38 to i32, !dbg !3295
  %add117 = add nsw i32 %37, %conv116, !dbg !3295
  %idxprom119 = sext i32 %sub86 to i64, !dbg !3295
  %arrayidx120 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom119, !dbg !3295
  %39 = load i16, ptr %arrayidx120, align 2, !dbg !3295, !tbaa !1912
  %conv121 = zext i16 %39 to i32, !dbg !3295
  %add122 = add nsw i32 %add117, %conv121, !dbg !3295
  %cmp123 = icmp slt i32 %add122, %bcost.31814, !dbg !3295
  %40 = call i32 @llvm.smin.i32(i32 %add122, i32 %bcost.31814), !dbg !3297
  %spec.select1762 = select i1 %cmp123, i32 %sub86, i32 %bmy.31815, !dbg !3297
  call void @llvm.dbg.value(metadata i32 %spec.select1762, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %40, metadata !3141, metadata !DIExpression()), !dbg !3205
  %41 = load i32, ptr %arrayidx138, align 4, !dbg !3298, !tbaa !1859
  %add142 = add nsw i32 %41, %conv116, !dbg !3298
  %add143 = add nsw i32 %bmy.31815, 2, !dbg !3298
  %idxprom144 = sext i32 %add143 to i64, !dbg !3298
  %arrayidx145 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom144, !dbg !3298
  %42 = load i16, ptr %arrayidx145, align 2, !dbg !3298, !tbaa !1912
  %conv146 = zext i16 %42 to i32, !dbg !3298
  %add147 = add nsw i32 %add142, %conv146, !dbg !3298
  %cmp148 = icmp slt i32 %add147, %40, !dbg !3298
  %43 = call i32 @llvm.smin.i32(i32 %add147, i32 %40), !dbg !3300
  %spec.select1772 = select i1 %cmp148, i32 %add143, i32 %spec.select1762, !dbg !3300
  call void @llvm.dbg.value(metadata i32 %spec.select1772, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %43, metadata !3141, metadata !DIExpression()), !dbg !3205
  %44 = load i32, ptr %arrayidx163, align 8, !dbg !3301, !tbaa !1859
  %idxprom165 = sext i32 %sub99 to i64, !dbg !3301
  %arrayidx166 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom165, !dbg !3301
  %45 = load i16, ptr %arrayidx166, align 2, !dbg !3301, !tbaa !1912
  %conv167 = zext i16 %45 to i32, !dbg !3301
  %add168 = add nsw i32 %44, %conv167, !dbg !3301
  %idxprom169 = sext i32 %bmy.31815 to i64, !dbg !3301
  %arrayidx170 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom169, !dbg !3301
  %46 = load i16, ptr %arrayidx170, align 2, !dbg !3301, !tbaa !1912
  %conv171 = zext i16 %46 to i32, !dbg !3301
  %add172 = add nsw i32 %add168, %conv171, !dbg !3301
  %cmp173 = icmp slt i32 %add172, %43, !dbg !3301
  br i1 %cmp173, label %if.then175, label %if.end187, !dbg !3303

if.then175:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %add172, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %sub99, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.31815, metadata !3140, metadata !DIExpression()), !dbg !3205
  br label %if.end187, !dbg !3304

if.end187:                                        ; preds = %if.then175, %for.body
  %bcost.6 = phi i32 [ %add172, %if.then175 ], [ %43, %for.body ], !dbg !3275
  %bmy.6 = phi i32 [ %bmy.31815, %if.then175 ], [ %spec.select1772, %for.body ], !dbg !3275
  %bmx.4 = phi i32 [ %sub99, %if.then175 ], [ %bmx.31816, %for.body ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.6, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !3141, metadata !DIExpression()), !dbg !3205
  %47 = load i32, ptr %arrayidx188, align 4, !dbg !3306, !tbaa !1859
  %add189 = add nsw i32 %bmx.31816, 2, !dbg !3306
  %idxprom190 = sext i32 %add189 to i64, !dbg !3306
  %arrayidx191 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom190, !dbg !3306
  %48 = load i16, ptr %arrayidx191, align 2, !dbg !3306, !tbaa !1912
  %conv192 = zext i16 %48 to i32, !dbg !3306
  %add193 = add i32 %47, %conv171, !dbg !3306
  %add197 = add i32 %add193, %conv192, !dbg !3306
  %cmp198 = icmp slt i32 %add197, %bcost.6, !dbg !3306
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.6, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.6, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.6, metadata !3141, metadata !DIExpression()), !dbg !3205
  br i1 %cmp198, label %if.end212.thread, label %if.end212, !dbg !3308

if.end212.thread:                                 ; preds = %if.end187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride78) #5, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs) #5, !dbg !3309
  br label %for.inc

if.end212:                                        ; preds = %if.end187
  %cmp213 = icmp eq i32 %bmx.4, %bmx.31816, !dbg !3310
  %cmp215 = icmp eq i32 %bmy.6, %bmy.31815, !dbg !3312
  %.demorgan1760 = and i1 %cmp215, %cmp213, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride78) #5, !dbg !3309
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs) #5, !dbg !3309
  br i1 %.demorgan1760, label %cleanup228, label %for.inc

for.inc:                                          ; preds = %if.end212.thread, %if.end212
  %bmx.51785 = phi i32 [ %add189, %if.end212.thread ], [ %bmx.4, %if.end212 ]
  %bmy.71784 = phi i32 [ %bmy.31815, %if.end212.thread ], [ %bmy.6, %if.end212 ]
  %bcost.71783 = phi i32 [ %add197, %if.end212.thread ], [ %bcost.6, %if.end212 ]
  %dec = add nsw i32 %i.01813, -1, !dbg !3313
  call void @llvm.dbg.value(metadata i32 %bmx.51785, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.71784, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.71783, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3153, metadata !DIExpression()), !dbg !3272
  %cmp76 = icmp sgt i32 %i.01813, 1, !dbg !3273
  br i1 %cmp76, label %for.body, label %cleanup228, !dbg !3274, !llvm.loop !3314

cleanup228:                                       ; preds = %if.end212, %for.inc, %cond.end, %if.end75
  %bcost.8 = phi i32 [ %bcost.2, %if.end75 ], [ %12, %cond.end ], [ %bcost.71783, %for.inc ], [ %bcost.6, %if.end212 ], !dbg !3205
  %bmy.8 = phi i32 [ %bmy.2, %if.end75 ], [ %conv25, %cond.end ], [ %bmy.71784, %for.inc ], [ %bmy.31815, %if.end212 ], !dbg !3205
  %bmx.6 = phi i32 [ %bmx.2, %if.end75 ], [ %conv22, %cond.end ], [ %bmx.51785, %for.inc ], [ %bmx.31816, %if.end212 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.8, metadata !3141, metadata !DIExpression()), !dbg !3205
  %tobool229 = icmp ne i32 %b_refine_qpel, 0, !dbg !3316
  br i1 %tobool229, label %if.end369, label %land.lhs.true230, !dbg !3317

land.lhs.true230:                                 ; preds = %cleanup228
  %mbcmp_unaligned = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 6, !dbg !3318
  %49 = load ptr, ptr %mbcmp_unaligned, align 8, !dbg !3319, !tbaa !1889
  %fpelcmp234 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 7, !dbg !3320
  %50 = load ptr, ptr %fpelcmp234, align 8, !dbg !3321, !tbaa !1889
  %cmp236 = icmp ne ptr %49, %50, !dbg !3322
  %or.cond = select i1 %cmp236, i1 true, i1 %spec.select, !dbg !3323
  br i1 %or.cond, label %if.then244, label %if.end369, !dbg !3323

if.then244:                                       ; preds = %land.lhs.true230
  call void @llvm.dbg.value(metadata i32 268435456, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride245) #5, !dbg !3324
  call void @llvm.dbg.value(metadata i32 16, metadata !3165, metadata !DIExpression()), !dbg !3325
  store i32 16, ptr %stride245, align 4, !dbg !3324, !tbaa !1859
  %get_ref248 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1, !dbg !3324
  %51 = load ptr, ptr %get_ref248, align 8, !dbg !3324, !tbaa !1956
  %p_fref250 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, !dbg !3324
  %i_stride252 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, !dbg !3324
  %52 = load i32, ptr %i_stride252, align 8, !dbg !3324, !tbaa !1859
  %weight254 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4, !dbg !3324
  %53 = load ptr, ptr %weight254, align 8, !dbg !3324, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride245, metadata !3165, metadata !DIExpression(DW_OP_deref)), !dbg !3325
  %call256 = call ptr %51(ptr noundef nonnull %pix, ptr noundef nonnull %stride245, ptr noundef nonnull %p_fref250, i32 noundef %52, i32 noundef %bmx.6, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %53) #5, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %call256, metadata !3170, metadata !DIExpression()), !dbg !3325
  %arrayidx261 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 6, i64 %idxprom, !dbg !3324
  %54 = load ptr, ptr %arrayidx261, align 8, !dbg !3324, !tbaa !1889
  %p_fenc262 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, !dbg !3324
  %55 = load ptr, ptr %p_fenc262, align 8, !dbg !3324, !tbaa !1889
  %56 = load i32, ptr %stride245, align 4, !dbg !3324, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %56, metadata !3165, metadata !DIExpression()), !dbg !3325
  %call264 = call i32 %54(ptr noundef %55, i32 noundef 16, ptr noundef %call256, i32 noundef %56) #5, !dbg !3324
  %idxprom265 = sext i32 %bmx.6 to i64, !dbg !3324
  %arrayidx266 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom265, !dbg !3324
  %57 = load i16, ptr %arrayidx266, align 2, !dbg !3324, !tbaa !1912
  %conv267 = zext i16 %57 to i32, !dbg !3324
  %add268 = add nsw i32 %call264, %conv267, !dbg !3324
  %idxprom269 = sext i32 %bmy.8 to i64, !dbg !3324
  %arrayidx270 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom269, !dbg !3324
  %58 = load i16, ptr %arrayidx270, align 2, !dbg !3324, !tbaa !1912
  %conv271 = zext i16 %58 to i32, !dbg !3324
  %add272 = add nsw i32 %add268, %conv271, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %add272, metadata !3171, metadata !DIExpression()), !dbg !3325
  %cmp275 = icmp slt i32 %add272, 268435456, !dbg !3326
  %or.cond1763 = select i1 %spec.select, i1 %cmp275, i1 false, !dbg !3326
  br i1 %or.cond1763, label %if.then277, label %if.end363, !dbg !3326

if.then277:                                       ; preds = %if.then244
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !3328
  %59 = load ptr, ptr %mc_chroma, align 8, !dbg !3328, !tbaa !3330
  %arrayidx281 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 4, !dbg !3328
  %60 = load ptr, ptr %arrayidx281, align 16, !dbg !3328, !tbaa !1889
  %arrayidx283 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, i64 1, !dbg !3328
  %61 = load i32, ptr %arrayidx283, align 4, !dbg !3328, !tbaa !1859
  %add284 = add nsw i32 %bmy.8, %cond, !dbg !3328
  %div = sdiv i32 %1, 2, !dbg !3328
  %div285 = sdiv i32 %2, 2, !dbg !3328
  call void %59(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %60, i32 noundef %61, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #5, !dbg !3328
  %62 = load ptr, ptr %weight254, align 8, !dbg !3331, !tbaa !1957
  %weightfn = getelementptr inbounds %struct.x264_weight_t, ptr %62, i64 1, i32 5, !dbg !3331
  %63 = load ptr, ptr %weightfn, align 16, !dbg !3331, !tbaa !3333
  %tobool288.not = icmp eq ptr %63, null, !dbg !3331
  br i1 %tobool288.not, label %if.end306, label %if.then289, !dbg !3328

if.then289:                                       ; preds = %if.then277
  %arrayidx287 = getelementptr inbounds %struct.x264_weight_t, ptr %62, i64 1, !dbg !3331
  %shr = ashr i32 %1, 3, !dbg !3331
  %idxprom296 = sext i32 %shr to i64, !dbg !3331
  %arrayidx297 = getelementptr inbounds ptr, ptr %63, i64 %idxprom296, !dbg !3331
  %64 = load ptr, ptr %arrayidx297, align 8, !dbg !3331, !tbaa !1889
  %shr305 = ashr i32 %2, 1, !dbg !3331
  call void %64(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx287, i32 noundef %shr305) #5, !dbg !3331
  br label %if.end306, !dbg !3331

if.end306:                                        ; preds = %if.then289, %if.then277
  %add308 = add nsw i32 %0, 3, !dbg !3328
  %idxprom309 = sext i32 %add308 to i64, !dbg !3328
  %arrayidx310 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 5, i64 %idxprom309, !dbg !3328
  %65 = load ptr, ptr %arrayidx310, align 8, !dbg !3328, !tbaa !1889
  %arrayidx312 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, i64 1, !dbg !3328
  %66 = load ptr, ptr %arrayidx312, align 8, !dbg !3328, !tbaa !1889
  %call314 = call i32 %65(ptr noundef %66, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3328
  %add315 = add nsw i32 %call314, %add272, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %add315, metadata !3171, metadata !DIExpression()), !dbg !3325
  %cmp316 = icmp slt i32 %add315, 268435456, !dbg !3335
  br i1 %cmp316, label %if.then318, label %if.end363, !dbg !3328

if.then318:                                       ; preds = %if.end306
  %67 = load ptr, ptr %mc_chroma, align 8, !dbg !3337, !tbaa !3330
  %arrayidx323 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 5, !dbg !3337
  %68 = load ptr, ptr %arrayidx323, align 8, !dbg !3337, !tbaa !1889
  %69 = load i32, ptr %arrayidx283, align 4, !dbg !3337, !tbaa !1859
  call void %67(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %68, i32 noundef %69, i32 noundef %bmx.6, i32 noundef %add284, i32 noundef %div, i32 noundef %div285) #5, !dbg !3337
  %70 = load ptr, ptr %weight254, align 8, !dbg !3339, !tbaa !1957
  %weightfn331 = getelementptr inbounds %struct.x264_weight_t, ptr %70, i64 2, i32 5, !dbg !3339
  %71 = load ptr, ptr %weightfn331, align 16, !dbg !3339, !tbaa !3333
  %tobool332.not = icmp eq ptr %71, null, !dbg !3339
  br i1 %tobool332.not, label %if.end351, label %if.then333, !dbg !3337

if.then333:                                       ; preds = %if.then318
  %arrayidx330 = getelementptr inbounds %struct.x264_weight_t, ptr %70, i64 2, !dbg !3339
  %shr340 = ashr i32 %1, 3, !dbg !3339
  %idxprom341 = sext i32 %shr340 to i64, !dbg !3339
  %arrayidx342 = getelementptr inbounds ptr, ptr %71, i64 %idxprom341, !dbg !3339
  %72 = load ptr, ptr %arrayidx342, align 8, !dbg !3339, !tbaa !1889
  %shr350 = ashr i32 %2, 1, !dbg !3339
  call void %72(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx330, i32 noundef %shr350) #5, !dbg !3339
  br label %if.end351, !dbg !3339

if.end351:                                        ; preds = %if.then333, %if.then318
  %73 = load ptr, ptr %arrayidx310, align 8, !dbg !3337, !tbaa !1889
  %arrayidx358 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, i64 2, !dbg !3337
  %74 = load ptr, ptr %arrayidx358, align 8, !dbg !3337, !tbaa !1889
  %call360 = call i32 %73(ptr noundef %74, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3337
  %add361 = add nsw i32 %call360, %add315, !dbg !3337
  call void @llvm.dbg.value(metadata i32 %add361, metadata !3171, metadata !DIExpression()), !dbg !3325
  br label %if.end363, !dbg !3337

if.end363:                                        ; preds = %if.end306, %if.end351, %if.then244
  %cost257.0 = phi i32 [ %add361, %if.end351 ], [ %add315, %if.end306 ], [ %add272, %if.then244 ], !dbg !3325
  call void @llvm.dbg.value(metadata i32 %cost257.0, metadata !3171, metadata !DIExpression()), !dbg !3325
  %75 = call i32 @llvm.smin.i32(i32 %cost257.0, i32 268435456), !dbg !3324
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %75, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride245) #5, !dbg !3341
  br label %if.end369, !dbg !3324

if.end369:                                        ; preds = %if.end363, %land.lhs.true230, %cleanup228
  %bcost.10 = phi i32 [ %bcost.8, %cleanup228 ], [ %75, %if.end363 ], [ %bcost.8, %land.lhs.true230 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.10, metadata !3141, metadata !DIExpression()), !dbg !3205
  %tobool370.not = icmp eq ptr %p_halfpel_thresh, null, !dbg !3342
  br i1 %tobool370.not, label %if.end389, label %if.then371, !dbg !3344

if.then371:                                       ; preds = %if.end369
  %mul372 = mul nsw i32 %bcost.10, 7, !dbg !3345
  %shr373 = ashr i32 %mul372, 3, !dbg !3348
  %76 = load i32, ptr %p_halfpel_thresh, align 4, !dbg !3349, !tbaa !1859
  %cmp374 = icmp sgt i32 %shr373, %76, !dbg !3350
  br i1 %cmp374, label %if.then376, label %if.else, !dbg !3351

if.then376:                                       ; preds = %if.then371
  store i32 %bcost.10, ptr %cost, align 8, !dbg !3352, !tbaa !3108
  %conv378 = trunc i32 %bmx.6 to i16, !dbg !3354
  store i16 %conv378, ptr %mv, align 4, !dbg !3355, !tbaa !1912
  %conv381 = trunc i32 %bmy.8 to i16, !dbg !3356
  store i16 %conv381, ptr %arrayidx24, align 2, !dbg !3357, !tbaa !1912
  br label %cleanup1200, !dbg !3358

if.else:                                          ; preds = %if.then371
  %cmp384 = icmp slt i32 %bcost.10, %76, !dbg !3359
  br i1 %cmp384, label %if.then386, label %if.end389, !dbg !3361

if.then386:                                       ; preds = %if.else
  store i32 %bcost.10, ptr %p_halfpel_thresh, align 4, !dbg !3362, !tbaa !1859
  br label %if.end389, !dbg !3363

if.end389:                                        ; preds = %if.then386, %if.else, %if.end369
  %i_subpel_refine391 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !3364
  %77 = load i32, ptr %i_subpel_refine391, align 8, !dbg !3364, !tbaa !1938
  %cmp392 = icmp sgt i32 %77, 1, !dbg !3365
  %mv_min_spel402 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, !dbg !3366
  %arrayidx403 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, i64 1, !dbg !3366
  br i1 %cmp392, label %for.cond396.preheader, label %if.else1000, !dbg !3367

for.cond396.preheader:                            ; preds = %if.end389
  %mv_max_spel408 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !3368
  %arrayidx409 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.10, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 -1, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %qpel_iters, metadata !3172, metadata !DIExpression()), !dbg !3371
  %cmp3971822 = icmp sgt i32 %qpel_iters, 0, !dbg !3372
  br i1 %cmp3971822, label %for.body400.lr.ph, label %if.end1185, !dbg !3373

for.body400.lr.ph:                                ; preds = %for.cond396.preheader
  %get_ref436 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1
  %p_fref438 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5
  %i_stride440 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9
  %weight443 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4
  %arrayidx450 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 6, i64 %idxprom
  %p_fenc451 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7
  %mc_chroma469 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2
  %arrayidx472 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 4
  %arrayidx474 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, i64 1
  %div477 = sdiv i32 %1, 2
  %div478 = sdiv i32 %2, 2
  %shr490 = ashr i32 %1, 3
  %idxprom491 = sext i32 %shr490 to i64
  %shr500 = ashr i32 %2, 1
  %add504 = add nsw i32 %0, 3
  %idxprom505 = sext i32 %add504 to i64
  %arrayidx506 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 5, i64 %idxprom505
  %arrayidx508 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, i64 1
  %arrayidx519 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 5
  %arrayidx555 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, i64 2
  br label %for.body400, !dbg !3373

for.cond396:                                      ; preds = %if.end983
  %dec997 = add nsw i32 %i395.01823, -1, !dbg !3374
  call void @llvm.dbg.value(metadata i32 %bmx.17, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.19, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.19, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.8, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %i395.01823, metadata !3172, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3371
  %cmp397 = icmp sgt i32 %i395.01823, 1, !dbg !3372
  br i1 %cmp397, label %for.body400, label %if.end1185, !dbg !3373, !llvm.loop !3375

for.body400:                                      ; preds = %for.body400.lr.ph, %for.cond396
  %bmx.91837 = phi i32 [ %bmx.6, %for.body400.lr.ph ], [ %bmx.17, %for.cond396 ]
  %bmy.111828 = phi i32 [ %bmy.8, %for.body400.lr.ph ], [ %bmy.19, %for.cond396 ]
  %bcost.111827 = phi i32 [ %bcost.10, %for.body400.lr.ph ], [ %bcost.19, %for.cond396 ]
  %bdir.01824 = phi i32 [ -1, %for.body400.lr.ph ], [ %bdir.8, %for.cond396 ]
  %i395.01823 = phi i32 [ %qpel_iters, %for.body400.lr.ph ], [ %dec997, %for.cond396 ]
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.111828, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.111827, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.01824, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %i395.01823, metadata !3172, metadata !DIExpression()), !dbg !3371
  %78 = load i32, ptr %arrayidx403, align 4, !dbg !3377, !tbaa !1859
  %cmp404.not = icmp sgt i32 %bmy.111828, %78, !dbg !3378
  br i1 %cmp404.not, label %lor.lhs.false406, label %if.end1185, !dbg !3379

lor.lhs.false406:                                 ; preds = %for.body400
  %79 = load i32, ptr %arrayidx409, align 4, !dbg !3370, !tbaa !1859
  %cmp410.not = icmp slt i32 %bmy.111828, %79, !dbg !3380
  br i1 %cmp410.not, label %lor.lhs.false412, label %if.end1185, !dbg !3381

lor.lhs.false412:                                 ; preds = %lor.lhs.false406
  %80 = load i32, ptr %mv_min_spel402, align 8, !dbg !3382, !tbaa !1859
  %cmp416.not = icmp sgt i32 %bmx.91837, %80, !dbg !3383
  br i1 %cmp416.not, label %lor.lhs.false418, label %if.end1185, !dbg !3384

lor.lhs.false418:                                 ; preds = %lor.lhs.false412
  %81 = load i32, ptr %mv_max_spel408, align 16, !dbg !3385, !tbaa !1859
  %cmp422.not = icmp slt i32 %bmx.91837, %81, !dbg !3386
  br i1 %cmp422.not, label %if.end425, label %if.end1185, !dbg !3387

if.end425:                                        ; preds = %lor.lhs.false418
  call void @llvm.dbg.value(metadata i32 %bdir.01824, metadata !3142, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3176, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i32 %bmy.111828, metadata !3179, metadata !DIExpression()), !dbg !3388
  %cmp430 = icmp ne i32 %bdir.01824, 1, !dbg !3389
  %or.cond1218 = select i1 %tobool229, i1 true, i1 %cmp430, !dbg !3389
  br i1 %or.cond1218, label %if.then432, label %if.end425.if.then571_crit_edge, !dbg !3389

if.end425.if.then571_crit_edge:                   ; preds = %if.end425
  %.pre = sext i32 %bmx.91837 to i64, !dbg !3390
  br label %if.then571, !dbg !3389

if.then432:                                       ; preds = %if.end425
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride433) #5, !dbg !3391
  call void @llvm.dbg.value(metadata i32 16, metadata !3180, metadata !DIExpression()), !dbg !3392
  store i32 16, ptr %stride433, align 4, !dbg !3391, !tbaa !1859
  %82 = load ptr, ptr %get_ref436, align 8, !dbg !3391, !tbaa !1956
  %83 = load i32, ptr %i_stride440, align 8, !dbg !3391, !tbaa !1859
  %sub442 = add nsw i32 %bmy.111828, -1, !dbg !3391
  %84 = load ptr, ptr %weight443, align 8, !dbg !3391, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride433, metadata !3180, metadata !DIExpression(DW_OP_deref)), !dbg !3392
  %call445 = call ptr %82(ptr noundef nonnull %pix, ptr noundef nonnull %stride433, ptr noundef nonnull %p_fref438, i32 noundef %83, i32 noundef %bmx.91837, i32 noundef %sub442, i32 noundef %1, i32 noundef %2, ptr noundef %84) #5, !dbg !3391
  call void @llvm.dbg.value(metadata ptr %call445, metadata !3183, metadata !DIExpression()), !dbg !3392
  %85 = load ptr, ptr %arrayidx450, align 8, !dbg !3391, !tbaa !1889
  %86 = load ptr, ptr %p_fenc451, align 8, !dbg !3391, !tbaa !1889
  %87 = load i32, ptr %stride433, align 4, !dbg !3391, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %87, metadata !3180, metadata !DIExpression()), !dbg !3392
  %call453 = call i32 %85(ptr noundef %86, i32 noundef 16, ptr noundef %call445, i32 noundef %87) #5, !dbg !3391
  %idxprom454 = sext i32 %bmx.91837 to i64, !dbg !3391
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom454, !dbg !3391
  %88 = load i16, ptr %arrayidx455, align 2, !dbg !3391, !tbaa !1912
  %conv456 = zext i16 %88 to i32, !dbg !3391
  %add457 = add nsw i32 %call453, %conv456, !dbg !3391
  %idxprom459 = sext i32 %sub442 to i64, !dbg !3391
  %arrayidx460 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom459, !dbg !3391
  %89 = load i16, ptr %arrayidx460, align 2, !dbg !3391, !tbaa !1912
  %conv461 = zext i16 %89 to i32, !dbg !3391
  %add462 = add nsw i32 %add457, %conv461, !dbg !3391
  call void @llvm.dbg.value(metadata i32 %add462, metadata !3184, metadata !DIExpression()), !dbg !3392
  %cmp465 = icmp slt i32 %add462, %bcost.111827, !dbg !3393
  %or.cond1765 = select i1 %spec.select, i1 %cmp465, i1 false, !dbg !3393
  br i1 %or.cond1765, label %if.then467, label %if.end560, !dbg !3393

if.then467:                                       ; preds = %if.then432
  %90 = load ptr, ptr %mc_chroma469, align 8, !dbg !3395, !tbaa !3330
  %91 = load ptr, ptr %arrayidx472, align 16, !dbg !3395, !tbaa !1889
  %92 = load i32, ptr %arrayidx474, align 4, !dbg !3395, !tbaa !1859
  %add476 = add nsw i32 %sub442, %cond, !dbg !3395
  call void %90(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %91, i32 noundef %92, i32 noundef %bmx.91837, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3395
  %93 = load ptr, ptr %weight443, align 8, !dbg !3397, !tbaa !1957
  %weightfn481 = getelementptr inbounds %struct.x264_weight_t, ptr %93, i64 1, i32 5, !dbg !3397
  %94 = load ptr, ptr %weightfn481, align 16, !dbg !3397, !tbaa !3333
  %tobool482.not = icmp eq ptr %94, null, !dbg !3397
  br i1 %tobool482.not, label %if.end501, label %if.then483, !dbg !3395

if.then483:                                       ; preds = %if.then467
  %arrayidx480 = getelementptr inbounds %struct.x264_weight_t, ptr %93, i64 1, !dbg !3397
  %arrayidx492 = getelementptr inbounds ptr, ptr %94, i64 %idxprom491, !dbg !3397
  %95 = load ptr, ptr %arrayidx492, align 8, !dbg !3397, !tbaa !1889
  call void %95(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx480, i32 noundef %shr500) #5, !dbg !3397
  br label %if.end501, !dbg !3397

if.end501:                                        ; preds = %if.then483, %if.then467
  %96 = load ptr, ptr %arrayidx506, align 8, !dbg !3395, !tbaa !1889
  %97 = load ptr, ptr %arrayidx508, align 8, !dbg !3395, !tbaa !1889
  %call510 = call i32 %96(ptr noundef %97, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3395
  %add511 = add nsw i32 %call510, %add462, !dbg !3395
  call void @llvm.dbg.value(metadata i32 %add511, metadata !3184, metadata !DIExpression()), !dbg !3392
  %cmp512 = icmp slt i32 %add511, %bcost.111827, !dbg !3399
  br i1 %cmp512, label %if.then514, label %if.end560, !dbg !3395

if.then514:                                       ; preds = %if.end501
  %98 = load ptr, ptr %mc_chroma469, align 8, !dbg !3401, !tbaa !3330
  %99 = load ptr, ptr %arrayidx519, align 8, !dbg !3401, !tbaa !1889
  %100 = load i32, ptr %arrayidx474, align 4, !dbg !3401, !tbaa !1859
  call void %98(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %99, i32 noundef %100, i32 noundef %bmx.91837, i32 noundef %add476, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3401
  %101 = load ptr, ptr %weight443, align 8, !dbg !3403, !tbaa !1957
  %weightfn528 = getelementptr inbounds %struct.x264_weight_t, ptr %101, i64 2, i32 5, !dbg !3403
  %102 = load ptr, ptr %weightfn528, align 16, !dbg !3403, !tbaa !3333
  %tobool529.not = icmp eq ptr %102, null, !dbg !3403
  br i1 %tobool529.not, label %if.end548, label %if.then530, !dbg !3401

if.then530:                                       ; preds = %if.then514
  %arrayidx527 = getelementptr inbounds %struct.x264_weight_t, ptr %101, i64 2, !dbg !3403
  %arrayidx539 = getelementptr inbounds ptr, ptr %102, i64 %idxprom491, !dbg !3403
  %103 = load ptr, ptr %arrayidx539, align 8, !dbg !3403, !tbaa !1889
  call void %103(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx527, i32 noundef %shr500) #5, !dbg !3403
  br label %if.end548, !dbg !3403

if.end548:                                        ; preds = %if.then530, %if.then514
  %104 = load ptr, ptr %arrayidx506, align 8, !dbg !3401, !tbaa !1889
  %105 = load ptr, ptr %arrayidx555, align 8, !dbg !3401, !tbaa !1889
  %call557 = call i32 %104(ptr noundef %105, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3401
  %add558 = add nsw i32 %call557, %add511, !dbg !3401
  call void @llvm.dbg.value(metadata i32 %add558, metadata !3184, metadata !DIExpression()), !dbg !3392
  br label %if.end560, !dbg !3401

if.end560:                                        ; preds = %if.end501, %if.end548, %if.then432
  %cost446.0 = phi i32 [ %add558, %if.end548 ], [ %add511, %if.end501 ], [ %add462, %if.then432 ], !dbg !3392
  call void @llvm.dbg.value(metadata i32 %cost446.0, metadata !3184, metadata !DIExpression()), !dbg !3392
  %cmp561 = icmp slt i32 %cost446.0, %bcost.111827, !dbg !3405
  br i1 %cmp561, label %if.then563, label %if.end566, !dbg !3391

if.then563:                                       ; preds = %if.end560
  call void @llvm.dbg.value(metadata i32 %cost446.0, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %sub442, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 0, metadata !3143, metadata !DIExpression()), !dbg !3205
  br label %if.end566, !dbg !3407

if.end566:                                        ; preds = %if.end560, %if.then563
  %bdir.1 = phi i32 [ 0, %if.then563 ], [ %bdir.01824, %if.end560 ], !dbg !3409
  %bcost.12 = phi i32 [ %cost446.0, %if.then563 ], [ %bcost.111827, %if.end560 ], !dbg !3205
  %bmy.12 = phi i32 [ %sub442, %if.then563 ], [ %bmy.111828, %if.end560 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.12, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.12, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.1, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride433) #5, !dbg !3389
  %cmp569 = icmp ne i32 %bdir.01824, 0, !dbg !3410
  %or.cond1219 = select i1 %tobool229, i1 true, i1 %cmp569, !dbg !3410
  br i1 %or.cond1219, label %if.then571, label %if.then710, !dbg !3410

if.then571:                                       ; preds = %if.end425.if.then571_crit_edge, %if.end566
  %idxprom593.pre-phi = phi i64 [ %.pre, %if.end425.if.then571_crit_edge ], [ %idxprom454, %if.end566 ], !dbg !3390
  %bmy.131793 = phi i32 [ %bmy.111828, %if.end425.if.then571_crit_edge ], [ %bmy.12, %if.end566 ]
  %bcost.131792 = phi i32 [ %bcost.111827, %if.end425.if.then571_crit_edge ], [ %bcost.12, %if.end566 ]
  %bdir.21791 = phi i32 [ 1, %if.end425.if.then571_crit_edge ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride572) #5, !dbg !3390
  call void @llvm.dbg.value(metadata i32 16, metadata !3185, metadata !DIExpression()), !dbg !3411
  store i32 16, ptr %stride572, align 4, !dbg !3390, !tbaa !1859
  %106 = load ptr, ptr %get_ref436, align 8, !dbg !3390, !tbaa !1956
  %107 = load i32, ptr %i_stride440, align 8, !dbg !3390, !tbaa !1859
  %add581 = add nsw i32 %bmy.111828, 1, !dbg !3390
  %108 = load ptr, ptr %weight443, align 8, !dbg !3390, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride572, metadata !3185, metadata !DIExpression(DW_OP_deref)), !dbg !3411
  %call584 = call ptr %106(ptr noundef nonnull %pix, ptr noundef nonnull %stride572, ptr noundef nonnull %p_fref438, i32 noundef %107, i32 noundef %bmx.91837, i32 noundef %add581, i32 noundef %1, i32 noundef %2, ptr noundef %108) #5, !dbg !3390
  call void @llvm.dbg.value(metadata ptr %call584, metadata !3188, metadata !DIExpression()), !dbg !3411
  %109 = load ptr, ptr %arrayidx450, align 8, !dbg !3390, !tbaa !1889
  %110 = load ptr, ptr %p_fenc451, align 8, !dbg !3390, !tbaa !1889
  %111 = load i32, ptr %stride572, align 4, !dbg !3390, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %111, metadata !3185, metadata !DIExpression()), !dbg !3411
  %call592 = call i32 %109(ptr noundef %110, i32 noundef 16, ptr noundef %call584, i32 noundef %111) #5, !dbg !3390
  %arrayidx594 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom593.pre-phi, !dbg !3390
  %112 = load i16, ptr %arrayidx594, align 2, !dbg !3390, !tbaa !1912
  %conv595 = zext i16 %112 to i32, !dbg !3390
  %add596 = add nsw i32 %call592, %conv595, !dbg !3390
  %idxprom598 = sext i32 %add581 to i64, !dbg !3390
  %arrayidx599 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom598, !dbg !3390
  %113 = load i16, ptr %arrayidx599, align 2, !dbg !3390, !tbaa !1912
  %conv600 = zext i16 %113 to i32, !dbg !3390
  %add601 = add nsw i32 %add596, %conv600, !dbg !3390
  call void @llvm.dbg.value(metadata i32 %add601, metadata !3189, metadata !DIExpression()), !dbg !3411
  %cmp604 = icmp slt i32 %add601, %bcost.131792, !dbg !3412
  %or.cond1766 = select i1 %spec.select, i1 %cmp604, i1 false, !dbg !3412
  br i1 %or.cond1766, label %if.then606, label %if.end699, !dbg !3412

if.then606:                                       ; preds = %if.then571
  %114 = load ptr, ptr %mc_chroma469, align 8, !dbg !3414, !tbaa !3330
  %115 = load ptr, ptr %arrayidx472, align 16, !dbg !3414, !tbaa !1889
  %116 = load i32, ptr %arrayidx474, align 4, !dbg !3414, !tbaa !1859
  %add615 = add nsw i32 %add581, %cond, !dbg !3414
  call void %114(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %115, i32 noundef %116, i32 noundef %bmx.91837, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3414
  %117 = load ptr, ptr %weight443, align 8, !dbg !3416, !tbaa !1957
  %weightfn620 = getelementptr inbounds %struct.x264_weight_t, ptr %117, i64 1, i32 5, !dbg !3416
  %118 = load ptr, ptr %weightfn620, align 16, !dbg !3416, !tbaa !3333
  %tobool621.not = icmp eq ptr %118, null, !dbg !3416
  br i1 %tobool621.not, label %if.end640, label %if.then622, !dbg !3414

if.then622:                                       ; preds = %if.then606
  %arrayidx619 = getelementptr inbounds %struct.x264_weight_t, ptr %117, i64 1, !dbg !3416
  %arrayidx631 = getelementptr inbounds ptr, ptr %118, i64 %idxprom491, !dbg !3416
  %119 = load ptr, ptr %arrayidx631, align 8, !dbg !3416, !tbaa !1889
  call void %119(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx619, i32 noundef %shr500) #5, !dbg !3416
  br label %if.end640, !dbg !3416

if.end640:                                        ; preds = %if.then622, %if.then606
  %120 = load ptr, ptr %arrayidx506, align 8, !dbg !3414, !tbaa !1889
  %121 = load ptr, ptr %arrayidx508, align 8, !dbg !3414, !tbaa !1889
  %call649 = call i32 %120(ptr noundef %121, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3414
  %add650 = add nsw i32 %call649, %add601, !dbg !3414
  call void @llvm.dbg.value(metadata i32 %add650, metadata !3189, metadata !DIExpression()), !dbg !3411
  %cmp651 = icmp slt i32 %add650, %bcost.131792, !dbg !3418
  br i1 %cmp651, label %if.then653, label %if.end699, !dbg !3414

if.then653:                                       ; preds = %if.end640
  %122 = load ptr, ptr %mc_chroma469, align 8, !dbg !3420, !tbaa !3330
  %123 = load ptr, ptr %arrayidx519, align 8, !dbg !3420, !tbaa !1889
  %124 = load i32, ptr %arrayidx474, align 4, !dbg !3420, !tbaa !1859
  call void %122(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %123, i32 noundef %124, i32 noundef %bmx.91837, i32 noundef %add615, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3420
  %125 = load ptr, ptr %weight443, align 8, !dbg !3422, !tbaa !1957
  %weightfn667 = getelementptr inbounds %struct.x264_weight_t, ptr %125, i64 2, i32 5, !dbg !3422
  %126 = load ptr, ptr %weightfn667, align 16, !dbg !3422, !tbaa !3333
  %tobool668.not = icmp eq ptr %126, null, !dbg !3422
  br i1 %tobool668.not, label %if.end687, label %if.then669, !dbg !3420

if.then669:                                       ; preds = %if.then653
  %arrayidx666 = getelementptr inbounds %struct.x264_weight_t, ptr %125, i64 2, !dbg !3422
  %arrayidx678 = getelementptr inbounds ptr, ptr %126, i64 %idxprom491, !dbg !3422
  %127 = load ptr, ptr %arrayidx678, align 8, !dbg !3422, !tbaa !1889
  call void %127(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx666, i32 noundef %shr500) #5, !dbg !3422
  br label %if.end687, !dbg !3422

if.end687:                                        ; preds = %if.then669, %if.then653
  %128 = load ptr, ptr %arrayidx506, align 8, !dbg !3420, !tbaa !1889
  %129 = load ptr, ptr %arrayidx555, align 8, !dbg !3420, !tbaa !1889
  %call696 = call i32 %128(ptr noundef %129, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3420
  %add697 = add nsw i32 %call696, %add650, !dbg !3420
  call void @llvm.dbg.value(metadata i32 %add697, metadata !3189, metadata !DIExpression()), !dbg !3411
  br label %if.end699, !dbg !3420

if.end699:                                        ; preds = %if.end640, %if.end687, %if.then571
  %cost585.0 = phi i32 [ %add697, %if.end687 ], [ %add650, %if.end640 ], [ %add601, %if.then571 ], !dbg !3411
  call void @llvm.dbg.value(metadata i32 %cost585.0, metadata !3189, metadata !DIExpression()), !dbg !3411
  %cmp700 = icmp slt i32 %cost585.0, %bcost.131792, !dbg !3424
  br i1 %cmp700, label %if.then702, label %if.end705, !dbg !3390

if.then702:                                       ; preds = %if.end699
  call void @llvm.dbg.value(metadata i32 %cost585.0, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %add581, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 1, metadata !3143, metadata !DIExpression()), !dbg !3205
  br label %if.end705, !dbg !3426

if.end705:                                        ; preds = %if.end699, %if.then702
  %bdir.3 = phi i32 [ 1, %if.then702 ], [ %bdir.21791, %if.end699 ], !dbg !3388
  %bcost.14 = phi i32 [ %cost585.0, %if.then702 ], [ %bcost.131792, %if.end699 ], !dbg !3388
  %bmy.14 = phi i32 [ %add581, %if.then702 ], [ %bmy.131793, %if.end699 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %bmx.91837, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.14, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.14, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.3, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride572) #5, !dbg !3410
  %cmp708 = icmp ne i32 %bdir.01824, 3, !dbg !3428
  %or.cond1220 = select i1 %tobool229, i1 true, i1 %cmp708, !dbg !3428
  br i1 %or.cond1220, label %if.then710, label %if.end705.if.then849_crit_edge, !dbg !3428

if.end705.if.then849_crit_edge:                   ; preds = %if.end705
  %.pre1859 = sext i32 %bmy.111828 to i64, !dbg !3429
  br label %if.then849, !dbg !3428

if.then710:                                       ; preds = %if.end566, %if.end705
  %bmy.151801 = phi i32 [ %bmy.14, %if.end705 ], [ %bmy.12, %if.end566 ]
  %bcost.151800 = phi i32 [ %bcost.14, %if.end705 ], [ %bcost.12, %if.end566 ]
  %bdir.41799 = phi i32 [ %bdir.3, %if.end705 ], [ %bdir.1, %if.end566 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride711) #5, !dbg !3430
  call void @llvm.dbg.value(metadata i32 16, metadata !3190, metadata !DIExpression()), !dbg !3431
  store i32 16, ptr %stride711, align 4, !dbg !3430, !tbaa !1859
  %130 = load ptr, ptr %get_ref436, align 8, !dbg !3430, !tbaa !1956
  %131 = load i32, ptr %i_stride440, align 8, !dbg !3430, !tbaa !1859
  %sub720 = add nsw i32 %bmx.91837, -1, !dbg !3430
  %132 = load ptr, ptr %weight443, align 8, !dbg !3430, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride711, metadata !3190, metadata !DIExpression(DW_OP_deref)), !dbg !3431
  %call723 = call ptr %130(ptr noundef nonnull %pix, ptr noundef nonnull %stride711, ptr noundef nonnull %p_fref438, i32 noundef %131, i32 noundef %sub720, i32 noundef %bmy.111828, i32 noundef %1, i32 noundef %2, ptr noundef %132) #5, !dbg !3430
  call void @llvm.dbg.value(metadata ptr %call723, metadata !3193, metadata !DIExpression()), !dbg !3431
  %133 = load ptr, ptr %arrayidx450, align 8, !dbg !3430, !tbaa !1889
  %134 = load ptr, ptr %p_fenc451, align 8, !dbg !3430, !tbaa !1889
  %135 = load i32, ptr %stride711, align 4, !dbg !3430, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %135, metadata !3190, metadata !DIExpression()), !dbg !3431
  %call731 = call i32 %133(ptr noundef %134, i32 noundef 16, ptr noundef %call723, i32 noundef %135) #5, !dbg !3430
  %idxprom733 = sext i32 %sub720 to i64, !dbg !3430
  %arrayidx734 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom733, !dbg !3430
  %136 = load i16, ptr %arrayidx734, align 2, !dbg !3430, !tbaa !1912
  %conv735 = zext i16 %136 to i32, !dbg !3430
  %add736 = add nsw i32 %call731, %conv735, !dbg !3430
  %idxprom737 = sext i32 %bmy.111828 to i64, !dbg !3430
  %arrayidx738 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom737, !dbg !3430
  %137 = load i16, ptr %arrayidx738, align 2, !dbg !3430, !tbaa !1912
  %conv739 = zext i16 %137 to i32, !dbg !3430
  %add740 = add nsw i32 %add736, %conv739, !dbg !3430
  call void @llvm.dbg.value(metadata i32 %add740, metadata !3194, metadata !DIExpression()), !dbg !3431
  %cmp743 = icmp slt i32 %add740, %bcost.151800, !dbg !3432
  %or.cond1767 = select i1 %spec.select, i1 %cmp743, i1 false, !dbg !3432
  br i1 %or.cond1767, label %if.then745, label %if.end838, !dbg !3432

if.then745:                                       ; preds = %if.then710
  %138 = load ptr, ptr %mc_chroma469, align 8, !dbg !3434, !tbaa !3330
  %139 = load ptr, ptr %arrayidx472, align 16, !dbg !3434, !tbaa !1889
  %140 = load i32, ptr %arrayidx474, align 4, !dbg !3434, !tbaa !1859
  %add754 = add nsw i32 %bmy.111828, %cond, !dbg !3434
  call void %138(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %139, i32 noundef %140, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3434
  %141 = load ptr, ptr %weight443, align 8, !dbg !3436, !tbaa !1957
  %weightfn759 = getelementptr inbounds %struct.x264_weight_t, ptr %141, i64 1, i32 5, !dbg !3436
  %142 = load ptr, ptr %weightfn759, align 16, !dbg !3436, !tbaa !3333
  %tobool760.not = icmp eq ptr %142, null, !dbg !3436
  br i1 %tobool760.not, label %if.end779, label %if.then761, !dbg !3434

if.then761:                                       ; preds = %if.then745
  %arrayidx758 = getelementptr inbounds %struct.x264_weight_t, ptr %141, i64 1, !dbg !3436
  %arrayidx770 = getelementptr inbounds ptr, ptr %142, i64 %idxprom491, !dbg !3436
  %143 = load ptr, ptr %arrayidx770, align 8, !dbg !3436, !tbaa !1889
  call void %143(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx758, i32 noundef %shr500) #5, !dbg !3436
  br label %if.end779, !dbg !3436

if.end779:                                        ; preds = %if.then761, %if.then745
  %144 = load ptr, ptr %arrayidx506, align 8, !dbg !3434, !tbaa !1889
  %145 = load ptr, ptr %arrayidx508, align 8, !dbg !3434, !tbaa !1889
  %call788 = call i32 %144(ptr noundef %145, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3434
  %add789 = add nsw i32 %call788, %add740, !dbg !3434
  call void @llvm.dbg.value(metadata i32 %add789, metadata !3194, metadata !DIExpression()), !dbg !3431
  %cmp790 = icmp slt i32 %add789, %bcost.151800, !dbg !3438
  br i1 %cmp790, label %if.then792, label %if.end838, !dbg !3434

if.then792:                                       ; preds = %if.end779
  %146 = load ptr, ptr %mc_chroma469, align 8, !dbg !3440, !tbaa !3330
  %147 = load ptr, ptr %arrayidx519, align 8, !dbg !3440, !tbaa !1889
  %148 = load i32, ptr %arrayidx474, align 4, !dbg !3440, !tbaa !1859
  call void %146(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %147, i32 noundef %148, i32 noundef %sub720, i32 noundef %add754, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3440
  %149 = load ptr, ptr %weight443, align 8, !dbg !3442, !tbaa !1957
  %weightfn806 = getelementptr inbounds %struct.x264_weight_t, ptr %149, i64 2, i32 5, !dbg !3442
  %150 = load ptr, ptr %weightfn806, align 16, !dbg !3442, !tbaa !3333
  %tobool807.not = icmp eq ptr %150, null, !dbg !3442
  br i1 %tobool807.not, label %if.end826, label %if.then808, !dbg !3440

if.then808:                                       ; preds = %if.then792
  %arrayidx805 = getelementptr inbounds %struct.x264_weight_t, ptr %149, i64 2, !dbg !3442
  %arrayidx817 = getelementptr inbounds ptr, ptr %150, i64 %idxprom491, !dbg !3442
  %151 = load ptr, ptr %arrayidx817, align 8, !dbg !3442, !tbaa !1889
  call void %151(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx805, i32 noundef %shr500) #5, !dbg !3442
  br label %if.end826, !dbg !3442

if.end826:                                        ; preds = %if.then808, %if.then792
  %152 = load ptr, ptr %arrayidx506, align 8, !dbg !3440, !tbaa !1889
  %153 = load ptr, ptr %arrayidx555, align 8, !dbg !3440, !tbaa !1889
  %call835 = call i32 %152(ptr noundef %153, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3440
  %add836 = add nsw i32 %call835, %add789, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %add836, metadata !3194, metadata !DIExpression()), !dbg !3431
  br label %if.end838, !dbg !3440

if.end838:                                        ; preds = %if.end779, %if.end826, %if.then710
  %cost724.0 = phi i32 [ %add836, %if.end826 ], [ %add789, %if.end779 ], [ %add740, %if.then710 ], !dbg !3431
  call void @llvm.dbg.value(metadata i32 %cost724.0, metadata !3194, metadata !DIExpression()), !dbg !3431
  %cmp839 = icmp slt i32 %cost724.0, %bcost.151800, !dbg !3444
  br i1 %cmp839, label %if.then841, label %if.end844, !dbg !3430

if.then841:                                       ; preds = %if.end838
  call void @llvm.dbg.value(metadata i32 %cost724.0, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %sub720, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.111828, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 2, metadata !3143, metadata !DIExpression()), !dbg !3205
  br label %if.end844, !dbg !3446

if.end844:                                        ; preds = %if.end838, %if.then841
  %bdir.5 = phi i32 [ 2, %if.then841 ], [ %bdir.41799, %if.end838 ], !dbg !3388
  %bcost.16 = phi i32 [ %cost724.0, %if.then841 ], [ %bcost.151800, %if.end838 ], !dbg !3388
  %bmy.16 = phi i32 [ %bmy.111828, %if.then841 ], [ %bmy.151801, %if.end838 ], !dbg !3388
  %bmx.14 = phi i32 [ %sub720, %if.then841 ], [ %bmx.91837, %if.end838 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %bmx.14, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.16, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.16, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.5, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride711) #5, !dbg !3428
  %cmp847 = icmp ne i32 %bdir.01824, 2, !dbg !3448
  %or.cond1221 = select i1 %tobool229, i1 true, i1 %cmp847, !dbg !3448
  br i1 %or.cond1221, label %if.then849, label %if.end983, !dbg !3448

if.then849:                                       ; preds = %if.end705.if.then849_crit_edge, %if.end844
  %idxprom876.pre-phi = phi i64 [ %.pre1859, %if.end705.if.then849_crit_edge ], [ %idxprom737, %if.end844 ], !dbg !3429
  %bmx.151811 = phi i32 [ %bmx.91837, %if.end705.if.then849_crit_edge ], [ %bmx.14, %if.end844 ]
  %bmy.171810 = phi i32 [ %bmy.14, %if.end705.if.then849_crit_edge ], [ %bmy.16, %if.end844 ]
  %bcost.171809 = phi i32 [ %bcost.14, %if.end705.if.then849_crit_edge ], [ %bcost.16, %if.end844 ]
  %bdir.61808 = phi i32 [ %bdir.3, %if.end705.if.then849_crit_edge ], [ %bdir.5, %if.end844 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stride850) #5, !dbg !3429
  call void @llvm.dbg.value(metadata i32 16, metadata !3195, metadata !DIExpression()), !dbg !3449
  store i32 16, ptr %stride850, align 4, !dbg !3429, !tbaa !1859
  %154 = load ptr, ptr %get_ref436, align 8, !dbg !3429, !tbaa !1956
  %155 = load i32, ptr %i_stride440, align 8, !dbg !3429, !tbaa !1859
  %add859 = add nsw i32 %bmx.91837, 1, !dbg !3429
  %156 = load ptr, ptr %weight443, align 8, !dbg !3429, !tbaa !1957
  call void @llvm.dbg.value(metadata ptr %stride850, metadata !3195, metadata !DIExpression(DW_OP_deref)), !dbg !3449
  %call862 = call ptr %154(ptr noundef nonnull %pix, ptr noundef nonnull %stride850, ptr noundef nonnull %p_fref438, i32 noundef %155, i32 noundef %add859, i32 noundef %bmy.111828, i32 noundef %1, i32 noundef %2, ptr noundef %156) #5, !dbg !3429
  call void @llvm.dbg.value(metadata ptr %call862, metadata !3198, metadata !DIExpression()), !dbg !3449
  %157 = load ptr, ptr %arrayidx450, align 8, !dbg !3429, !tbaa !1889
  %158 = load ptr, ptr %p_fenc451, align 8, !dbg !3429, !tbaa !1889
  %159 = load i32, ptr %stride850, align 4, !dbg !3429, !tbaa !1859
  call void @llvm.dbg.value(metadata i32 %159, metadata !3195, metadata !DIExpression()), !dbg !3449
  %call870 = call i32 %157(ptr noundef %158, i32 noundef 16, ptr noundef %call862, i32 noundef %159) #5, !dbg !3429
  %idxprom872 = sext i32 %add859 to i64, !dbg !3429
  %arrayidx873 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom872, !dbg !3429
  %160 = load i16, ptr %arrayidx873, align 2, !dbg !3429, !tbaa !1912
  %conv874 = zext i16 %160 to i32, !dbg !3429
  %add875 = add nsw i32 %call870, %conv874, !dbg !3429
  %arrayidx877 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom876.pre-phi, !dbg !3429
  %161 = load i16, ptr %arrayidx877, align 2, !dbg !3429, !tbaa !1912
  %conv878 = zext i16 %161 to i32, !dbg !3429
  %add879 = add nsw i32 %add875, %conv878, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %add879, metadata !3199, metadata !DIExpression()), !dbg !3449
  %cmp882 = icmp slt i32 %add879, %bcost.171809, !dbg !3450
  %or.cond1768 = select i1 %spec.select, i1 %cmp882, i1 false, !dbg !3450
  br i1 %or.cond1768, label %if.then884, label %if.end977, !dbg !3450

if.then884:                                       ; preds = %if.then849
  %162 = load ptr, ptr %mc_chroma469, align 8, !dbg !3452, !tbaa !3330
  %163 = load ptr, ptr %arrayidx472, align 16, !dbg !3452, !tbaa !1889
  %164 = load i32, ptr %arrayidx474, align 4, !dbg !3452, !tbaa !1859
  %add893 = add nsw i32 %bmy.111828, %cond, !dbg !3452
  call void %162(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %163, i32 noundef %164, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3452
  %165 = load ptr, ptr %weight443, align 8, !dbg !3454, !tbaa !1957
  %weightfn898 = getelementptr inbounds %struct.x264_weight_t, ptr %165, i64 1, i32 5, !dbg !3454
  %166 = load ptr, ptr %weightfn898, align 16, !dbg !3454, !tbaa !3333
  %tobool899.not = icmp eq ptr %166, null, !dbg !3454
  br i1 %tobool899.not, label %if.end918, label %if.then900, !dbg !3452

if.then900:                                       ; preds = %if.then884
  %arrayidx897 = getelementptr inbounds %struct.x264_weight_t, ptr %165, i64 1, !dbg !3454
  %arrayidx909 = getelementptr inbounds ptr, ptr %166, i64 %idxprom491, !dbg !3454
  %167 = load ptr, ptr %arrayidx909, align 8, !dbg !3454, !tbaa !1889
  call void %167(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx897, i32 noundef %shr500) #5, !dbg !3454
  br label %if.end918, !dbg !3454

if.end918:                                        ; preds = %if.then900, %if.then884
  %168 = load ptr, ptr %arrayidx506, align 8, !dbg !3452, !tbaa !1889
  %169 = load ptr, ptr %arrayidx508, align 8, !dbg !3452, !tbaa !1889
  %call927 = call i32 %168(ptr noundef %169, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3452
  %add928 = add nsw i32 %call927, %add879, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %add928, metadata !3199, metadata !DIExpression()), !dbg !3449
  %cmp929 = icmp slt i32 %add928, %bcost.171809, !dbg !3456
  br i1 %cmp929, label %if.then931, label %if.end977, !dbg !3452

if.then931:                                       ; preds = %if.end918
  %170 = load ptr, ptr %mc_chroma469, align 8, !dbg !3458, !tbaa !3330
  %171 = load ptr, ptr %arrayidx519, align 8, !dbg !3458, !tbaa !1889
  %172 = load i32, ptr %arrayidx474, align 4, !dbg !3458, !tbaa !1859
  call void %170(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef %171, i32 noundef %172, i32 noundef %add859, i32 noundef %add893, i32 noundef %div477, i32 noundef %div478) #5, !dbg !3458
  %173 = load ptr, ptr %weight443, align 8, !dbg !3460, !tbaa !1957
  %weightfn945 = getelementptr inbounds %struct.x264_weight_t, ptr %173, i64 2, i32 5, !dbg !3460
  %174 = load ptr, ptr %weightfn945, align 16, !dbg !3460, !tbaa !3333
  %tobool946.not = icmp eq ptr %174, null, !dbg !3460
  br i1 %tobool946.not, label %if.end965, label %if.then947, !dbg !3458

if.then947:                                       ; preds = %if.then931
  %arrayidx944 = getelementptr inbounds %struct.x264_weight_t, ptr %173, i64 2, !dbg !3460
  %arrayidx956 = getelementptr inbounds ptr, ptr %174, i64 %idxprom491, !dbg !3460
  %175 = load ptr, ptr %arrayidx956, align 8, !dbg !3460, !tbaa !1889
  call void %175(ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %pix, i32 noundef 8, ptr noundef nonnull %arrayidx944, i32 noundef %shr500) #5, !dbg !3460
  br label %if.end965, !dbg !3460

if.end965:                                        ; preds = %if.then947, %if.then931
  %176 = load ptr, ptr %arrayidx506, align 8, !dbg !3458, !tbaa !1889
  %177 = load ptr, ptr %arrayidx555, align 8, !dbg !3458, !tbaa !1889
  %call974 = call i32 %176(ptr noundef %177, i32 noundef 16, ptr noundef nonnull %pix, i32 noundef 8) #5, !dbg !3458
  %add975 = add nsw i32 %call974, %add928, !dbg !3458
  call void @llvm.dbg.value(metadata i32 %add975, metadata !3199, metadata !DIExpression()), !dbg !3449
  br label %if.end977, !dbg !3458

if.end977:                                        ; preds = %if.end918, %if.end965, %if.then849
  %cost863.0 = phi i32 [ %add975, %if.end965 ], [ %add928, %if.end918 ], [ %add879, %if.then849 ], !dbg !3449
  call void @llvm.dbg.value(metadata i32 %cost863.0, metadata !3199, metadata !DIExpression()), !dbg !3449
  %cmp978 = icmp slt i32 %cost863.0, %bcost.171809, !dbg !3462
  br i1 %cmp978, label %if.then980, label %if.end982, !dbg !3429

if.then980:                                       ; preds = %if.end977
  call void @llvm.dbg.value(metadata i32 %cost863.0, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %add859, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.111828, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 3, metadata !3143, metadata !DIExpression()), !dbg !3205
  br label %if.end982, !dbg !3464

if.end982:                                        ; preds = %if.then980, %if.end977
  %bdir.7 = phi i32 [ 3, %if.then980 ], [ %bdir.61808, %if.end977 ], !dbg !3388
  %bcost.18 = phi i32 [ %cost863.0, %if.then980 ], [ %bcost.171809, %if.end977 ], !dbg !3388
  %bmy.18 = phi i32 [ %bmy.111828, %if.then980 ], [ %bmy.171810, %if.end977 ], !dbg !3388
  %bmx.16 = phi i32 [ %add859, %if.then980 ], [ %bmx.151811, %if.end977 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %bmx.16, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.18, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.18, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.7, metadata !3143, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stride850) #5, !dbg !3448
  br label %if.end983, !dbg !3429

if.end983:                                        ; preds = %if.end844, %if.end982
  %bdir.8 = phi i32 [ %bdir.7, %if.end982 ], [ %bdir.5, %if.end844 ], !dbg !3388
  %bcost.19 = phi i32 [ %bcost.18, %if.end982 ], [ %bcost.16, %if.end844 ], !dbg !3388
  %bmy.19 = phi i32 [ %bmy.18, %if.end982 ], [ %bmy.16, %if.end844 ], !dbg !3388
  %bmx.17 = phi i32 [ %bmx.16, %if.end982 ], [ %bmx.14, %if.end844 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %bmx.17, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.19, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.19, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bdir.8, metadata !3143, metadata !DIExpression()), !dbg !3205
  %cmp984 = icmp eq i32 %bmx.17, %bmx.91837, !dbg !3466
  %cmp986 = icmp eq i32 %bmy.19, %bmy.111828, !dbg !3468
  %.demorgan = and i1 %cmp986, %cmp984
  call void @llvm.dbg.value(metadata i32 %i395.01823, metadata !3172, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3371
  br i1 %.demorgan, label %if.end1185, label %for.cond396

if.else1000:                                      ; preds = %if.end389
  %178 = load i32, ptr %arrayidx403, align 4, !dbg !3469, !tbaa !1859
  %cmp1004 = icmp sgt i32 %bmy.8, %178, !dbg !3470
  br i1 %cmp1004, label %land.lhs.true1006, label %if.end1185, !dbg !3471

land.lhs.true1006:                                ; preds = %if.else1000
  %mv_max_spel1008 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !3472
  %arrayidx1009 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !3473
  %179 = load i32, ptr %arrayidx1009, align 4, !dbg !3473, !tbaa !1859
  %cmp1010 = icmp slt i32 %bmy.8, %179, !dbg !3474
  br i1 %cmp1010, label %land.lhs.true1012, label %if.end1185, !dbg !3475

land.lhs.true1012:                                ; preds = %land.lhs.true1006
  %180 = load i32, ptr %mv_min_spel402, align 8, !dbg !3476, !tbaa !1859
  %cmp1016 = icmp sgt i32 %bmx.6, %180, !dbg !3477
  br i1 %cmp1016, label %land.lhs.true1018, label %if.end1185, !dbg !3478

land.lhs.true1018:                                ; preds = %land.lhs.true1012
  %181 = load i32, ptr %mv_max_spel1008, align 16, !dbg !3479, !tbaa !1859
  %cmp1022 = icmp slt i32 %bmx.6, %181, !dbg !3480
  br i1 %cmp1022, label %if.then1024, label %if.end1185, !dbg !3481

if.then1024:                                      ; preds = %land.lhs.true1018
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %costs1025) #5, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %costs1025, metadata !3200, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 %bmx.6, metadata !3203, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3204, metadata !DIExpression()), !dbg !3484
  %mc1028 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, !dbg !3485
  %182 = load ptr, ptr %mc1028, align 8, !dbg !3486, !tbaa !3487
  %p_fref1030 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, !dbg !3488
  %i_stride1032 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, !dbg !3489
  %183 = load i32, ptr %i_stride1032, align 8, !dbg !3490, !tbaa !1859
  %sub1034 = add nsw i32 %bmy.8, -1, !dbg !3491
  %weight1035 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4, !dbg !3492
  %184 = load ptr, ptr %weight1035, align 8, !dbg !3492, !tbaa !1957
  call void %182(ptr noundef nonnull %pix, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %183, i32 noundef %bmx.6, i32 noundef %sub1034, i32 noundef %1, i32 noundef %2, ptr noundef %184) #5, !dbg !3493
  %185 = load ptr, ptr %mc1028, align 8, !dbg !3494, !tbaa !3487
  %add.ptr1040 = getelementptr inbounds i8, ptr %pix, i64 16, !dbg !3495
  %186 = load i32, ptr %i_stride1032, align 8, !dbg !3496, !tbaa !1859
  %add1045 = add nsw i32 %bmy.8, 1, !dbg !3497
  %187 = load ptr, ptr %weight1035, align 8, !dbg !3498, !tbaa !1957
  call void %185(ptr noundef nonnull %add.ptr1040, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %186, i32 noundef %bmx.6, i32 noundef %add1045, i32 noundef %1, i32 noundef %2, ptr noundef %187) #5, !dbg !3499
  %188 = load ptr, ptr %mc1028, align 8, !dbg !3500, !tbaa !3487
  %add.ptr1051 = getelementptr inbounds i8, ptr %pix, i64 32, !dbg !3501
  %189 = load i32, ptr %i_stride1032, align 8, !dbg !3502, !tbaa !1859
  %sub1056 = add nsw i32 %bmx.6, -1, !dbg !3503
  %190 = load ptr, ptr %weight1035, align 8, !dbg !3504, !tbaa !1957
  call void %188(ptr noundef nonnull %add.ptr1051, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %189, i32 noundef %sub1056, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %190) #5, !dbg !3505
  %191 = load ptr, ptr %mc1028, align 8, !dbg !3506, !tbaa !3487
  %add.ptr1062 = getelementptr inbounds i8, ptr %pix, i64 48, !dbg !3507
  %192 = load i32, ptr %i_stride1032, align 8, !dbg !3508, !tbaa !1859
  %add1067 = add nsw i32 %bmx.6, 1, !dbg !3509
  %193 = load ptr, ptr %weight1035, align 8, !dbg !3510, !tbaa !1957
  call void %191(ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %p_fref1030, i32 noundef %192, i32 noundef %add1067, i32 noundef %bmy.8, i32 noundef %1, i32 noundef %2, ptr noundef %193) #5, !dbg !3511
  %arrayidx1073 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 9, i64 %idxprom, !dbg !3512
  %194 = load ptr, ptr %arrayidx1073, align 8, !dbg !3512, !tbaa !1889
  %p_fenc1074 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, !dbg !3513
  %195 = load ptr, ptr %p_fenc1074, align 8, !dbg !3514, !tbaa !1889
  call void %194(ptr noundef %195, ptr noundef nonnull %pix, ptr noundef nonnull %add.ptr1040, ptr noundef nonnull %add.ptr1051, ptr noundef nonnull %add.ptr1062, i32 noundef 64, ptr noundef nonnull %costs1025) #5, !dbg !3512
  %196 = load i32, ptr %costs1025, align 16, !dbg !3515, !tbaa !1859
  %idxprom1085 = sext i32 %bmx.6 to i64, !dbg !3515
  %arrayidx1086 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1085, !dbg !3515
  %197 = load i16, ptr %arrayidx1086, align 2, !dbg !3515, !tbaa !1912
  %conv1087 = zext i16 %197 to i32, !dbg !3515
  %add1088 = add nsw i32 %196, %conv1087, !dbg !3515
  %idxprom1090 = sext i32 %sub1034 to i64, !dbg !3515
  %arrayidx1091 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1090, !dbg !3515
  %198 = load i16, ptr %arrayidx1091, align 2, !dbg !3515, !tbaa !1912
  %conv1092 = zext i16 %198 to i32, !dbg !3515
  %add1093 = add nsw i32 %add1088, %conv1092, !dbg !3515
  %cmp1094 = icmp slt i32 %add1093, %bcost.10, !dbg !3515
  %199 = call i32 @llvm.smin.i32(i32 %add1093, i32 %bcost.10), !dbg !3517
  %spec.select1770 = select i1 %cmp1094, i32 %sub1034, i32 %bmy.8, !dbg !3517
  call void @llvm.dbg.value(metadata i32 %spec.select1770, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %199, metadata !3141, metadata !DIExpression()), !dbg !3205
  %arrayidx1109 = getelementptr inbounds [4 x i32], ptr %costs1025, i64 0, i64 1, !dbg !3518
  %200 = load i32, ptr %arrayidx1109, align 4, !dbg !3518, !tbaa !1859
  %add1113 = add nsw i32 %200, %conv1087, !dbg !3518
  %idxprom1115 = sext i32 %add1045 to i64, !dbg !3518
  %arrayidx1116 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1115, !dbg !3518
  %201 = load i16, ptr %arrayidx1116, align 2, !dbg !3518, !tbaa !1912
  %conv1117 = zext i16 %201 to i32, !dbg !3518
  %add1118 = add nsw i32 %add1113, %conv1117, !dbg !3518
  %cmp1119 = icmp slt i32 %add1118, %199, !dbg !3518
  %202 = call i32 @llvm.smin.i32(i32 %add1118, i32 %199), !dbg !3520
  %spec.select1774 = select i1 %cmp1119, i32 %add1045, i32 %spec.select1770, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %spec.select1774, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %202, metadata !3141, metadata !DIExpression()), !dbg !3205
  %arrayidx1134 = getelementptr inbounds [4 x i32], ptr %costs1025, i64 0, i64 2, !dbg !3521
  %203 = load i32, ptr %arrayidx1134, align 8, !dbg !3521, !tbaa !1859
  %idxprom1136 = sext i32 %sub1056 to i64, !dbg !3521
  %arrayidx1137 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1136, !dbg !3521
  %204 = load i16, ptr %arrayidx1137, align 2, !dbg !3521, !tbaa !1912
  %conv1138 = zext i16 %204 to i32, !dbg !3521
  %add1139 = add nsw i32 %203, %conv1138, !dbg !3521
  %idxprom1140 = sext i32 %bmy.8 to i64, !dbg !3521
  %arrayidx1141 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1140, !dbg !3521
  %205 = load i16, ptr %arrayidx1141, align 2, !dbg !3521, !tbaa !1912
  %conv1142 = zext i16 %205 to i32, !dbg !3521
  %add1143 = add nsw i32 %add1139, %conv1142, !dbg !3521
  %cmp1144 = icmp slt i32 %add1143, %202, !dbg !3521
  br i1 %cmp1144, label %if.then1146, label %if.end1158, !dbg !3523

if.then1146:                                      ; preds = %if.then1024
  call void @llvm.dbg.value(metadata i32 %add1143, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %sub1056, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  br label %if.end1158, !dbg !3524

if.end1158:                                       ; preds = %if.then1146, %if.then1024
  %bcost.23 = phi i32 [ %add1143, %if.then1146 ], [ %202, %if.then1024 ], !dbg !3484
  %bmy.23 = phi i32 [ %bmy.8, %if.then1146 ], [ %spec.select1774, %if.then1024 ], !dbg !3484
  %bmx.19 = phi i32 [ %sub1056, %if.then1146 ], [ %bmx.6, %if.then1024 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.19, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.23, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.23, metadata !3141, metadata !DIExpression()), !dbg !3205
  %arrayidx1159 = getelementptr inbounds [4 x i32], ptr %costs1025, i64 0, i64 3, !dbg !3526
  %206 = load i32, ptr %arrayidx1159, align 4, !dbg !3526, !tbaa !1859
  %idxprom1161 = sext i32 %add1067 to i64, !dbg !3526
  %arrayidx1162 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1161, !dbg !3526
  %207 = load i16, ptr %arrayidx1162, align 2, !dbg !3526, !tbaa !1912
  %conv1163 = zext i16 %207 to i32, !dbg !3526
  %add1164 = add i32 %206, %conv1142, !dbg !3526
  %add1168 = add i32 %add1164, %conv1163, !dbg !3526
  %cmp1169 = icmp slt i32 %add1168, %bcost.23, !dbg !3526
  br i1 %cmp1169, label %if.then1171, label %if.end1183, !dbg !3528

if.then1171:                                      ; preds = %if.end1158
  call void @llvm.dbg.value(metadata i32 %add1168, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %add1067, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.8, metadata !3140, metadata !DIExpression()), !dbg !3205
  br label %if.end1183, !dbg !3529

if.end1183:                                       ; preds = %if.then1171, %if.end1158
  %bcost.24 = phi i32 [ %add1168, %if.then1171 ], [ %bcost.23, %if.end1158 ], !dbg !3484
  %bmy.24 = phi i32 [ %bmy.8, %if.then1171 ], [ %bmy.23, %if.end1158 ], !dbg !3484
  %bmx.20 = phi i32 [ %add1067, %if.then1171 ], [ %bmx.19, %if.end1158 ], !dbg !3484
  call void @llvm.dbg.value(metadata i32 %bmx.20, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.24, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.24, metadata !3141, metadata !DIExpression()), !dbg !3205
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %costs1025) #5, !dbg !3531
  br label %if.end1185, !dbg !3532

if.end1185:                                       ; preds = %for.body400, %lor.lhs.false406, %lor.lhs.false412, %lor.lhs.false418, %for.cond396, %if.end983, %for.cond396.preheader, %if.else1000, %land.lhs.true1006, %land.lhs.true1012, %land.lhs.true1018, %if.end1183
  %bcost.25 = phi i32 [ %bcost.24, %if.end1183 ], [ %bcost.10, %land.lhs.true1018 ], [ %bcost.10, %land.lhs.true1012 ], [ %bcost.10, %land.lhs.true1006 ], [ %bcost.10, %if.else1000 ], [ %bcost.10, %for.cond396.preheader ], [ %bcost.111827, %for.body400 ], [ %bcost.111827, %lor.lhs.false406 ], [ %bcost.111827, %lor.lhs.false412 ], [ %bcost.111827, %lor.lhs.false418 ], [ %bcost.19, %for.cond396 ], [ %bcost.19, %if.end983 ], !dbg !3205
  %bmy.25 = phi i32 [ %bmy.24, %if.end1183 ], [ %bmy.8, %land.lhs.true1018 ], [ %bmy.8, %land.lhs.true1012 ], [ %bmy.8, %land.lhs.true1006 ], [ %bmy.8, %if.else1000 ], [ %bmy.8, %for.cond396.preheader ], [ %bmy.111828, %for.body400 ], [ %bmy.111828, %lor.lhs.false406 ], [ %bmy.111828, %lor.lhs.false412 ], [ %bmy.111828, %lor.lhs.false418 ], [ %bmy.19, %for.cond396 ], [ %bmy.111828, %if.end983 ], !dbg !3205
  %bmx.21 = phi i32 [ %bmx.20, %if.end1183 ], [ %bmx.6, %land.lhs.true1018 ], [ %bmx.6, %land.lhs.true1012 ], [ %bmx.6, %land.lhs.true1006 ], [ %bmx.6, %if.else1000 ], [ %bmx.6, %for.cond396.preheader ], [ %bmx.91837, %for.body400 ], [ %bmx.91837, %lor.lhs.false406 ], [ %bmx.91837, %lor.lhs.false412 ], [ %bmx.91837, %lor.lhs.false418 ], [ %bmx.17, %for.cond396 ], [ %bmx.91837, %if.end983 ], !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmx.21, metadata !3139, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bmy.25, metadata !3140, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %bcost.25, metadata !3141, metadata !DIExpression()), !dbg !3205
  store i32 %bcost.25, ptr %cost, align 8, !dbg !3533, !tbaa !3108
  %conv1187 = trunc i32 %bmx.21 to i16, !dbg !3534
  store i16 %conv1187, ptr %mv, align 4, !dbg !3535, !tbaa !1912
  %conv1190 = trunc i32 %bmy.25 to i16, !dbg !3536
  store i16 %conv1190, ptr %arrayidx24, align 2, !dbg !3537, !tbaa !1912
  %idxprom1193 = sext i32 %bmx.21 to i64, !dbg !3538
  %arrayidx1194 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1193, !dbg !3538
  %208 = load i16, ptr %arrayidx1194, align 2, !dbg !3538, !tbaa !1912
  %conv1195 = zext i16 %208 to i32, !dbg !3538
  %idxprom1196 = sext i32 %bmy.25 to i64, !dbg !3539
  %arrayidx1197 = getelementptr inbounds i16, ptr %add.ptr12, i64 %idxprom1196, !dbg !3539
  %209 = load i16, ptr %arrayidx1197, align 2, !dbg !3539, !tbaa !1912
  %conv1198 = zext i16 %209 to i32, !dbg !3539
  %add1199 = add nuw nsw i32 %conv1198, %conv1195, !dbg !3540
  %cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 11, !dbg !3541
  store i32 %add1199, ptr %cost_mv, align 4, !dbg !3542, !tbaa !3101
  br label %cleanup1200, !dbg !3543

cleanup1200:                                      ; preds = %if.end1185, %if.then376
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pix) #5, !dbg !3543
  ret void, !dbg !3543
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel(ptr noundef %h, ptr noundef %m) local_unnamed_addr #0 !dbg !3544 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3548, metadata !DIExpression()), !dbg !3552
  call void @llvm.dbg.value(metadata ptr %m, metadata !3549, metadata !DIExpression()), !dbg !3552
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !3553
  %0 = load i32, ptr %i_subpel_refine, align 8, !dbg !3553, !tbaa !1938
  %idxprom = sext i32 %0 to i64, !dbg !3554
  %arrayidx = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, !dbg !3554
  %1 = load i8, ptr %arrayidx, align 4, !dbg !3554, !tbaa !1975
  call void @llvm.dbg.value(metadata i8 %1, metadata !3550, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3552
  %arrayidx6 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, i64 1, !dbg !3555
  %2 = load i8, ptr %arrayidx6, align 1, !dbg !3555, !tbaa !1975
  call void @llvm.dbg.value(metadata i8 %2, metadata !3551, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3552
  %3 = load i32, ptr %m, align 16, !dbg !3556, !tbaa !1845
  %cmp = icmp slt i32 %3, 4, !dbg !3558
  br i1 %cmp, label %if.then, label %if.end, !dbg !3559

if.then:                                          ; preds = %entry
  %i_ref_cost = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 2, !dbg !3560
  %4 = load i32, ptr %i_ref_cost, align 16, !dbg !3560, !tbaa !3561
  %cost = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 12, !dbg !3562
  %5 = load i32, ptr %cost, align 8, !dbg !3563, !tbaa !3108
  %sub = sub nsw i32 %5, %4, !dbg !3563
  store i32 %sub, ptr %cost, align 8, !dbg !3563, !tbaa !3108
  br label %if.end, !dbg !3564

if.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i8 %2 to i32, !dbg !3555
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !3551, metadata !DIExpression()), !dbg !3552
  %conv = zext i8 %1 to i32, !dbg !3554
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3550, metadata !DIExpression()), !dbg !3552
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef nonnull %m, i32 noundef %conv, i32 noundef %conv7, ptr noundef null, i32 noundef 1), !dbg !3565
  ret void, !dbg !3566
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_refdupe(ptr noundef %h, ptr noundef %m, ptr noundef %p_halfpel_thresh) local_unnamed_addr #0 !dbg !3567 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3571, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %m, metadata !3572, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata ptr %p_halfpel_thresh, metadata !3573, metadata !DIExpression()), !dbg !3574
  %i_subpel_refine = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !3575
  %0 = load i32, ptr %i_subpel_refine, align 8, !dbg !3575, !tbaa !1938
  %idxprom = sext i32 %0 to i64, !dbg !3575
  %1 = add nsw i64 %idxprom, -8, !dbg !3575
  %cmp = icmp ult i64 %1, 3, !dbg !3575
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !3575

cond.false:                                       ; preds = %entry
  %arrayidx1 = getelementptr inbounds [11 x [4 x i8]], ptr @subpel_iterations, i64 0, i64 %idxprom, i64 3, !dbg !3575
  %2 = load i8, ptr %arrayidx1, align 1, !dbg !3575, !tbaa !1975
  %conv = zext i8 %2 to i32, !dbg !3575
  br label %cond.end, !dbg !3575

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %conv, %cond.false ], [ 2, %entry ], !dbg !3575
  tail call fastcc void @refine_subpel(ptr noundef nonnull %h, ptr noundef %m, i32 noundef 0, i32 noundef %cond, ptr noundef %p_halfpel_thresh, i32 noundef 0), !dbg !3576
  ret void, !dbg !3577
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_satd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight) local_unnamed_addr #0 !dbg !3578 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3582, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %m0, metadata !3583, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata ptr %m1, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i32 %i_weight, metadata !3585, metadata !DIExpression()), !dbg !3586
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef 0, i32 noundef 0, i32 noundef 0), !dbg !3587
  ret void, !dbg !3588
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef %rd) unnamed_addr #3 !dbg !1721 {
entry:
  %pixy_buf = alloca [2 x [9 x [256 x i8]]], align 16
  %pixu_buf = alloca [2 x [9 x [64 x i8]]], align 8
  %pixv_buf = alloca [2 x [9 x [64 x i8]]], align 8
  %src = alloca [2 x [9 x ptr]], align 16
  %stride = alloca [2 x [9 x i32]], align 16
  %visited = alloca [8 x [8 x [8 x i8]]], align 16
  call void @llvm.dbg.value(metadata ptr %h, metadata !1725, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata ptr %m0, metadata !1726, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata ptr %m1, metadata !1727, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %i_weight, metadata !1728, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %i8, metadata !1729, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %i_lambda2, metadata !1730, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %rd, metadata !1731, metadata !DIExpression()), !dbg !3589
  %mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !3590
  %mul = shl nsw i32 %i8, 2, !dbg !3591
  %idxprom = sext i32 %mul to i64, !dbg !3592
  %arrayidx1 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !3592
  %0 = load i32, ptr %arrayidx1, align 16, !dbg !3592, !tbaa !1859
  %idxprom2 = sext i32 %0 to i64, !dbg !3593
  %arrayidx3 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom2, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !1732, metadata !DIExpression()), !dbg !3589
  %arrayidx12 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom2, !dbg !3594
  call void @llvm.dbg.value(metadata ptr %arrayidx12, metadata !1733, metadata !DIExpression()), !dbg !3589
  %1 = load i32, ptr %m0, align 16, !dbg !3595, !tbaa !1845
  call void @llvm.dbg.value(metadata i32 %1, metadata !1734, metadata !DIExpression()), !dbg !3589
  %idxprom15 = sext i32 %1 to i64, !dbg !3596
  %arrayidx16 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom15, !dbg !3596
  %2 = load i32, ptr %arrayidx16, align 8, !dbg !3597, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %2, metadata !1735, metadata !DIExpression()), !dbg !3589
  %h19 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom15, i32 1, !dbg !3598
  %3 = load i32, ptr %h19, align 4, !dbg !3598, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %3, metadata !1736, metadata !DIExpression()), !dbg !3589
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %pixy_buf) #5, !dbg !3599
  call void @llvm.dbg.declare(metadata ptr %pixy_buf, metadata !1737, metadata !DIExpression()), !dbg !3599
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixu_buf) #5, !dbg !3600
  call void @llvm.dbg.declare(metadata ptr %pixu_buf, metadata !1740, metadata !DIExpression()), !dbg !3600
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %pixv_buf) #5, !dbg !3601
  call void @llvm.dbg.declare(metadata ptr %pixv_buf, metadata !1743, metadata !DIExpression()), !dbg !3601
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %src) #5, !dbg !3602
  call void @llvm.dbg.declare(metadata ptr %src, metadata !1744, metadata !DIExpression()), !dbg !3603
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !3604
  %4 = load ptr, ptr %p_fdec, align 16, !dbg !3605, !tbaa !1889
  %shr = ashr i32 %i8, 1, !dbg !3606
  %mul23 = shl nsw i32 %shr, 8, !dbg !3607
  %and = and i32 %i8, 1, !dbg !3608
  %mul24 = shl nuw nsw i32 %and, 3, !dbg !3609
  %add = or i32 %mul23, %mul24, !dbg !3610
  %idxprom25 = sext i32 %add to i64, !dbg !3605
  %arrayidx26 = getelementptr inbounds i8, ptr %4, i64 %idxprom25, !dbg !3605
  call void @llvm.dbg.value(metadata ptr %arrayidx26, metadata !1747, metadata !DIExpression()), !dbg !3589
  %arrayidx30 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !3611
  %5 = load ptr, ptr %arrayidx30, align 8, !dbg !3611, !tbaa !1889
  %mul33 = shl nsw i32 %shr, 7, !dbg !3612
  %mul35 = shl nuw nsw i32 %and, 2, !dbg !3613
  %add36 = or i32 %mul33, %mul35, !dbg !3614
  %idxprom37 = sext i32 %add36 to i64, !dbg !3611
  %arrayidx38 = getelementptr inbounds i8, ptr %5, i64 %idxprom37, !dbg !3611
  call void @llvm.dbg.value(metadata ptr %arrayidx38, metadata !1748, metadata !DIExpression()), !dbg !3589
  %arrayidx42 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !3615
  %6 = load ptr, ptr %arrayidx42, align 16, !dbg !3615, !tbaa !1889
  %arrayidx50 = getelementptr inbounds i8, ptr %6, i64 %idxprom37, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %arrayidx50, metadata !1749, metadata !DIExpression()), !dbg !3589
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !3616
  %arrayidx58 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom2, !dbg !3617
  %7 = load i8, ptr %arrayidx58, align 1, !dbg !3617, !tbaa !1975
  %conv = sext i8 %7 to i32, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1750, metadata !DIExpression()), !dbg !3589
  %arrayidx67 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %idxprom2, !dbg !3618
  %8 = load i8, ptr %arrayidx67, align 1, !dbg !3618, !tbaa !1975
  %conv68 = sext i8 %8 to i32, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %conv68, metadata !1751, metadata !DIExpression()), !dbg !3589
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3619
  %9 = load i32, ptr %b_interlaced, align 4, !dbg !3619, !tbaa !3221
  %and70 = and i32 %9, %conv, !dbg !3620
  %tobool.not = icmp eq i32 %and70, 0, !dbg !3620
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !3621

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !3622
  %10 = load i32, ptr %i_mb_y, align 4, !dbg !3622, !tbaa !3227
  %and72 = shl i32 %10, 2, !dbg !3623
  %mul73 = and i32 %and72, 4, !dbg !3623
  %sub = add nsw i32 %mul73, -2, !dbg !3624
  br label %cond.end, !dbg !3621

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !3621
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1752, metadata !DIExpression()), !dbg !3589
  %and76 = and i32 %9, %conv68, !dbg !3625
  %tobool77.not = icmp eq i32 %and76, 0, !dbg !3625
  br i1 %tobool77.not, label %cond.end85, label %cond.true78, !dbg !3626

cond.true78:                                      ; preds = %cond.end
  %i_mb_y80 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !3627
  %11 = load i32, ptr %i_mb_y80, align 4, !dbg !3627, !tbaa !3227
  %and81 = shl i32 %11, 2, !dbg !3628
  %mul82 = and i32 %and81, 4, !dbg !3628
  %sub83 = add nsw i32 %mul82, -2, !dbg !3629
  br label %cond.end85, !dbg !3626

cond.end85:                                       ; preds = %cond.end, %cond.true78
  %cond86 = phi i32 [ %sub83, %cond.true78 ], [ 0, %cond.end ], !dbg !3626
  call void @llvm.dbg.value(metadata i32 %cond86, metadata !1753, metadata !DIExpression()), !dbg !3589
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %stride) #5, !dbg !3630
  call void @llvm.dbg.declare(metadata ptr %stride, metadata !1754, metadata !DIExpression()), !dbg !3631
  %mv87 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 13, !dbg !3632
  %12 = load i16, ptr %mv87, align 4, !dbg !3633, !tbaa !1912
  %conv89 = sext i16 %12 to i32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 %conv89, metadata !1756, metadata !DIExpression()), !dbg !3589
  %arrayidx91 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 13, i64 1, !dbg !3634
  %13 = load i16, ptr %arrayidx91, align 2, !dbg !3634, !tbaa !1912
  %conv92 = sext i16 %13 to i32, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %conv92, metadata !1757, metadata !DIExpression()), !dbg !3589
  %mv93 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 13, !dbg !3635
  %14 = load i16, ptr %mv93, align 4, !dbg !3636, !tbaa !1912
  %conv95 = sext i16 %14 to i32, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %conv95, metadata !1758, metadata !DIExpression()), !dbg !3589
  %arrayidx97 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 13, i64 1, !dbg !3637
  %15 = load i16, ptr %arrayidx97, align 2, !dbg !3637, !tbaa !1912
  %conv98 = sext i16 %15 to i32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 %conv98, metadata !1759, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 268435456, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 1, metadata !1761, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 1152921504606846976, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %visited) #5, !dbg !3638
  call void @llvm.dbg.declare(metadata ptr %visited, metadata !1765, metadata !DIExpression()), !dbg !3638
  %mv_min_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, !dbg !3639
  %arrayidx100 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, i64 1, !dbg !3641
  %16 = load i32, ptr %arrayidx100, align 4, !dbg !3641, !tbaa !1859
  %add101 = add nsw i32 %16, 8, !dbg !3642
  %cmp = icmp sgt i32 %add101, %conv92, !dbg !3643
  %cmp107 = icmp sgt i32 %add101, %conv98
  %or.cond937 = select i1 %cmp, i1 true, i1 %cmp107, !dbg !3644
  br i1 %or.cond937, label %cleanup667, label %lor.lhs.false109, !dbg !3644

lor.lhs.false109:                                 ; preds = %cond.end85
  %mv_max_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !3645
  %arrayidx111 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !3646
  %17 = load i32, ptr %arrayidx111, align 4, !dbg !3646, !tbaa !1859
  %sub112 = add nsw i32 %17, -8, !dbg !3647
  %cmp113 = icmp slt i32 %sub112, %conv92, !dbg !3648
  %cmp120 = icmp slt i32 %sub112, %conv98
  %or.cond938 = select i1 %cmp113, i1 true, i1 %cmp120, !dbg !3649
  br i1 %or.cond938, label %cleanup667, label %lor.lhs.false122, !dbg !3649

lor.lhs.false122:                                 ; preds = %lor.lhs.false109
  %18 = load i32, ptr %mv_min_spel, align 8, !dbg !3650, !tbaa !1859
  %add126 = add nsw i32 %18, 8, !dbg !3651
  %cmp127 = icmp sgt i32 %add126, %conv89, !dbg !3652
  %cmp134 = icmp sgt i32 %add126, %conv95
  %or.cond939 = select i1 %cmp127, i1 true, i1 %cmp134, !dbg !3653
  br i1 %or.cond939, label %cleanup667, label %lor.lhs.false136, !dbg !3653

lor.lhs.false136:                                 ; preds = %lor.lhs.false122
  %19 = load i32, ptr %mv_max_spel, align 16, !dbg !3654, !tbaa !1859
  %sub140 = add nsw i32 %19, -8, !dbg !3655
  %cmp141 = icmp slt i32 %sub140, %conv89, !dbg !3656
  %cmp148 = icmp slt i32 %sub140, %conv95
  %or.cond940 = select i1 %cmp141, i1 true, i1 %cmp148, !dbg !3657
  br i1 %or.cond940, label %cleanup667, label %if.end, !dbg !3657

if.end:                                           ; preds = %lor.lhs.false136
  %tobool150.not = icmp eq i32 %rd, 0, !dbg !3658
  br i1 %tobool150.not, label %if.end164, label %land.lhs.true, !dbg !3660

land.lhs.true:                                    ; preds = %if.end
  %cmp152 = icmp ne i32 %1, 0, !dbg !3661
  %cmp155 = icmp ne i32 %i8, 0
  %or.cond = and i1 %cmp155, %cmp152, !dbg !3662
  br i1 %or.cond, label %if.then157, label %if.end164, !dbg !3662

if.then157:                                       ; preds = %land.lhs.true
  %shr158 = ashr i32 %2, 2, !dbg !3663
  %mvp = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 10, !dbg !3665
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp) #5, !dbg !3666
  %mvp162 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 10, !dbg !3667
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef 1, i32 noundef %mul, i32 noundef %shr158, ptr noundef nonnull %mvp162) #5, !dbg !3668
  br label %if.end164, !dbg !3669

if.end164:                                        ; preds = %if.then157, %land.lhs.true, %if.end
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 1, !dbg !3670
  %20 = load ptr, ptr %p_cost_mv, align 8, !dbg !3670, !tbaa !1909
  %mvp165 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 10, !dbg !3671
  %21 = load i16, ptr %mvp165, align 16, !dbg !3672, !tbaa !1912
  %idx.ext = sext i16 %21 to i64, !dbg !3673
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !3673
  %add.ptr = getelementptr inbounds i16, ptr %20, i64 %idx.neg, !dbg !3673
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1768, metadata !DIExpression()), !dbg !3589
  %arrayidx170 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 10, i64 1, !dbg !3674
  %22 = load i16, ptr %arrayidx170, align 2, !dbg !3674, !tbaa !1912
  %idx.ext172 = sext i16 %22 to i64, !dbg !3675
  %idx.neg173 = sub nsw i64 0, %idx.ext172, !dbg !3675
  %add.ptr174 = getelementptr inbounds i16, ptr %20, i64 %idx.neg173, !dbg !3675
  call void @llvm.dbg.value(metadata ptr %add.ptr174, metadata !1769, metadata !DIExpression()), !dbg !3589
  %p_cost_mv175 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 1, !dbg !3676
  %23 = load ptr, ptr %p_cost_mv175, align 8, !dbg !3676, !tbaa !1909
  %mvp176 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 10, !dbg !3677
  %24 = load i16, ptr %mvp176, align 16, !dbg !3678, !tbaa !1912
  %idx.ext179 = sext i16 %24 to i64, !dbg !3679
  %idx.neg180 = sub nsw i64 0, %idx.ext179, !dbg !3679
  %add.ptr181 = getelementptr inbounds i16, ptr %23, i64 %idx.neg180, !dbg !3679
  call void @llvm.dbg.value(metadata ptr %add.ptr181, metadata !1770, metadata !DIExpression()), !dbg !3589
  %arrayidx184 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 10, i64 1, !dbg !3680
  %25 = load i16, ptr %arrayidx184, align 2, !dbg !3680, !tbaa !1912
  %idx.ext186 = sext i16 %25 to i64, !dbg !3681
  %idx.neg187 = sub nsw i64 0, %idx.ext186, !dbg !3681
  %add.ptr188 = getelementptr inbounds i16, ptr %23, i64 %idx.neg187, !dbg !3681
  call void @llvm.dbg.value(metadata ptr %add.ptr188, metadata !1771, metadata !DIExpression()), !dbg !3589
  %memzero_aligned = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 11, !dbg !3682
  %26 = load ptr, ptr %memzero_aligned, align 8, !dbg !3682, !tbaa !3683
  call void %26(ptr noundef nonnull %visited, i32 noundef 512) #5, !dbg !3684
  call void @llvm.dbg.value(metadata i32 0, metadata !1772, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 %conv89, metadata !1756, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %conv92, metadata !1757, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %conv95, metadata !1758, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %conv98, metadata !1759, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 268435456, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 1, metadata !1761, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 1, metadata !1762, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 1152921504606846976, metadata !1763, metadata !DIExpression()), !dbg !3589
  %get_ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1
  %p_fref = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 5
  %i_stride = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 9
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2
  %arrayidx244 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 5, i64 4
  %arrayidx246 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 9, i64 1
  %shr248 = ashr i32 %2, 1
  %shr249 = ashr i32 %3, 1
  %arrayidx257 = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 5, i64 5
  %p_fref310 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 5
  %i_stride312 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 9
  %arrayidx327 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 5, i64 4
  %arrayidx329 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 9, i64 1
  %arrayidx340 = getelementptr inbounds %struct.x264_me_t, ptr %m1, i64 0, i32 5, i64 5
  %arrayidx433 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 3, i64 %idxprom15
  %arrayidx447 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 5, i64 %idxprom15
  %p_fenc = getelementptr inbounds %struct.x264_me_t, ptr %m0, i64 0, i32 7
  %add482 = add nsw i32 %1, 3
  %idxprom483 = sext i32 %add482 to i64
  %arrayidx484 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 3, i64 %idxprom483
  br label %for.body, !dbg !3686

for.body:                                         ; preds = %if.end164, %for.inc554
  %bm0x.01094 = phi i32 [ %conv89, %if.end164 ], [ %add530, %for.inc554 ]
  %bm0y.01093 = phi i32 [ %conv92, %if.end164 ], [ %add535, %for.inc554 ]
  %bm1x.01092 = phi i32 [ %conv95, %if.end164 ], [ %add540, %for.inc554 ]
  %bm1y.01091 = phi i32 [ %conv98, %if.end164 ], [ %add545, %for.inc554 ]
  %bcost.01090 = phi i32 [ 268435456, %if.end164 ], [ %bcost.3, %for.inc554 ]
  %mc_list0.01089 = phi i32 [ 1, %if.end164 ], [ %conv549, %for.inc554 ]
  %mc_list1.01088 = phi i32 [ 1, %if.end164 ], [ %conv553, %for.inc554 ]
  %bcostrd.01087 = phi i64 [ 1152921504606846976, %if.end164 ], [ %bcostrd.4, %for.inc554 ]
  %pass.01086 = phi i32 [ 0, %if.end164 ], [ %inc555, %for.inc554 ]
  call void @llvm.dbg.value(metadata i32 %bm0x.01094, metadata !1756, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm0y.01093, metadata !1757, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm1x.01092, metadata !1758, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm1y.01091, metadata !1759, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bcost.01090, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %mc_list0.01089, metadata !1761, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %mc_list1.01088, metadata !1762, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %bcostrd.01087, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %pass.01086, metadata !1772, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()), !dbg !3687
  %tobool192.not = icmp ne i32 %mc_list0.01089, 0, !dbg !3688
  %27 = load i32, ptr @x264_iter_kludge, align 4
  %cmp1951077 = icmp slt i32 %27, 9
  %or.cond1095 = select i1 %tobool192.not, i1 %cmp1951077, i1 false, !dbg !3689
  call void @llvm.dbg.value(metadata i32 %27, metadata !1777, metadata !DIExpression()), !dbg !3690
  br i1 %or.cond1095, label %for.body198.preheader, label %if.end264, !dbg !3689

for.body198.preheader:                            ; preds = %for.body
  %28 = sext i32 %27 to i64, !dbg !3691
  br label %for.body198, !dbg !3691

for.body198:                                      ; preds = %for.body198.preheader, %if.end263
  %indvars.iv = phi i64 [ %28, %for.body198.preheader ], [ %indvars.iv.next, %if.end263 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1777, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata ptr %m0, metadata !1780, metadata !DIExpression()), !dbg !3692
  %arrayidx200 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv, !dbg !3693
  %29 = load i8, ptr %arrayidx200, align 2, !dbg !3693, !tbaa !1975
  %conv202 = sext i8 %29 to i32, !dbg !3693
  %mul203 = mul nsw i32 %conv202, 3, !dbg !3693
  %add204 = add nsw i32 %mul203, 4, !dbg !3693
  %arrayidx207 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv, i64 1, !dbg !3693
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !3693, !tbaa !1975
  %conv208 = sext i8 %30 to i32, !dbg !3693
  %add209 = add nsw i32 %add204, %conv208, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %add209, metadata !1783, metadata !DIExpression()), !dbg !3692
  %add214 = add nsw i32 %bm0x.01094, %conv202, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %add214, metadata !1784, metadata !DIExpression()), !dbg !3692
  %add219 = add nsw i32 %bm0y.01093, %conv208, !dbg !3693
  call void @llvm.dbg.value(metadata i32 %add219, metadata !1785, metadata !DIExpression()), !dbg !3692
  %idxprom221 = sext i32 %add209 to i64, !dbg !3693
  %arrayidx222 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %idxprom221, !dbg !3693
  store i32 %2, ptr %arrayidx222, align 4, !dbg !3693, !tbaa !1859
  %31 = load ptr, ptr %get_ref, align 8, !dbg !3693, !tbaa !1956
  %arrayidx226 = getelementptr inbounds [9 x [256 x i8]], ptr %pixy_buf, i64 0, i64 %idxprom221, !dbg !3693
  %32 = load i32, ptr %i_stride, align 8, !dbg !3693, !tbaa !1859
  %call = call ptr %31(ptr noundef nonnull %arrayidx226, ptr noundef nonnull %arrayidx222, ptr noundef nonnull %p_fref, i32 noundef %32, i32 noundef %add214, i32 noundef %add219, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #5, !dbg !3693
  %arrayidx235 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %idxprom221, !dbg !3693
  store ptr %call, ptr %arrayidx235, align 8, !dbg !3693, !tbaa !1889
  br i1 %tobool150.not, label %if.end263, label %if.then237, !dbg !3693

if.then237:                                       ; preds = %for.body198
  %33 = load ptr, ptr %mc_chroma, align 8, !dbg !3694, !tbaa !3330
  %arrayidx241 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %idxprom221, !dbg !3694
  %34 = load ptr, ptr %arrayidx244, align 16, !dbg !3694, !tbaa !1889
  %35 = load i32, ptr %arrayidx246, align 4, !dbg !3694, !tbaa !1859
  %add247 = add nsw i32 %add219, %cond, !dbg !3694
  call void %33(ptr noundef nonnull %arrayidx241, i32 noundef 8, ptr noundef %34, i32 noundef %35, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #5, !dbg !3694
  %36 = load ptr, ptr %mc_chroma, align 8, !dbg !3694, !tbaa !3330
  %arrayidx254 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %idxprom221, !dbg !3694
  %37 = load ptr, ptr %arrayidx257, align 8, !dbg !3694, !tbaa !1889
  %38 = load i32, ptr %arrayidx246, align 4, !dbg !3694, !tbaa !1859
  call void %36(ptr noundef nonnull %arrayidx254, i32 noundef 8, ptr noundef %37, i32 noundef %38, i32 noundef %add214, i32 noundef %add247, i32 noundef %shr248, i32 noundef %shr249) #5, !dbg !3694
  br label %if.end263, !dbg !3694

if.end263:                                        ; preds = %if.then237, %for.body198
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !3697
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1777, metadata !DIExpression()), !dbg !3690
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !3698
  %exitcond.not = icmp eq i32 %lftr.wideiv, 9, !dbg !3698
  br i1 %exitcond.not, label %if.end264.loopexit, label %for.body198, !dbg !3691, !llvm.loop !3699

if.end264.loopexit:                               ; preds = %if.end263
  %.pre = load i32, ptr @x264_iter_kludge, align 4
  br label %if.end264, !dbg !3701

if.end264:                                        ; preds = %if.end264.loopexit, %for.body
  %39 = phi i32 [ %.pre, %if.end264.loopexit ], [ %27, %for.body ]
  %tobool265.not = icmp ne i32 %mc_list1.01088, 0, !dbg !3701
  %cmp2691079 = icmp slt i32 %39, 9
  %or.cond1096 = select i1 %tobool265.not, i1 %cmp2691079, i1 false, !dbg !3702
  call void @llvm.dbg.value(metadata i32 %39, metadata !1786, metadata !DIExpression()), !dbg !3703
  br i1 %or.cond1096, label %for.body272.preheader, label %if.end350, !dbg !3702

for.body272.preheader:                            ; preds = %if.end264
  %40 = sext i32 %39 to i64, !dbg !3704
  br label %for.body272, !dbg !3704

for.body272:                                      ; preds = %for.body272.preheader, %if.end346
  %indvars.iv1098 = phi i64 [ %40, %for.body272.preheader ], [ %indvars.iv.next1099, %if.end346 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1098, metadata !1786, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %m1, metadata !1789, metadata !DIExpression()), !dbg !3705
  %arrayidx276 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv1098, !dbg !3706
  %41 = load i8, ptr %arrayidx276, align 2, !dbg !3706, !tbaa !1975
  %conv278 = sext i8 %41 to i32, !dbg !3706
  %mul279 = mul nsw i32 %conv278, 3, !dbg !3706
  %add280 = add nsw i32 %mul279, 4, !dbg !3706
  %arrayidx283 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv1098, i64 1, !dbg !3706
  %42 = load i8, ptr %arrayidx283, align 1, !dbg !3706, !tbaa !1975
  %conv284 = sext i8 %42 to i32, !dbg !3706
  %add285 = add nsw i32 %add280, %conv284, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %add285, metadata !1792, metadata !DIExpression()), !dbg !3705
  %add291 = add nsw i32 %bm1x.01092, %conv278, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %add291, metadata !1793, metadata !DIExpression()), !dbg !3705
  %add297 = add nsw i32 %bm1y.01091, %conv284, !dbg !3706
  call void @llvm.dbg.value(metadata i32 %add297, metadata !1794, metadata !DIExpression()), !dbg !3705
  %idxprom299 = sext i32 %add285 to i64, !dbg !3706
  %arrayidx300 = getelementptr inbounds [2 x [9 x i32]], ptr %stride, i64 0, i64 1, i64 %idxprom299, !dbg !3706
  store i32 %2, ptr %arrayidx300, align 4, !dbg !3706, !tbaa !1859
  %43 = load ptr, ptr %get_ref, align 8, !dbg !3706, !tbaa !1956
  %arrayidx305 = getelementptr inbounds [2 x [9 x [256 x i8]]], ptr %pixy_buf, i64 0, i64 1, i64 %idxprom299, !dbg !3706
  %44 = load i32, ptr %i_stride312, align 8, !dbg !3706, !tbaa !1859
  %call314 = call ptr %43(ptr noundef nonnull %arrayidx305, ptr noundef nonnull %arrayidx300, ptr noundef nonnull %p_fref310, i32 noundef %44, i32 noundef %add291, i32 noundef %add297, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @weight_none) #5, !dbg !3706
  %arrayidx317 = getelementptr inbounds [2 x [9 x ptr]], ptr %src, i64 0, i64 1, i64 %idxprom299, !dbg !3706
  store ptr %call314, ptr %arrayidx317, align 8, !dbg !3706, !tbaa !1889
  br i1 %tobool150.not, label %if.end346, label %if.then319, !dbg !3706

if.then319:                                       ; preds = %for.body272
  %45 = load ptr, ptr %mc_chroma, align 8, !dbg !3707, !tbaa !3330
  %arrayidx324 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %pixu_buf, i64 0, i64 1, i64 %idxprom299, !dbg !3707
  %46 = load ptr, ptr %arrayidx327, align 16, !dbg !3707, !tbaa !1889
  %47 = load i32, ptr %arrayidx329, align 4, !dbg !3707, !tbaa !1859
  %add330 = add nsw i32 %add297, %cond86, !dbg !3707
  call void %45(ptr noundef nonnull %arrayidx324, i32 noundef 8, ptr noundef %46, i32 noundef %47, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #5, !dbg !3707
  %48 = load ptr, ptr %mc_chroma, align 8, !dbg !3707, !tbaa !3330
  %arrayidx337 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %pixv_buf, i64 0, i64 1, i64 %idxprom299, !dbg !3707
  %49 = load ptr, ptr %arrayidx340, align 8, !dbg !3707, !tbaa !1889
  %50 = load i32, ptr %arrayidx329, align 4, !dbg !3707, !tbaa !1859
  call void %48(ptr noundef nonnull %arrayidx337, i32 noundef 8, ptr noundef %49, i32 noundef %50, i32 noundef %add291, i32 noundef %add330, i32 noundef %shr248, i32 noundef %shr249) #5, !dbg !3707
  br label %if.end346, !dbg !3707

if.end346:                                        ; preds = %if.then319, %for.body272
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, 1, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1099, metadata !1786, metadata !DIExpression()), !dbg !3703
  %lftr.wideiv1101 = trunc i64 %indvars.iv.next1099 to i32, !dbg !3711
  %exitcond1102.not = icmp eq i32 %lftr.wideiv1101, 9, !dbg !3711
  br i1 %exitcond1102.not, label %if.end350, label %for.body272, !dbg !3704, !llvm.loop !3712

if.end350:                                        ; preds = %if.end346, %if.end264
  %tobool352 = icmp ne i32 %pass.01086, 0, !dbg !3714
  call void @llvm.dbg.value(metadata i1 %tobool352, metadata !1795, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %bcost.01090, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %bcostrd.01087, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 0, metadata !1774, metadata !DIExpression()), !dbg !3687
  %51 = zext i1 %tobool352 to i64, !dbg !3716
  br label %for.body358, !dbg !3716

for.cond.cleanup357:                              ; preds = %if.end519
  %tobool523.not = icmp eq i32 %bestj.3, 0, !dbg !3717
  br i1 %tobool523.not, label %cleanup556, label %for.inc554, !dbg !3719

for.body358:                                      ; preds = %if.end350, %if.end519
  %indvars.iv1103 = phi i64 [ %51, %if.end350 ], [ %indvars.iv.next1104, %if.end519 ]
  %bcost.11085 = phi i32 [ %bcost.01090, %if.end350 ], [ %bcost.3, %if.end519 ]
  %bcostrd.11084 = phi i64 [ %bcostrd.01087, %if.end350 ], [ %bcostrd.4, %if.end519 ]
  %bestj.01081 = phi i32 [ 0, %if.end350 ], [ %bestj.3, %if.end519 ]
  call void @llvm.dbg.value(metadata i32 %bcost.11085, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %bcostrd.11084, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %indvars.iv1103, metadata !1795, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %bestj.01081, metadata !1774, metadata !DIExpression()), !dbg !3687
  %arrayidx360 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1103, !dbg !3720
  %52 = load i8, ptr %arrayidx360, align 4, !dbg !3720, !tbaa !1975
  %conv362 = sext i8 %52 to i32, !dbg !3720
  %add363 = add nsw i32 %bm0x.01094, %conv362, !dbg !3721
  call void @llvm.dbg.value(metadata i32 %add363, metadata !1797, metadata !DIExpression()), !dbg !3722
  %arrayidx366 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1103, i64 1, !dbg !3723
  %53 = load i8, ptr %arrayidx366, align 1, !dbg !3723, !tbaa !1975
  %conv367 = sext i8 %53 to i32, !dbg !3723
  %add368 = add nsw i32 %bm0y.01093, %conv367, !dbg !3724
  call void @llvm.dbg.value(metadata i32 %add368, metadata !1800, metadata !DIExpression()), !dbg !3722
  %arrayidx371 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1103, i64 2, !dbg !3725
  %54 = load i8, ptr %arrayidx371, align 2, !dbg !3725, !tbaa !1975
  %conv372 = sext i8 %54 to i32, !dbg !3725
  %add373 = add nsw i32 %bm1x.01092, %conv372, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %add373, metadata !1801, metadata !DIExpression()), !dbg !3722
  %arrayidx376 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %indvars.iv1103, i64 3, !dbg !3727
  %55 = load i8, ptr %arrayidx376, align 1, !dbg !3727, !tbaa !1975
  %conv377 = sext i8 %55 to i32, !dbg !3727
  %add378 = add nsw i32 %bm1y.01091, %conv377, !dbg !3728
  call void @llvm.dbg.value(metadata i32 %add378, metadata !1802, metadata !DIExpression()), !dbg !3722
  br i1 %tobool352, label %lor.lhs.false380, label %for.body358.if.then395_crit_edge, !dbg !3729

for.body358.if.then395_crit_edge:                 ; preds = %for.body358
  %.pre1108 = and i32 %add378, 7, !dbg !3730
  %.pre1109 = shl nuw nsw i32 1, %.pre1108, !dbg !3731
  %.pre1110 = and i32 %add363, 7, !dbg !3732
  %.pre1111 = zext i32 %.pre1110 to i64
  %.pre1112 = and i32 %add368, 7, !dbg !3733
  %.pre1113 = zext i32 %.pre1112 to i64
  %.pre1115 = and i32 %add373, 7, !dbg !3734
  %.pre1116 = zext i32 %.pre1115 to i64
  br label %if.then395, !dbg !3729

lor.lhs.false380:                                 ; preds = %for.body358
  %and381 = and i32 %add363, 7, !dbg !3735
  %56 = zext i32 %and381 to i64
  %and384 = and i32 %add368, 7, !dbg !3736
  %57 = zext i32 %and384 to i64
  %and387 = and i32 %add373, 7, !dbg !3737
  %58 = zext i32 %and387 to i64
  %arrayidx389 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %56, i64 %57, i64 %58, !dbg !3738
  %59 = load i8, ptr %arrayidx389, align 1, !dbg !3738, !tbaa !1975
  %conv390 = zext i8 %59 to i32, !dbg !3738
  %and391 = and i32 %add378, 7, !dbg !3739
  %shl392 = shl nuw nsw i32 1, %and391, !dbg !3740
  %and393 = and i32 %shl392, %conv390, !dbg !3741
  %tobool394.not = icmp eq i32 %and393, 0, !dbg !3741
  br i1 %tobool394.not, label %if.then395, label %if.end519, !dbg !3742

if.then395:                                       ; preds = %for.body358.if.then395_crit_edge, %lor.lhs.false380
  %.pre-phi1117 = phi i64 [ %.pre1116, %for.body358.if.then395_crit_edge ], [ %58, %lor.lhs.false380 ]
  %.pre-phi1114 = phi i64 [ %.pre1113, %for.body358.if.then395_crit_edge ], [ %57, %lor.lhs.false380 ]
  %.pre-phi = phi i64 [ %.pre1111, %for.body358.if.then395_crit_edge ], [ %56, %lor.lhs.false380 ]
  %shl419.pre-phi = phi i32 [ %.pre1109, %for.body358.if.then395_crit_edge ], [ %shl392, %lor.lhs.false380 ], !dbg !3731
  %conv399 = sext i8 %52 to i64, !dbg !3743
  %mul400 = mul nsw i64 %conv399, 3, !dbg !3744
  %add401 = add nsw i64 %mul400, 4, !dbg !3745
  %conv405 = sext i8 %53 to i64, !dbg !3746
  %add406 = add nsw i64 %add401, %conv405, !dbg !3747
  call void @llvm.dbg.value(metadata !DIArgList(i8 %52, i8 %53), metadata !1803, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 3, DW_OP_mul, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !3748
  %conv410 = sext i8 %54 to i64, !dbg !3749
  %mul411 = mul nsw i64 %conv410, 3, !dbg !3750
  %add412 = add nsw i64 %mul411, 4, !dbg !3751
  %conv416 = sext i8 %55 to i64, !dbg !3752
  %add417 = add nsw i64 %add412, %conv416, !dbg !3753
  call void @llvm.dbg.value(metadata !DIArgList(i8 %54, i8 %55), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_constu, 3, DW_OP_mul, DW_OP_plus_uconst, 4, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)), !dbg !3748
  %arrayidx428 = getelementptr inbounds [8 x [8 x [8 x i8]]], ptr %visited, i64 0, i64 %.pre-phi, i64 %.pre-phi1114, i64 %.pre-phi1117, !dbg !3754
  %60 = load i8, ptr %arrayidx428, align 1, !dbg !3755, !tbaa !1975
  %61 = trunc i32 %shl419.pre-phi to i8, !dbg !3755
  %conv430 = or i8 %60, %61, !dbg !3755
  store i8 %conv430, ptr %arrayidx428, align 1, !dbg !3755, !tbaa !1975
  %62 = load ptr, ptr %arrayidx433, align 8, !dbg !3756, !tbaa !1889
  %arrayidx436 = getelementptr inbounds [9 x ptr], ptr %src, i64 0, i64 %add406, !dbg !3757
  %63 = load ptr, ptr %arrayidx436, align 8, !dbg !3757, !tbaa !1889
  %arrayidx439 = getelementptr inbounds [9 x i32], ptr %stride, i64 0, i64 %add406, !dbg !3758
  %64 = load i32, ptr %arrayidx439, align 4, !dbg !3758, !tbaa !1859
  %arrayidx442 = getelementptr inbounds [2 x [9 x ptr]], ptr %src, i64 0, i64 1, i64 %add417, !dbg !3759
  %65 = load ptr, ptr %arrayidx442, align 8, !dbg !3759, !tbaa !1889
  %arrayidx445 = getelementptr inbounds [2 x [9 x i32]], ptr %stride, i64 0, i64 1, i64 %add417, !dbg !3760
  %66 = load i32, ptr %arrayidx445, align 4, !dbg !3760, !tbaa !1859
  call void %62(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef %63, i32 noundef %64, ptr noundef %65, i32 noundef %66, i32 noundef %i_weight) #5, !dbg !3756
  %67 = load ptr, ptr %arrayidx447, align 8, !dbg !3761, !tbaa !1889
  %68 = load ptr, ptr %p_fenc, align 8, !dbg !3762, !tbaa !1889
  %call449 = call i32 %67(ptr noundef %68, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !3761
  %idxprom450 = sext i32 %add363 to i64, !dbg !3763
  %arrayidx451 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom450, !dbg !3763
  %69 = load i16, ptr %arrayidx451, align 2, !dbg !3763, !tbaa !1912
  %conv452 = zext i16 %69 to i32, !dbg !3763
  %add453 = add nsw i32 %call449, %conv452, !dbg !3764
  %idxprom454 = sext i32 %add368 to i64, !dbg !3765
  %arrayidx455 = getelementptr inbounds i16, ptr %add.ptr174, i64 %idxprom454, !dbg !3765
  %70 = load i16, ptr %arrayidx455, align 2, !dbg !3765, !tbaa !1912
  %conv456 = zext i16 %70 to i32, !dbg !3765
  %add457 = add nsw i32 %add453, %conv456, !dbg !3766
  %idxprom458 = sext i32 %add373 to i64, !dbg !3767
  %arrayidx459 = getelementptr inbounds i16, ptr %add.ptr181, i64 %idxprom458, !dbg !3767
  %71 = load i16, ptr %arrayidx459, align 2, !dbg !3767, !tbaa !1912
  %conv460 = zext i16 %71 to i32, !dbg !3767
  %add461 = add nsw i32 %add457, %conv460, !dbg !3768
  %idxprom462 = sext i32 %add378 to i64, !dbg !3769
  %arrayidx463 = getelementptr inbounds i16, ptr %add.ptr188, i64 %idxprom462, !dbg !3769
  %72 = load i16, ptr %arrayidx463, align 2, !dbg !3769, !tbaa !1912
  %conv464 = zext i16 %72 to i32, !dbg !3769
  %add465 = add nsw i32 %add461, %conv464, !dbg !3770
  call void @llvm.dbg.value(metadata i32 %add465, metadata !1807, metadata !DIExpression()), !dbg !3748
  br i1 %tobool150.not, label %if.else, label %if.then467, !dbg !3771

if.then467:                                       ; preds = %if.then395
  %mul468 = mul nsw i32 %bcost.11085, 17, !dbg !3772
  %div = sdiv i32 %mul468, 16, !dbg !3773
  %cmp469 = icmp slt i32 %add465, %div, !dbg !3774
  br i1 %cmp469, label %if.then471, label %if.end519, !dbg !3775

if.then471:                                       ; preds = %if.then467
  %73 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11085), !dbg !3776
  call void @llvm.dbg.value(metadata i32 %73, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %add363, metadata !1941, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %add368, metadata !1946, metadata !DIExpression()), !dbg !3777
  %and.i = and i32 %add363, 65535, !dbg !3779
  %shl.i = shl i32 %add368, 16, !dbg !3780
  %add.i = or i32 %shl.i, %and.i, !dbg !3781
  store i32 %add.i, ptr %arrayidx3, align 4, !dbg !3782, !tbaa !1975
  call void @llvm.dbg.value(metadata i32 %add373, metadata !1941, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %add378, metadata !1946, metadata !DIExpression()), !dbg !3783
  %and.i948 = and i32 %add373, 65535, !dbg !3785
  %shl.i949 = shl i32 %add378, 16, !dbg !3786
  %add.i950 = or i32 %shl.i949, %and.i948, !dbg !3787
  store i32 %add.i950, ptr %arrayidx12, align 4, !dbg !3788, !tbaa !1975
  %74 = load ptr, ptr %arrayidx484, align 8, !dbg !3789, !tbaa !1889
  %arrayidx487 = getelementptr inbounds [9 x [64 x i8]], ptr %pixu_buf, i64 0, i64 %add406, !dbg !3790
  %arrayidx491 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %pixu_buf, i64 0, i64 1, i64 %add417, !dbg !3791
  call void %74(ptr noundef %arrayidx38, i32 noundef 32, ptr noundef nonnull %arrayidx487, i32 noundef 8, ptr noundef nonnull %arrayidx491, i32 noundef 8, i32 noundef %i_weight) #5, !dbg !3789
  %75 = load ptr, ptr %arrayidx484, align 8, !dbg !3792, !tbaa !1889
  %arrayidx500 = getelementptr inbounds [9 x [64 x i8]], ptr %pixv_buf, i64 0, i64 %add406, !dbg !3793
  %arrayidx504 = getelementptr inbounds [2 x [9 x [64 x i8]]], ptr %pixv_buf, i64 0, i64 1, i64 %add417, !dbg !3794
  call void %75(ptr noundef %arrayidx50, i32 noundef 32, ptr noundef nonnull %arrayidx500, i32 noundef 8, ptr noundef nonnull %arrayidx504, i32 noundef 8, i32 noundef %i_weight) #5, !dbg !3792
  %76 = load i32, ptr %m0, align 16, !dbg !3795, !tbaa !1845
  %call508 = call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %mul, i32 noundef %76) #5, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %call508, metadata !1808, metadata !DIExpression()), !dbg !3797
  %cmp509 = icmp ult i64 %call508, %bcostrd.11084, !dbg !3798
  %77 = trunc i64 %indvars.iv1103 to i32, !dbg !3800
  %spec.select944 = select i1 %cmp509, i32 %77, i32 %bestj.01081, !dbg !3800
  %78 = call i64 @llvm.umin.i64(i64 %call508, i64 %bcostrd.11084), !dbg !3800
  br label %if.end519, !dbg !3800

if.else:                                          ; preds = %if.then395
  %cmp514 = icmp slt i32 %add465, %bcost.11085, !dbg !3801
  %79 = trunc i64 %indvars.iv1103 to i32, !dbg !3803
  %spec.select = select i1 %cmp514, i32 %79, i32 %bestj.01081, !dbg !3803
  %80 = call i32 @llvm.smin.i32(i32 %add465, i32 %bcost.11085), !dbg !3803
  br label %if.end519, !dbg !3803

if.end519:                                        ; preds = %if.then471, %if.else, %if.then467, %lor.lhs.false380
  %bestj.3 = phi i32 [ %bestj.01081, %lor.lhs.false380 ], [ %bestj.01081, %if.then467 ], [ %spec.select, %if.else ], [ %spec.select944, %if.then471 ], !dbg !3687
  %bcostrd.4 = phi i64 [ %bcostrd.11084, %lor.lhs.false380 ], [ %bcostrd.11084, %if.then467 ], [ %bcostrd.11084, %if.else ], [ %78, %if.then471 ], !dbg !3589
  %bcost.3 = phi i32 [ %bcost.11085, %lor.lhs.false380 ], [ %bcost.11085, %if.then467 ], [ %80, %if.else ], [ %73, %if.then471 ], !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bcost.3, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %bcostrd.4, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bestj.3, metadata !1774, metadata !DIExpression()), !dbg !3687
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 1, !dbg !3804
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1104, metadata !1795, metadata !DIExpression()), !dbg !3715
  %exitcond1106.not = icmp eq i64 %indvars.iv.next1104, 33, !dbg !3805
  br i1 %exitcond1106.not, label %for.cond.cleanup357, label %for.body358, !dbg !3716, !llvm.loop !3806

for.inc554:                                       ; preds = %for.cond.cleanup357
  %idxprom526 = sext i32 %bestj.3 to i64, !dbg !3808
  %arrayidx527 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526, !dbg !3808
  %81 = load i8, ptr %arrayidx527, align 4, !dbg !3808, !tbaa !1975
  %conv529 = sext i8 %81 to i32, !dbg !3808
  %add530 = add nsw i32 %bm0x.01094, %conv529, !dbg !3809
  call void @llvm.dbg.value(metadata i32 %add530, metadata !1756, metadata !DIExpression()), !dbg !3589
  %arrayidx533 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526, i64 1, !dbg !3810
  %82 = load i8, ptr %arrayidx533, align 1, !dbg !3810, !tbaa !1975
  %conv534 = sext i8 %82 to i32, !dbg !3810
  %add535 = add nsw i32 %bm0y.01093, %conv534, !dbg !3811
  call void @llvm.dbg.value(metadata i32 %add535, metadata !1757, metadata !DIExpression()), !dbg !3589
  %arrayidx538 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526, i64 2, !dbg !3812
  %83 = load i8, ptr %arrayidx538, align 2, !dbg !3812, !tbaa !1975
  %conv539 = sext i8 %83 to i32, !dbg !3812
  %add540 = add nsw i32 %bm1x.01092, %conv539, !dbg !3813
  call void @llvm.dbg.value(metadata i32 %add540, metadata !1758, metadata !DIExpression()), !dbg !3589
  %arrayidx543 = getelementptr inbounds [33 x [4 x i8]], ptr @x264_me_refine_bidir.dia4d, i64 0, i64 %idxprom526, i64 3, !dbg !3814
  %84 = load i8, ptr %arrayidx543, align 1, !dbg !3814, !tbaa !1975
  %conv544 = sext i8 %84 to i32, !dbg !3814
  %add545 = add nsw i32 %bm1y.01091, %conv544, !dbg !3815
  call void @llvm.dbg.value(metadata i32 %add545, metadata !1759, metadata !DIExpression()), !dbg !3589
  %85 = load i16, ptr %arrayidx527, align 4, !dbg !3816, !tbaa !1975
  %conv549 = zext i16 %85 to i32, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %conv549, metadata !1761, metadata !DIExpression()), !dbg !3589
  %86 = load i16, ptr %arrayidx538, align 2, !dbg !3817, !tbaa !1975
  %conv553 = zext i16 %86 to i32, !dbg !3817
  call void @llvm.dbg.value(metadata i32 %conv553, metadata !1762, metadata !DIExpression()), !dbg !3589
  %inc555 = add nuw nsw i32 %pass.01086, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %bcost.3, metadata !1760, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i64 %bcostrd.4, metadata !1763, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %inc555, metadata !1772, metadata !DIExpression()), !dbg !3685
  %exitcond1107.not = icmp eq i32 %inc555, 8, !dbg !3819
  br i1 %exitcond1107.not, label %cleanup556, label %for.body, !dbg !3686, !llvm.loop !3820

cleanup556:                                       ; preds = %for.cond.cleanup357, %for.inc554
  %bm1y.0.lcssa = phi i32 [ %bm1y.01091, %for.cond.cleanup357 ], [ %add545, %for.inc554 ], !dbg !3589
  %bm1x.0.lcssa = phi i32 [ %bm1x.01092, %for.cond.cleanup357 ], [ %add540, %for.inc554 ], !dbg !3589
  %bm0y.0.lcssa = phi i32 [ %bm0y.01093, %for.cond.cleanup357 ], [ %add535, %for.inc554 ], !dbg !3589
  %bm0x.0.lcssa = phi i32 [ %bm0x.01094, %for.cond.cleanup357 ], [ %add530, %for.inc554 ], !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm0x.0.lcssa, metadata !1756, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm0y.0.lcssa, metadata !1757, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm1x.0.lcssa, metadata !1758, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata i32 %bm1y.0.lcssa, metadata !1759, metadata !DIExpression()), !dbg !3589
  br i1 %tobool150.not, label %if.end654, label %if.then559, !dbg !3822

if.then559:                                       ; preds = %cleanup556
  %mul561 = shl nuw nsw i32 %and, 1, !dbg !3823
  %shr564 = ashr i32 %2, 2, !dbg !3826
  %shr565 = ashr i32 %3, 2, !dbg !3827
  call void @llvm.dbg.value(metadata i32 %bm0x.0.lcssa, metadata !1941, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i32 %bm0y.0.lcssa, metadata !1946, metadata !DIExpression()), !dbg !3828
  %and.i951 = and i32 %bm0x.0.lcssa, 65535, !dbg !3830
  %shl.i952 = shl i32 %bm0y.0.lcssa, 16, !dbg !3831
  %add.i953 = or i32 %and.i951, %shl.i952, !dbg !3832
  call void @llvm.dbg.value(metadata ptr %h, metadata !3833, metadata !DIExpression()) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %mul561, metadata !3839, metadata !DIExpression()) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %i8, metadata !3840, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3841, metadata !DIExpression()) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3842, metadata !DIExpression()) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 0, metadata !3843, metadata !DIExpression()) #5, !dbg !3846
  call void @llvm.dbg.value(metadata i32 %add.i953, metadata !3844, metadata !DIExpression()) #5, !dbg !3846
  %mul563 = shl i32 %i8, 3, !dbg !3848
  %add.i954 = or i32 %mul561, %mul563, !dbg !3849
  %add2.i = or i32 %add.i954, 12, !dbg !3849
  %idxprom3.i = sext i32 %add2.i to i64, !dbg !3850
  %arrayidx4.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %idxprom3.i, !dbg !3850
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3845, metadata !DIExpression()) #5, !dbg !3846
  %mul5.i = and i32 %2, -4, !dbg !3851
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3853, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %mul5.i, metadata !3858, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3859, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 4, metadata !3860, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %add.i953, metadata !3861, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3862, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %add.i953, metadata !3863, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 %add.i953, metadata !3864, metadata !DIExpression()) #5, !dbg !3866
  %conv15.i.i = zext i32 %add.i953 to i64, !dbg !3868
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297, !dbg !3869
  call void @llvm.dbg.value(metadata i64 %add.i.i, metadata !3865, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata i32 32, metadata !3860, metadata !DIExpression()) #5, !dbg !3866
  %87 = add i32 %mul5.i, -2, !dbg !3870
  %88 = call i32 @llvm.fshl.i32(i32 2, i32 %87, i32 31) #5, !dbg !3870
  switch i32 %88, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ], !dbg !3870

if.then39.i.i:                                    ; preds = %if.then559
  store i32 %add.i953, ptr %arrayidx4.i, align 4, !dbg !3871, !tbaa !1975
  %cmp43.i.i = icmp eq i32 %shr565, 1, !dbg !3875
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i, !dbg !3877

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !3878
  store i32 %add.i953, ptr %add.ptr49.i.i, align 4, !dbg !3879, !tbaa !1975
  %cmp50.i.i = icmp eq i32 %shr565, 2, !dbg !3880
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i, !dbg !3882

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !3883
  store i32 %add.i953, ptr %add.ptr56.i.i, align 4, !dbg !3884, !tbaa !1975
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !3885
  store i32 %add.i953, ptr %add.ptr59.i.i, align 4, !dbg !3886, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit, !dbg !3887

if.then63.i.i:                                    ; preds = %if.then559
  store i64 %add.i.i, ptr %arrayidx4.i, align 8, !dbg !3888, !tbaa !1975
  %cmp67.i.i = icmp eq i32 %shr565, 1, !dbg !3893
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i, !dbg !3895

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !3896
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8, !dbg !3897, !tbaa !1975
  %cmp74.i.i = icmp eq i32 %shr565, 2, !dbg !3898
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i, !dbg !3900

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !3901
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8, !dbg !3902, !tbaa !1975
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !3903
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8, !dbg !3904, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit, !dbg !3905

do.body.i.i:                                      ; preds = %if.then559, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i, %do.body.i.i ], [ %arrayidx4.i, %if.then559 ], !dbg !3866
  %h.addr.0.i.i = phi i32 [ %sub.i.i, %do.body.i.i ], [ %shr565, %if.then559 ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i, metadata !3859, metadata !DIExpression()) #5, !dbg !3866
  call void @llvm.dbg.value(metadata ptr %d.0.i.i, metadata !3862, metadata !DIExpression()) #5, !dbg !3866
  store i64 %add.i.i, ptr %d.0.i.i, align 8, !dbg !3906, !tbaa !1975
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8, !dbg !3912
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8, !dbg !3913, !tbaa !1975
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32, !dbg !3914
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8, !dbg !3915, !tbaa !1975
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40, !dbg !3916
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8, !dbg !3917, !tbaa !1975
  %sub.i.i = add nsw i32 %h.addr.0.i.i, -2, !dbg !3918
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !3859, metadata !DIExpression()) #5, !dbg !3866
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64, !dbg !3919
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i, metadata !3862, metadata !DIExpression()) #5, !dbg !3866
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0, !dbg !3920
  br i1 %tobool.not.i.i, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !3920, !llvm.loop !3921

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i, %if.then559, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %89 = load i16, ptr %mvp165, align 16, !dbg !3924, !tbaa !1912
  %conv569 = sext i16 %89 to i32, !dbg !3924
  %sub570 = sub nsw i32 %bm0x.0.lcssa, %conv569, !dbg !3924
  %90 = call i32 @llvm.abs.i32(i32 %sub570, i1 true), !dbg !3924
  %91 = call i32 @llvm.umin.i32(i32 %90, i32 33), !dbg !3924
  %92 = load i16, ptr %arrayidx170, align 2, !dbg !3925, !tbaa !1912
  %conv585 = sext i16 %92 to i32, !dbg !3925
  %sub586 = sub nsw i32 %bm0y.0.lcssa, %conv585, !dbg !3925
  %93 = call i32 @llvm.abs.i32(i32 %sub586, i1 true), !dbg !3925
  %94 = call i32 @llvm.umin.i32(i32 %93, i32 33), !dbg !3925
  call void @llvm.dbg.value(metadata i32 %91, metadata !3926, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i32 %94, metadata !3929, metadata !DIExpression()), !dbg !3930
  %shl.i955 = shl nuw nsw i32 %94, 8, !dbg !3932
  %add.i956 = or i32 %shl.i955, %91, !dbg !3933
  %conv600 = trunc i32 %add.i956 to i16, !dbg !3934
  call void @llvm.dbg.value(metadata i16 %conv600, metadata !1764, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata ptr %h, metadata !3935, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %mul561, metadata !3940, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %i8, metadata !3941, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3942, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3943, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i32 0, metadata !3944, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i16 %conv600, metadata !3945, metadata !DIExpression()), !dbg !3947
  %arrayidx4.i961 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 0, i64 %idxprom3.i, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i961, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i961, metadata !3853, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3858, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3859, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i32 2, metadata !3860, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i32 %add.i956, metadata !3861, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i961, metadata !3862, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i16 %conv600, metadata !3863, metadata !DIExpression()) #5, !dbg !3950
  %mul8.i.i = mul nuw nsw i32 %add.i956, 65537, !dbg !3953
  call void @llvm.dbg.value(metadata i32 %mul8.i.i, metadata !3864, metadata !DIExpression()) #5, !dbg !3950
  %conv15.i.i962 = zext i32 %mul8.i.i to i64, !dbg !3954
  %add.i.i963 = mul nuw nsw i64 %conv15.i.i962, 4294967297, !dbg !3955
  call void @llvm.dbg.value(metadata i64 %add.i.i963, metadata !3865, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata i32 16, metadata !3860, metadata !DIExpression()) #5, !dbg !3950
  %95 = add i32 %shr564, 2147483647, !dbg !3956
  %96 = and i32 %95, 2147483647, !dbg !3956
  switch i32 %96, label %x264_macroblock_cache_mvd.exit [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i965
    i32 3, label %if.then63.i.i973
    i32 7, label %do.body.i.i988
  ], !dbg !3956

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv600, ptr %arrayidx4.i961, align 2, !dbg !3957, !tbaa !1975
  %cmp21.i.i = icmp eq i32 %shr565, 1, !dbg !3959
  br i1 %cmp21.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end.i.i, !dbg !3961

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 16, !dbg !3962
  store i16 %conv600, ptr %add.ptr26.i.i, align 2, !dbg !3963, !tbaa !1975
  %cmp27.i.i = icmp eq i32 %shr565, 2, !dbg !3964
  br i1 %cmp27.i.i, label %x264_macroblock_cache_mvd.exit, label %if.end30.i.i, !dbg !3966

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 32, !dbg !3967
  store i16 %conv600, ptr %add.ptr33.i.i, align 2, !dbg !3968, !tbaa !1975
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 48, !dbg !3969
  store i16 %conv600, ptr %add.ptr36.i.i, align 2, !dbg !3970, !tbaa !1975
  br label %x264_macroblock_cache_mvd.exit, !dbg !3971

if.then39.i.i965:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i32 %mul8.i.i, ptr %arrayidx4.i961, align 4, !dbg !3972, !tbaa !1975
  %cmp43.i.i964 = icmp eq i32 %shr565, 1, !dbg !3973
  br i1 %cmp43.i.i964, label %x264_macroblock_cache_mvd.exit, label %if.end46.i.i968, !dbg !3974

if.end46.i.i968:                                  ; preds = %if.then39.i.i965
  %add.ptr49.i.i966 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 16, !dbg !3975
  store i32 %mul8.i.i, ptr %add.ptr49.i.i966, align 4, !dbg !3976, !tbaa !1975
  %cmp50.i.i967 = icmp eq i32 %shr565, 2, !dbg !3977
  br i1 %cmp50.i.i967, label %x264_macroblock_cache_mvd.exit, label %if.end53.i.i971, !dbg !3978

if.end53.i.i971:                                  ; preds = %if.end46.i.i968
  %add.ptr56.i.i969 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 32, !dbg !3979
  store i32 %mul8.i.i, ptr %add.ptr56.i.i969, align 4, !dbg !3980, !tbaa !1975
  %add.ptr59.i.i970 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 48, !dbg !3981
  store i32 %mul8.i.i, ptr %add.ptr59.i.i970, align 4, !dbg !3982, !tbaa !1975
  br label %x264_macroblock_cache_mvd.exit, !dbg !3983

if.then63.i.i973:                                 ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i963, ptr %arrayidx4.i961, align 8, !dbg !3984, !tbaa !1975
  %cmp67.i.i972 = icmp eq i32 %shr565, 1, !dbg !3985
  br i1 %cmp67.i.i972, label %x264_macroblock_cache_mvd.exit, label %if.end70.i.i976, !dbg !3986

if.end70.i.i976:                                  ; preds = %if.then63.i.i973
  %add.ptr73.i.i974 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 16, !dbg !3987
  store i64 %add.i.i963, ptr %add.ptr73.i.i974, align 8, !dbg !3988, !tbaa !1975
  %cmp74.i.i975 = icmp eq i32 %shr565, 2, !dbg !3989
  br i1 %cmp74.i.i975, label %x264_macroblock_cache_mvd.exit, label %if.end77.i.i979, !dbg !3990

if.end77.i.i979:                                  ; preds = %if.end70.i.i976
  %add.ptr80.i.i977 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 32, !dbg !3991
  store i64 %add.i.i963, ptr %add.ptr80.i.i977, align 8, !dbg !3992, !tbaa !1975
  %add.ptr83.i.i978 = getelementptr inbounds i8, ptr %arrayidx4.i961, i64 48, !dbg !3993
  store i64 %add.i.i963, ptr %add.ptr83.i.i978, align 8, !dbg !3994, !tbaa !1975
  br label %x264_macroblock_cache_mvd.exit, !dbg !3995

do.body.i.i988:                                   ; preds = %x264_macroblock_cache_mv.exit, %do.body.i.i988
  %d.0.i.i980 = phi ptr [ %add.ptr106.i.i986, %do.body.i.i988 ], [ %arrayidx4.i961, %x264_macroblock_cache_mv.exit ], !dbg !3950
  %h.addr.0.i.i981 = phi i32 [ %sub.i.i985, %do.body.i.i988 ], [ %shr565, %x264_macroblock_cache_mv.exit ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i981, metadata !3859, metadata !DIExpression()) #5, !dbg !3950
  call void @llvm.dbg.value(metadata ptr %d.0.i.i980, metadata !3862, metadata !DIExpression()) #5, !dbg !3950
  store i64 %add.i.i963, ptr %d.0.i.i980, align 8, !dbg !3996, !tbaa !1975
  %add.ptr95.i.i982 = getelementptr inbounds i8, ptr %d.0.i.i980, i64 8, !dbg !3997
  store i64 %add.i.i963, ptr %add.ptr95.i.i982, align 8, !dbg !3998, !tbaa !1975
  %add.ptr98.i.i983 = getelementptr inbounds i8, ptr %d.0.i.i980, i64 16, !dbg !3999
  store i64 %add.i.i963, ptr %add.ptr98.i.i983, align 8, !dbg !4000, !tbaa !1975
  %add.ptr103.i.i984 = getelementptr inbounds i8, ptr %d.0.i.i980, i64 24, !dbg !4001
  store i64 %add.i.i963, ptr %add.ptr103.i.i984, align 8, !dbg !4002, !tbaa !1975
  %sub.i.i985 = add nsw i32 %h.addr.0.i.i981, -2, !dbg !4003
  call void @llvm.dbg.value(metadata i32 %sub.i.i985, metadata !3859, metadata !DIExpression()) #5, !dbg !3950
  %add.ptr106.i.i986 = getelementptr inbounds i8, ptr %d.0.i.i980, i64 32, !dbg !4004
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i986, metadata !3862, metadata !DIExpression()) #5, !dbg !3950
  %tobool.not.i.i987 = icmp eq i32 %sub.i.i985, 0, !dbg !4005
  br i1 %tobool.not.i.i987, label %x264_macroblock_cache_mvd.exit, label %do.body.i.i988, !dbg !4005, !llvm.loop !4006

x264_macroblock_cache_mvd.exit:                   ; preds = %do.body.i.i988, %x264_macroblock_cache_mv.exit, %if.then.i.i, %if.end.i.i, %if.end30.i.i, %if.then39.i.i965, %if.end46.i.i968, %if.end53.i.i971, %if.then63.i.i973, %if.end70.i.i976, %if.end77.i.i979
  call void @llvm.dbg.value(metadata i32 %bm1x.0.lcssa, metadata !1941, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %bm1y.0.lcssa, metadata !1946, metadata !DIExpression()), !dbg !4009
  %and.i989 = and i32 %bm1x.0.lcssa, 65535, !dbg !4011
  %shl.i990 = shl i32 %bm1y.0.lcssa, 16, !dbg !4012
  %add.i991 = or i32 %and.i989, %shl.i990, !dbg !4013
  call void @llvm.dbg.value(metadata ptr %h, metadata !3833, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %mul561, metadata !3839, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %i8, metadata !3840, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3841, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3842, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 1, metadata !3843, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %add.i991, metadata !3844, metadata !DIExpression()) #5, !dbg !4014
  %arrayidx4.i996 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom3.i, !dbg !4016
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i996, metadata !3845, metadata !DIExpression()) #5, !dbg !4014
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i996, metadata !3853, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %mul5.i, metadata !3858, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3859, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 4, metadata !3860, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %add.i991, metadata !3861, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i996, metadata !3862, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %add.i991, metadata !3863, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 %add.i991, metadata !3864, metadata !DIExpression()) #5, !dbg !4017
  %conv15.i.i998 = zext i32 %add.i991 to i64, !dbg !4019
  %add.i.i999 = mul nuw i64 %conv15.i.i998, 4294967297, !dbg !4020
  call void @llvm.dbg.value(metadata i64 %add.i.i999, metadata !3865, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata i32 32, metadata !3860, metadata !DIExpression()) #5, !dbg !4017
  switch i32 %88, label %x264_macroblock_cache_mv.exit1025 [
    i32 7, label %do.body.i.i1024
    i32 1, label %if.then39.i.i1001
    i32 3, label %if.then63.i.i1009
  ], !dbg !4021

if.then39.i.i1001:                                ; preds = %x264_macroblock_cache_mvd.exit
  store i32 %add.i991, ptr %arrayidx4.i996, align 4, !dbg !4022, !tbaa !1975
  %cmp43.i.i1000 = icmp eq i32 %shr565, 1, !dbg !4023
  br i1 %cmp43.i.i1000, label %x264_macroblock_cache_mv.exit1025, label %if.end46.i.i1004, !dbg !4024

if.end46.i.i1004:                                 ; preds = %if.then39.i.i1001
  %add.ptr49.i.i1002 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 32, !dbg !4025
  store i32 %add.i991, ptr %add.ptr49.i.i1002, align 4, !dbg !4026, !tbaa !1975
  %cmp50.i.i1003 = icmp eq i32 %shr565, 2, !dbg !4027
  br i1 %cmp50.i.i1003, label %x264_macroblock_cache_mv.exit1025, label %if.end53.i.i1007, !dbg !4028

if.end53.i.i1007:                                 ; preds = %if.end46.i.i1004
  %add.ptr56.i.i1005 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 64, !dbg !4029
  store i32 %add.i991, ptr %add.ptr56.i.i1005, align 4, !dbg !4030, !tbaa !1975
  %add.ptr59.i.i1006 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 96, !dbg !4031
  store i32 %add.i991, ptr %add.ptr59.i.i1006, align 4, !dbg !4032, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit1025, !dbg !4033

if.then63.i.i1009:                                ; preds = %x264_macroblock_cache_mvd.exit
  store i64 %add.i.i999, ptr %arrayidx4.i996, align 8, !dbg !4034, !tbaa !1975
  %cmp67.i.i1008 = icmp eq i32 %shr565, 1, !dbg !4035
  br i1 %cmp67.i.i1008, label %x264_macroblock_cache_mv.exit1025, label %if.end70.i.i1012, !dbg !4036

if.end70.i.i1012:                                 ; preds = %if.then63.i.i1009
  %add.ptr73.i.i1010 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 32, !dbg !4037
  store i64 %add.i.i999, ptr %add.ptr73.i.i1010, align 8, !dbg !4038, !tbaa !1975
  %cmp74.i.i1011 = icmp eq i32 %shr565, 2, !dbg !4039
  br i1 %cmp74.i.i1011, label %x264_macroblock_cache_mv.exit1025, label %if.end77.i.i1015, !dbg !4040

if.end77.i.i1015:                                 ; preds = %if.end70.i.i1012
  %add.ptr80.i.i1013 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 64, !dbg !4041
  store i64 %add.i.i999, ptr %add.ptr80.i.i1013, align 8, !dbg !4042, !tbaa !1975
  %add.ptr83.i.i1014 = getelementptr inbounds i8, ptr %arrayidx4.i996, i64 96, !dbg !4043
  store i64 %add.i.i999, ptr %add.ptr83.i.i1014, align 8, !dbg !4044, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit1025, !dbg !4045

do.body.i.i1024:                                  ; preds = %x264_macroblock_cache_mvd.exit, %do.body.i.i1024
  %d.0.i.i1016 = phi ptr [ %add.ptr106.i.i1022, %do.body.i.i1024 ], [ %arrayidx4.i996, %x264_macroblock_cache_mvd.exit ], !dbg !4017
  %h.addr.0.i.i1017 = phi i32 [ %sub.i.i1021, %do.body.i.i1024 ], [ %shr565, %x264_macroblock_cache_mvd.exit ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i1017, metadata !3859, metadata !DIExpression()) #5, !dbg !4017
  call void @llvm.dbg.value(metadata ptr %d.0.i.i1016, metadata !3862, metadata !DIExpression()) #5, !dbg !4017
  store i64 %add.i.i999, ptr %d.0.i.i1016, align 8, !dbg !4046, !tbaa !1975
  %add.ptr95.i.i1018 = getelementptr inbounds i8, ptr %d.0.i.i1016, i64 8, !dbg !4047
  store i64 %add.i.i999, ptr %add.ptr95.i.i1018, align 8, !dbg !4048, !tbaa !1975
  %add.ptr98.i.i1019 = getelementptr inbounds i8, ptr %d.0.i.i1016, i64 32, !dbg !4049
  store i64 %add.i.i999, ptr %add.ptr98.i.i1019, align 8, !dbg !4050, !tbaa !1975
  %add.ptr103.i.i1020 = getelementptr inbounds i8, ptr %d.0.i.i1016, i64 40, !dbg !4051
  store i64 %add.i.i999, ptr %add.ptr103.i.i1020, align 8, !dbg !4052, !tbaa !1975
  %sub.i.i1021 = add nsw i32 %h.addr.0.i.i1017, -2, !dbg !4053
  call void @llvm.dbg.value(metadata i32 %sub.i.i1021, metadata !3859, metadata !DIExpression()) #5, !dbg !4017
  %add.ptr106.i.i1022 = getelementptr inbounds i8, ptr %d.0.i.i1016, i64 64, !dbg !4054
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i1022, metadata !3862, metadata !DIExpression()) #5, !dbg !4017
  %tobool.not.i.i1023 = icmp eq i32 %sub.i.i1021, 0, !dbg !4055
  br i1 %tobool.not.i.i1023, label %x264_macroblock_cache_mv.exit1025, label %do.body.i.i1024, !dbg !4055, !llvm.loop !4056

x264_macroblock_cache_mv.exit1025:                ; preds = %do.body.i.i1024, %x264_macroblock_cache_mvd.exit, %if.then39.i.i1001, %if.end46.i.i1004, %if.end53.i.i1007, %if.then63.i.i1009, %if.end70.i.i1012, %if.end77.i.i1015
  %97 = load i16, ptr %mvp176, align 16, !dbg !4059, !tbaa !1912
  %conv616 = sext i16 %97 to i32, !dbg !4059
  %sub617 = sub nsw i32 %bm1x.0.lcssa, %conv616, !dbg !4059
  %98 = call i32 @llvm.abs.i32(i32 %sub617, i1 true), !dbg !4059
  %99 = call i32 @llvm.umin.i32(i32 %98, i32 33), !dbg !4059
  %100 = load i16, ptr %arrayidx184, align 2, !dbg !4060, !tbaa !1912
  %conv632 = sext i16 %100 to i32, !dbg !4060
  %sub633 = sub nsw i32 %bm1y.0.lcssa, %conv632, !dbg !4060
  %101 = call i32 @llvm.abs.i32(i32 %sub633, i1 true), !dbg !4060
  %102 = call i32 @llvm.umin.i32(i32 %101, i32 33), !dbg !4060
  call void @llvm.dbg.value(metadata i32 %99, metadata !3926, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 %102, metadata !3929, metadata !DIExpression()), !dbg !4061
  %shl.i1026 = shl nuw nsw i32 %102, 8, !dbg !4063
  %add.i1027 = or i32 %shl.i1026, %99, !dbg !4064
  %conv647 = trunc i32 %add.i1027 to i16, !dbg !4065
  call void @llvm.dbg.value(metadata i16 %conv647, metadata !1764, metadata !DIExpression()), !dbg !3589
  call void @llvm.dbg.value(metadata ptr %h, metadata !3935, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %mul561, metadata !3940, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %i8, metadata !3941, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3942, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3943, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i32 1, metadata !3944, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i16 %conv647, metadata !3945, metadata !DIExpression()), !dbg !4066
  %arrayidx4.i1032 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 1, i64 %idxprom3.i, !dbg !4068
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1032, metadata !3946, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1032, metadata !3853, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i32 %shr564, metadata !3858, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i32 %shr565, metadata !3859, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i32 2, metadata !3860, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i32 %add.i1027, metadata !3861, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1032, metadata !3862, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i16 %conv647, metadata !3863, metadata !DIExpression()) #5, !dbg !4069
  %mul8.i.i1034 = mul nuw nsw i32 %add.i1027, 65537, !dbg !4071
  call void @llvm.dbg.value(metadata i32 %mul8.i.i1034, metadata !3864, metadata !DIExpression()) #5, !dbg !4069
  %conv15.i.i1035 = zext i32 %mul8.i.i1034 to i64, !dbg !4072
  %add.i.i1036 = mul nuw nsw i64 %conv15.i.i1035, 4294967297, !dbg !4073
  call void @llvm.dbg.value(metadata i64 %add.i.i1036, metadata !3865, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata i32 16, metadata !3860, metadata !DIExpression()) #5, !dbg !4069
  switch i32 %96, label %if.end654 [
    i32 0, label %if.then.i.i1038
    i32 1, label %if.then39.i.i1046
    i32 3, label %if.then63.i.i1054
    i32 7, label %do.body.i.i1069
  ], !dbg !4074

if.then.i.i1038:                                  ; preds = %x264_macroblock_cache_mv.exit1025
  store i16 %conv647, ptr %arrayidx4.i1032, align 2, !dbg !4075, !tbaa !1975
  %cmp21.i.i1037 = icmp eq i32 %shr565, 1, !dbg !4076
  br i1 %cmp21.i.i1037, label %if.end654, label %if.end.i.i1041, !dbg !4077

if.end.i.i1041:                                   ; preds = %if.then.i.i1038
  %add.ptr26.i.i1039 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 16, !dbg !4078
  store i16 %conv647, ptr %add.ptr26.i.i1039, align 2, !dbg !4079, !tbaa !1975
  %cmp27.i.i1040 = icmp eq i32 %shr565, 2, !dbg !4080
  br i1 %cmp27.i.i1040, label %if.end654, label %if.end30.i.i1044, !dbg !4081

if.end30.i.i1044:                                 ; preds = %if.end.i.i1041
  %add.ptr33.i.i1042 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 32, !dbg !4082
  store i16 %conv647, ptr %add.ptr33.i.i1042, align 2, !dbg !4083, !tbaa !1975
  %add.ptr36.i.i1043 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 48, !dbg !4084
  store i16 %conv647, ptr %add.ptr36.i.i1043, align 2, !dbg !4085, !tbaa !1975
  br label %if.end654, !dbg !4086

if.then39.i.i1046:                                ; preds = %x264_macroblock_cache_mv.exit1025
  store i32 %mul8.i.i1034, ptr %arrayidx4.i1032, align 4, !dbg !4087, !tbaa !1975
  %cmp43.i.i1045 = icmp eq i32 %shr565, 1, !dbg !4088
  br i1 %cmp43.i.i1045, label %if.end654, label %if.end46.i.i1049, !dbg !4089

if.end46.i.i1049:                                 ; preds = %if.then39.i.i1046
  %add.ptr49.i.i1047 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 16, !dbg !4090
  store i32 %mul8.i.i1034, ptr %add.ptr49.i.i1047, align 4, !dbg !4091, !tbaa !1975
  %cmp50.i.i1048 = icmp eq i32 %shr565, 2, !dbg !4092
  br i1 %cmp50.i.i1048, label %if.end654, label %if.end53.i.i1052, !dbg !4093

if.end53.i.i1052:                                 ; preds = %if.end46.i.i1049
  %add.ptr56.i.i1050 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 32, !dbg !4094
  store i32 %mul8.i.i1034, ptr %add.ptr56.i.i1050, align 4, !dbg !4095, !tbaa !1975
  %add.ptr59.i.i1051 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 48, !dbg !4096
  store i32 %mul8.i.i1034, ptr %add.ptr59.i.i1051, align 4, !dbg !4097, !tbaa !1975
  br label %if.end654, !dbg !4098

if.then63.i.i1054:                                ; preds = %x264_macroblock_cache_mv.exit1025
  store i64 %add.i.i1036, ptr %arrayidx4.i1032, align 8, !dbg !4099, !tbaa !1975
  %cmp67.i.i1053 = icmp eq i32 %shr565, 1, !dbg !4100
  br i1 %cmp67.i.i1053, label %if.end654, label %if.end70.i.i1057, !dbg !4101

if.end70.i.i1057:                                 ; preds = %if.then63.i.i1054
  %add.ptr73.i.i1055 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 16, !dbg !4102
  store i64 %add.i.i1036, ptr %add.ptr73.i.i1055, align 8, !dbg !4103, !tbaa !1975
  %cmp74.i.i1056 = icmp eq i32 %shr565, 2, !dbg !4104
  br i1 %cmp74.i.i1056, label %if.end654, label %if.end77.i.i1060, !dbg !4105

if.end77.i.i1060:                                 ; preds = %if.end70.i.i1057
  %add.ptr80.i.i1058 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 32, !dbg !4106
  store i64 %add.i.i1036, ptr %add.ptr80.i.i1058, align 8, !dbg !4107, !tbaa !1975
  %add.ptr83.i.i1059 = getelementptr inbounds i8, ptr %arrayidx4.i1032, i64 48, !dbg !4108
  store i64 %add.i.i1036, ptr %add.ptr83.i.i1059, align 8, !dbg !4109, !tbaa !1975
  br label %if.end654, !dbg !4110

do.body.i.i1069:                                  ; preds = %x264_macroblock_cache_mv.exit1025, %do.body.i.i1069
  %d.0.i.i1061 = phi ptr [ %add.ptr106.i.i1067, %do.body.i.i1069 ], [ %arrayidx4.i1032, %x264_macroblock_cache_mv.exit1025 ], !dbg !4069
  %h.addr.0.i.i1062 = phi i32 [ %sub.i.i1066, %do.body.i.i1069 ], [ %shr565, %x264_macroblock_cache_mv.exit1025 ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i1062, metadata !3859, metadata !DIExpression()) #5, !dbg !4069
  call void @llvm.dbg.value(metadata ptr %d.0.i.i1061, metadata !3862, metadata !DIExpression()) #5, !dbg !4069
  store i64 %add.i.i1036, ptr %d.0.i.i1061, align 8, !dbg !4111, !tbaa !1975
  %add.ptr95.i.i1063 = getelementptr inbounds i8, ptr %d.0.i.i1061, i64 8, !dbg !4112
  store i64 %add.i.i1036, ptr %add.ptr95.i.i1063, align 8, !dbg !4113, !tbaa !1975
  %add.ptr98.i.i1064 = getelementptr inbounds i8, ptr %d.0.i.i1061, i64 16, !dbg !4114
  store i64 %add.i.i1036, ptr %add.ptr98.i.i1064, align 8, !dbg !4115, !tbaa !1975
  %add.ptr103.i.i1065 = getelementptr inbounds i8, ptr %d.0.i.i1061, i64 24, !dbg !4116
  store i64 %add.i.i1036, ptr %add.ptr103.i.i1065, align 8, !dbg !4117, !tbaa !1975
  %sub.i.i1066 = add nsw i32 %h.addr.0.i.i1062, -2, !dbg !4118
  call void @llvm.dbg.value(metadata i32 %sub.i.i1066, metadata !3859, metadata !DIExpression()) #5, !dbg !4069
  %add.ptr106.i.i1067 = getelementptr inbounds i8, ptr %d.0.i.i1061, i64 32, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i1067, metadata !3862, metadata !DIExpression()) #5, !dbg !4069
  %tobool.not.i.i1068 = icmp eq i32 %sub.i.i1066, 0, !dbg !4120
  br i1 %tobool.not.i.i1068, label %if.end654, label %do.body.i.i1069, !dbg !4120, !llvm.loop !4121

if.end654:                                        ; preds = %do.body.i.i1069, %if.end77.i.i1060, %if.end70.i.i1057, %if.then63.i.i1054, %if.end53.i.i1052, %if.end46.i.i1049, %if.then39.i.i1046, %if.end30.i.i1044, %if.end.i.i1041, %if.then.i.i1038, %x264_macroblock_cache_mv.exit1025, %cleanup556
  %conv655 = trunc i32 %bm0x.0.lcssa to i16, !dbg !4124
  store i16 %conv655, ptr %mv87, align 4, !dbg !4125, !tbaa !1912
  %conv658 = trunc i32 %bm0y.0.lcssa to i16, !dbg !4126
  store i16 %conv658, ptr %arrayidx91, align 2, !dbg !4127, !tbaa !1912
  %conv661 = trunc i32 %bm1x.0.lcssa to i16, !dbg !4128
  store i16 %conv661, ptr %mv93, align 4, !dbg !4129, !tbaa !1912
  %conv664 = trunc i32 %bm1y.0.lcssa to i16, !dbg !4130
  store i16 %conv664, ptr %arrayidx97, align 2, !dbg !4131, !tbaa !1912
  br label %cleanup667, !dbg !4132

cleanup667:                                       ; preds = %cond.end85, %lor.lhs.false109, %lor.lhs.false122, %lor.lhs.false136, %if.end654
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %visited) #5, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %stride) #5, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %src) #5, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixv_buf) #5, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %pixu_buf) #5, !dbg !4132
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %pixy_buf) #5, !dbg !4132
  ret void, !dbg !4132
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_bidir_rd(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2) local_unnamed_addr #0 !dbg !4133 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !4137, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %m0, metadata !4138, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %m1, metadata !4139, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %i_weight, metadata !4140, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %i8, metadata !4141, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i32 %i_lambda2, metadata !4142, metadata !DIExpression()), !dbg !4143
  %b_skip_mc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 62, !dbg !4144
  store i32 1, ptr %b_skip_mc, align 4, !dbg !4145, !tbaa !4146
  tail call fastcc void @x264_me_refine_bidir(ptr noundef %h, ptr noundef %m0, ptr noundef %m1, i32 noundef %i_weight, i32 noundef %i8, i32 noundef %i_lambda2, i32 noundef 1), !dbg !4147
  store i32 0, ptr %b_skip_mc, align 4, !dbg !4148, !tbaa !4146
  ret void, !dbg !4149
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_me_refine_qpel_rd(ptr noundef %h, ptr noundef %m, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %i_list) local_unnamed_addr #0 !dbg !4150 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !4154, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %m, metadata !4155, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i_lambda2, metadata !4156, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i4, metadata !4157, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !4158, metadata !DIExpression()), !dbg !4223
  %idxprom = sext i32 %i_list to i64, !dbg !4224
  %idxprom1 = sext i32 %i4 to i64, !dbg !4225
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1, !dbg !4225
  %0 = load i32, ptr %arrayidx2, align 4, !dbg !4225, !tbaa !1859
  %idxprom3 = sext i32 %0 to i64, !dbg !4224
  %arrayidx4 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 %idxprom3, !dbg !4224
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !4159, metadata !DIExpression()), !dbg !4223
  %1 = load i32, ptr %m, align 16, !dbg !4226, !tbaa !1845
  %idxprom5 = sext i32 %1 to i64, !dbg !4227
  %arrayidx6 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom5, !dbg !4227
  %2 = load i32, ptr %arrayidx6, align 8, !dbg !4228, !tbaa !1853
  call void @llvm.dbg.value(metadata i32 %2, metadata !4162, metadata !DIExpression()), !dbg !4223
  %h10 = getelementptr inbounds [7 x %struct.anon.15], ptr @x264_pixel_size, i64 0, i64 %idxprom5, i32 1, !dbg !4229
  %3 = load i32, ptr %h10, align 4, !dbg !4229, !tbaa !1856
  call void @llvm.dbg.value(metadata i32 %3, metadata !4163, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %1, metadata !4164, metadata !DIExpression()), !dbg !4223
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !4230
  %4 = load i32, ptr %b_interlaced, align 4, !dbg !4230, !tbaa !3221
  %i_ref = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 3, !dbg !4231
  %5 = load i32, ptr %i_ref, align 4, !dbg !4231, !tbaa !3223
  %and = and i32 %5, %4, !dbg !4232
  %tobool.not = icmp eq i32 %and, 0, !dbg !4232
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !4233

cond.true:                                        ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !4234
  %6 = load i32, ptr %i_mb_y, align 4, !dbg !4234, !tbaa !3227
  %and15 = shl i32 %6, 2, !dbg !4235
  %mul = and i32 %and15, 4, !dbg !4235
  %sub = add nsw i32 %mul, -2, !dbg !4236
  br label %cond.end, !dbg !4233

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %entry ], !dbg !4233
  call void @llvm.dbg.value(metadata i32 %cond, metadata !4165, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 1152921504606846976, metadata !4166, metadata !DIExpression()), !dbg !4223
  %mv16 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, !dbg !4237
  %7 = load i16, ptr %mv16, align 4, !dbg !4238, !tbaa !1912
  %conv = sext i16 %7 to i32, !dbg !4238
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4167, metadata !DIExpression()), !dbg !4223
  %arrayidx19 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 13, i64 1, !dbg !4239
  %8 = load i16, ptr %arrayidx19, align 2, !dbg !4239, !tbaa !1912
  %conv20 = sext i16 %8 to i32, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 -2, metadata !4175, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i4, metadata !4176, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !4223
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !4240
  %9 = load ptr, ptr %p_fdec, align 16, !dbg !4241, !tbaa !1889
  %arrayidx24 = getelementptr inbounds [16 x i16], ptr @block_idx_xy_fdec, i64 0, i64 %idxprom1, !dbg !4242
  %10 = load i16, ptr %arrayidx24, align 2, !dbg !4242, !tbaa !1912
  %idxprom25 = zext i16 %10 to i64, !dbg !4241
  %arrayidx26 = getelementptr inbounds i8, ptr %9, i64 %idxprom25, !dbg !4241
  call void @llvm.dbg.value(metadata ptr %arrayidx26, metadata !4178, metadata !DIExpression()), !dbg !4223
  %arrayidx30 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !4243
  %11 = load ptr, ptr %arrayidx30, align 8, !dbg !4243, !tbaa !1889
  %12 = shl i32 %i4, 4, !dbg !4244
  %mul33 = and i32 %12, -128, !dbg !4244
  %and34 = and i32 %i4, 4, !dbg !4245
  %add = or i32 %mul33, %and34, !dbg !4246
  %idxprom36 = sext i32 %add to i64, !dbg !4243
  %arrayidx37 = getelementptr inbounds i8, ptr %11, i64 %idxprom36, !dbg !4243
  call void @llvm.dbg.value(metadata ptr %arrayidx37, metadata !4179, metadata !DIExpression()), !dbg !4223
  %arrayidx41 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !4247
  %13 = load ptr, ptr %arrayidx41, align 16, !dbg !4247, !tbaa !1889
  %arrayidx49 = getelementptr inbounds i8, ptr %13, i64 %idxprom36, !dbg !4247
  call void @llvm.dbg.value(metadata ptr %arrayidx49, metadata !4180, metadata !DIExpression()), !dbg !4223
  %b_skip_mc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 62, !dbg !4248
  store i32 1, ptr %b_skip_mc, align 4, !dbg !4249, !tbaa !4146
  %cmp = icmp ne i32 %1, 0, !dbg !4250
  %cmp53 = icmp ne i32 %i4, 0
  %or.cond = and i1 %cmp53, %cmp, !dbg !4252
  br i1 %or.cond, label %if.then, label %if.end, !dbg !4252

if.then:                                          ; preds = %cond.end
  %shr55 = ashr i32 %2, 2, !dbg !4253
  %mvp = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, !dbg !4254
  tail call void @x264_mb_predict_mv(ptr noundef nonnull %h, i32 noundef %i_list, i32 noundef %i4, i32 noundef %shr55, ptr noundef nonnull %mvp) #5, !dbg !4255
  br label %if.end, !dbg !4255

if.end:                                           ; preds = %if.then, %cond.end
  %mvp57 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, !dbg !4256
  %14 = load i16, ptr %mvp57, align 16, !dbg !4257, !tbaa !1912
  %conv59 = sext i16 %14 to i32, !dbg !4257
  call void @llvm.dbg.value(metadata i32 %conv59, metadata !4171, metadata !DIExpression()), !dbg !4223
  %arrayidx61 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 10, i64 1, !dbg !4258
  %15 = load i16, ptr %arrayidx61, align 2, !dbg !4258, !tbaa !1912
  %conv62 = sext i16 %15 to i32, !dbg !4258
  call void @llvm.dbg.value(metadata i32 %conv62, metadata !4172, metadata !DIExpression()), !dbg !4223
  %p_cost_mv = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 1, !dbg !4259
  %16 = load ptr, ptr %p_cost_mv, align 8, !dbg !4259, !tbaa !1909
  %idx.ext = sext i16 %14 to i64, !dbg !4260
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !4260
  %add.ptr = getelementptr inbounds i16, ptr %16, i64 %idx.neg, !dbg !4260
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !4160, metadata !DIExpression()), !dbg !4223
  %idx.ext64 = sext i16 %15 to i64, !dbg !4261
  %idx.neg65 = sub nsw i64 0, %idx.ext64, !dbg !4261
  %add.ptr66 = getelementptr inbounds i16, ptr %16, i64 %idx.neg65, !dbg !4261
  call void @llvm.dbg.value(metadata ptr %add.ptr66, metadata !4161, metadata !DIExpression()), !dbg !4223
  %mc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, !dbg !4262
  %17 = load ptr, ptr %mc, align 8, !dbg !4262, !tbaa !3487
  %p_fref = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, !dbg !4262
  %i_stride = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, !dbg !4262
  %18 = load i32, ptr %i_stride, align 8, !dbg !4262, !tbaa !1859
  %weight = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 4, !dbg !4262
  %19 = load ptr, ptr %weight, align 8, !dbg !4262, !tbaa !1957
  tail call void %17(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %18, i32 noundef %conv, i32 noundef %conv20, i32 noundef %2, i32 noundef %3, ptr noundef %19) #5, !dbg !4262
  %arrayidx71 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 69, i32 5, i64 %idxprom5, !dbg !4262
  %20 = load ptr, ptr %arrayidx71, align 8, !dbg !4262, !tbaa !1889
  %p_fenc = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 7, !dbg !4262
  %21 = load ptr, ptr %p_fenc, align 8, !dbg !4262, !tbaa !1889
  %call = tail call i32 %20(ptr noundef %21, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !4262
  %idxprom73 = sext i16 %7 to i64, !dbg !4262
  %arrayidx74 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom73, !dbg !4262
  %22 = load i16, ptr %arrayidx74, align 2, !dbg !4262, !tbaa !1912
  %conv75 = zext i16 %22 to i32, !dbg !4262
  %add76 = add nsw i32 %call, %conv75, !dbg !4262
  %idxprom77 = sext i16 %8 to i64, !dbg !4262
  %arrayidx78 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom77, !dbg !4262
  %23 = load i16, ptr %arrayidx78, align 2, !dbg !4262, !tbaa !1912
  %conv79 = zext i16 %23 to i32, !dbg !4262
  %add80 = add nsw i32 %add76, %conv79, !dbg !4262
  call void @llvm.dbg.value(metadata i32 %add80, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add80, metadata !4173, metadata !DIExpression()), !dbg !4223
  %24 = load i32, ptr %m, align 16, !dbg !4266, !tbaa !1845
  %cmp86.not = icmp eq i32 %24, 0, !dbg !4267
  br i1 %cmp86.not, label %if.else, label %if.then88, !dbg !4268

if.then88:                                        ; preds = %if.end
  %mul89 = mul nsw i32 %add80, 17, !dbg !4269
  %cmp90 = icmp sgt i32 %mul89, -16, !dbg !4269
  br i1 %cmp90, label %if.then92, label %if.end125, !dbg !4270

if.then92:                                        ; preds = %if.then88
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1941, metadata !DIExpression()), !dbg !4271
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !1946, metadata !DIExpression()), !dbg !4271
  %and.i = and i32 %conv, 65535, !dbg !4273
  %shl.i = shl nsw i32 %conv20, 16, !dbg !4274
  %add.i = or i32 %shl.i, %and.i, !dbg !4275
  store i32 %add.i, ptr %arrayidx4, align 4, !dbg !4276, !tbaa !1975
  %25 = load i32, ptr %m, align 16, !dbg !4277, !tbaa !1845
  %cmp95 = icmp slt i32 %25, 4, !dbg !4277
  br i1 %cmp95, label %if.then97, label %if.end115, !dbg !4276

if.then97:                                        ; preds = %if.then92
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !4279
  %26 = load ptr, ptr %mc_chroma, align 8, !dbg !4279, !tbaa !3330
  %arrayidx100 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 4, !dbg !4279
  %27 = load ptr, ptr %arrayidx100, align 16, !dbg !4279, !tbaa !1889
  %arrayidx102 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, i64 1, !dbg !4279
  %28 = load i32, ptr %arrayidx102, align 4, !dbg !4279, !tbaa !1859
  %add103 = add nsw i32 %cond, %conv20, !dbg !4279
  %shr104 = ashr i32 %2, 1, !dbg !4279
  %shr105 = ashr i32 %3, 1, !dbg !4279
  tail call void %26(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %27, i32 noundef %28, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #5, !dbg !4279
  %29 = load ptr, ptr %mc_chroma, align 8, !dbg !4279, !tbaa !3330
  %arrayidx109 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 5, !dbg !4279
  %30 = load ptr, ptr %arrayidx109, align 8, !dbg !4279, !tbaa !1889
  %31 = load i32, ptr %arrayidx102, align 4, !dbg !4279, !tbaa !1859
  tail call void %29(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %30, i32 noundef %31, i32 noundef %conv, i32 noundef %add103, i32 noundef %shr104, i32 noundef %shr105) #5, !dbg !4279
  %.pre = load i32, ptr %m, align 16, !dbg !4276, !tbaa !1845
  br label %if.end115, !dbg !4279

if.end115:                                        ; preds = %if.then97, %if.then92
  %32 = phi i32 [ %.pre, %if.then97 ], [ %25, %if.then92 ], !dbg !4276
  %call117 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %32) #5, !dbg !4276
  call void @llvm.dbg.value(metadata i64 %call117, metadata !4181, metadata !DIExpression()), !dbg !4281
  %33 = tail call i64 @llvm.umin.i64(i64 %call117, i64 1152921504606846976), !dbg !4276
  call void @llvm.dbg.value(metadata i64 %33, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 -2, metadata !4175, metadata !DIExpression()), !dbg !4223
  br label %if.end125, !dbg !4276

if.else:                                          ; preds = %if.end
  %cost123 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 12, !dbg !4282
  %34 = load i32, ptr %cost123, align 8, !dbg !4282, !tbaa !3108
  %conv124 = sext i32 %34 to i64, !dbg !4283
  call void @llvm.dbg.value(metadata i64 %conv124, metadata !4166, metadata !DIExpression()), !dbg !4223
  br label %if.end125

if.end125:                                        ; preds = %if.then88, %if.end115, %if.else
  %bcost.1 = phi i64 [ %33, %if.end115 ], [ 1152921504606846976, %if.then88 ], [ %conv124, %if.else ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.1, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 -2, metadata !4175, metadata !DIExpression()), !dbg !4223
  %cmp126.not = icmp eq i16 %7, %14, !dbg !4284
  %cmp128.not = icmp eq i16 %8, %15
  %or.cond1291 = select i1 %cmp126.not, i1 %cmp128.not, i1 false, !dbg !4285
  br i1 %or.cond1291, label %if.end230, label %land.lhs.true130, !dbg !4285

land.lhs.true130:                                 ; preds = %if.end125
  %mv_min_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, !dbg !4286
  %35 = load i32, ptr %mv_min_spel, align 8, !dbg !4287, !tbaa !1859
  %cmp133.not = icmp sgt i32 %35, %conv59, !dbg !4288
  br i1 %cmp133.not, label %if.end230, label %land.lhs.true135, !dbg !4289

land.lhs.true135:                                 ; preds = %land.lhs.true130
  %mv_max_spel = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !4290
  %36 = load i32, ptr %mv_max_spel, align 16, !dbg !4291, !tbaa !1859
  %cmp138.not = icmp slt i32 %36, %conv59, !dbg !4292
  br i1 %cmp138.not, label %if.end230, label %land.lhs.true140, !dbg !4293

land.lhs.true140:                                 ; preds = %land.lhs.true135
  %arrayidx143 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, i64 1, !dbg !4294
  %37 = load i32, ptr %arrayidx143, align 4, !dbg !4294, !tbaa !1859
  %cmp144.not = icmp sgt i32 %37, %conv62, !dbg !4295
  br i1 %cmp144.not, label %if.end230, label %land.lhs.true146, !dbg !4296

land.lhs.true146:                                 ; preds = %land.lhs.true140
  %arrayidx149 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !4297
  %38 = load i32, ptr %arrayidx149, align 4, !dbg !4297, !tbaa !1859
  %cmp150.not = icmp slt i32 %38, %conv62, !dbg !4298
  br i1 %cmp150.not, label %if.end230, label %if.then152, !dbg !4299

if.then152:                                       ; preds = %land.lhs.true146
  %39 = load ptr, ptr %mc, align 8, !dbg !4300, !tbaa !3487
  %40 = load i32, ptr %i_stride, align 8, !dbg !4300, !tbaa !1859
  %41 = load ptr, ptr %weight, align 8, !dbg !4300, !tbaa !1957
  tail call void %39(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %40, i32 noundef %conv59, i32 noundef %conv62, i32 noundef %2, i32 noundef %3, ptr noundef %41) #5, !dbg !4300
  %42 = load ptr, ptr %arrayidx71, align 8, !dbg !4300, !tbaa !1889
  %43 = load ptr, ptr %p_fenc, align 8, !dbg !4300, !tbaa !1889
  %call167 = tail call i32 %42(ptr noundef %43, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !4300
  %44 = load i16, ptr %16, align 2, !dbg !4300, !tbaa !1912
  %conv170 = zext i16 %44 to i32, !dbg !4300
  %reass.add = shl nuw nsw i32 %conv170, 1, !dbg !4300
  %add175 = add i32 %reass.add, %call167, !dbg !4300
  call void @llvm.dbg.value(metadata i32 %add175, metadata !4174, metadata !DIExpression()), !dbg !4223
  %45 = tail call i32 @llvm.smin.i32(i32 %add175, i32 %add80), !dbg !4300
  call void @llvm.dbg.value(metadata i32 %45, metadata !4173, metadata !DIExpression()), !dbg !4223
  %mul180 = mul nsw i32 %45, 17, !dbg !4304
  %div181 = sdiv i32 %mul180, 16, !dbg !4304
  %cmp182.not = icmp sgt i32 %add175, %div181, !dbg !4304
  br i1 %cmp182.not, label %if.end216, label %if.then184, !dbg !4305

if.then184:                                       ; preds = %if.then152
  call void @llvm.dbg.value(metadata i32 %conv59, metadata !1941, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 %conv62, metadata !1946, metadata !DIExpression()), !dbg !4306
  %and.i1299 = and i32 %conv59, 65535, !dbg !4308
  %shl.i1300 = shl nsw i32 %conv62, 16, !dbg !4309
  %add.i1301 = or i32 %shl.i1300, %and.i1299, !dbg !4310
  store i32 %add.i1301, ptr %arrayidx4, align 4, !dbg !4311, !tbaa !1975
  %46 = load i32, ptr %m, align 16, !dbg !4312, !tbaa !1845
  %cmp188 = icmp slt i32 %46, 4, !dbg !4312
  br i1 %cmp188, label %if.then190, label %if.end209, !dbg !4311

if.then190:                                       ; preds = %if.then184
  %mc_chroma192 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !4314
  %47 = load ptr, ptr %mc_chroma192, align 8, !dbg !4314, !tbaa !3330
  %arrayidx194 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 4, !dbg !4314
  %48 = load ptr, ptr %arrayidx194, align 16, !dbg !4314, !tbaa !1889
  %arrayidx196 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, i64 1, !dbg !4314
  %49 = load i32, ptr %arrayidx196, align 4, !dbg !4314, !tbaa !1859
  %add197 = add nsw i32 %cond, %conv62, !dbg !4314
  %shr198 = ashr i32 %2, 1, !dbg !4314
  %shr199 = ashr i32 %3, 1, !dbg !4314
  tail call void %47(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %48, i32 noundef %49, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #5, !dbg !4314
  %50 = load ptr, ptr %mc_chroma192, align 8, !dbg !4314, !tbaa !3330
  %arrayidx203 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 5, !dbg !4314
  %51 = load ptr, ptr %arrayidx203, align 8, !dbg !4314, !tbaa !1889
  %52 = load i32, ptr %arrayidx196, align 4, !dbg !4314, !tbaa !1859
  tail call void %50(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %51, i32 noundef %52, i32 noundef %conv59, i32 noundef %add197, i32 noundef %shr198, i32 noundef %shr199) #5, !dbg !4314
  %.pre1423 = load i32, ptr %m, align 16, !dbg !4311, !tbaa !1845
  br label %if.end209, !dbg !4314

if.end209:                                        ; preds = %if.then190, %if.then184
  %53 = phi i32 [ %.pre1423, %if.then190 ], [ %46, %if.then184 ], !dbg !4311
  %call211 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %53) #5, !dbg !4311
  call void @llvm.dbg.value(metadata i64 %call211, metadata !4186, metadata !DIExpression()), !dbg !4316
  %cmp212 = icmp ult i64 %call211, %bcost.1, !dbg !4317
  br i1 %cmp212, label %if.then214, label %if.end216, !dbg !4311

if.then214:                                       ; preds = %if.end209
  call void @llvm.dbg.value(metadata i64 %call211, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv59, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %conv62, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 -2, metadata !4175, metadata !DIExpression()), !dbg !4223
  br label %if.end216, !dbg !4319

if.end216:                                        ; preds = %if.end209, %if.then214, %if.then152
  %bmy.3 = phi i32 [ %conv20, %if.then152 ], [ %conv62, %if.then214 ], [ %conv20, %if.end209 ], !dbg !4223
  %bmx.3 = phi i32 [ %conv, %if.then152 ], [ %conv59, %if.then214 ], [ %conv, %if.end209 ], !dbg !4223
  %bcost.3 = phi i64 [ %bcost.1, %if.then152 ], [ %call211, %if.then214 ], [ %bcost.1, %if.end209 ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.3, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.3, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.3, metadata !4168, metadata !DIExpression()), !dbg !4223
  %cmp217 = icmp eq i32 %bmx.3, %conv59, !dbg !4321
  %cmp220 = icmp eq i32 %bmy.3, %conv62
  %or.cond1293 = select i1 %cmp217, i1 %cmp220, i1 false, !dbg !4323
  br i1 %or.cond1293, label %if.then222, label %if.end230, !dbg !4323

if.then222:                                       ; preds = %if.end216
  %54 = load i16, ptr %mv16, align 4, !dbg !4324, !tbaa !1912
  %conv225 = sext i16 %54 to i32, !dbg !4324
  call void @llvm.dbg.value(metadata i32 %conv225, metadata !4171, metadata !DIExpression()), !dbg !4223
  %55 = load i16, ptr %arrayidx19, align 2, !dbg !4326, !tbaa !1912
  %conv228 = sext i16 %55 to i32, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %conv228, metadata !4172, metadata !DIExpression()), !dbg !4223
  br label %if.end230, !dbg !4327

if.end230:                                        ; preds = %if.end125, %if.end216, %if.then222, %land.lhs.true146, %land.lhs.true140, %land.lhs.true135, %land.lhs.true130
  %bsatd.2 = phi i32 [ %45, %if.then222 ], [ %45, %if.end216 ], [ %add80, %land.lhs.true146 ], [ %add80, %land.lhs.true140 ], [ %add80, %land.lhs.true135 ], [ %add80, %land.lhs.true130 ], [ %add80, %if.end125 ], !dbg !4223
  %pmy.0 = phi i32 [ %conv228, %if.then222 ], [ %conv62, %if.end216 ], [ %conv62, %land.lhs.true146 ], [ %conv62, %land.lhs.true140 ], [ %conv62, %land.lhs.true135 ], [ %conv62, %land.lhs.true130 ], [ %conv62, %if.end125 ], !dbg !4223
  %pmx.0 = phi i32 [ %conv225, %if.then222 ], [ %conv59, %if.end216 ], [ %conv59, %land.lhs.true146 ], [ %conv59, %land.lhs.true140 ], [ %conv59, %land.lhs.true135 ], [ %conv59, %land.lhs.true130 ], [ %conv59, %if.end125 ], !dbg !4223
  %bmy.4 = phi i32 [ %conv62, %if.then222 ], [ %bmy.3, %if.end216 ], [ %conv20, %land.lhs.true146 ], [ %conv20, %land.lhs.true140 ], [ %conv20, %land.lhs.true135 ], [ %conv20, %land.lhs.true130 ], [ %conv20, %if.end125 ], !dbg !4223
  %bmx.4 = phi i32 [ %conv59, %if.then222 ], [ %bmx.3, %if.end216 ], [ %conv, %land.lhs.true146 ], [ %conv, %land.lhs.true140 ], [ %conv, %land.lhs.true135 ], [ %conv, %land.lhs.true130 ], [ %conv, %if.end125 ], !dbg !4223
  %bcost.4 = phi i64 [ %bcost.3, %if.then222 ], [ %bcost.3, %if.end216 ], [ %bcost.1, %land.lhs.true146 ], [ %bcost.1, %land.lhs.true140 ], [ %bcost.1, %land.lhs.true135 ], [ %bcost.1, %land.lhs.true130 ], [ %bcost.1, %if.end125 ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.4, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.4, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %pmx.0, metadata !4171, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %pmy.0, metadata !4172, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.2, metadata !4173, metadata !DIExpression()), !dbg !4223
  %mv_min_spel232 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, !dbg !4328
  %arrayidx233 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 20, i64 1, !dbg !4330
  %56 = load i32, ptr %arrayidx233, align 4, !dbg !4330, !tbaa !1859
  %add234 = add nsw i32 %56, 3, !dbg !4331
  %cmp235 = icmp slt i32 %bmy.4, %add234, !dbg !4332
  br i1 %cmp235, label %cleanup850, label %lor.lhs.false237, !dbg !4333

lor.lhs.false237:                                 ; preds = %if.end230
  %mv_max_spel239 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, !dbg !4334
  %arrayidx240 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !4335
  %57 = load i32, ptr %arrayidx240, align 4, !dbg !4335, !tbaa !1859
  %sub241 = add nsw i32 %57, -3, !dbg !4336
  %cmp242 = icmp sgt i32 %bmy.4, %sub241, !dbg !4337
  br i1 %cmp242, label %cleanup850, label %lor.lhs.false244, !dbg !4338

lor.lhs.false244:                                 ; preds = %lor.lhs.false237
  %58 = load i32, ptr %mv_min_spel232, align 8, !dbg !4339, !tbaa !1859
  %add248 = add nsw i32 %58, 3, !dbg !4340
  %cmp249 = icmp slt i32 %bmx.4, %add248, !dbg !4341
  br i1 %cmp249, label %cleanup850, label %lor.lhs.false251, !dbg !4342

lor.lhs.false251:                                 ; preds = %lor.lhs.false244
  %59 = load i32, ptr %mv_max_spel239, align 16, !dbg !4343, !tbaa !1859
  %sub255 = add nsw i32 %59, -3, !dbg !4344
  %cmp256 = icmp sgt i32 %bmx.4, %sub255, !dbg !4345
  br i1 %cmp256, label %cleanup850, label %for.cond.preheader, !dbg !4346

for.cond.preheader:                               ; preds = %lor.lhs.false251
  call void @llvm.dbg.value(metadata i64 %bcost.4, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.4, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.4, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 0, metadata !4192, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i32 %bsatd.2, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 -2, metadata !4175, metadata !DIExpression()), !dbg !4223
  %mc_chroma359 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2
  %arrayidx361 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 4
  %arrayidx363 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 9, i64 1
  %shr377 = ashr i32 %2, 1
  %shr378 = ashr i32 %3, 1
  %arrayidx382 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 5, i64 5
  br label %for.body, !dbg !4348

for.cond.cleanup:                                 ; preds = %for.inc
  %cmp420.not = icmp eq i32 %dir.4, -2, !dbg !4349
  br i1 %cmp420.not, label %if.end622, label %for.body427, !dbg !4350

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %bcost.51383 = phi i64 [ %bcost.4, %for.cond.preheader ], [ %bcost.7, %for.inc ]
  %bmx.51381 = phi i32 [ %bmx.4, %for.cond.preheader ], [ %bmx.7, %for.inc ]
  %bmy.51379 = phi i32 [ %bmy.4, %for.cond.preheader ], [ %bmy.7, %for.inc ]
  %bsatd.31377 = phi i32 [ %bsatd.2, %for.cond.preheader ], [ %bsatd.41355, %for.inc ]
  %dir.21375 = phi i32 [ -2, %for.cond.preheader ], [ %dir.4, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %bcost.51383, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.51381, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.51379, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4192, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i32 %bsatd.31377, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.21375, metadata !4175, metadata !DIExpression()), !dbg !4223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4351
  %arrayidx266 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %indvars.iv.next, !dbg !4351
  %60 = load i8, ptr %arrayidx266, align 2, !dbg !4351, !tbaa !1975
  %conv268 = sext i8 %60 to i32, !dbg !4351
  %add269 = add nsw i32 %bmx.4, %conv268, !dbg !4351
  %cmp270 = icmp eq i32 %add269, %pmx.0, !dbg !4351
  %arrayidx276 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %indvars.iv.next, i64 1
  %61 = load i8, ptr %arrayidx276, align 1, !dbg !4354, !tbaa !1975
  %conv277 = sext i8 %61 to i32, !dbg !4354
  %add278 = add nsw i32 %bmy.4, %conv277, !dbg !4354
  %cmp279 = icmp eq i32 %add278, %pmy.0, !dbg !4351
  %or.cond1436 = select i1 %cmp270, i1 %cmp279, i1 false, !dbg !4351
  br i1 %or.cond1436, label %for.inc, label %if.end334, !dbg !4351

if.end334:                                        ; preds = %for.body
  %62 = load ptr, ptr %mc, align 8, !dbg !4355, !tbaa !3487
  %63 = load i32, ptr %i_stride, align 8, !dbg !4355, !tbaa !1859
  %64 = load ptr, ptr %weight, align 8, !dbg !4355, !tbaa !1957
  tail call void %62(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %63, i32 noundef %add269, i32 noundef %add278, i32 noundef %2, i32 noundef %3, ptr noundef %64) #5, !dbg !4355
  %65 = load ptr, ptr %arrayidx71, align 8, !dbg !4355, !tbaa !1889
  %66 = load ptr, ptr %p_fenc, align 8, !dbg !4355, !tbaa !1889
  %call308 = tail call i32 %65(ptr noundef %66, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !4355
  %idxprom315 = sext i32 %add269 to i64, !dbg !4355
  %arrayidx316 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom315, !dbg !4355
  %67 = load i16, ptr %arrayidx316, align 2, !dbg !4355, !tbaa !1912
  %conv317 = zext i16 %67 to i32, !dbg !4355
  %add318 = add nsw i32 %call308, %conv317, !dbg !4355
  %idxprom325 = sext i32 %add278 to i64, !dbg !4355
  %arrayidx326 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom325, !dbg !4355
  %68 = load i16, ptr %arrayidx326, align 2, !dbg !4355, !tbaa !1912
  %conv327 = zext i16 %68 to i32, !dbg !4355
  %add328 = add nsw i32 %add318, %conv327, !dbg !4355
  call void @llvm.dbg.value(metadata i32 %add328, metadata !4174, metadata !DIExpression()), !dbg !4223
  %69 = tail call i32 @llvm.smin.i32(i32 %add328, i32 %bsatd.31377), !dbg !4355
  call void @llvm.dbg.value(metadata i32 %69, metadata !4173, metadata !DIExpression()), !dbg !4223
  %mul335 = mul nsw i32 %69, 17, !dbg !4357
  %div336 = sdiv i32 %mul335, 16, !dbg !4357
  %cmp337.not = icmp sgt i32 %add328, %div336, !dbg !4357
  br i1 %cmp337.not, label %for.inc, label %if.then339, !dbg !4358

if.then339:                                       ; preds = %if.end334
  call void @llvm.dbg.value(metadata i32 %add269, metadata !1941, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 %add278, metadata !1946, metadata !DIExpression()), !dbg !4359
  %and.i1302 = and i32 %add269, 65535, !dbg !4361
  %shl.i1303 = shl i32 %add278, 16, !dbg !4362
  %add.i1304 = or i32 %shl.i1303, %and.i1302, !dbg !4363
  store i32 %add.i1304, ptr %arrayidx4, align 4, !dbg !4364, !tbaa !1975
  %70 = load i32, ptr %m, align 16, !dbg !4365, !tbaa !1845
  %cmp355 = icmp slt i32 %70, 4, !dbg !4365
  br i1 %cmp355, label %if.then357, label %if.end400, !dbg !4364

if.then357:                                       ; preds = %if.then339
  %71 = load ptr, ptr %mc_chroma359, align 8, !dbg !4367, !tbaa !3330
  %72 = load ptr, ptr %arrayidx361, align 16, !dbg !4367, !tbaa !1889
  %73 = load i32, ptr %arrayidx363, align 4, !dbg !4367, !tbaa !1859
  %add376 = add nsw i32 %add278, %cond, !dbg !4367
  tail call void %71(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %72, i32 noundef %73, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4367
  %74 = load ptr, ptr %mc_chroma359, align 8, !dbg !4367, !tbaa !3330
  %75 = load ptr, ptr %arrayidx382, align 8, !dbg !4367, !tbaa !1889
  %76 = load i32, ptr %arrayidx363, align 4, !dbg !4367, !tbaa !1859
  tail call void %74(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %75, i32 noundef %76, i32 noundef %add269, i32 noundef %add376, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4367
  %.pre1425 = load i32, ptr %m, align 16, !dbg !4364, !tbaa !1845
  br label %if.end400, !dbg !4367

if.end400:                                        ; preds = %if.then357, %if.then339
  %77 = phi i32 [ %.pre1425, %if.then357 ], [ %70, %if.then339 ], !dbg !4364
  %call402 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %77) #5, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %call402, metadata !4194, metadata !DIExpression()), !dbg !4369
  %cmp403 = icmp ult i64 %call402, %bcost.51383, !dbg !4370
  br i1 %cmp403, label %if.then405, label %for.inc, !dbg !4364

if.then405:                                       ; preds = %if.end400
  call void @llvm.dbg.value(metadata i64 %call402, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add269, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add278, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4175, metadata !DIExpression()), !dbg !4223
  %78 = trunc i64 %indvars.iv to i32, !dbg !4372
  br label %for.inc, !dbg !4372

for.inc:                                          ; preds = %for.body, %if.end400, %if.then405, %if.end334
  %bsatd.41355 = phi i32 [ %69, %if.end334 ], [ %69, %if.then405 ], [ %69, %if.end400 ], [ %bsatd.31377, %for.body ]
  %dir.4 = phi i32 [ %dir.21375, %if.end334 ], [ %78, %if.then405 ], [ %dir.21375, %if.end400 ], [ %dir.21375, %for.body ], !dbg !4223
  %bmy.7 = phi i32 [ %bmy.51379, %if.end334 ], [ %add278, %if.then405 ], [ %bmy.51379, %if.end400 ], [ %bmy.51379, %for.body ], !dbg !4223
  %bmx.7 = phi i32 [ %bmx.51381, %if.end334 ], [ %add269, %if.then405 ], [ %bmx.51381, %if.end400 ], [ %bmx.51381, %for.body ], !dbg !4223
  %bcost.7 = phi i64 [ %bcost.51383, %if.end334 ], [ %call402, %if.then405 ], [ %bcost.51383, %if.end400 ], [ %bcost.51383, %for.body ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.7, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.7, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.7, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4192, metadata !DIExpression()), !dbg !4347
  call void @llvm.dbg.value(metadata i32 %bsatd.41355, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.4, metadata !4175, metadata !DIExpression()), !dbg !4223
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6, !dbg !4374
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !4348, !llvm.loop !4375

for.body427:                                      ; preds = %for.cond.cleanup, %cleanup
  %bcost.81401 = phi i64 [ %bcost.11, %cleanup ], [ %bcost.7, %for.cond.cleanup ]
  %bmx.81400 = phi i32 [ %bmx.11, %cleanup ], [ %bmx.7, %for.cond.cleanup ]
  %bmy.81399 = phi i32 [ %bmy.11, %cleanup ], [ %bmy.7, %for.cond.cleanup ]
  %i.01398 = phi i32 [ %inc619, %cleanup ], [ 1, %for.cond.cleanup ]
  %bsatd.51397 = phi i32 [ %bsatd.71361, %cleanup ], [ %bsatd.41355, %for.cond.cleanup ]
  %dir.51396 = phi i32 [ %dir.8, %cleanup ], [ %dir.4, %for.cond.cleanup ]
  call void @llvm.dbg.value(metadata i64 %bcost.81401, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.81400, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.81399, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i.01398, metadata !4200, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 %bsatd.51397, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.51396, metadata !4175, metadata !DIExpression()), !dbg !4223
  %add428 = add nsw i32 %dir.51396, 1, !dbg !4378
  %idxprom429 = sext i32 %add428 to i64, !dbg !4379
  %arrayidx430 = getelementptr inbounds [8 x i8], ptr @mod6m1, i64 0, i64 %idxprom429, !dbg !4379
  %79 = load i8, ptr %arrayidx430, align 1, !dbg !4379, !tbaa !1975
  call void @llvm.dbg.value(metadata i8 %79, metadata !4204, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4380
  %80 = load i32, ptr %arrayidx233, align 4, !dbg !4381, !tbaa !1859
  %add435 = add nsw i32 %80, 3, !dbg !4383
  %cmp436 = icmp slt i32 %bmy.81399, %add435, !dbg !4384
  br i1 %cmp436, label %if.end622, label %lor.lhs.false438, !dbg !4385

lor.lhs.false438:                                 ; preds = %for.body427
  %81 = load i32, ptr %arrayidx240, align 4, !dbg !4386, !tbaa !1859
  %sub442 = add nsw i32 %81, -3, !dbg !4387
  %cmp443 = icmp sgt i32 %bmy.81399, %sub442, !dbg !4388
  br i1 %cmp443, label %if.end622, label %for.body452.preheader, !dbg !4389

for.body452.preheader:                            ; preds = %lor.lhs.false438
  %82 = zext i8 %79 to i64, !dbg !4390
  br label %for.body452, !dbg !4390

for.body452:                                      ; preds = %for.body452.preheader, %for.inc611
  %indvars.iv1411 = phi i64 [ 0, %for.body452.preheader ], [ %indvars.iv.next1412, %for.inc611 ]
  %bcost.91394 = phi i64 [ %bcost.81401, %for.body452.preheader ], [ %bcost.11, %for.inc611 ]
  %bmx.91392 = phi i32 [ %bmx.81400, %for.body452.preheader ], [ %bmx.11, %for.inc611 ]
  %bmy.91388 = phi i32 [ %bmy.81399, %for.body452.preheader ], [ %bmy.11, %for.inc611 ]
  %bsatd.61387 = phi i32 [ %bsatd.51397, %for.body452.preheader ], [ %bsatd.71361, %for.inc611 ]
  %dir.61385 = phi i32 [ -2, %for.body452.preheader ], [ %dir.8, %for.inc611 ]
  call void @llvm.dbg.value(metadata i64 %bcost.91394, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.91392, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv1411, metadata !4207, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 %bmy.91388, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.61387, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.61385, metadata !4175, metadata !DIExpression()), !dbg !4223
  %83 = add nuw nsw i64 %indvars.iv1411, %82, !dbg !4392
  %arrayidx455 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %83, !dbg !4392
  %84 = load i8, ptr %arrayidx455, align 2, !dbg !4392, !tbaa !1975
  %conv457 = sext i8 %84 to i32, !dbg !4392
  %add458 = add nsw i32 %bmx.81400, %conv457, !dbg !4392
  %cmp459 = icmp eq i32 %add458, %pmx.0, !dbg !4392
  %arrayidx465 = getelementptr inbounds [8 x [2 x i8]], ptr @hex2, i64 0, i64 %83, i64 1
  %85 = load i8, ptr %arrayidx465, align 1, !dbg !4395, !tbaa !1975
  %conv466 = sext i8 %85 to i32, !dbg !4395
  %add467 = add nsw i32 %bmy.81399, %conv466, !dbg !4395
  %cmp468 = icmp eq i32 %add467, %pmy.0, !dbg !4392
  %or.cond1438 = select i1 %cmp459, i1 %cmp468, i1 false, !dbg !4392
  br i1 %or.cond1438, label %for.inc611, label %if.end523, !dbg !4392

if.end523:                                        ; preds = %for.body452
  %86 = load ptr, ptr %mc, align 8, !dbg !4396, !tbaa !3487
  %87 = load i32, ptr %i_stride, align 8, !dbg !4396, !tbaa !1859
  %88 = load ptr, ptr %weight, align 8, !dbg !4396, !tbaa !1957
  tail call void %86(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %87, i32 noundef %add458, i32 noundef %add467, i32 noundef %2, i32 noundef %3, ptr noundef %88) #5, !dbg !4396
  %89 = load ptr, ptr %arrayidx71, align 8, !dbg !4396, !tbaa !1889
  %90 = load ptr, ptr %p_fenc, align 8, !dbg !4396, !tbaa !1889
  %call497 = tail call i32 %89(ptr noundef %90, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !4396
  %idxprom504 = sext i32 %add458 to i64, !dbg !4396
  %arrayidx505 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom504, !dbg !4396
  %91 = load i16, ptr %arrayidx505, align 2, !dbg !4396, !tbaa !1912
  %conv506 = zext i16 %91 to i32, !dbg !4396
  %add507 = add nsw i32 %call497, %conv506, !dbg !4396
  %idxprom514 = sext i32 %add467 to i64, !dbg !4396
  %arrayidx515 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom514, !dbg !4396
  %92 = load i16, ptr %arrayidx515, align 2, !dbg !4396, !tbaa !1912
  %conv516 = zext i16 %92 to i32, !dbg !4396
  %add517 = add nsw i32 %add507, %conv516, !dbg !4396
  call void @llvm.dbg.value(metadata i32 %add517, metadata !4174, metadata !DIExpression()), !dbg !4223
  %93 = tail call i32 @llvm.smin.i32(i32 %add517, i32 %bsatd.61387), !dbg !4396
  call void @llvm.dbg.value(metadata i32 %93, metadata !4173, metadata !DIExpression()), !dbg !4223
  %mul524 = mul nsw i32 %93, 17, !dbg !4398
  %div525 = sdiv i32 %mul524, 16, !dbg !4398
  %cmp526.not = icmp sgt i32 %add517, %div525, !dbg !4398
  br i1 %cmp526.not, label %for.inc611, label %if.then528, !dbg !4399

if.then528:                                       ; preds = %if.end523
  call void @llvm.dbg.value(metadata i32 %add458, metadata !1941, metadata !DIExpression()), !dbg !4400
  call void @llvm.dbg.value(metadata i32 %add467, metadata !1946, metadata !DIExpression()), !dbg !4400
  %and.i1305 = and i32 %add458, 65535, !dbg !4402
  %shl.i1306 = shl i32 %add467, 16, !dbg !4403
  %add.i1307 = or i32 %shl.i1306, %and.i1305, !dbg !4404
  store i32 %add.i1307, ptr %arrayidx4, align 4, !dbg !4405, !tbaa !1975
  %94 = load i32, ptr %m, align 16, !dbg !4406, !tbaa !1845
  %cmp544 = icmp slt i32 %94, 4, !dbg !4406
  br i1 %cmp544, label %if.then546, label %if.end589, !dbg !4405

if.then546:                                       ; preds = %if.then528
  %95 = load ptr, ptr %mc_chroma359, align 8, !dbg !4408, !tbaa !3330
  %96 = load ptr, ptr %arrayidx361, align 16, !dbg !4408, !tbaa !1889
  %97 = load i32, ptr %arrayidx363, align 4, !dbg !4408, !tbaa !1859
  %add565 = add nsw i32 %add467, %cond, !dbg !4408
  tail call void %95(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %96, i32 noundef %97, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4408
  %98 = load ptr, ptr %mc_chroma359, align 8, !dbg !4408, !tbaa !3330
  %99 = load ptr, ptr %arrayidx382, align 8, !dbg !4408, !tbaa !1889
  %100 = load i32, ptr %arrayidx363, align 4, !dbg !4408, !tbaa !1859
  tail call void %98(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %99, i32 noundef %100, i32 noundef %add458, i32 noundef %add565, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4408
  %.pre1427 = load i32, ptr %m, align 16, !dbg !4405, !tbaa !1845
  br label %if.end589, !dbg !4408

if.end589:                                        ; preds = %if.then546, %if.then528
  %101 = phi i32 [ %.pre1427, %if.then546 ], [ %94, %if.then528 ], !dbg !4405
  %call591 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %101) #5, !dbg !4405
  call void @llvm.dbg.value(metadata i64 %call591, metadata !4209, metadata !DIExpression()), !dbg !4410
  %cmp592 = icmp ult i64 %call591, %bcost.91394, !dbg !4411
  br i1 %cmp592, label %if.then594, label %for.inc611, !dbg !4405

if.then594:                                       ; preds = %if.end589
  call void @llvm.dbg.value(metadata i64 %call591, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add458, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add467, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %83, metadata !4175, metadata !DIExpression(DW_OP_plus_uconst, 4294967295, DW_OP_stack_value)), !dbg !4223
  %102 = trunc i64 %83 to i32, !dbg !4413
  %103 = add i32 %102, -1, !dbg !4413
  br label %for.inc611, !dbg !4413

for.inc611:                                       ; preds = %for.body452, %if.end589, %if.then594, %if.end523
  %bsatd.71361 = phi i32 [ %93, %if.end523 ], [ %93, %if.then594 ], [ %93, %if.end589 ], [ %bsatd.61387, %for.body452 ]
  %dir.8 = phi i32 [ %dir.61385, %if.end523 ], [ %103, %if.then594 ], [ %dir.61385, %if.end589 ], [ %dir.61385, %for.body452 ], !dbg !4380
  %bmy.11 = phi i32 [ %bmy.91388, %if.end523 ], [ %add467, %if.then594 ], [ %bmy.91388, %if.end589 ], [ %bmy.91388, %for.body452 ], !dbg !4223
  %bmx.11 = phi i32 [ %bmx.91392, %if.end523 ], [ %add458, %if.then594 ], [ %bmx.91392, %if.end589 ], [ %bmx.91392, %for.body452 ], !dbg !4223
  %bcost.11 = phi i64 [ %bcost.91394, %if.end523 ], [ %call591, %if.then594 ], [ %bcost.91394, %if.end589 ], [ %bcost.91394, %for.body452 ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.11, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.11, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.11, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.8, metadata !4175, metadata !DIExpression()), !dbg !4223
  %indvars.iv.next1412 = add nuw nsw i64 %indvars.iv1411, 1, !dbg !4415
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1412, metadata !4207, metadata !DIExpression()), !dbg !4391
  call void @llvm.dbg.value(metadata i32 %bsatd.71361, metadata !4173, metadata !DIExpression()), !dbg !4223
  %exitcond1417.not = icmp eq i64 %indvars.iv.next1412, 3, !dbg !4416
  br i1 %exitcond1417.not, label %cleanup, label %for.body452, !dbg !4390, !llvm.loop !4417

cleanup:                                          ; preds = %for.inc611
  %cmp614.not = icmp eq i32 %dir.8, -2, !dbg !4419
  call void @llvm.dbg.value(metadata i64 %bcost.11, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.11, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.11, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.71361, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.8, metadata !4175, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i.01398, metadata !4200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4377
  %inc619 = add nuw nsw i32 %i.01398, 1
  %exitcond1418.not = icmp eq i32 %inc619, 10
  %or.cond1437 = select i1 %cmp614.not, i1 true, i1 %exitcond1418.not
  call void @llvm.dbg.value(metadata i32 %inc619, metadata !4200, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64 %bcost.11, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.11, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.11, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %i.01398, metadata !4200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4377
  call void @llvm.dbg.value(metadata i32 %bsatd.71361, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %dir.8, metadata !4175, metadata !DIExpression()), !dbg !4223
  br i1 %or.cond1437, label %if.end622, label %for.body427, !llvm.loop !4421

if.end622:                                        ; preds = %for.body427, %lor.lhs.false438, %cleanup, %for.cond.cleanup
  %bsatd.10 = phi i32 [ %bsatd.41355, %for.cond.cleanup ], [ %bsatd.51397, %for.body427 ], [ %bsatd.51397, %lor.lhs.false438 ], [ %bsatd.71361, %cleanup ], !dbg !4424
  %bmy.14 = phi i32 [ %bmy.7, %for.cond.cleanup ], [ %bmy.81399, %for.body427 ], [ %bmy.81399, %lor.lhs.false438 ], [ %bmy.11, %cleanup ], !dbg !4319
  %bmx.14 = phi i32 [ %bmx.7, %for.cond.cleanup ], [ %bmx.81400, %for.body427 ], [ %bmx.81400, %lor.lhs.false438 ], [ %bmx.11, %cleanup ], !dbg !4319
  %bcost.14 = phi i64 [ %bcost.7, %for.cond.cleanup ], [ %bcost.81401, %for.body427 ], [ %bcost.81401, %lor.lhs.false438 ], [ %bcost.11, %cleanup ], !dbg !4319
  call void @llvm.dbg.value(metadata i64 %bcost.14, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.14, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.14, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.10, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 undef, metadata !4175, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmx.14, metadata !4169, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.14, metadata !4170, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 0, metadata !4215, metadata !DIExpression()), !dbg !4426
  br label %for.body628, !dbg !4427

for.cond.cleanup627:                              ; preds = %for.inc785
  %conv789 = trunc i64 %bcost.17 to i32, !dbg !4428
  %cost790 = getelementptr inbounds %struct.x264_me_t, ptr %m, i64 0, i32 12, !dbg !4429
  store i32 %conv789, ptr %cost790, align 8, !dbg !4430, !tbaa !3108
  %conv791 = trunc i32 %bmx.17 to i16, !dbg !4431
  store i16 %conv791, ptr %mv16, align 4, !dbg !4432, !tbaa !1912
  %conv794 = trunc i32 %bmy.17 to i16, !dbg !4433
  store i16 %conv794, ptr %arrayidx19, align 2, !dbg !4434, !tbaa !1912
  %arrayidx798 = getelementptr inbounds [16 x i8], ptr @block_idx_x, i64 0, i64 %idxprom1, !dbg !4435
  %104 = load i8, ptr %arrayidx798, align 1, !dbg !4435, !tbaa !1975
  %conv799 = zext i8 %104 to i64, !dbg !4435
  %arrayidx801 = getelementptr inbounds [16 x i8], ptr @block_idx_y, i64 0, i64 %idxprom1, !dbg !4436
  %105 = load i8, ptr %arrayidx801, align 1, !dbg !4436, !tbaa !1975
  %conv802 = zext i8 %105 to i64, !dbg !4436
  %shr803 = ashr i32 %2, 2, !dbg !4437
  %shr804 = ashr i32 %3, 2, !dbg !4438
  call void @llvm.dbg.value(metadata i32 %bmx.17, metadata !1941, metadata !DIExpression()), !dbg !4439
  call void @llvm.dbg.value(metadata i32 %bmy.17, metadata !1946, metadata !DIExpression()), !dbg !4439
  %and.i1308 = and i32 %bmx.17, 65535, !dbg !4441
  %shl.i1309 = shl i32 %bmy.17, 16, !dbg !4442
  %add.i1310 = or i32 %and.i1308, %shl.i1309, !dbg !4443
  call void @llvm.dbg.value(metadata ptr %h, metadata !3833, metadata !DIExpression()) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i8 %104, metadata !3839, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i8 %105, metadata !3840, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %shr803, metadata !3841, metadata !DIExpression()) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %shr804, metadata !3842, metadata !DIExpression()) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !3843, metadata !DIExpression()) #5, !dbg !4444
  call void @llvm.dbg.value(metadata i32 %add.i1310, metadata !3844, metadata !DIExpression()) #5, !dbg !4444
  %add.i1311 = add nuw nsw i64 %conv799, 12, !dbg !4446
  %mul.i = shl nuw nsw i64 %conv802, 3, !dbg !4447
  %add2.i = add nuw nsw i64 %add.i1311, %mul.i, !dbg !4448
  %arrayidx4.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 %add2.i, !dbg !4449
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3845, metadata !DIExpression()) #5, !dbg !4444
  %mul5.i = and i32 %2, -4, !dbg !4450
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3853, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %mul5.i, metadata !3858, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %shr804, metadata !3859, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 4, metadata !3860, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %add.i1310, metadata !3861, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i, metadata !3862, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %add.i1310, metadata !3863, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %add.i1310, metadata !3864, metadata !DIExpression()) #5, !dbg !4451
  %conv15.i.i = zext i32 %add.i1310 to i64, !dbg !4453
  %add.i.i = mul nuw i64 %conv15.i.i, 4294967297, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %add.i.i, metadata !3865, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata i32 32, metadata !3860, metadata !DIExpression()) #5, !dbg !4451
  %106 = add i32 %mul5.i, -2, !dbg !4455
  %107 = tail call i32 @llvm.fshl.i32(i32 2, i32 %106, i32 31) #5, !dbg !4455
  switch i32 %107, label %x264_macroblock_cache_mv.exit [
    i32 7, label %do.body.i.i
    i32 1, label %if.then39.i.i
    i32 3, label %if.then63.i.i
  ], !dbg !4455

if.then39.i.i:                                    ; preds = %for.cond.cleanup627
  store i32 %add.i1310, ptr %arrayidx4.i, align 4, !dbg !4456, !tbaa !1975
  %cmp43.i.i = icmp eq i32 %shr804, 1, !dbg !4457
  br i1 %cmp43.i.i, label %x264_macroblock_cache_mv.exit, label %if.end46.i.i, !dbg !4458

if.end46.i.i:                                     ; preds = %if.then39.i.i
  %add.ptr49.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !4459
  store i32 %add.i1310, ptr %add.ptr49.i.i, align 4, !dbg !4460, !tbaa !1975
  %cmp50.i.i = icmp eq i32 %shr804, 2, !dbg !4461
  br i1 %cmp50.i.i, label %x264_macroblock_cache_mv.exit, label %if.end53.i.i, !dbg !4462

if.end53.i.i:                                     ; preds = %if.end46.i.i
  %add.ptr56.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !4463
  store i32 %add.i1310, ptr %add.ptr56.i.i, align 4, !dbg !4464, !tbaa !1975
  %add.ptr59.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !4465
  store i32 %add.i1310, ptr %add.ptr59.i.i, align 4, !dbg !4466, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit, !dbg !4467

if.then63.i.i:                                    ; preds = %for.cond.cleanup627
  store i64 %add.i.i, ptr %arrayidx4.i, align 8, !dbg !4468, !tbaa !1975
  %cmp67.i.i = icmp eq i32 %shr804, 1, !dbg !4469
  br i1 %cmp67.i.i, label %x264_macroblock_cache_mv.exit, label %if.end70.i.i, !dbg !4470

if.end70.i.i:                                     ; preds = %if.then63.i.i
  %add.ptr73.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 32, !dbg !4471
  store i64 %add.i.i, ptr %add.ptr73.i.i, align 8, !dbg !4472, !tbaa !1975
  %cmp74.i.i = icmp eq i32 %shr804, 2, !dbg !4473
  br i1 %cmp74.i.i, label %x264_macroblock_cache_mv.exit, label %if.end77.i.i, !dbg !4474

if.end77.i.i:                                     ; preds = %if.end70.i.i
  %add.ptr80.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 64, !dbg !4475
  store i64 %add.i.i, ptr %add.ptr80.i.i, align 8, !dbg !4476, !tbaa !1975
  %add.ptr83.i.i = getelementptr inbounds i8, ptr %arrayidx4.i, i64 96, !dbg !4477
  store i64 %add.i.i, ptr %add.ptr83.i.i, align 8, !dbg !4478, !tbaa !1975
  br label %x264_macroblock_cache_mv.exit, !dbg !4479

do.body.i.i:                                      ; preds = %for.cond.cleanup627, %do.body.i.i
  %d.0.i.i = phi ptr [ %add.ptr106.i.i, %do.body.i.i ], [ %arrayidx4.i, %for.cond.cleanup627 ], !dbg !4451
  %h.addr.0.i.i = phi i32 [ %sub.i.i, %do.body.i.i ], [ %shr804, %for.cond.cleanup627 ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i, metadata !3859, metadata !DIExpression()) #5, !dbg !4451
  call void @llvm.dbg.value(metadata ptr %d.0.i.i, metadata !3862, metadata !DIExpression()) #5, !dbg !4451
  store i64 %add.i.i, ptr %d.0.i.i, align 8, !dbg !4480, !tbaa !1975
  %add.ptr95.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 8, !dbg !4481
  store i64 %add.i.i, ptr %add.ptr95.i.i, align 8, !dbg !4482, !tbaa !1975
  %add.ptr98.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 32, !dbg !4483
  store i64 %add.i.i, ptr %add.ptr98.i.i, align 8, !dbg !4484, !tbaa !1975
  %add.ptr103.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 40, !dbg !4485
  store i64 %add.i.i, ptr %add.ptr103.i.i, align 8, !dbg !4486, !tbaa !1975
  %sub.i.i = add nsw i32 %h.addr.0.i.i, -2, !dbg !4487
  call void @llvm.dbg.value(metadata i32 %sub.i.i, metadata !3859, metadata !DIExpression()) #5, !dbg !4451
  %add.ptr106.i.i = getelementptr inbounds i8, ptr %d.0.i.i, i64 64, !dbg !4488
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i, metadata !3862, metadata !DIExpression()) #5, !dbg !4451
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0, !dbg !4489
  br i1 %tobool.not.i.i, label %x264_macroblock_cache_mv.exit, label %do.body.i.i, !dbg !4489, !llvm.loop !4490

x264_macroblock_cache_mv.exit:                    ; preds = %do.body.i.i, %for.cond.cleanup627, %if.then39.i.i, %if.end46.i.i, %if.end53.i.i, %if.then63.i.i, %if.end70.i.i, %if.end77.i.i
  %108 = load i16, ptr %mvp57, align 16, !dbg !4493, !tbaa !1912
  %conv808 = sext i16 %108 to i32, !dbg !4493
  %sub809 = sub nsw i32 %bmx.17, %conv808, !dbg !4493
  %109 = tail call i32 @llvm.abs.i32(i32 %sub809, i1 true), !dbg !4493
  %110 = tail call i32 @llvm.umin.i32(i32 %109, i32 33), !dbg !4493
  %111 = load i16, ptr %arrayidx61, align 2, !dbg !4494, !tbaa !1912
  %conv824 = sext i16 %111 to i32, !dbg !4494
  %sub825 = sub nsw i32 %bmy.17, %conv824, !dbg !4494
  %112 = tail call i32 @llvm.abs.i32(i32 %sub825, i1 true), !dbg !4494
  %113 = tail call i32 @llvm.umin.i32(i32 %112, i32 33), !dbg !4494
  call void @llvm.dbg.value(metadata i32 %110, metadata !3926, metadata !DIExpression()), !dbg !4495
  call void @llvm.dbg.value(metadata i32 %113, metadata !3929, metadata !DIExpression()), !dbg !4495
  %shl.i1312 = shl nuw nsw i32 %113, 8, !dbg !4497
  %add.i1313 = or i32 %shl.i1312, %110, !dbg !4498
  %conv839 = trunc i32 %add.i1313 to i16, !dbg !4499
  call void @llvm.dbg.value(metadata i16 %conv839, metadata !4177, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata ptr %h, metadata !3935, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i8 %104, metadata !3940, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i8 %105, metadata !3941, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4500
  call void @llvm.dbg.value(metadata i32 %shr803, metadata !3942, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 %shr804, metadata !3943, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !3944, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata i16 %conv839, metadata !3945, metadata !DIExpression()), !dbg !4500
  %arrayidx4.i1319 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %idxprom, i64 %add2.i, !dbg !4502
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1319, metadata !3946, metadata !DIExpression()), !dbg !4500
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1319, metadata !3853, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %shr803, metadata !3858, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_stack_value)) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %shr804, metadata !3859, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 2, metadata !3860, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %add.i1313, metadata !3861, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i1319, metadata !3862, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i16 %conv839, metadata !3863, metadata !DIExpression()) #5, !dbg !4503
  %mul8.i.i = mul nuw nsw i32 %add.i1313, 65537, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %mul8.i.i, metadata !3864, metadata !DIExpression()) #5, !dbg !4503
  %conv15.i.i1320 = zext i32 %mul8.i.i to i64, !dbg !4506
  %add.i.i1321 = mul nuw nsw i64 %conv15.i.i1320, 4294967297, !dbg !4507
  call void @llvm.dbg.value(metadata i64 %add.i.i1321, metadata !3865, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata i32 16, metadata !3860, metadata !DIExpression()) #5, !dbg !4503
  %114 = add i32 %shr803, 2147483647, !dbg !4508
  %115 = and i32 %114, 2147483647, !dbg !4508
  switch i32 %115, label %cleanup850 [
    i32 0, label %if.then.i.i
    i32 1, label %if.then39.i.i1323
    i32 3, label %if.then63.i.i1331
    i32 7, label %do.body.i.i1346
  ], !dbg !4508

if.then.i.i:                                      ; preds = %x264_macroblock_cache_mv.exit
  store i16 %conv839, ptr %arrayidx4.i1319, align 2, !dbg !4509, !tbaa !1975
  %cmp21.i.i = icmp eq i32 %shr804, 1, !dbg !4510
  br i1 %cmp21.i.i, label %cleanup850, label %if.end.i.i, !dbg !4511

if.end.i.i:                                       ; preds = %if.then.i.i
  %add.ptr26.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 16, !dbg !4512
  store i16 %conv839, ptr %add.ptr26.i.i, align 2, !dbg !4513, !tbaa !1975
  %cmp27.i.i = icmp eq i32 %shr804, 2, !dbg !4514
  br i1 %cmp27.i.i, label %cleanup850, label %if.end30.i.i, !dbg !4515

if.end30.i.i:                                     ; preds = %if.end.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 32, !dbg !4516
  store i16 %conv839, ptr %add.ptr33.i.i, align 2, !dbg !4517, !tbaa !1975
  %add.ptr36.i.i = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 48, !dbg !4518
  store i16 %conv839, ptr %add.ptr36.i.i, align 2, !dbg !4519, !tbaa !1975
  br label %cleanup850, !dbg !4520

if.then39.i.i1323:                                ; preds = %x264_macroblock_cache_mv.exit
  store i32 %mul8.i.i, ptr %arrayidx4.i1319, align 4, !dbg !4521, !tbaa !1975
  %cmp43.i.i1322 = icmp eq i32 %shr804, 1, !dbg !4522
  br i1 %cmp43.i.i1322, label %cleanup850, label %if.end46.i.i1326, !dbg !4523

if.end46.i.i1326:                                 ; preds = %if.then39.i.i1323
  %add.ptr49.i.i1324 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 16, !dbg !4524
  store i32 %mul8.i.i, ptr %add.ptr49.i.i1324, align 4, !dbg !4525, !tbaa !1975
  %cmp50.i.i1325 = icmp eq i32 %shr804, 2, !dbg !4526
  br i1 %cmp50.i.i1325, label %cleanup850, label %if.end53.i.i1329, !dbg !4527

if.end53.i.i1329:                                 ; preds = %if.end46.i.i1326
  %add.ptr56.i.i1327 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 32, !dbg !4528
  store i32 %mul8.i.i, ptr %add.ptr56.i.i1327, align 4, !dbg !4529, !tbaa !1975
  %add.ptr59.i.i1328 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 48, !dbg !4530
  store i32 %mul8.i.i, ptr %add.ptr59.i.i1328, align 4, !dbg !4531, !tbaa !1975
  br label %cleanup850, !dbg !4532

if.then63.i.i1331:                                ; preds = %x264_macroblock_cache_mv.exit
  store i64 %add.i.i1321, ptr %arrayidx4.i1319, align 8, !dbg !4533, !tbaa !1975
  %cmp67.i.i1330 = icmp eq i32 %shr804, 1, !dbg !4534
  br i1 %cmp67.i.i1330, label %cleanup850, label %if.end70.i.i1334, !dbg !4535

if.end70.i.i1334:                                 ; preds = %if.then63.i.i1331
  %add.ptr73.i.i1332 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 16, !dbg !4536
  store i64 %add.i.i1321, ptr %add.ptr73.i.i1332, align 8, !dbg !4537, !tbaa !1975
  %cmp74.i.i1333 = icmp eq i32 %shr804, 2, !dbg !4538
  br i1 %cmp74.i.i1333, label %cleanup850, label %if.end77.i.i1337, !dbg !4539

if.end77.i.i1337:                                 ; preds = %if.end70.i.i1334
  %add.ptr80.i.i1335 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 32, !dbg !4540
  store i64 %add.i.i1321, ptr %add.ptr80.i.i1335, align 8, !dbg !4541, !tbaa !1975
  %add.ptr83.i.i1336 = getelementptr inbounds i8, ptr %arrayidx4.i1319, i64 48, !dbg !4542
  store i64 %add.i.i1321, ptr %add.ptr83.i.i1336, align 8, !dbg !4543, !tbaa !1975
  br label %cleanup850, !dbg !4544

do.body.i.i1346:                                  ; preds = %x264_macroblock_cache_mv.exit, %do.body.i.i1346
  %d.0.i.i1338 = phi ptr [ %add.ptr106.i.i1344, %do.body.i.i1346 ], [ %arrayidx4.i1319, %x264_macroblock_cache_mv.exit ], !dbg !4503
  %h.addr.0.i.i1339 = phi i32 [ %sub.i.i1343, %do.body.i.i1346 ], [ %shr804, %x264_macroblock_cache_mv.exit ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i1339, metadata !3859, metadata !DIExpression()) #5, !dbg !4503
  call void @llvm.dbg.value(metadata ptr %d.0.i.i1338, metadata !3862, metadata !DIExpression()) #5, !dbg !4503
  store i64 %add.i.i1321, ptr %d.0.i.i1338, align 8, !dbg !4545, !tbaa !1975
  %add.ptr95.i.i1340 = getelementptr inbounds i8, ptr %d.0.i.i1338, i64 8, !dbg !4546
  store i64 %add.i.i1321, ptr %add.ptr95.i.i1340, align 8, !dbg !4547, !tbaa !1975
  %add.ptr98.i.i1341 = getelementptr inbounds i8, ptr %d.0.i.i1338, i64 16, !dbg !4548
  store i64 %add.i.i1321, ptr %add.ptr98.i.i1341, align 8, !dbg !4549, !tbaa !1975
  %add.ptr103.i.i1342 = getelementptr inbounds i8, ptr %d.0.i.i1338, i64 24, !dbg !4550
  store i64 %add.i.i1321, ptr %add.ptr103.i.i1342, align 8, !dbg !4551, !tbaa !1975
  %sub.i.i1343 = add nsw i32 %h.addr.0.i.i1339, -2, !dbg !4552
  call void @llvm.dbg.value(metadata i32 %sub.i.i1343, metadata !3859, metadata !DIExpression()) #5, !dbg !4503
  %add.ptr106.i.i1344 = getelementptr inbounds i8, ptr %d.0.i.i1338, i64 32, !dbg !4553
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i1344, metadata !3862, metadata !DIExpression()) #5, !dbg !4503
  %tobool.not.i.i1345 = icmp eq i32 %sub.i.i1343, 0, !dbg !4554
  br i1 %tobool.not.i.i1345, label %cleanup850, label %do.body.i.i1346, !dbg !4554, !llvm.loop !4555

for.body628:                                      ; preds = %if.end622, %for.inc785
  %indvars.iv1419 = phi i64 [ 0, %if.end622 ], [ %indvars.iv.next1420, %for.inc785 ]
  %bcost.151408 = phi i64 [ %bcost.14, %if.end622 ], [ %bcost.17, %for.inc785 ]
  %bmx.151405 = phi i32 [ %bmx.14, %if.end622 ], [ %bmx.17, %for.inc785 ]
  %bmy.151403 = phi i32 [ %bmy.14, %if.end622 ], [ %bmy.17, %for.inc785 ]
  %bsatd.111402 = phi i32 [ %bsatd.10, %if.end622 ], [ %bsatd.121373, %for.inc785 ]
  call void @llvm.dbg.value(metadata i64 %bcost.151408, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv1419, metadata !4215, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %bmx.151405, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.151403, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.111402, metadata !4173, metadata !DIExpression()), !dbg !4223
  %indvars.iv.next1420 = add nuw nsw i64 %indvars.iv1419, 1, !dbg !4558
  %arrayidx631 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv.next1420, !dbg !4558
  %116 = load i8, ptr %arrayidx631, align 2, !dbg !4558, !tbaa !1975
  %conv633 = sext i8 %116 to i32, !dbg !4558
  %add634 = add nsw i32 %bmx.14, %conv633, !dbg !4558
  %cmp635 = icmp eq i32 %add634, %pmx.0, !dbg !4558
  %arrayidx641 = getelementptr inbounds [9 x [2 x i8]], ptr @square1, i64 0, i64 %indvars.iv.next1420, i64 1
  %117 = load i8, ptr %arrayidx641, align 1, !dbg !4561, !tbaa !1975
  %conv642 = sext i8 %117 to i32, !dbg !4561
  %add643 = add nsw i32 %bmy.14, %conv642, !dbg !4561
  %cmp644 = icmp eq i32 %add643, %pmy.0, !dbg !4558
  %or.cond1439 = select i1 %cmp635, i1 %cmp644, i1 false, !dbg !4558
  br i1 %or.cond1439, label %for.inc785, label %if.end699, !dbg !4558

if.end699:                                        ; preds = %for.body628
  %118 = load ptr, ptr %mc, align 8, !dbg !4562, !tbaa !3487
  %119 = load i32, ptr %i_stride, align 8, !dbg !4562, !tbaa !1859
  %120 = load ptr, ptr %weight, align 8, !dbg !4562, !tbaa !1957
  tail call void %118(ptr noundef %arrayidx26, i32 noundef 32, ptr noundef nonnull %p_fref, i32 noundef %119, i32 noundef %add634, i32 noundef %add643, i32 noundef %2, i32 noundef %3, ptr noundef %120) #5, !dbg !4562
  %121 = load ptr, ptr %arrayidx71, align 8, !dbg !4562, !tbaa !1889
  %122 = load ptr, ptr %p_fenc, align 8, !dbg !4562, !tbaa !1889
  %call673 = tail call i32 %121(ptr noundef %122, i32 noundef 16, ptr noundef %arrayidx26, i32 noundef 32) #5, !dbg !4562
  %idxprom680 = sext i32 %add634 to i64, !dbg !4562
  %arrayidx681 = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom680, !dbg !4562
  %123 = load i16, ptr %arrayidx681, align 2, !dbg !4562, !tbaa !1912
  %conv682 = zext i16 %123 to i32, !dbg !4562
  %add683 = add nsw i32 %call673, %conv682, !dbg !4562
  %idxprom690 = sext i32 %add643 to i64, !dbg !4562
  %arrayidx691 = getelementptr inbounds i16, ptr %add.ptr66, i64 %idxprom690, !dbg !4562
  %124 = load i16, ptr %arrayidx691, align 2, !dbg !4562, !tbaa !1912
  %conv692 = zext i16 %124 to i32, !dbg !4562
  %add693 = add nsw i32 %add683, %conv692, !dbg !4562
  call void @llvm.dbg.value(metadata i32 %add693, metadata !4174, metadata !DIExpression()), !dbg !4223
  %125 = tail call i32 @llvm.smin.i32(i32 %add693, i32 %bsatd.111402), !dbg !4562
  call void @llvm.dbg.value(metadata i32 %125, metadata !4173, metadata !DIExpression()), !dbg !4223
  %mul700 = mul nsw i32 %125, 17, !dbg !4564
  %div701 = sdiv i32 %mul700, 16, !dbg !4564
  %cmp702.not = icmp sgt i32 %add693, %div701, !dbg !4564
  br i1 %cmp702.not, label %for.inc785, label %if.then704, !dbg !4565

if.then704:                                       ; preds = %if.end699
  call void @llvm.dbg.value(metadata i32 %add634, metadata !1941, metadata !DIExpression()), !dbg !4566
  call void @llvm.dbg.value(metadata i32 %add643, metadata !1946, metadata !DIExpression()), !dbg !4566
  %and.i1347 = and i32 %add634, 65535, !dbg !4568
  %shl.i1348 = shl i32 %add643, 16, !dbg !4569
  %add.i1349 = or i32 %shl.i1348, %and.i1347, !dbg !4570
  store i32 %add.i1349, ptr %arrayidx4, align 4, !dbg !4571, !tbaa !1975
  %126 = load i32, ptr %m, align 16, !dbg !4572, !tbaa !1845
  %cmp720 = icmp slt i32 %126, 4, !dbg !4572
  br i1 %cmp720, label %if.then722, label %if.end765, !dbg !4571

if.then722:                                       ; preds = %if.then704
  %127 = load ptr, ptr %mc_chroma359, align 8, !dbg !4574, !tbaa !3330
  %128 = load ptr, ptr %arrayidx361, align 16, !dbg !4574, !tbaa !1889
  %129 = load i32, ptr %arrayidx363, align 4, !dbg !4574, !tbaa !1859
  %add741 = add nsw i32 %add643, %cond, !dbg !4574
  tail call void %127(ptr noundef %arrayidx37, i32 noundef 32, ptr noundef %128, i32 noundef %129, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4574
  %130 = load ptr, ptr %mc_chroma359, align 8, !dbg !4574, !tbaa !3330
  %131 = load ptr, ptr %arrayidx382, align 8, !dbg !4574, !tbaa !1889
  %132 = load i32, ptr %arrayidx363, align 4, !dbg !4574, !tbaa !1859
  tail call void %130(ptr noundef %arrayidx49, i32 noundef 32, ptr noundef %131, i32 noundef %132, i32 noundef %add634, i32 noundef %add741, i32 noundef %shr377, i32 noundef %shr378) #5, !dbg !4574
  %.pre1429 = load i32, ptr %m, align 16, !dbg !4571, !tbaa !1845
  br label %if.end765, !dbg !4574

if.end765:                                        ; preds = %if.then722, %if.then704
  %133 = phi i32 [ %.pre1429, %if.then722 ], [ %126, %if.then704 ], !dbg !4571
  %call767 = tail call i64 @x264_rd_cost_part(ptr noundef nonnull %h, i32 noundef %i_lambda2, i32 noundef %i4, i32 noundef %133) #5, !dbg !4571
  call void @llvm.dbg.value(metadata i64 %call767, metadata !4217, metadata !DIExpression()), !dbg !4576
  %cmp768 = icmp ult i64 %call767, %bcost.151408, !dbg !4577
  br i1 %cmp768, label %if.then770, label %for.inc785, !dbg !4571

if.then770:                                       ; preds = %if.end765
  call void @llvm.dbg.value(metadata i64 %call767, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add634, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %add643, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 undef, metadata !4175, metadata !DIExpression()), !dbg !4223
  br label %for.inc785, !dbg !4579

for.inc785:                                       ; preds = %for.body628, %if.end765, %if.then770, %if.end699
  %bsatd.121373 = phi i32 [ %125, %if.end699 ], [ %125, %if.then770 ], [ %125, %if.end765 ], [ %bsatd.111402, %for.body628 ]
  %bmy.17 = phi i32 [ %bmy.151403, %if.end699 ], [ %add643, %if.then770 ], [ %bmy.151403, %if.end765 ], [ %bmy.151403, %for.body628 ], !dbg !4223
  %bmx.17 = phi i32 [ %bmx.151405, %if.end699 ], [ %add634, %if.then770 ], [ %bmx.151405, %if.end765 ], [ %bmx.151405, %for.body628 ], !dbg !4223
  %bcost.17 = phi i64 [ %bcost.151408, %if.end699 ], [ %call767, %if.then770 ], [ %bcost.151408, %if.end765 ], [ %bcost.151408, %for.body628 ], !dbg !4223
  call void @llvm.dbg.value(metadata i64 %bcost.17, metadata !4166, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1420, metadata !4215, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %bmx.17, metadata !4167, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bmy.17, metadata !4168, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 %bsatd.121373, metadata !4173, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i32 undef, metadata !4175, metadata !DIExpression()), !dbg !4223
  %exitcond1422.not = icmp eq i64 %indvars.iv.next1420, 8, !dbg !4581
  br i1 %exitcond1422.not, label %for.cond.cleanup627, label %for.body628, !dbg !4427, !llvm.loop !4582

cleanup850:                                       ; preds = %do.body.i.i1346, %if.end77.i.i1337, %if.end70.i.i1334, %if.then63.i.i1331, %if.end53.i.i1329, %if.end46.i.i1326, %if.then39.i.i1323, %if.end30.i.i, %if.end.i.i, %if.then.i.i, %x264_macroblock_cache_mv.exit, %if.end230, %lor.lhs.false237, %lor.lhs.false244, %lor.lhs.false251
  store i32 0, ptr %b_skip_mc, align 4, !dbg !4223, !tbaa !4146
  ret void, !dbg !4584
}

declare !dbg !4585 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4589 i64 @x264_rd_cost_part(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1836, !1837, !1838, !1839, !1840, !1841}
!llvm.ident = !{!1842}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_pixel_size", scope: !2, file: !6, line: 47, type: !1830, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !19, globals: !80, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/me.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "f207a98fe290f3dc3c9af0aa958dfc24")
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
!19 = !{!20, !44, !57, !73, !62}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !22, line: 89, baseType: !23)
!22 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 89, size: 32, elements: !24)
!24 = !{!25, !30, !37}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !23, file: !22, line: 89, baseType: !26, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !27, line: 26, baseType: !28)
!27 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !29, line: 42, baseType: !7)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!30 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !23, file: !22, line: 89, baseType: !31, size: 32)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !35)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !27, line: 25, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !29, line: 40, baseType: !34)
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !23, file: !22, line: 89, baseType: !38, size: 32)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 32, elements: !42)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !27, line: 24, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !29, line: 38, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !{!43}
!43 = !DISubrange(count: 4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "mvsad_t", file: !46, line: 58, baseType: !47)
!46 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/me.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9ed8adb24d2511c1244c72a9a0793ae7")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 55, size: 64, elements: !48)
!48 = !{!49, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !47, file: !46, line: 56, baseType: !50, size: 32)
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !47, file: !46, line: 57, baseType: !52, size: 32, offset: 32)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 32, elements: !35)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !54, line: 25, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !29, line: 39, baseType: !56)
!56 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !22, line: 90, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 90, size: 64, elements: !60)
!60 = !{!61, !65, !67, !69}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !59, file: !22, line: 90, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !27, line: 27, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !29, line: 45, baseType: !64)
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !59, file: !22, line: 90, baseType: !66, size: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 64, elements: !35)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !59, file: !22, line: 90, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !42)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !59, file: !22, line: 90, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !22, line: 88, baseType: !75)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !22, line: 88, size: 16, elements: !76)
!76 = !{!77, !78}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !75, file: !22, line: 88, baseType: !32, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !22, line: 88, baseType: !79, size: 16)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16, elements: !35)
!80 = !{!81, !1690, !1693, !1697, !1702, !0, !1704, !1707, !1710, !1714, !1719, !1816, !1821, !1825, !1828}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "x264_pixel_size_shift", scope: !83, file: !84, line: 380, type: !1689, isLocal: true, isDefinition: true)
!83 = distinct !DISubprogram(name: "x264_me_search_ref", scope: !84, file: !84, line: 173, type: !85, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1393)
!84 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/me.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f207a98fe290f3dc3c9af0aa958dfc24")
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !1374, !628, !50, !640}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !89, line: 46, baseType: !90)
!89 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !22, line: 381, size: 266752, elements: !91)
!91 = !{!92, !261, !265, !266, !267, !268, !269, !270, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !406, !408, !436, !438, !439, !440, !444, !448, !449, !450, !454, !458, !459, !460, !465, !468, !469, !542, !559, !719, !720, !721, !722, !726, !727, !728, !729, !730, !731, !732, !747, !940, !944, !1005, !1008, !1010, !1011, !1012, !1015, !1020, !1029, !1030, !1038, !1040, !1045, !1120, !1206, !1250, !1272, !1321, !1350}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !90, file: !22, line: 384, baseType: !93, size: 5632)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !89, line: 376, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !89, line: 176, size: 5632, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !139, !143, !144, !145, !146, !150, !151, !166, !167, !168, !169, !170, !199, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !94, file: !89, line: 179, baseType: !7, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !94, file: !89, line: 180, baseType: !50, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !94, file: !89, line: 181, baseType: !50, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !94, file: !89, line: 182, baseType: !50, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !94, file: !89, line: 183, baseType: !50, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !94, file: !89, line: 186, baseType: !50, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !94, file: !89, line: 187, baseType: !50, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !94, file: !89, line: 188, baseType: !50, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !94, file: !89, line: 189, baseType: !50, size: 32, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !94, file: !89, line: 190, baseType: !50, size: 32, offset: 288)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !94, file: !89, line: 198, baseType: !50, size: 32, offset: 320)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !94, file: !89, line: 215, baseType: !108, size: 288, offset: 352)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !89, line: 200, size: 288, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !108, file: !89, line: 203, baseType: !50, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !108, file: !89, line: 204, baseType: !50, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !108, file: !89, line: 206, baseType: !50, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !108, file: !89, line: 209, baseType: !50, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !108, file: !89, line: 210, baseType: !50, size: 32, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !108, file: !89, line: 211, baseType: !50, size: 32, offset: 160)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !108, file: !89, line: 212, baseType: !50, size: 32, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !108, file: !89, line: 213, baseType: !50, size: 32, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !108, file: !89, line: 214, baseType: !50, size: 32, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !94, file: !89, line: 218, baseType: !50, size: 32, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !94, file: !89, line: 219, baseType: !50, size: 32, offset: 672)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !94, file: !89, line: 220, baseType: !50, size: 32, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !94, file: !89, line: 221, baseType: !50, size: 32, offset: 736)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !94, file: !89, line: 222, baseType: !50, size: 32, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !94, file: !89, line: 224, baseType: !50, size: 32, offset: 800)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !94, file: !89, line: 225, baseType: !50, size: 32, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !94, file: !89, line: 226, baseType: !50, size: 32, offset: 864)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !94, file: !89, line: 227, baseType: !50, size: 32, offset: 896)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !94, file: !89, line: 229, baseType: !50, size: 32, offset: 928)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !94, file: !89, line: 230, baseType: !50, size: 32, offset: 960)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !94, file: !89, line: 231, baseType: !50, size: 32, offset: 992)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !94, file: !89, line: 233, baseType: !50, size: 32, offset: 1024)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !94, file: !89, line: 234, baseType: !50, size: 32, offset: 1056)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !94, file: !89, line: 236, baseType: !50, size: 32, offset: 1088)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !94, file: !89, line: 237, baseType: !50, size: 32, offset: 1120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !94, file: !89, line: 239, baseType: !50, size: 32, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !94, file: !89, line: 240, baseType: !137, size: 64, offset: 1216)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !94, file: !89, line: 241, baseType: !140, size: 128, offset: 1280)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !94, file: !89, line: 242, baseType: !140, size: 128, offset: 1408)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !94, file: !89, line: 243, baseType: !140, size: 128, offset: 1536)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !94, file: !89, line: 244, baseType: !140, size: 128, offset: 1664)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !94, file: !89, line: 245, baseType: !147, size: 512, offset: 1792)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !94, file: !89, line: 246, baseType: !147, size: 512, offset: 2304)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !94, file: !89, line: 249, baseType: !152, size: 64, offset: 2816)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155, !50, !156, !158}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !160)
!160 = !{!161, !163, !164, !165}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !159, file: !162, baseType: !7, size: 32)
!162 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/me.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !159, file: !162, baseType: !7, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !159, file: !162, baseType: !155, size: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !159, file: !162, baseType: !155, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !94, file: !89, line: 250, baseType: !155, size: 64, offset: 2880)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !94, file: !89, line: 251, baseType: !50, size: 32, offset: 2944)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !94, file: !89, line: 252, baseType: !50, size: 32, offset: 2976)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !94, file: !89, line: 253, baseType: !137, size: 64, offset: 3008)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !94, file: !89, line: 287, baseType: !171, size: 800, offset: 3072)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !89, line: 256, size: 800, elements: !172)
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !193, !194, !195, !197, !198}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !171, file: !89, line: 258, baseType: !7, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !171, file: !89, line: 259, baseType: !7, size: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !171, file: !89, line: 261, baseType: !50, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !171, file: !89, line: 262, baseType: !50, size: 32, offset: 96)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !171, file: !89, line: 263, baseType: !50, size: 32, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !171, file: !89, line: 264, baseType: !50, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !171, file: !89, line: 265, baseType: !50, size: 32, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !171, file: !89, line: 267, baseType: !50, size: 32, offset: 224)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !171, file: !89, line: 268, baseType: !50, size: 32, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !171, file: !89, line: 269, baseType: !50, size: 32, offset: 288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !171, file: !89, line: 270, baseType: !50, size: 32, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !171, file: !89, line: 271, baseType: !50, size: 32, offset: 352)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !171, file: !89, line: 272, baseType: !50, size: 32, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !171, file: !89, line: 273, baseType: !50, size: 32, offset: 416)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !171, file: !89, line: 274, baseType: !50, size: 32, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !171, file: !89, line: 275, baseType: !50, size: 32, offset: 480)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !171, file: !89, line: 276, baseType: !50, size: 32, offset: 512)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !171, file: !89, line: 277, baseType: !50, size: 32, offset: 544)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !171, file: !89, line: 278, baseType: !192, size: 32, offset: 576)
!192 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !171, file: !89, line: 279, baseType: !192, size: 32, offset: 608)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !171, file: !89, line: 280, baseType: !50, size: 32, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !171, file: !89, line: 283, baseType: !196, size: 64, offset: 672)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !35)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !171, file: !89, line: 285, baseType: !50, size: 32, offset: 736)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !171, file: !89, line: 286, baseType: !50, size: 32, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !94, file: !89, line: 327, baseType: !200, size: 1152, offset: 3904)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !94, file: !89, line: 290, size: 1152, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !239, !240}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !200, file: !89, line: 292, baseType: !50, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !200, file: !89, line: 294, baseType: !50, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !200, file: !89, line: 295, baseType: !50, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !200, file: !89, line: 296, baseType: !50, size: 32, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !200, file: !89, line: 297, baseType: !50, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !200, file: !89, line: 299, baseType: !50, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !200, file: !89, line: 300, baseType: !192, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !200, file: !89, line: 301, baseType: !192, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !200, file: !89, line: 302, baseType: !192, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !200, file: !89, line: 303, baseType: !50, size: 32, offset: 288)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !200, file: !89, line: 304, baseType: !50, size: 32, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !200, file: !89, line: 305, baseType: !192, size: 32, offset: 352)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !200, file: !89, line: 306, baseType: !192, size: 32, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !200, file: !89, line: 307, baseType: !192, size: 32, offset: 416)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !200, file: !89, line: 309, baseType: !50, size: 32, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !200, file: !89, line: 310, baseType: !192, size: 32, offset: 480)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !200, file: !89, line: 311, baseType: !50, size: 32, offset: 512)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !200, file: !89, line: 312, baseType: !50, size: 32, offset: 544)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !200, file: !89, line: 315, baseType: !50, size: 32, offset: 576)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !200, file: !89, line: 316, baseType: !137, size: 64, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !200, file: !89, line: 317, baseType: !50, size: 32, offset: 704)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !200, file: !89, line: 318, baseType: !137, size: 64, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !200, file: !89, line: 321, baseType: !192, size: 32, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !200, file: !89, line: 322, baseType: !192, size: 32, offset: 864)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !200, file: !89, line: 323, baseType: !192, size: 32, offset: 896)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !200, file: !89, line: 324, baseType: !228, size: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !89, line: 174, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 167, size: 256, elements: !231)
!231 = !{!232, !233, !234, !235, !236, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !230, file: !89, line: 169, baseType: !50, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !230, file: !89, line: 169, baseType: !50, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !230, file: !89, line: 170, baseType: !50, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !230, file: !89, line: 171, baseType: !50, size: 32, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !230, file: !89, line: 172, baseType: !192, size: 32, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !230, file: !89, line: 173, baseType: !238, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !200, file: !89, line: 325, baseType: !50, size: 32, offset: 1024)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !200, file: !89, line: 326, baseType: !137, size: 64, offset: 1088)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !94, file: !89, line: 330, baseType: !50, size: 32, offset: 5056)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !94, file: !89, line: 331, baseType: !50, size: 32, offset: 5088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !94, file: !89, line: 332, baseType: !50, size: 32, offset: 5120)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !94, file: !89, line: 334, baseType: !50, size: 32, offset: 5152)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !94, file: !89, line: 335, baseType: !50, size: 32, offset: 5184)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !94, file: !89, line: 336, baseType: !26, size: 32, offset: 5216)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !94, file: !89, line: 337, baseType: !26, size: 32, offset: 5248)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !94, file: !89, line: 338, baseType: !26, size: 32, offset: 5280)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !94, file: !89, line: 339, baseType: !26, size: 32, offset: 5312)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !94, file: !89, line: 340, baseType: !50, size: 32, offset: 5344)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !94, file: !89, line: 344, baseType: !50, size: 32, offset: 5376)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !94, file: !89, line: 356, baseType: !50, size: 32, offset: 5408)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !94, file: !89, line: 364, baseType: !50, size: 32, offset: 5440)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !94, file: !89, line: 367, baseType: !50, size: 32, offset: 5472)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !94, file: !89, line: 368, baseType: !50, size: 32, offset: 5504)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !94, file: !89, line: 369, baseType: !50, size: 32, offset: 5536)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !94, file: !89, line: 375, baseType: !258, size: 64, offset: 5568)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !155}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !90, file: !22, line: 386, baseType: !262, size: 8256, offset: 5632)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 8256, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 129)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !90, file: !22, line: 387, baseType: !50, size: 32, offset: 13888)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !90, file: !22, line: 388, baseType: !50, size: 32, offset: 13920)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !90, file: !22, line: 389, baseType: !50, size: 32, offset: 13952)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !90, file: !22, line: 390, baseType: !50, size: 32, offset: 13984)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !90, file: !22, line: 391, baseType: !50, size: 32, offset: 14016)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !90, file: !22, line: 402, baseType: !271, size: 576, offset: 14080)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !22, line: 394, size: 576, elements: !272)
!272 = !{!273, !274, !275, !285, !286, !287}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !271, file: !22, line: 396, baseType: !50, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !271, file: !22, line: 397, baseType: !50, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !271, file: !22, line: 398, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !89, line: 604, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 593, size: 192, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !278, file: !89, line: 595, baseType: !50, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !278, file: !89, line: 596, baseType: !50, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !278, file: !89, line: 599, baseType: !50, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !278, file: !89, line: 603, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !271, file: !22, line: 399, baseType: !50, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !271, file: !22, line: 400, baseType: !284, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !271, file: !22, line: 401, baseType: !288, size: 320, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !289, line: 56, baseType: !290)
!289 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !289, line: 47, size: 320, elements: !291)
!291 = !{!292, !293, !294, !295, !299, !300}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !290, file: !289, line: 49, baseType: !284, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !290, file: !289, line: 50, baseType: !284, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !290, file: !289, line: 51, baseType: !284, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !290, file: !289, line: 53, baseType: !296, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !297, line: 87, baseType: !298)
!297 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!298 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !290, file: !289, line: 54, baseType: !50, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !290, file: !289, line: 55, baseType: !50, size: 32, offset: 288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !90, file: !22, line: 404, baseType: !284, size: 64, offset: 14656)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !90, file: !22, line: 405, baseType: !50, size: 32, offset: 14720)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !90, file: !22, line: 410, baseType: !50, size: 32, offset: 14752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !90, file: !22, line: 411, baseType: !50, size: 32, offset: 14784)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !90, file: !22, line: 413, baseType: !50, size: 32, offset: 14816)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !90, file: !22, line: 415, baseType: !50, size: 32, offset: 14848)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !90, file: !22, line: 416, baseType: !50, size: 32, offset: 14880)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !90, file: !22, line: 418, baseType: !50, size: 32, offset: 14912)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !90, file: !22, line: 419, baseType: !50, size: 32, offset: 14944)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !90, file: !22, line: 420, baseType: !50, size: 32, offset: 14976)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !90, file: !22, line: 421, baseType: !50, size: 32, offset: 15008)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !90, file: !22, line: 422, baseType: !50, size: 32, offset: 15040)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !90, file: !22, line: 424, baseType: !50, size: 32, offset: 15072)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !90, file: !22, line: 425, baseType: !50, size: 32, offset: 15104)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !90, file: !22, line: 427, baseType: !50, size: 32, offset: 15136)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !90, file: !22, line: 430, baseType: !317, size: 10400, offset: 15168)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 10400, elements: !404)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !319, line: 154, baseType: !320)
!319 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 52, size: 10400, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !339, !340, !341, !342, !343, !344, !345, !346, !347, !354, !355, !403}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !320, file: !319, line: 54, baseType: !50, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !320, file: !319, line: 56, baseType: !50, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !320, file: !319, line: 57, baseType: !50, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !320, file: !319, line: 59, baseType: !50, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !320, file: !319, line: 60, baseType: !50, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !320, file: !319, line: 61, baseType: !50, size: 32, offset: 160)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !320, file: !319, line: 63, baseType: !50, size: 32, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !320, file: !319, line: 65, baseType: !50, size: 32, offset: 224)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !320, file: !319, line: 67, baseType: !50, size: 32, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !320, file: !319, line: 69, baseType: !50, size: 32, offset: 288)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !320, file: !319, line: 70, baseType: !50, size: 32, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !320, file: !319, line: 71, baseType: !50, size: 32, offset: 352)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !320, file: !319, line: 72, baseType: !50, size: 32, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !320, file: !319, line: 73, baseType: !336, size: 8192, offset: 416)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8192, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !320, file: !319, line: 75, baseType: !50, size: 32, offset: 8608)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !320, file: !319, line: 76, baseType: !50, size: 32, offset: 8640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !320, file: !319, line: 77, baseType: !50, size: 32, offset: 8672)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !320, file: !319, line: 78, baseType: !50, size: 32, offset: 8704)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !320, file: !319, line: 79, baseType: !50, size: 32, offset: 8736)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !320, file: !319, line: 80, baseType: !50, size: 32, offset: 8768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !320, file: !319, line: 81, baseType: !50, size: 32, offset: 8800)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !320, file: !319, line: 83, baseType: !50, size: 32, offset: 8832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !320, file: !319, line: 90, baseType: !348, size: 128, offset: 8864)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !319, line: 84, size: 128, elements: !349)
!349 = !{!350, !351, !352, !353}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !348, file: !319, line: 86, baseType: !50, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !348, file: !319, line: 87, baseType: !50, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !348, file: !319, line: 88, baseType: !50, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !348, file: !319, line: 89, baseType: !50, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !320, file: !319, line: 92, baseType: !50, size: 32, offset: 8992)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !320, file: !319, line: 150, baseType: !356, size: 1344, offset: 9024)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !319, line: 93, size: 1344, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !356, file: !319, line: 95, baseType: !50, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !356, file: !319, line: 96, baseType: !50, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !356, file: !319, line: 97, baseType: !50, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !356, file: !319, line: 99, baseType: !50, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !356, file: !319, line: 100, baseType: !50, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !356, file: !319, line: 102, baseType: !50, size: 32, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !356, file: !319, line: 103, baseType: !50, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !356, file: !319, line: 104, baseType: !50, size: 32, offset: 224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !356, file: !319, line: 105, baseType: !50, size: 32, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !356, file: !319, line: 106, baseType: !50, size: 32, offset: 288)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !356, file: !319, line: 107, baseType: !50, size: 32, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !356, file: !319, line: 108, baseType: !50, size: 32, offset: 352)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !356, file: !319, line: 110, baseType: !50, size: 32, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !356, file: !319, line: 111, baseType: !50, size: 32, offset: 416)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !356, file: !319, line: 112, baseType: !50, size: 32, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !356, file: !319, line: 114, baseType: !50, size: 32, offset: 480)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !356, file: !319, line: 115, baseType: !26, size: 32, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !356, file: !319, line: 116, baseType: !26, size: 32, offset: 544)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !356, file: !319, line: 117, baseType: !50, size: 32, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !356, file: !319, line: 119, baseType: !50, size: 32, offset: 608)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !356, file: !319, line: 120, baseType: !50, size: 32, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !356, file: !319, line: 137, baseType: !380, size: 384, offset: 672)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !356, file: !319, line: 122, size: 384, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !380, file: !319, line: 124, baseType: !50, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !380, file: !319, line: 125, baseType: !50, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !380, file: !319, line: 126, baseType: !50, size: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !380, file: !319, line: 127, baseType: !50, size: 32, offset: 96)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !380, file: !319, line: 128, baseType: !50, size: 32, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !380, file: !319, line: 129, baseType: !50, size: 32, offset: 160)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !380, file: !319, line: 130, baseType: !50, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !380, file: !319, line: 131, baseType: !50, size: 32, offset: 224)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !380, file: !319, line: 133, baseType: !50, size: 32, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !380, file: !319, line: 134, baseType: !50, size: 32, offset: 288)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !380, file: !319, line: 135, baseType: !50, size: 32, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !380, file: !319, line: 136, baseType: !50, size: 32, offset: 352)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !356, file: !319, line: 139, baseType: !50, size: 32, offset: 1056)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !356, file: !319, line: 140, baseType: !50, size: 32, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !356, file: !319, line: 141, baseType: !50, size: 32, offset: 1120)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !356, file: !319, line: 142, baseType: !50, size: 32, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !356, file: !319, line: 143, baseType: !50, size: 32, offset: 1184)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !356, file: !319, line: 144, baseType: !50, size: 32, offset: 1216)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !356, file: !319, line: 145, baseType: !50, size: 32, offset: 1248)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !356, file: !319, line: 146, baseType: !50, size: 32, offset: 1280)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !356, file: !319, line: 147, baseType: !50, size: 32, offset: 1312)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !320, file: !319, line: 152, baseType: !50, size: 32, offset: 10368)
!404 = !{!405}
!405 = !DISubrange(count: 1)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !90, file: !22, line: 431, baseType: !407, size: 64, offset: 25600)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !90, file: !22, line: 432, baseType: !409, size: 960, offset: 25664)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 960, elements: !404)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !319, line: 186, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 156, size: 960, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !411, file: !319, line: 158, baseType: !50, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !411, file: !319, line: 159, baseType: !50, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !411, file: !319, line: 161, baseType: !50, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !411, file: !319, line: 163, baseType: !50, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !411, file: !319, line: 164, baseType: !50, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !411, file: !319, line: 166, baseType: !50, size: 32, offset: 160)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !411, file: !319, line: 167, baseType: !50, size: 32, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !411, file: !319, line: 169, baseType: !50, size: 32, offset: 224)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !411, file: !319, line: 170, baseType: !50, size: 32, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !411, file: !319, line: 172, baseType: !50, size: 32, offset: 288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !411, file: !319, line: 173, baseType: !50, size: 32, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !411, file: !319, line: 175, baseType: !50, size: 32, offset: 352)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !411, file: !319, line: 177, baseType: !50, size: 32, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !411, file: !319, line: 178, baseType: !50, size: 32, offset: 416)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !411, file: !319, line: 179, baseType: !50, size: 32, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !411, file: !319, line: 181, baseType: !50, size: 32, offset: 480)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !411, file: !319, line: 183, baseType: !50, size: 32, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !411, file: !319, line: 184, baseType: !431, size: 384, offset: 576)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 384, elements: !434)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!434 = !{!435}
!435 = !DISubrange(count: 6)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !90, file: !22, line: 433, baseType: !437, size: 64, offset: 26624)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !90, file: !22, line: 434, baseType: !50, size: 32, offset: 26688)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !90, file: !22, line: 437, baseType: !50, size: 32, offset: 26720)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !90, file: !22, line: 440, baseType: !441, size: 256, offset: 26752)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 256, elements: !42)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !141)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !90, file: !22, line: 441, baseType: !445, size: 128, offset: 27008)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 128, elements: !35)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !148)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !90, file: !22, line: 443, baseType: !441, size: 256, offset: 27136)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !90, file: !22, line: 444, baseType: !445, size: 128, offset: 27392)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !90, file: !22, line: 446, baseType: !451, size: 256, offset: 27520)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !42)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 256, elements: !141)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !90, file: !22, line: 447, baseType: !455, size: 128, offset: 27776)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 128, elements: !35)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1024, elements: !148)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !90, file: !22, line: 448, baseType: !451, size: 256, offset: 27904)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !90, file: !22, line: 449, baseType: !455, size: 128, offset: 28160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !90, file: !22, line: 454, baseType: !461, size: 5888, offset: 28288)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 5888, elements: !463)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!463 = !{!464}
!464 = !DISubrange(count: 92)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !90, file: !22, line: 455, baseType: !466, size: 23552, offset: 34176)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 23552, elements: !467)
!467 = !{!464, !43}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !90, file: !22, line: 457, baseType: !432, size: 64, offset: 57728)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !90, file: !22, line: 460, baseType: !470, size: 53376, offset: 57856)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !22, line: 364, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 302, size: 53376, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !501, !526, !527, !528, !534, !535, !536, !537, !538, !539, !540, !541}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !471, file: !22, line: 304, baseType: !407, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !471, file: !22, line: 305, baseType: !437, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !471, file: !22, line: 307, baseType: !50, size: 32, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !471, file: !22, line: 308, baseType: !50, size: 32, offset: 160)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !471, file: !22, line: 309, baseType: !50, size: 32, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !471, file: !22, line: 311, baseType: !50, size: 32, offset: 224)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !471, file: !22, line: 313, baseType: !50, size: 32, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !471, file: !22, line: 315, baseType: !50, size: 32, offset: 288)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !471, file: !22, line: 316, baseType: !50, size: 32, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !471, file: !22, line: 317, baseType: !50, size: 32, offset: 352)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !471, file: !22, line: 319, baseType: !50, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !471, file: !22, line: 321, baseType: !50, size: 32, offset: 416)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !471, file: !22, line: 322, baseType: !50, size: 32, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !471, file: !22, line: 324, baseType: !196, size: 64, offset: 480)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !471, file: !22, line: 325, baseType: !50, size: 32, offset: 544)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !471, file: !22, line: 327, baseType: !50, size: 32, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !471, file: !22, line: 329, baseType: !50, size: 32, offset: 608)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !471, file: !22, line: 330, baseType: !50, size: 32, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !471, file: !22, line: 331, baseType: !50, size: 32, offset: 672)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !471, file: !22, line: 333, baseType: !50, size: 32, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !471, file: !22, line: 334, baseType: !50, size: 32, offset: 736)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !471, file: !22, line: 339, baseType: !495, size: 2048, offset: 768)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 2048, elements: !500)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !22, line: 335, size: 64, elements: !497)
!497 = !{!498, !499}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !496, file: !22, line: 337, baseType: !50, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !496, file: !22, line: 338, baseType: !50, size: 32, offset: 32)
!500 = !{!36, !142}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !471, file: !22, line: 342, baseType: !502, size: 49152, align: 128, offset: 2816)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 49152, align: 128, elements: !523)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !504, line: 36, baseType: !505, align: 128)
!504 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !504, line: 26, size: 512, elements: !506)
!506 = !{!507, !509, !510, !513, !514, !515}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !505, file: !504, line: 30, baseType: !508, size: 128, align: 128)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !71)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !505, file: !504, line: 31, baseType: !508, size: 128, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !505, file: !504, line: 32, baseType: !511, size: 32, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !54, line: 26, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !29, line: 41, baseType: !50)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !505, file: !504, line: 33, baseType: !511, size: 32, offset: 288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !505, file: !504, line: 34, baseType: !511, size: 32, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !505, file: !504, line: 35, baseType: !516, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !504, line: 25, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !284, !50, !284, !50, !521, !50}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!523 = !{!524, !525}
!524 = !DISubrange(count: 32)
!525 = !DISubrange(count: 3)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !471, file: !22, line: 344, baseType: !50, size: 32, offset: 51968)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !471, file: !22, line: 345, baseType: !50, size: 32, offset: 52000)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !471, file: !22, line: 350, baseType: !529, size: 1024, offset: 52032)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 1024, elements: !141)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !471, file: !22, line: 346, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !530, file: !22, line: 348, baseType: !50, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !530, file: !22, line: 349, baseType: !50, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !471, file: !22, line: 352, baseType: !50, size: 32, offset: 53056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !471, file: !22, line: 354, baseType: !50, size: 32, offset: 53088)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !471, file: !22, line: 355, baseType: !50, size: 32, offset: 53120)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !471, file: !22, line: 356, baseType: !50, size: 32, offset: 53152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !471, file: !22, line: 357, baseType: !50, size: 32, offset: 53184)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !471, file: !22, line: 360, baseType: !50, size: 32, offset: 53216)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !471, file: !22, line: 361, baseType: !50, size: 32, offset: 53248)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !471, file: !22, line: 362, baseType: !50, size: 32, offset: 53280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !90, file: !22, line: 463, baseType: !543, size: 4096, offset: 111232)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !544, line: 46, baseType: !545)
!544 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 27, size: 4096, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !545, file: !544, line: 30, baseType: !50, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !545, file: !544, line: 31, baseType: !50, size: 32, offset: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !545, file: !544, line: 34, baseType: !50, size: 32, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !545, file: !544, line: 35, baseType: !50, size: 32, offset: 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !545, file: !544, line: 37, baseType: !284, size: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !545, file: !544, line: 38, baseType: !284, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !545, file: !544, line: 39, baseType: !284, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !545, file: !544, line: 42, baseType: !50, size: 32, align: 128, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !545, file: !544, line: 45, baseType: !556, size: 3680, offset: 416)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3680, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 460)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !90, file: !22, line: 494, baseType: !560, size: 2112, offset: 115328)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !22, line: 465, size: 2112, elements: !561)
!561 = !{!562, !699, !701, !702, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !715, !716, !717, !718}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !560, file: !22, line: 468, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !566, line: 146, baseType: !567)
!566 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !566, line: 31, size: 125056, elements: !568)
!568 = !{!569, !570, !571, !572, !575, !576, !577, !578, !579, !580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !599, !600, !601, !602, !603, !604, !606, !608, !609, !610, !611, !612, !615, !617, !618, !620, !625, !626, !629, !630, !634, !638, !641, !643, !644, !646, !647, !649, !650, !651, !654, !656, !657, !658, !660, !661, !662, !663, !664, !665, !666, !667, !669, !670, !671, !680, !684, !686, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !567, file: !566, line: 34, baseType: !50, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !567, file: !566, line: 35, baseType: !50, size: 32, offset: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !567, file: !566, line: 36, baseType: !50, size: 32, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !567, file: !566, line: 37, baseType: !573, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !54, line: 27, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !29, line: 44, baseType: !298)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !567, file: !566, line: 38, baseType: !573, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !567, file: !566, line: 39, baseType: !50, size: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !567, file: !566, line: 40, baseType: !50, size: 32, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !567, file: !566, line: 41, baseType: !50, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !567, file: !566, line: 42, baseType: !50, size: 32, offset: 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !567, file: !566, line: 43, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !567, file: !566, line: 45, baseType: !50, size: 32, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !567, file: !566, line: 46, baseType: !50, size: 32, offset: 480)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !567, file: !566, line: 47, baseType: !50, size: 32, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !567, file: !566, line: 48, baseType: !50, size: 32, offset: 544)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !567, file: !566, line: 49, baseType: !50, size: 32, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !567, file: !566, line: 50, baseType: !50, size: 32, offset: 608)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !567, file: !566, line: 51, baseType: !50, size: 32, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !567, file: !566, line: 52, baseType: !39, size: 8, offset: 672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !567, file: !566, line: 53, baseType: !39, size: 8, offset: 680)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !567, file: !566, line: 54, baseType: !39, size: 8, offset: 688)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !567, file: !566, line: 55, baseType: !192, size: 32, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !567, file: !566, line: 56, baseType: !192, size: 32, offset: 736)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !567, file: !566, line: 57, baseType: !50, size: 32, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !567, file: !566, line: 60, baseType: !50, size: 32, offset: 800)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !567, file: !566, line: 61, baseType: !597, size: 96, offset: 832)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 96, elements: !598)
!598 = !{!525}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !567, file: !566, line: 62, baseType: !597, size: 96, offset: 928)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !567, file: !566, line: 63, baseType: !597, size: 96, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !567, file: !566, line: 64, baseType: !50, size: 32, offset: 1120)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !567, file: !566, line: 65, baseType: !50, size: 32, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !567, file: !566, line: 66, baseType: !50, size: 32, offset: 1184)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !567, file: !566, line: 67, baseType: !605, size: 192, offset: 1216)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 192, elements: !598)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !567, file: !566, line: 68, baseType: !607, size: 256, offset: 1408)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !42)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !567, file: !566, line: 69, baseType: !607, size: 256, offset: 1664)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !567, file: !566, line: 70, baseType: !462, size: 64, offset: 1920)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !567, file: !566, line: 74, baseType: !607, size: 256, offset: 1984)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !567, file: !566, line: 75, baseType: !607, size: 256, offset: 2240)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !567, file: !566, line: 77, baseType: !613, size: 24576, align: 128, offset: 2560)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 24576, align: 128, elements: !614)
!614 = !{!142, !525}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !567, file: !566, line: 78, baseType: !616, size: 1024, offset: 27136)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !141)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !567, file: !566, line: 79, baseType: !50, size: 32, offset: 28160)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !567, file: !566, line: 80, baseType: !619, size: 64, offset: 28224)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !567, file: !566, line: 83, baseType: !621, size: 64, offset: 28288)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !54, line: 24, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !29, line: 37, baseType: !624)
!624 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !567, file: !566, line: 84, baseType: !284, size: 64, offset: 28352)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !567, file: !566, line: 85, baseType: !627, size: 128, offset: 28416)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 128, elements: !35)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !567, file: !566, line: 86, baseType: !628, size: 64, offset: 28544)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !567, file: !566, line: 87, baseType: !631, size: 2176, offset: 28608)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 2176, elements: !632)
!632 = !{!36, !633}
!633 = !DISubrange(count: 17)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !567, file: !566, line: 92, baseType: !635, size: 20736, offset: 30784)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 20736, elements: !636)
!636 = !{!637, !637}
!637 = !DISubrange(count: 18)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !567, file: !566, line: 96, baseType: !639, size: 2176, offset: 51520)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 2176, elements: !632)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !567, file: !566, line: 97, baseType: !642, size: 128, offset: 53696)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 128, elements: !35)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !567, file: !566, line: 98, baseType: !196, size: 64, offset: 53824)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !567, file: !566, line: 99, baseType: !645, size: 1024, offset: 53888)
!645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1024, elements: !500)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !567, file: !566, line: 100, baseType: !52, size: 32, offset: 54912)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !567, file: !566, line: 105, baseType: !648, size: 10368, offset: 54944)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 10368, elements: !636)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !567, file: !566, line: 106, baseType: !648, size: 10368, offset: 65312)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !567, file: !566, line: 107, baseType: !50, size: 32, offset: 75680)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !567, file: !566, line: 108, baseType: !652, size: 576, offset: 75712)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !653)
!653 = !{!637}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !567, file: !566, line: 109, baseType: !655, size: 20736, offset: 76288)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 20736, elements: !636)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !567, file: !566, line: 110, baseType: !640, size: 64, offset: 97024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !567, file: !566, line: 111, baseType: !640, size: 64, offset: 97088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !567, file: !566, line: 112, baseType: !659, size: 64, offset: 97152)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !567, file: !566, line: 113, baseType: !659, size: 64, offset: 97216)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !567, file: !566, line: 114, baseType: !659, size: 64, offset: 97280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !567, file: !566, line: 115, baseType: !50, size: 32, offset: 97344)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !567, file: !566, line: 116, baseType: !462, size: 64, offset: 97408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !567, file: !566, line: 117, baseType: !462, size: 64, offset: 97472)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !567, file: !566, line: 118, baseType: !462, size: 64, offset: 97536)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !567, file: !566, line: 119, baseType: !50, size: 32, offset: 97600)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !567, file: !566, line: 120, baseType: !668, size: 576, offset: 97632)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 576, elements: !653)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !567, file: !566, line: 121, baseType: !26, size: 32, offset: 98208)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !567, file: !566, line: 122, baseType: !62, size: 64, offset: 98240)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !567, file: !566, line: 125, baseType: !672, size: 256, offset: 98304)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !89, line: 503, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 496, size: 256, elements: !674)
!674 = !{!675, !677, !678, !679}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !673, file: !89, line: 498, baseType: !676, size: 64)
!676 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !673, file: !89, line: 499, baseType: !676, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !673, file: !89, line: 500, baseType: !676, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !673, file: !89, line: 502, baseType: !676, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !567, file: !566, line: 128, baseType: !681, size: 2008, offset: 98560)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2008, elements: !682)
!682 = !{!683}
!683 = !DISubrange(count: 251)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !567, file: !566, line: 129, baseType: !685, size: 8032, offset: 100576)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 8032, elements: !682)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !567, file: !566, line: 130, baseType: !687, size: 16064, offset: 108608)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 16064, elements: !682)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !567, file: !566, line: 131, baseType: !50, size: 32, offset: 124672)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !567, file: !566, line: 132, baseType: !50, size: 32, offset: 124704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !567, file: !566, line: 135, baseType: !50, size: 32, offset: 124736)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !567, file: !566, line: 136, baseType: !50, size: 32, offset: 124768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !567, file: !566, line: 137, baseType: !50, size: 32, offset: 124800)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !567, file: !566, line: 138, baseType: !50, size: 32, offset: 124832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !567, file: !566, line: 139, baseType: !50, size: 32, offset: 124864)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !567, file: !566, line: 142, baseType: !192, size: 32, offset: 124896)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !567, file: !566, line: 143, baseType: !50, size: 32, offset: 124928)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !567, file: !566, line: 144, baseType: !50, size: 32, offset: 124960)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !567, file: !566, line: 145, baseType: !50, size: 32, offset: 124992)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !560, file: !22, line: 470, baseType: !700, size: 128, offset: 64)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !35)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !560, file: !22, line: 473, baseType: !563, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !560, file: !22, line: 476, baseType: !703, size: 1152, offset: 256)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 1152, elements: !653)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !560, file: !22, line: 478, baseType: !50, size: 32, offset: 1408)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !560, file: !22, line: 480, baseType: !50, size: 32, offset: 1440)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !560, file: !22, line: 482, baseType: !50, size: 32, offset: 1472)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !560, file: !22, line: 483, baseType: !50, size: 32, offset: 1504)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !560, file: !22, line: 484, baseType: !50, size: 32, offset: 1536)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !560, file: !22, line: 485, baseType: !50, size: 32, offset: 1568)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !560, file: !22, line: 486, baseType: !50, size: 32, offset: 1600)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !560, file: !22, line: 487, baseType: !573, size: 64, offset: 1664)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !560, file: !22, line: 488, baseType: !573, size: 64, offset: 1728)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !560, file: !22, line: 489, baseType: !714, size: 128, offset: 1792)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 128, elements: !35)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !560, file: !22, line: 490, baseType: !573, size: 64, offset: 1920)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !560, file: !22, line: 491, baseType: !573, size: 64, offset: 1984)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !560, file: !22, line: 492, baseType: !50, size: 32, offset: 2048)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !560, file: !22, line: 493, baseType: !50, size: 32, offset: 2080)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !90, file: !22, line: 497, baseType: !564, size: 64, offset: 117440)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !90, file: !22, line: 500, baseType: !564, size: 64, offset: 117504)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !90, file: !22, line: 503, baseType: !50, size: 32, offset: 117568)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !90, file: !22, line: 504, baseType: !723, size: 1216, offset: 117632)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 1216, elements: !724)
!724 = !{!725}
!725 = !DISubrange(count: 19)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !90, file: !22, line: 505, baseType: !50, size: 32, offset: 118848)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !90, file: !22, line: 506, baseType: !723, size: 1216, offset: 118912)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !90, file: !22, line: 507, baseType: !196, size: 64, offset: 120128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !90, file: !22, line: 510, baseType: !50, size: 32, offset: 120192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !90, file: !22, line: 511, baseType: !50, size: 32, offset: 120224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !90, file: !22, line: 512, baseType: !573, size: 64, offset: 120256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !90, file: !22, line: 522, baseType: !733, size: 10624, offset: 120320)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !22, line: 515, size: 10624, elements: !734)
!734 = !{!735, !737, !740, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !733, file: !22, line: 517, baseType: !736, size: 256, align: 128)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !141)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !733, file: !22, line: 518, baseType: !738, size: 128, align: 128, offset: 256)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !739)
!739 = !{!36, !43}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !733, file: !22, line: 520, baseType: !741, size: 4096, align: 128, offset: 384)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !742)
!742 = !{!43, !149}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !733, file: !22, line: 521, baseType: !744, size: 6144, align: 128, offset: 4480)
!744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 6144, elements: !745)
!745 = !{!746, !142}
!746 = !DISubrange(count: 24)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !90, file: !22, line: 732, baseType: !748, size: 82688, offset: 130944)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !22, line: 525, size: 82688, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !777, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !795, !798, !802, !803, !804, !809, !810, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !878, !909, !910, !911, !912, !913, !914, !915, !916, !917, !920, !921, !922, !925, !928, !930, !933, !935, !936}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !748, file: !22, line: 527, baseType: !50, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !748, file: !22, line: 530, baseType: !50, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !748, file: !22, line: 531, baseType: !50, size: 32, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !748, file: !22, line: 532, baseType: !50, size: 32, offset: 96)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !748, file: !22, line: 535, baseType: !50, size: 32, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !748, file: !22, line: 536, baseType: !50, size: 32, offset: 160)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !748, file: !22, line: 537, baseType: !50, size: 32, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !748, file: !22, line: 538, baseType: !50, size: 32, offset: 224)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !748, file: !22, line: 539, baseType: !50, size: 32, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !748, file: !22, line: 542, baseType: !50, size: 32, offset: 288)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !748, file: !22, line: 543, baseType: !50, size: 32, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !748, file: !22, line: 544, baseType: !50, size: 32, offset: 352)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !748, file: !22, line: 545, baseType: !50, size: 32, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !748, file: !22, line: 546, baseType: !50, size: 32, offset: 416)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !748, file: !22, line: 547, baseType: !50, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !748, file: !22, line: 548, baseType: !50, size: 32, offset: 480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !748, file: !22, line: 549, baseType: !50, size: 32, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !748, file: !22, line: 551, baseType: !50, size: 32, offset: 544)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !748, file: !22, line: 554, baseType: !196, size: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !748, file: !22, line: 555, baseType: !196, size: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !748, file: !22, line: 558, baseType: !196, size: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !748, file: !22, line: 559, baseType: !196, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !748, file: !22, line: 561, baseType: !196, size: 64, offset: 832)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !748, file: !22, line: 562, baseType: !196, size: 64, offset: 896)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !748, file: !22, line: 565, baseType: !7, size: 32, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !748, file: !22, line: 566, baseType: !776, size: 128, offset: 992)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !42)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !748, file: !22, line: 567, baseType: !778, size: 512, offset: 1120)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !141)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !748, file: !22, line: 568, baseType: !7, size: 32, offset: 1632)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !748, file: !22, line: 569, baseType: !7, size: 32, offset: 1664)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !748, file: !22, line: 570, baseType: !50, size: 32, offset: 1696)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !748, file: !22, line: 571, baseType: !50, size: 32, offset: 1728)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !748, file: !22, line: 572, baseType: !50, size: 32, offset: 1760)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !748, file: !22, line: 573, baseType: !50, size: 32, offset: 1792)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !748, file: !22, line: 574, baseType: !50, size: 32, offset: 1824)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !748, file: !22, line: 575, baseType: !50, size: 32, offset: 1856)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !748, file: !22, line: 576, baseType: !50, size: 32, offset: 1888)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !748, file: !22, line: 577, baseType: !50, size: 32, offset: 1920)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !748, file: !22, line: 578, baseType: !50, size: 32, offset: 1952)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !22, line: 585, baseType: !621, size: 64, offset: 1984)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !748, file: !22, line: 586, baseType: !284, size: 64, offset: 2048)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !748, file: !22, line: 587, baseType: !621, size: 64, offset: 2112)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !748, file: !22, line: 588, baseType: !794, size: 64, offset: 2176)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !748, file: !22, line: 589, baseType: !796, size: 64, offset: 2240)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 64, elements: !71)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !748, file: !22, line: 591, baseType: !799, size: 64, offset: 2304)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !801)
!801 = !{!746}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !748, file: !22, line: 592, baseType: !621, size: 64, offset: 2368)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !748, file: !22, line: 593, baseType: !627, size: 128, offset: 2432)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !748, file: !22, line: 594, baseType: !805, size: 128, offset: 2560)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 128, elements: !35)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !808)
!808 = !{!72, !36}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !748, file: !22, line: 595, baseType: !642, size: 128, offset: 2688)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !748, file: !22, line: 596, baseType: !811, size: 4096, offset: 2816)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 4096, elements: !812)
!812 = !{!36, !524}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !748, file: !22, line: 597, baseType: !621, size: 64, offset: 6912)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !748, file: !22, line: 598, baseType: !621, size: 64, offset: 6976)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !748, file: !22, line: 599, baseType: !462, size: 64, offset: 7040)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !748, file: !22, line: 603, baseType: !616, size: 1024, offset: 7104)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !748, file: !22, line: 606, baseType: !50, size: 32, offset: 8128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !748, file: !22, line: 607, baseType: !50, size: 32, offset: 8160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !748, file: !22, line: 608, baseType: !38, size: 32, align: 32, offset: 8192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !748, file: !22, line: 609, baseType: !50, size: 32, offset: 8224)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !748, file: !22, line: 611, baseType: !50, size: 32, offset: 8256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !748, file: !22, line: 612, baseType: !50, size: 32, offset: 8288)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !748, file: !22, line: 614, baseType: !50, size: 32, offset: 8320)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !748, file: !22, line: 615, baseType: !50, size: 32, offset: 8352)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !748, file: !22, line: 621, baseType: !50, size: 32, offset: 8384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !748, file: !22, line: 624, baseType: !50, size: 32, offset: 8416)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !748, file: !22, line: 626, baseType: !50, size: 32, offset: 8448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !748, file: !22, line: 627, baseType: !50, size: 32, offset: 8480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !748, file: !22, line: 671, baseType: !830, size: 60672, offset: 8576)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !22, line: 629, size: 60672, elements: !831)
!831 = !{!832, !836, !840, !842, !843, !846, !850, !852, !853, !854, !855, !856, !859, !863, !866, !867, !868, !869, !870, !873, !875, !877}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !830, file: !22, line: 634, baseType: !833, size: 3072, align: 128)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3072, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !830, file: !22, line: 635, baseType: !837, size: 6912, align: 128, offset: 3072)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 6912, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 864)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !830, file: !22, line: 638, baseType: !841, size: 2048, align: 128, offset: 9984)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !337)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !830, file: !22, line: 639, baseType: !841, size: 2048, align: 128, offset: 12032)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !830, file: !22, line: 640, baseType: !844, size: 3072, align: 128, offset: 14080)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3072, elements: !845)
!845 = !{!525, !149}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !830, file: !22, line: 641, baseType: !847, size: 3840, align: 128, offset: 17152)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3840, elements: !848)
!848 = !{!849, !142}
!849 = !DISubrange(count: 15)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !830, file: !22, line: 642, baseType: !851, size: 128, offset: 20992)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 128, elements: !42)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !830, file: !22, line: 643, baseType: !851, size: 128, offset: 21120)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !830, file: !22, line: 644, baseType: !50, size: 32, offset: 21248)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !830, file: !22, line: 645, baseType: !50, size: 32, offset: 21280)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !830, file: !22, line: 648, baseType: !741, size: 4096, align: 128, offset: 21376)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !830, file: !22, line: 649, baseType: !857, size: 4096, align: 128, offset: 25472)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !858)
!858 = !{!142, !142}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !830, file: !22, line: 652, baseType: !860, size: 576, align: 128, offset: 29568)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 576, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 9)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !830, file: !22, line: 653, baseType: !864, size: 1024, align: 128, offset: 30208)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 1024, elements: !865)
!865 = !{!524}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !830, file: !22, line: 656, baseType: !605, size: 192, offset: 31232)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !830, file: !22, line: 658, baseType: !605, size: 192, offset: 31424)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !830, file: !22, line: 661, baseType: !605, size: 192, offset: 31616)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !830, file: !22, line: 664, baseType: !196, size: 64, offset: 31808)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !830, file: !22, line: 665, baseType: !871, size: 24576, offset: 31872)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 24576, elements: !872)
!872 = !{!36, !524, !435}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !830, file: !22, line: 666, baseType: !874, size: 2048, offset: 56448)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 2048, elements: !865)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !830, file: !22, line: 667, baseType: !876, size: 2048, offset: 58496)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !462, size: 2048, elements: !500)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !830, file: !22, line: 670, baseType: !597, size: 96, offset: 60544)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !748, file: !22, line: 704, baseType: !879, size: 6144, offset: 69248)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !748, file: !22, line: 674, size: 6144, elements: !880)
!880 = !{!881, !885, !889, !892, !895, !897, !898, !901, !903, !904, !905, !906, !907, !908}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !879, file: !22, line: 677, baseType: !882, size: 320, align: 64)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 320, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 40)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !879, file: !22, line: 680, baseType: !886, size: 384, align: 128, offset: 384)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 384, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 48)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !879, file: !22, line: 683, baseType: !890, size: 640, align: 32, offset: 768)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 640, elements: !891)
!891 = !{!36, !884}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !879, file: !22, line: 686, baseType: !893, size: 2560, align: 128, offset: 1408)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 2560, elements: !894)
!894 = !{!36, !884, !36}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !879, file: !22, line: 687, baseType: !896, size: 1280, align: 64, offset: 3968)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1280, elements: !894)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !879, file: !22, line: 690, baseType: !882, size: 320, align: 32, offset: 5248)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !879, file: !22, line: 692, baseType: !899, size: 256, align: 32, offset: 5568)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !900)
!900 = !{!36, !43, !36}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !879, file: !22, line: 693, baseType: !902, size: 64, align: 32, offset: 5824)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 64, elements: !739)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !879, file: !22, line: 694, baseType: !50, size: 32, offset: 5888)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !879, file: !22, line: 695, baseType: !52, size: 32, align: 32, offset: 5920)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !879, file: !22, line: 698, baseType: !50, size: 32, offset: 5952)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !879, file: !22, line: 699, baseType: !50, size: 32, offset: 5984)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !879, file: !22, line: 702, baseType: !50, size: 32, offset: 6016)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !879, file: !22, line: 703, baseType: !50, size: 32, offset: 6048)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !748, file: !22, line: 707, baseType: !50, size: 32, offset: 75392)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !748, file: !22, line: 708, baseType: !50, size: 32, offset: 75424)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !748, file: !22, line: 709, baseType: !50, size: 32, offset: 75456)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !748, file: !22, line: 710, baseType: !50, size: 32, offset: 75488)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !748, file: !22, line: 711, baseType: !50, size: 32, offset: 75520)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !748, file: !22, line: 712, baseType: !50, size: 32, offset: 75552)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !748, file: !22, line: 713, baseType: !50, size: 32, offset: 75584)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !748, file: !22, line: 714, baseType: !50, size: 32, offset: 75616)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !748, file: !22, line: 717, baseType: !918, size: 128, offset: 75648)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !919)
!919 = !{!36, !36}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !748, file: !22, line: 718, baseType: !50, size: 32, offset: 75776)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !748, file: !22, line: 719, baseType: !50, size: 32, offset: 75808)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !748, file: !22, line: 722, baseType: !923, size: 4096, offset: 75840)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 4096, elements: !924)
!924 = !{!36, !524, !43}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !748, file: !22, line: 723, baseType: !926, size: 64, offset: 79936)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !42)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !748, file: !22, line: 724, baseType: !929, size: 2048, offset: 80000)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 2048, elements: !924)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !748, file: !22, line: 725, baseType: !931, size: 64, offset: 82048)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 32, elements: !42)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !748, file: !22, line: 728, baseType: !934, size: 144, offset: 82112)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 144, elements: !653)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !748, file: !22, line: 729, baseType: !50, size: 32, offset: 82272)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !748, file: !22, line: 730, baseType: !937, size: 272, offset: 82304)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 272, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 34)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !90, file: !22, line: 735, baseType: !941, size: 64, offset: 213632)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !22, line: 379, baseType: !943)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !22, line: 379, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !90, file: !22, line: 793, baseType: !945, size: 29504, offset: 213696)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !90, file: !22, line: 738, size: 29504, elements: !946)
!946 = !{!947, !974, !978, !980, !982, !983, !984, !985, !986, !987, !988, !989, !992, !994, !995, !998, !1000, !1002, !1003, !1004}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !945, file: !22, line: 764, baseType: !948, size: 5632)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !945, file: !22, line: 741, size: 5632, elements: !949)
!949 = !{!950, !951, !952, !953, !955, !956, !957, !958, !959, !961, !964, !966, !970, !971, !973}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !948, file: !22, line: 744, baseType: !50, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !948, file: !22, line: 746, baseType: !50, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !948, file: !22, line: 748, baseType: !50, size: 32, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !948, file: !22, line: 750, baseType: !954, size: 608, offset: 96)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 608, elements: !724)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !948, file: !22, line: 751, baseType: !50, size: 32, offset: 704)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !948, file: !22, line: 752, baseType: !50, size: 32, offset: 736)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !948, file: !22, line: 753, baseType: !50, size: 32, offset: 768)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !948, file: !22, line: 754, baseType: !196, size: 64, offset: 800)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !948, file: !22, line: 755, baseType: !960, size: 2048, offset: 864)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 2048, elements: !812)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !948, file: !22, line: 756, baseType: !962, size: 544, offset: 2912)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 544, elements: !963)
!963 = !{!633}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !948, file: !22, line: 757, baseType: !965, size: 192, offset: 3456)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !434)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !948, file: !22, line: 758, baseType: !967, size: 1664, offset: 3648)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 1664, elements: !968)
!968 = !{!43, !969}
!969 = !DISubrange(count: 13)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !948, file: !22, line: 760, baseType: !196, size: 64, offset: 5312)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !948, file: !22, line: 762, baseType: !972, size: 192, offset: 5376)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 192, elements: !598)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !948, file: !22, line: 763, baseType: !676, size: 64, offset: 5568)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !945, file: !22, line: 769, baseType: !975, size: 160, offset: 5632)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 160, elements: !976)
!976 = !{!977}
!977 = !DISubrange(count: 5)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !945, file: !22, line: 770, baseType: !979, size: 320, offset: 5824)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 320, elements: !976)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !945, file: !22, line: 771, baseType: !981, size: 320, offset: 6144)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !676, size: 320, elements: !976)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !945, file: !22, line: 772, baseType: !962, size: 544, offset: 6464)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !945, file: !22, line: 774, baseType: !979, size: 320, offset: 7040)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !945, file: !22, line: 775, baseType: !981, size: 320, offset: 7360)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !945, file: !22, line: 776, baseType: !981, size: 320, offset: 7680)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !945, file: !22, line: 777, baseType: !981, size: 320, offset: 8000)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !945, file: !22, line: 778, baseType: !981, size: 320, offset: 8320)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !945, file: !22, line: 779, baseType: !981, size: 320, offset: 8640)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !945, file: !22, line: 781, baseType: !990, size: 6080, offset: 8960)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 6080, elements: !991)
!991 = !{!977, !725}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !945, file: !22, line: 782, baseType: !993, size: 2176, offset: 15040)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 2176, elements: !632)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !945, file: !22, line: 783, baseType: !714, size: 128, offset: 17216)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !945, file: !22, line: 784, baseType: !996, size: 8192, offset: 17344)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 8192, elements: !997)
!997 = !{!36, !36, !524}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !945, file: !22, line: 785, baseType: !999, size: 384, offset: 25536)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 384, elements: !434)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !945, file: !22, line: 786, baseType: !1001, size: 3328, offset: 25920)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 3328, elements: !968)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !945, file: !22, line: 788, baseType: !196, size: 64, offset: 29248)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !945, file: !22, line: 789, baseType: !196, size: 64, offset: 29312)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !945, file: !22, line: 791, baseType: !597, size: 96, offset: 29376)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !90, file: !22, line: 795, baseType: !1006, size: 4096, align: 128, offset: 243200)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4096, elements: !1007)
!1007 = !{!36, !149}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !90, file: !22, line: 796, baseType: !1009, size: 2048, align: 128, offset: 247296)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !1007)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !90, file: !22, line: 797, baseType: !66, size: 64, offset: 249344)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !90, file: !22, line: 800, baseType: !155, size: 64, offset: 249408)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !90, file: !22, line: 801, baseType: !1013, size: 384, offset: 249472)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !1014)
!1014 = !{!36, !525}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !90, file: !22, line: 802, baseType: !1016, size: 128, offset: 249856)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 128, elements: !35)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !1019)
!1019 = !{!36, !43, !43}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !90, file: !22, line: 805, baseType: !1021, size: 448, offset: 249984)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 448, elements: !1027)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1023, line: 27, baseType: !1024)
!1023 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !284}
!1027 = !{!1028}
!1028 = !DISubrange(count: 7)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !90, file: !22, line: 806, baseType: !1021, size: 448, offset: 250432)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !90, file: !22, line: 807, baseType: !1031, size: 768, offset: 250880)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 768, elements: !1036)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1023, line: 28, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !284, !284}
!1036 = !{!1037}
!1037 = !DISubrange(count: 12)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !90, file: !22, line: 808, baseType: !1039, size: 768, offset: 251648)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1022, size: 768, elements: !1036)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !90, file: !22, line: 809, baseType: !1041, size: 64, offset: 252416)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1023, line: 29, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !284, !284, !50, !50}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !90, file: !22, line: 811, baseType: !1046, size: 8448, offset: 252480)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !6, line: 110, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 63, size: 8448, elements: !1048)
!1048 = !{!1049, !1055, !1056, !1057, !1058, !1060, !1061, !1062, !1063, !1069, !1075, !1076, !1080, !1085, !1086, !1092, !1096, !1097, !1098, !1099, !1100, !1105, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1047, file: !6, line: 65, baseType: !1050, size: 448)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 448, elements: !1027)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !6, line: 26, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!50, !284, !50, !284, !50}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1047, file: !6, line: 66, baseType: !1050, size: 448, offset: 448)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1047, file: !6, line: 67, baseType: !1050, size: 448, offset: 896)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1047, file: !6, line: 68, baseType: !1050, size: 448, offset: 1344)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1047, file: !6, line: 69, baseType: !1059, size: 256, offset: 1792)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 256, elements: !42)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1047, file: !6, line: 70, baseType: !1050, size: 448, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1047, file: !6, line: 71, baseType: !1050, size: 448, offset: 2496)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1047, file: !6, line: 72, baseType: !1050, size: 448, offset: 2944)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1047, file: !6, line: 73, baseType: !1064, size: 448, offset: 3392)
!1064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1065, size: 448, elements: !1027)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !6, line: 27, baseType: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !284, !284, !284, !284, !50, !640}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1047, file: !6, line: 74, baseType: !1070, size: 448, offset: 3840)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 448, elements: !1027)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !6, line: 28, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !284, !284, !284, !284, !284, !50, !640}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1047, file: !6, line: 75, baseType: !1050, size: 448, offset: 4288)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1047, file: !6, line: 76, baseType: !1077, size: 64, offset: 4736)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!50, !284, !50, !284, !50, !640}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1047, file: !6, line: 78, baseType: !1081, size: 256, offset: 4800)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 256, elements: !42)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!62, !284, !50}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1047, file: !6, line: 79, baseType: !1081, size: 256, offset: 5056)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1047, file: !6, line: 81, baseType: !1087, size: 64, offset: 5312)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !432, !50, !432, !50, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 128, elements: !42)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1047, file: !6, line: 83, baseType: !1093, size: 64, offset: 5376)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!192, !1090, !1090, !50}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1047, file: !6, line: 86, baseType: !1064, size: 448, offset: 5440)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1047, file: !6, line: 87, baseType: !1070, size: 448, offset: 5888)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1047, file: !6, line: 88, baseType: !1064, size: 448, offset: 6336)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1047, file: !6, line: 89, baseType: !1070, size: 448, offset: 6784)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1047, file: !6, line: 93, baseType: !1101, size: 448, offset: 7232)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 448, elements: !1027)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!50, !640, !462, !50, !462, !794, !50, !50}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1047, file: !6, line: 98, baseType: !1106, size: 64, offset: 7680)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !284, !284, !640}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1047, file: !6, line: 99, baseType: !1106, size: 64, offset: 7744)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1047, file: !6, line: 100, baseType: !1106, size: 64, offset: 7808)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1047, file: !6, line: 101, baseType: !1106, size: 64, offset: 7872)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1047, file: !6, line: 102, baseType: !1106, size: 64, offset: 7936)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1047, file: !6, line: 103, baseType: !1106, size: 64, offset: 8000)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1047, file: !6, line: 104, baseType: !1106, size: 64, offset: 8064)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1047, file: !6, line: 105, baseType: !1106, size: 64, offset: 8128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1047, file: !6, line: 106, baseType: !1106, size: 64, offset: 8192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1047, file: !6, line: 107, baseType: !1106, size: 64, offset: 8256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1047, file: !6, line: 108, baseType: !1106, size: 64, offset: 8320)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1047, file: !6, line: 109, baseType: !1106, size: 64, offset: 8384)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !90, file: !22, line: 812, baseType: !1121, size: 2368, offset: 260928)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !504, line: 111, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !504, line: 58, size: 2368, elements: !1123)
!1123 = !{!1124, !1131, !1135, !1139, !1146, !1151, !1152, !1156, !1160, !1161, !1165, !1173, !1177, !1181, !1182, !1186, !1190, !1194, !1195, !1196, !1197, !1202}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1122, file: !504, line: 60, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !284, !50, !1128, !50, !50, !50, !50, !50, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1122, file: !504, line: 65, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!284, !284, !640, !1128, !50, !50, !50, !50, !50, !1129}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1122, file: !504, line: 71, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !284, !50, !284, !50, !50, !50, !50, !50}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1122, file: !504, line: 75, baseType: !1140, size: 640, offset: 192)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 640, elements: !1144)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !284, !50, !284, !50, !284, !50, !50}
!1144 = !{!1145}
!1145 = !DISubrange(count: 10)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1122, file: !504, line: 78, baseType: !1147, size: 448, offset: 832)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1148, size: 448, elements: !1027)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !284, !50, !284, !50, !50}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1122, file: !504, line: 79, baseType: !1148, size: 64, offset: 1280)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1122, file: !504, line: 81, baseType: !1153, size: 64, offset: 1344)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !284, !50, !284, !50, !50, !50}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1122, file: !504, line: 84, baseType: !1157, size: 64, offset: 1408)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !284, !284, !284, !284, !50, !50, !50, !794}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1122, file: !504, line: 88, baseType: !1148, size: 64, offset: 1472)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1122, file: !504, line: 91, baseType: !1162, size: 64, offset: 1536)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !284, !50, !50}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1122, file: !504, line: 93, baseType: !1166, size: 64, offset: 1600)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!155, !155, !1169, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1172, line: 46, baseType: !64)
!1172 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1122, file: !504, line: 94, baseType: !1174, size: 64, offset: 1664)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !155, !50}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1122, file: !504, line: 97, baseType: !1178, size: 64, offset: 1728)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{null, !462, !284, !50}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1122, file: !504, line: 98, baseType: !1178, size: 64, offset: 1792)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1122, file: !504, line: 99, baseType: !1183, size: 64, offset: 1856)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !462, !462, !50}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1122, file: !504, line: 100, baseType: !1187, size: 64, offset: 1920)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !462, !50}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1122, file: !504, line: 102, baseType: !1191, size: 64, offset: 1984)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !284, !284, !284, !284, !284, !50, !50, !50, !50}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1122, file: !504, line: 104, baseType: !516, size: 64, offset: 2048)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1122, file: !504, line: 105, baseType: !516, size: 64, offset: 2112)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1122, file: !504, line: 106, baseType: !516, size: 64, offset: 2176)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1122, file: !504, line: 107, baseType: !1198, size: 64, offset: 2240)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !87, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1122, file: !504, line: 109, baseType: !1203, size: 64, offset: 2304)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !640, !462, !462, !462, !462, !50}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !90, file: !22, line: 813, baseType: !1207, size: 960, offset: 263296)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1208, line: 115, baseType: !1209)
!1208 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1208, line: 89, size: 960, elements: !1210)
!1210 = !{!1211, !1215, !1219, !1224, !1225, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1241, !1245, !1249}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1209, file: !1208, line: 94, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !794, !284, !284}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1209, file: !1208, line: 95, baseType: !1216, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !284, !794}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1209, file: !1208, line: 97, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !1223, !284, !284}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1209, file: !1208, line: 98, baseType: !1212, size: 64, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1209, file: !1208, line: 99, baseType: !1226, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !284, !1223}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1209, file: !1208, line: 100, baseType: !1216, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1209, file: !1208, line: 102, baseType: !1220, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1209, file: !1208, line: 103, baseType: !1226, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1209, file: !1208, line: 104, baseType: !1216, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1209, file: !1208, line: 106, baseType: !1212, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1209, file: !1208, line: 107, baseType: !1216, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1209, file: !1208, line: 109, baseType: !1236, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !1239, !284, !284}
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1024, elements: !148)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1209, file: !1208, line: 110, baseType: !1242, size: 64, offset: 768)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !284, !1239}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1209, file: !1208, line: 112, baseType: !1246, size: 64, offset: 832)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !794}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1209, file: !1208, line: 113, baseType: !1246, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !90, file: !22, line: 814, baseType: !1251, size: 384, offset: 264256)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1208, line: 126, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1208, line: 117, size: 384, elements: !1253)
!1253 = !{!1254, !1258, !1259, !1263, !1264, !1268}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1252, file: !1208, line: 119, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !794, !794}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1252, file: !1208, line: 120, baseType: !1255, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1252, file: !1208, line: 121, baseType: !1260, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!50, !794, !432, !284}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1252, file: !1208, line: 122, baseType: !1260, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1252, file: !1208, line: 123, baseType: !1265, size: 64, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!50, !794, !432, !284, !794}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1252, file: !1208, line: 124, baseType: !1269, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !794, !794, !284}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !90, file: !22, line: 815, baseType: !1273, size: 1408, offset: 264640)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1274, line: 44, baseType: !1275)
!1274 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1274, line: 26, size: 1408, elements: !1276)
!1276 = !{!1277, !1281, !1282, !1286, !1287, !1291, !1295, !1296, !1301, !1305, !1306, !1307, !1309}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1275, file: !1274, line: 28, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!50, !794, !462, !462}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1275, file: !1274, line: 29, baseType: !1278, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1275, file: !1274, line: 30, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!50, !794, !50, !50}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1275, file: !1274, line: 31, baseType: !1283, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1275, file: !1274, line: 33, baseType: !1288, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !794, !446, !50}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1275, file: !1274, line: 34, baseType: !1292, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !794, !442, !50}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1275, file: !1274, line: 35, baseType: !1292, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1275, file: !1274, line: 37, baseType: !1297, size: 64, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !794, !1300, !462, !50}
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1275, file: !1274, line: 39, baseType: !1302, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!50, !794}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1275, file: !1274, line: 40, baseType: !1302, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1275, file: !1274, line: 41, baseType: !1302, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1275, file: !1274, line: 42, baseType: !1308, size: 384, offset: 704)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 384, elements: !434)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1275, file: !1274, line: 43, baseType: !1310, size: 320, offset: 1088)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1311, size: 320, elements: !976)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!50, !794, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !289, line: 63, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !289, line: 58, size: 416, elements: !1317)
!1317 = !{!1318, !1319, !1320}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1316, file: !289, line: 60, baseType: !50, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1316, file: !289, line: 61, baseType: !736, size: 256, offset: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1316, file: !289, line: 62, baseType: !140, size: 128, offset: 288)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !90, file: !22, line: 816, baseType: !1322, size: 576, offset: 266048)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !566, line: 170, baseType: !1323)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 161, size: 576, elements: !1324)
!1324 = !{!1325, !1331, !1332, !1338, !1339}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1323, file: !566, line: 163, baseType: !1326, size: 128)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 128, elements: !35)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !566, line: 159, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !284, !50, !50, !50, !621}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1323, file: !566, line: 164, baseType: !1326, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1323, file: !566, line: 165, baseType: !1333, size: 128, offset: 256)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1334, size: 128, elements: !35)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !566, line: 160, baseType: !1335)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{null, !284, !50, !50, !50}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1323, file: !566, line: 166, baseType: !1333, size: 128, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1323, file: !566, line: 167, baseType: !1340, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !284, !1343, !1344, !1347, !50, !50}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1280, elements: !1346)
!1346 = !{!884, !36}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1349)
!1349 = !{!43, !43}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !90, file: !22, line: 821, baseType: !1351, size: 64, offset: 266624)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !22, line: 377, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !22, line: 366, size: 960, elements: !1354)
!1354 = !{!1355, !1357, !1358, !1359, !1360, !1361, !1362, !1372, !1373}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1353, file: !22, line: 368, baseType: !1356, size: 8)
!1356 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1353, file: !22, line: 369, baseType: !39, size: 8, offset: 8)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1353, file: !22, line: 370, baseType: !39, size: 8, offset: 16)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1353, file: !22, line: 371, baseType: !50, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1353, file: !22, line: 372, baseType: !50, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1353, file: !22, line: 373, baseType: !564, size: 64, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1353, file: !22, line: 374, baseType: !1363, size: 256, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !566, line: 157, baseType: !1364)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !566, line: 149, size: 256, elements: !1365)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1364, file: !566, line: 151, baseType: !563, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1364, file: !566, line: 152, baseType: !50, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1364, file: !566, line: 153, baseType: !50, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1364, file: !566, line: 154, baseType: !50, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1364, file: !566, line: 155, baseType: !50, size: 32, offset: 160)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1364, file: !566, line: 156, baseType: !50, size: 32, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1353, file: !22, line: 375, baseType: !1363, size: 256, offset: 448)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1353, file: !22, line: 376, baseType: !1363, size: 256, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_me_t", file: !46, line: 53, baseType: !1376, align: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 30, size: 1152, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel", scope: !1376, file: !46, line: 35, baseType: !50, size: 32, align: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "p_cost_mv", scope: !1376, file: !46, line: 36, baseType: !462, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_cost", scope: !1376, file: !46, line: 37, baseType: !50, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1376, file: !46, line: 38, baseType: !50, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1376, file: !46, line: 39, baseType: !1129, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1376, file: !46, line: 41, baseType: !1384, size: 384, offset: 256)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !434)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !1376, file: !46, line: 42, baseType: !284, size: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1376, file: !46, line: 43, baseType: !605, size: 192, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1376, file: !46, line: 44, baseType: !462, size: 64, offset: 896)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1376, file: !46, line: 45, baseType: !196, size: 64, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mvp", scope: !1376, file: !46, line: 47, baseType: !52, size: 32, align: 32, offset: 1024)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !1376, file: !46, line: 50, baseType: !50, size: 32, offset: 1056)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !1376, file: !46, line: 51, baseType: !50, size: 32, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1376, file: !46, line: 52, baseType: !52, size: 32, align: 32, offset: 1120)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1432, !1433, !1434, !1439, !1440, !1441, !1443, !1448, !1449, !1451, !1452, !1453, !1455, !1461, !1463, !1468, !1469, !1470, !1473, !1476, !1479, !1482, !1484, !1487, !1489, !1493, !1494, !1496, !1498, !1500, !1501, !1502, !1505, !1509, !1513, !1517, !1519, !1522, !1524, !1529, !1535, !1538, !1543, !1549, !1552, !1554, !1556, !1559, !1560, !1561, !1562, !1564, !1569, !1575, !1578, !1583, !1589, !1592, !1594, !1595, !1596, !1597, !1602, !1605, !1606, !1609, !1611, !1612, !1613, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1629, !1630, !1631, !1632, !1633, !1635, !1638, !1639, !1643, !1644, !1646, !1649, !1653, !1654, !1656, !1658, !1661, !1664, !1666, !1668, !1670, !1673, !1676, !1679, !1680, !1684, !1687, !1688}
!1394 = !DILocalVariable(name: "h", arg: 1, scope: !83, file: !84, line: 173, type: !87)
!1395 = !DILocalVariable(name: "m", arg: 2, scope: !83, file: !84, line: 173, type: !1374)
!1396 = !DILocalVariable(name: "mvc", arg: 3, scope: !83, file: !84, line: 173, type: !628)
!1397 = !DILocalVariable(name: "i_mvc", arg: 4, scope: !83, file: !84, line: 173, type: !50)
!1398 = !DILocalVariable(name: "p_halfpel_thresh", arg: 5, scope: !83, file: !84, line: 173, type: !640)
!1399 = !DILocalVariable(name: "bw", scope: !83, file: !84, line: 175, type: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!1401 = !DILocalVariable(name: "bh", scope: !83, file: !84, line: 176, type: !1400)
!1402 = !DILocalVariable(name: "i_pixel", scope: !83, file: !84, line: 177, type: !1400)
!1403 = !DILocalVariable(name: "stride", scope: !83, file: !84, line: 178, type: !1400)
!1404 = !DILocalVariable(name: "i_me_range", scope: !83, file: !84, line: 179, type: !50)
!1405 = !DILocalVariable(name: "bmx", scope: !83, file: !84, line: 180, type: !50)
!1406 = !DILocalVariable(name: "bmy", scope: !83, file: !84, line: 180, type: !50)
!1407 = !DILocalVariable(name: "bcost", scope: !83, file: !84, line: 180, type: !50)
!1408 = !DILocalVariable(name: "bpred_mx", scope: !83, file: !84, line: 181, type: !50)
!1409 = !DILocalVariable(name: "bpred_my", scope: !83, file: !84, line: 181, type: !50)
!1410 = !DILocalVariable(name: "bpred_cost", scope: !83, file: !84, line: 181, type: !50)
!1411 = !DILocalVariable(name: "omx", scope: !83, file: !84, line: 182, type: !50)
!1412 = !DILocalVariable(name: "omy", scope: !83, file: !84, line: 182, type: !50)
!1413 = !DILocalVariable(name: "pmx", scope: !83, file: !84, line: 182, type: !50)
!1414 = !DILocalVariable(name: "pmy", scope: !83, file: !84, line: 182, type: !50)
!1415 = !DILocalVariable(name: "p_fenc", scope: !83, file: !84, line: 183, type: !284)
!1416 = !DILocalVariable(name: "p_fref_w", scope: !83, file: !84, line: 184, type: !284)
!1417 = !DILocalVariable(name: "pix", scope: !83, file: !84, line: 185, type: !841, align: 128)
!1418 = !DILocalVariable(name: "costs", scope: !83, file: !84, line: 187, type: !443)
!1419 = !DILocalVariable(name: "mv_x_min", scope: !83, file: !84, line: 189, type: !50)
!1420 = !DILocalVariable(name: "mv_y_min", scope: !83, file: !84, line: 190, type: !50)
!1421 = !DILocalVariable(name: "mv_x_max", scope: !83, file: !84, line: 191, type: !50)
!1422 = !DILocalVariable(name: "mv_y_max", scope: !83, file: !84, line: 192, type: !50)
!1423 = !DILocalVariable(name: "mv_x_min_qpel", scope: !83, file: !84, line: 193, type: !50)
!1424 = !DILocalVariable(name: "mv_y_min_qpel", scope: !83, file: !84, line: 194, type: !50)
!1425 = !DILocalVariable(name: "mv_x_max_qpel", scope: !83, file: !84, line: 195, type: !50)
!1426 = !DILocalVariable(name: "mv_y_max_qpel", scope: !83, file: !84, line: 196, type: !50)
!1427 = !DILocalVariable(name: "mv_min", scope: !83, file: !84, line: 199, type: !26)
!1428 = !DILocalVariable(name: "mv_max", scope: !83, file: !84, line: 200, type: !26)
!1429 = !DILocalVariable(name: "p_cost_mvx", scope: !83, file: !84, line: 204, type: !1430)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!1432 = !DILocalVariable(name: "p_cost_mvy", scope: !83, file: !84, line: 205, type: !1430)
!1433 = !DILocalVariable(name: "pmv", scope: !83, file: !84, line: 207, type: !26)
!1434 = !DILocalVariable(name: "stride2", scope: !1435, file: !84, line: 219, type: !50)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !84, line: 219, column: 13)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !84, line: 218, column: 13)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !84, line: 216, column: 5)
!1438 = distinct !DILexicalBlock(scope: !83, file: !84, line: 215, column: 9)
!1439 = !DILocalVariable(name: "src", scope: !1435, file: !84, line: 219, type: !284)
!1440 = !DILocalVariable(name: "cost", scope: !1435, file: !84, line: 219, type: !50)
!1441 = !DILocalVariable(name: "i", scope: !1442, file: !84, line: 220, type: !50)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !84, line: 220, column: 9)
!1443 = !DILocalVariable(name: "mx", scope: !1444, file: !84, line: 224, type: !50)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !84, line: 223, column: 13)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !84, line: 222, column: 17)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !84, line: 221, column: 9)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !84, line: 220, column: 9)
!1448 = !DILocalVariable(name: "my", scope: !1444, file: !84, line: 225, type: !50)
!1449 = !DILocalVariable(name: "stride2", scope: !1450, file: !84, line: 226, type: !50)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !84, line: 226, column: 17)
!1451 = !DILocalVariable(name: "src", scope: !1450, file: !84, line: 226, type: !284)
!1452 = !DILocalVariable(name: "cost", scope: !1450, file: !84, line: 226, type: !50)
!1453 = !DILocalVariable(name: "cost", scope: !1454, file: !84, line: 231, type: !50)
!1454 = distinct !DILexicalBlock(scope: !1437, file: !84, line: 231, column: 9)
!1455 = !DILocalVariable(name: "mvc_fpel", scope: !1456, file: !84, line: 248, type: !1459, align: 64)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !84, line: 247, column: 9)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !84, line: 246, column: 13)
!1458 = distinct !DILexicalBlock(scope: !1438, file: !84, line: 234, column: 5)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !1460)
!1460 = !{!142, !36}
!1461 = !DILocalVariable(name: "i", scope: !1462, file: !84, line: 251, type: !50)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !84, line: 251, column: 13)
!1463 = !DILocalVariable(name: "mx", scope: !1464, file: !84, line: 255, type: !50)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !84, line: 254, column: 17)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !84, line: 253, column: 21)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !84, line: 252, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !84, line: 251, column: 13)
!1468 = !DILocalVariable(name: "my", scope: !1464, file: !84, line: 256, type: !50)
!1469 = !DILocalVariable(name: "cost", scope: !1464, file: !84, line: 257, type: !50)
!1470 = !DILocalVariable(name: "cost", scope: !1471, file: !84, line: 272, type: !50)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !84, line: 272, column: 9)
!1472 = distinct !DILexicalBlock(scope: !83, file: !84, line: 271, column: 9)
!1473 = !DILocalVariable(name: "i", scope: !1474, file: !84, line: 280, type: !50)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !84, line: 277, column: 9)
!1475 = distinct !DILexicalBlock(scope: !83, file: !84, line: 275, column: 5)
!1476 = !DILocalVariable(name: "pix_base", scope: !1477, file: !84, line: 283, type: !284)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 283, column: 17)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !84, line: 282, column: 13)
!1479 = !DILocalVariable(name: "pix_base", scope: !1480, file: !84, line: 321, type: !284)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 321, column: 13)
!1481 = distinct !DILexicalBlock(scope: !1475, file: !84, line: 299, column: 13)
!1482 = !DILocalVariable(name: "pix_base", scope: !1483, file: !84, line: 322, type: !284)
!1483 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 322, column: 13)
!1484 = !DILocalVariable(name: "dir", scope: !1485, file: !84, line: 333, type: !50)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !84, line: 332, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 331, column: 17)
!1487 = !DILocalVariable(name: "i", scope: !1488, file: !84, line: 338, type: !50)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !84, line: 338, column: 17)
!1489 = !DILocalVariable(name: "pix_base", scope: !1490, file: !84, line: 340, type: !284)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !84, line: 340, column: 21)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !84, line: 339, column: 17)
!1492 = distinct !DILexicalBlock(scope: !1488, file: !84, line: 338, column: 17)
!1493 = !DILocalVariable(name: "dir", scope: !1481, file: !84, line: 359, type: !50)
!1494 = !DILocalVariable(name: "pix_base", scope: !1495, file: !84, line: 360, type: !284)
!1495 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 360, column: 13)
!1496 = !DILocalVariable(name: "pix_base", scope: !1497, file: !84, line: 365, type: !284)
!1497 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 365, column: 13)
!1498 = !DILocalVariable(name: "ucost1", scope: !1499, file: !84, line: 382, type: !50)
!1499 = distinct !DILexicalBlock(scope: !1475, file: !84, line: 376, column: 9)
!1500 = !DILocalVariable(name: "ucost2", scope: !1499, file: !84, line: 382, type: !50)
!1501 = !DILocalVariable(name: "cross_start", scope: !1499, file: !84, line: 383, type: !50)
!1502 = !DILocalVariable(name: "pix_base", scope: !1503, file: !84, line: 387, type: !284)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !84, line: 387, column: 13)
!1504 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 387, column: 13)
!1505 = !DILocalVariable(name: "pix_base", scope: !1506, file: !84, line: 389, type: !284)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !84, line: 389, column: 17)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !84, line: 389, column: 17)
!1508 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 388, column: 17)
!1509 = !DILocalVariable(name: "pix_base", scope: !1510, file: !84, line: 396, type: !284)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !84, line: 396, column: 17)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !84, line: 396, column: 17)
!1512 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 395, column: 17)
!1513 = !DILocalVariable(name: "pix_base", scope: !1514, file: !84, line: 405, type: !284)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !84, line: 405, column: 17)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !84, line: 404, column: 13)
!1516 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 403, column: 17)
!1517 = !DILocalVariable(name: "pix_base", scope: !1518, file: !84, line: 406, type: !284)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !84, line: 406, column: 17)
!1519 = !DILocalVariable(name: "range", scope: !1520, file: !84, line: 411, type: !50)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !84, line: 410, column: 17)
!1521 = distinct !DILexicalBlock(scope: !1515, file: !84, line: 409, column: 21)
!1522 = !DILocalVariable(name: "i", scope: !1523, file: !84, line: 412, type: !50)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !84, line: 412, column: 21)
!1524 = !DILocalVariable(name: "pix_base", scope: !1525, file: !84, line: 412, type: !284)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !84, line: 412, column: 21)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !84, line: 412, column: 21)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !84, line: 412, column: 21)
!1528 = distinct !DILexicalBlock(scope: !1523, file: !84, line: 412, column: 21)
!1529 = !DILocalVariable(name: "cost", scope: !1530, file: !84, line: 412, type: !50)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !84, line: 412, column: 21)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !84, line: 412, column: 21)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !84, line: 412, column: 21)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !84, line: 412, column: 21)
!1534 = distinct !DILexicalBlock(scope: !1523, file: !84, line: 412, column: 21)
!1535 = !DILocalVariable(name: "cost", scope: !1536, file: !84, line: 412, type: !50)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !84, line: 412, column: 21)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !84, line: 412, column: 21)
!1538 = !DILocalVariable(name: "pix_base", scope: !1539, file: !84, line: 412, type: !284)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !84, line: 412, column: 21)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !84, line: 412, column: 21)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !84, line: 412, column: 21)
!1542 = distinct !DILexicalBlock(scope: !1523, file: !84, line: 412, column: 21)
!1543 = !DILocalVariable(name: "cost", scope: !1544, file: !84, line: 412, type: !50)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !84, line: 412, column: 21)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !84, line: 412, column: 21)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !84, line: 412, column: 21)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !84, line: 412, column: 21)
!1548 = distinct !DILexicalBlock(scope: !1523, file: !84, line: 412, column: 21)
!1549 = !DILocalVariable(name: "cost", scope: !1550, file: !84, line: 412, type: !50)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !84, line: 412, column: 21)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !84, line: 412, column: 21)
!1552 = !DILocalVariable(name: "pix_base", scope: !1553, file: !84, line: 413, type: !284)
!1553 = distinct !DILexicalBlock(scope: !1520, file: !84, line: 413, column: 21)
!1554 = !DILocalVariable(name: "pix_base", scope: !1555, file: !84, line: 414, type: !284)
!1555 = distinct !DILexicalBlock(scope: !1520, file: !84, line: 414, column: 21)
!1556 = !DILocalVariable(name: "mvd", scope: !1557, file: !84, line: 434, type: !50)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !84, line: 423, column: 13)
!1558 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 422, column: 17)
!1559 = !DILocalVariable(name: "sad_ctx", scope: !1557, file: !84, line: 435, type: !50)
!1560 = !DILocalVariable(name: "mvd_ctx", scope: !1557, file: !84, line: 435, type: !50)
!1561 = !DILocalVariable(name: "denom", scope: !1557, file: !84, line: 436, type: !50)
!1562 = !DILocalVariable(name: "i", scope: !1563, file: !84, line: 476, type: !50)
!1563 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 476, column: 13)
!1564 = !DILocalVariable(name: "pix_base", scope: !1565, file: !84, line: 476, type: !284)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !84, line: 476, column: 13)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !84, line: 476, column: 13)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !84, line: 476, column: 13)
!1568 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 476, column: 13)
!1569 = !DILocalVariable(name: "cost", scope: !1570, file: !84, line: 476, type: !50)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !84, line: 476, column: 13)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !84, line: 476, column: 13)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !84, line: 476, column: 13)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !84, line: 476, column: 13)
!1574 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 476, column: 13)
!1575 = !DILocalVariable(name: "cost", scope: !1576, file: !84, line: 476, type: !50)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !84, line: 476, column: 13)
!1577 = distinct !DILexicalBlock(scope: !1572, file: !84, line: 476, column: 13)
!1578 = !DILocalVariable(name: "pix_base", scope: !1579, file: !84, line: 476, type: !284)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !84, line: 476, column: 13)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !84, line: 476, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !84, line: 476, column: 13)
!1582 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 476, column: 13)
!1583 = !DILocalVariable(name: "cost", scope: !1584, file: !84, line: 476, type: !50)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !84, line: 476, column: 13)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !84, line: 476, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !84, line: 476, column: 13)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !84, line: 476, column: 13)
!1588 = distinct !DILexicalBlock(scope: !1563, file: !84, line: 476, column: 13)
!1589 = !DILocalVariable(name: "cost", scope: !1590, file: !84, line: 476, type: !50)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !84, line: 476, column: 13)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !84, line: 476, column: 13)
!1592 = !DILocalVariable(name: "pix_base", scope: !1593, file: !84, line: 478, type: !284)
!1593 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 478, column: 13)
!1594 = !DILocalVariable(name: "p_cost_omvx", scope: !1499, file: !84, line: 482, type: !1430)
!1595 = !DILocalVariable(name: "p_cost_omvy", scope: !1499, file: !84, line: 483, type: !1430)
!1596 = !DILocalVariable(name: "i", scope: !1499, file: !84, line: 484, type: !50)
!1597 = !DILocalVariable(name: "j", scope: !1598, file: !84, line: 497, type: !50)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !84, line: 497, column: 21)
!1599 = distinct !DILexicalBlock(scope: !1600, file: !84, line: 496, column: 17)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !84, line: 494, column: 21)
!1601 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 486, column: 13)
!1602 = !DILocalVariable(name: "mx", scope: !1603, file: !84, line: 499, type: !50)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !84, line: 498, column: 21)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !84, line: 497, column: 21)
!1605 = !DILocalVariable(name: "my", scope: !1603, file: !84, line: 500, type: !50)
!1606 = !DILocalVariable(name: "cost", scope: !1607, file: !84, line: 502, type: !50)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !84, line: 502, column: 29)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !84, line: 501, column: 29)
!1609 = !DILocalVariable(name: "dir", scope: !1610, file: !84, line: 507, type: !50)
!1610 = distinct !DILexicalBlock(scope: !1600, file: !84, line: 506, column: 17)
!1611 = !DILocalVariable(name: "pix_base", scope: !1610, file: !84, line: 508, type: !284)
!1612 = !DILocalVariable(name: "dy", scope: !1610, file: !84, line: 509, type: !50)
!1613 = !DILocalVariable(name: "min_x", scope: !1614, file: !84, line: 574, type: !1400)
!1614 = distinct !DILexicalBlock(scope: !1475, file: !84, line: 573, column: 9)
!1615 = !DILocalVariable(name: "min_y", scope: !1614, file: !84, line: 575, type: !1400)
!1616 = !DILocalVariable(name: "max_x", scope: !1614, file: !84, line: 576, type: !1400)
!1617 = !DILocalVariable(name: "max_y", scope: !1614, file: !84, line: 577, type: !1400)
!1618 = !DILocalVariable(name: "width", scope: !1614, file: !84, line: 579, type: !1400)
!1619 = !DILocalVariable(name: "sums_base", scope: !1614, file: !84, line: 588, type: !462)
!1620 = !DILocalVariable(name: "enc_dc", scope: !1614, file: !84, line: 592, type: !1091, align: 128)
!1621 = !DILocalVariable(name: "sad_size", scope: !1614, file: !84, line: 593, type: !50)
!1622 = !DILocalVariable(name: "delta", scope: !1614, file: !84, line: 594, type: !50)
!1623 = !DILocalVariable(name: "xs", scope: !1614, file: !84, line: 595, type: !794)
!1624 = !DILocalVariable(name: "xn", scope: !1614, file: !84, line: 596, type: !50)
!1625 = !DILocalVariable(name: "cost_fpel_mvx", scope: !1614, file: !84, line: 597, type: !462)
!1626 = !DILocalVariable(name: "mvsads", scope: !1627, file: !84, line: 612, type: !44)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !84, line: 610, column: 13)
!1628 = distinct !DILexicalBlock(scope: !1614, file: !84, line: 609, column: 17)
!1629 = !DILocalVariable(name: "nmvsad", scope: !1627, file: !84, line: 613, type: !50)
!1630 = !DILocalVariable(name: "limit", scope: !1627, file: !84, line: 613, type: !50)
!1631 = !DILocalVariable(name: "sad_thresh", scope: !1627, file: !84, line: 614, type: !50)
!1632 = !DILocalVariable(name: "bsad", scope: !1627, file: !84, line: 615, type: !50)
!1633 = !DILocalVariable(name: "my", scope: !1634, file: !84, line: 617, type: !50)
!1634 = distinct !DILexicalBlock(scope: !1627, file: !84, line: 617, column: 17)
!1635 = !DILocalVariable(name: "i", scope: !1636, file: !84, line: 619, type: !50)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !84, line: 618, column: 17)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !84, line: 617, column: 17)
!1638 = !DILocalVariable(name: "ycost", scope: !1636, file: !84, line: 620, type: !50)
!1639 = !DILocalVariable(name: "ref", scope: !1640, file: !84, line: 628, type: !284)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !84, line: 627, column: 21)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !84, line: 626, column: 21)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 626, column: 21)
!1643 = !DILocalVariable(name: "sads", scope: !1640, file: !84, line: 629, type: !597)
!1644 = !DILocalVariable(name: "j", scope: !1645, file: !84, line: 631, type: !50)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !84, line: 631, column: 25)
!1646 = !DILocalVariable(name: "sad", scope: !1647, file: !84, line: 633, type: !50)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !84, line: 632, column: 25)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !84, line: 631, column: 25)
!1649 = !DILocalVariable(name: "mx", scope: !1650, file: !84, line: 646, type: !50)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !84, line: 645, column: 21)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !84, line: 644, column: 21)
!1652 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 644, column: 21)
!1653 = !DILocalVariable(name: "sad", scope: !1650, file: !84, line: 647, type: !50)
!1654 = !DILocalVariable(name: "i", scope: !1655, file: !84, line: 665, type: !50)
!1655 = distinct !DILexicalBlock(scope: !1627, file: !84, line: 664, column: 17)
!1656 = !DILocalVariable(name: "j", scope: !1657, file: !84, line: 669, type: !50)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !84, line: 669, column: 21)
!1658 = !DILocalVariable(name: "sad", scope: !1659, file: !84, line: 671, type: !26)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !84, line: 670, column: 21)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !84, line: 669, column: 21)
!1661 = !DILocalVariable(name: "mvsad", scope: !1662, file: !84, line: 674, type: !62)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !84, line: 673, column: 25)
!1663 = distinct !DILexicalBlock(scope: !1659, file: !84, line: 672, column: 29)
!1664 = !DILocalVariable(name: "bi", scope: !1665, file: !84, line: 692, type: !50)
!1665 = distinct !DILexicalBlock(scope: !1627, file: !84, line: 691, column: 17)
!1666 = !DILocalVariable(name: "i", scope: !1667, file: !84, line: 693, type: !50)
!1667 = distinct !DILexicalBlock(scope: !1665, file: !84, line: 693, column: 21)
!1668 = !DILocalVariable(name: "i", scope: !1669, file: !84, line: 702, type: !50)
!1669 = distinct !DILexicalBlock(scope: !1627, file: !84, line: 702, column: 17)
!1670 = !DILocalVariable(name: "cost", scope: !1671, file: !84, line: 703, type: !50)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !84, line: 703, column: 21)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !84, line: 702, column: 17)
!1673 = !DILocalVariable(name: "my", scope: !1674, file: !84, line: 708, type: !50)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !84, line: 708, column: 17)
!1675 = distinct !DILexicalBlock(scope: !1628, file: !84, line: 706, column: 13)
!1676 = !DILocalVariable(name: "i", scope: !1677, file: !84, line: 710, type: !50)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !84, line: 709, column: 17)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !84, line: 708, column: 17)
!1679 = !DILocalVariable(name: "ycost", scope: !1677, file: !84, line: 711, type: !50)
!1680 = !DILocalVariable(name: "cost", scope: !1681, file: !84, line: 721, type: !50)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !84, line: 721, column: 25)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !84, line: 720, column: 21)
!1683 = distinct !DILexicalBlock(scope: !1677, file: !84, line: 720, column: 21)
!1684 = !DILocalVariable(name: "hpel", scope: !1685, file: !84, line: 751, type: !50)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !84, line: 750, column: 5)
!1686 = distinct !DILexicalBlock(scope: !83, file: !84, line: 749, column: 9)
!1687 = !DILocalVariable(name: "qpel", scope: !1685, file: !84, line: 752, type: !50)
!1688 = !DILabel(scope: !1481, name: "me_hex2", file: !84, line: 300)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 56, elements: !1027)
!1690 = !DIGlobalVariableExpression(var: !1691, expr: !DIExpression())
!1691 = distinct !DIGlobalVariable(name: "range_mul", scope: !83, file: !84, line: 427, type: !1692, isLocal: true, isDefinition: true)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 128, elements: !1349)
!1693 = !DIGlobalVariableExpression(var: !1694, expr: !DIExpression())
!1694 = distinct !DIGlobalVariable(name: "hex4", scope: !83, file: !84, line: 487, type: !1695, isLocal: true, isDefinition: true)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 256, elements: !1460)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!1697 = !DIGlobalVariableExpression(var: !1698, expr: !DIExpression())
!1698 = distinct !DIGlobalVariable(name: "zero", scope: !83, file: !84, line: 591, type: !1699, isLocal: true, isDefinition: true, align: 128)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 128)
!1702 = !DIGlobalVariableExpression(var: !1703, expr: !DIExpression())
!1703 = distinct !DIGlobalVariable(name: "x264_iter_kludge", scope: !2, file: !84, line: 936, type: !50, isLocal: false, isDefinition: true)
!1704 = !DIGlobalVariableExpression(var: !1705, expr: !DIExpression())
!1705 = distinct !DIGlobalVariable(name: "hex2", scope: !2, file: !84, line: 51, type: !1706, isLocal: true, isDefinition: true)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 128, elements: !808)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(name: "mod6m1", scope: !2, file: !84, line: 49, type: !1709, isLocal: true, isDefinition: true)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, elements: !71)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(name: "square1", scope: !2, file: !84, line: 52, type: !1712, isLocal: true, isDefinition: true)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 144, elements: !1713)
!1713 = !{!862, !36}
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(name: "subpel_iterations", scope: !2, file: !84, line: 35, type: !1716, isLocal: true, isDefinition: true)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 352, elements: !1717)
!1717 = !{!1718, !43}
!1718 = !DISubrange(count: 11)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "dia4d", scope: !1721, file: !84, line: 972, type: !1813, isLocal: true, isDefinition: true, align: 64)
!1721 = distinct !DISubprogram(name: "x264_me_refine_bidir", scope: !84, file: !84, line: 938, type: !1722, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1724)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !87, !1374, !1374, !50, !50, !50, !50}
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1740, !1743, !1744, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1768, !1769, !1770, !1771, !1772, !1774, !1777, !1780, !1783, !1784, !1785, !1786, !1789, !1792, !1793, !1794, !1795, !1797, !1800, !1801, !1802, !1803, !1806, !1807, !1808}
!1725 = !DILocalVariable(name: "h", arg: 1, scope: !1721, file: !84, line: 938, type: !87)
!1726 = !DILocalVariable(name: "m0", arg: 2, scope: !1721, file: !84, line: 938, type: !1374)
!1727 = !DILocalVariable(name: "m1", arg: 3, scope: !1721, file: !84, line: 938, type: !1374)
!1728 = !DILocalVariable(name: "i_weight", arg: 4, scope: !1721, file: !84, line: 938, type: !50)
!1729 = !DILocalVariable(name: "i8", arg: 5, scope: !1721, file: !84, line: 938, type: !50)
!1730 = !DILocalVariable(name: "i_lambda2", arg: 6, scope: !1721, file: !84, line: 938, type: !50)
!1731 = !DILocalVariable(name: "rd", arg: 7, scope: !1721, file: !84, line: 938, type: !50)
!1732 = !DILocalVariable(name: "cache0_mv", scope: !1721, file: !84, line: 940, type: !794)
!1733 = !DILocalVariable(name: "cache1_mv", scope: !1721, file: !84, line: 941, type: !794)
!1734 = !DILocalVariable(name: "i_pixel", scope: !1721, file: !84, line: 942, type: !1400)
!1735 = !DILocalVariable(name: "bw", scope: !1721, file: !84, line: 943, type: !1400)
!1736 = !DILocalVariable(name: "bh", scope: !1721, file: !84, line: 944, type: !1400)
!1737 = !DILocalVariable(name: "pixy_buf", scope: !1721, file: !84, line: 945, type: !1738, align: 128)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 36864, elements: !1739)
!1739 = !{!36, !862, !338}
!1740 = !DILocalVariable(name: "pixu_buf", scope: !1721, file: !84, line: 946, type: !1741, align: 64)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 9216, elements: !1742)
!1742 = !{!36, !862, !149}
!1743 = !DILocalVariable(name: "pixv_buf", scope: !1721, file: !84, line: 947, type: !1741, align: 64)
!1744 = !DILocalVariable(name: "src", scope: !1721, file: !84, line: 948, type: !1745)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1152, elements: !1746)
!1746 = !{!36, !862}
!1747 = !DILocalVariable(name: "pix", scope: !1721, file: !84, line: 949, type: !284)
!1748 = !DILocalVariable(name: "pixu", scope: !1721, file: !84, line: 950, type: !284)
!1749 = !DILocalVariable(name: "pixv", scope: !1721, file: !84, line: 951, type: !284)
!1750 = !DILocalVariable(name: "ref0", scope: !1721, file: !84, line: 952, type: !1400)
!1751 = !DILocalVariable(name: "ref1", scope: !1721, file: !84, line: 953, type: !1400)
!1752 = !DILocalVariable(name: "mv0y_offset", scope: !1721, file: !84, line: 954, type: !1400)
!1753 = !DILocalVariable(name: "mv1y_offset", scope: !1721, file: !84, line: 955, type: !1400)
!1754 = !DILocalVariable(name: "stride", scope: !1721, file: !84, line: 956, type: !1755)
!1755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 576, elements: !1746)
!1756 = !DILocalVariable(name: "bm0x", scope: !1721, file: !84, line: 957, type: !50)
!1757 = !DILocalVariable(name: "bm0y", scope: !1721, file: !84, line: 958, type: !50)
!1758 = !DILocalVariable(name: "bm1x", scope: !1721, file: !84, line: 959, type: !50)
!1759 = !DILocalVariable(name: "bm1y", scope: !1721, file: !84, line: 960, type: !50)
!1760 = !DILocalVariable(name: "bcost", scope: !1721, file: !84, line: 961, type: !50)
!1761 = !DILocalVariable(name: "mc_list0", scope: !1721, file: !84, line: 962, type: !50)
!1762 = !DILocalVariable(name: "mc_list1", scope: !1721, file: !84, line: 962, type: !50)
!1763 = !DILocalVariable(name: "bcostrd", scope: !1721, file: !84, line: 963, type: !62)
!1764 = !DILocalVariable(name: "amvd", scope: !1721, file: !84, line: 964, type: !32)
!1765 = !DILocalVariable(name: "visited", scope: !1721, file: !84, line: 966, type: !1766, align: 128)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 4096, elements: !1767)
!1767 = !{!72, !72, !72}
!1768 = !DILocalVariable(name: "p_cost_m0x", scope: !1721, file: !84, line: 998, type: !1430)
!1769 = !DILocalVariable(name: "p_cost_m0y", scope: !1721, file: !84, line: 999, type: !1430)
!1770 = !DILocalVariable(name: "p_cost_m1x", scope: !1721, file: !84, line: 1000, type: !1430)
!1771 = !DILocalVariable(name: "p_cost_m1y", scope: !1721, file: !84, line: 1001, type: !1430)
!1772 = !DILocalVariable(name: "pass", scope: !1773, file: !84, line: 1005, type: !50)
!1773 = distinct !DILexicalBlock(scope: !1721, file: !84, line: 1005, column: 5)
!1774 = !DILocalVariable(name: "bestj", scope: !1775, file: !84, line: 1007, type: !50)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !84, line: 1006, column: 5)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !84, line: 1005, column: 5)
!1777 = !DILocalVariable(name: "j", scope: !1778, file: !84, line: 1013, type: !50)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !84, line: 1013, column: 13)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !84, line: 1012, column: 13)
!1780 = !DILocalVariable(name: "m", scope: !1781, file: !84, line: 1014, type: !1374)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !84, line: 1014, column: 17)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !84, line: 1013, column: 13)
!1783 = !DILocalVariable(name: "i", scope: !1781, file: !84, line: 1014, type: !50)
!1784 = !DILocalVariable(name: "mvx", scope: !1781, file: !84, line: 1014, type: !50)
!1785 = !DILocalVariable(name: "mvy", scope: !1781, file: !84, line: 1014, type: !50)
!1786 = !DILocalVariable(name: "j", scope: !1787, file: !84, line: 1017, type: !50)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !84, line: 1017, column: 13)
!1788 = distinct !DILexicalBlock(scope: !1775, file: !84, line: 1016, column: 13)
!1789 = !DILocalVariable(name: "m", scope: !1790, file: !84, line: 1018, type: !1374)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !84, line: 1018, column: 17)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !84, line: 1017, column: 13)
!1792 = !DILocalVariable(name: "i", scope: !1790, file: !84, line: 1018, type: !50)
!1793 = !DILocalVariable(name: "mvx", scope: !1790, file: !84, line: 1018, type: !50)
!1794 = !DILocalVariable(name: "mvy", scope: !1790, file: !84, line: 1018, type: !50)
!1795 = !DILocalVariable(name: "j", scope: !1796, file: !84, line: 1020, type: !50)
!1796 = distinct !DILexicalBlock(scope: !1775, file: !84, line: 1020, column: 9)
!1797 = !DILocalVariable(name: "m0x", scope: !1798, file: !84, line: 1022, type: !50)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !84, line: 1021, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1796, file: !84, line: 1020, column: 9)
!1800 = !DILocalVariable(name: "m0y", scope: !1798, file: !84, line: 1023, type: !50)
!1801 = !DILocalVariable(name: "m1x", scope: !1798, file: !84, line: 1024, type: !50)
!1802 = !DILocalVariable(name: "m1y", scope: !1798, file: !84, line: 1025, type: !50)
!1803 = !DILocalVariable(name: "i0", scope: !1804, file: !84, line: 1028, type: !50)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !84, line: 1027, column: 13)
!1805 = distinct !DILexicalBlock(scope: !1798, file: !84, line: 1026, column: 17)
!1806 = !DILocalVariable(name: "i1", scope: !1804, file: !84, line: 1029, type: !50)
!1807 = !DILocalVariable(name: "cost", scope: !1804, file: !84, line: 1032, type: !50)
!1808 = !DILocalVariable(name: "costrd", scope: !1809, file: !84, line: 1043, type: !62)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !84, line: 1037, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !84, line: 1036, column: 25)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !84, line: 1035, column: 17)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !84, line: 1034, column: 21)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1696, size: 1056, elements: !1814)
!1814 = !{!1815, !43}
!1815 = !DISubrange(count: 33)
!1816 = !DIGlobalVariableExpression(var: !1817, expr: !DIExpression())
!1817 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !22, line: 125, type: !1818, isLocal: true, isDefinition: true)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 864, elements: !1819)
!1819 = !{!1820}
!1820 = !DISubrange(count: 27)
!1821 = !DIGlobalVariableExpression(var: !1822, expr: !DIExpression())
!1822 = distinct !DIGlobalVariable(name: "block_idx_xy_fdec", scope: !2, file: !1823, line: 234, type: !1824, isLocal: true, isDefinition: true)
!1823 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1431, size: 256, elements: !141)
!1825 = !DIGlobalVariableExpression(var: !1826, expr: !DIExpression())
!1826 = distinct !DIGlobalVariable(name: "block_idx_x", scope: !2, file: !1823, line: 200, type: !1827, isLocal: true, isDefinition: true)
!1827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 128, elements: !141)
!1828 = !DIGlobalVariableExpression(var: !1829, expr: !DIExpression())
!1829 = distinct !DIGlobalVariable(name: "block_idx_y", scope: !2, file: !1823, line: 204, type: !1827, isLocal: true, isDefinition: true)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 448, elements: !1027)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1832)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 44, size: 64, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !1832, file: !6, line: 45, baseType: !50, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !1832, file: !6, line: 46, baseType: !50, size: 32, offset: 32)
!1836 = !{i32 7, !"Dwarf Version", i32 5}
!1837 = !{i32 2, !"Debug Info Version", i32 3}
!1838 = !{i32 1, !"wchar_size", i32 4}
!1839 = !{i32 7, !"PIC Level", i32 2}
!1840 = !{i32 7, !"PIE Level", i32 2}
!1841 = !{i32 7, !"uwtable", i32 2}
!1842 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1843 = !DILocation(line: 0, scope: !83)
!1844 = !DILocation(line: 175, column: 39, scope: !83)
!1845 = !{!1846, !1847, i64 0}
!1846 = !{!"", !1847, i64 0, !1850, i64 8, !1847, i64 16, !1847, i64 20, !1850, i64 24, !1848, i64 32, !1850, i64 80, !1848, i64 88, !1850, i64 112, !1848, i64 120, !1848, i64 128, !1847, i64 132, !1847, i64 136, !1848, i64 140}
!1847 = !{!"int", !1848, i64 0}
!1848 = !{!"omnipotent char", !1849, i64 0}
!1849 = !{!"Simple C/C++ TBAA"}
!1850 = !{!"any pointer", !1848, i64 0}
!1851 = !DILocation(line: 175, column: 20, scope: !83)
!1852 = !DILocation(line: 175, column: 48, scope: !83)
!1853 = !{!1854, !1847, i64 0}
!1854 = !{!"", !1847, i64 0, !1847, i64 4}
!1855 = !DILocation(line: 176, column: 48, scope: !83)
!1856 = !{!1854, !1847, i64 4}
!1857 = !DILocation(line: 178, column: 27, scope: !83)
!1858 = !DILocation(line: 178, column: 24, scope: !83)
!1859 = !{!1847, !1847, i64 0}
!1860 = !DILocation(line: 179, column: 39, scope: !83)
!1861 = !{!1862, !1847, i64 416}
!1862 = !{!"x264_t", !1863, i64 0, !1848, i64 704, !1847, i64 1736, !1847, i64 1740, !1847, i64 1744, !1847, i64 1748, !1847, i64 1752, !1868, i64 1760, !1850, i64 1832, !1847, i64 1840, !1847, i64 1844, !1847, i64 1848, !1847, i64 1852, !1847, i64 1856, !1847, i64 1860, !1847, i64 1864, !1847, i64 1868, !1847, i64 1872, !1847, i64 1876, !1847, i64 1880, !1847, i64 1884, !1847, i64 1888, !1847, i64 1892, !1848, i64 1896, !1850, i64 3200, !1848, i64 3208, !1850, i64 3328, !1847, i64 3336, !1847, i64 3340, !1848, i64 3344, !1848, i64 3376, !1848, i64 3392, !1848, i64 3424, !1848, i64 3440, !1848, i64 3472, !1848, i64 3488, !1848, i64 3520, !1848, i64 3536, !1848, i64 4272, !1850, i64 7216, !1871, i64 7232, !1872, i64 13904, !1873, i64 14416, !1850, i64 14680, !1850, i64 14688, !1847, i64 14696, !1848, i64 14704, !1847, i64 14856, !1848, i64 14864, !1848, i64 15016, !1847, i64 15024, !1847, i64 15028, !1870, i64 15032, !1874, i64 15040, !1875, i64 16368, !1850, i64 26704, !1878, i64 26712, !1848, i64 30400, !1848, i64 30912, !1848, i64 31168, !1850, i64 31176, !1848, i64 31184, !1848, i64 31232, !1848, i64 31248, !1848, i64 31304, !1848, i64 31360, !1848, i64 31456, !1850, i64 31552, !1881, i64 31560, !1882, i64 32616, !1883, i64 32912, !1884, i64 33032, !1885, i64 33080, !1886, i64 33256, !1850, i64 33328}
!1863 = !{!"x264_param_t", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1847, i64 16, !1847, i64 20, !1847, i64 24, !1847, i64 28, !1847, i64 32, !1847, i64 36, !1847, i64 40, !1864, i64 44, !1847, i64 80, !1847, i64 84, !1847, i64 88, !1847, i64 92, !1847, i64 96, !1847, i64 100, !1847, i64 104, !1847, i64 108, !1847, i64 112, !1847, i64 116, !1847, i64 120, !1847, i64 124, !1847, i64 128, !1847, i64 132, !1847, i64 136, !1847, i64 140, !1847, i64 144, !1850, i64 152, !1848, i64 160, !1848, i64 176, !1848, i64 192, !1848, i64 208, !1848, i64 224, !1848, i64 288, !1850, i64 352, !1850, i64 360, !1847, i64 368, !1847, i64 372, !1850, i64 376, !1865, i64 384, !1867, i64 488, !1847, i64 632, !1847, i64 636, !1847, i64 640, !1847, i64 644, !1847, i64 648, !1847, i64 652, !1847, i64 656, !1847, i64 660, !1847, i64 664, !1847, i64 668, !1847, i64 672, !1847, i64 676, !1847, i64 680, !1847, i64 684, !1847, i64 688, !1847, i64 692, !1850, i64 696}
!1864 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1847, i64 16, !1847, i64 20, !1847, i64 24, !1847, i64 28, !1847, i64 32}
!1865 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1847, i64 16, !1847, i64 20, !1847, i64 24, !1847, i64 28, !1847, i64 32, !1847, i64 36, !1847, i64 40, !1847, i64 44, !1847, i64 48, !1847, i64 52, !1847, i64 56, !1847, i64 60, !1847, i64 64, !1847, i64 68, !1866, i64 72, !1866, i64 76, !1847, i64 80, !1848, i64 84, !1847, i64 92, !1847, i64 96}
!1866 = !{!"float", !1848, i64 0}
!1867 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1847, i64 16, !1847, i64 20, !1866, i64 24, !1866, i64 28, !1866, i64 32, !1847, i64 36, !1847, i64 40, !1866, i64 44, !1866, i64 48, !1866, i64 52, !1847, i64 56, !1866, i64 60, !1847, i64 64, !1847, i64 68, !1847, i64 72, !1850, i64 80, !1847, i64 88, !1850, i64 96, !1866, i64 104, !1866, i64 108, !1866, i64 112, !1850, i64 120, !1847, i64 128, !1850, i64 136}
!1868 = !{!"", !1847, i64 0, !1847, i64 4, !1850, i64 8, !1847, i64 16, !1850, i64 24, !1869, i64 32}
!1869 = !{!"bs_s", !1850, i64 0, !1850, i64 8, !1850, i64 16, !1870, i64 24, !1847, i64 32, !1847, i64 36}
!1870 = !{!"long", !1848, i64 0}
!1871 = !{!"", !1850, i64 0, !1850, i64 8, !1847, i64 16, !1847, i64 20, !1847, i64 24, !1847, i64 28, !1847, i64 32, !1847, i64 36, !1847, i64 40, !1847, i64 44, !1847, i64 48, !1847, i64 52, !1847, i64 56, !1848, i64 60, !1847, i64 68, !1847, i64 72, !1847, i64 76, !1847, i64 80, !1847, i64 84, !1847, i64 88, !1847, i64 92, !1848, i64 96, !1848, i64 352, !1847, i64 6496, !1847, i64 6500, !1848, i64 6504, !1847, i64 6632, !1847, i64 6636, !1847, i64 6640, !1847, i64 6644, !1847, i64 6648, !1847, i64 6652, !1847, i64 6656, !1847, i64 6660}
!1872 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1850, i64 16, !1850, i64 24, !1850, i64 32, !1847, i64 48, !1848, i64 52}
!1873 = !{!"", !1850, i64 0, !1848, i64 8, !1850, i64 24, !1848, i64 32, !1847, i64 176, !1847, i64 180, !1847, i64 184, !1847, i64 188, !1847, i64 192, !1847, i64 196, !1847, i64 200, !1870, i64 208, !1870, i64 216, !1848, i64 224, !1870, i64 240, !1870, i64 248, !1847, i64 256, !1847, i64 260}
!1874 = !{!"", !1848, i64 0, !1848, i64 32, !1848, i64 48, !1848, i64 560}
!1875 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1847, i64 12, !1847, i64 16, !1847, i64 20, !1847, i64 24, !1847, i64 28, !1847, i64 32, !1847, i64 36, !1847, i64 40, !1847, i64 44, !1847, i64 48, !1847, i64 52, !1847, i64 56, !1847, i64 60, !1847, i64 64, !1847, i64 68, !1848, i64 72, !1848, i64 80, !1848, i64 88, !1848, i64 96, !1848, i64 104, !1848, i64 112, !1847, i64 120, !1848, i64 124, !1848, i64 140, !1847, i64 204, !1847, i64 208, !1847, i64 212, !1847, i64 216, !1847, i64 220, !1847, i64 224, !1847, i64 228, !1847, i64 232, !1847, i64 236, !1847, i64 240, !1847, i64 244, !1850, i64 248, !1850, i64 256, !1850, i64 264, !1850, i64 272, !1850, i64 280, !1850, i64 288, !1850, i64 296, !1848, i64 304, !1848, i64 320, !1848, i64 336, !1848, i64 352, !1850, i64 864, !1850, i64 872, !1850, i64 880, !1848, i64 888, !1847, i64 1016, !1847, i64 1020, !1848, i64 1024, !1847, i64 1028, !1847, i64 1032, !1847, i64 1036, !1847, i64 1040, !1847, i64 1044, !1847, i64 1048, !1847, i64 1052, !1847, i64 1056, !1847, i64 1060, !1876, i64 1072, !1877, i64 8656, !1847, i64 9424, !1847, i64 9428, !1847, i64 9432, !1847, i64 9436, !1847, i64 9440, !1847, i64 9444, !1847, i64 9448, !1847, i64 9452, !1848, i64 9456, !1847, i64 9472, !1847, i64 9476, !1848, i64 9480, !1850, i64 9992, !1848, i64 10000, !1850, i64 10256, !1848, i64 10264, !1847, i64 10284, !1848, i64 10288}
!1876 = !{!"", !1848, i64 0, !1848, i64 384, !1848, i64 1248, !1848, i64 1504, !1848, i64 1760, !1848, i64 2144, !1848, i64 2624, !1848, i64 2640, !1847, i64 2656, !1847, i64 2660, !1848, i64 2672, !1848, i64 3184, !1848, i64 3696, !1848, i64 3776, !1848, i64 3904, !1848, i64 3928, !1848, i64 3952, !1848, i64 3976, !1848, i64 3984, !1848, i64 7056, !1848, i64 7312, !1848, i64 7568}
!1877 = !{!"", !1848, i64 0, !1848, i64 48, !1848, i64 96, !1848, i64 176, !1848, i64 496, !1848, i64 656, !1848, i64 696, !1848, i64 728, !1847, i64 736, !1848, i64 740, !1847, i64 744, !1847, i64 748, !1847, i64 752, !1847, i64 756}
!1878 = !{!"", !1879, i64 0, !1848, i64 704, !1848, i64 728, !1848, i64 768, !1848, i64 808, !1848, i64 880, !1848, i64 920, !1848, i64 960, !1848, i64 1000, !1848, i64 1040, !1848, i64 1080, !1848, i64 1120, !1848, i64 1880, !1848, i64 2152, !1848, i64 2168, !1848, i64 3192, !1848, i64 3240, !1848, i64 3656, !1848, i64 3664, !1848, i64 3672}
!1879 = !{!"", !1847, i64 0, !1847, i64 4, !1847, i64 8, !1848, i64 12, !1847, i64 88, !1847, i64 92, !1847, i64 96, !1848, i64 100, !1848, i64 108, !1848, i64 364, !1848, i64 432, !1848, i64 456, !1848, i64 664, !1848, i64 672, !1880, i64 696}
!1880 = !{!"double", !1848, i64 0}
!1881 = !{!"", !1848, i64 0, !1848, i64 56, !1848, i64 112, !1848, i64 168, !1848, i64 224, !1848, i64 256, !1848, i64 312, !1848, i64 368, !1848, i64 424, !1848, i64 480, !1848, i64 536, !1850, i64 592, !1848, i64 600, !1848, i64 632, !1850, i64 664, !1850, i64 672, !1848, i64 680, !1848, i64 736, !1848, i64 792, !1848, i64 848, !1848, i64 904, !1850, i64 960, !1850, i64 968, !1850, i64 976, !1850, i64 984, !1850, i64 992, !1850, i64 1000, !1850, i64 1008, !1850, i64 1016, !1850, i64 1024, !1850, i64 1032, !1850, i64 1040, !1850, i64 1048}
!1882 = !{!"", !1850, i64 0, !1850, i64 8, !1850, i64 16, !1848, i64 24, !1848, i64 104, !1850, i64 160, !1850, i64 168, !1850, i64 176, !1850, i64 184, !1850, i64 192, !1850, i64 200, !1850, i64 208, !1850, i64 216, !1850, i64 224, !1850, i64 232, !1850, i64 240, !1850, i64 248, !1850, i64 256, !1850, i64 264, !1850, i64 272, !1850, i64 280, !1850, i64 288}
!1883 = !{!"", !1850, i64 0, !1850, i64 8, !1850, i64 16, !1850, i64 24, !1850, i64 32, !1850, i64 40, !1850, i64 48, !1850, i64 56, !1850, i64 64, !1850, i64 72, !1850, i64 80, !1850, i64 88, !1850, i64 96, !1850, i64 104, !1850, i64 112}
!1884 = !{!"", !1850, i64 0, !1850, i64 8, !1850, i64 16, !1850, i64 24, !1850, i64 32, !1850, i64 40}
!1885 = !{!"", !1850, i64 0, !1850, i64 8, !1850, i64 16, !1850, i64 24, !1850, i64 32, !1850, i64 40, !1850, i64 48, !1850, i64 56, !1850, i64 64, !1850, i64 72, !1850, i64 80, !1848, i64 88, !1848, i64 136}
!1886 = !{!"", !1848, i64 0, !1848, i64 16, !1848, i64 32, !1848, i64 48, !1850, i64 64}
!1887 = !DILocation(line: 183, column: 26, scope: !83)
!1888 = !DILocation(line: 183, column: 23, scope: !83)
!1889 = !{!1850, !1850, i64 0}
!1890 = !DILocation(line: 184, column: 28, scope: !83)
!1891 = !{!1846, !1850, i64 80}
!1892 = !DILocation(line: 185, column: 5, scope: !83)
!1893 = !DILocation(line: 187, column: 5, scope: !83)
!1894 = !DILocation(line: 187, column: 9, scope: !83)
!1895 = !DILocation(line: 189, column: 26, scope: !83)
!1896 = !DILocation(line: 189, column: 20, scope: !83)
!1897 = !DILocation(line: 190, column: 20, scope: !83)
!1898 = !DILocation(line: 191, column: 26, scope: !83)
!1899 = !DILocation(line: 191, column: 20, scope: !83)
!1900 = !DILocation(line: 192, column: 20, scope: !83)
!1901 = !DILocation(line: 193, column: 34, scope: !83)
!1902 = !DILocation(line: 194, column: 34, scope: !83)
!1903 = !DILocation(line: 195, column: 34, scope: !83)
!1904 = !DILocation(line: 196, column: 34, scope: !83)
!1905 = !DILocation(line: 199, column: 23, scope: !83)
!1906 = !DILocation(line: 200, column: 23, scope: !83)
!1907 = !DILocation(line: 200, column: 61, scope: !83)
!1908 = !DILocation(line: 204, column: 37, scope: !83)
!1909 = !{!1846, !1850, i64 8}
!1910 = !DILocation(line: 204, column: 52, scope: !83)
!1911 = !DILocation(line: 204, column: 49, scope: !83)
!1912 = !{!1913, !1913, i64 0}
!1913 = !{!"short", !1848, i64 0}
!1914 = !DILocation(line: 204, column: 47, scope: !83)
!1915 = !DILocation(line: 205, column: 49, scope: !83)
!1916 = !DILocation(line: 205, column: 47, scope: !83)
!1917 = !DILocalVariable(name: "v", arg: 1, scope: !1918, file: !22, line: 200, type: !50)
!1918 = distinct !DISubprogram(name: "x264_clip3", scope: !22, file: !22, line: 200, type: !1919, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1921)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!50, !50, !50, !50}
!1921 = !{!1917, !1922, !1923}
!1922 = !DILocalVariable(name: "i_min", arg: 2, scope: !1918, file: !22, line: 200, type: !50)
!1923 = !DILocalVariable(name: "i_max", arg: 3, scope: !1918, file: !22, line: 200, type: !50)
!1924 = !DILocation(line: 0, scope: !1918, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 208, column: 11, scope: !83)
!1926 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !1925)
!1927 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !1925)
!1928 = !DILocation(line: 209, column: 23, scope: !83)
!1929 = !DILocation(line: 0, scope: !1918, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 209, column: 11, scope: !83)
!1931 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !1930)
!1932 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !1930)
!1933 = !DILocation(line: 210, column: 17, scope: !83)
!1934 = !DILocation(line: 210, column: 23, scope: !83)
!1935 = !DILocation(line: 211, column: 17, scope: !83)
!1936 = !DILocation(line: 211, column: 23, scope: !83)
!1937 = !DILocation(line: 215, column: 15, scope: !1438)
!1938 = !{!1862, !1847, i64 16408}
!1939 = !DILocation(line: 215, column: 31, scope: !1438)
!1940 = !DILocation(line: 215, column: 9, scope: !83)
!1941 = !DILocalVariable(name: "a", arg: 1, scope: !1942, file: !1823, line: 340, type: !50)
!1942 = distinct !DISubprogram(name: "pack16to32_mask", scope: !1823, file: !1823, line: 340, type: !1943, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1945)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!26, !50, !50}
!1945 = !{!1941, !1946}
!1946 = !DILocalVariable(name: "b", arg: 2, scope: !1942, file: !1823, line: 340, type: !50)
!1947 = !DILocation(line: 0, scope: !1942, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 217, column: 15, scope: !1437)
!1949 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !1948)
!1950 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !1948)
!1951 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !1948)
!1952 = !DILocation(line: 218, column: 13, scope: !1436)
!1953 = !DILocation(line: 218, column: 13, scope: !1437)
!1954 = !DILocation(line: 219, column: 13, scope: !1435)
!1955 = !DILocation(line: 0, scope: !1435)
!1956 = !{!1862, !1850, i64 32624}
!1957 = !{!1846, !1850, i64 24}
!1958 = !DILocation(line: 219, column: 13, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1435, file: !84, line: 219, column: 13)
!1960 = !DILocation(line: 219, column: 13, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1959, file: !84, line: 219, column: 13)
!1962 = !DILocation(line: 219, column: 13, scope: !1436)
!1963 = !DILocation(line: 0, scope: !1442)
!1964 = !DILocation(line: 220, column: 27, scope: !1447)
!1965 = !DILocation(line: 220, column: 9, scope: !1442)
!1966 = !DILocation(line: 0, scope: !1437)
!1967 = !DILocation(line: 229, column: 26, scope: !1437)
!1968 = !DILocation(line: 229, column: 32, scope: !1437)
!1969 = !DILocation(line: 230, column: 26, scope: !1437)
!1970 = !DILocation(line: 230, column: 32, scope: !1437)
!1971 = !DILocation(line: 231, column: 9, scope: !1454)
!1972 = !DILocation(line: 0, scope: !1454)
!1973 = !DILocation(line: 232, column: 5, scope: !1437)
!1974 = !DILocation(line: 222, column: 17, scope: !1445)
!1975 = !{!1848, !1848, i64 0}
!1976 = !DILocation(line: 222, column: 31, scope: !1445)
!1977 = !DILocation(line: 224, column: 38, scope: !1444)
!1978 = !DILocation(line: 0, scope: !1918, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 224, column: 26, scope: !1444)
!1980 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !1979)
!1981 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !1979)
!1982 = !DILocation(line: 0, scope: !1444)
!1983 = !DILocation(line: 225, column: 38, scope: !1444)
!1984 = !DILocation(line: 0, scope: !1918, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 225, column: 26, scope: !1444)
!1986 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !1985)
!1987 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !1985)
!1988 = !DILocation(line: 226, column: 17, scope: !1450)
!1989 = !DILocation(line: 0, scope: !1450)
!1990 = !DILocation(line: 226, column: 17, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1450, file: !84, line: 226, column: 17)
!1992 = !DILocation(line: 226, column: 17, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1991, file: !84, line: 226, column: 17)
!1994 = !DILocation(line: 226, column: 17, scope: !1444)
!1995 = !DILocation(line: 227, column: 13, scope: !1444)
!1996 = !DILocation(line: 220, column: 37, scope: !1447)
!1997 = distinct !{!1997, !1965, !1998, !1999, !2000}
!1998 = !DILocation(line: 228, column: 9, scope: !1442)
!1999 = !{!"llvm.loop.mustprogress"}
!2000 = !{!"llvm.loop.unroll.disable"}
!2001 = !DILocation(line: 244, column: 17, scope: !1458)
!2002 = !DILocation(line: 244, column: 77, scope: !1458)
!2003 = !DILocation(line: 244, column: 84, scope: !1458)
!2004 = !DILocation(line: 244, column: 65, scope: !1458)
!2005 = !DILocation(line: 0, scope: !1942, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 245, column: 15, scope: !1458)
!2007 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !2006)
!2008 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !2006)
!2009 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !2006)
!2010 = !DILocation(line: 246, column: 19, scope: !1457)
!2011 = !DILocation(line: 246, column: 13, scope: !1458)
!2012 = !DILocation(line: 248, column: 13, scope: !1456)
!2013 = !DILocalVariable(name: "dst", arg: 1, scope: !2014, file: !22, line: 246, type: !628)
!2014 = distinct !DISubprogram(name: "x264_predictor_roundclip", scope: !22, file: !22, line: 246, type: !2015, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !628, !628, !50, !50, !50, !50, !50}
!2017 = !{!2013, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2026, !2029}
!2018 = !DILocalVariable(name: "mvc", arg: 2, scope: !2014, file: !22, line: 246, type: !628)
!2019 = !DILocalVariable(name: "i_mvc", arg: 3, scope: !2014, file: !22, line: 246, type: !50)
!2020 = !DILocalVariable(name: "mv_x_min", arg: 4, scope: !2014, file: !22, line: 246, type: !50)
!2021 = !DILocalVariable(name: "mv_x_max", arg: 5, scope: !2014, file: !22, line: 246, type: !50)
!2022 = !DILocalVariable(name: "mv_y_min", arg: 6, scope: !2014, file: !22, line: 246, type: !50)
!2023 = !DILocalVariable(name: "mv_y_max", arg: 7, scope: !2014, file: !22, line: 246, type: !50)
!2024 = !DILocalVariable(name: "i", scope: !2025, file: !22, line: 248, type: !50)
!2025 = distinct !DILexicalBlock(scope: !2014, file: !22, line: 248, column: 5)
!2026 = !DILocalVariable(name: "mx", scope: !2027, file: !22, line: 250, type: !50)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !22, line: 249, column: 5)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !22, line: 248, column: 5)
!2029 = !DILocalVariable(name: "my", scope: !2027, file: !22, line: 251, type: !50)
!2030 = !DILocation(line: 0, scope: !2014, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 249, column: 13, scope: !1456)
!2032 = !DILocation(line: 0, scope: !2025, inlinedAt: !2031)
!2033 = !DILocation(line: 248, column: 23, scope: !2028, inlinedAt: !2031)
!2034 = !DILocation(line: 248, column: 5, scope: !2025, inlinedAt: !2031)
!2035 = !DILocation(line: 250, column: 19, scope: !2027, inlinedAt: !2031)
!2036 = !DILocation(line: 250, column: 29, scope: !2027, inlinedAt: !2031)
!2037 = !DILocation(line: 250, column: 34, scope: !2027, inlinedAt: !2031)
!2038 = !DILocation(line: 0, scope: !2027, inlinedAt: !2031)
!2039 = !DILocation(line: 251, column: 19, scope: !2027, inlinedAt: !2031)
!2040 = !DILocation(line: 251, column: 29, scope: !2027, inlinedAt: !2031)
!2041 = !DILocation(line: 251, column: 34, scope: !2027, inlinedAt: !2031)
!2042 = !DILocation(line: 0, scope: !1918, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 252, column: 21, scope: !2027, inlinedAt: !2031)
!2044 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !2043)
!2045 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !2043)
!2046 = !DILocation(line: 252, column: 21, scope: !2027, inlinedAt: !2031)
!2047 = !DILocation(line: 252, column: 9, scope: !2027, inlinedAt: !2031)
!2048 = !DILocation(line: 252, column: 19, scope: !2027, inlinedAt: !2031)
!2049 = !DILocation(line: 0, scope: !1918, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 253, column: 21, scope: !2027, inlinedAt: !2031)
!2051 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !2050)
!2052 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !2050)
!2053 = !DILocation(line: 253, column: 21, scope: !2027, inlinedAt: !2031)
!2054 = !DILocation(line: 253, column: 9, scope: !2027, inlinedAt: !2031)
!2055 = !DILocation(line: 253, column: 19, scope: !2027, inlinedAt: !2031)
!2056 = !DILocation(line: 248, column: 33, scope: !2028, inlinedAt: !2031)
!2057 = distinct !{!2057, !2034, !2058, !1999, !2000}
!2058 = !DILocation(line: 254, column: 5, scope: !2025, inlinedAt: !2031)
!2059 = !DILocation(line: 250, column: 19, scope: !1456)
!2060 = !DILocation(line: 0, scope: !1462)
!2061 = !DILocation(line: 251, column: 31, scope: !1467)
!2062 = !DILocation(line: 251, column: 13, scope: !1462)
!2063 = !DILocation(line: 0, scope: !1456)
!2064 = !DILocation(line: 262, column: 22, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !1456, file: !84, line: 262, column: 17)
!2066 = !DILocation(line: 262, column: 17, scope: !1456)
!2067 = !DILocation(line: 253, column: 21, scope: !1465)
!2068 = !DILocation(line: 253, column: 42, scope: !1465)
!2069 = !DILocation(line: 253, column: 53, scope: !1465)
!2070 = !DILocation(line: 253, column: 50, scope: !1465)
!2071 = !DILocation(line: 253, column: 21, scope: !1466)
!2072 = !DILocation(line: 255, column: 30, scope: !1464)
!2073 = !DILocation(line: 0, scope: !1464)
!2074 = !DILocation(line: 256, column: 30, scope: !1464)
!2075 = !DILocation(line: 257, column: 32, scope: !1464)
!2076 = !DILocation(line: 257, column: 91, scope: !1464)
!2077 = !DILocation(line: 257, column: 98, scope: !1464)
!2078 = !DILocation(line: 257, column: 80, scope: !1464)
!2079 = !DILocation(line: 257, column: 115, scope: !1464)
!2080 = !DILocation(line: 257, column: 113, scope: !1464)
!2081 = !DILocation(line: 258, column: 34, scope: !1464)
!2082 = !DILocation(line: 258, column: 40, scope: !1464)
!2083 = !DILocation(line: 259, column: 21, scope: !1464)
!2084 = !DILocation(line: 260, column: 17, scope: !1464)
!2085 = !DILocation(line: 251, column: 42, scope: !1467)
!2086 = distinct !{!2086, !2062, !2087, !1999, !2000}
!2087 = !DILocation(line: 261, column: 13, scope: !1462)
!2088 = !DILocation(line: 264, column: 42, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2065, file: !84, line: 263, column: 13)
!2090 = !DILocation(line: 264, column: 23, scope: !2089)
!2091 = !DILocation(line: 265, column: 23, scope: !2089)
!2092 = !DILocation(line: 266, column: 13, scope: !2089)
!2093 = !DILocation(line: 0, scope: !1458)
!2094 = !DILocation(line: 267, column: 19, scope: !1456)
!2095 = !DILocation(line: 268, column: 9, scope: !1457)
!2096 = !DILocation(line: 268, column: 9, scope: !1456)
!2097 = !DILocation(line: 0, scope: !1438)
!2098 = !DILocation(line: 271, column: 9, scope: !1472)
!2099 = !DILocation(line: 271, column: 9, scope: !83)
!2100 = !DILocation(line: 272, column: 9, scope: !1471)
!2101 = !DILocation(line: 0, scope: !1471)
!2102 = !DILocation(line: 272, column: 9, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1471, file: !84, line: 272, column: 9)
!2104 = !DILocation(line: 272, column: 9, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2103, file: !84, line: 272, column: 9)
!2106 = !DILocation(line: 274, column: 19, scope: !83)
!2107 = !{!1862, !1847, i64 16404}
!2108 = !DILocation(line: 274, column: 5, scope: !83)
!2109 = !DILocation(line: 279, column: 19, scope: !1474)
!2110 = !DILocation(line: 0, scope: !1474)
!2111 = !DILocation(line: 281, column: 13, scope: !1474)
!2112 = !DILocation(line: 283, column: 17, scope: !1477)
!2113 = !DILocation(line: 0, scope: !1477)
!2114 = !DILocation(line: 284, column: 17, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 284, column: 17)
!2116 = !DILocation(line: 284, column: 17, scope: !1478)
!2117 = !DILocation(line: 285, column: 17, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 285, column: 17)
!2119 = !DILocation(line: 285, column: 17, scope: !1478)
!2120 = !DILocation(line: 286, column: 17, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 286, column: 17)
!2122 = !DILocation(line: 286, column: 17, scope: !1478)
!2123 = !DILocation(line: 287, column: 17, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 287, column: 17)
!2125 = !DILocation(line: 287, column: 17, scope: !1478)
!2126 = !DILocation(line: 288, column: 28, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !1478, file: !84, line: 288, column: 21)
!2128 = !DILocation(line: 288, column: 21, scope: !1478)
!2129 = !DILocation(line: 290, column: 30, scope: !1478)
!2130 = !DILocation(line: 290, column: 35, scope: !1478)
!2131 = !DILocation(line: 290, column: 21, scope: !1478)
!2132 = !DILocation(line: 291, column: 30, scope: !1478)
!2133 = !DILocation(line: 291, column: 35, scope: !1478)
!2134 = !DILocation(line: 291, column: 21, scope: !1478)
!2135 = !DILocation(line: 292, column: 23, scope: !1478)
!2136 = !DILocation(line: 293, column: 22, scope: !1474)
!2137 = !DILocation(line: 293, column: 26, scope: !1474)
!2138 = !DILocation(line: 293, column: 29, scope: !1474)
!2139 = !DILocation(line: 293, column: 13, scope: !1478)
!2140 = distinct !{!2140, !2111, !2141, !1999, !2000}
!2141 = !DILocation(line: 293, column: 53, scope: !1474)
!2142 = !DILocation(line: 0, scope: !1478)
!2143 = !DILocation(line: 294, column: 19, scope: !1474)
!2144 = !DILocation(line: 179, column: 9, scope: !83)
!2145 = !DILocation(line: 300, column: 5, scope: !1481)
!2146 = !DILocation(line: 321, column: 13, scope: !1480)
!2147 = !DILocation(line: 0, scope: !1480)
!2148 = !DILocation(line: 0, scope: !1483)
!2149 = !DILocation(line: 322, column: 13, scope: !1483)
!2150 = !DILocation(line: 323, column: 19, scope: !1481)
!2151 = !DILocation(line: 324, column: 13, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 324, column: 13)
!2153 = !DILocation(line: 324, column: 13, scope: !1481)
!2154 = !DILocation(line: 325, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 325, column: 13)
!2156 = !DILocation(line: 325, column: 13, scope: !1481)
!2157 = !DILocation(line: 326, column: 13, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 326, column: 13)
!2159 = !DILocation(line: 326, column: 13, scope: !1481)
!2160 = !DILocation(line: 327, column: 13, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 327, column: 13)
!2162 = !DILocation(line: 327, column: 13, scope: !1481)
!2163 = !DILocation(line: 328, column: 13, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 328, column: 13)
!2165 = !DILocation(line: 328, column: 13, scope: !1481)
!2166 = !DILocation(line: 329, column: 13, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 329, column: 13)
!2168 = !DILocation(line: 329, column: 13, scope: !1481)
!2169 = !DILocation(line: 331, column: 22, scope: !1486)
!2170 = !DILocation(line: 331, column: 17, scope: !1481)
!2171 = !DILocation(line: 0, scope: !1485)
!2172 = !DILocation(line: 334, column: 32, scope: !1485)
!2173 = !DILocation(line: 334, column: 24, scope: !1485)
!2174 = !DILocation(line: 334, column: 21, scope: !1485)
!2175 = !DILocation(line: 335, column: 24, scope: !1485)
!2176 = !DILocation(line: 335, column: 21, scope: !1485)
!2177 = !DILocation(line: 0, scope: !1488)
!2178 = !DILocation(line: 338, column: 53, scope: !1492)
!2179 = !DILocation(line: 338, column: 57, scope: !1492)
!2180 = !DILocation(line: 338, column: 41, scope: !1488)
!2181 = !DILocation(line: 333, column: 36, scope: !1485)
!2182 = !DILocation(line: 338, column: 17, scope: !1488)
!2183 = !DILocation(line: 338, column: 60, scope: !1492)
!2184 = !DILocation(line: 340, column: 21, scope: !1490)
!2185 = !DILocation(line: 0, scope: !1490)
!2186 = !DILocation(line: 344, column: 27, scope: !1491)
!2187 = !DILocation(line: 345, column: 21, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !1491, file: !84, line: 345, column: 21)
!2189 = !DILocation(line: 345, column: 21, scope: !1491)
!2190 = !DILocation(line: 346, column: 21, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !1491, file: !84, line: 346, column: 21)
!2192 = !DILocation(line: 346, column: 21, scope: !1491)
!2193 = !DILocation(line: 347, column: 21, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1491, file: !84, line: 347, column: 21)
!2195 = !DILocation(line: 347, column: 21, scope: !1491)
!2196 = !DILocation(line: 348, column: 32, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !1491, file: !84, line: 348, column: 25)
!2198 = !DILocation(line: 348, column: 25, scope: !1491)
!2199 = !DILocation(line: 350, column: 25, scope: !1491)
!2200 = !DILocation(line: 351, column: 37, scope: !1491)
!2201 = !DILocation(line: 351, column: 27, scope: !1491)
!2202 = !DILocation(line: 352, column: 36, scope: !1491)
!2203 = !DILocation(line: 352, column: 28, scope: !1491)
!2204 = !DILocation(line: 352, column: 25, scope: !1491)
!2205 = !DILocation(line: 353, column: 28, scope: !1491)
!2206 = !DILocation(line: 353, column: 25, scope: !1491)
!2207 = distinct !{!2207, !2182, !2208, !1999, !2000}
!2208 = !DILocation(line: 354, column: 17, scope: !1488)
!2209 = !DILocation(line: 0, scope: !1481)
!2210 = !DILocation(line: 0, scope: !1475)
!2211 = !DILocation(line: 356, column: 19, scope: !1481)
!2212 = !DILocation(line: 360, column: 13, scope: !1495)
!2213 = !DILocation(line: 0, scope: !1495)
!2214 = !DILocation(line: 361, column: 13, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 361, column: 13)
!2216 = !DILocation(line: 361, column: 13, scope: !1481)
!2217 = !DILocation(line: 362, column: 13, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 362, column: 13)
!2219 = !DILocation(line: 362, column: 13, scope: !1481)
!2220 = !DILocation(line: 363, column: 13, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 363, column: 13)
!2222 = !DILocation(line: 363, column: 13, scope: !1481)
!2223 = !DILocation(line: 364, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 364, column: 13)
!2225 = !DILocation(line: 364, column: 13, scope: !1481)
!2226 = !DILocation(line: 0, scope: !1497)
!2227 = !DILocation(line: 365, column: 13, scope: !1497)
!2228 = !DILocation(line: 366, column: 13, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 366, column: 13)
!2230 = !DILocation(line: 366, column: 13, scope: !1481)
!2231 = !DILocation(line: 367, column: 13, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 367, column: 13)
!2233 = !DILocation(line: 367, column: 13, scope: !1481)
!2234 = !DILocation(line: 368, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 368, column: 13)
!2236 = !DILocation(line: 368, column: 13, scope: !1481)
!2237 = !DILocation(line: 369, column: 13, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !1481, file: !84, line: 369, column: 13)
!2239 = !DILocation(line: 369, column: 13, scope: !1481)
!2240 = !DILocation(line: 370, column: 20, scope: !1481)
!2241 = !DILocation(line: 370, column: 17, scope: !1481)
!2242 = !DILocation(line: 371, column: 20, scope: !1481)
!2243 = !DILocation(line: 371, column: 17, scope: !1481)
!2244 = !DILocation(line: 372, column: 13, scope: !1481)
!2245 = !DILocation(line: 0, scope: !1499)
!2246 = !DILocation(line: 387, column: 13, scope: !1503)
!2247 = !DILocation(line: 0, scope: !1503)
!2248 = !DILocation(line: 387, column: 13, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1503, file: !84, line: 387, column: 13)
!2250 = !DILocation(line: 387, column: 13, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !84, line: 387, column: 13)
!2252 = !DILocation(line: 387, column: 13, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !1503, file: !84, line: 387, column: 13)
!2254 = !DILocation(line: 387, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2253, file: !84, line: 387, column: 13)
!2256 = !DILocation(line: 387, column: 13, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !1503, file: !84, line: 387, column: 13)
!2258 = !DILocation(line: 387, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2257, file: !84, line: 387, column: 13)
!2260 = !DILocation(line: 387, column: 13, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1503, file: !84, line: 387, column: 13)
!2262 = !DILocation(line: 387, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2261, file: !84, line: 387, column: 13)
!2264 = !DILocation(line: 388, column: 21, scope: !1508)
!2265 = !DILocation(line: 388, column: 17, scope: !1499)
!2266 = !DILocation(line: 0, scope: !1506)
!2267 = !DILocation(line: 389, column: 17, scope: !1506)
!2268 = !DILocation(line: 389, column: 17, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !1506, file: !84, line: 389, column: 17)
!2270 = !DILocation(line: 389, column: 17, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2269, file: !84, line: 389, column: 17)
!2272 = !DILocation(line: 389, column: 17, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !1506, file: !84, line: 389, column: 17)
!2274 = !DILocation(line: 389, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2273, file: !84, line: 389, column: 17)
!2276 = !DILocation(line: 389, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1506, file: !84, line: 389, column: 17)
!2278 = !DILocation(line: 389, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2277, file: !84, line: 389, column: 17)
!2280 = !DILocation(line: 389, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !1506, file: !84, line: 389, column: 17)
!2282 = !DILocation(line: 389, column: 17, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2281, file: !84, line: 389, column: 17)
!2284 = !DILocation(line: 391, column: 25, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 391, column: 17)
!2286 = !DILocation(line: 391, column: 17, scope: !1499)
!2287 = !DILocation(line: 395, column: 22, scope: !1512)
!2288 = !DILocation(line: 395, column: 29, scope: !1512)
!2289 = !DILocation(line: 395, column: 37, scope: !1512)
!2290 = !DILocation(line: 395, column: 49, scope: !1512)
!2291 = !DILocation(line: 395, column: 43, scope: !1512)
!2292 = !DILocation(line: 395, column: 17, scope: !1499)
!2293 = !DILocation(line: 396, column: 17, scope: !1510)
!2294 = !DILocation(line: 0, scope: !1510)
!2295 = !DILocation(line: 396, column: 17, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 396, column: 17)
!2297 = !DILocation(line: 396, column: 17, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 396, column: 17)
!2299 = !DILocation(line: 396, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 396, column: 17)
!2301 = !DILocation(line: 396, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2300, file: !84, line: 396, column: 17)
!2303 = !DILocation(line: 396, column: 17, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !1510, file: !84, line: 396, column: 17)
!2305 = !DILocation(line: 396, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2304, file: !84, line: 396, column: 17)
!2307 = !DILocation(line: 397, column: 23, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 397, column: 17)
!2309 = !DILocation(line: 403, column: 33, scope: !1516)
!2310 = !DILocation(line: 403, column: 36, scope: !1516)
!2311 = !DILocation(line: 403, column: 17, scope: !1499)
!2312 = !DILocation(line: 405, column: 17, scope: !1514)
!2313 = !DILocation(line: 0, scope: !1514)
!2314 = !DILocation(line: 405, column: 17, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !1514, file: !84, line: 405, column: 17)
!2316 = !DILocation(line: 405, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !1514, file: !84, line: 405, column: 17)
!2318 = !DILocation(line: 405, column: 17, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2317, file: !84, line: 405, column: 17)
!2320 = !DILocation(line: 405, column: 17, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !1514, file: !84, line: 405, column: 17)
!2322 = !DILocation(line: 405, column: 17, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2321, file: !84, line: 405, column: 17)
!2324 = !DILocation(line: 405, column: 17, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !1514, file: !84, line: 405, column: 17)
!2326 = !DILocation(line: 405, column: 17, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2325, file: !84, line: 405, column: 17)
!2328 = !DILocation(line: 0, scope: !1518)
!2329 = !DILocation(line: 406, column: 17, scope: !1518)
!2330 = !DILocation(line: 406, column: 17, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 406, column: 17)
!2332 = !DILocation(line: 406, column: 17, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2331, file: !84, line: 406, column: 17)
!2334 = !DILocation(line: 0, scope: !1515)
!2335 = !DILocation(line: 406, column: 17, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 406, column: 17)
!2337 = !DILocation(line: 406, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2336, file: !84, line: 406, column: 17)
!2339 = !DILocation(line: 406, column: 17, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 406, column: 17)
!2341 = !DILocation(line: 406, column: 17, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2340, file: !84, line: 406, column: 17)
!2343 = !DILocation(line: 406, column: 17, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !1518, file: !84, line: 406, column: 17)
!2345 = !DILocation(line: 406, column: 17, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2344, file: !84, line: 406, column: 17)
!2347 = !DILocation(line: 407, column: 27, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !1515, file: !84, line: 407, column: 21)
!2349 = !DILocation(line: 407, column: 37, scope: !2348)
!2350 = !DILocation(line: 409, column: 27, scope: !1521)
!2351 = !DILocation(line: 409, column: 21, scope: !1515)
!2352 = !DILocation(line: 411, column: 44, scope: !1520)
!2353 = !DILocation(line: 411, column: 49, scope: !1520)
!2354 = !DILocation(line: 0, scope: !1520)
!2355 = !DILocation(line: 0, scope: !1523)
!2356 = !DILocation(line: 412, column: 21, scope: !1528)
!2357 = !DILocation(line: 412, column: 21, scope: !1523)
!2358 = !DILocation(line: 412, column: 21, scope: !1527)
!2359 = !DILocation(line: 0, scope: !1525)
!2360 = !DILocation(line: 412, column: 21, scope: !1525)
!2361 = !DILocation(line: 412, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !1525, file: !84, line: 412, column: 21)
!2363 = !DILocation(line: 412, column: 21, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2362, file: !84, line: 412, column: 21)
!2365 = !DILocation(line: 412, column: 21, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !1525, file: !84, line: 412, column: 21)
!2367 = !DILocation(line: 412, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !84, line: 412, column: 21)
!2369 = !DILocation(line: 412, column: 21, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !1525, file: !84, line: 412, column: 21)
!2371 = !DILocation(line: 412, column: 21, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2370, file: !84, line: 412, column: 21)
!2373 = !DILocation(line: 412, column: 21, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !1525, file: !84, line: 412, column: 21)
!2375 = !DILocation(line: 412, column: 21, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2374, file: !84, line: 412, column: 21)
!2377 = !DILocation(line: 412, column: 21, scope: !1526)
!2378 = distinct !{!2378, !2358, !2358, !1999, !2000}
!2379 = !DILocation(line: 412, column: 21, scope: !1533)
!2380 = !DILocation(line: 412, column: 21, scope: !1534)
!2381 = !DILocation(line: 412, column: 21, scope: !1531)
!2382 = !DILocation(line: 412, column: 21, scope: !1532)
!2383 = !DILocation(line: 412, column: 21, scope: !1530)
!2384 = !DILocation(line: 0, scope: !1530)
!2385 = !DILocation(line: 412, column: 21, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !1530, file: !84, line: 412, column: 21)
!2387 = !DILocation(line: 412, column: 21, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2386, file: !84, line: 412, column: 21)
!2389 = !DILocation(line: 412, column: 21, scope: !1537)
!2390 = !DILocation(line: 412, column: 21, scope: !1536)
!2391 = !DILocation(line: 0, scope: !1536)
!2392 = !DILocation(line: 412, column: 21, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !1536, file: !84, line: 412, column: 21)
!2394 = !DILocation(line: 412, column: 21, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2393, file: !84, line: 412, column: 21)
!2396 = !DILocation(line: 0, scope: !1532)
!2397 = distinct !{!2397, !2380, !2380, !1999, !2000}
!2398 = !DILocation(line: 412, column: 21, scope: !1542)
!2399 = !DILocation(line: 412, column: 21, scope: !1541)
!2400 = !DILocation(line: 0, scope: !1539)
!2401 = !DILocation(line: 412, column: 21, scope: !1539)
!2402 = !DILocation(line: 412, column: 21, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !1539, file: !84, line: 412, column: 21)
!2404 = !DILocation(line: 412, column: 21, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2403, file: !84, line: 412, column: 21)
!2406 = !DILocation(line: 412, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !1539, file: !84, line: 412, column: 21)
!2408 = !DILocation(line: 412, column: 21, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2407, file: !84, line: 412, column: 21)
!2410 = !DILocation(line: 412, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !1539, file: !84, line: 412, column: 21)
!2412 = !DILocation(line: 412, column: 21, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2411, file: !84, line: 412, column: 21)
!2414 = !DILocation(line: 412, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !1539, file: !84, line: 412, column: 21)
!2416 = !DILocation(line: 412, column: 21, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2415, file: !84, line: 412, column: 21)
!2418 = !DILocation(line: 412, column: 21, scope: !1540)
!2419 = distinct !{!2419, !2399, !2399, !1999, !2000}
!2420 = !DILocation(line: 412, column: 21, scope: !1547)
!2421 = !DILocation(line: 412, column: 21, scope: !1548)
!2422 = !DILocation(line: 412, column: 21, scope: !1545)
!2423 = !DILocation(line: 412, column: 21, scope: !1546)
!2424 = !DILocation(line: 412, column: 21, scope: !1544)
!2425 = !DILocation(line: 0, scope: !1544)
!2426 = !DILocation(line: 412, column: 21, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !1544, file: !84, line: 412, column: 21)
!2428 = !DILocation(line: 412, column: 21, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2427, file: !84, line: 412, column: 21)
!2430 = !DILocation(line: 412, column: 21, scope: !1551)
!2431 = !DILocation(line: 412, column: 21, scope: !1550)
!2432 = !DILocation(line: 0, scope: !1550)
!2433 = !DILocation(line: 412, column: 21, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !1550, file: !84, line: 412, column: 21)
!2435 = !DILocation(line: 412, column: 21, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2434, file: !84, line: 412, column: 21)
!2437 = !DILocation(line: 0, scope: !1546)
!2438 = distinct !{!2438, !2421, !2421, !1999, !2000}
!2439 = !DILocation(line: 0, scope: !1553)
!2440 = !DILocation(line: 413, column: 21, scope: !1553)
!2441 = !DILocation(line: 413, column: 21, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !1553, file: !84, line: 413, column: 21)
!2443 = !DILocation(line: 413, column: 21, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2442, file: !84, line: 413, column: 21)
!2445 = !DILocation(line: 413, column: 21, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !1553, file: !84, line: 413, column: 21)
!2447 = !DILocation(line: 413, column: 21, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2446, file: !84, line: 413, column: 21)
!2449 = !DILocation(line: 413, column: 21, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !1553, file: !84, line: 413, column: 21)
!2451 = !DILocation(line: 413, column: 21, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2450, file: !84, line: 413, column: 21)
!2453 = !DILocation(line: 413, column: 21, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !1553, file: !84, line: 413, column: 21)
!2455 = !DILocation(line: 413, column: 21, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2454, file: !84, line: 413, column: 21)
!2457 = !DILocation(line: 0, scope: !1555)
!2458 = !DILocation(line: 414, column: 21, scope: !1555)
!2459 = !DILocation(line: 414, column: 21, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !1555, file: !84, line: 414, column: 21)
!2461 = !DILocation(line: 414, column: 21, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2460, file: !84, line: 414, column: 21)
!2463 = !DILocation(line: 414, column: 21, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !1555, file: !84, line: 414, column: 21)
!2465 = !DILocation(line: 414, column: 21, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2464, file: !84, line: 414, column: 21)
!2467 = !DILocation(line: 414, column: 21, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !1555, file: !84, line: 414, column: 21)
!2469 = !DILocation(line: 414, column: 21, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2468, file: !84, line: 414, column: 21)
!2471 = !DILocation(line: 414, column: 21, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !1555, file: !84, line: 414, column: 21)
!2473 = !DILocation(line: 414, column: 21, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2472, file: !84, line: 414, column: 21)
!2475 = !DILocation(line: 415, column: 31, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !1520, file: !84, line: 415, column: 25)
!2477 = !DILocation(line: 398, column: 29, scope: !2308)
!2478 = !DILocation(line: 422, column: 17, scope: !1499)
!2479 = !DILocation(line: 440, column: 33, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !84, line: 440, column: 25)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !84, line: 439, column: 17)
!2482 = distinct !DILexicalBlock(scope: !1557, file: !84, line: 438, column: 21)
!2483 = !DILocation(line: 440, column: 25, scope: !2481)
!2484 = !DILocation(line: 445, column: 36, scope: !2480)
!2485 = !DILocation(line: 445, column: 48, scope: !2480)
!2486 = !DILocation(line: 445, column: 46, scope: !2480)
!2487 = !DILocation(line: 445, column: 31, scope: !2480)
!2488 = !DILocation(line: 446, column: 36, scope: !2480)
!2489 = !DILocation(line: 446, column: 48, scope: !2480)
!2490 = !DILocation(line: 446, column: 46, scope: !2480)
!2491 = !DILocation(line: 446, column: 31, scope: !2480)
!2492 = !DILocation(line: 446, column: 29, scope: !2480)
!2493 = !DILocation(line: 0, scope: !1557)
!2494 = !DILocation(line: 453, column: 35, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2482, file: !84, line: 449, column: 17)
!2496 = !DILocation(line: 455, column: 33, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !84, line: 455, column: 25)
!2498 = !DILocation(line: 455, column: 25, scope: !2495)
!2499 = !DILocation(line: 457, column: 36, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !84, line: 456, column: 21)
!2501 = !DILocation(line: 457, column: 48, scope: !2500)
!2502 = !DILocation(line: 457, column: 46, scope: !2500)
!2503 = !DILocation(line: 457, column: 31, scope: !2500)
!2504 = !DILocation(line: 458, column: 36, scope: !2500)
!2505 = !DILocation(line: 458, column: 48, scope: !2500)
!2506 = !DILocation(line: 458, column: 46, scope: !2500)
!2507 = !DILocation(line: 458, column: 31, scope: !2500)
!2508 = !DILocation(line: 458, column: 29, scope: !2500)
!2509 = !DILocation(line: 460, column: 21, scope: !2500)
!2510 = !DILocation(line: 0, scope: !2495)
!2511 = !DILocalVariable(name: "mvc", arg: 1, scope: !2512, file: !22, line: 226, type: !628)
!2512 = distinct !DISubprogram(name: "x264_predictor_difference", scope: !22, file: !22, line: 226, type: !2513, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!50, !628, !296}
!2515 = !{!2511, !2516, !2517, !2518}
!2516 = !DILocalVariable(name: "i_mvc", arg: 2, scope: !2512, file: !22, line: 226, type: !296)
!2517 = !DILocalVariable(name: "sum", scope: !2512, file: !22, line: 228, type: !50)
!2518 = !DILocalVariable(name: "i", scope: !2519, file: !22, line: 229, type: !50)
!2519 = distinct !DILexicalBlock(scope: !2512, file: !22, line: 229, column: 5)
!2520 = !DILocation(line: 0, scope: !2512, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 461, column: 28, scope: !2495)
!2522 = !DILocation(line: 0, scope: !2519, inlinedAt: !2521)
!2523 = !DILocation(line: 229, column: 23, scope: !2524, inlinedAt: !2521)
!2524 = distinct !DILexicalBlock(scope: !2519, file: !22, line: 229, column: 5)
!2525 = !DILocation(line: 229, column: 5, scope: !2519, inlinedAt: !2521)
!2526 = !DILocation(line: 461, column: 60, scope: !2495)
!2527 = !DILocation(line: 231, column: 21, scope: !2528, inlinedAt: !2521)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !22, line: 230, column: 5)
!2529 = !DILocation(line: 232, column: 21, scope: !2528, inlinedAt: !2521)
!2530 = !DILocation(line: 231, column: 38, scope: !2528, inlinedAt: !2521)
!2531 = !DILocation(line: 231, column: 33, scope: !2528, inlinedAt: !2521)
!2532 = !DILocation(line: 231, column: 31, scope: !2528, inlinedAt: !2521)
!2533 = !DILocation(line: 231, column: 16, scope: !2528, inlinedAt: !2521)
!2534 = !DILocation(line: 232, column: 33, scope: !2528, inlinedAt: !2521)
!2535 = !DILocation(line: 232, column: 31, scope: !2528, inlinedAt: !2521)
!2536 = !DILocation(line: 232, column: 16, scope: !2528, inlinedAt: !2521)
!2537 = !DILocation(line: 232, column: 14, scope: !2528, inlinedAt: !2521)
!2538 = !DILocation(line: 231, column: 13, scope: !2528, inlinedAt: !2521)
!2539 = distinct !{!2539, !2525, !2540, !1999, !2000}
!2540 = !DILocation(line: 233, column: 5, scope: !2519, inlinedAt: !2521)
!2541 = !DILocation(line: 461, column: 25, scope: !2495)
!2542 = !DILocation(line: 0, scope: !2482)
!2543 = !DILocation(line: 464, column: 27, scope: !1557)
!2544 = !DILocation(line: 465, column: 27, scope: !1557)
!2545 = !DILocation(line: 466, column: 27, scope: !1557)
!2546 = !DILocation(line: 467, column: 35, scope: !1557)
!2547 = !DILocation(line: 467, column: 31, scope: !1557)
!2548 = !DILocation(line: 467, column: 27, scope: !1557)
!2549 = !DILocation(line: 468, column: 35, scope: !1557)
!2550 = !DILocation(line: 468, column: 31, scope: !1557)
!2551 = !DILocation(line: 468, column: 27, scope: !1557)
!2552 = !DILocation(line: 469, column: 35, scope: !1557)
!2553 = !DILocation(line: 469, column: 31, scope: !1557)
!2554 = !DILocation(line: 469, column: 27, scope: !1557)
!2555 = !DILocation(line: 471, column: 43, scope: !1557)
!2556 = !DILocation(line: 471, column: 41, scope: !1557)
!2557 = !DILocation(line: 471, column: 71, scope: !1557)
!2558 = !DILocation(line: 472, column: 13, scope: !1557)
!2559 = !DILocation(line: 0, scope: !1563)
!2560 = !DILocation(line: 476, column: 13, scope: !1568)
!2561 = !DILocation(line: 476, column: 13, scope: !1563)
!2562 = !DILocation(line: 476, column: 13, scope: !1566)
!2563 = !DILocation(line: 476, column: 13, scope: !1567)
!2564 = !DILocation(line: 0, scope: !1565)
!2565 = !DILocation(line: 476, column: 13, scope: !1565)
!2566 = !DILocation(line: 476, column: 13, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !1565, file: !84, line: 476, column: 13)
!2568 = !DILocation(line: 476, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2567, file: !84, line: 476, column: 13)
!2570 = !DILocation(line: 476, column: 13, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !1565, file: !84, line: 476, column: 13)
!2572 = !DILocation(line: 476, column: 13, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2571, file: !84, line: 476, column: 13)
!2574 = !DILocation(line: 476, column: 13, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !1565, file: !84, line: 476, column: 13)
!2576 = !DILocation(line: 476, column: 13, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !84, line: 476, column: 13)
!2578 = !DILocation(line: 476, column: 13, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !1565, file: !84, line: 476, column: 13)
!2580 = !DILocation(line: 476, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !84, line: 476, column: 13)
!2582 = distinct !{!2582, !2563, !2563, !1999, !2000}
!2583 = !DILocation(line: 476, column: 13, scope: !1573)
!2584 = !DILocation(line: 476, column: 13, scope: !1574)
!2585 = !DILocation(line: 476, column: 13, scope: !1571)
!2586 = !DILocation(line: 476, column: 13, scope: !1572)
!2587 = !DILocation(line: 476, column: 13, scope: !1570)
!2588 = !DILocation(line: 0, scope: !1570)
!2589 = !DILocation(line: 476, column: 13, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !1570, file: !84, line: 476, column: 13)
!2591 = !DILocation(line: 476, column: 13, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2590, file: !84, line: 476, column: 13)
!2593 = !DILocation(line: 476, column: 13, scope: !1577)
!2594 = !DILocation(line: 476, column: 13, scope: !1576)
!2595 = !DILocation(line: 0, scope: !1576)
!2596 = !DILocation(line: 476, column: 13, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !1576, file: !84, line: 476, column: 13)
!2598 = !DILocation(line: 476, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2597, file: !84, line: 476, column: 13)
!2600 = !DILocation(line: 0, scope: !1572)
!2601 = distinct !{!2601, !2584, !2584, !1999, !2000}
!2602 = !DILocation(line: 476, column: 13, scope: !1582)
!2603 = !DILocation(line: 476, column: 13, scope: !1580)
!2604 = !DILocation(line: 476, column: 13, scope: !1581)
!2605 = !DILocation(line: 0, scope: !1579)
!2606 = !DILocation(line: 476, column: 13, scope: !1579)
!2607 = !DILocation(line: 476, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !1579, file: !84, line: 476, column: 13)
!2609 = !DILocation(line: 476, column: 13, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2608, file: !84, line: 476, column: 13)
!2611 = !DILocation(line: 476, column: 13, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !1579, file: !84, line: 476, column: 13)
!2613 = !DILocation(line: 476, column: 13, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2612, file: !84, line: 476, column: 13)
!2615 = !DILocation(line: 476, column: 13, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !1579, file: !84, line: 476, column: 13)
!2617 = !DILocation(line: 476, column: 13, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2616, file: !84, line: 476, column: 13)
!2619 = !DILocation(line: 476, column: 13, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !1579, file: !84, line: 476, column: 13)
!2621 = !DILocation(line: 476, column: 13, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2620, file: !84, line: 476, column: 13)
!2623 = distinct !{!2623, !2604, !2604, !1999, !2000}
!2624 = !DILocation(line: 476, column: 13, scope: !1587)
!2625 = !DILocation(line: 476, column: 13, scope: !1588)
!2626 = !DILocation(line: 478, column: 13, scope: !1593)
!2627 = !DILocation(line: 476, column: 13, scope: !1585)
!2628 = !DILocation(line: 476, column: 13, scope: !1586)
!2629 = !DILocation(line: 476, column: 13, scope: !1584)
!2630 = !DILocation(line: 0, scope: !1584)
!2631 = !DILocation(line: 476, column: 13, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !1584, file: !84, line: 476, column: 13)
!2633 = !DILocation(line: 476, column: 13, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2632, file: !84, line: 476, column: 13)
!2635 = !DILocation(line: 476, column: 13, scope: !1591)
!2636 = !DILocation(line: 476, column: 13, scope: !1590)
!2637 = !DILocation(line: 0, scope: !1590)
!2638 = !DILocation(line: 476, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !1590, file: !84, line: 476, column: 13)
!2640 = !DILocation(line: 476, column: 13, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2639, file: !84, line: 476, column: 13)
!2642 = !DILocation(line: 0, scope: !1586)
!2643 = distinct !{!2643, !2625, !2625, !1999, !2000}
!2644 = !DILocation(line: 0, scope: !1593)
!2645 = !DILocation(line: 478, column: 13, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !1593, file: !84, line: 478, column: 13)
!2647 = !DILocation(line: 478, column: 13, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2646, file: !84, line: 478, column: 13)
!2649 = !DILocation(line: 478, column: 13, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !1593, file: !84, line: 478, column: 13)
!2651 = !DILocation(line: 478, column: 13, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2650, file: !84, line: 478, column: 13)
!2653 = !DILocation(line: 478, column: 13, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !1593, file: !84, line: 478, column: 13)
!2655 = !DILocation(line: 478, column: 13, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2654, file: !84, line: 478, column: 13)
!2657 = !DILocation(line: 478, column: 13, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !1593, file: !84, line: 478, column: 13)
!2659 = !DILocation(line: 482, column: 59, scope: !1499)
!2660 = !DILocation(line: 482, column: 54, scope: !1499)
!2661 = !DILocation(line: 483, column: 59, scope: !1499)
!2662 = !DILocation(line: 483, column: 54, scope: !1499)
!2663 = !DILocation(line: 485, column: 13, scope: !1499)
!2664 = !DILocation(line: 565, column: 26, scope: !1499)
!2665 = !DILocation(line: 478, column: 13, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !84, line: 478, column: 13)
!2667 = !DILocation(line: 494, column: 22, scope: !1600)
!2668 = !DILocation(line: 494, column: 25, scope: !1600)
!2669 = !DILocation(line: 494, column: 21, scope: !1601)
!2670 = !DILocation(line: 497, column: 21, scope: !1598)
!2671 = !DILocation(line: 0, scope: !1598)
!2672 = !DILocation(line: 499, column: 40, scope: !1603)
!2673 = !DILocation(line: 499, column: 50, scope: !1603)
!2674 = !DILocation(line: 499, column: 38, scope: !1603)
!2675 = !DILocation(line: 0, scope: !1603)
!2676 = !DILocation(line: 500, column: 40, scope: !1603)
!2677 = !DILocation(line: 500, column: 50, scope: !1603)
!2678 = !DILocation(line: 500, column: 38, scope: !1603)
!2679 = !DILocation(line: 501, column: 29, scope: !1608)
!2680 = !DILocation(line: 501, column: 29, scope: !1603)
!2681 = !DILocation(line: 502, column: 29, scope: !1607)
!2682 = !DILocation(line: 0, scope: !1607)
!2683 = !DILocation(line: 502, column: 29, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !1607, file: !84, line: 502, column: 29)
!2685 = !DILocation(line: 502, column: 29, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2684, file: !84, line: 502, column: 29)
!2687 = !DILocation(line: 497, column: 46, scope: !1604)
!2688 = !DILocation(line: 497, column: 39, scope: !1604)
!2689 = distinct !{!2689, !2670, !2690, !1999, !2000}
!2690 = !DILocation(line: 503, column: 21, scope: !1598)
!2691 = !DILocation(line: 0, scope: !1610)
!2692 = !DILocation(line: 508, column: 62, scope: !1610)
!2693 = !DILocation(line: 508, column: 67, scope: !1610)
!2694 = !DILocation(line: 508, column: 56, scope: !1610)
!2695 = !DILocation(line: 509, column: 31, scope: !1610)
!2696 = !DILocation(line: 520, column: 21, scope: !1610)
!2697 = !DILocation(line: 521, column: 21, scope: !1610)
!2698 = !DILocation(line: 522, column: 21, scope: !1610)
!2699 = !DILocation(line: 523, column: 21, scope: !1610)
!2700 = !DILocation(line: 524, column: 21, scope: !1610)
!2701 = !DILocation(line: 525, column: 21, scope: !1610)
!2702 = !DILocation(line: 526, column: 21, scope: !1610)
!2703 = !DILocation(line: 527, column: 21, scope: !1610)
!2704 = !DILocation(line: 528, column: 21, scope: !1610)
!2705 = !DILocation(line: 529, column: 21, scope: !1610)
!2706 = !DILocation(line: 530, column: 21, scope: !1610)
!2707 = !DILocation(line: 531, column: 21, scope: !1610)
!2708 = !DILocation(line: 532, column: 21, scope: !1610)
!2709 = !DILocation(line: 533, column: 21, scope: !1610)
!2710 = !DILocation(line: 534, column: 21, scope: !1610)
!2711 = !DILocation(line: 535, column: 21, scope: !1610)
!2712 = !DILocation(line: 536, column: 21, scope: !1610)
!2713 = !DILocation(line: 537, column: 21, scope: !1610)
!2714 = !DILocation(line: 538, column: 21, scope: !1610)
!2715 = !DILocation(line: 539, column: 21, scope: !1610)
!2716 = !DILocation(line: 540, column: 21, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 540, column: 21)
!2718 = !DILocation(line: 540, column: 21, scope: !1610)
!2719 = !DILocation(line: 541, column: 21, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 541, column: 21)
!2721 = !DILocation(line: 541, column: 21, scope: !1610)
!2722 = !DILocation(line: 542, column: 21, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 542, column: 21)
!2724 = !DILocation(line: 542, column: 21, scope: !1610)
!2725 = !DILocation(line: 543, column: 21, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 543, column: 21)
!2727 = !DILocation(line: 543, column: 21, scope: !1610)
!2728 = !DILocation(line: 544, column: 21, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 544, column: 21)
!2730 = !DILocation(line: 544, column: 21, scope: !1610)
!2731 = !DILocation(line: 545, column: 21, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 545, column: 21)
!2733 = !DILocation(line: 545, column: 21, scope: !1610)
!2734 = !DILocation(line: 546, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 546, column: 21)
!2736 = !DILocation(line: 546, column: 21, scope: !1610)
!2737 = !DILocation(line: 547, column: 21, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 547, column: 21)
!2739 = !DILocation(line: 547, column: 21, scope: !1610)
!2740 = !DILocation(line: 548, column: 21, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 548, column: 21)
!2742 = !DILocation(line: 548, column: 21, scope: !1610)
!2743 = !DILocation(line: 549, column: 21, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 549, column: 21)
!2745 = !DILocation(line: 549, column: 21, scope: !1610)
!2746 = !DILocation(line: 550, column: 21, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 550, column: 21)
!2748 = !DILocation(line: 550, column: 21, scope: !1610)
!2749 = !DILocation(line: 551, column: 21, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 551, column: 21)
!2751 = !DILocation(line: 551, column: 21, scope: !1610)
!2752 = !DILocation(line: 552, column: 21, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 552, column: 21)
!2754 = !DILocation(line: 552, column: 21, scope: !1610)
!2755 = !DILocation(line: 553, column: 21, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 553, column: 21)
!2757 = !DILocation(line: 553, column: 21, scope: !1610)
!2758 = !DILocation(line: 554, column: 21, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 554, column: 21)
!2760 = !DILocation(line: 554, column: 21, scope: !1610)
!2761 = !DILocation(line: 555, column: 21, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 555, column: 21)
!2763 = !DILocation(line: 555, column: 21, scope: !1610)
!2764 = !DILocation(line: 559, column: 24, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !1610, file: !84, line: 559, column: 24)
!2766 = !DILocation(line: 559, column: 24, scope: !1610)
!2767 = !DILocation(line: 561, column: 43, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !84, line: 560, column: 21)
!2769 = !DILocation(line: 561, column: 38, scope: !2768)
!2770 = !DILocation(line: 561, column: 35, scope: !2768)
!2771 = !DILocation(line: 562, column: 44, scope: !2768)
!2772 = !DILocation(line: 562, column: 49, scope: !2768)
!2773 = !DILocation(line: 562, column: 38, scope: !2768)
!2774 = !DILocation(line: 562, column: 35, scope: !2768)
!2775 = !DILocation(line: 563, column: 21, scope: !2768)
!2776 = !DILocation(line: 565, column: 22, scope: !1499)
!2777 = !DILocation(line: 565, column: 13, scope: !1601)
!2778 = distinct !{!2778, !2663, !2779, !1999, !2000}
!2779 = !DILocation(line: 565, column: 43, scope: !1499)
!2780 = !DILocation(line: 566, column: 21, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !1499, file: !84, line: 566, column: 17)
!2782 = !DILocation(line: 566, column: 33, scope: !2781)
!2783 = !DILocation(line: 574, column: 31, scope: !1614)
!2784 = !DILocation(line: 0, scope: !1614)
!2785 = !DILocation(line: 575, column: 31, scope: !1614)
!2786 = !DILocation(line: 576, column: 31, scope: !1614)
!2787 = !DILocation(line: 577, column: 31, scope: !1614)
!2788 = !DILocation(line: 579, column: 38, scope: !1614)
!2789 = !DILocation(line: 579, column: 46, scope: !1614)
!2790 = !DILocation(line: 579, column: 51, scope: !1614)
!2791 = !DILocation(line: 588, column: 38, scope: !1614)
!2792 = !{!1846, !1850, i64 112}
!2793 = !DILocation(line: 592, column: 13, scope: !1614)
!2794 = !DILocation(line: 593, column: 28, scope: !1614)
!2795 = !DILocation(line: 594, column: 25, scope: !1614)
!2796 = !DILocation(line: 594, column: 51, scope: !1614)
!2797 = !DILocation(line: 595, column: 30, scope: !1614)
!2798 = !{!1862, !1850, i64 31176}
!2799 = !DILocation(line: 597, column: 77, scope: !1614)
!2800 = !{!1862, !1847, i64 25792}
!2801 = !DILocation(line: 597, column: 55, scope: !1614)
!2802 = !DILocation(line: 597, column: 39, scope: !1614)
!2803 = !DILocation(line: 597, column: 85, scope: !1614)
!2804 = !DILocation(line: 597, column: 84, scope: !1614)
!2805 = !DILocation(line: 597, column: 94, scope: !1614)
!2806 = !DILocation(line: 597, column: 111, scope: !1614)
!2807 = !DILocation(line: 597, column: 98, scope: !1614)
!2808 = !DILocation(line: 599, column: 16, scope: !1614)
!2809 = !DILocation(line: 599, column: 13, scope: !1614)
!2810 = !DILocation(line: 599, column: 59, scope: !1614)
!2811 = !DILocation(line: 600, column: 29, scope: !1614)
!2812 = !DILocation(line: 600, column: 23, scope: !1614)
!2813 = !DILocation(line: 600, column: 55, scope: !1614)
!2814 = !DILocation(line: 602, column: 23, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !1614, file: !84, line: 602, column: 17)
!2816 = !DILocation(line: 602, column: 17, scope: !1614)
!2817 = !DILocation(line: 603, column: 43, scope: !2815)
!2818 = !{!1862, !1850, i64 14680}
!2819 = !DILocation(line: 603, column: 49, scope: !2815)
!2820 = !DILocation(line: 603, column: 40, scope: !2815)
!2821 = !DILocation(line: 603, column: 60, scope: !2815)
!2822 = !DILocation(line: 603, column: 37, scope: !2815)
!2823 = !DILocation(line: 603, column: 27, scope: !2815)
!2824 = !DILocation(line: 603, column: 17, scope: !2815)
!2825 = !DILocation(line: 604, column: 40, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !1614, file: !84, line: 604, column: 17)
!2827 = !DILocation(line: 605, column: 23, scope: !2826)
!2828 = !DILocation(line: 605, column: 17, scope: !2826)
!2829 = !DILocation(line: 606, column: 39, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !1614, file: !84, line: 606, column: 17)
!2831 = !DILocation(line: 607, column: 29, scope: !2830)
!2832 = !DILocation(line: 607, column: 17, scope: !2830)
!2833 = !DILocation(line: 607, column: 27, scope: !2830)
!2834 = !DILocation(line: 609, column: 23, scope: !1628)
!2835 = !DILocation(line: 609, column: 35, scope: !1628)
!2836 = !DILocation(line: 609, column: 17, scope: !1614)
!2837 = !DILocation(line: 0, scope: !1674)
!2838 = !DILocation(line: 708, column: 41, scope: !1678)
!2839 = !DILocation(line: 708, column: 17, scope: !1674)
!2840 = !DILocation(line: 612, column: 59, scope: !1627)
!2841 = !DILocation(line: 612, column: 63, scope: !1627)
!2842 = !DILocation(line: 612, column: 50, scope: !1627)
!2843 = !DILocation(line: 0, scope: !1627)
!2844 = !DILocation(line: 614, column: 45, scope: !1627)
!2845 = !DILocation(line: 614, column: 34, scope: !1627)
!2846 = !DILocation(line: 614, column: 69, scope: !1627)
!2847 = !DILocation(line: 614, column: 58, scope: !1627)
!2848 = !DILocation(line: 615, column: 28, scope: !1627)
!2849 = !DILocation(line: 615, column: 83, scope: !1627)
!2850 = !DILocation(line: 615, column: 79, scope: !1627)
!2851 = !DILocation(line: 615, column: 90, scope: !1627)
!2852 = !DILocation(line: 616, column: 28, scope: !1627)
!2853 = !DILocation(line: 616, column: 26, scope: !1627)
!2854 = !DILocation(line: 0, scope: !1634)
!2855 = !DILocation(line: 617, column: 41, scope: !1637)
!2856 = !DILocation(line: 617, column: 17, scope: !1634)
!2857 = !DILocation(line: 613, column: 21, scope: !1627)
!2858 = !DILocation(line: 615, column: 21, scope: !1627)
!2859 = !DILocation(line: 661, column: 36, scope: !1627)
!2860 = !DILocation(line: 662, column: 34, scope: !1627)
!2861 = !DILocation(line: 662, column: 45, scope: !1627)
!2862 = !DILocation(line: 663, column: 31, scope: !1627)
!2863 = !DILocation(line: 663, column: 41, scope: !1627)
!2864 = !DILocation(line: 620, column: 46, scope: !1636)
!2865 = !DILocation(line: 620, column: 33, scope: !1636)
!2866 = !DILocation(line: 0, scope: !1636)
!2867 = !DILocation(line: 621, column: 30, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !1636, file: !84, line: 621, column: 25)
!2869 = !DILocation(line: 621, column: 25, scope: !1636)
!2870 = !DILocation(line: 623, column: 26, scope: !1636)
!2871 = !DILocation(line: 624, column: 26, scope: !1636)
!2872 = !DILocation(line: 624, column: 79, scope: !1636)
!2873 = !DILocation(line: 624, column: 74, scope: !1636)
!2874 = !DILocation(line: 625, column: 84, scope: !1636)
!2875 = !DILocation(line: 625, column: 87, scope: !1636)
!2876 = !DILocation(line: 626, column: 35, scope: !1641)
!2877 = !DILocation(line: 626, column: 21, scope: !1642)
!2878 = !DILocation(line: 644, column: 30, scope: !1651)
!2879 = !DILocation(line: 0, scope: !1642)
!2880 = !DILocation(line: 644, column: 21, scope: !1652)
!2881 = !DILocation(line: 0, scope: !1640)
!2882 = !DILocation(line: 629, column: 25, scope: !1640)
!2883 = !DILocation(line: 629, column: 29, scope: !1640)
!2884 = !DILocation(line: 630, column: 25, scope: !1640)
!2885 = !DILocation(line: 630, column: 62, scope: !1640)
!2886 = !DILocation(line: 630, column: 61, scope: !1640)
!2887 = !DILocation(line: 630, column: 77, scope: !1640)
!2888 = !DILocation(line: 630, column: 73, scope: !1640)
!2889 = !DILocation(line: 630, column: 72, scope: !1640)
!2890 = !DILocation(line: 630, column: 90, scope: !1640)
!2891 = !DILocation(line: 630, column: 86, scope: !1640)
!2892 = !DILocation(line: 630, column: 85, scope: !1640)
!2893 = !DILocation(line: 0, scope: !1645)
!2894 = !DILocation(line: 631, column: 25, scope: !1645)
!2895 = !DILocation(line: 643, column: 21, scope: !1641)
!2896 = !DILocation(line: 626, column: 45, scope: !1641)
!2897 = distinct !{!2897, !2877, !2898, !1999, !2000}
!2898 = !DILocation(line: 643, column: 21, scope: !1642)
!2899 = !DILocation(line: 633, column: 39, scope: !1647)
!2900 = !DILocation(line: 633, column: 67, scope: !1647)
!2901 = !DILocation(line: 633, column: 63, scope: !1647)
!2902 = !DILocation(line: 633, column: 49, scope: !1647)
!2903 = !DILocation(line: 633, column: 47, scope: !1647)
!2904 = !DILocation(line: 0, scope: !1647)
!2905 = !DILocation(line: 634, column: 43, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !1647, file: !84, line: 634, column: 33)
!2907 = !DILocation(line: 634, column: 54, scope: !2906)
!2908 = !DILocation(line: 634, column: 37, scope: !2906)
!2909 = !DILocation(line: 634, column: 33, scope: !1647)
!2910 = !DILocation(line: 636, column: 33, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !84, line: 635, column: 29)
!2912 = !DILocation(line: 637, column: 58, scope: !2911)
!2913 = !DILocation(line: 637, column: 33, scope: !2911)
!2914 = !DILocation(line: 637, column: 52, scope: !2911)
!2915 = !{!2916, !1847, i64 0}
!2916 = !{!"", !1847, i64 0, !1848, i64 4}
!2917 = !DILocation(line: 638, column: 56, scope: !2911)
!2918 = !DILocation(line: 638, column: 48, scope: !2911)
!2919 = !DILocation(line: 638, column: 54, scope: !2911)
!2920 = !DILocation(line: 639, column: 33, scope: !2911)
!2921 = !DILocation(line: 639, column: 54, scope: !2911)
!2922 = !DILocation(line: 640, column: 39, scope: !2911)
!2923 = !DILocation(line: 641, column: 29, scope: !2911)
!2924 = !DILocation(line: 631, column: 49, scope: !1648)
!2925 = !DILocation(line: 631, column: 43, scope: !1648)
!2926 = distinct !{!2926, !2894, !2927, !1999, !2000}
!2927 = !DILocation(line: 642, column: 25, scope: !1645)
!2928 = !DILocation(line: 646, column: 40, scope: !1650)
!2929 = !DILocation(line: 646, column: 39, scope: !1650)
!2930 = !DILocation(line: 0, scope: !1650)
!2931 = !DILocation(line: 647, column: 35, scope: !1650)
!2932 = !DILocation(line: 647, column: 86, scope: !1650)
!2933 = !DILocation(line: 647, column: 89, scope: !1650)
!2934 = !DILocation(line: 648, column: 49, scope: !1650)
!2935 = !DILocation(line: 648, column: 35, scope: !1650)
!2936 = !DILocation(line: 648, column: 33, scope: !1650)
!2937 = !DILocation(line: 649, column: 39, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !1650, file: !84, line: 649, column: 29)
!2939 = !DILocation(line: 649, column: 50, scope: !2938)
!2940 = !DILocation(line: 649, column: 33, scope: !2938)
!2941 = !DILocation(line: 649, column: 29, scope: !1650)
!2942 = !DILocation(line: 651, column: 29, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !84, line: 650, column: 25)
!2944 = !DILocation(line: 652, column: 54, scope: !2943)
!2945 = !DILocation(line: 652, column: 29, scope: !2943)
!2946 = !DILocation(line: 652, column: 48, scope: !2943)
!2947 = !DILocation(line: 653, column: 52, scope: !2943)
!2948 = !DILocation(line: 653, column: 44, scope: !2943)
!2949 = !DILocation(line: 653, column: 50, scope: !2943)
!2950 = !DILocation(line: 654, column: 29, scope: !2943)
!2951 = !DILocation(line: 654, column: 50, scope: !2943)
!2952 = !DILocation(line: 655, column: 35, scope: !2943)
!2953 = !DILocation(line: 656, column: 25, scope: !2943)
!2954 = !DILocation(line: 644, column: 37, scope: !1651)
!2955 = distinct !{!2955, !2880, !2956, !1999, !2000}
!2956 = !DILocation(line: 657, column: 21, scope: !1652)
!2957 = !DILocation(line: 658, column: 26, scope: !1636)
!2958 = !DILocation(line: 659, column: 17, scope: !1637)
!2959 = !DILocation(line: 617, column: 53, scope: !1637)
!2960 = distinct !{!2960, !2856, !2961, !1999, !2000}
!2961 = !DILocation(line: 659, column: 17, scope: !1634)
!2962 = !DILocation(line: 0, scope: !1655)
!2963 = distinct !{!2963, !2964, !2965, !1999, !2000}
!2964 = !DILocation(line: 663, column: 17, scope: !1627)
!2965 = !DILocation(line: 689, column: 17, scope: !1627)
!2966 = !DILocation(line: 690, column: 31, scope: !1627)
!2967 = !DILocation(line: 690, column: 17, scope: !1627)
!2968 = !DILocation(line: 667, column: 46, scope: !1655)
!2969 = !DILocation(line: 667, column: 54, scope: !1655)
!2970 = !DILocation(line: 668, column: 35, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2972, file: !84, line: 668, column: 21)
!2972 = distinct !DILexicalBlock(scope: !1655, file: !84, line: 668, column: 21)
!2973 = !DILocation(line: 668, column: 44, scope: !2971)
!2974 = !DILocation(line: 668, column: 21, scope: !2972)
!2975 = !DILocation(line: 668, column: 47, scope: !2971)
!2976 = !DILocation(line: 668, column: 57, scope: !2971)
!2977 = !DILocation(line: 668, column: 61, scope: !2971)
!2978 = !DILocation(line: 668, column: 77, scope: !2971)
!2979 = distinct !{!2979, !2974, !2980, !1999, !2000}
!2980 = !DILocation(line: 668, column: 81, scope: !2972)
!2981 = !DILocation(line: 669, column: 39, scope: !1660)
!2982 = !DILocation(line: 0, scope: !2972)
!2983 = !DILocation(line: 0, scope: !1657)
!2984 = !DILocation(line: 669, column: 21, scope: !1657)
!2985 = !DILocation(line: 674, column: 66, scope: !1662)
!2986 = !DILocation(line: 674, column: 46, scope: !1662)
!2987 = !DILocation(line: 674, column: 64, scope: !1662)
!2988 = !DILocation(line: 0, scope: !1662)
!2989 = !DILocation(line: 678, column: 35, scope: !1662)
!2990 = !DILocation(line: 0, scope: !1659)
!2991 = !DILocation(line: 686, column: 35, scope: !1659)
!2992 = !DILocation(line: 686, column: 53, scope: !1659)
!2993 = !DILocation(line: 686, column: 27, scope: !1659)
!2994 = !DILocation(line: 669, column: 50, scope: !1660)
!2995 = distinct !{!2995, !2984, !2996, !1999, !2000}
!2996 = !DILocation(line: 687, column: 21, scope: !1657)
!2997 = !DILocation(line: 0, scope: !1667)
!2998 = !DILocation(line: 0, scope: !1665)
!2999 = !DILocation(line: 693, column: 39, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !1667, file: !84, line: 693, column: 21)
!3001 = !DILocation(line: 693, column: 21, scope: !1667)
!3002 = !DILocation(line: 702, column: 35, scope: !1672)
!3003 = !DILocation(line: 0, scope: !1669)
!3004 = !DILocation(line: 702, column: 17, scope: !1669)
!3005 = !DILocation(line: 696, column: 27, scope: !1665)
!3006 = !DILocation(line: 698, column: 25, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !1665, file: !84, line: 697, column: 25)
!3008 = distinct !{!3008, !2967, !3009, !1999, !2000}
!3009 = !DILocation(line: 701, column: 17, scope: !1627)
!3010 = !DILocation(line: 694, column: 29, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3000, file: !84, line: 694, column: 29)
!3012 = !DILocation(line: 694, column: 39, scope: !3011)
!3013 = !DILocation(line: 694, column: 45, scope: !3011)
!3014 = !DILocation(line: 694, column: 56, scope: !3011)
!3015 = !DILocation(line: 694, column: 43, scope: !3011)
!3016 = !DILocation(line: 694, column: 29, scope: !3000)
!3017 = !DILocation(line: 693, column: 50, scope: !3000)
!3018 = distinct !{!3018, !3001, !3019, !1999, !2000}
!3019 = !DILocation(line: 695, column: 34, scope: !1667)
!3020 = !DILocation(line: 703, column: 21, scope: !1671)
!3021 = !DILocation(line: 0, scope: !1671)
!3022 = !DILocation(line: 703, column: 21, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !1671, file: !84, line: 703, column: 21)
!3024 = !DILocation(line: 703, column: 21, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3023, file: !84, line: 703, column: 21)
!3026 = !DILocation(line: 702, column: 46, scope: !1672)
!3027 = distinct !{!3027, !3004, !3028, !1999, !2000}
!3028 = !DILocation(line: 703, column: 21, scope: !1669)
!3029 = !DILocation(line: 711, column: 46, scope: !1677)
!3030 = !DILocation(line: 711, column: 33, scope: !1677)
!3031 = !DILocation(line: 0, scope: !1677)
!3032 = !DILocation(line: 712, column: 31, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !1677, file: !84, line: 712, column: 25)
!3034 = !DILocation(line: 712, column: 25, scope: !1677)
!3035 = !DILocation(line: 714, column: 27, scope: !1677)
!3036 = !DILocation(line: 715, column: 26, scope: !1677)
!3037 = !DILocation(line: 715, column: 79, scope: !1677)
!3038 = !DILocation(line: 715, column: 74, scope: !1677)
!3039 = !DILocation(line: 717, column: 35, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3041, file: !84, line: 717, column: 21)
!3041 = distinct !DILexicalBlock(scope: !1677, file: !84, line: 717, column: 21)
!3042 = !DILocation(line: 717, column: 21, scope: !3041)
!3043 = !DILocation(line: 718, column: 25, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !84, line: 718, column: 25)
!3045 = !DILocation(line: 718, column: 25, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3044, file: !84, line: 718, column: 25)
!3047 = !DILocation(line: 718, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3046, file: !84, line: 718, column: 25)
!3049 = !DILocation(line: 718, column: 25, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !84, line: 718, column: 25)
!3051 = !DILocation(line: 718, column: 25, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3050, file: !84, line: 718, column: 25)
!3053 = !DILocation(line: 0, scope: !3044)
!3054 = !DILocation(line: 718, column: 25, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3044, file: !84, line: 718, column: 25)
!3056 = !DILocation(line: 718, column: 25, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3055, file: !84, line: 718, column: 25)
!3058 = !DILocation(line: 717, column: 45, scope: !3040)
!3059 = distinct !{!3059, !3042, !3060, !1999, !2000}
!3060 = !DILocation(line: 718, column: 25, scope: !3041)
!3061 = !DILocation(line: 719, column: 27, scope: !1677)
!3062 = !DILocation(line: 0, scope: !3041)
!3063 = !DILocation(line: 720, column: 30, scope: !1682)
!3064 = !DILocation(line: 720, column: 21, scope: !1683)
!3065 = !DILocation(line: 721, column: 25, scope: !1681)
!3066 = !DILocation(line: 0, scope: !1681)
!3067 = !DILocation(line: 721, column: 25, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !1681, file: !84, line: 721, column: 25)
!3069 = !DILocation(line: 721, column: 25, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3068, file: !84, line: 721, column: 25)
!3071 = !DILocation(line: 720, column: 37, scope: !1682)
!3072 = distinct !{!3072, !3064, !3073, !1999, !2000}
!3073 = !DILocation(line: 721, column: 25, scope: !1683)
!3074 = !DILocation(line: 708, column: 53, scope: !1678)
!3075 = distinct !{!3075, !2839, !3076, !1999, !2000}
!3076 = !DILocation(line: 722, column: 17, scope: !1674)
!3077 = !DILocation(line: 725, column: 9, scope: !1475)
!3078 = !DILocation(line: 726, column: 9, scope: !1475)
!3079 = !DILocation(line: 730, column: 20, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !83, file: !84, line: 730, column: 9)
!3081 = !DILocation(line: 730, column: 9, scope: !83)
!3082 = !DILocation(line: 732, column: 20, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !84, line: 731, column: 5)
!3084 = !DILocation(line: 733, column: 20, scope: !3083)
!3085 = !DILocation(line: 735, column: 5, scope: !3083)
!3086 = !DILocation(line: 738, column: 20, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3080, file: !84, line: 737, column: 5)
!3088 = !DILocation(line: 739, column: 20, scope: !3087)
!3089 = !DILocation(line: 0, scope: !3080)
!3090 = !DILocation(line: 732, column: 12, scope: !3083)
!3091 = !DILocation(line: 732, column: 18, scope: !3083)
!3092 = !DILocation(line: 733, column: 9, scope: !3083)
!3093 = !DILocation(line: 733, column: 18, scope: !3083)
!3094 = !DILocation(line: 734, column: 12, scope: !3083)
!3095 = !DILocation(line: 734, column: 17, scope: !3083)
!3096 = !DILocation(line: 744, column: 18, scope: !83)
!3097 = !DILocation(line: 744, column: 43, scope: !83)
!3098 = !DILocation(line: 744, column: 41, scope: !83)
!3099 = !DILocation(line: 744, column: 8, scope: !83)
!3100 = !DILocation(line: 744, column: 16, scope: !83)
!3101 = !{!1846, !1847, i64 132}
!3102 = !DILocation(line: 745, column: 13, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !83, file: !84, line: 745, column: 9)
!3104 = !DILocation(line: 745, column: 20, scope: !3103)
!3105 = !DILocation(line: 745, column: 59, scope: !3103)
!3106 = !DILocation(line: 745, column: 9, scope: !83)
!3107 = !DILocation(line: 746, column: 17, scope: !3103)
!3108 = !{!1846, !1847, i64 136}
!3109 = !DILocation(line: 746, column: 9, scope: !3103)
!3110 = !DILocation(line: 749, column: 31, scope: !1686)
!3111 = !DILocation(line: 749, column: 9, scope: !83)
!3112 = !DILocation(line: 751, column: 20, scope: !1685)
!3113 = !DILocation(line: 0, scope: !1685)
!3114 = !DILocation(line: 752, column: 20, scope: !1685)
!3115 = !DILocation(line: 753, column: 9, scope: !1685)
!3116 = !DILocation(line: 754, column: 5, scope: !1685)
!3117 = !DILocation(line: 755, column: 1, scope: !83)
!3118 = distinct !DISubprogram(name: "refine_subpel", scope: !84, file: !84, line: 809, type: !3119, scopeLine: 810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !87, !1374, !50, !50, !640, !50}
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3139, !3140, !3141, !3142, !3143, !3144, !3147, !3148, !3151, !3152, !3153, !3155, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3170, !3171, !3172, !3176, !3179, !3180, !3183, !3184, !3185, !3188, !3189, !3190, !3193, !3194, !3195, !3198, !3199, !3200, !3203, !3204}
!3122 = !DILocalVariable(name: "h", arg: 1, scope: !3118, file: !84, line: 809, type: !87)
!3123 = !DILocalVariable(name: "m", arg: 2, scope: !3118, file: !84, line: 809, type: !1374)
!3124 = !DILocalVariable(name: "hpel_iters", arg: 3, scope: !3118, file: !84, line: 809, type: !50)
!3125 = !DILocalVariable(name: "qpel_iters", arg: 4, scope: !3118, file: !84, line: 809, type: !50)
!3126 = !DILocalVariable(name: "p_halfpel_thresh", arg: 5, scope: !3118, file: !84, line: 809, type: !640)
!3127 = !DILocalVariable(name: "b_refine_qpel", arg: 6, scope: !3118, file: !84, line: 809, type: !50)
!3128 = !DILocalVariable(name: "bw", scope: !3118, file: !84, line: 811, type: !1400)
!3129 = !DILocalVariable(name: "bh", scope: !3118, file: !84, line: 812, type: !1400)
!3130 = !DILocalVariable(name: "p_cost_mvx", scope: !3118, file: !84, line: 813, type: !1430)
!3131 = !DILocalVariable(name: "p_cost_mvy", scope: !3118, file: !84, line: 814, type: !1430)
!3132 = !DILocalVariable(name: "i_pixel", scope: !3118, file: !84, line: 815, type: !1400)
!3133 = !DILocalVariable(name: "b_chroma_me", scope: !3118, file: !84, line: 816, type: !1400)
!3134 = !DILocalVariable(name: "mvy_offset", scope: !3118, file: !84, line: 817, type: !1400)
!3135 = !DILocalVariable(name: "pix", scope: !3118, file: !84, line: 819, type: !3136, align: 128)
!3136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 9216, elements: !3137)
!3137 = !{!3138}
!3138 = !DISubrange(count: 1152)
!3139 = !DILocalVariable(name: "bmx", scope: !3118, file: !84, line: 821, type: !50)
!3140 = !DILocalVariable(name: "bmy", scope: !3118, file: !84, line: 822, type: !50)
!3141 = !DILocalVariable(name: "bcost", scope: !3118, file: !84, line: 823, type: !50)
!3142 = !DILocalVariable(name: "odir", scope: !3118, file: !84, line: 824, type: !50)
!3143 = !DILocalVariable(name: "bdir", scope: !3118, file: !84, line: 824, type: !50)
!3144 = !DILocalVariable(name: "mx", scope: !3145, file: !84, line: 829, type: !50)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !84, line: 828, column: 5)
!3146 = distinct !DILexicalBlock(scope: !3118, file: !84, line: 827, column: 9)
!3147 = !DILocalVariable(name: "my", scope: !3145, file: !84, line: 830, type: !50)
!3148 = !DILocalVariable(name: "stride", scope: !3149, file: !84, line: 832, type: !50)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !84, line: 832, column: 13)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !84, line: 831, column: 13)
!3151 = !DILocalVariable(name: "src", scope: !3149, file: !84, line: 832, type: !284)
!3152 = !DILocalVariable(name: "cost", scope: !3149, file: !84, line: 832, type: !50)
!3153 = !DILocalVariable(name: "i", scope: !3154, file: !84, line: 836, type: !50)
!3154 = distinct !DILexicalBlock(scope: !3118, file: !84, line: 836, column: 5)
!3155 = !DILocalVariable(name: "omx", scope: !3156, file: !84, line: 838, type: !50)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !84, line: 837, column: 5)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !84, line: 836, column: 5)
!3158 = !DILocalVariable(name: "omy", scope: !3156, file: !84, line: 838, type: !50)
!3159 = !DILocalVariable(name: "costs", scope: !3156, file: !84, line: 839, type: !1091)
!3160 = !DILocalVariable(name: "stride", scope: !3156, file: !84, line: 840, type: !50)
!3161 = !DILocalVariable(name: "src0", scope: !3156, file: !84, line: 841, type: !284)
!3162 = !DILocalVariable(name: "src1", scope: !3156, file: !84, line: 841, type: !284)
!3163 = !DILocalVariable(name: "src2", scope: !3156, file: !84, line: 841, type: !284)
!3164 = !DILocalVariable(name: "src3", scope: !3156, file: !84, line: 841, type: !284)
!3165 = !DILocalVariable(name: "stride", scope: !3166, file: !84, line: 858, type: !50)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !84, line: 858, column: 9)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !84, line: 858, column: 9)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !84, line: 856, column: 5)
!3169 = distinct !DILexicalBlock(scope: !3118, file: !84, line: 855, column: 9)
!3170 = !DILocalVariable(name: "src", scope: !3166, file: !84, line: 858, type: !284)
!3171 = !DILocalVariable(name: "cost", scope: !3166, file: !84, line: 858, type: !50)
!3172 = !DILocalVariable(name: "i", scope: !3173, file: !84, line: 880, type: !50)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !84, line: 880, column: 9)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !84, line: 878, column: 5)
!3175 = distinct !DILexicalBlock(scope: !3118, file: !84, line: 877, column: 9)
!3176 = !DILocalVariable(name: "omx", scope: !3177, file: !84, line: 885, type: !50)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !84, line: 881, column: 9)
!3178 = distinct !DILexicalBlock(scope: !3173, file: !84, line: 880, column: 9)
!3179 = !DILocalVariable(name: "omy", scope: !3177, file: !84, line: 885, type: !50)
!3180 = !DILocalVariable(name: "stride", scope: !3181, file: !84, line: 886, type: !50)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !84, line: 886, column: 13)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 886, column: 13)
!3183 = !DILocalVariable(name: "src", scope: !3181, file: !84, line: 886, type: !284)
!3184 = !DILocalVariable(name: "cost", scope: !3181, file: !84, line: 886, type: !50)
!3185 = !DILocalVariable(name: "stride", scope: !3186, file: !84, line: 887, type: !50)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !84, line: 887, column: 13)
!3187 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 887, column: 13)
!3188 = !DILocalVariable(name: "src", scope: !3186, file: !84, line: 887, type: !284)
!3189 = !DILocalVariable(name: "cost", scope: !3186, file: !84, line: 887, type: !50)
!3190 = !DILocalVariable(name: "stride", scope: !3191, file: !84, line: 888, type: !50)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !84, line: 888, column: 13)
!3192 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 888, column: 13)
!3193 = !DILocalVariable(name: "src", scope: !3191, file: !84, line: 888, type: !284)
!3194 = !DILocalVariable(name: "cost", scope: !3191, file: !84, line: 888, type: !50)
!3195 = !DILocalVariable(name: "stride", scope: !3196, file: !84, line: 889, type: !50)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !84, line: 889, column: 13)
!3197 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 889, column: 13)
!3198 = !DILocalVariable(name: "src", scope: !3196, file: !84, line: 889, type: !284)
!3199 = !DILocalVariable(name: "cost", scope: !3196, file: !84, line: 889, type: !50)
!3200 = !DILocalVariable(name: "costs", scope: !3201, file: !84, line: 897, type: !1091)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !84, line: 896, column: 5)
!3202 = distinct !DILexicalBlock(scope: !3175, file: !84, line: 895, column: 14)
!3203 = !DILocalVariable(name: "omx", scope: !3201, file: !84, line: 898, type: !50)
!3204 = !DILocalVariable(name: "omy", scope: !3201, file: !84, line: 898, type: !50)
!3205 = !DILocation(line: 0, scope: !3118)
!3206 = !DILocation(line: 811, column: 39, scope: !3118)
!3207 = !DILocation(line: 811, column: 20, scope: !3118)
!3208 = !DILocation(line: 811, column: 48, scope: !3118)
!3209 = !DILocation(line: 812, column: 48, scope: !3118)
!3210 = !DILocation(line: 813, column: 37, scope: !3118)
!3211 = !DILocation(line: 813, column: 52, scope: !3118)
!3212 = !DILocation(line: 813, column: 49, scope: !3118)
!3213 = !DILocation(line: 813, column: 47, scope: !3118)
!3214 = !DILocation(line: 814, column: 49, scope: !3118)
!3215 = !DILocation(line: 814, column: 47, scope: !3118)
!3216 = !DILocation(line: 816, column: 35, scope: !3118)
!3217 = !{!1862, !1847, i64 16412}
!3218 = !DILocation(line: 816, column: 29, scope: !3118)
!3219 = !DILocation(line: 816, column: 47, scope: !3118)
!3220 = !DILocation(line: 817, column: 34, scope: !3118)
!3221 = !{!1862, !1847, i64 16436}
!3222 = !DILocation(line: 817, column: 52, scope: !3118)
!3223 = !{!1846, !1847, i64 20}
!3224 = !DILocation(line: 817, column: 47, scope: !3118)
!3225 = !DILocation(line: 817, column: 28, scope: !3118)
!3226 = !DILocation(line: 817, column: 67, scope: !3118)
!3227 = !{!1862, !1847, i64 16388}
!3228 = !DILocation(line: 817, column: 78, scope: !3118)
!3229 = !DILocation(line: 817, column: 81, scope: !3118)
!3230 = !DILocation(line: 819, column: 5, scope: !3118)
!3231 = !DILocation(line: 821, column: 18, scope: !3118)
!3232 = !DILocation(line: 821, column: 15, scope: !3118)
!3233 = !DILocation(line: 822, column: 15, scope: !3118)
!3234 = !DILocation(line: 823, column: 20, scope: !3118)
!3235 = !DILocation(line: 827, column: 9, scope: !3146)
!3236 = !DILocation(line: 827, column: 20, scope: !3146)
!3237 = !DILocation(line: 827, column: 29, scope: !3146)
!3238 = !DILocation(line: 827, column: 45, scope: !3146)
!3239 = !DILocation(line: 827, column: 9, scope: !3118)
!3240 = !DILocation(line: 829, column: 30, scope: !3145)
!3241 = !DILocation(line: 829, column: 47, scope: !3145)
!3242 = !DILocation(line: 829, column: 41, scope: !3145)
!3243 = !DILocation(line: 829, column: 61, scope: !3145)
!3244 = !DILocation(line: 829, column: 71, scope: !3145)
!3245 = !DILocation(line: 829, column: 65, scope: !3145)
!3246 = !DILocation(line: 829, column: 85, scope: !3145)
!3247 = !DILocation(line: 0, scope: !1918, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 829, column: 18, scope: !3145)
!3249 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !3248)
!3250 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !3248)
!3251 = !DILocation(line: 0, scope: !3145)
!3252 = !DILocation(line: 830, column: 30, scope: !3145)
!3253 = !DILocation(line: 830, column: 41, scope: !3145)
!3254 = !DILocation(line: 830, column: 61, scope: !3145)
!3255 = !DILocation(line: 830, column: 65, scope: !3145)
!3256 = !DILocation(line: 830, column: 85, scope: !3145)
!3257 = !DILocation(line: 0, scope: !1918, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 830, column: 18, scope: !3145)
!3259 = !DILocation(line: 202, column: 17, scope: !1918, inlinedAt: !3258)
!3260 = !DILocation(line: 202, column: 14, scope: !1918, inlinedAt: !3258)
!3261 = !DILocation(line: 831, column: 16, scope: !3150)
!3262 = !DILocation(line: 831, column: 25, scope: !3150)
!3263 = !DILocation(line: 831, column: 21, scope: !3150)
!3264 = !DILocation(line: 831, column: 13, scope: !3145)
!3265 = !DILocation(line: 832, column: 13, scope: !3149)
!3266 = !DILocation(line: 0, scope: !3149)
!3267 = !DILocation(line: 832, column: 13, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3149, file: !84, line: 832, column: 13)
!3269 = !DILocation(line: 832, column: 13, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !84, line: 832, column: 13)
!3271 = !DILocation(line: 832, column: 13, scope: !3150)
!3272 = !DILocation(line: 0, scope: !3154)
!3273 = !DILocation(line: 836, column: 32, scope: !3157)
!3274 = !DILocation(line: 836, column: 5, scope: !3154)
!3275 = !DILocation(line: 0, scope: !3156)
!3276 = !DILocation(line: 839, column: 9, scope: !3156)
!3277 = !DILocation(line: 839, column: 13, scope: !3156)
!3278 = !DILocation(line: 840, column: 9, scope: !3156)
!3279 = !DILocation(line: 840, column: 13, scope: !3156)
!3280 = !DILocation(line: 842, column: 22, scope: !3156)
!3281 = !DILocation(line: 842, column: 59, scope: !3156)
!3282 = !DILocation(line: 842, column: 83, scope: !3156)
!3283 = !DILocation(line: 842, column: 101, scope: !3156)
!3284 = !DILocation(line: 842, column: 16, scope: !3156)
!3285 = !DILocation(line: 843, column: 22, scope: !3156)
!3286 = !DILocation(line: 843, column: 59, scope: !3156)
!3287 = !DILocation(line: 843, column: 78, scope: !3156)
!3288 = !DILocation(line: 843, column: 101, scope: !3156)
!3289 = !DILocation(line: 843, column: 16, scope: !3156)
!3290 = !DILocation(line: 844, column: 23, scope: !3156)
!3291 = !DILocation(line: 844, column: 21, scope: !3156)
!3292 = !DILocation(line: 845, column: 21, scope: !3156)
!3293 = !DILocation(line: 846, column: 9, scope: !3156)
!3294 = !DILocation(line: 846, column: 38, scope: !3156)
!3295 = !DILocation(line: 847, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3156, file: !84, line: 847, column: 9)
!3297 = !DILocation(line: 847, column: 9, scope: !3156)
!3298 = !DILocation(line: 848, column: 9, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3156, file: !84, line: 848, column: 9)
!3300 = !DILocation(line: 848, column: 9, scope: !3156)
!3301 = !DILocation(line: 849, column: 9, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3156, file: !84, line: 849, column: 9)
!3303 = !DILocation(line: 849, column: 9, scope: !3156)
!3304 = !DILocation(line: 849, column: 9, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !84, line: 849, column: 9)
!3306 = !DILocation(line: 850, column: 9, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3156, file: !84, line: 850, column: 9)
!3308 = !DILocation(line: 850, column: 9, scope: !3156)
!3309 = !DILocation(line: 853, column: 5, scope: !3157)
!3310 = !DILocation(line: 851, column: 18, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3156, file: !84, line: 851, column: 13)
!3312 = !DILocation(line: 851, column: 33, scope: !3311)
!3313 = !DILocation(line: 836, column: 38, scope: !3157)
!3314 = distinct !{!3314, !3274, !3315, !1999, !2000}
!3315 = !DILocation(line: 853, column: 5, scope: !3154)
!3316 = !DILocation(line: 855, column: 10, scope: !3169)
!3317 = !DILocation(line: 855, column: 24, scope: !3169)
!3318 = !DILocation(line: 855, column: 36, scope: !3169)
!3319 = !DILocation(line: 855, column: 28, scope: !3169)
!3320 = !DILocation(line: 855, column: 66, scope: !3169)
!3321 = !DILocation(line: 855, column: 58, scope: !3169)
!3322 = !DILocation(line: 855, column: 55, scope: !3169)
!3323 = !DILocation(line: 855, column: 77, scope: !3169)
!3324 = !DILocation(line: 858, column: 9, scope: !3166)
!3325 = !DILocation(line: 0, scope: !3166)
!3326 = !DILocation(line: 858, column: 9, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3166, file: !84, line: 858, column: 9)
!3328 = !DILocation(line: 858, column: 9, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3327, file: !84, line: 858, column: 9)
!3330 = !{!1862, !1850, i64 32632}
!3331 = !DILocation(line: 858, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !84, line: 858, column: 9)
!3333 = !{!3334, !1850, i64 48}
!3334 = !{!"x264_weight_t", !1848, i64 0, !1848, i64 16, !1847, i64 32, !1847, i64 36, !1847, i64 40, !1850, i64 48}
!3335 = !DILocation(line: 858, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3329, file: !84, line: 858, column: 9)
!3337 = !DILocation(line: 858, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3336, file: !84, line: 858, column: 9)
!3339 = !DILocation(line: 858, column: 9, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !84, line: 858, column: 9)
!3341 = !DILocation(line: 858, column: 9, scope: !3167)
!3342 = !DILocation(line: 862, column: 9, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3118, file: !84, line: 862, column: 9)
!3344 = !DILocation(line: 862, column: 9, scope: !3118)
!3345 = !DILocation(line: 864, column: 19, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !84, line: 864, column: 13)
!3347 = distinct !DILexicalBlock(scope: !3343, file: !84, line: 863, column: 5)
!3348 = !DILocation(line: 864, column: 22, scope: !3346)
!3349 = !DILocation(line: 864, column: 28, scope: !3346)
!3350 = !DILocation(line: 864, column: 26, scope: !3346)
!3351 = !DILocation(line: 864, column: 13, scope: !3347)
!3352 = !DILocation(line: 866, column: 21, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3346, file: !84, line: 865, column: 9)
!3354 = !DILocation(line: 867, column: 24, scope: !3353)
!3355 = !DILocation(line: 867, column: 22, scope: !3353)
!3356 = !DILocation(line: 868, column: 24, scope: !3353)
!3357 = !DILocation(line: 868, column: 22, scope: !3353)
!3358 = !DILocation(line: 870, column: 13, scope: !3353)
!3359 = !DILocation(line: 872, column: 24, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3346, file: !84, line: 872, column: 18)
!3361 = !DILocation(line: 872, column: 18, scope: !3346)
!3362 = !DILocation(line: 873, column: 31, scope: !3360)
!3363 = !DILocation(line: 873, column: 13, scope: !3360)
!3364 = !DILocation(line: 877, column: 15, scope: !3175)
!3365 = !DILocation(line: 877, column: 31, scope: !3175)
!3366 = !DILocation(line: 0, scope: !3175)
!3367 = !DILocation(line: 877, column: 9, scope: !3118)
!3368 = !DILocation(line: 882, column: 61, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 882, column: 17)
!3370 = !DILocation(line: 882, column: 55, scope: !3369)
!3371 = !DILocation(line: 0, scope: !3173)
!3372 = !DILocation(line: 880, column: 36, scope: !3178)
!3373 = !DILocation(line: 880, column: 9, scope: !3173)
!3374 = !DILocation(line: 880, column: 42, scope: !3178)
!3375 = distinct !{!3375, !3373, !3376, !1999, !2000}
!3376 = !DILocation(line: 892, column: 9, scope: !3173)
!3377 = !DILocation(line: 882, column: 24, scope: !3369)
!3378 = !DILocation(line: 882, column: 21, scope: !3369)
!3379 = !DILocation(line: 882, column: 45, scope: !3369)
!3380 = !DILocation(line: 882, column: 52, scope: !3369)
!3381 = !DILocation(line: 882, column: 76, scope: !3369)
!3382 = !DILocation(line: 882, column: 86, scope: !3369)
!3383 = !DILocation(line: 882, column: 83, scope: !3369)
!3384 = !DILocation(line: 882, column: 107, scope: !3369)
!3385 = !DILocation(line: 882, column: 117, scope: !3369)
!3386 = !DILocation(line: 882, column: 114, scope: !3369)
!3387 = !DILocation(line: 882, column: 17, scope: !3177)
!3388 = !DILocation(line: 0, scope: !3177)
!3389 = !DILocation(line: 886, column: 13, scope: !3182)
!3390 = !DILocation(line: 887, column: 13, scope: !3186)
!3391 = !DILocation(line: 886, column: 13, scope: !3181)
!3392 = !DILocation(line: 0, scope: !3181)
!3393 = !DILocation(line: 886, column: 13, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3181, file: !84, line: 886, column: 13)
!3395 = !DILocation(line: 886, column: 13, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3394, file: !84, line: 886, column: 13)
!3397 = !DILocation(line: 886, column: 13, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3396, file: !84, line: 886, column: 13)
!3399 = !DILocation(line: 886, column: 13, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !84, line: 886, column: 13)
!3401 = !DILocation(line: 886, column: 13, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3400, file: !84, line: 886, column: 13)
!3403 = !DILocation(line: 886, column: 13, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3402, file: !84, line: 886, column: 13)
!3405 = !DILocation(line: 886, column: 13, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3181, file: !84, line: 886, column: 13)
!3407 = !DILocation(line: 886, column: 13, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3406, file: !84, line: 886, column: 13)
!3409 = !DILocation(line: 0, scope: !3174)
!3410 = !DILocation(line: 887, column: 13, scope: !3187)
!3411 = !DILocation(line: 0, scope: !3186)
!3412 = !DILocation(line: 887, column: 13, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3186, file: !84, line: 887, column: 13)
!3414 = !DILocation(line: 887, column: 13, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3413, file: !84, line: 887, column: 13)
!3416 = !DILocation(line: 887, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3415, file: !84, line: 887, column: 13)
!3418 = !DILocation(line: 887, column: 13, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3415, file: !84, line: 887, column: 13)
!3420 = !DILocation(line: 887, column: 13, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3419, file: !84, line: 887, column: 13)
!3422 = !DILocation(line: 887, column: 13, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3421, file: !84, line: 887, column: 13)
!3424 = !DILocation(line: 887, column: 13, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3186, file: !84, line: 887, column: 13)
!3426 = !DILocation(line: 887, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3425, file: !84, line: 887, column: 13)
!3428 = !DILocation(line: 888, column: 13, scope: !3192)
!3429 = !DILocation(line: 889, column: 13, scope: !3196)
!3430 = !DILocation(line: 888, column: 13, scope: !3191)
!3431 = !DILocation(line: 0, scope: !3191)
!3432 = !DILocation(line: 888, column: 13, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3191, file: !84, line: 888, column: 13)
!3434 = !DILocation(line: 888, column: 13, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3433, file: !84, line: 888, column: 13)
!3436 = !DILocation(line: 888, column: 13, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3435, file: !84, line: 888, column: 13)
!3438 = !DILocation(line: 888, column: 13, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3435, file: !84, line: 888, column: 13)
!3440 = !DILocation(line: 888, column: 13, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3439, file: !84, line: 888, column: 13)
!3442 = !DILocation(line: 888, column: 13, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3441, file: !84, line: 888, column: 13)
!3444 = !DILocation(line: 888, column: 13, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3191, file: !84, line: 888, column: 13)
!3446 = !DILocation(line: 888, column: 13, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3445, file: !84, line: 888, column: 13)
!3448 = !DILocation(line: 889, column: 13, scope: !3197)
!3449 = !DILocation(line: 0, scope: !3196)
!3450 = !DILocation(line: 889, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3196, file: !84, line: 889, column: 13)
!3452 = !DILocation(line: 889, column: 13, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3451, file: !84, line: 889, column: 13)
!3454 = !DILocation(line: 889, column: 13, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !84, line: 889, column: 13)
!3456 = !DILocation(line: 889, column: 13, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3453, file: !84, line: 889, column: 13)
!3458 = !DILocation(line: 889, column: 13, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3457, file: !84, line: 889, column: 13)
!3460 = !DILocation(line: 889, column: 13, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3459, file: !84, line: 889, column: 13)
!3462 = !DILocation(line: 889, column: 13, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3196, file: !84, line: 889, column: 13)
!3464 = !DILocation(line: 889, column: 13, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3463, file: !84, line: 889, column: 13)
!3466 = !DILocation(line: 890, column: 22, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3177, file: !84, line: 890, column: 17)
!3468 = !DILocation(line: 890, column: 37, scope: !3467)
!3469 = !DILocation(line: 895, column: 20, scope: !3202)
!3470 = !DILocation(line: 895, column: 18, scope: !3202)
!3471 = !DILocation(line: 895, column: 41, scope: !3202)
!3472 = !DILocation(line: 895, column: 56, scope: !3202)
!3473 = !DILocation(line: 895, column: 50, scope: !3202)
!3474 = !DILocation(line: 895, column: 48, scope: !3202)
!3475 = !DILocation(line: 895, column: 71, scope: !3202)
!3476 = !DILocation(line: 895, column: 80, scope: !3202)
!3477 = !DILocation(line: 895, column: 78, scope: !3202)
!3478 = !DILocation(line: 895, column: 101, scope: !3202)
!3479 = !DILocation(line: 895, column: 110, scope: !3202)
!3480 = !DILocation(line: 895, column: 108, scope: !3202)
!3481 = !DILocation(line: 895, column: 14, scope: !3175)
!3482 = !DILocation(line: 897, column: 9, scope: !3201)
!3483 = !DILocation(line: 897, column: 13, scope: !3201)
!3484 = !DILocation(line: 0, scope: !3201)
!3485 = !DILocation(line: 900, column: 12, scope: !3201)
!3486 = !DILocation(line: 900, column: 15, scope: !3201)
!3487 = !{!1862, !1850, i64 32616}
!3488 = !DILocation(line: 900, column: 39, scope: !3201)
!3489 = !DILocation(line: 900, column: 50, scope: !3201)
!3490 = !DILocation(line: 900, column: 47, scope: !3201)
!3491 = !DILocation(line: 900, column: 71, scope: !3201)
!3492 = !DILocation(line: 900, column: 87, scope: !3201)
!3493 = !DILocation(line: 900, column: 9, scope: !3201)
!3494 = !DILocation(line: 901, column: 15, scope: !3201)
!3495 = !DILocation(line: 901, column: 27, scope: !3201)
!3496 = !DILocation(line: 901, column: 47, scope: !3201)
!3497 = !DILocation(line: 901, column: 71, scope: !3201)
!3498 = !DILocation(line: 901, column: 87, scope: !3201)
!3499 = !DILocation(line: 901, column: 9, scope: !3201)
!3500 = !DILocation(line: 902, column: 15, scope: !3201)
!3501 = !DILocation(line: 902, column: 27, scope: !3201)
!3502 = !DILocation(line: 902, column: 47, scope: !3201)
!3503 = !DILocation(line: 902, column: 66, scope: !3201)
!3504 = !DILocation(line: 902, column: 87, scope: !3201)
!3505 = !DILocation(line: 902, column: 9, scope: !3201)
!3506 = !DILocation(line: 903, column: 15, scope: !3201)
!3507 = !DILocation(line: 903, column: 27, scope: !3201)
!3508 = !DILocation(line: 903, column: 47, scope: !3201)
!3509 = !DILocation(line: 903, column: 66, scope: !3201)
!3510 = !DILocation(line: 903, column: 87, scope: !3201)
!3511 = !DILocation(line: 903, column: 9, scope: !3201)
!3512 = !DILocation(line: 904, column: 9, scope: !3201)
!3513 = !DILocation(line: 904, column: 41, scope: !3201)
!3514 = !DILocation(line: 904, column: 38, scope: !3201)
!3515 = !DILocation(line: 905, column: 9, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3201, file: !84, line: 905, column: 9)
!3517 = !DILocation(line: 905, column: 9, scope: !3201)
!3518 = !DILocation(line: 906, column: 9, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3201, file: !84, line: 906, column: 9)
!3520 = !DILocation(line: 906, column: 9, scope: !3201)
!3521 = !DILocation(line: 907, column: 9, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3201, file: !84, line: 907, column: 9)
!3523 = !DILocation(line: 907, column: 9, scope: !3201)
!3524 = !DILocation(line: 907, column: 9, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3522, file: !84, line: 907, column: 9)
!3526 = !DILocation(line: 908, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3201, file: !84, line: 908, column: 9)
!3528 = !DILocation(line: 908, column: 9, scope: !3201)
!3529 = !DILocation(line: 908, column: 9, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3527, file: !84, line: 908, column: 9)
!3531 = !DILocation(line: 909, column: 5, scope: !3202)
!3532 = !DILocation(line: 909, column: 5, scope: !3201)
!3533 = !DILocation(line: 911, column: 13, scope: !3118)
!3534 = !DILocation(line: 912, column: 16, scope: !3118)
!3535 = !DILocation(line: 912, column: 14, scope: !3118)
!3536 = !DILocation(line: 913, column: 16, scope: !3118)
!3537 = !DILocation(line: 913, column: 14, scope: !3118)
!3538 = !DILocation(line: 914, column: 18, scope: !3118)
!3539 = !DILocation(line: 914, column: 36, scope: !3118)
!3540 = !DILocation(line: 914, column: 34, scope: !3118)
!3541 = !DILocation(line: 914, column: 8, scope: !3118)
!3542 = !DILocation(line: 914, column: 16, scope: !3118)
!3543 = !DILocation(line: 915, column: 1, scope: !3118)
!3544 = distinct !DISubprogram(name: "x264_me_refine_qpel", scope: !84, file: !84, line: 758, type: !3545, scopeLine: 759, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3547)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !87, !1374}
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "h", arg: 1, scope: !3544, file: !84, line: 758, type: !87)
!3549 = !DILocalVariable(name: "m", arg: 2, scope: !3544, file: !84, line: 758, type: !1374)
!3550 = !DILocalVariable(name: "hpel", scope: !3544, file: !84, line: 760, type: !50)
!3551 = !DILocalVariable(name: "qpel", scope: !3544, file: !84, line: 761, type: !50)
!3552 = !DILocation(line: 0, scope: !3544)
!3553 = !DILocation(line: 760, column: 40, scope: !3544)
!3554 = !DILocation(line: 760, column: 16, scope: !3544)
!3555 = !DILocation(line: 761, column: 16, scope: !3544)
!3556 = !DILocation(line: 763, column: 12, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3544, file: !84, line: 763, column: 9)
!3558 = !DILocation(line: 763, column: 20, scope: !3557)
!3559 = !DILocation(line: 763, column: 9, scope: !3544)
!3560 = !DILocation(line: 764, column: 23, scope: !3557)
!3561 = !{!1846, !1847, i64 16}
!3562 = !DILocation(line: 764, column: 12, scope: !3557)
!3563 = !DILocation(line: 764, column: 17, scope: !3557)
!3564 = !DILocation(line: 764, column: 9, scope: !3557)
!3565 = !DILocation(line: 766, column: 5, scope: !3544)
!3566 = !DILocation(line: 767, column: 1, scope: !3544)
!3567 = distinct !DISubprogram(name: "x264_me_refine_qpel_refdupe", scope: !84, file: !84, line: 769, type: !3568, scopeLine: 770, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !87, !1374, !640}
!3570 = !{!3571, !3572, !3573}
!3571 = !DILocalVariable(name: "h", arg: 1, scope: !3567, file: !84, line: 769, type: !87)
!3572 = !DILocalVariable(name: "m", arg: 2, scope: !3567, file: !84, line: 769, type: !1374)
!3573 = !DILocalVariable(name: "p_halfpel_thresh", arg: 3, scope: !3567, file: !84, line: 769, type: !640)
!3574 = !DILocation(line: 0, scope: !3567)
!3575 = !DILocation(line: 771, column: 29, scope: !3567)
!3576 = !DILocation(line: 771, column: 5, scope: !3567)
!3577 = !DILocation(line: 772, column: 1, scope: !3567)
!3578 = distinct !DISubprogram(name: "x264_me_refine_bidir_satd", scope: !84, file: !84, line: 1081, type: !3579, scopeLine: 1082, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !87, !1374, !1374, !50}
!3581 = !{!3582, !3583, !3584, !3585}
!3582 = !DILocalVariable(name: "h", arg: 1, scope: !3578, file: !84, line: 1081, type: !87)
!3583 = !DILocalVariable(name: "m0", arg: 2, scope: !3578, file: !84, line: 1081, type: !1374)
!3584 = !DILocalVariable(name: "m1", arg: 3, scope: !3578, file: !84, line: 1081, type: !1374)
!3585 = !DILocalVariable(name: "i_weight", arg: 4, scope: !3578, file: !84, line: 1081, type: !50)
!3586 = !DILocation(line: 0, scope: !3578)
!3587 = !DILocation(line: 1083, column: 5, scope: !3578)
!3588 = !DILocation(line: 1084, column: 1, scope: !3578)
!3589 = !DILocation(line: 0, scope: !1721)
!3590 = !DILocation(line: 940, column: 38, scope: !1721)
!3591 = !DILocation(line: 940, column: 57, scope: !1721)
!3592 = !DILocation(line: 940, column: 44, scope: !1721)
!3593 = !DILocation(line: 940, column: 26, scope: !1721)
!3594 = !DILocation(line: 941, column: 26, scope: !1721)
!3595 = !DILocation(line: 942, column: 29, scope: !1721)
!3596 = !DILocation(line: 943, column: 20, scope: !1721)
!3597 = !DILocation(line: 943, column: 45, scope: !1721)
!3598 = !DILocation(line: 944, column: 45, scope: !1721)
!3599 = !DILocation(line: 945, column: 5, scope: !1721)
!3600 = !DILocation(line: 946, column: 5, scope: !1721)
!3601 = !DILocation(line: 947, column: 5, scope: !1721)
!3602 = !DILocation(line: 948, column: 5, scope: !1721)
!3603 = !DILocation(line: 948, column: 14, scope: !1721)
!3604 = !DILocation(line: 949, column: 32, scope: !1721)
!3605 = !DILocation(line: 949, column: 22, scope: !1721)
!3606 = !DILocation(line: 949, column: 45, scope: !1721)
!3607 = !DILocation(line: 949, column: 51, scope: !1721)
!3608 = !DILocation(line: 949, column: 67, scope: !1721)
!3609 = !DILocation(line: 949, column: 70, scope: !1721)
!3610 = !DILocation(line: 949, column: 63, scope: !1721)
!3611 = !DILocation(line: 950, column: 22, scope: !1721)
!3612 = !DILocation(line: 950, column: 51, scope: !1721)
!3613 = !DILocation(line: 950, column: 70, scope: !1721)
!3614 = !DILocation(line: 950, column: 63, scope: !1721)
!3615 = !DILocation(line: 951, column: 22, scope: !1721)
!3616 = !DILocation(line: 952, column: 34, scope: !1721)
!3617 = !DILocation(line: 952, column: 22, scope: !1721)
!3618 = !DILocation(line: 953, column: 22, scope: !1721)
!3619 = !DILocation(line: 954, column: 35, scope: !1721)
!3620 = !DILocation(line: 954, column: 48, scope: !1721)
!3621 = !DILocation(line: 954, column: 29, scope: !1721)
!3622 = !DILocation(line: 954, column: 64, scope: !1721)
!3623 = !DILocation(line: 954, column: 75, scope: !1721)
!3624 = !DILocation(line: 954, column: 78, scope: !1721)
!3625 = !DILocation(line: 955, column: 48, scope: !1721)
!3626 = !DILocation(line: 955, column: 29, scope: !1721)
!3627 = !DILocation(line: 955, column: 64, scope: !1721)
!3628 = !DILocation(line: 955, column: 75, scope: !1721)
!3629 = !DILocation(line: 955, column: 78, scope: !1721)
!3630 = !DILocation(line: 956, column: 5, scope: !1721)
!3631 = !DILocation(line: 956, column: 9, scope: !1721)
!3632 = !DILocation(line: 957, column: 20, scope: !1721)
!3633 = !DILocation(line: 957, column: 16, scope: !1721)
!3634 = !DILocation(line: 958, column: 16, scope: !1721)
!3635 = !DILocation(line: 959, column: 20, scope: !1721)
!3636 = !DILocation(line: 959, column: 16, scope: !1721)
!3637 = !DILocation(line: 960, column: 16, scope: !1721)
!3638 = !DILocation(line: 966, column: 5, scope: !1721)
!3639 = !DILocation(line: 986, column: 22, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !1721, file: !84, line: 986, column: 9)
!3641 = !DILocation(line: 986, column: 16, scope: !3640)
!3642 = !DILocation(line: 986, column: 37, scope: !3640)
!3643 = !DILocation(line: 986, column: 14, scope: !3640)
!3644 = !DILocation(line: 986, column: 41, scope: !3640)
!3645 = !DILocation(line: 987, column: 22, scope: !3640)
!3646 = !DILocation(line: 987, column: 16, scope: !3640)
!3647 = !DILocation(line: 987, column: 37, scope: !3640)
!3648 = !DILocation(line: 987, column: 14, scope: !3640)
!3649 = !DILocation(line: 987, column: 41, scope: !3640)
!3650 = !DILocation(line: 988, column: 16, scope: !3640)
!3651 = !DILocation(line: 988, column: 37, scope: !3640)
!3652 = !DILocation(line: 988, column: 14, scope: !3640)
!3653 = !DILocation(line: 988, column: 41, scope: !3640)
!3654 = !DILocation(line: 989, column: 16, scope: !3640)
!3655 = !DILocation(line: 989, column: 37, scope: !3640)
!3656 = !DILocation(line: 989, column: 14, scope: !3640)
!3657 = !DILocation(line: 989, column: 41, scope: !3640)
!3658 = !DILocation(line: 992, column: 9, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !1721, file: !84, line: 992, column: 9)
!3660 = !DILocation(line: 992, column: 12, scope: !3659)
!3661 = !DILocation(line: 992, column: 27, scope: !3659)
!3662 = !DILocation(line: 992, column: 42, scope: !3659)
!3663 = !DILocation(line: 994, column: 44, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3659, file: !84, line: 993, column: 5)
!3665 = !DILocation(line: 994, column: 53, scope: !3664)
!3666 = !DILocation(line: 994, column: 9, scope: !3664)
!3667 = !DILocation(line: 995, column: 53, scope: !3664)
!3668 = !DILocation(line: 995, column: 9, scope: !3664)
!3669 = !DILocation(line: 996, column: 5, scope: !3664)
!3670 = !DILocation(line: 998, column: 38, scope: !1721)
!3671 = !DILocation(line: 998, column: 54, scope: !1721)
!3672 = !DILocation(line: 998, column: 50, scope: !1721)
!3673 = !DILocation(line: 998, column: 48, scope: !1721)
!3674 = !DILocation(line: 999, column: 50, scope: !1721)
!3675 = !DILocation(line: 999, column: 48, scope: !1721)
!3676 = !DILocation(line: 1000, column: 38, scope: !1721)
!3677 = !DILocation(line: 1000, column: 54, scope: !1721)
!3678 = !DILocation(line: 1000, column: 50, scope: !1721)
!3679 = !DILocation(line: 1000, column: 48, scope: !1721)
!3680 = !DILocation(line: 1001, column: 50, scope: !1721)
!3681 = !DILocation(line: 1001, column: 48, scope: !1721)
!3682 = !DILocation(line: 1003, column: 11, scope: !1721)
!3683 = !{!1862, !1850, i64 32824}
!3684 = !DILocation(line: 1003, column: 5, scope: !1721)
!3685 = !DILocation(line: 0, scope: !1773)
!3686 = !DILocation(line: 1005, column: 5, scope: !1773)
!3687 = !DILocation(line: 0, scope: !1775)
!3688 = !DILocation(line: 1012, column: 13, scope: !1779)
!3689 = !DILocation(line: 1012, column: 13, scope: !1775)
!3690 = !DILocation(line: 0, scope: !1778)
!3691 = !DILocation(line: 1013, column: 13, scope: !1778)
!3692 = !DILocation(line: 0, scope: !1781)
!3693 = !DILocation(line: 1014, column: 17, scope: !1781)
!3694 = !DILocation(line: 1014, column: 17, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !84, line: 1014, column: 17)
!3696 = distinct !DILexicalBlock(scope: !1781, file: !84, line: 1014, column: 17)
!3697 = !DILocation(line: 1013, column: 52, scope: !1782)
!3698 = !DILocation(line: 1013, column: 46, scope: !1782)
!3699 = distinct !{!3699, !3691, !3700, !1999, !2000}
!3700 = !DILocation(line: 1014, column: 17, scope: !1778)
!3701 = !DILocation(line: 1016, column: 13, scope: !1788)
!3702 = !DILocation(line: 1016, column: 13, scope: !1775)
!3703 = !DILocation(line: 0, scope: !1787)
!3704 = !DILocation(line: 1017, column: 13, scope: !1787)
!3705 = !DILocation(line: 0, scope: !1790)
!3706 = !DILocation(line: 1018, column: 17, scope: !1790)
!3707 = !DILocation(line: 1018, column: 17, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3709, file: !84, line: 1018, column: 17)
!3709 = distinct !DILexicalBlock(scope: !1790, file: !84, line: 1018, column: 17)
!3710 = !DILocation(line: 1017, column: 52, scope: !1791)
!3711 = !DILocation(line: 1017, column: 46, scope: !1791)
!3712 = distinct !{!3712, !3704, !3713, !1999, !2000}
!3713 = !DILocation(line: 1018, column: 17, scope: !1787)
!3714 = !DILocation(line: 1020, column: 23, scope: !1796)
!3715 = !DILocation(line: 0, scope: !1796)
!3716 = !DILocation(line: 1020, column: 9, scope: !1796)
!3717 = !DILocation(line: 1052, column: 14, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !1775, file: !84, line: 1052, column: 13)
!3719 = !DILocation(line: 1052, column: 13, scope: !1775)
!3720 = !DILocation(line: 1022, column: 23, scope: !1798)
!3721 = !DILocation(line: 1022, column: 35, scope: !1798)
!3722 = !DILocation(line: 0, scope: !1798)
!3723 = !DILocation(line: 1023, column: 23, scope: !1798)
!3724 = !DILocation(line: 1023, column: 35, scope: !1798)
!3725 = !DILocation(line: 1024, column: 23, scope: !1798)
!3726 = !DILocation(line: 1024, column: 35, scope: !1798)
!3727 = !DILocation(line: 1025, column: 23, scope: !1798)
!3728 = !DILocation(line: 1025, column: 35, scope: !1798)
!3729 = !DILocation(line: 1026, column: 23, scope: !1805)
!3730 = !DILocation(line: 1030, column: 65, scope: !1804)
!3731 = !DILocation(line: 1030, column: 57, scope: !1804)
!3732 = !DILocation(line: 1030, column: 30, scope: !1804)
!3733 = !DILocation(line: 1030, column: 39, scope: !1804)
!3734 = !DILocation(line: 1030, column: 48, scope: !1804)
!3735 = !DILocation(line: 1026, column: 42, scope: !1805)
!3736 = !DILocation(line: 1026, column: 51, scope: !1805)
!3737 = !DILocation(line: 1026, column: 60, scope: !1805)
!3738 = !DILocation(line: 1026, column: 29, scope: !1805)
!3739 = !DILocation(line: 1026, column: 76, scope: !1805)
!3740 = !DILocation(line: 1026, column: 68, scope: !1805)
!3741 = !DILocation(line: 1026, column: 64, scope: !1805)
!3742 = !DILocation(line: 1026, column: 17, scope: !1798)
!3743 = !DILocation(line: 1028, column: 32, scope: !1804)
!3744 = !DILocation(line: 1028, column: 31, scope: !1804)
!3745 = !DILocation(line: 1028, column: 28, scope: !1804)
!3746 = !DILocation(line: 1028, column: 46, scope: !1804)
!3747 = !DILocation(line: 1028, column: 44, scope: !1804)
!3748 = !DILocation(line: 0, scope: !1804)
!3749 = !DILocation(line: 1029, column: 32, scope: !1804)
!3750 = !DILocation(line: 1029, column: 31, scope: !1804)
!3751 = !DILocation(line: 1029, column: 28, scope: !1804)
!3752 = !DILocation(line: 1029, column: 46, scope: !1804)
!3753 = !DILocation(line: 1029, column: 44, scope: !1804)
!3754 = !DILocation(line: 1030, column: 17, scope: !1804)
!3755 = !DILocation(line: 1030, column: 52, scope: !1804)
!3756 = !DILocation(line: 1031, column: 17, scope: !1804)
!3757 = !DILocation(line: 1031, column: 55, scope: !1804)
!3758 = !DILocation(line: 1031, column: 67, scope: !1804)
!3759 = !DILocation(line: 1031, column: 82, scope: !1804)
!3760 = !DILocation(line: 1031, column: 94, scope: !1804)
!3761 = !DILocation(line: 1032, column: 28, scope: !1804)
!3762 = !DILocation(line: 1032, column: 52, scope: !1804)
!3763 = !DILocation(line: 1033, column: 28, scope: !1804)
!3764 = !DILocation(line: 1033, column: 26, scope: !1804)
!3765 = !DILocation(line: 1033, column: 46, scope: !1804)
!3766 = !DILocation(line: 1033, column: 44, scope: !1804)
!3767 = !DILocation(line: 1033, column: 64, scope: !1804)
!3768 = !DILocation(line: 1033, column: 62, scope: !1804)
!3769 = !DILocation(line: 1033, column: 82, scope: !1804)
!3770 = !DILocation(line: 1033, column: 80, scope: !1804)
!3771 = !DILocation(line: 1034, column: 21, scope: !1804)
!3772 = !DILocation(line: 1036, column: 38, scope: !1810)
!3773 = !DILocation(line: 1036, column: 40, scope: !1810)
!3774 = !DILocation(line: 1036, column: 30, scope: !1810)
!3775 = !DILocation(line: 1036, column: 25, scope: !1811)
!3776 = !DILocation(line: 1038, column: 33, scope: !1809)
!3777 = !DILocation(line: 0, scope: !1942, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1039, column: 44, scope: !1809)
!3779 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !3778)
!3780 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !3778)
!3781 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !3778)
!3782 = !DILocation(line: 1039, column: 42, scope: !1809)
!3783 = !DILocation(line: 0, scope: !1942, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 1040, column: 44, scope: !1809)
!3785 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !3784)
!3786 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !3784)
!3787 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !3784)
!3788 = !DILocation(line: 1040, column: 42, scope: !1809)
!3789 = !DILocation(line: 1041, column: 25, scope: !1809)
!3790 = !DILocation(line: 1041, column: 66, scope: !1809)
!3791 = !DILocation(line: 1041, column: 86, scope: !1809)
!3792 = !DILocation(line: 1042, column: 25, scope: !1809)
!3793 = !DILocation(line: 1042, column: 66, scope: !1809)
!3794 = !DILocation(line: 1042, column: 86, scope: !1809)
!3795 = !DILocation(line: 1043, column: 86, scope: !1809)
!3796 = !DILocation(line: 1043, column: 43, scope: !1809)
!3797 = !DILocation(line: 0, scope: !1809)
!3798 = !DILocation(line: 1044, column: 25, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !1809, file: !84, line: 1044, column: 25)
!3800 = !DILocation(line: 1044, column: 25, scope: !1809)
!3801 = !DILocation(line: 1048, column: 21, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !1812, file: !84, line: 1048, column: 21)
!3803 = !DILocation(line: 1048, column: 21, scope: !1812)
!3804 = !DILocation(line: 1020, column: 39, scope: !1799)
!3805 = !DILocation(line: 1020, column: 32, scope: !1799)
!3806 = distinct !{!3806, !3716, !3807, !1999, !2000}
!3807 = !DILocation(line: 1050, column: 9, scope: !1796)
!3808 = !DILocation(line: 1055, column: 17, scope: !1775)
!3809 = !DILocation(line: 1055, column: 14, scope: !1775)
!3810 = !DILocation(line: 1056, column: 17, scope: !1775)
!3811 = !DILocation(line: 1056, column: 14, scope: !1775)
!3812 = !DILocation(line: 1057, column: 17, scope: !1775)
!3813 = !DILocation(line: 1057, column: 14, scope: !1775)
!3814 = !DILocation(line: 1058, column: 17, scope: !1775)
!3815 = !DILocation(line: 1058, column: 14, scope: !1775)
!3816 = !DILocation(line: 1060, column: 20, scope: !1775)
!3817 = !DILocation(line: 1061, column: 20, scope: !1775)
!3818 = !DILocation(line: 1005, column: 38, scope: !1776)
!3819 = !DILocation(line: 1005, column: 29, scope: !1776)
!3820 = distinct !{!3820, !3686, !3821, !1999, !2000}
!3821 = !DILocation(line: 1062, column: 5, scope: !1773)
!3822 = !DILocation(line: 1064, column: 9, scope: !1721)
!3823 = !DILocation(line: 1066, column: 45, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !84, line: 1065, column: 5)
!3825 = distinct !DILexicalBlock(scope: !1721, file: !84, line: 1064, column: 9)
!3826 = !DILocation(line: 1066, column: 62, scope: !3824)
!3827 = !DILocation(line: 1066, column: 69, scope: !3824)
!3828 = !DILocation(line: 0, scope: !1942, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1066, column: 77, scope: !3824)
!3830 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !3829)
!3831 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !3829)
!3832 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !3829)
!3833 = !DILocalVariable(name: "h", arg: 1, scope: !3834, file: !3835, line: 110, type: !87)
!3834 = distinct !DISubprogram(name: "x264_macroblock_cache_mv", scope: !3835, file: !3835, line: 110, type: !3836, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3835 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/rectangle.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!3836 = !DISubroutineType(types: !3837)
!3837 = !{null, !87, !50, !50, !50, !50, !50, !26}
!3838 = !{!3833, !3839, !3840, !3841, !3842, !3843, !3844, !3845}
!3839 = !DILocalVariable(name: "x", arg: 2, scope: !3834, file: !3835, line: 110, type: !50)
!3840 = !DILocalVariable(name: "y", arg: 3, scope: !3834, file: !3835, line: 110, type: !50)
!3841 = !DILocalVariable(name: "width", arg: 4, scope: !3834, file: !3835, line: 110, type: !50)
!3842 = !DILocalVariable(name: "height", arg: 5, scope: !3834, file: !3835, line: 110, type: !50)
!3843 = !DILocalVariable(name: "i_list", arg: 6, scope: !3834, file: !3835, line: 110, type: !50)
!3844 = !DILocalVariable(name: "mv", arg: 7, scope: !3834, file: !3835, line: 110, type: !26)
!3845 = !DILocalVariable(name: "mv_cache", scope: !3834, file: !3835, line: 112, type: !155)
!3846 = !DILocation(line: 0, scope: !3834, inlinedAt: !3847)
!3847 = distinct !DILocation(line: 1066, column: 9, scope: !3824)
!3848 = !DILocation(line: 112, column: 62, scope: !3834, inlinedAt: !3847)
!3849 = !DILocation(line: 112, column: 60, scope: !3834, inlinedAt: !3847)
!3850 = !DILocation(line: 112, column: 23, scope: !3834, inlinedAt: !3847)
!3851 = !DILocation(line: 116, column: 52, scope: !3852, inlinedAt: !3847)
!3852 = distinct !DILexicalBlock(scope: !3834, file: !3835, line: 113, column: 9)
!3853 = !DILocalVariable(name: "dst", arg: 1, scope: !3854, file: !3835, line: 22, type: !155)
!3854 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !3835, file: !3835, line: 22, type: !3855, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{null, !155, !50, !50, !50, !26}
!3857 = !{!3853, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865}
!3858 = !DILocalVariable(name: "w", arg: 2, scope: !3854, file: !3835, line: 22, type: !50)
!3859 = !DILocalVariable(name: "h", arg: 3, scope: !3854, file: !3835, line: 22, type: !50)
!3860 = !DILocalVariable(name: "s", arg: 4, scope: !3854, file: !3835, line: 22, type: !50)
!3861 = !DILocalVariable(name: "v", arg: 5, scope: !3854, file: !3835, line: 22, type: !26)
!3862 = !DILocalVariable(name: "d", scope: !3854, file: !3835, line: 24, type: !284)
!3863 = !DILocalVariable(name: "v2", scope: !3854, file: !3835, line: 25, type: !32)
!3864 = !DILocalVariable(name: "v4", scope: !3854, file: !3835, line: 26, type: !26)
!3865 = !DILocalVariable(name: "v8", scope: !3854, file: !3835, line: 27, type: !62)
!3866 = !DILocation(line: 0, scope: !3854, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 116, column: 9, scope: !3852, inlinedAt: !3847)
!3868 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !3867)
!3869 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !3867)
!3870 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !3867)
!3871 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !3867)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !3835, line: 40, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3874, file: !3835, line: 39, column: 14)
!3874 = distinct !DILexicalBlock(scope: !3854, file: !3835, line: 30, column: 9)
!3875 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !3867)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3835, line: 42, column: 13)
!3877 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !3867)
!3878 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !3867)
!3879 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !3867)
!3880 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !3867)
!3881 = distinct !DILexicalBlock(scope: !3872, file: !3835, line: 44, column: 13)
!3882 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !3867)
!3883 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !3867)
!3884 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !3867)
!3885 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !3867)
!3886 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !3867)
!3887 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !3867)
!3888 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !3867)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3835, line: 51, column: 9)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3835, line: 50, column: 13)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3835, line: 49, column: 5)
!3892 = distinct !DILexicalBlock(scope: !3873, file: !3835, line: 48, column: 14)
!3893 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !3867)
!3894 = distinct !DILexicalBlock(scope: !3889, file: !3835, line: 53, column: 17)
!3895 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !3867)
!3896 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !3867)
!3897 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !3867)
!3898 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !3867)
!3899 = distinct !DILexicalBlock(scope: !3889, file: !3835, line: 55, column: 17)
!3900 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !3867)
!3901 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !3867)
!3902 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !3867)
!3903 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !3867)
!3904 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !3867)
!3905 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !3867)
!3906 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !3867)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !3835, line: 80, column: 13)
!3908 = distinct !DILexicalBlock(scope: !3909, file: !3835, line: 78, column: 9)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3835, line: 77, column: 13)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3835, line: 74, column: 5)
!3911 = distinct !DILexicalBlock(scope: !3892, file: !3835, line: 73, column: 14)
!3912 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !3867)
!3913 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !3867)
!3914 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !3867)
!3915 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !3867)
!3916 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !3867)
!3917 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !3867)
!3918 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !3867)
!3919 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !3867)
!3920 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !3867)
!3921 = distinct !{!3921, !3922, !3923, !1999, !2000}
!3922 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !3867)
!3923 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !3867)
!3924 = !DILocation(line: 1067, column: 27, scope: !3824)
!3925 = !DILocation(line: 1067, column: 64, scope: !3824)
!3926 = !DILocalVariable(name: "a", arg: 1, scope: !3927, file: !1823, line: 324, type: !50)
!3927 = distinct !DISubprogram(name: "pack8to16", scope: !1823, file: !1823, line: 324, type: !1943, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3928)
!3928 = !{!3926, !3929}
!3929 = !DILocalVariable(name: "b", arg: 2, scope: !3927, file: !1823, line: 324, type: !50)
!3930 = !DILocation(line: 0, scope: !3927, inlinedAt: !3931)
!3931 = distinct !DILocation(line: 1067, column: 16, scope: !3824)
!3932 = !DILocation(line: 329, column: 17, scope: !3927, inlinedAt: !3931)
!3933 = !DILocation(line: 329, column: 13, scope: !3927, inlinedAt: !3931)
!3934 = !DILocation(line: 1067, column: 16, scope: !3824)
!3935 = !DILocalVariable(name: "h", arg: 1, scope: !3936, file: !3835, line: 118, type: !87)
!3936 = distinct !DISubprogram(name: "x264_macroblock_cache_mvd", scope: !3835, file: !3835, line: 118, type: !3937, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3939)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !87, !50, !50, !50, !50, !50, !32}
!3939 = !{!3935, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3940 = !DILocalVariable(name: "x", arg: 2, scope: !3936, file: !3835, line: 118, type: !50)
!3941 = !DILocalVariable(name: "y", arg: 3, scope: !3936, file: !3835, line: 118, type: !50)
!3942 = !DILocalVariable(name: "width", arg: 4, scope: !3936, file: !3835, line: 118, type: !50)
!3943 = !DILocalVariable(name: "height", arg: 5, scope: !3936, file: !3835, line: 118, type: !50)
!3944 = !DILocalVariable(name: "i_list", arg: 6, scope: !3936, file: !3835, line: 118, type: !50)
!3945 = !DILocalVariable(name: "mvd", arg: 7, scope: !3936, file: !3835, line: 118, type: !32)
!3946 = !DILocalVariable(name: "mvd_cache", scope: !3936, file: !3835, line: 120, type: !155)
!3947 = !DILocation(line: 0, scope: !3936, inlinedAt: !3948)
!3948 = distinct !DILocation(line: 1068, column: 9, scope: !3824)
!3949 = !DILocation(line: 120, column: 24, scope: !3936, inlinedAt: !3948)
!3950 = !DILocation(line: 0, scope: !3854, inlinedAt: !3951)
!3951 = distinct !DILocation(line: 124, column: 9, scope: !3952, inlinedAt: !3948)
!3952 = distinct !DILexicalBlock(scope: !3936, file: !3835, line: 121, column: 9)
!3953 = !DILocation(line: 26, column: 43, scope: !3854, inlinedAt: !3951)
!3954 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !3951)
!3955 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !3951)
!3956 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !3951)
!3957 = !DILocation(line: 32, column: 22, scope: !3958, inlinedAt: !3951)
!3958 = distinct !DILexicalBlock(scope: !3874, file: !3835, line: 31, column: 5)
!3959 = !DILocation(line: 33, column: 15, scope: !3960, inlinedAt: !3951)
!3960 = distinct !DILexicalBlock(scope: !3958, file: !3835, line: 33, column: 13)
!3961 = !DILocation(line: 33, column: 13, scope: !3958, inlinedAt: !3951)
!3962 = !DILocation(line: 34, column: 9, scope: !3958, inlinedAt: !3951)
!3963 = !DILocation(line: 34, column: 22, scope: !3958, inlinedAt: !3951)
!3964 = !DILocation(line: 35, column: 15, scope: !3965, inlinedAt: !3951)
!3965 = distinct !DILexicalBlock(scope: !3958, file: !3835, line: 35, column: 13)
!3966 = !DILocation(line: 35, column: 13, scope: !3958, inlinedAt: !3951)
!3967 = !DILocation(line: 36, column: 9, scope: !3958, inlinedAt: !3951)
!3968 = !DILocation(line: 36, column: 22, scope: !3958, inlinedAt: !3951)
!3969 = !DILocation(line: 37, column: 9, scope: !3958, inlinedAt: !3951)
!3970 = !DILocation(line: 37, column: 22, scope: !3958, inlinedAt: !3951)
!3971 = !DILocation(line: 38, column: 5, scope: !3958, inlinedAt: !3951)
!3972 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !3951)
!3973 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !3951)
!3974 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !3951)
!3975 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !3951)
!3976 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !3951)
!3977 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !3951)
!3978 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !3951)
!3979 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !3951)
!3980 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !3951)
!3981 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !3951)
!3982 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !3951)
!3983 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !3951)
!3984 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !3951)
!3985 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !3951)
!3986 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !3951)
!3987 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !3951)
!3988 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !3951)
!3989 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !3951)
!3990 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !3951)
!3991 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !3951)
!3992 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !3951)
!3993 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !3951)
!3994 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !3951)
!3995 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !3951)
!3996 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !3951)
!3997 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !3951)
!3998 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !3951)
!3999 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !3951)
!4000 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !3951)
!4001 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !3951)
!4002 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !3951)
!4003 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !3951)
!4004 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !3951)
!4005 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !3951)
!4006 = distinct !{!4006, !4007, !4008, !1999, !2000}
!4007 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !3951)
!4008 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !3951)
!4009 = !DILocation(line: 0, scope: !1942, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 1070, column: 77, scope: !3824)
!4011 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4010)
!4012 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4010)
!4013 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4010)
!4014 = !DILocation(line: 0, scope: !3834, inlinedAt: !4015)
!4015 = distinct !DILocation(line: 1070, column: 9, scope: !3824)
!4016 = !DILocation(line: 112, column: 23, scope: !3834, inlinedAt: !4015)
!4017 = !DILocation(line: 0, scope: !3854, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 116, column: 9, scope: !3852, inlinedAt: !4015)
!4019 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !4018)
!4020 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !4018)
!4021 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !4018)
!4022 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !4018)
!4023 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !4018)
!4024 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !4018)
!4025 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !4018)
!4026 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !4018)
!4027 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !4018)
!4028 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !4018)
!4029 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !4018)
!4030 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !4018)
!4031 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !4018)
!4032 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !4018)
!4033 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !4018)
!4034 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !4018)
!4035 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !4018)
!4036 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !4018)
!4037 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !4018)
!4038 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !4018)
!4039 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !4018)
!4040 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !4018)
!4041 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !4018)
!4042 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !4018)
!4043 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !4018)
!4044 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !4018)
!4045 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !4018)
!4046 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !4018)
!4047 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !4018)
!4048 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !4018)
!4049 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !4018)
!4050 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !4018)
!4051 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !4018)
!4052 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !4018)
!4053 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !4018)
!4054 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !4018)
!4055 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !4018)
!4056 = distinct !{!4056, !4057, !4058, !1999, !2000}
!4057 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !4018)
!4058 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !4018)
!4059 = !DILocation(line: 1071, column: 27, scope: !3824)
!4060 = !DILocation(line: 1071, column: 64, scope: !3824)
!4061 = !DILocation(line: 0, scope: !3927, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 1071, column: 16, scope: !3824)
!4063 = !DILocation(line: 329, column: 17, scope: !3927, inlinedAt: !4062)
!4064 = !DILocation(line: 329, column: 13, scope: !3927, inlinedAt: !4062)
!4065 = !DILocation(line: 1071, column: 16, scope: !3824)
!4066 = !DILocation(line: 0, scope: !3936, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 1072, column: 9, scope: !3824)
!4068 = !DILocation(line: 120, column: 24, scope: !3936, inlinedAt: !4067)
!4069 = !DILocation(line: 0, scope: !3854, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 124, column: 9, scope: !3952, inlinedAt: !4067)
!4071 = !DILocation(line: 26, column: 43, scope: !3854, inlinedAt: !4070)
!4072 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !4070)
!4073 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !4070)
!4074 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !4070)
!4075 = !DILocation(line: 32, column: 22, scope: !3958, inlinedAt: !4070)
!4076 = !DILocation(line: 33, column: 15, scope: !3960, inlinedAt: !4070)
!4077 = !DILocation(line: 33, column: 13, scope: !3958, inlinedAt: !4070)
!4078 = !DILocation(line: 34, column: 9, scope: !3958, inlinedAt: !4070)
!4079 = !DILocation(line: 34, column: 22, scope: !3958, inlinedAt: !4070)
!4080 = !DILocation(line: 35, column: 15, scope: !3965, inlinedAt: !4070)
!4081 = !DILocation(line: 35, column: 13, scope: !3958, inlinedAt: !4070)
!4082 = !DILocation(line: 36, column: 9, scope: !3958, inlinedAt: !4070)
!4083 = !DILocation(line: 36, column: 22, scope: !3958, inlinedAt: !4070)
!4084 = !DILocation(line: 37, column: 9, scope: !3958, inlinedAt: !4070)
!4085 = !DILocation(line: 37, column: 22, scope: !3958, inlinedAt: !4070)
!4086 = !DILocation(line: 38, column: 5, scope: !3958, inlinedAt: !4070)
!4087 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !4070)
!4088 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !4070)
!4089 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !4070)
!4090 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !4070)
!4091 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !4070)
!4092 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !4070)
!4093 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !4070)
!4094 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !4070)
!4095 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !4070)
!4096 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !4070)
!4097 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !4070)
!4098 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !4070)
!4099 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !4070)
!4100 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !4070)
!4101 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !4070)
!4102 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !4070)
!4103 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !4070)
!4104 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !4070)
!4105 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !4070)
!4106 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !4070)
!4107 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !4070)
!4108 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !4070)
!4109 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !4070)
!4110 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !4070)
!4111 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !4070)
!4112 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !4070)
!4113 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !4070)
!4114 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !4070)
!4115 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !4070)
!4116 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !4070)
!4117 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !4070)
!4118 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !4070)
!4119 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !4070)
!4120 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !4070)
!4121 = distinct !{!4121, !4122, !4123, !1999, !2000}
!4122 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !4070)
!4123 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !4070)
!4124 = !DILocation(line: 1075, column: 17, scope: !1721)
!4125 = !DILocation(line: 1075, column: 15, scope: !1721)
!4126 = !DILocation(line: 1076, column: 17, scope: !1721)
!4127 = !DILocation(line: 1076, column: 15, scope: !1721)
!4128 = !DILocation(line: 1077, column: 17, scope: !1721)
!4129 = !DILocation(line: 1077, column: 15, scope: !1721)
!4130 = !DILocation(line: 1078, column: 17, scope: !1721)
!4131 = !DILocation(line: 1078, column: 15, scope: !1721)
!4132 = !DILocation(line: 1079, column: 1, scope: !1721)
!4133 = distinct !DISubprogram(name: "x264_me_refine_bidir_rd", scope: !84, file: !84, line: 1086, type: !4134, scopeLine: 1087, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{null, !87, !1374, !1374, !50, !50, !50}
!4136 = !{!4137, !4138, !4139, !4140, !4141, !4142}
!4137 = !DILocalVariable(name: "h", arg: 1, scope: !4133, file: !84, line: 1086, type: !87)
!4138 = !DILocalVariable(name: "m0", arg: 2, scope: !4133, file: !84, line: 1086, type: !1374)
!4139 = !DILocalVariable(name: "m1", arg: 3, scope: !4133, file: !84, line: 1086, type: !1374)
!4140 = !DILocalVariable(name: "i_weight", arg: 4, scope: !4133, file: !84, line: 1086, type: !50)
!4141 = !DILocalVariable(name: "i8", arg: 5, scope: !4133, file: !84, line: 1086, type: !50)
!4142 = !DILocalVariable(name: "i_lambda2", arg: 6, scope: !4133, file: !84, line: 1086, type: !50)
!4143 = !DILocation(line: 0, scope: !4133)
!4144 = !DILocation(line: 1090, column: 11, scope: !4133)
!4145 = !DILocation(line: 1090, column: 21, scope: !4133)
!4146 = !{!1862, !1847, i64 17420}
!4147 = !DILocation(line: 1091, column: 5, scope: !4133)
!4148 = !DILocation(line: 1092, column: 21, scope: !4133)
!4149 = !DILocation(line: 1093, column: 1, scope: !4133)
!4150 = distinct !DISubprogram(name: "x264_me_refine_qpel_rd", scope: !84, file: !84, line: 1125, type: !4151, scopeLine: 1126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4153)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !87, !1374, !50, !50, !50}
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4186, !4192, !4194, !4200, !4204, !4207, !4209, !4215, !4217}
!4154 = !DILocalVariable(name: "h", arg: 1, scope: !4150, file: !84, line: 1125, type: !87)
!4155 = !DILocalVariable(name: "m", arg: 2, scope: !4150, file: !84, line: 1125, type: !1374)
!4156 = !DILocalVariable(name: "i_lambda2", arg: 3, scope: !4150, file: !84, line: 1125, type: !50)
!4157 = !DILocalVariable(name: "i4", arg: 4, scope: !4150, file: !84, line: 1125, type: !50)
!4158 = !DILocalVariable(name: "i_list", arg: 5, scope: !4150, file: !84, line: 1125, type: !50)
!4159 = !DILocalVariable(name: "cache_mv", scope: !4150, file: !84, line: 1127, type: !794)
!4160 = !DILocalVariable(name: "p_cost_mvx", scope: !4150, file: !84, line: 1128, type: !1430)
!4161 = !DILocalVariable(name: "p_cost_mvy", scope: !4150, file: !84, line: 1128, type: !1430)
!4162 = !DILocalVariable(name: "bw", scope: !4150, file: !84, line: 1129, type: !1400)
!4163 = !DILocalVariable(name: "bh", scope: !4150, file: !84, line: 1130, type: !1400)
!4164 = !DILocalVariable(name: "i_pixel", scope: !4150, file: !84, line: 1131, type: !1400)
!4165 = !DILocalVariable(name: "mvy_offset", scope: !4150, file: !84, line: 1132, type: !1400)
!4166 = !DILocalVariable(name: "bcost", scope: !4150, file: !84, line: 1134, type: !62)
!4167 = !DILocalVariable(name: "bmx", scope: !4150, file: !84, line: 1135, type: !50)
!4168 = !DILocalVariable(name: "bmy", scope: !4150, file: !84, line: 1136, type: !50)
!4169 = !DILocalVariable(name: "omx", scope: !4150, file: !84, line: 1137, type: !50)
!4170 = !DILocalVariable(name: "omy", scope: !4150, file: !84, line: 1137, type: !50)
!4171 = !DILocalVariable(name: "pmx", scope: !4150, file: !84, line: 1137, type: !50)
!4172 = !DILocalVariable(name: "pmy", scope: !4150, file: !84, line: 1137, type: !50)
!4173 = !DILocalVariable(name: "bsatd", scope: !4150, file: !84, line: 1139, type: !50)
!4174 = !DILocalVariable(name: "satd", scope: !4150, file: !84, line: 1143, type: !50)
!4175 = !DILocalVariable(name: "dir", scope: !4150, file: !84, line: 1144, type: !50)
!4176 = !DILocalVariable(name: "i8", scope: !4150, file: !84, line: 1145, type: !50)
!4177 = !DILocalVariable(name: "amvd", scope: !4150, file: !84, line: 1146, type: !32)
!4178 = !DILocalVariable(name: "pix", scope: !4150, file: !84, line: 1148, type: !284)
!4179 = !DILocalVariable(name: "pixu", scope: !4150, file: !84, line: 1149, type: !284)
!4180 = !DILocalVariable(name: "pixv", scope: !4150, file: !84, line: 1150, type: !284)
!4181 = !DILocalVariable(name: "cost", scope: !4182, file: !84, line: 1162, type: !62)
!4182 = distinct !DILexicalBlock(scope: !4183, file: !84, line: 1162, column: 9)
!4183 = distinct !DILexicalBlock(scope: !4184, file: !84, line: 1162, column: 9)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !84, line: 1162, column: 9)
!4185 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1161, column: 9)
!4186 = !DILocalVariable(name: "cost", scope: !4187, file: !84, line: 1172, type: !62)
!4187 = distinct !DILexicalBlock(scope: !4188, file: !84, line: 1172, column: 9)
!4188 = distinct !DILexicalBlock(scope: !4189, file: !84, line: 1172, column: 9)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !84, line: 1172, column: 9)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !84, line: 1170, column: 5)
!4191 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1167, column: 9)
!4192 = !DILocalVariable(name: "j", scope: !4193, file: !84, line: 1193, type: !50)
!4193 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1193, column: 5)
!4194 = !DILocalVariable(name: "cost", scope: !4195, file: !84, line: 1196, type: !62)
!4195 = distinct !DILexicalBlock(scope: !4196, file: !84, line: 1196, column: 9)
!4196 = distinct !DILexicalBlock(scope: !4197, file: !84, line: 1196, column: 9)
!4197 = distinct !DILexicalBlock(scope: !4198, file: !84, line: 1196, column: 9)
!4198 = distinct !DILexicalBlock(scope: !4199, file: !84, line: 1194, column: 5)
!4199 = distinct !DILexicalBlock(scope: !4193, file: !84, line: 1193, column: 5)
!4200 = !DILocalVariable(name: "i", scope: !4201, file: !84, line: 1202, type: !50)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !84, line: 1202, column: 9)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !84, line: 1200, column: 5)
!4203 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1199, column: 9)
!4204 = !DILocalVariable(name: "odir", scope: !4205, file: !84, line: 1204, type: !1400)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !84, line: 1203, column: 9)
!4206 = distinct !DILexicalBlock(scope: !4201, file: !84, line: 1202, column: 9)
!4207 = !DILocalVariable(name: "j", scope: !4208, file: !84, line: 1211, type: !50)
!4208 = distinct !DILexicalBlock(scope: !4205, file: !84, line: 1211, column: 13)
!4209 = !DILocalVariable(name: "cost", scope: !4210, file: !84, line: 1214, type: !62)
!4210 = distinct !DILexicalBlock(scope: !4211, file: !84, line: 1214, column: 17)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !84, line: 1214, column: 17)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !84, line: 1214, column: 17)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !84, line: 1212, column: 13)
!4214 = distinct !DILexicalBlock(scope: !4208, file: !84, line: 1211, column: 13)
!4215 = !DILocalVariable(name: "i", scope: !4216, file: !84, line: 1224, type: !50)
!4216 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1224, column: 5)
!4217 = !DILocalVariable(name: "cost", scope: !4218, file: !84, line: 1227, type: !62)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !84, line: 1227, column: 9)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !84, line: 1227, column: 9)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !84, line: 1227, column: 9)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !84, line: 1225, column: 5)
!4222 = distinct !DILexicalBlock(scope: !4216, file: !84, line: 1224, column: 5)
!4223 = !DILocation(line: 0, scope: !4150)
!4224 = !DILocation(line: 1127, column: 25, scope: !4150)
!4225 = !DILocation(line: 1127, column: 48, scope: !4150)
!4226 = !DILocation(line: 1129, column: 39, scope: !4150)
!4227 = !DILocation(line: 1129, column: 20, scope: !4150)
!4228 = !DILocation(line: 1129, column: 48, scope: !4150)
!4229 = !DILocation(line: 1130, column: 48, scope: !4150)
!4230 = !DILocation(line: 1132, column: 34, scope: !4150)
!4231 = !DILocation(line: 1132, column: 52, scope: !4150)
!4232 = !DILocation(line: 1132, column: 47, scope: !4150)
!4233 = !DILocation(line: 1132, column: 28, scope: !4150)
!4234 = !DILocation(line: 1132, column: 67, scope: !4150)
!4235 = !DILocation(line: 1132, column: 78, scope: !4150)
!4236 = !DILocation(line: 1132, column: 81, scope: !4150)
!4237 = !DILocation(line: 1135, column: 18, scope: !4150)
!4238 = !DILocation(line: 1135, column: 15, scope: !4150)
!4239 = !DILocation(line: 1136, column: 15, scope: !4150)
!4240 = !DILocation(line: 1148, column: 32, scope: !4150)
!4241 = !DILocation(line: 1148, column: 22, scope: !4150)
!4242 = !DILocation(line: 1148, column: 42, scope: !4150)
!4243 = !DILocation(line: 1149, column: 22, scope: !4150)
!4244 = !DILocation(line: 1149, column: 51, scope: !4150)
!4245 = !DILocation(line: 1149, column: 67, scope: !4150)
!4246 = !DILocation(line: 1149, column: 63, scope: !4150)
!4247 = !DILocation(line: 1150, column: 22, scope: !4150)
!4248 = !DILocation(line: 1152, column: 11, scope: !4150)
!4249 = !DILocation(line: 1152, column: 21, scope: !4150)
!4250 = !DILocation(line: 1154, column: 20, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1154, column: 9)
!4252 = !DILocation(line: 1154, column: 35, scope: !4251)
!4253 = !DILocation(line: 1155, column: 46, scope: !4251)
!4254 = !DILocation(line: 1155, column: 54, scope: !4251)
!4255 = !DILocation(line: 1155, column: 9, scope: !4251)
!4256 = !DILocation(line: 1156, column: 14, scope: !4150)
!4257 = !DILocation(line: 1156, column: 11, scope: !4150)
!4258 = !DILocation(line: 1157, column: 11, scope: !4150)
!4259 = !DILocation(line: 1158, column: 21, scope: !4150)
!4260 = !DILocation(line: 1158, column: 31, scope: !4150)
!4261 = !DILocation(line: 1159, column: 31, scope: !4150)
!4262 = !DILocation(line: 1160, column: 5, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !84, line: 1160, column: 5)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !84, line: 1160, column: 5)
!4265 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1160, column: 5)
!4266 = !DILocation(line: 1161, column: 12, scope: !4185)
!4267 = !DILocation(line: 1161, column: 20, scope: !4185)
!4268 = !DILocation(line: 1161, column: 9, scope: !4150)
!4269 = !DILocation(line: 1162, column: 9, scope: !4183)
!4270 = !DILocation(line: 1162, column: 9, scope: !4184)
!4271 = !DILocation(line: 0, scope: !1942, inlinedAt: !4272)
!4272 = distinct !DILocation(line: 1162, column: 9, scope: !4182)
!4273 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4272)
!4274 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4272)
!4275 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4272)
!4276 = !DILocation(line: 1162, column: 9, scope: !4182)
!4277 = !DILocation(line: 1162, column: 9, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4182, file: !84, line: 1162, column: 9)
!4279 = !DILocation(line: 1162, column: 9, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4278, file: !84, line: 1162, column: 9)
!4281 = !DILocation(line: 0, scope: !4182)
!4282 = !DILocation(line: 1164, column: 20, scope: !4185)
!4283 = !DILocation(line: 1164, column: 17, scope: !4185)
!4284 = !DILocation(line: 1167, column: 14, scope: !4191)
!4285 = !DILocation(line: 1167, column: 21, scope: !4191)
!4286 = !DILocation(line: 1168, column: 25, scope: !4191)
!4287 = !DILocation(line: 1168, column: 19, scope: !4191)
!4288 = !DILocation(line: 1168, column: 16, scope: !4191)
!4289 = !DILocation(line: 1168, column: 40, scope: !4191)
!4290 = !DILocation(line: 1168, column: 56, scope: !4191)
!4291 = !DILocation(line: 1168, column: 50, scope: !4191)
!4292 = !DILocation(line: 1168, column: 47, scope: !4191)
!4293 = !DILocation(line: 1169, column: 9, scope: !4191)
!4294 = !DILocation(line: 1169, column: 19, scope: !4191)
!4295 = !DILocation(line: 1169, column: 16, scope: !4191)
!4296 = !DILocation(line: 1169, column: 40, scope: !4191)
!4297 = !DILocation(line: 1169, column: 50, scope: !4191)
!4298 = !DILocation(line: 1169, column: 47, scope: !4191)
!4299 = !DILocation(line: 1167, column: 9, scope: !4150)
!4300 = !DILocation(line: 1171, column: 9, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4302, file: !84, line: 1171, column: 9)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !84, line: 1171, column: 9)
!4303 = distinct !DILexicalBlock(scope: !4190, file: !84, line: 1171, column: 9)
!4304 = !DILocation(line: 1172, column: 9, scope: !4188)
!4305 = !DILocation(line: 1172, column: 9, scope: !4189)
!4306 = !DILocation(line: 0, scope: !1942, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 1172, column: 9, scope: !4187)
!4308 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4307)
!4309 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4307)
!4310 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4307)
!4311 = !DILocation(line: 1172, column: 9, scope: !4187)
!4312 = !DILocation(line: 1172, column: 9, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4187, file: !84, line: 1172, column: 9)
!4314 = !DILocation(line: 1172, column: 9, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4313, file: !84, line: 1172, column: 9)
!4316 = !DILocation(line: 0, scope: !4187)
!4317 = !DILocation(line: 1172, column: 9, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4187, file: !84, line: 1172, column: 9)
!4319 = !DILocation(line: 1172, column: 9, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4318, file: !84, line: 1172, column: 9)
!4321 = !DILocation(line: 1175, column: 17, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4190, file: !84, line: 1175, column: 13)
!4323 = !DILocation(line: 1175, column: 24, scope: !4322)
!4324 = !DILocation(line: 1177, column: 19, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4322, file: !84, line: 1176, column: 9)
!4326 = !DILocation(line: 1178, column: 19, scope: !4325)
!4327 = !DILocation(line: 1179, column: 9, scope: !4325)
!4328 = !DILocation(line: 1182, column: 21, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4150, file: !84, line: 1182, column: 9)
!4330 = !DILocation(line: 1182, column: 15, scope: !4329)
!4331 = !DILocation(line: 1182, column: 36, scope: !4329)
!4332 = !DILocation(line: 1182, column: 13, scope: !4329)
!4333 = !DILocation(line: 1182, column: 40, scope: !4329)
!4334 = !DILocation(line: 1182, column: 55, scope: !4329)
!4335 = !DILocation(line: 1182, column: 49, scope: !4329)
!4336 = !DILocation(line: 1182, column: 70, scope: !4329)
!4337 = !DILocation(line: 1182, column: 47, scope: !4329)
!4338 = !DILocation(line: 1182, column: 74, scope: !4329)
!4339 = !DILocation(line: 1183, column: 15, scope: !4329)
!4340 = !DILocation(line: 1183, column: 36, scope: !4329)
!4341 = !DILocation(line: 1183, column: 13, scope: !4329)
!4342 = !DILocation(line: 1183, column: 40, scope: !4329)
!4343 = !DILocation(line: 1183, column: 49, scope: !4329)
!4344 = !DILocation(line: 1183, column: 70, scope: !4329)
!4345 = !DILocation(line: 1183, column: 47, scope: !4329)
!4346 = !DILocation(line: 1182, column: 9, scope: !4150)
!4347 = !DILocation(line: 0, scope: !4193)
!4348 = !DILocation(line: 1193, column: 5, scope: !4193)
!4349 = !DILocation(line: 1199, column: 13, scope: !4203)
!4350 = !DILocation(line: 1199, column: 9, scope: !4150)
!4351 = !DILocation(line: 1195, column: 9, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !84, line: 1195, column: 9)
!4353 = distinct !DILexicalBlock(scope: !4198, file: !84, line: 1195, column: 9)
!4354 = !DILocation(line: 0, scope: !4352)
!4355 = !DILocation(line: 1195, column: 9, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !84, line: 1195, column: 9)
!4357 = !DILocation(line: 1196, column: 9, scope: !4196)
!4358 = !DILocation(line: 1196, column: 9, scope: !4197)
!4359 = !DILocation(line: 0, scope: !1942, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 1196, column: 9, scope: !4195)
!4361 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4360)
!4362 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4360)
!4363 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4360)
!4364 = !DILocation(line: 1196, column: 9, scope: !4195)
!4365 = !DILocation(line: 1196, column: 9, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4195, file: !84, line: 1196, column: 9)
!4367 = !DILocation(line: 1196, column: 9, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4366, file: !84, line: 1196, column: 9)
!4369 = !DILocation(line: 0, scope: !4195)
!4370 = !DILocation(line: 1196, column: 9, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4195, file: !84, line: 1196, column: 9)
!4372 = !DILocation(line: 1196, column: 9, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4371, file: !84, line: 1196, column: 9)
!4374 = !DILocation(line: 1193, column: 23, scope: !4199)
!4375 = distinct !{!4375, !4348, !4376, !1999, !2000}
!4376 = !DILocation(line: 1197, column: 5, scope: !4193)
!4377 = !DILocation(line: 0, scope: !4201)
!4378 = !DILocation(line: 1204, column: 40, scope: !4205)
!4379 = !DILocation(line: 1204, column: 30, scope: !4205)
!4380 = !DILocation(line: 0, scope: !4205)
!4381 = !DILocation(line: 1205, column: 23, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4205, file: !84, line: 1205, column: 17)
!4383 = !DILocation(line: 1205, column: 44, scope: !4382)
!4384 = !DILocation(line: 1205, column: 21, scope: !4382)
!4385 = !DILocation(line: 1205, column: 48, scope: !4382)
!4386 = !DILocation(line: 1206, column: 23, scope: !4382)
!4387 = !DILocation(line: 1206, column: 44, scope: !4382)
!4388 = !DILocation(line: 1206, column: 21, scope: !4382)
!4389 = !DILocation(line: 1205, column: 17, scope: !4205)
!4390 = !DILocation(line: 1211, column: 13, scope: !4208)
!4391 = !DILocation(line: 0, scope: !4208)
!4392 = !DILocation(line: 1213, column: 17, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !84, line: 1213, column: 17)
!4394 = distinct !DILexicalBlock(scope: !4213, file: !84, line: 1213, column: 17)
!4395 = !DILocation(line: 0, scope: !4393)
!4396 = !DILocation(line: 1213, column: 17, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4393, file: !84, line: 1213, column: 17)
!4398 = !DILocation(line: 1214, column: 17, scope: !4211)
!4399 = !DILocation(line: 1214, column: 17, scope: !4212)
!4400 = !DILocation(line: 0, scope: !1942, inlinedAt: !4401)
!4401 = distinct !DILocation(line: 1214, column: 17, scope: !4210)
!4402 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4401)
!4403 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4401)
!4404 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4401)
!4405 = !DILocation(line: 1214, column: 17, scope: !4210)
!4406 = !DILocation(line: 1214, column: 17, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4210, file: !84, line: 1214, column: 17)
!4408 = !DILocation(line: 1214, column: 17, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4407, file: !84, line: 1214, column: 17)
!4410 = !DILocation(line: 0, scope: !4210)
!4411 = !DILocation(line: 1214, column: 17, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4210, file: !84, line: 1214, column: 17)
!4413 = !DILocation(line: 1214, column: 17, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4412, file: !84, line: 1214, column: 17)
!4415 = !DILocation(line: 1211, column: 37, scope: !4214)
!4416 = !DILocation(line: 1211, column: 31, scope: !4214)
!4417 = distinct !{!4417, !4390, !4418, !1999, !2000}
!4418 = !DILocation(line: 1215, column: 13, scope: !4208)
!4419 = !DILocation(line: 1216, column: 21, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4205, file: !84, line: 1216, column: 17)
!4421 = distinct !{!4421, !4422, !4423, !1999, !2000}
!4422 = !DILocation(line: 1202, column: 9, scope: !4201)
!4423 = !DILocation(line: 1218, column: 9, scope: !4201)
!4424 = !DILocation(line: 1171, column: 9, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4301, file: !84, line: 1171, column: 9)
!4426 = !DILocation(line: 0, scope: !4216)
!4427 = !DILocation(line: 1224, column: 5, scope: !4216)
!4428 = !DILocation(line: 1230, column: 15, scope: !4150)
!4429 = !DILocation(line: 1230, column: 8, scope: !4150)
!4430 = !DILocation(line: 1230, column: 13, scope: !4150)
!4431 = !DILocation(line: 1231, column: 16, scope: !4150)
!4432 = !DILocation(line: 1231, column: 14, scope: !4150)
!4433 = !DILocation(line: 1232, column: 16, scope: !4150)
!4434 = !DILocation(line: 1232, column: 14, scope: !4150)
!4435 = !DILocation(line: 1233, column: 35, scope: !4150)
!4436 = !DILocation(line: 1233, column: 52, scope: !4150)
!4437 = !DILocation(line: 1233, column: 71, scope: !4150)
!4438 = !DILocation(line: 1233, column: 78, scope: !4150)
!4439 = !DILocation(line: 0, scope: !1942, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 1233, column: 91, scope: !4150)
!4441 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4440)
!4442 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4440)
!4443 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4440)
!4444 = !DILocation(line: 0, scope: !3834, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 1233, column: 5, scope: !4150)
!4446 = !DILocation(line: 112, column: 58, scope: !3834, inlinedAt: !4445)
!4447 = !DILocation(line: 112, column: 62, scope: !3834, inlinedAt: !4445)
!4448 = !DILocation(line: 112, column: 60, scope: !3834, inlinedAt: !4445)
!4449 = !DILocation(line: 112, column: 23, scope: !3834, inlinedAt: !4445)
!4450 = !DILocation(line: 116, column: 52, scope: !3852, inlinedAt: !4445)
!4451 = !DILocation(line: 0, scope: !3854, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 116, column: 9, scope: !3852, inlinedAt: !4445)
!4453 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !4452)
!4454 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !4452)
!4455 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !4452)
!4456 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !4452)
!4457 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !4452)
!4458 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !4452)
!4459 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !4452)
!4460 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !4452)
!4461 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !4452)
!4462 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !4452)
!4463 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !4452)
!4464 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !4452)
!4465 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !4452)
!4466 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !4452)
!4467 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !4452)
!4468 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !4452)
!4469 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !4452)
!4470 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !4452)
!4471 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !4452)
!4472 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !4452)
!4473 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !4452)
!4474 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !4452)
!4475 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !4452)
!4476 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !4452)
!4477 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !4452)
!4478 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !4452)
!4479 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !4452)
!4480 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !4452)
!4481 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !4452)
!4482 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !4452)
!4483 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !4452)
!4484 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !4452)
!4485 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !4452)
!4486 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !4452)
!4487 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !4452)
!4488 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !4452)
!4489 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !4452)
!4490 = distinct !{!4490, !4491, !4492, !1999, !2000}
!4491 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !4452)
!4492 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !4452)
!4493 = !DILocation(line: 1234, column: 23, scope: !4150)
!4494 = !DILocation(line: 1234, column: 58, scope: !4150)
!4495 = !DILocation(line: 0, scope: !3927, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 1234, column: 12, scope: !4150)
!4497 = !DILocation(line: 329, column: 17, scope: !3927, inlinedAt: !4496)
!4498 = !DILocation(line: 329, column: 13, scope: !3927, inlinedAt: !4496)
!4499 = !DILocation(line: 1234, column: 12, scope: !4150)
!4500 = !DILocation(line: 0, scope: !3936, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 1235, column: 5, scope: !4150)
!4502 = !DILocation(line: 120, column: 24, scope: !3936, inlinedAt: !4501)
!4503 = !DILocation(line: 0, scope: !3854, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 124, column: 9, scope: !3952, inlinedAt: !4501)
!4505 = !DILocation(line: 26, column: 43, scope: !3854, inlinedAt: !4504)
!4506 = !DILocation(line: 27, column: 19, scope: !3854, inlinedAt: !4504)
!4507 = !DILocation(line: 27, column: 22, scope: !3854, inlinedAt: !4504)
!4508 = !DILocation(line: 30, column: 9, scope: !3854, inlinedAt: !4504)
!4509 = !DILocation(line: 32, column: 22, scope: !3958, inlinedAt: !4504)
!4510 = !DILocation(line: 33, column: 15, scope: !3960, inlinedAt: !4504)
!4511 = !DILocation(line: 33, column: 13, scope: !3958, inlinedAt: !4504)
!4512 = !DILocation(line: 34, column: 9, scope: !3958, inlinedAt: !4504)
!4513 = !DILocation(line: 34, column: 22, scope: !3958, inlinedAt: !4504)
!4514 = !DILocation(line: 35, column: 15, scope: !3965, inlinedAt: !4504)
!4515 = !DILocation(line: 35, column: 13, scope: !3958, inlinedAt: !4504)
!4516 = !DILocation(line: 36, column: 9, scope: !3958, inlinedAt: !4504)
!4517 = !DILocation(line: 36, column: 22, scope: !3958, inlinedAt: !4504)
!4518 = !DILocation(line: 37, column: 9, scope: !3958, inlinedAt: !4504)
!4519 = !DILocation(line: 37, column: 22, scope: !3958, inlinedAt: !4504)
!4520 = !DILocation(line: 38, column: 5, scope: !3958, inlinedAt: !4504)
!4521 = !DILocation(line: 41, column: 22, scope: !3872, inlinedAt: !4504)
!4522 = !DILocation(line: 42, column: 15, scope: !3876, inlinedAt: !4504)
!4523 = !DILocation(line: 42, column: 13, scope: !3872, inlinedAt: !4504)
!4524 = !DILocation(line: 43, column: 9, scope: !3872, inlinedAt: !4504)
!4525 = !DILocation(line: 43, column: 22, scope: !3872, inlinedAt: !4504)
!4526 = !DILocation(line: 44, column: 15, scope: !3881, inlinedAt: !4504)
!4527 = !DILocation(line: 44, column: 13, scope: !3872, inlinedAt: !4504)
!4528 = !DILocation(line: 45, column: 9, scope: !3872, inlinedAt: !4504)
!4529 = !DILocation(line: 45, column: 22, scope: !3872, inlinedAt: !4504)
!4530 = !DILocation(line: 46, column: 9, scope: !3872, inlinedAt: !4504)
!4531 = !DILocation(line: 46, column: 22, scope: !3872, inlinedAt: !4504)
!4532 = !DILocation(line: 47, column: 5, scope: !3872, inlinedAt: !4504)
!4533 = !DILocation(line: 52, column: 26, scope: !3889, inlinedAt: !4504)
!4534 = !DILocation(line: 53, column: 19, scope: !3894, inlinedAt: !4504)
!4535 = !DILocation(line: 53, column: 17, scope: !3889, inlinedAt: !4504)
!4536 = !DILocation(line: 54, column: 13, scope: !3889, inlinedAt: !4504)
!4537 = !DILocation(line: 54, column: 26, scope: !3889, inlinedAt: !4504)
!4538 = !DILocation(line: 55, column: 19, scope: !3899, inlinedAt: !4504)
!4539 = !DILocation(line: 55, column: 17, scope: !3889, inlinedAt: !4504)
!4540 = !DILocation(line: 56, column: 13, scope: !3889, inlinedAt: !4504)
!4541 = !DILocation(line: 56, column: 26, scope: !3889, inlinedAt: !4504)
!4542 = !DILocation(line: 57, column: 13, scope: !3889, inlinedAt: !4504)
!4543 = !DILocation(line: 57, column: 26, scope: !3889, inlinedAt: !4504)
!4544 = !DILocation(line: 72, column: 5, scope: !3891, inlinedAt: !4504)
!4545 = !DILocation(line: 81, column: 32, scope: !3907, inlinedAt: !4504)
!4546 = !DILocation(line: 82, column: 17, scope: !3907, inlinedAt: !4504)
!4547 = !DILocation(line: 82, column: 32, scope: !3907, inlinedAt: !4504)
!4548 = !DILocation(line: 83, column: 17, scope: !3907, inlinedAt: !4504)
!4549 = !DILocation(line: 83, column: 32, scope: !3907, inlinedAt: !4504)
!4550 = !DILocation(line: 84, column: 17, scope: !3907, inlinedAt: !4504)
!4551 = !DILocation(line: 84, column: 32, scope: !3907, inlinedAt: !4504)
!4552 = !DILocation(line: 85, column: 19, scope: !3907, inlinedAt: !4504)
!4553 = !DILocation(line: 86, column: 19, scope: !3907, inlinedAt: !4504)
!4554 = !DILocation(line: 87, column: 13, scope: !3907, inlinedAt: !4504)
!4555 = distinct !{!4555, !4556, !4557, !1999, !2000}
!4556 = !DILocation(line: 79, column: 13, scope: !3908, inlinedAt: !4504)
!4557 = !DILocation(line: 87, column: 24, scope: !3908, inlinedAt: !4504)
!4558 = !DILocation(line: 1226, column: 9, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !84, line: 1226, column: 9)
!4560 = distinct !DILexicalBlock(scope: !4221, file: !84, line: 1226, column: 9)
!4561 = !DILocation(line: 0, scope: !4559)
!4562 = !DILocation(line: 1226, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4559, file: !84, line: 1226, column: 9)
!4564 = !DILocation(line: 1227, column: 9, scope: !4219)
!4565 = !DILocation(line: 1227, column: 9, scope: !4220)
!4566 = !DILocation(line: 0, scope: !1942, inlinedAt: !4567)
!4567 = distinct !DILocation(line: 1227, column: 9, scope: !4218)
!4568 = !DILocation(line: 345, column: 13, scope: !1942, inlinedAt: !4567)
!4569 = !DILocation(line: 345, column: 26, scope: !1942, inlinedAt: !4567)
!4570 = !DILocation(line: 345, column: 22, scope: !1942, inlinedAt: !4567)
!4571 = !DILocation(line: 1227, column: 9, scope: !4218)
!4572 = !DILocation(line: 1227, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4218, file: !84, line: 1227, column: 9)
!4574 = !DILocation(line: 1227, column: 9, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !84, line: 1227, column: 9)
!4576 = !DILocation(line: 0, scope: !4218)
!4577 = !DILocation(line: 1227, column: 9, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4218, file: !84, line: 1227, column: 9)
!4579 = !DILocation(line: 1227, column: 9, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4578, file: !84, line: 1227, column: 9)
!4581 = !DILocation(line: 1224, column: 23, scope: !4222)
!4582 = distinct !{!4582, !4427, !4583, !1999, !2000}
!4583 = !DILocation(line: 1228, column: 5, scope: !4216)
!4584 = !DILocation(line: 1237, column: 1, scope: !4150)
!4585 = !DISubprogram(name: "x264_mb_predict_mv", scope: !1823, file: !1823, line: 299, type: !4586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4588)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{null, !87, !50, !50, !50, !794}
!4588 = !{}
!4589 = !DISubprogram(name: "x264_rd_cost_part", scope: !46, file: !46, line: 69, type: !4590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4588)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!62, !87, !50, !50, !50}
