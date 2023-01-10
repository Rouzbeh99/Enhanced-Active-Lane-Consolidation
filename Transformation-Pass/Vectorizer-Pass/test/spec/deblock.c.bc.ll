; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/deblock.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/deblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
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

@i_alpha_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\05\06\07\08\09\0A\0C\0D\0F\11\14\16\19\1C $(-28?GPZeq\7F\90\A2\B6\CB\E2\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16, !dbg !0
@i_beta_table = internal unnamed_addr constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\03\03\03\03\04\04\04\06\06\07\07\08\08\09\09\0A\0A\0B\0B\0C\0C\0D\0D\0E\0E\0F\0F\10\10\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16, !dbg !67
@i_tc0_table = internal unnamed_addr constant [76 x [4 x i8]] [[4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\00", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\00\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\00\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\01", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\01\02", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\01\02\03", [4 x i8] c"\FF\02\02\03", [4 x i8] c"\FF\02\02\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\02\03\04", [4 x i8] c"\FF\03\03\05", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\03\04\06", [4 x i8] c"\FF\04\05\07", [4 x i8] c"\FF\04\05\08", [4 x i8] c"\FF\04\06\09", [4 x i8] c"\FF\05\07\0A", [4 x i8] c"\FF\06\08\0B", [4 x i8] c"\FF\06\08\0D", [4 x i8] c"\FF\07\0A\0E", [4 x i8] c"\FF\08\0B\10", [4 x i8] c"\FF\09\0C\12", [4 x i8] c"\FF\0A\0D\14", [4 x i8] c"\FF\0B\0F\17", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19", [4 x i8] c"\FF\0D\11\19"], align 16, !dbg !74

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_deblock_row(ptr noundef %h, i32 noundef %mb_y) local_unnamed_addr #0 !dbg !90 {
entry:
  %tc.i1059 = alloca [4 x i8], align 1
  %tc.i1028 = alloca [4 x i8], align 1
  %tc.i1001 = alloca [4 x i8], align 1
  %tc.i974 = alloca [4 x i8], align 1
  %tc.i943 = alloca [4 x i8], align 1
  %tc.i916 = alloca [4 x i8], align 1
  %tc.i861 = alloca [4 x i8], align 1
  %tc.i830 = alloca [4 x i8], align 1
  %tc.i803 = alloca [4 x i8], align 1
  %tc.i776 = alloca [4 x i8], align 1
  %tc.i749 = alloca [4 x i8], align 1
  %tc.i = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %h, metadata !1387, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !1388, metadata !DIExpression()), !dbg !1423
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !1424
  %0 = load i32, ptr %b_mbaff, align 4, !dbg !1424, !tbaa !1425
  call void @llvm.dbg.value(metadata i32 %0, metadata !1389, metadata !DIExpression()), !dbg !1423
  %i_alpha_c0_offset = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 32, !dbg !1455
  %1 = load i32, ptr %i_alpha_c0_offset, align 16, !dbg !1455, !tbaa !1456
  %i_beta_offset = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 33, !dbg !1455
  %2 = load i32, ptr %i_beta_offset, align 4, !dbg !1455, !tbaa !1457
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 %2), !dbg !1455
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 6, !dbg !1458
  %4 = load i32, ptr %i_chroma_qp_offset, align 8, !dbg !1458, !tbaa !1459
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0), !dbg !1458
  %6 = add i32 %3, %5, !dbg !1460
  %sub15 = sub i32 15, %6, !dbg !1460
  call void @llvm.dbg.value(metadata i32 %sub15, metadata !1390, metadata !DIExpression()), !dbg !1423
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !1461
  %7 = load ptr, ptr %fdec, align 16, !dbg !1461, !tbaa !1462
  %i_stride = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 24, !dbg !1463
  %8 = load i32, ptr %i_stride, align 8, !dbg !1464, !tbaa !1465
  call void @llvm.dbg.value(metadata i32 %8, metadata !1391, metadata !DIExpression()), !dbg !1423
  %shl = shl i32 %8, %0, !dbg !1466
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1392, metadata !DIExpression()), !dbg !1423
  %arrayidx18 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 24, i64 1, !dbg !1467
  %9 = load i32, ptr %arrayidx18, align 4, !dbg !1467, !tbaa !1465
  call void @llvm.dbg.value(metadata i32 %9, metadata !1393, metadata !DIExpression()), !dbg !1423
  %shl19 = shl i32 %9, %0, !dbg !1468
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1394, metadata !DIExpression()), !dbg !1423
  %scratch_buffer = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 61, !dbg !1469
  %10 = load ptr, ptr %scratch_buffer, align 8, !dbg !1469, !tbaa !1470
  call void @llvm.dbg.value(metadata ptr %10, metadata !1395, metadata !DIExpression()), !dbg !1423
  %pps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !1471
  %11 = load ptr, ptr %pps, align 16, !dbg !1471, !tbaa !1473
  %b_cabac = getelementptr inbounds %struct.x264_pps_t, ptr %11, i64 0, i32 2, !dbg !1474
  %12 = load i32, ptr %b_cabac, align 8, !dbg !1474, !tbaa !1475
  %tobool.not = icmp eq i32 %12, 0, !dbg !1477
  br i1 %tobool.not, label %land.lhs.true, label %if.end, !dbg !1478

land.lhs.true:                                    ; preds = %entry
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, ptr %11, i64 0, i32 15, !dbg !1479
  %13 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !1479, !tbaa !1480
  %tobool21.not = icmp eq i32 %13, 0, !dbg !1481
  br i1 %tobool21.not, label %if.end, label %if.then, !dbg !1482

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %h, metadata !1483, metadata !DIExpression()) #9, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !1491, metadata !DIExpression()) #9, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %10, metadata !1492, metadata !DIExpression()) #9, !dbg !1494
  call void @llvm.dbg.value(metadata ptr %h, metadata !1496, metadata !DIExpression()) #9, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !1499, metadata !DIExpression()) #9, !dbg !1510
  call void @llvm.dbg.value(metadata ptr %10, metadata !1500, metadata !DIExpression()) #9, !dbg !1510
  %non_zero_count.i1197 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !1512
  %14 = load ptr, ptr %non_zero_count.i1197, align 16, !dbg !1512, !tbaa !1513
  %sps.i1198 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !1514
  %15 = load ptr, ptr %sps.i1198, align 16, !dbg !1514, !tbaa !1515
  %i_mb_width.i1199 = getelementptr inbounds %struct.x264_sps_t, ptr %15, i64 0, i32 16, !dbg !1516
  %16 = load i32, ptr %i_mb_width.i1199, align 4, !dbg !1516, !tbaa !1517
  %mul.i1200 = mul nsw i32 %16, %mb_y, !dbg !1522
  %idx.ext.i1201 = sext i32 %mul.i1200 to i64, !dbg !1523
  %add.ptr.i1202 = getelementptr inbounds [6 x i32], ptr %14, i64 %idx.ext.i1201, !dbg !1523
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1202, metadata !1501, metadata !DIExpression()) #9, !dbg !1510
  %mb_transform_size.i1203 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !1524
  %17 = load ptr, ptr %mb_transform_size.i1203, align 8, !dbg !1524, !tbaa !1525
  %add.ptr6.i1204 = getelementptr inbounds i8, ptr %17, i64 %idx.ext.i1201, !dbg !1526
  call void @llvm.dbg.value(metadata ptr %add.ptr6.i1204, metadata !1502, metadata !DIExpression()) #9, !dbg !1510
  call void @llvm.dbg.value(metadata i32 0, metadata !1503, metadata !DIExpression()) #9, !dbg !1527
  %cmp79.i1205 = icmp sgt i32 %16, 0, !dbg !1528
  br i1 %cmp79.i1205, label %for.body.i1211, label %munge_cavlc_nnz_row.exit1234, !dbg !1529

for.body.i1211:                                   ; preds = %if.then, %for.inc.i1233
  %indvars.iv.i1206 = phi i64 [ %indvars.iv.next.i1230, %for.inc.i1233 ], [ 0, %if.then ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1206, metadata !1503, metadata !DIExpression()) #9, !dbg !1527
  %add.ptr10.i1207 = getelementptr inbounds [16 x i8], ptr %10, i64 %indvars.iv.i1206, !dbg !1530
  %add.ptr12.i1208 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1202, i64 %indvars.iv.i1206, !dbg !1531
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1207, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1208, i64 16, i1 false) #9, !dbg !1532
  %arrayidx.i1209 = getelementptr inbounds i8, ptr %add.ptr6.i1204, i64 %indvars.iv.i1206, !dbg !1533
  %18 = load i8, ptr %arrayidx.i1209, align 1, !dbg !1533, !tbaa !1534
  %tobool.not.i1210 = icmp eq i8 %18, 0, !dbg !1533
  br i1 %tobool.not.i1210, label %for.inc.i1233, label %if.then.i1229, !dbg !1535

if.then.i1229:                                    ; preds = %for.body.i1211
  %19 = load i32, ptr %add.ptr12.i1208, align 4, !dbg !1536, !tbaa !1465
  %arrayidx18.i1212 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1208, i64 0, i64 1, !dbg !1537
  %20 = load i32, ptr %arrayidx18.i1212, align 4, !dbg !1537, !tbaa !1465
  %or.i1213 = or i32 %20, %19, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %or.i1213, metadata !1505, metadata !DIExpression()) #9, !dbg !1539
  %conv19.i1214 = and i32 %or.i1213, 65535, !dbg !1540
  %tobool20.not.i1215 = icmp eq i32 %conv19.i1214, 0, !dbg !1540
  %cond.i1216 = select i1 %tobool20.not.i1215, i32 0, i32 257, !dbg !1540
  %tobool21.not.i1217 = icmp ult i32 %or.i1213, 65536, !dbg !1541
  %cond22.i1218 = select i1 %tobool21.not.i1217, i32 0, i32 16842752, !dbg !1541
  %add.i1219 = or i32 %cond.i1216, %cond22.i1218, !dbg !1542
  store i32 %add.i1219, ptr %arrayidx18.i1212, align 4, !dbg !1543, !tbaa !1465
  store i32 %add.i1219, ptr %add.ptr12.i1208, align 4, !dbg !1544, !tbaa !1465
  %arrayidx31.i1220 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1208, i64 0, i64 2, !dbg !1545
  %21 = load i32, ptr %arrayidx31.i1220, align 4, !dbg !1545, !tbaa !1465
  %arrayidx34.i1221 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1208, i64 0, i64 3, !dbg !1546
  %22 = load i32, ptr %arrayidx34.i1221, align 4, !dbg !1546, !tbaa !1465
  %or35.i1222 = or i32 %22, %21, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %or35.i1222, metadata !1505, metadata !DIExpression()) #9, !dbg !1539
  %conv37.i1223 = and i32 %or35.i1222, 65535, !dbg !1548
  %tobool38.not.i1224 = icmp eq i32 %conv37.i1223, 0, !dbg !1548
  %cond39.i1225 = select i1 %tobool38.not.i1224, i32 0, i32 257, !dbg !1548
  %tobool41.not.i1226 = icmp ult i32 %or35.i1222, 65536, !dbg !1549
  %cond42.i1227 = select i1 %tobool41.not.i1226, i32 0, i32 16842752, !dbg !1549
  %add43.i1228 = or i32 %cond39.i1225, %cond42.i1227, !dbg !1550
  store i32 %add43.i1228, ptr %arrayidx34.i1221, align 4, !dbg !1551, !tbaa !1465
  store i32 %add43.i1228, ptr %arrayidx31.i1220, align 4, !dbg !1552, !tbaa !1465
  br label %for.inc.i1233, !dbg !1553

for.inc.i1233:                                    ; preds = %if.then.i1229, %for.body.i1211
  %indvars.iv.next.i1230 = add nuw nsw i64 %indvars.iv.i1206, 1, !dbg !1554
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1230, metadata !1503, metadata !DIExpression()) #9, !dbg !1527
  %23 = load ptr, ptr %sps.i1198, align 16, !dbg !1555, !tbaa !1515
  %i_mb_width8.i1231 = getelementptr inbounds %struct.x264_sps_t, ptr %23, i64 0, i32 16, !dbg !1556
  %24 = load i32, ptr %i_mb_width8.i1231, align 4, !dbg !1556, !tbaa !1517
  %25 = sext i32 %24 to i64, !dbg !1528
  %cmp.i1232 = icmp slt i64 %indvars.iv.next.i1230, %25, !dbg !1528
  br i1 %cmp.i1232, label %for.body.i1211, label %munge_cavlc_nnz_row.exit1234, !dbg !1529, !llvm.loop !1557

munge_cavlc_nnz_row.exit1234:                     ; preds = %for.inc.i1233, %if.then
  %26 = phi i32 [ %16, %if.then ], [ %24, %for.inc.i1233 ]
  %cmp.i = icmp sgt i32 %mb_y, 0, !dbg !1561
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1563

if.then.i:                                        ; preds = %munge_cavlc_nnz_row.exit1234
  %sub.i = add nsw i32 %mb_y, -1, !dbg !1564
  %idx.ext.i = sext i32 %26 to i64, !dbg !1565
  %add.ptr.i = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext.i, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %h, metadata !1496, metadata !DIExpression()) #9, !dbg !1566
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !1499, metadata !DIExpression()) #9, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1500, metadata !DIExpression()) #9, !dbg !1566
  %27 = load ptr, ptr %non_zero_count.i1197, align 16, !dbg !1568, !tbaa !1513
  %mul.i1162 = mul nsw i32 %26, %sub.i, !dbg !1569
  %idx.ext.i1163 = sext i32 %mul.i1162 to i64, !dbg !1570
  %add.ptr.i1164 = getelementptr inbounds [6 x i32], ptr %27, i64 %idx.ext.i1163, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1164, metadata !1501, metadata !DIExpression()) #9, !dbg !1566
  %28 = load ptr, ptr %mb_transform_size.i1203, align 8, !dbg !1571, !tbaa !1525
  %add.ptr6.i1166 = getelementptr inbounds i8, ptr %28, i64 %idx.ext.i1163, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %add.ptr6.i1166, metadata !1502, metadata !DIExpression()) #9, !dbg !1566
  call void @llvm.dbg.value(metadata i32 0, metadata !1503, metadata !DIExpression()) #9, !dbg !1573
  %cmp79.i1167 = icmp sgt i32 %26, 0, !dbg !1574
  br i1 %cmp79.i1167, label %for.body.i1173, label %if.end.i, !dbg !1575

for.body.i1173:                                   ; preds = %if.then.i, %for.inc.i1195
  %indvars.iv.i1168 = phi i64 [ %indvars.iv.next.i1192, %for.inc.i1195 ], [ 0, %if.then.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1168, metadata !1503, metadata !DIExpression()) #9, !dbg !1573
  %add.ptr10.i1169 = getelementptr inbounds [16 x i8], ptr %add.ptr.i, i64 %indvars.iv.i1168, !dbg !1576
  %add.ptr12.i1170 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1164, i64 %indvars.iv.i1168, !dbg !1577
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1169, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1170, i64 16, i1 false) #9, !dbg !1578
  %arrayidx.i1171 = getelementptr inbounds i8, ptr %add.ptr6.i1166, i64 %indvars.iv.i1168, !dbg !1579
  %29 = load i8, ptr %arrayidx.i1171, align 1, !dbg !1579, !tbaa !1534
  %tobool.not.i1172 = icmp eq i8 %29, 0, !dbg !1579
  br i1 %tobool.not.i1172, label %for.inc.i1195, label %if.then.i1191, !dbg !1580

if.then.i1191:                                    ; preds = %for.body.i1173
  %30 = load i32, ptr %add.ptr12.i1170, align 4, !dbg !1581, !tbaa !1465
  %arrayidx18.i1174 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1170, i64 0, i64 1, !dbg !1582
  %31 = load i32, ptr %arrayidx18.i1174, align 4, !dbg !1582, !tbaa !1465
  %or.i1175 = or i32 %31, %30, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %or.i1175, metadata !1505, metadata !DIExpression()) #9, !dbg !1584
  %conv19.i1176 = and i32 %or.i1175, 65535, !dbg !1585
  %tobool20.not.i1177 = icmp eq i32 %conv19.i1176, 0, !dbg !1585
  %cond.i1178 = select i1 %tobool20.not.i1177, i32 0, i32 257, !dbg !1585
  %tobool21.not.i1179 = icmp ult i32 %or.i1175, 65536, !dbg !1586
  %cond22.i1180 = select i1 %tobool21.not.i1179, i32 0, i32 16842752, !dbg !1586
  %add.i1181 = or i32 %cond.i1178, %cond22.i1180, !dbg !1587
  store i32 %add.i1181, ptr %arrayidx18.i1174, align 4, !dbg !1588, !tbaa !1465
  store i32 %add.i1181, ptr %add.ptr12.i1170, align 4, !dbg !1589, !tbaa !1465
  %arrayidx31.i1182 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1170, i64 0, i64 2, !dbg !1590
  %32 = load i32, ptr %arrayidx31.i1182, align 4, !dbg !1590, !tbaa !1465
  %arrayidx34.i1183 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1170, i64 0, i64 3, !dbg !1591
  %33 = load i32, ptr %arrayidx34.i1183, align 4, !dbg !1591, !tbaa !1465
  %or35.i1184 = or i32 %33, %32, !dbg !1592
  call void @llvm.dbg.value(metadata i32 %or35.i1184, metadata !1505, metadata !DIExpression()) #9, !dbg !1584
  %conv37.i1185 = and i32 %or35.i1184, 65535, !dbg !1593
  %tobool38.not.i1186 = icmp eq i32 %conv37.i1185, 0, !dbg !1593
  %cond39.i1187 = select i1 %tobool38.not.i1186, i32 0, i32 257, !dbg !1593
  %tobool41.not.i1188 = icmp ult i32 %or35.i1184, 65536, !dbg !1594
  %cond42.i1189 = select i1 %tobool41.not.i1188, i32 0, i32 16842752, !dbg !1594
  %add43.i1190 = or i32 %cond39.i1187, %cond42.i1189, !dbg !1595
  store i32 %add43.i1190, ptr %arrayidx34.i1183, align 4, !dbg !1596, !tbaa !1465
  store i32 %add43.i1190, ptr %arrayidx31.i1182, align 4, !dbg !1597, !tbaa !1465
  br label %for.inc.i1195, !dbg !1598

for.inc.i1195:                                    ; preds = %if.then.i1191, %for.body.i1173
  %indvars.iv.next.i1192 = add nuw nsw i64 %indvars.iv.i1168, 1, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1192, metadata !1503, metadata !DIExpression()) #9, !dbg !1573
  %34 = load ptr, ptr %sps.i1198, align 16, !dbg !1600, !tbaa !1515
  %i_mb_width8.i1193 = getelementptr inbounds %struct.x264_sps_t, ptr %34, i64 0, i32 16, !dbg !1601
  %35 = load i32, ptr %i_mb_width8.i1193, align 4, !dbg !1601, !tbaa !1517
  %36 = sext i32 %35 to i64, !dbg !1574
  %cmp.i1194 = icmp slt i64 %indvars.iv.next.i1192, %36, !dbg !1574
  br i1 %cmp.i1194, label %for.body.i1173, label %if.end.i, !dbg !1575, !llvm.loop !1602

if.end.i:                                         ; preds = %for.inc.i1195, %if.then.i, %munge_cavlc_nnz_row.exit1234
  %37 = phi i32 [ %26, %if.then.i ], [ %26, %munge_cavlc_nnz_row.exit1234 ], [ %35, %for.inc.i1195 ]
  %38 = load i32, ptr %b_mbaff, align 4, !dbg !1604, !tbaa !1425
  %tobool.not.i = icmp eq i32 %38, 0, !dbg !1606
  br i1 %tobool.not.i, label %if.end, label %if.then1.i, !dbg !1607

if.then1.i:                                       ; preds = %if.end.i
  %add.i = add nsw i32 %mb_y, 1, !dbg !1608
  %mul.i = shl nsw i32 %37, 1, !dbg !1610
  %idx.ext4.i = sext i32 %mul.i to i64, !dbg !1611
  %add.ptr5.i = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext4.i, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %h, metadata !1496, metadata !DIExpression()) #9, !dbg !1612
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1499, metadata !DIExpression()) #9, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %add.ptr5.i, metadata !1500, metadata !DIExpression()) #9, !dbg !1612
  %39 = load ptr, ptr %non_zero_count.i1197, align 16, !dbg !1614, !tbaa !1513
  %mul.i1124 = mul nsw i32 %37, %add.i, !dbg !1615
  %idx.ext.i1125 = sext i32 %mul.i1124 to i64, !dbg !1616
  %add.ptr.i1126 = getelementptr inbounds [6 x i32], ptr %39, i64 %idx.ext.i1125, !dbg !1616
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1126, metadata !1501, metadata !DIExpression()) #9, !dbg !1612
  %40 = load ptr, ptr %mb_transform_size.i1203, align 8, !dbg !1617, !tbaa !1525
  %add.ptr6.i1128 = getelementptr inbounds i8, ptr %40, i64 %idx.ext.i1125, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %add.ptr6.i1128, metadata !1502, metadata !DIExpression()) #9, !dbg !1612
  call void @llvm.dbg.value(metadata i32 0, metadata !1503, metadata !DIExpression()) #9, !dbg !1619
  %cmp79.i1129 = icmp sgt i32 %37, 0, !dbg !1620
  br i1 %cmp79.i1129, label %for.body.i1135, label %munge_cavlc_nnz_row.exit1158, !dbg !1621

for.body.i1135:                                   ; preds = %if.then1.i, %for.inc.i1157
  %indvars.iv.i1130 = phi i64 [ %indvars.iv.next.i1154, %for.inc.i1157 ], [ 0, %if.then1.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1130, metadata !1503, metadata !DIExpression()) #9, !dbg !1619
  %add.ptr10.i1131 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i, i64 %indvars.iv.i1130, !dbg !1622
  %add.ptr12.i1132 = getelementptr inbounds [6 x i32], ptr %add.ptr.i1126, i64 %indvars.iv.i1130, !dbg !1623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i1131, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i1132, i64 16, i1 false) #9, !dbg !1624
  %arrayidx.i1133 = getelementptr inbounds i8, ptr %add.ptr6.i1128, i64 %indvars.iv.i1130, !dbg !1625
  %41 = load i8, ptr %arrayidx.i1133, align 1, !dbg !1625, !tbaa !1534
  %tobool.not.i1134 = icmp eq i8 %41, 0, !dbg !1625
  br i1 %tobool.not.i1134, label %for.inc.i1157, label %if.then.i1153, !dbg !1626

if.then.i1153:                                    ; preds = %for.body.i1135
  %42 = load i32, ptr %add.ptr12.i1132, align 4, !dbg !1627, !tbaa !1465
  %arrayidx18.i1136 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1132, i64 0, i64 1, !dbg !1628
  %43 = load i32, ptr %arrayidx18.i1136, align 4, !dbg !1628, !tbaa !1465
  %or.i1137 = or i32 %43, %42, !dbg !1629
  call void @llvm.dbg.value(metadata i32 %or.i1137, metadata !1505, metadata !DIExpression()) #9, !dbg !1630
  %conv19.i1138 = and i32 %or.i1137, 65535, !dbg !1631
  %tobool20.not.i1139 = icmp eq i32 %conv19.i1138, 0, !dbg !1631
  %cond.i1140 = select i1 %tobool20.not.i1139, i32 0, i32 257, !dbg !1631
  %tobool21.not.i1141 = icmp ult i32 %or.i1137, 65536, !dbg !1632
  %cond22.i1142 = select i1 %tobool21.not.i1141, i32 0, i32 16842752, !dbg !1632
  %add.i1143 = or i32 %cond.i1140, %cond22.i1142, !dbg !1633
  store i32 %add.i1143, ptr %arrayidx18.i1136, align 4, !dbg !1634, !tbaa !1465
  store i32 %add.i1143, ptr %add.ptr12.i1132, align 4, !dbg !1635, !tbaa !1465
  %arrayidx31.i1144 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1132, i64 0, i64 2, !dbg !1636
  %44 = load i32, ptr %arrayidx31.i1144, align 4, !dbg !1636, !tbaa !1465
  %arrayidx34.i1145 = getelementptr inbounds [6 x i32], ptr %add.ptr12.i1132, i64 0, i64 3, !dbg !1637
  %45 = load i32, ptr %arrayidx34.i1145, align 4, !dbg !1637, !tbaa !1465
  %or35.i1146 = or i32 %45, %44, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %or35.i1146, metadata !1505, metadata !DIExpression()) #9, !dbg !1630
  %conv37.i1147 = and i32 %or35.i1146, 65535, !dbg !1639
  %tobool38.not.i1148 = icmp eq i32 %conv37.i1147, 0, !dbg !1639
  %cond39.i1149 = select i1 %tobool38.not.i1148, i32 0, i32 257, !dbg !1639
  %tobool41.not.i1150 = icmp ult i32 %or35.i1146, 65536, !dbg !1640
  %cond42.i1151 = select i1 %tobool41.not.i1150, i32 0, i32 16842752, !dbg !1640
  %add43.i1152 = or i32 %cond39.i1149, %cond42.i1151, !dbg !1641
  store i32 %add43.i1152, ptr %arrayidx34.i1145, align 4, !dbg !1642, !tbaa !1465
  store i32 %add43.i1152, ptr %arrayidx31.i1144, align 4, !dbg !1643, !tbaa !1465
  br label %for.inc.i1157, !dbg !1644

for.inc.i1157:                                    ; preds = %if.then.i1153, %for.body.i1135
  %indvars.iv.next.i1154 = add nuw nsw i64 %indvars.iv.i1130, 1, !dbg !1645
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1154, metadata !1503, metadata !DIExpression()) #9, !dbg !1619
  %46 = load ptr, ptr %sps.i1198, align 16, !dbg !1646, !tbaa !1515
  %i_mb_width8.i1155 = getelementptr inbounds %struct.x264_sps_t, ptr %46, i64 0, i32 16, !dbg !1647
  %47 = load i32, ptr %i_mb_width8.i1155, align 4, !dbg !1647, !tbaa !1517
  %48 = sext i32 %47 to i64, !dbg !1620
  %cmp.i1156 = icmp slt i64 %indvars.iv.next.i1154, %48, !dbg !1620
  br i1 %cmp.i1156, label %for.body.i1135, label %munge_cavlc_nnz_row.exit1158, !dbg !1621, !llvm.loop !1648

munge_cavlc_nnz_row.exit1158:                     ; preds = %for.inc.i1157, %if.then1.i
  %49 = phi i32 [ %37, %if.then1.i ], [ %47, %for.inc.i1157 ]
  br i1 %cmp.i, label %if.then7.i, label %if.end, !dbg !1650

if.then7.i:                                       ; preds = %munge_cavlc_nnz_row.exit1158
  %sub8.i = add nsw i32 %mb_y, -2, !dbg !1651
  %mul11.i = mul nsw i32 %49, 3, !dbg !1653
  %idx.ext12.i = sext i32 %mul11.i to i64, !dbg !1654
  %add.ptr13.i = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext12.i, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %h, metadata !1496, metadata !DIExpression()) #9, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %sub8.i, metadata !1499, metadata !DIExpression()) #9, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %add.ptr13.i, metadata !1500, metadata !DIExpression()) #9, !dbg !1655
  %50 = load ptr, ptr %non_zero_count.i1197, align 16, !dbg !1657, !tbaa !1513
  %mul.i1112 = mul nsw i32 %49, %sub8.i, !dbg !1658
  %idx.ext.i1113 = sext i32 %mul.i1112 to i64, !dbg !1659
  %add.ptr.i1114 = getelementptr inbounds [6 x i32], ptr %50, i64 %idx.ext.i1113, !dbg !1659
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1114, metadata !1501, metadata !DIExpression()) #9, !dbg !1655
  %51 = load ptr, ptr %mb_transform_size.i1203, align 8, !dbg !1660, !tbaa !1525
  %add.ptr6.i = getelementptr inbounds i8, ptr %51, i64 %idx.ext.i1113, !dbg !1661
  call void @llvm.dbg.value(metadata ptr %add.ptr6.i, metadata !1502, metadata !DIExpression()) #9, !dbg !1655
  call void @llvm.dbg.value(metadata i32 0, metadata !1503, metadata !DIExpression()) #9, !dbg !1662
  %cmp79.i = icmp sgt i32 %49, 0, !dbg !1663
  br i1 %cmp79.i, label %for.body.i, label %if.end, !dbg !1664

for.body.i:                                       ; preds = %if.then7.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %if.then7.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1503, metadata !DIExpression()) #9, !dbg !1662
  %add.ptr10.i = getelementptr inbounds [16 x i8], ptr %add.ptr13.i, i64 %indvars.iv.i, !dbg !1665
  %add.ptr12.i = getelementptr inbounds [6 x i32], ptr %add.ptr.i1114, i64 %indvars.iv.i, !dbg !1666
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr10.i, ptr noundef nonnull align 4 dereferenceable(16) %add.ptr12.i, i64 16, i1 false) #9, !dbg !1667
  %arrayidx.i1115 = getelementptr inbounds i8, ptr %add.ptr6.i, i64 %indvars.iv.i, !dbg !1668
  %52 = load i8, ptr %arrayidx.i1115, align 1, !dbg !1668, !tbaa !1534
  %tobool.not.i1116 = icmp eq i8 %52, 0, !dbg !1668
  br i1 %tobool.not.i1116, label %for.inc.i, label %if.then.i1119, !dbg !1669

if.then.i1119:                                    ; preds = %for.body.i
  %53 = load i32, ptr %add.ptr12.i, align 4, !dbg !1670, !tbaa !1465
  %arrayidx18.i = getelementptr inbounds [6 x i32], ptr %add.ptr12.i, i64 0, i64 1, !dbg !1671
  %54 = load i32, ptr %arrayidx18.i, align 4, !dbg !1671, !tbaa !1465
  %or.i = or i32 %54, %53, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !1505, metadata !DIExpression()) #9, !dbg !1673
  %conv19.i1117 = and i32 %or.i, 65535, !dbg !1674
  %tobool20.not.i = icmp eq i32 %conv19.i1117, 0, !dbg !1674
  %cond.i = select i1 %tobool20.not.i, i32 0, i32 257, !dbg !1674
  %tobool21.not.i = icmp ult i32 %or.i, 65536, !dbg !1675
  %cond22.i = select i1 %tobool21.not.i, i32 0, i32 16842752, !dbg !1675
  %add.i1118 = or i32 %cond.i, %cond22.i, !dbg !1676
  store i32 %add.i1118, ptr %arrayidx18.i, align 4, !dbg !1677, !tbaa !1465
  store i32 %add.i1118, ptr %add.ptr12.i, align 4, !dbg !1678, !tbaa !1465
  %arrayidx31.i = getelementptr inbounds [6 x i32], ptr %add.ptr12.i, i64 0, i64 2, !dbg !1679
  %55 = load i32, ptr %arrayidx31.i, align 4, !dbg !1679, !tbaa !1465
  %arrayidx34.i = getelementptr inbounds [6 x i32], ptr %add.ptr12.i, i64 0, i64 3, !dbg !1680
  %56 = load i32, ptr %arrayidx34.i, align 4, !dbg !1680, !tbaa !1465
  %or35.i = or i32 %56, %55, !dbg !1681
  call void @llvm.dbg.value(metadata i32 %or35.i, metadata !1505, metadata !DIExpression()) #9, !dbg !1673
  %conv37.i = and i32 %or35.i, 65535, !dbg !1682
  %tobool38.not.i = icmp eq i32 %conv37.i, 0, !dbg !1682
  %cond39.i = select i1 %tobool38.not.i, i32 0, i32 257, !dbg !1682
  %tobool41.not.i = icmp ult i32 %or35.i, 65536, !dbg !1683
  %cond42.i = select i1 %tobool41.not.i, i32 0, i32 16842752, !dbg !1683
  %add43.i = or i32 %cond39.i, %cond42.i, !dbg !1684
  store i32 %add43.i, ptr %arrayidx34.i, align 4, !dbg !1685, !tbaa !1465
  store i32 %add43.i, ptr %arrayidx31.i, align 4, !dbg !1686, !tbaa !1465
  br label %for.inc.i, !dbg !1687

for.inc.i:                                        ; preds = %if.then.i1119, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1503, metadata !DIExpression()) #9, !dbg !1662
  %57 = load ptr, ptr %sps.i1198, align 16, !dbg !1689, !tbaa !1515
  %i_mb_width8.i = getelementptr inbounds %struct.x264_sps_t, ptr %57, i64 0, i32 16, !dbg !1690
  %58 = load i32, ptr %i_mb_width8.i, align 4, !dbg !1690, !tbaa !1517
  %59 = sext i32 %58 to i64, !dbg !1663
  %cmp.i1120 = icmp slt i64 %indvars.iv.next.i, %59, !dbg !1663
  br i1 %cmp.i1120, label %for.body.i, label %if.end, !dbg !1664, !llvm.loop !1691

if.end:                                           ; preds = %for.inc.i, %munge_cavlc_nnz_row.exit1158, %if.end.i, %if.then7.i, %land.lhs.true, %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !1397, metadata !DIExpression()), !dbg !1693
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !1388, metadata !DIExpression()), !dbg !1423
  %60 = load ptr, ptr %sps, align 16, !dbg !1694, !tbaa !1515
  %i_mb_width1293 = getelementptr inbounds %struct.x264_sps_t, ptr %60, i64 0, i32 16, !dbg !1695
  %61 = load i32, ptr %i_mb_width1293, align 4, !dbg !1695, !tbaa !1517
  %cmp221294 = icmp sgt i32 %61, 0, !dbg !1696
  br i1 %cmp221294, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !1697

for.body.lr.ph:                                   ; preds = %if.end
  %i_mb_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6
  %mb_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50
  %type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38
  %mul = shl i32 %8, 4
  %mul69 = shl i32 %9, 3
  %tobool86.not = icmp eq i32 %0, 0
  %mul91 = mul nsw i32 %8, 15
  %idx.ext92 = sext i32 %mul91 to i64
  %idx.neg = sub nsw i64 0, %idx.ext92
  %mul94 = mul nsw i32 %9, 7
  %idx.ext95 = sext i32 %mul94 to i64
  %idx.neg96 = sub nsw i64 0, %idx.ext95
  %qp104 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 40
  %chroma_qp_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 39
  %i_neighbour = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 24
  %i_mb_left_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34
  %loopf207 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74
  %62 = getelementptr i8, ptr %h, i64 13888
  %63 = getelementptr i8, ptr %h, i64 13892
  %arrayidx30.i = getelementptr inbounds [4 x i8], ptr %tc.i, i64 0, i64 1
  %arrayidx40.i = getelementptr inbounds [4 x i8], ptr %tc.i, i64 0, i64 2
  %arrayidx50.i = getelementptr inbounds [4 x i8], ptr %tc.i, i64 0, i64 3
  %deblock_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 1
  %arrayidx30.i768 = getelementptr inbounds [4 x i8], ptr %tc.i749, i64 0, i64 1
  %arrayidx40.i771 = getelementptr inbounds [4 x i8], ptr %tc.i749, i64 0, i64 2
  %arrayidx50.i773 = getelementptr inbounds [4 x i8], ptr %tc.i749, i64 0, i64 3
  %deblock_luma_intra = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 2
  %deblock_chroma_intra = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 3
  %arrayidx30.i795 = getelementptr inbounds [4 x i8], ptr %tc.i776, i64 0, i64 1
  %arrayidx40.i798 = getelementptr inbounds [4 x i8], ptr %tc.i776, i64 0, i64 2
  %arrayidx50.i800 = getelementptr inbounds [4 x i8], ptr %tc.i776, i64 0, i64 3
  %arrayidx30.i822 = getelementptr inbounds [4 x i8], ptr %tc.i803, i64 0, i64 1
  %arrayidx40.i825 = getelementptr inbounds [4 x i8], ptr %tc.i803, i64 0, i64 2
  %arrayidx50.i827 = getelementptr inbounds [4 x i8], ptr %tc.i803, i64 0, i64 3
  %arrayidx30.i851 = getelementptr inbounds [4 x i8], ptr %tc.i830, i64 0, i64 1
  %arrayidx40.i855 = getelementptr inbounds [4 x i8], ptr %tc.i830, i64 0, i64 2
  %arrayidx50.i858 = getelementptr inbounds [4 x i8], ptr %tc.i830, i64 0, i64 3
  %arrayidx30.i880 = getelementptr inbounds [4 x i8], ptr %tc.i861, i64 0, i64 1
  %arrayidx40.i883 = getelementptr inbounds [4 x i8], ptr %tc.i861, i64 0, i64 2
  %arrayidx50.i885 = getelementptr inbounds [4 x i8], ptr %tc.i861, i64 0, i64 3
  %i_mb_top_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35
  %arrayidx379 = getelementptr inbounds [2 x ptr], ptr %loopf207, i64 0, i64 1
  %arrayidx30.i935 = getelementptr inbounds [4 x i8], ptr %tc.i916, i64 0, i64 1
  %arrayidx40.i938 = getelementptr inbounds [4 x i8], ptr %tc.i916, i64 0, i64 2
  %arrayidx50.i940 = getelementptr inbounds [4 x i8], ptr %tc.i916, i64 0, i64 3
  %arrayidx391 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 1, i64 1
  %arrayidx30.i964 = getelementptr inbounds [4 x i8], ptr %tc.i943, i64 0, i64 1
  %arrayidx40.i968 = getelementptr inbounds [4 x i8], ptr %tc.i943, i64 0, i64 2
  %arrayidx50.i971 = getelementptr inbounds [4 x i8], ptr %tc.i943, i64 0, i64 3
  %arrayidx348 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 2, i64 1
  %arrayidx360 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 74, i32 3, i64 1
  %mul401 = shl nsw i32 %shl, 2
  %idx.ext402 = sext i32 %mul401 to i64
  %arrayidx30.i993 = getelementptr inbounds [4 x i8], ptr %tc.i974, i64 0, i64 1
  %arrayidx40.i996 = getelementptr inbounds [4 x i8], ptr %tc.i974, i64 0, i64 2
  %arrayidx50.i998 = getelementptr inbounds [4 x i8], ptr %tc.i974, i64 0, i64 3
  %mul414 = shl nsw i32 %shl, 3
  %idx.ext415 = sext i32 %mul414 to i64
  %arrayidx30.i1020 = getelementptr inbounds [4 x i8], ptr %tc.i1001, i64 0, i64 1
  %arrayidx40.i1023 = getelementptr inbounds [4 x i8], ptr %tc.i1001, i64 0, i64 2
  %arrayidx50.i1025 = getelementptr inbounds [4 x i8], ptr %tc.i1001, i64 0, i64 3
  %mul423 = shl nsw i32 %shl19, 2
  %idx.ext424 = sext i32 %mul423 to i64
  %arrayidx30.i1049 = getelementptr inbounds [4 x i8], ptr %tc.i1028, i64 0, i64 1
  %arrayidx40.i1053 = getelementptr inbounds [4 x i8], ptr %tc.i1028, i64 0, i64 2
  %arrayidx50.i1056 = getelementptr inbounds [4 x i8], ptr %tc.i1028, i64 0, i64 3
  %mul440 = mul nsw i32 %shl, 12
  %idx.ext441 = sext i32 %mul440 to i64
  %arrayidx30.i1078 = getelementptr inbounds [4 x i8], ptr %tc.i1059, i64 0, i64 1
  %arrayidx40.i1081 = getelementptr inbounds [4 x i8], ptr %tc.i1059, i64 0, i64 2
  %arrayidx50.i1083 = getelementptr inbounds [4 x i8], ptr %tc.i1059, i64 0, i64 3
  %neg = xor i32 %0, -1
  br label %for.body, !dbg !1697

for.cond.cleanup:                                 ; preds = %if.end452, %if.end
  %64 = phi ptr [ %60, %if.end ], [ %322, %if.end452 ]
  %mb_y.addr.0.lcssa = phi i32 [ %mb_y, %if.end ], [ %xor, %if.end452 ]
  %.lcssa = phi i32 [ %61, %if.end ], [ %323, %if.end452 ], !dbg !1695
  %65 = load ptr, ptr %pps, align 16, !dbg !1698, !tbaa !1473
  %b_cabac456 = getelementptr inbounds %struct.x264_pps_t, ptr %65, i64 0, i32 2, !dbg !1700
  %66 = load i32, ptr %b_cabac456, align 8, !dbg !1700, !tbaa !1475
  %tobool457.not = icmp eq i32 %66, 0, !dbg !1701
  br i1 %tobool457.not, label %land.lhs.true458, label %if.end463, !dbg !1702

for.body:                                         ; preds = %for.body.lr.ph, %if.end452
  %mb_y.addr.01296 = phi i32 [ %mb_y, %for.body.lr.ph ], [ %xor, %if.end452 ]
  %mb_x.01295 = phi i32 [ 0, %for.body.lr.ph ], [ %add454, %if.end452 ]
  call void @llvm.dbg.value(metadata i32 %mb_y.addr.01296, metadata !1388, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata i32 %mb_x.01295, metadata !1397, metadata !DIExpression()), !dbg !1693
  %67 = load ptr, ptr %fdec, align 16, !dbg !1703, !tbaa !1462
  call void @x264_prefetch_fenc(ptr noundef nonnull %h, ptr noundef %67, i32 noundef %mb_x.01295, i32 noundef %mb_y.addr.01296) #9, !dbg !1704
  call void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef nonnull %h, i32 noundef %mb_x.01295, i32 noundef %mb_y.addr.01296) #9, !dbg !1705
  %68 = load i32, ptr %i_mb_xy, align 8, !dbg !1706, !tbaa !1707
  call void @llvm.dbg.value(metadata i32 %68, metadata !1399, metadata !DIExpression()), !dbg !1708
  %69 = load ptr, ptr %mb_transform_size, align 8, !dbg !1709, !tbaa !1525
  %idxprom = sext i32 %68 to i64, !dbg !1710
  %arrayidx27 = getelementptr inbounds i8, ptr %69, i64 %idxprom, !dbg !1710
  %70 = load i8, ptr %arrayidx27, align 1, !dbg !1710, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %70, metadata !1402, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1708
  %71 = load ptr, ptr %type, align 8, !dbg !1711, !tbaa !1712
  %arrayidx30 = getelementptr inbounds i8, ptr %71, i64 %idxprom, !dbg !1711
  %72 = load i8, ptr %arrayidx30, align 1, !dbg !1711, !tbaa !1534
  %switch.selectcmp = icmp ult i8 %72, 4, !dbg !1711
  call void @llvm.dbg.value(metadata i1 %switch.selectcmp, metadata !1403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1708
  %and = and i32 %mb_y.addr.01296, %0, !dbg !1713
  %idxprom56 = sext i32 %and to i64, !dbg !1714
  %arrayidx57 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 63, i64 %idxprom56, !dbg !1714
  %73 = load ptr, ptr %arrayidx57, align 8, !dbg !1714, !tbaa !1715
  %idxprom58 = zext i32 %mb_x.01295 to i64, !dbg !1714
  %arrayidx59 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %73, i64 %idxprom58, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %arrayidx59, metadata !1404, metadata !DIExpression()), !dbg !1708
  %74 = load ptr, ptr %fdec, align 16, !dbg !1716, !tbaa !1462
  %plane = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 30, !dbg !1717
  %75 = load ptr, ptr %plane, align 8, !dbg !1718, !tbaa !1715
  %mul62 = mul i32 %mul, %mb_y.addr.01296, !dbg !1719
  %idx.ext = sext i32 %mul62 to i64, !dbg !1720
  %add.ptr = getelementptr inbounds i8, ptr %75, i64 %idx.ext, !dbg !1720
  %mul63 = shl nsw i32 %mb_x.01295, 4, !dbg !1721
  %idx.ext64 = zext i32 %mul63 to i64, !dbg !1722
  %add.ptr65 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext64, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %add.ptr65, metadata !1405, metadata !DIExpression()), !dbg !1708
  %arrayidx68 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 30, i64 1, !dbg !1723
  %76 = load ptr, ptr %arrayidx68, align 8, !dbg !1723, !tbaa !1715
  %mul70 = mul i32 %mul69, %mb_y.addr.01296, !dbg !1724
  %idx.ext71 = sext i32 %mul70 to i64, !dbg !1725
  %add.ptr72 = getelementptr inbounds i8, ptr %76, i64 %idx.ext71, !dbg !1725
  %mul73 = shl nsw i32 %mb_x.01295, 3, !dbg !1726
  %idx.ext74 = zext i32 %mul73 to i64, !dbg !1727
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr72, i64 %idx.ext74, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %add.ptr75, metadata !1406, metadata !DIExpression()), !dbg !1708
  %arrayidx78 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 30, i64 2, !dbg !1728
  %77 = load ptr, ptr %arrayidx78, align 8, !dbg !1728, !tbaa !1715
  %add.ptr82 = getelementptr inbounds i8, ptr %77, i64 %idx.ext71, !dbg !1729
  %add.ptr85 = getelementptr inbounds i8, ptr %add.ptr82, i64 %idx.ext74, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %add.ptr85, metadata !1407, metadata !DIExpression()), !dbg !1708
  %and88 = and i32 %mb_y.addr.01296, 1
  %tobool89.not = icmp eq i32 %and88, 0
  %or.cond680 = or i1 %tobool86.not, %tobool89.not, !dbg !1731
  br i1 %or.cond680, label %if.end102, label %if.then90, !dbg !1731

if.then90:                                        ; preds = %for.body
  %add.ptr93 = getelementptr inbounds i8, ptr %add.ptr65, i64 %idx.neg, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %add.ptr93, metadata !1405, metadata !DIExpression()), !dbg !1708
  %add.ptr97 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.neg96, !dbg !1735
  call void @llvm.dbg.value(metadata ptr %add.ptr97, metadata !1406, metadata !DIExpression()), !dbg !1708
  %add.ptr101 = getelementptr inbounds i8, ptr %add.ptr85, i64 %idx.neg96, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %add.ptr101, metadata !1407, metadata !DIExpression()), !dbg !1708
  br label %if.end102, !dbg !1737

if.end102:                                        ; preds = %if.then90, %for.body
  %pixv.0 = phi ptr [ %add.ptr101, %if.then90 ], [ %add.ptr85, %for.body ], !dbg !1708
  %pixu.0 = phi ptr [ %add.ptr97, %if.then90 ], [ %add.ptr75, %for.body ], !dbg !1708
  %pixy.0 = phi ptr [ %add.ptr93, %if.then90 ], [ %add.ptr65, %for.body ], !dbg !1708
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1405, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1406, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1407, metadata !DIExpression()), !dbg !1708
  %78 = load ptr, ptr %qp104, align 8, !dbg !1738, !tbaa !1739
  %arrayidx106 = getelementptr inbounds i8, ptr %78, i64 %idxprom, !dbg !1740
  %79 = load i8, ptr %arrayidx106, align 1, !dbg !1740, !tbaa !1534
  %conv107 = sext i8 %79 to i32, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1408, metadata !DIExpression()), !dbg !1708
  %80 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1741, !tbaa !1742
  %idxprom108 = sext i8 %79 to i64, !dbg !1743
  %arrayidx109 = getelementptr inbounds i8, ptr %80, i64 %idxprom108, !dbg !1743
  %81 = load i8, ptr %arrayidx109, align 1, !dbg !1743, !tbaa !1534
  %conv110 = zext i8 %81 to i32, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %conv110, metadata !1409, metadata !DIExpression()), !dbg !1708
  %cmp116 = icmp eq i8 %72, 6, !dbg !1744
  %cmp119 = icmp sge i32 %sub15, %conv107
  %spec.select = select i1 %cmp116, i1 true, i1 %cmp119, !dbg !1745
  call void @llvm.dbg.value(metadata i1 %spec.select, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1708
  %82 = load i32, ptr %i_neighbour, align 8, !dbg !1746, !tbaa !1747
  %and124 = and i32 %82, 1, !dbg !1748
  %tobool125.not = icmp eq i32 %and124, 0, !dbg !1748
  br i1 %tobool125.not, label %if.end219, label %if.then126, !dbg !1749

if.then126:                                       ; preds = %if.end102
  %83 = load i32, ptr %i_mb_left_xy, align 8, !dbg !1750, !tbaa !1751
  %idxprom130 = sext i32 %83 to i64, !dbg !1752
  %arrayidx131 = getelementptr inbounds i8, ptr %78, i64 %idxprom130, !dbg !1752
  %84 = load i8, ptr %arrayidx131, align 1, !dbg !1752, !tbaa !1534
  %conv132 = sext i8 %84 to i32, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %conv132, metadata !1411, metadata !DIExpression()), !dbg !1753
  %add = add nsw i32 %conv107, 1, !dbg !1754
  %add133 = add nsw i32 %add, %conv132, !dbg !1755
  %shr = ashr i32 %add133, 1, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1414, metadata !DIExpression()), !dbg !1753
  %idxprom139 = sext i8 %84 to i64, !dbg !1757
  %arrayidx140 = getelementptr inbounds i8, ptr %80, i64 %idxprom139, !dbg !1757
  %85 = load i8, ptr %arrayidx140, align 1, !dbg !1757, !tbaa !1534
  %conv141 = zext i8 %85 to i32, !dbg !1757
  %add142 = add nuw nsw i32 %conv110, 1, !dbg !1758
  %add143 = add nuw nsw i32 %add142, %conv141, !dbg !1759
  %86 = lshr i32 %add143, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %86, metadata !1415, metadata !DIExpression()), !dbg !1753
  %arrayidx150 = getelementptr inbounds i8, ptr %71, i64 %idxprom130, !dbg !1761
  %87 = load i8, ptr %arrayidx150, align 1, !dbg !1761, !tbaa !1534
  %switch.selectcmp686 = icmp ult i8 %87, 4, !dbg !1761
  call void @llvm.dbg.value(metadata i1 %switch.selectcmp686, metadata !1416, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1753
  %or.cond = select i1 %switch.selectcmp, i1 true, i1 %switch.selectcmp686, !dbg !1762
  br i1 %or.cond, label %do.body, label %do.body202, !dbg !1762

do.body:                                          ; preds = %if.then126
  %h.val = load i32, ptr %62, align 16, !dbg !1764, !tbaa !1456
  %h.val689 = load i32, ptr %63, align 4, !dbg !1764, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1766, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1771, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata ptr null, metadata !1772, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1773, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata ptr undef, metadata !1774, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1775, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata i32 0, metadata !1776, metadata !DIExpression()) #9, !dbg !1780
  call void @llvm.dbg.value(metadata ptr undef, metadata !1777, metadata !DIExpression()) #9, !dbg !1780
  %add.i720 = add nsw i32 %shr, 12, !dbg !1782
  %add1.i = add i32 %h.val, %add.i720, !dbg !1782
  %idxprom.i = sext i32 %add1.i to i64, !dbg !1782
  call void @llvm.dbg.value(metadata i8 undef, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1780
  %add4.i = add i32 %h.val689, %add.i720, !dbg !1783
  %idxprom5.i = sext i32 %add4.i to i64, !dbg !1783
  call void @llvm.dbg.value(metadata i8 undef, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1780
  %88 = add nsw i64 %idxprom.i, -28, !dbg !1784
  %tobool.i = icmp ult i64 %88, 48, !dbg !1784
  %89 = add nsw i64 %idxprom5.i, -28
  %tobool8.i = icmp ult i64 %89, 48
  %or.cond.i = select i1 %tobool.i, i1 %tobool8.i, i1 false, !dbg !1786
  br i1 %or.cond.i, label %if.end.i721, label %deblock_edge_intra.exit, !dbg !1786

if.end.i721:                                      ; preds = %do.body
  %arrayidx6.i = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i, !dbg !1783
  %90 = load i8, ptr %arrayidx6.i, align 1, !dbg !1783, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %90, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1780
  %conv7.i = zext i8 %90 to i32, !dbg !1783
  call void @llvm.dbg.value(metadata i32 %conv7.i, metadata !1779, metadata !DIExpression()) #9, !dbg !1780
  %arrayidx.i = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i, !dbg !1782
  %91 = load i8, ptr %arrayidx.i, align 1, !dbg !1782, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %91, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1780
  %conv.i = zext i8 %91 to i32, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !1778, metadata !DIExpression()) #9, !dbg !1780
  %92 = load ptr, ptr %deblock_luma_intra, align 8, !dbg !1764, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr %92, metadata !1777, metadata !DIExpression()) #9, !dbg !1780
  call void %92(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i, i32 noundef %conv7.i) #9, !dbg !1787
  %h.val690.pre = load i32, ptr %62, align 16, !dbg !1788, !tbaa !1456
  %h.val691.pre = load i32, ptr %63, align 4, !dbg !1788, !tbaa !1457
  br label %deblock_edge_intra.exit

deblock_edge_intra.exit:                          ; preds = %do.body, %if.end.i721
  %h.val691 = phi i32 [ %h.val689, %do.body ], [ %h.val691.pre, %if.end.i721 ], !dbg !1788
  %h.val690 = phi i32 [ %h.val, %do.body ], [ %h.val690.pre, %if.end.i721 ], !dbg !1788
  call void @llvm.dbg.value(metadata ptr undef, metadata !1766, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1771, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1772, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1773, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata ptr undef, metadata !1774, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %86, metadata !1775, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata i32 1, metadata !1776, metadata !DIExpression()) #9, !dbg !1790
  call void @llvm.dbg.value(metadata ptr undef, metadata !1777, metadata !DIExpression()) #9, !dbg !1790
  %add.i722 = add nuw nsw i32 %86, 12, !dbg !1792
  %add1.i723 = add i32 %h.val690, %add.i722, !dbg !1792
  %idxprom.i724 = sext i32 %add1.i723 to i64, !dbg !1792
  call void @llvm.dbg.value(metadata i8 undef, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1790
  %add4.i727 = add i32 %h.val691, %add.i722, !dbg !1793
  %idxprom5.i728 = sext i32 %add4.i727 to i64, !dbg !1793
  call void @llvm.dbg.value(metadata i8 undef, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1790
  %93 = add nsw i64 %idxprom.i724, -28, !dbg !1794
  %tobool.i731 = icmp ult i64 %93, 48, !dbg !1794
  %94 = add nsw i64 %idxprom5.i728, -28
  %tobool8.i732 = icmp ult i64 %94, 48
  %or.cond.i733 = select i1 %tobool.i731, i1 %tobool8.i732, i1 false, !dbg !1795
  br i1 %or.cond.i733, label %if.end.i734, label %if.end219, !dbg !1795

if.end.i734:                                      ; preds = %deblock_edge_intra.exit
  %arrayidx6.i729 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i728, !dbg !1793
  %95 = load i8, ptr %arrayidx6.i729, align 1, !dbg !1793, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %95, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1790
  %conv7.i730 = zext i8 %95 to i32, !dbg !1793
  call void @llvm.dbg.value(metadata i32 %conv7.i730, metadata !1779, metadata !DIExpression()) #9, !dbg !1790
  %arrayidx.i725 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i724, !dbg !1792
  %96 = load i8, ptr %arrayidx.i725, align 1, !dbg !1792, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %96, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1790
  %conv.i726 = zext i8 %96 to i32, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %conv.i726, metadata !1778, metadata !DIExpression()) #9, !dbg !1790
  %97 = load ptr, ptr %deblock_chroma_intra, align 8, !dbg !1788, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr %97, metadata !1777, metadata !DIExpression()) #9, !dbg !1790
  call void %97(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i726, i32 noundef %conv7.i730) #9, !dbg !1796
  call void %97(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i726, i32 noundef %conv7.i730) #9, !dbg !1797
  br label %if.end219, !dbg !1797

do.body202:                                       ; preds = %if.then126
  %98 = load ptr, ptr %loopf207, align 8, !dbg !1799, !tbaa !1715
  %h.val718 = load i32, ptr %62, align 16, !dbg !1799, !tbaa !1456
  %h.val719 = load i32, ptr %63, align 4, !dbg !1799, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1806, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %arrayidx59, metadata !1809, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1810, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata ptr %98, metadata !1812, metadata !DIExpression()) #9, !dbg !1817
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1817
  %add.i736 = add nsw i32 %shr, 12, !dbg !1819
  %add1.i737 = add i32 %h.val718, %add.i736, !dbg !1820
  %idxprom.i738 = sext i32 %add1.i737 to i64, !dbg !1820
  %arrayidx.i739 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i738, !dbg !1820
  %99 = load i8, ptr %arrayidx.i739, align 1, !dbg !1820, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %99, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1817
  %add4.i741 = add i32 %h.val719, %add.i736, !dbg !1821
  %idxprom5.i742 = sext i32 %add4.i741 to i64, !dbg !1821
  %arrayidx6.i743 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i742, !dbg !1821
  %100 = load i8, ptr %arrayidx6.i743, align 1, !dbg !1821, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %100, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1817
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i) #9, !dbg !1822
  call void @llvm.dbg.declare(metadata ptr %tc.i, metadata !1816, metadata !DIExpression()) #9, !dbg !1823
  %101 = load i32, ptr %arrayidx59, align 4, !dbg !1824, !tbaa !1534
  %tobool.i745 = icmp ne i32 %101, 0, !dbg !1824
  %102 = add nsw i64 %idxprom.i738, -28
  %tobool8.i746 = icmp ult i64 %102, 48
  %or.cond.i747 = select i1 %tobool.i745, i1 %tobool8.i746, i1 false, !dbg !1826
  %103 = add nsw i64 %idxprom5.i742, -28
  %tobool10.i = icmp ult i64 %103, 48
  %or.cond58.i = select i1 %or.cond.i747, i1 %tobool10.i, i1 false, !dbg !1826
  br i1 %or.cond58.i, label %if.end.i748, label %deblock_edge.exit, !dbg !1826

if.end.i748:                                      ; preds = %do.body202
  %conv7.i744 = zext i8 %100 to i32, !dbg !1821
  call void @llvm.dbg.value(metadata i32 %conv7.i744, metadata !1815, metadata !DIExpression()) #9, !dbg !1817
  %conv.i740 = zext i8 %99 to i32, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %conv.i740, metadata !1814, metadata !DIExpression()) #9, !dbg !1817
  %104 = lshr i32 %101, 24, !dbg !1826
  %105 = zext i32 %104 to i64, !dbg !1826
  %106 = lshr i32 %101, 16, !dbg !1826
  %107 = lshr i32 %101, 8, !dbg !1826
  %108 = and i32 %101, 255, !dbg !1827
  %idxprom15.i = zext i32 %108 to i64, !dbg !1827
  %arrayidx16.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i738, i64 %idxprom15.i, !dbg !1827
  %109 = load i8, ptr %arrayidx16.i, align 1, !dbg !1827, !tbaa !1534
  store i8 %109, ptr %tc.i, align 1, !dbg !1828, !tbaa !1534
  %110 = and i32 %107, 255, !dbg !1829
  %idxprom25.i = zext i32 %110 to i64, !dbg !1829
  %arrayidx26.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i738, i64 %idxprom25.i, !dbg !1829
  %111 = load i8, ptr %arrayidx26.i, align 1, !dbg !1829, !tbaa !1534
  store i8 %111, ptr %arrayidx30.i, align 1, !dbg !1830, !tbaa !1534
  %112 = and i32 %106, 255, !dbg !1831
  %idxprom35.i = zext i32 %112 to i64, !dbg !1831
  %arrayidx36.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i738, i64 %idxprom35.i, !dbg !1831
  %113 = load i8, ptr %arrayidx36.i, align 1, !dbg !1831, !tbaa !1534
  store i8 %113, ptr %arrayidx40.i, align 1, !dbg !1832, !tbaa !1534
  %arrayidx46.i = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i738, i64 %105, !dbg !1833
  %114 = load i8, ptr %arrayidx46.i, align 1, !dbg !1833, !tbaa !1534
  store i8 %114, ptr %arrayidx50.i, align 1, !dbg !1834, !tbaa !1534
  call void %98(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i740, i32 noundef %conv7.i744, ptr noundef nonnull %tc.i) #9, !dbg !1835
  %h.val716.pre = load i32, ptr %62, align 16, !dbg !1836, !tbaa !1456
  %h.val717.pre = load i32, ptr %63, align 4, !dbg !1836, !tbaa !1457
  br label %deblock_edge.exit

deblock_edge.exit:                                ; preds = %do.body202, %if.end.i748
  %h.val717 = phi i32 [ %h.val719, %do.body202 ], [ %h.val717.pre, %if.end.i748 ], !dbg !1836
  %h.val716 = phi i32 [ %h.val718, %do.body202 ], [ %h.val716.pre, %if.end.i748 ], !dbg !1836
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i) #9, !dbg !1838
  %115 = load ptr, ptr %deblock_chroma, align 8, !dbg !1836, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1806, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1807, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1808, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %arrayidx59, metadata !1809, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata i32 %86, metadata !1810, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata ptr %115, metadata !1812, metadata !DIExpression()) #9, !dbg !1839
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1839
  %add.i750 = add nuw nsw i32 %86, 12, !dbg !1841
  %add1.i751 = add i32 %h.val716, %add.i750, !dbg !1842
  %idxprom.i752 = sext i32 %add1.i751 to i64, !dbg !1842
  %arrayidx.i753 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i752, !dbg !1842
  %116 = load i8, ptr %arrayidx.i753, align 1, !dbg !1842, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %116, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1839
  %add4.i755 = add i32 %h.val717, %add.i750, !dbg !1843
  %idxprom5.i756 = sext i32 %add4.i755 to i64, !dbg !1843
  %arrayidx6.i757 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i756, !dbg !1843
  %117 = load i8, ptr %arrayidx6.i757, align 1, !dbg !1843, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %117, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1839
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i749) #9, !dbg !1844
  call void @llvm.dbg.declare(metadata ptr %tc.i749, metadata !1816, metadata !DIExpression()) #9, !dbg !1845
  %118 = load i32, ptr %arrayidx59, align 4, !dbg !1846, !tbaa !1534
  %tobool.i759 = icmp ne i32 %118, 0, !dbg !1846
  %119 = add nsw i64 %idxprom.i752, -28
  %tobool8.i760 = icmp ult i64 %119, 48
  %or.cond.i761 = select i1 %tobool.i759, i1 %tobool8.i760, i1 false, !dbg !1847
  %120 = add nsw i64 %idxprom5.i756, -28
  %tobool10.i762 = icmp ult i64 %120, 48
  %or.cond58.i763 = select i1 %or.cond.i761, i1 %tobool10.i762, i1 false, !dbg !1847
  br i1 %or.cond58.i763, label %if.end.i774, label %deblock_edge.exit775, !dbg !1847

if.end.i774:                                      ; preds = %deblock_edge.exit
  %conv7.i758 = zext i8 %117 to i32, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %conv7.i758, metadata !1815, metadata !DIExpression()) #9, !dbg !1839
  %conv.i754 = zext i8 %116 to i32, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %conv.i754, metadata !1814, metadata !DIExpression()) #9, !dbg !1839
  %121 = lshr i32 %118, 24, !dbg !1847
  %122 = zext i32 %121 to i64, !dbg !1847
  %123 = lshr i32 %118, 16, !dbg !1847
  %124 = lshr i32 %118, 8, !dbg !1847
  %125 = and i32 %118, 255, !dbg !1848
  %idxprom15.i764 = zext i32 %125 to i64, !dbg !1848
  %arrayidx16.i765 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i752, i64 %idxprom15.i764, !dbg !1848
  %126 = load i8, ptr %arrayidx16.i765, align 1, !dbg !1848, !tbaa !1534
  %conv19.i = add i8 %126, 1, !dbg !1848
  store i8 %conv19.i, ptr %tc.i749, align 1, !dbg !1849, !tbaa !1534
  %127 = and i32 %124, 255, !dbg !1850
  %idxprom25.i766 = zext i32 %127 to i64, !dbg !1850
  %arrayidx26.i767 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i752, i64 %idxprom25.i766, !dbg !1850
  %128 = load i8, ptr %arrayidx26.i767, align 1, !dbg !1850, !tbaa !1534
  %conv29.i = add i8 %128, 1, !dbg !1850
  store i8 %conv29.i, ptr %arrayidx30.i768, align 1, !dbg !1851, !tbaa !1534
  %129 = and i32 %123, 255, !dbg !1852
  %idxprom35.i769 = zext i32 %129 to i64, !dbg !1852
  %arrayidx36.i770 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i752, i64 %idxprom35.i769, !dbg !1852
  %130 = load i8, ptr %arrayidx36.i770, align 1, !dbg !1852, !tbaa !1534
  %conv39.i = add i8 %130, 1, !dbg !1852
  store i8 %conv39.i, ptr %arrayidx40.i771, align 1, !dbg !1853, !tbaa !1534
  %arrayidx46.i772 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i752, i64 %122, !dbg !1854
  %131 = load i8, ptr %arrayidx46.i772, align 1, !dbg !1854, !tbaa !1534
  %conv49.i = add i8 %131, 1, !dbg !1854
  store i8 %conv49.i, ptr %arrayidx50.i773, align 1, !dbg !1855, !tbaa !1534
  call void %115(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i754, i32 noundef %conv7.i758, ptr noundef nonnull %tc.i749) #9, !dbg !1856
  call void %115(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i754, i32 noundef %conv7.i758, ptr noundef nonnull %tc.i749) #9, !dbg !1857
  br label %deblock_edge.exit775, !dbg !1857

deblock_edge.exit775:                             ; preds = %deblock_edge.exit, %if.end.i774
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i749) #9, !dbg !1859
  br label %if.end219

if.end219:                                        ; preds = %if.end.i734, %deblock_edge_intra.exit, %deblock_edge.exit775, %if.end102
  br i1 %spec.select, label %if.end266, label %if.then221, !dbg !1860

if.then221:                                       ; preds = %if.end219
  %tobool222.not = icmp eq i8 %70, 0, !dbg !1861
  br i1 %tobool222.not, label %do.body224, label %if.then221.do.body235_crit_edge, !dbg !1865

if.then221.do.body235_crit_edge:                  ; preds = %if.then221
  %.pre1312 = add nsw i32 %conv107, 12, !dbg !1866
  br label %do.body235, !dbg !1865

do.body224:                                       ; preds = %if.then221
  %arrayidx227 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 0, i64 1, !dbg !1869
  %132 = load ptr, ptr %loopf207, align 8, !dbg !1869, !tbaa !1715
  %h.val714 = load i32, ptr %62, align 16, !dbg !1869, !tbaa !1456
  %h.val715 = load i32, ptr %63, align 4, !dbg !1869, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1806, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #9, !dbg !1871
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %arrayidx227, metadata !1809, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %132, metadata !1812, metadata !DIExpression()) #9, !dbg !1871
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1871
  %add.i777 = add nsw i32 %conv107, 12, !dbg !1873
  %add1.i778 = add i32 %h.val714, %add.i777, !dbg !1874
  %idxprom.i779 = sext i32 %add1.i778 to i64, !dbg !1874
  %arrayidx.i780 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i779, !dbg !1874
  %133 = load i8, ptr %arrayidx.i780, align 1, !dbg !1874, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %133, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1871
  %add4.i782 = add i32 %h.val715, %add.i777, !dbg !1875
  %idxprom5.i783 = sext i32 %add4.i782 to i64, !dbg !1875
  %arrayidx6.i784 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i783, !dbg !1875
  %134 = load i8, ptr %arrayidx6.i784, align 1, !dbg !1875, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %134, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1871
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i776) #9, !dbg !1876
  call void @llvm.dbg.declare(metadata ptr %tc.i776, metadata !1816, metadata !DIExpression()) #9, !dbg !1877
  %135 = load i32, ptr %arrayidx227, align 4, !dbg !1878, !tbaa !1534
  %tobool.i786 = icmp ne i32 %135, 0, !dbg !1878
  %136 = add nsw i64 %idxprom.i779, -28
  %tobool8.i787 = icmp ult i64 %136, 48
  %or.cond.i788 = select i1 %tobool.i786, i1 %tobool8.i787, i1 false, !dbg !1879
  %137 = add nsw i64 %idxprom5.i783, -28
  %tobool10.i789 = icmp ult i64 %137, 48
  %or.cond58.i790 = select i1 %or.cond.i788, i1 %tobool10.i789, i1 false, !dbg !1879
  br i1 %or.cond58.i790, label %if.end.i801, label %deblock_edge.exit802, !dbg !1879

if.end.i801:                                      ; preds = %do.body224
  %conv7.i785 = zext i8 %134 to i32, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %conv7.i785, metadata !1815, metadata !DIExpression()) #9, !dbg !1871
  %conv.i781 = zext i8 %133 to i32, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %conv.i781, metadata !1814, metadata !DIExpression()) #9, !dbg !1871
  %add.ptr225 = getelementptr inbounds i8, ptr %pixy.0, i64 4, !dbg !1869
  call void @llvm.dbg.value(metadata ptr %add.ptr225, metadata !1806, metadata !DIExpression()) #9, !dbg !1871
  %138 = lshr i32 %135, 24, !dbg !1879
  %139 = zext i32 %138 to i64, !dbg !1879
  %140 = lshr i32 %135, 16, !dbg !1879
  %141 = lshr i32 %135, 8, !dbg !1879
  %142 = and i32 %135, 255, !dbg !1880
  %idxprom15.i791 = zext i32 %142 to i64, !dbg !1880
  %arrayidx16.i792 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom15.i791, !dbg !1880
  %143 = load i8, ptr %arrayidx16.i792, align 1, !dbg !1880, !tbaa !1534
  store i8 %143, ptr %tc.i776, align 1, !dbg !1881, !tbaa !1534
  %144 = and i32 %141, 255, !dbg !1882
  %idxprom25.i793 = zext i32 %144 to i64, !dbg !1882
  %arrayidx26.i794 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom25.i793, !dbg !1882
  %145 = load i8, ptr %arrayidx26.i794, align 1, !dbg !1882, !tbaa !1534
  store i8 %145, ptr %arrayidx30.i795, align 1, !dbg !1883, !tbaa !1534
  %146 = and i32 %140, 255, !dbg !1884
  %idxprom35.i796 = zext i32 %146 to i64, !dbg !1884
  %arrayidx36.i797 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %idxprom35.i796, !dbg !1884
  %147 = load i8, ptr %arrayidx36.i797, align 1, !dbg !1884, !tbaa !1534
  store i8 %147, ptr %arrayidx40.i798, align 1, !dbg !1885, !tbaa !1534
  %arrayidx46.i799 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i779, i64 %139, !dbg !1886
  %148 = load i8, ptr %arrayidx46.i799, align 1, !dbg !1886, !tbaa !1534
  store i8 %148, ptr %arrayidx50.i800, align 1, !dbg !1887, !tbaa !1534
  call void %132(ptr noundef nonnull %add.ptr225, i32 noundef %shl, i32 noundef %conv.i781, i32 noundef %conv7.i785, ptr noundef nonnull %tc.i776) #9, !dbg !1888
  br label %deblock_edge.exit802

deblock_edge.exit802:                             ; preds = %do.body224, %if.end.i801
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i776) #9, !dbg !1889
  br label %do.body235, !dbg !1869

do.body235:                                       ; preds = %if.then221.do.body235_crit_edge, %deblock_edge.exit802
  %add.i804.pre-phi = phi i32 [ %.pre1312, %if.then221.do.body235_crit_edge ], [ %add.i777, %deblock_edge.exit802 ], !dbg !1866
  %arrayidx238 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 0, i64 2, !dbg !1890
  %149 = load ptr, ptr %loopf207, align 8, !dbg !1890, !tbaa !1715
  %h.val712 = load i32, ptr %62, align 16, !dbg !1890, !tbaa !1456
  %h.val713 = load i32, ptr %63, align 4, !dbg !1890, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1806, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #9, !dbg !1891
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %arrayidx238, metadata !1809, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %149, metadata !1812, metadata !DIExpression()) #9, !dbg !1891
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1891
  %add1.i805 = add i32 %h.val712, %add.i804.pre-phi, !dbg !1892
  %idxprom.i806 = sext i32 %add1.i805 to i64, !dbg !1892
  %arrayidx.i807 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i806, !dbg !1892
  %150 = load i8, ptr %arrayidx.i807, align 1, !dbg !1892, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %150, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1891
  %add4.i809 = add i32 %h.val713, %add.i804.pre-phi, !dbg !1893
  %idxprom5.i810 = sext i32 %add4.i809 to i64, !dbg !1893
  %arrayidx6.i811 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i810, !dbg !1893
  %151 = load i8, ptr %arrayidx6.i811, align 1, !dbg !1893, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %151, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1891
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i803) #9, !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %tc.i803, metadata !1816, metadata !DIExpression()) #9, !dbg !1895
  %152 = load i32, ptr %arrayidx238, align 4, !dbg !1896, !tbaa !1534
  %tobool.i813 = icmp ne i32 %152, 0, !dbg !1896
  %153 = add nsw i64 %idxprom.i806, -28
  %tobool8.i814 = icmp ult i64 %153, 48
  %or.cond.i815 = select i1 %tobool.i813, i1 %tobool8.i814, i1 false, !dbg !1897
  %154 = add nsw i64 %idxprom5.i810, -28
  %tobool10.i816 = icmp ult i64 %154, 48
  %or.cond58.i817 = select i1 %or.cond.i815, i1 %tobool10.i816, i1 false, !dbg !1897
  br i1 %or.cond58.i817, label %if.end.i828, label %deblock_edge.exit829, !dbg !1897

if.end.i828:                                      ; preds = %do.body235
  %conv7.i812 = zext i8 %151 to i32, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %conv7.i812, metadata !1815, metadata !DIExpression()) #9, !dbg !1891
  %conv.i808 = zext i8 %150 to i32, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %conv.i808, metadata !1814, metadata !DIExpression()) #9, !dbg !1891
  %add.ptr236 = getelementptr inbounds i8, ptr %pixy.0, i64 8, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %add.ptr236, metadata !1806, metadata !DIExpression()) #9, !dbg !1891
  %155 = lshr i32 %152, 24, !dbg !1897
  %156 = zext i32 %155 to i64, !dbg !1897
  %157 = lshr i32 %152, 16, !dbg !1897
  %158 = lshr i32 %152, 8, !dbg !1897
  %159 = and i32 %152, 255, !dbg !1898
  %idxprom15.i818 = zext i32 %159 to i64, !dbg !1898
  %arrayidx16.i819 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i806, i64 %idxprom15.i818, !dbg !1898
  %160 = load i8, ptr %arrayidx16.i819, align 1, !dbg !1898, !tbaa !1534
  store i8 %160, ptr %tc.i803, align 1, !dbg !1899, !tbaa !1534
  %161 = and i32 %158, 255, !dbg !1900
  %idxprom25.i820 = zext i32 %161 to i64, !dbg !1900
  %arrayidx26.i821 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i806, i64 %idxprom25.i820, !dbg !1900
  %162 = load i8, ptr %arrayidx26.i821, align 1, !dbg !1900, !tbaa !1534
  store i8 %162, ptr %arrayidx30.i822, align 1, !dbg !1901, !tbaa !1534
  %163 = and i32 %157, 255, !dbg !1902
  %idxprom35.i823 = zext i32 %163 to i64, !dbg !1902
  %arrayidx36.i824 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i806, i64 %idxprom35.i823, !dbg !1902
  %164 = load i8, ptr %arrayidx36.i824, align 1, !dbg !1902, !tbaa !1534
  store i8 %164, ptr %arrayidx40.i825, align 1, !dbg !1903, !tbaa !1534
  %arrayidx46.i826 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i806, i64 %156, !dbg !1904
  %165 = load i8, ptr %arrayidx46.i826, align 1, !dbg !1904, !tbaa !1534
  store i8 %165, ptr %arrayidx50.i827, align 1, !dbg !1905, !tbaa !1534
  call void %149(ptr noundef nonnull %add.ptr236, i32 noundef %shl, i32 noundef %conv.i808, i32 noundef %conv7.i812, ptr noundef nonnull %tc.i803) #9, !dbg !1906
  %h.val710.pre = load i32, ptr %62, align 16, !dbg !1907, !tbaa !1456
  %h.val711.pre = load i32, ptr %63, align 4, !dbg !1907, !tbaa !1457
  br label %deblock_edge.exit829

deblock_edge.exit829:                             ; preds = %do.body235, %if.end.i828
  %h.val711 = phi i32 [ %h.val713, %do.body235 ], [ %h.val711.pre, %if.end.i828 ], !dbg !1907
  %h.val710 = phi i32 [ %h.val712, %do.body235 ], [ %h.val710.pre, %if.end.i828 ], !dbg !1907
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i803) #9, !dbg !1909
  %166 = load ptr, ptr %deblock_chroma, align 8, !dbg !1907, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1806, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #9, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1807, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)) #9, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1808, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %arrayidx238, metadata !1809, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata i32 %conv110, metadata !1810, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %166, metadata !1812, metadata !DIExpression()) #9, !dbg !1910
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1910
  %add.i831 = add nuw nsw i32 %conv110, 12, !dbg !1912
  %add1.i832 = add i32 %h.val710, %add.i831, !dbg !1913
  %idxprom.i833 = sext i32 %add1.i832 to i64, !dbg !1913
  %arrayidx.i834 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i833, !dbg !1913
  %167 = load i8, ptr %arrayidx.i834, align 1, !dbg !1913, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %167, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1910
  %add4.i836 = add i32 %h.val711, %add.i831, !dbg !1914
  %idxprom5.i837 = sext i32 %add4.i836 to i64, !dbg !1914
  %arrayidx6.i838 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i837, !dbg !1914
  %168 = load i8, ptr %arrayidx6.i838, align 1, !dbg !1914, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %168, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1910
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i830) #9, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %tc.i830, metadata !1816, metadata !DIExpression()) #9, !dbg !1916
  %169 = load i32, ptr %arrayidx238, align 4, !dbg !1917, !tbaa !1534
  %tobool.i840 = icmp ne i32 %169, 0, !dbg !1917
  %170 = add nsw i64 %idxprom.i833, -28
  %tobool8.i841 = icmp ult i64 %170, 48
  %or.cond.i842 = select i1 %tobool.i840, i1 %tobool8.i841, i1 false, !dbg !1918
  %171 = add nsw i64 %idxprom5.i837, -28
  %tobool10.i843 = icmp ult i64 %171, 48
  %or.cond58.i844 = select i1 %or.cond.i842, i1 %tobool10.i843, i1 false, !dbg !1918
  br i1 %or.cond58.i844, label %if.end.i859, label %deblock_edge.exit860, !dbg !1918

if.end.i859:                                      ; preds = %deblock_edge.exit829
  %conv7.i839 = zext i8 %168 to i32, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %conv7.i839, metadata !1815, metadata !DIExpression()) #9, !dbg !1910
  %conv.i835 = zext i8 %167 to i32, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %conv.i835, metadata !1814, metadata !DIExpression()) #9, !dbg !1910
  %add.ptr244 = getelementptr inbounds i8, ptr %pixv.0, i64 4, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %add.ptr244, metadata !1807, metadata !DIExpression()) #9, !dbg !1910
  %add.ptr243 = getelementptr inbounds i8, ptr %pixu.0, i64 4, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %add.ptr243, metadata !1806, metadata !DIExpression()) #9, !dbg !1910
  %172 = lshr i32 %169, 24, !dbg !1918
  %173 = zext i32 %172 to i64, !dbg !1918
  %174 = lshr i32 %169, 16, !dbg !1918
  %175 = lshr i32 %169, 8, !dbg !1918
  %176 = and i32 %169, 255, !dbg !1919
  %idxprom15.i845 = zext i32 %176 to i64, !dbg !1919
  %arrayidx16.i846 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i833, i64 %idxprom15.i845, !dbg !1919
  %177 = load i8, ptr %arrayidx16.i846, align 1, !dbg !1919, !tbaa !1534
  %conv19.i847 = add i8 %177, 1, !dbg !1919
  store i8 %conv19.i847, ptr %tc.i830, align 1, !dbg !1920, !tbaa !1534
  %178 = and i32 %175, 255, !dbg !1921
  %idxprom25.i848 = zext i32 %178 to i64, !dbg !1921
  %arrayidx26.i849 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i833, i64 %idxprom25.i848, !dbg !1921
  %179 = load i8, ptr %arrayidx26.i849, align 1, !dbg !1921, !tbaa !1534
  %conv29.i850 = add i8 %179, 1, !dbg !1921
  store i8 %conv29.i850, ptr %arrayidx30.i851, align 1, !dbg !1922, !tbaa !1534
  %180 = and i32 %174, 255, !dbg !1923
  %idxprom35.i852 = zext i32 %180 to i64, !dbg !1923
  %arrayidx36.i853 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i833, i64 %idxprom35.i852, !dbg !1923
  %181 = load i8, ptr %arrayidx36.i853, align 1, !dbg !1923, !tbaa !1534
  %conv39.i854 = add i8 %181, 1, !dbg !1923
  store i8 %conv39.i854, ptr %arrayidx40.i855, align 1, !dbg !1924, !tbaa !1534
  %arrayidx46.i856 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i833, i64 %173, !dbg !1925
  %182 = load i8, ptr %arrayidx46.i856, align 1, !dbg !1925, !tbaa !1534
  %conv49.i857 = add i8 %182, 1, !dbg !1925
  store i8 %conv49.i857, ptr %arrayidx50.i858, align 1, !dbg !1926, !tbaa !1534
  call void %166(ptr noundef nonnull %add.ptr243, i32 noundef %shl19, i32 noundef %conv.i835, i32 noundef %conv7.i839, ptr noundef nonnull %tc.i830) #9, !dbg !1927
  call void %166(ptr noundef nonnull %add.ptr244, i32 noundef %shl19, i32 noundef %conv.i835, i32 noundef %conv7.i839, ptr noundef nonnull %tc.i830) #9, !dbg !1928
  br label %deblock_edge.exit860, !dbg !1928

deblock_edge.exit860:                             ; preds = %deblock_edge.exit829, %if.end.i859
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i830) #9, !dbg !1929
  br i1 %tobool222.not, label %do.body255, label %if.end266, !dbg !1930

do.body255:                                       ; preds = %deblock_edge.exit860
  %arrayidx258 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 0, i64 3, !dbg !1931
  %183 = load ptr, ptr %loopf207, align 8, !dbg !1931, !tbaa !1715
  %h.val708 = load i32, ptr %62, align 16, !dbg !1931, !tbaa !1456
  %h.val709 = load i32, ptr %63, align 4, !dbg !1931, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1806, metadata !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value)) #9, !dbg !1934
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata ptr %arrayidx258, metadata !1809, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata ptr %183, metadata !1812, metadata !DIExpression()) #9, !dbg !1934
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1934
  %add1.i863 = add i32 %h.val708, %add.i804.pre-phi, !dbg !1936
  %idxprom.i864 = sext i32 %add1.i863 to i64, !dbg !1936
  %arrayidx.i865 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i864, !dbg !1936
  %184 = load i8, ptr %arrayidx.i865, align 1, !dbg !1936, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %184, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1934
  %add4.i867 = add i32 %h.val709, %add.i804.pre-phi, !dbg !1937
  %idxprom5.i868 = sext i32 %add4.i867 to i64, !dbg !1937
  %arrayidx6.i869 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i868, !dbg !1937
  %185 = load i8, ptr %arrayidx6.i869, align 1, !dbg !1937, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %185, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1934
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i861) #9, !dbg !1938
  call void @llvm.dbg.declare(metadata ptr %tc.i861, metadata !1816, metadata !DIExpression()) #9, !dbg !1939
  %186 = load i32, ptr %arrayidx258, align 4, !dbg !1940, !tbaa !1534
  %tobool.i871 = icmp ne i32 %186, 0, !dbg !1940
  %187 = add nsw i64 %idxprom.i864, -28
  %tobool8.i872 = icmp ult i64 %187, 48
  %or.cond.i873 = select i1 %tobool.i871, i1 %tobool8.i872, i1 false, !dbg !1941
  %188 = add nsw i64 %idxprom5.i868, -28
  %tobool10.i874 = icmp ult i64 %188, 48
  %or.cond58.i875 = select i1 %or.cond.i873, i1 %tobool10.i874, i1 false, !dbg !1941
  br i1 %or.cond58.i875, label %if.end.i886, label %deblock_edge.exit887, !dbg !1941

if.end.i886:                                      ; preds = %do.body255
  %conv7.i870 = zext i8 %185 to i32, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %conv7.i870, metadata !1815, metadata !DIExpression()) #9, !dbg !1934
  %conv.i866 = zext i8 %184 to i32, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %conv.i866, metadata !1814, metadata !DIExpression()) #9, !dbg !1934
  %add.ptr256 = getelementptr inbounds i8, ptr %pixy.0, i64 12, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %add.ptr256, metadata !1806, metadata !DIExpression()) #9, !dbg !1934
  %189 = lshr i32 %186, 24, !dbg !1941
  %190 = zext i32 %189 to i64, !dbg !1941
  %191 = lshr i32 %186, 16, !dbg !1941
  %192 = lshr i32 %186, 8, !dbg !1941
  %193 = and i32 %186, 255, !dbg !1942
  %idxprom15.i876 = zext i32 %193 to i64, !dbg !1942
  %arrayidx16.i877 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i864, i64 %idxprom15.i876, !dbg !1942
  %194 = load i8, ptr %arrayidx16.i877, align 1, !dbg !1942, !tbaa !1534
  store i8 %194, ptr %tc.i861, align 1, !dbg !1943, !tbaa !1534
  %195 = and i32 %192, 255, !dbg !1944
  %idxprom25.i878 = zext i32 %195 to i64, !dbg !1944
  %arrayidx26.i879 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i864, i64 %idxprom25.i878, !dbg !1944
  %196 = load i8, ptr %arrayidx26.i879, align 1, !dbg !1944, !tbaa !1534
  store i8 %196, ptr %arrayidx30.i880, align 1, !dbg !1945, !tbaa !1534
  %197 = and i32 %191, 255, !dbg !1946
  %idxprom35.i881 = zext i32 %197 to i64, !dbg !1946
  %arrayidx36.i882 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i864, i64 %idxprom35.i881, !dbg !1946
  %198 = load i8, ptr %arrayidx36.i882, align 1, !dbg !1946, !tbaa !1534
  store i8 %198, ptr %arrayidx40.i883, align 1, !dbg !1947, !tbaa !1534
  %arrayidx46.i884 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i864, i64 %190, !dbg !1948
  %199 = load i8, ptr %arrayidx46.i884, align 1, !dbg !1948, !tbaa !1534
  store i8 %199, ptr %arrayidx50.i885, align 1, !dbg !1949, !tbaa !1534
  call void %183(ptr noundef nonnull %add.ptr256, i32 noundef %shl, i32 noundef %conv.i866, i32 noundef %conv7.i870, ptr noundef nonnull %tc.i861) #9, !dbg !1950
  br label %deblock_edge.exit887

deblock_edge.exit887:                             ; preds = %do.body255, %if.end.i886
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i861) #9, !dbg !1951
  br label %if.end266, !dbg !1931

if.end266:                                        ; preds = %deblock_edge.exit860, %deblock_edge.exit887, %if.end219
  %200 = load i32, ptr %i_neighbour, align 8, !dbg !1952, !tbaa !1747
  %and269 = and i32 %200, 2, !dbg !1953
  %tobool270.not = icmp eq i32 %and269, 0, !dbg !1953
  br i1 %tobool270.not, label %if.end395, label %if.then271, !dbg !1954

if.then271:                                       ; preds = %if.end266
  %201 = load ptr, ptr %qp104, align 8, !dbg !1955, !tbaa !1739
  %202 = load i32, ptr %i_mb_top_xy, align 4, !dbg !1956, !tbaa !1957
  %idxprom275 = sext i32 %202 to i64, !dbg !1958
  %arrayidx276 = getelementptr inbounds i8, ptr %201, i64 %idxprom275, !dbg !1958
  %203 = load i8, ptr %arrayidx276, align 1, !dbg !1958, !tbaa !1534
  %conv277 = sext i8 %203 to i32, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %conv277, metadata !1417, metadata !DIExpression()), !dbg !1959
  %add278 = add nsw i32 %conv107, 1, !dbg !1960
  %add279 = add nsw i32 %add278, %conv277, !dbg !1961
  %shr280 = ashr i32 %add279, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %shr280, metadata !1420, metadata !DIExpression()), !dbg !1959
  %204 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1963, !tbaa !1742
  %arrayidx283 = getelementptr inbounds i8, ptr %204, i64 %idxprom108, !dbg !1964
  %205 = load i8, ptr %arrayidx283, align 1, !dbg !1964, !tbaa !1534
  %conv284 = zext i8 %205 to i32, !dbg !1964
  %idxprom286 = sext i8 %203 to i64, !dbg !1965
  %arrayidx287 = getelementptr inbounds i8, ptr %204, i64 %idxprom286, !dbg !1965
  %206 = load i8, ptr %arrayidx287, align 1, !dbg !1965, !tbaa !1534
  %conv288 = zext i8 %206 to i32, !dbg !1965
  %add289 = add nuw nsw i32 %conv284, 1, !dbg !1966
  %add290 = add nuw nsw i32 %add289, %conv288, !dbg !1967
  %207 = lshr i32 %add290, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %207, metadata !1421, metadata !DIExpression()), !dbg !1959
  %208 = load ptr, ptr %type, align 8, !dbg !1969, !tbaa !1712
  %arrayidx297 = getelementptr inbounds i8, ptr %208, i64 %idxprom275, !dbg !1969
  %209 = load i8, ptr %arrayidx297, align 1, !dbg !1969, !tbaa !1534
  %switch.selectcmp688 = icmp ult i8 %209, 4, !dbg !1969
  call void @llvm.dbg.value(metadata i1 %switch.selectcmp688, metadata !1422, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1959
  %or.cond464 = select i1 %switch.selectcmp, i1 true, i1 %switch.selectcmp688
  %or.cond683 = and i1 %tobool86.not, %or.cond464, !dbg !1970
  br i1 %or.cond683, label %do.body339, label %if.else363, !dbg !1970

do.body339:                                       ; preds = %if.then271
  %h.val692 = load i32, ptr %62, align 16, !dbg !1972, !tbaa !1456
  %h.val693 = load i32, ptr %63, align 4, !dbg !1972, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1766, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1771, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata ptr null, metadata !1772, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1773, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata ptr undef, metadata !1774, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %shr280, metadata !1775, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata i32 0, metadata !1776, metadata !DIExpression()) #9, !dbg !1974
  call void @llvm.dbg.value(metadata ptr undef, metadata !1777, metadata !DIExpression()) #9, !dbg !1974
  %add.i888 = add nsw i32 %shr280, 12, !dbg !1976
  %add1.i889 = add i32 %h.val692, %add.i888, !dbg !1976
  %idxprom.i890 = sext i32 %add1.i889 to i64, !dbg !1976
  call void @llvm.dbg.value(metadata i8 undef, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1974
  %add4.i893 = add i32 %h.val693, %add.i888, !dbg !1977
  %idxprom5.i894 = sext i32 %add4.i893 to i64, !dbg !1977
  call void @llvm.dbg.value(metadata i8 undef, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1974
  %210 = add nsw i64 %idxprom.i890, -28, !dbg !1978
  %tobool.i897 = icmp ult i64 %210, 48, !dbg !1978
  %211 = add nsw i64 %idxprom5.i894, -28
  %tobool8.i898 = icmp ult i64 %211, 48
  %or.cond.i899 = select i1 %tobool.i897, i1 %tobool8.i898, i1 false, !dbg !1979
  br i1 %or.cond.i899, label %if.end.i900, label %deblock_edge_intra.exit901, !dbg !1979

if.end.i900:                                      ; preds = %do.body339
  %arrayidx6.i895 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i894, !dbg !1977
  %212 = load i8, ptr %arrayidx6.i895, align 1, !dbg !1977, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %212, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1974
  %conv7.i896 = zext i8 %212 to i32, !dbg !1977
  call void @llvm.dbg.value(metadata i32 %conv7.i896, metadata !1779, metadata !DIExpression()) #9, !dbg !1974
  %arrayidx.i891 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i890, !dbg !1976
  %213 = load i8, ptr %arrayidx.i891, align 1, !dbg !1976, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %213, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1974
  %conv.i892 = zext i8 %213 to i32, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %conv.i892, metadata !1778, metadata !DIExpression()) #9, !dbg !1974
  %214 = load ptr, ptr %arrayidx348, align 8, !dbg !1972, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr %214, metadata !1777, metadata !DIExpression()) #9, !dbg !1974
  call void %214(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i892, i32 noundef %conv7.i896) #9, !dbg !1980
  %h.val694.pre = load i32, ptr %62, align 16, !dbg !1981, !tbaa !1456
  %h.val695.pre = load i32, ptr %63, align 4, !dbg !1981, !tbaa !1457
  br label %deblock_edge_intra.exit901

deblock_edge_intra.exit901:                       ; preds = %do.body339, %if.end.i900
  %h.val695 = phi i32 [ %h.val693, %do.body339 ], [ %h.val695.pre, %if.end.i900 ], !dbg !1981
  %h.val694 = phi i32 [ %h.val692, %do.body339 ], [ %h.val694.pre, %if.end.i900 ], !dbg !1981
  call void @llvm.dbg.value(metadata ptr undef, metadata !1766, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1771, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1772, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1773, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata ptr undef, metadata !1774, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %207, metadata !1775, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata i32 1, metadata !1776, metadata !DIExpression()) #9, !dbg !1983
  call void @llvm.dbg.value(metadata ptr undef, metadata !1777, metadata !DIExpression()) #9, !dbg !1983
  %add.i902 = add nuw nsw i32 %207, 12, !dbg !1985
  %add1.i903 = add i32 %h.val694, %add.i902, !dbg !1985
  %idxprom.i904 = sext i32 %add1.i903 to i64, !dbg !1985
  call void @llvm.dbg.value(metadata i8 undef, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1983
  %add4.i907 = add i32 %h.val695, %add.i902, !dbg !1986
  %idxprom5.i908 = sext i32 %add4.i907 to i64, !dbg !1986
  call void @llvm.dbg.value(metadata i8 undef, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1983
  %215 = add nsw i64 %idxprom.i904, -28, !dbg !1987
  %tobool.i911 = icmp ult i64 %215, 48, !dbg !1987
  %216 = add nsw i64 %idxprom5.i908, -28
  %tobool8.i912 = icmp ult i64 %216, 48
  %or.cond.i913 = select i1 %tobool.i911, i1 %tobool8.i912, i1 false, !dbg !1988
  br i1 %or.cond.i913, label %if.end.i914, label %if.end395, !dbg !1988

if.end.i914:                                      ; preds = %deblock_edge_intra.exit901
  %arrayidx6.i909 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i908, !dbg !1986
  %217 = load i8, ptr %arrayidx6.i909, align 1, !dbg !1986, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %217, metadata !1779, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1983
  %conv7.i910 = zext i8 %217 to i32, !dbg !1986
  call void @llvm.dbg.value(metadata i32 %conv7.i910, metadata !1779, metadata !DIExpression()) #9, !dbg !1983
  %arrayidx.i905 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i904, !dbg !1985
  %218 = load i8, ptr %arrayidx.i905, align 1, !dbg !1985, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %218, metadata !1778, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1983
  %conv.i906 = zext i8 %218 to i32, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %conv.i906, metadata !1778, metadata !DIExpression()) #9, !dbg !1983
  %219 = load ptr, ptr %arrayidx360, align 8, !dbg !1981, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr %219, metadata !1777, metadata !DIExpression()) #9, !dbg !1983
  call void %219(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i906, i32 noundef %conv7.i910) #9, !dbg !1989
  call void %219(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i906, i32 noundef %conv7.i910) #9, !dbg !1990
  br label %if.end395, !dbg !1990

if.else363:                                       ; preds = %if.then271
  %arrayidx366 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 1
  br i1 %switch.selectcmp688, label %if.then365, label %if.else363.do.body370_crit_edge, !dbg !1991

if.else363.do.body370_crit_edge:                  ; preds = %if.else363
  %.pre = load i32, ptr %arrayidx366, align 4, !dbg !1993, !tbaa !1534
  br label %do.body370, !dbg !1991

if.then365:                                       ; preds = %if.else363
  store i32 50529027, ptr %arrayidx366, align 1, !dbg !1996
  br label %do.body370, !dbg !1996

do.body370:                                       ; preds = %if.else363.do.body370_crit_edge, %if.then365
  %220 = phi i32 [ %.pre, %if.else363.do.body370_crit_edge ], [ 50529027, %if.then365 ], !dbg !1993
  %arrayidx374 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 1, !dbg !1998
  %221 = load ptr, ptr %arrayidx379, align 8, !dbg !1998, !tbaa !1715
  %h.val706 = load i32, ptr %62, align 16, !dbg !1998, !tbaa !1456
  %h.val707 = load i32, ptr %63, align 4, !dbg !1998, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %pixy.0, metadata !1806, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %arrayidx374, metadata !1809, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %shr280, metadata !1810, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %221, metadata !1812, metadata !DIExpression()) #9, !dbg !1999
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !1999
  %add.i917 = add nsw i32 %shr280, 12, !dbg !2000
  %add1.i918 = add i32 %h.val706, %add.i917, !dbg !2001
  %idxprom.i919 = sext i32 %add1.i918 to i64, !dbg !2001
  %arrayidx.i920 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i919, !dbg !2001
  %222 = load i8, ptr %arrayidx.i920, align 1, !dbg !2001, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %222, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1999
  %add4.i922 = add i32 %h.val707, %add.i917, !dbg !2002
  %idxprom5.i923 = sext i32 %add4.i922 to i64, !dbg !2002
  %arrayidx6.i924 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i923, !dbg !2002
  %223 = load i8, ptr %arrayidx6.i924, align 1, !dbg !2002, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %223, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !1999
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i916) #9, !dbg !2003
  call void @llvm.dbg.declare(metadata ptr %tc.i916, metadata !1816, metadata !DIExpression()) #9, !dbg !2004
  %tobool.i926 = icmp ne i32 %220, 0, !dbg !1993
  %224 = add nsw i64 %idxprom.i919, -28
  %tobool8.i927 = icmp ult i64 %224, 48
  %or.cond.i928 = select i1 %tobool.i926, i1 %tobool8.i927, i1 false, !dbg !2005
  %225 = add nsw i64 %idxprom5.i923, -28
  %tobool10.i929 = icmp ult i64 %225, 48
  %or.cond58.i930 = select i1 %or.cond.i928, i1 %tobool10.i929, i1 false, !dbg !2005
  br i1 %or.cond58.i930, label %if.end.i941, label %deblock_edge.exit942, !dbg !2005

if.end.i941:                                      ; preds = %do.body370
  %conv7.i925 = zext i8 %223 to i32, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %conv7.i925, metadata !1815, metadata !DIExpression()) #9, !dbg !1999
  %conv.i921 = zext i8 %222 to i32, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %conv.i921, metadata !1814, metadata !DIExpression()) #9, !dbg !1999
  %226 = lshr i32 %220, 24, !dbg !2005
  %227 = zext i32 %226 to i64, !dbg !2005
  %228 = lshr i32 %220, 16, !dbg !2005
  %229 = lshr i32 %220, 8, !dbg !2005
  %230 = and i32 %220, 255, !dbg !2006
  %idxprom15.i931 = zext i32 %230 to i64, !dbg !2006
  %arrayidx16.i932 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i919, i64 %idxprom15.i931, !dbg !2006
  %231 = load i8, ptr %arrayidx16.i932, align 1, !dbg !2006, !tbaa !1534
  store i8 %231, ptr %tc.i916, align 1, !dbg !2007, !tbaa !1534
  %232 = and i32 %229, 255, !dbg !2008
  %idxprom25.i933 = zext i32 %232 to i64, !dbg !2008
  %arrayidx26.i934 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i919, i64 %idxprom25.i933, !dbg !2008
  %233 = load i8, ptr %arrayidx26.i934, align 1, !dbg !2008, !tbaa !1534
  store i8 %233, ptr %arrayidx30.i935, align 1, !dbg !2009, !tbaa !1534
  %234 = and i32 %228, 255, !dbg !2010
  %idxprom35.i936 = zext i32 %234 to i64, !dbg !2010
  %arrayidx36.i937 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i919, i64 %idxprom35.i936, !dbg !2010
  %235 = load i8, ptr %arrayidx36.i937, align 1, !dbg !2010, !tbaa !1534
  store i8 %235, ptr %arrayidx40.i938, align 1, !dbg !2011, !tbaa !1534
  %arrayidx46.i939 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i919, i64 %227, !dbg !2012
  %236 = load i8, ptr %arrayidx46.i939, align 1, !dbg !2012, !tbaa !1534
  store i8 %236, ptr %arrayidx50.i940, align 1, !dbg !2013, !tbaa !1534
  call void %221(ptr noundef %pixy.0, i32 noundef %shl, i32 noundef %conv.i921, i32 noundef %conv7.i925, ptr noundef nonnull %tc.i916) #9, !dbg !2014
  %h.val704.pre = load i32, ptr %62, align 16, !dbg !2015, !tbaa !1456
  %h.val705.pre = load i32, ptr %63, align 4, !dbg !2015, !tbaa !1457
  br label %deblock_edge.exit942

deblock_edge.exit942:                             ; preds = %do.body370, %if.end.i941
  %h.val705 = phi i32 [ %h.val707, %do.body370 ], [ %h.val705.pre, %if.end.i941 ], !dbg !2015
  %h.val704 = phi i32 [ %h.val706, %do.body370 ], [ %h.val704.pre, %if.end.i941 ], !dbg !2015
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i916) #9, !dbg !2017
  %237 = load ptr, ptr %arrayidx391, align 8, !dbg !2015, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %pixu.0, metadata !1806, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %pixv.0, metadata !1807, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1808, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %arrayidx374, metadata !1809, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %207, metadata !1810, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %237, metadata !1812, metadata !DIExpression()) #9, !dbg !2018
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !2018
  %add.i944 = add nuw nsw i32 %207, 12, !dbg !2020
  %add1.i945 = add i32 %h.val704, %add.i944, !dbg !2021
  %idxprom.i946 = sext i32 %add1.i945 to i64, !dbg !2021
  %arrayidx.i947 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i946, !dbg !2021
  %238 = load i8, ptr %arrayidx.i947, align 1, !dbg !2021, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %238, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2018
  %add4.i949 = add i32 %h.val705, %add.i944, !dbg !2022
  %idxprom5.i950 = sext i32 %add4.i949 to i64, !dbg !2022
  %arrayidx6.i951 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i950, !dbg !2022
  %239 = load i8, ptr %arrayidx6.i951, align 1, !dbg !2022, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %239, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i943) #9, !dbg !2023
  call void @llvm.dbg.declare(metadata ptr %tc.i943, metadata !1816, metadata !DIExpression()) #9, !dbg !2024
  %240 = load i32, ptr %arrayidx374, align 4, !dbg !2025, !tbaa !1534
  %tobool.i953 = icmp ne i32 %240, 0, !dbg !2025
  %241 = add nsw i64 %idxprom.i946, -28
  %tobool8.i954 = icmp ult i64 %241, 48
  %or.cond.i955 = select i1 %tobool.i953, i1 %tobool8.i954, i1 false, !dbg !2026
  %242 = add nsw i64 %idxprom5.i950, -28
  %tobool10.i956 = icmp ult i64 %242, 48
  %or.cond58.i957 = select i1 %or.cond.i955, i1 %tobool10.i956, i1 false, !dbg !2026
  br i1 %or.cond58.i957, label %if.end.i972, label %deblock_edge.exit973, !dbg !2026

if.end.i972:                                      ; preds = %deblock_edge.exit942
  %conv7.i952 = zext i8 %239 to i32, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %conv7.i952, metadata !1815, metadata !DIExpression()) #9, !dbg !2018
  %conv.i948 = zext i8 %238 to i32, !dbg !2021
  call void @llvm.dbg.value(metadata i32 %conv.i948, metadata !1814, metadata !DIExpression()) #9, !dbg !2018
  %243 = lshr i32 %240, 24, !dbg !2026
  %244 = zext i32 %243 to i64, !dbg !2026
  %245 = lshr i32 %240, 16, !dbg !2026
  %246 = lshr i32 %240, 8, !dbg !2026
  %247 = and i32 %240, 255, !dbg !2027
  %idxprom15.i958 = zext i32 %247 to i64, !dbg !2027
  %arrayidx16.i959 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i946, i64 %idxprom15.i958, !dbg !2027
  %248 = load i8, ptr %arrayidx16.i959, align 1, !dbg !2027, !tbaa !1534
  %conv19.i960 = add i8 %248, 1, !dbg !2027
  store i8 %conv19.i960, ptr %tc.i943, align 1, !dbg !2028, !tbaa !1534
  %249 = and i32 %246, 255, !dbg !2029
  %idxprom25.i961 = zext i32 %249 to i64, !dbg !2029
  %arrayidx26.i962 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i946, i64 %idxprom25.i961, !dbg !2029
  %250 = load i8, ptr %arrayidx26.i962, align 1, !dbg !2029, !tbaa !1534
  %conv29.i963 = add i8 %250, 1, !dbg !2029
  store i8 %conv29.i963, ptr %arrayidx30.i964, align 1, !dbg !2030, !tbaa !1534
  %251 = and i32 %245, 255, !dbg !2031
  %idxprom35.i965 = zext i32 %251 to i64, !dbg !2031
  %arrayidx36.i966 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i946, i64 %idxprom35.i965, !dbg !2031
  %252 = load i8, ptr %arrayidx36.i966, align 1, !dbg !2031, !tbaa !1534
  %conv39.i967 = add i8 %252, 1, !dbg !2031
  store i8 %conv39.i967, ptr %arrayidx40.i968, align 1, !dbg !2032, !tbaa !1534
  %arrayidx46.i969 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i946, i64 %244, !dbg !2033
  %253 = load i8, ptr %arrayidx46.i969, align 1, !dbg !2033, !tbaa !1534
  %conv49.i970 = add i8 %253, 1, !dbg !2033
  store i8 %conv49.i970, ptr %arrayidx50.i971, align 1, !dbg !2034, !tbaa !1534
  call void %237(ptr noundef %pixu.0, i32 noundef %shl19, i32 noundef %conv.i948, i32 noundef %conv7.i952, ptr noundef nonnull %tc.i943) #9, !dbg !2035
  call void %237(ptr noundef %pixv.0, i32 noundef %shl19, i32 noundef %conv.i948, i32 noundef %conv7.i952, ptr noundef nonnull %tc.i943) #9, !dbg !2036
  br label %deblock_edge.exit973, !dbg !2036

deblock_edge.exit973:                             ; preds = %deblock_edge.exit942, %if.end.i972
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i943) #9, !dbg !2037
  br label %if.end395

if.end395:                                        ; preds = %if.end.i914, %deblock_edge_intra.exit901, %deblock_edge.exit973, %if.end266
  br i1 %spec.select, label %if.end452, label %if.then397, !dbg !2038

if.then397:                                       ; preds = %if.end395
  %tobool398.not = icmp eq i8 %70, 0, !dbg !2039
  br i1 %tobool398.not, label %do.body400, label %if.then397.do.body413_crit_edge, !dbg !2043

if.then397.do.body413_crit_edge:                  ; preds = %if.then397
  %.pre1311 = add nsw i32 %conv107, 12, !dbg !2044
  br label %do.body413, !dbg !2043

do.body400:                                       ; preds = %if.then397
  %arrayidx404 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 1, !dbg !2047
  %arrayidx405 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx404, i64 0, i64 1, !dbg !2047
  %254 = load ptr, ptr %arrayidx379, align 8, !dbg !2047, !tbaa !1715
  %h.val702 = load i32, ptr %62, align 16, !dbg !2047, !tbaa !1456
  %h.val703 = load i32, ptr %63, align 4, !dbg !2047, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i32 %shl), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2049
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %arrayidx405, metadata !1809, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %254, metadata !1812, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !2049
  %add.i975 = add nsw i32 %conv107, 12, !dbg !2051
  %add1.i976 = add i32 %h.val702, %add.i975, !dbg !2052
  %idxprom.i977 = sext i32 %add1.i976 to i64, !dbg !2052
  %arrayidx.i978 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i977, !dbg !2052
  %255 = load i8, ptr %arrayidx.i978, align 1, !dbg !2052, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %255, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2049
  %add4.i980 = add i32 %h.val703, %add.i975, !dbg !2053
  %idxprom5.i981 = sext i32 %add4.i980 to i64, !dbg !2053
  %arrayidx6.i982 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i981, !dbg !2053
  %256 = load i8, ptr %arrayidx6.i982, align 1, !dbg !2053, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %256, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2049
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i974) #9, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %tc.i974, metadata !1816, metadata !DIExpression()) #9, !dbg !2055
  %257 = load i32, ptr %arrayidx405, align 4, !dbg !2056, !tbaa !1534
  %tobool.i984 = icmp ne i32 %257, 0, !dbg !2056
  %258 = add nsw i64 %idxprom.i977, -28
  %tobool8.i985 = icmp ult i64 %258, 48
  %or.cond.i986 = select i1 %tobool.i984, i1 %tobool8.i985, i1 false, !dbg !2057
  %259 = add nsw i64 %idxprom5.i981, -28
  %tobool10.i987 = icmp ult i64 %259, 48
  %or.cond58.i988 = select i1 %or.cond.i986, i1 %tobool10.i987, i1 false, !dbg !2057
  br i1 %or.cond58.i988, label %if.end.i999, label %deblock_edge.exit1000, !dbg !2057

if.end.i999:                                      ; preds = %do.body400
  %conv7.i983 = zext i8 %256 to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %conv7.i983, metadata !1815, metadata !DIExpression()) #9, !dbg !2049
  %conv.i979 = zext i8 %255 to i32, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %conv.i979, metadata !1814, metadata !DIExpression()) #9, !dbg !2049
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i64 %idx.ext402), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2049
  %add.ptr403 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext402, !dbg !2047
  call void @llvm.dbg.value(metadata ptr %add.ptr403, metadata !1806, metadata !DIExpression()) #9, !dbg !2049
  %260 = lshr i32 %257, 24, !dbg !2057
  %261 = zext i32 %260 to i64, !dbg !2057
  %262 = lshr i32 %257, 16, !dbg !2057
  %263 = lshr i32 %257, 8, !dbg !2057
  %264 = and i32 %257, 255, !dbg !2058
  %idxprom15.i989 = zext i32 %264 to i64, !dbg !2058
  %arrayidx16.i990 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i977, i64 %idxprom15.i989, !dbg !2058
  %265 = load i8, ptr %arrayidx16.i990, align 1, !dbg !2058, !tbaa !1534
  store i8 %265, ptr %tc.i974, align 1, !dbg !2059, !tbaa !1534
  %266 = and i32 %263, 255, !dbg !2060
  %idxprom25.i991 = zext i32 %266 to i64, !dbg !2060
  %arrayidx26.i992 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i977, i64 %idxprom25.i991, !dbg !2060
  %267 = load i8, ptr %arrayidx26.i992, align 1, !dbg !2060, !tbaa !1534
  store i8 %267, ptr %arrayidx30.i993, align 1, !dbg !2061, !tbaa !1534
  %268 = and i32 %262, 255, !dbg !2062
  %idxprom35.i994 = zext i32 %268 to i64, !dbg !2062
  %arrayidx36.i995 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i977, i64 %idxprom35.i994, !dbg !2062
  %269 = load i8, ptr %arrayidx36.i995, align 1, !dbg !2062, !tbaa !1534
  store i8 %269, ptr %arrayidx40.i996, align 1, !dbg !2063, !tbaa !1534
  %arrayidx46.i997 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i977, i64 %261, !dbg !2064
  %270 = load i8, ptr %arrayidx46.i997, align 1, !dbg !2064, !tbaa !1534
  store i8 %270, ptr %arrayidx50.i998, align 1, !dbg !2065, !tbaa !1534
  call void %254(ptr noundef %add.ptr403, i32 noundef %shl, i32 noundef %conv.i979, i32 noundef %conv7.i983, ptr noundef nonnull %tc.i974) #9, !dbg !2066
  br label %deblock_edge.exit1000

deblock_edge.exit1000:                            ; preds = %do.body400, %if.end.i999
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i974) #9, !dbg !2067
  br label %do.body413, !dbg !2047

do.body413:                                       ; preds = %if.then397.do.body413_crit_edge, %deblock_edge.exit1000
  %add.i1002.pre-phi = phi i32 [ %.pre1311, %if.then397.do.body413_crit_edge ], [ %add.i975, %deblock_edge.exit1000 ], !dbg !2044
  %arrayidx417 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx59, i64 1, !dbg !2068
  %arrayidx418 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx417, i64 0, i64 2, !dbg !2068
  %271 = load ptr, ptr %arrayidx379, align 8, !dbg !2068, !tbaa !1715
  %h.val700 = load i32, ptr %62, align 16, !dbg !2068, !tbaa !1456
  %h.val701 = load i32, ptr %63, align 4, !dbg !2068, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i32 %shl), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2069
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %arrayidx418, metadata !1809, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %271, metadata !1812, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !2069
  %add1.i1003 = add i32 %h.val700, %add.i1002.pre-phi, !dbg !2070
  %idxprom.i1004 = sext i32 %add1.i1003 to i64, !dbg !2070
  %arrayidx.i1005 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1004, !dbg !2070
  %272 = load i8, ptr %arrayidx.i1005, align 1, !dbg !2070, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %272, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2069
  %add4.i1007 = add i32 %h.val701, %add.i1002.pre-phi, !dbg !2071
  %idxprom5.i1008 = sext i32 %add4.i1007 to i64, !dbg !2071
  %arrayidx6.i1009 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1008, !dbg !2071
  %273 = load i8, ptr %arrayidx6.i1009, align 1, !dbg !2071, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %273, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2069
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1001) #9, !dbg !2072
  call void @llvm.dbg.declare(metadata ptr %tc.i1001, metadata !1816, metadata !DIExpression()) #9, !dbg !2073
  %274 = load i32, ptr %arrayidx418, align 4, !dbg !2074, !tbaa !1534
  %tobool.i1011 = icmp ne i32 %274, 0, !dbg !2074
  %275 = add nsw i64 %idxprom.i1004, -28
  %tobool8.i1012 = icmp ult i64 %275, 48
  %or.cond.i1013 = select i1 %tobool.i1011, i1 %tobool8.i1012, i1 false, !dbg !2075
  %276 = add nsw i64 %idxprom5.i1008, -28
  %tobool10.i1014 = icmp ult i64 %276, 48
  %or.cond58.i1015 = select i1 %or.cond.i1013, i1 %tobool10.i1014, i1 false, !dbg !2075
  br i1 %or.cond58.i1015, label %if.end.i1026, label %deblock_edge.exit1027, !dbg !2075

if.end.i1026:                                     ; preds = %do.body413
  %conv7.i1010 = zext i8 %273 to i32, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %conv7.i1010, metadata !1815, metadata !DIExpression()) #9, !dbg !2069
  %conv.i1006 = zext i8 %272 to i32, !dbg !2070
  call void @llvm.dbg.value(metadata i32 %conv.i1006, metadata !1814, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i64 %idx.ext415), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2069
  %add.ptr416 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext415, !dbg !2068
  call void @llvm.dbg.value(metadata ptr %add.ptr416, metadata !1806, metadata !DIExpression()) #9, !dbg !2069
  %277 = lshr i32 %274, 24, !dbg !2075
  %278 = zext i32 %277 to i64, !dbg !2075
  %279 = lshr i32 %274, 16, !dbg !2075
  %280 = lshr i32 %274, 8, !dbg !2075
  %281 = and i32 %274, 255, !dbg !2076
  %idxprom15.i1016 = zext i32 %281 to i64, !dbg !2076
  %arrayidx16.i1017 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1004, i64 %idxprom15.i1016, !dbg !2076
  %282 = load i8, ptr %arrayidx16.i1017, align 1, !dbg !2076, !tbaa !1534
  store i8 %282, ptr %tc.i1001, align 1, !dbg !2077, !tbaa !1534
  %283 = and i32 %280, 255, !dbg !2078
  %idxprom25.i1018 = zext i32 %283 to i64, !dbg !2078
  %arrayidx26.i1019 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1004, i64 %idxprom25.i1018, !dbg !2078
  %284 = load i8, ptr %arrayidx26.i1019, align 1, !dbg !2078, !tbaa !1534
  store i8 %284, ptr %arrayidx30.i1020, align 1, !dbg !2079, !tbaa !1534
  %285 = and i32 %279, 255, !dbg !2080
  %idxprom35.i1021 = zext i32 %285 to i64, !dbg !2080
  %arrayidx36.i1022 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1004, i64 %idxprom35.i1021, !dbg !2080
  %286 = load i8, ptr %arrayidx36.i1022, align 1, !dbg !2080, !tbaa !1534
  store i8 %286, ptr %arrayidx40.i1023, align 1, !dbg !2081, !tbaa !1534
  %arrayidx46.i1024 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1004, i64 %278, !dbg !2082
  %287 = load i8, ptr %arrayidx46.i1024, align 1, !dbg !2082, !tbaa !1534
  store i8 %287, ptr %arrayidx50.i1025, align 1, !dbg !2083, !tbaa !1534
  call void %271(ptr noundef %add.ptr416, i32 noundef %shl, i32 noundef %conv.i1006, i32 noundef %conv7.i1010, ptr noundef nonnull %tc.i1001) #9, !dbg !2084
  %h.val698.pre = load i32, ptr %62, align 16, !dbg !2085, !tbaa !1456
  %h.val699.pre = load i32, ptr %63, align 4, !dbg !2085, !tbaa !1457
  br label %deblock_edge.exit1027

deblock_edge.exit1027:                            ; preds = %do.body413, %if.end.i1026
  %h.val699 = phi i32 [ %h.val701, %do.body413 ], [ %h.val699.pre, %if.end.i1026 ], !dbg !2085
  %h.val698 = phi i32 [ %h.val700, %do.body413 ], [ %h.val698.pre, %if.end.i1026 ], !dbg !2085
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1001) #9, !dbg !2087
  %288 = load ptr, ptr %arrayidx391, align 8, !dbg !2085, !tbaa !1715
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixu.0, i32 %shl19), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2088
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixv.0, i32 %shl19), metadata !1807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_shl, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %shl19, metadata !1808, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %arrayidx418, metadata !1809, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %conv110, metadata !1810, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata i32 1, metadata !1811, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata ptr %288, metadata !1812, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !2088
  %add.i1029 = add nuw nsw i32 %conv110, 12, !dbg !2090
  %add1.i1030 = add i32 %h.val698, %add.i1029, !dbg !2091
  %idxprom.i1031 = sext i32 %add1.i1030 to i64, !dbg !2091
  %arrayidx.i1032 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1031, !dbg !2091
  %289 = load i8, ptr %arrayidx.i1032, align 1, !dbg !2091, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %289, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2088
  %add4.i1034 = add i32 %h.val699, %add.i1029, !dbg !2092
  %idxprom5.i1035 = sext i32 %add4.i1034 to i64, !dbg !2092
  %arrayidx6.i1036 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1035, !dbg !2092
  %290 = load i8, ptr %arrayidx6.i1036, align 1, !dbg !2092, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %290, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2088
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1028) #9, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %tc.i1028, metadata !1816, metadata !DIExpression()) #9, !dbg !2094
  %291 = load i32, ptr %arrayidx418, align 4, !dbg !2095, !tbaa !1534
  %tobool.i1038 = icmp ne i32 %291, 0, !dbg !2095
  %292 = add nsw i64 %idxprom.i1031, -28
  %tobool8.i1039 = icmp ult i64 %292, 48
  %or.cond.i1040 = select i1 %tobool.i1038, i1 %tobool8.i1039, i1 false, !dbg !2096
  %293 = add nsw i64 %idxprom5.i1035, -28
  %tobool10.i1041 = icmp ult i64 %293, 48
  %or.cond58.i1042 = select i1 %or.cond.i1040, i1 %tobool10.i1041, i1 false, !dbg !2096
  br i1 %or.cond58.i1042, label %if.end.i1057, label %deblock_edge.exit1058, !dbg !2096

if.end.i1057:                                     ; preds = %deblock_edge.exit1027
  %conv7.i1037 = zext i8 %290 to i32, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %conv7.i1037, metadata !1815, metadata !DIExpression()) #9, !dbg !2088
  %conv.i1033 = zext i8 %289 to i32, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %conv.i1033, metadata !1814, metadata !DIExpression()) #9, !dbg !2088
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixu.0, i64 %idx.ext424), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2088
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixv.0, i64 %idx.ext424), metadata !1807, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2088
  %add.ptr428 = getelementptr inbounds i8, ptr %pixv.0, i64 %idx.ext424, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %add.ptr428, metadata !1807, metadata !DIExpression()) #9, !dbg !2088
  %add.ptr425 = getelementptr inbounds i8, ptr %pixu.0, i64 %idx.ext424, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %add.ptr425, metadata !1806, metadata !DIExpression()) #9, !dbg !2088
  %294 = lshr i32 %291, 24, !dbg !2096
  %295 = zext i32 %294 to i64, !dbg !2096
  %296 = lshr i32 %291, 16, !dbg !2096
  %297 = lshr i32 %291, 8, !dbg !2096
  %298 = and i32 %291, 255, !dbg !2097
  %idxprom15.i1043 = zext i32 %298 to i64, !dbg !2097
  %arrayidx16.i1044 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom15.i1043, !dbg !2097
  %299 = load i8, ptr %arrayidx16.i1044, align 1, !dbg !2097, !tbaa !1534
  %conv19.i1045 = add i8 %299, 1, !dbg !2097
  store i8 %conv19.i1045, ptr %tc.i1028, align 1, !dbg !2098, !tbaa !1534
  %300 = and i32 %297, 255, !dbg !2099
  %idxprom25.i1046 = zext i32 %300 to i64, !dbg !2099
  %arrayidx26.i1047 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom25.i1046, !dbg !2099
  %301 = load i8, ptr %arrayidx26.i1047, align 1, !dbg !2099, !tbaa !1534
  %conv29.i1048 = add i8 %301, 1, !dbg !2099
  store i8 %conv29.i1048, ptr %arrayidx30.i1049, align 1, !dbg !2100, !tbaa !1534
  %302 = and i32 %296, 255, !dbg !2101
  %idxprom35.i1050 = zext i32 %302 to i64, !dbg !2101
  %arrayidx36.i1051 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %idxprom35.i1050, !dbg !2101
  %303 = load i8, ptr %arrayidx36.i1051, align 1, !dbg !2101, !tbaa !1534
  %conv39.i1052 = add i8 %303, 1, !dbg !2101
  store i8 %conv39.i1052, ptr %arrayidx40.i1053, align 1, !dbg !2102, !tbaa !1534
  %arrayidx46.i1054 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1031, i64 %295, !dbg !2103
  %304 = load i8, ptr %arrayidx46.i1054, align 1, !dbg !2103, !tbaa !1534
  %conv49.i1055 = add i8 %304, 1, !dbg !2103
  store i8 %conv49.i1055, ptr %arrayidx50.i1056, align 1, !dbg !2104, !tbaa !1534
  call void %288(ptr noundef %add.ptr425, i32 noundef %shl19, i32 noundef %conv.i1033, i32 noundef %conv7.i1037, ptr noundef nonnull %tc.i1028) #9, !dbg !2105
  call void %288(ptr noundef %add.ptr428, i32 noundef %shl19, i32 noundef %conv.i1033, i32 noundef %conv7.i1037, ptr noundef nonnull %tc.i1028) #9, !dbg !2106
  br label %deblock_edge.exit1058, !dbg !2106

deblock_edge.exit1058:                            ; preds = %deblock_edge.exit1027, %if.end.i1057
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1028) #9, !dbg !2107
  br i1 %tobool398.not, label %do.body439, label %if.end452, !dbg !2108

do.body439:                                       ; preds = %deblock_edge.exit1058
  %arrayidx444 = getelementptr inbounds [4 x [4 x i8]], ptr %arrayidx417, i64 0, i64 3, !dbg !2109
  %305 = load ptr, ptr %arrayidx379, align 8, !dbg !2109, !tbaa !1715
  %h.val696 = load i32, ptr %62, align 16, !dbg !2109, !tbaa !1456
  %h.val697 = load i32, ptr %63, align 4, !dbg !2109, !tbaa !1457
  call void @llvm.dbg.value(metadata ptr undef, metadata !1801, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i32 %shl), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 12, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2112
  call void @llvm.dbg.value(metadata ptr null, metadata !1807, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1808, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %arrayidx444, metadata !1809, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata i32 %conv107, metadata !1810, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata i32 0, metadata !1811, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata ptr %305, metadata !1812, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata i32 undef, metadata !1813, metadata !DIExpression()) #9, !dbg !2112
  %add1.i1061 = add i32 %h.val696, %add.i1002.pre-phi, !dbg !2114
  %idxprom.i1062 = sext i32 %add1.i1061 to i64, !dbg !2114
  %arrayidx.i1063 = getelementptr inbounds [76 x i8], ptr @i_alpha_table, i64 0, i64 %idxprom.i1062, !dbg !2114
  %306 = load i8, ptr %arrayidx.i1063, align 1, !dbg !2114, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %306, metadata !1814, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2112
  %add4.i1065 = add i32 %h.val697, %add.i1002.pre-phi, !dbg !2115
  %idxprom5.i1066 = sext i32 %add4.i1065 to i64, !dbg !2115
  %arrayidx6.i1067 = getelementptr inbounds [76 x i8], ptr @i_beta_table, i64 0, i64 %idxprom5.i1066, !dbg !2115
  %307 = load i8, ptr %arrayidx6.i1067, align 1, !dbg !2115, !tbaa !1534
  call void @llvm.dbg.value(metadata i8 %307, metadata !1815, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #9, !dbg !2112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc.i1059) #9, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %tc.i1059, metadata !1816, metadata !DIExpression()) #9, !dbg !2117
  %308 = load i32, ptr %arrayidx444, align 4, !dbg !2118, !tbaa !1534
  %tobool.i1069 = icmp ne i32 %308, 0, !dbg !2118
  %309 = add nsw i64 %idxprom.i1062, -28
  %tobool8.i1070 = icmp ult i64 %309, 48
  %or.cond.i1071 = select i1 %tobool.i1069, i1 %tobool8.i1070, i1 false, !dbg !2119
  %310 = add nsw i64 %idxprom5.i1066, -28
  %tobool10.i1072 = icmp ult i64 %310, 48
  %or.cond58.i1073 = select i1 %or.cond.i1071, i1 %tobool10.i1072, i1 false, !dbg !2119
  br i1 %or.cond58.i1073, label %if.end.i1084, label %deblock_edge.exit1085, !dbg !2119

if.end.i1084:                                     ; preds = %do.body439
  %conv7.i1068 = zext i8 %307 to i32, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %conv7.i1068, metadata !1815, metadata !DIExpression()) #9, !dbg !2112
  %conv.i1064 = zext i8 %306 to i32, !dbg !2114
  call void @llvm.dbg.value(metadata i32 %conv.i1064, metadata !1814, metadata !DIExpression()) #9, !dbg !2112
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixy.0, i64 %idx.ext441), metadata !1806, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2112
  %add.ptr442 = getelementptr inbounds i8, ptr %pixy.0, i64 %idx.ext441, !dbg !2109
  call void @llvm.dbg.value(metadata ptr %add.ptr442, metadata !1806, metadata !DIExpression()) #9, !dbg !2112
  %311 = lshr i32 %308, 24, !dbg !2119
  %312 = zext i32 %311 to i64, !dbg !2119
  %313 = lshr i32 %308, 16, !dbg !2119
  %314 = lshr i32 %308, 8, !dbg !2119
  %315 = and i32 %308, 255, !dbg !2120
  %idxprom15.i1074 = zext i32 %315 to i64, !dbg !2120
  %arrayidx16.i1075 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1062, i64 %idxprom15.i1074, !dbg !2120
  %316 = load i8, ptr %arrayidx16.i1075, align 1, !dbg !2120, !tbaa !1534
  store i8 %316, ptr %tc.i1059, align 1, !dbg !2121, !tbaa !1534
  %317 = and i32 %314, 255, !dbg !2122
  %idxprom25.i1076 = zext i32 %317 to i64, !dbg !2122
  %arrayidx26.i1077 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1062, i64 %idxprom25.i1076, !dbg !2122
  %318 = load i8, ptr %arrayidx26.i1077, align 1, !dbg !2122, !tbaa !1534
  store i8 %318, ptr %arrayidx30.i1078, align 1, !dbg !2123, !tbaa !1534
  %319 = and i32 %313, 255, !dbg !2124
  %idxprom35.i1079 = zext i32 %319 to i64, !dbg !2124
  %arrayidx36.i1080 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1062, i64 %idxprom35.i1079, !dbg !2124
  %320 = load i8, ptr %arrayidx36.i1080, align 1, !dbg !2124, !tbaa !1534
  store i8 %320, ptr %arrayidx40.i1081, align 1, !dbg !2125, !tbaa !1534
  %arrayidx46.i1082 = getelementptr inbounds [76 x [4 x i8]], ptr @i_tc0_table, i64 0, i64 %idxprom.i1062, i64 %312, !dbg !2126
  %321 = load i8, ptr %arrayidx46.i1082, align 1, !dbg !2126, !tbaa !1534
  store i8 %321, ptr %arrayidx50.i1083, align 1, !dbg !2127, !tbaa !1534
  call void %305(ptr noundef %add.ptr442, i32 noundef %shl, i32 noundef %conv.i1064, i32 noundef %conv7.i1068, ptr noundef nonnull %tc.i1059) #9, !dbg !2128
  br label %deblock_edge.exit1085

deblock_edge.exit1085:                            ; preds = %do.body439, %if.end.i1084
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc.i1059) #9, !dbg !2129
  br label %if.end452, !dbg !2109

if.end452:                                        ; preds = %deblock_edge.exit1058, %deblock_edge.exit1085, %if.end395
  %or = or i32 %mb_y.addr.01296, %neg, !dbg !2130
  %and453 = and i32 %or, 1, !dbg !2131
  %add454 = add nuw nsw i32 %and453, %mb_x.01295, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %add454, metadata !1397, metadata !DIExpression()), !dbg !1693
  %xor = xor i32 %mb_y.addr.01296, %0, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1388, metadata !DIExpression()), !dbg !1423
  %322 = load ptr, ptr %sps, align 16, !dbg !1694, !tbaa !1515
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %322, i64 0, i32 16, !dbg !1695
  %323 = load i32, ptr %i_mb_width, align 4, !dbg !1695, !tbaa !1517
  %cmp22 = icmp slt i32 %add454, %323, !dbg !1696
  br i1 %cmp22, label %for.body, label %for.cond.cleanup, !dbg !1697, !llvm.loop !2134

land.lhs.true458:                                 ; preds = %for.cond.cleanup
  %b_transform_8x8_mode460 = getelementptr inbounds %struct.x264_pps_t, ptr %65, i64 0, i32 15, !dbg !2136
  %324 = load i32, ptr %b_transform_8x8_mode460, align 4, !dbg !2136, !tbaa !1480
  %tobool461.not = icmp eq i32 %324, 0, !dbg !2137
  br i1 %tobool461.not, label %if.end463, label %if.then462, !dbg !2138

if.then462:                                       ; preds = %land.lhs.true458
  call void @llvm.dbg.value(metadata ptr %h, metadata !1483, metadata !DIExpression()) #9, !dbg !2139
  call void @llvm.dbg.value(metadata i32 %mb_y.addr.0.lcssa, metadata !1491, metadata !DIExpression()) #9, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %10, metadata !1492, metadata !DIExpression()) #9, !dbg !2139
  call void @llvm.dbg.value(metadata ptr %h, metadata !2141, metadata !DIExpression()) #9, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %mb_y.addr.0.lcssa, metadata !2144, metadata !DIExpression()) #9, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %10, metadata !2145, metadata !DIExpression()) #9, !dbg !2149
  %non_zero_count.i1276 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !2151
  %325 = load ptr, ptr %non_zero_count.i1276, align 16, !dbg !2151, !tbaa !1513
  %mul.i1279 = mul nsw i32 %.lcssa, %mb_y.addr.0.lcssa, !dbg !2152
  %idx.ext.i1280 = sext i32 %mul.i1279 to i64, !dbg !2153
  %add.ptr.i1281 = getelementptr inbounds [24 x i8], ptr %325, i64 %idx.ext.i1280, !dbg !2153
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1281, metadata !2146, metadata !DIExpression()) #9, !dbg !2149
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #9, !dbg !2154
  %cmp13.i1282 = icmp sgt i32 %.lcssa, 0, !dbg !2155
  br i1 %cmp13.i1282, label %for.body.i1289, label %restore_cavlc_nnz_row.exit1290, !dbg !2157

for.body.i1289:                                   ; preds = %if.then462, %for.body.i1289
  %indvars.iv.i1283 = phi i64 [ %indvars.iv.next.i1286, %for.body.i1289 ], [ 0, %if.then462 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1283, metadata !2147, metadata !DIExpression()) #9, !dbg !2154
  %add.ptr4.i1284 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1281, i64 %indvars.iv.i1283, !dbg !2158
  %add.ptr6.i1285 = getelementptr inbounds [16 x i8], ptr %10, i64 %indvars.iv.i1283, !dbg !2159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1284, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr6.i1285, i64 16, i1 false) #9, !dbg !2160
  %indvars.iv.next.i1286 = add nuw nsw i64 %indvars.iv.i1283, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1286, metadata !2147, metadata !DIExpression()) #9, !dbg !2154
  %326 = load ptr, ptr %sps, align 16, !dbg !2162, !tbaa !1515
  %i_mb_width2.i1287 = getelementptr inbounds %struct.x264_sps_t, ptr %326, i64 0, i32 16, !dbg !2163
  %327 = load i32, ptr %i_mb_width2.i1287, align 4, !dbg !2163, !tbaa !1517
  %328 = sext i32 %327 to i64, !dbg !2155
  %cmp.i1288 = icmp slt i64 %indvars.iv.next.i1286, %328, !dbg !2155
  br i1 %cmp.i1288, label %for.body.i1289, label %restore_cavlc_nnz_row.exit1290, !dbg !2157, !llvm.loop !2164

restore_cavlc_nnz_row.exit1290:                   ; preds = %for.body.i1289, %if.then462
  %329 = phi ptr [ %64, %if.then462 ], [ %326, %for.body.i1289 ]
  %cmp.i1086 = icmp sgt i32 %mb_y.addr.0.lcssa, 0, !dbg !2166
  br i1 %cmp.i1086, label %if.then.i1092, label %if.end.i1095, !dbg !2167

if.then.i1092:                                    ; preds = %restore_cavlc_nnz_row.exit1290
  %sub.i1087 = add nsw i32 %mb_y.addr.0.lcssa, -1, !dbg !2168
  %i_mb_width.i1089 = getelementptr inbounds %struct.x264_sps_t, ptr %329, i64 0, i32 16, !dbg !2169
  %330 = load i32, ptr %i_mb_width.i1089, align 4, !dbg !2169, !tbaa !1517
  %idx.ext.i1090 = sext i32 %330 to i64, !dbg !2170
  %add.ptr.i1091 = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext.i1090, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %h, metadata !2141, metadata !DIExpression()) #9, !dbg !2171
  call void @llvm.dbg.value(metadata i32 %sub.i1087, metadata !2144, metadata !DIExpression()) #9, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1091, metadata !2145, metadata !DIExpression()) #9, !dbg !2171
  %331 = load ptr, ptr %non_zero_count.i1276, align 16, !dbg !2173, !tbaa !1513
  %mul.i1264 = mul nsw i32 %330, %sub.i1087, !dbg !2174
  %idx.ext.i1265 = sext i32 %mul.i1264 to i64, !dbg !2175
  %add.ptr.i1266 = getelementptr inbounds [24 x i8], ptr %331, i64 %idx.ext.i1265, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1266, metadata !2146, metadata !DIExpression()) #9, !dbg !2171
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #9, !dbg !2176
  %cmp13.i1267 = icmp sgt i32 %330, 0, !dbg !2177
  br i1 %cmp13.i1267, label %for.body.i1274, label %if.end.i1095, !dbg !2178

for.body.i1274:                                   ; preds = %if.then.i1092, %for.body.i1274
  %indvars.iv.i1268 = phi i64 [ %indvars.iv.next.i1271, %for.body.i1274 ], [ 0, %if.then.i1092 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1268, metadata !2147, metadata !DIExpression()) #9, !dbg !2176
  %add.ptr4.i1269 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1266, i64 %indvars.iv.i1268, !dbg !2179
  %add.ptr6.i1270 = getelementptr inbounds [16 x i8], ptr %add.ptr.i1091, i64 %indvars.iv.i1268, !dbg !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1269, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr6.i1270, i64 16, i1 false) #9, !dbg !2181
  %indvars.iv.next.i1271 = add nuw nsw i64 %indvars.iv.i1268, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1271, metadata !2147, metadata !DIExpression()) #9, !dbg !2176
  %332 = load ptr, ptr %sps, align 16, !dbg !2183, !tbaa !1515
  %i_mb_width2.i1272 = getelementptr inbounds %struct.x264_sps_t, ptr %332, i64 0, i32 16, !dbg !2184
  %333 = load i32, ptr %i_mb_width2.i1272, align 4, !dbg !2184, !tbaa !1517
  %334 = sext i32 %333 to i64, !dbg !2177
  %cmp.i1273 = icmp slt i64 %indvars.iv.next.i1271, %334, !dbg !2177
  br i1 %cmp.i1273, label %for.body.i1274, label %if.end.i1095, !dbg !2178, !llvm.loop !2185

if.end.i1095:                                     ; preds = %for.body.i1274, %if.then.i1092, %restore_cavlc_nnz_row.exit1290
  %335 = phi ptr [ %329, %if.then.i1092 ], [ %329, %restore_cavlc_nnz_row.exit1290 ], [ %332, %for.body.i1274 ]
  %336 = load i32, ptr %b_mbaff, align 4, !dbg !2187, !tbaa !1425
  %tobool.not.i1094 = icmp eq i32 %336, 0, !dbg !2188
  br i1 %tobool.not.i1094, label %if.end463, label %if.then1.i1102, !dbg !2189

if.then1.i1102:                                   ; preds = %if.end.i1095
  %add.i1096 = add nsw i32 %mb_y.addr.0.lcssa, 1, !dbg !2190
  %i_mb_width3.i1098 = getelementptr inbounds %struct.x264_sps_t, ptr %335, i64 0, i32 16, !dbg !2191
  %337 = load i32, ptr %i_mb_width3.i1098, align 4, !dbg !2191, !tbaa !1517
  %mul.i1099 = shl nsw i32 %337, 1, !dbg !2192
  %idx.ext4.i1100 = sext i32 %mul.i1099 to i64, !dbg !2193
  %add.ptr5.i1101 = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext4.i1100, !dbg !2193
  call void @llvm.dbg.value(metadata ptr %h, metadata !2141, metadata !DIExpression()) #9, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %add.i1096, metadata !2144, metadata !DIExpression()) #9, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %add.ptr5.i1101, metadata !2145, metadata !DIExpression()) #9, !dbg !2194
  %338 = load ptr, ptr %non_zero_count.i1276, align 16, !dbg !2196, !tbaa !1513
  %mul.i1249 = mul nsw i32 %337, %add.i1096, !dbg !2197
  %idx.ext.i1250 = sext i32 %mul.i1249 to i64, !dbg !2198
  %add.ptr.i1251 = getelementptr inbounds [24 x i8], ptr %338, i64 %idx.ext.i1250, !dbg !2198
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1251, metadata !2146, metadata !DIExpression()) #9, !dbg !2194
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #9, !dbg !2199
  %cmp13.i1252 = icmp sgt i32 %337, 0, !dbg !2200
  br i1 %cmp13.i1252, label %for.body.i1259, label %restore_cavlc_nnz_row.exit1260, !dbg !2201

for.body.i1259:                                   ; preds = %if.then1.i1102, %for.body.i1259
  %indvars.iv.i1253 = phi i64 [ %indvars.iv.next.i1256, %for.body.i1259 ], [ 0, %if.then1.i1102 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1253, metadata !2147, metadata !DIExpression()) #9, !dbg !2199
  %add.ptr4.i1254 = getelementptr inbounds [24 x i8], ptr %add.ptr.i1251, i64 %indvars.iv.i1253, !dbg !2202
  %add.ptr6.i1255 = getelementptr inbounds [16 x i8], ptr %add.ptr5.i1101, i64 %indvars.iv.i1253, !dbg !2203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i1254, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr6.i1255, i64 16, i1 false) #9, !dbg !2204
  %indvars.iv.next.i1256 = add nuw nsw i64 %indvars.iv.i1253, 1, !dbg !2205
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1256, metadata !2147, metadata !DIExpression()) #9, !dbg !2199
  %339 = load ptr, ptr %sps, align 16, !dbg !2206, !tbaa !1515
  %i_mb_width2.i1257 = getelementptr inbounds %struct.x264_sps_t, ptr %339, i64 0, i32 16, !dbg !2207
  %340 = load i32, ptr %i_mb_width2.i1257, align 4, !dbg !2207, !tbaa !1517
  %341 = sext i32 %340 to i64, !dbg !2200
  %cmp.i1258 = icmp slt i64 %indvars.iv.next.i1256, %341, !dbg !2200
  br i1 %cmp.i1258, label %for.body.i1259, label %restore_cavlc_nnz_row.exit1260, !dbg !2201, !llvm.loop !2208

restore_cavlc_nnz_row.exit1260:                   ; preds = %for.body.i1259, %if.then1.i1102
  %342 = phi i32 [ %337, %if.then1.i1102 ], [ %340, %for.body.i1259 ]
  br i1 %cmp.i1086, label %if.then7.i1108, label %if.end463, !dbg !2210

if.then7.i1108:                                   ; preds = %restore_cavlc_nnz_row.exit1260
  %sub8.i1103 = add nsw i32 %mb_y.addr.0.lcssa, -2, !dbg !2211
  %mul11.i1105 = mul nsw i32 %342, 3, !dbg !2212
  %idx.ext12.i1106 = sext i32 %mul11.i1105 to i64, !dbg !2213
  %add.ptr13.i1107 = getelementptr inbounds [16 x i8], ptr %10, i64 %idx.ext12.i1106, !dbg !2213
  call void @llvm.dbg.value(metadata ptr %h, metadata !2141, metadata !DIExpression()) #9, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %sub8.i1103, metadata !2144, metadata !DIExpression()) #9, !dbg !2214
  call void @llvm.dbg.value(metadata ptr %add.ptr13.i1107, metadata !2145, metadata !DIExpression()) #9, !dbg !2214
  %343 = load ptr, ptr %non_zero_count.i1276, align 16, !dbg !2216, !tbaa !1513
  %mul.i1238 = mul nsw i32 %342, %sub8.i1103, !dbg !2217
  %idx.ext.i1239 = sext i32 %mul.i1238 to i64, !dbg !2218
  %add.ptr.i1240 = getelementptr inbounds [24 x i8], ptr %343, i64 %idx.ext.i1239, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1240, metadata !2146, metadata !DIExpression()) #9, !dbg !2214
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #9, !dbg !2219
  %cmp13.i = icmp sgt i32 %342, 0, !dbg !2220
  br i1 %cmp13.i, label %for.body.i1245, label %if.end463, !dbg !2221

for.body.i1245:                                   ; preds = %if.then7.i1108, %for.body.i1245
  %indvars.iv.i1241 = phi i64 [ %indvars.iv.next.i1243, %for.body.i1245 ], [ 0, %if.then7.i1108 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1241, metadata !2147, metadata !DIExpression()) #9, !dbg !2219
  %add.ptr4.i = getelementptr inbounds [24 x i8], ptr %add.ptr.i1240, i64 %indvars.iv.i1241, !dbg !2222
  %add.ptr6.i1242 = getelementptr inbounds [16 x i8], ptr %add.ptr13.i1107, i64 %indvars.iv.i1241, !dbg !2223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %add.ptr4.i, ptr noundef nonnull align 1 dereferenceable(16) %add.ptr6.i1242, i64 16, i1 false) #9, !dbg !2224
  %indvars.iv.next.i1243 = add nuw nsw i64 %indvars.iv.i1241, 1, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1243, metadata !2147, metadata !DIExpression()) #9, !dbg !2219
  %344 = load ptr, ptr %sps, align 16, !dbg !2226, !tbaa !1515
  %i_mb_width2.i = getelementptr inbounds %struct.x264_sps_t, ptr %344, i64 0, i32 16, !dbg !2227
  %345 = load i32, ptr %i_mb_width2.i, align 4, !dbg !2227, !tbaa !1517
  %346 = sext i32 %345 to i64, !dbg !2220
  %cmp.i1244 = icmp slt i64 %indvars.iv.next.i1243, %346, !dbg !2220
  br i1 %cmp.i1244, label %for.body.i1245, label %if.end463, !dbg !2221, !llvm.loop !2228

if.end463:                                        ; preds = %for.body.i1245, %restore_cavlc_nnz_row.exit1260, %if.end.i1095, %if.then7.i1108, %land.lhs.true458, %for.cond.cleanup
  ret void, !dbg !2230
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !2231 void @x264_prefetch_fenc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2235 void @x264_macroblock_cache_load_neighbours_deblock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_deblock_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf) local_unnamed_addr #4 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i32 %cpu, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr %pf, metadata !2244, metadata !DIExpression()), !dbg !2245
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %pf, i64 0, i64 1, !dbg !2246
  store ptr @deblock_v_luma_c, ptr %arrayidx, align 8, !dbg !2247, !tbaa !1715
  store ptr @deblock_h_luma_c, ptr %pf, align 8, !dbg !2248, !tbaa !1715
  %deblock_chroma = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 1, !dbg !2249
  %arrayidx3 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 1, i64 1, !dbg !2250
  store ptr @deblock_v_chroma_c, ptr %arrayidx3, align 8, !dbg !2251, !tbaa !1715
  store ptr @deblock_h_chroma_c, ptr %deblock_chroma, align 8, !dbg !2252, !tbaa !1715
  %deblock_luma_intra = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 2, !dbg !2253
  %arrayidx6 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 2, i64 1, !dbg !2254
  store ptr @deblock_v_luma_intra_c, ptr %arrayidx6, align 8, !dbg !2255, !tbaa !1715
  store ptr @deblock_h_luma_intra_c, ptr %deblock_luma_intra, align 8, !dbg !2256, !tbaa !1715
  %deblock_chroma_intra = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 3, !dbg !2257
  %arrayidx9 = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 3, i64 1, !dbg !2258
  store ptr @deblock_v_chroma_intra_c, ptr %arrayidx9, align 8, !dbg !2259, !tbaa !1715
  store ptr @deblock_h_chroma_intra_c, ptr %deblock_chroma_intra, align 8, !dbg !2260, !tbaa !1715
  %deblock_strength = getelementptr inbounds %struct.x264_deblock_function_t, ptr %pf, i64 0, i32 4, !dbg !2261
  store ptr @deblock_strength_c, ptr %deblock_strength, align 8, !dbg !2262, !tbaa !2263
  ret void, !dbg !2264
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_v_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #5 !dbg !2265 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2267, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2269, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2271, metadata !DIExpression()), !dbg !2272
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2273
  ret void, !dbg !2274
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_h_luma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #5 !dbg !2275 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2277, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2278, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2279, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2280, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2281, metadata !DIExpression()), !dbg !2282
  tail call fastcc void @deblock_luma_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr noundef %tc0), !dbg !2283
  ret void, !dbg !2284
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_v_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #5 !dbg !2285 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2287, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2288, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2289, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2291, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2298, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 1, metadata !2299, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2300, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2301, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2302, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2303, metadata !DIExpression()) #9, !dbg !2321
  %mul8.i = mul nsw i32 %stride, -2
  %idxprom9.i = sext i32 %mul8.i to i64
  %mul12.i = sub nsw i32 0, %stride
  %idxprom13.i = sext i32 %mul12.i to i64
  %idxprom21.i = sext i32 %stride to i64
  br label %for.body.i, !dbg !2322

for.body.i:                                       ; preds = %cleanup.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %cleanup.i ]
  %pix.addr.096.i = phi ptr [ %pix, %entry ], [ %pix.addr.2.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.096.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2303, metadata !DIExpression()) #9, !dbg !2321
  %arrayidx.i = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv.i, !dbg !2323
  %0 = load i8, ptr %arrayidx.i, align 1, !dbg !2323, !tbaa !1534
  %conv.i = sext i8 %0 to i32, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2305, metadata !DIExpression()) #9, !dbg !2324
  %cmp1.i = icmp slt i8 %0, 1, !dbg !2325
  br i1 %cmp1.i, label %if.then.i, label %for.cond3.preheader.i, !dbg !2327

for.cond3.preheader.i:                            ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %pix.addr.096.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()) #9, !dbg !2328
  %sub39.i = sub nsw i32 0, %conv.i
  br label %for.body7.i, !dbg !2329

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %pix.addr.096.i, i64 2, !dbg !2330
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  br label %cleanup.i, !dbg !2332

for.body7.i:                                      ; preds = %if.end51.i, %for.cond3.preheader.i
  %pix.addr.193.i = phi ptr [ %pix.addr.096.i, %for.cond3.preheader.i ], [ %add.ptr53.i, %if.end51.i ]
  %cmp4.i = phi i1 [ true, %for.cond3.preheader.i ], [ false, %if.end51.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.193.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 undef, metadata !2308, metadata !DIExpression()) #9, !dbg !2328
  %arrayidx10.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 %idxprom9.i, !dbg !2333
  %1 = load i8, ptr %arrayidx10.i, align 1, !dbg !2333, !tbaa !1534
  %conv11.i = zext i8 %1 to i32, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %conv11.i, metadata !2310, metadata !DIExpression()) #9, !dbg !2334
  %arrayidx14.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 %idxprom13.i, !dbg !2335
  %2 = load i8, ptr %arrayidx14.i, align 1, !dbg !2335, !tbaa !1534
  %conv15.i = zext i8 %2 to i32, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %conv15.i, metadata !2313, metadata !DIExpression()) #9, !dbg !2334
  %3 = load i8, ptr %pix.addr.193.i, align 1, !dbg !2336, !tbaa !1534
  %conv19.i = zext i8 %3 to i32, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %conv19.i, metadata !2314, metadata !DIExpression()) #9, !dbg !2334
  %arrayidx22.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 %idxprom21.i, !dbg !2337
  %4 = load i8, ptr %arrayidx22.i, align 1, !dbg !2337, !tbaa !1534
  %conv23.i = zext i8 %4 to i32, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %conv23.i, metadata !2315, metadata !DIExpression()) #9, !dbg !2334
  %sub.i = sub nsw i32 %conv15.i, %conv19.i, !dbg !2338
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #9, !dbg !2339
  %cmp24.i = icmp slt i32 %5, %alpha, !dbg !2340
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.end51.i, !dbg !2341

land.lhs.true.i:                                  ; preds = %for.body7.i
  %sub26.i = sub nsw i32 %conv11.i, %conv15.i, !dbg !2342
  %6 = tail call i32 @llvm.abs.i32(i32 %sub26.i, i1 true) #9, !dbg !2343
  %cmp28.i = icmp slt i32 %6, %beta, !dbg !2344
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.end51.i, !dbg !2345

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %sub31.i = sub nsw i32 %conv23.i, %conv19.i, !dbg !2346
  %7 = tail call i32 @llvm.abs.i32(i32 %sub31.i, i1 true) #9, !dbg !2347
  %cmp33.i = icmp slt i32 %7, %beta, !dbg !2348
  br i1 %cmp33.i, label %if.then35.i, label %if.end51.i, !dbg !2349

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %sub36.i = sub nsw i32 %conv19.i, %conv15.i, !dbg !2350
  %shl.i = shl nsw i32 %sub36.i, 2, !dbg !2351
  %sub37.i = add nuw nsw i32 %conv11.i, 4, !dbg !2352
  %add.i = sub nsw i32 %sub37.i, %conv23.i, !dbg !2353
  %add38.i = add nsw i32 %add.i, %shl.i, !dbg !2354
  %shr.i = ashr i32 %add38.i, 3, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !2356, metadata !DIExpression()) #9, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %sub39.i, metadata !2361, metadata !DIExpression()) #9, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2362, metadata !DIExpression()) #9, !dbg !2363
  %cmp.i.i = icmp slt i32 %shr.i, %sub39.i, !dbg !2365
  %8 = tail call i32 @llvm.smin.i32(i32 %shr.i, i32 %conv.i) #9
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub39.i, i32 %8, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !2316, metadata !DIExpression()) #9, !dbg !2367
  %add41.i = add nsw i32 %spec.select.i.i, %conv15.i, !dbg !2368
  call void @llvm.dbg.value(metadata i32 %add41.i, metadata !2369, metadata !DIExpression()) #9, !dbg !2374
  %tobool.not.i.i = icmp ult i32 %add41.i, 256, !dbg !2376
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !2377

cond.true.i.i:                                    ; preds = %if.then35.i
  %9 = icmp sgt i32 %add41.i, 0, !dbg !2378
  %shr.i.i = sext i1 %9 to i32, !dbg !2378
  br label %x264_clip_uint8.exit.i, !dbg !2377

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %if.then35.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %add41.i, %if.then35.i ], !dbg !2377
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !2377
  store i8 %conv.i.i, ptr %arrayidx14.i, align 1, !dbg !2379, !tbaa !1534
  %sub46.i = sub nsw i32 %conv19.i, %spec.select.i.i, !dbg !2380
  call void @llvm.dbg.value(metadata i32 %sub46.i, metadata !2369, metadata !DIExpression()) #9, !dbg !2381
  %tobool.not.i86.i = icmp ult i32 %sub46.i, 256, !dbg !2383
  br i1 %tobool.not.i86.i, label %x264_clip_uint8.exit91.i, label %cond.true.i88.i, !dbg !2384

cond.true.i88.i:                                  ; preds = %x264_clip_uint8.exit.i
  %10 = icmp sgt i32 %sub46.i, 0, !dbg !2385
  %shr.i87.i = sext i1 %10 to i32, !dbg !2385
  br label %x264_clip_uint8.exit91.i, !dbg !2384

x264_clip_uint8.exit91.i:                         ; preds = %cond.true.i88.i, %x264_clip_uint8.exit.i
  %cond.i89.i = phi i32 [ %shr.i87.i, %cond.true.i88.i ], [ %sub46.i, %x264_clip_uint8.exit.i ], !dbg !2384
  %conv.i90.i = trunc i32 %cond.i89.i to i8, !dbg !2384
  store i8 %conv.i90.i, ptr %pix.addr.193.i, align 1, !dbg !2386, !tbaa !1534
  br label %if.end51.i, !dbg !2387

if.end51.i:                                       ; preds = %x264_clip_uint8.exit91.i, %land.lhs.true30.i, %land.lhs.true.i, %for.body7.i
  %add.ptr53.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 1, !dbg !2388
  call void @llvm.dbg.value(metadata ptr %add.ptr53.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  call void @llvm.dbg.value(metadata i32 undef, metadata !2308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !2328
  br i1 %cmp4.i, label %for.body7.i, label %cleanup.i, !dbg !2329, !llvm.loop !2389

cleanup.i:                                        ; preds = %if.end51.i, %if.then.i
  %pix.addr.2.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr53.i, %if.end51.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.2.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2319
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2303, metadata !DIExpression()) #9, !dbg !2321
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !2392
  br i1 %exitcond.not.i, label %deblock_chroma_c.exit, label %for.body.i, !dbg !2322, !llvm.loop !2393

deblock_chroma_c.exit:                            ; preds = %cleanup.i
  ret void, !dbg !2395
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_h_chroma_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) #5 !dbg !2396 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2398, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2401, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2402, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 1, metadata !2298, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2299, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2300, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2301, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2302, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2303, metadata !DIExpression()) #9, !dbg !2406
  %idx.ext52.i = sext i32 %stride to i64
  %mul.i = shl nsw i32 %stride, 1
  %idx.ext.i = sext i32 %mul.i to i64
  br label %for.body.i, !dbg !2407

for.body.i:                                       ; preds = %cleanup.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %cleanup.i ]
  %pix.addr.096.i = phi ptr [ %pix, %entry ], [ %pix.addr.2.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.096.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2303, metadata !DIExpression()) #9, !dbg !2406
  %arrayidx.i = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv.i, !dbg !2408
  %0 = load i8, ptr %arrayidx.i, align 1, !dbg !2408, !tbaa !1534
  %conv.i = sext i8 %0 to i32, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2305, metadata !DIExpression()) #9, !dbg !2409
  %cmp1.i = icmp slt i8 %0, 1, !dbg !2410
  br i1 %cmp1.i, label %if.then.i, label %for.cond3.preheader.i, !dbg !2411

for.cond3.preheader.i:                            ; preds = %for.body.i
  call void @llvm.dbg.value(metadata ptr %pix.addr.096.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()) #9, !dbg !2412
  %sub39.i = sub nsw i32 0, %conv.i
  br label %for.body7.i, !dbg !2413

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %pix.addr.096.i, i64 %idx.ext.i, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  br label %cleanup.i, !dbg !2415

for.body7.i:                                      ; preds = %if.end51.i, %for.cond3.preheader.i
  %pix.addr.193.i = phi ptr [ %pix.addr.096.i, %for.cond3.preheader.i ], [ %add.ptr53.i, %if.end51.i ]
  %cmp4.i = phi i1 [ true, %for.cond3.preheader.i ], [ false, %if.end51.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.193.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 undef, metadata !2308, metadata !DIExpression()) #9, !dbg !2412
  %arrayidx10.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 -2, !dbg !2416
  %1 = load i8, ptr %arrayidx10.i, align 1, !dbg !2416, !tbaa !1534
  %conv11.i = zext i8 %1 to i32, !dbg !2416
  call void @llvm.dbg.value(metadata i32 %conv11.i, metadata !2310, metadata !DIExpression()) #9, !dbg !2417
  %arrayidx14.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 -1, !dbg !2418
  %2 = load i8, ptr %arrayidx14.i, align 1, !dbg !2418, !tbaa !1534
  %conv15.i = zext i8 %2 to i32, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %conv15.i, metadata !2313, metadata !DIExpression()) #9, !dbg !2417
  %3 = load i8, ptr %pix.addr.193.i, align 1, !dbg !2419, !tbaa !1534
  %conv19.i = zext i8 %3 to i32, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %conv19.i, metadata !2314, metadata !DIExpression()) #9, !dbg !2417
  %arrayidx22.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 1, !dbg !2420
  %4 = load i8, ptr %arrayidx22.i, align 1, !dbg !2420, !tbaa !1534
  %conv23.i = zext i8 %4 to i32, !dbg !2420
  call void @llvm.dbg.value(metadata i32 %conv23.i, metadata !2315, metadata !DIExpression()) #9, !dbg !2417
  %sub.i = sub nsw i32 %conv15.i, %conv19.i, !dbg !2421
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #9, !dbg !2422
  %cmp24.i = icmp slt i32 %5, %alpha, !dbg !2423
  br i1 %cmp24.i, label %land.lhs.true.i, label %if.end51.i, !dbg !2424

land.lhs.true.i:                                  ; preds = %for.body7.i
  %sub26.i = sub nsw i32 %conv11.i, %conv15.i, !dbg !2425
  %6 = tail call i32 @llvm.abs.i32(i32 %sub26.i, i1 true) #9, !dbg !2426
  %cmp28.i = icmp slt i32 %6, %beta, !dbg !2427
  br i1 %cmp28.i, label %land.lhs.true30.i, label %if.end51.i, !dbg !2428

land.lhs.true30.i:                                ; preds = %land.lhs.true.i
  %sub31.i = sub nsw i32 %conv23.i, %conv19.i, !dbg !2429
  %7 = tail call i32 @llvm.abs.i32(i32 %sub31.i, i1 true) #9, !dbg !2430
  %cmp33.i = icmp slt i32 %7, %beta, !dbg !2431
  br i1 %cmp33.i, label %if.then35.i, label %if.end51.i, !dbg !2432

if.then35.i:                                      ; preds = %land.lhs.true30.i
  %sub36.i = sub nsw i32 %conv19.i, %conv15.i, !dbg !2433
  %shl.i = shl nsw i32 %sub36.i, 2, !dbg !2434
  %sub37.i = add nuw nsw i32 %conv11.i, 4, !dbg !2435
  %add.i = sub nsw i32 %sub37.i, %conv23.i, !dbg !2436
  %add38.i = add nsw i32 %add.i, %shl.i, !dbg !2437
  %shr.i = ashr i32 %add38.i, 3, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !2356, metadata !DIExpression()) #9, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %sub39.i, metadata !2361, metadata !DIExpression()) #9, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2362, metadata !DIExpression()) #9, !dbg !2439
  %cmp.i.i = icmp slt i32 %shr.i, %sub39.i, !dbg !2441
  %8 = tail call i32 @llvm.smin.i32(i32 %shr.i, i32 %conv.i) #9
  %spec.select.i.i = select i1 %cmp.i.i, i32 %sub39.i, i32 %8, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %spec.select.i.i, metadata !2316, metadata !DIExpression()) #9, !dbg !2443
  %add41.i = add nsw i32 %spec.select.i.i, %conv15.i, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %add41.i, metadata !2369, metadata !DIExpression()) #9, !dbg !2445
  %tobool.not.i.i = icmp ult i32 %add41.i, 256, !dbg !2447
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !2448

cond.true.i.i:                                    ; preds = %if.then35.i
  %9 = icmp sgt i32 %add41.i, 0, !dbg !2449
  %shr.i.i = sext i1 %9 to i32, !dbg !2449
  br label %x264_clip_uint8.exit.i, !dbg !2448

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %if.then35.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %add41.i, %if.then35.i ], !dbg !2448
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !2448
  store i8 %conv.i.i, ptr %arrayidx14.i, align 1, !dbg !2450, !tbaa !1534
  %sub46.i = sub nsw i32 %conv19.i, %spec.select.i.i, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %sub46.i, metadata !2369, metadata !DIExpression()) #9, !dbg !2452
  %tobool.not.i86.i = icmp ult i32 %sub46.i, 256, !dbg !2454
  br i1 %tobool.not.i86.i, label %x264_clip_uint8.exit91.i, label %cond.true.i88.i, !dbg !2455

cond.true.i88.i:                                  ; preds = %x264_clip_uint8.exit.i
  %10 = icmp sgt i32 %sub46.i, 0, !dbg !2456
  %shr.i87.i = sext i1 %10 to i32, !dbg !2456
  br label %x264_clip_uint8.exit91.i, !dbg !2455

x264_clip_uint8.exit91.i:                         ; preds = %cond.true.i88.i, %x264_clip_uint8.exit.i
  %cond.i89.i = phi i32 [ %shr.i87.i, %cond.true.i88.i ], [ %sub46.i, %x264_clip_uint8.exit.i ], !dbg !2455
  %conv.i90.i = trunc i32 %cond.i89.i to i8, !dbg !2455
  store i8 %conv.i90.i, ptr %pix.addr.193.i, align 1, !dbg !2457, !tbaa !1534
  br label %if.end51.i, !dbg !2458

if.end51.i:                                       ; preds = %x264_clip_uint8.exit91.i, %land.lhs.true30.i, %land.lhs.true.i, %for.body7.i
  %add.ptr53.i = getelementptr inbounds i8, ptr %pix.addr.193.i, i64 %idx.ext52.i, !dbg !2459
  call void @llvm.dbg.value(metadata ptr %add.ptr53.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  call void @llvm.dbg.value(metadata i32 undef, metadata !2308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #9, !dbg !2412
  br i1 %cmp4.i, label %for.body7.i, label %cleanup.i, !dbg !2413, !llvm.loop !2460

cleanup.i:                                        ; preds = %if.end51.i, %if.then.i
  %pix.addr.2.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %add.ptr53.i, %if.end51.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.2.i, metadata !2293, metadata !DIExpression()) #9, !dbg !2404
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2462
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2303, metadata !DIExpression()) #9, !dbg !2406
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !2463
  br i1 %exitcond.not.i, label %deblock_chroma_c.exit, label %for.body.i, !dbg !2407, !llvm.loop !2464

deblock_chroma_c.exit:                            ; preds = %cleanup.i
  ret void, !dbg !2466
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_v_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2467 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2469, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2470, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2471, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2472, metadata !DIExpression()), !dbg !2473
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef %stride, i32 noundef 1, i32 noundef %alpha, i32 noundef %beta), !dbg !2474
  ret void, !dbg !2475
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_h_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2478, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2481, metadata !DIExpression()), !dbg !2482
  tail call fastcc void @deblock_luma_intra_c(ptr noundef %pix, i32 noundef 1, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta), !dbg !2483
  ret void, !dbg !2484
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_v_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2485 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2487, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2488, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2489, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2490, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2492, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2497, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 1, metadata !2498, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2499, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2500, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()) #9, !dbg !2511
  %mul.i = mul nsw i32 %stride, -2
  %idxprom.i = sext i32 %mul.i to i64
  %mul1.i = sub nsw i32 0, %stride
  %idxprom2.i = sext i32 %mul1.i to i64
  %idxprom10.i = sext i32 %stride to i64
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2492, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()) #9, !dbg !2511
  br label %for.body.i, !dbg !2512

for.body.i:                                       ; preds = %if.end.i, %entry
  %pix.addr.062.i = phi ptr [ %pix, %entry ], [ %add.ptr.i, %if.end.i ]
  %d.061.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.062.i, metadata !2492, metadata !DIExpression()) #9, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %d.061.i, metadata !2501, metadata !DIExpression()) #9, !dbg !2511
  %arrayidx.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 %idxprom.i, !dbg !2513
  %0 = load i8, ptr %arrayidx.i, align 1, !dbg !2513, !tbaa !1534
  %conv.i = zext i8 %0 to i32, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2503, metadata !DIExpression()) #9, !dbg !2514
  %arrayidx3.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 %idxprom2.i, !dbg !2515
  %1 = load i8, ptr %arrayidx3.i, align 1, !dbg !2515, !tbaa !1534
  %conv4.i = zext i8 %1 to i32, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %conv4.i, metadata !2506, metadata !DIExpression()) #9, !dbg !2514
  %2 = load i8, ptr %pix.addr.062.i, align 1, !dbg !2516, !tbaa !1534
  %conv8.i = zext i8 %2 to i32, !dbg !2516
  call void @llvm.dbg.value(metadata i32 %conv8.i, metadata !2507, metadata !DIExpression()) #9, !dbg !2514
  %arrayidx11.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 %idxprom10.i, !dbg !2517
  %3 = load i8, ptr %arrayidx11.i, align 1, !dbg !2517, !tbaa !1534
  %conv12.i = zext i8 %3 to i32, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !2508, metadata !DIExpression()) #9, !dbg !2514
  %sub.i = sub nsw i32 %conv4.i, %conv8.i, !dbg !2518
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #9, !dbg !2520
  %cmp13.i = icmp slt i32 %4, %alpha, !dbg !2521
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end.i, !dbg !2522

land.lhs.true.i:                                  ; preds = %for.body.i
  %sub15.i = sub nsw i32 %conv.i, %conv4.i, !dbg !2523
  %5 = tail call i32 @llvm.abs.i32(i32 %sub15.i, i1 true) #9, !dbg !2524
  %cmp17.i = icmp slt i32 %5, %beta, !dbg !2525
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end.i, !dbg !2526

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %sub20.i = sub nsw i32 %conv12.i, %conv8.i, !dbg !2527
  %6 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 true) #9, !dbg !2528
  %cmp22.i = icmp slt i32 %6, %beta, !dbg !2529
  br i1 %cmp22.i, label %if.then.i, label %if.end.i, !dbg !2530

if.then.i:                                        ; preds = %land.lhs.true19.i
  %mul24.i = shl nuw nsw i32 %conv.i, 1, !dbg !2531
  %add.i = add nuw nsw i32 %conv4.i, 2, !dbg !2533
  %add25.i = add nuw nsw i32 %add.i, %mul24.i, !dbg !2534
  %add26.i = add nuw nsw i32 %add25.i, %conv12.i, !dbg !2535
  %7 = lshr i32 %add26.i, 2, !dbg !2536
  %conv27.i = trunc i32 %7 to i8, !dbg !2537
  store i8 %conv27.i, ptr %arrayidx3.i, align 1, !dbg !2538, !tbaa !1534
  %mul31.i = shl nuw nsw i32 %conv12.i, 1, !dbg !2539
  %add32.i = add nuw nsw i32 %conv.i, 2, !dbg !2540
  %add33.i = add nuw nsw i32 %add32.i, %conv8.i, !dbg !2541
  %add34.i = add nuw nsw i32 %add33.i, %mul31.i, !dbg !2542
  %8 = lshr i32 %add34.i, 2, !dbg !2543
  %conv36.i = trunc i32 %8 to i8, !dbg !2544
  store i8 %conv36.i, ptr %pix.addr.062.i, align 1, !dbg !2545, !tbaa !1534
  br label %if.end.i, !dbg !2546

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true19.i, %land.lhs.true.i, %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 1, !dbg !2547
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2492, metadata !DIExpression()) #9, !dbg !2509
  %inc.i = add nuw nsw i32 %d.061.i, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2501, metadata !DIExpression()) #9, !dbg !2511
  %exitcond.not.i = icmp eq i32 %inc.i, 8, !dbg !2549
  br i1 %exitcond.not.i, label %deblock_chroma_intra_c.exit, label %for.body.i, !dbg !2512, !llvm.loop !2550

deblock_chroma_intra_c.exit:                      ; preds = %if.end.i
  ret void, !dbg !2552
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @deblock_h_chroma_intra_c(ptr nocapture noundef %pix, i32 noundef %stride, i32 noundef %alpha, i32 noundef %beta) #5 !dbg !2553 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2557, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2492, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 1, metadata !2497, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %stride, metadata !2498, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2499, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2500, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()) #9, !dbg !2562
  %idx.ext.i = sext i32 %stride to i64
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2492, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()) #9, !dbg !2562
  br label %for.body.i, !dbg !2563

for.body.i:                                       ; preds = %if.end.i, %entry
  %pix.addr.062.i = phi ptr [ %pix, %entry ], [ %add.ptr.i, %if.end.i ]
  %d.061.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.062.i, metadata !2492, metadata !DIExpression()) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %d.061.i, metadata !2501, metadata !DIExpression()) #9, !dbg !2562
  %arrayidx.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 -2, !dbg !2564
  %0 = load i8, ptr %arrayidx.i, align 1, !dbg !2564, !tbaa !1534
  %conv.i = zext i8 %0 to i32, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2503, metadata !DIExpression()) #9, !dbg !2565
  %arrayidx3.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 -1, !dbg !2566
  %1 = load i8, ptr %arrayidx3.i, align 1, !dbg !2566, !tbaa !1534
  %conv4.i = zext i8 %1 to i32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %conv4.i, metadata !2506, metadata !DIExpression()) #9, !dbg !2565
  %2 = load i8, ptr %pix.addr.062.i, align 1, !dbg !2567, !tbaa !1534
  %conv8.i = zext i8 %2 to i32, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %conv8.i, metadata !2507, metadata !DIExpression()) #9, !dbg !2565
  %arrayidx11.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 1, !dbg !2568
  %3 = load i8, ptr %arrayidx11.i, align 1, !dbg !2568, !tbaa !1534
  %conv12.i = zext i8 %3 to i32, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !2508, metadata !DIExpression()) #9, !dbg !2565
  %sub.i = sub nsw i32 %conv4.i, %conv8.i, !dbg !2569
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #9, !dbg !2570
  %cmp13.i = icmp slt i32 %4, %alpha, !dbg !2571
  br i1 %cmp13.i, label %land.lhs.true.i, label %if.end.i, !dbg !2572

land.lhs.true.i:                                  ; preds = %for.body.i
  %sub15.i = sub nsw i32 %conv.i, %conv4.i, !dbg !2573
  %5 = tail call i32 @llvm.abs.i32(i32 %sub15.i, i1 true) #9, !dbg !2574
  %cmp17.i = icmp slt i32 %5, %beta, !dbg !2575
  br i1 %cmp17.i, label %land.lhs.true19.i, label %if.end.i, !dbg !2576

land.lhs.true19.i:                                ; preds = %land.lhs.true.i
  %sub20.i = sub nsw i32 %conv12.i, %conv8.i, !dbg !2577
  %6 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 true) #9, !dbg !2578
  %cmp22.i = icmp slt i32 %6, %beta, !dbg !2579
  br i1 %cmp22.i, label %if.then.i, label %if.end.i, !dbg !2580

if.then.i:                                        ; preds = %land.lhs.true19.i
  %mul24.i = shl nuw nsw i32 %conv.i, 1, !dbg !2581
  %add.i = add nuw nsw i32 %conv4.i, 2, !dbg !2582
  %add25.i = add nuw nsw i32 %add.i, %mul24.i, !dbg !2583
  %add26.i = add nuw nsw i32 %add25.i, %conv12.i, !dbg !2584
  %7 = lshr i32 %add26.i, 2, !dbg !2585
  %conv27.i = trunc i32 %7 to i8, !dbg !2586
  store i8 %conv27.i, ptr %arrayidx3.i, align 1, !dbg !2587, !tbaa !1534
  %mul31.i = shl nuw nsw i32 %conv12.i, 1, !dbg !2588
  %add32.i = add nuw nsw i32 %conv.i, 2, !dbg !2589
  %add33.i = add nuw nsw i32 %add32.i, %conv8.i, !dbg !2590
  %add34.i = add nuw nsw i32 %add33.i, %mul31.i, !dbg !2591
  %8 = lshr i32 %add34.i, 2, !dbg !2592
  %conv36.i = trunc i32 %8 to i8, !dbg !2593
  store i8 %conv36.i, ptr %pix.addr.062.i, align 1, !dbg !2594, !tbaa !1534
  br label %if.end.i, !dbg !2595

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true19.i, %land.lhs.true.i, %for.body.i
  %add.ptr.i = getelementptr inbounds i8, ptr %pix.addr.062.i, i64 %idx.ext.i, !dbg !2596
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !2492, metadata !DIExpression()) #9, !dbg !2560
  %inc.i = add nuw nsw i32 %d.061.i, 1, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2501, metadata !DIExpression()) #9, !dbg !2562
  %exitcond.not.i = icmp eq i32 %inc.i, 8, !dbg !2598
  br i1 %exitcond.not.i, label %deblock_chroma_intra_c.exit, label %for.body.i, !dbg !2563, !llvm.loop !2599

deblock_chroma_intra_c.exit:                      ; preds = %if.end.i
  ret void, !dbg !2601
}

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal void @deblock_strength_c(ptr nocapture noundef readonly %nnz, ptr nocapture noundef readonly %ref, ptr nocapture noundef readonly %mv, ptr nocapture noundef writeonly %bs, i32 noundef %mvy_limit, i32 noundef %bframe) #6 !dbg !2602 {
entry:
  call void @llvm.dbg.value(metadata ptr %nnz, metadata !2604, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %ref, metadata !2605, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %mv, metadata !2606, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2607, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %mvy_limit, metadata !2608, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %bframe, metadata !2609, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 0, metadata !2610, metadata !DIExpression()), !dbg !2626
  %tobool62.not = icmp eq i32 %bframe, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !2610, metadata !DIExpression()), !dbg !2626
  br i1 %tobool62.not, label %for.body.us, label %for.body, !dbg !2627

for.body.us:                                      ; preds = %entry, %for.cond.cleanup5.split.us.us
  %tobool.not.us = phi i1 [ false, %for.cond.cleanup5.split.us.us ], [ true, %entry ]
  %indvars.iv206 = phi i64 [ 1, %for.cond.cleanup5.split.us.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv206, metadata !2610, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 undef, metadata !2612, metadata !DIExpression()), !dbg !2630
  %cond2.us = select i1 %tobool.not.us, i32 1, i32 8, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %cond2.us, metadata !2615, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()), !dbg !2632
  %0 = zext i32 %cond2.us to i64, !dbg !2633
  %1 = select i1 %tobool.not.us, i64 8, i64 1, !dbg !2633
  %2 = zext i32 %cond2.us to i64
  br label %for.body6.us.us, !dbg !2633

for.body6.us.us:                                  ; preds = %for.cond.cleanup9.split.us.us.us, %for.body.us
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %for.cond.cleanup9.split.us.us.us ], [ 0, %for.body.us ]
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.cond.cleanup9.split.us.us.us ], [ 12, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv202, metadata !2616, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 0, metadata !2618, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv202, i32 %cond2.us), metadata !2621, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2618, metadata !DIExpression()), !dbg !2634
  br label %for.body10.us.us.us, !dbg !2635

for.body10.us.us.us:                              ; preds = %if.end117.us.us.us, %for.body6.us.us
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %if.end117.us.us.us ], [ 0, %for.body6.us.us ]
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %if.end117.us.us.us ], [ %indvars.iv191, %for.body6.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv193, metadata !2621, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %indvars.iv196, metadata !2618, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv193, i32 %cond2.us), metadata !2622, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2636
  %arrayidx.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv193, !dbg !2637
  %3 = load i8, ptr %arrayidx.us.us.us, align 1, !dbg !2637, !tbaa !1534
  %tobool11.not.us.us.us = icmp eq i8 %3, 0, !dbg !2637
  br i1 %tobool11.not.us.us.us, label %lor.lhs.false.us.us.us, label %if.end117.us.us.us, !dbg !2638

lor.lhs.false.us.us.us:                           ; preds = %for.body10.us.us.us
  %4 = sub nsw i64 %indvars.iv193, %2, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %4, metadata !2622, metadata !DIExpression()), !dbg !2636
  %arrayidx13.us.us.us = getelementptr inbounds i8, ptr %nnz, i64 %4, !dbg !2640
  %5 = load i8, ptr %arrayidx13.us.us.us, align 1, !dbg !2640, !tbaa !1534
  %tobool15.not.us.us.us = icmp eq i8 %5, 0, !dbg !2640
  br i1 %tobool15.not.us.us.us, label %if.else.us.us.us, label %if.end117.us.us.us, !dbg !2641

if.else.us.us.us:                                 ; preds = %lor.lhs.false.us.us.us
  %arrayidx24.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv193, !dbg !2642
  %6 = load i8, ptr %arrayidx24.us.us.us, align 1, !dbg !2642, !tbaa !1534
  %arrayidx28.us.us.us = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %4, !dbg !2643
  %7 = load i8, ptr %arrayidx28.us.us.us, align 1, !dbg !2643, !tbaa !1534
  %cmp30.not.us.us.us = icmp eq i8 %6, %7, !dbg !2644
  br i1 %cmp30.not.us.us.us, label %lor.lhs.false32.us.us.us, label %if.then103.us.us.us, !dbg !2645

lor.lhs.false32.us.us.us:                         ; preds = %if.else.us.us.us
  %arrayidx35.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv193, !dbg !2646
  %8 = load i16, ptr %arrayidx35.us.us.us, align 2, !dbg !2646, !tbaa !2647
  %conv37.us.us.us = sext i16 %8 to i32, !dbg !2646
  %arrayidx40.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %4, !dbg !2649
  %9 = load i16, ptr %arrayidx40.us.us.us, align 2, !dbg !2649, !tbaa !2647
  %conv42.us.us.us = sext i16 %9 to i32, !dbg !2649
  %sub43.us.us.us = sub nsw i32 %conv37.us.us.us, %conv42.us.us.us, !dbg !2650
  %10 = tail call i32 @llvm.abs.i32(i32 %sub43.us.us.us, i1 true), !dbg !2651
  %cmp44.us.us.us = icmp ugt i32 %10, 3, !dbg !2652
  br i1 %cmp44.us.us.us, label %if.then103.us.us.us, label %lor.lhs.false46.us.us.us, !dbg !2653

lor.lhs.false46.us.us.us:                         ; preds = %lor.lhs.false32.us.us.us
  %arrayidx50.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv193, i64 1, !dbg !2654
  %11 = load i16, ptr %arrayidx50.us.us.us, align 2, !dbg !2654, !tbaa !2647
  %conv51.us.us.us = sext i16 %11 to i32, !dbg !2654
  %arrayidx55.us.us.us = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %4, i64 1, !dbg !2655
  %12 = load i16, ptr %arrayidx55.us.us.us, align 2, !dbg !2655, !tbaa !2647
  %conv56.us.us.us = sext i16 %12 to i32, !dbg !2655
  %sub57.us.us.us = sub nsw i32 %conv51.us.us.us, %conv56.us.us.us, !dbg !2656
  %13 = tail call i32 @llvm.abs.i32(i32 %sub57.us.us.us, i1 true), !dbg !2657
  %cmp59.not.us.us.us = icmp slt i32 %13, %mvy_limit, !dbg !2658
  br i1 %cmp59.not.us.us.us, label %if.end117.us.us.us, label %if.then103.us.us.us, !dbg !2659

if.then103.us.us.us:                              ; preds = %lor.lhs.false46.us.us.us, %lor.lhs.false32.us.us.us, %if.else.us.us.us
  br label %if.end117.us.us.us, !dbg !2660

if.end117.us.us.us:                               ; preds = %lor.lhs.false46.us.us.us, %for.body10.us.us.us, %lor.lhs.false.us.us.us, %if.then103.us.us.us
  %.sink = phi i8 [ 1, %if.then103.us.us.us ], [ 2, %lor.lhs.false.us.us.us ], [ 2, %for.body10.us.us.us ], [ 0, %lor.lhs.false46.us.us.us ]
  %arrayidx109.us.us.us = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv206, i64 %indvars.iv202, i64 %indvars.iv196, !dbg !2662
  store i8 %.sink, ptr %arrayidx109.us.us.us, align 1, !dbg !2662, !tbaa !1534
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next197, metadata !2618, metadata !DIExpression()), !dbg !2634
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, %1, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next194, metadata !2621, metadata !DIExpression()), !dbg !2634
  %exitcond201.not = icmp eq i64 %indvars.iv.next197, 4, !dbg !2665
  br i1 %exitcond201.not, label %for.cond.cleanup9.split.us.us.us, label %for.body10.us.us.us, !dbg !2635, !llvm.loop !2666

for.cond.cleanup9.split.us.us.us:                 ; preds = %if.end117.us.us.us
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next203, metadata !2616, metadata !DIExpression()), !dbg !2632
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, %0, !dbg !2633
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, 4, !dbg !2669
  br i1 %exitcond205.not, label %for.cond.cleanup5.split.us.us, label %for.body6.us.us, !dbg !2633, !llvm.loop !2670

for.cond.cleanup5.split.us.us:                    ; preds = %for.cond.cleanup9.split.us.us.us
  call void @llvm.dbg.value(metadata i64 %indvars.iv206, metadata !2610, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2626
  br i1 %tobool.not.us, label %for.body.us, label %for.cond.cleanup, !dbg !2672, !llvm.loop !2673

for.cond.cleanup:                                 ; preds = %for.cond.cleanup5.split, %for.cond.cleanup5.split.us.us
  ret void, !dbg !2675

for.body:                                         ; preds = %entry, %for.cond.cleanup5.split
  %tobool.not = phi i1 [ false, %for.cond.cleanup5.split ], [ true, %entry ]
  %indvars.iv188 = phi i64 [ 1, %for.cond.cleanup5.split ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv188, metadata !2610, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 undef, metadata !2612, metadata !DIExpression()), !dbg !2630
  %cond2 = select i1 %tobool.not, i32 1, i32 8, !dbg !2631
  call void @llvm.dbg.value(metadata i32 %cond2, metadata !2615, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()), !dbg !2632
  %14 = zext i32 %cond2 to i64, !dbg !2633
  %15 = select i1 %tobool.not, i64 8, i64 1, !dbg !2633
  %16 = zext i32 %cond2 to i64
  br label %for.body6, !dbg !2633

for.cond.cleanup5.split:                          ; preds = %for.cond.cleanup9.split
  call void @llvm.dbg.value(metadata i64 %indvars.iv188, metadata !2610, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2626
  br i1 %tobool.not, label %for.body, label %for.cond.cleanup, !dbg !2672, !llvm.loop !2673

for.body6:                                        ; preds = %for.body, %for.cond.cleanup9.split
  %indvars.iv184 = phi i64 [ 0, %for.body ], [ %indvars.iv.next185, %for.cond.cleanup9.split ]
  %indvars.iv = phi i64 [ 12, %for.body ], [ %indvars.iv.next, %for.cond.cleanup9.split ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv184, metadata !2616, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv184, i32 %cond2), metadata !2621, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_plus_uconst, 12, DW_OP_stack_value)), !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2618, metadata !DIExpression()), !dbg !2634
  br label %for.body10, !dbg !2635

for.cond.cleanup9.split:                          ; preds = %if.end117
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next185, metadata !2616, metadata !DIExpression()), !dbg !2632
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %14, !dbg !2633
  %exitcond187.not = icmp eq i64 %indvars.iv.next185, 4, !dbg !2669
  br i1 %exitcond187.not, label %for.cond.cleanup5.split, label %for.body6, !dbg !2633, !llvm.loop !2670

for.body10:                                       ; preds = %for.body6, %if.end117
  %indvars.iv179 = phi i64 [ 0, %for.body6 ], [ %indvars.iv.next180, %if.end117 ]
  %indvars.iv176 = phi i64 [ %indvars.iv, %for.body6 ], [ %indvars.iv.next177, %if.end117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv176, metadata !2621, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i64 %indvars.iv179, metadata !2618, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata !DIArgList(i64 %indvars.iv176, i32 %cond2), metadata !2622, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2636
  %arrayidx = getelementptr inbounds i8, ptr %nnz, i64 %indvars.iv176, !dbg !2637
  %17 = load i8, ptr %arrayidx, align 1, !dbg !2637, !tbaa !1534
  %tobool11.not = icmp eq i8 %17, 0, !dbg !2637
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end117, !dbg !2638

lor.lhs.false:                                    ; preds = %for.body10
  %18 = sub nsw i64 %indvars.iv176, %16, !dbg !2639
  call void @llvm.dbg.value(metadata i64 %18, metadata !2622, metadata !DIExpression()), !dbg !2636
  %arrayidx13 = getelementptr inbounds i8, ptr %nnz, i64 %18, !dbg !2640
  %19 = load i8, ptr %arrayidx13, align 1, !dbg !2640, !tbaa !1534
  %tobool15.not = icmp eq i8 %19, 0, !dbg !2640
  br i1 %tobool15.not, label %if.else, label %if.end117, !dbg !2641

if.else:                                          ; preds = %lor.lhs.false
  %arrayidx24 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %indvars.iv176, !dbg !2642
  %20 = load i8, ptr %arrayidx24, align 1, !dbg !2642, !tbaa !1534
  %arrayidx28 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %18, !dbg !2643
  %21 = load i8, ptr %arrayidx28, align 1, !dbg !2643, !tbaa !1534
  %cmp30.not = icmp eq i8 %20, %21, !dbg !2644
  br i1 %cmp30.not, label %lor.lhs.false32, label %if.end117, !dbg !2645

lor.lhs.false32:                                  ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv176, !dbg !2646
  %22 = load i16, ptr %arrayidx35, align 2, !dbg !2646, !tbaa !2647
  %conv37 = sext i16 %22 to i32, !dbg !2646
  %arrayidx40 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %18, !dbg !2649
  %23 = load i16, ptr %arrayidx40, align 2, !dbg !2649, !tbaa !2647
  %conv42 = sext i16 %23 to i32, !dbg !2649
  %sub43 = sub nsw i32 %conv37, %conv42, !dbg !2650
  %24 = tail call i32 @llvm.abs.i32(i32 %sub43, i1 true), !dbg !2651
  %cmp44 = icmp ugt i32 %24, 3, !dbg !2652
  br i1 %cmp44, label %if.end117, label %lor.lhs.false46, !dbg !2653

lor.lhs.false46:                                  ; preds = %lor.lhs.false32
  %arrayidx50 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %indvars.iv176, i64 1, !dbg !2654
  %25 = load i16, ptr %arrayidx50, align 2, !dbg !2654, !tbaa !2647
  %conv51 = sext i16 %25 to i32, !dbg !2654
  %arrayidx55 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %18, i64 1, !dbg !2655
  %26 = load i16, ptr %arrayidx55, align 2, !dbg !2655, !tbaa !2647
  %conv56 = sext i16 %26 to i32, !dbg !2655
  %sub57 = sub nsw i32 %conv51, %conv56, !dbg !2656
  %27 = tail call i32 @llvm.abs.i32(i32 %sub57, i1 true), !dbg !2657
  %cmp59.not = icmp slt i32 %27, %mvy_limit, !dbg !2658
  br i1 %cmp59.not, label %lor.lhs.false61, label %if.end117, !dbg !2659

lor.lhs.false61:                                  ; preds = %lor.lhs.false46
  %arrayidx65 = getelementptr inbounds [40 x i8], ptr %ref, i64 1, i64 %indvars.iv176, !dbg !2676
  %28 = load i8, ptr %arrayidx65, align 1, !dbg !2676, !tbaa !1534
  %arrayidx69 = getelementptr inbounds [40 x i8], ptr %ref, i64 1, i64 %18, !dbg !2677
  %29 = load i8, ptr %arrayidx69, align 1, !dbg !2677, !tbaa !1534
  %cmp71.not = icmp eq i8 %28, %29, !dbg !2678
  br i1 %cmp71.not, label %lor.lhs.false73, label %if.end117, !dbg !2679

lor.lhs.false73:                                  ; preds = %lor.lhs.false61
  %arrayidx76 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 1, i64 %indvars.iv176, !dbg !2680
  %30 = load i16, ptr %arrayidx76, align 2, !dbg !2680, !tbaa !2647
  %conv78 = sext i16 %30 to i32, !dbg !2680
  %arrayidx81 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 1, i64 %18, !dbg !2681
  %31 = load i16, ptr %arrayidx81, align 2, !dbg !2681, !tbaa !2647
  %conv83 = sext i16 %31 to i32, !dbg !2681
  %sub84 = sub nsw i32 %conv78, %conv83, !dbg !2682
  %32 = tail call i32 @llvm.abs.i32(i32 %sub84, i1 true), !dbg !2683
  %cmp86 = icmp ugt i32 %32, 3, !dbg !2684
  br i1 %cmp86, label %if.end117, label %lor.lhs.false88, !dbg !2685

lor.lhs.false88:                                  ; preds = %lor.lhs.false73
  %arrayidx92 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 1, i64 %indvars.iv176, i64 1, !dbg !2686
  %33 = load i16, ptr %arrayidx92, align 2, !dbg !2686, !tbaa !2647
  %conv93 = sext i16 %33 to i32, !dbg !2686
  %arrayidx97 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 1, i64 %18, i64 1, !dbg !2687
  %34 = load i16, ptr %arrayidx97, align 2, !dbg !2687, !tbaa !2647
  %conv98 = sext i16 %34 to i32, !dbg !2687
  %sub99 = sub nsw i32 %conv93, %conv98, !dbg !2688
  %35 = tail call i32 @llvm.abs.i32(i32 %sub99, i1 true), !dbg !2689
  %cmp101.not = icmp sge i32 %35, %mvy_limit, !dbg !2690
  %spec.select = zext i1 %cmp101.not to i8, !dbg !2691
  br label %if.end117, !dbg !2691

if.end117:                                        ; preds = %lor.lhs.false88, %if.else, %lor.lhs.false32, %lor.lhs.false46, %lor.lhs.false61, %lor.lhs.false73, %for.body10, %lor.lhs.false
  %.sink210 = phi i8 [ 2, %lor.lhs.false ], [ 2, %for.body10 ], [ 1, %lor.lhs.false73 ], [ 1, %lor.lhs.false61 ], [ 1, %lor.lhs.false46 ], [ 1, %lor.lhs.false32 ], [ 1, %if.else ], [ %spec.select, %lor.lhs.false88 ]
  %arrayidx109 = getelementptr inbounds [4 x [4 x i8]], ptr %bs, i64 %indvars.iv188, i64 %indvars.iv184, i64 %indvars.iv179, !dbg !2662
  store i8 %.sink210, ptr %arrayidx109, align 1, !dbg !2662, !tbaa !1534
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1, !dbg !2663
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next180, metadata !2618, metadata !DIExpression()), !dbg !2634
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, %15, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next177, metadata !2621, metadata !DIExpression()), !dbg !2634
  %exitcond.not = icmp eq i64 %indvars.iv.next180, 4, !dbg !2665
  br i1 %exitcond.not, label %for.cond.cleanup9.split, label %for.body10, !dbg !2635, !llvm.loop !2666
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @deblock_luma_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta, ptr nocapture noundef readonly %tc0) unnamed_addr #8 !dbg !2692 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2694, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %xstride, metadata !2695, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %ystride, metadata !2696, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2697, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2698, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %tc0, metadata !2699, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2700, metadata !DIExpression()), !dbg !2719
  %mul8 = mul nsw i32 %xstride, -3
  %idxprom9 = sext i32 %mul8 to i64
  %mul12 = mul nsw i32 %xstride, -2
  %idxprom13 = sext i32 %mul12 to i64
  %mul16 = sub nsw i32 0, %xstride
  %idxprom17 = sext i32 %mul16 to i64
  %idxprom25 = sext i32 %xstride to i64
  %mul28 = shl nsw i32 %xstride, 1
  %idxprom29 = sext i32 %mul28 to i64
  %idx.ext123 = sext i32 %ystride to i64
  %mul = shl nsw i32 %ystride, 2
  %idx.ext = sext i32 %mul to i64
  br label %for.body, !dbg !2720

for.cond.cleanup:                                 ; preds = %for.inc126
  ret void, !dbg !2721

for.body:                                         ; preds = %entry, %for.inc126
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc126 ]
  %pix.addr.0208 = phi ptr [ %pix, %entry ], [ %pix.addr.2, %for.inc126 ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.0208, metadata !2694, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2700, metadata !DIExpression()), !dbg !2719
  %arrayidx = getelementptr inbounds i8, ptr %tc0, i64 %indvars.iv, !dbg !2722
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2722, !tbaa !1534
  %cmp1 = icmp slt i8 %0, 0, !dbg !2724
  br i1 %cmp1, label %if.then, label %for.body7, !dbg !2725

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0208, i64 %idx.ext, !dbg !2726
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2694, metadata !DIExpression()), !dbg !2718
  br label %for.inc126, !dbg !2728

for.body7:                                        ; preds = %for.body, %if.end122
  %pix.addr.1205 = phi ptr [ %add.ptr124, %if.end122 ], [ %pix.addr.0208, %for.body ]
  %d.0204 = phi i32 [ %inc125, %if.end122 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.1205, metadata !2694, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 %d.0204, metadata !2702, metadata !DIExpression()), !dbg !2729
  %arrayidx10 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idxprom9, !dbg !2730
  %1 = load i8, ptr %arrayidx10, align 1, !dbg !2730, !tbaa !1534
  %conv11 = zext i8 %1 to i32, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %conv11, metadata !2706, metadata !DIExpression()), !dbg !2731
  %arrayidx14 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idxprom13, !dbg !2732
  %2 = load i8, ptr %arrayidx14, align 1, !dbg !2732, !tbaa !1534
  %conv15 = zext i8 %2 to i32, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !2709, metadata !DIExpression()), !dbg !2731
  %arrayidx18 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idxprom17, !dbg !2733
  %3 = load i8, ptr %arrayidx18, align 1, !dbg !2733, !tbaa !1534
  %conv19 = zext i8 %3 to i32, !dbg !2733
  call void @llvm.dbg.value(metadata i32 %conv19, metadata !2710, metadata !DIExpression()), !dbg !2731
  %4 = load i8, ptr %pix.addr.1205, align 1, !dbg !2734, !tbaa !1534
  %conv23 = zext i8 %4 to i32, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %conv23, metadata !2711, metadata !DIExpression()), !dbg !2731
  %arrayidx26 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idxprom25, !dbg !2735
  %5 = load i8, ptr %arrayidx26, align 1, !dbg !2735, !tbaa !1534
  %conv27 = zext i8 %5 to i32, !dbg !2735
  call void @llvm.dbg.value(metadata i32 %conv27, metadata !2712, metadata !DIExpression()), !dbg !2731
  %arrayidx30 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idxprom29, !dbg !2736
  %6 = load i8, ptr %arrayidx30, align 1, !dbg !2736, !tbaa !1534
  %conv31 = zext i8 %6 to i32, !dbg !2736
  call void @llvm.dbg.value(metadata i32 %conv31, metadata !2713, metadata !DIExpression()), !dbg !2731
  %sub = sub nsw i32 %conv19, %conv23, !dbg !2737
  %7 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2738
  %cmp32 = icmp slt i32 %7, %alpha, !dbg !2739
  br i1 %cmp32, label %land.lhs.true, label %if.end122, !dbg !2740

land.lhs.true:                                    ; preds = %for.body7
  %sub34 = sub nsw i32 %conv15, %conv19, !dbg !2741
  %8 = tail call i32 @llvm.abs.i32(i32 %sub34, i1 true), !dbg !2742
  %cmp36 = icmp slt i32 %8, %beta, !dbg !2743
  br i1 %cmp36, label %land.lhs.true38, label %if.end122, !dbg !2744

land.lhs.true38:                                  ; preds = %land.lhs.true
  %sub39 = sub nsw i32 %conv27, %conv23, !dbg !2745
  %9 = tail call i32 @llvm.abs.i32(i32 %sub39, i1 true), !dbg !2746
  %cmp41 = icmp slt i32 %9, %beta, !dbg !2747
  br i1 %cmp41, label %if.then43, label %if.end122, !dbg !2748

if.then43:                                        ; preds = %land.lhs.true38
  %10 = load i8, ptr %arrayidx, align 1, !dbg !2749, !tbaa !1534
  %conv46 = sext i8 %10 to i32, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %conv46, metadata !2714, metadata !DIExpression()), !dbg !2750
  %sub47 = sub nsw i32 %conv11, %conv19, !dbg !2751
  %11 = tail call i32 @llvm.abs.i32(i32 %sub47, i1 true), !dbg !2753
  %cmp49 = icmp slt i32 %11, %beta, !dbg !2754
  br i1 %cmp49, label %if.then51, label %if.end73, !dbg !2755

if.then51:                                        ; preds = %if.then43
  %tobool.not = icmp eq i8 %10, 0, !dbg !2756
  br i1 %tobool.not, label %if.end72, label %if.then54, !dbg !2759

if.then54:                                        ; preds = %if.then51
  %add = add nuw nsw i32 %conv19, 1, !dbg !2760
  %add55 = add nuw nsw i32 %add, %conv23, !dbg !2761
  %12 = lshr i32 %add55, 1, !dbg !2762
  %add56 = add nuw nsw i32 %12, %conv11, !dbg !2763
  %13 = lshr i32 %add56, 1, !dbg !2764
  %sub58 = sub nsw i32 %13, %conv15, !dbg !2765
  %sub62 = sub nsw i32 0, %conv46, !dbg !2766
  call void @llvm.dbg.value(metadata i32 %sub58, metadata !2356, metadata !DIExpression()) #9, !dbg !2767
  call void @llvm.dbg.value(metadata i32 %sub62, metadata !2361, metadata !DIExpression()) #9, !dbg !2767
  call void @llvm.dbg.value(metadata i32 %conv46, metadata !2362, metadata !DIExpression()) #9, !dbg !2767
  %cmp.i = icmp slt i32 %sub58, %sub62, !dbg !2769
  %14 = tail call i32 @llvm.smin.i32(i32 %sub58, i32 %conv46) #9
  %spec.select.i = select i1 %cmp.i, i32 %sub62, i32 %14, !dbg !2770
  %15 = trunc i32 %spec.select.i to i8, !dbg !2771
  %conv68 = add i8 %2, %15, !dbg !2771
  store i8 %conv68, ptr %arrayidx14, align 1, !dbg !2772, !tbaa !1534
  br label %if.end72, !dbg !2773

if.end72:                                         ; preds = %if.then54, %if.then51
  %inc = add nsw i32 %conv46, 1, !dbg !2774
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2714, metadata !DIExpression()), !dbg !2750
  br label %if.end73, !dbg !2775

if.end73:                                         ; preds = %if.end72, %if.then43
  %tc.0 = phi i32 [ %inc, %if.end72 ], [ %conv46, %if.then43 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %tc.0, metadata !2714, metadata !DIExpression()), !dbg !2750
  %sub74 = sub nsw i32 %conv31, %conv23, !dbg !2776
  %16 = tail call i32 @llvm.abs.i32(i32 %sub74, i1 true), !dbg !2778
  %cmp76 = icmp slt i32 %16, %beta, !dbg !2779
  br i1 %cmp76, label %if.then78, label %if.end104, !dbg !2780

if.then78:                                        ; preds = %if.end73
  %17 = load i8, ptr %arrayidx, align 1, !dbg !2781, !tbaa !1534
  %tobool81.not = icmp eq i8 %17, 0, !dbg !2781
  br i1 %tobool81.not, label %if.end102, label %if.then82, !dbg !2784

if.then82:                                        ; preds = %if.then78
  %add83 = add nuw nsw i32 %conv19, 1, !dbg !2785
  %add84 = add nuw nsw i32 %add83, %conv23, !dbg !2786
  %18 = lshr i32 %add84, 1, !dbg !2787
  %add86 = add nuw nsw i32 %18, %conv31, !dbg !2788
  %19 = lshr i32 %add86, 1, !dbg !2789
  %sub88 = sub nsw i32 %19, %conv27, !dbg !2790
  %conv91 = sext i8 %17 to i32, !dbg !2791
  %sub92 = sub nsw i32 0, %conv91, !dbg !2792
  call void @llvm.dbg.value(metadata i32 %sub88, metadata !2356, metadata !DIExpression()) #9, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %sub92, metadata !2361, metadata !DIExpression()) #9, !dbg !2793
  call void @llvm.dbg.value(metadata i32 %conv91, metadata !2362, metadata !DIExpression()) #9, !dbg !2793
  %cmp.i194 = icmp slt i32 %sub88, %sub92, !dbg !2795
  %20 = tail call i32 @llvm.smin.i32(i32 %sub88, i32 %conv91) #9
  %spec.select.i195 = select i1 %cmp.i194, i32 %sub92, i32 %20, !dbg !2796
  %21 = trunc i32 %spec.select.i195 to i8, !dbg !2797
  %conv98 = add i8 %5, %21, !dbg !2797
  store i8 %conv98, ptr %arrayidx26, align 1, !dbg !2798, !tbaa !1534
  br label %if.end102, !dbg !2799

if.end102:                                        ; preds = %if.then82, %if.then78
  %inc103 = add nsw i32 %tc.0, 1, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %inc103, metadata !2714, metadata !DIExpression()), !dbg !2750
  br label %if.end104, !dbg !2801

if.end104:                                        ; preds = %if.end102, %if.end73
  %tc.1 = phi i32 [ %inc103, %if.end102 ], [ %tc.0, %if.end73 ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %tc.1, metadata !2714, metadata !DIExpression()), !dbg !2750
  %sub105 = sub nsw i32 %conv23, %conv19, !dbg !2802
  %shl = shl nsw i32 %sub105, 2, !dbg !2803
  %sub106 = add nuw nsw i32 %conv15, 4, !dbg !2804
  %add107 = sub nsw i32 %sub106, %conv27, !dbg !2805
  %add108 = add nsw i32 %add107, %shl, !dbg !2806
  %shr109 = ashr i32 %add108, 3, !dbg !2807
  %sub110 = sub nsw i32 0, %tc.1, !dbg !2808
  call void @llvm.dbg.value(metadata i32 %shr109, metadata !2356, metadata !DIExpression()) #9, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %sub110, metadata !2361, metadata !DIExpression()) #9, !dbg !2809
  call void @llvm.dbg.value(metadata i32 %tc.1, metadata !2362, metadata !DIExpression()) #9, !dbg !2809
  %cmp.i196 = icmp slt i32 %shr109, %sub110, !dbg !2811
  %22 = tail call i32 @llvm.smin.i32(i32 %shr109, i32 %tc.1) #9
  %spec.select.i197 = select i1 %cmp.i196, i32 %sub110, i32 %22, !dbg !2812
  call void @llvm.dbg.value(metadata i32 %spec.select.i197, metadata !2717, metadata !DIExpression()), !dbg !2750
  %add112 = add nsw i32 %spec.select.i197, %conv19, !dbg !2813
  call void @llvm.dbg.value(metadata i32 %add112, metadata !2369, metadata !DIExpression()), !dbg !2814
  %tobool.not.i = icmp ult i32 %add112, 256, !dbg !2816
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !2817

cond.true.i:                                      ; preds = %if.end104
  %23 = icmp sgt i32 %add112, 0, !dbg !2818
  %shr.i = sext i1 %23 to i32, !dbg !2818
  br label %x264_clip_uint8.exit, !dbg !2817

x264_clip_uint8.exit:                             ; preds = %if.end104, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add112, %if.end104 ], !dbg !2817
  %conv.i = trunc i32 %cond.i to i8, !dbg !2817
  store i8 %conv.i, ptr %arrayidx18, align 1, !dbg !2819, !tbaa !1534
  %sub117 = sub nsw i32 %conv23, %spec.select.i197, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %sub117, metadata !2369, metadata !DIExpression()), !dbg !2821
  %tobool.not.i198 = icmp ult i32 %sub117, 256, !dbg !2823
  br i1 %tobool.not.i198, label %x264_clip_uint8.exit203, label %cond.true.i200, !dbg !2824

cond.true.i200:                                   ; preds = %x264_clip_uint8.exit
  %24 = icmp sgt i32 %sub117, 0, !dbg !2825
  %shr.i199 = sext i1 %24 to i32, !dbg !2825
  br label %x264_clip_uint8.exit203, !dbg !2824

x264_clip_uint8.exit203:                          ; preds = %x264_clip_uint8.exit, %cond.true.i200
  %cond.i201 = phi i32 [ %shr.i199, %cond.true.i200 ], [ %sub117, %x264_clip_uint8.exit ], !dbg !2824
  %conv.i202 = trunc i32 %cond.i201 to i8, !dbg !2824
  store i8 %conv.i202, ptr %pix.addr.1205, align 1, !dbg !2826, !tbaa !1534
  br label %if.end122, !dbg !2827

if.end122:                                        ; preds = %x264_clip_uint8.exit203, %land.lhs.true38, %land.lhs.true, %for.body7
  %add.ptr124 = getelementptr inbounds i8, ptr %pix.addr.1205, i64 %idx.ext123, !dbg !2828
  call void @llvm.dbg.value(metadata ptr %add.ptr124, metadata !2694, metadata !DIExpression()), !dbg !2718
  %inc125 = add nuw nsw i32 %d.0204, 1, !dbg !2829
  call void @llvm.dbg.value(metadata i32 %inc125, metadata !2702, metadata !DIExpression()), !dbg !2729
  %exitcond.not = icmp eq i32 %inc125, 4, !dbg !2830
  br i1 %exitcond.not, label %for.inc126, label %for.body7, !dbg !2831, !llvm.loop !2832

for.inc126:                                       ; preds = %if.end122, %if.then
  %pix.addr.2 = phi ptr [ %add.ptr, %if.then ], [ %add.ptr124, %if.end122 ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.2, metadata !2694, metadata !DIExpression()), !dbg !2718
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2700, metadata !DIExpression()), !dbg !2719
  %exitcond210.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2835
  br i1 %exitcond210.not, label %for.cond.cleanup, label %for.body, !dbg !2720, !llvm.loop !2836
}

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc void @deblock_luma_intra_c(ptr nocapture noundef %pix, i32 noundef %xstride, i32 noundef %ystride, i32 noundef %alpha, i32 noundef %beta) unnamed_addr #8 !dbg !2838 {
entry:
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2840, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %xstride, metadata !2841, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %ystride, metadata !2842, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %alpha, metadata !2843, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %beta, metadata !2844, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()), !dbg !2867
  %mul = mul nsw i32 %xstride, -3
  %idxprom = sext i32 %mul to i64
  %mul1 = mul nsw i32 %xstride, -2
  %idxprom2 = sext i32 %mul1 to i64
  %mul5 = sub nsw i32 0, %xstride
  %idxprom6 = sext i32 %mul5 to i64
  %idxprom14 = sext i32 %xstride to i64
  %mul17 = shl nsw i32 %xstride, 1
  %idxprom18 = sext i32 %mul17 to i64
  %idx.ext = sext i32 %ystride to i64
  call void @llvm.dbg.value(metadata ptr %pix, metadata !2840, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 0, metadata !2845, metadata !DIExpression()), !dbg !2867
  %shr = ashr i32 %alpha, 2
  %add = add nsw i32 %shr, 2
  %mul42 = mul nsw i32 %xstride, -4
  %idxprom43 = sext i32 %mul42 to i64
  %mul94 = mul nsw i32 %xstride, 3
  %idxprom95 = sext i32 %mul94 to i64
  br label %for.body, !dbg !2868

for.cond.cleanup:                                 ; preds = %if.end163
  ret void, !dbg !2869

for.body:                                         ; preds = %entry, %if.end163
  %pix.addr.0253 = phi ptr [ %pix, %entry ], [ %add.ptr, %if.end163 ]
  %d.0252 = phi i32 [ 0, %entry ], [ %inc, %if.end163 ]
  call void @llvm.dbg.value(metadata ptr %pix.addr.0253, metadata !2840, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i32 %d.0252, metadata !2845, metadata !DIExpression()), !dbg !2867
  %arrayidx = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom, !dbg !2870
  %0 = load i8, ptr %arrayidx, align 1, !dbg !2870, !tbaa !1534
  %conv = zext i8 %0 to i32, !dbg !2870
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2847, metadata !DIExpression()), !dbg !2871
  %arrayidx3 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom2, !dbg !2872
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !2872, !tbaa !1534
  %conv4 = zext i8 %1 to i32, !dbg !2872
  call void @llvm.dbg.value(metadata i32 %conv4, metadata !2850, metadata !DIExpression()), !dbg !2871
  %arrayidx7 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom6, !dbg !2873
  %2 = load i8, ptr %arrayidx7, align 1, !dbg !2873, !tbaa !1534
  %conv8 = zext i8 %2 to i32, !dbg !2873
  call void @llvm.dbg.value(metadata i32 %conv8, metadata !2851, metadata !DIExpression()), !dbg !2871
  %3 = load i8, ptr %pix.addr.0253, align 1, !dbg !2874, !tbaa !1534
  %conv12 = zext i8 %3 to i32, !dbg !2874
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !2852, metadata !DIExpression()), !dbg !2871
  %arrayidx15 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom14, !dbg !2875
  %4 = load i8, ptr %arrayidx15, align 1, !dbg !2875, !tbaa !1534
  %conv16 = zext i8 %4 to i32, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %conv16, metadata !2853, metadata !DIExpression()), !dbg !2871
  %arrayidx19 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom18, !dbg !2876
  %5 = load i8, ptr %arrayidx19, align 1, !dbg !2876, !tbaa !1534
  %conv20 = zext i8 %5 to i32, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %conv20, metadata !2854, metadata !DIExpression()), !dbg !2871
  %sub = sub nsw i32 %conv8, %conv12, !dbg !2877
  %6 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true), !dbg !2878
  %cmp21 = icmp slt i32 %6, %alpha, !dbg !2879
  br i1 %cmp21, label %land.lhs.true, label %if.end163, !dbg !2880

land.lhs.true:                                    ; preds = %for.body
  %sub23 = sub nsw i32 %conv4, %conv8, !dbg !2881
  %7 = tail call i32 @llvm.abs.i32(i32 %sub23, i1 true), !dbg !2882
  %cmp25 = icmp slt i32 %7, %beta, !dbg !2883
  br i1 %cmp25, label %land.lhs.true27, label %if.end163, !dbg !2884

land.lhs.true27:                                  ; preds = %land.lhs.true
  %sub28 = sub nsw i32 %conv16, %conv12, !dbg !2885
  %8 = tail call i32 @llvm.abs.i32(i32 %sub28, i1 true), !dbg !2886
  %cmp30 = icmp slt i32 %8, %beta, !dbg !2887
  br i1 %cmp30, label %if.then, label %if.end163, !dbg !2888

if.then:                                          ; preds = %land.lhs.true27
  %cmp34 = icmp slt i32 %6, %add, !dbg !2889
  br i1 %cmp34, label %if.then36, label %if.else143, !dbg !2890

if.then36:                                        ; preds = %if.then
  %sub37 = sub nsw i32 %conv, %conv8, !dbg !2891
  %9 = tail call i32 @llvm.abs.i32(i32 %sub37, i1 true), !dbg !2892
  %cmp39 = icmp slt i32 %9, %beta, !dbg !2893
  br i1 %cmp39, label %if.then41, label %if.else, !dbg !2894

if.then41:                                        ; preds = %if.then36
  %arrayidx44 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom43, !dbg !2895
  %10 = load i8, ptr %arrayidx44, align 1, !dbg !2895, !tbaa !1534
  %conv45 = zext i8 %10 to i32, !dbg !2895
  call void @llvm.dbg.value(metadata i32 %conv45, metadata !2855, metadata !DIExpression()), !dbg !2896
  %reass.add = add nuw nsw i32 %conv12, %conv8
  %reass.add248 = add nuw nsw i32 %reass.add, %conv4
  %reass.mul = shl nuw nsw i32 %reass.add248, 1
  %add51 = add nuw nsw i32 %conv16, 4, !dbg !2897
  %add52 = add nuw nsw i32 %add51, %conv, !dbg !2898
  %add53 = add nuw nsw i32 %add52, %reass.mul, !dbg !2899
  %11 = lshr i32 %add53, 3, !dbg !2900
  %conv55 = trunc i32 %11 to i8, !dbg !2901
  store i8 %conv55, ptr %arrayidx7, align 1, !dbg !2902, !tbaa !1534
  %add59 = add nuw nsw i32 %conv8, 2, !dbg !2903
  %add60 = add nuw nsw i32 %add59, %conv, !dbg !2904
  %add61 = add nuw nsw i32 %add60, %conv4, !dbg !2905
  %add62 = add nuw nsw i32 %add61, %conv12, !dbg !2906
  %12 = lshr i32 %add62, 2, !dbg !2907
  %conv64 = trunc i32 %12 to i8, !dbg !2908
  store i8 %conv64, ptr %arrayidx3, align 1, !dbg !2909, !tbaa !1534
  %mul68 = shl nuw nsw i32 %conv45, 1, !dbg !2910
  %mul69 = mul nuw nsw i32 %conv, 3, !dbg !2911
  %add71 = add nuw nsw i32 %reass.add, 4, !dbg !2912
  %add72 = add nuw nsw i32 %add71, %mul69, !dbg !2913
  %add73 = add nuw nsw i32 %add72, %conv4, !dbg !2914
  %add74 = add nuw nsw i32 %add73, %mul68, !dbg !2915
  %13 = lshr i32 %add74, 3, !dbg !2916
  br label %if.end, !dbg !2917

if.else:                                          ; preds = %if.then36
  %mul80 = shl nuw nsw i32 %conv4, 1, !dbg !2918
  %add81 = add nuw nsw i32 %conv8, 2, !dbg !2919
  %add82 = add nuw nsw i32 %add81, %mul80, !dbg !2920
  %add83 = add nuw nsw i32 %add82, %conv16, !dbg !2921
  %14 = lshr i32 %add83, 2, !dbg !2922
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then41
  %.sink = phi i32 [ %14, %if.else ], [ %13, %if.then41 ]
  %arrayidx7.sink = phi ptr [ %arrayidx7, %if.else ], [ %arrayidx, %if.then41 ]
  %conv85 = trunc i32 %.sink to i8, !dbg !2923
  store i8 %conv85, ptr %arrayidx7.sink, align 1, !dbg !2923, !tbaa !1534
  %sub89 = sub nsw i32 %conv20, %conv12, !dbg !2924
  %15 = tail call i32 @llvm.abs.i32(i32 %sub89, i1 true), !dbg !2925
  %cmp91 = icmp slt i32 %15, %beta, !dbg !2926
  br i1 %cmp91, label %if.then93, label %if.else132, !dbg !2927

if.then93:                                        ; preds = %if.end
  %arrayidx96 = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idxprom95, !dbg !2928
  %16 = load i8, ptr %arrayidx96, align 1, !dbg !2928, !tbaa !1534
  %conv97 = zext i8 %16 to i32, !dbg !2928
  call void @llvm.dbg.value(metadata i32 %conv97, metadata !2863, metadata !DIExpression()), !dbg !2929
  %reass.add249 = add nuw nsw i32 %conv12, %conv8
  %reass.add250 = add nuw nsw i32 %reass.add249, %conv16
  %reass.mul251 = shl nuw nsw i32 %reass.add250, 1
  %add103 = add nuw nsw i32 %conv4, 4, !dbg !2930
  %add104 = add nuw nsw i32 %add103, %conv20, !dbg !2931
  %add105 = add nuw nsw i32 %add104, %reass.mul251, !dbg !2932
  %17 = lshr i32 %add105, 3, !dbg !2933
  %conv107 = trunc i32 %17 to i8, !dbg !2934
  store i8 %conv107, ptr %pix.addr.0253, align 1, !dbg !2935, !tbaa !1534
  %add111 = add nuw nsw i32 %conv8, 2, !dbg !2936
  %add112 = add nuw nsw i32 %add111, %conv12, !dbg !2937
  %add113 = add nuw nsw i32 %add112, %conv16, !dbg !2938
  %add114 = add nuw nsw i32 %add113, %conv20, !dbg !2939
  %18 = lshr i32 %add114, 2, !dbg !2940
  %conv116 = trunc i32 %18 to i8, !dbg !2941
  store i8 %conv116, ptr %arrayidx15, align 1, !dbg !2942, !tbaa !1534
  %mul120 = shl nuw nsw i32 %conv97, 1, !dbg !2943
  %mul121 = mul nuw nsw i32 %conv20, 3, !dbg !2944
  %add123 = add nuw nsw i32 %reass.add249, 4, !dbg !2945
  %add124 = add nuw nsw i32 %add123, %conv16, !dbg !2946
  %add125 = add nuw nsw i32 %add124, %mul121, !dbg !2947
  %add126 = add nuw nsw i32 %add125, %mul120, !dbg !2948
  %19 = lshr i32 %add126, 3, !dbg !2949
  br label %if.end163.sink.split, !dbg !2950

if.else132:                                       ; preds = %if.end
  %mul133 = shl nuw nsw i32 %conv16, 1, !dbg !2951
  %add134 = add nuw nsw i32 %conv12, %conv4, !dbg !2952
  %add135 = add nuw nsw i32 %add134, 2, !dbg !2953
  %add136 = add nuw nsw i32 %add135, %mul133, !dbg !2954
  %20 = lshr i32 %add136, 2, !dbg !2955
  br label %if.end163.sink.split

if.else143:                                       ; preds = %if.then
  %mul144 = shl nuw nsw i32 %conv4, 1, !dbg !2956
  %add145 = add nuw nsw i32 %conv8, 2, !dbg !2958
  %add146 = add nuw nsw i32 %add145, %mul144, !dbg !2959
  %add147 = add nuw nsw i32 %add146, %conv16, !dbg !2960
  %21 = lshr i32 %add147, 2, !dbg !2961
  %conv149 = trunc i32 %21 to i8, !dbg !2962
  store i8 %conv149, ptr %arrayidx7, align 1, !dbg !2963, !tbaa !1534
  %mul153 = shl nuw nsw i32 %conv16, 1, !dbg !2964
  %add154 = add nuw nsw i32 %conv12, %conv4, !dbg !2965
  %add155 = add nuw nsw i32 %add154, 2, !dbg !2966
  %add156 = add nuw nsw i32 %add155, %mul153, !dbg !2967
  %22 = lshr i32 %add156, 2, !dbg !2968
  br label %if.end163.sink.split

if.end163.sink.split:                             ; preds = %if.then93, %if.else132, %if.else143
  %.sink255 = phi i32 [ %22, %if.else143 ], [ %20, %if.else132 ], [ %19, %if.then93 ]
  %pix.addr.0253.sink = phi ptr [ %pix.addr.0253, %if.else143 ], [ %pix.addr.0253, %if.else132 ], [ %arrayidx19, %if.then93 ]
  %conv158 = trunc i32 %.sink255 to i8, !dbg !2969
  store i8 %conv158, ptr %pix.addr.0253.sink, align 1, !dbg !2969, !tbaa !1534
  br label %if.end163, !dbg !2970

if.end163:                                        ; preds = %if.end163.sink.split, %land.lhs.true27, %land.lhs.true, %for.body
  %add.ptr = getelementptr inbounds i8, ptr %pix.addr.0253, i64 %idx.ext, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2840, metadata !DIExpression()), !dbg !2866
  %inc = add nuw nsw i32 %d.0252, 1, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2845, metadata !DIExpression()), !dbg !2867
  %exitcond.not = icmp eq i32 %inc, 16, !dbg !2972
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2868, !llvm.loop !2973
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i_alpha_table", scope: !2, file: !69, line: 68, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !66, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/deblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "6a351fa075ae4fa4953b93e96f39a58f")
!4 = !{!5, !29}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!9 = !DIEnumerator(name: "I_4x4", value: 0)
!10 = !DIEnumerator(name: "I_8x8", value: 1)
!11 = !DIEnumerator(name: "I_16x16", value: 2)
!12 = !DIEnumerator(name: "I_PCM", value: 3)
!13 = !DIEnumerator(name: "P_L0", value: 4)
!14 = !DIEnumerator(name: "P_8x8", value: 5)
!15 = !DIEnumerator(name: "P_SKIP", value: 6)
!16 = !DIEnumerator(name: "B_DIRECT", value: 7)
!17 = !DIEnumerator(name: "B_L0_L0", value: 8)
!18 = !DIEnumerator(name: "B_L0_L1", value: 9)
!19 = !DIEnumerator(name: "B_L0_BI", value: 10)
!20 = !DIEnumerator(name: "B_L1_L0", value: 11)
!21 = !DIEnumerator(name: "B_L1_L1", value: 12)
!22 = !DIEnumerator(name: "B_L1_BI", value: 13)
!23 = !DIEnumerator(name: "B_BI_L0", value: 14)
!24 = !DIEnumerator(name: "B_BI_L1", value: 15)
!25 = !DIEnumerator(name: "B_BI_BI", value: 16)
!26 = !DIEnumerator(name: "B_8x8", value: 17)
!27 = !DIEnumerator(name: "B_SKIP", value: 18)
!28 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "MB_LEFT", value: 1)
!32 = !DIEnumerator(name: "MB_TOP", value: 2)
!33 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!34 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!35 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!36 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!37 = !{!38, !46, !49}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !44)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 26, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !43, line: 42, baseType: !7)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!44 = !{!45}
!45 = !DISubrange(count: 6)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !41, line: 25, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !43, line: 40, baseType: !48)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !51, line: 89, baseType: !52)
!51 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!52 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !51, line: 89, size: 32, elements: !53)
!53 = !{!54, !55, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !52, file: !51, line: 89, baseType: !40, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !52, file: !51, line: 89, baseType: !56, size: 32)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 32, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 2)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !52, file: !51, line: 89, baseType: !60, size: 32)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 32, elements: !64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !41, line: 24, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !43, line: 38, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !{!0, !67, !74}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "i_beta_table", scope: !2, file: !69, line: 79, type: !70, isLocal: true, isDefinition: true)
!69 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/deblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6a351fa075ae4fa4953b93e96f39a58f")
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 608, elements: !72)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!72 = !{!73}
!73 = !DISubrange(count: 76)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "i_tc0_table", scope: !2, file: !69, line: 90, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2432, elements: !82)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !79, line: 24, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !43, line: 37, baseType: !81)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !{!73, !65}
!83 = !{i32 7, !"Dwarf Version", i32 5}
!84 = !{i32 2, !"Debug Info Version", i32 3}
!85 = !{i32 1, !"wchar_size", i32 4}
!86 = !{i32 7, !"PIC Level", i32 2}
!87 = !{i32 7, !"PIE Level", i32 2}
!88 = !{i32 7, !"uwtable", i32 2}
!89 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!90 = distinct !DISubprogram(name: "x264_frame_deblock_row", scope: !69, file: !69, line: 339, type: !91, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !104}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !51, line: 381, size: 266752, elements: !97)
!97 = !{!98, !268, !272, !273, !274, !275, !276, !277, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !413, !415, !440, !442, !443, !444, !448, !452, !453, !454, !458, !462, !463, !464, !469, !472, !473, !551, !568, !729, !730, !731, !732, !736, !737, !738, !739, !740, !741, !742, !757, !950, !954, !1015, !1018, !1020, !1022, !1023, !1026, !1031, !1040, !1041, !1049, !1051, !1056, !1132, !1218, !1262, !1284, !1333, !1362}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !96, file: !51, line: 384, baseType: !99, size: 5632)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !95, line: 376, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !95, line: 176, size: 5632, elements: !101)
!101 = !{!102, !103, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !146, !150, !151, !152, !153, !157, !158, !173, !174, !175, !176, !177, !206, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !100, file: !95, line: 179, baseType: !7, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !100, file: !95, line: 180, baseType: !104, size: 32, offset: 32)
!104 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !100, file: !95, line: 181, baseType: !104, size: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !100, file: !95, line: 182, baseType: !104, size: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !100, file: !95, line: 183, baseType: !104, size: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !100, file: !95, line: 186, baseType: !104, size: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !100, file: !95, line: 187, baseType: !104, size: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !100, file: !95, line: 188, baseType: !104, size: 32, offset: 224)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !100, file: !95, line: 189, baseType: !104, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !100, file: !95, line: 190, baseType: !104, size: 32, offset: 288)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !100, file: !95, line: 198, baseType: !104, size: 32, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !100, file: !95, line: 215, baseType: !115, size: 288, offset: 352)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 200, size: 288, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122, !123, !124, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !115, file: !95, line: 203, baseType: !104, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !115, file: !95, line: 204, baseType: !104, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !115, file: !95, line: 206, baseType: !104, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !115, file: !95, line: 209, baseType: !104, size: 32, offset: 96)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !115, file: !95, line: 210, baseType: !104, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !115, file: !95, line: 211, baseType: !104, size: 32, offset: 160)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !115, file: !95, line: 212, baseType: !104, size: 32, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !115, file: !95, line: 213, baseType: !104, size: 32, offset: 224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !115, file: !95, line: 214, baseType: !104, size: 32, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !100, file: !95, line: 218, baseType: !104, size: 32, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !100, file: !95, line: 219, baseType: !104, size: 32, offset: 672)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !100, file: !95, line: 220, baseType: !104, size: 32, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !100, file: !95, line: 221, baseType: !104, size: 32, offset: 736)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !100, file: !95, line: 222, baseType: !104, size: 32, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !100, file: !95, line: 224, baseType: !104, size: 32, offset: 800)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !100, file: !95, line: 225, baseType: !104, size: 32, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !100, file: !95, line: 226, baseType: !104, size: 32, offset: 864)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !100, file: !95, line: 227, baseType: !104, size: 32, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !100, file: !95, line: 229, baseType: !104, size: 32, offset: 928)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !100, file: !95, line: 230, baseType: !104, size: 32, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !100, file: !95, line: 231, baseType: !104, size: 32, offset: 992)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !100, file: !95, line: 233, baseType: !104, size: 32, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !100, file: !95, line: 234, baseType: !104, size: 32, offset: 1056)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !100, file: !95, line: 236, baseType: !104, size: 32, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !100, file: !95, line: 237, baseType: !104, size: 32, offset: 1120)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !100, file: !95, line: 239, baseType: !104, size: 32, offset: 1152)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !100, file: !95, line: 240, baseType: !144, size: 64, offset: 1216)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !100, file: !95, line: 241, baseType: !147, size: 128, offset: 1280)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 16)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !100, file: !95, line: 242, baseType: !147, size: 128, offset: 1408)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !100, file: !95, line: 243, baseType: !147, size: 128, offset: 1536)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !100, file: !95, line: 244, baseType: !147, size: 128, offset: 1664)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !100, file: !95, line: 245, baseType: !154, size: 512, offset: 1792)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !100, file: !95, line: 246, baseType: !154, size: 512, offset: 2304)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !100, file: !95, line: 249, baseType: !159, size: 64, offset: 2816)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !104, !163, !165}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !167)
!167 = !{!168, !170, !171, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !166, file: !169, baseType: !7, size: 32)
!169 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/deblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !166, file: !169, baseType: !7, size: 32, offset: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !166, file: !169, baseType: !162, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !166, file: !169, baseType: !162, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !100, file: !95, line: 250, baseType: !162, size: 64, offset: 2880)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !100, file: !95, line: 251, baseType: !104, size: 32, offset: 2944)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !100, file: !95, line: 252, baseType: !104, size: 32, offset: 2976)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !100, file: !95, line: 253, baseType: !144, size: 64, offset: 3008)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !100, file: !95, line: 287, baseType: !178, size: 800, offset: 3072)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 256, size: 800, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !200, !201, !202, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !178, file: !95, line: 258, baseType: !7, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !178, file: !95, line: 259, baseType: !7, size: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !178, file: !95, line: 261, baseType: !104, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !178, file: !95, line: 262, baseType: !104, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !178, file: !95, line: 263, baseType: !104, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !178, file: !95, line: 264, baseType: !104, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !178, file: !95, line: 265, baseType: !104, size: 32, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !178, file: !95, line: 267, baseType: !104, size: 32, offset: 224)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !178, file: !95, line: 268, baseType: !104, size: 32, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !178, file: !95, line: 269, baseType: !104, size: 32, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !178, file: !95, line: 270, baseType: !104, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !178, file: !95, line: 271, baseType: !104, size: 32, offset: 352)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !178, file: !95, line: 272, baseType: !104, size: 32, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !178, file: !95, line: 273, baseType: !104, size: 32, offset: 416)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !178, file: !95, line: 274, baseType: !104, size: 32, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !178, file: !95, line: 275, baseType: !104, size: 32, offset: 480)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !178, file: !95, line: 276, baseType: !104, size: 32, offset: 512)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !178, file: !95, line: 277, baseType: !104, size: 32, offset: 544)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !178, file: !95, line: 278, baseType: !199, size: 32, offset: 576)
!199 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !178, file: !95, line: 279, baseType: !199, size: 32, offset: 608)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !178, file: !95, line: 280, baseType: !104, size: 32, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !178, file: !95, line: 283, baseType: !203, size: 64, offset: 672)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 64, elements: !57)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !178, file: !95, line: 285, baseType: !104, size: 32, offset: 736)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !178, file: !95, line: 286, baseType: !104, size: 32, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !100, file: !95, line: 327, baseType: !207, size: 1152, offset: 3904)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !95, line: 290, size: 1152, elements: !208)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !246, !247}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !207, file: !95, line: 292, baseType: !104, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !207, file: !95, line: 294, baseType: !104, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !207, file: !95, line: 295, baseType: !104, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !207, file: !95, line: 296, baseType: !104, size: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !207, file: !95, line: 297, baseType: !104, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !207, file: !95, line: 299, baseType: !104, size: 32, offset: 160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !207, file: !95, line: 300, baseType: !199, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !207, file: !95, line: 301, baseType: !199, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !207, file: !95, line: 302, baseType: !199, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !207, file: !95, line: 303, baseType: !104, size: 32, offset: 288)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !207, file: !95, line: 304, baseType: !104, size: 32, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !207, file: !95, line: 305, baseType: !199, size: 32, offset: 352)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !207, file: !95, line: 306, baseType: !199, size: 32, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !207, file: !95, line: 307, baseType: !199, size: 32, offset: 416)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !207, file: !95, line: 309, baseType: !104, size: 32, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !207, file: !95, line: 310, baseType: !199, size: 32, offset: 480)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !207, file: !95, line: 311, baseType: !104, size: 32, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !207, file: !95, line: 312, baseType: !104, size: 32, offset: 544)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !207, file: !95, line: 315, baseType: !104, size: 32, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !207, file: !95, line: 316, baseType: !144, size: 64, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !207, file: !95, line: 317, baseType: !104, size: 32, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !207, file: !95, line: 318, baseType: !144, size: 64, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !207, file: !95, line: 321, baseType: !199, size: 32, offset: 832)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !207, file: !95, line: 322, baseType: !199, size: 32, offset: 864)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !207, file: !95, line: 323, baseType: !199, size: 32, offset: 896)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !207, file: !95, line: 324, baseType: !235, size: 64, offset: 960)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !95, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 167, size: 256, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !237, file: !95, line: 169, baseType: !104, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !237, file: !95, line: 169, baseType: !104, size: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !237, file: !95, line: 170, baseType: !104, size: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !237, file: !95, line: 171, baseType: !104, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !237, file: !95, line: 172, baseType: !199, size: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !237, file: !95, line: 173, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !207, file: !95, line: 325, baseType: !104, size: 32, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !207, file: !95, line: 326, baseType: !144, size: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !100, file: !95, line: 330, baseType: !104, size: 32, offset: 5056)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !100, file: !95, line: 331, baseType: !104, size: 32, offset: 5088)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !100, file: !95, line: 332, baseType: !104, size: 32, offset: 5120)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !100, file: !95, line: 334, baseType: !104, size: 32, offset: 5152)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !100, file: !95, line: 335, baseType: !104, size: 32, offset: 5184)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !100, file: !95, line: 336, baseType: !40, size: 32, offset: 5216)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !100, file: !95, line: 337, baseType: !40, size: 32, offset: 5248)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !100, file: !95, line: 338, baseType: !40, size: 32, offset: 5280)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !100, file: !95, line: 339, baseType: !40, size: 32, offset: 5312)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !100, file: !95, line: 340, baseType: !104, size: 32, offset: 5344)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !100, file: !95, line: 344, baseType: !104, size: 32, offset: 5376)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !100, file: !95, line: 356, baseType: !104, size: 32, offset: 5408)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !100, file: !95, line: 364, baseType: !104, size: 32, offset: 5440)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !100, file: !95, line: 367, baseType: !104, size: 32, offset: 5472)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !100, file: !95, line: 368, baseType: !104, size: 32, offset: 5504)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !100, file: !95, line: 369, baseType: !104, size: 32, offset: 5536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !100, file: !95, line: 375, baseType: !265, size: 64, offset: 5568)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !162}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !96, file: !51, line: 386, baseType: !269, size: 8256, offset: 5632)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 8256, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 129)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !96, file: !51, line: 387, baseType: !104, size: 32, offset: 13888)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !96, file: !51, line: 388, baseType: !104, size: 32, offset: 13920)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !96, file: !51, line: 389, baseType: !104, size: 32, offset: 13952)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !96, file: !51, line: 390, baseType: !104, size: 32, offset: 13984)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !96, file: !51, line: 391, baseType: !104, size: 32, offset: 14016)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !96, file: !51, line: 402, baseType: !278, size: 576, offset: 14080)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 394, size: 576, elements: !279)
!279 = !{!280, !281, !282, !292, !293, !294}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !278, file: !51, line: 396, baseType: !104, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !278, file: !51, line: 397, baseType: !104, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !278, file: !51, line: 398, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !95, line: 604, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 593, size: 192, elements: !286)
!286 = !{!287, !288, !289, !290}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !285, file: !95, line: 595, baseType: !104, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !285, file: !95, line: 596, baseType: !104, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !285, file: !95, line: 599, baseType: !104, size: 32, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !285, file: !95, line: 603, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !278, file: !51, line: 399, baseType: !104, size: 32, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !278, file: !51, line: 400, baseType: !291, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !278, file: !51, line: 401, baseType: !295, size: 320, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !296, line: 56, baseType: !297)
!296 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !296, line: 47, size: 320, elements: !298)
!298 = !{!299, !300, !301, !302, !306, !307}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !297, file: !296, line: 49, baseType: !291, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !297, file: !296, line: 50, baseType: !291, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !297, file: !296, line: 51, baseType: !291, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !297, file: !296, line: 53, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !304, line: 87, baseType: !305)
!304 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!305 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !297, file: !296, line: 54, baseType: !104, size: 32, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !297, file: !296, line: 55, baseType: !104, size: 32, offset: 288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !96, file: !51, line: 404, baseType: !291, size: 64, offset: 14656)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !96, file: !51, line: 405, baseType: !104, size: 32, offset: 14720)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !96, file: !51, line: 410, baseType: !104, size: 32, offset: 14752)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !96, file: !51, line: 411, baseType: !104, size: 32, offset: 14784)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !96, file: !51, line: 413, baseType: !104, size: 32, offset: 14816)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !96, file: !51, line: 415, baseType: !104, size: 32, offset: 14848)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !96, file: !51, line: 416, baseType: !104, size: 32, offset: 14880)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !96, file: !51, line: 418, baseType: !104, size: 32, offset: 14912)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !96, file: !51, line: 419, baseType: !104, size: 32, offset: 14944)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !96, file: !51, line: 420, baseType: !104, size: 32, offset: 14976)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !96, file: !51, line: 421, baseType: !104, size: 32, offset: 15008)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !96, file: !51, line: 422, baseType: !104, size: 32, offset: 15040)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !96, file: !51, line: 424, baseType: !104, size: 32, offset: 15072)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !96, file: !51, line: 425, baseType: !104, size: 32, offset: 15104)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !96, file: !51, line: 427, baseType: !104, size: 32, offset: 15136)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !96, file: !51, line: 430, baseType: !324, size: 10400, offset: 15168)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 10400, elements: !411)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !326, line: 154, baseType: !327)
!326 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 52, size: 10400, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !346, !347, !348, !349, !350, !351, !352, !353, !354, !361, !362, !410}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !327, file: !326, line: 54, baseType: !104, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !327, file: !326, line: 56, baseType: !104, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !327, file: !326, line: 57, baseType: !104, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !327, file: !326, line: 59, baseType: !104, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !327, file: !326, line: 60, baseType: !104, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !327, file: !326, line: 61, baseType: !104, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !327, file: !326, line: 63, baseType: !104, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !327, file: !326, line: 65, baseType: !104, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !327, file: !326, line: 67, baseType: !104, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !327, file: !326, line: 69, baseType: !104, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !327, file: !326, line: 70, baseType: !104, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !327, file: !326, line: 71, baseType: !104, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !327, file: !326, line: 72, baseType: !104, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !327, file: !326, line: 73, baseType: !343, size: 8192, offset: 416)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 8192, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !327, file: !326, line: 75, baseType: !104, size: 32, offset: 8608)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !327, file: !326, line: 76, baseType: !104, size: 32, offset: 8640)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !327, file: !326, line: 77, baseType: !104, size: 32, offset: 8672)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !327, file: !326, line: 78, baseType: !104, size: 32, offset: 8704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !327, file: !326, line: 79, baseType: !104, size: 32, offset: 8736)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !327, file: !326, line: 80, baseType: !104, size: 32, offset: 8768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !327, file: !326, line: 81, baseType: !104, size: 32, offset: 8800)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !327, file: !326, line: 83, baseType: !104, size: 32, offset: 8832)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !327, file: !326, line: 90, baseType: !355, size: 128, offset: 8864)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !326, line: 84, size: 128, elements: !356)
!356 = !{!357, !358, !359, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !355, file: !326, line: 86, baseType: !104, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !355, file: !326, line: 87, baseType: !104, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !355, file: !326, line: 88, baseType: !104, size: 32, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !355, file: !326, line: 89, baseType: !104, size: 32, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !327, file: !326, line: 92, baseType: !104, size: 32, offset: 8992)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !327, file: !326, line: 150, baseType: !363, size: 1344, offset: 9024)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !326, line: 93, size: 1344, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !363, file: !326, line: 95, baseType: !104, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !363, file: !326, line: 96, baseType: !104, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !363, file: !326, line: 97, baseType: !104, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !363, file: !326, line: 99, baseType: !104, size: 32, offset: 96)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !363, file: !326, line: 100, baseType: !104, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !363, file: !326, line: 102, baseType: !104, size: 32, offset: 160)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !363, file: !326, line: 103, baseType: !104, size: 32, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !363, file: !326, line: 104, baseType: !104, size: 32, offset: 224)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !363, file: !326, line: 105, baseType: !104, size: 32, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !363, file: !326, line: 106, baseType: !104, size: 32, offset: 288)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !363, file: !326, line: 107, baseType: !104, size: 32, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !363, file: !326, line: 108, baseType: !104, size: 32, offset: 352)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !363, file: !326, line: 110, baseType: !104, size: 32, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !363, file: !326, line: 111, baseType: !104, size: 32, offset: 416)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !363, file: !326, line: 112, baseType: !104, size: 32, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !363, file: !326, line: 114, baseType: !104, size: 32, offset: 480)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !363, file: !326, line: 115, baseType: !40, size: 32, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !363, file: !326, line: 116, baseType: !40, size: 32, offset: 544)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !363, file: !326, line: 117, baseType: !104, size: 32, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !363, file: !326, line: 119, baseType: !104, size: 32, offset: 608)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !363, file: !326, line: 120, baseType: !104, size: 32, offset: 640)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !363, file: !326, line: 137, baseType: !387, size: 384, offset: 672)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !326, line: 122, size: 384, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !387, file: !326, line: 124, baseType: !104, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !387, file: !326, line: 125, baseType: !104, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !387, file: !326, line: 126, baseType: !104, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !387, file: !326, line: 127, baseType: !104, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !387, file: !326, line: 128, baseType: !104, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !387, file: !326, line: 129, baseType: !104, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !387, file: !326, line: 130, baseType: !104, size: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !387, file: !326, line: 131, baseType: !104, size: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !387, file: !326, line: 133, baseType: !104, size: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !387, file: !326, line: 134, baseType: !104, size: 32, offset: 288)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !387, file: !326, line: 135, baseType: !104, size: 32, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !387, file: !326, line: 136, baseType: !104, size: 32, offset: 352)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !363, file: !326, line: 139, baseType: !104, size: 32, offset: 1056)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !363, file: !326, line: 140, baseType: !104, size: 32, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !363, file: !326, line: 141, baseType: !104, size: 32, offset: 1120)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !363, file: !326, line: 142, baseType: !104, size: 32, offset: 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !363, file: !326, line: 143, baseType: !104, size: 32, offset: 1184)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !363, file: !326, line: 144, baseType: !104, size: 32, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !363, file: !326, line: 145, baseType: !104, size: 32, offset: 1248)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !363, file: !326, line: 146, baseType: !104, size: 32, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !363, file: !326, line: 147, baseType: !104, size: 32, offset: 1312)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !327, file: !326, line: 152, baseType: !104, size: 32, offset: 10368)
!411 = !{!412}
!412 = !DISubrange(count: 1)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !96, file: !51, line: 431, baseType: !414, size: 64, offset: 25600)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !96, file: !51, line: 432, baseType: !416, size: 960, offset: 25664)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 960, elements: !411)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !326, line: 186, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 156, size: 960, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !418, file: !326, line: 158, baseType: !104, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !418, file: !326, line: 159, baseType: !104, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !418, file: !326, line: 161, baseType: !104, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !418, file: !326, line: 163, baseType: !104, size: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !418, file: !326, line: 164, baseType: !104, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !418, file: !326, line: 166, baseType: !104, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !418, file: !326, line: 167, baseType: !104, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !418, file: !326, line: 169, baseType: !104, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !418, file: !326, line: 170, baseType: !104, size: 32, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !418, file: !326, line: 172, baseType: !104, size: 32, offset: 288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !418, file: !326, line: 173, baseType: !104, size: 32, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !418, file: !326, line: 175, baseType: !104, size: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !418, file: !326, line: 177, baseType: !104, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !418, file: !326, line: 178, baseType: !104, size: 32, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !418, file: !326, line: 179, baseType: !104, size: 32, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !418, file: !326, line: 181, baseType: !104, size: 32, offset: 480)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !418, file: !326, line: 183, baseType: !104, size: 32, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !418, file: !326, line: 184, baseType: !438, size: 384, offset: 576)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !44)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !96, file: !51, line: 433, baseType: !441, size: 64, offset: 26624)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !96, file: !51, line: 434, baseType: !104, size: 32, offset: 26688)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !96, file: !51, line: 437, baseType: !104, size: 32, offset: 26720)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !96, file: !51, line: 440, baseType: !445, size: 256, offset: 26752)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 256, elements: !64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 512, elements: !148)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !96, file: !51, line: 441, baseType: !449, size: 128, offset: 27008)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 128, elements: !57)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !155)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !96, file: !51, line: 443, baseType: !445, size: 256, offset: 27136)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !96, file: !51, line: 444, baseType: !449, size: 128, offset: 27392)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !96, file: !51, line: 446, baseType: !455, size: 256, offset: 27520)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 256, elements: !64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 256, elements: !148)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !96, file: !51, line: 447, baseType: !459, size: 128, offset: 27776)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 128, elements: !57)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 1024, elements: !155)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !96, file: !51, line: 448, baseType: !455, size: 256, offset: 27904)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !96, file: !51, line: 449, baseType: !459, size: 128, offset: 28160)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !96, file: !51, line: 454, baseType: !465, size: 5888, offset: 28288)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 5888, elements: !467)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!467 = !{!468}
!468 = !DISubrange(count: 92)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !96, file: !51, line: 455, baseType: !470, size: 23552, offset: 34176)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 23552, elements: !471)
!471 = !{!468, !65}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !96, file: !51, line: 457, baseType: !439, size: 64, offset: 57728)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !96, file: !51, line: 460, baseType: !474, size: 53376, offset: 57856)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !51, line: 364, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !51, line: 302, size: 53376, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !505, !535, !536, !537, !543, !544, !545, !546, !547, !548, !549, !550}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !475, file: !51, line: 304, baseType: !414, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !475, file: !51, line: 305, baseType: !441, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !475, file: !51, line: 307, baseType: !104, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !475, file: !51, line: 308, baseType: !104, size: 32, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !475, file: !51, line: 309, baseType: !104, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !475, file: !51, line: 311, baseType: !104, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !475, file: !51, line: 313, baseType: !104, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !475, file: !51, line: 315, baseType: !104, size: 32, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !475, file: !51, line: 316, baseType: !104, size: 32, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !475, file: !51, line: 317, baseType: !104, size: 32, offset: 352)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !475, file: !51, line: 319, baseType: !104, size: 32, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !475, file: !51, line: 321, baseType: !104, size: 32, offset: 416)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !475, file: !51, line: 322, baseType: !104, size: 32, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !475, file: !51, line: 324, baseType: !203, size: 64, offset: 480)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !475, file: !51, line: 325, baseType: !104, size: 32, offset: 544)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !475, file: !51, line: 327, baseType: !104, size: 32, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !475, file: !51, line: 329, baseType: !104, size: 32, offset: 608)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !475, file: !51, line: 330, baseType: !104, size: 32, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !475, file: !51, line: 331, baseType: !104, size: 32, offset: 672)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !475, file: !51, line: 333, baseType: !104, size: 32, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !475, file: !51, line: 334, baseType: !104, size: 32, offset: 736)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !475, file: !51, line: 339, baseType: !499, size: 2048, offset: 768)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !500, size: 2048, elements: !504)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !51, line: 335, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !500, file: !51, line: 337, baseType: !104, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !500, file: !51, line: 338, baseType: !104, size: 32, offset: 32)
!504 = !{!58, !149}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !475, file: !51, line: 342, baseType: !506, size: 49152, align: 128, offset: 2816)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 49152, align: 128, elements: !532)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !508, line: 36, baseType: !509, align: 128)
!508 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !508, line: 26, size: 512, elements: !510)
!510 = !{!511, !518, !519, !522, !523, !524}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !509, file: !508, line: 30, baseType: !512, size: 128, align: 128)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 128, elements: !516)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !79, line: 25, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !43, line: 39, baseType: !515)
!515 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!516 = !{!517}
!517 = !DISubrange(count: 8)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !509, file: !508, line: 31, baseType: !512, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !509, file: !508, line: 32, baseType: !520, size: 32, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !79, line: 26, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !43, line: 41, baseType: !104)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !509, file: !508, line: 33, baseType: !520, size: 32, offset: 288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !509, file: !508, line: 34, baseType: !520, size: 32, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !509, file: !508, line: 35, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !508, line: 25, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !291, !104, !291, !104, !530, !104}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!532 = !{!533, !534}
!533 = !DISubrange(count: 32)
!534 = !DISubrange(count: 3)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !475, file: !51, line: 344, baseType: !104, size: 32, offset: 51968)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !475, file: !51, line: 345, baseType: !104, size: 32, offset: 52000)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !475, file: !51, line: 350, baseType: !538, size: 1024, offset: 52032)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 1024, elements: !148)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !51, line: 346, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !539, file: !51, line: 348, baseType: !104, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !539, file: !51, line: 349, baseType: !104, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !475, file: !51, line: 352, baseType: !104, size: 32, offset: 53056)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !475, file: !51, line: 354, baseType: !104, size: 32, offset: 53088)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !475, file: !51, line: 355, baseType: !104, size: 32, offset: 53120)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !475, file: !51, line: 356, baseType: !104, size: 32, offset: 53152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !475, file: !51, line: 357, baseType: !104, size: 32, offset: 53184)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !475, file: !51, line: 360, baseType: !104, size: 32, offset: 53216)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !475, file: !51, line: 361, baseType: !104, size: 32, offset: 53248)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !475, file: !51, line: 362, baseType: !104, size: 32, offset: 53280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !96, file: !51, line: 463, baseType: !552, size: 4096, offset: 111232)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !553, line: 46, baseType: !554)
!553 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 27, size: 4096, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !554, file: !553, line: 30, baseType: !104, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !554, file: !553, line: 31, baseType: !104, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !554, file: !553, line: 34, baseType: !104, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !554, file: !553, line: 35, baseType: !104, size: 32, offset: 96)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !554, file: !553, line: 37, baseType: !291, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !554, file: !553, line: 38, baseType: !291, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !554, file: !553, line: 39, baseType: !291, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !554, file: !553, line: 42, baseType: !104, size: 32, align: 128, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !554, file: !553, line: 45, baseType: !565, size: 3680, offset: 416)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3680, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 460)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !96, file: !51, line: 494, baseType: !569, size: 2112, offset: 115328)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 465, size: 2112, elements: !570)
!570 = !{!571, !709, !711, !712, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !725, !726, !727, !728}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !569, file: !51, line: 468, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !575, line: 146, baseType: !576)
!575 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !575, line: 31, size: 125056, elements: !577)
!577 = !{!578, !579, !580, !581, !584, !585, !586, !587, !588, !589, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !608, !609, !610, !611, !612, !613, !615, !617, !618, !619, !620, !621, !624, !626, !627, !629, !631, !632, !636, !637, !641, !645, !648, !650, !651, !653, !654, !656, !657, !658, !661, !663, !664, !665, !667, !668, !669, !670, !671, !672, !673, !674, !676, !677, !681, !690, !694, !696, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !576, file: !575, line: 34, baseType: !104, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !576, file: !575, line: 35, baseType: !104, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !576, file: !575, line: 36, baseType: !104, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !576, file: !575, line: 37, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !79, line: 27, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !43, line: 44, baseType: !305)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !576, file: !575, line: 38, baseType: !582, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !576, file: !575, line: 39, baseType: !104, size: 32, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !576, file: !575, line: 40, baseType: !104, size: 32, offset: 288)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !576, file: !575, line: 41, baseType: !104, size: 32, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !576, file: !575, line: 42, baseType: !104, size: 32, offset: 352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !576, file: !575, line: 43, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !576, file: !575, line: 45, baseType: !104, size: 32, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !576, file: !575, line: 46, baseType: !104, size: 32, offset: 480)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !576, file: !575, line: 47, baseType: !104, size: 32, offset: 512)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !576, file: !575, line: 48, baseType: !104, size: 32, offset: 544)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !576, file: !575, line: 49, baseType: !104, size: 32, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !576, file: !575, line: 50, baseType: !104, size: 32, offset: 608)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !576, file: !575, line: 51, baseType: !104, size: 32, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !576, file: !575, line: 52, baseType: !61, size: 8, offset: 672)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !576, file: !575, line: 53, baseType: !61, size: 8, offset: 680)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !576, file: !575, line: 54, baseType: !61, size: 8, offset: 688)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !576, file: !575, line: 55, baseType: !199, size: 32, offset: 704)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !576, file: !575, line: 56, baseType: !199, size: 32, offset: 736)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !576, file: !575, line: 57, baseType: !104, size: 32, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !576, file: !575, line: 60, baseType: !104, size: 32, offset: 800)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !576, file: !575, line: 61, baseType: !606, size: 96, offset: 832)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 96, elements: !607)
!607 = !{!534}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !576, file: !575, line: 62, baseType: !606, size: 96, offset: 928)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !576, file: !575, line: 63, baseType: !606, size: 96, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !576, file: !575, line: 64, baseType: !104, size: 32, offset: 1120)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !576, file: !575, line: 65, baseType: !104, size: 32, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !576, file: !575, line: 66, baseType: !104, size: 32, offset: 1184)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !576, file: !575, line: 67, baseType: !614, size: 192, offset: 1216)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 192, elements: !607)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !576, file: !575, line: 68, baseType: !616, size: 256, offset: 1408)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !576, file: !575, line: 69, baseType: !616, size: 256, offset: 1664)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !576, file: !575, line: 70, baseType: !466, size: 64, offset: 1920)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !576, file: !575, line: 74, baseType: !616, size: 256, offset: 1984)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !576, file: !575, line: 75, baseType: !616, size: 256, offset: 2240)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !576, file: !575, line: 77, baseType: !622, size: 24576, align: 128, offset: 2560)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !507, size: 24576, align: 128, elements: !623)
!623 = !{!149, !534}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !576, file: !575, line: 78, baseType: !625, size: 1024, offset: 27136)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 1024, elements: !148)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !576, file: !575, line: 79, baseType: !104, size: 32, offset: 28160)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !576, file: !575, line: 80, baseType: !628, size: 64, offset: 28224)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !576, file: !575, line: 83, baseType: !630, size: 64, offset: 28288)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !576, file: !575, line: 84, baseType: !291, size: 64, offset: 28352)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !576, file: !575, line: 85, baseType: !633, size: 128, offset: 28416)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 128, elements: !57)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 32, elements: !57)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !576, file: !575, line: 86, baseType: !634, size: 64, offset: 28544)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !576, file: !575, line: 87, baseType: !638, size: 2176, offset: 28608)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 2176, elements: !639)
!639 = !{!58, !640}
!640 = !DISubrange(count: 17)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !576, file: !575, line: 92, baseType: !642, size: 20736, offset: 30784)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 20736, elements: !643)
!643 = !{!644, !644}
!644 = !DISubrange(count: 18)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !576, file: !575, line: 96, baseType: !646, size: 2176, offset: 51520)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 2176, elements: !639)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !576, file: !575, line: 97, baseType: !649, size: 128, offset: 53696)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 128, elements: !57)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !576, file: !575, line: 98, baseType: !203, size: 64, offset: 53824)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !576, file: !575, line: 99, baseType: !652, size: 1024, offset: 53888)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1024, elements: !504)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !576, file: !575, line: 100, baseType: !635, size: 32, offset: 54912)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !576, file: !575, line: 105, baseType: !655, size: 10368, offset: 54944)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 10368, elements: !643)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !576, file: !575, line: 106, baseType: !655, size: 10368, offset: 65312)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !576, file: !575, line: 107, baseType: !104, size: 32, offset: 75680)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !576, file: !575, line: 108, baseType: !659, size: 576, offset: 75712)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 576, elements: !660)
!660 = !{!644}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !576, file: !575, line: 109, baseType: !662, size: 20736, offset: 76288)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 20736, elements: !643)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !576, file: !575, line: 110, baseType: !647, size: 64, offset: 97024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !576, file: !575, line: 111, baseType: !647, size: 64, offset: 97088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !576, file: !575, line: 112, baseType: !666, size: 64, offset: 97152)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !576, file: !575, line: 113, baseType: !666, size: 64, offset: 97216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !576, file: !575, line: 114, baseType: !666, size: 64, offset: 97280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !576, file: !575, line: 115, baseType: !104, size: 32, offset: 97344)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !576, file: !575, line: 116, baseType: !466, size: 64, offset: 97408)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !576, file: !575, line: 117, baseType: !466, size: 64, offset: 97472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !576, file: !575, line: 118, baseType: !466, size: 64, offset: 97536)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !576, file: !575, line: 119, baseType: !104, size: 32, offset: 97600)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !576, file: !575, line: 120, baseType: !675, size: 576, offset: 97632)
!675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 576, elements: !660)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !576, file: !575, line: 121, baseType: !40, size: 32, offset: 98208)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !576, file: !575, line: 122, baseType: !678, size: 64, offset: 98240)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !41, line: 27, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !43, line: 45, baseType: !680)
!680 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !576, file: !575, line: 125, baseType: !682, size: 256, offset: 98304)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !95, line: 503, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 496, size: 256, elements: !684)
!684 = !{!685, !687, !688, !689}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !683, file: !95, line: 498, baseType: !686, size: 64)
!686 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !683, file: !95, line: 499, baseType: !686, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !683, file: !95, line: 500, baseType: !686, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !683, file: !95, line: 502, baseType: !686, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !576, file: !575, line: 128, baseType: !691, size: 2008, offset: 98560)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2008, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 251)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !576, file: !575, line: 129, baseType: !695, size: 8032, offset: 100576)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 8032, elements: !692)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !576, file: !575, line: 130, baseType: !697, size: 16064, offset: 108608)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 16064, elements: !692)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !576, file: !575, line: 131, baseType: !104, size: 32, offset: 124672)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !576, file: !575, line: 132, baseType: !104, size: 32, offset: 124704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !576, file: !575, line: 135, baseType: !104, size: 32, offset: 124736)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !576, file: !575, line: 136, baseType: !104, size: 32, offset: 124768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !576, file: !575, line: 137, baseType: !104, size: 32, offset: 124800)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !576, file: !575, line: 138, baseType: !104, size: 32, offset: 124832)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !576, file: !575, line: 139, baseType: !104, size: 32, offset: 124864)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !576, file: !575, line: 142, baseType: !199, size: 32, offset: 124896)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !576, file: !575, line: 143, baseType: !104, size: 32, offset: 124928)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !576, file: !575, line: 144, baseType: !104, size: 32, offset: 124960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !576, file: !575, line: 145, baseType: !104, size: 32, offset: 124992)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !569, file: !51, line: 470, baseType: !710, size: 128, offset: 64)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 128, elements: !57)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !569, file: !51, line: 473, baseType: !572, size: 64, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !569, file: !51, line: 476, baseType: !713, size: 1152, offset: 256)
!713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 1152, elements: !660)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !569, file: !51, line: 478, baseType: !104, size: 32, offset: 1408)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !569, file: !51, line: 480, baseType: !104, size: 32, offset: 1440)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !569, file: !51, line: 482, baseType: !104, size: 32, offset: 1472)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !569, file: !51, line: 483, baseType: !104, size: 32, offset: 1504)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !569, file: !51, line: 484, baseType: !104, size: 32, offset: 1536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !569, file: !51, line: 485, baseType: !104, size: 32, offset: 1568)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !569, file: !51, line: 486, baseType: !104, size: 32, offset: 1600)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !569, file: !51, line: 487, baseType: !582, size: 64, offset: 1664)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !569, file: !51, line: 488, baseType: !582, size: 64, offset: 1728)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !569, file: !51, line: 489, baseType: !724, size: 128, offset: 1792)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 128, elements: !57)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !569, file: !51, line: 490, baseType: !582, size: 64, offset: 1920)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !569, file: !51, line: 491, baseType: !582, size: 64, offset: 1984)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !569, file: !51, line: 492, baseType: !104, size: 32, offset: 2048)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !569, file: !51, line: 493, baseType: !104, size: 32, offset: 2080)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !96, file: !51, line: 497, baseType: !573, size: 64, offset: 117440)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !96, file: !51, line: 500, baseType: !573, size: 64, offset: 117504)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !96, file: !51, line: 503, baseType: !104, size: 32, offset: 117568)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !96, file: !51, line: 504, baseType: !733, size: 1216, offset: 117632)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !573, size: 1216, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 19)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !96, file: !51, line: 505, baseType: !104, size: 32, offset: 118848)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !96, file: !51, line: 506, baseType: !733, size: 1216, offset: 118912)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !96, file: !51, line: 507, baseType: !203, size: 64, offset: 120128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !96, file: !51, line: 510, baseType: !104, size: 32, offset: 120192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !96, file: !51, line: 511, baseType: !104, size: 32, offset: 120224)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !96, file: !51, line: 512, baseType: !582, size: 64, offset: 120256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !96, file: !51, line: 522, baseType: !743, size: 10624, offset: 120320)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 515, size: 10624, elements: !744)
!744 = !{!745, !747, !750, !753}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !743, file: !51, line: 517, baseType: !746, size: 256, align: 128)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 256, elements: !148)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !743, file: !51, line: 518, baseType: !748, size: 128, align: 128, offset: 256)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 128, elements: !749)
!749 = !{!58, !65}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !743, file: !51, line: 520, baseType: !751, size: 4096, align: 128, offset: 384)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 4096, elements: !752)
!752 = !{!65, !156}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !743, file: !51, line: 521, baseType: !754, size: 6144, align: 128, offset: 4480)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 6144, elements: !755)
!755 = !{!756, !149}
!756 = !DISubrange(count: 24)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !96, file: !51, line: 732, baseType: !758, size: 82688, offset: 130944)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 525, size: 82688, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !787, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !805, !808, !812, !813, !814, !819, !820, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !888, !919, !920, !921, !922, !923, !924, !925, !926, !927, !930, !931, !932, !935, !938, !940, !943, !945, !946}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !758, file: !51, line: 527, baseType: !104, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !758, file: !51, line: 530, baseType: !104, size: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !758, file: !51, line: 531, baseType: !104, size: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !758, file: !51, line: 532, baseType: !104, size: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !758, file: !51, line: 535, baseType: !104, size: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !758, file: !51, line: 536, baseType: !104, size: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !758, file: !51, line: 537, baseType: !104, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !758, file: !51, line: 538, baseType: !104, size: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !758, file: !51, line: 539, baseType: !104, size: 32, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !758, file: !51, line: 542, baseType: !104, size: 32, offset: 288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !758, file: !51, line: 543, baseType: !104, size: 32, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !758, file: !51, line: 544, baseType: !104, size: 32, offset: 352)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !758, file: !51, line: 545, baseType: !104, size: 32, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !758, file: !51, line: 546, baseType: !104, size: 32, offset: 416)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !758, file: !51, line: 547, baseType: !104, size: 32, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !758, file: !51, line: 548, baseType: !104, size: 32, offset: 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !758, file: !51, line: 549, baseType: !104, size: 32, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !758, file: !51, line: 551, baseType: !104, size: 32, offset: 544)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !758, file: !51, line: 554, baseType: !203, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !758, file: !51, line: 555, baseType: !203, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !758, file: !51, line: 558, baseType: !203, size: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !758, file: !51, line: 559, baseType: !203, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !758, file: !51, line: 561, baseType: !203, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !758, file: !51, line: 562, baseType: !203, size: 64, offset: 896)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !758, file: !51, line: 565, baseType: !7, size: 32, offset: 960)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !758, file: !51, line: 566, baseType: !786, size: 128, offset: 992)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !758, file: !51, line: 567, baseType: !788, size: 512, offset: 1120)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !148)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !758, file: !51, line: 568, baseType: !7, size: 32, offset: 1632)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !758, file: !51, line: 569, baseType: !7, size: 32, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !758, file: !51, line: 570, baseType: !104, size: 32, offset: 1696)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !758, file: !51, line: 571, baseType: !104, size: 32, offset: 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !758, file: !51, line: 572, baseType: !104, size: 32, offset: 1760)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !758, file: !51, line: 573, baseType: !104, size: 32, offset: 1792)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !758, file: !51, line: 574, baseType: !104, size: 32, offset: 1824)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !758, file: !51, line: 575, baseType: !104, size: 32, offset: 1856)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !758, file: !51, line: 576, baseType: !104, size: 32, offset: 1888)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !758, file: !51, line: 577, baseType: !104, size: 32, offset: 1920)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !758, file: !51, line: 578, baseType: !104, size: 32, offset: 1952)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !51, line: 585, baseType: !630, size: 64, offset: 1984)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !758, file: !51, line: 586, baseType: !291, size: 64, offset: 2048)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !758, file: !51, line: 587, baseType: !630, size: 64, offset: 2112)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !758, file: !51, line: 588, baseType: !804, size: 64, offset: 2176)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !758, file: !51, line: 589, baseType: !806, size: 64, offset: 2240)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !516)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !758, file: !51, line: 591, baseType: !809, size: 64, offset: 2304)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !811)
!811 = !{!756}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !758, file: !51, line: 592, baseType: !630, size: 64, offset: 2368)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !758, file: !51, line: 593, baseType: !633, size: 128, offset: 2432)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !758, file: !51, line: 594, baseType: !815, size: 128, offset: 2560)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 128, elements: !57)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !818)
!818 = !{!517, !58}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !758, file: !51, line: 595, baseType: !649, size: 128, offset: 2688)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !758, file: !51, line: 596, baseType: !821, size: 4096, offset: 2816)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 4096, elements: !822)
!822 = !{!58, !533}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !758, file: !51, line: 597, baseType: !630, size: 64, offset: 6912)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !758, file: !51, line: 598, baseType: !630, size: 64, offset: 6976)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !758, file: !51, line: 599, baseType: !466, size: 64, offset: 7040)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !758, file: !51, line: 603, baseType: !625, size: 1024, offset: 7104)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !758, file: !51, line: 606, baseType: !104, size: 32, offset: 8128)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !758, file: !51, line: 607, baseType: !104, size: 32, offset: 8160)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !758, file: !51, line: 608, baseType: !60, size: 32, align: 32, offset: 8192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !758, file: !51, line: 609, baseType: !104, size: 32, offset: 8224)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !758, file: !51, line: 611, baseType: !104, size: 32, offset: 8256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !758, file: !51, line: 612, baseType: !104, size: 32, offset: 8288)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !758, file: !51, line: 614, baseType: !104, size: 32, offset: 8320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !758, file: !51, line: 615, baseType: !104, size: 32, offset: 8352)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !758, file: !51, line: 621, baseType: !104, size: 32, offset: 8384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !758, file: !51, line: 624, baseType: !104, size: 32, offset: 8416)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !758, file: !51, line: 626, baseType: !104, size: 32, offset: 8448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !758, file: !51, line: 627, baseType: !104, size: 32, offset: 8480)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !758, file: !51, line: 671, baseType: !840, size: 60672, offset: 8576)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !51, line: 629, size: 60672, elements: !841)
!841 = !{!842, !846, !850, !852, !853, !856, !860, !862, !863, !864, !865, !866, !869, !873, !876, !877, !878, !879, !880, !883, !885, !887}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !840, file: !51, line: 634, baseType: !843, size: 3072, align: 128)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 3072, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !840, file: !51, line: 635, baseType: !847, size: 6912, align: 128, offset: 3072)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 6912, elements: !848)
!848 = !{!849}
!849 = !DISubrange(count: 864)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !840, file: !51, line: 638, baseType: !851, size: 2048, align: 128, offset: 9984)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !344)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !840, file: !51, line: 639, baseType: !851, size: 2048, align: 128, offset: 12032)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !840, file: !51, line: 640, baseType: !854, size: 3072, align: 128, offset: 14080)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 3072, elements: !855)
!855 = !{!534, !156}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !840, file: !51, line: 641, baseType: !857, size: 3840, align: 128, offset: 17152)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 3840, elements: !858)
!858 = !{!859, !149}
!859 = !DISubrange(count: 15)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !840, file: !51, line: 642, baseType: !861, size: 128, offset: 20992)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !840, file: !51, line: 643, baseType: !861, size: 128, offset: 21120)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !840, file: !51, line: 644, baseType: !104, size: 32, offset: 21248)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !840, file: !51, line: 645, baseType: !104, size: 32, offset: 21280)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !840, file: !51, line: 648, baseType: !751, size: 4096, align: 128, offset: 21376)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !840, file: !51, line: 649, baseType: !867, size: 4096, align: 128, offset: 25472)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 4096, elements: !868)
!868 = !{!149, !149}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !840, file: !51, line: 652, baseType: !870, size: 576, align: 128, offset: 29568)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 576, elements: !871)
!871 = !{!872}
!872 = !DISubrange(count: 9)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !840, file: !51, line: 653, baseType: !874, size: 1024, align: 128, offset: 30208)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1024, elements: !875)
!875 = !{!533}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !840, file: !51, line: 656, baseType: !614, size: 192, offset: 31232)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !840, file: !51, line: 658, baseType: !614, size: 192, offset: 31424)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !840, file: !51, line: 661, baseType: !614, size: 192, offset: 31616)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !840, file: !51, line: 664, baseType: !203, size: 64, offset: 31808)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !840, file: !51, line: 665, baseType: !881, size: 24576, offset: 31872)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 24576, elements: !882)
!882 = !{!58, !533, !45}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !840, file: !51, line: 666, baseType: !884, size: 2048, offset: 56448)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 2048, elements: !875)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !840, file: !51, line: 667, baseType: !886, size: 2048, offset: 58496)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 2048, elements: !504)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !840, file: !51, line: 670, baseType: !606, size: 96, offset: 60544)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !758, file: !51, line: 704, baseType: !889, size: 6144, offset: 69248)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !758, file: !51, line: 674, size: 6144, elements: !890)
!890 = !{!891, !895, !899, !902, !905, !907, !908, !911, !913, !914, !915, !916, !917, !918}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !889, file: !51, line: 677, baseType: !892, size: 320, align: 64)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 320, elements: !893)
!893 = !{!894}
!894 = !DISubrange(count: 40)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !889, file: !51, line: 680, baseType: !896, size: 384, align: 128, offset: 384)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 384, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 48)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !889, file: !51, line: 683, baseType: !900, size: 640, align: 32, offset: 768)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 640, elements: !901)
!901 = !{!58, !894}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !889, file: !51, line: 686, baseType: !903, size: 2560, align: 128, offset: 1408)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 2560, elements: !904)
!904 = !{!58, !894, !58}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !889, file: !51, line: 687, baseType: !906, size: 1280, align: 64, offset: 3968)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1280, elements: !904)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !889, file: !51, line: 690, baseType: !892, size: 320, align: 32, offset: 5248)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !889, file: !51, line: 692, baseType: !909, size: 256, align: 32, offset: 5568)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 256, elements: !910)
!910 = !{!58, !65, !58}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !889, file: !51, line: 693, baseType: !912, size: 64, align: 32, offset: 5824)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !749)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !889, file: !51, line: 694, baseType: !104, size: 32, offset: 5888)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !889, file: !51, line: 695, baseType: !635, size: 32, align: 32, offset: 5920)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !889, file: !51, line: 698, baseType: !104, size: 32, offset: 5952)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !889, file: !51, line: 699, baseType: !104, size: 32, offset: 5984)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !889, file: !51, line: 702, baseType: !104, size: 32, offset: 6016)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !889, file: !51, line: 703, baseType: !104, size: 32, offset: 6048)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !758, file: !51, line: 707, baseType: !104, size: 32, offset: 75392)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !758, file: !51, line: 708, baseType: !104, size: 32, offset: 75424)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !758, file: !51, line: 709, baseType: !104, size: 32, offset: 75456)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !758, file: !51, line: 710, baseType: !104, size: 32, offset: 75488)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !758, file: !51, line: 711, baseType: !104, size: 32, offset: 75520)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !758, file: !51, line: 712, baseType: !104, size: 32, offset: 75552)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !758, file: !51, line: 713, baseType: !104, size: 32, offset: 75584)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !758, file: !51, line: 714, baseType: !104, size: 32, offset: 75616)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !758, file: !51, line: 717, baseType: !928, size: 128, offset: 75648)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !929)
!929 = !{!58, !58}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !758, file: !51, line: 718, baseType: !104, size: 32, offset: 75776)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !758, file: !51, line: 719, baseType: !104, size: 32, offset: 75808)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !758, file: !51, line: 722, baseType: !933, size: 4096, offset: 75840)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 4096, elements: !934)
!934 = !{!58, !533, !65}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !758, file: !51, line: 723, baseType: !936, size: 64, offset: 79936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !758, file: !51, line: 724, baseType: !939, size: 2048, offset: 80000)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2048, elements: !934)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !758, file: !51, line: 725, baseType: !941, size: 64, offset: 82048)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !758, file: !51, line: 728, baseType: !944, size: 144, offset: 82112)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 144, elements: !660)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !758, file: !51, line: 729, baseType: !104, size: 32, offset: 82272)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !758, file: !51, line: 730, baseType: !947, size: 272, offset: 82304)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 272, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 34)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !96, file: !51, line: 735, baseType: !951, size: 64, offset: 213632)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !51, line: 379, baseType: !953)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !51, line: 379, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !96, file: !51, line: 793, baseType: !955, size: 29504, offset: 213696)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !51, line: 738, size: 29504, elements: !956)
!956 = !{!957, !984, !988, !990, !992, !993, !994, !995, !996, !997, !998, !999, !1002, !1004, !1005, !1008, !1010, !1012, !1013, !1014}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !955, file: !51, line: 764, baseType: !958, size: 5632)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !955, file: !51, line: 741, size: 5632, elements: !959)
!959 = !{!960, !961, !962, !963, !965, !966, !967, !968, !969, !971, !974, !976, !980, !981, !983}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !958, file: !51, line: 744, baseType: !104, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !958, file: !51, line: 746, baseType: !104, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !958, file: !51, line: 748, baseType: !104, size: 32, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !958, file: !51, line: 750, baseType: !964, size: 608, offset: 96)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 608, elements: !734)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !958, file: !51, line: 751, baseType: !104, size: 32, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !958, file: !51, line: 752, baseType: !104, size: 32, offset: 736)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !958, file: !51, line: 753, baseType: !104, size: 32, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !958, file: !51, line: 754, baseType: !203, size: 64, offset: 800)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !958, file: !51, line: 755, baseType: !970, size: 2048, offset: 864)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !822)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !958, file: !51, line: 756, baseType: !972, size: 544, offset: 2912)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 544, elements: !973)
!973 = !{!640}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !958, file: !51, line: 757, baseType: !975, size: 192, offset: 3456)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 192, elements: !44)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !958, file: !51, line: 758, baseType: !977, size: 1664, offset: 3648)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1664, elements: !978)
!978 = !{!65, !979}
!979 = !DISubrange(count: 13)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !958, file: !51, line: 760, baseType: !203, size: 64, offset: 5312)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !958, file: !51, line: 762, baseType: !982, size: 192, offset: 5376)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 192, elements: !607)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !958, file: !51, line: 763, baseType: !686, size: 64, offset: 5568)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !955, file: !51, line: 769, baseType: !985, size: 160, offset: 5632)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 160, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 5)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !955, file: !51, line: 770, baseType: !989, size: 320, offset: 5824)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 320, elements: !986)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !955, file: !51, line: 771, baseType: !991, size: 320, offset: 6144)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 320, elements: !986)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !955, file: !51, line: 772, baseType: !972, size: 544, offset: 6464)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !955, file: !51, line: 774, baseType: !989, size: 320, offset: 7040)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !955, file: !51, line: 775, baseType: !991, size: 320, offset: 7360)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !955, file: !51, line: 776, baseType: !991, size: 320, offset: 7680)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !955, file: !51, line: 777, baseType: !991, size: 320, offset: 8000)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !955, file: !51, line: 778, baseType: !991, size: 320, offset: 8320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !955, file: !51, line: 779, baseType: !991, size: 320, offset: 8640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !955, file: !51, line: 781, baseType: !1000, size: 6080, offset: 8960)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 6080, elements: !1001)
!1001 = !{!987, !735}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !955, file: !51, line: 782, baseType: !1003, size: 2176, offset: 15040)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 2176, elements: !639)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !955, file: !51, line: 783, baseType: !724, size: 128, offset: 17216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !955, file: !51, line: 784, baseType: !1006, size: 8192, offset: 17344)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 8192, elements: !1007)
!1007 = !{!58, !58, !533}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !955, file: !51, line: 785, baseType: !1009, size: 384, offset: 25536)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 384, elements: !44)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !955, file: !51, line: 786, baseType: !1011, size: 3328, offset: 25920)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 3328, elements: !978)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !955, file: !51, line: 788, baseType: !203, size: 64, offset: 29248)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !955, file: !51, line: 789, baseType: !203, size: 64, offset: 29312)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !955, file: !51, line: 791, baseType: !606, size: 96, offset: 29376)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !96, file: !51, line: 795, baseType: !1016, size: 4096, align: 128, offset: 243200)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !1017)
!1017 = !{!58, !156}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !96, file: !51, line: 796, baseType: !1019, size: 2048, align: 128, offset: 247296)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, elements: !1017)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !96, file: !51, line: 797, baseType: !1021, size: 64, offset: 249344)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !57)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !96, file: !51, line: 800, baseType: !162, size: 64, offset: 249408)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !96, file: !51, line: 801, baseType: !1024, size: 384, offset: 249472)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 384, elements: !1025)
!1025 = !{!58, !534}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !96, file: !51, line: 802, baseType: !1027, size: 128, offset: 249856)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1028, size: 128, elements: !57)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !1030)
!1030 = !{!58, !65, !65}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !96, file: !51, line: 805, baseType: !1032, size: 448, offset: 249984)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 448, elements: !1038)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1034, line: 27, baseType: !1035)
!1034 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !291}
!1038 = !{!1039}
!1039 = !DISubrange(count: 7)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !96, file: !51, line: 806, baseType: !1032, size: 448, offset: 250432)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !96, file: !51, line: 807, baseType: !1042, size: 768, offset: 250880)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 768, elements: !1047)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1034, line: 28, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{null, !291, !291}
!1047 = !{!1048}
!1048 = !DISubrange(count: 12)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !96, file: !51, line: 808, baseType: !1050, size: 768, offset: 251648)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 768, elements: !1047)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !96, file: !51, line: 809, baseType: !1052, size: 64, offset: 252416)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1034, line: 29, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !291, !291, !104, !104}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !96, file: !51, line: 811, baseType: !1057, size: 8448, offset: 252480)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1058, line: 110, baseType: !1059)
!1058 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1058, line: 63, size: 8448, elements: !1060)
!1060 = !{!1061, !1067, !1068, !1069, !1070, !1072, !1073, !1074, !1075, !1081, !1087, !1088, !1092, !1097, !1098, !1104, !1108, !1109, !1110, !1111, !1112, !1117, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1059, file: !1058, line: 65, baseType: !1062, size: 448)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 448, elements: !1038)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1058, line: 26, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!104, !291, !104, !291, !104}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1059, file: !1058, line: 66, baseType: !1062, size: 448, offset: 448)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1059, file: !1058, line: 67, baseType: !1062, size: 448, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1059, file: !1058, line: 68, baseType: !1062, size: 448, offset: 1344)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1059, file: !1058, line: 69, baseType: !1071, size: 256, offset: 1792)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 256, elements: !64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1059, file: !1058, line: 70, baseType: !1062, size: 448, offset: 2048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1059, file: !1058, line: 71, baseType: !1062, size: 448, offset: 2496)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1059, file: !1058, line: 72, baseType: !1062, size: 448, offset: 2944)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1059, file: !1058, line: 73, baseType: !1076, size: 448, offset: 3392)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1077, size: 448, elements: !1038)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1058, line: 27, baseType: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !291, !291, !291, !291, !104, !647}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1059, file: !1058, line: 74, baseType: !1082, size: 448, offset: 3840)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1083, size: 448, elements: !1038)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1058, line: 28, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !291, !291, !291, !291, !291, !104, !647}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1059, file: !1058, line: 75, baseType: !1062, size: 448, offset: 4288)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1059, file: !1058, line: 76, baseType: !1089, size: 64, offset: 4736)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!104, !291, !104, !291, !104, !647}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1059, file: !1058, line: 78, baseType: !1093, size: 256, offset: 4800)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 256, elements: !64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!678, !291, !104}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1059, file: !1058, line: 79, baseType: !1093, size: 256, offset: 5056)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1059, file: !1058, line: 81, baseType: !1099, size: 64, offset: 5312)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !439, !104, !439, !104, !1102}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1059, file: !1058, line: 83, baseType: !1105, size: 64, offset: 5376)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!199, !1102, !1102, !104}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1059, file: !1058, line: 86, baseType: !1076, size: 448, offset: 5440)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1059, file: !1058, line: 87, baseType: !1082, size: 448, offset: 5888)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1059, file: !1058, line: 88, baseType: !1076, size: 448, offset: 6336)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1059, file: !1058, line: 89, baseType: !1082, size: 448, offset: 6784)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1059, file: !1058, line: 93, baseType: !1113, size: 448, offset: 7232)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 448, elements: !1038)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!104, !647, !466, !104, !466, !804, !104, !104}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1059, file: !1058, line: 98, baseType: !1118, size: 64, offset: 7680)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !291, !291, !647}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1059, file: !1058, line: 99, baseType: !1118, size: 64, offset: 7744)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1059, file: !1058, line: 100, baseType: !1118, size: 64, offset: 7808)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1059, file: !1058, line: 101, baseType: !1118, size: 64, offset: 7872)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1059, file: !1058, line: 102, baseType: !1118, size: 64, offset: 7936)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1059, file: !1058, line: 103, baseType: !1118, size: 64, offset: 8000)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1059, file: !1058, line: 104, baseType: !1118, size: 64, offset: 8064)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1059, file: !1058, line: 105, baseType: !1118, size: 64, offset: 8128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1059, file: !1058, line: 106, baseType: !1118, size: 64, offset: 8192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1059, file: !1058, line: 107, baseType: !1118, size: 64, offset: 8256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1059, file: !1058, line: 108, baseType: !1118, size: 64, offset: 8320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1059, file: !1058, line: 109, baseType: !1118, size: 64, offset: 8384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !96, file: !51, line: 812, baseType: !1133, size: 2368, offset: 260928)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !508, line: 111, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 58, size: 2368, elements: !1135)
!1135 = !{!1136, !1143, !1147, !1151, !1158, !1163, !1164, !1168, !1172, !1173, !1177, !1185, !1189, !1193, !1194, !1198, !1202, !1206, !1207, !1208, !1209, !1214}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1134, file: !508, line: 60, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !291, !104, !1140, !104, !104, !104, !104, !104, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1134, file: !508, line: 65, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!291, !291, !647, !1140, !104, !104, !104, !104, !104, !1141}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1134, file: !508, line: 71, baseType: !1148, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{null, !291, !104, !291, !104, !104, !104, !104, !104}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1134, file: !508, line: 75, baseType: !1152, size: 640, offset: 192)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 640, elements: !1156)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !291, !104, !291, !104, !291, !104, !104}
!1156 = !{!1157}
!1157 = !DISubrange(count: 10)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1134, file: !508, line: 78, baseType: !1159, size: 448, offset: 832)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 448, elements: !1038)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !291, !104, !291, !104, !104}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1134, file: !508, line: 79, baseType: !1160, size: 64, offset: 1280)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1134, file: !508, line: 81, baseType: !1165, size: 64, offset: 1344)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !291, !104, !291, !104, !104, !104}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1134, file: !508, line: 84, baseType: !1169, size: 64, offset: 1408)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !291, !291, !291, !291, !104, !104, !104, !804}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1134, file: !508, line: 88, baseType: !1160, size: 64, offset: 1472)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1134, file: !508, line: 91, baseType: !1174, size: 64, offset: 1536)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !291, !104, !104}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1134, file: !508, line: 93, baseType: !1178, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!162, !162, !1181, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1184, line: 46, baseType: !680)
!1184 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1134, file: !508, line: 94, baseType: !1186, size: 64, offset: 1664)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !162, !104}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1134, file: !508, line: 97, baseType: !1190, size: 64, offset: 1728)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !466, !291, !104}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1134, file: !508, line: 98, baseType: !1190, size: 64, offset: 1792)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1134, file: !508, line: 99, baseType: !1195, size: 64, offset: 1856)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !466, !466, !104}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1134, file: !508, line: 100, baseType: !1199, size: 64, offset: 1920)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !466, !104}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1134, file: !508, line: 102, baseType: !1203, size: 64, offset: 1984)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !291, !291, !291, !291, !291, !104, !104, !104, !104}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1134, file: !508, line: 104, baseType: !525, size: 64, offset: 2048)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1134, file: !508, line: 105, baseType: !525, size: 64, offset: 2112)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1134, file: !508, line: 106, baseType: !525, size: 64, offset: 2176)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1134, file: !508, line: 107, baseType: !1210, size: 64, offset: 2240)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !93, !1213}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1134, file: !508, line: 109, baseType: !1215, size: 64, offset: 2304)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !647, !466, !466, !466, !466, !104}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !96, file: !51, line: 813, baseType: !1219, size: 960, offset: 263296)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1220, line: 115, baseType: !1221)
!1220 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 89, size: 960, elements: !1222)
!1222 = !{!1223, !1227, !1231, !1236, !1237, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1253, !1257, !1261}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1221, file: !1220, line: 94, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !804, !291, !291}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1221, file: !1220, line: 95, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !291, !804}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1221, file: !1220, line: 97, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !1235, !291, !291}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1221, file: !1220, line: 98, baseType: !1224, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1221, file: !1220, line: 99, baseType: !1238, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !291, !1235}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1221, file: !1220, line: 100, baseType: !1228, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1221, file: !1220, line: 102, baseType: !1232, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1221, file: !1220, line: 103, baseType: !1238, size: 64, offset: 448)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1221, file: !1220, line: 104, baseType: !1228, size: 64, offset: 512)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1221, file: !1220, line: 106, baseType: !1224, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1221, file: !1220, line: 107, baseType: !1228, size: 64, offset: 640)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1221, file: !1220, line: 109, baseType: !1248, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !1251, !291, !291}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1024, elements: !155)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1221, file: !1220, line: 110, baseType: !1254, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !291, !1251}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1221, file: !1220, line: 112, baseType: !1258, size: 64, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !804}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1221, file: !1220, line: 113, baseType: !1258, size: 64, offset: 896)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !96, file: !51, line: 814, baseType: !1263, size: 384, offset: 264256)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1220, line: 126, baseType: !1264)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1220, line: 117, size: 384, elements: !1265)
!1265 = !{!1266, !1270, !1271, !1275, !1276, !1280}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1264, file: !1220, line: 119, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !804, !804}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1264, file: !1220, line: 120, baseType: !1267, size: 64, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1264, file: !1220, line: 121, baseType: !1272, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!104, !804, !439, !291}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1264, file: !1220, line: 122, baseType: !1272, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1264, file: !1220, line: 123, baseType: !1277, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!104, !804, !439, !291, !804}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1264, file: !1220, line: 124, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !804, !804, !291}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !96, file: !51, line: 815, baseType: !1285, size: 1408, offset: 264640)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1286, line: 44, baseType: !1287)
!1286 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1286, line: 26, size: 1408, elements: !1288)
!1288 = !{!1289, !1293, !1294, !1298, !1299, !1303, !1307, !1308, !1313, !1317, !1318, !1319, !1321}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1287, file: !1286, line: 28, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!104, !804, !466, !466}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1287, file: !1286, line: 29, baseType: !1290, size: 64, offset: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1287, file: !1286, line: 30, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!104, !804, !104, !104}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1287, file: !1286, line: 31, baseType: !1295, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1287, file: !1286, line: 33, baseType: !1300, size: 64, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !804, !450, !104}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1287, file: !1286, line: 34, baseType: !1304, size: 64, offset: 320)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !804, !446, !104}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1287, file: !1286, line: 35, baseType: !1304, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1287, file: !1286, line: 37, baseType: !1309, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null, !804, !1312, !466, !104}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1287, file: !1286, line: 39, baseType: !1314, size: 64, offset: 512)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!104, !804}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1287, file: !1286, line: 40, baseType: !1314, size: 64, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1287, file: !1286, line: 41, baseType: !1314, size: 64, offset: 640)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1287, file: !1286, line: 42, baseType: !1320, size: 384, offset: 704)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1314, size: 384, elements: !44)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1287, file: !1286, line: 43, baseType: !1322, size: 320, offset: 1088)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 320, elements: !986)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!104, !804, !1326}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !296, line: 63, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 58, size: 416, elements: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1328, file: !296, line: 60, baseType: !104, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1328, file: !296, line: 61, baseType: !746, size: 256, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1328, file: !296, line: 62, baseType: !147, size: 128, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !96, file: !51, line: 816, baseType: !1334, size: 576, offset: 266048)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !575, line: 170, baseType: !1335)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 161, size: 576, elements: !1336)
!1336 = !{!1337, !1343, !1344, !1350, !1351}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1335, file: !575, line: 163, baseType: !1338, size: 128)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 128, elements: !57)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !575, line: 159, baseType: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !291, !104, !104, !104, !630}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1335, file: !575, line: 164, baseType: !1338, size: 128, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1335, file: !575, line: 165, baseType: !1345, size: 128, offset: 256)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 128, elements: !57)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !575, line: 160, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !291, !104, !104, !104}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1335, file: !575, line: 166, baseType: !1345, size: 128, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1335, file: !575, line: 167, baseType: !1352, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !291, !1355, !1356, !1359, !104, !104}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1280, elements: !1358)
!1358 = !{!894, !58}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !1361)
!1361 = !{!65, !65}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !96, file: !51, line: 821, baseType: !1363, size: 64, offset: 266624)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !51, line: 377, baseType: !1365)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !51, line: 366, size: 960, elements: !1366)
!1366 = !{!1367, !1369, !1370, !1371, !1372, !1373, !1374, !1384, !1385}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1365, file: !51, line: 368, baseType: !1368, size: 8)
!1368 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !61)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1365, file: !51, line: 369, baseType: !61, size: 8, offset: 8)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1365, file: !51, line: 370, baseType: !61, size: 8, offset: 16)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1365, file: !51, line: 371, baseType: !104, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1365, file: !51, line: 372, baseType: !104, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1365, file: !51, line: 373, baseType: !573, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1365, file: !51, line: 374, baseType: !1375, size: 256, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !575, line: 157, baseType: !1376)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 149, size: 256, elements: !1377)
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1376, file: !575, line: 151, baseType: !572, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1376, file: !575, line: 152, baseType: !104, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1376, file: !575, line: 153, baseType: !104, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1376, file: !575, line: 154, baseType: !104, size: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1376, file: !575, line: 155, baseType: !104, size: 32, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1376, file: !575, line: 156, baseType: !104, size: 32, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1365, file: !51, line: 375, baseType: !1375, size: 256, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1365, file: !51, line: 376, baseType: !1375, size: 256, offset: 704)
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1397, !1399, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1414, !1415, !1416, !1417, !1420, !1421, !1422}
!1387 = !DILocalVariable(name: "h", arg: 1, scope: !90, file: !69, line: 339, type: !93)
!1388 = !DILocalVariable(name: "mb_y", arg: 2, scope: !90, file: !69, line: 339, type: !104)
!1389 = !DILocalVariable(name: "b_interlaced", scope: !90, file: !69, line: 341, type: !104)
!1390 = !DILocalVariable(name: "qp_thresh", scope: !90, file: !69, line: 342, type: !104)
!1391 = !DILocalVariable(name: "stridey", scope: !90, file: !69, line: 343, type: !104)
!1392 = !DILocalVariable(name: "stride2y", scope: !90, file: !69, line: 344, type: !104)
!1393 = !DILocalVariable(name: "strideuv", scope: !90, file: !69, line: 345, type: !104)
!1394 = !DILocalVariable(name: "stride2uv", scope: !90, file: !69, line: 346, type: !104)
!1395 = !DILocalVariable(name: "nnz_backup", scope: !90, file: !69, line: 347, type: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1397 = !DILocalVariable(name: "mb_x", scope: !1398, file: !69, line: 352, type: !104)
!1398 = distinct !DILexicalBlock(scope: !90, file: !69, line: 352, column: 5)
!1399 = !DILocalVariable(name: "mb_xy", scope: !1400, file: !69, line: 357, type: !104)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !69, line: 353, column: 5)
!1401 = distinct !DILexicalBlock(scope: !1398, file: !69, line: 352, column: 5)
!1402 = !DILocalVariable(name: "transform_8x8", scope: !1400, file: !69, line: 358, type: !104)
!1403 = !DILocalVariable(name: "intra_cur", scope: !1400, file: !69, line: 359, type: !104)
!1404 = !DILocalVariable(name: "bs", scope: !1400, file: !69, line: 360, type: !1359)
!1405 = !DILocalVariable(name: "pixy", scope: !1400, file: !69, line: 362, type: !291)
!1406 = !DILocalVariable(name: "pixu", scope: !1400, file: !69, line: 363, type: !291)
!1407 = !DILocalVariable(name: "pixv", scope: !1400, file: !69, line: 364, type: !291)
!1408 = !DILocalVariable(name: "qp", scope: !1400, file: !69, line: 372, type: !104)
!1409 = !DILocalVariable(name: "qpc", scope: !1400, file: !69, line: 373, type: !104)
!1410 = !DILocalVariable(name: "first_edge_only", scope: !1400, file: !69, line: 374, type: !104)
!1411 = !DILocalVariable(name: "qpl", scope: !1412, file: !69, line: 390, type: !104)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !69, line: 389, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1400, file: !69, line: 388, column: 13)
!1414 = !DILocalVariable(name: "qp_left", scope: !1412, file: !69, line: 391, type: !104)
!1415 = !DILocalVariable(name: "qpc_left", scope: !1412, file: !69, line: 392, type: !104)
!1416 = !DILocalVariable(name: "intra_left", scope: !1412, file: !69, line: 393, type: !104)
!1417 = !DILocalVariable(name: "qpt", scope: !1418, file: !69, line: 409, type: !104)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !69, line: 408, column: 9)
!1419 = distinct !DILexicalBlock(scope: !1400, file: !69, line: 407, column: 13)
!1420 = !DILocalVariable(name: "qp_top", scope: !1418, file: !69, line: 410, type: !104)
!1421 = !DILocalVariable(name: "qpc_top", scope: !1418, file: !69, line: 411, type: !104)
!1422 = !DILocalVariable(name: "intra_top", scope: !1418, file: !69, line: 412, type: !104)
!1423 = !DILocation(line: 0, scope: !90)
!1424 = !DILocation(line: 341, column: 30, scope: !90)
!1425 = !{!1426, !1428, i64 7268}
!1426 = !{!"x264_t", !1427, i64 0, !1429, i64 704, !1428, i64 1736, !1428, i64 1740, !1428, i64 1744, !1428, i64 1748, !1428, i64 1752, !1436, i64 1760, !1432, i64 1832, !1428, i64 1840, !1428, i64 1844, !1428, i64 1848, !1428, i64 1852, !1428, i64 1856, !1428, i64 1860, !1428, i64 1864, !1428, i64 1868, !1428, i64 1872, !1428, i64 1876, !1428, i64 1880, !1428, i64 1884, !1428, i64 1888, !1428, i64 1892, !1429, i64 1896, !1432, i64 3200, !1429, i64 3208, !1432, i64 3328, !1428, i64 3336, !1428, i64 3340, !1429, i64 3344, !1429, i64 3376, !1429, i64 3392, !1429, i64 3424, !1429, i64 3440, !1429, i64 3472, !1429, i64 3488, !1429, i64 3520, !1429, i64 3536, !1429, i64 4272, !1432, i64 7216, !1439, i64 7232, !1440, i64 13904, !1441, i64 14416, !1432, i64 14680, !1432, i64 14688, !1428, i64 14696, !1429, i64 14704, !1428, i64 14856, !1429, i64 14864, !1429, i64 15016, !1428, i64 15024, !1428, i64 15028, !1438, i64 15032, !1442, i64 15040, !1443, i64 16368, !1432, i64 26704, !1446, i64 26712, !1429, i64 30400, !1429, i64 30912, !1429, i64 31168, !1432, i64 31176, !1429, i64 31184, !1429, i64 31232, !1429, i64 31248, !1429, i64 31304, !1429, i64 31360, !1429, i64 31456, !1432, i64 31552, !1449, i64 31560, !1450, i64 32616, !1451, i64 32912, !1452, i64 33032, !1453, i64 33080, !1454, i64 33256, !1432, i64 33328}
!1427 = !{!"x264_param_t", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1431, i64 44, !1428, i64 80, !1428, i64 84, !1428, i64 88, !1428, i64 92, !1428, i64 96, !1428, i64 100, !1428, i64 104, !1428, i64 108, !1428, i64 112, !1428, i64 116, !1428, i64 120, !1428, i64 124, !1428, i64 128, !1428, i64 132, !1428, i64 136, !1428, i64 140, !1428, i64 144, !1432, i64 152, !1429, i64 160, !1429, i64 176, !1429, i64 192, !1429, i64 208, !1429, i64 224, !1429, i64 288, !1432, i64 352, !1432, i64 360, !1428, i64 368, !1428, i64 372, !1432, i64 376, !1433, i64 384, !1435, i64 488, !1428, i64 632, !1428, i64 636, !1428, i64 640, !1428, i64 644, !1428, i64 648, !1428, i64 652, !1428, i64 656, !1428, i64 660, !1428, i64 664, !1428, i64 668, !1428, i64 672, !1428, i64 676, !1428, i64 680, !1428, i64 684, !1428, i64 688, !1428, i64 692, !1432, i64 696}
!1428 = !{!"int", !1429, i64 0}
!1429 = !{!"omnipotent char", !1430, i64 0}
!1430 = !{!"Simple C/C++ TBAA"}
!1431 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32}
!1432 = !{!"any pointer", !1429, i64 0}
!1433 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1428, i64 56, !1428, i64 60, !1428, i64 64, !1428, i64 68, !1434, i64 72, !1434, i64 76, !1428, i64 80, !1429, i64 84, !1428, i64 92, !1428, i64 96}
!1434 = !{!"float", !1429, i64 0}
!1435 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1434, i64 24, !1434, i64 28, !1434, i64 32, !1428, i64 36, !1428, i64 40, !1434, i64 44, !1434, i64 48, !1434, i64 52, !1428, i64 56, !1434, i64 60, !1428, i64 64, !1428, i64 68, !1428, i64 72, !1432, i64 80, !1428, i64 88, !1432, i64 96, !1434, i64 104, !1434, i64 108, !1434, i64 112, !1432, i64 120, !1428, i64 128, !1432, i64 136}
!1436 = !{!"", !1428, i64 0, !1428, i64 4, !1432, i64 8, !1428, i64 16, !1432, i64 24, !1437, i64 32}
!1437 = !{!"bs_s", !1432, i64 0, !1432, i64 8, !1432, i64 16, !1438, i64 24, !1428, i64 32, !1428, i64 36}
!1438 = !{!"long", !1429, i64 0}
!1439 = !{!"", !1432, i64 0, !1432, i64 8, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1428, i64 56, !1429, i64 60, !1428, i64 68, !1428, i64 72, !1428, i64 76, !1428, i64 80, !1428, i64 84, !1428, i64 88, !1428, i64 92, !1429, i64 96, !1429, i64 352, !1428, i64 6496, !1428, i64 6500, !1429, i64 6504, !1428, i64 6632, !1428, i64 6636, !1428, i64 6640, !1428, i64 6644, !1428, i64 6648, !1428, i64 6652, !1428, i64 6656, !1428, i64 6660}
!1440 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1432, i64 16, !1432, i64 24, !1432, i64 32, !1428, i64 48, !1429, i64 52}
!1441 = !{!"", !1432, i64 0, !1429, i64 8, !1432, i64 24, !1429, i64 32, !1428, i64 176, !1428, i64 180, !1428, i64 184, !1428, i64 188, !1428, i64 192, !1428, i64 196, !1428, i64 200, !1438, i64 208, !1438, i64 216, !1429, i64 224, !1438, i64 240, !1438, i64 248, !1428, i64 256, !1428, i64 260}
!1442 = !{!"", !1429, i64 0, !1429, i64 32, !1429, i64 48, !1429, i64 560}
!1443 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1428, i64 56, !1428, i64 60, !1428, i64 64, !1428, i64 68, !1429, i64 72, !1429, i64 80, !1429, i64 88, !1429, i64 96, !1429, i64 104, !1429, i64 112, !1428, i64 120, !1429, i64 124, !1429, i64 140, !1428, i64 204, !1428, i64 208, !1428, i64 212, !1428, i64 216, !1428, i64 220, !1428, i64 224, !1428, i64 228, !1428, i64 232, !1428, i64 236, !1428, i64 240, !1428, i64 244, !1432, i64 248, !1432, i64 256, !1432, i64 264, !1432, i64 272, !1432, i64 280, !1432, i64 288, !1432, i64 296, !1429, i64 304, !1429, i64 320, !1429, i64 336, !1429, i64 352, !1432, i64 864, !1432, i64 872, !1432, i64 880, !1429, i64 888, !1428, i64 1016, !1428, i64 1020, !1429, i64 1024, !1428, i64 1028, !1428, i64 1032, !1428, i64 1036, !1428, i64 1040, !1428, i64 1044, !1428, i64 1048, !1428, i64 1052, !1428, i64 1056, !1428, i64 1060, !1444, i64 1072, !1445, i64 8656, !1428, i64 9424, !1428, i64 9428, !1428, i64 9432, !1428, i64 9436, !1428, i64 9440, !1428, i64 9444, !1428, i64 9448, !1428, i64 9452, !1429, i64 9456, !1428, i64 9472, !1428, i64 9476, !1429, i64 9480, !1432, i64 9992, !1429, i64 10000, !1432, i64 10256, !1429, i64 10264, !1428, i64 10284, !1429, i64 10288}
!1444 = !{!"", !1429, i64 0, !1429, i64 384, !1429, i64 1248, !1429, i64 1504, !1429, i64 1760, !1429, i64 2144, !1429, i64 2624, !1429, i64 2640, !1428, i64 2656, !1428, i64 2660, !1429, i64 2672, !1429, i64 3184, !1429, i64 3696, !1429, i64 3776, !1429, i64 3904, !1429, i64 3928, !1429, i64 3952, !1429, i64 3976, !1429, i64 3984, !1429, i64 7056, !1429, i64 7312, !1429, i64 7568}
!1445 = !{!"", !1429, i64 0, !1429, i64 48, !1429, i64 96, !1429, i64 176, !1429, i64 496, !1429, i64 656, !1429, i64 696, !1429, i64 728, !1428, i64 736, !1429, i64 740, !1428, i64 744, !1428, i64 748, !1428, i64 752, !1428, i64 756}
!1446 = !{!"", !1447, i64 0, !1429, i64 704, !1429, i64 728, !1429, i64 768, !1429, i64 808, !1429, i64 880, !1429, i64 920, !1429, i64 960, !1429, i64 1000, !1429, i64 1040, !1429, i64 1080, !1429, i64 1120, !1429, i64 1880, !1429, i64 2152, !1429, i64 2168, !1429, i64 3192, !1429, i64 3240, !1429, i64 3656, !1429, i64 3664, !1429, i64 3672}
!1447 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1429, i64 12, !1428, i64 88, !1428, i64 92, !1428, i64 96, !1429, i64 100, !1429, i64 108, !1429, i64 364, !1429, i64 432, !1429, i64 456, !1429, i64 664, !1429, i64 672, !1448, i64 696}
!1448 = !{!"double", !1429, i64 0}
!1449 = !{!"", !1429, i64 0, !1429, i64 56, !1429, i64 112, !1429, i64 168, !1429, i64 224, !1429, i64 256, !1429, i64 312, !1429, i64 368, !1429, i64 424, !1429, i64 480, !1429, i64 536, !1432, i64 592, !1429, i64 600, !1429, i64 632, !1432, i64 664, !1432, i64 672, !1429, i64 680, !1429, i64 736, !1429, i64 792, !1429, i64 848, !1429, i64 904, !1432, i64 960, !1432, i64 968, !1432, i64 976, !1432, i64 984, !1432, i64 992, !1432, i64 1000, !1432, i64 1008, !1432, i64 1016, !1432, i64 1024, !1432, i64 1032, !1432, i64 1040, !1432, i64 1048}
!1450 = !{!"", !1432, i64 0, !1432, i64 8, !1432, i64 16, !1429, i64 24, !1429, i64 104, !1432, i64 160, !1432, i64 168, !1432, i64 176, !1432, i64 184, !1432, i64 192, !1432, i64 200, !1432, i64 208, !1432, i64 216, !1432, i64 224, !1432, i64 232, !1432, i64 240, !1432, i64 248, !1432, i64 256, !1432, i64 264, !1432, i64 272, !1432, i64 280, !1432, i64 288}
!1451 = !{!"", !1432, i64 0, !1432, i64 8, !1432, i64 16, !1432, i64 24, !1432, i64 32, !1432, i64 40, !1432, i64 48, !1432, i64 56, !1432, i64 64, !1432, i64 72, !1432, i64 80, !1432, i64 88, !1432, i64 96, !1432, i64 104, !1432, i64 112}
!1452 = !{!"", !1432, i64 0, !1432, i64 8, !1432, i64 16, !1432, i64 24, !1432, i64 32, !1432, i64 40}
!1453 = !{!"", !1432, i64 0, !1432, i64 8, !1432, i64 16, !1432, i64 24, !1432, i64 32, !1432, i64 40, !1432, i64 48, !1432, i64 56, !1432, i64 64, !1432, i64 72, !1432, i64 80, !1429, i64 88, !1429, i64 136}
!1454 = !{!"", !1429, i64 0, !1429, i64 16, !1429, i64 32, !1429, i64 48, !1432, i64 64}
!1455 = !DILocation(line: 342, column: 26, scope: !90)
!1456 = !{!1426, !1428, i64 13888}
!1457 = !{!1426, !1428, i64 13892}
!1458 = !DILocation(line: 342, column: 83, scope: !90)
!1459 = !{!1426, !1428, i64 408}
!1460 = !DILocation(line: 342, column: 81, scope: !90)
!1461 = !DILocation(line: 343, column: 24, scope: !90)
!1462 = !{!1426, !1432, i64 14688}
!1463 = !DILocation(line: 343, column: 30, scope: !90)
!1464 = !DILocation(line: 343, column: 21, scope: !90)
!1465 = !{!1428, !1428, i64 0}
!1466 = !DILocation(line: 344, column: 29, scope: !90)
!1467 = !DILocation(line: 345, column: 21, scope: !90)
!1468 = !DILocation(line: 346, column: 30, scope: !90)
!1469 = !DILocation(line: 347, column: 36, scope: !90)
!1470 = !{!1426, !1432, i64 31176}
!1471 = !DILocation(line: 349, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !90, file: !69, line: 349, column: 9)
!1473 = !{!1426, !1432, i64 3328}
!1474 = !DILocation(line: 349, column: 18, scope: !1472)
!1475 = !{!1476, !1428, i64 8}
!1476 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1428, i64 56, !1428, i64 60, !1428, i64 64, !1429, i64 72}
!1477 = !DILocation(line: 349, column: 10, scope: !1472)
!1478 = !DILocation(line: 349, column: 26, scope: !1472)
!1479 = !DILocation(line: 349, column: 37, scope: !1472)
!1480 = !{!1476, !1428, i64 60}
!1481 = !DILocation(line: 349, column: 29, scope: !1472)
!1482 = !DILocation(line: 349, column: 9, scope: !90)
!1483 = !DILocalVariable(name: "h", arg: 1, scope: !1484, file: !69, line: 53, type: !93)
!1484 = distinct !DISubprogram(name: "munge_cavlc_nnz", scope: !69, file: !69, line: 53, type: !1485, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !93, !104, !1396, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{null, !93, !104, !1396}
!1490 = !{!1483, !1491, !1492, !1493}
!1491 = !DILocalVariable(name: "mb_y", arg: 2, scope: !1484, file: !69, line: 53, type: !104)
!1492 = !DILocalVariable(name: "buf", arg: 3, scope: !1484, file: !69, line: 53, type: !1396)
!1493 = !DILocalVariable(name: "func", arg: 4, scope: !1484, file: !69, line: 53, type: !1487)
!1494 = !DILocation(line: 0, scope: !1484, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 350, column: 9, scope: !1472)
!1496 = !DILocalVariable(name: "h", arg: 1, scope: !1497, file: !69, line: 29, type: !93)
!1497 = distinct !DISubprogram(name: "munge_cavlc_nnz_row", scope: !69, file: !69, line: 29, type: !1488, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1498)
!1498 = !{!1496, !1499, !1500, !1501, !1502, !1503, !1505}
!1499 = !DILocalVariable(name: "mb_y", arg: 2, scope: !1497, file: !69, line: 29, type: !104)
!1500 = !DILocalVariable(name: "buf", arg: 3, scope: !1497, file: !69, line: 29, type: !1396)
!1501 = !DILocalVariable(name: "src", scope: !1497, file: !69, line: 31, type: !38)
!1502 = !DILocalVariable(name: "transform", scope: !1497, file: !69, line: 32, type: !630)
!1503 = !DILocalVariable(name: "x", scope: !1504, file: !69, line: 33, type: !104)
!1504 = distinct !DILexicalBlock(scope: !1497, file: !69, line: 33, column: 5)
!1505 = !DILocalVariable(name: "nnz", scope: !1506, file: !69, line: 38, type: !104)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !69, line: 37, column: 9)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !69, line: 36, column: 13)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !69, line: 34, column: 5)
!1509 = distinct !DILexicalBlock(scope: !1504, file: !69, line: 33, column: 5)
!1510 = !DILocation(line: 0, scope: !1497, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 55, column: 5, scope: !1484, inlinedAt: !1495)
!1512 = !DILocation(line: 31, column: 48, scope: !1497, inlinedAt: !1511)
!1513 = !{!1426, !1432, i64 16656}
!1514 = !DILocation(line: 31, column: 75, scope: !1497, inlinedAt: !1511)
!1515 = !{!1426, !1432, i64 3200}
!1516 = !DILocation(line: 31, column: 80, scope: !1497, inlinedAt: !1511)
!1517 = !{!1518, !1428, i64 1084}
!1518 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1429, i64 52, !1428, i64 1076, !1428, i64 1080, !1428, i64 1084, !1428, i64 1088, !1428, i64 1092, !1428, i64 1096, !1428, i64 1100, !1428, i64 1104, !1519, i64 1108, !1428, i64 1124, !1520, i64 1128, !1428, i64 1296}
!1519 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12}
!1520 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44, !1428, i64 48, !1428, i64 52, !1428, i64 56, !1428, i64 60, !1428, i64 64, !1428, i64 68, !1428, i64 72, !1428, i64 76, !1428, i64 80, !1521, i64 84, !1428, i64 132, !1428, i64 136, !1428, i64 140, !1428, i64 144, !1428, i64 148, !1428, i64 152, !1428, i64 156, !1428, i64 160, !1428, i64 164}
!1521 = !{!"", !1428, i64 0, !1428, i64 4, !1428, i64 8, !1428, i64 12, !1428, i64 16, !1428, i64 20, !1428, i64 24, !1428, i64 28, !1428, i64 32, !1428, i64 36, !1428, i64 40, !1428, i64 44}
!1522 = !DILocation(line: 31, column: 70, scope: !1497, inlinedAt: !1511)
!1523 = !DILocation(line: 31, column: 63, scope: !1497, inlinedAt: !1511)
!1524 = !DILocation(line: 32, column: 31, scope: !1497, inlinedAt: !1511)
!1525 = !{!1426, !1432, i64 17240}
!1526 = !DILocation(line: 32, column: 49, scope: !1497, inlinedAt: !1511)
!1527 = !DILocation(line: 0, scope: !1504, inlinedAt: !1511)
!1528 = !DILocation(line: 33, column: 22, scope: !1509, inlinedAt: !1511)
!1529 = !DILocation(line: 33, column: 5, scope: !1504, inlinedAt: !1511)
!1530 = !DILocation(line: 35, column: 20, scope: !1508, inlinedAt: !1511)
!1531 = !DILocation(line: 35, column: 27, scope: !1508, inlinedAt: !1511)
!1532 = !DILocation(line: 35, column: 9, scope: !1508, inlinedAt: !1511)
!1533 = !DILocation(line: 36, column: 13, scope: !1507, inlinedAt: !1511)
!1534 = !{!1429, !1429, i64 0}
!1535 = !DILocation(line: 36, column: 13, scope: !1508, inlinedAt: !1511)
!1536 = !DILocation(line: 38, column: 23, scope: !1506, inlinedAt: !1511)
!1537 = !DILocation(line: 38, column: 35, scope: !1506, inlinedAt: !1511)
!1538 = !DILocation(line: 38, column: 33, scope: !1506, inlinedAt: !1511)
!1539 = !DILocation(line: 0, scope: !1506, inlinedAt: !1511)
!1540 = !DILocation(line: 39, column: 38, scope: !1506, inlinedAt: !1511)
!1541 = !DILocation(line: 39, column: 69, scope: !1506, inlinedAt: !1511)
!1542 = !DILocation(line: 39, column: 66, scope: !1506, inlinedAt: !1511)
!1543 = !DILocation(line: 39, column: 35, scope: !1506, inlinedAt: !1511)
!1544 = !DILocation(line: 39, column: 23, scope: !1506, inlinedAt: !1511)
!1545 = !DILocation(line: 40, column: 19, scope: !1506, inlinedAt: !1511)
!1546 = !DILocation(line: 40, column: 31, scope: !1506, inlinedAt: !1511)
!1547 = !DILocation(line: 40, column: 29, scope: !1506, inlinedAt: !1511)
!1548 = !DILocation(line: 41, column: 38, scope: !1506, inlinedAt: !1511)
!1549 = !DILocation(line: 41, column: 69, scope: !1506, inlinedAt: !1511)
!1550 = !DILocation(line: 41, column: 66, scope: !1506, inlinedAt: !1511)
!1551 = !DILocation(line: 41, column: 35, scope: !1506, inlinedAt: !1511)
!1552 = !DILocation(line: 41, column: 23, scope: !1506, inlinedAt: !1511)
!1553 = !DILocation(line: 42, column: 9, scope: !1506, inlinedAt: !1511)
!1554 = !DILocation(line: 33, column: 44, scope: !1509, inlinedAt: !1511)
!1555 = !DILocation(line: 33, column: 26, scope: !1509, inlinedAt: !1511)
!1556 = !DILocation(line: 33, column: 31, scope: !1509, inlinedAt: !1511)
!1557 = distinct !{!1557, !1529, !1558, !1559, !1560}
!1558 = !DILocation(line: 43, column: 5, scope: !1504, inlinedAt: !1511)
!1559 = !{!"llvm.loop.mustprogress"}
!1560 = !{!"llvm.loop.unroll.disable"}
!1561 = !DILocation(line: 56, column: 14, scope: !1562, inlinedAt: !1495)
!1562 = distinct !DILexicalBlock(scope: !1484, file: !69, line: 56, column: 9)
!1563 = !DILocation(line: 56, column: 9, scope: !1484, inlinedAt: !1495)
!1564 = !DILocation(line: 57, column: 22, scope: !1562, inlinedAt: !1495)
!1565 = !DILocation(line: 57, column: 30, scope: !1562, inlinedAt: !1495)
!1566 = !DILocation(line: 0, scope: !1497, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 57, column: 9, scope: !1562, inlinedAt: !1495)
!1568 = !DILocation(line: 31, column: 48, scope: !1497, inlinedAt: !1567)
!1569 = !DILocation(line: 31, column: 70, scope: !1497, inlinedAt: !1567)
!1570 = !DILocation(line: 31, column: 63, scope: !1497, inlinedAt: !1567)
!1571 = !DILocation(line: 32, column: 31, scope: !1497, inlinedAt: !1567)
!1572 = !DILocation(line: 32, column: 49, scope: !1497, inlinedAt: !1567)
!1573 = !DILocation(line: 0, scope: !1504, inlinedAt: !1567)
!1574 = !DILocation(line: 33, column: 22, scope: !1509, inlinedAt: !1567)
!1575 = !DILocation(line: 33, column: 5, scope: !1504, inlinedAt: !1567)
!1576 = !DILocation(line: 35, column: 20, scope: !1508, inlinedAt: !1567)
!1577 = !DILocation(line: 35, column: 27, scope: !1508, inlinedAt: !1567)
!1578 = !DILocation(line: 35, column: 9, scope: !1508, inlinedAt: !1567)
!1579 = !DILocation(line: 36, column: 13, scope: !1507, inlinedAt: !1567)
!1580 = !DILocation(line: 36, column: 13, scope: !1508, inlinedAt: !1567)
!1581 = !DILocation(line: 38, column: 23, scope: !1506, inlinedAt: !1567)
!1582 = !DILocation(line: 38, column: 35, scope: !1506, inlinedAt: !1567)
!1583 = !DILocation(line: 38, column: 33, scope: !1506, inlinedAt: !1567)
!1584 = !DILocation(line: 0, scope: !1506, inlinedAt: !1567)
!1585 = !DILocation(line: 39, column: 38, scope: !1506, inlinedAt: !1567)
!1586 = !DILocation(line: 39, column: 69, scope: !1506, inlinedAt: !1567)
!1587 = !DILocation(line: 39, column: 66, scope: !1506, inlinedAt: !1567)
!1588 = !DILocation(line: 39, column: 35, scope: !1506, inlinedAt: !1567)
!1589 = !DILocation(line: 39, column: 23, scope: !1506, inlinedAt: !1567)
!1590 = !DILocation(line: 40, column: 19, scope: !1506, inlinedAt: !1567)
!1591 = !DILocation(line: 40, column: 31, scope: !1506, inlinedAt: !1567)
!1592 = !DILocation(line: 40, column: 29, scope: !1506, inlinedAt: !1567)
!1593 = !DILocation(line: 41, column: 38, scope: !1506, inlinedAt: !1567)
!1594 = !DILocation(line: 41, column: 69, scope: !1506, inlinedAt: !1567)
!1595 = !DILocation(line: 41, column: 66, scope: !1506, inlinedAt: !1567)
!1596 = !DILocation(line: 41, column: 35, scope: !1506, inlinedAt: !1567)
!1597 = !DILocation(line: 41, column: 23, scope: !1506, inlinedAt: !1567)
!1598 = !DILocation(line: 42, column: 9, scope: !1506, inlinedAt: !1567)
!1599 = !DILocation(line: 33, column: 44, scope: !1509, inlinedAt: !1567)
!1600 = !DILocation(line: 33, column: 26, scope: !1509, inlinedAt: !1567)
!1601 = !DILocation(line: 33, column: 31, scope: !1509, inlinedAt: !1567)
!1602 = distinct !{!1602, !1575, !1603, !1559, !1560}
!1603 = !DILocation(line: 43, column: 5, scope: !1504, inlinedAt: !1567)
!1604 = !DILocation(line: 58, column: 15, scope: !1605, inlinedAt: !1495)
!1605 = distinct !DILexicalBlock(scope: !1484, file: !69, line: 58, column: 9)
!1606 = !DILocation(line: 58, column: 9, scope: !1605, inlinedAt: !1495)
!1607 = !DILocation(line: 58, column: 9, scope: !1484, inlinedAt: !1495)
!1608 = !DILocation(line: 60, column: 22, scope: !1609, inlinedAt: !1495)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !69, line: 59, column: 5)
!1610 = !DILocation(line: 60, column: 51, scope: !1609, inlinedAt: !1495)
!1611 = !DILocation(line: 60, column: 30, scope: !1609, inlinedAt: !1495)
!1612 = !DILocation(line: 0, scope: !1497, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 60, column: 9, scope: !1609, inlinedAt: !1495)
!1614 = !DILocation(line: 31, column: 48, scope: !1497, inlinedAt: !1613)
!1615 = !DILocation(line: 31, column: 70, scope: !1497, inlinedAt: !1613)
!1616 = !DILocation(line: 31, column: 63, scope: !1497, inlinedAt: !1613)
!1617 = !DILocation(line: 32, column: 31, scope: !1497, inlinedAt: !1613)
!1618 = !DILocation(line: 32, column: 49, scope: !1497, inlinedAt: !1613)
!1619 = !DILocation(line: 0, scope: !1504, inlinedAt: !1613)
!1620 = !DILocation(line: 33, column: 22, scope: !1509, inlinedAt: !1613)
!1621 = !DILocation(line: 33, column: 5, scope: !1504, inlinedAt: !1613)
!1622 = !DILocation(line: 35, column: 20, scope: !1508, inlinedAt: !1613)
!1623 = !DILocation(line: 35, column: 27, scope: !1508, inlinedAt: !1613)
!1624 = !DILocation(line: 35, column: 9, scope: !1508, inlinedAt: !1613)
!1625 = !DILocation(line: 36, column: 13, scope: !1507, inlinedAt: !1613)
!1626 = !DILocation(line: 36, column: 13, scope: !1508, inlinedAt: !1613)
!1627 = !DILocation(line: 38, column: 23, scope: !1506, inlinedAt: !1613)
!1628 = !DILocation(line: 38, column: 35, scope: !1506, inlinedAt: !1613)
!1629 = !DILocation(line: 38, column: 33, scope: !1506, inlinedAt: !1613)
!1630 = !DILocation(line: 0, scope: !1506, inlinedAt: !1613)
!1631 = !DILocation(line: 39, column: 38, scope: !1506, inlinedAt: !1613)
!1632 = !DILocation(line: 39, column: 69, scope: !1506, inlinedAt: !1613)
!1633 = !DILocation(line: 39, column: 66, scope: !1506, inlinedAt: !1613)
!1634 = !DILocation(line: 39, column: 35, scope: !1506, inlinedAt: !1613)
!1635 = !DILocation(line: 39, column: 23, scope: !1506, inlinedAt: !1613)
!1636 = !DILocation(line: 40, column: 19, scope: !1506, inlinedAt: !1613)
!1637 = !DILocation(line: 40, column: 31, scope: !1506, inlinedAt: !1613)
!1638 = !DILocation(line: 40, column: 29, scope: !1506, inlinedAt: !1613)
!1639 = !DILocation(line: 41, column: 38, scope: !1506, inlinedAt: !1613)
!1640 = !DILocation(line: 41, column: 69, scope: !1506, inlinedAt: !1613)
!1641 = !DILocation(line: 41, column: 66, scope: !1506, inlinedAt: !1613)
!1642 = !DILocation(line: 41, column: 35, scope: !1506, inlinedAt: !1613)
!1643 = !DILocation(line: 41, column: 23, scope: !1506, inlinedAt: !1613)
!1644 = !DILocation(line: 42, column: 9, scope: !1506, inlinedAt: !1613)
!1645 = !DILocation(line: 33, column: 44, scope: !1509, inlinedAt: !1613)
!1646 = !DILocation(line: 33, column: 26, scope: !1509, inlinedAt: !1613)
!1647 = !DILocation(line: 33, column: 31, scope: !1509, inlinedAt: !1613)
!1648 = distinct !{!1648, !1621, !1649, !1559, !1560}
!1649 = !DILocation(line: 43, column: 5, scope: !1504, inlinedAt: !1613)
!1650 = !DILocation(line: 61, column: 13, scope: !1609, inlinedAt: !1495)
!1651 = !DILocation(line: 62, column: 26, scope: !1652, inlinedAt: !1495)
!1652 = distinct !DILexicalBlock(scope: !1609, file: !69, line: 61, column: 13)
!1653 = !DILocation(line: 62, column: 55, scope: !1652, inlinedAt: !1495)
!1654 = !DILocation(line: 62, column: 34, scope: !1652, inlinedAt: !1495)
!1655 = !DILocation(line: 0, scope: !1497, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 62, column: 13, scope: !1652, inlinedAt: !1495)
!1657 = !DILocation(line: 31, column: 48, scope: !1497, inlinedAt: !1656)
!1658 = !DILocation(line: 31, column: 70, scope: !1497, inlinedAt: !1656)
!1659 = !DILocation(line: 31, column: 63, scope: !1497, inlinedAt: !1656)
!1660 = !DILocation(line: 32, column: 31, scope: !1497, inlinedAt: !1656)
!1661 = !DILocation(line: 32, column: 49, scope: !1497, inlinedAt: !1656)
!1662 = !DILocation(line: 0, scope: !1504, inlinedAt: !1656)
!1663 = !DILocation(line: 33, column: 22, scope: !1509, inlinedAt: !1656)
!1664 = !DILocation(line: 33, column: 5, scope: !1504, inlinedAt: !1656)
!1665 = !DILocation(line: 35, column: 20, scope: !1508, inlinedAt: !1656)
!1666 = !DILocation(line: 35, column: 27, scope: !1508, inlinedAt: !1656)
!1667 = !DILocation(line: 35, column: 9, scope: !1508, inlinedAt: !1656)
!1668 = !DILocation(line: 36, column: 13, scope: !1507, inlinedAt: !1656)
!1669 = !DILocation(line: 36, column: 13, scope: !1508, inlinedAt: !1656)
!1670 = !DILocation(line: 38, column: 23, scope: !1506, inlinedAt: !1656)
!1671 = !DILocation(line: 38, column: 35, scope: !1506, inlinedAt: !1656)
!1672 = !DILocation(line: 38, column: 33, scope: !1506, inlinedAt: !1656)
!1673 = !DILocation(line: 0, scope: !1506, inlinedAt: !1656)
!1674 = !DILocation(line: 39, column: 38, scope: !1506, inlinedAt: !1656)
!1675 = !DILocation(line: 39, column: 69, scope: !1506, inlinedAt: !1656)
!1676 = !DILocation(line: 39, column: 66, scope: !1506, inlinedAt: !1656)
!1677 = !DILocation(line: 39, column: 35, scope: !1506, inlinedAt: !1656)
!1678 = !DILocation(line: 39, column: 23, scope: !1506, inlinedAt: !1656)
!1679 = !DILocation(line: 40, column: 19, scope: !1506, inlinedAt: !1656)
!1680 = !DILocation(line: 40, column: 31, scope: !1506, inlinedAt: !1656)
!1681 = !DILocation(line: 40, column: 29, scope: !1506, inlinedAt: !1656)
!1682 = !DILocation(line: 41, column: 38, scope: !1506, inlinedAt: !1656)
!1683 = !DILocation(line: 41, column: 69, scope: !1506, inlinedAt: !1656)
!1684 = !DILocation(line: 41, column: 66, scope: !1506, inlinedAt: !1656)
!1685 = !DILocation(line: 41, column: 35, scope: !1506, inlinedAt: !1656)
!1686 = !DILocation(line: 41, column: 23, scope: !1506, inlinedAt: !1656)
!1687 = !DILocation(line: 42, column: 9, scope: !1506, inlinedAt: !1656)
!1688 = !DILocation(line: 33, column: 44, scope: !1509, inlinedAt: !1656)
!1689 = !DILocation(line: 33, column: 26, scope: !1509, inlinedAt: !1656)
!1690 = !DILocation(line: 33, column: 31, scope: !1509, inlinedAt: !1656)
!1691 = distinct !{!1691, !1664, !1692, !1559, !1560}
!1692 = !DILocation(line: 43, column: 5, scope: !1504, inlinedAt: !1656)
!1693 = !DILocation(line: 0, scope: !1398)
!1694 = !DILocation(line: 352, column: 34, scope: !1401)
!1695 = !DILocation(line: 352, column: 39, scope: !1401)
!1696 = !DILocation(line: 352, column: 29, scope: !1401)
!1697 = !DILocation(line: 352, column: 5, scope: !1398)
!1698 = !DILocation(line: 431, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !90, file: !69, line: 431, column: 9)
!1700 = !DILocation(line: 431, column: 18, scope: !1699)
!1701 = !DILocation(line: 431, column: 10, scope: !1699)
!1702 = !DILocation(line: 431, column: 26, scope: !1699)
!1703 = !DILocation(line: 354, column: 35, scope: !1400)
!1704 = !DILocation(line: 354, column: 9, scope: !1400)
!1705 = !DILocation(line: 355, column: 9, scope: !1400)
!1706 = !DILocation(line: 357, column: 27, scope: !1400)
!1707 = !{!1426, !1428, i64 16392}
!1708 = !DILocation(line: 0, scope: !1400)
!1709 = !DILocation(line: 358, column: 35, scope: !1400)
!1710 = !DILocation(line: 358, column: 29, scope: !1400)
!1711 = !DILocation(line: 359, column: 25, scope: !1400)
!1712 = !{!1426, !1432, i64 16616}
!1713 = !DILocation(line: 360, column: 55, scope: !1400)
!1714 = !DILocation(line: 360, column: 31, scope: !1400)
!1715 = !{!1432, !1432, i64 0}
!1716 = !DILocation(line: 362, column: 28, scope: !1400)
!1717 = !DILocation(line: 362, column: 34, scope: !1400)
!1718 = !DILocation(line: 362, column: 25, scope: !1400)
!1719 = !DILocation(line: 362, column: 52, scope: !1400)
!1720 = !DILocation(line: 362, column: 43, scope: !1400)
!1721 = !DILocation(line: 362, column: 66, scope: !1400)
!1722 = !DILocation(line: 362, column: 62, scope: !1400)
!1723 = !DILocation(line: 363, column: 25, scope: !1400)
!1724 = !DILocation(line: 363, column: 52, scope: !1400)
!1725 = !DILocation(line: 363, column: 43, scope: !1400)
!1726 = !DILocation(line: 363, column: 66, scope: !1400)
!1727 = !DILocation(line: 363, column: 62, scope: !1400)
!1728 = !DILocation(line: 364, column: 25, scope: !1400)
!1729 = !DILocation(line: 364, column: 43, scope: !1400)
!1730 = !DILocation(line: 364, column: 62, scope: !1400)
!1731 = !DILocation(line: 365, column: 26, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1400, file: !69, line: 365, column: 13)
!1733 = !DILocation(line: 367, column: 18, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1732, file: !69, line: 366, column: 9)
!1735 = !DILocation(line: 368, column: 18, scope: !1734)
!1736 = !DILocation(line: 369, column: 18, scope: !1734)
!1737 = !DILocation(line: 370, column: 9, scope: !1734)
!1738 = !DILocation(line: 372, column: 24, scope: !1400)
!1739 = !{!1426, !1432, i64 16632}
!1740 = !DILocation(line: 372, column: 18, scope: !1400)
!1741 = !DILocation(line: 373, column: 22, scope: !1400)
!1742 = !{!1426, !1432, i64 7216}
!1743 = !DILocation(line: 373, column: 19, scope: !1400)
!1744 = !DILocation(line: 374, column: 49, scope: !1400)
!1745 = !DILocation(line: 374, column: 59, scope: !1400)
!1746 = !DILocation(line: 388, column: 19, scope: !1413)
!1747 = !{!1426, !1428, i64 16488}
!1748 = !DILocation(line: 388, column: 31, scope: !1413)
!1749 = !DILocation(line: 388, column: 13, scope: !1400)
!1750 = !DILocation(line: 390, column: 38, scope: !1412)
!1751 = !{!1426, !1428, i64 16600}
!1752 = !DILocation(line: 390, column: 23, scope: !1412)
!1753 = !DILocation(line: 0, scope: !1412)
!1754 = !DILocation(line: 391, column: 31, scope: !1412)
!1755 = !DILocation(line: 391, column: 37, scope: !1412)
!1756 = !DILocation(line: 391, column: 42, scope: !1412)
!1757 = !DILocation(line: 392, column: 54, scope: !1412)
!1758 = !DILocation(line: 392, column: 52, scope: !1412)
!1759 = !DILocation(line: 392, column: 78, scope: !1412)
!1760 = !DILocation(line: 392, column: 83, scope: !1412)
!1761 = !DILocation(line: 393, column: 30, scope: !1412)
!1762 = !DILocation(line: 394, column: 27, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1412, file: !69, line: 394, column: 17)
!1764 = !DILocation(line: 395, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1763, file: !69, line: 395, column: 17)
!1766 = !DILocalVariable(name: "h", arg: 1, scope: !1767, file: !69, line: 326, type: !93)
!1767 = distinct !DISubprogram(name: "deblock_edge_intra", scope: !69, file: !69, line: 326, type: !1768, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1770)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !93, !291, !291, !104, !291, !104, !104, !1346}
!1770 = !{!1766, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779}
!1771 = !DILocalVariable(name: "pix1", arg: 2, scope: !1767, file: !69, line: 326, type: !291)
!1772 = !DILocalVariable(name: "pix2", arg: 3, scope: !1767, file: !69, line: 326, type: !291)
!1773 = !DILocalVariable(name: "i_stride", arg: 4, scope: !1767, file: !69, line: 326, type: !104)
!1774 = !DILocalVariable(name: "bS", arg: 5, scope: !1767, file: !69, line: 326, type: !291)
!1775 = !DILocalVariable(name: "i_qp", arg: 6, scope: !1767, file: !69, line: 326, type: !104)
!1776 = !DILocalVariable(name: "b_chroma", arg: 7, scope: !1767, file: !69, line: 326, type: !104)
!1777 = !DILocalVariable(name: "pf_intra", arg: 8, scope: !1767, file: !69, line: 326, type: !1346)
!1778 = !DILocalVariable(name: "alpha", scope: !1767, file: !69, line: 328, type: !104)
!1779 = !DILocalVariable(name: "beta", scope: !1767, file: !69, line: 329, type: !104)
!1780 = !DILocation(line: 0, scope: !1767, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 395, column: 17, scope: !1765)
!1782 = !DILocation(line: 328, column: 17, scope: !1767, inlinedAt: !1781)
!1783 = !DILocation(line: 329, column: 17, scope: !1767, inlinedAt: !1781)
!1784 = !DILocation(line: 331, column: 10, scope: !1785, inlinedAt: !1781)
!1785 = distinct !DILexicalBlock(scope: !1767, file: !69, line: 331, column: 9)
!1786 = !DILocation(line: 331, column: 16, scope: !1785, inlinedAt: !1781)
!1787 = !DILocation(line: 334, column: 5, scope: !1767, inlinedAt: !1781)
!1788 = !DILocation(line: 395, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1765, file: !69, line: 395, column: 17)
!1790 = !DILocation(line: 0, scope: !1767, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 395, column: 17, scope: !1789)
!1792 = !DILocation(line: 328, column: 17, scope: !1767, inlinedAt: !1791)
!1793 = !DILocation(line: 329, column: 17, scope: !1767, inlinedAt: !1791)
!1794 = !DILocation(line: 331, column: 10, scope: !1785, inlinedAt: !1791)
!1795 = !DILocation(line: 331, column: 16, scope: !1785, inlinedAt: !1791)
!1796 = !DILocation(line: 334, column: 5, scope: !1767, inlinedAt: !1791)
!1797 = !DILocation(line: 336, column: 9, scope: !1798, inlinedAt: !1791)
!1798 = distinct !DILexicalBlock(scope: !1767, file: !69, line: 335, column: 9)
!1799 = !DILocation(line: 397, column: 17, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1763, file: !69, line: 397, column: 17)
!1801 = !DILocalVariable(name: "h", arg: 1, scope: !1802, file: !69, line: 306, type: !93)
!1802 = distinct !DISubprogram(name: "deblock_edge", scope: !69, file: !69, line: 306, type: !1803, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !93, !291, !291, !104, !291, !104, !104, !1339}
!1805 = !{!1801, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1806 = !DILocalVariable(name: "pix1", arg: 2, scope: !1802, file: !69, line: 306, type: !291)
!1807 = !DILocalVariable(name: "pix2", arg: 3, scope: !1802, file: !69, line: 306, type: !291)
!1808 = !DILocalVariable(name: "i_stride", arg: 4, scope: !1802, file: !69, line: 306, type: !104)
!1809 = !DILocalVariable(name: "bS", arg: 5, scope: !1802, file: !69, line: 306, type: !291)
!1810 = !DILocalVariable(name: "i_qp", arg: 6, scope: !1802, file: !69, line: 306, type: !104)
!1811 = !DILocalVariable(name: "b_chroma", arg: 7, scope: !1802, file: !69, line: 306, type: !104)
!1812 = !DILocalVariable(name: "pf_inter", arg: 8, scope: !1802, file: !69, line: 306, type: !1339)
!1813 = !DILocalVariable(name: "index_a", scope: !1802, file: !69, line: 308, type: !104)
!1814 = !DILocalVariable(name: "alpha", scope: !1802, file: !69, line: 309, type: !104)
!1815 = !DILocalVariable(name: "beta", scope: !1802, file: !69, line: 310, type: !104)
!1816 = !DILocalVariable(name: "tc", scope: !1802, file: !69, line: 311, type: !942)
!1817 = !DILocation(line: 0, scope: !1802, inlinedAt: !1818)
!1818 = distinct !DILocation(line: 397, column: 17, scope: !1800)
!1819 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1818)
!1820 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1818)
!1821 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1818)
!1822 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1818)
!1823 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1818)
!1824 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1818)
!1825 = distinct !DILexicalBlock(scope: !1802, file: !69, line: 313, column: 9)
!1826 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1818)
!1827 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1818)
!1828 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1818)
!1829 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1818)
!1830 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1818)
!1831 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1818)
!1832 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1818)
!1833 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1818)
!1834 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1818)
!1835 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1818)
!1836 = !DILocation(line: 397, column: 17, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1800, file: !69, line: 397, column: 17)
!1838 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1818)
!1839 = !DILocation(line: 0, scope: !1802, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 397, column: 17, scope: !1837)
!1841 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1840)
!1842 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1840)
!1843 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1840)
!1844 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1840)
!1845 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1840)
!1846 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1840)
!1847 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1840)
!1848 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1840)
!1849 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1840)
!1850 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1840)
!1851 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1840)
!1852 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1840)
!1853 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1840)
!1854 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1840)
!1855 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1840)
!1856 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1840)
!1857 = !DILocation(line: 323, column: 9, scope: !1858, inlinedAt: !1840)
!1858 = distinct !DILexicalBlock(scope: !1802, file: !69, line: 322, column: 9)
!1859 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1840)
!1860 = !DILocation(line: 400, column: 13, scope: !1400)
!1861 = !DILocation(line: 402, column: 18, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !69, line: 402, column: 17)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !69, line: 401, column: 9)
!1864 = distinct !DILexicalBlock(scope: !1400, file: !69, line: 400, column: 13)
!1865 = !DILocation(line: 402, column: 17, scope: !1863)
!1866 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 403, column: 34, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !69, line: 403, column: 34)
!1869 = !DILocation(line: 402, column: 34, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1862, file: !69, line: 402, column: 34)
!1871 = !DILocation(line: 0, scope: !1802, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 402, column: 34, scope: !1870)
!1873 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1872)
!1874 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1872)
!1875 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1872)
!1876 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1872)
!1877 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1872)
!1878 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1872)
!1879 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1872)
!1880 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1872)
!1881 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1872)
!1882 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1872)
!1883 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1872)
!1884 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1872)
!1885 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1872)
!1886 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1872)
!1887 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1872)
!1888 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1872)
!1889 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1872)
!1890 = !DILocation(line: 403, column: 34, scope: !1868)
!1891 = !DILocation(line: 0, scope: !1802, inlinedAt: !1867)
!1892 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1867)
!1893 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1867)
!1894 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1867)
!1895 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1867)
!1896 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1867)
!1897 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1867)
!1898 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1867)
!1899 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1867)
!1900 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1867)
!1901 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1867)
!1902 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1867)
!1903 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1867)
!1904 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1867)
!1905 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1867)
!1906 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1867)
!1907 = !DILocation(line: 403, column: 34, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1868, file: !69, line: 403, column: 34)
!1909 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1867)
!1910 = !DILocation(line: 0, scope: !1802, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 403, column: 34, scope: !1908)
!1912 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1911)
!1913 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1911)
!1914 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1911)
!1915 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1911)
!1916 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1911)
!1917 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1911)
!1918 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1911)
!1919 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1911)
!1920 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1911)
!1921 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1911)
!1922 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1911)
!1923 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1911)
!1924 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1911)
!1925 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1911)
!1926 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1911)
!1927 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1911)
!1928 = !DILocation(line: 323, column: 9, scope: !1858, inlinedAt: !1911)
!1929 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1911)
!1930 = !DILocation(line: 404, column: 17, scope: !1863)
!1931 = !DILocation(line: 404, column: 34, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !69, line: 404, column: 34)
!1933 = distinct !DILexicalBlock(scope: !1863, file: !69, line: 404, column: 17)
!1934 = !DILocation(line: 0, scope: !1802, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 404, column: 34, scope: !1932)
!1936 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1935)
!1937 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1935)
!1938 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1935)
!1939 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1935)
!1940 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1935)
!1941 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1935)
!1942 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1935)
!1943 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1935)
!1944 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1935)
!1945 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1935)
!1946 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1935)
!1947 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1935)
!1948 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1935)
!1949 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1935)
!1950 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1935)
!1951 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1935)
!1952 = !DILocation(line: 407, column: 19, scope: !1419)
!1953 = !DILocation(line: 407, column: 31, scope: !1419)
!1954 = !DILocation(line: 407, column: 13, scope: !1400)
!1955 = !DILocation(line: 409, column: 29, scope: !1418)
!1956 = !DILocation(line: 409, column: 38, scope: !1418)
!1957 = !{!1426, !1428, i64 16604}
!1958 = !DILocation(line: 409, column: 23, scope: !1418)
!1959 = !DILocation(line: 0, scope: !1418)
!1960 = !DILocation(line: 410, column: 30, scope: !1418)
!1961 = !DILocation(line: 410, column: 36, scope: !1418)
!1962 = !DILocation(line: 410, column: 41, scope: !1418)
!1963 = !DILocation(line: 411, column: 31, scope: !1418)
!1964 = !DILocation(line: 411, column: 28, scope: !1418)
!1965 = !DILocation(line: 411, column: 53, scope: !1418)
!1966 = !DILocation(line: 411, column: 51, scope: !1418)
!1967 = !DILocation(line: 411, column: 77, scope: !1418)
!1968 = !DILocation(line: 411, column: 82, scope: !1418)
!1969 = !DILocation(line: 412, column: 29, scope: !1418)
!1970 = !DILocation(line: 413, column: 31, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1418, file: !69, line: 413, column: 17)
!1972 = !DILocation(line: 414, column: 17, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1971, file: !69, line: 414, column: 17)
!1974 = !DILocation(line: 0, scope: !1767, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 414, column: 17, scope: !1973)
!1976 = !DILocation(line: 328, column: 17, scope: !1767, inlinedAt: !1975)
!1977 = !DILocation(line: 329, column: 17, scope: !1767, inlinedAt: !1975)
!1978 = !DILocation(line: 331, column: 10, scope: !1785, inlinedAt: !1975)
!1979 = !DILocation(line: 331, column: 16, scope: !1785, inlinedAt: !1975)
!1980 = !DILocation(line: 334, column: 5, scope: !1767, inlinedAt: !1975)
!1981 = !DILocation(line: 414, column: 17, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1973, file: !69, line: 414, column: 17)
!1983 = !DILocation(line: 0, scope: !1767, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 414, column: 17, scope: !1982)
!1985 = !DILocation(line: 328, column: 17, scope: !1767, inlinedAt: !1984)
!1986 = !DILocation(line: 329, column: 17, scope: !1767, inlinedAt: !1984)
!1987 = !DILocation(line: 331, column: 10, scope: !1785, inlinedAt: !1984)
!1988 = !DILocation(line: 331, column: 16, scope: !1785, inlinedAt: !1984)
!1989 = !DILocation(line: 334, column: 5, scope: !1767, inlinedAt: !1984)
!1990 = !DILocation(line: 336, column: 9, scope: !1798, inlinedAt: !1984)
!1991 = !DILocation(line: 417, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1971, file: !69, line: 416, column: 13)
!1993 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 419, column: 17, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !69, line: 419, column: 17)
!1996 = !DILocation(line: 418, column: 21, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1992, file: !69, line: 417, column: 21)
!1998 = !DILocation(line: 419, column: 17, scope: !1995)
!1999 = !DILocation(line: 0, scope: !1802, inlinedAt: !1994)
!2000 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !1994)
!2001 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !1994)
!2002 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !1994)
!2003 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !1994)
!2004 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !1994)
!2005 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !1994)
!2006 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !1994)
!2007 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !1994)
!2008 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !1994)
!2009 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !1994)
!2010 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !1994)
!2011 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !1994)
!2012 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !1994)
!2013 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !1994)
!2014 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !1994)
!2015 = !DILocation(line: 419, column: 17, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1995, file: !69, line: 419, column: 17)
!2017 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !1994)
!2018 = !DILocation(line: 0, scope: !1802, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 419, column: 17, scope: !2016)
!2020 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !2019)
!2021 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !2019)
!2022 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !2019)
!2023 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !2019)
!2024 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !2019)
!2025 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !2019)
!2026 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !2019)
!2027 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !2019)
!2028 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !2019)
!2029 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !2019)
!2030 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !2019)
!2031 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !2019)
!2032 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !2019)
!2033 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !2019)
!2034 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !2019)
!2035 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !2019)
!2036 = !DILocation(line: 323, column: 9, scope: !1858, inlinedAt: !2019)
!2037 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !2019)
!2038 = !DILocation(line: 423, column: 13, scope: !1400)
!2039 = !DILocation(line: 425, column: 18, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !69, line: 425, column: 17)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !69, line: 424, column: 9)
!2042 = distinct !DILexicalBlock(scope: !1400, file: !69, line: 423, column: 13)
!2043 = !DILocation(line: 425, column: 17, scope: !2041)
!2044 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 426, column: 34, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !69, line: 426, column: 34)
!2047 = !DILocation(line: 425, column: 34, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2040, file: !69, line: 425, column: 34)
!2049 = !DILocation(line: 0, scope: !1802, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 425, column: 34, scope: !2048)
!2051 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !2050)
!2052 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !2050)
!2053 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !2050)
!2054 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !2050)
!2055 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !2050)
!2056 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !2050)
!2057 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !2050)
!2058 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !2050)
!2059 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !2050)
!2060 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !2050)
!2061 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !2050)
!2062 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !2050)
!2063 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !2050)
!2064 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !2050)
!2065 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !2050)
!2066 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !2050)
!2067 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !2050)
!2068 = !DILocation(line: 426, column: 34, scope: !2046)
!2069 = !DILocation(line: 0, scope: !1802, inlinedAt: !2045)
!2070 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !2045)
!2071 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !2045)
!2072 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !2045)
!2073 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !2045)
!2074 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !2045)
!2075 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !2045)
!2076 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !2045)
!2077 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !2045)
!2078 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !2045)
!2079 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !2045)
!2080 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !2045)
!2081 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !2045)
!2082 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !2045)
!2083 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !2045)
!2084 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !2045)
!2085 = !DILocation(line: 426, column: 34, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2046, file: !69, line: 426, column: 34)
!2087 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !2045)
!2088 = !DILocation(line: 0, scope: !1802, inlinedAt: !2089)
!2089 = distinct !DILocation(line: 426, column: 34, scope: !2086)
!2090 = !DILocation(line: 308, column: 24, scope: !1802, inlinedAt: !2089)
!2091 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !2089)
!2092 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !2089)
!2093 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !2089)
!2094 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !2089)
!2095 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !2089)
!2096 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !2089)
!2097 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !2089)
!2098 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !2089)
!2099 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !2089)
!2100 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !2089)
!2101 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !2089)
!2102 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !2089)
!2103 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !2089)
!2104 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !2089)
!2105 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !2089)
!2106 = !DILocation(line: 323, column: 9, scope: !1858, inlinedAt: !2089)
!2107 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !2089)
!2108 = !DILocation(line: 427, column: 17, scope: !2041)
!2109 = !DILocation(line: 427, column: 34, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !69, line: 427, column: 34)
!2111 = distinct !DILexicalBlock(scope: !2041, file: !69, line: 427, column: 17)
!2112 = !DILocation(line: 0, scope: !1802, inlinedAt: !2113)
!2113 = distinct !DILocation(line: 427, column: 34, scope: !2110)
!2114 = !DILocation(line: 309, column: 17, scope: !1802, inlinedAt: !2113)
!2115 = !DILocation(line: 310, column: 17, scope: !1802, inlinedAt: !2113)
!2116 = !DILocation(line: 311, column: 5, scope: !1802, inlinedAt: !2113)
!2117 = !DILocation(line: 311, column: 12, scope: !1802, inlinedAt: !2113)
!2118 = !DILocation(line: 313, column: 10, scope: !1825, inlinedAt: !2113)
!2119 = !DILocation(line: 313, column: 18, scope: !1825, inlinedAt: !2113)
!2120 = !DILocation(line: 316, column: 13, scope: !1802, inlinedAt: !2113)
!2121 = !DILocation(line: 316, column: 11, scope: !1802, inlinedAt: !2113)
!2122 = !DILocation(line: 317, column: 13, scope: !1802, inlinedAt: !2113)
!2123 = !DILocation(line: 317, column: 11, scope: !1802, inlinedAt: !2113)
!2124 = !DILocation(line: 318, column: 13, scope: !1802, inlinedAt: !2113)
!2125 = !DILocation(line: 318, column: 11, scope: !1802, inlinedAt: !2113)
!2126 = !DILocation(line: 319, column: 13, scope: !1802, inlinedAt: !2113)
!2127 = !DILocation(line: 319, column: 11, scope: !1802, inlinedAt: !2113)
!2128 = !DILocation(line: 321, column: 5, scope: !1802, inlinedAt: !2113)
!2129 = !DILocation(line: 324, column: 1, scope: !1802, inlinedAt: !2113)
!2130 = !DILocation(line: 352, column: 74, scope: !1401)
!2131 = !DILocation(line: 352, column: 81, scope: !1401)
!2132 = !DILocation(line: 352, column: 56, scope: !1401)
!2133 = !DILocation(line: 352, column: 90, scope: !1401)
!2134 = distinct !{!2134, !1697, !2135, !1559, !1560}
!2135 = !DILocation(line: 429, column: 5, scope: !1398)
!2136 = !DILocation(line: 431, column: 37, scope: !1699)
!2137 = !DILocation(line: 431, column: 29, scope: !1699)
!2138 = !DILocation(line: 431, column: 9, scope: !90)
!2139 = !DILocation(line: 0, scope: !1484, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 432, column: 9, scope: !1699)
!2141 = !DILocalVariable(name: "h", arg: 1, scope: !2142, file: !69, line: 46, type: !93)
!2142 = distinct !DISubprogram(name: "restore_cavlc_nnz_row", scope: !69, file: !69, line: 46, type: !1488, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2143 = !{!2141, !2144, !2145, !2146, !2147}
!2144 = !DILocalVariable(name: "mb_y", arg: 2, scope: !2142, file: !69, line: 46, type: !104)
!2145 = !DILocalVariable(name: "buf", arg: 3, scope: !2142, file: !69, line: 46, type: !1396)
!2146 = !DILocalVariable(name: "dst", scope: !2142, file: !69, line: 48, type: !809)
!2147 = !DILocalVariable(name: "x", scope: !2148, file: !69, line: 49, type: !104)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !69, line: 49, column: 5)
!2149 = !DILocation(line: 0, scope: !2142, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 55, column: 5, scope: !1484, inlinedAt: !2140)
!2151 = !DILocation(line: 48, column: 32, scope: !2142, inlinedAt: !2150)
!2152 = !DILocation(line: 48, column: 54, scope: !2142, inlinedAt: !2150)
!2153 = !DILocation(line: 48, column: 47, scope: !2142, inlinedAt: !2150)
!2154 = !DILocation(line: 0, scope: !2148, inlinedAt: !2150)
!2155 = !DILocation(line: 49, column: 23, scope: !2156, inlinedAt: !2150)
!2156 = distinct !DILexicalBlock(scope: !2148, file: !69, line: 49, column: 5)
!2157 = !DILocation(line: 49, column: 5, scope: !2148, inlinedAt: !2150)
!2158 = !DILocation(line: 50, column: 20, scope: !2156, inlinedAt: !2150)
!2159 = !DILocation(line: 50, column: 27, scope: !2156, inlinedAt: !2150)
!2160 = !DILocation(line: 50, column: 9, scope: !2156, inlinedAt: !2150)
!2161 = !DILocation(line: 49, column: 46, scope: !2156, inlinedAt: !2150)
!2162 = !DILocation(line: 49, column: 28, scope: !2156, inlinedAt: !2150)
!2163 = !DILocation(line: 49, column: 33, scope: !2156, inlinedAt: !2150)
!2164 = distinct !{!2164, !2157, !2165, !1559, !1560}
!2165 = !DILocation(line: 50, column: 34, scope: !2148, inlinedAt: !2150)
!2166 = !DILocation(line: 56, column: 14, scope: !1562, inlinedAt: !2140)
!2167 = !DILocation(line: 56, column: 9, scope: !1484, inlinedAt: !2140)
!2168 = !DILocation(line: 57, column: 22, scope: !1562, inlinedAt: !2140)
!2169 = !DILocation(line: 57, column: 40, scope: !1562, inlinedAt: !2140)
!2170 = !DILocation(line: 57, column: 30, scope: !1562, inlinedAt: !2140)
!2171 = !DILocation(line: 0, scope: !2142, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 57, column: 9, scope: !1562, inlinedAt: !2140)
!2173 = !DILocation(line: 48, column: 32, scope: !2142, inlinedAt: !2172)
!2174 = !DILocation(line: 48, column: 54, scope: !2142, inlinedAt: !2172)
!2175 = !DILocation(line: 48, column: 47, scope: !2142, inlinedAt: !2172)
!2176 = !DILocation(line: 0, scope: !2148, inlinedAt: !2172)
!2177 = !DILocation(line: 49, column: 23, scope: !2156, inlinedAt: !2172)
!2178 = !DILocation(line: 49, column: 5, scope: !2148, inlinedAt: !2172)
!2179 = !DILocation(line: 50, column: 20, scope: !2156, inlinedAt: !2172)
!2180 = !DILocation(line: 50, column: 27, scope: !2156, inlinedAt: !2172)
!2181 = !DILocation(line: 50, column: 9, scope: !2156, inlinedAt: !2172)
!2182 = !DILocation(line: 49, column: 46, scope: !2156, inlinedAt: !2172)
!2183 = !DILocation(line: 49, column: 28, scope: !2156, inlinedAt: !2172)
!2184 = !DILocation(line: 49, column: 33, scope: !2156, inlinedAt: !2172)
!2185 = distinct !{!2185, !2178, !2186, !1559, !1560}
!2186 = !DILocation(line: 50, column: 34, scope: !2148, inlinedAt: !2172)
!2187 = !DILocation(line: 58, column: 15, scope: !1605, inlinedAt: !2140)
!2188 = !DILocation(line: 58, column: 9, scope: !1605, inlinedAt: !2140)
!2189 = !DILocation(line: 58, column: 9, scope: !1484, inlinedAt: !2140)
!2190 = !DILocation(line: 60, column: 22, scope: !1609, inlinedAt: !2140)
!2191 = !DILocation(line: 60, column: 40, scope: !1609, inlinedAt: !2140)
!2192 = !DILocation(line: 60, column: 51, scope: !1609, inlinedAt: !2140)
!2193 = !DILocation(line: 60, column: 30, scope: !1609, inlinedAt: !2140)
!2194 = !DILocation(line: 0, scope: !2142, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 60, column: 9, scope: !1609, inlinedAt: !2140)
!2196 = !DILocation(line: 48, column: 32, scope: !2142, inlinedAt: !2195)
!2197 = !DILocation(line: 48, column: 54, scope: !2142, inlinedAt: !2195)
!2198 = !DILocation(line: 48, column: 47, scope: !2142, inlinedAt: !2195)
!2199 = !DILocation(line: 0, scope: !2148, inlinedAt: !2195)
!2200 = !DILocation(line: 49, column: 23, scope: !2156, inlinedAt: !2195)
!2201 = !DILocation(line: 49, column: 5, scope: !2148, inlinedAt: !2195)
!2202 = !DILocation(line: 50, column: 20, scope: !2156, inlinedAt: !2195)
!2203 = !DILocation(line: 50, column: 27, scope: !2156, inlinedAt: !2195)
!2204 = !DILocation(line: 50, column: 9, scope: !2156, inlinedAt: !2195)
!2205 = !DILocation(line: 49, column: 46, scope: !2156, inlinedAt: !2195)
!2206 = !DILocation(line: 49, column: 28, scope: !2156, inlinedAt: !2195)
!2207 = !DILocation(line: 49, column: 33, scope: !2156, inlinedAt: !2195)
!2208 = distinct !{!2208, !2201, !2209, !1559, !1560}
!2209 = !DILocation(line: 50, column: 34, scope: !2148, inlinedAt: !2195)
!2210 = !DILocation(line: 61, column: 13, scope: !1609, inlinedAt: !2140)
!2211 = !DILocation(line: 62, column: 26, scope: !1652, inlinedAt: !2140)
!2212 = !DILocation(line: 62, column: 55, scope: !1652, inlinedAt: !2140)
!2213 = !DILocation(line: 62, column: 34, scope: !1652, inlinedAt: !2140)
!2214 = !DILocation(line: 0, scope: !2142, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 62, column: 13, scope: !1652, inlinedAt: !2140)
!2216 = !DILocation(line: 48, column: 32, scope: !2142, inlinedAt: !2215)
!2217 = !DILocation(line: 48, column: 54, scope: !2142, inlinedAt: !2215)
!2218 = !DILocation(line: 48, column: 47, scope: !2142, inlinedAt: !2215)
!2219 = !DILocation(line: 0, scope: !2148, inlinedAt: !2215)
!2220 = !DILocation(line: 49, column: 23, scope: !2156, inlinedAt: !2215)
!2221 = !DILocation(line: 49, column: 5, scope: !2148, inlinedAt: !2215)
!2222 = !DILocation(line: 50, column: 20, scope: !2156, inlinedAt: !2215)
!2223 = !DILocation(line: 50, column: 27, scope: !2156, inlinedAt: !2215)
!2224 = !DILocation(line: 50, column: 9, scope: !2156, inlinedAt: !2215)
!2225 = !DILocation(line: 49, column: 46, scope: !2156, inlinedAt: !2215)
!2226 = !DILocation(line: 49, column: 28, scope: !2156, inlinedAt: !2215)
!2227 = !DILocation(line: 49, column: 33, scope: !2156, inlinedAt: !2215)
!2228 = distinct !{!2228, !2221, !2229, !1559, !1560}
!2229 = !DILocation(line: 50, column: 34, scope: !2148, inlinedAt: !2215)
!2230 = !DILocation(line: 433, column: 1, scope: !90)
!2231 = !DISubprogram(name: "x264_prefetch_fenc", scope: !6, file: !6, line: 285, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !93, !573, !104, !104}
!2234 = !{}
!2235 = !DISubprogram(name: "x264_macroblock_cache_load_neighbours_deblock", scope: !6, file: !6, line: 280, type: !2236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2234)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !93, !104, !104}
!2238 = distinct !DISubprogram(name: "x264_deblock_init", scope: !69, file: !69, line: 485, type: !2239, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2242)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{null, !104, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "cpu", arg: 1, scope: !2238, file: !69, line: 485, type: !104)
!2244 = !DILocalVariable(name: "pf", arg: 2, scope: !2238, file: !69, line: 485, type: !2241)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 487, column: 5, scope: !2238)
!2247 = !DILocation(line: 487, column: 25, scope: !2238)
!2248 = !DILocation(line: 488, column: 25, scope: !2238)
!2249 = !DILocation(line: 489, column: 9, scope: !2238)
!2250 = !DILocation(line: 489, column: 5, scope: !2238)
!2251 = !DILocation(line: 489, column: 27, scope: !2238)
!2252 = !DILocation(line: 490, column: 27, scope: !2238)
!2253 = !DILocation(line: 491, column: 9, scope: !2238)
!2254 = !DILocation(line: 491, column: 5, scope: !2238)
!2255 = !DILocation(line: 491, column: 31, scope: !2238)
!2256 = !DILocation(line: 492, column: 31, scope: !2238)
!2257 = !DILocation(line: 493, column: 9, scope: !2238)
!2258 = !DILocation(line: 493, column: 5, scope: !2238)
!2259 = !DILocation(line: 493, column: 33, scope: !2238)
!2260 = !DILocation(line: 494, column: 33, scope: !2238)
!2261 = !DILocation(line: 495, column: 9, scope: !2238)
!2262 = !DILocation(line: 495, column: 26, scope: !2238)
!2263 = !{!1454, !1432, i64 64}
!2264 = !DILocation(line: 544, column: 1, scope: !2238)
!2265 = distinct !DISubprogram(name: "deblock_v_luma_c", scope: !69, file: !69, line: 154, type: !1341, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271}
!2267 = !DILocalVariable(name: "pix", arg: 1, scope: !2265, file: !69, line: 154, type: !291)
!2268 = !DILocalVariable(name: "stride", arg: 2, scope: !2265, file: !69, line: 154, type: !104)
!2269 = !DILocalVariable(name: "alpha", arg: 3, scope: !2265, file: !69, line: 154, type: !104)
!2270 = !DILocalVariable(name: "beta", arg: 4, scope: !2265, file: !69, line: 154, type: !104)
!2271 = !DILocalVariable(name: "tc0", arg: 5, scope: !2265, file: !69, line: 154, type: !630)
!2272 = !DILocation(line: 0, scope: !2265)
!2273 = !DILocation(line: 156, column: 5, scope: !2265)
!2274 = !DILocation(line: 157, column: 1, scope: !2265)
!2275 = distinct !DISubprogram(name: "deblock_h_luma_c", scope: !69, file: !69, line: 158, type: !1341, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278, !2279, !2280, !2281}
!2277 = !DILocalVariable(name: "pix", arg: 1, scope: !2275, file: !69, line: 158, type: !291)
!2278 = !DILocalVariable(name: "stride", arg: 2, scope: !2275, file: !69, line: 158, type: !104)
!2279 = !DILocalVariable(name: "alpha", arg: 3, scope: !2275, file: !69, line: 158, type: !104)
!2280 = !DILocalVariable(name: "beta", arg: 4, scope: !2275, file: !69, line: 158, type: !104)
!2281 = !DILocalVariable(name: "tc0", arg: 5, scope: !2275, file: !69, line: 158, type: !630)
!2282 = !DILocation(line: 0, scope: !2275)
!2283 = !DILocation(line: 160, column: 5, scope: !2275)
!2284 = !DILocation(line: 161, column: 1, scope: !2275)
!2285 = distinct !DISubprogram(name: "deblock_v_chroma_c", scope: !69, file: !69, line: 190, type: !1341, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2286 = !{!2287, !2288, !2289, !2290, !2291}
!2287 = !DILocalVariable(name: "pix", arg: 1, scope: !2285, file: !69, line: 190, type: !291)
!2288 = !DILocalVariable(name: "stride", arg: 2, scope: !2285, file: !69, line: 190, type: !104)
!2289 = !DILocalVariable(name: "alpha", arg: 3, scope: !2285, file: !69, line: 190, type: !104)
!2290 = !DILocalVariable(name: "beta", arg: 4, scope: !2285, file: !69, line: 190, type: !104)
!2291 = !DILocalVariable(name: "tc0", arg: 5, scope: !2285, file: !69, line: 190, type: !630)
!2292 = !DILocation(line: 0, scope: !2285)
!2293 = !DILocalVariable(name: "pix", arg: 1, scope: !2294, file: !69, line: 163, type: !291)
!2294 = distinct !DISubprogram(name: "deblock_chroma_c", scope: !69, file: !69, line: 163, type: !2295, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2297)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !291, !104, !104, !104, !104, !630}
!2297 = !{!2293, !2298, !2299, !2300, !2301, !2302, !2303, !2305, !2308, !2310, !2313, !2314, !2315, !2316}
!2298 = !DILocalVariable(name: "xstride", arg: 2, scope: !2294, file: !69, line: 163, type: !104)
!2299 = !DILocalVariable(name: "ystride", arg: 3, scope: !2294, file: !69, line: 163, type: !104)
!2300 = !DILocalVariable(name: "alpha", arg: 4, scope: !2294, file: !69, line: 163, type: !104)
!2301 = !DILocalVariable(name: "beta", arg: 5, scope: !2294, file: !69, line: 163, type: !104)
!2302 = !DILocalVariable(name: "tc0", arg: 6, scope: !2294, file: !69, line: 163, type: !630)
!2303 = !DILocalVariable(name: "i", scope: !2304, file: !69, line: 165, type: !104)
!2304 = distinct !DILexicalBlock(scope: !2294, file: !69, line: 165, column: 5)
!2305 = !DILocalVariable(name: "tc", scope: !2306, file: !69, line: 167, type: !104)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !69, line: 166, column: 5)
!2307 = distinct !DILexicalBlock(scope: !2304, file: !69, line: 165, column: 5)
!2308 = !DILocalVariable(name: "d", scope: !2309, file: !69, line: 173, type: !104)
!2309 = distinct !DILexicalBlock(scope: !2306, file: !69, line: 173, column: 9)
!2310 = !DILocalVariable(name: "p1", scope: !2311, file: !69, line: 175, type: !104)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !69, line: 174, column: 9)
!2312 = distinct !DILexicalBlock(scope: !2309, file: !69, line: 173, column: 9)
!2313 = !DILocalVariable(name: "p0", scope: !2311, file: !69, line: 176, type: !104)
!2314 = !DILocalVariable(name: "q0", scope: !2311, file: !69, line: 177, type: !104)
!2315 = !DILocalVariable(name: "q1", scope: !2311, file: !69, line: 178, type: !104)
!2316 = !DILocalVariable(name: "delta", scope: !2317, file: !69, line: 182, type: !104)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !69, line: 181, column: 13)
!2318 = distinct !DILexicalBlock(scope: !2311, file: !69, line: 180, column: 17)
!2319 = !DILocation(line: 0, scope: !2294, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 192, column: 5, scope: !2285)
!2321 = !DILocation(line: 0, scope: !2304, inlinedAt: !2320)
!2322 = !DILocation(line: 165, column: 5, scope: !2304, inlinedAt: !2320)
!2323 = !DILocation(line: 167, column: 18, scope: !2306, inlinedAt: !2320)
!2324 = !DILocation(line: 0, scope: !2306, inlinedAt: !2320)
!2325 = !DILocation(line: 168, column: 16, scope: !2326, inlinedAt: !2320)
!2326 = distinct !DILexicalBlock(scope: !2306, file: !69, line: 168, column: 13)
!2327 = !DILocation(line: 168, column: 13, scope: !2306, inlinedAt: !2320)
!2328 = !DILocation(line: 0, scope: !2309, inlinedAt: !2320)
!2329 = !DILocation(line: 173, column: 9, scope: !2309, inlinedAt: !2320)
!2330 = !DILocation(line: 170, column: 17, scope: !2331, inlinedAt: !2320)
!2331 = distinct !DILexicalBlock(scope: !2326, file: !69, line: 169, column: 9)
!2332 = !DILocation(line: 171, column: 13, scope: !2331, inlinedAt: !2320)
!2333 = !DILocation(line: 175, column: 22, scope: !2311, inlinedAt: !2320)
!2334 = !DILocation(line: 0, scope: !2311, inlinedAt: !2320)
!2335 = !DILocation(line: 176, column: 22, scope: !2311, inlinedAt: !2320)
!2336 = !DILocation(line: 177, column: 22, scope: !2311, inlinedAt: !2320)
!2337 = !DILocation(line: 178, column: 22, scope: !2311, inlinedAt: !2320)
!2338 = !DILocation(line: 180, column: 25, scope: !2318, inlinedAt: !2320)
!2339 = !DILocation(line: 180, column: 17, scope: !2318, inlinedAt: !2320)
!2340 = !DILocation(line: 180, column: 32, scope: !2318, inlinedAt: !2320)
!2341 = !DILocation(line: 180, column: 40, scope: !2318, inlinedAt: !2320)
!2342 = !DILocation(line: 180, column: 51, scope: !2318, inlinedAt: !2320)
!2343 = !DILocation(line: 180, column: 43, scope: !2318, inlinedAt: !2320)
!2344 = !DILocation(line: 180, column: 58, scope: !2318, inlinedAt: !2320)
!2345 = !DILocation(line: 180, column: 65, scope: !2318, inlinedAt: !2320)
!2346 = !DILocation(line: 180, column: 76, scope: !2318, inlinedAt: !2320)
!2347 = !DILocation(line: 180, column: 68, scope: !2318, inlinedAt: !2320)
!2348 = !DILocation(line: 180, column: 83, scope: !2318, inlinedAt: !2320)
!2349 = !DILocation(line: 180, column: 17, scope: !2311, inlinedAt: !2320)
!2350 = !DILocation(line: 182, column: 47, scope: !2317, inlinedAt: !2320)
!2351 = !DILocation(line: 182, column: 54, scope: !2317, inlinedAt: !2320)
!2352 = !DILocation(line: 182, column: 66, scope: !2317, inlinedAt: !2320)
!2353 = !DILocation(line: 182, column: 60, scope: !2317, inlinedAt: !2320)
!2354 = !DILocation(line: 182, column: 72, scope: !2317, inlinedAt: !2320)
!2355 = !DILocation(line: 182, column: 77, scope: !2317, inlinedAt: !2320)
!2356 = !DILocalVariable(name: "v", arg: 1, scope: !2357, file: !51, line: 200, type: !104)
!2357 = distinct !DISubprogram(name: "x264_clip3", scope: !51, file: !51, line: 200, type: !2358, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!104, !104, !104, !104}
!2360 = !{!2356, !2361, !2362}
!2361 = !DILocalVariable(name: "i_min", arg: 2, scope: !2357, file: !51, line: 200, type: !104)
!2362 = !DILocalVariable(name: "i_max", arg: 3, scope: !2357, file: !51, line: 200, type: !104)
!2363 = !DILocation(line: 0, scope: !2357, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 182, column: 29, scope: !2317, inlinedAt: !2320)
!2365 = !DILocation(line: 202, column: 17, scope: !2357, inlinedAt: !2364)
!2366 = !DILocation(line: 202, column: 14, scope: !2357, inlinedAt: !2364)
!2367 = !DILocation(line: 0, scope: !2317, inlinedAt: !2320)
!2368 = !DILocation(line: 183, column: 55, scope: !2317, inlinedAt: !2320)
!2369 = !DILocalVariable(name: "x", arg: 1, scope: !2370, file: !51, line: 195, type: !104)
!2370 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !51, file: !51, line: 195, type: !2371, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!61, !104}
!2373 = !{!2369}
!2374 = !DILocation(line: 0, scope: !2370, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 183, column: 35, scope: !2317, inlinedAt: !2320)
!2376 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2375)
!2377 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2375)
!2378 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2375)
!2379 = !DILocation(line: 183, column: 33, scope: !2317, inlinedAt: !2320)
!2380 = !DILocation(line: 184, column: 55, scope: !2317, inlinedAt: !2320)
!2381 = !DILocation(line: 0, scope: !2370, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 184, column: 35, scope: !2317, inlinedAt: !2320)
!2383 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2382)
!2384 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2382)
!2385 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2382)
!2386 = !DILocation(line: 184, column: 33, scope: !2317, inlinedAt: !2320)
!2387 = !DILocation(line: 185, column: 13, scope: !2317, inlinedAt: !2320)
!2388 = !DILocation(line: 186, column: 17, scope: !2311, inlinedAt: !2320)
!2389 = distinct !{!2389, !2329, !2390, !1559, !1560}
!2390 = !DILocation(line: 187, column: 9, scope: !2309, inlinedAt: !2320)
!2391 = !DILocation(line: 165, column: 29, scope: !2307, inlinedAt: !2320)
!2392 = !DILocation(line: 165, column: 23, scope: !2307, inlinedAt: !2320)
!2393 = distinct !{!2393, !2322, !2394, !1559, !1560}
!2394 = !DILocation(line: 188, column: 5, scope: !2304, inlinedAt: !2320)
!2395 = !DILocation(line: 193, column: 1, scope: !2285)
!2396 = distinct !DISubprogram(name: "deblock_h_chroma_c", scope: !69, file: !69, line: 194, type: !1341, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2397)
!2397 = !{!2398, !2399, !2400, !2401, !2402}
!2398 = !DILocalVariable(name: "pix", arg: 1, scope: !2396, file: !69, line: 194, type: !291)
!2399 = !DILocalVariable(name: "stride", arg: 2, scope: !2396, file: !69, line: 194, type: !104)
!2400 = !DILocalVariable(name: "alpha", arg: 3, scope: !2396, file: !69, line: 194, type: !104)
!2401 = !DILocalVariable(name: "beta", arg: 4, scope: !2396, file: !69, line: 194, type: !104)
!2402 = !DILocalVariable(name: "tc0", arg: 5, scope: !2396, file: !69, line: 194, type: !630)
!2403 = !DILocation(line: 0, scope: !2396)
!2404 = !DILocation(line: 0, scope: !2294, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 196, column: 5, scope: !2396)
!2406 = !DILocation(line: 0, scope: !2304, inlinedAt: !2405)
!2407 = !DILocation(line: 165, column: 5, scope: !2304, inlinedAt: !2405)
!2408 = !DILocation(line: 167, column: 18, scope: !2306, inlinedAt: !2405)
!2409 = !DILocation(line: 0, scope: !2306, inlinedAt: !2405)
!2410 = !DILocation(line: 168, column: 16, scope: !2326, inlinedAt: !2405)
!2411 = !DILocation(line: 168, column: 13, scope: !2306, inlinedAt: !2405)
!2412 = !DILocation(line: 0, scope: !2309, inlinedAt: !2405)
!2413 = !DILocation(line: 173, column: 9, scope: !2309, inlinedAt: !2405)
!2414 = !DILocation(line: 170, column: 17, scope: !2331, inlinedAt: !2405)
!2415 = !DILocation(line: 171, column: 13, scope: !2331, inlinedAt: !2405)
!2416 = !DILocation(line: 175, column: 22, scope: !2311, inlinedAt: !2405)
!2417 = !DILocation(line: 0, scope: !2311, inlinedAt: !2405)
!2418 = !DILocation(line: 176, column: 22, scope: !2311, inlinedAt: !2405)
!2419 = !DILocation(line: 177, column: 22, scope: !2311, inlinedAt: !2405)
!2420 = !DILocation(line: 178, column: 22, scope: !2311, inlinedAt: !2405)
!2421 = !DILocation(line: 180, column: 25, scope: !2318, inlinedAt: !2405)
!2422 = !DILocation(line: 180, column: 17, scope: !2318, inlinedAt: !2405)
!2423 = !DILocation(line: 180, column: 32, scope: !2318, inlinedAt: !2405)
!2424 = !DILocation(line: 180, column: 40, scope: !2318, inlinedAt: !2405)
!2425 = !DILocation(line: 180, column: 51, scope: !2318, inlinedAt: !2405)
!2426 = !DILocation(line: 180, column: 43, scope: !2318, inlinedAt: !2405)
!2427 = !DILocation(line: 180, column: 58, scope: !2318, inlinedAt: !2405)
!2428 = !DILocation(line: 180, column: 65, scope: !2318, inlinedAt: !2405)
!2429 = !DILocation(line: 180, column: 76, scope: !2318, inlinedAt: !2405)
!2430 = !DILocation(line: 180, column: 68, scope: !2318, inlinedAt: !2405)
!2431 = !DILocation(line: 180, column: 83, scope: !2318, inlinedAt: !2405)
!2432 = !DILocation(line: 180, column: 17, scope: !2311, inlinedAt: !2405)
!2433 = !DILocation(line: 182, column: 47, scope: !2317, inlinedAt: !2405)
!2434 = !DILocation(line: 182, column: 54, scope: !2317, inlinedAt: !2405)
!2435 = !DILocation(line: 182, column: 66, scope: !2317, inlinedAt: !2405)
!2436 = !DILocation(line: 182, column: 60, scope: !2317, inlinedAt: !2405)
!2437 = !DILocation(line: 182, column: 72, scope: !2317, inlinedAt: !2405)
!2438 = !DILocation(line: 182, column: 77, scope: !2317, inlinedAt: !2405)
!2439 = !DILocation(line: 0, scope: !2357, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 182, column: 29, scope: !2317, inlinedAt: !2405)
!2441 = !DILocation(line: 202, column: 17, scope: !2357, inlinedAt: !2440)
!2442 = !DILocation(line: 202, column: 14, scope: !2357, inlinedAt: !2440)
!2443 = !DILocation(line: 0, scope: !2317, inlinedAt: !2405)
!2444 = !DILocation(line: 183, column: 55, scope: !2317, inlinedAt: !2405)
!2445 = !DILocation(line: 0, scope: !2370, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 183, column: 35, scope: !2317, inlinedAt: !2405)
!2447 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2446)
!2448 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2446)
!2449 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2446)
!2450 = !DILocation(line: 183, column: 33, scope: !2317, inlinedAt: !2405)
!2451 = !DILocation(line: 184, column: 55, scope: !2317, inlinedAt: !2405)
!2452 = !DILocation(line: 0, scope: !2370, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 184, column: 35, scope: !2317, inlinedAt: !2405)
!2454 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2453)
!2455 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2453)
!2456 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2453)
!2457 = !DILocation(line: 184, column: 33, scope: !2317, inlinedAt: !2405)
!2458 = !DILocation(line: 185, column: 13, scope: !2317, inlinedAt: !2405)
!2459 = !DILocation(line: 186, column: 17, scope: !2311, inlinedAt: !2405)
!2460 = distinct !{!2460, !2413, !2461, !1559, !1560}
!2461 = !DILocation(line: 187, column: 9, scope: !2309, inlinedAt: !2405)
!2462 = !DILocation(line: 165, column: 29, scope: !2307, inlinedAt: !2405)
!2463 = !DILocation(line: 165, column: 23, scope: !2307, inlinedAt: !2405)
!2464 = distinct !{!2464, !2407, !2465, !1559, !1560}
!2465 = !DILocation(line: 188, column: 5, scope: !2304, inlinedAt: !2405)
!2466 = !DILocation(line: 197, column: 1, scope: !2396)
!2467 = distinct !DISubprogram(name: "deblock_v_luma_intra_c", scope: !69, file: !69, line: 242, type: !1348, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "pix", arg: 1, scope: !2467, file: !69, line: 242, type: !291)
!2470 = !DILocalVariable(name: "stride", arg: 2, scope: !2467, file: !69, line: 242, type: !104)
!2471 = !DILocalVariable(name: "alpha", arg: 3, scope: !2467, file: !69, line: 242, type: !104)
!2472 = !DILocalVariable(name: "beta", arg: 4, scope: !2467, file: !69, line: 242, type: !104)
!2473 = !DILocation(line: 0, scope: !2467)
!2474 = !DILocation(line: 244, column: 5, scope: !2467)
!2475 = !DILocation(line: 245, column: 1, scope: !2467)
!2476 = distinct !DISubprogram(name: "deblock_h_luma_intra_c", scope: !69, file: !69, line: 246, type: !1348, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2477 = !{!2478, !2479, !2480, !2481}
!2478 = !DILocalVariable(name: "pix", arg: 1, scope: !2476, file: !69, line: 246, type: !291)
!2479 = !DILocalVariable(name: "stride", arg: 2, scope: !2476, file: !69, line: 246, type: !104)
!2480 = !DILocalVariable(name: "alpha", arg: 3, scope: !2476, file: !69, line: 246, type: !104)
!2481 = !DILocalVariable(name: "beta", arg: 4, scope: !2476, file: !69, line: 246, type: !104)
!2482 = !DILocation(line: 0, scope: !2476)
!2483 = !DILocation(line: 248, column: 5, scope: !2476)
!2484 = !DILocation(line: 249, column: 1, scope: !2476)
!2485 = distinct !DISubprogram(name: "deblock_v_chroma_intra_c", scope: !69, file: !69, line: 268, type: !1348, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2486)
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DILocalVariable(name: "pix", arg: 1, scope: !2485, file: !69, line: 268, type: !291)
!2488 = !DILocalVariable(name: "stride", arg: 2, scope: !2485, file: !69, line: 268, type: !104)
!2489 = !DILocalVariable(name: "alpha", arg: 3, scope: !2485, file: !69, line: 268, type: !104)
!2490 = !DILocalVariable(name: "beta", arg: 4, scope: !2485, file: !69, line: 268, type: !104)
!2491 = !DILocation(line: 0, scope: !2485)
!2492 = !DILocalVariable(name: "pix", arg: 1, scope: !2493, file: !69, line: 251, type: !291)
!2493 = distinct !DISubprogram(name: "deblock_chroma_intra_c", scope: !69, file: !69, line: 251, type: !2494, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2496)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{null, !291, !104, !104, !104, !104}
!2496 = !{!2492, !2497, !2498, !2499, !2500, !2501, !2503, !2506, !2507, !2508}
!2497 = !DILocalVariable(name: "xstride", arg: 2, scope: !2493, file: !69, line: 251, type: !104)
!2498 = !DILocalVariable(name: "ystride", arg: 3, scope: !2493, file: !69, line: 251, type: !104)
!2499 = !DILocalVariable(name: "alpha", arg: 4, scope: !2493, file: !69, line: 251, type: !104)
!2500 = !DILocalVariable(name: "beta", arg: 5, scope: !2493, file: !69, line: 251, type: !104)
!2501 = !DILocalVariable(name: "d", scope: !2502, file: !69, line: 253, type: !104)
!2502 = distinct !DILexicalBlock(scope: !2493, file: !69, line: 253, column: 5)
!2503 = !DILocalVariable(name: "p1", scope: !2504, file: !69, line: 255, type: !104)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !69, line: 254, column: 5)
!2505 = distinct !DILexicalBlock(scope: !2502, file: !69, line: 253, column: 5)
!2506 = !DILocalVariable(name: "p0", scope: !2504, file: !69, line: 256, type: !104)
!2507 = !DILocalVariable(name: "q0", scope: !2504, file: !69, line: 257, type: !104)
!2508 = !DILocalVariable(name: "q1", scope: !2504, file: !69, line: 258, type: !104)
!2509 = !DILocation(line: 0, scope: !2493, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 270, column: 5, scope: !2485)
!2511 = !DILocation(line: 0, scope: !2502, inlinedAt: !2510)
!2512 = !DILocation(line: 253, column: 5, scope: !2502, inlinedAt: !2510)
!2513 = !DILocation(line: 255, column: 18, scope: !2504, inlinedAt: !2510)
!2514 = !DILocation(line: 0, scope: !2504, inlinedAt: !2510)
!2515 = !DILocation(line: 256, column: 18, scope: !2504, inlinedAt: !2510)
!2516 = !DILocation(line: 257, column: 18, scope: !2504, inlinedAt: !2510)
!2517 = !DILocation(line: 258, column: 18, scope: !2504, inlinedAt: !2510)
!2518 = !DILocation(line: 260, column: 21, scope: !2519, inlinedAt: !2510)
!2519 = distinct !DILexicalBlock(scope: !2504, file: !69, line: 260, column: 13)
!2520 = !DILocation(line: 260, column: 13, scope: !2519, inlinedAt: !2510)
!2521 = !DILocation(line: 260, column: 28, scope: !2519, inlinedAt: !2510)
!2522 = !DILocation(line: 260, column: 36, scope: !2519, inlinedAt: !2510)
!2523 = !DILocation(line: 260, column: 47, scope: !2519, inlinedAt: !2510)
!2524 = !DILocation(line: 260, column: 39, scope: !2519, inlinedAt: !2510)
!2525 = !DILocation(line: 260, column: 54, scope: !2519, inlinedAt: !2510)
!2526 = !DILocation(line: 260, column: 61, scope: !2519, inlinedAt: !2510)
!2527 = !DILocation(line: 260, column: 72, scope: !2519, inlinedAt: !2510)
!2528 = !DILocation(line: 260, column: 64, scope: !2519, inlinedAt: !2510)
!2529 = !DILocation(line: 260, column: 79, scope: !2519, inlinedAt: !2510)
!2530 = !DILocation(line: 260, column: 13, scope: !2504, inlinedAt: !2510)
!2531 = !DILocation(line: 262, column: 33, scope: !2532, inlinedAt: !2510)
!2532 = distinct !DILexicalBlock(scope: !2519, file: !69, line: 261, column: 9)
!2533 = !DILocation(line: 262, column: 37, scope: !2532, inlinedAt: !2510)
!2534 = !DILocation(line: 262, column: 42, scope: !2532, inlinedAt: !2510)
!2535 = !DILocation(line: 262, column: 47, scope: !2532, inlinedAt: !2510)
!2536 = !DILocation(line: 262, column: 52, scope: !2532, inlinedAt: !2510)
!2537 = !DILocation(line: 262, column: 31, scope: !2532, inlinedAt: !2510)
!2538 = !DILocation(line: 262, column: 29, scope: !2532, inlinedAt: !2510)
!2539 = !DILocation(line: 263, column: 33, scope: !2532, inlinedAt: !2510)
!2540 = !DILocation(line: 263, column: 37, scope: !2532, inlinedAt: !2510)
!2541 = !DILocation(line: 263, column: 42, scope: !2532, inlinedAt: !2510)
!2542 = !DILocation(line: 263, column: 47, scope: !2532, inlinedAt: !2510)
!2543 = !DILocation(line: 263, column: 52, scope: !2532, inlinedAt: !2510)
!2544 = !DILocation(line: 263, column: 31, scope: !2532, inlinedAt: !2510)
!2545 = !DILocation(line: 263, column: 29, scope: !2532, inlinedAt: !2510)
!2546 = !DILocation(line: 264, column: 9, scope: !2532, inlinedAt: !2510)
!2547 = !DILocation(line: 265, column: 13, scope: !2504, inlinedAt: !2510)
!2548 = !DILocation(line: 253, column: 29, scope: !2505, inlinedAt: !2510)
!2549 = !DILocation(line: 253, column: 23, scope: !2505, inlinedAt: !2510)
!2550 = distinct !{!2550, !2512, !2551, !1559, !1560}
!2551 = !DILocation(line: 266, column: 5, scope: !2502, inlinedAt: !2510)
!2552 = !DILocation(line: 271, column: 1, scope: !2485)
!2553 = distinct !DISubprogram(name: "deblock_h_chroma_intra_c", scope: !69, file: !69, line: 272, type: !1348, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2554)
!2554 = !{!2555, !2556, !2557, !2558}
!2555 = !DILocalVariable(name: "pix", arg: 1, scope: !2553, file: !69, line: 272, type: !291)
!2556 = !DILocalVariable(name: "stride", arg: 2, scope: !2553, file: !69, line: 272, type: !104)
!2557 = !DILocalVariable(name: "alpha", arg: 3, scope: !2553, file: !69, line: 272, type: !104)
!2558 = !DILocalVariable(name: "beta", arg: 4, scope: !2553, file: !69, line: 272, type: !104)
!2559 = !DILocation(line: 0, scope: !2553)
!2560 = !DILocation(line: 0, scope: !2493, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 274, column: 5, scope: !2553)
!2562 = !DILocation(line: 0, scope: !2502, inlinedAt: !2561)
!2563 = !DILocation(line: 253, column: 5, scope: !2502, inlinedAt: !2561)
!2564 = !DILocation(line: 255, column: 18, scope: !2504, inlinedAt: !2561)
!2565 = !DILocation(line: 0, scope: !2504, inlinedAt: !2561)
!2566 = !DILocation(line: 256, column: 18, scope: !2504, inlinedAt: !2561)
!2567 = !DILocation(line: 257, column: 18, scope: !2504, inlinedAt: !2561)
!2568 = !DILocation(line: 258, column: 18, scope: !2504, inlinedAt: !2561)
!2569 = !DILocation(line: 260, column: 21, scope: !2519, inlinedAt: !2561)
!2570 = !DILocation(line: 260, column: 13, scope: !2519, inlinedAt: !2561)
!2571 = !DILocation(line: 260, column: 28, scope: !2519, inlinedAt: !2561)
!2572 = !DILocation(line: 260, column: 36, scope: !2519, inlinedAt: !2561)
!2573 = !DILocation(line: 260, column: 47, scope: !2519, inlinedAt: !2561)
!2574 = !DILocation(line: 260, column: 39, scope: !2519, inlinedAt: !2561)
!2575 = !DILocation(line: 260, column: 54, scope: !2519, inlinedAt: !2561)
!2576 = !DILocation(line: 260, column: 61, scope: !2519, inlinedAt: !2561)
!2577 = !DILocation(line: 260, column: 72, scope: !2519, inlinedAt: !2561)
!2578 = !DILocation(line: 260, column: 64, scope: !2519, inlinedAt: !2561)
!2579 = !DILocation(line: 260, column: 79, scope: !2519, inlinedAt: !2561)
!2580 = !DILocation(line: 260, column: 13, scope: !2504, inlinedAt: !2561)
!2581 = !DILocation(line: 262, column: 33, scope: !2532, inlinedAt: !2561)
!2582 = !DILocation(line: 262, column: 37, scope: !2532, inlinedAt: !2561)
!2583 = !DILocation(line: 262, column: 42, scope: !2532, inlinedAt: !2561)
!2584 = !DILocation(line: 262, column: 47, scope: !2532, inlinedAt: !2561)
!2585 = !DILocation(line: 262, column: 52, scope: !2532, inlinedAt: !2561)
!2586 = !DILocation(line: 262, column: 31, scope: !2532, inlinedAt: !2561)
!2587 = !DILocation(line: 262, column: 29, scope: !2532, inlinedAt: !2561)
!2588 = !DILocation(line: 263, column: 33, scope: !2532, inlinedAt: !2561)
!2589 = !DILocation(line: 263, column: 37, scope: !2532, inlinedAt: !2561)
!2590 = !DILocation(line: 263, column: 42, scope: !2532, inlinedAt: !2561)
!2591 = !DILocation(line: 263, column: 47, scope: !2532, inlinedAt: !2561)
!2592 = !DILocation(line: 263, column: 52, scope: !2532, inlinedAt: !2561)
!2593 = !DILocation(line: 263, column: 31, scope: !2532, inlinedAt: !2561)
!2594 = !DILocation(line: 263, column: 29, scope: !2532, inlinedAt: !2561)
!2595 = !DILocation(line: 264, column: 9, scope: !2532, inlinedAt: !2561)
!2596 = !DILocation(line: 265, column: 13, scope: !2504, inlinedAt: !2561)
!2597 = !DILocation(line: 253, column: 29, scope: !2505, inlinedAt: !2561)
!2598 = !DILocation(line: 253, column: 23, scope: !2505, inlinedAt: !2561)
!2599 = distinct !{!2599, !2563, !2600, !1559, !1560}
!2600 = !DILocation(line: 266, column: 5, scope: !2502, inlinedAt: !2561)
!2601 = !DILocation(line: 275, column: 1, scope: !2553)
!2602 = distinct !DISubprogram(name: "deblock_strength_c", scope: !69, file: !69, line: 277, type: !1353, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2612, !2615, !2616, !2618, !2621, !2622}
!2604 = !DILocalVariable(name: "nnz", arg: 1, scope: !2602, file: !69, line: 277, type: !291)
!2605 = !DILocalVariable(name: "ref", arg: 2, scope: !2602, file: !69, line: 277, type: !1355)
!2606 = !DILocalVariable(name: "mv", arg: 3, scope: !2602, file: !69, line: 278, type: !1356)
!2607 = !DILocalVariable(name: "bs", arg: 4, scope: !2602, file: !69, line: 278, type: !1359)
!2608 = !DILocalVariable(name: "mvy_limit", arg: 5, scope: !2602, file: !69, line: 278, type: !104)
!2609 = !DILocalVariable(name: "bframe", arg: 6, scope: !2602, file: !69, line: 279, type: !104)
!2610 = !DILocalVariable(name: "dir", scope: !2611, file: !69, line: 281, type: !104)
!2611 = distinct !DILexicalBlock(scope: !2602, file: !69, line: 281, column: 5)
!2612 = !DILocalVariable(name: "s1", scope: !2613, file: !69, line: 283, type: !104)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !69, line: 282, column: 5)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !69, line: 281, column: 5)
!2615 = !DILocalVariable(name: "s2", scope: !2613, file: !69, line: 284, type: !104)
!2616 = !DILocalVariable(name: "edge", scope: !2617, file: !69, line: 285, type: !104)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !69, line: 285, column: 9)
!2618 = !DILocalVariable(name: "i", scope: !2619, file: !69, line: 286, type: !104)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !69, line: 286, column: 13)
!2620 = distinct !DILexicalBlock(scope: !2617, file: !69, line: 285, column: 9)
!2621 = !DILocalVariable(name: "loc", scope: !2619, file: !69, line: 286, type: !104)
!2622 = !DILocalVariable(name: "locn", scope: !2623, file: !69, line: 288, type: !104)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !69, line: 287, column: 13)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !69, line: 286, column: 13)
!2625 = !DILocation(line: 0, scope: !2602)
!2626 = !DILocation(line: 0, scope: !2611)
!2627 = !DILocation(line: 294, column: 33, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !69, line: 291, column: 26)
!2629 = distinct !DILexicalBlock(scope: !2623, file: !69, line: 289, column: 21)
!2630 = !DILocation(line: 0, scope: !2613)
!2631 = !DILocation(line: 284, column: 18, scope: !2613)
!2632 = !DILocation(line: 0, scope: !2617)
!2633 = !DILocation(line: 285, column: 9, scope: !2617)
!2634 = !DILocation(line: 0, scope: !2619)
!2635 = !DILocation(line: 286, column: 13, scope: !2619)
!2636 = !DILocation(line: 0, scope: !2623)
!2637 = !DILocation(line: 289, column: 21, scope: !2629)
!2638 = !DILocation(line: 289, column: 30, scope: !2629)
!2639 = !DILocation(line: 288, column: 32, scope: !2623)
!2640 = !DILocation(line: 289, column: 33, scope: !2629)
!2641 = !DILocation(line: 289, column: 21, scope: !2623)
!2642 = !DILocation(line: 291, column: 26, scope: !2628)
!2643 = !DILocation(line: 291, column: 41, scope: !2628)
!2644 = !DILocation(line: 291, column: 38, scope: !2628)
!2645 = !DILocation(line: 291, column: 54, scope: !2628)
!2646 = !DILocation(line: 292, column: 31, scope: !2628)
!2647 = !{!2648, !2648, i64 0}
!2648 = !{!"short", !1429, i64 0}
!2649 = !DILocation(line: 292, column: 47, scope: !2628)
!2650 = !DILocation(line: 292, column: 45, scope: !2628)
!2651 = !DILocation(line: 292, column: 26, scope: !2628)
!2652 = !DILocation(line: 292, column: 64, scope: !2628)
!2653 = !DILocation(line: 292, column: 69, scope: !2628)
!2654 = !DILocation(line: 293, column: 31, scope: !2628)
!2655 = !DILocation(line: 293, column: 47, scope: !2628)
!2656 = !DILocation(line: 293, column: 45, scope: !2628)
!2657 = !DILocation(line: 293, column: 26, scope: !2628)
!2658 = !DILocation(line: 293, column: 64, scope: !2628)
!2659 = !DILocation(line: 293, column: 77, scope: !2628)
!2660 = !DILocation(line: 299, column: 17, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2628, file: !69, line: 297, column: 17)
!2662 = !DILocation(line: 0, scope: !2629)
!2663 = !DILocation(line: 286, column: 65, scope: !2624)
!2664 = !DILocation(line: 286, column: 73, scope: !2624)
!2665 = !DILocation(line: 286, column: 59, scope: !2624)
!2666 = distinct !{!2666, !2635, !2667, !1559, !1560}
!2667 = !DILocation(line: 302, column: 13, scope: !2619)
!2668 = !DILocation(line: 285, column: 42, scope: !2620)
!2669 = !DILocation(line: 285, column: 33, scope: !2620)
!2670 = distinct !{!2670, !2633, !2671, !1559, !1560}
!2671 = !DILocation(line: 302, column: 13, scope: !2617)
!2672 = !DILocation(line: 281, column: 5, scope: !2611)
!2673 = distinct !{!2673, !2672, !2674, !1559, !1560}
!2674 = !DILocation(line: 303, column: 5, scope: !2611)
!2675 = !DILocation(line: 304, column: 1, scope: !2602)
!2676 = !DILocation(line: 294, column: 37, scope: !2628)
!2677 = !DILocation(line: 294, column: 52, scope: !2628)
!2678 = !DILocation(line: 294, column: 49, scope: !2628)
!2679 = !DILocation(line: 294, column: 65, scope: !2628)
!2680 = !DILocation(line: 295, column: 31, scope: !2628)
!2681 = !DILocation(line: 295, column: 47, scope: !2628)
!2682 = !DILocation(line: 295, column: 45, scope: !2628)
!2683 = !DILocation(line: 295, column: 26, scope: !2628)
!2684 = !DILocation(line: 295, column: 64, scope: !2628)
!2685 = !DILocation(line: 295, column: 69, scope: !2628)
!2686 = !DILocation(line: 296, column: 31, scope: !2628)
!2687 = !DILocation(line: 296, column: 47, scope: !2628)
!2688 = !DILocation(line: 296, column: 45, scope: !2628)
!2689 = !DILocation(line: 296, column: 26, scope: !2628)
!2690 = !DILocation(line: 296, column: 64, scope: !2628)
!2691 = !DILocation(line: 291, column: 26, scope: !2629)
!2692 = distinct !DISubprogram(name: "deblock_luma_c", scope: !69, file: !69, line: 111, type: !2295, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2702, !2706, !2709, !2710, !2711, !2712, !2713, !2714, !2717}
!2694 = !DILocalVariable(name: "pix", arg: 1, scope: !2692, file: !69, line: 111, type: !291)
!2695 = !DILocalVariable(name: "xstride", arg: 2, scope: !2692, file: !69, line: 111, type: !104)
!2696 = !DILocalVariable(name: "ystride", arg: 3, scope: !2692, file: !69, line: 111, type: !104)
!2697 = !DILocalVariable(name: "alpha", arg: 4, scope: !2692, file: !69, line: 111, type: !104)
!2698 = !DILocalVariable(name: "beta", arg: 5, scope: !2692, file: !69, line: 111, type: !104)
!2699 = !DILocalVariable(name: "tc0", arg: 6, scope: !2692, file: !69, line: 111, type: !630)
!2700 = !DILocalVariable(name: "i", scope: !2701, file: !69, line: 113, type: !104)
!2701 = distinct !DILexicalBlock(scope: !2692, file: !69, line: 113, column: 5)
!2702 = !DILocalVariable(name: "d", scope: !2703, file: !69, line: 120, type: !104)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !69, line: 120, column: 9)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !69, line: 114, column: 5)
!2705 = distinct !DILexicalBlock(scope: !2701, file: !69, line: 113, column: 5)
!2706 = !DILocalVariable(name: "p2", scope: !2707, file: !69, line: 122, type: !104)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !69, line: 121, column: 9)
!2708 = distinct !DILexicalBlock(scope: !2703, file: !69, line: 120, column: 9)
!2709 = !DILocalVariable(name: "p1", scope: !2707, file: !69, line: 123, type: !104)
!2710 = !DILocalVariable(name: "p0", scope: !2707, file: !69, line: 124, type: !104)
!2711 = !DILocalVariable(name: "q0", scope: !2707, file: !69, line: 125, type: !104)
!2712 = !DILocalVariable(name: "q1", scope: !2707, file: !69, line: 126, type: !104)
!2713 = !DILocalVariable(name: "q2", scope: !2707, file: !69, line: 127, type: !104)
!2714 = !DILocalVariable(name: "tc", scope: !2715, file: !69, line: 131, type: !104)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !69, line: 130, column: 13)
!2716 = distinct !DILexicalBlock(scope: !2707, file: !69, line: 129, column: 17)
!2717 = !DILocalVariable(name: "delta", scope: !2715, file: !69, line: 132, type: !104)
!2718 = !DILocation(line: 0, scope: !2692)
!2719 = !DILocation(line: 0, scope: !2701)
!2720 = !DILocation(line: 113, column: 5, scope: !2701)
!2721 = !DILocation(line: 153, column: 1, scope: !2692)
!2722 = !DILocation(line: 115, column: 13, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2704, file: !69, line: 115, column: 13)
!2724 = !DILocation(line: 115, column: 20, scope: !2723)
!2725 = !DILocation(line: 115, column: 13, scope: !2704)
!2726 = !DILocation(line: 117, column: 17, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !69, line: 116, column: 9)
!2728 = !DILocation(line: 118, column: 13, scope: !2727)
!2729 = !DILocation(line: 0, scope: !2703)
!2730 = !DILocation(line: 122, column: 22, scope: !2707)
!2731 = !DILocation(line: 0, scope: !2707)
!2732 = !DILocation(line: 123, column: 22, scope: !2707)
!2733 = !DILocation(line: 124, column: 22, scope: !2707)
!2734 = !DILocation(line: 125, column: 22, scope: !2707)
!2735 = !DILocation(line: 126, column: 22, scope: !2707)
!2736 = !DILocation(line: 127, column: 22, scope: !2707)
!2737 = !DILocation(line: 129, column: 25, scope: !2716)
!2738 = !DILocation(line: 129, column: 17, scope: !2716)
!2739 = !DILocation(line: 129, column: 32, scope: !2716)
!2740 = !DILocation(line: 129, column: 40, scope: !2716)
!2741 = !DILocation(line: 129, column: 51, scope: !2716)
!2742 = !DILocation(line: 129, column: 43, scope: !2716)
!2743 = !DILocation(line: 129, column: 58, scope: !2716)
!2744 = !DILocation(line: 129, column: 65, scope: !2716)
!2745 = !DILocation(line: 129, column: 76, scope: !2716)
!2746 = !DILocation(line: 129, column: 68, scope: !2716)
!2747 = !DILocation(line: 129, column: 83, scope: !2716)
!2748 = !DILocation(line: 129, column: 17, scope: !2707)
!2749 = !DILocation(line: 131, column: 26, scope: !2715)
!2750 = !DILocation(line: 0, scope: !2715)
!2751 = !DILocation(line: 133, column: 29, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2715, file: !69, line: 133, column: 21)
!2753 = !DILocation(line: 133, column: 21, scope: !2752)
!2754 = !DILocation(line: 133, column: 36, scope: !2752)
!2755 = !DILocation(line: 133, column: 21, scope: !2715)
!2756 = !DILocation(line: 135, column: 25, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !69, line: 135, column: 25)
!2758 = distinct !DILexicalBlock(scope: !2752, file: !69, line: 134, column: 17)
!2759 = !DILocation(line: 135, column: 25, scope: !2758)
!2760 = !DILocation(line: 136, column: 73, scope: !2757)
!2761 = !DILocation(line: 136, column: 78, scope: !2757)
!2762 = !DILocation(line: 136, column: 83, scope: !2757)
!2763 = !DILocation(line: 136, column: 66, scope: !2757)
!2764 = !DILocation(line: 136, column: 90, scope: !2757)
!2765 = !DILocation(line: 136, column: 96, scope: !2757)
!2766 = !DILocation(line: 136, column: 102, scope: !2757)
!2767 = !DILocation(line: 0, scope: !2357, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 136, column: 48, scope: !2757)
!2769 = !DILocation(line: 202, column: 17, scope: !2357, inlinedAt: !2768)
!2770 = !DILocation(line: 202, column: 14, scope: !2357, inlinedAt: !2768)
!2771 = !DILocation(line: 136, column: 43, scope: !2757)
!2772 = !DILocation(line: 136, column: 41, scope: !2757)
!2773 = !DILocation(line: 136, column: 25, scope: !2757)
!2774 = !DILocation(line: 137, column: 23, scope: !2758)
!2775 = !DILocation(line: 138, column: 17, scope: !2758)
!2776 = !DILocation(line: 139, column: 29, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2715, file: !69, line: 139, column: 21)
!2778 = !DILocation(line: 139, column: 21, scope: !2777)
!2779 = !DILocation(line: 139, column: 36, scope: !2777)
!2780 = !DILocation(line: 139, column: 21, scope: !2715)
!2781 = !DILocation(line: 141, column: 25, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2783, file: !69, line: 141, column: 25)
!2783 = distinct !DILexicalBlock(scope: !2777, file: !69, line: 140, column: 17)
!2784 = !DILocation(line: 141, column: 25, scope: !2783)
!2785 = !DILocation(line: 142, column: 73, scope: !2782)
!2786 = !DILocation(line: 142, column: 78, scope: !2782)
!2787 = !DILocation(line: 142, column: 83, scope: !2782)
!2788 = !DILocation(line: 142, column: 66, scope: !2782)
!2789 = !DILocation(line: 142, column: 90, scope: !2782)
!2790 = !DILocation(line: 142, column: 96, scope: !2782)
!2791 = !DILocation(line: 142, column: 103, scope: !2782)
!2792 = !DILocation(line: 142, column: 102, scope: !2782)
!2793 = !DILocation(line: 0, scope: !2357, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 142, column: 48, scope: !2782)
!2795 = !DILocation(line: 202, column: 17, scope: !2357, inlinedAt: !2794)
!2796 = !DILocation(line: 202, column: 14, scope: !2357, inlinedAt: !2794)
!2797 = !DILocation(line: 142, column: 43, scope: !2782)
!2798 = !DILocation(line: 142, column: 41, scope: !2782)
!2799 = !DILocation(line: 142, column: 25, scope: !2782)
!2800 = !DILocation(line: 143, column: 23, scope: !2783)
!2801 = !DILocation(line: 144, column: 17, scope: !2783)
!2802 = !DILocation(line: 146, column: 43, scope: !2715)
!2803 = !DILocation(line: 146, column: 50, scope: !2715)
!2804 = !DILocation(line: 146, column: 62, scope: !2715)
!2805 = !DILocation(line: 146, column: 56, scope: !2715)
!2806 = !DILocation(line: 146, column: 68, scope: !2715)
!2807 = !DILocation(line: 146, column: 73, scope: !2715)
!2808 = !DILocation(line: 146, column: 79, scope: !2715)
!2809 = !DILocation(line: 0, scope: !2357, inlinedAt: !2810)
!2810 = distinct !DILocation(line: 146, column: 25, scope: !2715)
!2811 = !DILocation(line: 202, column: 17, scope: !2357, inlinedAt: !2810)
!2812 = !DILocation(line: 202, column: 14, scope: !2357, inlinedAt: !2810)
!2813 = !DILocation(line: 147, column: 55, scope: !2715)
!2814 = !DILocation(line: 0, scope: !2370, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 147, column: 35, scope: !2715)
!2816 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2815)
!2817 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2815)
!2818 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2815)
!2819 = !DILocation(line: 147, column: 33, scope: !2715)
!2820 = !DILocation(line: 148, column: 55, scope: !2715)
!2821 = !DILocation(line: 0, scope: !2370, inlinedAt: !2822)
!2822 = distinct !DILocation(line: 148, column: 35, scope: !2715)
!2823 = !DILocation(line: 197, column: 13, scope: !2370, inlinedAt: !2822)
!2824 = !DILocation(line: 197, column: 12, scope: !2370, inlinedAt: !2822)
!2825 = !DILocation(line: 197, column: 27, scope: !2370, inlinedAt: !2822)
!2826 = !DILocation(line: 148, column: 33, scope: !2715)
!2827 = !DILocation(line: 149, column: 13, scope: !2715)
!2828 = !DILocation(line: 150, column: 17, scope: !2707)
!2829 = !DILocation(line: 120, column: 33, scope: !2708)
!2830 = !DILocation(line: 120, column: 27, scope: !2708)
!2831 = !DILocation(line: 120, column: 9, scope: !2703)
!2832 = distinct !{!2832, !2831, !2833, !1559, !1560}
!2833 = !DILocation(line: 151, column: 9, scope: !2703)
!2834 = !DILocation(line: 113, column: 29, scope: !2705)
!2835 = !DILocation(line: 113, column: 23, scope: !2705)
!2836 = distinct !{!2836, !2720, !2837, !1559, !1560}
!2837 = !DILocation(line: 152, column: 5, scope: !2701)
!2838 = distinct !DISubprogram(name: "deblock_luma_intra_c", scope: !69, file: !69, line: 199, type: !2494, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2847, !2850, !2851, !2852, !2853, !2854, !2855, !2863}
!2840 = !DILocalVariable(name: "pix", arg: 1, scope: !2838, file: !69, line: 199, type: !291)
!2841 = !DILocalVariable(name: "xstride", arg: 2, scope: !2838, file: !69, line: 199, type: !104)
!2842 = !DILocalVariable(name: "ystride", arg: 3, scope: !2838, file: !69, line: 199, type: !104)
!2843 = !DILocalVariable(name: "alpha", arg: 4, scope: !2838, file: !69, line: 199, type: !104)
!2844 = !DILocalVariable(name: "beta", arg: 5, scope: !2838, file: !69, line: 199, type: !104)
!2845 = !DILocalVariable(name: "d", scope: !2846, file: !69, line: 201, type: !104)
!2846 = distinct !DILexicalBlock(scope: !2838, file: !69, line: 201, column: 5)
!2847 = !DILocalVariable(name: "p2", scope: !2848, file: !69, line: 203, type: !104)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !69, line: 202, column: 5)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !69, line: 201, column: 5)
!2850 = !DILocalVariable(name: "p1", scope: !2848, file: !69, line: 204, type: !104)
!2851 = !DILocalVariable(name: "p0", scope: !2848, file: !69, line: 205, type: !104)
!2852 = !DILocalVariable(name: "q0", scope: !2848, file: !69, line: 206, type: !104)
!2853 = !DILocalVariable(name: "q1", scope: !2848, file: !69, line: 207, type: !104)
!2854 = !DILocalVariable(name: "q2", scope: !2848, file: !69, line: 208, type: !104)
!2855 = !DILocalVariable(name: "p3", scope: !2856, file: !69, line: 216, type: !2862)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !69, line: 215, column: 17)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !69, line: 214, column: 21)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !69, line: 213, column: 13)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !69, line: 212, column: 16)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !69, line: 211, column: 9)
!2861 = distinct !DILexicalBlock(scope: !2848, file: !69, line: 210, column: 13)
!2862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!2863 = !DILocalVariable(name: "q3", scope: !2864, file: !69, line: 225, type: !2862)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !69, line: 224, column: 17)
!2865 = distinct !DILexicalBlock(scope: !2858, file: !69, line: 223, column: 21)
!2866 = !DILocation(line: 0, scope: !2838)
!2867 = !DILocation(line: 0, scope: !2846)
!2868 = !DILocation(line: 201, column: 5, scope: !2846)
!2869 = !DILocation(line: 241, column: 1, scope: !2838)
!2870 = !DILocation(line: 203, column: 18, scope: !2848)
!2871 = !DILocation(line: 0, scope: !2848)
!2872 = !DILocation(line: 204, column: 18, scope: !2848)
!2873 = !DILocation(line: 205, column: 18, scope: !2848)
!2874 = !DILocation(line: 206, column: 18, scope: !2848)
!2875 = !DILocation(line: 207, column: 18, scope: !2848)
!2876 = !DILocation(line: 208, column: 18, scope: !2848)
!2877 = !DILocation(line: 210, column: 21, scope: !2861)
!2878 = !DILocation(line: 210, column: 13, scope: !2861)
!2879 = !DILocation(line: 210, column: 28, scope: !2861)
!2880 = !DILocation(line: 210, column: 36, scope: !2861)
!2881 = !DILocation(line: 210, column: 47, scope: !2861)
!2882 = !DILocation(line: 210, column: 39, scope: !2861)
!2883 = !DILocation(line: 210, column: 54, scope: !2861)
!2884 = !DILocation(line: 210, column: 61, scope: !2861)
!2885 = !DILocation(line: 210, column: 72, scope: !2861)
!2886 = !DILocation(line: 210, column: 64, scope: !2861)
!2887 = !DILocation(line: 210, column: 79, scope: !2861)
!2888 = !DILocation(line: 210, column: 13, scope: !2848)
!2889 = !DILocation(line: 212, column: 31, scope: !2859)
!2890 = !DILocation(line: 212, column: 16, scope: !2860)
!2891 = !DILocation(line: 214, column: 29, scope: !2857)
!2892 = !DILocation(line: 214, column: 21, scope: !2857)
!2893 = !DILocation(line: 214, column: 36, scope: !2857)
!2894 = !DILocation(line: 214, column: 21, scope: !2858)
!2895 = !DILocation(line: 216, column: 36, scope: !2856)
!2896 = !DILocation(line: 0, scope: !2856)
!2897 = !DILocation(line: 217, column: 58, scope: !2856)
!2898 = !DILocation(line: 217, column: 65, scope: !2856)
!2899 = !DILocation(line: 217, column: 70, scope: !2856)
!2900 = !DILocation(line: 217, column: 76, scope: !2856)
!2901 = !DILocation(line: 217, column: 39, scope: !2856)
!2902 = !DILocation(line: 217, column: 37, scope: !2856)
!2903 = !DILocation(line: 218, column: 44, scope: !2856)
!2904 = !DILocation(line: 218, column: 49, scope: !2856)
!2905 = !DILocation(line: 218, column: 54, scope: !2856)
!2906 = !DILocation(line: 218, column: 59, scope: !2856)
!2907 = !DILocation(line: 218, column: 65, scope: !2856)
!2908 = !DILocation(line: 218, column: 39, scope: !2856)
!2909 = !DILocation(line: 218, column: 37, scope: !2856)
!2910 = !DILocation(line: 219, column: 42, scope: !2856)
!2911 = !DILocation(line: 219, column: 49, scope: !2856)
!2912 = !DILocation(line: 219, column: 53, scope: !2856)
!2913 = !DILocation(line: 219, column: 58, scope: !2856)
!2914 = !DILocation(line: 219, column: 63, scope: !2856)
!2915 = !DILocation(line: 219, column: 68, scope: !2856)
!2916 = !DILocation(line: 219, column: 74, scope: !2856)
!2917 = !DILocation(line: 220, column: 17, scope: !2856)
!2918 = !DILocation(line: 222, column: 42, scope: !2857)
!2919 = !DILocation(line: 222, column: 46, scope: !2857)
!2920 = !DILocation(line: 222, column: 51, scope: !2857)
!2921 = !DILocation(line: 222, column: 56, scope: !2857)
!2922 = !DILocation(line: 222, column: 62, scope: !2857)
!2923 = !DILocation(line: 0, scope: !2857)
!2924 = !DILocation(line: 223, column: 29, scope: !2865)
!2925 = !DILocation(line: 223, column: 21, scope: !2865)
!2926 = !DILocation(line: 223, column: 36, scope: !2865)
!2927 = !DILocation(line: 223, column: 21, scope: !2858)
!2928 = !DILocation(line: 225, column: 36, scope: !2864)
!2929 = !DILocation(line: 0, scope: !2864)
!2930 = !DILocation(line: 226, column: 57, scope: !2864)
!2931 = !DILocation(line: 226, column: 64, scope: !2864)
!2932 = !DILocation(line: 226, column: 69, scope: !2864)
!2933 = !DILocation(line: 226, column: 75, scope: !2864)
!2934 = !DILocation(line: 226, column: 38, scope: !2864)
!2935 = !DILocation(line: 226, column: 36, scope: !2864)
!2936 = !DILocation(line: 227, column: 43, scope: !2864)
!2937 = !DILocation(line: 227, column: 48, scope: !2864)
!2938 = !DILocation(line: 227, column: 53, scope: !2864)
!2939 = !DILocation(line: 227, column: 58, scope: !2864)
!2940 = !DILocation(line: 227, column: 64, scope: !2864)
!2941 = !DILocation(line: 227, column: 38, scope: !2864)
!2942 = !DILocation(line: 227, column: 36, scope: !2864)
!2943 = !DILocation(line: 228, column: 41, scope: !2864)
!2944 = !DILocation(line: 228, column: 48, scope: !2864)
!2945 = !DILocation(line: 228, column: 52, scope: !2864)
!2946 = !DILocation(line: 228, column: 57, scope: !2864)
!2947 = !DILocation(line: 228, column: 62, scope: !2864)
!2948 = !DILocation(line: 228, column: 67, scope: !2864)
!2949 = !DILocation(line: 228, column: 73, scope: !2864)
!2950 = !DILocation(line: 229, column: 17, scope: !2864)
!2951 = !DILocation(line: 231, column: 41, scope: !2865)
!2952 = !DILocation(line: 231, column: 45, scope: !2865)
!2953 = !DILocation(line: 231, column: 50, scope: !2865)
!2954 = !DILocation(line: 231, column: 55, scope: !2865)
!2955 = !DILocation(line: 231, column: 61, scope: !2865)
!2956 = !DILocation(line: 235, column: 38, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2859, file: !69, line: 234, column: 13)
!2958 = !DILocation(line: 235, column: 42, scope: !2957)
!2959 = !DILocation(line: 235, column: 47, scope: !2957)
!2960 = !DILocation(line: 235, column: 52, scope: !2957)
!2961 = !DILocation(line: 235, column: 58, scope: !2957)
!2962 = !DILocation(line: 235, column: 35, scope: !2957)
!2963 = !DILocation(line: 235, column: 33, scope: !2957)
!2964 = !DILocation(line: 236, column: 38, scope: !2957)
!2965 = !DILocation(line: 236, column: 42, scope: !2957)
!2966 = !DILocation(line: 236, column: 47, scope: !2957)
!2967 = !DILocation(line: 236, column: 52, scope: !2957)
!2968 = !DILocation(line: 236, column: 58, scope: !2957)
!2969 = !DILocation(line: 0, scope: !2859)
!2970 = !DILocation(line: 239, column: 13, scope: !2848)
!2971 = !DILocation(line: 201, column: 30, scope: !2849)
!2972 = !DILocation(line: 201, column: 23, scope: !2849)
!2973 = distinct !{!2973, !2868, !2974, !1559, !1560}
!2974 = !DILocation(line: 240, column: 5, scope: !2846)
