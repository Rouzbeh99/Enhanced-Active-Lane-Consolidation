; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/encoder/cavlc.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/cavlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
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
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_macroblock_write_cavlc.i_offsets = internal unnamed_addr constant [3 x i8] c"\05\17\00", align 1, !dbg !0
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1, !dbg !1414
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !1419
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1, !dbg !1425
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1, !dbg !1428
@sub_mb_type_p_to_golomb = internal unnamed_addr constant [4 x i8] c"\03\01\02\00", align 1, !dbg !1430
@sub_mb_type_b_to_golomb = internal unnamed_addr constant [13 x i8] c"\0A\04\05\01\0B\06\07\02\0C\08\09\03\00", align 1, !dbg !1433
@x264_mb_partition_listX_table = internal unnamed_addr constant [2 x [17 x i8]] [[17 x i8] c"\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\00", [17 x i8] c"\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00"], align 16, !dbg !1436
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16, !dbg !1439
@mb_type_b_to_golomb = internal unnamed_addr constant [3 x [9 x i8]] [[9 x i8] c"\04\08\0C\0A\06\0E\10\12\14", [9 x i8] c"\05\09\0D\0B\07\0F\11\13\15", [9 x i8] c"\01\FF\FF\FF\02\FF\FF\FF\03"], align 16, !dbg !1443
@intra4x4_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\03\1D\1E\11\1F\12%\08 &\13\09\14\0A\0B\02\10!\22\15#\16'\04$(\17\05\18\06\07\01)*+\19,\1A.\0C-/\1B\0D\1C\0E\0F\00", align 16, !dbg !1447
@inter_cbp_to_golomb = internal unnamed_addr constant [48 x i8] c"\00\02\03\07\04\08\11\0D\05\12\09\0E\0A\0F\10\0B\01 !$\22%,(#-&)'*+\13\06\18\19\14\1A\15.\1C\1B/\16\1D\17\1E\1F\0C", align 16, !dbg !1450
@ct_index = internal unnamed_addr constant [17 x i8] c"\00\00\01\01\02\02\02\02\03\03\03\03\03\03\03\03\03", align 16, !dbg !1460
@x264_coeff0_token = external local_unnamed_addr constant [5 x %struct.vlc_t], align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16, !dbg !1411
@x264_mb_transform_8x8_allowed.partition_tab = internal unnamed_addr constant [19 x i8] c"\00\00\00\00\01\02\00\01\01\01\01\01\01\01\01\01\01\01\00", align 16, !dbg !1452
@block_residual_write_cavlc.ctz_index = internal unnamed_addr constant [8 x i8] c"\03\00\01\00\02\00\01\00", align 1, !dbg !1463
@block_residual_write_cavlc.count_cat = internal unnamed_addr constant [5 x i8] c"\10\0F\10\04\0F", align 1, !dbg !1493
@x264_coeff_token = external local_unnamed_addr constant [5 x [16 x [4 x %struct.vlc_t]]], align 16
@x264_level_token = external local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]], align 16
@x264_total_zeros_dc = external local_unnamed_addr constant [3 x [4 x %struct.vlc_t]], align 16
@x264_total_zeros = external local_unnamed_addr constant [15 x [16 x %struct.vlc_t]], align 16
@x264_run_before = external local_unnamed_addr constant [7 x [16 x %struct.vlc_t]], align 16
@block_residual_write_cavlc_escape.next_suffix = internal unnamed_addr constant [7 x i16] [i16 0, i16 3, i16 6, i16 12, i16 24, i16 48, i16 -1], align 2, !dbg !1496
@.str = private unnamed_addr constant [55 x i8] c"OVERFLOW levelcode=%d is only allowed in High Profile\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_write_cavlc(ptr noundef %h) local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1513, metadata !DIExpression()), !dbg !1601
  %bs = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, !dbg !1602
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1514, metadata !DIExpression()), !dbg !1601
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 53, !dbg !1603
  %0 = load i32, ptr %i_type, align 8, !dbg !1603, !tbaa !1604
  call void @llvm.dbg.value(metadata i32 %0, metadata !1515, metadata !DIExpression()), !dbg !1601
  %i_type1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !1634
  %1 = load i32, ptr %i_type1, align 16, !dbg !1634, !tbaa !1635
  %idxprom = sext i32 %1 to i64, !dbg !1636
  %arrayidx = getelementptr inbounds [3 x i8], ptr @x264_macroblock_write_cavlc.i_offsets, i64 0, i64 %idxprom, !dbg !1636
  %2 = load i8, ptr %arrayidx, align 1, !dbg !1636, !tbaa !1637
  %conv = zext i8 %2 to i32, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1516, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1638, metadata !DIExpression()), !dbg !1643
  %p.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !1645
  %3 = load ptr, ptr %p.i, align 8, !dbg !1645, !tbaa !1646
  %4 = load ptr, ptr %bs, align 8, !dbg !1647, !tbaa !1648
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i64, !dbg !1649
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64, !dbg !1649
  %sub.ptr.sub.i.neg = sub i64 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i, !dbg !1649
  %i_left.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 4, !dbg !1650
  %5 = load i32, ptr %i_left.i, align 8, !dbg !1650, !tbaa !1651
  %sub.ptr.sub.tr.i.neg = trunc i64 %sub.ptr.sub.i.neg to i32, !dbg !1652
  %.neg2094 = shl i32 %sub.ptr.sub.tr.i.neg, 3, !dbg !1652
  %.neg2095 = add i32 %5, -64, !dbg !1652
  %conv1.i.neg2096 = add i32 %.neg2094, %.neg2095, !dbg !1652
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub.ptr.lhs.cast.i, i32 64, i32 %5, i64 %sub.ptr.rhs.cast.i), metadata !1517, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !1601
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !1653
  %6 = load i32, ptr %b_mbaff, align 4, !dbg !1653, !tbaa !1655
  %tobool.not = icmp eq i32 %6, 0, !dbg !1656
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1657

land.lhs.true:                                    ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !1658
  %7 = load i32, ptr %i_mb_y, align 4, !dbg !1658, !tbaa !1659
  %and = and i32 %7, 1, !dbg !1660
  %tobool4.not = icmp eq i32 %and, 0, !dbg !1660
  br i1 %tobool4.not, label %if.then, label %lor.lhs.false, !dbg !1661

lor.lhs.false:                                    ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !1662
  %8 = load ptr, ptr %type, align 8, !dbg !1662, !tbaa !1663
  %i_mb_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !1662
  %9 = load i32, ptr %i_mb_xy, align 8, !dbg !1662, !tbaa !1664
  %i_mb_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !1662
  %10 = load i32, ptr %i_mb_stride, align 4, !dbg !1662, !tbaa !1665
  %sub = sub nsw i32 %9, %10, !dbg !1662
  %idxprom8 = sext i32 %sub to i64, !dbg !1662
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8, !dbg !1662
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !1662, !tbaa !1637
  switch i8 %11, label %if.end [
    i8 6, label %if.then
    i8 18, label %if.then
  ], !dbg !1662

if.then:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %land.lhs.true
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !1666
  %12 = load i32, ptr %b_interlaced, align 4, !dbg !1666, !tbaa !1668
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %12, metadata !1674, metadata !DIExpression()) #7, !dbg !1675
  %cur_bits.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !1677
  %13 = load i64, ptr %cur_bits.i, align 8, !dbg !1678, !tbaa !1679
  %shl.i = shl i64 %13, 1, !dbg !1678
  %conv.i = zext i32 %12 to i64, !dbg !1680
  %or.i = or i64 %shl.i, %conv.i, !dbg !1681
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !1681, !tbaa !1679
  %dec.i = add nsw i32 %5, -1, !dbg !1682
  store i32 %dec.i, ptr %i_left.i, align 8, !dbg !1682, !tbaa !1651
  %cmp.i = icmp eq i32 %dec.i, 32, !dbg !1683
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !1685

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32, !dbg !1686
  call void @llvm.dbg.value(metadata i32 %conv6.i, metadata !1688, metadata !DIExpression()) #7, !dbg !1694
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #7, !dbg !1696
  store i32 %add5.i.i, ptr %3, align 4, !dbg !1697, !tbaa !1637
  %14 = load ptr, ptr %p.i, align 8, !dbg !1698, !tbaa !1646
  %add.ptr.i = getelementptr inbounds i8, ptr %14, i64 4, !dbg !1698
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !1698, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !1699, !tbaa !1651
  br label %if.end, !dbg !1700

if.end:                                           ; preds = %if.then.i, %if.then, %lor.lhs.false, %entry
  %15 = phi ptr [ %add.ptr.i, %if.then.i ], [ %3, %if.then ], [ %3, %lor.lhs.false ], [ %3, %entry ]
  %16 = phi i32 [ 64, %if.then.i ], [ %dec.i, %if.then ], [ %5, %lor.lhs.false ], [ %5, %entry ]
  %cmp26 = icmp eq i32 %0, 3, !dbg !1701
  br i1 %cmp26, label %if.then28, label %if.end80, !dbg !1702

if.then28:                                        ; preds = %if.end
  %17 = load ptr, ptr %bs, align 8, !dbg !1703, !tbaa !1648
  call void @llvm.dbg.value(metadata ptr %17, metadata !1519, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !1711
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1710, metadata !DIExpression(DW_OP_plus_uconst, 25, DW_OP_stack_value)) #7, !dbg !1711
  %add.i = add nuw nsw i32 %conv, 26, !dbg !1713
  %idxprom.i2060 = zext i32 %add.i to i64, !dbg !1714
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i2060, !dbg !1714
  %18 = load i8, ptr %arrayidx.i, align 1, !dbg !1714, !tbaa !1637
  %conv.i1245 = zext i8 %18 to i32, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %conv.i1245, metadata !1720, metadata !DIExpression()) #7, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1721, metadata !DIExpression()) #7, !dbg !1722
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !1724
  %19 = load i64, ptr %cur_bits.i.i, align 8, !dbg !1724, !tbaa !1679
  %sh_prom.i.i = zext i8 %18 to i64, !dbg !1727
  %shl.i.i = shl i64 %19, %sh_prom.i.i, !dbg !1727
  %or.i.i = or i64 %shl.i.i, %idxprom.i2060, !dbg !1728
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !1729, !tbaa !1679
  %sub.i.i = sub nsw i32 %16, %conv.i1245, !dbg !1730
  store i32 %sub.i.i, ptr %i_left.i, align 8, !dbg !1730, !tbaa !1651
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !1731
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_ue.exit, !dbg !1733

if.then.i.i:                                      ; preds = %if.then28
  %sh_prom6.i.i = zext i32 %sub.i.i to i64, !dbg !1734
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1736, metadata !DIExpression()) #7, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1743, metadata !DIExpression()) #7, !dbg !1748
  %add.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i) #7, !dbg !1750
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !1751
  store i32 %conv8.i.i, ptr %15, align 4, !dbg !1752, !tbaa !1637
  %20 = load i32, ptr %i_left.i, align 8, !dbg !1753, !tbaa !1651
  %add.i.i = add nsw i32 %20, 32, !dbg !1753
  %21 = load ptr, ptr %p.i, align 8, !dbg !1754, !tbaa !1646
  %add.ptr.i.i = getelementptr inbounds i8, ptr %21, i64 4, !dbg !1754
  store ptr %add.ptr.i.i, ptr %p.i, align 8, !dbg !1754, !tbaa !1646
  %.pre2162 = load ptr, ptr %bs, align 8, !dbg !1755, !tbaa !1648
  %.pre2163 = load i64, ptr %cur_bits.i.i, align 8, !dbg !1757, !tbaa !1679
  br label %bs_write_ue.exit, !dbg !1765

bs_write_ue.exit:                                 ; preds = %if.then28, %if.then.i.i
  %22 = phi i64 [ %or.i.i, %if.then28 ], [ %.pre2163, %if.then.i.i ], !dbg !1757
  %23 = phi i32 [ %sub.i.i, %if.then28 ], [ %add.i.i, %if.then.i.i ], !dbg !1766
  %24 = phi ptr [ %17, %if.then28 ], [ %.pre2162, %if.then.i.i ], !dbg !1755
  %25 = phi ptr [ %15, %if.then28 ], [ %add.ptr.i.i, %if.then.i.i ], !dbg !1767
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1638, metadata !DIExpression()), !dbg !1768
  %sub.ptr.lhs.cast.i1247 = ptrtoint ptr %25 to i64, !dbg !1769
  %sub.ptr.rhs.cast.i1248 = ptrtoint ptr %24 to i64, !dbg !1769
  %sub.ptr.sub.i1249 = sub i64 %sub.ptr.lhs.cast.i1247, %sub.ptr.rhs.cast.i1248, !dbg !1769
  %sub.ptr.sub.tr.i1251 = trunc i64 %sub.ptr.sub.i1249 to i32, !dbg !1770
  %26 = shl i32 %sub.ptr.sub.tr.i1251, 3, !dbg !1770
  %27 = sub i32 64, %23, !dbg !1770
  %conv1.i1252 = add i32 %26, %27, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %conv1.i1252, metadata !1518, metadata !DIExpression()), !dbg !1601
  %stat = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 57, !dbg !1771
  %28 = load i32, ptr %stat, align 8, !dbg !1772, !tbaa !1773
  %sub31 = add i32 %28, %conv1.i.neg2096, !dbg !1774
  %add32 = add i32 %sub31, %conv1.i1252, !dbg !1772
  store i32 %add32, ptr %stat, align 8, !dbg !1772, !tbaa !1773
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1763, metadata !DIExpression()) #7, !dbg !1775
  %and.i = and i32 %23, 7, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !1777
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !1720, metadata !DIExpression()) #7, !dbg !1777
  call void @llvm.dbg.value(metadata i32 0, metadata !1721, metadata !DIExpression()) #7, !dbg !1777
  %sh_prom.i.i1255 = zext i32 %and.i to i64, !dbg !1778
  %shl.i.i1256 = shl i64 %22, %sh_prom.i.i1255, !dbg !1778
  store i64 %shl.i.i1256, ptr %cur_bits.i.i, align 8, !dbg !1779, !tbaa !1679
  %sub.i.i1257 = and i32 %23, -8, !dbg !1780
  store i32 %sub.i.i1257, ptr %i_left.i, align 8, !dbg !1780, !tbaa !1651
  %cmp.i.i1258 = icmp slt i32 %sub.i.i1257, 33, !dbg !1781
  br i1 %cmp.i.i1258, label %if.then.i.i1266, label %bs_align_0.exit, !dbg !1782

if.then.i.i1266:                                  ; preds = %bs_write_ue.exit
  %sh_prom6.i.i1259 = zext i32 %sub.i.i1257 to i64, !dbg !1783
  %shl7.i.i1260 = shl i64 %shl.i.i1256, %sh_prom6.i.i1259, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1260, metadata !1736, metadata !DIExpression()) #7, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1260, metadata !1743, metadata !DIExpression()) #7, !dbg !1786
  %add.i.i.i.i1261 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1260) #7, !dbg !1788
  %conv8.i.i1262 = trunc i64 %add.i.i.i.i1261 to i32, !dbg !1789
  store i32 %conv8.i.i1262, ptr %25, align 4, !dbg !1790, !tbaa !1637
  %29 = load i32, ptr %i_left.i, align 8, !dbg !1791, !tbaa !1651
  %add.i.i1264 = add nsw i32 %29, 32, !dbg !1791
  store i32 %add.i.i1264, ptr %i_left.i, align 8, !dbg !1791, !tbaa !1651
  %30 = load ptr, ptr %p.i, align 8, !dbg !1792, !tbaa !1646
  %add.ptr.i.i1265 = getelementptr inbounds i8, ptr %30, i64 4, !dbg !1792
  store ptr %add.ptr.i.i1265, ptr %p.i, align 8, !dbg !1792, !tbaa !1646
  %.pre.i = load i64, ptr %cur_bits.i.i, align 8, !dbg !1793, !tbaa !1679
  br label %bs_align_0.exit, !dbg !1798

bs_align_0.exit:                                  ; preds = %bs_write_ue.exit, %if.then.i.i1266
  %31 = phi ptr [ %add.ptr.i.i1265, %if.then.i.i1266 ], [ %25, %bs_write_ue.exit ], !dbg !1799
  %32 = phi i32 [ %add.i.i1264, %if.then.i.i1266 ], [ %sub.i.i1257, %bs_write_ue.exit ], !dbg !1800
  %33 = phi i64 [ %.pre.i, %if.then.i.i1266 ], [ %shl.i.i1256, %bs_write_ue.exit ], !dbg !1793
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1796, metadata !DIExpression()) #7, !dbg !1801
  %and.i.i = and i32 %32, 31, !dbg !1802
  %sh_prom.i5.i = zext i32 %and.i.i to i64, !dbg !1803
  %shl.i6.i = shl i64 %33, %sh_prom.i5.i, !dbg !1803
  %conv.i.i1267 = trunc i64 %shl.i6.i to i32, !dbg !1804
  call void @llvm.dbg.value(metadata i32 %conv.i.i1267, metadata !1688, metadata !DIExpression()) #7, !dbg !1805
  %add5.i.i.i = tail call i32 @llvm.bswap.i32(i32 %conv.i.i1267) #7, !dbg !1807
  store i32 %add5.i.i.i, ptr %31, align 4, !dbg !1808, !tbaa !1637
  %34 = load i32, ptr %i_left.i, align 8, !dbg !1809, !tbaa !1651
  %div.neg.i.i = sdiv i32 %34, -8, !dbg !1810
  %narrow.i.i = add nsw i32 %div.neg.i.i, 8, !dbg !1811
  %sub.i8.i = sext i32 %narrow.i.i to i64, !dbg !1811
  %35 = load ptr, ptr %p.i, align 8, !dbg !1812, !tbaa !1646
  %add.ptr.i9.i = getelementptr inbounds i8, ptr %35, i64 %sub.i8.i, !dbg !1812
  store ptr %add.ptr.i9.i, ptr %p.i, align 8, !dbg !1812, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !1813, !tbaa !1651
  %p_fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, !dbg !1814
  %36 = load ptr, ptr %p_fenc, align 16, !dbg !1815, !tbaa !1816
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %add.ptr.i9.i, ptr noundef nonnull align 1 dereferenceable(256) %36, i64 256, i1 false), !dbg !1817
  %37 = load ptr, ptr %p.i, align 8, !dbg !1818, !tbaa !1646
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 256, !dbg !1818
  store ptr %add.ptr, ptr %p.i, align 8, !dbg !1818, !tbaa !1646
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1819
  %arrayidx43 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, i64 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1522, metadata !DIExpression()), !dbg !1819
  br label %for.body, !dbg !1820

for.cond.cleanup:                                 ; preds = %for.body
  %add.ptr48 = getelementptr inbounds i8, ptr %43, i64 64, !dbg !1821
  store ptr %add.ptr48, ptr %p.i, align 8, !dbg !1821, !tbaa !1646
  call void @llvm.dbg.value(metadata i32 0, metadata !1524, metadata !DIExpression()), !dbg !1822
  %arrayidx62 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, i64 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1524, metadata !DIExpression()), !dbg !1822
  br label %for.body54, !dbg !1823

for.body:                                         ; preds = %for.body, %bs_align_0.exit
  %38 = phi ptr [ %add.ptr, %bs_align_0.exit ], [ %43, %for.body ], !dbg !1824
  %indvars.iv2148 = phi i64 [ 0, %bs_align_0.exit ], [ %indvars.iv.next2149, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2148, metadata !1522, metadata !DIExpression()), !dbg !1819
  %39 = shl nuw nsw i64 %indvars.iv2148, 3, !dbg !1826
  %add.ptr39 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !1827
  %40 = load ptr, ptr %arrayidx43, align 8, !dbg !1828, !tbaa !1816
  %41 = shl nuw nsw i64 %indvars.iv2148, 4, !dbg !1829
  %add.ptr46 = getelementptr inbounds i8, ptr %40, i64 %41, !dbg !1830
  %42 = load i64, ptr %add.ptr46, align 1, !dbg !1831
  store i64 %42, ptr %add.ptr39, align 1, !dbg !1831
  %indvars.iv.next2149 = add nuw nsw i64 %indvars.iv2148, 1, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2149, metadata !1522, metadata !DIExpression()), !dbg !1819
  %exitcond2153.not = icmp eq i64 %indvars.iv.next2149, 8, !dbg !1833
  %43 = load ptr, ptr %p.i, align 8, !dbg !1704, !tbaa !1646
  br i1 %exitcond2153.not, label %for.cond.cleanup, label %for.body, !dbg !1820, !llvm.loop !1834

for.cond.cleanup53:                               ; preds = %for.body54
  %add.ptr70 = getelementptr inbounds i8, ptr %56, i64 64, !dbg !1838
  %p_end = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 2, !dbg !1839
  %44 = load ptr, ptr %p_end, align 8, !dbg !1839, !tbaa !1840
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i64, !dbg !1841
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr70 to i64, !dbg !1841
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1841
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1842, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %add.ptr70, metadata !1847, metadata !DIExpression()) #7, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1848, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1850
  %45 = trunc i64 %sub.ptr.rhs.cast to i32, !dbg !1852
  %conv.i1268 = and i32 %45, 3, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %conv.i1268, metadata !1849, metadata !DIExpression()) #7, !dbg !1850
  %46 = zext i32 %conv.i1268 to i64
  %idx.neg.i = sub nsw i64 0, %46, !dbg !1853
  %add.ptr.i1269 = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.neg.i, !dbg !1853
  store ptr %add.ptr.i1269, ptr %bs, align 8, !dbg !1854, !tbaa !1648
  store ptr %add.ptr.i1269, ptr %p.i, align 8, !dbg !1855, !tbaa !1646
  %sext = shl i64 %sub.ptr.sub, 32, !dbg !1856
  %idx.ext1.i = ashr exact i64 %sext, 32, !dbg !1856
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr70, i64 %idx.ext1.i, !dbg !1856
  store ptr %add.ptr2.i, ptr %p_end, align 8, !dbg !1857, !tbaa !1840
  %.neg.i = mul nsw i32 %conv.i1268, -8, !dbg !1858
  %mul.i = add nsw i32 %.neg.i, 64, !dbg !1858
  store i32 %mul.i, ptr %i_left.i, align 8, !dbg !1859, !tbaa !1651
  %47 = load i32, ptr %add.ptr.i1269, align 4, !dbg !1860, !tbaa !1637
  call void @llvm.dbg.value(metadata i32 %47, metadata !1688, metadata !DIExpression()) #7, !dbg !1861
  %add5.i.i1272 = tail call i32 @llvm.bswap.i32(i32 %47) #7, !dbg !1863
  %conv6.i1273 = zext i32 %add5.i.i1272 to i64, !dbg !1864
  %mul8.i = add nsw i32 %.neg.i, 32, !dbg !1865
  %sh_prom.i = zext i32 %mul8.i to i64, !dbg !1866
  %shr.i = lshr i64 %conv6.i1273, %sh_prom.i, !dbg !1866
  store i64 %shr.i, ptr %cur_bits.i.i, align 8, !dbg !1866, !tbaa !1679
  store ptr %17, ptr %bs, align 8, !dbg !1867, !tbaa !1648
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1638, metadata !DIExpression()), !dbg !1868
  %sub.ptr.lhs.cast.i1276 = ptrtoint ptr %add.ptr.i1269 to i64, !dbg !1870
  %sub.ptr.rhs.cast.i1277 = ptrtoint ptr %17 to i64, !dbg !1870
  %sub.ptr.sub.i1278 = sub i64 %sub.ptr.lhs.cast.i1276, %sub.ptr.rhs.cast.i1277, !dbg !1870
  %sub.ptr.sub.tr.i1280 = trunc i64 %sub.ptr.sub.i1278 to i32, !dbg !1871
  %48 = shl i32 %sub.ptr.sub.tr.i1280, 3, !dbg !1871
  %49 = add i32 %.neg.i, %conv1.i1252, !dbg !1872
  %sub76 = sub i32 %48, %49, !dbg !1872
  %i_tex_bits = getelementptr inbounds %struct.anon.14, ptr %stat, i64 0, i32 1, !dbg !1873
  %50 = load i32, ptr %i_tex_bits, align 4, !dbg !1874, !tbaa !1875
  %add79 = add nsw i32 %sub76, %50, !dbg !1874
  store i32 %add79, ptr %i_tex_bits, align 4, !dbg !1874, !tbaa !1875
  br label %cleanup

for.body54:                                       ; preds = %for.body54, %for.cond.cleanup
  %51 = phi ptr [ %add.ptr48, %for.cond.cleanup ], [ %56, %for.body54 ], !dbg !1876
  %indvars.iv2154 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next2155, %for.body54 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2154, metadata !1524, metadata !DIExpression()), !dbg !1822
  %52 = shl nuw nsw i64 %indvars.iv2154, 3, !dbg !1878
  %add.ptr58 = getelementptr inbounds i8, ptr %51, i64 %52, !dbg !1879
  %53 = load ptr, ptr %arrayidx62, align 16, !dbg !1880, !tbaa !1816
  %54 = shl nuw nsw i64 %indvars.iv2154, 4, !dbg !1881
  %add.ptr65 = getelementptr inbounds i8, ptr %53, i64 %54, !dbg !1882
  %55 = load i64, ptr %add.ptr65, align 1, !dbg !1883
  store i64 %55, ptr %add.ptr58, align 1, !dbg !1883
  %indvars.iv.next2155 = add nuw nsw i64 %indvars.iv2154, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2155, metadata !1524, metadata !DIExpression()), !dbg !1822
  %exitcond2159.not = icmp eq i64 %indvars.iv.next2155, 8, !dbg !1885
  %56 = load ptr, ptr %p.i, align 8, !dbg !1704, !tbaa !1646
  br i1 %exitcond2159.not, label %for.cond.cleanup53, label %for.body54, !dbg !1823, !llvm.loop !1886

if.end80:                                         ; preds = %if.end
  %57 = icmp ult i32 %0, 2, !dbg !1888
  br i1 %57, label %if.then86, label %if.else125, !dbg !1888

if.then86:                                        ; preds = %if.end80
  %cmp84 = icmp eq i32 %0, 1
  %cond = select i1 %cmp84, i64 4, i64 1, !dbg !1889
  call void @llvm.dbg.value(metadata i32 undef, metadata !1526, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1710, metadata !DIExpression()) #7, !dbg !1891
  %add.i1282 = add nuw nsw i32 %conv, 1, !dbg !1893
  %idxprom.i12832061 = zext i32 %add.i1282 to i64, !dbg !1894
  %arrayidx.i1284 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i12832061, !dbg !1894
  %58 = load i8, ptr %arrayidx.i1284, align 1, !dbg !1894, !tbaa !1637
  %conv.i1285 = zext i8 %58 to i32, !dbg !1894
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %conv.i1285, metadata !1720, metadata !DIExpression()) #7, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %add.i1282, metadata !1721, metadata !DIExpression()) #7, !dbg !1895
  %cur_bits.i.i1286 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !1897
  %59 = load i64, ptr %cur_bits.i.i1286, align 8, !dbg !1897, !tbaa !1679
  %sh_prom.i.i1287 = zext i8 %58 to i64, !dbg !1898
  %shl.i.i1288 = shl i64 %59, %sh_prom.i.i1287, !dbg !1898
  %or.i.i1290 = or i64 %shl.i.i1288, %idxprom.i12832061, !dbg !1899
  store i64 %or.i.i1290, ptr %cur_bits.i.i1286, align 8, !dbg !1900, !tbaa !1679
  %sub.i.i1292 = sub nsw i32 %16, %conv.i1285, !dbg !1901
  store i32 %sub.i.i1292, ptr %i_left.i, align 8, !dbg !1901, !tbaa !1651
  %cmp.i.i1293 = icmp slt i32 %sub.i.i1292, 33, !dbg !1902
  br i1 %cmp.i.i1293, label %if.then.i.i1301, label %bs_write_ue.exit1302, !dbg !1903

if.then.i.i1301:                                  ; preds = %if.then86
  %sh_prom6.i.i1294 = zext i32 %sub.i.i1292 to i64, !dbg !1904
  %shl7.i.i1295 = shl i64 %or.i.i1290, %sh_prom6.i.i1294, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1295, metadata !1736, metadata !DIExpression()) #7, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1295, metadata !1743, metadata !DIExpression()) #7, !dbg !1907
  %add.i.i.i.i1296 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1295) #7, !dbg !1909
  %conv8.i.i1297 = trunc i64 %add.i.i.i.i1296 to i32, !dbg !1910
  store i32 %conv8.i.i1297, ptr %15, align 4, !dbg !1911, !tbaa !1637
  %60 = load i32, ptr %i_left.i, align 8, !dbg !1912, !tbaa !1651
  %add.i.i1299 = add nsw i32 %60, 32, !dbg !1912
  store i32 %add.i.i1299, ptr %i_left.i, align 8, !dbg !1912, !tbaa !1651
  %61 = load ptr, ptr %p.i, align 8, !dbg !1913, !tbaa !1646
  %add.ptr.i.i1300 = getelementptr inbounds i8, ptr %61, i64 4, !dbg !1913
  store ptr %add.ptr.i.i1300, ptr %p.i, align 8, !dbg !1913, !tbaa !1646
  br label %bs_write_ue.exit1302, !dbg !1914

bs_write_ue.exit1302:                             ; preds = %if.then86, %if.then.i.i1301
  %62 = phi ptr [ %15, %if.then86 ], [ %add.ptr.i.i1300, %if.then.i.i1301 ]
  %63 = phi i32 [ %sub.i.i1292, %if.then86 ], [ %add.i.i1299, %if.then.i.i1301 ]
  %pps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !1915
  %64 = load ptr, ptr %pps, align 16, !dbg !1915, !tbaa !1917
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, ptr %64, i64 0, i32 15, !dbg !1918
  %65 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !1918, !tbaa !1919
  %tobool90.not = icmp eq i32 %65, 0, !dbg !1921
  br i1 %tobool90.not, label %if.end93, label %if.then91, !dbg !1922

if.then91:                                        ; preds = %bs_write_ue.exit1302
  %b_transform_8x8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !1923
  %66 = load i32, ptr %b_transform_8x8, align 4, !dbg !1923, !tbaa !1924
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !1925
  call void @llvm.dbg.value(metadata i32 %66, metadata !1674, metadata !DIExpression()) #7, !dbg !1925
  %67 = load i64, ptr %cur_bits.i.i1286, align 8, !dbg !1927, !tbaa !1679
  %shl.i1304 = shl i64 %67, 1, !dbg !1927
  %conv.i1305 = zext i32 %66 to i64, !dbg !1928
  %or.i1306 = or i64 %shl.i1304, %conv.i1305, !dbg !1929
  store i64 %or.i1306, ptr %cur_bits.i.i1286, align 8, !dbg !1929, !tbaa !1679
  %dec.i1308 = add nsw i32 %63, -1, !dbg !1930
  store i32 %dec.i1308, ptr %i_left.i, align 8, !dbg !1930, !tbaa !1651
  %cmp.i1309 = icmp eq i32 %dec.i1308, 32, !dbg !1931
  br i1 %cmp.i1309, label %if.then.i1314, label %if.end93, !dbg !1932

if.then.i1314:                                    ; preds = %if.then91
  %conv6.i1310 = trunc i64 %or.i1306 to i32, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %conv6.i1310, metadata !1688, metadata !DIExpression()) #7, !dbg !1934
  %add5.i.i1311 = tail call i32 @llvm.bswap.i32(i32 %conv6.i1310) #7, !dbg !1936
  store i32 %add5.i.i1311, ptr %62, align 4, !dbg !1937, !tbaa !1637
  %68 = load ptr, ptr %p.i, align 8, !dbg !1938, !tbaa !1646
  %add.ptr.i1313 = getelementptr inbounds i8, ptr %68, i64 4, !dbg !1938
  store ptr %add.ptr.i1313, ptr %p.i, align 8, !dbg !1938, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !1939, !tbaa !1651
  br label %if.end93, !dbg !1940

if.end93:                                         ; preds = %if.then.i1314, %if.then91, %bs_write_ue.exit1302
  %69 = phi ptr [ %add.ptr.i1313, %if.then.i1314 ], [ %62, %if.then91 ], [ %62, %bs_write_ue.exit1302 ]
  %70 = phi i32 [ 64, %if.then.i1314 ], [ %dec.i1308, %if.then91 ], [ %63, %bs_write_ue.exit1302 ]
  call void @llvm.dbg.value(metadata i32 0, metadata !1529, metadata !DIExpression()), !dbg !1941
  %cache.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67
  call void @llvm.dbg.value(metadata i32 0, metadata !1529, metadata !DIExpression()), !dbg !1941
  br label %for.body99, !dbg !1942

for.cond.cleanup98:                               ; preds = %if.end117
  %i_chroma_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 60, !dbg !1943
  %71 = load i32, ptr %i_chroma_pred_mode, align 4, !dbg !1943, !tbaa !1944
  %idxprom122 = sext i32 %71 to i64, !dbg !1945
  %arrayidx123 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom122, !dbg !1945
  %72 = load i8, ptr %arrayidx123, align 1, !dbg !1945, !tbaa !1637
  %conv124 = zext i8 %72 to i64, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !1946
  call void @llvm.dbg.value(metadata i8 %72, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1946
  %add.i1316 = add nuw nsw i64 %conv124, 1, !dbg !1948
  %arrayidx.i1318 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1316, !dbg !1949
  %73 = load i8, ptr %arrayidx.i1318, align 1, !dbg !1949, !tbaa !1637
  %conv.i1319 = zext i8 %73 to i32, !dbg !1949
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !1950
  call void @llvm.dbg.value(metadata i32 %conv.i1319, metadata !1720, metadata !DIExpression()) #7, !dbg !1950
  call void @llvm.dbg.value(metadata i64 %add.i1316, metadata !1721, metadata !DIExpression()) #7, !dbg !1950
  %74 = load i64, ptr %cur_bits.i.i1286, align 8, !dbg !1952, !tbaa !1679
  %sh_prom.i.i1321 = zext i8 %73 to i64, !dbg !1953
  %shl.i.i1322 = shl i64 %74, %sh_prom.i.i1321, !dbg !1953
  %or.i.i1324 = or i64 %shl.i.i1322, %add.i1316, !dbg !1954
  store i64 %or.i.i1324, ptr %cur_bits.i.i1286, align 8, !dbg !1955, !tbaa !1679
  %sub.i.i1326 = sub nsw i32 %93, %conv.i1319, !dbg !1956
  store i32 %sub.i.i1326, ptr %i_left.i, align 8, !dbg !1956, !tbaa !1651
  %cmp.i.i1327 = icmp slt i32 %sub.i.i1326, 33, !dbg !1957
  br i1 %cmp.i.i1327, label %if.then.i.i1335, label %if.end697, !dbg !1958

if.then.i.i1335:                                  ; preds = %for.cond.cleanup98
  %sh_prom6.i.i1328 = zext i32 %sub.i.i1326 to i64, !dbg !1959
  %shl7.i.i1329 = shl i64 %or.i.i1324, %sh_prom6.i.i1328, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1329, metadata !1736, metadata !DIExpression()) #7, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1329, metadata !1743, metadata !DIExpression()) #7, !dbg !1962
  %add.i.i.i.i1330 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1329) #7, !dbg !1964
  %conv8.i.i1331 = trunc i64 %add.i.i.i.i1330 to i32, !dbg !1965
  store i32 %conv8.i.i1331, ptr %92, align 4, !dbg !1966, !tbaa !1637
  %75 = load i32, ptr %i_left.i, align 8, !dbg !1967, !tbaa !1651
  %add.i.i1333 = add nsw i32 %75, 32, !dbg !1967
  store i32 %add.i.i1333, ptr %i_left.i, align 8, !dbg !1967, !tbaa !1651
  %76 = load ptr, ptr %p.i, align 8, !dbg !1968, !tbaa !1646
  %add.ptr.i.i1334 = getelementptr inbounds i8, ptr %76, i64 4, !dbg !1968
  store ptr %add.ptr.i.i1334, ptr %p.i, align 8, !dbg !1968, !tbaa !1646
  br label %if.end697, !dbg !1969

for.body99:                                       ; preds = %if.end93, %if.end117
  %77 = phi ptr [ %69, %if.end93 ], [ %92, %if.end117 ]
  %78 = phi i32 [ %70, %if.end93 ], [ %93, %if.end117 ]
  %indvars.iv2137 = phi i64 [ 0, %if.end93 ], [ %indvars.iv.next2138, %if.end117 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2137, metadata !1529, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %h, metadata !1970, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %indvars.iv2137, metadata !1975, metadata !DIExpression()) #7, !dbg !1979
  %arrayidx.i1338 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2137, !dbg !1981
  %79 = load i32, ptr %arrayidx.i1338, align 4, !dbg !1981, !tbaa !1982
  %sub.i = add nsw i32 %79, -1, !dbg !1983
  %idxprom1.i = sext i32 %sub.i to i64, !dbg !1984
  %arrayidx2.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom1.i, !dbg !1984
  %80 = load i8, ptr %arrayidx2.i, align 1, !dbg !1984, !tbaa !1637
  %conv.i1339 = sext i8 %80 to i64, !dbg !1984
  call void @llvm.dbg.value(metadata i8 %80, metadata !1976, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1979
  %sub9.i = add nsw i32 %79, -8, !dbg !1985
  %idxprom10.i = sext i32 %sub9.i to i64, !dbg !1986
  %arrayidx11.i = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom10.i, !dbg !1986
  %81 = load i8, ptr %arrayidx11.i, align 1, !dbg !1986, !tbaa !1637
  %conv12.i = sext i8 %81 to i64, !dbg !1986
  call void @llvm.dbg.value(metadata i8 %81, metadata !1977, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1979
  %add.i1340 = add nsw i64 %conv.i1339, 1, !dbg !1987
  %arrayidx14.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add.i1340, !dbg !1987
  %82 = load i8, ptr %arrayidx14.i, align 1, !dbg !1987, !tbaa !1637
  %add16.i = add nsw i64 %conv12.i, 1, !dbg !1987
  %arrayidx18.i = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add16.i, !dbg !1987
  %83 = load i8, ptr %arrayidx18.i, align 1, !dbg !1987, !tbaa !1637
  %84 = tail call i8 @llvm.smin.i8(i8 %82, i8 %83) #7, !dbg !1987
  call void @llvm.dbg.value(metadata i8 %84, metadata !1978, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1979
  %cmp29.i = icmp slt i8 %84, 0, !dbg !1988
  %narrow.i = select i1 %cmp29.i, i8 2, i8 %84, !dbg !1990
  %spec.select38.i = zext i8 %narrow.i to i32, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %spec.select38.i, metadata !1531, metadata !DIExpression()), !dbg !1991
  %idxprom104 = sext i32 %79 to i64, !dbg !1992
  %arrayidx105 = getelementptr inbounds [40 x i8], ptr %cache.i, i64 0, i64 %idxprom104, !dbg !1992
  %85 = load i8, ptr %arrayidx105, align 1, !dbg !1992, !tbaa !1637
  %conv106 = sext i8 %85 to i64, !dbg !1992
  %add107 = add nsw i64 %conv106, 1, !dbg !1992
  %arrayidx109 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %add107, !dbg !1992
  %86 = load i8, ptr %arrayidx109, align 1, !dbg !1992, !tbaa !1637
  %conv110 = sext i8 %86 to i32, !dbg !1992
  call void @llvm.dbg.value(metadata i32 %conv110, metadata !1534, metadata !DIExpression()), !dbg !1991
  %cmp111 = icmp eq i32 %spec.select38.i, %conv110, !dbg !1993
  br i1 %cmp111, label %if.then113, label %if.else, !dbg !1995

if.then113:                                       ; preds = %for.body99
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !1996
  call void @llvm.dbg.value(metadata i32 1, metadata !1674, metadata !DIExpression()) #7, !dbg !1996
  %87 = load i64, ptr %cur_bits.i.i1286, align 8, !dbg !1998, !tbaa !1679
  %shl.i1342 = shl i64 %87, 1, !dbg !1998
  %or.i1343 = or i64 %shl.i1342, 1, !dbg !1999
  store i64 %or.i1343, ptr %cur_bits.i.i1286, align 8, !dbg !1999, !tbaa !1679
  %dec.i1345 = add nsw i32 %78, -1, !dbg !2000
  store i32 %dec.i1345, ptr %i_left.i, align 8, !dbg !2000, !tbaa !1651
  %cmp.i1346 = icmp eq i32 %dec.i1345, 32, !dbg !2001
  br i1 %cmp.i1346, label %if.then.i1351, label %if.end117, !dbg !2002

if.then.i1351:                                    ; preds = %if.then113
  %conv6.i1347 = trunc i64 %or.i1343 to i32, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %conv6.i1347, metadata !1688, metadata !DIExpression()) #7, !dbg !2004
  %add5.i.i1348 = tail call i32 @llvm.bswap.i32(i32 %conv6.i1347) #7, !dbg !2006
  store i32 %add5.i.i1348, ptr %77, align 4, !dbg !2007, !tbaa !1637
  %88 = load ptr, ptr %p.i, align 8, !dbg !2008, !tbaa !1646
  %add.ptr.i1350 = getelementptr inbounds i8, ptr %88, i64 4, !dbg !2008
  store ptr %add.ptr.i1350, ptr %p.i, align 8, !dbg !2008, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2009, !tbaa !1651
  br label %if.end117, !dbg !2010

if.else:                                          ; preds = %for.body99
  %cmp114 = icmp slt i32 %spec.select38.i, %conv110, !dbg !2011
  %conv115.neg = sext i1 %cmp114 to i32, !dbg !2011
  %sub116 = add nsw i32 %conv115.neg, %conv110, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 4, metadata !1720, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %sub116, metadata !1721, metadata !DIExpression()) #7, !dbg !2013
  %89 = load i64, ptr %cur_bits.i.i1286, align 8, !dbg !2015, !tbaa !1679
  %shl.i1354 = shl i64 %89, 4, !dbg !2016
  %conv.i1355 = zext i32 %sub116 to i64, !dbg !2017
  %or.i1356 = or i64 %shl.i1354, %conv.i1355, !dbg !2018
  store i64 %or.i1356, ptr %cur_bits.i.i1286, align 8, !dbg !2019, !tbaa !1679
  %sub.i1358 = add nsw i32 %78, -4, !dbg !2020
  store i32 %sub.i1358, ptr %i_left.i, align 8, !dbg !2020, !tbaa !1651
  %cmp.i1359 = icmp slt i32 %78, 37, !dbg !2021
  br i1 %cmp.i1359, label %if.then.i1363, label %if.end117, !dbg !2022

if.then.i1363:                                    ; preds = %if.else
  %sh_prom6.i = zext i32 %sub.i1358 to i64, !dbg !2023
  %shl7.i = shl i64 %or.i1356, %sh_prom6.i, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1736, metadata !DIExpression()) #7, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1743, metadata !DIExpression()) #7, !dbg !2026
  %add.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i) #7, !dbg !2028
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !2029
  store i32 %conv8.i, ptr %77, align 4, !dbg !2030, !tbaa !1637
  %90 = load i32, ptr %i_left.i, align 8, !dbg !2031, !tbaa !1651
  %add.i1361 = add nsw i32 %90, 32, !dbg !2031
  store i32 %add.i1361, ptr %i_left.i, align 8, !dbg !2031, !tbaa !1651
  %91 = load ptr, ptr %p.i, align 8, !dbg !2032, !tbaa !1646
  %add.ptr.i1362 = getelementptr inbounds i8, ptr %91, i64 4, !dbg !2032
  store ptr %add.ptr.i1362, ptr %p.i, align 8, !dbg !2032, !tbaa !1646
  br label %if.end117, !dbg !2033

if.end117:                                        ; preds = %if.then.i1363, %if.else, %if.then.i1351, %if.then113
  %92 = phi ptr [ %add.ptr.i1362, %if.then.i1363 ], [ %77, %if.else ], [ %add.ptr.i1350, %if.then.i1351 ], [ %77, %if.then113 ]
  %93 = phi i32 [ %add.i1361, %if.then.i1363 ], [ %sub.i1358, %if.else ], [ 64, %if.then.i1351 ], [ %dec.i1345, %if.then113 ]
  %indvars.iv.next2138 = add nuw nsw i64 %indvars.iv2137, %cond, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2138, metadata !1529, metadata !DIExpression()), !dbg !1941
  %cmp96 = icmp ult i64 %indvars.iv.next2138, 16, !dbg !2035
  br i1 %cmp96, label %for.body99, label %for.cond.cleanup98, !dbg !1942, !llvm.loop !2036

if.else125:                                       ; preds = %if.end80
  switch i32 %0, label %if.then515 [
    i32 2, label %if.then128
    i32 4, label %if.then151
    i32 5, label %if.then256
    i32 17, label %if.then375
    i32 7, label %if.else691
  ], !dbg !2038

if.then128:                                       ; preds = %if.else125
  %i_intra16x16_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 59, !dbg !2039
  %94 = load i32, ptr %i_intra16x16_pred_mode, align 16, !dbg !2039, !tbaa !2041
  %idxprom131 = sext i32 %94 to i64, !dbg !2042
  %arrayidx132 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %idxprom131, !dbg !2042
  %95 = load i8, ptr %arrayidx132, align 1, !dbg !2042, !tbaa !1637
  %conv133 = zext i8 %95 to i32, !dbg !2042
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !2043
  %96 = load i32, ptr %i_cbp_chroma, align 4, !dbg !2043, !tbaa !2044
  %mul136 = shl nsw i32 %96, 2, !dbg !2045
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !2046
  %97 = load i32, ptr %i_cbp_luma, align 8, !dbg !2046, !tbaa !2047
  %cmp139 = icmp eq i32 %97, 0, !dbg !2048
  %cond141 = select i1 %cmp139, i32 0, i32 12, !dbg !2049
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2050
  call void @llvm.dbg.value(metadata i32 undef, metadata !1710, metadata !DIExpression()) #7, !dbg !2050
  %add134 = add nuw nsw i32 %conv, 2, !dbg !2052
  %add137 = add nuw nsw i32 %add134, %conv133, !dbg !2053
  %add142 = add i32 %add137, %mul136, !dbg !2054
  %add.i1364 = add i32 %add142, %cond141, !dbg !2055
  %idxprom.i1365 = sext i32 %add.i1364 to i64, !dbg !2056
  %arrayidx.i1366 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i1365, !dbg !2056
  %98 = load i8, ptr %arrayidx.i1366, align 1, !dbg !2056, !tbaa !1637
  %conv.i1367 = zext i8 %98 to i32, !dbg !2056
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %conv.i1367, metadata !1720, metadata !DIExpression()) #7, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %add.i1364, metadata !1721, metadata !DIExpression()) #7, !dbg !2057
  %cur_bits.i.i1368 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2059
  %99 = load i64, ptr %cur_bits.i.i1368, align 8, !dbg !2059, !tbaa !1679
  %sh_prom.i.i1369 = zext i8 %98 to i64, !dbg !2060
  %shl.i.i1370 = shl i64 %99, %sh_prom.i.i1369, !dbg !2060
  %conv.i.i1371 = zext i32 %add.i1364 to i64, !dbg !2061
  %or.i.i1372 = or i64 %shl.i.i1370, %conv.i.i1371, !dbg !2062
  store i64 %or.i.i1372, ptr %cur_bits.i.i1368, align 8, !dbg !2063, !tbaa !1679
  %sub.i.i1374 = sub nsw i32 %16, %conv.i1367, !dbg !2064
  store i32 %sub.i.i1374, ptr %i_left.i, align 8, !dbg !2064, !tbaa !1651
  %cmp.i.i1375 = icmp slt i32 %sub.i.i1374, 33, !dbg !2065
  br i1 %cmp.i.i1375, label %if.then.i.i1383, label %bs_write_ue.exit1384, !dbg !2066

if.then.i.i1383:                                  ; preds = %if.then128
  %sh_prom6.i.i1376 = zext i32 %sub.i.i1374 to i64, !dbg !2067
  %shl7.i.i1377 = shl i64 %or.i.i1372, %sh_prom6.i.i1376, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1377, metadata !1736, metadata !DIExpression()) #7, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1377, metadata !1743, metadata !DIExpression()) #7, !dbg !2070
  %add.i.i.i.i1378 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1377) #7, !dbg !2072
  %conv8.i.i1379 = trunc i64 %add.i.i.i.i1378 to i32, !dbg !2073
  store i32 %conv8.i.i1379, ptr %15, align 4, !dbg !2074, !tbaa !1637
  %100 = load i32, ptr %i_left.i, align 8, !dbg !2075, !tbaa !1651
  %add.i.i1381 = add nsw i32 %100, 32, !dbg !2075
  %101 = load ptr, ptr %p.i, align 8, !dbg !2076, !tbaa !1646
  %add.ptr.i.i1382 = getelementptr inbounds i8, ptr %101, i64 4, !dbg !2076
  store ptr %add.ptr.i.i1382, ptr %p.i, align 8, !dbg !2076, !tbaa !1646
  %.pre2160 = load i64, ptr %cur_bits.i.i1368, align 8, !dbg !2077, !tbaa !1679
  br label %bs_write_ue.exit1384, !dbg !2080

bs_write_ue.exit1384:                             ; preds = %if.then128, %if.then.i.i1383
  %102 = phi ptr [ %15, %if.then128 ], [ %add.ptr.i.i1382, %if.then.i.i1383 ]
  %103 = phi i32 [ %sub.i.i1374, %if.then128 ], [ %add.i.i1381, %if.then.i.i1383 ], !dbg !2081
  %104 = phi i64 [ %or.i.i1372, %if.then128 ], [ %.pre2160, %if.then.i.i1383 ], !dbg !2077
  %i_chroma_pred_mode144 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 60, !dbg !2082
  %105 = load i32, ptr %i_chroma_pred_mode144, align 4, !dbg !2082, !tbaa !1944
  %idxprom145 = sext i32 %105 to i64, !dbg !2083
  %arrayidx146 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom145, !dbg !2083
  %106 = load i8, ptr %arrayidx146, align 1, !dbg !2083, !tbaa !1637
  %conv147 = zext i8 %106 to i64, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2084
  call void @llvm.dbg.value(metadata i8 %106, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2084
  %add.i1385 = add nuw nsw i64 %conv147, 1, !dbg !2085
  %arrayidx.i1387 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1385, !dbg !2086
  %107 = load i8, ptr %arrayidx.i1387, align 1, !dbg !2086, !tbaa !1637
  %conv.i1388 = zext i8 %107 to i32, !dbg !2086
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %conv.i1388, metadata !1720, metadata !DIExpression()) #7, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %add.i1385, metadata !1721, metadata !DIExpression()) #7, !dbg !2087
  %sh_prom.i.i1390 = zext i8 %107 to i64, !dbg !2088
  %shl.i.i1391 = shl i64 %104, %sh_prom.i.i1390, !dbg !2088
  %or.i.i1393 = or i64 %shl.i.i1391, %add.i1385, !dbg !2089
  store i64 %or.i.i1393, ptr %cur_bits.i.i1368, align 8, !dbg !2090, !tbaa !1679
  %sub.i.i1395 = sub nsw i32 %103, %conv.i1388, !dbg !2081
  store i32 %sub.i.i1395, ptr %i_left.i, align 8, !dbg !2081, !tbaa !1651
  %cmp.i.i1396 = icmp slt i32 %sub.i.i1395, 33, !dbg !2091
  br i1 %cmp.i.i1396, label %if.then.i.i1404, label %if.end697, !dbg !2092

if.then.i.i1404:                                  ; preds = %bs_write_ue.exit1384
  %sh_prom6.i.i1397 = zext i32 %sub.i.i1395 to i64, !dbg !2093
  %shl7.i.i1398 = shl i64 %or.i.i1393, %sh_prom6.i.i1397, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1398, metadata !1736, metadata !DIExpression()) #7, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1398, metadata !1743, metadata !DIExpression()) #7, !dbg !2096
  %add.i.i.i.i1399 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1398) #7, !dbg !2098
  %conv8.i.i1400 = trunc i64 %add.i.i.i.i1399 to i32, !dbg !2099
  store i32 %conv8.i.i1400, ptr %102, align 4, !dbg !2100, !tbaa !1637
  %108 = load i32, ptr %i_left.i, align 8, !dbg !2101, !tbaa !1651
  %add.i.i1402 = add nsw i32 %108, 32, !dbg !2101
  store i32 %add.i.i1402, ptr %i_left.i, align 8, !dbg !2101, !tbaa !1651
  %109 = load ptr, ptr %p.i, align 8, !dbg !2102, !tbaa !1646
  %add.ptr.i.i1403 = getelementptr inbounds i8, ptr %109, i64 4, !dbg !2102
  store ptr %add.ptr.i.i1403, ptr %p.i, align 8, !dbg !2102, !tbaa !1646
  br label %if.end697, !dbg !2103

if.then151:                                       ; preds = %if.else125
  %i_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !2104
  %110 = load i32, ptr %i_partition, align 4, !dbg !2104, !tbaa !2107
  switch i32 %110, label %if.end697 [
    i32 16, label %if.then155
    i32 14, label %if.then179
    i32 15, label %if.then217
  ], !dbg !2108

if.then155:                                       ; preds = %if.then151
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2109
  call void @llvm.dbg.value(metadata i32 1, metadata !1674, metadata !DIExpression()) #7, !dbg !2109
  %cur_bits.i1406 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2112
  %111 = load i64, ptr %cur_bits.i1406, align 8, !dbg !2113, !tbaa !1679
  %shl.i1407 = shl i64 %111, 1, !dbg !2113
  %or.i1408 = or i64 %shl.i1407, 1, !dbg !2114
  store i64 %or.i1408, ptr %cur_bits.i1406, align 8, !dbg !2114, !tbaa !1679
  %dec.i1410 = add nsw i32 %16, -1, !dbg !2115
  store i32 %dec.i1410, ptr %i_left.i, align 8, !dbg !2115, !tbaa !1651
  %cmp.i1411 = icmp eq i32 %dec.i1410, 32, !dbg !2116
  br i1 %cmp.i1411, label %if.then.i1416, label %bs_write1.exit1417, !dbg !2117

if.then.i1416:                                    ; preds = %if.then155
  %conv6.i1412 = trunc i64 %or.i1408 to i32, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %conv6.i1412, metadata !1688, metadata !DIExpression()) #7, !dbg !2119
  %add5.i.i1413 = tail call i32 @llvm.bswap.i32(i32 %conv6.i1412) #7, !dbg !2121
  store i32 %add5.i.i1413, ptr %15, align 4, !dbg !2122, !tbaa !1637
  %112 = load ptr, ptr %p.i, align 8, !dbg !2123, !tbaa !1646
  %add.ptr.i1415 = getelementptr inbounds i8, ptr %112, i64 4, !dbg !2123
  store ptr %add.ptr.i1415, ptr %p.i, align 8, !dbg !2123, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2124, !tbaa !1651
  br label %bs_write1.exit1417, !dbg !2125

bs_write1.exit1417:                               ; preds = %if.then155, %if.then.i1416
  %i_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2126
  %113 = load i32, ptr %i_fref, align 8, !dbg !2128, !tbaa !1982
  %cmp159 = icmp sgt i32 %113, 1, !dbg !2129
  br i1 %cmp159, label %if.then161, label %if.end173, !dbg !2130

if.then161:                                       ; preds = %bs_write1.exit1417
  %sub166 = add nsw i32 %113, -1, !dbg !2131
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2132
  %arrayidx171 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 12, !dbg !2133
  %114 = load i8, ptr %arrayidx171, align 1, !dbg !2133, !tbaa !1637
  %conv172 = sext i8 %114 to i32, !dbg !2133
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub166, i32 noundef %conv172), !dbg !2134
  br label %if.end173, !dbg !2134

if.end173:                                        ; preds = %if.then161, %bs_write1.exit1417
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2135
  br label %if.end697, !dbg !2136

if.then179:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 1), !dbg !2137
  %i_fref182 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2140
  %115 = load i32, ptr %i_fref182, align 8, !dbg !2142, !tbaa !1982
  %cmp184 = icmp sgt i32 %115, 1, !dbg !2143
  br i1 %cmp184, label %if.then186, label %if.end211, !dbg !2144

if.then186:                                       ; preds = %if.then179
  %sub191 = add nsw i32 %115, -1, !dbg !2145
  %ref194 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2147
  %arrayidx197 = getelementptr inbounds [40 x i8], ptr %ref194, i64 0, i64 12, !dbg !2148
  %116 = load i8, ptr %arrayidx197, align 1, !dbg !2148, !tbaa !1637
  %conv198 = sext i8 %116 to i32, !dbg !2148
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub191, i32 noundef %conv198), !dbg !2149
  %117 = load i32, ptr %i_fref182, align 8, !dbg !2150, !tbaa !1982
  %sub203 = add nsw i32 %117, -1, !dbg !2151
  %arrayidx209 = getelementptr inbounds [40 x i8], ptr %ref194, i64 0, i64 28, !dbg !2152
  %118 = load i8, ptr %arrayidx209, align 1, !dbg !2152, !tbaa !1637
  %conv210 = sext i8 %118 to i32, !dbg !2152
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub203, i32 noundef %conv210), !dbg !2153
  br label %if.end211, !dbg !2154

if.end211:                                        ; preds = %if.then186, %if.then179
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2155
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4), !dbg !2156
  br label %if.end697, !dbg !2157

if.then217:                                       ; preds = %if.then151
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 2), !dbg !2158
  %i_fref220 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2161
  %119 = load i32, ptr %i_fref220, align 8, !dbg !2163, !tbaa !1982
  %cmp222 = icmp sgt i32 %119, 1, !dbg !2164
  br i1 %cmp222, label %if.then224, label %if.end249, !dbg !2165

if.then224:                                       ; preds = %if.then217
  %sub229 = add nsw i32 %119, -1, !dbg !2166
  %ref232 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2168
  %arrayidx235 = getelementptr inbounds [40 x i8], ptr %ref232, i64 0, i64 12, !dbg !2169
  %120 = load i8, ptr %arrayidx235, align 1, !dbg !2169, !tbaa !1637
  %conv236 = sext i8 %120 to i32, !dbg !2169
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub229, i32 noundef %conv236), !dbg !2170
  %121 = load i32, ptr %i_fref220, align 8, !dbg !2171, !tbaa !1982
  %sub241 = add nsw i32 %121, -1, !dbg !2172
  %arrayidx247 = getelementptr inbounds [40 x i8], ptr %ref232, i64 0, i64 14, !dbg !2173
  %122 = load i8, ptr %arrayidx247, align 1, !dbg !2173, !tbaa !1637
  %conv248 = sext i8 %122 to i32, !dbg !2173
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub241, i32 noundef %conv248), !dbg !2174
  br label %if.end249, !dbg !2175

if.end249:                                        ; preds = %if.then224, %if.then217
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2176
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2177
  br label %if.end697, !dbg !2178

if.then256:                                       ; preds = %if.else125
  %ref259 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2179
  %arrayidx262 = getelementptr inbounds [40 x i8], ptr %ref259, i64 0, i64 12, !dbg !2181
  %123 = load i8, ptr %arrayidx262, align 1, !dbg !2181, !tbaa !1637
  %arrayidx269 = getelementptr inbounds [40 x i8], ptr %ref259, i64 0, i64 14, !dbg !2182
  %124 = load i8, ptr %arrayidx269, align 1, !dbg !2182, !tbaa !1637
  %or1240 = or i8 %124, %123, !dbg !2183
  %arrayidx276 = getelementptr inbounds [40 x i8], ptr %ref259, i64 0, i64 28, !dbg !2184
  %125 = load i8, ptr %arrayidx276, align 1, !dbg !2184, !tbaa !1637
  %or2781241 = or i8 %or1240, %125, !dbg !2185
  %arrayidx284 = getelementptr inbounds [40 x i8], ptr %ref259, i64 0, i64 30, !dbg !2186
  %126 = load i8, ptr %arrayidx284, align 1, !dbg !2186, !tbaa !1637
  %or2861242 = or i8 %or2781241, %126, !dbg !2187
  %cmp287 = icmp eq i8 %or2861242, 0, !dbg !2188
  br i1 %cmp287, label %if.then289, label %if.else290, !dbg !2189

if.then289:                                       ; preds = %if.then256
  tail call fastcc void @bs_write_ue(ptr noundef nonnull %bs, i32 noundef 4), !dbg !2190
  call void @llvm.dbg.value(metadata i32 0, metadata !1535, metadata !DIExpression()), !dbg !2192
  br label %if.end291, !dbg !2193

if.else290:                                       ; preds = %if.then256
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2194
  call void @llvm.dbg.value(metadata i32 3, metadata !1710, metadata !DIExpression()) #7, !dbg !2194
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2197
  call void @llvm.dbg.value(metadata i32 5, metadata !1720, metadata !DIExpression()) #7, !dbg !2197
  call void @llvm.dbg.value(metadata i32 4, metadata !1721, metadata !DIExpression()) #7, !dbg !2197
  %cur_bits.i.i1418 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2199
  %127 = load i64, ptr %cur_bits.i.i1418, align 8, !dbg !2199, !tbaa !1679
  %shl.i.i1419 = shl i64 %127, 5, !dbg !2200
  %or.i.i1420 = or i64 %shl.i.i1419, 4, !dbg !2201
  store i64 %or.i.i1420, ptr %cur_bits.i.i1418, align 8, !dbg !2202, !tbaa !1679
  %sub.i.i1422 = add nsw i32 %16, -5, !dbg !2203
  store i32 %sub.i.i1422, ptr %i_left.i, align 8, !dbg !2203, !tbaa !1651
  %cmp.i.i1423 = icmp slt i32 %16, 38, !dbg !2204
  br i1 %cmp.i.i1423, label %if.then.i.i1431, label %if.end291, !dbg !2205

if.then.i.i1431:                                  ; preds = %if.else290
  %sh_prom6.i.i1424 = zext i32 %sub.i.i1422 to i64, !dbg !2206
  %shl7.i.i1425 = shl i64 %or.i.i1420, %sh_prom6.i.i1424, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1425, metadata !1736, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1425, metadata !1743, metadata !DIExpression()) #7, !dbg !2209
  %add.i.i.i.i1426 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1425) #7, !dbg !2211
  %conv8.i.i1427 = trunc i64 %add.i.i.i.i1426 to i32, !dbg !2212
  store i32 %conv8.i.i1427, ptr %15, align 4, !dbg !2213, !tbaa !1637
  %128 = load i32, ptr %i_left.i, align 8, !dbg !2214, !tbaa !1651
  %add.i.i1429 = add nsw i32 %128, 32, !dbg !2214
  store i32 %add.i.i1429, ptr %i_left.i, align 8, !dbg !2214, !tbaa !1651
  %129 = load ptr, ptr %p.i, align 8, !dbg !2215, !tbaa !1646
  %add.ptr.i.i1430 = getelementptr inbounds i8, ptr %129, i64 4, !dbg !2215
  store ptr %add.ptr.i.i1430, ptr %p.i, align 8, !dbg !2215, !tbaa !1646
  br label %if.end291, !dbg !2216

if.end291:                                        ; preds = %if.then.i.i1431, %if.else290, %if.then289
  call void @llvm.dbg.value(metadata i32 undef, metadata !1535, metadata !DIExpression()), !dbg !2192
  %inter = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 1, !dbg !2217
  %130 = load i32, ptr %inter, align 4, !dbg !2217, !tbaa !2218
  %and292 = and i32 %130, 32, !dbg !2219
  %tobool293.not = icmp eq i32 %and292, 0, !dbg !2219
  %cur_bits.i1454 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3
  br i1 %tobool293.not, label %if.else310, label %for.cond296.preheader, !dbg !2220

for.cond296.preheader:                            ; preds = %if.end291
  call void @llvm.dbg.value(metadata i32 0, metadata !1540, metadata !DIExpression()), !dbg !2221
  %.pre = load i32, ptr %i_left.i, align 8, !dbg !2222, !tbaa !1651
  br label %for.body300, !dbg !2226

for.body300:                                      ; preds = %for.cond296.preheader, %bs_write_ue.exit1453
  %131 = phi i32 [ %.pre, %for.cond296.preheader ], [ %139, %bs_write_ue.exit1453 ], !dbg !2222
  %indvars.iv2120 = phi i64 [ 0, %for.cond296.preheader ], [ %indvars.iv.next2121, %bs_write_ue.exit1453 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2120, metadata !1540, metadata !DIExpression()), !dbg !2221
  %arrayidx303 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2120, !dbg !2227
  %132 = load i8, ptr %arrayidx303, align 1, !dbg !2227, !tbaa !1637
  %idxprom304 = zext i8 %132 to i64, !dbg !2228
  %arrayidx305 = getelementptr inbounds [4 x i8], ptr @sub_mb_type_p_to_golomb, i64 0, i64 %idxprom304, !dbg !2228
  %133 = load i8, ptr %arrayidx305, align 1, !dbg !2228, !tbaa !1637
  %conv306 = zext i8 %133 to i64, !dbg !2228
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2229
  call void @llvm.dbg.value(metadata i8 %133, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2229
  %add.i1433 = add nuw nsw i64 %conv306, 1, !dbg !2230
  %arrayidx.i1435 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1433, !dbg !2231
  %134 = load i8, ptr %arrayidx.i1435, align 1, !dbg !2231, !tbaa !1637
  %conv.i1436 = zext i8 %134 to i32, !dbg !2231
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %conv.i1436, metadata !1720, metadata !DIExpression()) #7, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %add.i1433, metadata !1721, metadata !DIExpression()) #7, !dbg !2232
  %135 = load i64, ptr %cur_bits.i1454, align 8, !dbg !2233, !tbaa !1679
  %sh_prom.i.i1438 = zext i8 %134 to i64, !dbg !2234
  %shl.i.i1439 = shl i64 %135, %sh_prom.i.i1438, !dbg !2234
  %or.i.i1441 = or i64 %shl.i.i1439, %add.i1433, !dbg !2235
  store i64 %or.i.i1441, ptr %cur_bits.i1454, align 8, !dbg !2236, !tbaa !1679
  %sub.i.i1443 = sub nsw i32 %131, %conv.i1436, !dbg !2222
  store i32 %sub.i.i1443, ptr %i_left.i, align 8, !dbg !2222, !tbaa !1651
  %cmp.i.i1444 = icmp slt i32 %sub.i.i1443, 33, !dbg !2237
  br i1 %cmp.i.i1444, label %if.then.i.i1452, label %bs_write_ue.exit1453, !dbg !2238

if.then.i.i1452:                                  ; preds = %for.body300
  %sh_prom6.i.i1445 = zext i32 %sub.i.i1443 to i64, !dbg !2239
  %shl7.i.i1446 = shl i64 %or.i.i1441, %sh_prom6.i.i1445, !dbg !2239
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1446, metadata !1736, metadata !DIExpression()) #7, !dbg !2240
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1446, metadata !1743, metadata !DIExpression()) #7, !dbg !2242
  %add.i.i.i.i1447 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1446) #7, !dbg !2244
  %conv8.i.i1448 = trunc i64 %add.i.i.i.i1447 to i32, !dbg !2245
  %136 = load ptr, ptr %p.i, align 8, !dbg !2246, !tbaa !1646
  store i32 %conv8.i.i1448, ptr %136, align 4, !dbg !2247, !tbaa !1637
  %137 = load i32, ptr %i_left.i, align 8, !dbg !2248, !tbaa !1651
  %add.i.i1450 = add nsw i32 %137, 32, !dbg !2248
  store i32 %add.i.i1450, ptr %i_left.i, align 8, !dbg !2248, !tbaa !1651
  %138 = load ptr, ptr %p.i, align 8, !dbg !2249, !tbaa !1646
  %add.ptr.i.i1451 = getelementptr inbounds i8, ptr %138, i64 4, !dbg !2249
  store ptr %add.ptr.i.i1451, ptr %p.i, align 8, !dbg !2249, !tbaa !1646
  br label %bs_write_ue.exit1453, !dbg !2250

bs_write_ue.exit1453:                             ; preds = %for.body300, %if.then.i.i1452
  %139 = phi i32 [ %sub.i.i1443, %for.body300 ], [ %add.i.i1450, %if.then.i.i1452 ]
  %indvars.iv.next2121 = add nuw nsw i64 %indvars.iv2120, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2121, metadata !1540, metadata !DIExpression()), !dbg !2221
  %exitcond2123.not = icmp eq i64 %indvars.iv.next2121, 4, !dbg !2252
  br i1 %exitcond2123.not, label %if.end311, label %for.body300, !dbg !2226, !llvm.loop !2253

if.else310:                                       ; preds = %if.end291
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2255
  call void @llvm.dbg.value(metadata i32 4, metadata !1720, metadata !DIExpression()) #7, !dbg !2255
  call void @llvm.dbg.value(metadata i32 15, metadata !1721, metadata !DIExpression()) #7, !dbg !2255
  %140 = load i64, ptr %cur_bits.i1454, align 8, !dbg !2257, !tbaa !1679
  %shl.i1455 = shl i64 %140, 4, !dbg !2258
  %or.i1456 = or i64 %shl.i1455, 15, !dbg !2259
  store i64 %or.i1456, ptr %cur_bits.i1454, align 8, !dbg !2260, !tbaa !1679
  %141 = load i32, ptr %i_left.i, align 8, !dbg !2261, !tbaa !1651
  %sub.i1458 = add nsw i32 %141, -4, !dbg !2261
  store i32 %sub.i1458, ptr %i_left.i, align 8, !dbg !2261, !tbaa !1651
  %cmp.i1459 = icmp slt i32 %141, 37, !dbg !2262
  br i1 %cmp.i1459, label %if.then.i1467, label %if.end311, !dbg !2263

if.then.i1467:                                    ; preds = %if.else310
  %sh_prom6.i1460 = zext i32 %sub.i1458 to i64, !dbg !2264
  %shl7.i1461 = shl i64 %or.i1456, %sh_prom6.i1460, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %shl7.i1461, metadata !1736, metadata !DIExpression()) #7, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %shl7.i1461, metadata !1743, metadata !DIExpression()) #7, !dbg !2267
  %add.i.i.i1462 = tail call i64 @llvm.bswap.i64(i64 %shl7.i1461) #7, !dbg !2269
  %conv8.i1463 = trunc i64 %add.i.i.i1462 to i32, !dbg !2270
  %142 = load ptr, ptr %p.i, align 8, !dbg !2271, !tbaa !1646
  store i32 %conv8.i1463, ptr %142, align 4, !dbg !2272, !tbaa !1637
  %143 = load i32, ptr %i_left.i, align 8, !dbg !2273, !tbaa !1651
  %add.i1465 = add nsw i32 %143, 32, !dbg !2273
  store i32 %add.i1465, ptr %i_left.i, align 8, !dbg !2273, !tbaa !1651
  %144 = load ptr, ptr %p.i, align 8, !dbg !2274, !tbaa !1646
  %add.ptr.i1466 = getelementptr inbounds i8, ptr %144, i64 4, !dbg !2274
  store ptr %add.ptr.i1466, ptr %p.i, align 8, !dbg !2274, !tbaa !1646
  br label %if.end311, !dbg !2275

if.end311:                                        ; preds = %bs_write_ue.exit1453, %if.then.i1467, %if.else310
  %145 = phi i32 [ %add.i1465, %if.then.i1467 ], [ %sub.i1458, %if.else310 ], [ %139, %bs_write_ue.exit1453 ]
  br i1 %cmp287, label %for.body368.preheader, label %if.then313, !dbg !2276

if.then313:                                       ; preds = %if.end311
  %i_fref316 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2277
  %146 = load i32, ptr %i_fref316, align 8, !dbg !2280, !tbaa !1982
  %147 = load i8, ptr %arrayidx262, align 1, !dbg !2281, !tbaa !1637
  %conv325 = sext i8 %147 to i32, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %146, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %conv325, metadata !2288, metadata !DIExpression()) #7, !dbg !2289
  %cmp.i1469 = icmp eq i32 %146, 2, !dbg !2291
  br i1 %cmp.i1469, label %if.then.i1476, label %if.else.i, !dbg !2293

if.then.i1476:                                    ; preds = %if.then313
  %xor.i = xor i32 %conv325, 1, !dbg !2294
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2295
  call void @llvm.dbg.value(metadata i32 %xor.i, metadata !1674, metadata !DIExpression()) #7, !dbg !2295
  %cur_bits.i.i1470 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2297
  %148 = load i64, ptr %cur_bits.i.i1470, align 8, !dbg !2298, !tbaa !1679
  %shl.i.i1471 = shl i64 %148, 1, !dbg !2298
  %conv.i.i1472 = zext i32 %xor.i to i64, !dbg !2299
  %or.i.i1473 = or i64 %shl.i.i1471, %conv.i.i1472, !dbg !2300
  store i64 %or.i.i1473, ptr %cur_bits.i.i1470, align 8, !dbg !2300, !tbaa !1679
  %dec.i.i = add nsw i32 %145, -1, !dbg !2301
  %cmp.i.i1475 = icmp eq i32 %dec.i.i, 32, !dbg !2302
  br i1 %cmp.i.i1475, label %if.then.i.i1480, label %bs_write_te.exit, !dbg !2303

if.then.i.i1480:                                  ; preds = %if.then.i1476
  %conv6.i.i = trunc i64 %or.i.i1473 to i32, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %conv6.i.i, metadata !1688, metadata !DIExpression()) #7, !dbg !2305
  %add5.i.i.i1477 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i) #7, !dbg !2307
  %149 = load ptr, ptr %p.i, align 8, !dbg !2308, !tbaa !1646
  store i32 %add5.i.i.i1477, ptr %149, align 4, !dbg !2309, !tbaa !1637
  br label %bs_write_te.exit.sink.split, !dbg !2310

if.else.i:                                        ; preds = %if.then313
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %conv325, metadata !1710, metadata !DIExpression()) #7, !dbg !2311
  %add.i.i1481 = add nsw i32 %conv325, 1, !dbg !2313
  %idxprom.i.i = sext i32 %add.i.i1481 to i64, !dbg !2314
  %arrayidx.i.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i, !dbg !2314
  %150 = load i8, ptr %arrayidx.i.i, align 1, !dbg !2314, !tbaa !1637
  %conv.i3.i = zext i8 %150 to i32, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %conv.i3.i, metadata !1720, metadata !DIExpression()) #7, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %add.i.i1481, metadata !1721, metadata !DIExpression()) #7, !dbg !2315
  %cur_bits.i.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2317
  %151 = load i64, ptr %cur_bits.i.i.i, align 8, !dbg !2317, !tbaa !1679
  %sh_prom.i.i.i = zext i8 %150 to i64, !dbg !2318
  %shl.i.i.i = shl i64 %151, %sh_prom.i.i.i, !dbg !2318
  %conv.i.i.i = zext i32 %add.i.i1481 to i64, !dbg !2319
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i, !dbg !2320
  store i64 %or.i.i.i, ptr %cur_bits.i.i.i, align 8, !dbg !2321, !tbaa !1679
  %sub.i.i.i = sub nsw i32 %145, %conv.i3.i, !dbg !2322
  store i32 %sub.i.i.i, ptr %i_left.i, align 8, !dbg !2322, !tbaa !1651
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 33, !dbg !2323
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %bs_write_te.exit, !dbg !2324

if.then.i.i.i:                                    ; preds = %if.else.i
  %sh_prom6.i.i.i = zext i32 %sub.i.i.i to i64, !dbg !2325
  %shl7.i.i.i = shl i64 %or.i.i.i, %sh_prom6.i.i.i, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i, metadata !1736, metadata !DIExpression()) #7, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i, metadata !1743, metadata !DIExpression()) #7, !dbg !2328
  %add.i.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i) #7, !dbg !2330
  %conv8.i.i.i = trunc i64 %add.i.i.i.i.i to i32, !dbg !2331
  %152 = load ptr, ptr %p.i, align 8, !dbg !2332, !tbaa !1646
  store i32 %conv8.i.i.i, ptr %152, align 4, !dbg !2333, !tbaa !1637
  %153 = load i32, ptr %i_left.i, align 8, !dbg !2334, !tbaa !1651
  %add.i.i.i1482 = add nsw i32 %153, 32, !dbg !2334
  br label %bs_write_te.exit.sink.split, !dbg !2335

bs_write_te.exit.sink.split:                      ; preds = %if.then.i.i.i, %if.then.i.i1480
  %.ph = phi i32 [ %add.i.i.i1482, %if.then.i.i.i ], [ 64, %if.then.i.i1480 ]
  %154 = load ptr, ptr %p.i, align 8, !dbg !2336, !tbaa !1646
  %add.ptr.i.i1479 = getelementptr inbounds i8, ptr %154, i64 4, !dbg !2336
  store ptr %add.ptr.i.i1479, ptr %p.i, align 8, !dbg !2336, !tbaa !1646
  br label %bs_write_te.exit, !dbg !2337

bs_write_te.exit:                                 ; preds = %bs_write_te.exit.sink.split, %if.then.i1476, %if.else.i
  %155 = phi i32 [ %dec.i.i, %if.then.i1476 ], [ %sub.i.i.i, %if.else.i ], [ %.ph, %bs_write_te.exit.sink.split ]
  %156 = load i32, ptr %i_fref316, align 8, !dbg !2337, !tbaa !1982
  %157 = load i8, ptr %arrayidx269, align 1, !dbg !2338, !tbaa !1637
  %conv337 = sext i8 %157 to i32, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %156, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %conv337, metadata !2288, metadata !DIExpression()) #7, !dbg !2339
  %cmp.i1483 = icmp eq i32 %156, 2, !dbg !2341
  br i1 %cmp.i1483, label %if.then.i1492, label %if.else.i1510, !dbg !2342

if.then.i1492:                                    ; preds = %bs_write_te.exit
  %xor.i1484 = xor i32 %conv337, 1, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2344
  call void @llvm.dbg.value(metadata i32 %xor.i1484, metadata !1674, metadata !DIExpression()) #7, !dbg !2344
  %cur_bits.i.i1485 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2346
  %158 = load i64, ptr %cur_bits.i.i1485, align 8, !dbg !2347, !tbaa !1679
  %shl.i.i1486 = shl i64 %158, 1, !dbg !2347
  %conv.i.i1487 = zext i32 %xor.i1484 to i64, !dbg !2348
  %or.i.i1488 = or i64 %shl.i.i1486, %conv.i.i1487, !dbg !2349
  store i64 %or.i.i1488, ptr %cur_bits.i.i1485, align 8, !dbg !2349, !tbaa !1679
  %dec.i.i1490 = add nsw i32 %155, -1, !dbg !2350
  %cmp.i.i1491 = icmp eq i32 %dec.i.i1490, 32, !dbg !2351
  br i1 %cmp.i.i1491, label %if.then.i.i1497, label %bs_write_te.exit1519, !dbg !2352

if.then.i.i1497:                                  ; preds = %if.then.i1492
  %conv6.i.i1493 = trunc i64 %or.i.i1488 to i32, !dbg !2353
  call void @llvm.dbg.value(metadata i32 %conv6.i.i1493, metadata !1688, metadata !DIExpression()) #7, !dbg !2354
  %add5.i.i.i1494 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i1493) #7, !dbg !2356
  %159 = load ptr, ptr %p.i, align 8, !dbg !2357, !tbaa !1646
  store i32 %add5.i.i.i1494, ptr %159, align 4, !dbg !2358, !tbaa !1637
  br label %bs_write_te.exit1519.sink.split, !dbg !2359

if.else.i1510:                                    ; preds = %bs_write_te.exit
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %conv337, metadata !1710, metadata !DIExpression()) #7, !dbg !2360
  %add.i.i1498 = add nsw i32 %conv337, 1, !dbg !2362
  %idxprom.i.i1499 = sext i32 %add.i.i1498 to i64, !dbg !2363
  %arrayidx.i.i1500 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1499, !dbg !2363
  %160 = load i8, ptr %arrayidx.i.i1500, align 1, !dbg !2363, !tbaa !1637
  %conv.i3.i1501 = zext i8 %160 to i32, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %conv.i3.i1501, metadata !1720, metadata !DIExpression()) #7, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %add.i.i1498, metadata !1721, metadata !DIExpression()) #7, !dbg !2364
  %cur_bits.i.i.i1502 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2366
  %161 = load i64, ptr %cur_bits.i.i.i1502, align 8, !dbg !2366, !tbaa !1679
  %sh_prom.i.i.i1503 = zext i8 %160 to i64, !dbg !2367
  %shl.i.i.i1504 = shl i64 %161, %sh_prom.i.i.i1503, !dbg !2367
  %conv.i.i.i1505 = zext i32 %add.i.i1498 to i64, !dbg !2368
  %or.i.i.i1506 = or i64 %shl.i.i.i1504, %conv.i.i.i1505, !dbg !2369
  store i64 %or.i.i.i1506, ptr %cur_bits.i.i.i1502, align 8, !dbg !2370, !tbaa !1679
  %sub.i.i.i1508 = sub nsw i32 %155, %conv.i3.i1501, !dbg !2371
  store i32 %sub.i.i.i1508, ptr %i_left.i, align 8, !dbg !2371, !tbaa !1651
  %cmp.i.i.i1509 = icmp slt i32 %sub.i.i.i1508, 33, !dbg !2372
  br i1 %cmp.i.i.i1509, label %if.then.i.i.i1518, label %bs_write_te.exit1519, !dbg !2373

if.then.i.i.i1518:                                ; preds = %if.else.i1510
  %sh_prom6.i.i.i1511 = zext i32 %sub.i.i.i1508 to i64, !dbg !2374
  %shl7.i.i.i1512 = shl i64 %or.i.i.i1506, %sh_prom6.i.i.i1511, !dbg !2374
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1512, metadata !1736, metadata !DIExpression()) #7, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1512, metadata !1743, metadata !DIExpression()) #7, !dbg !2377
  %add.i.i.i.i.i1513 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1512) #7, !dbg !2379
  %conv8.i.i.i1514 = trunc i64 %add.i.i.i.i.i1513 to i32, !dbg !2380
  %162 = load ptr, ptr %p.i, align 8, !dbg !2381, !tbaa !1646
  store i32 %conv8.i.i.i1514, ptr %162, align 4, !dbg !2382, !tbaa !1637
  %163 = load i32, ptr %i_left.i, align 8, !dbg !2383, !tbaa !1651
  %add.i.i.i1516 = add nsw i32 %163, 32, !dbg !2383
  br label %bs_write_te.exit1519.sink.split, !dbg !2384

bs_write_te.exit1519.sink.split:                  ; preds = %if.then.i.i.i1518, %if.then.i.i1497
  %.ph2174 = phi i32 [ %add.i.i.i1516, %if.then.i.i.i1518 ], [ 64, %if.then.i.i1497 ]
  %164 = load ptr, ptr %p.i, align 8, !dbg !2385, !tbaa !1646
  %add.ptr.i.i1496 = getelementptr inbounds i8, ptr %164, i64 4, !dbg !2385
  store ptr %add.ptr.i.i1496, ptr %p.i, align 8, !dbg !2385, !tbaa !1646
  br label %bs_write_te.exit1519, !dbg !2386

bs_write_te.exit1519:                             ; preds = %bs_write_te.exit1519.sink.split, %if.then.i1492, %if.else.i1510
  %165 = phi i32 [ %dec.i.i1490, %if.then.i1492 ], [ %sub.i.i.i1508, %if.else.i1510 ], [ %.ph2174, %bs_write_te.exit1519.sink.split ]
  %166 = load i32, ptr %i_fref316, align 8, !dbg !2386, !tbaa !1982
  %167 = load i8, ptr %arrayidx276, align 1, !dbg !2387, !tbaa !1637
  %conv349 = sext i8 %167 to i32, !dbg !2387
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %166, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2388
  call void @llvm.dbg.value(metadata i32 %conv349, metadata !2288, metadata !DIExpression()) #7, !dbg !2388
  %cmp.i1520 = icmp eq i32 %166, 2, !dbg !2390
  br i1 %cmp.i1520, label %if.then.i1529, label %if.else.i1547, !dbg !2391

if.then.i1529:                                    ; preds = %bs_write_te.exit1519
  %xor.i1521 = xor i32 %conv349, 1, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2393
  call void @llvm.dbg.value(metadata i32 %xor.i1521, metadata !1674, metadata !DIExpression()) #7, !dbg !2393
  %cur_bits.i.i1522 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2395
  %168 = load i64, ptr %cur_bits.i.i1522, align 8, !dbg !2396, !tbaa !1679
  %shl.i.i1523 = shl i64 %168, 1, !dbg !2396
  %conv.i.i1524 = zext i32 %xor.i1521 to i64, !dbg !2397
  %or.i.i1525 = or i64 %shl.i.i1523, %conv.i.i1524, !dbg !2398
  store i64 %or.i.i1525, ptr %cur_bits.i.i1522, align 8, !dbg !2398, !tbaa !1679
  %dec.i.i1527 = add nsw i32 %165, -1, !dbg !2399
  %cmp.i.i1528 = icmp eq i32 %dec.i.i1527, 32, !dbg !2400
  br i1 %cmp.i.i1528, label %if.then.i.i1534, label %bs_write_te.exit1556, !dbg !2401

if.then.i.i1534:                                  ; preds = %if.then.i1529
  %conv6.i.i1530 = trunc i64 %or.i.i1525 to i32, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %conv6.i.i1530, metadata !1688, metadata !DIExpression()) #7, !dbg !2403
  %add5.i.i.i1531 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i1530) #7, !dbg !2405
  %169 = load ptr, ptr %p.i, align 8, !dbg !2406, !tbaa !1646
  store i32 %add5.i.i.i1531, ptr %169, align 4, !dbg !2407, !tbaa !1637
  br label %bs_write_te.exit1556.sink.split, !dbg !2408

if.else.i1547:                                    ; preds = %bs_write_te.exit1519
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %conv349, metadata !1710, metadata !DIExpression()) #7, !dbg !2409
  %add.i.i1535 = add nsw i32 %conv349, 1, !dbg !2411
  %idxprom.i.i1536 = sext i32 %add.i.i1535 to i64, !dbg !2412
  %arrayidx.i.i1537 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1536, !dbg !2412
  %170 = load i8, ptr %arrayidx.i.i1537, align 1, !dbg !2412, !tbaa !1637
  %conv.i3.i1538 = zext i8 %170 to i32, !dbg !2412
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %conv.i3.i1538, metadata !1720, metadata !DIExpression()) #7, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %add.i.i1535, metadata !1721, metadata !DIExpression()) #7, !dbg !2413
  %cur_bits.i.i.i1539 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2415
  %171 = load i64, ptr %cur_bits.i.i.i1539, align 8, !dbg !2415, !tbaa !1679
  %sh_prom.i.i.i1540 = zext i8 %170 to i64, !dbg !2416
  %shl.i.i.i1541 = shl i64 %171, %sh_prom.i.i.i1540, !dbg !2416
  %conv.i.i.i1542 = zext i32 %add.i.i1535 to i64, !dbg !2417
  %or.i.i.i1543 = or i64 %shl.i.i.i1541, %conv.i.i.i1542, !dbg !2418
  store i64 %or.i.i.i1543, ptr %cur_bits.i.i.i1539, align 8, !dbg !2419, !tbaa !1679
  %sub.i.i.i1545 = sub nsw i32 %165, %conv.i3.i1538, !dbg !2420
  store i32 %sub.i.i.i1545, ptr %i_left.i, align 8, !dbg !2420, !tbaa !1651
  %cmp.i.i.i1546 = icmp slt i32 %sub.i.i.i1545, 33, !dbg !2421
  br i1 %cmp.i.i.i1546, label %if.then.i.i.i1555, label %bs_write_te.exit1556, !dbg !2422

if.then.i.i.i1555:                                ; preds = %if.else.i1547
  %sh_prom6.i.i.i1548 = zext i32 %sub.i.i.i1545 to i64, !dbg !2423
  %shl7.i.i.i1549 = shl i64 %or.i.i.i1543, %sh_prom6.i.i.i1548, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1549, metadata !1736, metadata !DIExpression()) #7, !dbg !2424
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1549, metadata !1743, metadata !DIExpression()) #7, !dbg !2426
  %add.i.i.i.i.i1550 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1549) #7, !dbg !2428
  %conv8.i.i.i1551 = trunc i64 %add.i.i.i.i.i1550 to i32, !dbg !2429
  %172 = load ptr, ptr %p.i, align 8, !dbg !2430, !tbaa !1646
  store i32 %conv8.i.i.i1551, ptr %172, align 4, !dbg !2431, !tbaa !1637
  %173 = load i32, ptr %i_left.i, align 8, !dbg !2432, !tbaa !1651
  %add.i.i.i1553 = add nsw i32 %173, 32, !dbg !2432
  br label %bs_write_te.exit1556.sink.split, !dbg !2433

bs_write_te.exit1556.sink.split:                  ; preds = %if.then.i.i.i1555, %if.then.i.i1534
  %.ph2175 = phi i32 [ %add.i.i.i1553, %if.then.i.i.i1555 ], [ 64, %if.then.i.i1534 ]
  %174 = load ptr, ptr %p.i, align 8, !dbg !2434, !tbaa !1646
  %add.ptr.i.i1533 = getelementptr inbounds i8, ptr %174, i64 4, !dbg !2434
  store ptr %add.ptr.i.i1533, ptr %p.i, align 8, !dbg !2434, !tbaa !1646
  br label %bs_write_te.exit1556, !dbg !2435

bs_write_te.exit1556:                             ; preds = %bs_write_te.exit1556.sink.split, %if.then.i1529, %if.else.i1547
  %175 = phi i32 [ %dec.i.i1527, %if.then.i1529 ], [ %sub.i.i.i1545, %if.else.i1547 ], [ %.ph2175, %bs_write_te.exit1556.sink.split ]
  %176 = load i32, ptr %i_fref316, align 8, !dbg !2435, !tbaa !1982
  %177 = load i8, ptr %arrayidx284, align 1, !dbg !2436, !tbaa !1637
  %conv361 = sext i8 %177 to i32, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %176, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2437
  call void @llvm.dbg.value(metadata i32 %conv361, metadata !2288, metadata !DIExpression()) #7, !dbg !2437
  %cmp.i1557 = icmp eq i32 %176, 2, !dbg !2439
  br i1 %cmp.i1557, label %if.then.i1566, label %if.else.i1584, !dbg !2440

if.then.i1566:                                    ; preds = %bs_write_te.exit1556
  %xor.i1558 = xor i32 %conv361, 1, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %xor.i1558, metadata !1674, metadata !DIExpression()) #7, !dbg !2442
  %cur_bits.i.i1559 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2444
  %178 = load i64, ptr %cur_bits.i.i1559, align 8, !dbg !2445, !tbaa !1679
  %shl.i.i1560 = shl i64 %178, 1, !dbg !2445
  %conv.i.i1561 = zext i32 %xor.i1558 to i64, !dbg !2446
  %or.i.i1562 = or i64 %shl.i.i1560, %conv.i.i1561, !dbg !2447
  store i64 %or.i.i1562, ptr %cur_bits.i.i1559, align 8, !dbg !2447, !tbaa !1679
  %dec.i.i1564 = add nsw i32 %175, -1, !dbg !2448
  store i32 %dec.i.i1564, ptr %i_left.i, align 8, !dbg !2448, !tbaa !1651
  %cmp.i.i1565 = icmp eq i32 %dec.i.i1564, 32, !dbg !2449
  br i1 %cmp.i.i1565, label %if.then.i.i1571, label %for.body368.preheader, !dbg !2450

if.then.i.i1571:                                  ; preds = %if.then.i1566
  %conv6.i.i1567 = trunc i64 %or.i.i1562 to i32, !dbg !2451
  call void @llvm.dbg.value(metadata i32 %conv6.i.i1567, metadata !1688, metadata !DIExpression()) #7, !dbg !2452
  %add5.i.i.i1568 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i1567) #7, !dbg !2454
  %179 = load ptr, ptr %p.i, align 8, !dbg !2455, !tbaa !1646
  store i32 %add5.i.i.i1568, ptr %179, align 4, !dbg !2456, !tbaa !1637
  %180 = load ptr, ptr %p.i, align 8, !dbg !2457, !tbaa !1646
  %add.ptr.i.i1570 = getelementptr inbounds i8, ptr %180, i64 4, !dbg !2457
  store ptr %add.ptr.i.i1570, ptr %p.i, align 8, !dbg !2457, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2458, !tbaa !1651
  br label %for.body368.preheader, !dbg !2459

if.else.i1584:                                    ; preds = %bs_write_te.exit1556
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %conv361, metadata !1710, metadata !DIExpression()) #7, !dbg !2460
  %add.i.i1572 = add nsw i32 %conv361, 1, !dbg !2462
  %idxprom.i.i1573 = sext i32 %add.i.i1572 to i64, !dbg !2463
  %arrayidx.i.i1574 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1573, !dbg !2463
  %181 = load i8, ptr %arrayidx.i.i1574, align 1, !dbg !2463, !tbaa !1637
  %conv.i3.i1575 = zext i8 %181 to i32, !dbg !2463
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %conv.i3.i1575, metadata !1720, metadata !DIExpression()) #7, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %add.i.i1572, metadata !1721, metadata !DIExpression()) #7, !dbg !2464
  %cur_bits.i.i.i1576 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2466
  %182 = load i64, ptr %cur_bits.i.i.i1576, align 8, !dbg !2466, !tbaa !1679
  %sh_prom.i.i.i1577 = zext i8 %181 to i64, !dbg !2467
  %shl.i.i.i1578 = shl i64 %182, %sh_prom.i.i.i1577, !dbg !2467
  %conv.i.i.i1579 = zext i32 %add.i.i1572 to i64, !dbg !2468
  %or.i.i.i1580 = or i64 %shl.i.i.i1578, %conv.i.i.i1579, !dbg !2469
  store i64 %or.i.i.i1580, ptr %cur_bits.i.i.i1576, align 8, !dbg !2470, !tbaa !1679
  %sub.i.i.i1582 = sub nsw i32 %175, %conv.i3.i1575, !dbg !2471
  store i32 %sub.i.i.i1582, ptr %i_left.i, align 8, !dbg !2471, !tbaa !1651
  %cmp.i.i.i1583 = icmp slt i32 %sub.i.i.i1582, 33, !dbg !2472
  br i1 %cmp.i.i.i1583, label %if.then.i.i.i1592, label %for.body368.preheader, !dbg !2473

if.then.i.i.i1592:                                ; preds = %if.else.i1584
  %sh_prom6.i.i.i1585 = zext i32 %sub.i.i.i1582 to i64, !dbg !2474
  %shl7.i.i.i1586 = shl i64 %or.i.i.i1580, %sh_prom6.i.i.i1585, !dbg !2474
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1586, metadata !1736, metadata !DIExpression()) #7, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1586, metadata !1743, metadata !DIExpression()) #7, !dbg !2477
  %add.i.i.i.i.i1587 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1586) #7, !dbg !2479
  %conv8.i.i.i1588 = trunc i64 %add.i.i.i.i.i1587 to i32, !dbg !2480
  %183 = load ptr, ptr %p.i, align 8, !dbg !2481, !tbaa !1646
  store i32 %conv8.i.i.i1588, ptr %183, align 4, !dbg !2482, !tbaa !1637
  %184 = load i32, ptr %i_left.i, align 8, !dbg !2483, !tbaa !1651
  %add.i.i.i1590 = add nsw i32 %184, 32, !dbg !2483
  store i32 %add.i.i.i1590, ptr %i_left.i, align 8, !dbg !2483, !tbaa !1651
  %185 = load ptr, ptr %p.i, align 8, !dbg !2484, !tbaa !1646
  %add.ptr.i.i.i1591 = getelementptr inbounds i8, ptr %185, i64 4, !dbg !2484
  store ptr %add.ptr.i.i.i1591, ptr %p.i, align 8, !dbg !2484, !tbaa !1646
  br label %for.body368.preheader, !dbg !2485

for.body368.preheader:                            ; preds = %if.then.i.i.i1592, %if.else.i1584, %if.then.i.i1571, %if.then.i1566, %if.end311
  br label %for.body368, !dbg !2486

for.body368:                                      ; preds = %for.body368.preheader, %cavlc_mb8x8_mvd.exit
  %indvars.iv2124 = phi i64 [ %indvars.iv.next2125, %cavlc_mb8x8_mvd.exit ], [ 0, %for.body368.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2124, metadata !1543, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata ptr %h, metadata !2488, metadata !DIExpression()) #7, !dbg !2494
  call void @llvm.dbg.value(metadata i64 %indvars.iv2124, metadata !2493, metadata !DIExpression()) #7, !dbg !2494
  %arrayidx.i1595 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2124, !dbg !2497
  %186 = load i8, ptr %arrayidx.i1595, align 1, !dbg !2497, !tbaa !1637
  switch i8 %186, label %cavlc_mb8x8_mvd.exit [
    i8 3, label %sw.bb.i
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb5.i
    i8 0, label %sw.bb10.i
  ], !dbg !2498

sw.bb.i:                                          ; preds = %for.body368
  %indvars.iv2124.tr = trunc i64 %indvars.iv2124 to i32, !dbg !2499
  %187 = shl i32 %indvars.iv2124.tr, 2, !dbg !2499
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %187, i32 noundef 2) #7, !dbg !2499
  br label %cavlc_mb8x8_mvd.exit, !dbg !2501

sw.bb1.i:                                         ; preds = %for.body368
  %188 = shl nuw nsw i64 %indvars.iv2124, 2, !dbg !2502
  %189 = trunc i64 %188 to i32, !dbg !2503
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %189, i32 noundef 2) #7, !dbg !2503
  %190 = trunc i64 %188 to i32, !dbg !2504
  %191 = or i32 %190, 2, !dbg !2504
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %191, i32 noundef 2) #7, !dbg !2504
  br label %cavlc_mb8x8_mvd.exit, !dbg !2505

sw.bb5.i:                                         ; preds = %for.body368
  %192 = shl nuw nsw i64 %indvars.iv2124, 2, !dbg !2506
  %193 = trunc i64 %192 to i32, !dbg !2507
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %193, i32 noundef 1) #7, !dbg !2507
  %194 = trunc i64 %192 to i32, !dbg !2508
  %195 = or i32 %194, 1, !dbg !2508
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %195, i32 noundef 1) #7, !dbg !2508
  br label %cavlc_mb8x8_mvd.exit, !dbg !2509

sw.bb10.i:                                        ; preds = %for.body368
  %196 = shl nuw nsw i64 %indvars.iv2124, 2, !dbg !2510
  %197 = trunc i64 %196 to i32, !dbg !2511
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %197, i32 noundef 1) #7, !dbg !2511
  %198 = trunc i64 %196 to i32, !dbg !2512
  %199 = or i32 %198, 1, !dbg !2512
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %199, i32 noundef 1) #7, !dbg !2512
  %200 = trunc i64 %196 to i32, !dbg !2513
  %201 = or i32 %200, 2, !dbg !2513
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %201, i32 noundef 1) #7, !dbg !2513
  %202 = trunc i64 %196 to i32, !dbg !2514
  %203 = or i32 %202, 3, !dbg !2514
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %203, i32 noundef 1) #7, !dbg !2514
  br label %cavlc_mb8x8_mvd.exit, !dbg !2515

cavlc_mb8x8_mvd.exit:                             ; preds = %for.body368, %sw.bb.i, %sw.bb1.i, %sw.bb5.i, %sw.bb10.i
  %indvars.iv.next2125 = add nuw nsw i64 %indvars.iv2124, 1, !dbg !2516
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2125, metadata !1543, metadata !DIExpression()), !dbg !2487
  %exitcond2136.not = icmp eq i64 %indvars.iv.next2125, 4, !dbg !2517
  br i1 %exitcond2136.not, label %if.end697, label %for.body368, !dbg !2486, !llvm.loop !2518

if.then375:                                       ; preds = %if.else125
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2520
  call void @llvm.dbg.value(metadata i32 22, metadata !1710, metadata !DIExpression()) #7, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2522
  call void @llvm.dbg.value(metadata i32 9, metadata !1720, metadata !DIExpression()) #7, !dbg !2522
  call void @llvm.dbg.value(metadata i32 23, metadata !1721, metadata !DIExpression()) #7, !dbg !2522
  %cur_bits.i.i1598 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2524
  %204 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2524, !tbaa !1679
  %shl.i.i1599 = shl i64 %204, 9, !dbg !2525
  %or.i.i1600 = or i64 %shl.i.i1599, 23, !dbg !2526
  store i64 %or.i.i1600, ptr %cur_bits.i.i1598, align 8, !dbg !2527, !tbaa !1679
  %sub.i.i1602 = add nsw i32 %16, -9, !dbg !2528
  store i32 %sub.i.i1602, ptr %i_left.i, align 8, !dbg !2528, !tbaa !1651
  %cmp.i.i1603 = icmp slt i32 %16, 42, !dbg !2529
  br i1 %cmp.i.i1603, label %if.then.i.i1611, label %for.body381.preheader, !dbg !2530

if.then.i.i1611:                                  ; preds = %if.then375
  %sh_prom6.i.i1604 = zext i32 %sub.i.i1602 to i64, !dbg !2531
  %shl7.i.i1605 = shl i64 %or.i.i1600, %sh_prom6.i.i1604, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1605, metadata !1736, metadata !DIExpression()) #7, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1605, metadata !1743, metadata !DIExpression()) #7, !dbg !2534
  %add.i.i.i.i1606 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1605) #7, !dbg !2536
  %conv8.i.i1607 = trunc i64 %add.i.i.i.i1606 to i32, !dbg !2537
  store i32 %conv8.i.i1607, ptr %15, align 4, !dbg !2538, !tbaa !1637
  %205 = load i32, ptr %i_left.i, align 8, !dbg !2539, !tbaa !1651
  %add.i.i1609 = add nsw i32 %205, 32, !dbg !2539
  %206 = load ptr, ptr %p.i, align 8, !dbg !2540, !tbaa !1646
  %add.ptr.i.i1610 = getelementptr inbounds i8, ptr %206, i64 4, !dbg !2540
  store ptr %add.ptr.i.i1610, ptr %p.i, align 8, !dbg !2540, !tbaa !1646
  br label %for.body381.preheader, !dbg !2541

for.body381.preheader:                            ; preds = %if.then375, %if.then.i.i1611
  %.ph2197 = phi ptr [ %add.ptr.i.i1610, %if.then.i.i1611 ], [ %15, %if.then375 ]
  %.ph2198 = phi i32 [ %add.i.i1609, %if.then.i.i1611 ], [ %sub.i.i1602, %if.then375 ]
  br label %for.body381, !dbg !2542

for.cond.cleanup380:                              ; preds = %bs_write_ue.exit1633
  %i_fref394 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2543
  %207 = load i32, ptr %i_fref394, align 8, !dbg !2544, !tbaa !1982
  %cmp396 = icmp sgt i32 %207, 1, !dbg !2545
  br i1 %cmp396, label %for.cond400.preheader, label %if.end432, !dbg !2546

for.cond400.preheader:                            ; preds = %for.cond.cleanup380
  call void @llvm.dbg.value(metadata i32 0, metadata !1549, metadata !DIExpression()), !dbg !2547
  %ref420 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3
  br label %for.body404, !dbg !2548

for.body381:                                      ; preds = %for.body381.preheader, %bs_write_ue.exit1633
  %208 = phi ptr [ %216, %bs_write_ue.exit1633 ], [ %.ph2197, %for.body381.preheader ]
  %209 = phi i32 [ %217, %bs_write_ue.exit1633 ], [ %.ph2198, %for.body381.preheader ], !dbg !2549
  %indvars.iv = phi i64 [ %indvars.iv.next, %bs_write_ue.exit1633 ], [ 0, %for.body381.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1545, metadata !DIExpression()), !dbg !2553
  %arrayidx385 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv, !dbg !2554
  %210 = load i8, ptr %arrayidx385, align 1, !dbg !2554, !tbaa !1637
  %idxprom386 = zext i8 %210 to i64, !dbg !2555
  %arrayidx387 = getelementptr inbounds [13 x i8], ptr @sub_mb_type_b_to_golomb, i64 0, i64 %idxprom386, !dbg !2555
  %211 = load i8, ptr %arrayidx387, align 1, !dbg !2555, !tbaa !1637
  %conv388 = zext i8 %211 to i64, !dbg !2555
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2556
  call void @llvm.dbg.value(metadata i8 %211, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2556
  %add.i1613 = add nuw nsw i64 %conv388, 1, !dbg !2557
  %arrayidx.i1615 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1613, !dbg !2558
  %212 = load i8, ptr %arrayidx.i1615, align 1, !dbg !2558, !tbaa !1637
  %conv.i1616 = zext i8 %212 to i32, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %conv.i1616, metadata !1720, metadata !DIExpression()) #7, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %add.i1613, metadata !1721, metadata !DIExpression()) #7, !dbg !2559
  %213 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2560, !tbaa !1679
  %sh_prom.i.i1618 = zext i8 %212 to i64, !dbg !2561
  %shl.i.i1619 = shl i64 %213, %sh_prom.i.i1618, !dbg !2561
  %or.i.i1621 = or i64 %shl.i.i1619, %add.i1613, !dbg !2562
  store i64 %or.i.i1621, ptr %cur_bits.i.i1598, align 8, !dbg !2563, !tbaa !1679
  %sub.i.i1623 = sub nsw i32 %209, %conv.i1616, !dbg !2549
  store i32 %sub.i.i1623, ptr %i_left.i, align 8, !dbg !2549, !tbaa !1651
  %cmp.i.i1624 = icmp slt i32 %sub.i.i1623, 33, !dbg !2564
  br i1 %cmp.i.i1624, label %if.then.i.i1632, label %bs_write_ue.exit1633, !dbg !2565

if.then.i.i1632:                                  ; preds = %for.body381
  %sh_prom6.i.i1625 = zext i32 %sub.i.i1623 to i64, !dbg !2566
  %shl7.i.i1626 = shl i64 %or.i.i1621, %sh_prom6.i.i1625, !dbg !2566
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1626, metadata !1736, metadata !DIExpression()) #7, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1626, metadata !1743, metadata !DIExpression()) #7, !dbg !2569
  %add.i.i.i.i1627 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1626) #7, !dbg !2571
  %conv8.i.i1628 = trunc i64 %add.i.i.i.i1627 to i32, !dbg !2572
  store i32 %conv8.i.i1628, ptr %208, align 4, !dbg !2573, !tbaa !1637
  %214 = load i32, ptr %i_left.i, align 8, !dbg !2574, !tbaa !1651
  %add.i.i1630 = add nsw i32 %214, 32, !dbg !2574
  store i32 %add.i.i1630, ptr %i_left.i, align 8, !dbg !2574, !tbaa !1651
  %215 = load ptr, ptr %p.i, align 8, !dbg !2575, !tbaa !1646
  %add.ptr.i.i1631 = getelementptr inbounds i8, ptr %215, i64 4, !dbg !2575
  store ptr %add.ptr.i.i1631, ptr %p.i, align 8, !dbg !2575, !tbaa !1646
  br label %bs_write_ue.exit1633, !dbg !2576

bs_write_ue.exit1633:                             ; preds = %for.body381, %if.then.i.i1632
  %216 = phi ptr [ %208, %for.body381 ], [ %add.ptr.i.i1631, %if.then.i.i1632 ]
  %217 = phi i32 [ %sub.i.i1623, %for.body381 ], [ %add.i.i1630, %if.then.i.i1632 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2577
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1545, metadata !DIExpression()), !dbg !2553
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2578
  br i1 %exitcond.not, label %for.cond.cleanup380, label %for.body381, !dbg !2542, !llvm.loop !2579

for.body404:                                      ; preds = %for.cond400.preheader, %for.inc429
  %218 = phi ptr [ %216, %for.cond400.preheader ], [ %232, %for.inc429 ]
  %219 = phi i32 [ %217, %for.cond400.preheader ], [ %233, %for.inc429 ]
  %indvars.iv2100 = phi i64 [ 0, %for.cond400.preheader ], [ %indvars.iv.next2101, %for.inc429 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2100, metadata !1549, metadata !DIExpression()), !dbg !2547
  %arrayidx408 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2100, !dbg !2581
  %220 = load i8, ptr %arrayidx408, align 1, !dbg !2581, !tbaa !1637
  %idxprom409 = zext i8 %220 to i64, !dbg !2584
  %arrayidx410 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom409, !dbg !2584
  %221 = load i8, ptr %arrayidx410, align 1, !dbg !2584, !tbaa !1637
  %tobool411.not = icmp eq i8 %221, 0, !dbg !2584
  br i1 %tobool411.not, label %for.inc429, label %if.then412, !dbg !2585

if.then412:                                       ; preds = %for.body404
  %222 = load i32, ptr %i_fref394, align 8, !dbg !2586, !tbaa !1982
  %223 = shl nuw nsw i64 %indvars.iv2100, 2, !dbg !2587
  %arrayidx424 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %223, !dbg !2588
  %224 = load i32, ptr %arrayidx424, align 16, !dbg !2588, !tbaa !1982
  %idxprom425 = sext i32 %224 to i64, !dbg !2589
  %arrayidx426 = getelementptr inbounds [40 x i8], ptr %ref420, i64 0, i64 %idxprom425, !dbg !2589
  %225 = load i8, ptr %arrayidx426, align 1, !dbg !2589, !tbaa !1637
  %conv427 = sext i8 %225 to i32, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %222, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %conv427, metadata !2288, metadata !DIExpression()) #7, !dbg !2590
  %cmp.i1634 = icmp eq i32 %222, 2, !dbg !2592
  br i1 %cmp.i1634, label %if.then.i1643, label %if.else.i1661, !dbg !2593

if.then.i1643:                                    ; preds = %if.then412
  %xor.i1635 = xor i32 %conv427, 1, !dbg !2594
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2595
  call void @llvm.dbg.value(metadata i32 %xor.i1635, metadata !1674, metadata !DIExpression()) #7, !dbg !2595
  %226 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2597, !tbaa !1679
  %shl.i.i1637 = shl i64 %226, 1, !dbg !2597
  %conv.i.i1638 = zext i32 %xor.i1635 to i64, !dbg !2598
  %or.i.i1639 = or i64 %shl.i.i1637, %conv.i.i1638, !dbg !2599
  store i64 %or.i.i1639, ptr %cur_bits.i.i1598, align 8, !dbg !2599, !tbaa !1679
  %dec.i.i1641 = add nsw i32 %219, -1, !dbg !2600
  store i32 %dec.i.i1641, ptr %i_left.i, align 8, !dbg !2600, !tbaa !1651
  %cmp.i.i1642 = icmp eq i32 %dec.i.i1641, 32, !dbg !2601
  br i1 %cmp.i.i1642, label %if.then.i.i1648, label %for.inc429, !dbg !2602

if.then.i.i1648:                                  ; preds = %if.then.i1643
  %conv6.i.i1644 = trunc i64 %or.i.i1639 to i32, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %conv6.i.i1644, metadata !1688, metadata !DIExpression()) #7, !dbg !2604
  %add5.i.i.i1645 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i1644) #7, !dbg !2606
  store i32 %add5.i.i.i1645, ptr %218, align 4, !dbg !2607, !tbaa !1637
  %227 = load ptr, ptr %p.i, align 8, !dbg !2608, !tbaa !1646
  %add.ptr.i.i1647 = getelementptr inbounds i8, ptr %227, i64 4, !dbg !2608
  store ptr %add.ptr.i.i1647, ptr %p.i, align 8, !dbg !2608, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2609, !tbaa !1651
  br label %for.inc429, !dbg !2610

if.else.i1661:                                    ; preds = %if.then412
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2611
  call void @llvm.dbg.value(metadata i32 %conv427, metadata !1710, metadata !DIExpression()) #7, !dbg !2611
  %add.i.i1649 = add nsw i32 %conv427, 1, !dbg !2613
  %idxprom.i.i1650 = sext i32 %add.i.i1649 to i64, !dbg !2614
  %arrayidx.i.i1651 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1650, !dbg !2614
  %228 = load i8, ptr %arrayidx.i.i1651, align 1, !dbg !2614, !tbaa !1637
  %conv.i3.i1652 = zext i8 %228 to i32, !dbg !2614
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %conv.i3.i1652, metadata !1720, metadata !DIExpression()) #7, !dbg !2615
  call void @llvm.dbg.value(metadata i32 %add.i.i1649, metadata !1721, metadata !DIExpression()) #7, !dbg !2615
  %229 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2617, !tbaa !1679
  %sh_prom.i.i.i1654 = zext i8 %228 to i64, !dbg !2618
  %shl.i.i.i1655 = shl i64 %229, %sh_prom.i.i.i1654, !dbg !2618
  %conv.i.i.i1656 = zext i32 %add.i.i1649 to i64, !dbg !2619
  %or.i.i.i1657 = or i64 %shl.i.i.i1655, %conv.i.i.i1656, !dbg !2620
  store i64 %or.i.i.i1657, ptr %cur_bits.i.i1598, align 8, !dbg !2621, !tbaa !1679
  %sub.i.i.i1659 = sub nsw i32 %219, %conv.i3.i1652, !dbg !2622
  store i32 %sub.i.i.i1659, ptr %i_left.i, align 8, !dbg !2622, !tbaa !1651
  %cmp.i.i.i1660 = icmp slt i32 %sub.i.i.i1659, 33, !dbg !2623
  br i1 %cmp.i.i.i1660, label %if.then.i.i.i1669, label %for.inc429, !dbg !2624

if.then.i.i.i1669:                                ; preds = %if.else.i1661
  %sh_prom6.i.i.i1662 = zext i32 %sub.i.i.i1659 to i64, !dbg !2625
  %shl7.i.i.i1663 = shl i64 %or.i.i.i1657, %sh_prom6.i.i.i1662, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1663, metadata !1736, metadata !DIExpression()) #7, !dbg !2626
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1663, metadata !1743, metadata !DIExpression()) #7, !dbg !2628
  %add.i.i.i.i.i1664 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1663) #7, !dbg !2630
  %conv8.i.i.i1665 = trunc i64 %add.i.i.i.i.i1664 to i32, !dbg !2631
  store i32 %conv8.i.i.i1665, ptr %218, align 4, !dbg !2632, !tbaa !1637
  %230 = load i32, ptr %i_left.i, align 8, !dbg !2633, !tbaa !1651
  %add.i.i.i1667 = add nsw i32 %230, 32, !dbg !2633
  store i32 %add.i.i.i1667, ptr %i_left.i, align 8, !dbg !2633, !tbaa !1651
  %231 = load ptr, ptr %p.i, align 8, !dbg !2634, !tbaa !1646
  %add.ptr.i.i.i1668 = getelementptr inbounds i8, ptr %231, i64 4, !dbg !2634
  store ptr %add.ptr.i.i.i1668, ptr %p.i, align 8, !dbg !2634, !tbaa !1646
  br label %for.inc429, !dbg !2635

for.inc429:                                       ; preds = %if.then.i.i.i1669, %if.else.i1661, %if.then.i.i1648, %if.then.i1643, %for.body404
  %232 = phi ptr [ %add.ptr.i.i.i1668, %if.then.i.i.i1669 ], [ %218, %if.else.i1661 ], [ %add.ptr.i.i1647, %if.then.i.i1648 ], [ %218, %if.then.i1643 ], [ %218, %for.body404 ]
  %233 = phi i32 [ %add.i.i.i1667, %if.then.i.i.i1669 ], [ %sub.i.i.i1659, %if.else.i1661 ], [ 64, %if.then.i.i1648 ], [ %dec.i.i1641, %if.then.i1643 ], [ %219, %for.body404 ]
  %indvars.iv.next2101 = add nuw nsw i64 %indvars.iv2100, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2101, metadata !1549, metadata !DIExpression()), !dbg !2547
  %exitcond2104.not = icmp eq i64 %indvars.iv.next2101, 4, !dbg !2637
  br i1 %exitcond2104.not, label %if.end432, label %for.body404, !dbg !2548, !llvm.loop !2638

if.end432:                                        ; preds = %for.inc429, %for.cond.cleanup380
  %234 = phi ptr [ %216, %for.cond.cleanup380 ], [ %232, %for.inc429 ]
  %235 = phi i32 [ %217, %for.cond.cleanup380 ], [ %233, %for.inc429 ]
  %arrayidx436 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, i64 1, !dbg !2640
  %236 = load i32, ptr %arrayidx436, align 4, !dbg !2640, !tbaa !1982
  %cmp437 = icmp sgt i32 %236, 1, !dbg !2641
  br i1 %cmp437, label %for.body445, label %for.body479.preheader, !dbg !2642

for.body445:                                      ; preds = %if.end432, %for.inc470
  %237 = phi ptr [ %251, %for.inc470 ], [ %234, %if.end432 ]
  %238 = phi i32 [ %252, %for.inc470 ], [ %235, %if.end432 ]
  %indvars.iv2105 = phi i64 [ %indvars.iv.next2106, %for.inc470 ], [ 0, %if.end432 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2105, metadata !1552, metadata !DIExpression()), !dbg !2643
  %arrayidx449 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2105, !dbg !2644
  %239 = load i8, ptr %arrayidx449, align 1, !dbg !2644, !tbaa !1637
  %idxprom450 = zext i8 %239 to i64, !dbg !2647
  %arrayidx451 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %idxprom450, !dbg !2647
  %240 = load i8, ptr %arrayidx451, align 1, !dbg !2647, !tbaa !1637
  %tobool452.not = icmp eq i8 %240, 0, !dbg !2647
  br i1 %tobool452.not, label %for.inc470, label %if.then453, !dbg !2648

if.then453:                                       ; preds = %for.body445
  %241 = load i32, ptr %arrayidx436, align 4, !dbg !2649, !tbaa !1982
  %242 = shl nuw nsw i64 %indvars.iv2105, 2, !dbg !2650
  %arrayidx465 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %242, !dbg !2651
  %243 = load i32, ptr %arrayidx465, align 16, !dbg !2651, !tbaa !1982
  %idxprom466 = sext i32 %243 to i64, !dbg !2652
  %arrayidx467 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %idxprom466, !dbg !2652
  %244 = load i8, ptr %arrayidx467, align 1, !dbg !2652, !tbaa !1637
  %conv468 = sext i8 %244 to i32, !dbg !2652
  call void @llvm.dbg.value(metadata ptr %bs, metadata !2282, metadata !DIExpression()) #7, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %241, metadata !2287, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %conv468, metadata !2288, metadata !DIExpression()) #7, !dbg !2653
  %cmp.i1671 = icmp eq i32 %241, 2, !dbg !2655
  br i1 %cmp.i1671, label %if.then.i1680, label %if.else.i1698, !dbg !2656

if.then.i1680:                                    ; preds = %if.then453
  %xor.i1672 = xor i32 %conv468, 1, !dbg !2657
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2658
  call void @llvm.dbg.value(metadata i32 %xor.i1672, metadata !1674, metadata !DIExpression()) #7, !dbg !2658
  %245 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2660, !tbaa !1679
  %shl.i.i1674 = shl i64 %245, 1, !dbg !2660
  %conv.i.i1675 = zext i32 %xor.i1672 to i64, !dbg !2661
  %or.i.i1676 = or i64 %shl.i.i1674, %conv.i.i1675, !dbg !2662
  store i64 %or.i.i1676, ptr %cur_bits.i.i1598, align 8, !dbg !2662, !tbaa !1679
  %dec.i.i1678 = add nsw i32 %238, -1, !dbg !2663
  store i32 %dec.i.i1678, ptr %i_left.i, align 8, !dbg !2663, !tbaa !1651
  %cmp.i.i1679 = icmp eq i32 %dec.i.i1678, 32, !dbg !2664
  br i1 %cmp.i.i1679, label %if.then.i.i1685, label %for.inc470, !dbg !2665

if.then.i.i1685:                                  ; preds = %if.then.i1680
  %conv6.i.i1681 = trunc i64 %or.i.i1676 to i32, !dbg !2666
  call void @llvm.dbg.value(metadata i32 %conv6.i.i1681, metadata !1688, metadata !DIExpression()) #7, !dbg !2667
  %add5.i.i.i1682 = tail call i32 @llvm.bswap.i32(i32 %conv6.i.i1681) #7, !dbg !2669
  store i32 %add5.i.i.i1682, ptr %237, align 4, !dbg !2670, !tbaa !1637
  %246 = load ptr, ptr %p.i, align 8, !dbg !2671, !tbaa !1646
  %add.ptr.i.i1684 = getelementptr inbounds i8, ptr %246, i64 4, !dbg !2671
  store ptr %add.ptr.i.i1684, ptr %p.i, align 8, !dbg !2671, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2672, !tbaa !1651
  br label %for.inc470, !dbg !2673

if.else.i1698:                                    ; preds = %if.then453
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %conv468, metadata !1710, metadata !DIExpression()) #7, !dbg !2674
  %add.i.i1686 = add nsw i32 %conv468, 1, !dbg !2676
  %idxprom.i.i1687 = sext i32 %add.i.i1686 to i64, !dbg !2677
  %arrayidx.i.i1688 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1687, !dbg !2677
  %247 = load i8, ptr %arrayidx.i.i1688, align 1, !dbg !2677, !tbaa !1637
  %conv.i3.i1689 = zext i8 %247 to i32, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %conv.i3.i1689, metadata !1720, metadata !DIExpression()) #7, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %add.i.i1686, metadata !1721, metadata !DIExpression()) #7, !dbg !2678
  %248 = load i64, ptr %cur_bits.i.i1598, align 8, !dbg !2680, !tbaa !1679
  %sh_prom.i.i.i1691 = zext i8 %247 to i64, !dbg !2681
  %shl.i.i.i1692 = shl i64 %248, %sh_prom.i.i.i1691, !dbg !2681
  %conv.i.i.i1693 = zext i32 %add.i.i1686 to i64, !dbg !2682
  %or.i.i.i1694 = or i64 %shl.i.i.i1692, %conv.i.i.i1693, !dbg !2683
  store i64 %or.i.i.i1694, ptr %cur_bits.i.i1598, align 8, !dbg !2684, !tbaa !1679
  %sub.i.i.i1696 = sub nsw i32 %238, %conv.i3.i1689, !dbg !2685
  store i32 %sub.i.i.i1696, ptr %i_left.i, align 8, !dbg !2685, !tbaa !1651
  %cmp.i.i.i1697 = icmp slt i32 %sub.i.i.i1696, 33, !dbg !2686
  br i1 %cmp.i.i.i1697, label %if.then.i.i.i1706, label %for.inc470, !dbg !2687

if.then.i.i.i1706:                                ; preds = %if.else.i1698
  %sh_prom6.i.i.i1699 = zext i32 %sub.i.i.i1696 to i64, !dbg !2688
  %shl7.i.i.i1700 = shl i64 %or.i.i.i1694, %sh_prom6.i.i.i1699, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1700, metadata !1736, metadata !DIExpression()) #7, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1700, metadata !1743, metadata !DIExpression()) #7, !dbg !2691
  %add.i.i.i.i.i1701 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1700) #7, !dbg !2693
  %conv8.i.i.i1702 = trunc i64 %add.i.i.i.i.i1701 to i32, !dbg !2694
  store i32 %conv8.i.i.i1702, ptr %237, align 4, !dbg !2695, !tbaa !1637
  %249 = load i32, ptr %i_left.i, align 8, !dbg !2696, !tbaa !1651
  %add.i.i.i1704 = add nsw i32 %249, 32, !dbg !2696
  store i32 %add.i.i.i1704, ptr %i_left.i, align 8, !dbg !2696, !tbaa !1651
  %250 = load ptr, ptr %p.i, align 8, !dbg !2697, !tbaa !1646
  %add.ptr.i.i.i1705 = getelementptr inbounds i8, ptr %250, i64 4, !dbg !2697
  store ptr %add.ptr.i.i.i1705, ptr %p.i, align 8, !dbg !2697, !tbaa !1646
  br label %for.inc470, !dbg !2698

for.inc470:                                       ; preds = %if.then.i.i.i1706, %if.else.i1698, %if.then.i.i1685, %if.then.i1680, %for.body445
  %251 = phi ptr [ %add.ptr.i.i.i1705, %if.then.i.i.i1706 ], [ %237, %if.else.i1698 ], [ %add.ptr.i.i1684, %if.then.i.i1685 ], [ %237, %if.then.i1680 ], [ %237, %for.body445 ]
  %252 = phi i32 [ %add.i.i.i1704, %if.then.i.i.i1706 ], [ %sub.i.i.i1696, %if.else.i1698 ], [ 64, %if.then.i.i1685 ], [ %dec.i.i1678, %if.then.i1680 ], [ %238, %for.body445 ]
  %indvars.iv.next2106 = add nuw nsw i64 %indvars.iv2105, 1, !dbg !2699
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2106, metadata !1552, metadata !DIExpression()), !dbg !2643
  %exitcond2109.not = icmp eq i64 %indvars.iv.next2106, 4, !dbg !2700
  br i1 %exitcond2109.not, label %for.body479.preheader, label %for.body445, !dbg !2701, !llvm.loop !2702

for.body479.preheader:                            ; preds = %for.inc470, %if.end432
  br label %for.body479, !dbg !2704

for.body479:                                      ; preds = %for.body479.preheader, %for.inc490
  %indvars.iv2110 = phi i64 [ %indvars.iv.next2111, %for.inc490 ], [ 0, %for.body479.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2110, metadata !1555, metadata !DIExpression()), !dbg !2705
  %arrayidx483 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2110, !dbg !2706
  %253 = load i8, ptr %arrayidx483, align 1, !dbg !2706, !tbaa !1637
  %idxprom484 = zext i8 %253 to i64, !dbg !2709
  %arrayidx485 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_listX_table, i64 0, i64 %idxprom484, !dbg !2709
  %254 = load i8, ptr %arrayidx485, align 1, !dbg !2709, !tbaa !1637
  %tobool486.not = icmp eq i8 %254, 0, !dbg !2709
  br i1 %tobool486.not, label %for.inc490, label %if.then487, !dbg !2710

if.then487:                                       ; preds = %for.body479
  %indvars.iv2110.tr = trunc i64 %indvars.iv2110 to i32, !dbg !2711
  %255 = shl i32 %indvars.iv2110.tr, 2, !dbg !2711
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef %255, i32 noundef 2), !dbg !2711
  br label %for.inc490, !dbg !2711

for.inc490:                                       ; preds = %for.body479, %if.then487
  %indvars.iv.next2111 = add nuw nsw i64 %indvars.iv2110, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2111, metadata !1555, metadata !DIExpression()), !dbg !2705
  %exitcond2114.not = icmp eq i64 %indvars.iv.next2111, 4, !dbg !2713
  br i1 %exitcond2114.not, label %for.body498, label %for.body479, !dbg !2704, !llvm.loop !2714

for.body498:                                      ; preds = %for.inc490, %for.inc509
  %indvars.iv2115 = phi i64 [ %indvars.iv.next2116, %for.inc509 ], [ 0, %for.inc490 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2115, metadata !1557, metadata !DIExpression()), !dbg !2716
  %arrayidx502 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %indvars.iv2115, !dbg !2717
  %256 = load i8, ptr %arrayidx502, align 1, !dbg !2717, !tbaa !1637
  %idxprom503 = zext i8 %256 to i64, !dbg !2720
  %arrayidx504 = getelementptr inbounds [2 x [17 x i8]], ptr @x264_mb_partition_listX_table, i64 0, i64 1, i64 %idxprom503, !dbg !2720
  %257 = load i8, ptr %arrayidx504, align 1, !dbg !2720, !tbaa !1637
  %tobool505.not = icmp eq i8 %257, 0, !dbg !2720
  br i1 %tobool505.not, label %for.inc509, label %if.then506, !dbg !2721

if.then506:                                       ; preds = %for.body498
  %indvars.iv2115.tr = trunc i64 %indvars.iv2115 to i32, !dbg !2722
  %258 = shl i32 %indvars.iv2115.tr, 2, !dbg !2722
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef %258, i32 noundef 2), !dbg !2722
  br label %for.inc509, !dbg !2722

for.inc509:                                       ; preds = %for.body498, %if.then506
  %indvars.iv.next2116 = add nuw nsw i64 %indvars.iv2115, 1, !dbg !2723
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2116, metadata !1557, metadata !DIExpression()), !dbg !2716
  %exitcond2119.not = icmp eq i64 %indvars.iv.next2116, 4, !dbg !2724
  br i1 %exitcond2119.not, label %if.end697, label %for.body498, !dbg !2725, !llvm.loop !2726

if.then515:                                       ; preds = %if.else125
  %idxprom516 = sext i32 %0 to i64, !dbg !2728
  %arrayidx517 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %idxprom516, !dbg !2728
  call void @llvm.dbg.value(metadata ptr %arrayidx517, metadata !1559, metadata !DIExpression()), !dbg !2729
  %i_fref520 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !2730
  %259 = load i32, ptr %i_fref520, align 8, !dbg !2731, !tbaa !1982
  %sub522 = add nsw i32 %259, -1, !dbg !2732
  call void @llvm.dbg.value(metadata i32 %sub522, metadata !1564, metadata !DIExpression()), !dbg !2729
  %arrayidx526 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, i64 1, !dbg !2733
  %260 = load i32, ptr %arrayidx526, align 4, !dbg !2733, !tbaa !1982
  %sub527 = add nsw i32 %260, -1, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %sub527, metadata !1565, metadata !DIExpression()), !dbg !2729
  %i_partition529 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !2735
  %261 = load i32, ptr %i_partition529, align 4, !dbg !2735, !tbaa !2107
  %sub530 = add nsw i32 %261, -14, !dbg !2736
  %idxprom531 = sext i32 %sub530 to i64, !dbg !2737
  %sub533 = add nsw i32 %0, -8, !dbg !2738
  %idxprom534 = sext i32 %sub533 to i64, !dbg !2737
  %arrayidx535 = getelementptr inbounds [3 x [9 x i8]], ptr @mb_type_b_to_golomb, i64 0, i64 %idxprom531, i64 %idxprom534, !dbg !2737
  %262 = load i8, ptr %arrayidx535, align 1, !dbg !2737, !tbaa !1637
  %conv536 = zext i8 %262 to i64, !dbg !2737
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2739
  call void @llvm.dbg.value(metadata i8 %262, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2739
  %add.i1708 = add nuw nsw i64 %conv536, 1, !dbg !2741
  %arrayidx.i1710 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1708, !dbg !2742
  %263 = load i8, ptr %arrayidx.i1710, align 1, !dbg !2742, !tbaa !1637
  %conv.i1711 = zext i8 %263 to i32, !dbg !2742
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2743
  call void @llvm.dbg.value(metadata i32 %conv.i1711, metadata !1720, metadata !DIExpression()) #7, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %add.i1708, metadata !1721, metadata !DIExpression()) #7, !dbg !2743
  %cur_bits.i.i1712 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2745
  %264 = load i64, ptr %cur_bits.i.i1712, align 8, !dbg !2745, !tbaa !1679
  %sh_prom.i.i1713 = zext i8 %263 to i64, !dbg !2746
  %shl.i.i1714 = shl i64 %264, %sh_prom.i.i1713, !dbg !2746
  %or.i.i1716 = or i64 %shl.i.i1714, %add.i1708, !dbg !2747
  store i64 %or.i.i1716, ptr %cur_bits.i.i1712, align 8, !dbg !2748, !tbaa !1679
  %sub.i.i1718 = sub nsw i32 %16, %conv.i1711, !dbg !2749
  store i32 %sub.i.i1718, ptr %i_left.i, align 8, !dbg !2749, !tbaa !1651
  %cmp.i.i1719 = icmp slt i32 %sub.i.i1718, 33, !dbg !2750
  br i1 %cmp.i.i1719, label %if.then.i.i1727, label %bs_write_ue.exit1728, !dbg !2751

if.then.i.i1727:                                  ; preds = %if.then515
  %sh_prom6.i.i1720 = zext i32 %sub.i.i1718 to i64, !dbg !2752
  %shl7.i.i1721 = shl i64 %or.i.i1716, %sh_prom6.i.i1720, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1721, metadata !1736, metadata !DIExpression()) #7, !dbg !2753
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1721, metadata !1743, metadata !DIExpression()) #7, !dbg !2755
  %add.i.i.i.i1722 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1721) #7, !dbg !2757
  %conv8.i.i1723 = trunc i64 %add.i.i.i.i1722 to i32, !dbg !2758
  store i32 %conv8.i.i1723, ptr %15, align 4, !dbg !2759, !tbaa !1637
  %265 = load i32, ptr %i_left.i, align 8, !dbg !2760, !tbaa !1651
  %add.i.i1725 = add nsw i32 %265, 32, !dbg !2760
  store i32 %add.i.i1725, ptr %i_left.i, align 8, !dbg !2760, !tbaa !1651
  %266 = load ptr, ptr %p.i, align 8, !dbg !2761, !tbaa !1646
  %add.ptr.i.i1726 = getelementptr inbounds i8, ptr %266, i64 4, !dbg !2761
  store ptr %add.ptr.i.i1726, ptr %p.i, align 8, !dbg !2761, !tbaa !1646
  %.pre2161 = load i32, ptr %i_partition529, align 4, !dbg !2762, !tbaa !2107
  br label %bs_write_ue.exit1728, !dbg !2764

bs_write_ue.exit1728:                             ; preds = %if.then515, %if.then.i.i1727
  %267 = phi i32 [ %261, %if.then515 ], [ %.pre2161, %if.then.i.i1727 ], !dbg !2762
  %cmp539 = icmp eq i32 %267, 16, !dbg !2765
  %tobool542.not = icmp eq i32 %sub522, 0, !dbg !2766
  br i1 %cmp539, label %if.then541, label %if.else582, !dbg !2767

if.then541:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end556, label %land.lhs.true543, !dbg !2768

land.lhs.true543:                                 ; preds = %if.then541
  %268 = load i8, ptr %arrayidx517, align 4, !dbg !2771, !tbaa !1637
  %tobool547.not = icmp eq i8 %268, 0, !dbg !2771
  br i1 %tobool547.not, label %if.end556, label %if.then548, !dbg !2772

if.then548:                                       ; preds = %land.lhs.true543
  %ref551 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2773
  %arrayidx554 = getelementptr inbounds [40 x i8], ptr %ref551, i64 0, i64 12, !dbg !2774
  %269 = load i8, ptr %arrayidx554, align 1, !dbg !2774, !tbaa !1637
  %conv555 = sext i8 %269 to i32, !dbg !2774
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv555), !dbg !2775
  br label %if.end556, !dbg !2775

if.end556:                                        ; preds = %if.then548, %land.lhs.true543, %if.then541
  %tobool557.not = icmp eq i32 %sub527, 0, !dbg !2776
  br i1 %tobool557.not, label %if.end571, label %land.lhs.true558, !dbg !2778

land.lhs.true558:                                 ; preds = %if.end556
  %arrayidx559 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, !dbg !2779
  %270 = load i8, ptr %arrayidx559, align 2, !dbg !2779, !tbaa !1637
  %tobool562.not = icmp eq i8 %270, 0, !dbg !2779
  br i1 %tobool562.not, label %if.end571, label %if.then563, !dbg !2780

if.then563:                                       ; preds = %land.lhs.true558
  %arrayidx569 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !2781
  %271 = load i8, ptr %arrayidx569, align 1, !dbg !2781, !tbaa !1637
  %conv570 = sext i8 %271 to i32, !dbg !2781
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv570), !dbg !2782
  br label %if.end571, !dbg !2782

if.end571:                                        ; preds = %if.then563, %land.lhs.true558, %if.end556
  %272 = load i8, ptr %arrayidx517, align 4, !dbg !2783, !tbaa !1637
  %tobool574.not = icmp eq i8 %272, 0, !dbg !2783
  br i1 %tobool574.not, label %if.end576, label %if.then575, !dbg !2785

if.then575:                                       ; preds = %if.end571
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2786
  br label %if.end576, !dbg !2786

if.end576:                                        ; preds = %if.then575, %if.end571
  %arrayidx577 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, !dbg !2787
  %273 = load i8, ptr %arrayidx577, align 2, !dbg !2787, !tbaa !1637
  %tobool579.not = icmp eq i8 %273, 0, !dbg !2787
  br i1 %tobool579.not, label %if.end697, label %if.then580, !dbg !2789

if.then580:                                       ; preds = %if.end576
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4), !dbg !2790
  br label %if.end697, !dbg !2790

if.else582:                                       ; preds = %bs_write_ue.exit1728
  br i1 %tobool542.not, label %if.end612, label %land.lhs.true584, !dbg !2791

land.lhs.true584:                                 ; preds = %if.else582
  %274 = load i8, ptr %arrayidx517, align 4, !dbg !2794, !tbaa !1637
  %tobool588.not = icmp eq i8 %274, 0, !dbg !2794
  br i1 %tobool588.not, label %land.lhs.true599, label %if.then589, !dbg !2795

if.then589:                                       ; preds = %land.lhs.true584
  %ref592 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2796
  %arrayidx595 = getelementptr inbounds [40 x i8], ptr %ref592, i64 0, i64 12, !dbg !2797
  %275 = load i8, ptr %arrayidx595, align 1, !dbg !2797, !tbaa !1637
  %conv596 = sext i8 %275 to i32, !dbg !2797
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv596), !dbg !2798
  br label %land.lhs.true599, !dbg !2798

land.lhs.true599:                                 ; preds = %land.lhs.true584, %if.then589
  %arrayidx601 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 0, i64 1, !dbg !2799
  %276 = load i8, ptr %arrayidx601, align 1, !dbg !2799, !tbaa !1637
  %tobool603.not = icmp eq i8 %276, 0, !dbg !2799
  br i1 %tobool603.not, label %if.end612, label %if.then604, !dbg !2801

if.then604:                                       ; preds = %land.lhs.true599
  %ref607 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2802
  %arrayidx610 = getelementptr inbounds [40 x i8], ptr %ref607, i64 0, i64 30, !dbg !2803
  %277 = load i8, ptr %arrayidx610, align 1, !dbg !2803, !tbaa !1637
  %conv611 = sext i8 %277 to i32, !dbg !2803
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub522, i32 noundef %conv611), !dbg !2804
  br label %if.end612, !dbg !2804

if.end612:                                        ; preds = %if.else582, %if.then604, %land.lhs.true599
  %tobool613.not = icmp eq i32 %sub527, 0, !dbg !2805
  br i1 %tobool613.not, label %if.end642, label %land.lhs.true614, !dbg !2807

land.lhs.true614:                                 ; preds = %if.end612
  %arrayidx615 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, !dbg !2808
  %278 = load i8, ptr %arrayidx615, align 2, !dbg !2808, !tbaa !1637
  %tobool618.not = icmp eq i8 %278, 0, !dbg !2808
  br i1 %tobool618.not, label %land.lhs.true629, label %if.then619, !dbg !2809

if.then619:                                       ; preds = %land.lhs.true614
  %arrayidx625 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !2810
  %279 = load i8, ptr %arrayidx625, align 1, !dbg !2810, !tbaa !1637
  %conv626 = sext i8 %279 to i32, !dbg !2810
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv626), !dbg !2811
  br label %land.lhs.true629, !dbg !2811

land.lhs.true629:                                 ; preds = %land.lhs.true614, %if.then619
  %arrayidx631 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, i64 1, !dbg !2812
  %280 = load i8, ptr %arrayidx631, align 1, !dbg !2812, !tbaa !1637
  %tobool633.not = icmp eq i8 %280, 0, !dbg !2812
  br i1 %tobool633.not, label %if.end642, label %if.then634, !dbg !2814

if.then634:                                       ; preds = %land.lhs.true629
  %arrayidx640 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30, !dbg !2815
  %281 = load i8, ptr %arrayidx640, align 1, !dbg !2815, !tbaa !1637
  %conv641 = sext i8 %281 to i32, !dbg !2815
  tail call fastcc void @bs_write_te(ptr noundef nonnull %bs, i32 noundef %sub527, i32 noundef %conv641), !dbg !2816
  br label %if.end642, !dbg !2816

if.end642:                                        ; preds = %if.end612, %if.then634, %land.lhs.true629
  %282 = load i32, ptr %i_partition529, align 4, !dbg !2817, !tbaa !2107
  %cmp645 = icmp eq i32 %282, 14, !dbg !2819
  %283 = load i8, ptr %arrayidx517, align 4, !dbg !2820, !tbaa !1637
  %tobool650.not = icmp eq i8 %283, 0, !dbg !2820
  br i1 %cmp645, label %if.then647, label %if.else668, !dbg !2821

if.then647:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end652, label %if.then651, !dbg !2822

if.then651:                                       ; preds = %if.then647
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4), !dbg !2824
  br label %if.end652, !dbg !2824

if.end652:                                        ; preds = %if.then651, %if.then647
  %arrayidx654 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 0, i64 1, !dbg !2826
  %284 = load i8, ptr %arrayidx654, align 1, !dbg !2826, !tbaa !1637
  %tobool655.not = icmp eq i8 %284, 0, !dbg !2826
  br i1 %tobool655.not, label %if.end657, label %if.then656, !dbg !2828

if.then656:                                       ; preds = %if.end652
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 8, i32 noundef 4), !dbg !2829
  br label %if.end657, !dbg !2829

if.end657:                                        ; preds = %if.then656, %if.end652
  %arrayidx658 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, !dbg !2830
  %285 = load i8, ptr %arrayidx658, align 2, !dbg !2830, !tbaa !1637
  %tobool660.not = icmp eq i8 %285, 0, !dbg !2830
  br i1 %tobool660.not, label %if.end662, label %if.then661, !dbg !2832

if.then661:                                       ; preds = %if.end657
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 4), !dbg !2833
  br label %if.end662, !dbg !2833

if.end662:                                        ; preds = %if.then661, %if.end657
  %arrayidx664 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, i64 1, !dbg !2834
  %286 = load i8, ptr %arrayidx664, align 1, !dbg !2834, !tbaa !1637
  %tobool665.not = icmp eq i8 %286, 0, !dbg !2834
  br i1 %tobool665.not, label %if.end697, label %if.then666, !dbg !2836

if.then666:                                       ; preds = %if.end662
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 8, i32 noundef 4), !dbg !2837
  br label %if.end697, !dbg !2837

if.else668:                                       ; preds = %if.end642
  br i1 %tobool650.not, label %if.end673, label %if.then672, !dbg !2838

if.then672:                                       ; preds = %if.else668
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2), !dbg !2840
  br label %if.end673, !dbg !2840

if.end673:                                        ; preds = %if.then672, %if.else668
  %arrayidx675 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 0, i64 1, !dbg !2842
  %287 = load i8, ptr %arrayidx675, align 1, !dbg !2842, !tbaa !1637
  %tobool676.not = icmp eq i8 %287, 0, !dbg !2842
  br i1 %tobool676.not, label %if.end678, label %if.then677, !dbg !2844

if.then677:                                       ; preds = %if.end673
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !2845
  br label %if.end678, !dbg !2845

if.end678:                                        ; preds = %if.then677, %if.end673
  %arrayidx679 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, !dbg !2846
  %288 = load i8, ptr %arrayidx679, align 2, !dbg !2846, !tbaa !1637
  %tobool681.not = icmp eq i8 %288, 0, !dbg !2846
  br i1 %tobool681.not, label %if.end683, label %if.then682, !dbg !2848

if.then682:                                       ; preds = %if.end678
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 0, i32 noundef 2), !dbg !2849
  br label %if.end683, !dbg !2849

if.end683:                                        ; preds = %if.then682, %if.end678
  %arrayidx685 = getelementptr inbounds [2 x i8], ptr %arrayidx517, i64 1, i64 1, !dbg !2850
  %289 = load i8, ptr %arrayidx685, align 1, !dbg !2850, !tbaa !1637
  %tobool686.not = icmp eq i8 %289, 0, !dbg !2850
  br i1 %tobool686.not, label %if.end697, label %if.then687, !dbg !2852

if.then687:                                       ; preds = %if.end683
  tail call fastcc void @cavlc_mb_mvd(ptr noundef nonnull %h, i32 noundef 1, i32 noundef 4, i32 noundef 2), !dbg !2853
  br label %if.end697, !dbg !2853

if.else691:                                       ; preds = %if.else125
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2854
  call void @llvm.dbg.value(metadata i32 1, metadata !1674, metadata !DIExpression()) #7, !dbg !2854
  %cur_bits.i1729 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2856
  %290 = load i64, ptr %cur_bits.i1729, align 8, !dbg !2857, !tbaa !1679
  %shl.i1730 = shl i64 %290, 1, !dbg !2857
  %or.i1731 = or i64 %shl.i1730, 1, !dbg !2858
  store i64 %or.i1731, ptr %cur_bits.i1729, align 8, !dbg !2858, !tbaa !1679
  %dec.i1733 = add nsw i32 %16, -1, !dbg !2859
  store i32 %dec.i1733, ptr %i_left.i, align 8, !dbg !2859, !tbaa !1651
  %cmp.i1734 = icmp eq i32 %dec.i1733, 32, !dbg !2860
  br i1 %cmp.i1734, label %if.then.i1739, label %if.end697, !dbg !2861

if.then.i1739:                                    ; preds = %if.else691
  %conv6.i1735 = trunc i64 %or.i1731 to i32, !dbg !2862
  call void @llvm.dbg.value(metadata i32 %conv6.i1735, metadata !1688, metadata !DIExpression()) #7, !dbg !2863
  %add5.i.i1736 = tail call i32 @llvm.bswap.i32(i32 %conv6.i1735) #7, !dbg !2865
  store i32 %add5.i.i1736, ptr %15, align 4, !dbg !2866, !tbaa !1637
  %291 = load ptr, ptr %p.i, align 8, !dbg !2867, !tbaa !1646
  %add.ptr.i1738 = getelementptr inbounds i8, ptr %291, i64 4, !dbg !2867
  store ptr %add.ptr.i1738, ptr %p.i, align 8, !dbg !2867, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2868, !tbaa !1651
  br label %if.end697, !dbg !2869

if.end697:                                        ; preds = %for.inc509, %cavlc_mb8x8_mvd.exit, %if.then.i1739, %if.else691, %if.then.i.i1404, %bs_write_ue.exit1384, %if.then.i.i1335, %for.cond.cleanup98, %if.then580, %if.end576, %if.end683, %if.then687, %if.end662, %if.then666, %if.then151, %if.end173, %if.end249, %if.end211
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1638, metadata !DIExpression()), !dbg !2870
  %292 = load ptr, ptr %p.i, align 8, !dbg !2872, !tbaa !1646
  %293 = load ptr, ptr %bs, align 8, !dbg !2873, !tbaa !1648
  %sub.ptr.lhs.cast.i1742 = ptrtoint ptr %292 to i64, !dbg !2874
  %sub.ptr.rhs.cast.i1743 = ptrtoint ptr %293 to i64, !dbg !2874
  %sub.ptr.sub.i1744 = sub i64 %sub.ptr.lhs.cast.i1742, %sub.ptr.rhs.cast.i1743, !dbg !2874
  %294 = load i32, ptr %i_left.i, align 8, !dbg !2875, !tbaa !1651
  %sub.ptr.sub.tr.i1746 = trunc i64 %sub.ptr.sub.i1744 to i32, !dbg !2876
  %295 = shl i32 %sub.ptr.sub.tr.i1746, 3, !dbg !2876
  %296 = sub i32 64, %294, !dbg !2876
  %conv1.i1747 = add i32 %295, %296, !dbg !2876
  call void @llvm.dbg.value(metadata i32 %conv1.i1747, metadata !1518, metadata !DIExpression()), !dbg !1601
  %stat700 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 57, !dbg !2877
  %297 = load i32, ptr %stat700, align 8, !dbg !2878, !tbaa !1773
  %sub699 = add i32 %297, %conv1.i.neg2096, !dbg !2879
  %add703 = add i32 %sub699, %conv1.i1747, !dbg !2878
  store i32 %add703, ptr %stat700, align 8, !dbg !2878, !tbaa !1773
  br i1 %57, label %if.then709, label %if.else718, !dbg !2880

if.then709:                                       ; preds = %if.end697
  %i_cbp_chroma711 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !2882
  %298 = load i32, ptr %i_cbp_chroma711, align 4, !dbg !2882, !tbaa !2044
  %shl = shl i32 %298, 4, !dbg !2883
  %i_cbp_luma713 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !2884
  %299 = load i32, ptr %i_cbp_luma713, align 8, !dbg !2884, !tbaa !2047
  %or714 = or i32 %shl, %299, !dbg !2885
  %idxprom715 = sext i32 %or714 to i64, !dbg !2886
  %arrayidx716 = getelementptr inbounds [48 x i8], ptr @intra4x4_cbp_to_golomb, i64 0, i64 %idxprom715, !dbg !2886
  %300 = load i8, ptr %arrayidx716, align 1, !dbg !2886, !tbaa !1637
  %conv717 = zext i8 %300 to i64, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2887
  call void @llvm.dbg.value(metadata i8 %300, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2887
  %add.i1748 = add nuw nsw i64 %conv717, 1, !dbg !2889
  %arrayidx.i1750 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1748, !dbg !2890
  %301 = load i8, ptr %arrayidx.i1750, align 1, !dbg !2890, !tbaa !1637
  %conv.i1751 = zext i8 %301 to i32, !dbg !2890
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2891
  call void @llvm.dbg.value(metadata i32 %conv.i1751, metadata !1720, metadata !DIExpression()) #7, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %add.i1748, metadata !1721, metadata !DIExpression()) #7, !dbg !2891
  %cur_bits.i.i1752 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2893
  %302 = load i64, ptr %cur_bits.i.i1752, align 8, !dbg !2893, !tbaa !1679
  %sh_prom.i.i1753 = zext i8 %301 to i64, !dbg !2894
  %shl.i.i1754 = shl i64 %302, %sh_prom.i.i1753, !dbg !2894
  %or.i.i1756 = or i64 %shl.i.i1754, %add.i1748, !dbg !2895
  store i64 %or.i.i1756, ptr %cur_bits.i.i1752, align 8, !dbg !2896, !tbaa !1679
  %sub.i.i1758 = sub nsw i32 %294, %conv.i1751, !dbg !2897
  store i32 %sub.i.i1758, ptr %i_left.i, align 8, !dbg !2897, !tbaa !1651
  %cmp.i.i1759 = icmp slt i32 %sub.i.i1758, 33, !dbg !2898
  br i1 %cmp.i.i1759, label %if.end732.sink.split, label %if.end732, !dbg !2899

if.else718:                                       ; preds = %if.end697
  %cmp719.not = icmp eq i32 %0, 2, !dbg !2900
  br i1 %cmp719.not, label %if.end732, label %if.then721, !dbg !2902

if.then721:                                       ; preds = %if.else718
  %i_cbp_chroma723 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !2903
  %303 = load i32, ptr %i_cbp_chroma723, align 4, !dbg !2903, !tbaa !2044
  %shl724 = shl i32 %303, 4, !dbg !2904
  %i_cbp_luma726 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !2905
  %304 = load i32, ptr %i_cbp_luma726, align 8, !dbg !2905, !tbaa !2047
  %or727 = or i32 %shl724, %304, !dbg !2906
  %idxprom728 = sext i32 %or727 to i64, !dbg !2907
  %arrayidx729 = getelementptr inbounds [48 x i8], ptr @inter_cbp_to_golomb, i64 0, i64 %idxprom728, !dbg !2907
  %305 = load i8, ptr %arrayidx729, align 1, !dbg !2907, !tbaa !1637
  %conv730 = zext i8 %305 to i64, !dbg !2907
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1705, metadata !DIExpression()) #7, !dbg !2908
  call void @llvm.dbg.value(metadata i8 %305, metadata !1710, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2908
  %add.i1769 = add nuw nsw i64 %conv730, 1, !dbg !2910
  %arrayidx.i1771 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %add.i1769, !dbg !2911
  %306 = load i8, ptr %arrayidx.i1771, align 1, !dbg !2911, !tbaa !1637
  %conv.i1772 = zext i8 %306 to i32, !dbg !2911
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !2912
  call void @llvm.dbg.value(metadata i32 %conv.i1772, metadata !1720, metadata !DIExpression()) #7, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %add.i1769, metadata !1721, metadata !DIExpression()) #7, !dbg !2912
  %cur_bits.i.i1773 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2914
  %307 = load i64, ptr %cur_bits.i.i1773, align 8, !dbg !2914, !tbaa !1679
  %sh_prom.i.i1774 = zext i8 %306 to i64, !dbg !2915
  %shl.i.i1775 = shl i64 %307, %sh_prom.i.i1774, !dbg !2915
  %or.i.i1777 = or i64 %shl.i.i1775, %add.i1769, !dbg !2916
  store i64 %or.i.i1777, ptr %cur_bits.i.i1773, align 8, !dbg !2917, !tbaa !1679
  %sub.i.i1779 = sub nsw i32 %294, %conv.i1772, !dbg !2918
  store i32 %sub.i.i1779, ptr %i_left.i, align 8, !dbg !2918, !tbaa !1651
  %cmp.i.i1780 = icmp slt i32 %sub.i.i1779, 33, !dbg !2919
  br i1 %cmp.i.i1780, label %if.end732.sink.split, label %if.end732, !dbg !2920

if.end732.sink.split:                             ; preds = %if.then721, %if.then709
  %sub.i.i1758.sink = phi i32 [ %sub.i.i1758, %if.then709 ], [ %sub.i.i1779, %if.then721 ]
  %or.i.i1756.sink = phi i64 [ %or.i.i1756, %if.then709 ], [ %or.i.i1777, %if.then721 ]
  %sh_prom6.i.i1760 = zext i32 %sub.i.i1758.sink to i64, !dbg !2921
  %shl7.i.i1761 = shl i64 %or.i.i1756.sink, %sh_prom6.i.i1760, !dbg !2921
  %add.i.i.i.i1762 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1761) #7, !dbg !2921
  %storemerge2178 = trunc i64 %add.i.i.i.i1762 to i32, !dbg !2921
  store i32 %storemerge2178, ptr %292, align 4, !dbg !2921, !tbaa !1637
  %storemerge.in = load i32, ptr %i_left.i, align 8, !dbg !2921, !tbaa !1651
  %storemerge = add nsw i32 %storemerge.in, 32, !dbg !2921
  store i32 %storemerge, ptr %i_left.i, align 8, !dbg !2921, !tbaa !1651
  %.pn = load ptr, ptr %p.i, align 8, !dbg !2921, !tbaa !1646
  %add.ptr.i.i1787.sink = getelementptr inbounds i8, ptr %.pn, i64 4, !dbg !2921
  store ptr %add.ptr.i.i1787.sink, ptr %p.i, align 8, !dbg !2921, !tbaa !1646
  br label %if.end732, !dbg !2922

if.end732:                                        ; preds = %if.end732.sink.split, %if.then721, %if.then709, %if.else718
  %308 = phi ptr [ %292, %if.then721 ], [ %292, %if.then709 ], [ %292, %if.else718 ], [ %add.ptr.i.i1787.sink, %if.end732.sink.split ]
  %309 = phi i32 [ %sub.i.i1779, %if.then721 ], [ %sub.i.i1758, %if.then709 ], [ %294, %if.else718 ], [ %storemerge, %if.end732.sink.split ]
  call void @llvm.dbg.value(metadata ptr %h, metadata !1458, metadata !DIExpression()), !dbg !2926
  %pps.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !2922
  %310 = load ptr, ptr %pps.i, align 16, !dbg !2922, !tbaa !1917
  %b_transform_8x8_mode.i = getelementptr inbounds %struct.x264_pps_t, ptr %310, i64 0, i32 15, !dbg !2927
  %311 = load i32, ptr %b_transform_8x8_mode.i, align 4, !dbg !2927, !tbaa !1919
  %tobool.not.i = icmp eq i32 %311, 0, !dbg !2928
  br i1 %tobool.not.i, label %if.end742, label %if.end.i, !dbg !2929

if.end.i:                                         ; preds = %if.end732
  %312 = load i32, ptr %i_type, align 8, !dbg !2930, !tbaa !1604
  %cmp.not.i = icmp eq i32 %312, 5, !dbg !2932
  br i1 %cmp.not.i, label %if.end4.i, label %if.then1.i, !dbg !2933

if.then1.i:                                       ; preds = %if.end.i
  %idxprom.i1790 = sext i32 %312 to i64, !dbg !2934
  %arrayidx.i1791 = getelementptr inbounds [19 x i8], ptr @x264_mb_transform_8x8_allowed.partition_tab, i64 0, i64 %idxprom.i1790, !dbg !2934
  %313 = load i8, ptr %arrayidx.i1791, align 1, !dbg !2934, !tbaa !1637
  %conv.i1792 = zext i8 %313 to i32, !dbg !2934
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !2935

if.end4.i:                                        ; preds = %if.end.i
  %i_sub_partition.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, !dbg !2936
  %314 = load i32, ptr %i_sub_partition.i, align 16, !dbg !2936, !tbaa !1637
  %cmp6.i = icmp eq i32 %314, 50529027, !dbg !2937
  %conv7.i = zext i1 %cmp6.i to i32, !dbg !2937
  br label %x264_mb_transform_8x8_allowed.exit, !dbg !2938

x264_mb_transform_8x8_allowed.exit:               ; preds = %if.then1.i, %if.end4.i
  %retval.0.i = phi i32 [ %conv.i1792, %if.then1.i ], [ %conv7.i, %if.end4.i ], !dbg !2926
  %tobool734.not = icmp eq i32 %retval.0.i, 0, !dbg !2939
  br i1 %tobool734.not, label %if.end742, label %land.lhs.true735, !dbg !2940

land.lhs.true735:                                 ; preds = %x264_mb_transform_8x8_allowed.exit
  %i_cbp_luma737 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !2941
  %315 = load i32, ptr %i_cbp_luma737, align 8, !dbg !2941, !tbaa !2047
  %tobool738.not = icmp eq i32 %315, 0, !dbg !2942
  br i1 %tobool738.not, label %if.end742, label %if.then739, !dbg !2943

if.then739:                                       ; preds = %land.lhs.true735
  %b_transform_8x8741 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !2944
  %316 = load i32, ptr %b_transform_8x8741, align 4, !dbg !2944, !tbaa !1924
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1669, metadata !DIExpression()) #7, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %316, metadata !1674, metadata !DIExpression()) #7, !dbg !2945
  %cur_bits.i1793 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !2947
  %317 = load i64, ptr %cur_bits.i1793, align 8, !dbg !2948, !tbaa !1679
  %shl.i1794 = shl i64 %317, 1, !dbg !2948
  %conv.i1795 = zext i32 %316 to i64, !dbg !2949
  %or.i1796 = or i64 %shl.i1794, %conv.i1795, !dbg !2950
  store i64 %or.i1796, ptr %cur_bits.i1793, align 8, !dbg !2950, !tbaa !1679
  %dec.i1798 = add nsw i32 %309, -1, !dbg !2951
  store i32 %dec.i1798, ptr %i_left.i, align 8, !dbg !2951, !tbaa !1651
  %cmp.i1799 = icmp eq i32 %dec.i1798, 32, !dbg !2952
  br i1 %cmp.i1799, label %if.then.i1804, label %if.end742, !dbg !2953

if.then.i1804:                                    ; preds = %if.then739
  %conv6.i1800 = trunc i64 %or.i1796 to i32, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %conv6.i1800, metadata !1688, metadata !DIExpression()) #7, !dbg !2955
  %add5.i.i1801 = tail call i32 @llvm.bswap.i32(i32 %conv6.i1800) #7, !dbg !2957
  store i32 %add5.i.i1801, ptr %308, align 4, !dbg !2958, !tbaa !1637
  %318 = load ptr, ptr %p.i, align 8, !dbg !2959, !tbaa !1646
  %add.ptr.i1803 = getelementptr inbounds i8, ptr %318, i64 4, !dbg !2959
  store ptr %add.ptr.i1803, ptr %p.i, align 8, !dbg !2959, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !2960, !tbaa !1651
  br label %if.end742, !dbg !2961

if.end742:                                        ; preds = %if.end732, %if.then.i1804, %if.then739, %land.lhs.true735, %x264_mb_transform_8x8_allowed.exit
  %319 = phi ptr [ %308, %if.end732 ], [ %add.ptr.i1803, %if.then.i1804 ], [ %308, %if.then739 ], [ %308, %land.lhs.true735 ], [ %308, %x264_mb_transform_8x8_allowed.exit ]
  %320 = phi i32 [ %309, %if.end732 ], [ 64, %if.then.i1804 ], [ %dec.i1798, %if.then739 ], [ %309, %land.lhs.true735 ], [ %309, %x264_mb_transform_8x8_allowed.exit ]
  %cmp743 = icmp eq i32 %0, 2, !dbg !2962
  br i1 %cmp743, label %if.then745, label %if.else817, !dbg !2963

if.then745:                                       ; preds = %if.end742
  call void @llvm.dbg.value(metadata ptr %h, metadata !2964, metadata !DIExpression()) #7, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %h, metadata !2967, metadata !DIExpression(DW_OP_plus_uconst, 1760, DW_OP_plus_uconst, 32, DW_OP_stack_value)) #7, !dbg !2969
  %i_qp.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 68, !dbg !2971
  %321 = load i32, ptr %i_qp.i, align 16, !dbg !2971, !tbaa !2972
  %i_last_qp.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 70, !dbg !2973
  %322 = load i32, ptr %i_last_qp.i, align 8, !dbg !2973, !tbaa !2974
  %sub.i1807 = sub nsw i32 %321, %322, !dbg !2975
  call void @llvm.dbg.value(metadata i32 %sub.i1807, metadata !2968, metadata !DIExpression()) #7, !dbg !2969
  %323 = load i32, ptr %i_type, align 8, !dbg !2976, !tbaa !1604
  %cmp.i1809 = icmp eq i32 %323, 2, !dbg !2978
  br i1 %cmp.i1809, label %land.lhs.true.i, label %if.end.i1813, !dbg !2979

land.lhs.true.i:                                  ; preds = %if.then745
  %i_cbp_luma.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !2980
  %324 = load i32, ptr %i_cbp_luma.i, align 8, !dbg !2980, !tbaa !2047
  %i_cbp_chroma.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !2981
  %325 = load i32, ptr %i_cbp_chroma.i, align 4, !dbg !2981, !tbaa !2044
  %or.i1810 = or i32 %325, %324, !dbg !2982
  %tobool.not.i1811 = icmp eq i32 %or.i1810, 0, !dbg !2982
  br i1 %tobool.not.i1811, label %land.lhs.true5.i, label %if.end.i1813, !dbg !2983

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %arrayidx.i1812 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 44, !dbg !2984
  %326 = load i8, ptr %arrayidx.i1812, align 1, !dbg !2984, !tbaa !1637
  %tobool7.not.i = icmp eq i8 %326, 0, !dbg !2984
  br i1 %tobool7.not.i, label %if.end.thread.i, label %if.end.i1813, !dbg !2985

if.end.thread.i:                                  ; preds = %land.lhs.true5.i
  store i32 %322, ptr %i_qp.i, align 16, !dbg !2986, !tbaa !2972
  call void @llvm.dbg.value(metadata i32 %sub.i1807, metadata !2968, metadata !DIExpression()) #7, !dbg !2969
  br label %if.end21.thread.i, !dbg !2988

if.end.i1813:                                     ; preds = %land.lhs.true5.i, %land.lhs.true.i, %if.then745
  call void @llvm.dbg.value(metadata i32 %sub.i1807, metadata !2968, metadata !DIExpression()) #7, !dbg !2969
  %tobool12.not.i = icmp eq i32 %321, %322, !dbg !2989
  br i1 %tobool12.not.i, label %if.end21.thread.i, label %if.then13.i, !dbg !2988

if.then13.i:                                      ; preds = %if.end.i1813
  %cmp14.i = icmp slt i32 %sub.i1807, -26, !dbg !2991
  br i1 %cmp14.i, label %if.then15.i, label %if.else.i1815, !dbg !2994

if.then15.i:                                      ; preds = %if.then13.i
  %add.i1814 = add nsw i32 %sub.i1807, 52, !dbg !2995
  call void @llvm.dbg.value(metadata i32 %add.i1814, metadata !2968, metadata !DIExpression()) #7, !dbg !2969
  br label %if.end21.i, !dbg !2996

if.else.i1815:                                    ; preds = %if.then13.i
  %cmp16.i = icmp sgt i32 %sub.i1807, 25, !dbg !2997
  %sub18.i = add nsw i32 %sub.i1807, -52
  %spec.select.i = select i1 %cmp16.i, i32 %sub18.i, i32 %sub.i1807, !dbg !2999
  br label %if.end21.i, !dbg !2999

if.end21.i:                                       ; preds = %if.else.i1815, %if.then15.i
  %i_dqp.1.i = phi i32 [ %add.i1814, %if.then15.i ], [ %spec.select.i, %if.else.i1815 ], !dbg !2969
  call void @llvm.dbg.value(metadata ptr %h, metadata !2967, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !2969
  call void @llvm.dbg.value(metadata i32 %i_dqp.1.i, metadata !2968, metadata !DIExpression()) #7, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %h, metadata !3000, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %i_dqp.1.i, metadata !3003, metadata !DIExpression()) #7, !dbg !3006
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #7, !dbg !3006
  %mul.i.i = shl nsw i32 %i_dqp.1.i, 1, !dbg !3008
  %sub.i.i1816 = sub nsw i32 1, %mul.i.i, !dbg !3009
  call void @llvm.dbg.value(metadata i32 %sub.i.i1816, metadata !3005, metadata !DIExpression()) #7, !dbg !3006
  %cmp.i.i1817 = icmp sgt i32 %i_dqp.1.i, 0, !dbg !3010
  %spec.select43.i = select i1 %cmp.i.i1817, i32 %mul.i.i, i32 %sub.i.i1816, !dbg !3012
  br label %if.end21.thread.i, !dbg !3012

if.end21.thread.i:                                ; preds = %if.end21.i, %if.end.i1813, %if.end.thread.i
  %327 = phi i32 [ %spec.select43.i, %if.end21.i ], [ 1, %if.end.i1813 ], [ 1, %if.end.thread.i ]
  call void @llvm.dbg.value(metadata i32 %327, metadata !3005, metadata !DIExpression()) #7, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %327, metadata !3003, metadata !DIExpression()) #7, !dbg !3006
  %cmp2.i.i = icmp sgt i32 %327, 255, !dbg !3013
  %shr.i.i = ashr i32 %327, 8
  %spec.select12.i.i = select i1 %cmp2.i.i, i32 16, i32 0, !dbg !3015
  %spec.select13.i.i = select i1 %cmp2.i.i, i32 %shr.i.i, i32 %327, !dbg !3015
  call void @llvm.dbg.value(metadata i32 %spec.select13.i.i, metadata !3005, metadata !DIExpression()) #7, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %spec.select12.i.i, metadata !3004, metadata !DIExpression()) #7, !dbg !3006
  %idxprom.i.i1818 = sext i32 %spec.select13.i.i to i64, !dbg !3016
  %arrayidx.i.i1819 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1818, !dbg !3016
  %328 = load i8, ptr %arrayidx.i.i1819, align 1, !dbg !3016, !tbaa !1637
  %conv.i.i1820 = zext i8 %328 to i32, !dbg !3016
  %add.i.i1821 = add nuw nsw i32 %spec.select12.i.i, %conv.i.i1820, !dbg !3017
  call void @llvm.dbg.value(metadata i32 %add.i.i1821, metadata !3004, metadata !DIExpression()) #7, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %add.i.i1821, metadata !1720, metadata !DIExpression()) #7, !dbg !3018
  call void @llvm.dbg.value(metadata i32 %327, metadata !1721, metadata !DIExpression()) #7, !dbg !3018
  %cur_bits.i.i.i1822 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3020
  %329 = load i64, ptr %cur_bits.i.i.i1822, align 8, !dbg !3020, !tbaa !1679
  %sh_prom.i.i.i1823 = zext i32 %add.i.i1821 to i64, !dbg !3021
  %shl.i.i.i1824 = shl i64 %329, %sh_prom.i.i.i1823, !dbg !3021
  %conv.i.i.i1825 = zext i32 %327 to i64, !dbg !3022
  %or.i.i.i1826 = or i64 %shl.i.i.i1824, %conv.i.i.i1825, !dbg !3023
  store i64 %or.i.i.i1826, ptr %cur_bits.i.i.i1822, align 8, !dbg !3024, !tbaa !1679
  %sub.i.i.i1828 = sub nsw i32 %320, %add.i.i1821, !dbg !3025
  store i32 %sub.i.i.i1828, ptr %i_left.i, align 8, !dbg !3025, !tbaa !1651
  %cmp.i.i.i1829 = icmp slt i32 %sub.i.i.i1828, 33, !dbg !3026
  br i1 %cmp.i.i.i1829, label %if.then.i.i.i1837, label %cavlc_qp_delta.exit, !dbg !3027

if.then.i.i.i1837:                                ; preds = %if.end21.thread.i
  %sh_prom6.i.i.i1830 = zext i32 %sub.i.i.i1828 to i64, !dbg !3028
  %shl7.i.i.i1831 = shl i64 %or.i.i.i1826, %sh_prom6.i.i.i1830, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1831, metadata !1736, metadata !DIExpression()) #7, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1831, metadata !1743, metadata !DIExpression()) #7, !dbg !3031
  %add.i.i.i.i.i1832 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1831) #7, !dbg !3033
  %conv8.i.i.i1833 = trunc i64 %add.i.i.i.i.i1832 to i32, !dbg !3034
  store i32 %conv8.i.i.i1833, ptr %319, align 4, !dbg !3035, !tbaa !1637
  %330 = load i32, ptr %i_left.i, align 8, !dbg !3036, !tbaa !1651
  %add.i.i.i1835 = add nsw i32 %330, 32, !dbg !3036
  store i32 %add.i.i.i1835, ptr %i_left.i, align 8, !dbg !3036, !tbaa !1651
  %331 = load ptr, ptr %p.i, align 8, !dbg !3037, !tbaa !1646
  %add.ptr.i.i.i1836 = getelementptr inbounds i8, ptr %331, i64 4, !dbg !3037
  store ptr %add.ptr.i.i.i1836, ptr %p.i, align 8, !dbg !3037, !tbaa !1646
  br label %cavlc_qp_delta.exit, !dbg !3038

cavlc_qp_delta.exit:                              ; preds = %if.end21.thread.i, %if.then.i.i.i1837
  %332 = phi ptr [ %319, %if.end21.thread.i ], [ %add.ptr.i.i.i1836, %if.then.i.i.i1837 ]
  %333 = phi i32 [ %sub.i.i.i1828, %if.end21.thread.i ], [ %add.i.i.i1835, %if.then.i.i.i1837 ]
  call void @llvm.dbg.value(metadata ptr %h, metadata !3039, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i32 0, metadata !3042, metadata !DIExpression()), !dbg !3046
  %arrayidx2.i1838 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 11, !dbg !3048
  %334 = load i8, ptr %arrayidx2.i1838, align 1, !dbg !3048, !tbaa !1637
  %conv.i1839 = zext i8 %334 to i32, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %conv.i1839, metadata !3043, metadata !DIExpression()), !dbg !3046
  %arrayidx10.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 4, !dbg !3049
  %335 = load i8, ptr %arrayidx10.i, align 1, !dbg !3049, !tbaa !1637
  %conv11.i = zext i8 %335 to i32, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %conv11.i, metadata !3044, metadata !DIExpression()), !dbg !3046
  %add.i1840 = add nuw nsw i32 %conv11.i, %conv.i1839, !dbg !3050
  call void @llvm.dbg.value(metadata i32 %add.i1840, metadata !3045, metadata !DIExpression()), !dbg !3046
  %cmp.i1841 = icmp ult i32 %add.i1840, 128, !dbg !3051
  br i1 %cmp.i1841, label %if.then.i1842, label %x264_mb_predict_non_zero_code.exit, !dbg !3053

if.then.i1842:                                    ; preds = %cavlc_qp_delta.exit
  %add13.i = add nuw nsw i32 %add.i1840, 1, !dbg !3054
  %336 = lshr i32 %add13.i, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i32 %336, metadata !3045, metadata !DIExpression()), !dbg !3046
  br label %x264_mb_predict_non_zero_code.exit, !dbg !3056

x264_mb_predict_non_zero_code.exit:               ; preds = %cavlc_qp_delta.exit, %if.then.i1842
  %i_ret.0.i = phi i32 [ %336, %if.then.i1842 ], [ %add.i1840, %cavlc_qp_delta.exit ], !dbg !3046
  call void @llvm.dbg.value(metadata i32 %i_ret.0.i, metadata !3045, metadata !DIExpression()), !dbg !3046
  %and.i1843 = and i32 %i_ret.0.i, 127, !dbg !3057
  %337 = zext i32 %and.i1843 to i64
  %arrayidx748 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %337, !dbg !3058
  %338 = load i8, ptr %arrayidx748, align 1, !dbg !3058, !tbaa !1637
  call void @llvm.dbg.value(metadata i8 %338, metadata !1566, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3059
  %arrayidx753 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 44, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %arrayidx753, metadata !1570, metadata !DIExpression()), !dbg !3059
  %339 = load i8, ptr %arrayidx753, align 1, !dbg !3060, !tbaa !1637
  %tobool754.not = icmp eq i8 %339, 0, !dbg !3060
  br i1 %tobool754.not, label %if.then755, label %if.else764, !dbg !3058

if.then755:                                       ; preds = %x264_mb_predict_non_zero_code.exit
  %340 = zext i8 %338 to i64
  %arrayidx759 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %340, !dbg !3060
  %i_size = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %340, i32 1, !dbg !3060
  %341 = load i8, ptr %i_size, align 1, !dbg !3060, !tbaa !3062
  %conv760 = zext i8 %341 to i32, !dbg !3060
  %342 = load i8, ptr %arrayidx759, align 1, !dbg !3060, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %conv760, metadata !1720, metadata !DIExpression()) #7, !dbg !3065
  call void @llvm.dbg.value(metadata i8 %342, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3065
  %343 = load i64, ptr %cur_bits.i.i.i1822, align 8, !dbg !3067, !tbaa !1679
  %sh_prom.i1846 = zext i8 %341 to i64, !dbg !3068
  %shl.i1847 = shl i64 %343, %sh_prom.i1846, !dbg !3068
  %conv.i1848 = zext i8 %342 to i64, !dbg !3069
  %or.i1849 = or i64 %shl.i1847, %conv.i1848, !dbg !3070
  store i64 %or.i1849, ptr %cur_bits.i.i.i1822, align 8, !dbg !3071, !tbaa !1679
  %sub.i1851 = sub nsw i32 %333, %conv760, !dbg !3072
  store i32 %sub.i1851, ptr %i_left.i, align 8, !dbg !3072, !tbaa !1651
  %cmp.i1852 = icmp slt i32 %sub.i1851, 33, !dbg !3073
  br i1 %cmp.i1852, label %if.then.i1860, label %if.end768, !dbg !3074

if.then.i1860:                                    ; preds = %if.then755
  %sh_prom6.i1853 = zext i32 %sub.i1851 to i64, !dbg !3075
  %shl7.i1854 = shl i64 %or.i1849, %sh_prom6.i1853, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %shl7.i1854, metadata !1736, metadata !DIExpression()) #7, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %shl7.i1854, metadata !1743, metadata !DIExpression()) #7, !dbg !3078
  %add.i.i.i1855 = tail call i64 @llvm.bswap.i64(i64 %shl7.i1854) #7, !dbg !3080
  %conv8.i1856 = trunc i64 %add.i.i.i1855 to i32, !dbg !3081
  store i32 %conv8.i1856, ptr %332, align 4, !dbg !3082, !tbaa !1637
  %344 = load i32, ptr %i_left.i, align 8, !dbg !3083, !tbaa !1651
  %add.i1858 = add nsw i32 %344, 32, !dbg !3083
  store i32 %add.i1858, ptr %i_left.i, align 8, !dbg !3083, !tbaa !1651
  %345 = load ptr, ptr %p.i, align 8, !dbg !3084, !tbaa !1646
  %add.ptr.i1859 = getelementptr inbounds i8, ptr %345, i64 4, !dbg !3084
  store ptr %add.ptr.i1859, ptr %p.i, align 8, !dbg !3084, !tbaa !1646
  br label %if.end768, !dbg !3085

if.else764:                                       ; preds = %x264_mb_predict_non_zero_code.exit
  %conv749 = zext i8 %338 to i32, !dbg !3058
  call void @llvm.dbg.value(metadata i32 %conv749, metadata !1566, metadata !DIExpression()), !dbg !3059
  %dct = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, !dbg !3060
  %call766 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull %dct, i32 noundef %conv749), !dbg !3060
  %conv767 = trunc i32 %call766 to i8, !dbg !3060
  store i8 %conv767, ptr %arrayidx753, align 1, !dbg !3060, !tbaa !1637
  br label %if.end768

if.end768:                                        ; preds = %if.then.i1860, %if.then755, %if.else764
  %i_cbp_luma770 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !3086
  %346 = load i32, ptr %i_cbp_luma770, align 8, !dbg !3086, !tbaa !2047
  %tobool771.not = icmp eq i32 %346, 0, !dbg !3087
  br i1 %tobool771.not, label %if.end826, label %for.body778, !dbg !3088

for.body778:                                      ; preds = %if.end768, %if.end812
  %indvars.iv2140 = phi i64 [ %indvars.iv.next2141, %if.end812 ], [ 0, %if.end768 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2140, metadata !1571, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr %h, metadata !3039, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %indvars.iv2140, metadata !3042, metadata !DIExpression()), !dbg !3090
  %arrayidx.i1864 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2140, !dbg !3092
  %347 = load i32, ptr %arrayidx.i1864, align 4, !dbg !3092, !tbaa !1982
  %sub.i1865 = add nsw i32 %347, -1, !dbg !3093
  %idxprom1.i1866 = sext i32 %sub.i1865 to i64, !dbg !3094
  %arrayidx2.i1867 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom1.i1866, !dbg !3094
  %348 = load i8, ptr %arrayidx2.i1867, align 1, !dbg !3094, !tbaa !1637
  %conv.i1868 = zext i8 %348 to i32, !dbg !3094
  call void @llvm.dbg.value(metadata i32 %conv.i1868, metadata !3043, metadata !DIExpression()), !dbg !3090
  %sub8.i = add nsw i32 %347, -8, !dbg !3095
  %idxprom9.i = sext i32 %sub8.i to i64, !dbg !3096
  %arrayidx10.i1869 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom9.i, !dbg !3096
  %349 = load i8, ptr %arrayidx10.i1869, align 1, !dbg !3096, !tbaa !1637
  %conv11.i1870 = zext i8 %349 to i32, !dbg !3096
  call void @llvm.dbg.value(metadata i32 %conv11.i1870, metadata !3044, metadata !DIExpression()), !dbg !3090
  %add.i1871 = add nuw nsw i32 %conv11.i1870, %conv.i1868, !dbg !3097
  call void @llvm.dbg.value(metadata i32 %add.i1871, metadata !3045, metadata !DIExpression()), !dbg !3090
  %cmp.i1872 = icmp ult i32 %add.i1871, 128, !dbg !3098
  br i1 %cmp.i1872, label %if.then.i1874, label %x264_mb_predict_non_zero_code.exit1878, !dbg !3099

if.then.i1874:                                    ; preds = %for.body778
  %add13.i1873 = add nuw nsw i32 %add.i1871, 1, !dbg !3100
  %350 = lshr i32 %add13.i1873, 1, !dbg !3101
  call void @llvm.dbg.value(metadata i32 %350, metadata !3045, metadata !DIExpression()), !dbg !3090
  br label %x264_mb_predict_non_zero_code.exit1878, !dbg !3102

x264_mb_predict_non_zero_code.exit1878:           ; preds = %for.body778, %if.then.i1874
  %i_ret.0.i1875 = phi i32 [ %350, %if.then.i1874 ], [ %add.i1871, %for.body778 ], !dbg !3090
  call void @llvm.dbg.value(metadata i32 %i_ret.0.i1875, metadata !3045, metadata !DIExpression()), !dbg !3090
  %and.i1876 = and i32 %i_ret.0.i1875, 127, !dbg !3103
  %351 = zext i32 %and.i1876 to i64
  %arrayidx782 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %351, !dbg !3104
  %352 = load i8, ptr %arrayidx782, align 1, !dbg !3104, !tbaa !1637
  call void @llvm.dbg.value(metadata i8 %352, metadata !1574, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3105
  %idxprom790 = sext i32 %347 to i64, !dbg !3104
  %arrayidx791 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom790, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %arrayidx791, metadata !1577, metadata !DIExpression()), !dbg !3105
  %353 = load i8, ptr %arrayidx791, align 1, !dbg !3106, !tbaa !1637
  %tobool792.not = icmp eq i8 %353, 0, !dbg !3106
  br i1 %tobool792.not, label %if.then793, label %if.else804, !dbg !3104

if.then793:                                       ; preds = %x264_mb_predict_non_zero_code.exit1878
  %354 = zext i8 %352 to i64
  %arrayidx797 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %354, !dbg !3106
  %i_size798 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %354, i32 1, !dbg !3106
  %355 = load i8, ptr %i_size798, align 1, !dbg !3106, !tbaa !3062
  %conv799 = zext i8 %355 to i32, !dbg !3106
  %356 = load i8, ptr %arrayidx797, align 1, !dbg !3106, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %conv799, metadata !1720, metadata !DIExpression()) #7, !dbg !3108
  call void @llvm.dbg.value(metadata i8 %356, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3108
  %357 = load i64, ptr %cur_bits.i.i.i1822, align 8, !dbg !3110, !tbaa !1679
  %sh_prom.i1880 = zext i8 %355 to i64, !dbg !3111
  %shl.i1881 = shl i64 %357, %sh_prom.i1880, !dbg !3111
  %conv.i1882 = zext i8 %356 to i64, !dbg !3112
  %or.i1883 = or i64 %shl.i1881, %conv.i1882, !dbg !3113
  store i64 %or.i1883, ptr %cur_bits.i.i.i1822, align 8, !dbg !3114, !tbaa !1679
  %358 = load i32, ptr %i_left.i, align 8, !dbg !3115, !tbaa !1651
  %sub.i1885 = sub nsw i32 %358, %conv799, !dbg !3115
  store i32 %sub.i1885, ptr %i_left.i, align 8, !dbg !3115, !tbaa !1651
  %cmp.i1886 = icmp slt i32 %sub.i1885, 33, !dbg !3116
  br i1 %cmp.i1886, label %if.then.i1894, label %if.end812, !dbg !3117

if.then.i1894:                                    ; preds = %if.then793
  %sh_prom6.i1887 = zext i32 %sub.i1885 to i64, !dbg !3118
  %shl7.i1888 = shl i64 %or.i1883, %sh_prom6.i1887, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %shl7.i1888, metadata !1736, metadata !DIExpression()) #7, !dbg !3119
  call void @llvm.dbg.value(metadata i64 %shl7.i1888, metadata !1743, metadata !DIExpression()) #7, !dbg !3121
  %add.i.i.i1889 = tail call i64 @llvm.bswap.i64(i64 %shl7.i1888) #7, !dbg !3123
  %conv8.i1890 = trunc i64 %add.i.i.i1889 to i32, !dbg !3124
  %359 = load ptr, ptr %p.i, align 8, !dbg !3125, !tbaa !1646
  store i32 %conv8.i1890, ptr %359, align 4, !dbg !3126, !tbaa !1637
  %360 = load i32, ptr %i_left.i, align 8, !dbg !3127, !tbaa !1651
  %add.i1892 = add nsw i32 %360, 32, !dbg !3127
  store i32 %add.i1892, ptr %i_left.i, align 8, !dbg !3127, !tbaa !1651
  %361 = load ptr, ptr %p.i, align 8, !dbg !3128, !tbaa !1646
  %add.ptr.i1893 = getelementptr inbounds i8, ptr %361, i64 4, !dbg !3128
  store ptr %add.ptr.i1893, ptr %p.i, align 8, !dbg !3128, !tbaa !1646
  br label %if.end812, !dbg !3129

if.else804:                                       ; preds = %x264_mb_predict_non_zero_code.exit1878
  %conv783 = zext i8 %352 to i32, !dbg !3104
  call void @llvm.dbg.value(metadata i32 %conv783, metadata !1574, metadata !DIExpression()), !dbg !3105
  %arrayidx807 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 3, i64 %indvars.iv2140, !dbg !3106
  %add.ptr809 = getelementptr inbounds i16, ptr %arrayidx807, i64 1, !dbg !3106
  %call810 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull %add.ptr809, i32 noundef %conv783), !dbg !3106
  %conv811 = trunc i32 %call810 to i8, !dbg !3106
  store i8 %conv811, ptr %arrayidx791, align 1, !dbg !3106, !tbaa !1637
  br label %if.end812

if.end812:                                        ; preds = %if.then.i1894, %if.then793, %if.else804
  %indvars.iv.next2141 = add nuw nsw i64 %indvars.iv2140, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2141, metadata !1571, metadata !DIExpression()), !dbg !3089
  %exitcond2143.not = icmp eq i64 %indvars.iv.next2141, 16, !dbg !3131
  br i1 %exitcond2143.not, label %if.end826, label %for.body778, !dbg !3132, !llvm.loop !3133

if.else817:                                       ; preds = %if.end742
  %i_cbp_luma819 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !3135
  %362 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3135, !tbaa !2047
  %i_cbp_chroma821 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !3137
  %363 = load i32, ptr %i_cbp_chroma821, align 4, !dbg !3137, !tbaa !2044
  %or822 = or i32 %363, %362, !dbg !3138
  %tobool823.not = icmp eq i32 %or822, 0, !dbg !3138
  br i1 %tobool823.not, label %if.end826, label %if.then824, !dbg !3139

if.then824:                                       ; preds = %if.else817
  call void @llvm.dbg.value(metadata ptr %h, metadata !2964, metadata !DIExpression()) #7, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %h, metadata !2967, metadata !DIExpression(DW_OP_plus_uconst, 1760, DW_OP_plus_uconst, 32, DW_OP_stack_value)) #7, !dbg !3140
  %i_qp.i1897 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 68, !dbg !3143
  %364 = load i32, ptr %i_qp.i1897, align 16, !dbg !3143, !tbaa !2972
  %i_last_qp.i1898 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 70, !dbg !3144
  %365 = load i32, ptr %i_last_qp.i1898, align 8, !dbg !3144, !tbaa !2974
  %sub.i1899 = sub nsw i32 %364, %365, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %sub.i1899, metadata !2968, metadata !DIExpression()) #7, !dbg !3140
  %tobool12.not.i1911 = icmp eq i32 %364, %365, !dbg !3146
  br i1 %tobool12.not.i1911, label %if.end21.thread.i1943, label %if.then13.i1914, !dbg !3147

if.then13.i1914:                                  ; preds = %if.then824
  %cmp14.i1913 = icmp slt i32 %sub.i1899, -26, !dbg !3148
  br i1 %cmp14.i1913, label %if.then15.i1916, label %if.else.i1920, !dbg !3149

if.then15.i1916:                                  ; preds = %if.then13.i1914
  %add.i1915 = add nsw i32 %sub.i1899, 52, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %add.i1915, metadata !2968, metadata !DIExpression()) #7, !dbg !3140
  br label %if.end21.i1926, !dbg !3151

if.else.i1920:                                    ; preds = %if.then13.i1914
  %cmp16.i1917 = icmp sgt i32 %sub.i1899, 25, !dbg !3152
  %sub18.i1918 = add nsw i32 %sub.i1899, -52
  %spec.select.i1919 = select i1 %cmp16.i1917, i32 %sub18.i1918, i32 %sub.i1899, !dbg !3153
  br label %if.end21.i1926, !dbg !3153

if.end21.i1926:                                   ; preds = %if.else.i1920, %if.then15.i1916
  %i_dqp.1.i1921 = phi i32 [ %add.i1915, %if.then15.i1916 ], [ %spec.select.i1919, %if.else.i1920 ], !dbg !3140
  call void @llvm.dbg.value(metadata ptr %h, metadata !2967, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3140
  call void @llvm.dbg.value(metadata i32 %i_dqp.1.i1921, metadata !2968, metadata !DIExpression()) #7, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %h, metadata !3000, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %i_dqp.1.i1921, metadata !3003, metadata !DIExpression()) #7, !dbg !3154
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #7, !dbg !3154
  %mul.i.i1922 = shl nsw i32 %i_dqp.1.i1921, 1, !dbg !3156
  %sub.i.i1923 = sub nsw i32 1, %mul.i.i1922, !dbg !3157
  call void @llvm.dbg.value(metadata i32 %sub.i.i1923, metadata !3005, metadata !DIExpression()) #7, !dbg !3154
  %cmp.i.i1924 = icmp sgt i32 %i_dqp.1.i1921, 0, !dbg !3158
  %spec.select43.i1925 = select i1 %cmp.i.i1924, i32 %mul.i.i1922, i32 %sub.i.i1923, !dbg !3159
  br label %if.end21.thread.i1943, !dbg !3159

if.end21.thread.i1943:                            ; preds = %if.end21.i1926, %if.then824
  %366 = phi i32 [ %spec.select43.i1925, %if.end21.i1926 ], [ 1, %if.then824 ]
  call void @llvm.dbg.value(metadata i32 %366, metadata !3005, metadata !DIExpression()) #7, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %366, metadata !3003, metadata !DIExpression()) #7, !dbg !3154
  %cmp2.i.i1927 = icmp sgt i32 %366, 255, !dbg !3160
  %shr.i.i1928 = ashr i32 %366, 8
  %spec.select12.i.i1929 = select i1 %cmp2.i.i1927, i32 16, i32 0, !dbg !3161
  %spec.select13.i.i1930 = select i1 %cmp2.i.i1927, i32 %shr.i.i1928, i32 %366, !dbg !3161
  call void @llvm.dbg.value(metadata i32 %spec.select13.i.i1930, metadata !3005, metadata !DIExpression()) #7, !dbg !3154
  call void @llvm.dbg.value(metadata i32 %spec.select12.i.i1929, metadata !3004, metadata !DIExpression()) #7, !dbg !3154
  %idxprom.i.i1931 = sext i32 %spec.select13.i.i1930 to i64, !dbg !3162
  %arrayidx.i.i1932 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i.i1931, !dbg !3162
  %367 = load i8, ptr %arrayidx.i.i1932, align 1, !dbg !3162, !tbaa !1637
  %conv.i.i1933 = zext i8 %367 to i32, !dbg !3162
  %add.i.i1934 = add nuw nsw i32 %spec.select12.i.i1929, %conv.i.i1933, !dbg !3163
  call void @llvm.dbg.value(metadata i32 %add.i.i1934, metadata !3004, metadata !DIExpression()) #7, !dbg !3154
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %add.i.i1934, metadata !1720, metadata !DIExpression()) #7, !dbg !3164
  call void @llvm.dbg.value(metadata i32 %366, metadata !1721, metadata !DIExpression()) #7, !dbg !3164
  %cur_bits.i.i.i1935 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3166
  %368 = load i64, ptr %cur_bits.i.i.i1935, align 8, !dbg !3166, !tbaa !1679
  %sh_prom.i.i.i1936 = zext i32 %add.i.i1934 to i64, !dbg !3167
  %shl.i.i.i1937 = shl i64 %368, %sh_prom.i.i.i1936, !dbg !3167
  %conv.i.i.i1938 = zext i32 %366 to i64, !dbg !3168
  %or.i.i.i1939 = or i64 %shl.i.i.i1937, %conv.i.i.i1938, !dbg !3169
  store i64 %or.i.i.i1939, ptr %cur_bits.i.i.i1935, align 8, !dbg !3170, !tbaa !1679
  %sub.i.i.i1941 = sub nsw i32 %320, %add.i.i1934, !dbg !3171
  store i32 %sub.i.i.i1941, ptr %i_left.i, align 8, !dbg !3171, !tbaa !1651
  %cmp.i.i.i1942 = icmp slt i32 %sub.i.i.i1941, 33, !dbg !3172
  br i1 %cmp.i.i.i1942, label %if.then.i.i.i1951, label %cavlc_qp_delta.exit1952, !dbg !3173

if.then.i.i.i1951:                                ; preds = %if.end21.thread.i1943
  %sh_prom6.i.i.i1944 = zext i32 %sub.i.i.i1941 to i64, !dbg !3174
  %shl7.i.i.i1945 = shl i64 %or.i.i.i1939, %sh_prom6.i.i.i1944, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1945, metadata !1736, metadata !DIExpression()) #7, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %shl7.i.i.i1945, metadata !1743, metadata !DIExpression()) #7, !dbg !3177
  %add.i.i.i.i.i1946 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i.i1945) #7, !dbg !3179
  %conv8.i.i.i1947 = trunc i64 %add.i.i.i.i.i1946 to i32, !dbg !3180
  store i32 %conv8.i.i.i1947, ptr %319, align 4, !dbg !3181, !tbaa !1637
  %369 = load i32, ptr %i_left.i, align 8, !dbg !3182, !tbaa !1651
  %add.i.i.i1949 = add nsw i32 %369, 32, !dbg !3182
  store i32 %add.i.i.i1949, ptr %i_left.i, align 8, !dbg !3182, !tbaa !1651
  %370 = load ptr, ptr %p.i, align 8, !dbg !3183, !tbaa !1646
  %add.ptr.i.i.i1950 = getelementptr inbounds i8, ptr %370, i64 4, !dbg !3183
  store ptr %add.ptr.i.i.i1950, ptr %p.i, align 8, !dbg !3183, !tbaa !1646
  br label %cavlc_qp_delta.exit1952, !dbg !3184

cavlc_qp_delta.exit1952:                          ; preds = %if.end21.thread.i1943, %if.then.i.i.i1951
  call void @llvm.dbg.value(metadata ptr %h, metadata !3185, metadata !DIExpression()) #7, !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #7, !dbg !3206
  call void @llvm.dbg.value(metadata i32 3, metadata !3191, metadata !DIExpression()) #7, !dbg !3206
  %b_transform_8x8.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !3208
  %371 = load i32, ptr %b_transform_8x8.i, align 4, !dbg !3208, !tbaa !1924
  %tobool.not.i1953 = icmp eq i32 %371, 0, !dbg !3209
  br i1 %tobool.not.i1953, label %for.body19.i.preheader, label %for.cond.preheader.i, !dbg !3210

for.cond.preheader.i:                             ; preds = %cavlc_qp_delta.exit1952
  call void @llvm.dbg.value(metadata i32 0, metadata !3192, metadata !DIExpression()) #7, !dbg !3211
  %interleave_8x8_cavlc.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 72, i32 5
  br label %for.body.i, !dbg !3212

for.body.i:                                       ; preds = %for.inc.i, %for.cond.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !3192, metadata !DIExpression()) #7, !dbg !3211
  %372 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3213, !tbaa !2047
  %373 = trunc i64 %indvars.iv.i to i32, !dbg !3216
  %shl.i1955 = shl nuw nsw i32 1, %373, !dbg !3216
  %and.i1956 = and i32 %shl.i1955, %372, !dbg !3217
  %tobool2.not.i = icmp eq i32 %and.i1956, 0, !dbg !3217
  br i1 %tobool2.not.i, label %for.inc.i, label %if.then3.i, !dbg !3218

if.then3.i:                                       ; preds = %for.body.i
  %374 = load ptr, ptr %interleave_8x8_cavlc.i, align 8, !dbg !3219, !tbaa !3220
  %375 = shl nuw nsw i64 %indvars.iv.i, 2, !dbg !3221
  %arrayidx.i1957 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 3, i64 %375, !dbg !3222
  %arrayidx6.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 2, i64 %indvars.iv.i, !dbg !3223
  %arrayidx11.i1958 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %375, !dbg !3224
  %376 = load i32, ptr %arrayidx11.i1958, align 16, !dbg !3224, !tbaa !1982
  %idxprom12.i = sext i32 %376 to i64, !dbg !3225
  %arrayidx13.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom12.i, !dbg !3225
  tail call void %374(ptr noundef nonnull %arrayidx.i1957, ptr noundef nonnull %arrayidx6.i, ptr noundef nonnull %arrayidx13.i) #7, !dbg !3226
  br label %for.inc.i, !dbg !3226

for.inc.i:                                        ; preds = %if.then3.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !3192, metadata !DIExpression()) #7, !dbg !3211
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !3228
  br i1 %exitcond.not.i, label %for.body19.i.preheader, label %for.body.i, !dbg !3212, !llvm.loop !3229

for.body19.i.preheader:                           ; preds = %for.inc.i, %cavlc_qp_delta.exit1952
  br label %for.body19.i, !dbg !3231

for.body19.i:                                     ; preds = %for.body19.i.preheader, %for.inc64.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc64.i ], [ 0, %for.body19.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv18.i, metadata !3196, metadata !DIExpression()) #7, !dbg !3232
  %377 = load i32, ptr %i_cbp_luma819, align 8, !dbg !3233, !tbaa !2047
  %378 = trunc i64 %indvars.iv18.i to i32, !dbg !3234
  %shl22.i = shl nuw nsw i32 1, %378, !dbg !3234
  %and23.i = and i32 %shl22.i, %377, !dbg !3235
  %tobool24.not.i = icmp eq i32 %and23.i, 0, !dbg !3235
  br i1 %tobool24.not.i, label %for.inc64.i, label %for.cond26.preheader.i, !dbg !3236

for.cond26.preheader.i:                           ; preds = %for.body19.i
  %379 = shl nsw i64 %indvars.iv18.i, 2
  call void @llvm.dbg.value(metadata i32 0, metadata !3198, metadata !DIExpression()) #7, !dbg !3237
  br label %for.body29.i, !dbg !3238

for.body29.i:                                     ; preds = %if.end59.i, %for.cond26.preheader.i
  %indvars.iv13.i = phi i64 [ 0, %for.cond26.preheader.i ], [ %indvars.iv.next14.i, %if.end59.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13.i, metadata !3198, metadata !DIExpression()) #7, !dbg !3237
  %380 = add nuw nsw i64 %indvars.iv13.i, %379, !dbg !3239
  call void @llvm.dbg.value(metadata ptr %h, metadata !3039, metadata !DIExpression()) #7, !dbg !3240
  call void @llvm.dbg.value(metadata i64 %380, metadata !3042, metadata !DIExpression()) #7, !dbg !3240
  %arrayidx.i.i1962 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %380, !dbg !3242
  %381 = load i32, ptr %arrayidx.i.i1962, align 4, !dbg !3242, !tbaa !1982
  %sub.i.i1963 = add nsw i32 %381, -1, !dbg !3243
  %idxprom1.i.i = sext i32 %sub.i.i1963 to i64, !dbg !3244
  %arrayidx2.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom1.i.i, !dbg !3244
  %382 = load i8, ptr %arrayidx2.i.i, align 1, !dbg !3244, !tbaa !1637
  %conv.i.i1964 = zext i8 %382 to i32, !dbg !3244
  call void @llvm.dbg.value(metadata i32 %conv.i.i1964, metadata !3043, metadata !DIExpression()) #7, !dbg !3240
  %sub8.i.i = add nsw i32 %381, -8, !dbg !3245
  %idxprom9.i.i = sext i32 %sub8.i.i to i64, !dbg !3246
  %arrayidx10.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom9.i.i, !dbg !3246
  %383 = load i8, ptr %arrayidx10.i.i, align 1, !dbg !3246, !tbaa !1637
  %conv11.i.i = zext i8 %383 to i32, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %conv11.i.i, metadata !3044, metadata !DIExpression()) #7, !dbg !3240
  %add.i.i1965 = add nuw nsw i32 %conv11.i.i, %conv.i.i1964, !dbg !3247
  call void @llvm.dbg.value(metadata i32 %add.i.i1965, metadata !3045, metadata !DIExpression()) #7, !dbg !3240
  %cmp.i.i1966 = icmp ult i32 %add.i.i1965, 128, !dbg !3248
  br i1 %cmp.i.i1966, label %if.then.i.i1967, label %x264_mb_predict_non_zero_code.exit.i, !dbg !3249

if.then.i.i1967:                                  ; preds = %for.body29.i
  %add13.i.i = add nuw nsw i32 %add.i.i1965, 1, !dbg !3250
  %384 = lshr i32 %add13.i.i, 1, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %384, metadata !3045, metadata !DIExpression()) #7, !dbg !3240
  br label %x264_mb_predict_non_zero_code.exit.i, !dbg !3252

x264_mb_predict_non_zero_code.exit.i:             ; preds = %if.then.i.i1967, %for.body29.i
  %i_ret.0.i.i = phi i32 [ %384, %if.then.i.i1967 ], [ %add.i.i1965, %for.body29.i ], !dbg !3240
  call void @llvm.dbg.value(metadata i32 %i_ret.0.i.i, metadata !3045, metadata !DIExpression()) #7, !dbg !3240
  %and.i.i1968 = and i32 %i_ret.0.i.i, 127, !dbg !3253
  %385 = zext i32 %and.i.i1968 to i64
  %arrayidx32.i = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %385, !dbg !3239
  %386 = load i8, ptr %arrayidx32.i, align 1, !dbg !3239, !tbaa !1637
  call void @llvm.dbg.value(metadata i8 %386, metadata !3202, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3254
  %idxprom40.i = sext i32 %381 to i64, !dbg !3239
  %arrayidx41.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom40.i, !dbg !3239
  call void @llvm.dbg.value(metadata ptr %arrayidx41.i, metadata !3205, metadata !DIExpression()) #7, !dbg !3254
  %387 = load i8, ptr %arrayidx41.i, align 1, !dbg !3255, !tbaa !1637
  %tobool42.not.i = icmp eq i8 %387, 0, !dbg !3255
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else.i1978, !dbg !3239

if.then43.i:                                      ; preds = %x264_mb_predict_non_zero_code.exit.i
  %388 = zext i8 %386 to i64
  %arrayidx45.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %388, !dbg !3255
  %i_size.i = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %388, i32 1, !dbg !3255
  %389 = load i8, ptr %i_size.i, align 1, !dbg !3255, !tbaa !3062
  %conv46.i = zext i8 %389 to i32, !dbg !3255
  %390 = load i8, ptr %arrayidx45.i, align 1, !dbg !3255, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3257
  call void @llvm.dbg.value(metadata i32 %conv46.i, metadata !1720, metadata !DIExpression()) #7, !dbg !3257
  call void @llvm.dbg.value(metadata i8 %390, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3257
  %391 = load i64, ptr %cur_bits.i.i.i1935, align 8, !dbg !3259, !tbaa !1679
  %sh_prom.i.i1969 = zext i8 %389 to i64, !dbg !3260
  %shl.i.i1970 = shl i64 %391, %sh_prom.i.i1969, !dbg !3260
  %conv.i1.i = zext i8 %390 to i64, !dbg !3261
  %or.i.i1971 = or i64 %shl.i.i1970, %conv.i1.i, !dbg !3262
  store i64 %or.i.i1971, ptr %cur_bits.i.i.i1935, align 8, !dbg !3263, !tbaa !1679
  %392 = load i32, ptr %i_left.i, align 8, !dbg !3264, !tbaa !1651
  %sub.i2.i = sub nsw i32 %392, %conv46.i, !dbg !3264
  store i32 %sub.i2.i, ptr %i_left.i, align 8, !dbg !3264, !tbaa !1651
  %cmp.i3.i = icmp slt i32 %sub.i2.i, 33, !dbg !3265
  br i1 %cmp.i3.i, label %if.then.i5.i, label %if.end59.i, !dbg !3266

if.then.i5.i:                                     ; preds = %if.then43.i
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3257
  %sh_prom6.i.i1972 = zext i32 %sub.i2.i to i64, !dbg !3267
  %shl7.i.i1973 = shl i64 %or.i.i1971, %sh_prom6.i.i1972, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1973, metadata !1736, metadata !DIExpression()) #7, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %shl7.i.i1973, metadata !1743, metadata !DIExpression()) #7, !dbg !3270
  %add.i.i.i.i1974 = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i1973) #7, !dbg !3272
  %conv8.i.i1975 = trunc i64 %add.i.i.i.i1974 to i32, !dbg !3273
  %393 = load ptr, ptr %p.i, align 8, !dbg !3274, !tbaa !1646
  store i32 %conv8.i.i1975, ptr %393, align 4, !dbg !3275, !tbaa !1637
  %394 = load i32, ptr %i_left.i, align 8, !dbg !3276, !tbaa !1651
  %add.i4.i = add nsw i32 %394, 32, !dbg !3276
  store i32 %add.i4.i, ptr %i_left.i, align 8, !dbg !3276, !tbaa !1651
  %395 = load ptr, ptr %p.i, align 8, !dbg !3277, !tbaa !1646
  %add.ptr.i.i1976 = getelementptr inbounds i8, ptr %395, i64 4, !dbg !3277
  store ptr %add.ptr.i.i1976, ptr %p.i, align 8, !dbg !3277, !tbaa !1646
  br label %if.end59.i, !dbg !3278

if.else.i1978:                                    ; preds = %x264_mb_predict_non_zero_code.exit.i
  %conv.i1977 = zext i8 %386 to i32, !dbg !3239
  call void @llvm.dbg.value(metadata i32 %conv.i1977, metadata !3202, metadata !DIExpression()) #7, !dbg !3254
  %arrayidx55.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 3, i64 %380, !dbg !3255
  %call57.i = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 2, ptr noundef nonnull %arrayidx55.i, i32 noundef %conv.i1977) #7, !dbg !3255
  %conv58.i = trunc i32 %call57.i to i8, !dbg !3255
  store i8 %conv58.i, ptr %arrayidx41.i, align 1, !dbg !3255, !tbaa !1637
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else.i1978, %if.then.i5.i, %if.then43.i
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next14.i, metadata !3198, metadata !DIExpression()) #7, !dbg !3237
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next14.i, 4, !dbg !3280
  br i1 %exitcond17.not.i, label %for.inc64.i, label %for.body29.i, !dbg !3238, !llvm.loop !3281

for.inc64.i:                                      ; preds = %if.end59.i, %for.body19.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1, !dbg !3283
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next19.i, metadata !3196, metadata !DIExpression()) #7, !dbg !3232
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, 4, !dbg !3284
  br i1 %exitcond22.not.i, label %if.end826, label %for.body19.i, !dbg !3231, !llvm.loop !3285

if.end826:                                        ; preds = %for.inc64.i, %if.end812, %if.else817, %if.end768
  %i_cbp_chroma828 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !3287
  %396 = load i32, ptr %i_cbp_chroma828, align 4, !dbg !3287, !tbaa !2044
  %tobool829.not = icmp eq i32 %396, 0, !dbg !3288
  br i1 %tobool829.not, label %if.end934, label %if.then830, !dbg !3289

if.then830:                                       ; preds = %if.end826
  call void @llvm.dbg.value(metadata i32 4, metadata !1578, metadata !DIExpression()), !dbg !3290
  %arrayidx837 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 46, !dbg !3291
  call void @llvm.dbg.value(metadata ptr %arrayidx837, metadata !1582, metadata !DIExpression()), !dbg !3290
  %397 = load i8, ptr %arrayidx837, align 1, !dbg !3292, !tbaa !1637
  %tobool838.not = icmp eq i8 %397, 0, !dbg !3292
  br i1 %tobool838.not, label %if.then839, label %if.else850, !dbg !3291

if.then839:                                       ; preds = %if.then830
  %398 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !dbg !3292, !tbaa !3062
  %conv845 = zext i8 %398 to i32, !dbg !3292
  %399 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !dbg !3292, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !3294
  call void @llvm.dbg.value(metadata i32 %conv845, metadata !1720, metadata !DIExpression()) #7, !dbg !3294
  call void @llvm.dbg.value(metadata i8 %399, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3294
  %cur_bits.i1979 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3296
  %400 = load i64, ptr %cur_bits.i1979, align 8, !dbg !3296, !tbaa !1679
  %sh_prom.i1980 = zext i8 %398 to i64, !dbg !3297
  %shl.i1981 = shl i64 %400, %sh_prom.i1980, !dbg !3297
  %conv.i1982 = zext i8 %399 to i64, !dbg !3298
  %or.i1983 = or i64 %shl.i1981, %conv.i1982, !dbg !3299
  store i64 %or.i1983, ptr %cur_bits.i1979, align 8, !dbg !3300, !tbaa !1679
  %401 = load i32, ptr %i_left.i, align 8, !dbg !3301, !tbaa !1651
  %sub.i1985 = sub nsw i32 %401, %conv845, !dbg !3301
  store i32 %sub.i1985, ptr %i_left.i, align 8, !dbg !3301, !tbaa !1651
  %cmp.i1986 = icmp slt i32 %sub.i1985, 33, !dbg !3302
  br i1 %cmp.i1986, label %if.then.i1994, label %if.end856, !dbg !3303

if.then.i1994:                                    ; preds = %if.then839
  %sh_prom6.i1987 = zext i32 %sub.i1985 to i64, !dbg !3304
  %shl7.i1988 = shl i64 %or.i1983, %sh_prom6.i1987, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %shl7.i1988, metadata !1736, metadata !DIExpression()) #7, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %shl7.i1988, metadata !1743, metadata !DIExpression()) #7, !dbg !3307
  %add.i.i.i1989 = tail call i64 @llvm.bswap.i64(i64 %shl7.i1988) #7, !dbg !3309
  %conv8.i1990 = trunc i64 %add.i.i.i1989 to i32, !dbg !3310
  %402 = load ptr, ptr %p.i, align 8, !dbg !3311, !tbaa !1646
  store i32 %conv8.i1990, ptr %402, align 4, !dbg !3312, !tbaa !1637
  %403 = load i32, ptr %i_left.i, align 8, !dbg !3313, !tbaa !1651
  %add.i1992 = add nsw i32 %403, 32, !dbg !3313
  store i32 %add.i1992, ptr %i_left.i, align 8, !dbg !3313, !tbaa !1651
  %404 = load ptr, ptr %p.i, align 8, !dbg !3314, !tbaa !1646
  %add.ptr.i1993 = getelementptr inbounds i8, ptr %404, i64 4, !dbg !3314
  store ptr %add.ptr.i1993, ptr %p.i, align 8, !dbg !3314, !tbaa !1646
  br label %if.end856, !dbg !3315

if.else850:                                       ; preds = %if.then830
  %chroma_dc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 1, !dbg !3292
  %call854 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %chroma_dc, i32 noundef 4), !dbg !3292
  %conv855 = trunc i32 %call854 to i8, !dbg !3292
  store i8 %conv855, ptr %arrayidx837, align 1, !dbg !3292, !tbaa !1637
  br label %if.end856

if.end856:                                        ; preds = %if.then.i1994, %if.then839, %if.else850
  call void @llvm.dbg.value(metadata i32 4, metadata !1583, metadata !DIExpression()), !dbg !3316
  %arrayidx863 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 47, !dbg !3317
  call void @llvm.dbg.value(metadata ptr %arrayidx863, metadata !1585, metadata !DIExpression()), !dbg !3316
  %405 = load i8, ptr %arrayidx863, align 1, !dbg !3318, !tbaa !1637
  %tobool864.not = icmp eq i8 %405, 0, !dbg !3318
  br i1 %tobool864.not, label %if.then865, label %if.else876, !dbg !3317

if.then865:                                       ; preds = %if.end856
  %406 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4, i32 1), align 1, !dbg !3318, !tbaa !3062
  %conv871 = zext i8 %406 to i32, !dbg !3318
  %407 = load i8, ptr getelementptr inbounds ([5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 4), align 1, !dbg !3318, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !3320
  call void @llvm.dbg.value(metadata i32 %conv871, metadata !1720, metadata !DIExpression()) #7, !dbg !3320
  call void @llvm.dbg.value(metadata i8 %407, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3320
  %cur_bits.i1997 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3322
  %408 = load i64, ptr %cur_bits.i1997, align 8, !dbg !3322, !tbaa !1679
  %sh_prom.i1998 = zext i8 %406 to i64, !dbg !3323
  %shl.i1999 = shl i64 %408, %sh_prom.i1998, !dbg !3323
  %conv.i2000 = zext i8 %407 to i64, !dbg !3324
  %or.i2001 = or i64 %shl.i1999, %conv.i2000, !dbg !3325
  store i64 %or.i2001, ptr %cur_bits.i1997, align 8, !dbg !3326, !tbaa !1679
  %409 = load i32, ptr %i_left.i, align 8, !dbg !3327, !tbaa !1651
  %sub.i2003 = sub nsw i32 %409, %conv871, !dbg !3327
  store i32 %sub.i2003, ptr %i_left.i, align 8, !dbg !3327, !tbaa !1651
  %cmp.i2004 = icmp slt i32 %sub.i2003, 33, !dbg !3328
  br i1 %cmp.i2004, label %if.then.i2012, label %if.end883, !dbg !3329

if.then.i2012:                                    ; preds = %if.then865
  %sh_prom6.i2005 = zext i32 %sub.i2003 to i64, !dbg !3330
  %shl7.i2006 = shl i64 %or.i2001, %sh_prom6.i2005, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %shl7.i2006, metadata !1736, metadata !DIExpression()) #7, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %shl7.i2006, metadata !1743, metadata !DIExpression()) #7, !dbg !3333
  %add.i.i.i2007 = tail call i64 @llvm.bswap.i64(i64 %shl7.i2006) #7, !dbg !3335
  %conv8.i2008 = trunc i64 %add.i.i.i2007 to i32, !dbg !3336
  %410 = load ptr, ptr %p.i, align 8, !dbg !3337, !tbaa !1646
  store i32 %conv8.i2008, ptr %410, align 4, !dbg !3338, !tbaa !1637
  %411 = load i32, ptr %i_left.i, align 8, !dbg !3339, !tbaa !1651
  %add.i2010 = add nsw i32 %411, 32, !dbg !3339
  store i32 %add.i2010, ptr %i_left.i, align 8, !dbg !3339, !tbaa !1651
  %412 = load ptr, ptr %p.i, align 8, !dbg !3340, !tbaa !1646
  %add.ptr.i2011 = getelementptr inbounds i8, ptr %412, i64 4, !dbg !3340
  store ptr %add.ptr.i2011, ptr %p.i, align 8, !dbg !3340, !tbaa !1646
  br label %if.end883, !dbg !3341

if.else876:                                       ; preds = %if.end856
  %arrayidx879 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 1, i64 1, !dbg !3318
  %call881 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 3, ptr noundef nonnull %arrayidx879, i32 noundef 4), !dbg !3318
  %conv882 = trunc i32 %call881 to i8, !dbg !3318
  store i8 %conv882, ptr %arrayidx863, align 1, !dbg !3318, !tbaa !1637
  br label %if.end883

if.end883:                                        ; preds = %if.then.i2012, %if.then865, %if.else876
  %413 = load i32, ptr %i_cbp_chroma828, align 4, !dbg !3342, !tbaa !2044
  %and886 = and i32 %413, 2, !dbg !3343
  %tobool887.not = icmp eq i32 %and886, 0, !dbg !3343
  br i1 %tobool887.not, label %if.end934, label %for.cond890.preheader, !dbg !3344

for.cond890.preheader:                            ; preds = %if.end883
  call void @llvm.dbg.value(metadata i32 16, metadata !1586, metadata !DIExpression()), !dbg !3345
  %cur_bits.i2033 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3
  br label %for.body894, !dbg !3346

for.body894:                                      ; preds = %for.cond890.preheader, %if.end929
  %indvars.iv2144 = phi i64 [ 16, %for.cond890.preheader ], [ %indvars.iv.next2145, %if.end929 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv2144, metadata !1586, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata ptr %h, metadata !3039, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %indvars.iv2144, metadata !3042, metadata !DIExpression()), !dbg !3347
  %arrayidx.i2016 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv2144, !dbg !3349
  %414 = load i32, ptr %arrayidx.i2016, align 4, !dbg !3349, !tbaa !1982
  %sub.i2017 = add nsw i32 %414, -1, !dbg !3350
  %idxprom1.i2018 = sext i32 %sub.i2017 to i64, !dbg !3351
  %arrayidx2.i2019 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom1.i2018, !dbg !3351
  %415 = load i8, ptr %arrayidx2.i2019, align 1, !dbg !3351, !tbaa !1637
  %conv.i2020 = zext i8 %415 to i32, !dbg !3351
  call void @llvm.dbg.value(metadata i32 %conv.i2020, metadata !3043, metadata !DIExpression()), !dbg !3347
  %sub8.i2021 = add nsw i32 %414, -8, !dbg !3352
  %idxprom9.i2022 = sext i32 %sub8.i2021 to i64, !dbg !3353
  %arrayidx10.i2023 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom9.i2022, !dbg !3353
  %416 = load i8, ptr %arrayidx10.i2023, align 1, !dbg !3353, !tbaa !1637
  %conv11.i2024 = zext i8 %416 to i32, !dbg !3353
  call void @llvm.dbg.value(metadata i32 %conv11.i2024, metadata !3044, metadata !DIExpression()), !dbg !3347
  %add.i2025 = add nuw nsw i32 %conv11.i2024, %conv.i2020, !dbg !3354
  call void @llvm.dbg.value(metadata i32 %add.i2025, metadata !3045, metadata !DIExpression()), !dbg !3347
  %cmp.i2026 = icmp ult i32 %add.i2025, 128, !dbg !3355
  br i1 %cmp.i2026, label %if.then.i2028, label %x264_mb_predict_non_zero_code.exit2032, !dbg !3356

if.then.i2028:                                    ; preds = %for.body894
  %add13.i2027 = add nuw nsw i32 %add.i2025, 1, !dbg !3357
  %417 = lshr i32 %add13.i2027, 1, !dbg !3358
  call void @llvm.dbg.value(metadata i32 %417, metadata !3045, metadata !DIExpression()), !dbg !3347
  br label %x264_mb_predict_non_zero_code.exit2032, !dbg !3359

x264_mb_predict_non_zero_code.exit2032:           ; preds = %for.body894, %if.then.i2028
  %i_ret.0.i2029 = phi i32 [ %417, %if.then.i2028 ], [ %add.i2025, %for.body894 ], !dbg !3347
  call void @llvm.dbg.value(metadata i32 %i_ret.0.i2029, metadata !3045, metadata !DIExpression()), !dbg !3347
  %and.i2030 = and i32 %i_ret.0.i2029, 127, !dbg !3360
  %418 = zext i32 %and.i2030 to i64
  %arrayidx898 = getelementptr inbounds [17 x i8], ptr @ct_index, i64 0, i64 %418, !dbg !3361
  %419 = load i8, ptr %arrayidx898, align 1, !dbg !3361, !tbaa !1637
  call void @llvm.dbg.value(metadata i8 %419, metadata !1589, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3362
  %idxprom906 = sext i32 %414 to i64, !dbg !3361
  %arrayidx907 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom906, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %arrayidx907, metadata !1592, metadata !DIExpression()), !dbg !3362
  %420 = load i8, ptr %arrayidx907, align 1, !dbg !3363, !tbaa !1637
  %tobool908.not = icmp eq i8 %420, 0, !dbg !3363
  br i1 %tobool908.not, label %if.then909, label %if.else920, !dbg !3361

if.then909:                                       ; preds = %x264_mb_predict_non_zero_code.exit2032
  %421 = zext i8 %419 to i64
  %arrayidx913 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %421, !dbg !3363
  %i_size914 = getelementptr inbounds [5 x %struct.vlc_t], ptr @x264_coeff0_token, i64 0, i64 %421, i32 1, !dbg !3363
  %422 = load i8, ptr %i_size914, align 1, !dbg !3363, !tbaa !3062
  %conv915 = zext i8 %422 to i32, !dbg !3363
  %423 = load i8, ptr %arrayidx913, align 1, !dbg !3363, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1715, metadata !DIExpression()) #7, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %conv915, metadata !1720, metadata !DIExpression()) #7, !dbg !3365
  call void @llvm.dbg.value(metadata i8 %423, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3365
  %424 = load i64, ptr %cur_bits.i2033, align 8, !dbg !3367, !tbaa !1679
  %sh_prom.i2034 = zext i8 %422 to i64, !dbg !3368
  %shl.i2035 = shl i64 %424, %sh_prom.i2034, !dbg !3368
  %conv.i2036 = zext i8 %423 to i64, !dbg !3369
  %or.i2037 = or i64 %shl.i2035, %conv.i2036, !dbg !3370
  store i64 %or.i2037, ptr %cur_bits.i2033, align 8, !dbg !3371, !tbaa !1679
  %425 = load i32, ptr %i_left.i, align 8, !dbg !3372, !tbaa !1651
  %sub.i2039 = sub nsw i32 %425, %conv915, !dbg !3372
  store i32 %sub.i2039, ptr %i_left.i, align 8, !dbg !3372, !tbaa !1651
  %cmp.i2040 = icmp slt i32 %sub.i2039, 33, !dbg !3373
  br i1 %cmp.i2040, label %if.then.i2048, label %if.end929, !dbg !3374

if.then.i2048:                                    ; preds = %if.then909
  %sh_prom6.i2041 = zext i32 %sub.i2039 to i64, !dbg !3375
  %shl7.i2042 = shl i64 %or.i2037, %sh_prom6.i2041, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %shl7.i2042, metadata !1736, metadata !DIExpression()) #7, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %shl7.i2042, metadata !1743, metadata !DIExpression()) #7, !dbg !3378
  %add.i.i.i2043 = tail call i64 @llvm.bswap.i64(i64 %shl7.i2042) #7, !dbg !3380
  %conv8.i2044 = trunc i64 %add.i.i.i2043 to i32, !dbg !3381
  %426 = load ptr, ptr %p.i, align 8, !dbg !3382, !tbaa !1646
  store i32 %conv8.i2044, ptr %426, align 4, !dbg !3383, !tbaa !1637
  %427 = load i32, ptr %i_left.i, align 8, !dbg !3384, !tbaa !1651
  %add.i2046 = add nsw i32 %427, 32, !dbg !3384
  store i32 %add.i2046, ptr %i_left.i, align 8, !dbg !3384, !tbaa !1651
  %428 = load ptr, ptr %p.i, align 8, !dbg !3385, !tbaa !1646
  %add.ptr.i2047 = getelementptr inbounds i8, ptr %428, i64 4, !dbg !3385
  store ptr %add.ptr.i2047, ptr %p.i, align 8, !dbg !3385, !tbaa !1646
  br label %if.end929, !dbg !3386

if.else920:                                       ; preds = %x264_mb_predict_non_zero_code.exit2032
  %conv899 = zext i8 %419 to i32, !dbg !3361
  call void @llvm.dbg.value(metadata i32 %conv899, metadata !1589, metadata !DIExpression()), !dbg !3362
  %arrayidx924 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 54, i32 3, i64 %indvars.iv2144, !dbg !3363
  %add.ptr926 = getelementptr inbounds i16, ptr %arrayidx924, i64 1, !dbg !3363
  %call927 = tail call fastcc i32 @block_residual_write_cavlc(ptr noundef nonnull %h, i32 noundef 4, ptr noundef nonnull %add.ptr926, i32 noundef %conv899), !dbg !3363
  %conv928 = trunc i32 %call927 to i8, !dbg !3363
  store i8 %conv928, ptr %arrayidx907, align 1, !dbg !3363, !tbaa !1637
  br label %if.end929

if.end929:                                        ; preds = %if.then.i2048, %if.then909, %if.else920
  %indvars.iv.next2145 = add nuw nsw i64 %indvars.iv2144, 1, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next2145, metadata !1586, metadata !DIExpression()), !dbg !3345
  %exitcond2147.not = icmp eq i64 %indvars.iv.next2145, 24, !dbg !3388
  br i1 %exitcond2147.not, label %if.end934, label %for.body894, !dbg !3346, !llvm.loop !3389

if.end934:                                        ; preds = %if.end929, %if.end883, %if.end826
  call void @llvm.dbg.value(metadata ptr %bs, metadata !1638, metadata !DIExpression()), !dbg !3391
  %429 = load ptr, ptr %p.i, align 8, !dbg !3393, !tbaa !1646
  %430 = load ptr, ptr %bs, align 8, !dbg !3394, !tbaa !1648
  %sub.ptr.lhs.cast.i2052 = ptrtoint ptr %429 to i64, !dbg !3395
  %sub.ptr.rhs.cast.i2053 = ptrtoint ptr %430 to i64, !dbg !3395
  %sub.ptr.sub.i2054 = sub i64 %sub.ptr.lhs.cast.i2052, %sub.ptr.rhs.cast.i2053, !dbg !3395
  %431 = load i32, ptr %i_left.i, align 8, !dbg !3396, !tbaa !1651
  %sub.ptr.sub.tr.i2056 = trunc i64 %sub.ptr.sub.i2054 to i32, !dbg !3397
  %432 = shl i32 %sub.ptr.sub.tr.i2056, 3, !dbg !3397
  %i_tex_bits939 = getelementptr inbounds %struct.anon.14, ptr %stat700, i64 0, i32 1, !dbg !3398
  %433 = load i32, ptr %i_tex_bits939, align 4, !dbg !3399, !tbaa !1875
  %434 = add i32 %conv1.i1747, %431, !dbg !3400
  %435 = sub i32 64, %434, !dbg !3400
  %sub936 = add i32 %435, %433, !dbg !3400
  %add940 = add i32 %sub936, %432, !dbg !3399
  store i32 %add940, ptr %i_tex_bits939, align 4, !dbg !3399, !tbaa !1875
  br label %cleanup, !dbg !3401

cleanup:                                          ; preds = %if.end934, %for.cond.cleanup53
  ret void, !dbg !3401
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc void @bs_write_ue(ptr nocapture noundef %s, i32 noundef %val) unnamed_addr #3 !dbg !1706 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !1705, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i32 %val, metadata !1710, metadata !DIExpression()), !dbg !3402
  %add = add nsw i32 %val, 1, !dbg !3403
  %idxprom = sext i32 %add to i64, !dbg !3404
  %arrayidx = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom, !dbg !3404
  %0 = load i8, ptr %arrayidx, align 1, !dbg !3404, !tbaa !1637
  %conv = zext i8 %0 to i32, !dbg !3404
  call void @llvm.dbg.value(metadata ptr %s, metadata !1715, metadata !DIExpression()) #7, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1720, metadata !DIExpression()) #7, !dbg !3405
  call void @llvm.dbg.value(metadata i32 %add, metadata !1721, metadata !DIExpression()) #7, !dbg !3405
  %cur_bits.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 3, !dbg !3407
  %1 = load i64, ptr %cur_bits.i, align 8, !dbg !3407, !tbaa !1679
  %sh_prom.i = zext i8 %0 to i64, !dbg !3408
  %shl.i = shl i64 %1, %sh_prom.i, !dbg !3408
  %conv.i = zext i32 %add to i64, !dbg !3409
  %or.i = or i64 %shl.i, %conv.i, !dbg !3410
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3411, !tbaa !1679
  %i_left.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 4, !dbg !3412
  %2 = load i32, ptr %i_left.i, align 8, !dbg !3413, !tbaa !1651
  %sub.i = sub nsw i32 %2, %conv, !dbg !3413
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3413, !tbaa !1651
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3414
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit, !dbg !3415

if.then.i:                                        ; preds = %entry
  %sh_prom6.i = zext i32 %sub.i to i64, !dbg !3416
  %shl7.i = shl i64 %or.i, %sh_prom6.i, !dbg !3416
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1736, metadata !DIExpression()) #7, !dbg !3417
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1743, metadata !DIExpression()) #7, !dbg !3419
  %add.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i) #7, !dbg !3421
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !3422
  %p.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 1, !dbg !3423
  %3 = load ptr, ptr %p.i, align 8, !dbg !3423, !tbaa !1646
  store i32 %conv8.i, ptr %3, align 4, !dbg !3424, !tbaa !1637
  %4 = load i32, ptr %i_left.i, align 8, !dbg !3425, !tbaa !1651
  %add.i = add nsw i32 %4, 32, !dbg !3425
  store i32 %add.i, ptr %i_left.i, align 8, !dbg !3425, !tbaa !1651
  %5 = load ptr, ptr %p.i, align 8, !dbg !3426, !tbaa !1646
  %add.ptr.i = getelementptr inbounds i8, ptr %5, i64 4, !dbg !3426
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3426, !tbaa !1646
  br label %bs_write.exit, !dbg !3427

bs_write.exit:                                    ; preds = %entry, %if.then.i
  ret void, !dbg !3428
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint mustprogress nofree nosync nounwind willreturn uwtable
define internal fastcc void @bs_write_te(ptr nocapture noundef %s, i32 noundef %x, i32 noundef %val) unnamed_addr #3 !dbg !2283 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !2282, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 %x, metadata !2287, metadata !DIExpression()), !dbg !3429
  call void @llvm.dbg.value(metadata i32 %val, metadata !2288, metadata !DIExpression()), !dbg !3429
  %cmp = icmp eq i32 %x, 1, !dbg !3430
  br i1 %cmp, label %if.then, label %if.else, !dbg !3431

if.then:                                          ; preds = %entry
  %xor = xor i32 %val, 1, !dbg !3432
  call void @llvm.dbg.value(metadata ptr %s, metadata !1669, metadata !DIExpression()) #7, !dbg !3433
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1674, metadata !DIExpression()) #7, !dbg !3433
  %cur_bits.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 3, !dbg !3435
  %0 = load i64, ptr %cur_bits.i, align 8, !dbg !3436, !tbaa !1679
  %shl.i = shl i64 %0, 1, !dbg !3436
  %conv.i = zext i32 %xor to i64, !dbg !3437
  %or.i = or i64 %shl.i, %conv.i, !dbg !3438
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3438, !tbaa !1679
  %i_left.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 4, !dbg !3439
  %1 = load i32, ptr %i_left.i, align 8, !dbg !3440, !tbaa !1651
  %dec.i = add nsw i32 %1, -1, !dbg !3440
  store i32 %dec.i, ptr %i_left.i, align 8, !dbg !3440, !tbaa !1651
  %cmp.i = icmp eq i32 %dec.i, 32, !dbg !3441
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !3442

if.then.i:                                        ; preds = %if.then
  %conv6.i = trunc i64 %or.i to i32, !dbg !3443
  call void @llvm.dbg.value(metadata i32 %conv6.i, metadata !1688, metadata !DIExpression()) #7, !dbg !3444
  %add5.i.i = tail call i32 @llvm.bswap.i32(i32 %conv6.i) #7, !dbg !3446
  %p.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 1, !dbg !3447
  %2 = load ptr, ptr %p.i, align 8, !dbg !3447, !tbaa !1646
  store i32 %add5.i.i, ptr %2, align 4, !dbg !3448, !tbaa !1637
  %3 = load ptr, ptr %p.i, align 8, !dbg !3449, !tbaa !1646
  %add.ptr.i = getelementptr inbounds i8, ptr %3, i64 4, !dbg !3449
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3449, !tbaa !1646
  store i32 64, ptr %i_left.i, align 8, !dbg !3450, !tbaa !1651
  br label %if.end, !dbg !3451

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %s, metadata !1705, metadata !DIExpression()) #7, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %val, metadata !1710, metadata !DIExpression()) #7, !dbg !3452
  %add.i = add nsw i32 %val, 1, !dbg !3454
  %idxprom.i = sext i32 %add.i to i64, !dbg !3455
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i, !dbg !3455
  %4 = load i8, ptr %arrayidx.i, align 1, !dbg !3455, !tbaa !1637
  %conv.i3 = zext i8 %4 to i32, !dbg !3455
  call void @llvm.dbg.value(metadata ptr %s, metadata !1715, metadata !DIExpression()) #7, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %conv.i3, metadata !1720, metadata !DIExpression()) #7, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1721, metadata !DIExpression()) #7, !dbg !3456
  %cur_bits.i.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 3, !dbg !3458
  %5 = load i64, ptr %cur_bits.i.i, align 8, !dbg !3458, !tbaa !1679
  %sh_prom.i.i = zext i8 %4 to i64, !dbg !3459
  %shl.i.i = shl i64 %5, %sh_prom.i.i, !dbg !3459
  %conv.i.i = zext i32 %add.i to i64, !dbg !3460
  %or.i.i = or i64 %shl.i.i, %conv.i.i, !dbg !3461
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !3462, !tbaa !1679
  %i_left.i.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 4, !dbg !3463
  %6 = load i32, ptr %i_left.i.i, align 8, !dbg !3464, !tbaa !1651
  %sub.i.i = sub nsw i32 %6, %conv.i3, !dbg !3464
  store i32 %sub.i.i, ptr %i_left.i.i, align 8, !dbg !3464, !tbaa !1651
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !3465
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end, !dbg !3466

if.then.i.i:                                      ; preds = %if.else
  %sh_prom6.i.i = zext i32 %sub.i.i to i64, !dbg !3467
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1736, metadata !DIExpression()) #7, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1743, metadata !DIExpression()) #7, !dbg !3470
  %add.i.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i.i) #7, !dbg !3472
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !3473
  %p.i.i = getelementptr inbounds %struct.bs_s, ptr %s, i64 0, i32 1, !dbg !3474
  %7 = load ptr, ptr %p.i.i, align 8, !dbg !3474, !tbaa !1646
  store i32 %conv8.i.i, ptr %7, align 4, !dbg !3475, !tbaa !1637
  %8 = load i32, ptr %i_left.i.i, align 8, !dbg !3476, !tbaa !1651
  %add.i.i = add nsw i32 %8, 32, !dbg !3476
  store i32 %add.i.i, ptr %i_left.i.i, align 8, !dbg !3476, !tbaa !1651
  %9 = load ptr, ptr %p.i.i, align 8, !dbg !3477, !tbaa !1646
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 4, !dbg !3477
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8, !dbg !3477, !tbaa !1646
  br label %if.end, !dbg !3478

if.end:                                           ; preds = %if.then.i.i, %if.else, %if.then.i, %if.then
  ret void, !dbg !3479
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cavlc_mb_mvd(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width) unnamed_addr #0 !dbg !3480 {
entry:
  %mvp = alloca [2 x i16], align 4
  call void @llvm.dbg.value(metadata ptr %h, metadata !3484, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !3485, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %idx, metadata !3486, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i32 %width, metadata !3487, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %h, metadata !3488, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)), !dbg !3490
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3491
  call void @llvm.dbg.declare(metadata ptr %mvp, metadata !3489, metadata !DIExpression()), !dbg !3491
  call void @x264_mb_predict_mv(ptr noundef %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %width, ptr noundef nonnull %mvp) #7, !dbg !3492
  %0 = zext i32 %i_list to i64
  %idxprom1 = sext i32 %idx to i64, !dbg !3493
  %arrayidx2 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom1, !dbg !3493
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !3493, !tbaa !1982
  %idxprom3 = sext i32 %1 to i64, !dbg !3494
  %arrayidx4 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %0, i64 %idxprom3, !dbg !3494
  %2 = load i16, ptr %arrayidx4, align 4, !dbg !3494, !tbaa !3495
  %conv = sext i16 %2 to i32, !dbg !3494
  %3 = load i16, ptr %mvp, align 4, !dbg !3497, !tbaa !3495
  %conv7 = sext i16 %3 to i32, !dbg !3497
  %sub = sub nsw i32 %conv, %conv7, !dbg !3498
  call void @llvm.dbg.value(metadata ptr %h, metadata !3000, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %sub, metadata !3003, metadata !DIExpression()) #7, !dbg !3499
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #7, !dbg !3499
  %mul.i = shl nsw i32 %sub, 1, !dbg !3501
  %sub.i = sub nsw i32 1, %mul.i, !dbg !3502
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !3005, metadata !DIExpression()) #7, !dbg !3499
  %cmp.i = icmp sgt i32 %sub, 0, !dbg !3503
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %sub.i, !dbg !3504
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !3005, metadata !DIExpression()) #7, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !3003, metadata !DIExpression()) #7, !dbg !3499
  %cmp2.i = icmp sgt i32 %spec.select.i, 255, !dbg !3505
  %shr.i = ashr i32 %spec.select.i, 8
  %spec.select12.i = select i1 %cmp2.i, i32 16, i32 0, !dbg !3506
  %spec.select13.i = select i1 %cmp2.i, i32 %shr.i, i32 %spec.select.i, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %spec.select13.i, metadata !3005, metadata !DIExpression()) #7, !dbg !3499
  call void @llvm.dbg.value(metadata i32 %spec.select12.i, metadata !3004, metadata !DIExpression()) #7, !dbg !3499
  %idxprom.i = sext i32 %spec.select13.i to i64, !dbg !3507
  %arrayidx.i = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i, !dbg !3507
  %4 = load i8, ptr %arrayidx.i, align 1, !dbg !3507, !tbaa !1637
  %conv.i = zext i8 %4 to i32, !dbg !3507
  %add.i = add nuw nsw i32 %spec.select12.i, %conv.i, !dbg !3508
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !3004, metadata !DIExpression()) #7, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !1720, metadata !DIExpression()) #7, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1721, metadata !DIExpression()) #7, !dbg !3509
  %cur_bits.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3511
  %5 = load i64, ptr %cur_bits.i.i, align 8, !dbg !3511, !tbaa !1679
  %sh_prom.i.i = zext i32 %add.i to i64, !dbg !3512
  %shl.i.i = shl i64 %5, %sh_prom.i.i, !dbg !3512
  %conv.i.i = zext i32 %spec.select.i to i64, !dbg !3513
  %or.i.i = or i64 %shl.i.i, %conv.i.i, !dbg !3514
  store i64 %or.i.i, ptr %cur_bits.i.i, align 8, !dbg !3515, !tbaa !1679
  %i_left.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 4, !dbg !3516
  %6 = load i32, ptr %i_left.i.i, align 8, !dbg !3517, !tbaa !1651
  %sub.i.i = sub nsw i32 %6, %add.i, !dbg !3517
  store i32 %sub.i.i, ptr %i_left.i.i, align 8, !dbg !3517, !tbaa !1651
  %cmp.i.i = icmp slt i32 %sub.i.i, 33, !dbg !3518
  br i1 %cmp.i.i, label %if.then.i.i, label %bs_write_se.exit, !dbg !3519

if.then.i.i:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %h, metadata !3488, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)), !dbg !3490
  call void @llvm.dbg.value(metadata ptr %h, metadata !3000, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3499
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3509
  %sh_prom6.i.i = zext i32 %sub.i.i to i64, !dbg !3520
  %shl7.i.i = shl i64 %or.i.i, %sh_prom6.i.i, !dbg !3520
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1736, metadata !DIExpression()) #7, !dbg !3521
  call void @llvm.dbg.value(metadata i64 %shl7.i.i, metadata !1743, metadata !DIExpression()) #7, !dbg !3523
  %add.i.i.i.i = call i64 @llvm.bswap.i64(i64 %shl7.i.i) #7, !dbg !3525
  %conv8.i.i = trunc i64 %add.i.i.i.i to i32, !dbg !3526
  %p.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3527
  %7 = load ptr, ptr %p.i.i, align 8, !dbg !3527, !tbaa !1646
  store i32 %conv8.i.i, ptr %7, align 4, !dbg !3528, !tbaa !1637
  %8 = load i32, ptr %i_left.i.i, align 8, !dbg !3529, !tbaa !1651
  %add.i.i = add nsw i32 %8, 32, !dbg !3529
  %9 = load ptr, ptr %p.i.i, align 8, !dbg !3530, !tbaa !1646
  %add.ptr.i.i = getelementptr inbounds i8, ptr %9, i64 4, !dbg !3530
  store ptr %add.ptr.i.i, ptr %p.i.i, align 8, !dbg !3530, !tbaa !1646
  %.pre = load i64, ptr %cur_bits.i.i, align 8, !dbg !3531, !tbaa !1679
  br label %bs_write_se.exit, !dbg !3534

bs_write_se.exit:                                 ; preds = %entry, %if.then.i.i
  %10 = phi i32 [ %sub.i.i, %entry ], [ %add.i.i, %if.then.i.i ], !dbg !3535
  %11 = phi i64 [ %or.i.i, %entry ], [ %.pre, %if.then.i.i ], !dbg !3531
  %arrayidx17 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %0, i64 %idxprom3, i64 1, !dbg !3536
  %12 = load i16, ptr %arrayidx17, align 2, !dbg !3536, !tbaa !3495
  %conv18 = sext i16 %12 to i32, !dbg !3536
  %arrayidx19 = getelementptr inbounds [2 x i16], ptr %mvp, i64 0, i64 1, !dbg !3537
  %13 = load i16, ptr %arrayidx19, align 2, !dbg !3537, !tbaa !3495
  %conv20 = sext i16 %13 to i32, !dbg !3537
  %sub21 = sub nsw i32 %conv18, %conv20, !dbg !3538
  call void @llvm.dbg.value(metadata ptr %h, metadata !3000, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %sub21, metadata !3003, metadata !DIExpression()) #7, !dbg !3539
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #7, !dbg !3539
  %mul.i30 = shl nsw i32 %sub21, 1, !dbg !3540
  %sub.i31 = sub nsw i32 1, %mul.i30, !dbg !3541
  call void @llvm.dbg.value(metadata i32 %sub.i31, metadata !3005, metadata !DIExpression()) #7, !dbg !3539
  %cmp.i32 = icmp sgt i32 %sub21, 0, !dbg !3542
  %spec.select.i33 = select i1 %cmp.i32, i32 %mul.i30, i32 %sub.i31, !dbg !3543
  call void @llvm.dbg.value(metadata i32 %spec.select.i33, metadata !3005, metadata !DIExpression()) #7, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %spec.select.i33, metadata !3003, metadata !DIExpression()) #7, !dbg !3539
  %cmp2.i34 = icmp sgt i32 %spec.select.i33, 255, !dbg !3544
  %shr.i35 = ashr i32 %spec.select.i33, 8
  %spec.select12.i36 = select i1 %cmp2.i34, i32 16, i32 0, !dbg !3545
  %spec.select13.i37 = select i1 %cmp2.i34, i32 %shr.i35, i32 %spec.select.i33, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %spec.select13.i37, metadata !3005, metadata !DIExpression()) #7, !dbg !3539
  call void @llvm.dbg.value(metadata i32 %spec.select12.i36, metadata !3004, metadata !DIExpression()) #7, !dbg !3539
  %idxprom.i38 = sext i32 %spec.select13.i37 to i64, !dbg !3546
  %arrayidx.i39 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %idxprom.i38, !dbg !3546
  %14 = load i8, ptr %arrayidx.i39, align 1, !dbg !3546, !tbaa !1637
  %conv.i40 = zext i8 %14 to i32, !dbg !3546
  %add.i41 = add nuw nsw i32 %spec.select12.i36, %conv.i40, !dbg !3547
  call void @llvm.dbg.value(metadata i32 %add.i41, metadata !3004, metadata !DIExpression()) #7, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %add.i41, metadata !1720, metadata !DIExpression()) #7, !dbg !3548
  call void @llvm.dbg.value(metadata i32 %spec.select.i33, metadata !1721, metadata !DIExpression()) #7, !dbg !3548
  %sh_prom.i.i43 = zext i32 %add.i41 to i64, !dbg !3549
  %shl.i.i44 = shl i64 %11, %sh_prom.i.i43, !dbg !3549
  %conv.i.i45 = zext i32 %spec.select.i33 to i64, !dbg !3550
  %or.i.i46 = or i64 %shl.i.i44, %conv.i.i45, !dbg !3551
  store i64 %or.i.i46, ptr %cur_bits.i.i, align 8, !dbg !3552, !tbaa !1679
  %sub.i.i48 = sub nsw i32 %10, %add.i41, !dbg !3535
  store i32 %sub.i.i48, ptr %i_left.i.i, align 8, !dbg !3535, !tbaa !1651
  %cmp.i.i49 = icmp slt i32 %sub.i.i48, 33, !dbg !3553
  br i1 %cmp.i.i49, label %if.then.i.i57, label %bs_write_se.exit58, !dbg !3554

if.then.i.i57:                                    ; preds = %bs_write_se.exit
  %sh_prom6.i.i50 = zext i32 %sub.i.i48 to i64, !dbg !3555
  %shl7.i.i51 = shl i64 %or.i.i46, %sh_prom6.i.i50, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %shl7.i.i51, metadata !1736, metadata !DIExpression()) #7, !dbg !3556
  call void @llvm.dbg.value(metadata i64 %shl7.i.i51, metadata !1743, metadata !DIExpression()) #7, !dbg !3558
  %add.i.i.i.i52 = call i64 @llvm.bswap.i64(i64 %shl7.i.i51) #7, !dbg !3560
  %conv8.i.i53 = trunc i64 %add.i.i.i.i52 to i32, !dbg !3561
  %p.i.i54 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3562
  %15 = load ptr, ptr %p.i.i54, align 8, !dbg !3562, !tbaa !1646
  store i32 %conv8.i.i53, ptr %15, align 4, !dbg !3563, !tbaa !1637
  %16 = load i32, ptr %i_left.i.i, align 8, !dbg !3564, !tbaa !1651
  %add.i.i55 = add nsw i32 %16, 32, !dbg !3564
  store i32 %add.i.i55, ptr %i_left.i.i, align 8, !dbg !3564, !tbaa !1651
  %17 = load ptr, ptr %p.i.i54, align 8, !dbg !3565, !tbaa !1646
  %add.ptr.i.i56 = getelementptr inbounds i8, ptr %17, i64 4, !dbg !3565
  store ptr %add.ptr.i.i56, ptr %p.i.i54, align 8, !dbg !3565, !tbaa !1646
  br label %bs_write_se.exit58, !dbg !3566

bs_write_se.exit58:                               ; preds = %bs_write_se.exit, %if.then.i.i57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mvp) #7, !dbg !3567
  ret void, !dbg !3567
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc(ptr noundef %h, i32 noundef %i_ctxBlockCat, ptr noundef %l, i32 noundef %nC) unnamed_addr #0 !dbg !1465 {
entry:
  %runlevel = alloca %struct.x264_run_level_t, align 4
  call void @llvm.dbg.value(metadata ptr %h, metadata !1469, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %i_ctxBlockCat, metadata !1470, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %l, metadata !1471, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %nC, metadata !1472, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %h, metadata !1473, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)), !dbg !3568
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %runlevel) #7, !dbg !3569
  call void @llvm.dbg.declare(metadata ptr %runlevel, metadata !1475, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 0, metadata !1479, metadata !DIExpression()), !dbg !3568
  %level = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, !dbg !3571
  %arrayidx = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 1, !dbg !3572
  store i16 2, ptr %arrayidx, align 2, !dbg !3573, !tbaa !3495
  %arrayidx2 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 2, !dbg !3574
  store i16 2, ptr %arrayidx2, align 4, !dbg !3575, !tbaa !3495
  %0 = zext i32 %i_ctxBlockCat to i64
  %arrayidx3 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 73, i32 12, i64 %0, !dbg !3576
  %1 = load ptr, ptr %arrayidx3, align 8, !dbg !3576, !tbaa !1816
  %call = call i32 %1(ptr noundef %l, ptr noundef nonnull %runlevel) #7, !dbg !3576
  call void @llvm.dbg.value(metadata i32 %call, metadata !1479, metadata !DIExpression()), !dbg !3568
  %2 = load i32, ptr %runlevel, align 4, !dbg !3577, !tbaa !3578
  %add = sub i32 1, %call, !dbg !3580
  %sub = add i32 %add, %2, !dbg !3581
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1477, metadata !DIExpression()), !dbg !3568
  %3 = load i16, ptr %level, align 4, !dbg !3582, !tbaa !3495
  %conv = sext i16 %3 to i32, !dbg !3582
  %add6 = add nsw i32 %conv, 1, !dbg !3583
  %sub10 = sub nsw i32 1, %conv, !dbg !3584
  %or = or i32 %add6, %sub10, !dbg !3585
  %shr301 = lshr i32 %or, 31, !dbg !3586
  %4 = load i16, ptr %arrayidx, align 2, !dbg !3587, !tbaa !3495
  %conv13 = sext i16 %4 to i32, !dbg !3587
  %add14 = add nsw i32 %conv13, 1, !dbg !3588
  %sub18 = sub nsw i32 1, %conv13, !dbg !3589
  %or19 = or i32 %add14, %sub18, !dbg !3590
  %5 = lshr i32 %or19, 30, !dbg !3591
  %6 = and i32 %5, 2, !dbg !3591
  %or22 = or i32 %6, %shr301, !dbg !3592
  %7 = load i16, ptr %arrayidx2, align 4, !dbg !3593, !tbaa !3495
  %conv25 = sext i16 %7 to i32, !dbg !3593
  %add26 = add nsw i32 %conv25, 1, !dbg !3594
  %sub30 = sub nsw i32 1, %conv25, !dbg !3595
  %or31 = or i32 %add26, %sub30, !dbg !3596
  %8 = lshr i32 %or31, 29, !dbg !3597
  %9 = and i32 %8, 4, !dbg !3597
  %or34 = or i32 %or22, %9, !dbg !3598
  call void @llvm.dbg.value(metadata i32 %or34, metadata !1476, metadata !DIExpression()), !dbg !3568
  %idxprom35 = zext i32 %or34 to i64, !dbg !3599
  %arrayidx36 = getelementptr inbounds [8 x i8], ptr @block_residual_write_cavlc.ctz_index, i64 0, i64 %idxprom35, !dbg !3599
  %10 = load i8, ptr %arrayidx36, align 1, !dbg !3599, !tbaa !1637
  %conv37 = zext i8 %10 to i32, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %conv37, metadata !1476, metadata !DIExpression()), !dbg !3568
  %shr41302 = lshr i32 %conv25, 31, !dbg !3600
  %11 = lshr i16 %4, 14, !dbg !3601
  %12 = and i16 %11, 2, !dbg !3601
  %13 = lshr i16 %3, 13, !dbg !3602
  %14 = and i16 %13, 4, !dbg !3602
  %or48416 = or i16 %12, %14, !dbg !3603
  %or48 = zext i16 %or48416 to i32, !dbg !3603
  %or54 = or i32 %shr41302, %or48, !dbg !3604
  call void @llvm.dbg.value(metadata i32 %or54, metadata !1480, metadata !DIExpression()), !dbg !3568
  %sub55 = sub nsw i32 3, %conv37, !dbg !3605
  %shr56 = lshr i32 %or54, %sub55, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %shr56, metadata !1480, metadata !DIExpression()), !dbg !3568
  %15 = zext i32 %nC to i64
  %sub59 = add nsw i32 %call, -1, !dbg !3607
  %idxprom60 = sext i32 %sub59 to i64, !dbg !3607
  %16 = zext i8 %10 to i64
  %arrayidx63 = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %15, i64 %idxprom60, i64 %16, !dbg !3607
  %i_size = getelementptr inbounds [5 x [16 x [4 x %struct.vlc_t]]], ptr @x264_coeff_token, i64 0, i64 %15, i64 %idxprom60, i64 %16, i32 1, !dbg !3607
  %17 = load i8, ptr %i_size, align 1, !dbg !3607, !tbaa !3062
  %conv64 = zext i8 %17 to i32, !dbg !3607
  %18 = load i8, ptr %arrayidx63, align 2, !dbg !3607, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3608
  call void @llvm.dbg.value(metadata i32 %conv64, metadata !1720, metadata !DIExpression()) #7, !dbg !3608
  call void @llvm.dbg.value(metadata i8 %18, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3608
  %cur_bits.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3610
  %19 = load i64, ptr %cur_bits.i, align 8, !dbg !3610, !tbaa !1679
  %sh_prom.i = zext i8 %17 to i64, !dbg !3611
  %shl.i = shl i64 %19, %sh_prom.i, !dbg !3611
  %conv.i = zext i8 %18 to i64, !dbg !3612
  %or.i = or i64 %shl.i, %conv.i, !dbg !3613
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3614, !tbaa !1679
  %i_left.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 4, !dbg !3615
  %20 = load i32, ptr %i_left.i, align 8, !dbg !3616, !tbaa !1651
  %sub.i = sub nsw i32 %20, %conv64, !dbg !3616
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3616, !tbaa !1651
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3617
  br i1 %cmp.i, label %if.then.i, label %bs_write.exit, !dbg !3618

if.then.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %h, metadata !1473, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3608
  %sh_prom6.i = zext i32 %sub.i to i64, !dbg !3619
  %shl7.i = shl i64 %or.i, %sh_prom6.i, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1736, metadata !DIExpression()) #7, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %shl7.i, metadata !1743, metadata !DIExpression()) #7, !dbg !3622
  %add.i.i.i = call i64 @llvm.bswap.i64(i64 %shl7.i) #7, !dbg !3624
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !3625
  %p.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3626
  %21 = load ptr, ptr %p.i, align 8, !dbg !3626, !tbaa !1646
  store i32 %conv8.i, ptr %21, align 4, !dbg !3627, !tbaa !1637
  %22 = load i32, ptr %i_left.i, align 8, !dbg !3628, !tbaa !1651
  %add.i = add nsw i32 %22, 32, !dbg !3628
  %23 = load ptr, ptr %p.i, align 8, !dbg !3629, !tbaa !1646
  %add.ptr.i = getelementptr inbounds i8, ptr %23, i64 4, !dbg !3629
  store ptr %add.ptr.i, ptr %p.i, align 8, !dbg !3629, !tbaa !1646
  br label %bs_write.exit, !dbg !3630

bs_write.exit:                                    ; preds = %entry, %if.then.i
  %24 = phi i32 [ %sub.i, %entry ], [ %add.i, %if.then.i ]
  %cmp = icmp sgt i32 %call, 10, !dbg !3631
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3632

land.rhs:                                         ; preds = %bs_write.exit
  %cmp74 = icmp ne i32 %or34, 0, !dbg !3633
  %phi.cast = zext i1 %cmp74 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %bs_write.exit
  %25 = phi i32 [ 0, %bs_write.exit ], [ %phi.cast, %land.rhs ]
  call void @llvm.dbg.value(metadata i32 %25, metadata !1478, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %conv37, metadata !1720, metadata !DIExpression()) #7, !dbg !3634
  call void @llvm.dbg.value(metadata i32 %shr56, metadata !1721, metadata !DIExpression()) #7, !dbg !3634
  %26 = load i64, ptr %cur_bits.i, align 8, !dbg !3636, !tbaa !1679
  %shl.i305 = shl i64 %26, %16, !dbg !3637
  %conv.i306 = zext i32 %shr56 to i64, !dbg !3638
  %or.i307 = or i64 %shl.i305, %conv.i306, !dbg !3639
  store i64 %or.i307, ptr %cur_bits.i, align 8, !dbg !3640, !tbaa !1679
  %sub.i309 = sub nsw i32 %24, %conv37, !dbg !3641
  store i32 %sub.i309, ptr %i_left.i, align 8, !dbg !3641, !tbaa !1651
  %cmp.i310 = icmp slt i32 %sub.i309, 33, !dbg !3642
  br i1 %cmp.i310, label %if.then.i318, label %bs_write.exit319, !dbg !3643

if.then.i318:                                     ; preds = %land.end
  %sh_prom6.i311 = zext i32 %sub.i309 to i64, !dbg !3644
  %shl7.i312 = shl i64 %or.i307, %sh_prom6.i311, !dbg !3644
  call void @llvm.dbg.value(metadata i64 %shl7.i312, metadata !1736, metadata !DIExpression()) #7, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %shl7.i312, metadata !1743, metadata !DIExpression()) #7, !dbg !3647
  %add.i.i.i313 = call i64 @llvm.bswap.i64(i64 %shl7.i312) #7, !dbg !3649
  %conv8.i314 = trunc i64 %add.i.i.i313 to i32, !dbg !3650
  %p.i315 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3651
  %27 = load ptr, ptr %p.i315, align 8, !dbg !3651, !tbaa !1646
  store i32 %conv8.i314, ptr %27, align 4, !dbg !3652, !tbaa !1637
  %28 = load i32, ptr %i_left.i, align 8, !dbg !3653, !tbaa !1651
  %add.i316 = add nsw i32 %28, 32, !dbg !3653
  store i32 %add.i316, ptr %i_left.i, align 8, !dbg !3653, !tbaa !1651
  %29 = load ptr, ptr %p.i315, align 8, !dbg !3654, !tbaa !1646
  %add.ptr.i317 = getelementptr inbounds i8, ptr %29, i64 4, !dbg !3654
  store ptr %add.ptr.i317, ptr %p.i315, align 8, !dbg !3654, !tbaa !1646
  br label %bs_write.exit319, !dbg !3655

bs_write.exit319:                                 ; preds = %land.end, %if.then.i318
  %30 = phi i32 [ %sub.i309, %land.end ], [ %add.i316, %if.then.i318 ]
  %cmp76 = icmp sgt i32 %call, %conv37, !dbg !3656
  br i1 %cmp76, label %if.then, label %if.end150, !dbg !3657

if.then:                                          ; preds = %bs_write.exit319
  %arrayidx80 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 %16, !dbg !3658
  %31 = load i16, ptr %arrayidx80, align 2, !dbg !3658, !tbaa !3495
  %conv81 = sext i16 %31 to i32, !dbg !3658
  call void @llvm.dbg.value(metadata i32 %conv81, metadata !1481, metadata !DIExpression()), !dbg !3659
  %add86 = add nsw i32 %conv81, 64, !dbg !3660
  call void @llvm.dbg.value(metadata i32 %add86, metadata !1484, metadata !DIExpression()), !dbg !3659
  %shr87 = ashr i32 %conv81, 31, !dbg !3661
  %or88 = or i32 %shr87, 1, !dbg !3662
  %cmp89.not = icmp eq i32 %or34, 0, !dbg !3663
  %and92 = select i1 %cmp89.not, i32 0, i32 %or88, !dbg !3664
  %sub93 = sub nsw i32 %conv81, %and92, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %sub93, metadata !1481, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i32 %sub93, metadata !1481, metadata !DIExpression(DW_OP_plus_uconst, 64, DW_OP_stack_value)), !dbg !3659
  %cmp95 = icmp ult i32 %add86, 128, !dbg !3666
  br i1 %cmp95, label %if.then97, label %if.else, !dbg !3668

if.then97:                                        ; preds = %if.then
  %add94 = add nsw i32 %sub93, 64, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %add94, metadata !1481, metadata !DIExpression()), !dbg !3659
  %32 = zext i32 %25 to i64
  %idxprom100 = sext i32 %add94 to i64, !dbg !3670
  %arrayidx101 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %32, i64 %idxprom100, !dbg !3670
  %i_size102 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %32, i64 %idxprom100, i32 1, !dbg !3670
  %33 = load i8, ptr %i_size102, align 2, !dbg !3670, !tbaa !3672
  %conv103 = zext i8 %33 to i32, !dbg !3670
  %34 = load i16, ptr %arrayidx101, align 4, !dbg !3670, !tbaa !3674
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %conv103, metadata !1720, metadata !DIExpression()) #7, !dbg !3675
  call void @llvm.dbg.value(metadata i16 %34, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3675
  %35 = load i64, ptr %cur_bits.i, align 8, !dbg !3677, !tbaa !1679
  %sh_prom.i321 = zext i8 %33 to i64, !dbg !3678
  %shl.i322 = shl i64 %35, %sh_prom.i321, !dbg !3678
  %conv.i323 = zext i16 %34 to i64, !dbg !3679
  %or.i324 = or i64 %shl.i322, %conv.i323, !dbg !3680
  store i64 %or.i324, ptr %cur_bits.i, align 8, !dbg !3681, !tbaa !1679
  %sub.i326 = sub nsw i32 %30, %conv103, !dbg !3682
  store i32 %sub.i326, ptr %i_left.i, align 8, !dbg !3682, !tbaa !1651
  %cmp.i327 = icmp slt i32 %sub.i326, 33, !dbg !3683
  br i1 %cmp.i327, label %if.then.i335, label %bs_write.exit336, !dbg !3684

if.then.i335:                                     ; preds = %if.then97
  %sh_prom6.i328 = zext i32 %sub.i326 to i64, !dbg !3685
  %shl7.i329 = shl i64 %or.i324, %sh_prom6.i328, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %shl7.i329, metadata !1736, metadata !DIExpression()) #7, !dbg !3686
  call void @llvm.dbg.value(metadata i64 %shl7.i329, metadata !1743, metadata !DIExpression()) #7, !dbg !3688
  %add.i.i.i330 = call i64 @llvm.bswap.i64(i64 %shl7.i329) #7, !dbg !3690
  %conv8.i331 = trunc i64 %add.i.i.i330 to i32, !dbg !3691
  %p.i332 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3692
  %36 = load ptr, ptr %p.i332, align 8, !dbg !3692, !tbaa !1646
  store i32 %conv8.i331, ptr %36, align 4, !dbg !3693, !tbaa !1637
  %37 = load i32, ptr %i_left.i, align 8, !dbg !3694, !tbaa !1651
  %add.i333 = add nsw i32 %37, 32, !dbg !3694
  store i32 %add.i333, ptr %i_left.i, align 8, !dbg !3694, !tbaa !1651
  %38 = load ptr, ptr %p.i332, align 8, !dbg !3695, !tbaa !1646
  %add.ptr.i334 = getelementptr inbounds i8, ptr %38, i64 4, !dbg !3695
  store ptr %add.ptr.i334, ptr %p.i332, align 8, !dbg !3695, !tbaa !1646
  br label %bs_write.exit336, !dbg !3696

bs_write.exit336:                                 ; preds = %if.then97, %if.then.i335
  %idxprom112405 = zext i32 %add86 to i64, !dbg !3697
  %i_next = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %32, i64 %idxprom112405, i32 2, !dbg !3698
  %39 = load i8, ptr %i_next, align 1, !dbg !3698, !tbaa !3699
  %conv114 = zext i8 %39 to i32, !dbg !3697
  call void @llvm.dbg.value(metadata i32 %conv114, metadata !1478, metadata !DIExpression()), !dbg !3568
  br label %if.end, !dbg !3700

if.else:                                          ; preds = %if.then
  %call116 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef nonnull %h, i32 noundef %25, i32 noundef %sub93), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %call116, metadata !1478, metadata !DIExpression()), !dbg !3568
  br label %if.end

if.end:                                           ; preds = %if.else, %bs_write.exit336
  %i_suffix_length.0 = phi i32 [ %conv114, %bs_write.exit336 ], [ %call116, %if.else ], !dbg !3702
  call void @llvm.dbg.value(metadata i32 %i_suffix_length.0, metadata !1478, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i32 %conv37, metadata !1485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3703
  %i.0407 = add nuw nsw i32 %conv37, 1, !dbg !3703
  call void @llvm.dbg.value(metadata i32 %i.0407, metadata !1485, metadata !DIExpression()), !dbg !3703
  %cmp118408 = icmp slt i32 %i.0407, %call, !dbg !3704
  br i1 %cmp118408, label %for.body.lr.ph, label %if.end150, !dbg !3706

for.body.lr.ph:                                   ; preds = %if.end
  %p.i349 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1
  %40 = add nuw nsw i64 %16, 1, !dbg !3706
  %wide.trip.count = zext i32 %call to i64
  br label %for.body, !dbg !3706

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %40, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %i_suffix_length.1409 = phi i32 [ %i_suffix_length.0, %for.body.lr.ph ], [ %i_suffix_length.2, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %i_suffix_length.1409, metadata !1478, metadata !DIExpression()), !dbg !3568
  %arrayidx122 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 %indvars.iv, !dbg !3707
  %41 = load i16, ptr %arrayidx122, align 2, !dbg !3707, !tbaa !3495
  %conv123 = sext i16 %41 to i32, !dbg !3707
  %add124 = add nsw i32 %conv123, 64, !dbg !3709
  call void @llvm.dbg.value(metadata i32 %add124, metadata !1481, metadata !DIExpression()), !dbg !3659
  %cmp125 = icmp ult i32 %add124, 128, !dbg !3710
  br i1 %cmp125, label %if.then127, label %if.else146, !dbg !3712

if.then127:                                       ; preds = %for.body
  %idxprom128 = sext i32 %i_suffix_length.1409 to i64, !dbg !3713
  %idxprom130406 = zext i32 %add124 to i64, !dbg !3713
  %arrayidx131 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom128, i64 %idxprom130406, !dbg !3713
  %i_size132 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom128, i64 %idxprom130406, i32 1, !dbg !3713
  %42 = load i8, ptr %i_size132, align 2, !dbg !3713, !tbaa !3672
  %conv133 = zext i8 %42 to i32, !dbg !3713
  %43 = load i16, ptr %arrayidx131, align 4, !dbg !3713, !tbaa !3674
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3715
  call void @llvm.dbg.value(metadata i32 %conv133, metadata !1720, metadata !DIExpression()) #7, !dbg !3715
  call void @llvm.dbg.value(metadata i16 %43, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3715
  %44 = load i64, ptr %cur_bits.i, align 8, !dbg !3717, !tbaa !1679
  %sh_prom.i338 = zext i8 %42 to i64, !dbg !3718
  %shl.i339 = shl i64 %44, %sh_prom.i338, !dbg !3718
  %conv.i340 = zext i16 %43 to i64, !dbg !3719
  %or.i341 = or i64 %shl.i339, %conv.i340, !dbg !3720
  store i64 %or.i341, ptr %cur_bits.i, align 8, !dbg !3721, !tbaa !1679
  %45 = load i32, ptr %i_left.i, align 8, !dbg !3722, !tbaa !1651
  %sub.i343 = sub nsw i32 %45, %conv133, !dbg !3722
  store i32 %sub.i343, ptr %i_left.i, align 8, !dbg !3722, !tbaa !1651
  %cmp.i344 = icmp slt i32 %sub.i343, 33, !dbg !3723
  br i1 %cmp.i344, label %if.then.i352, label %bs_write.exit353, !dbg !3724

if.then.i352:                                     ; preds = %if.then127
  %sh_prom6.i345 = zext i32 %sub.i343 to i64, !dbg !3725
  %shl7.i346 = shl i64 %or.i341, %sh_prom6.i345, !dbg !3725
  call void @llvm.dbg.value(metadata i64 %shl7.i346, metadata !1736, metadata !DIExpression()) #7, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %shl7.i346, metadata !1743, metadata !DIExpression()) #7, !dbg !3728
  %add.i.i.i347 = call i64 @llvm.bswap.i64(i64 %shl7.i346) #7, !dbg !3730
  %conv8.i348 = trunc i64 %add.i.i.i347 to i32, !dbg !3731
  %46 = load ptr, ptr %p.i349, align 8, !dbg !3732, !tbaa !1646
  store i32 %conv8.i348, ptr %46, align 4, !dbg !3733, !tbaa !1637
  %47 = load i32, ptr %i_left.i, align 8, !dbg !3734, !tbaa !1651
  %add.i350 = add nsw i32 %47, 32, !dbg !3734
  store i32 %add.i350, ptr %i_left.i, align 8, !dbg !3734, !tbaa !1651
  %48 = load ptr, ptr %p.i349, align 8, !dbg !3735, !tbaa !1646
  %add.ptr.i351 = getelementptr inbounds i8, ptr %48, i64 4, !dbg !3735
  store ptr %add.ptr.i351, ptr %p.i349, align 8, !dbg !3735, !tbaa !1646
  br label %bs_write.exit353, !dbg !3736

bs_write.exit353:                                 ; preds = %if.then127, %if.then.i352
  %i_next144 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %idxprom128, i64 %idxprom130406, i32 2, !dbg !3737
  %49 = load i8, ptr %i_next144, align 1, !dbg !3737, !tbaa !3699
  %conv145 = zext i8 %49 to i32, !dbg !3738
  call void @llvm.dbg.value(metadata i32 %conv145, metadata !1478, metadata !DIExpression()), !dbg !3568
  br label %for.inc, !dbg !3739

if.else146:                                       ; preds = %for.body
  %call148 = call fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length.1409, i32 noundef %conv123), !dbg !3740
  call void @llvm.dbg.value(metadata i32 %call148, metadata !1478, metadata !DIExpression()), !dbg !3568
  br label %for.inc

for.inc:                                          ; preds = %bs_write.exit353, %if.else146
  %i_suffix_length.2 = phi i32 [ %conv145, %bs_write.exit353 ], [ %call148, %if.else146 ], !dbg !3741
  call void @llvm.dbg.value(metadata i32 %i_suffix_length.2, metadata !1478, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1485, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3703
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1485, metadata !DIExpression()), !dbg !3703
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end150, label %for.body, !dbg !3706, !llvm.loop !3742

if.end150:                                        ; preds = %for.inc, %if.end, %bs_write.exit319
  %conv152 = and i32 %call, 255, !dbg !3744
  %arrayidx154 = getelementptr inbounds [5 x i8], ptr @block_residual_write_cavlc.count_cat, i64 0, i64 %0, !dbg !3746
  %50 = load i8, ptr %arrayidx154, align 1, !dbg !3746, !tbaa !1637
  %conv155 = zext i8 %50 to i32, !dbg !3746
  %cmp156 = icmp ult i32 %conv152, %conv155, !dbg !3747
  br i1 %cmp156, label %if.then158, label %if.end192, !dbg !3748

if.then158:                                       ; preds = %if.end150
  %cmp159 = icmp eq i32 %i_ctxBlockCat, 3, !dbg !3749
  %idxprom165 = sext i32 %sub to i64, !dbg !3752
  br i1 %cmp159, label %if.then161, label %if.else176, !dbg !3753

if.then161:                                       ; preds = %if.then158
  %arrayidx166 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %idxprom60, i64 %idxprom165, !dbg !3754
  %i_size167 = getelementptr inbounds [3 x [4 x %struct.vlc_t]], ptr @x264_total_zeros_dc, i64 0, i64 %idxprom60, i64 %idxprom165, i32 1, !dbg !3754
  %51 = load i8, ptr %i_size167, align 1, !dbg !3754, !tbaa !3062
  %conv168 = zext i8 %51 to i32, !dbg !3754
  %52 = load i8, ptr %arrayidx166, align 2, !dbg !3754, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3755
  call void @llvm.dbg.value(metadata i32 %conv168, metadata !1720, metadata !DIExpression()) #7, !dbg !3755
  call void @llvm.dbg.value(metadata i8 %52, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3755
  %53 = load i64, ptr %cur_bits.i, align 8, !dbg !3757, !tbaa !1679
  %sh_prom.i355 = zext i8 %51 to i64, !dbg !3758
  %shl.i356 = shl i64 %53, %sh_prom.i355, !dbg !3758
  %conv.i357 = zext i8 %52 to i64, !dbg !3759
  %or.i358 = or i64 %shl.i356, %conv.i357, !dbg !3760
  store i64 %or.i358, ptr %cur_bits.i, align 8, !dbg !3761, !tbaa !1679
  %54 = load i32, ptr %i_left.i, align 8, !dbg !3762, !tbaa !1651
  %sub.i360 = sub nsw i32 %54, %conv168, !dbg !3762
  store i32 %sub.i360, ptr %i_left.i, align 8, !dbg !3762, !tbaa !1651
  %cmp.i361 = icmp slt i32 %sub.i360, 33, !dbg !3763
  br i1 %cmp.i361, label %if.end192.sink.split, label %if.end192, !dbg !3764

if.else176:                                       ; preds = %if.then158
  %arrayidx181 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %idxprom60, i64 %idxprom165, !dbg !3765
  %i_size182 = getelementptr inbounds [15 x [16 x %struct.vlc_t]], ptr @x264_total_zeros, i64 0, i64 %idxprom60, i64 %idxprom165, i32 1, !dbg !3765
  %55 = load i8, ptr %i_size182, align 1, !dbg !3765, !tbaa !3062
  %conv183 = zext i8 %55 to i32, !dbg !3765
  %56 = load i8, ptr %arrayidx181, align 2, !dbg !3765, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %conv183, metadata !1720, metadata !DIExpression()) #7, !dbg !3766
  call void @llvm.dbg.value(metadata i8 %56, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3766
  %57 = load i64, ptr %cur_bits.i, align 8, !dbg !3768, !tbaa !1679
  %sh_prom.i372 = zext i8 %55 to i64, !dbg !3769
  %shl.i373 = shl i64 %57, %sh_prom.i372, !dbg !3769
  %conv.i374 = zext i8 %56 to i64, !dbg !3770
  %or.i375 = or i64 %shl.i373, %conv.i374, !dbg !3771
  store i64 %or.i375, ptr %cur_bits.i, align 8, !dbg !3772, !tbaa !1679
  %58 = load i32, ptr %i_left.i, align 8, !dbg !3773, !tbaa !1651
  %sub.i377 = sub nsw i32 %58, %conv183, !dbg !3773
  store i32 %sub.i377, ptr %i_left.i, align 8, !dbg !3773, !tbaa !1651
  %cmp.i378 = icmp slt i32 %sub.i377, 33, !dbg !3774
  br i1 %cmp.i378, label %if.end192.sink.split, label %if.end192, !dbg !3775

if.end192.sink.split:                             ; preds = %if.else176, %if.then161
  %sub.i360.sink = phi i32 [ %sub.i360, %if.then161 ], [ %sub.i377, %if.else176 ]
  %or.i358.sink = phi i64 [ %or.i358, %if.then161 ], [ %or.i375, %if.else176 ]
  %sh_prom6.i362 = zext i32 %sub.i360.sink to i64, !dbg !3752
  %shl7.i363 = shl i64 %or.i358.sink, %sh_prom6.i362, !dbg !3752
  %add.i.i.i364 = call i64 @llvm.bswap.i64(i64 %shl7.i363) #7, !dbg !3752
  %conv8.i365 = trunc i64 %add.i.i.i364 to i32, !dbg !3752
  %p.i366 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3752
  %59 = load ptr, ptr %p.i366, align 8, !dbg !3752, !tbaa !1646
  store i32 %conv8.i365, ptr %59, align 4, !dbg !3752, !tbaa !1637
  %60 = load i32, ptr %i_left.i, align 8, !dbg !3752, !tbaa !1651
  %add.i384 = add nsw i32 %60, 32, !dbg !3752
  store i32 %add.i384, ptr %i_left.i, align 8, !dbg !3752, !tbaa !1651
  %61 = load ptr, ptr %p.i366, align 8, !dbg !3752, !tbaa !1646
  %add.ptr.i385 = getelementptr inbounds i8, ptr %61, i64 4, !dbg !3752
  store ptr %add.ptr.i385, ptr %p.i366, align 8, !dbg !3752, !tbaa !1646
  br label %if.end192, !dbg !3776

if.end192:                                        ; preds = %if.end192.sink.split, %if.else176, %if.then161, %if.end150
  call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1477, metadata !DIExpression()), !dbg !3568
  %cmp196411 = icmp sgt i32 %call, 1, !dbg !3776
  %cmp199412 = icmp sgt i32 %sub, 0
  %or.cond413 = select i1 %cmp196411, i1 %cmp199412, i1 false, !dbg !3778
  br i1 %or.cond413, label %for.body204.lr.ph, label %for.cond.cleanup203, !dbg !3778

for.body204.lr.ph:                                ; preds = %if.end192
  %p.i400 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1
  %.pre = load i32, ptr %i_left.i, align 8, !dbg !3779, !tbaa !1651
  br label %for.body204, !dbg !3778

for.cond.cleanup203:                              ; preds = %bs_write.exit404, %if.end192
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %runlevel) #7, !dbg !3781
  ret i32 %call, !dbg !3782

for.body204:                                      ; preds = %for.body204.lr.ph, %bs_write.exit404
  %62 = phi i32 [ %.pre, %for.body204.lr.ph ], [ %73, %bs_write.exit404 ], !dbg !3779
  %indvars.iv418 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next419, %bs_write.exit404 ]
  %i_total_zero.0414 = phi i32 [ %sub, %for.body204.lr.ph ], [ %sub230, %bs_write.exit404 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv418, metadata !1487, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i32 %i_total_zero.0414, metadata !1477, metadata !DIExpression()), !dbg !3568
  %63 = call i32 @llvm.smin.i32(i32 %i_total_zero.0414, i32 7), !dbg !3783
  call void @llvm.dbg.value(metadata i32 %63, metadata !1489, metadata !DIExpression()), !dbg !3784
  %sub207 = add nsw i32 %63, -1, !dbg !3785
  %64 = zext i32 %sub207 to i64
  %arrayidx211 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %indvars.iv418, !dbg !3785
  %65 = load i8, ptr %arrayidx211, align 1, !dbg !3785, !tbaa !1637
  %idxprom212 = zext i8 %65 to i64, !dbg !3785
  %arrayidx213 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %64, i64 %idxprom212, !dbg !3785
  %i_size214 = getelementptr inbounds [7 x [16 x %struct.vlc_t]], ptr @x264_run_before, i64 0, i64 %64, i64 %idxprom212, i32 1, !dbg !3785
  %66 = load i8, ptr %i_size214, align 1, !dbg !3785, !tbaa !3062
  %conv215 = zext i8 %66 to i32, !dbg !3785
  %67 = load i8, ptr %arrayidx213, align 2, !dbg !3785, !tbaa !3064
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3786
  call void @llvm.dbg.value(metadata i32 %conv215, metadata !1720, metadata !DIExpression()) #7, !dbg !3786
  call void @llvm.dbg.value(metadata i8 %67, metadata !1721, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !3786
  %68 = load i64, ptr %cur_bits.i, align 8, !dbg !3787, !tbaa !1679
  %sh_prom.i389 = zext i8 %66 to i64, !dbg !3788
  %shl.i390 = shl i64 %68, %sh_prom.i389, !dbg !3788
  %conv.i391 = zext i8 %67 to i64, !dbg !3789
  %or.i392 = or i64 %shl.i390, %conv.i391, !dbg !3790
  store i64 %or.i392, ptr %cur_bits.i, align 8, !dbg !3791, !tbaa !1679
  %sub.i394 = sub nsw i32 %62, %conv215, !dbg !3779
  store i32 %sub.i394, ptr %i_left.i, align 8, !dbg !3779, !tbaa !1651
  %cmp.i395 = icmp slt i32 %sub.i394, 33, !dbg !3792
  br i1 %cmp.i395, label %if.then.i403, label %bs_write.exit404, !dbg !3793

if.then.i403:                                     ; preds = %for.body204
  %sh_prom6.i396 = zext i32 %sub.i394 to i64, !dbg !3794
  %shl7.i397 = shl i64 %or.i392, %sh_prom6.i396, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %shl7.i397, metadata !1736, metadata !DIExpression()) #7, !dbg !3795
  call void @llvm.dbg.value(metadata i64 %shl7.i397, metadata !1743, metadata !DIExpression()) #7, !dbg !3797
  %add.i.i.i398 = call i64 @llvm.bswap.i64(i64 %shl7.i397) #7, !dbg !3799
  %conv8.i399 = trunc i64 %add.i.i.i398 to i32, !dbg !3800
  %69 = load ptr, ptr %p.i400, align 8, !dbg !3801, !tbaa !1646
  store i32 %conv8.i399, ptr %69, align 4, !dbg !3802, !tbaa !1637
  %70 = load i32, ptr %i_left.i, align 8, !dbg !3803, !tbaa !1651
  %add.i401 = add nsw i32 %70, 32, !dbg !3803
  store i32 %add.i401, ptr %i_left.i, align 8, !dbg !3803, !tbaa !1651
  %71 = load ptr, ptr %p.i400, align 8, !dbg !3804, !tbaa !1646
  %add.ptr.i402 = getelementptr inbounds i8, ptr %71, i64 4, !dbg !3804
  store ptr %add.ptr.i402, ptr %p.i400, align 8, !dbg !3804, !tbaa !1646
  %.pre421 = load i8, ptr %arrayidx211, align 1, !dbg !3805, !tbaa !1637
  br label %bs_write.exit404, !dbg !3806

bs_write.exit404:                                 ; preds = %for.body204, %if.then.i403
  %72 = phi i8 [ %65, %for.body204 ], [ %.pre421, %if.then.i403 ], !dbg !3805
  %73 = phi i32 [ %sub.i394, %for.body204 ], [ %add.i401, %if.then.i403 ]
  %conv229 = zext i8 %72 to i32, !dbg !3805
  %sub230 = sub nsw i32 %i_total_zero.0414, %conv229, !dbg !3807
  call void @llvm.dbg.value(metadata i32 %sub230, metadata !1477, metadata !DIExpression()), !dbg !3568
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1, !dbg !3808
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next419, metadata !1487, metadata !DIExpression()), !dbg !3777
  %cmp196 = icmp slt i64 %indvars.iv.next419, %idxprom60, !dbg !3776
  %cmp199 = icmp sgt i32 %sub230, 0
  %or.cond = select i1 %cmp196, i1 %cmp199, i1 false, !dbg !3778
  br i1 %or.cond, label %for.body204, label %for.cond.cleanup203, !dbg !3778, !llvm.loop !3809
}

declare !dbg !3812 void @x264_mb_predict_mv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @block_residual_write_cavlc_escape(ptr noundef %h, i32 noundef %i_suffix_length, i32 noundef %level) unnamed_addr #6 !dbg !1498 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1502, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %i_suffix_length, metadata !1503, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %level, metadata !1504, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata ptr %h, metadata !1505, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)), !dbg !3816
  call void @llvm.dbg.value(metadata i32 15, metadata !1506, metadata !DIExpression()), !dbg !3816
  %shr = ashr i32 %level, 15, !dbg !3817
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1507, metadata !DIExpression()), !dbg !3816
  %xor = xor i32 %shr, %level, !dbg !3818
  %sub = sub nsw i32 %xor, %shr, !dbg !3819
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1508, metadata !DIExpression()), !dbg !3816
  %mul = shl nsw i32 %sub, 1, !dbg !3820
  %sub1 = sub nsw i32 %mul, %shr, !dbg !3821
  %sub2 = add nsw i32 %sub1, -2, !dbg !3822
  call void @llvm.dbg.value(metadata i32 %sub2, metadata !1509, metadata !DIExpression()), !dbg !3816
  %shr3 = ashr i32 %sub2, %i_suffix_length, !dbg !3823
  %cmp = icmp slt i32 %shr3, 15, !dbg !3825
  br i1 %cmp, label %if.then, label %if.else, !dbg !3826

if.then:                                          ; preds = %entry
  %add = add i32 %i_suffix_length, 1, !dbg !3827
  %add5 = add i32 %add, %shr3, !dbg !3829
  %shl = shl nuw i32 1, %i_suffix_length, !dbg !3830
  %sub7 = add nsw i32 %shl, -1, !dbg !3831
  %and = and i32 %sub2, %sub7, !dbg !3832
  %add8 = add nsw i32 %and, %shl, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3834
  call void @llvm.dbg.value(metadata i32 %add5, metadata !1720, metadata !DIExpression()) #7, !dbg !3834
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1721, metadata !DIExpression()) #7, !dbg !3834
  %cur_bits.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3836
  %0 = load i64, ptr %cur_bits.i, align 8, !dbg !3836, !tbaa !1679
  %sh_prom.i = zext i32 %add5 to i64, !dbg !3837
  %shl.i = shl i64 %0, %sh_prom.i, !dbg !3837
  %conv.i = zext i32 %add8 to i64, !dbg !3838
  %or.i = or i64 %shl.i, %conv.i, !dbg !3839
  store i64 %or.i, ptr %cur_bits.i, align 8, !dbg !3840, !tbaa !1679
  %i_left.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 4, !dbg !3841
  %1 = load i32, ptr %i_left.i, align 8, !dbg !3842, !tbaa !1651
  %sub.i = sub nsw i32 %1, %add5, !dbg !3842
  store i32 %sub.i, ptr %i_left.i, align 8, !dbg !3842, !tbaa !1651
  %cmp.i = icmp slt i32 %sub.i, 33, !dbg !3843
  br i1 %cmp.i, label %if.end35.sink.split, label %if.end35, !dbg !3844

if.else:                                          ; preds = %entry
  %shl9.neg = shl i32 -15, %i_suffix_length, !dbg !3845
  %sub10 = add i32 %sub2, %shl9.neg, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !1509, metadata !DIExpression()), !dbg !3816
  %cmp11 = icmp eq i32 %i_suffix_length, 0, !dbg !3848
  %sub13 = add nsw i32 %sub10, -15
  %spec.select = select i1 %cmp11, i32 %sub13, i32 %sub10, !dbg !3850
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1509, metadata !DIExpression()), !dbg !3816
  %cmp14 = icmp sgt i32 %spec.select, 4095, !dbg !3851
  br i1 %cmp14, label %if.then15, label %if.end28, !dbg !3853

if.then15:                                        ; preds = %if.else
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !3854
  %2 = load ptr, ptr %sps, align 16, !dbg !3854, !tbaa !3857
  %i_profile_idc = getelementptr inbounds %struct.x264_sps_t, ptr %2, i64 0, i32 1, !dbg !3858
  %3 = load i32, ptr %i_profile_idc, align 4, !dbg !3858, !tbaa !3859
  %cmp16 = icmp sgt i32 %3, 99, !dbg !3864
  br i1 %cmp16, label %while.cond.preheader, label %if.else24, !dbg !3865

while.cond.preheader:                             ; preds = %if.then15
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1509, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 15, metadata !1506, metadata !DIExpression()), !dbg !3816
  %cmp20114 = icmp ugt i32 %spec.select, 4096, !dbg !3866
  br i1 %cmp20114, label %while.body, label %if.end28, !dbg !3868

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %shl19117 = phi i32 [ %shl19, %while.body ], [ 4096, %while.cond.preheader ]
  %i_level_code.1116 = phi i32 [ %sub23, %while.body ], [ %spec.select, %while.cond.preheader ]
  %i_level_prefix.0115 = phi i32 [ %inc, %while.body ], [ 15, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %i_level_code.1116, metadata !1509, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %i_level_prefix.0115, metadata !1506, metadata !DIExpression()), !dbg !3816
  %sub23 = sub nsw i32 %i_level_code.1116, %shl19117, !dbg !3869
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !1509, metadata !DIExpression()), !dbg !3816
  %inc = add nuw nsw i32 %i_level_prefix.0115, 1, !dbg !3871
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1506, metadata !DIExpression()), !dbg !3816
  %sub18 = add nsw i32 %i_level_prefix.0115, -2, !dbg !3872
  %shl19 = shl nuw i32 1, %sub18, !dbg !3873
  %cmp20 = icmp sgt i32 %sub23, %shl19, !dbg !3866
  br i1 %cmp20, label %while.body, label %if.end28, !dbg !3868, !llvm.loop !3874

if.else24:                                        ; preds = %if.then15
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %spec.select) #7, !dbg !3876
  %and25 = and i32 %spec.select, 1, !dbg !3878
  %add26 = or i32 %and25, 4094, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %add26, metadata !1509, metadata !DIExpression()), !dbg !3816
  br label %if.end28

if.end28:                                         ; preds = %while.body, %while.cond.preheader, %if.else24, %if.else
  %i_level_prefix.1 = phi i32 [ 15, %if.else24 ], [ 15, %if.else ], [ 15, %while.cond.preheader ], [ %inc, %while.body ], !dbg !3880
  %i_level_code.2 = phi i32 [ %add26, %if.else24 ], [ %spec.select, %if.else ], [ 4096, %while.cond.preheader ], [ %sub23, %while.body ], !dbg !3881
  call void @llvm.dbg.value(metadata i32 %i_level_code.2, metadata !1509, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i32 %i_level_prefix.1, metadata !1506, metadata !DIExpression()), !dbg !3816
  %add29 = add nuw nsw i32 %i_level_prefix.1, 1, !dbg !3882
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3883
  call void @llvm.dbg.value(metadata i32 %add29, metadata !1720, metadata !DIExpression()) #7, !dbg !3883
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()) #7, !dbg !3883
  %cur_bits.i81 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 3, !dbg !3885
  %4 = load i64, ptr %cur_bits.i81, align 8, !dbg !3885, !tbaa !1679
  %sh_prom.i82 = zext i32 %add29 to i64, !dbg !3886
  %shl.i83 = shl i64 %4, %sh_prom.i82, !dbg !3886
  %or.i84 = or i64 %shl.i83, 1, !dbg !3887
  store i64 %or.i84, ptr %cur_bits.i81, align 8, !dbg !3888, !tbaa !1679
  %i_left.i85 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 4, !dbg !3889
  %5 = load i32, ptr %i_left.i85, align 8, !dbg !3890, !tbaa !1651
  %sub.i86 = sub nsw i32 %5, %add29, !dbg !3890
  store i32 %sub.i86, ptr %i_left.i85, align 8, !dbg !3890, !tbaa !1651
  %cmp.i87 = icmp slt i32 %sub.i86, 33, !dbg !3891
  br i1 %cmp.i87, label %if.then.i95, label %bs_write.exit96, !dbg !3892

if.then.i95:                                      ; preds = %if.end28
  %sh_prom6.i88 = zext i32 %sub.i86 to i64, !dbg !3893
  %shl7.i89 = shl i64 %or.i84, %sh_prom6.i88, !dbg !3893
  call void @llvm.dbg.value(metadata i64 %shl7.i89, metadata !1736, metadata !DIExpression()) #7, !dbg !3894
  call void @llvm.dbg.value(metadata i64 %shl7.i89, metadata !1743, metadata !DIExpression()) #7, !dbg !3896
  %add.i.i.i90 = tail call i64 @llvm.bswap.i64(i64 %shl7.i89) #7, !dbg !3898
  %conv8.i91 = trunc i64 %add.i.i.i90 to i32, !dbg !3899
  %p.i92 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3900
  %6 = load ptr, ptr %p.i92, align 8, !dbg !3900, !tbaa !1646
  store i32 %conv8.i91, ptr %6, align 4, !dbg !3901, !tbaa !1637
  %7 = load i32, ptr %i_left.i85, align 8, !dbg !3902, !tbaa !1651
  %add.i93 = add nsw i32 %7, 32, !dbg !3902
  %8 = load ptr, ptr %p.i92, align 8, !dbg !3903, !tbaa !1646
  %add.ptr.i94 = getelementptr inbounds i8, ptr %8, i64 4, !dbg !3903
  store ptr %add.ptr.i94, ptr %p.i92, align 8, !dbg !3903, !tbaa !1646
  %.pre = load i64, ptr %cur_bits.i81, align 8, !dbg !3904, !tbaa !1679
  br label %bs_write.exit96, !dbg !3906

bs_write.exit96:                                  ; preds = %if.end28, %if.then.i95
  %9 = phi i32 [ %sub.i86, %if.end28 ], [ %add.i93, %if.then.i95 ], !dbg !3907
  %10 = phi i64 [ %or.i84, %if.end28 ], [ %.pre, %if.then.i95 ], !dbg !3904
  %sub30 = add nsw i32 %i_level_prefix.1, -3, !dbg !3908
  %notmask = shl nsw i32 -1, %sub30, !dbg !3909
  %sub33 = xor i32 %notmask, -1, !dbg !3909
  %and34 = and i32 %i_level_code.2, %sub33, !dbg !3910
  call void @llvm.dbg.value(metadata ptr %h, metadata !1715, metadata !DIExpression(DW_OP_plus_uconst, 1792, DW_OP_stack_value)) #7, !dbg !3911
  call void @llvm.dbg.value(metadata i32 %sub30, metadata !1720, metadata !DIExpression()) #7, !dbg !3911
  call void @llvm.dbg.value(metadata i32 %and34, metadata !1721, metadata !DIExpression()) #7, !dbg !3911
  %sh_prom.i98 = zext i32 %sub30 to i64, !dbg !3912
  %shl.i99 = shl i64 %10, %sh_prom.i98, !dbg !3912
  %conv.i100 = zext i32 %and34 to i64, !dbg !3913
  %or.i101 = or i64 %shl.i99, %conv.i100, !dbg !3914
  store i64 %or.i101, ptr %cur_bits.i81, align 8, !dbg !3915, !tbaa !1679
  %sub.i103 = sub nsw i32 %9, %sub30, !dbg !3907
  store i32 %sub.i103, ptr %i_left.i85, align 8, !dbg !3907, !tbaa !1651
  %cmp.i104 = icmp slt i32 %sub.i103, 33, !dbg !3916
  br i1 %cmp.i104, label %if.end35.sink.split, label %if.end35, !dbg !3917

if.end35.sink.split:                              ; preds = %bs_write.exit96, %if.then
  %sub.i.sink = phi i32 [ %sub.i, %if.then ], [ %sub.i103, %bs_write.exit96 ]
  %or.i.sink = phi i64 [ %or.i, %if.then ], [ %or.i101, %bs_write.exit96 ]
  %i_left.i85.sink120 = phi ptr [ %i_left.i, %if.then ], [ %i_left.i85, %bs_write.exit96 ]
  %sh_prom6.i = zext i32 %sub.i.sink to i64, !dbg !3918
  %shl7.i = shl i64 %or.i.sink, %sh_prom6.i, !dbg !3918
  %add.i.i.i = tail call i64 @llvm.bswap.i64(i64 %shl7.i) #7, !dbg !3918
  %conv8.i = trunc i64 %add.i.i.i to i32, !dbg !3918
  %p.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 7, i32 5, i32 1, !dbg !3918
  %11 = load ptr, ptr %p.i, align 8, !dbg !3918, !tbaa !1646
  store i32 %conv8.i, ptr %11, align 4, !dbg !3918, !tbaa !1637
  %12 = load i32, ptr %i_left.i85.sink120, align 8, !dbg !3918, !tbaa !1651
  %add.i110 = add nsw i32 %12, 32, !dbg !3918
  store i32 %add.i110, ptr %i_left.i85.sink120, align 8, !dbg !3918, !tbaa !1651
  %13 = load ptr, ptr %p.i, align 8, !dbg !3918, !tbaa !1646
  %add.ptr.i111 = getelementptr inbounds i8, ptr %13, i64 4, !dbg !3918
  store ptr %add.ptr.i111, ptr %p.i, align 8, !dbg !3918, !tbaa !1646
  br label %if.end35, !dbg !3919

if.end35:                                         ; preds = %if.end35.sink.split, %bs_write.exit96, %if.then
  %cmp36 = icmp eq i32 %i_suffix_length, 0, !dbg !3919
  %spec.select79 = select i1 %cmp36, i32 1, i32 %i_suffix_length, !dbg !3921
  call void @llvm.dbg.value(metadata i32 %spec.select79, metadata !1503, metadata !DIExpression()), !dbg !3816
  %idxprom = sext i32 %spec.select79 to i64, !dbg !3922
  %arrayidx = getelementptr inbounds [7 x i16], ptr @block_residual_write_cavlc_escape.next_suffix, i64 0, i64 %idxprom, !dbg !3922
  %14 = load i16, ptr %arrayidx, align 2, !dbg !3922, !tbaa !3495
  %conv = zext i16 %14 to i32, !dbg !3922
  %cmp40 = icmp sgt i32 %sub, %conv, !dbg !3924
  %inc43 = zext i1 %cmp40 to i32, !dbg !3925
  %spec.select80 = add nsw i32 %spec.select79, %inc43, !dbg !3925
  call void @llvm.dbg.value(metadata i32 %spec.select80, metadata !1503, metadata !DIExpression()), !dbg !3816
  ret i32 %spec.select80, !dbg !3926
}

declare !dbg !3927 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.smin.i8(i8, i8) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!1323}
!llvm.module.flags = !{!1594, !1595, !1596, !1597, !1598, !1599}
!llvm.ident = !{!1600}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "i_offsets", scope: !2, file: !3, line: 294, type: !1593, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "x264_macroblock_write_cavlc", scope: !3, file: !3, line: 290, type: !4, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1512)
!3 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/cavlc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "75a5da4a09d0be3f3469f38c5a0088f2")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !8, line: 46, baseType: !9)
!8 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !10, line: 381, size: 266752, elements: !11)
!10 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!11 = !{!12, !192, !196, !197, !198, !199, !200, !201, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !337, !339, !367, !369, !370, !371, !377, !381, !382, !383, !390, !394, !395, !396, !401, !404, !405, !484, !501, !665, !666, !667, !668, !672, !673, !674, !675, !676, !677, !678, !693, !887, !891, !952, !955, !957, !959, !960, !963, !968, !977, !978, !986, !988, !993, !1069, !1155, !1199, !1221, !1270, !1299}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !9, file: !10, line: 384, baseType: !13, size: 5632)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !8, line: 376, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !8, line: 176, size: 5632, elements: !15)
!15 = !{!16, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !61, !70, !71, !72, !73, !77, !78, !93, !94, !95, !96, !97, !128, !170, !171, !172, !173, !174, !175, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !14, file: !8, line: 179, baseType: !17, size: 32)
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !14, file: !8, line: 180, baseType: !19, size: 32, offset: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !14, file: !8, line: 181, baseType: !19, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !14, file: !8, line: 182, baseType: !19, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !14, file: !8, line: 183, baseType: !19, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !14, file: !8, line: 186, baseType: !19, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !14, file: !8, line: 187, baseType: !19, size: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !14, file: !8, line: 188, baseType: !19, size: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !14, file: !8, line: 189, baseType: !19, size: 32, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !14, file: !8, line: 190, baseType: !19, size: 32, offset: 288)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !14, file: !8, line: 198, baseType: !19, size: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !14, file: !8, line: 215, baseType: !30, size: 288, offset: 352)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 200, size: 288, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !30, file: !8, line: 203, baseType: !19, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !30, file: !8, line: 204, baseType: !19, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !30, file: !8, line: 206, baseType: !19, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !30, file: !8, line: 209, baseType: !19, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !30, file: !8, line: 210, baseType: !19, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !30, file: !8, line: 211, baseType: !19, size: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !30, file: !8, line: 212, baseType: !19, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !30, file: !8, line: 213, baseType: !19, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !30, file: !8, line: 214, baseType: !19, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !14, file: !8, line: 218, baseType: !19, size: 32, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !14, file: !8, line: 219, baseType: !19, size: 32, offset: 672)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !14, file: !8, line: 220, baseType: !19, size: 32, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !14, file: !8, line: 221, baseType: !19, size: 32, offset: 736)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !14, file: !8, line: 222, baseType: !19, size: 32, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !14, file: !8, line: 224, baseType: !19, size: 32, offset: 800)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !14, file: !8, line: 225, baseType: !19, size: 32, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !14, file: !8, line: 226, baseType: !19, size: 32, offset: 864)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !14, file: !8, line: 227, baseType: !19, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !14, file: !8, line: 229, baseType: !19, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !14, file: !8, line: 230, baseType: !19, size: 32, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !14, file: !8, line: 231, baseType: !19, size: 32, offset: 992)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !14, file: !8, line: 233, baseType: !19, size: 32, offset: 1024)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !14, file: !8, line: 234, baseType: !19, size: 32, offset: 1056)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !14, file: !8, line: 236, baseType: !19, size: 32, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !14, file: !8, line: 237, baseType: !19, size: 32, offset: 1120)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !14, file: !8, line: 239, baseType: !19, size: 32, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !14, file: !8, line: 240, baseType: !59, size: 64, offset: 1216)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !14, file: !8, line: 241, baseType: !62, size: 128, offset: 1280)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !68)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !64, line: 24, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !66, line: 38, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!67 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !{!69}
!69 = !DISubrange(count: 16)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !14, file: !8, line: 242, baseType: !62, size: 128, offset: 1408)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !14, file: !8, line: 243, baseType: !62, size: 128, offset: 1536)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !14, file: !8, line: 244, baseType: !62, size: 128, offset: 1664)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !14, file: !8, line: 245, baseType: !74, size: 512, offset: 1792)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 512, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !14, file: !8, line: 246, baseType: !74, size: 512, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !14, file: !8, line: 249, baseType: !79, size: 64, offset: 2816)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !19, !83, !85}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !87)
!87 = !{!88, !90, !91, !92}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !86, file: !89, baseType: !17, size: 32)
!89 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/cavlc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!90 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !86, file: !89, baseType: !17, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !86, file: !89, baseType: !82, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !86, file: !89, baseType: !82, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !14, file: !8, line: 250, baseType: !82, size: 64, offset: 2880)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !14, file: !8, line: 251, baseType: !19, size: 32, offset: 2944)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !14, file: !8, line: 252, baseType: !19, size: 32, offset: 2976)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !14, file: !8, line: 253, baseType: !59, size: 64, offset: 3008)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !14, file: !8, line: 287, baseType: !98, size: 800, offset: 3072)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 256, size: 800, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !120, !121, !122, !126, !127}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !98, file: !8, line: 258, baseType: !17, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !98, file: !8, line: 259, baseType: !17, size: 32, offset: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !98, file: !8, line: 261, baseType: !19, size: 32, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !98, file: !8, line: 262, baseType: !19, size: 32, offset: 96)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !98, file: !8, line: 263, baseType: !19, size: 32, offset: 128)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !98, file: !8, line: 264, baseType: !19, size: 32, offset: 160)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !98, file: !8, line: 265, baseType: !19, size: 32, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !98, file: !8, line: 267, baseType: !19, size: 32, offset: 224)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !98, file: !8, line: 268, baseType: !19, size: 32, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !98, file: !8, line: 269, baseType: !19, size: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !98, file: !8, line: 270, baseType: !19, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !98, file: !8, line: 271, baseType: !19, size: 32, offset: 352)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !98, file: !8, line: 272, baseType: !19, size: 32, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !98, file: !8, line: 273, baseType: !19, size: 32, offset: 416)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !98, file: !8, line: 274, baseType: !19, size: 32, offset: 448)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !98, file: !8, line: 275, baseType: !19, size: 32, offset: 480)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !98, file: !8, line: 276, baseType: !19, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !98, file: !8, line: 277, baseType: !19, size: 32, offset: 544)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !98, file: !8, line: 278, baseType: !119, size: 32, offset: 576)
!119 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !98, file: !8, line: 279, baseType: !119, size: 32, offset: 608)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !98, file: !8, line: 280, baseType: !19, size: 32, offset: 640)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !98, file: !8, line: 283, baseType: !123, size: 64, offset: 672)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 2)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !98, file: !8, line: 285, baseType: !19, size: 32, offset: 736)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !98, file: !8, line: 286, baseType: !19, size: 32, offset: 768)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !14, file: !8, line: 327, baseType: !129, size: 1152, offset: 3904)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !14, file: !8, line: 290, size: 1152, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !168, !169}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !129, file: !8, line: 292, baseType: !19, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !129, file: !8, line: 294, baseType: !19, size: 32, offset: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !129, file: !8, line: 295, baseType: !19, size: 32, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !129, file: !8, line: 296, baseType: !19, size: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !129, file: !8, line: 297, baseType: !19, size: 32, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !129, file: !8, line: 299, baseType: !19, size: 32, offset: 160)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !129, file: !8, line: 300, baseType: !119, size: 32, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !129, file: !8, line: 301, baseType: !119, size: 32, offset: 224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !129, file: !8, line: 302, baseType: !119, size: 32, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !129, file: !8, line: 303, baseType: !19, size: 32, offset: 288)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !129, file: !8, line: 304, baseType: !19, size: 32, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !129, file: !8, line: 305, baseType: !119, size: 32, offset: 352)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !129, file: !8, line: 306, baseType: !119, size: 32, offset: 384)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !129, file: !8, line: 307, baseType: !119, size: 32, offset: 416)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !129, file: !8, line: 309, baseType: !19, size: 32, offset: 448)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !129, file: !8, line: 310, baseType: !119, size: 32, offset: 480)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !129, file: !8, line: 311, baseType: !19, size: 32, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !129, file: !8, line: 312, baseType: !19, size: 32, offset: 544)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !129, file: !8, line: 315, baseType: !19, size: 32, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !129, file: !8, line: 316, baseType: !59, size: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !129, file: !8, line: 317, baseType: !19, size: 32, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !129, file: !8, line: 318, baseType: !59, size: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !129, file: !8, line: 321, baseType: !119, size: 32, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !129, file: !8, line: 322, baseType: !119, size: 32, offset: 864)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !129, file: !8, line: 323, baseType: !119, size: 32, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !129, file: !8, line: 324, baseType: !157, size: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !8, line: 174, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 167, size: 256, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !159, file: !8, line: 169, baseType: !19, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !159, file: !8, line: 169, baseType: !19, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !159, file: !8, line: 170, baseType: !19, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !159, file: !8, line: 171, baseType: !19, size: 32, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !159, file: !8, line: 172, baseType: !119, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !159, file: !8, line: 173, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !129, file: !8, line: 325, baseType: !19, size: 32, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !129, file: !8, line: 326, baseType: !59, size: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !14, file: !8, line: 330, baseType: !19, size: 32, offset: 5056)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !14, file: !8, line: 331, baseType: !19, size: 32, offset: 5088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !14, file: !8, line: 332, baseType: !19, size: 32, offset: 5120)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !14, file: !8, line: 334, baseType: !19, size: 32, offset: 5152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !14, file: !8, line: 335, baseType: !19, size: 32, offset: 5184)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !14, file: !8, line: 336, baseType: !176, size: 32, offset: 5216)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !64, line: 26, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !66, line: 42, baseType: !17)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !14, file: !8, line: 337, baseType: !176, size: 32, offset: 5248)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !14, file: !8, line: 338, baseType: !176, size: 32, offset: 5280)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !14, file: !8, line: 339, baseType: !176, size: 32, offset: 5312)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !14, file: !8, line: 340, baseType: !19, size: 32, offset: 5344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !14, file: !8, line: 344, baseType: !19, size: 32, offset: 5376)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !14, file: !8, line: 356, baseType: !19, size: 32, offset: 5408)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !14, file: !8, line: 364, baseType: !19, size: 32, offset: 5440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !14, file: !8, line: 367, baseType: !19, size: 32, offset: 5472)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !14, file: !8, line: 368, baseType: !19, size: 32, offset: 5504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !14, file: !8, line: 369, baseType: !19, size: 32, offset: 5536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !14, file: !8, line: 375, baseType: !189, size: 64, offset: 5568)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !82}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !9, file: !10, line: 386, baseType: !193, size: 8256, offset: 5632)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8256, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 129)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !9, file: !10, line: 387, baseType: !19, size: 32, offset: 13888)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !9, file: !10, line: 388, baseType: !19, size: 32, offset: 13920)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !9, file: !10, line: 389, baseType: !19, size: 32, offset: 13952)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !9, file: !10, line: 390, baseType: !19, size: 32, offset: 13984)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !9, file: !10, line: 391, baseType: !19, size: 32, offset: 14016)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !9, file: !10, line: 402, baseType: !202, size: 576, offset: 14080)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 394, size: 576, elements: !203)
!203 = !{!204, !205, !206, !216, !217, !218}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !202, file: !10, line: 396, baseType: !19, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !202, file: !10, line: 397, baseType: !19, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !202, file: !10, line: 398, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !8, line: 604, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 593, size: 192, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !209, file: !8, line: 595, baseType: !19, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !209, file: !8, line: 596, baseType: !19, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !209, file: !8, line: 599, baseType: !19, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !209, file: !8, line: 603, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !202, file: !10, line: 399, baseType: !19, size: 32, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !202, file: !10, line: 400, baseType: !215, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !202, file: !10, line: 401, baseType: !219, size: 320, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !220, line: 56, baseType: !221)
!220 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !220, line: 47, size: 320, elements: !222)
!222 = !{!223, !224, !225, !226, !230, !231}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !221, file: !220, line: 49, baseType: !215, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !221, file: !220, line: 50, baseType: !215, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !221, file: !220, line: 51, baseType: !215, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !221, file: !220, line: 53, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !228, line: 87, baseType: !229)
!228 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!229 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !221, file: !220, line: 54, baseType: !19, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !221, file: !220, line: 55, baseType: !19, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !9, file: !10, line: 404, baseType: !215, size: 64, offset: 14656)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !9, file: !10, line: 405, baseType: !19, size: 32, offset: 14720)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !9, file: !10, line: 410, baseType: !19, size: 32, offset: 14752)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !9, file: !10, line: 411, baseType: !19, size: 32, offset: 14784)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !9, file: !10, line: 413, baseType: !19, size: 32, offset: 14816)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !9, file: !10, line: 415, baseType: !19, size: 32, offset: 14848)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !9, file: !10, line: 416, baseType: !19, size: 32, offset: 14880)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !9, file: !10, line: 418, baseType: !19, size: 32, offset: 14912)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !9, file: !10, line: 419, baseType: !19, size: 32, offset: 14944)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !9, file: !10, line: 420, baseType: !19, size: 32, offset: 14976)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !9, file: !10, line: 421, baseType: !19, size: 32, offset: 15008)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !9, file: !10, line: 422, baseType: !19, size: 32, offset: 15040)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !9, file: !10, line: 424, baseType: !19, size: 32, offset: 15072)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !9, file: !10, line: 425, baseType: !19, size: 32, offset: 15104)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !9, file: !10, line: 427, baseType: !19, size: 32, offset: 15136)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !9, file: !10, line: 430, baseType: !248, size: 10400, offset: 15168)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 10400, elements: !335)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !250, line: 154, baseType: !251)
!250 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 52, size: 10400, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !270, !271, !272, !273, !274, !275, !276, !277, !278, !285, !286, !334}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !251, file: !250, line: 54, baseType: !19, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !251, file: !250, line: 56, baseType: !19, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !251, file: !250, line: 57, baseType: !19, size: 32, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !251, file: !250, line: 59, baseType: !19, size: 32, offset: 96)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !251, file: !250, line: 60, baseType: !19, size: 32, offset: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !251, file: !250, line: 61, baseType: !19, size: 32, offset: 160)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !251, file: !250, line: 63, baseType: !19, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !251, file: !250, line: 65, baseType: !19, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !251, file: !250, line: 67, baseType: !19, size: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !251, file: !250, line: 69, baseType: !19, size: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !251, file: !250, line: 70, baseType: !19, size: 32, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !251, file: !250, line: 71, baseType: !19, size: 32, offset: 352)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !251, file: !250, line: 72, baseType: !19, size: 32, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !251, file: !250, line: 73, baseType: !267, size: 8192, offset: 416)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8192, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !251, file: !250, line: 75, baseType: !19, size: 32, offset: 8608)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !251, file: !250, line: 76, baseType: !19, size: 32, offset: 8640)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !251, file: !250, line: 77, baseType: !19, size: 32, offset: 8672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !251, file: !250, line: 78, baseType: !19, size: 32, offset: 8704)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !251, file: !250, line: 79, baseType: !19, size: 32, offset: 8736)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !251, file: !250, line: 80, baseType: !19, size: 32, offset: 8768)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !251, file: !250, line: 81, baseType: !19, size: 32, offset: 8800)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !251, file: !250, line: 83, baseType: !19, size: 32, offset: 8832)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !251, file: !250, line: 90, baseType: !279, size: 128, offset: 8864)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !250, line: 84, size: 128, elements: !280)
!280 = !{!281, !282, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !279, file: !250, line: 86, baseType: !19, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !279, file: !250, line: 87, baseType: !19, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !279, file: !250, line: 88, baseType: !19, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !279, file: !250, line: 89, baseType: !19, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !251, file: !250, line: 92, baseType: !19, size: 32, offset: 8992)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !251, file: !250, line: 150, baseType: !287, size: 1344, offset: 9024)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !250, line: 93, size: 1344, elements: !288)
!288 = !{!289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !287, file: !250, line: 95, baseType: !19, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !287, file: !250, line: 96, baseType: !19, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !287, file: !250, line: 97, baseType: !19, size: 32, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !287, file: !250, line: 99, baseType: !19, size: 32, offset: 96)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !287, file: !250, line: 100, baseType: !19, size: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !287, file: !250, line: 102, baseType: !19, size: 32, offset: 160)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !287, file: !250, line: 103, baseType: !19, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !287, file: !250, line: 104, baseType: !19, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !287, file: !250, line: 105, baseType: !19, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !287, file: !250, line: 106, baseType: !19, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !287, file: !250, line: 107, baseType: !19, size: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !287, file: !250, line: 108, baseType: !19, size: 32, offset: 352)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !287, file: !250, line: 110, baseType: !19, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !287, file: !250, line: 111, baseType: !19, size: 32, offset: 416)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !287, file: !250, line: 112, baseType: !19, size: 32, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !287, file: !250, line: 114, baseType: !19, size: 32, offset: 480)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !287, file: !250, line: 115, baseType: !176, size: 32, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !287, file: !250, line: 116, baseType: !176, size: 32, offset: 544)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !287, file: !250, line: 117, baseType: !19, size: 32, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !287, file: !250, line: 119, baseType: !19, size: 32, offset: 608)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !287, file: !250, line: 120, baseType: !19, size: 32, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !287, file: !250, line: 137, baseType: !311, size: 384, offset: 672)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !287, file: !250, line: 122, size: 384, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !311, file: !250, line: 124, baseType: !19, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !311, file: !250, line: 125, baseType: !19, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !311, file: !250, line: 126, baseType: !19, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !311, file: !250, line: 127, baseType: !19, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !311, file: !250, line: 128, baseType: !19, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !311, file: !250, line: 129, baseType: !19, size: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !311, file: !250, line: 130, baseType: !19, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !311, file: !250, line: 131, baseType: !19, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !311, file: !250, line: 133, baseType: !19, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !311, file: !250, line: 134, baseType: !19, size: 32, offset: 288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !311, file: !250, line: 135, baseType: !19, size: 32, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !311, file: !250, line: 136, baseType: !19, size: 32, offset: 352)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !287, file: !250, line: 139, baseType: !19, size: 32, offset: 1056)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !287, file: !250, line: 140, baseType: !19, size: 32, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !287, file: !250, line: 141, baseType: !19, size: 32, offset: 1120)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !287, file: !250, line: 142, baseType: !19, size: 32, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !287, file: !250, line: 143, baseType: !19, size: 32, offset: 1184)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !287, file: !250, line: 144, baseType: !19, size: 32, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !287, file: !250, line: 145, baseType: !19, size: 32, offset: 1248)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !287, file: !250, line: 146, baseType: !19, size: 32, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !287, file: !250, line: 147, baseType: !19, size: 32, offset: 1312)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !251, file: !250, line: 152, baseType: !19, size: 32, offset: 10368)
!335 = !{!336}
!336 = !DISubrange(count: 1)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !9, file: !10, line: 431, baseType: !338, size: 64, offset: 25600)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !9, file: !10, line: 432, baseType: !340, size: 960, offset: 25664)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !341, size: 960, elements: !335)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !250, line: 186, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !250, line: 156, size: 960, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !342, file: !250, line: 158, baseType: !19, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !342, file: !250, line: 159, baseType: !19, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !342, file: !250, line: 161, baseType: !19, size: 32, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !342, file: !250, line: 163, baseType: !19, size: 32, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !342, file: !250, line: 164, baseType: !19, size: 32, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !342, file: !250, line: 166, baseType: !19, size: 32, offset: 160)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !342, file: !250, line: 167, baseType: !19, size: 32, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !342, file: !250, line: 169, baseType: !19, size: 32, offset: 224)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !342, file: !250, line: 170, baseType: !19, size: 32, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !342, file: !250, line: 172, baseType: !19, size: 32, offset: 288)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !342, file: !250, line: 173, baseType: !19, size: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !342, file: !250, line: 175, baseType: !19, size: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !342, file: !250, line: 177, baseType: !19, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !342, file: !250, line: 178, baseType: !19, size: 32, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !342, file: !250, line: 179, baseType: !19, size: 32, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !342, file: !250, line: 181, baseType: !19, size: 32, offset: 480)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !342, file: !250, line: 183, baseType: !19, size: 32, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !342, file: !250, line: 184, baseType: !362, size: 384, offset: 576)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !365)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!365 = !{!366}
!366 = !DISubrange(count: 6)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !9, file: !10, line: 433, baseType: !368, size: 64, offset: 26624)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !9, file: !10, line: 434, baseType: !19, size: 32, offset: 26688)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !9, file: !10, line: 437, baseType: !19, size: 32, offset: 26720)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !9, file: !10, line: 440, baseType: !372, size: 256, offset: 26752)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !375)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !68)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !9, file: !10, line: 441, baseType: !378, size: 128, offset: 27008)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 128, elements: !124)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !75)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !9, file: !10, line: 443, baseType: !372, size: 256, offset: 27136)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !9, file: !10, line: 444, baseType: !378, size: 128, offset: 27392)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !9, file: !10, line: 446, baseType: !384, size: 256, offset: 27520)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 256, elements: !375)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !68)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !64, line: 25, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !66, line: 40, baseType: !389)
!389 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !9, file: !10, line: 447, baseType: !391, size: 128, offset: 27776)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 128, elements: !124)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !75)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !9, file: !10, line: 448, baseType: !384, size: 256, offset: 27904)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !9, file: !10, line: 449, baseType: !391, size: 128, offset: 28160)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !9, file: !10, line: 454, baseType: !397, size: 5888, offset: 28288)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 5888, elements: !399)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!399 = !{!400}
!400 = !DISubrange(count: 92)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !9, file: !10, line: 455, baseType: !402, size: 23552, offset: 34176)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 23552, elements: !403)
!403 = !{!400, !376}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !9, file: !10, line: 457, baseType: !363, size: 64, offset: 57728)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !9, file: !10, line: 460, baseType: !406, size: 53376, offset: 57856)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !10, line: 364, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 302, size: 53376, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !437, !468, !469, !470, !476, !477, !478, !479, !480, !481, !482, !483}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !407, file: !10, line: 304, baseType: !338, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !407, file: !10, line: 305, baseType: !368, size: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !407, file: !10, line: 307, baseType: !19, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !407, file: !10, line: 308, baseType: !19, size: 32, offset: 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !407, file: !10, line: 309, baseType: !19, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !407, file: !10, line: 311, baseType: !19, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !407, file: !10, line: 313, baseType: !19, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !407, file: !10, line: 315, baseType: !19, size: 32, offset: 288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !407, file: !10, line: 316, baseType: !19, size: 32, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !407, file: !10, line: 317, baseType: !19, size: 32, offset: 352)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !407, file: !10, line: 319, baseType: !19, size: 32, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !407, file: !10, line: 321, baseType: !19, size: 32, offset: 416)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !407, file: !10, line: 322, baseType: !19, size: 32, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !407, file: !10, line: 324, baseType: !123, size: 64, offset: 480)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !407, file: !10, line: 325, baseType: !19, size: 32, offset: 544)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !407, file: !10, line: 327, baseType: !19, size: 32, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !407, file: !10, line: 329, baseType: !19, size: 32, offset: 608)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !407, file: !10, line: 330, baseType: !19, size: 32, offset: 640)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !407, file: !10, line: 331, baseType: !19, size: 32, offset: 672)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !407, file: !10, line: 333, baseType: !19, size: 32, offset: 704)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !407, file: !10, line: 334, baseType: !19, size: 32, offset: 736)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !407, file: !10, line: 339, baseType: !431, size: 2048, offset: 768)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 2048, elements: !436)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !10, line: 335, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !432, file: !10, line: 337, baseType: !19, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !432, file: !10, line: 338, baseType: !19, size: 32, offset: 32)
!436 = !{!125, !69}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !407, file: !10, line: 342, baseType: !438, size: 49152, align: 128, offset: 2816)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 49152, align: 128, elements: !465)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !440, line: 36, baseType: !441, align: 128)
!440 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !440, line: 26, size: 512, elements: !442)
!442 = !{!443, !451, !452, !455, !456, !457}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !441, file: !440, line: 30, baseType: !444, size: 128, align: 128)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 128, elements: !449)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !446, line: 25, baseType: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !66, line: 39, baseType: !448)
!448 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!449 = !{!450}
!450 = !DISubrange(count: 8)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !441, file: !440, line: 31, baseType: !444, size: 128, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !441, file: !440, line: 32, baseType: !453, size: 32, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !446, line: 26, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !66, line: 41, baseType: !19)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !441, file: !440, line: 33, baseType: !453, size: 32, offset: 288)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !441, file: !440, line: 34, baseType: !453, size: 32, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !441, file: !440, line: 35, baseType: !458, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !440, line: 25, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !215, !19, !215, !19, !463, !19}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!465 = !{!466, !467}
!466 = !DISubrange(count: 32)
!467 = !DISubrange(count: 3)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !407, file: !10, line: 344, baseType: !19, size: 32, offset: 51968)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !407, file: !10, line: 345, baseType: !19, size: 32, offset: 52000)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !407, file: !10, line: 350, baseType: !471, size: 1024, offset: 52032)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1024, elements: !68)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !407, file: !10, line: 346, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !472, file: !10, line: 348, baseType: !19, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !472, file: !10, line: 349, baseType: !19, size: 32, offset: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !407, file: !10, line: 352, baseType: !19, size: 32, offset: 53056)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !407, file: !10, line: 354, baseType: !19, size: 32, offset: 53088)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !407, file: !10, line: 355, baseType: !19, size: 32, offset: 53120)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !407, file: !10, line: 356, baseType: !19, size: 32, offset: 53152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !407, file: !10, line: 357, baseType: !19, size: 32, offset: 53184)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !407, file: !10, line: 360, baseType: !19, size: 32, offset: 53216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !407, file: !10, line: 361, baseType: !19, size: 32, offset: 53248)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !407, file: !10, line: 362, baseType: !19, size: 32, offset: 53280)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !9, file: !10, line: 463, baseType: !485, size: 4096, offset: 111232)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !486, line: 46, baseType: !487)
!486 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 27, size: 4096, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !496, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !487, file: !486, line: 30, baseType: !19, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !487, file: !486, line: 31, baseType: !19, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !487, file: !486, line: 34, baseType: !19, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !487, file: !486, line: 35, baseType: !19, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !487, file: !486, line: 37, baseType: !215, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !487, file: !486, line: 38, baseType: !215, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !487, file: !486, line: 39, baseType: !215, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !487, file: !486, line: 42, baseType: !19, size: 32, align: 128, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !486, line: 45, baseType: !498, size: 3680, offset: 416)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3680, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 460)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !9, file: !10, line: 494, baseType: !502, size: 2112, offset: 115328)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 465, size: 2112, elements: !503)
!503 = !{!504, !645, !647, !648, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !661, !662, !663, !664}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !502, file: !10, line: 468, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !508, line: 146, baseType: !509)
!508 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !508, line: 31, size: 125056, elements: !510)
!510 = !{!511, !512, !513, !514, !517, !518, !519, !520, !521, !522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !541, !542, !543, !544, !545, !546, !548, !550, !551, !552, !553, !554, !557, !559, !560, !562, !567, !568, !572, !573, !577, !581, !584, !586, !587, !589, !590, !592, !593, !594, !597, !599, !600, !601, !603, !604, !605, !606, !607, !608, !609, !610, !612, !613, !617, !626, !630, !632, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !509, file: !508, line: 34, baseType: !19, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !509, file: !508, line: 35, baseType: !19, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !509, file: !508, line: 36, baseType: !19, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !509, file: !508, line: 37, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !446, line: 27, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !66, line: 44, baseType: !229)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !509, file: !508, line: 38, baseType: !515, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !509, file: !508, line: 39, baseType: !19, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !509, file: !508, line: 40, baseType: !19, size: 32, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !509, file: !508, line: 41, baseType: !19, size: 32, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !509, file: !508, line: 42, baseType: !19, size: 32, offset: 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !509, file: !508, line: 43, baseType: !523, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !509, file: !508, line: 45, baseType: !19, size: 32, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !509, file: !508, line: 46, baseType: !19, size: 32, offset: 480)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !509, file: !508, line: 47, baseType: !19, size: 32, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !509, file: !508, line: 48, baseType: !19, size: 32, offset: 544)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !509, file: !508, line: 49, baseType: !19, size: 32, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !509, file: !508, line: 50, baseType: !19, size: 32, offset: 608)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !509, file: !508, line: 51, baseType: !19, size: 32, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !509, file: !508, line: 52, baseType: !63, size: 8, offset: 672)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !509, file: !508, line: 53, baseType: !63, size: 8, offset: 680)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !509, file: !508, line: 54, baseType: !63, size: 8, offset: 688)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !509, file: !508, line: 55, baseType: !119, size: 32, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !509, file: !508, line: 56, baseType: !119, size: 32, offset: 736)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !509, file: !508, line: 57, baseType: !19, size: 32, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !509, file: !508, line: 60, baseType: !19, size: 32, offset: 800)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !509, file: !508, line: 61, baseType: !539, size: 96, offset: 832)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 96, elements: !540)
!540 = !{!467}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !509, file: !508, line: 62, baseType: !539, size: 96, offset: 928)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !509, file: !508, line: 63, baseType: !539, size: 96, offset: 1024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !509, file: !508, line: 64, baseType: !19, size: 32, offset: 1120)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !509, file: !508, line: 65, baseType: !19, size: 32, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !509, file: !508, line: 66, baseType: !19, size: 32, offset: 1184)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !509, file: !508, line: 67, baseType: !547, size: 192, offset: 1216)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !540)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !509, file: !508, line: 68, baseType: !549, size: 256, offset: 1408)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !375)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !509, file: !508, line: 69, baseType: !549, size: 256, offset: 1664)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !509, file: !508, line: 70, baseType: !398, size: 64, offset: 1920)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !509, file: !508, line: 74, baseType: !549, size: 256, offset: 1984)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !509, file: !508, line: 75, baseType: !549, size: 256, offset: 2240)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !509, file: !508, line: 77, baseType: !555, size: 24576, align: 128, offset: 2560)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 24576, align: 128, elements: !556)
!556 = !{!69, !467}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !509, file: !508, line: 78, baseType: !558, size: 1024, offset: 27136)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !68)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !509, file: !508, line: 79, baseType: !19, size: 32, offset: 28160)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !509, file: !508, line: 80, baseType: !561, size: 64, offset: 28224)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !509, file: !508, line: 83, baseType: !563, size: 64, offset: 28288)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !446, line: 24, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !66, line: 37, baseType: !566)
!566 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !509, file: !508, line: 84, baseType: !215, size: 64, offset: 28352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !509, file: !508, line: 85, baseType: !569, size: 128, offset: 28416)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 128, elements: !124)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 32, elements: !124)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !509, file: !508, line: 86, baseType: !570, size: 64, offset: 28544)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !509, file: !508, line: 87, baseType: !574, size: 2176, offset: 28608)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 2176, elements: !575)
!575 = !{!125, !576}
!576 = !DISubrange(count: 17)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !509, file: !508, line: 92, baseType: !578, size: 20736, offset: 30784)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 20736, elements: !579)
!579 = !{!580, !580}
!580 = !DISubrange(count: 18)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !509, file: !508, line: 96, baseType: !582, size: 2176, offset: 51520)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 2176, elements: !575)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !509, file: !508, line: 97, baseType: !585, size: 128, offset: 53696)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !124)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !509, file: !508, line: 98, baseType: !123, size: 64, offset: 53824)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !509, file: !508, line: 99, baseType: !588, size: 1024, offset: 53888)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1024, elements: !436)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !509, file: !508, line: 100, baseType: !571, size: 32, offset: 54912)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !509, file: !508, line: 105, baseType: !591, size: 10368, offset: 54944)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 10368, elements: !579)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !509, file: !508, line: 106, baseType: !591, size: 10368, offset: 65312)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !509, file: !508, line: 107, baseType: !19, size: 32, offset: 75680)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !509, file: !508, line: 108, baseType: !595, size: 576, offset: 75712)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 576, elements: !596)
!596 = !{!580}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !509, file: !508, line: 109, baseType: !598, size: 20736, offset: 76288)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 20736, elements: !579)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !509, file: !508, line: 110, baseType: !583, size: 64, offset: 97024)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !509, file: !508, line: 111, baseType: !583, size: 64, offset: 97088)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !509, file: !508, line: 112, baseType: !602, size: 64, offset: 97152)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !509, file: !508, line: 113, baseType: !602, size: 64, offset: 97216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !509, file: !508, line: 114, baseType: !602, size: 64, offset: 97280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !509, file: !508, line: 115, baseType: !19, size: 32, offset: 97344)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !509, file: !508, line: 116, baseType: !398, size: 64, offset: 97408)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !509, file: !508, line: 117, baseType: !398, size: 64, offset: 97472)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !509, file: !508, line: 118, baseType: !398, size: 64, offset: 97536)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !509, file: !508, line: 119, baseType: !19, size: 32, offset: 97600)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !509, file: !508, line: 120, baseType: !611, size: 576, offset: 97632)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 576, elements: !596)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !509, file: !508, line: 121, baseType: !176, size: 32, offset: 98208)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !509, file: !508, line: 122, baseType: !614, size: 64, offset: 98240)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !64, line: 27, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !66, line: 45, baseType: !616)
!616 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !509, file: !508, line: 125, baseType: !618, size: 256, offset: 98304)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !8, line: 503, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 496, size: 256, elements: !620)
!620 = !{!621, !623, !624, !625}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !619, file: !8, line: 498, baseType: !622, size: 64)
!622 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !619, file: !8, line: 499, baseType: !622, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !619, file: !8, line: 500, baseType: !622, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !619, file: !8, line: 502, baseType: !622, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !509, file: !508, line: 128, baseType: !627, size: 2008, offset: 98560)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2008, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 251)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !509, file: !508, line: 129, baseType: !631, size: 8032, offset: 100576)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8032, elements: !628)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !509, file: !508, line: 130, baseType: !633, size: 16064, offset: 108608)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 16064, elements: !628)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !509, file: !508, line: 131, baseType: !19, size: 32, offset: 124672)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !509, file: !508, line: 132, baseType: !19, size: 32, offset: 124704)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !509, file: !508, line: 135, baseType: !19, size: 32, offset: 124736)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !509, file: !508, line: 136, baseType: !19, size: 32, offset: 124768)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !509, file: !508, line: 137, baseType: !19, size: 32, offset: 124800)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !509, file: !508, line: 138, baseType: !19, size: 32, offset: 124832)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !509, file: !508, line: 139, baseType: !19, size: 32, offset: 124864)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !509, file: !508, line: 142, baseType: !119, size: 32, offset: 124896)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !509, file: !508, line: 143, baseType: !19, size: 32, offset: 124928)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !509, file: !508, line: 144, baseType: !19, size: 32, offset: 124960)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !509, file: !508, line: 145, baseType: !19, size: 32, offset: 124992)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !502, file: !10, line: 470, baseType: !646, size: 128, offset: 64)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 128, elements: !124)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !502, file: !10, line: 473, baseType: !505, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !502, file: !10, line: 476, baseType: !649, size: 1152, offset: 256)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 1152, elements: !596)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !502, file: !10, line: 478, baseType: !19, size: 32, offset: 1408)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !502, file: !10, line: 480, baseType: !19, size: 32, offset: 1440)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !502, file: !10, line: 482, baseType: !19, size: 32, offset: 1472)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !502, file: !10, line: 483, baseType: !19, size: 32, offset: 1504)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !502, file: !10, line: 484, baseType: !19, size: 32, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !502, file: !10, line: 485, baseType: !19, size: 32, offset: 1568)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !502, file: !10, line: 486, baseType: !19, size: 32, offset: 1600)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !502, file: !10, line: 487, baseType: !515, size: 64, offset: 1664)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !502, file: !10, line: 488, baseType: !515, size: 64, offset: 1728)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !502, file: !10, line: 489, baseType: !660, size: 128, offset: 1792)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 128, elements: !124)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !502, file: !10, line: 490, baseType: !515, size: 64, offset: 1920)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !502, file: !10, line: 491, baseType: !515, size: 64, offset: 1984)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !502, file: !10, line: 492, baseType: !19, size: 32, offset: 2048)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !502, file: !10, line: 493, baseType: !19, size: 32, offset: 2080)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !9, file: !10, line: 497, baseType: !506, size: 64, offset: 117440)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !9, file: !10, line: 500, baseType: !506, size: 64, offset: 117504)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !9, file: !10, line: 503, baseType: !19, size: 32, offset: 117568)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !9, file: !10, line: 504, baseType: !669, size: 1216, offset: 117632)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 1216, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 19)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !9, file: !10, line: 505, baseType: !19, size: 32, offset: 118848)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !9, file: !10, line: 506, baseType: !669, size: 1216, offset: 118912)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !9, file: !10, line: 507, baseType: !123, size: 64, offset: 120128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !9, file: !10, line: 510, baseType: !19, size: 32, offset: 120192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !9, file: !10, line: 511, baseType: !19, size: 32, offset: 120224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !9, file: !10, line: 512, baseType: !515, size: 64, offset: 120256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !9, file: !10, line: 522, baseType: !679, size: 10624, offset: 120320)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 515, size: 10624, elements: !680)
!680 = !{!681, !683, !686, !689}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !679, file: !10, line: 517, baseType: !682, size: 256, align: 128)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !68)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !679, file: !10, line: 518, baseType: !684, size: 128, align: 128, offset: 256)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 128, elements: !685)
!685 = !{!125, !376}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !679, file: !10, line: 520, baseType: !687, size: 4096, align: 128, offset: 384)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 4096, elements: !688)
!688 = !{!376, !76}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !679, file: !10, line: 521, baseType: !690, size: 6144, align: 128, offset: 4480)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 6144, elements: !691)
!691 = !{!692, !69}
!692 = !DISubrange(count: 24)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !9, file: !10, line: 732, baseType: !694, size: 82688, offset: 130944)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 525, size: 82688, elements: !695)
!695 = !{!696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !723, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !741, !744, !748, !749, !750, !755, !756, !759, !760, !761, !762, !763, !764, !765, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !825, !856, !857, !858, !859, !860, !861, !862, !863, !864, !867, !868, !869, !872, !875, !877, !880, !882, !883}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !694, file: !10, line: 527, baseType: !19, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !694, file: !10, line: 530, baseType: !19, size: 32, offset: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !694, file: !10, line: 531, baseType: !19, size: 32, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !694, file: !10, line: 532, baseType: !19, size: 32, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !694, file: !10, line: 535, baseType: !19, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !694, file: !10, line: 536, baseType: !19, size: 32, offset: 160)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !694, file: !10, line: 537, baseType: !19, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !694, file: !10, line: 538, baseType: !19, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !694, file: !10, line: 539, baseType: !19, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !694, file: !10, line: 542, baseType: !19, size: 32, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !694, file: !10, line: 543, baseType: !19, size: 32, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !694, file: !10, line: 544, baseType: !19, size: 32, offset: 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !694, file: !10, line: 545, baseType: !19, size: 32, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !694, file: !10, line: 546, baseType: !19, size: 32, offset: 416)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !694, file: !10, line: 547, baseType: !19, size: 32, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !694, file: !10, line: 548, baseType: !19, size: 32, offset: 480)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !694, file: !10, line: 549, baseType: !19, size: 32, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !694, file: !10, line: 551, baseType: !19, size: 32, offset: 544)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !694, file: !10, line: 554, baseType: !123, size: 64, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !694, file: !10, line: 555, baseType: !123, size: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !694, file: !10, line: 558, baseType: !123, size: 64, offset: 704)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !694, file: !10, line: 559, baseType: !123, size: 64, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !694, file: !10, line: 561, baseType: !123, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !694, file: !10, line: 562, baseType: !123, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !694, file: !10, line: 565, baseType: !17, size: 32, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !694, file: !10, line: 566, baseType: !722, size: 128, offset: 992)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !375)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !694, file: !10, line: 567, baseType: !724, size: 512, offset: 1120)
!724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !68)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !694, file: !10, line: 568, baseType: !17, size: 32, offset: 1632)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !694, file: !10, line: 569, baseType: !17, size: 32, offset: 1664)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !694, file: !10, line: 570, baseType: !19, size: 32, offset: 1696)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !694, file: !10, line: 571, baseType: !19, size: 32, offset: 1728)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !694, file: !10, line: 572, baseType: !19, size: 32, offset: 1760)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !694, file: !10, line: 573, baseType: !19, size: 32, offset: 1792)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !694, file: !10, line: 574, baseType: !19, size: 32, offset: 1824)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !694, file: !10, line: 575, baseType: !19, size: 32, offset: 1856)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !694, file: !10, line: 576, baseType: !19, size: 32, offset: 1888)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !694, file: !10, line: 577, baseType: !19, size: 32, offset: 1920)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !694, file: !10, line: 578, baseType: !19, size: 32, offset: 1952)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !10, line: 585, baseType: !563, size: 64, offset: 1984)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !694, file: !10, line: 586, baseType: !215, size: 64, offset: 2048)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !694, file: !10, line: 587, baseType: !563, size: 64, offset: 2112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !694, file: !10, line: 588, baseType: !740, size: 64, offset: 2176)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !694, file: !10, line: 589, baseType: !742, size: 64, offset: 2240)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 64, elements: !449)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !694, file: !10, line: 591, baseType: !745, size: 64, offset: 2304)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !747)
!747 = !{!692}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !694, file: !10, line: 592, baseType: !563, size: 64, offset: 2368)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !694, file: !10, line: 593, baseType: !569, size: 128, offset: 2432)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !694, file: !10, line: 594, baseType: !751, size: 128, offset: 2560)
!751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 128, elements: !124)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !754)
!754 = !{!450, !125}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !694, file: !10, line: 595, baseType: !585, size: 128, offset: 2688)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !694, file: !10, line: 596, baseType: !757, size: 4096, offset: 2816)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 4096, elements: !758)
!758 = !{!125, !466}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !694, file: !10, line: 597, baseType: !563, size: 64, offset: 6912)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !694, file: !10, line: 598, baseType: !563, size: 64, offset: 6976)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !694, file: !10, line: 599, baseType: !398, size: 64, offset: 7040)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !694, file: !10, line: 603, baseType: !558, size: 1024, offset: 7104)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !694, file: !10, line: 606, baseType: !19, size: 32, offset: 8128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !694, file: !10, line: 607, baseType: !19, size: 32, offset: 8160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !694, file: !10, line: 608, baseType: !766, size: 32, align: 32, offset: 8192)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 32, elements: !375)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !694, file: !10, line: 609, baseType: !19, size: 32, offset: 8224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !694, file: !10, line: 611, baseType: !19, size: 32, offset: 8256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !694, file: !10, line: 612, baseType: !19, size: 32, offset: 8288)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !694, file: !10, line: 614, baseType: !19, size: 32, offset: 8320)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !694, file: !10, line: 615, baseType: !19, size: 32, offset: 8352)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !694, file: !10, line: 621, baseType: !19, size: 32, offset: 8384)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !694, file: !10, line: 624, baseType: !19, size: 32, offset: 8416)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !694, file: !10, line: 626, baseType: !19, size: 32, offset: 8448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !694, file: !10, line: 627, baseType: !19, size: 32, offset: 8480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !694, file: !10, line: 671, baseType: !777, size: 60672, offset: 8576)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !10, line: 629, size: 60672, elements: !778)
!778 = !{!779, !783, !787, !789, !790, !793, !797, !799, !800, !801, !802, !803, !806, !810, !813, !814, !815, !816, !817, !820, !822, !824}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !777, file: !10, line: 634, baseType: !780, size: 3072, align: 128)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 3072, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !777, file: !10, line: 635, baseType: !784, size: 6912, align: 128, offset: 3072)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 6912, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 864)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !777, file: !10, line: 638, baseType: !788, size: 2048, align: 128, offset: 9984)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 2048, elements: !268)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !777, file: !10, line: 639, baseType: !788, size: 2048, align: 128, offset: 12032)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !777, file: !10, line: 640, baseType: !791, size: 3072, align: 128, offset: 14080)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 3072, elements: !792)
!792 = !{!467, !76}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !777, file: !10, line: 641, baseType: !794, size: 3840, align: 128, offset: 17152)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 3840, elements: !795)
!795 = !{!796, !69}
!796 = !DISubrange(count: 15)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !777, file: !10, line: 642, baseType: !798, size: 128, offset: 20992)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !375)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !777, file: !10, line: 643, baseType: !798, size: 128, offset: 21120)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !777, file: !10, line: 644, baseType: !19, size: 32, offset: 21248)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !777, file: !10, line: 645, baseType: !19, size: 32, offset: 21280)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !777, file: !10, line: 648, baseType: !687, size: 4096, align: 128, offset: 21376)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !777, file: !10, line: 649, baseType: !804, size: 4096, align: 128, offset: 25472)
!804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 4096, elements: !805)
!805 = !{!69, !69}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !777, file: !10, line: 652, baseType: !807, size: 576, align: 128, offset: 29568)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 576, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 9)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !777, file: !10, line: 653, baseType: !811, size: 1024, align: 128, offset: 30208)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 1024, elements: !812)
!812 = !{!466}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !777, file: !10, line: 656, baseType: !547, size: 192, offset: 31232)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !777, file: !10, line: 658, baseType: !547, size: 192, offset: 31424)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !777, file: !10, line: 661, baseType: !547, size: 192, offset: 31616)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !777, file: !10, line: 664, baseType: !123, size: 64, offset: 31808)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !777, file: !10, line: 665, baseType: !818, size: 24576, offset: 31872)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24576, elements: !819)
!819 = !{!125, !466, !366}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !777, file: !10, line: 666, baseType: !821, size: 2048, offset: 56448)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 2048, elements: !812)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !777, file: !10, line: 667, baseType: !823, size: 2048, offset: 58496)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 2048, elements: !436)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !777, file: !10, line: 670, baseType: !539, size: 96, offset: 60544)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !694, file: !10, line: 704, baseType: !826, size: 6144, offset: 69248)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !10, line: 674, size: 6144, elements: !827)
!827 = !{!828, !832, !836, !839, !842, !844, !845, !848, !850, !851, !852, !853, !854, !855}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !826, file: !10, line: 677, baseType: !829, size: 320, align: 64)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 320, elements: !830)
!830 = !{!831}
!831 = !DISubrange(count: 40)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !826, file: !10, line: 680, baseType: !833, size: 384, align: 128, offset: 384)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 384, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 48)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !826, file: !10, line: 683, baseType: !837, size: 640, align: 32, offset: 768)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 640, elements: !838)
!838 = !{!125, !831}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !826, file: !10, line: 686, baseType: !840, size: 2560, align: 128, offset: 1408)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 2560, elements: !841)
!841 = !{!125, !831, !125}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !826, file: !10, line: 687, baseType: !843, size: 1280, align: 64, offset: 3968)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1280, elements: !841)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !826, file: !10, line: 690, baseType: !829, size: 320, align: 32, offset: 5248)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !826, file: !10, line: 692, baseType: !846, size: 256, align: 32, offset: 5568)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !847)
!847 = !{!125, !376, !125}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !826, file: !10, line: 693, baseType: !849, size: 64, align: 32, offset: 5824)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 64, elements: !685)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !826, file: !10, line: 694, baseType: !19, size: 32, offset: 5888)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !826, file: !10, line: 695, baseType: !571, size: 32, align: 32, offset: 5920)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !826, file: !10, line: 698, baseType: !19, size: 32, offset: 5952)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !826, file: !10, line: 699, baseType: !19, size: 32, offset: 5984)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !826, file: !10, line: 702, baseType: !19, size: 32, offset: 6016)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !826, file: !10, line: 703, baseType: !19, size: 32, offset: 6048)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !694, file: !10, line: 707, baseType: !19, size: 32, offset: 75392)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !694, file: !10, line: 708, baseType: !19, size: 32, offset: 75424)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !694, file: !10, line: 709, baseType: !19, size: 32, offset: 75456)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !694, file: !10, line: 710, baseType: !19, size: 32, offset: 75488)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !694, file: !10, line: 711, baseType: !19, size: 32, offset: 75520)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !694, file: !10, line: 712, baseType: !19, size: 32, offset: 75552)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !694, file: !10, line: 713, baseType: !19, size: 32, offset: 75584)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !694, file: !10, line: 714, baseType: !19, size: 32, offset: 75616)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !694, file: !10, line: 717, baseType: !865, size: 128, offset: 75648)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !866)
!866 = !{!125, !125}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !694, file: !10, line: 718, baseType: !19, size: 32, offset: 75776)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !694, file: !10, line: 719, baseType: !19, size: 32, offset: 75808)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !694, file: !10, line: 722, baseType: !870, size: 4096, offset: 75840)
!870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 4096, elements: !871)
!871 = !{!125, !466, !376}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !694, file: !10, line: 723, baseType: !873, size: 64, offset: 79936)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 64, elements: !375)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !694, file: !10, line: 724, baseType: !876, size: 2048, offset: 80000)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 2048, elements: !871)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !694, file: !10, line: 725, baseType: !878, size: 64, offset: 82048)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 32, elements: !375)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !694, file: !10, line: 728, baseType: !881, size: 144, offset: 82112)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 144, elements: !596)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !694, file: !10, line: 729, baseType: !19, size: 32, offset: 82272)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !694, file: !10, line: 730, baseType: !884, size: 272, offset: 82304)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 272, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 34)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !9, file: !10, line: 735, baseType: !888, size: 64, offset: 213632)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !10, line: 379, baseType: !890)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !10, line: 379, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !9, file: !10, line: 793, baseType: !892, size: 29504, offset: 213696)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !10, line: 738, size: 29504, elements: !893)
!893 = !{!894, !921, !925, !927, !929, !930, !931, !932, !933, !934, !935, !936, !939, !941, !942, !945, !947, !949, !950, !951}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !892, file: !10, line: 764, baseType: !895, size: 5632)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !10, line: 741, size: 5632, elements: !896)
!896 = !{!897, !898, !899, !900, !902, !903, !904, !905, !906, !908, !911, !913, !917, !918, !920}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !895, file: !10, line: 744, baseType: !19, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !895, file: !10, line: 746, baseType: !19, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !895, file: !10, line: 748, baseType: !19, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !895, file: !10, line: 750, baseType: !901, size: 608, offset: 96)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 608, elements: !670)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !895, file: !10, line: 751, baseType: !19, size: 32, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !895, file: !10, line: 752, baseType: !19, size: 32, offset: 736)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !895, file: !10, line: 753, baseType: !19, size: 32, offset: 768)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !895, file: !10, line: 754, baseType: !123, size: 64, offset: 800)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !895, file: !10, line: 755, baseType: !907, size: 2048, offset: 864)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !758)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !895, file: !10, line: 756, baseType: !909, size: 544, offset: 2912)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 544, elements: !910)
!910 = !{!576}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !895, file: !10, line: 757, baseType: !912, size: 192, offset: 3456)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, elements: !365)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !895, file: !10, line: 758, baseType: !914, size: 1664, offset: 3648)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 1664, elements: !915)
!915 = !{!376, !916}
!916 = !DISubrange(count: 13)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !895, file: !10, line: 760, baseType: !123, size: 64, offset: 5312)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !895, file: !10, line: 762, baseType: !919, size: 192, offset: 5376)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 192, elements: !540)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !895, file: !10, line: 763, baseType: !622, size: 64, offset: 5568)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !892, file: !10, line: 769, baseType: !922, size: 160, offset: 5632)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 5)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !892, file: !10, line: 770, baseType: !926, size: 320, offset: 5824)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 320, elements: !923)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !892, file: !10, line: 771, baseType: !928, size: 320, offset: 6144)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 320, elements: !923)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !892, file: !10, line: 772, baseType: !909, size: 544, offset: 6464)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !892, file: !10, line: 774, baseType: !926, size: 320, offset: 7040)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !892, file: !10, line: 775, baseType: !928, size: 320, offset: 7360)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !892, file: !10, line: 776, baseType: !928, size: 320, offset: 7680)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !892, file: !10, line: 777, baseType: !928, size: 320, offset: 8000)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !892, file: !10, line: 778, baseType: !928, size: 320, offset: 8320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !892, file: !10, line: 779, baseType: !928, size: 320, offset: 8640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !892, file: !10, line: 781, baseType: !937, size: 6080, offset: 8960)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 6080, elements: !938)
!938 = !{!924, !671}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !892, file: !10, line: 782, baseType: !940, size: 2176, offset: 15040)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 2176, elements: !575)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !892, file: !10, line: 783, baseType: !660, size: 128, offset: 17216)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !892, file: !10, line: 784, baseType: !943, size: 8192, offset: 17344)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 8192, elements: !944)
!944 = !{!125, !125, !466}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !892, file: !10, line: 785, baseType: !946, size: 384, offset: 25536)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 384, elements: !365)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !892, file: !10, line: 786, baseType: !948, size: 3328, offset: 25920)
!948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 3328, elements: !915)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !892, file: !10, line: 788, baseType: !123, size: 64, offset: 29248)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !892, file: !10, line: 789, baseType: !123, size: 64, offset: 29312)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !892, file: !10, line: 791, baseType: !539, size: 96, offset: 29376)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !9, file: !10, line: 795, baseType: !953, size: 4096, align: 128, offset: 243200)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 4096, elements: !954)
!954 = !{!125, !76}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !9, file: !10, line: 796, baseType: !956, size: 2048, align: 128, offset: 247296)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 2048, elements: !954)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !9, file: !10, line: 797, baseType: !958, size: 64, offset: 249344)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !124)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !9, file: !10, line: 800, baseType: !82, size: 64, offset: 249408)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !9, file: !10, line: 801, baseType: !961, size: 384, offset: 249472)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 384, elements: !962)
!962 = !{!125, !467}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !9, file: !10, line: 802, baseType: !964, size: 128, offset: 249856)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 128, elements: !124)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !967)
!967 = !{!125, !376, !376}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !9, file: !10, line: 805, baseType: !969, size: 448, offset: 249984)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 448, elements: !975)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !971, line: 27, baseType: !972)
!971 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !215}
!975 = !{!976}
!976 = !DISubrange(count: 7)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !9, file: !10, line: 806, baseType: !969, size: 448, offset: 250432)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !9, file: !10, line: 807, baseType: !979, size: 768, offset: 250880)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 768, elements: !984)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !971, line: 28, baseType: !981)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !215, !215}
!984 = !{!985}
!985 = !DISubrange(count: 12)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !9, file: !10, line: 808, baseType: !987, size: 768, offset: 251648)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 768, elements: !984)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !9, file: !10, line: 809, baseType: !989, size: 64, offset: 252416)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !971, line: 29, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !215, !215, !19, !19}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !9, file: !10, line: 811, baseType: !994, size: 8448, offset: 252480)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !995, line: 110, baseType: !996)
!995 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !995, line: 63, size: 8448, elements: !997)
!997 = !{!998, !1004, !1005, !1006, !1007, !1009, !1010, !1011, !1012, !1018, !1024, !1025, !1029, !1034, !1035, !1041, !1045, !1046, !1047, !1048, !1049, !1054, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !996, file: !995, line: 65, baseType: !999, size: 448)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 448, elements: !975)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !995, line: 26, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!19, !215, !19, !215, !19}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !996, file: !995, line: 66, baseType: !999, size: 448, offset: 448)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !996, file: !995, line: 67, baseType: !999, size: 448, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !996, file: !995, line: 68, baseType: !999, size: 448, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !996, file: !995, line: 69, baseType: !1008, size: 256, offset: 1792)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 256, elements: !375)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !996, file: !995, line: 70, baseType: !999, size: 448, offset: 2048)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !996, file: !995, line: 71, baseType: !999, size: 448, offset: 2496)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !996, file: !995, line: 72, baseType: !999, size: 448, offset: 2944)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !996, file: !995, line: 73, baseType: !1013, size: 448, offset: 3392)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1014, size: 448, elements: !975)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !995, line: 27, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !215, !215, !215, !215, !19, !583}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !996, file: !995, line: 74, baseType: !1019, size: 448, offset: 3840)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 448, elements: !975)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !995, line: 28, baseType: !1021)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !215, !215, !215, !215, !215, !19, !583}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !996, file: !995, line: 75, baseType: !999, size: 448, offset: 4288)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !996, file: !995, line: 76, baseType: !1026, size: 64, offset: 4736)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!19, !215, !19, !215, !19, !583}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !996, file: !995, line: 78, baseType: !1030, size: 256, offset: 4800)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 256, elements: !375)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!614, !215, !19}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !996, file: !995, line: 79, baseType: !1030, size: 256, offset: 5056)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !996, file: !995, line: 81, baseType: !1036, size: 64, offset: 5312)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !363, !19, !363, !19, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 128, elements: !375)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !996, file: !995, line: 83, baseType: !1042, size: 64, offset: 5376)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!119, !1039, !1039, !19}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !996, file: !995, line: 86, baseType: !1013, size: 448, offset: 5440)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !996, file: !995, line: 87, baseType: !1019, size: 448, offset: 5888)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !996, file: !995, line: 88, baseType: !1013, size: 448, offset: 6336)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !996, file: !995, line: 89, baseType: !1019, size: 448, offset: 6784)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !996, file: !995, line: 93, baseType: !1050, size: 448, offset: 7232)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 448, elements: !975)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!19, !583, !398, !19, !398, !740, !19, !19}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !996, file: !995, line: 98, baseType: !1055, size: 64, offset: 7680)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !215, !215, !583}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !996, file: !995, line: 99, baseType: !1055, size: 64, offset: 7744)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !996, file: !995, line: 100, baseType: !1055, size: 64, offset: 7808)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !996, file: !995, line: 101, baseType: !1055, size: 64, offset: 7872)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !996, file: !995, line: 102, baseType: !1055, size: 64, offset: 7936)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !996, file: !995, line: 103, baseType: !1055, size: 64, offset: 8000)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !996, file: !995, line: 104, baseType: !1055, size: 64, offset: 8064)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !996, file: !995, line: 105, baseType: !1055, size: 64, offset: 8128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !996, file: !995, line: 106, baseType: !1055, size: 64, offset: 8192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !996, file: !995, line: 107, baseType: !1055, size: 64, offset: 8256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !996, file: !995, line: 108, baseType: !1055, size: 64, offset: 8320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !996, file: !995, line: 109, baseType: !1055, size: 64, offset: 8384)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !9, file: !10, line: 812, baseType: !1070, size: 2368, offset: 260928)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !440, line: 111, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !440, line: 58, size: 2368, elements: !1072)
!1072 = !{!1073, !1080, !1084, !1088, !1095, !1100, !1101, !1105, !1109, !1110, !1114, !1122, !1126, !1130, !1131, !1135, !1139, !1143, !1144, !1145, !1146, !1151}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1071, file: !440, line: 60, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !215, !19, !1077, !19, !19, !19, !19, !19, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1071, file: !440, line: 65, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!215, !215, !583, !1077, !19, !19, !19, !19, !19, !1078}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1071, file: !440, line: 71, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !215, !19, !215, !19, !19, !19, !19, !19}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1071, file: !440, line: 75, baseType: !1089, size: 640, offset: 192)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1090, size: 640, elements: !1093)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !215, !19, !215, !19, !215, !19, !19}
!1093 = !{!1094}
!1094 = !DISubrange(count: 10)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1071, file: !440, line: 78, baseType: !1096, size: 448, offset: 832)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 448, elements: !975)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !215, !19, !215, !19, !19}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1071, file: !440, line: 79, baseType: !1097, size: 64, offset: 1280)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1071, file: !440, line: 81, baseType: !1102, size: 64, offset: 1344)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !215, !19, !215, !19, !19, !19}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1071, file: !440, line: 84, baseType: !1106, size: 64, offset: 1408)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !215, !215, !215, !215, !19, !19, !19, !740}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1071, file: !440, line: 88, baseType: !1097, size: 64, offset: 1472)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1071, file: !440, line: 91, baseType: !1111, size: 64, offset: 1536)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !215, !19, !19}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1071, file: !440, line: 93, baseType: !1115, size: 64, offset: 1600)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!82, !82, !1118, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1121, line: 46, baseType: !616)
!1121 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1071, file: !440, line: 94, baseType: !1123, size: 64, offset: 1664)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !82, !19}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1071, file: !440, line: 97, baseType: !1127, size: 64, offset: 1728)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !398, !215, !19}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1071, file: !440, line: 98, baseType: !1127, size: 64, offset: 1792)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1071, file: !440, line: 99, baseType: !1132, size: 64, offset: 1856)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{null, !398, !398, !19}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1071, file: !440, line: 100, baseType: !1136, size: 64, offset: 1920)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !398, !19}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1071, file: !440, line: 102, baseType: !1140, size: 64, offset: 1984)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !215, !215, !215, !215, !215, !19, !19, !19, !19}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1071, file: !440, line: 104, baseType: !458, size: 64, offset: 2048)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1071, file: !440, line: 105, baseType: !458, size: 64, offset: 2112)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1071, file: !440, line: 106, baseType: !458, size: 64, offset: 2176)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1071, file: !440, line: 107, baseType: !1147, size: 64, offset: 2240)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !6, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1071, file: !440, line: 109, baseType: !1152, size: 64, offset: 2304)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{null, !583, !398, !398, !398, !398, !19}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !9, file: !10, line: 813, baseType: !1156, size: 960, offset: 263296)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1157, line: 115, baseType: !1158)
!1157 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 89, size: 960, elements: !1159)
!1159 = !{!1160, !1164, !1168, !1173, !1174, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1190, !1194, !1198}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1158, file: !1157, line: 94, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !740, !215, !215}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1158, file: !1157, line: 95, baseType: !1165, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !215, !740}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1158, file: !1157, line: 97, baseType: !1169, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1172, !215, !215}
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1158, file: !1157, line: 98, baseType: !1161, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1158, file: !1157, line: 99, baseType: !1175, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !215, !1172}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1158, file: !1157, line: 100, baseType: !1165, size: 64, offset: 320)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1158, file: !1157, line: 102, baseType: !1169, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1158, file: !1157, line: 103, baseType: !1175, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1158, file: !1157, line: 104, baseType: !1165, size: 64, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1158, file: !1157, line: 106, baseType: !1161, size: 64, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1158, file: !1157, line: 107, baseType: !1165, size: 64, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1158, file: !1157, line: 109, baseType: !1185, size: 64, offset: 704)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !1188, !215, !215}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1024, elements: !75)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1158, file: !1157, line: 110, baseType: !1191, size: 64, offset: 768)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !215, !1188}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1158, file: !1157, line: 112, baseType: !1195, size: 64, offset: 832)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !740}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1158, file: !1157, line: 113, baseType: !1195, size: 64, offset: 896)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !9, file: !10, line: 814, baseType: !1200, size: 384, offset: 264256)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1157, line: 126, baseType: !1201)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1157, line: 117, size: 384, elements: !1202)
!1202 = !{!1203, !1207, !1208, !1212, !1213, !1217}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1201, file: !1157, line: 119, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !740, !740}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1201, file: !1157, line: 120, baseType: !1204, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1201, file: !1157, line: 121, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!19, !740, !363, !215}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1201, file: !1157, line: 122, baseType: !1209, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1201, file: !1157, line: 123, baseType: !1214, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!19, !740, !363, !215, !740}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1201, file: !1157, line: 124, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !740, !740, !215}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !9, file: !10, line: 815, baseType: !1222, size: 1408, offset: 264640)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1223, line: 44, baseType: !1224)
!1223 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1223, line: 26, size: 1408, elements: !1225)
!1225 = !{!1226, !1230, !1231, !1235, !1236, !1240, !1244, !1245, !1250, !1254, !1255, !1256, !1258}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1224, file: !1223, line: 28, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!19, !740, !398, !398}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1224, file: !1223, line: 29, baseType: !1227, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1224, file: !1223, line: 30, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!19, !740, !19, !19}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1224, file: !1223, line: 31, baseType: !1232, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1224, file: !1223, line: 33, baseType: !1237, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !740, !379, !19}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1224, file: !1223, line: 34, baseType: !1241, size: 64, offset: 320)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !740, !373, !19}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1224, file: !1223, line: 35, baseType: !1241, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1224, file: !1223, line: 37, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !740, !1249, !398, !19}
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1224, file: !1223, line: 39, baseType: !1251, size: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!19, !740}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1224, file: !1223, line: 40, baseType: !1251, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1224, file: !1223, line: 41, baseType: !1251, size: 64, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1224, file: !1223, line: 42, baseType: !1257, size: 384, offset: 704)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 384, elements: !365)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1224, file: !1223, line: 43, baseType: !1259, size: 320, offset: 1088)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 320, elements: !923)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!19, !740, !1263}
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !220, line: 63, baseType: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 58, size: 416, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1265, file: !220, line: 60, baseType: !19, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1265, file: !220, line: 61, baseType: !682, size: 256, offset: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1265, file: !220, line: 62, baseType: !62, size: 128, offset: 288)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !9, file: !10, line: 816, baseType: !1271, size: 576, offset: 266048)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !508, line: 170, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 161, size: 576, elements: !1273)
!1273 = !{!1274, !1280, !1281, !1287, !1288}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1272, file: !508, line: 163, baseType: !1275, size: 128)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1276, size: 128, elements: !124)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !508, line: 159, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !215, !19, !19, !19, !563}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1272, file: !508, line: 164, baseType: !1275, size: 128, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1272, file: !508, line: 165, baseType: !1282, size: 128, offset: 256)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 128, elements: !124)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !508, line: 160, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !215, !19, !19, !19}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1272, file: !508, line: 166, baseType: !1282, size: 128, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1272, file: !508, line: 167, baseType: !1289, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !215, !1292, !1293, !1296, !19, !19}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 1280, elements: !1295)
!1295 = !{!831, !125}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1298)
!1298 = !{!376, !376}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !9, file: !10, line: 821, baseType: !1300, size: 64, offset: 266624)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !10, line: 377, baseType: !1302)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !10, line: 366, size: 960, elements: !1303)
!1303 = !{!1304, !1306, !1307, !1308, !1309, !1310, !1311, !1321, !1322}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1302, file: !10, line: 368, baseType: !1305, size: 8)
!1305 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1302, file: !10, line: 369, baseType: !63, size: 8, offset: 8)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1302, file: !10, line: 370, baseType: !63, size: 8, offset: 16)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1302, file: !10, line: 371, baseType: !19, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1302, file: !10, line: 372, baseType: !19, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1302, file: !10, line: 373, baseType: !506, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1302, file: !10, line: 374, baseType: !1312, size: 256, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !508, line: 157, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 149, size: 256, elements: !1314)
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1313, file: !508, line: 151, baseType: !505, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1313, file: !508, line: 152, baseType: !19, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1313, file: !508, line: 153, baseType: !19, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1313, file: !508, line: 154, baseType: !19, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1313, file: !508, line: 155, baseType: !19, size: 32, offset: 160)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1313, file: !508, line: 156, baseType: !19, size: 32, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1302, file: !10, line: 375, baseType: !1312, size: 256, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1302, file: !10, line: 376, baseType: !1312, size: 256, offset: 704)
!1323 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1324, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1325, retainedTypes: !1401, globals: !1410, splitDebugInlining: false, nameTableKind: None)
!1324 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/cavlc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "75a5da4a09d0be3f3469f38c5a0088f2")
!1325 = !{!1326, !1349, !1369, !1377, !1391}
!1326 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !1327, line: 66, baseType: !17, size: 32, elements: !1328)
!1327 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348}
!1329 = !DIEnumerator(name: "I_4x4", value: 0)
!1330 = !DIEnumerator(name: "I_8x8", value: 1)
!1331 = !DIEnumerator(name: "I_16x16", value: 2)
!1332 = !DIEnumerator(name: "I_PCM", value: 3)
!1333 = !DIEnumerator(name: "P_L0", value: 4)
!1334 = !DIEnumerator(name: "P_8x8", value: 5)
!1335 = !DIEnumerator(name: "P_SKIP", value: 6)
!1336 = !DIEnumerator(name: "B_DIRECT", value: 7)
!1337 = !DIEnumerator(name: "B_L0_L0", value: 8)
!1338 = !DIEnumerator(name: "B_L0_L1", value: 9)
!1339 = !DIEnumerator(name: "B_L0_BI", value: 10)
!1340 = !DIEnumerator(name: "B_L1_L0", value: 11)
!1341 = !DIEnumerator(name: "B_L1_L1", value: 12)
!1342 = !DIEnumerator(name: "B_L1_BI", value: 13)
!1343 = !DIEnumerator(name: "B_BI_L0", value: 14)
!1344 = !DIEnumerator(name: "B_BI_L1", value: 15)
!1345 = !DIEnumerator(name: "B_BI_BI", value: 16)
!1346 = !DIEnumerator(name: "B_8x8", value: 17)
!1347 = !DIEnumerator(name: "B_SKIP", value: 18)
!1348 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!1349 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !1327, line: 117, baseType: !17, size: 32, elements: !1350)
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1351 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!1352 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!1353 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!1354 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!1355 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!1356 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!1357 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!1358 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!1359 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!1360 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!1361 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!1362 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!1363 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!1364 = !DIEnumerator(name: "D_8x8", value: 13)
!1365 = !DIEnumerator(name: "D_16x8", value: 14)
!1366 = !DIEnumerator(name: "D_8x16", value: 15)
!1367 = !DIEnumerator(name: "D_16x16", value: 16)
!1368 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!1369 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !1327, line: 258, baseType: !17, size: 32, elements: !1370)
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376}
!1371 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!1372 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!1373 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!1374 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!1375 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!1376 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!1377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !971, line: 65, baseType: !17, size: 32, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1379 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!1380 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!1381 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!1382 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!1383 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!1384 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!1385 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!1386 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!1387 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!1388 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!1389 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!1390 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!1391 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_e", file: !250, line: 27, baseType: !17, size: 32, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1393 = !DIEnumerator(name: "PROFILE_BASELINE", value: 66)
!1394 = !DIEnumerator(name: "PROFILE_MAIN", value: 77)
!1395 = !DIEnumerator(name: "PROFILE_EXTENDED", value: 88)
!1396 = !DIEnumerator(name: "PROFILE_HIGH", value: 100)
!1397 = !DIEnumerator(name: "PROFILE_HIGH10", value: 110)
!1398 = !DIEnumerator(name: "PROFILE_HIGH422", value: 122)
!1399 = !DIEnumerator(name: "PROFILE_HIGH444", value: 144)
!1400 = !DIEnumerator(name: "PROFILE_HIGH444_PREDICTIVE", value: 244)
!1401 = !{!1402, !227, !215, !614, !17, !63}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !10, line: 89, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !10, line: 89, size: 32, elements: !1405)
!1405 = !{!1406, !1407, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1404, file: !10, line: 89, baseType: !176, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1404, file: !10, line: 89, baseType: !1408, size: 32)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 32, elements: !124)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1404, file: !10, line: 89, baseType: !766, size: 32)
!1410 = !{!0, !1411, !1414, !1419, !1425, !1428, !1430, !1433, !1436, !1439, !1443, !1447, !1450, !1452, !1460, !1463, !1493, !1496}
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(name: "x264_ue_size_tab", scope: !1323, file: !220, line: 188, type: !1413, isLocal: true, isDefinition: true)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 2048, elements: !268)
!1414 = !DIGlobalVariableExpression(var: !1415, expr: !DIExpression())
!1415 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode4x4_fix", scope: !1323, file: !971, line: 81, type: !1416, isLocal: true, isDefinition: true)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1417, size: 104, elements: !1418)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!1418 = !{!916}
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !1323, file: !10, line: 125, type: !1421, isLocal: true, isDefinition: true)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 864, elements: !1423)
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!1423 = !{!1424}
!1424 = !DISubrange(count: 27)
!1425 = !DIGlobalVariableExpression(var: !1426, expr: !DIExpression())
!1426 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !1323, file: !971, line: 42, type: !1427, isLocal: true, isDefinition: true)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 56, elements: !975)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode16x16_fix", scope: !1323, file: !971, line: 59, type: !1427, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(name: "sub_mb_type_p_to_golomb", scope: !1323, file: !3, line: 58, type: !1432, isLocal: true, isDefinition: true)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 32, elements: !375)
!1433 = !DIGlobalVariableExpression(var: !1434, expr: !DIExpression())
!1434 = distinct !DIGlobalVariable(name: "sub_mb_type_b_to_golomb", scope: !1323, file: !3, line: 62, type: !1435, isLocal: true, isDefinition: true)
!1435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 104, elements: !1418)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(name: "x264_mb_partition_listX_table", scope: !1323, file: !1327, line: 145, type: !1438, isLocal: true, isDefinition: true)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 272, elements: !575)
!1439 = !DIGlobalVariableExpression(var: !1440, expr: !DIExpression())
!1440 = distinct !DIGlobalVariable(name: "x264_mb_type_list_table", scope: !1323, file: !1327, line: 99, type: !1441, isLocal: true, isDefinition: true)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 608, elements: !1442)
!1442 = !{!671, !125, !125}
!1443 = !DIGlobalVariableExpression(var: !1444, expr: !DIExpression())
!1444 = distinct !DIGlobalVariable(name: "mb_type_b_to_golomb", scope: !1323, file: !3, line: 48, type: !1445, isLocal: true, isDefinition: true)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 216, elements: !1446)
!1446 = !{!467, !809}
!1447 = !DIGlobalVariableExpression(var: !1448, expr: !DIExpression())
!1448 = distinct !DIGlobalVariable(name: "intra4x4_cbp_to_golomb", scope: !1323, file: !3, line: 36, type: !1449, isLocal: true, isDefinition: true)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 384, elements: !834)
!1450 = !DIGlobalVariableExpression(var: !1451, expr: !DIExpression())
!1451 = distinct !DIGlobalVariable(name: "inter_cbp_to_golomb", scope: !1323, file: !3, line: 42, type: !1449, isLocal: true, isDefinition: true)
!1452 = !DIGlobalVariableExpression(var: !1453, expr: !DIExpression())
!1453 = distinct !DIGlobalVariable(name: "partition_tab", scope: !1454, file: !1327, line: 398, type: !1459, isLocal: true, isDefinition: true)
!1454 = distinct !DISubprogram(name: "x264_mb_transform_8x8_allowed", scope: !1327, file: !1327, line: 393, type: !1455, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1457)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!19, !6}
!1457 = !{!1458}
!1458 = !DILocalVariable(name: "h", arg: 1, scope: !1454, file: !1327, line: 393, type: !6)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 152, elements: !670)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(name: "ct_index", scope: !1323, file: !3, line: 201, type: !1462, isLocal: true, isDefinition: true)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 136, elements: !910)
!1463 = !DIGlobalVariableExpression(var: !1464, expr: !DIExpression())
!1464 = distinct !DIGlobalVariable(name: "ctz_index", scope: !1465, file: !3, line: 127, type: !1492, isLocal: true, isDefinition: true)
!1465 = distinct !DISubprogram(name: "block_residual_write_cavlc", scope: !3, file: !3, line: 124, type: !1466, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1468)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!19, !6, !19, !740, !19}
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1484, !1485, !1487, !1489}
!1469 = !DILocalVariable(name: "h", arg: 1, scope: !1465, file: !3, line: 124, type: !6)
!1470 = !DILocalVariable(name: "i_ctxBlockCat", arg: 2, scope: !1465, file: !3, line: 124, type: !19)
!1471 = !DILocalVariable(name: "l", arg: 3, scope: !1465, file: !3, line: 124, type: !740)
!1472 = !DILocalVariable(name: "nC", arg: 4, scope: !1465, file: !3, line: 124, type: !19)
!1473 = !DILocalVariable(name: "s", scope: !1465, file: !3, line: 126, type: !1474)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1475 = !DILocalVariable(name: "runlevel", scope: !1465, file: !3, line: 129, type: !1264)
!1476 = !DILocalVariable(name: "i_trailing", scope: !1465, file: !3, line: 130, type: !19)
!1477 = !DILocalVariable(name: "i_total_zero", scope: !1465, file: !3, line: 130, type: !19)
!1478 = !DILocalVariable(name: "i_suffix_length", scope: !1465, file: !3, line: 130, type: !19)
!1479 = !DILocalVariable(name: "i_total", scope: !1465, file: !3, line: 131, type: !19)
!1480 = !DILocalVariable(name: "i_sign", scope: !1465, file: !3, line: 132, type: !17)
!1481 = !DILocalVariable(name: "val", scope: !1482, file: !3, line: 158, type: !19)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 157, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 156, column: 9)
!1484 = !DILocalVariable(name: "val_original", scope: !1482, file: !3, line: 159, type: !19)
!1485 = !DILocalVariable(name: "i", scope: !1486, file: !3, line: 170, type: !19)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 170, column: 9)
!1487 = !DILocalVariable(name: "i", scope: !1488, file: !3, line: 191, type: !19)
!1488 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 191, column: 5)
!1489 = !DILocalVariable(name: "i_zl", scope: !1490, file: !3, line: 193, type: !19)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 192, column: 5)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 191, column: 5)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 64, elements: !449)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(name: "count_cat", scope: !1465, file: !3, line: 128, type: !1495, isLocal: true, isDefinition: true)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 40, elements: !923)
!1496 = !DIGlobalVariableExpression(var: !1497, expr: !DIExpression())
!1497 = distinct !DIGlobalVariable(name: "next_suffix", scope: !1498, file: !3, line: 75, type: !1510, isLocal: true, isDefinition: true)
!1498 = distinct !DISubprogram(name: "block_residual_write_cavlc_escape", scope: !3, file: !3, line: 72, type: !1499, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!19, !6, !19, !19}
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1502 = !DILocalVariable(name: "h", arg: 1, scope: !1498, file: !3, line: 72, type: !6)
!1503 = !DILocalVariable(name: "i_suffix_length", arg: 2, scope: !1498, file: !3, line: 72, type: !19)
!1504 = !DILocalVariable(name: "level", arg: 3, scope: !1498, file: !3, line: 72, type: !19)
!1505 = !DILocalVariable(name: "s", scope: !1498, file: !3, line: 74, type: !1474)
!1506 = !DILocalVariable(name: "i_level_prefix", scope: !1498, file: !3, line: 76, type: !19)
!1507 = !DILocalVariable(name: "mask", scope: !1498, file: !3, line: 77, type: !19)
!1508 = !DILocalVariable(name: "abs_level", scope: !1498, file: !3, line: 78, type: !19)
!1509 = !DILocalVariable(name: "i_level_code", scope: !1498, file: !3, line: 79, type: !19)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1511, size: 112, elements: !975)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1522, !1524, !1526, !1529, !1531, !1534, !1535, !1540, !1543, !1545, !1549, !1552, !1555, !1557, !1559, !1564, !1565, !1566, !1570, !1571, !1574, !1577, !1578, !1582, !1583, !1585, !1586, !1589, !1592}
!1513 = !DILocalVariable(name: "h", arg: 1, scope: !2, file: !3, line: 290, type: !6)
!1514 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 292, type: !1474)
!1515 = !DILocalVariable(name: "i_mb_type", scope: !2, file: !3, line: 293, type: !1422)
!1516 = !DILocalVariable(name: "i_mb_i_offset", scope: !2, file: !3, line: 295, type: !19)
!1517 = !DILocalVariable(name: "i_mb_pos_start", scope: !2, file: !3, line: 300, type: !1422)
!1518 = !DILocalVariable(name: "i_mb_pos_tex", scope: !2, file: !3, line: 301, type: !19)
!1519 = !DILocalVariable(name: "p_start", scope: !1520, file: !3, line: 313, type: !215)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 312, column: 5)
!1521 = distinct !DILexicalBlock(scope: !2, file: !3, line: 311, column: 9)
!1522 = !DILocalVariable(name: "i", scope: !1523, file: !3, line: 322, type: !19)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 322, column: 9)
!1524 = !DILocalVariable(name: "i", scope: !1525, file: !3, line: 325, type: !19)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 325, column: 9)
!1526 = !DILocalVariable(name: "di", scope: !1527, file: !3, line: 343, type: !19)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 342, column: 5)
!1528 = distinct !DILexicalBlock(scope: !2, file: !3, line: 341, column: 9)
!1529 = !DILocalVariable(name: "i", scope: !1530, file: !3, line: 349, type: !19)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 349, column: 9)
!1531 = !DILocalVariable(name: "i_pred", scope: !1532, file: !3, line: 351, type: !19)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 350, column: 9)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 349, column: 9)
!1534 = !DILocalVariable(name: "i_mode", scope: !1532, file: !3, line: 352, type: !19)
!1535 = !DILocalVariable(name: "b_sub_ref", scope: !1536, file: !3, line: 402, type: !19)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 401, column: 5)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 400, column: 14)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 367, column: 14)
!1539 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 361, column: 14)
!1540 = !DILocalVariable(name: "i", scope: !1541, file: !3, line: 417, type: !19)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 417, column: 13)
!1542 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 416, column: 13)
!1543 = !DILocalVariable(name: "i", scope: !1544, file: !3, line: 431, type: !19)
!1544 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 431, column: 9)
!1545 = !DILocalVariable(name: "i", scope: !1546, file: !3, line: 439, type: !19)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 439, column: 9)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 435, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 434, column: 14)
!1549 = !DILocalVariable(name: "i", scope: !1550, file: !3, line: 444, type: !19)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 444, column: 13)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 443, column: 13)
!1552 = !DILocalVariable(name: "i", scope: !1553, file: !3, line: 448, type: !19)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 448, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 447, column: 13)
!1555 = !DILocalVariable(name: "i", scope: !1556, file: !3, line: 453, type: !19)
!1556 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 453, column: 9)
!1557 = !DILocalVariable(name: "i", scope: !1558, file: !3, line: 456, type: !19)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 456, column: 9)
!1559 = !DILocalVariable(name: "b_list", scope: !1560, file: !3, line: 464, type: !1562)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 461, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 460, column: 14)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 16, elements: !124)
!1564 = !DILocalVariable(name: "i_ref0_max", scope: !1560, file: !3, line: 465, type: !1422)
!1565 = !DILocalVariable(name: "i_ref1_max", scope: !1560, file: !3, line: 466, type: !1422)
!1566 = !DILocalVariable(name: "nC", scope: !1567, file: !3, line: 522, type: !19)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 522, column: 9)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 518, column: 5)
!1569 = distinct !DILexicalBlock(scope: !2, file: !3, line: 517, column: 9)
!1570 = !DILocalVariable(name: "nnz", scope: !1567, file: !3, line: 522, type: !215)
!1571 = !DILocalVariable(name: "i", scope: !1572, file: !3, line: 526, type: !19)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 526, column: 13)
!1573 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 525, column: 13)
!1574 = !DILocalVariable(name: "nC", scope: !1575, file: !3, line: 527, type: !19)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 527, column: 17)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 526, column: 13)
!1577 = !DILocalVariable(name: "nnz", scope: !1575, file: !3, line: 527, type: !215)
!1578 = !DILocalVariable(name: "nC", scope: !1579, file: !3, line: 537, type: !19)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 537, column: 9)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !3, line: 535, column: 5)
!1581 = distinct !DILexicalBlock(scope: !2, file: !3, line: 534, column: 9)
!1582 = !DILocalVariable(name: "nnz", scope: !1579, file: !3, line: 537, type: !215)
!1583 = !DILocalVariable(name: "nC", scope: !1584, file: !3, line: 538, type: !19)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 538, column: 9)
!1585 = !DILocalVariable(name: "nnz", scope: !1584, file: !3, line: 538, type: !215)
!1586 = !DILocalVariable(name: "i", scope: !1587, file: !3, line: 540, type: !19)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 540, column: 13)
!1588 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 539, column: 13)
!1589 = !DILocalVariable(name: "nC", scope: !1590, file: !3, line: 541, type: !19)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 541, column: 17)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 540, column: 13)
!1592 = !DILocalVariable(name: "nnz", scope: !1590, file: !3, line: 541, type: !215)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 24, elements: !540)
!1594 = !{i32 7, !"Dwarf Version", i32 5}
!1595 = !{i32 2, !"Debug Info Version", i32 3}
!1596 = !{i32 1, !"wchar_size", i32 4}
!1597 = !{i32 7, !"PIC Level", i32 2}
!1598 = !{i32 7, !"PIE Level", i32 2}
!1599 = !{i32 7, !"uwtable", i32 2}
!1600 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1601 = !DILocation(line: 0, scope: !2)
!1602 = !DILocation(line: 292, column: 23, scope: !2)
!1603 = !DILocation(line: 293, column: 33, scope: !2)
!1604 = !{!1605, !1607, i64 17384}
!1605 = !{!"x264_t", !1606, i64 0, !1608, i64 704, !1607, i64 1736, !1607, i64 1740, !1607, i64 1744, !1607, i64 1748, !1607, i64 1752, !1615, i64 1760, !1611, i64 1832, !1607, i64 1840, !1607, i64 1844, !1607, i64 1848, !1607, i64 1852, !1607, i64 1856, !1607, i64 1860, !1607, i64 1864, !1607, i64 1868, !1607, i64 1872, !1607, i64 1876, !1607, i64 1880, !1607, i64 1884, !1607, i64 1888, !1607, i64 1892, !1608, i64 1896, !1611, i64 3200, !1608, i64 3208, !1611, i64 3328, !1607, i64 3336, !1607, i64 3340, !1608, i64 3344, !1608, i64 3376, !1608, i64 3392, !1608, i64 3424, !1608, i64 3440, !1608, i64 3472, !1608, i64 3488, !1608, i64 3520, !1608, i64 3536, !1608, i64 4272, !1611, i64 7216, !1618, i64 7232, !1619, i64 13904, !1620, i64 14416, !1611, i64 14680, !1611, i64 14688, !1607, i64 14696, !1608, i64 14704, !1607, i64 14856, !1608, i64 14864, !1608, i64 15016, !1607, i64 15024, !1607, i64 15028, !1617, i64 15032, !1621, i64 15040, !1622, i64 16368, !1611, i64 26704, !1625, i64 26712, !1608, i64 30400, !1608, i64 30912, !1608, i64 31168, !1611, i64 31176, !1608, i64 31184, !1608, i64 31232, !1608, i64 31248, !1608, i64 31304, !1608, i64 31360, !1608, i64 31456, !1611, i64 31552, !1628, i64 31560, !1629, i64 32616, !1630, i64 32912, !1631, i64 33032, !1632, i64 33080, !1633, i64 33256, !1611, i64 33328}
!1606 = !{!"x264_param_t", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1610, i64 44, !1607, i64 80, !1607, i64 84, !1607, i64 88, !1607, i64 92, !1607, i64 96, !1607, i64 100, !1607, i64 104, !1607, i64 108, !1607, i64 112, !1607, i64 116, !1607, i64 120, !1607, i64 124, !1607, i64 128, !1607, i64 132, !1607, i64 136, !1607, i64 140, !1607, i64 144, !1611, i64 152, !1608, i64 160, !1608, i64 176, !1608, i64 192, !1608, i64 208, !1608, i64 224, !1608, i64 288, !1611, i64 352, !1611, i64 360, !1607, i64 368, !1607, i64 372, !1611, i64 376, !1612, i64 384, !1614, i64 488, !1607, i64 632, !1607, i64 636, !1607, i64 640, !1607, i64 644, !1607, i64 648, !1607, i64 652, !1607, i64 656, !1607, i64 660, !1607, i64 664, !1607, i64 668, !1607, i64 672, !1607, i64 676, !1607, i64 680, !1607, i64 684, !1607, i64 688, !1607, i64 692, !1611, i64 696}
!1607 = !{!"int", !1608, i64 0}
!1608 = !{!"omnipotent char", !1609, i64 0}
!1609 = !{!"Simple C/C++ TBAA"}
!1610 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32}
!1611 = !{!"any pointer", !1608, i64 0}
!1612 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1607, i64 52, !1607, i64 56, !1607, i64 60, !1607, i64 64, !1607, i64 68, !1613, i64 72, !1613, i64 76, !1607, i64 80, !1608, i64 84, !1607, i64 92, !1607, i64 96}
!1613 = !{!"float", !1608, i64 0}
!1614 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1613, i64 24, !1613, i64 28, !1613, i64 32, !1607, i64 36, !1607, i64 40, !1613, i64 44, !1613, i64 48, !1613, i64 52, !1607, i64 56, !1613, i64 60, !1607, i64 64, !1607, i64 68, !1607, i64 72, !1611, i64 80, !1607, i64 88, !1611, i64 96, !1613, i64 104, !1613, i64 108, !1613, i64 112, !1611, i64 120, !1607, i64 128, !1611, i64 136}
!1615 = !{!"", !1607, i64 0, !1607, i64 4, !1611, i64 8, !1607, i64 16, !1611, i64 24, !1616, i64 32}
!1616 = !{!"bs_s", !1611, i64 0, !1611, i64 8, !1611, i64 16, !1617, i64 24, !1607, i64 32, !1607, i64 36}
!1617 = !{!"long", !1608, i64 0}
!1618 = !{!"", !1611, i64 0, !1611, i64 8, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1607, i64 52, !1607, i64 56, !1608, i64 60, !1607, i64 68, !1607, i64 72, !1607, i64 76, !1607, i64 80, !1607, i64 84, !1607, i64 88, !1607, i64 92, !1608, i64 96, !1608, i64 352, !1607, i64 6496, !1607, i64 6500, !1608, i64 6504, !1607, i64 6632, !1607, i64 6636, !1607, i64 6640, !1607, i64 6644, !1607, i64 6648, !1607, i64 6652, !1607, i64 6656, !1607, i64 6660}
!1619 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1611, i64 16, !1611, i64 24, !1611, i64 32, !1607, i64 48, !1608, i64 52}
!1620 = !{!"", !1611, i64 0, !1608, i64 8, !1611, i64 24, !1608, i64 32, !1607, i64 176, !1607, i64 180, !1607, i64 184, !1607, i64 188, !1607, i64 192, !1607, i64 196, !1607, i64 200, !1617, i64 208, !1617, i64 216, !1608, i64 224, !1617, i64 240, !1617, i64 248, !1607, i64 256, !1607, i64 260}
!1621 = !{!"", !1608, i64 0, !1608, i64 32, !1608, i64 48, !1608, i64 560}
!1622 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1607, i64 52, !1607, i64 56, !1607, i64 60, !1607, i64 64, !1607, i64 68, !1608, i64 72, !1608, i64 80, !1608, i64 88, !1608, i64 96, !1608, i64 104, !1608, i64 112, !1607, i64 120, !1608, i64 124, !1608, i64 140, !1607, i64 204, !1607, i64 208, !1607, i64 212, !1607, i64 216, !1607, i64 220, !1607, i64 224, !1607, i64 228, !1607, i64 232, !1607, i64 236, !1607, i64 240, !1607, i64 244, !1611, i64 248, !1611, i64 256, !1611, i64 264, !1611, i64 272, !1611, i64 280, !1611, i64 288, !1611, i64 296, !1608, i64 304, !1608, i64 320, !1608, i64 336, !1608, i64 352, !1611, i64 864, !1611, i64 872, !1611, i64 880, !1608, i64 888, !1607, i64 1016, !1607, i64 1020, !1608, i64 1024, !1607, i64 1028, !1607, i64 1032, !1607, i64 1036, !1607, i64 1040, !1607, i64 1044, !1607, i64 1048, !1607, i64 1052, !1607, i64 1056, !1607, i64 1060, !1623, i64 1072, !1624, i64 8656, !1607, i64 9424, !1607, i64 9428, !1607, i64 9432, !1607, i64 9436, !1607, i64 9440, !1607, i64 9444, !1607, i64 9448, !1607, i64 9452, !1608, i64 9456, !1607, i64 9472, !1607, i64 9476, !1608, i64 9480, !1611, i64 9992, !1608, i64 10000, !1611, i64 10256, !1608, i64 10264, !1607, i64 10284, !1608, i64 10288}
!1623 = !{!"", !1608, i64 0, !1608, i64 384, !1608, i64 1248, !1608, i64 1504, !1608, i64 1760, !1608, i64 2144, !1608, i64 2624, !1608, i64 2640, !1607, i64 2656, !1607, i64 2660, !1608, i64 2672, !1608, i64 3184, !1608, i64 3696, !1608, i64 3776, !1608, i64 3904, !1608, i64 3928, !1608, i64 3952, !1608, i64 3976, !1608, i64 3984, !1608, i64 7056, !1608, i64 7312, !1608, i64 7568}
!1624 = !{!"", !1608, i64 0, !1608, i64 48, !1608, i64 96, !1608, i64 176, !1608, i64 496, !1608, i64 656, !1608, i64 696, !1608, i64 728, !1607, i64 736, !1608, i64 740, !1607, i64 744, !1607, i64 748, !1607, i64 752, !1607, i64 756}
!1625 = !{!"", !1626, i64 0, !1608, i64 704, !1608, i64 728, !1608, i64 768, !1608, i64 808, !1608, i64 880, !1608, i64 920, !1608, i64 960, !1608, i64 1000, !1608, i64 1040, !1608, i64 1080, !1608, i64 1120, !1608, i64 1880, !1608, i64 2152, !1608, i64 2168, !1608, i64 3192, !1608, i64 3240, !1608, i64 3656, !1608, i64 3664, !1608, i64 3672}
!1626 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1608, i64 12, !1607, i64 88, !1607, i64 92, !1607, i64 96, !1608, i64 100, !1608, i64 108, !1608, i64 364, !1608, i64 432, !1608, i64 456, !1608, i64 664, !1608, i64 672, !1627, i64 696}
!1627 = !{!"double", !1608, i64 0}
!1628 = !{!"", !1608, i64 0, !1608, i64 56, !1608, i64 112, !1608, i64 168, !1608, i64 224, !1608, i64 256, !1608, i64 312, !1608, i64 368, !1608, i64 424, !1608, i64 480, !1608, i64 536, !1611, i64 592, !1608, i64 600, !1608, i64 632, !1611, i64 664, !1611, i64 672, !1608, i64 680, !1608, i64 736, !1608, i64 792, !1608, i64 848, !1608, i64 904, !1611, i64 960, !1611, i64 968, !1611, i64 976, !1611, i64 984, !1611, i64 992, !1611, i64 1000, !1611, i64 1008, !1611, i64 1016, !1611, i64 1024, !1611, i64 1032, !1611, i64 1040, !1611, i64 1048}
!1629 = !{!"", !1611, i64 0, !1611, i64 8, !1611, i64 16, !1608, i64 24, !1608, i64 104, !1611, i64 160, !1611, i64 168, !1611, i64 176, !1611, i64 184, !1611, i64 192, !1611, i64 200, !1611, i64 208, !1611, i64 216, !1611, i64 224, !1611, i64 232, !1611, i64 240, !1611, i64 248, !1611, i64 256, !1611, i64 264, !1611, i64 272, !1611, i64 280, !1611, i64 288}
!1630 = !{!"", !1611, i64 0, !1611, i64 8, !1611, i64 16, !1611, i64 24, !1611, i64 32, !1611, i64 40, !1611, i64 48, !1611, i64 56, !1611, i64 64, !1611, i64 72, !1611, i64 80, !1611, i64 88, !1611, i64 96, !1611, i64 104, !1611, i64 112}
!1631 = !{!"", !1611, i64 0, !1611, i64 8, !1611, i64 16, !1611, i64 24, !1611, i64 32, !1611, i64 40}
!1632 = !{!"", !1611, i64 0, !1611, i64 8, !1611, i64 16, !1611, i64 24, !1611, i64 32, !1611, i64 40, !1611, i64 48, !1611, i64 56, !1611, i64 64, !1611, i64 72, !1611, i64 80, !1608, i64 88, !1608, i64 136}
!1633 = !{!"", !1608, i64 0, !1608, i64 16, !1608, i64 32, !1608, i64 48, !1611, i64 64}
!1634 = !DILocation(line: 295, column: 41, scope: !2)
!1635 = !{!1605, !1607, i64 7248}
!1636 = !DILocation(line: 295, column: 25, scope: !2)
!1637 = !{!1608, !1608, i64 0}
!1638 = !DILocalVariable(name: "s", arg: 1, scope: !1639, file: !220, line: 88, type: !1474)
!1639 = distinct !DISubprogram(name: "bs_pos", scope: !220, file: !220, line: 88, type: !1640, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!19, !1474}
!1642 = !{!1638}
!1643 = !DILocation(line: 0, scope: !1639, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 300, column: 32, scope: !2)
!1645 = !DILocation(line: 90, column: 21, scope: !1639, inlinedAt: !1644)
!1646 = !{!1616, !1611, i64 8}
!1647 = !DILocation(line: 90, column: 28, scope: !1639, inlinedAt: !1644)
!1648 = !{!1616, !1611, i64 0}
!1649 = !DILocation(line: 90, column: 23, scope: !1639, inlinedAt: !1644)
!1650 = !DILocation(line: 90, column: 58, scope: !1639, inlinedAt: !1644)
!1651 = !{!1616, !1607, i64 32}
!1652 = !DILocation(line: 90, column: 11, scope: !1639, inlinedAt: !1644)
!1653 = !DILocation(line: 304, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !2, file: !3, line: 304, column: 9)
!1655 = !{!1605, !1607, i64 7268}
!1656 = !DILocation(line: 304, column: 9, scope: !1654)
!1657 = !DILocation(line: 305, column: 9, scope: !1654)
!1658 = !DILocation(line: 305, column: 21, scope: !1654)
!1659 = !{!1605, !1607, i64 16388}
!1660 = !DILocation(line: 305, column: 28, scope: !1654)
!1661 = !DILocation(line: 305, column: 33, scope: !1654)
!1662 = !DILocation(line: 305, column: 36, scope: !1654)
!1663 = !{!1605, !1611, i64 16616}
!1664 = !{!1605, !1607, i64 16392}
!1665 = !{!1605, !1607, i64 16372}
!1666 = !DILocation(line: 307, column: 29, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 306, column: 5)
!1668 = !{!1605, !1607, i64 16436}
!1669 = !DILocalVariable(name: "s", arg: 1, scope: !1670, file: !220, line: 157, type: !1474)
!1670 = distinct !DISubprogram(name: "bs_write1", scope: !220, file: !220, line: 157, type: !1671, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1474, !176}
!1673 = !{!1669, !1674}
!1674 = !DILocalVariable(name: "i_bit", arg: 2, scope: !1670, file: !220, line: 157, type: !176)
!1675 = !DILocation(line: 0, scope: !1670, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 307, column: 9, scope: !1667)
!1677 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !1676)
!1678 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !1676)
!1679 = !{!1616, !1617, i64 24}
!1680 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !1676)
!1681 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !1676)
!1682 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !1676)
!1683 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !1676)
!1684 = distinct !DILexicalBlock(scope: !1670, file: !220, line: 162, column: 9)
!1685 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !1676)
!1686 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !1676)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !220, line: 163, column: 5)
!1688 = !DILocalVariable(name: "x", arg: 1, scope: !1689, file: !1690, line: 262, type: !176)
!1689 = distinct !DISubprogram(name: "endian_fix32", scope: !1690, file: !1690, line: 262, type: !1691, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1693)
!1690 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/osdep.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "abed2b0134391efe02a749d457632ae9")
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!176, !176}
!1693 = !{!1688}
!1694 = !DILocation(line: 0, scope: !1689, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !1676)
!1696 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !1695)
!1697 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !1676)
!1698 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !1676)
!1699 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !1676)
!1700 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !1676)
!1701 = !DILocation(line: 311, column: 19, scope: !1521)
!1702 = !DILocation(line: 311, column: 9, scope: !2)
!1703 = !DILocation(line: 313, column: 31, scope: !1520)
!1704 = !DILocation(line: 0, scope: !1520)
!1705 = !DILocalVariable(name: "s", arg: 1, scope: !1706, file: !220, line: 228, type: !1474)
!1706 = distinct !DISubprogram(name: "bs_write_ue", scope: !220, file: !220, line: 228, type: !1707, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1474, !19}
!1709 = !{!1705, !1710}
!1710 = !DILocalVariable(name: "val", arg: 2, scope: !1706, file: !220, line: 228, type: !19)
!1711 = !DILocation(line: 0, scope: !1706, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 314, column: 9, scope: !1520)
!1713 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !1712)
!1714 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !1712)
!1715 = !DILocalVariable(name: "s", arg: 1, scope: !1716, file: !220, line: 113, type: !1474)
!1716 = distinct !DISubprogram(name: "bs_write", scope: !220, file: !220, line: 113, type: !1717, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1719)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1474, !19, !176}
!1719 = !{!1715, !1720, !1721}
!1720 = !DILocalVariable(name: "i_count", arg: 2, scope: !1716, file: !220, line: 113, type: !19)
!1721 = !DILocalVariable(name: "i_bits", arg: 3, scope: !1716, file: !220, line: 113, type: !176)
!1722 = !DILocation(line: 0, scope: !1716, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !1712)
!1724 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !1723)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !220, line: 116, column: 5)
!1726 = distinct !DILexicalBlock(scope: !1716, file: !220, line: 115, column: 9)
!1727 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !1723)
!1728 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !1723)
!1729 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !1723)
!1730 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !1723)
!1731 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !1723)
!1732 = distinct !DILexicalBlock(scope: !1725, file: !220, line: 119, column: 13)
!1733 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !1723)
!1734 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !1723)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !220, line: 120, column: 9)
!1736 = !DILocalVariable(name: "x", arg: 1, scope: !1737, file: !1690, line: 280, type: !227)
!1737 = distinct !DISubprogram(name: "endian_fix", scope: !1690, file: !1690, line: 280, type: !1738, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!227, !227}
!1740 = !{!1736}
!1741 = !DILocation(line: 0, scope: !1737, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1723)
!1743 = !DILocalVariable(name: "x", arg: 1, scope: !1744, file: !1690, line: 275, type: !614)
!1744 = distinct !DISubprogram(name: "endian_fix64", scope: !1690, file: !1690, line: 275, type: !1745, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!614, !614}
!1747 = !{!1743}
!1748 = !DILocation(line: 0, scope: !1744, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !1742)
!1750 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !1749)
!1751 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1723)
!1752 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !1723)
!1753 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !1723)
!1754 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !1723)
!1755 = !DILocation(line: 90, column: 28, scope: !1639, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 315, column: 24, scope: !1520)
!1757 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 172, column: 5, scope: !1759, inlinedAt: !1764)
!1759 = distinct !DISubprogram(name: "bs_align_0", scope: !220, file: !220, line: 170, type: !1760, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1474}
!1762 = !{!1763}
!1763 = !DILocalVariable(name: "s", arg: 1, scope: !1759, file: !220, line: 170, type: !1474)
!1764 = distinct !DILocation(line: 318, column: 9, scope: !1520)
!1765 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !1723)
!1766 = !DILocation(line: 90, column: 58, scope: !1639, inlinedAt: !1756)
!1767 = !DILocation(line: 90, column: 21, scope: !1639, inlinedAt: !1756)
!1768 = !DILocation(line: 0, scope: !1639, inlinedAt: !1756)
!1769 = !DILocation(line: 90, column: 23, scope: !1639, inlinedAt: !1756)
!1770 = !DILocation(line: 90, column: 11, scope: !1639, inlinedAt: !1756)
!1771 = !DILocation(line: 316, column: 12, scope: !1520)
!1772 = !DILocation(line: 316, column: 33, scope: !1520)
!1773 = !{!1605, !1607, i64 26712}
!1774 = !DILocation(line: 316, column: 49, scope: !1520)
!1775 = !DILocation(line: 0, scope: !1759, inlinedAt: !1764)
!1776 = !DILocation(line: 172, column: 27, scope: !1759, inlinedAt: !1764)
!1777 = !DILocation(line: 0, scope: !1716, inlinedAt: !1758)
!1778 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !1758)
!1779 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !1758)
!1780 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !1758)
!1781 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !1758)
!1782 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !1758)
!1783 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !1758)
!1784 = !DILocation(line: 0, scope: !1737, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1758)
!1786 = !DILocation(line: 0, scope: !1744, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !1785)
!1788 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !1787)
!1789 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1758)
!1790 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !1758)
!1791 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !1758)
!1792 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !1758)
!1793 = !DILocation(line: 96, column: 36, scope: !1794, inlinedAt: !1797)
!1794 = distinct !DISubprogram(name: "bs_flush", scope: !220, file: !220, line: 94, type: !1760, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1795)
!1795 = !{!1796}
!1796 = !DILocalVariable(name: "s", arg: 1, scope: !1794, file: !220, line: 94, type: !1474)
!1797 = distinct !DILocation(line: 173, column: 5, scope: !1759, inlinedAt: !1764)
!1798 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !1758)
!1799 = !DILocation(line: 96, column: 5, scope: !1794, inlinedAt: !1797)
!1800 = !DILocation(line: 96, column: 52, scope: !1794, inlinedAt: !1797)
!1801 = !DILocation(line: 0, scope: !1794, inlinedAt: !1797)
!1802 = !DILocation(line: 96, column: 58, scope: !1794, inlinedAt: !1797)
!1803 = !DILocation(line: 96, column: 45, scope: !1794, inlinedAt: !1797)
!1804 = !DILocation(line: 96, column: 33, scope: !1794, inlinedAt: !1797)
!1805 = !DILocation(line: 0, scope: !1689, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 96, column: 19, scope: !1794, inlinedAt: !1797)
!1807 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !1806)
!1808 = !DILocation(line: 96, column: 17, scope: !1794, inlinedAt: !1797)
!1809 = !DILocation(line: 97, column: 28, scope: !1794, inlinedAt: !1797)
!1810 = !DILocation(line: 97, column: 35, scope: !1794, inlinedAt: !1797)
!1811 = !DILocation(line: 97, column: 23, scope: !1794, inlinedAt: !1797)
!1812 = !DILocation(line: 97, column: 10, scope: !1794, inlinedAt: !1797)
!1813 = !DILocation(line: 98, column: 15, scope: !1794, inlinedAt: !1797)
!1814 = !DILocation(line: 320, column: 33, scope: !1520)
!1815 = !DILocation(line: 320, column: 23, scope: !1520)
!1816 = !{!1611, !1611, i64 0}
!1817 = !DILocation(line: 320, column: 9, scope: !1520)
!1818 = !DILocation(line: 321, column: 14, scope: !1520)
!1819 = !DILocation(line: 0, scope: !1523)
!1820 = !DILocation(line: 322, column: 9, scope: !1523)
!1821 = !DILocation(line: 324, column: 14, scope: !1520)
!1822 = !DILocation(line: 0, scope: !1525)
!1823 = !DILocation(line: 325, column: 9, scope: !1525)
!1824 = !DILocation(line: 323, column: 24, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 322, column: 9)
!1826 = !DILocation(line: 323, column: 29, scope: !1825)
!1827 = !DILocation(line: 323, column: 26, scope: !1825)
!1828 = !DILocation(line: 323, column: 33, scope: !1825)
!1829 = !DILocation(line: 323, column: 56, scope: !1825)
!1830 = !DILocation(line: 323, column: 53, scope: !1825)
!1831 = !DILocation(line: 323, column: 13, scope: !1825)
!1832 = !DILocation(line: 322, column: 33, scope: !1825)
!1833 = !DILocation(line: 322, column: 27, scope: !1825)
!1834 = distinct !{!1834, !1820, !1835, !1836, !1837}
!1835 = !DILocation(line: 323, column: 72, scope: !1523)
!1836 = !{!"llvm.loop.mustprogress"}
!1837 = !{!"llvm.loop.unroll.disable"}
!1838 = !DILocation(line: 327, column: 14, scope: !1520)
!1839 = !DILocation(line: 329, column: 30, scope: !1520)
!1840 = !{!1616, !1611, i64 16}
!1841 = !DILocation(line: 329, column: 36, scope: !1520)
!1842 = !DILocalVariable(name: "s", arg: 1, scope: !1843, file: !220, line: 79, type: !1474)
!1843 = distinct !DISubprogram(name: "bs_init", scope: !220, file: !220, line: 79, type: !1844, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1474, !82, !19}
!1846 = !{!1842, !1847, !1848, !1849}
!1847 = !DILocalVariable(name: "p_data", arg: 2, scope: !1843, file: !220, line: 79, type: !82)
!1848 = !DILocalVariable(name: "i_data", arg: 3, scope: !1843, file: !220, line: 79, type: !19)
!1849 = !DILocalVariable(name: "offset", scope: !1843, file: !220, line: 81, type: !19)
!1850 = !DILocation(line: 0, scope: !1843, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 329, column: 9, scope: !1520)
!1852 = !DILocation(line: 81, column: 18, scope: !1843, inlinedAt: !1851)
!1853 = !DILocation(line: 82, column: 48, scope: !1843, inlinedAt: !1851)
!1854 = !DILocation(line: 82, column: 29, scope: !1843, inlinedAt: !1851)
!1855 = !DILocation(line: 82, column: 16, scope: !1843, inlinedAt: !1851)
!1856 = !DILocation(line: 83, column: 35, scope: !1843, inlinedAt: !1851)
!1857 = !DILocation(line: 83, column: 16, scope: !1843, inlinedAt: !1851)
!1858 = !DILocation(line: 84, column: 38, scope: !1843, inlinedAt: !1851)
!1859 = !DILocation(line: 84, column: 16, scope: !1843, inlinedAt: !1851)
!1860 = !DILocation(line: 85, column: 33, scope: !1843, inlinedAt: !1851)
!1861 = !DILocation(line: 0, scope: !1689, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 85, column: 19, scope: !1843, inlinedAt: !1851)
!1863 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !1862)
!1864 = !DILocation(line: 85, column: 19, scope: !1843, inlinedAt: !1851)
!1865 = !DILocation(line: 86, column: 31, scope: !1843, inlinedAt: !1851)
!1866 = !DILocation(line: 86, column: 17, scope: !1843, inlinedAt: !1851)
!1867 = !DILocation(line: 330, column: 20, scope: !1520)
!1868 = !DILocation(line: 0, scope: !1639, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 332, column: 37, scope: !1520)
!1870 = !DILocation(line: 90, column: 23, scope: !1639, inlinedAt: !1869)
!1871 = !DILocation(line: 90, column: 11, scope: !1639, inlinedAt: !1869)
!1872 = !DILocation(line: 332, column: 47, scope: !1520)
!1873 = !DILocation(line: 332, column: 23, scope: !1520)
!1874 = !DILocation(line: 332, column: 34, scope: !1520)
!1875 = !{!1605, !1607, i64 26716}
!1876 = !DILocation(line: 326, column: 24, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 325, column: 9)
!1878 = !DILocation(line: 326, column: 29, scope: !1877)
!1879 = !DILocation(line: 326, column: 26, scope: !1877)
!1880 = !DILocation(line: 326, column: 33, scope: !1877)
!1881 = !DILocation(line: 326, column: 56, scope: !1877)
!1882 = !DILocation(line: 326, column: 53, scope: !1877)
!1883 = !DILocation(line: 326, column: 13, scope: !1877)
!1884 = !DILocation(line: 325, column: 33, scope: !1877)
!1885 = !DILocation(line: 325, column: 27, scope: !1877)
!1886 = distinct !{!1886, !1823, !1887, !1836, !1837}
!1887 = !DILocation(line: 326, column: 72, scope: !1525)
!1888 = !DILocation(line: 341, column: 28, scope: !1528)
!1889 = !DILocation(line: 343, column: 18, scope: !1527)
!1890 = !DILocation(line: 0, scope: !1527)
!1891 = !DILocation(line: 0, scope: !1706, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 344, column: 9, scope: !1527)
!1893 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !1892)
!1894 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !1892)
!1895 = !DILocation(line: 0, scope: !1716, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !1892)
!1897 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !1896)
!1898 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !1896)
!1899 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !1896)
!1900 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !1896)
!1901 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !1896)
!1902 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !1896)
!1903 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !1896)
!1904 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !1896)
!1905 = !DILocation(line: 0, scope: !1737, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1896)
!1907 = !DILocation(line: 0, scope: !1744, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !1906)
!1909 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !1908)
!1910 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1896)
!1911 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !1896)
!1912 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !1896)
!1913 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !1896)
!1914 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !1896)
!1915 = !DILocation(line: 345, column: 16, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 345, column: 13)
!1917 = !{!1605, !1611, i64 3328}
!1918 = !DILocation(line: 345, column: 21, scope: !1916)
!1919 = !{!1920, !1607, i64 60}
!1920 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1607, i64 52, !1607, i64 56, !1607, i64 60, !1607, i64 64, !1608, i64 72}
!1921 = !DILocation(line: 345, column: 13, scope: !1916)
!1922 = !DILocation(line: 345, column: 13, scope: !1527)
!1923 = !DILocation(line: 346, column: 33, scope: !1916)
!1924 = !{!1605, !1607, i64 17396}
!1925 = !DILocation(line: 0, scope: !1670, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 346, column: 13, scope: !1916)
!1927 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !1926)
!1928 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !1926)
!1929 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !1926)
!1930 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !1926)
!1931 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !1926)
!1932 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !1926)
!1933 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !1926)
!1934 = !DILocation(line: 0, scope: !1689, inlinedAt: !1935)
!1935 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !1926)
!1936 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !1935)
!1937 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !1926)
!1938 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !1926)
!1939 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !1926)
!1940 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !1926)
!1941 = !DILocation(line: 0, scope: !1530)
!1942 = !DILocation(line: 349, column: 9, scope: !1530)
!1943 = !DILocation(line: 359, column: 58, scope: !1527)
!1944 = !{!1605, !1607, i64 17412}
!1945 = !DILocation(line: 359, column: 25, scope: !1527)
!1946 = !DILocation(line: 0, scope: !1706, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 359, column: 9, scope: !1527)
!1948 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !1947)
!1949 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !1947)
!1950 = !DILocation(line: 0, scope: !1716, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !1947)
!1952 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !1951)
!1953 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !1951)
!1954 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !1951)
!1955 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !1951)
!1956 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !1951)
!1957 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !1951)
!1958 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !1951)
!1959 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !1951)
!1960 = !DILocation(line: 0, scope: !1737, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1951)
!1962 = !DILocation(line: 0, scope: !1744, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !1961)
!1964 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !1963)
!1965 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !1951)
!1966 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !1951)
!1967 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !1951)
!1968 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !1951)
!1969 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !1951)
!1970 = !DILocalVariable(name: "h", arg: 1, scope: !1971, file: !1327, line: 366, type: !6)
!1971 = distinct !DISubprogram(name: "x264_mb_predict_intra4x4_mode", scope: !1327, file: !1327, line: 366, type: !1972, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!19, !6, !19}
!1974 = !{!1970, !1975, !1976, !1977, !1978}
!1975 = !DILocalVariable(name: "idx", arg: 2, scope: !1971, file: !1327, line: 366, type: !19)
!1976 = !DILocalVariable(name: "ma", scope: !1971, file: !1327, line: 368, type: !1422)
!1977 = !DILocalVariable(name: "mb", scope: !1971, file: !1327, line: 369, type: !1422)
!1978 = !DILocalVariable(name: "m", scope: !1971, file: !1327, line: 370, type: !1422)
!1979 = !DILocation(line: 0, scope: !1971, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 351, column: 26, scope: !1532)
!1981 = !DILocation(line: 368, column: 51, scope: !1971, inlinedAt: !1980)
!1982 = !{!1607, !1607, i64 0}
!1983 = !DILocation(line: 368, column: 67, scope: !1971, inlinedAt: !1980)
!1984 = !DILocation(line: 368, column: 20, scope: !1971, inlinedAt: !1980)
!1985 = !DILocation(line: 369, column: 67, scope: !1971, inlinedAt: !1980)
!1986 = !DILocation(line: 369, column: 20, scope: !1971, inlinedAt: !1980)
!1987 = !DILocation(line: 370, column: 20, scope: !1971, inlinedAt: !1980)
!1988 = !DILocation(line: 373, column: 11, scope: !1989, inlinedAt: !1980)
!1989 = distinct !DILexicalBlock(scope: !1971, file: !1327, line: 373, column: 9)
!1990 = !DILocation(line: 373, column: 9, scope: !1971, inlinedAt: !1980)
!1991 = !DILocation(line: 0, scope: !1532)
!1992 = !DILocation(line: 352, column: 26, scope: !1532)
!1993 = !DILocation(line: 354, column: 24, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 354, column: 17)
!1995 = !DILocation(line: 354, column: 17, scope: !1532)
!1996 = !DILocation(line: 0, scope: !1670, inlinedAt: !1997)
!1997 = distinct !DILocation(line: 355, column: 17, scope: !1994)
!1998 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !1997)
!1999 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !1997)
!2000 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !1997)
!2001 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !1997)
!2002 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !1997)
!2003 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !1997)
!2004 = !DILocation(line: 0, scope: !1689, inlinedAt: !2005)
!2005 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !1997)
!2006 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2005)
!2007 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !1997)
!2008 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !1997)
!2009 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !1997)
!2010 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !1997)
!2011 = !DILocation(line: 357, column: 50, scope: !1994)
!2012 = !DILocation(line: 357, column: 40, scope: !1994)
!2013 = !DILocation(line: 0, scope: !1716, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 357, column: 17, scope: !1994)
!2015 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2014)
!2016 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2014)
!2017 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2014)
!2018 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2014)
!2019 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2014)
!2020 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2014)
!2021 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2014)
!2022 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2014)
!2023 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2014)
!2024 = !DILocation(line: 0, scope: !1737, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2014)
!2026 = !DILocation(line: 0, scope: !1744, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2025)
!2028 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2027)
!2029 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2014)
!2030 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2014)
!2031 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2014)
!2032 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2014)
!2033 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2014)
!2034 = !DILocation(line: 349, column: 35, scope: !1533)
!2035 = !DILocation(line: 349, column: 27, scope: !1533)
!2036 = distinct !{!2036, !1942, !2037, !1836, !1837}
!2037 = !DILocation(line: 358, column: 9, scope: !1530)
!2038 = !DILocation(line: 361, column: 14, scope: !1528)
!2039 = !DILocation(line: 363, column: 78, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 362, column: 5)
!2041 = !{!1605, !1607, i64 17408}
!2042 = !DILocation(line: 363, column: 45, scope: !2040)
!2043 = !DILocation(line: 364, column: 31, scope: !2040)
!2044 = !{!1605, !1607, i64 17404}
!2045 = !DILocation(line: 364, column: 44, scope: !2040)
!2046 = !DILocation(line: 364, column: 58, scope: !2040)
!2047 = !{!1605, !1607, i64 17400}
!2048 = !DILocation(line: 364, column: 69, scope: !2040)
!2049 = !DILocation(line: 364, column: 52, scope: !2040)
!2050 = !DILocation(line: 0, scope: !1706, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 363, column: 9, scope: !2040)
!2052 = !DILocation(line: 363, column: 43, scope: !2040)
!2053 = !DILocation(line: 363, column: 102, scope: !2040)
!2054 = !DILocation(line: 364, column: 48, scope: !2040)
!2055 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2051)
!2056 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2051)
!2057 = !DILocation(line: 0, scope: !1716, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2051)
!2059 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2058)
!2060 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2058)
!2061 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2058)
!2062 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2058)
!2063 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2058)
!2064 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2058)
!2065 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2058)
!2066 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2058)
!2067 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2058)
!2068 = !DILocation(line: 0, scope: !1737, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2058)
!2070 = !DILocation(line: 0, scope: !1744, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2069)
!2072 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2071)
!2073 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2058)
!2074 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2058)
!2075 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2058)
!2076 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2058)
!2077 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2078)
!2078 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 365, column: 9, scope: !2040)
!2080 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2058)
!2081 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2078)
!2082 = !DILocation(line: 365, column: 58, scope: !2040)
!2083 = !DILocation(line: 365, column: 25, scope: !2040)
!2084 = !DILocation(line: 0, scope: !1706, inlinedAt: !2079)
!2085 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2079)
!2086 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2079)
!2087 = !DILocation(line: 0, scope: !1716, inlinedAt: !2078)
!2088 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2078)
!2089 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2078)
!2090 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2078)
!2091 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2078)
!2092 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2078)
!2093 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2078)
!2094 = !DILocation(line: 0, scope: !1737, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2078)
!2096 = !DILocation(line: 0, scope: !1744, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2095)
!2098 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2097)
!2099 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2078)
!2100 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2078)
!2101 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2078)
!2102 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2078)
!2103 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2078)
!2104 = !DILocation(line: 369, column: 19, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !3, line: 369, column: 13)
!2106 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 368, column: 5)
!2107 = !{!1605, !1607, i64 17388}
!2108 = !DILocation(line: 369, column: 13, scope: !2106)
!2109 = !DILocation(line: 0, scope: !1670, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 371, column: 13, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 370, column: 9)
!2112 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2110)
!2113 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2110)
!2114 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2110)
!2115 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2110)
!2116 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2110)
!2117 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2110)
!2118 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2110)
!2119 = !DILocation(line: 0, scope: !1689, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2110)
!2121 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2120)
!2122 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2110)
!2123 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2110)
!2124 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2110)
!2125 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2110)
!2126 = !DILocation(line: 373, column: 27, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 373, column: 17)
!2128 = !DILocation(line: 373, column: 17, scope: !2127)
!2129 = !DILocation(line: 373, column: 37, scope: !2127)
!2130 = !DILocation(line: 373, column: 17, scope: !2111)
!2131 = !DILocation(line: 374, column: 53, scope: !2127)
!2132 = !DILocation(line: 374, column: 70, scope: !2127)
!2133 = !DILocation(line: 374, column: 58, scope: !2127)
!2134 = !DILocation(line: 374, column: 17, scope: !2127)
!2135 = !DILocation(line: 375, column: 13, scope: !2111)
!2136 = !DILocation(line: 376, column: 9, scope: !2111)
!2137 = !DILocation(line: 379, column: 13, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 378, column: 9)
!2139 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 377, column: 18)
!2140 = !DILocation(line: 380, column: 27, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 380, column: 17)
!2142 = !DILocation(line: 380, column: 17, scope: !2141)
!2143 = !DILocation(line: 380, column: 37, scope: !2141)
!2144 = !DILocation(line: 380, column: 17, scope: !2138)
!2145 = !DILocation(line: 382, column: 53, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !3, line: 381, column: 13)
!2147 = !DILocation(line: 382, column: 70, scope: !2146)
!2148 = !DILocation(line: 382, column: 58, scope: !2146)
!2149 = !DILocation(line: 382, column: 17, scope: !2146)
!2150 = !DILocation(line: 383, column: 33, scope: !2146)
!2151 = !DILocation(line: 383, column: 53, scope: !2146)
!2152 = !DILocation(line: 383, column: 58, scope: !2146)
!2153 = !DILocation(line: 383, column: 17, scope: !2146)
!2154 = !DILocation(line: 384, column: 13, scope: !2146)
!2155 = !DILocation(line: 385, column: 13, scope: !2138)
!2156 = !DILocation(line: 386, column: 13, scope: !2138)
!2157 = !DILocation(line: 387, column: 9, scope: !2138)
!2158 = !DILocation(line: 390, column: 13, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 389, column: 9)
!2160 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 388, column: 18)
!2161 = !DILocation(line: 391, column: 27, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 391, column: 17)
!2163 = !DILocation(line: 391, column: 17, scope: !2162)
!2164 = !DILocation(line: 391, column: 37, scope: !2162)
!2165 = !DILocation(line: 391, column: 17, scope: !2159)
!2166 = !DILocation(line: 393, column: 53, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 392, column: 13)
!2168 = !DILocation(line: 393, column: 70, scope: !2167)
!2169 = !DILocation(line: 393, column: 58, scope: !2167)
!2170 = !DILocation(line: 393, column: 17, scope: !2167)
!2171 = !DILocation(line: 394, column: 33, scope: !2167)
!2172 = !DILocation(line: 394, column: 53, scope: !2167)
!2173 = !DILocation(line: 394, column: 58, scope: !2167)
!2174 = !DILocation(line: 394, column: 17, scope: !2167)
!2175 = !DILocation(line: 395, column: 13, scope: !2167)
!2176 = !DILocation(line: 396, column: 13, scope: !2159)
!2177 = !DILocation(line: 397, column: 13, scope: !2159)
!2178 = !DILocation(line: 398, column: 9, scope: !2159)
!2179 = !DILocation(line: 403, column: 26, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 403, column: 13)
!2181 = !DILocation(line: 403, column: 14, scope: !2180)
!2182 = !DILocation(line: 403, column: 50, scope: !2180)
!2183 = !DILocation(line: 403, column: 48, scope: !2180)
!2184 = !DILocation(line: 404, column: 14, scope: !2180)
!2185 = !DILocation(line: 403, column: 85, scope: !2180)
!2186 = !DILocation(line: 404, column: 50, scope: !2180)
!2187 = !DILocation(line: 404, column: 48, scope: !2180)
!2188 = !DILocation(line: 404, column: 86, scope: !2180)
!2189 = !DILocation(line: 403, column: 13, scope: !1536)
!2190 = !DILocation(line: 406, column: 13, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 405, column: 9)
!2192 = !DILocation(line: 0, scope: !1536)
!2193 = !DILocation(line: 408, column: 9, scope: !2191)
!2194 = !DILocation(line: 0, scope: !1706, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 411, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 410, column: 9)
!2197 = !DILocation(line: 0, scope: !1716, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2195)
!2199 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2198)
!2200 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2198)
!2201 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2198)
!2202 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2198)
!2203 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2198)
!2204 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2198)
!2205 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2198)
!2206 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2198)
!2207 = !DILocation(line: 0, scope: !1737, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2198)
!2209 = !DILocation(line: 0, scope: !1744, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2208)
!2211 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2210)
!2212 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2198)
!2213 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2198)
!2214 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2198)
!2215 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2198)
!2216 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2198)
!2217 = !DILocation(line: 416, column: 30, scope: !1542)
!2218 = !{!1605, !1607, i64 388}
!2219 = !DILocation(line: 416, column: 36, scope: !1542)
!2220 = !DILocation(line: 416, column: 13, scope: !1536)
!2221 = !DILocation(line: 0, scope: !1541)
!2222 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 418, column: 17, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 417, column: 13)
!2226 = !DILocation(line: 417, column: 13, scope: !1541)
!2227 = !DILocation(line: 418, column: 58, scope: !2225)
!2228 = !DILocation(line: 418, column: 33, scope: !2225)
!2229 = !DILocation(line: 0, scope: !1706, inlinedAt: !2224)
!2230 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2224)
!2231 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2224)
!2232 = !DILocation(line: 0, scope: !1716, inlinedAt: !2223)
!2233 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2223)
!2234 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2223)
!2235 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2223)
!2236 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2223)
!2237 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2223)
!2238 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2223)
!2239 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2223)
!2240 = !DILocation(line: 0, scope: !1737, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2223)
!2242 = !DILocation(line: 0, scope: !1744, inlinedAt: !2243)
!2243 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2241)
!2244 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2243)
!2245 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2223)
!2246 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2223)
!2247 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2223)
!2248 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2223)
!2249 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2223)
!2250 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2223)
!2251 = !DILocation(line: 417, column: 37, scope: !2225)
!2252 = !DILocation(line: 417, column: 31, scope: !2225)
!2253 = distinct !{!2253, !2226, !2254, !1836, !1837}
!2254 = !DILocation(line: 418, column: 85, scope: !1541)
!2255 = !DILocation(line: 0, scope: !1716, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 420, column: 13, scope: !1542)
!2257 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2256)
!2258 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2256)
!2259 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2256)
!2260 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2256)
!2261 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2256)
!2262 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2256)
!2263 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2256)
!2264 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2256)
!2265 = !DILocation(line: 0, scope: !1737, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2256)
!2267 = !DILocation(line: 0, scope: !1744, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2266)
!2269 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2268)
!2270 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2256)
!2271 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2256)
!2272 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2256)
!2273 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2256)
!2274 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2256)
!2275 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2256)
!2276 = !DILocation(line: 423, column: 13, scope: !1536)
!2277 = !DILocation(line: 425, column: 39, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 424, column: 9)
!2279 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 423, column: 13)
!2280 = !DILocation(line: 425, column: 29, scope: !2278)
!2281 = !DILocation(line: 425, column: 54, scope: !2278)
!2282 = !DILocalVariable(name: "s", arg: 1, scope: !2283, file: !220, line: 251, type: !1474)
!2283 = distinct !DISubprogram(name: "bs_write_te", scope: !220, file: !220, line: 251, type: !2284, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !2286)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{null, !1474, !19, !19}
!2286 = !{!2282, !2287, !2288}
!2287 = !DILocalVariable(name: "x", arg: 2, scope: !2283, file: !220, line: 251, type: !19)
!2288 = !DILocalVariable(name: "val", arg: 3, scope: !2283, file: !220, line: 251, type: !19)
!2289 = !DILocation(line: 0, scope: !2283, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 425, column: 13, scope: !2278)
!2291 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2290)
!2292 = distinct !DILexicalBlock(scope: !2283, file: !220, line: 253, column: 9)
!2293 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2290)
!2294 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2290)
!2295 = !DILocation(line: 0, scope: !1670, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2290)
!2297 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2296)
!2298 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2296)
!2299 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2296)
!2300 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2296)
!2301 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2296)
!2302 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2296)
!2303 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2296)
!2304 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2296)
!2305 = !DILocation(line: 0, scope: !1689, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2296)
!2307 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2306)
!2308 = !DILocation(line: 164, column: 9, scope: !1687, inlinedAt: !2296)
!2309 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2296)
!2310 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2296)
!2311 = !DILocation(line: 0, scope: !1706, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2290)
!2313 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2312)
!2314 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2312)
!2315 = !DILocation(line: 0, scope: !1716, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2312)
!2317 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2316)
!2318 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2316)
!2319 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2316)
!2320 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2316)
!2321 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2316)
!2322 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2316)
!2323 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2316)
!2324 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2316)
!2325 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2316)
!2326 = !DILocation(line: 0, scope: !1737, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2316)
!2328 = !DILocation(line: 0, scope: !1744, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2327)
!2330 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2329)
!2331 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2316)
!2332 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2316)
!2333 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2316)
!2334 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2316)
!2335 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2316)
!2336 = !DILocation(line: 0, scope: !2292, inlinedAt: !2290)
!2337 = !DILocation(line: 426, column: 29, scope: !2278)
!2338 = !DILocation(line: 426, column: 54, scope: !2278)
!2339 = !DILocation(line: 0, scope: !2283, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 426, column: 13, scope: !2278)
!2341 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2340)
!2342 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2340)
!2343 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2340)
!2344 = !DILocation(line: 0, scope: !1670, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2340)
!2346 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2345)
!2347 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2345)
!2348 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2345)
!2349 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2345)
!2350 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2345)
!2351 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2345)
!2352 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2345)
!2353 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2345)
!2354 = !DILocation(line: 0, scope: !1689, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2345)
!2356 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2355)
!2357 = !DILocation(line: 164, column: 9, scope: !1687, inlinedAt: !2345)
!2358 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2345)
!2359 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2345)
!2360 = !DILocation(line: 0, scope: !1706, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2340)
!2362 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2361)
!2363 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2361)
!2364 = !DILocation(line: 0, scope: !1716, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2361)
!2366 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2365)
!2367 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2365)
!2368 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2365)
!2369 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2365)
!2370 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2365)
!2371 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2365)
!2372 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2365)
!2373 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2365)
!2374 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2365)
!2375 = !DILocation(line: 0, scope: !1737, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2365)
!2377 = !DILocation(line: 0, scope: !1744, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2376)
!2379 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2378)
!2380 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2365)
!2381 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2365)
!2382 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2365)
!2383 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2365)
!2384 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2365)
!2385 = !DILocation(line: 0, scope: !2292, inlinedAt: !2340)
!2386 = !DILocation(line: 427, column: 29, scope: !2278)
!2387 = !DILocation(line: 427, column: 54, scope: !2278)
!2388 = !DILocation(line: 0, scope: !2283, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 427, column: 13, scope: !2278)
!2390 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2389)
!2391 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2389)
!2392 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2389)
!2393 = !DILocation(line: 0, scope: !1670, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2389)
!2395 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2394)
!2396 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2394)
!2397 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2394)
!2398 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2394)
!2399 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2394)
!2400 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2394)
!2401 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2394)
!2402 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2394)
!2403 = !DILocation(line: 0, scope: !1689, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2394)
!2405 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2404)
!2406 = !DILocation(line: 164, column: 9, scope: !1687, inlinedAt: !2394)
!2407 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2394)
!2408 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2394)
!2409 = !DILocation(line: 0, scope: !1706, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2389)
!2411 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2410)
!2412 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2410)
!2413 = !DILocation(line: 0, scope: !1716, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2410)
!2415 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2414)
!2416 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2414)
!2417 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2414)
!2418 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2414)
!2419 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2414)
!2420 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2414)
!2421 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2414)
!2422 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2414)
!2423 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2414)
!2424 = !DILocation(line: 0, scope: !1737, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2414)
!2426 = !DILocation(line: 0, scope: !1744, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2425)
!2428 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2427)
!2429 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2414)
!2430 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2414)
!2431 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2414)
!2432 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2414)
!2433 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2414)
!2434 = !DILocation(line: 0, scope: !2292, inlinedAt: !2389)
!2435 = !DILocation(line: 428, column: 29, scope: !2278)
!2436 = !DILocation(line: 428, column: 54, scope: !2278)
!2437 = !DILocation(line: 0, scope: !2283, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 428, column: 13, scope: !2278)
!2439 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2438)
!2440 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2438)
!2441 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2438)
!2442 = !DILocation(line: 0, scope: !1670, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2438)
!2444 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2443)
!2445 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2443)
!2446 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2443)
!2447 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2443)
!2448 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2443)
!2449 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2443)
!2450 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2443)
!2451 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2443)
!2452 = !DILocation(line: 0, scope: !1689, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2443)
!2454 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2453)
!2455 = !DILocation(line: 164, column: 9, scope: !1687, inlinedAt: !2443)
!2456 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2443)
!2457 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2443)
!2458 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2443)
!2459 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2443)
!2460 = !DILocation(line: 0, scope: !1706, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2438)
!2462 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2461)
!2463 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2461)
!2464 = !DILocation(line: 0, scope: !1716, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2461)
!2466 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2465)
!2467 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2465)
!2468 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2465)
!2469 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2465)
!2470 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2465)
!2471 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2465)
!2472 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2465)
!2473 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2465)
!2474 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2465)
!2475 = !DILocation(line: 0, scope: !1737, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2465)
!2477 = !DILocation(line: 0, scope: !1744, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2476)
!2479 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2478)
!2480 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2465)
!2481 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !2465)
!2482 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2465)
!2483 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2465)
!2484 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2465)
!2485 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2465)
!2486 = !DILocation(line: 431, column: 9, scope: !1544)
!2487 = !DILocation(line: 0, scope: !1544)
!2488 = !DILocalVariable(name: "h", arg: 1, scope: !2489, file: !3, line: 247, type: !6)
!2489 = distinct !DISubprogram(name: "cavlc_mb8x8_mvd", scope: !3, file: !3, line: 247, type: !2490, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !6, !19}
!2492 = !{!2488, !2493}
!2493 = !DILocalVariable(name: "i", arg: 2, scope: !2489, file: !3, line: 247, type: !19)
!2494 = !DILocation(line: 0, scope: !2489, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 432, column: 13, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 431, column: 9)
!2497 = !DILocation(line: 249, column: 13, scope: !2489, inlinedAt: !2495)
!2498 = !DILocation(line: 249, column: 5, scope: !2489, inlinedAt: !2495)
!2499 = !DILocation(line: 252, column: 13, scope: !2500, inlinedAt: !2495)
!2500 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 250, column: 5)
!2501 = !DILocation(line: 253, column: 13, scope: !2500, inlinedAt: !2495)
!2502 = !DILocation(line: 255, column: 34, scope: !2500, inlinedAt: !2495)
!2503 = !DILocation(line: 255, column: 13, scope: !2500, inlinedAt: !2495)
!2504 = !DILocation(line: 256, column: 13, scope: !2500, inlinedAt: !2495)
!2505 = !DILocation(line: 257, column: 13, scope: !2500, inlinedAt: !2495)
!2506 = !DILocation(line: 259, column: 34, scope: !2500, inlinedAt: !2495)
!2507 = !DILocation(line: 259, column: 13, scope: !2500, inlinedAt: !2495)
!2508 = !DILocation(line: 260, column: 13, scope: !2500, inlinedAt: !2495)
!2509 = !DILocation(line: 261, column: 13, scope: !2500, inlinedAt: !2495)
!2510 = !DILocation(line: 263, column: 34, scope: !2500, inlinedAt: !2495)
!2511 = !DILocation(line: 263, column: 13, scope: !2500, inlinedAt: !2495)
!2512 = !DILocation(line: 264, column: 13, scope: !2500, inlinedAt: !2495)
!2513 = !DILocation(line: 265, column: 13, scope: !2500, inlinedAt: !2495)
!2514 = !DILocation(line: 266, column: 13, scope: !2500, inlinedAt: !2495)
!2515 = !DILocation(line: 267, column: 13, scope: !2500, inlinedAt: !2495)
!2516 = !DILocation(line: 431, column: 33, scope: !2496)
!2517 = !DILocation(line: 431, column: 27, scope: !2496)
!2518 = distinct !{!2518, !2486, !2519, !1836, !1837}
!2519 = !DILocation(line: 432, column: 35, scope: !1544)
!2520 = !DILocation(line: 0, scope: !1706, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 436, column: 9, scope: !1547)
!2522 = !DILocation(line: 0, scope: !1716, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2521)
!2524 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2523)
!2525 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2523)
!2526 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2523)
!2527 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2523)
!2528 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2523)
!2529 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2523)
!2530 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2523)
!2531 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2523)
!2532 = !DILocation(line: 0, scope: !1737, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2523)
!2534 = !DILocation(line: 0, scope: !1744, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2533)
!2536 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2535)
!2537 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2523)
!2538 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2523)
!2539 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2523)
!2540 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2523)
!2541 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2523)
!2542 = !DILocation(line: 439, column: 9, scope: !1546)
!2543 = !DILocation(line: 443, column: 23, scope: !1551)
!2544 = !DILocation(line: 443, column: 13, scope: !1551)
!2545 = !DILocation(line: 443, column: 33, scope: !1551)
!2546 = !DILocation(line: 443, column: 13, scope: !1547)
!2547 = !DILocation(line: 0, scope: !1550)
!2548 = !DILocation(line: 444, column: 13, scope: !1550)
!2549 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 440, column: 13, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 439, column: 9)
!2553 = !DILocation(line: 0, scope: !1546)
!2554 = !DILocation(line: 440, column: 54, scope: !2552)
!2555 = !DILocation(line: 440, column: 29, scope: !2552)
!2556 = !DILocation(line: 0, scope: !1706, inlinedAt: !2551)
!2557 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2551)
!2558 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2551)
!2559 = !DILocation(line: 0, scope: !1716, inlinedAt: !2550)
!2560 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2550)
!2561 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2550)
!2562 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2550)
!2563 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2550)
!2564 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2550)
!2565 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2550)
!2566 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2550)
!2567 = !DILocation(line: 0, scope: !1737, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2550)
!2569 = !DILocation(line: 0, scope: !1744, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2568)
!2571 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2570)
!2572 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2550)
!2573 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2550)
!2574 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2550)
!2575 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2550)
!2576 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2550)
!2577 = !DILocation(line: 439, column: 33, scope: !2552)
!2578 = !DILocation(line: 439, column: 27, scope: !2552)
!2579 = distinct !{!2579, !2542, !2580, !1836, !1837}
!2580 = !DILocation(line: 440, column: 81, scope: !1546)
!2581 = !DILocation(line: 445, column: 55, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 445, column: 21)
!2583 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 444, column: 13)
!2584 = !DILocation(line: 445, column: 21, scope: !2582)
!2585 = !DILocation(line: 445, column: 21, scope: !2583)
!2586 = !DILocation(line: 446, column: 37, scope: !2582)
!2587 = !DILocation(line: 446, column: 93, scope: !2582)
!2588 = !DILocation(line: 446, column: 81, scope: !2582)
!2589 = !DILocation(line: 446, column: 62, scope: !2582)
!2590 = !DILocation(line: 0, scope: !2283, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 446, column: 21, scope: !2582)
!2592 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2591)
!2593 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2591)
!2594 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2591)
!2595 = !DILocation(line: 0, scope: !1670, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2591)
!2597 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2596)
!2598 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2596)
!2599 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2596)
!2600 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2596)
!2601 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2596)
!2602 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2596)
!2603 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2596)
!2604 = !DILocation(line: 0, scope: !1689, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2596)
!2606 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2605)
!2607 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2596)
!2608 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2596)
!2609 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2596)
!2610 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2596)
!2611 = !DILocation(line: 0, scope: !1706, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2591)
!2613 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2612)
!2614 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2612)
!2615 = !DILocation(line: 0, scope: !1716, inlinedAt: !2616)
!2616 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2612)
!2617 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2616)
!2618 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2616)
!2619 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2616)
!2620 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2616)
!2621 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2616)
!2622 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2616)
!2623 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2616)
!2624 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2616)
!2625 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2616)
!2626 = !DILocation(line: 0, scope: !1737, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2616)
!2628 = !DILocation(line: 0, scope: !1744, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2627)
!2630 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2629)
!2631 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2616)
!2632 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2616)
!2633 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2616)
!2634 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2616)
!2635 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2616)
!2636 = !DILocation(line: 444, column: 37, scope: !2583)
!2637 = !DILocation(line: 444, column: 31, scope: !2583)
!2638 = distinct !{!2638, !2548, !2639, !1836, !1837}
!2639 = !DILocation(line: 446, column: 98, scope: !1550)
!2640 = !DILocation(line: 447, column: 13, scope: !1554)
!2641 = !DILocation(line: 447, column: 33, scope: !1554)
!2642 = !DILocation(line: 447, column: 13, scope: !1547)
!2643 = !DILocation(line: 0, scope: !1553)
!2644 = !DILocation(line: 449, column: 55, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 449, column: 21)
!2646 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 448, column: 13)
!2647 = !DILocation(line: 449, column: 21, scope: !2645)
!2648 = !DILocation(line: 449, column: 21, scope: !2646)
!2649 = !DILocation(line: 450, column: 37, scope: !2645)
!2650 = !DILocation(line: 450, column: 93, scope: !2645)
!2651 = !DILocation(line: 450, column: 81, scope: !2645)
!2652 = !DILocation(line: 450, column: 62, scope: !2645)
!2653 = !DILocation(line: 0, scope: !2283, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 450, column: 21, scope: !2645)
!2655 = !DILocation(line: 253, column: 11, scope: !2292, inlinedAt: !2654)
!2656 = !DILocation(line: 253, column: 9, scope: !2283, inlinedAt: !2654)
!2657 = !DILocation(line: 254, column: 24, scope: !2292, inlinedAt: !2654)
!2658 = !DILocation(line: 0, scope: !1670, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 254, column: 9, scope: !2292, inlinedAt: !2654)
!2660 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2659)
!2661 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2659)
!2662 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2659)
!2663 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2659)
!2664 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2659)
!2665 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2659)
!2666 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2659)
!2667 = !DILocation(line: 0, scope: !1689, inlinedAt: !2668)
!2668 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2659)
!2669 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2668)
!2670 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2659)
!2671 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2659)
!2672 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2659)
!2673 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2659)
!2674 = !DILocation(line: 0, scope: !1706, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 256, column: 9, scope: !2292, inlinedAt: !2654)
!2676 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2675)
!2677 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2675)
!2678 = !DILocation(line: 0, scope: !1716, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2675)
!2680 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2679)
!2681 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2679)
!2682 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !2679)
!2683 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2679)
!2684 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2679)
!2685 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2679)
!2686 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2679)
!2687 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2679)
!2688 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2679)
!2689 = !DILocation(line: 0, scope: !1737, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2679)
!2691 = !DILocation(line: 0, scope: !1744, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2690)
!2693 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2692)
!2694 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2679)
!2695 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2679)
!2696 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2679)
!2697 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2679)
!2698 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2679)
!2699 = !DILocation(line: 448, column: 37, scope: !2646)
!2700 = !DILocation(line: 448, column: 31, scope: !2646)
!2701 = !DILocation(line: 448, column: 13, scope: !1553)
!2702 = distinct !{!2702, !2701, !2703, !1836, !1837}
!2703 = !DILocation(line: 450, column: 98, scope: !1553)
!2704 = !DILocation(line: 453, column: 9, scope: !1556)
!2705 = !DILocation(line: 0, scope: !1556)
!2706 = !DILocation(line: 454, column: 51, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 454, column: 17)
!2708 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 453, column: 9)
!2709 = !DILocation(line: 454, column: 17, scope: !2707)
!2710 = !DILocation(line: 454, column: 17, scope: !2708)
!2711 = !DILocation(line: 455, column: 17, scope: !2707)
!2712 = !DILocation(line: 453, column: 33, scope: !2708)
!2713 = !DILocation(line: 453, column: 27, scope: !2708)
!2714 = distinct !{!2714, !2704, !2715, !1836, !1837}
!2715 = !DILocation(line: 455, column: 44, scope: !1556)
!2716 = !DILocation(line: 0, scope: !1558)
!2717 = !DILocation(line: 457, column: 51, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 457, column: 17)
!2719 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 456, column: 9)
!2720 = !DILocation(line: 457, column: 17, scope: !2718)
!2721 = !DILocation(line: 457, column: 17, scope: !2719)
!2722 = !DILocation(line: 458, column: 17, scope: !2718)
!2723 = !DILocation(line: 456, column: 33, scope: !2719)
!2724 = !DILocation(line: 456, column: 27, scope: !2719)
!2725 = !DILocation(line: 456, column: 9, scope: !1558)
!2726 = distinct !{!2726, !2725, !2727, !1836, !1837}
!2727 = !DILocation(line: 458, column: 44, scope: !1558)
!2728 = !DILocation(line: 464, column: 38, scope: !1560)
!2729 = !DILocation(line: 0, scope: !1560)
!2730 = !DILocation(line: 465, column: 42, scope: !1560)
!2731 = !DILocation(line: 465, column: 32, scope: !1560)
!2732 = !DILocation(line: 465, column: 52, scope: !1560)
!2733 = !DILocation(line: 466, column: 32, scope: !1560)
!2734 = !DILocation(line: 466, column: 52, scope: !1560)
!2735 = !DILocation(line: 468, column: 52, scope: !1560)
!2736 = !DILocation(line: 468, column: 64, scope: !1560)
!2737 = !DILocation(line: 468, column: 25, scope: !1560)
!2738 = !DILocation(line: 468, column: 86, scope: !1560)
!2739 = !DILocation(line: 0, scope: !1706, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 468, column: 9, scope: !1560)
!2741 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2740)
!2742 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2740)
!2743 = !DILocation(line: 0, scope: !1716, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2740)
!2745 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2744)
!2746 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2744)
!2747 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2744)
!2748 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2744)
!2749 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2744)
!2750 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2744)
!2751 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2744)
!2752 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !2744)
!2753 = !DILocation(line: 0, scope: !1737, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2744)
!2755 = !DILocation(line: 0, scope: !1744, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !2754)
!2757 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !2756)
!2758 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !2744)
!2759 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !2744)
!2760 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !2744)
!2761 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !2744)
!2762 = !DILocation(line: 469, column: 19, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 469, column: 13)
!2764 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !2744)
!2765 = !DILocation(line: 469, column: 31, scope: !2763)
!2766 = !DILocation(line: 0, scope: !2763)
!2767 = !DILocation(line: 469, column: 13, scope: !1560)
!2768 = !DILocation(line: 471, column: 28, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 471, column: 17)
!2770 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 470, column: 9)
!2771 = !DILocation(line: 471, column: 31, scope: !2769)
!2772 = !DILocation(line: 471, column: 17, scope: !2770)
!2773 = !DILocation(line: 471, column: 86, scope: !2769)
!2774 = !DILocation(line: 471, column: 74, scope: !2769)
!2775 = !DILocation(line: 471, column: 46, scope: !2769)
!2776 = !DILocation(line: 472, column: 17, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 472, column: 17)
!2778 = !DILocation(line: 472, column: 28, scope: !2777)
!2779 = !DILocation(line: 472, column: 31, scope: !2777)
!2780 = !DILocation(line: 472, column: 17, scope: !2770)
!2781 = !DILocation(line: 472, column: 74, scope: !2777)
!2782 = !DILocation(line: 472, column: 46, scope: !2777)
!2783 = !DILocation(line: 473, column: 17, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 473, column: 17)
!2785 = !DILocation(line: 473, column: 17, scope: !2770)
!2786 = !DILocation(line: 473, column: 32, scope: !2784)
!2787 = !DILocation(line: 474, column: 17, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 474, column: 17)
!2789 = !DILocation(line: 474, column: 17, scope: !2770)
!2790 = !DILocation(line: 474, column: 32, scope: !2788)
!2791 = !DILocation(line: 478, column: 28, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 478, column: 17)
!2793 = distinct !DILexicalBlock(scope: !2763, file: !3, line: 477, column: 9)
!2794 = !DILocation(line: 478, column: 31, scope: !2792)
!2795 = !DILocation(line: 478, column: 17, scope: !2793)
!2796 = !DILocation(line: 478, column: 86, scope: !2792)
!2797 = !DILocation(line: 478, column: 74, scope: !2792)
!2798 = !DILocation(line: 478, column: 46, scope: !2792)
!2799 = !DILocation(line: 479, column: 31, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 479, column: 17)
!2801 = !DILocation(line: 479, column: 17, scope: !2793)
!2802 = !DILocation(line: 479, column: 86, scope: !2800)
!2803 = !DILocation(line: 479, column: 74, scope: !2800)
!2804 = !DILocation(line: 479, column: 46, scope: !2800)
!2805 = !DILocation(line: 480, column: 17, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 480, column: 17)
!2807 = !DILocation(line: 480, column: 28, scope: !2806)
!2808 = !DILocation(line: 480, column: 31, scope: !2806)
!2809 = !DILocation(line: 480, column: 17, scope: !2793)
!2810 = !DILocation(line: 480, column: 74, scope: !2806)
!2811 = !DILocation(line: 480, column: 46, scope: !2806)
!2812 = !DILocation(line: 481, column: 31, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 481, column: 17)
!2814 = !DILocation(line: 481, column: 17, scope: !2793)
!2815 = !DILocation(line: 481, column: 74, scope: !2813)
!2816 = !DILocation(line: 481, column: 46, scope: !2813)
!2817 = !DILocation(line: 482, column: 23, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 482, column: 17)
!2819 = !DILocation(line: 482, column: 35, scope: !2818)
!2820 = !DILocation(line: 0, scope: !2818)
!2821 = !DILocation(line: 482, column: 17, scope: !2793)
!2822 = !DILocation(line: 484, column: 21, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 483, column: 13)
!2824 = !DILocation(line: 484, column: 36, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 484, column: 21)
!2826 = !DILocation(line: 485, column: 21, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 485, column: 21)
!2828 = !DILocation(line: 485, column: 21, scope: !2823)
!2829 = !DILocation(line: 485, column: 36, scope: !2827)
!2830 = !DILocation(line: 486, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 486, column: 21)
!2832 = !DILocation(line: 486, column: 21, scope: !2823)
!2833 = !DILocation(line: 486, column: 36, scope: !2831)
!2834 = !DILocation(line: 487, column: 21, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2823, file: !3, line: 487, column: 21)
!2836 = !DILocation(line: 487, column: 21, scope: !2823)
!2837 = !DILocation(line: 487, column: 36, scope: !2835)
!2838 = !DILocation(line: 491, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 490, column: 13)
!2840 = !DILocation(line: 491, column: 36, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 491, column: 21)
!2842 = !DILocation(line: 492, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 492, column: 21)
!2844 = !DILocation(line: 492, column: 21, scope: !2839)
!2845 = !DILocation(line: 492, column: 36, scope: !2843)
!2846 = !DILocation(line: 493, column: 21, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 493, column: 21)
!2848 = !DILocation(line: 493, column: 21, scope: !2839)
!2849 = !DILocation(line: 493, column: 36, scope: !2847)
!2850 = !DILocation(line: 494, column: 21, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 494, column: 21)
!2852 = !DILocation(line: 494, column: 21, scope: !2839)
!2853 = !DILocation(line: 494, column: 36, scope: !2851)
!2854 = !DILocation(line: 0, scope: !1670, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 499, column: 9, scope: !1561)
!2856 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2855)
!2857 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2855)
!2858 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2855)
!2859 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2855)
!2860 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2855)
!2861 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2855)
!2862 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2855)
!2863 = !DILocation(line: 0, scope: !1689, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2855)
!2865 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2864)
!2866 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2855)
!2867 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2855)
!2868 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2855)
!2869 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2855)
!2870 = !DILocation(line: 0, scope: !1639, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 502, column: 20, scope: !2)
!2872 = !DILocation(line: 90, column: 21, scope: !1639, inlinedAt: !2871)
!2873 = !DILocation(line: 90, column: 28, scope: !1639, inlinedAt: !2871)
!2874 = !DILocation(line: 90, column: 23, scope: !1639, inlinedAt: !2871)
!2875 = !DILocation(line: 90, column: 58, scope: !1639, inlinedAt: !2871)
!2876 = !DILocation(line: 90, column: 11, scope: !1639, inlinedAt: !2871)
!2877 = !DILocation(line: 503, column: 8, scope: !2)
!2878 = !DILocation(line: 503, column: 29, scope: !2)
!2879 = !DILocation(line: 503, column: 45, scope: !2)
!2880 = !DILocation(line: 507, column: 28, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2, file: !3, line: 507, column: 9)
!2882 = !DILocation(line: 508, column: 56, scope: !2881)
!2883 = !DILocation(line: 508, column: 69, scope: !2881)
!2884 = !DILocation(line: 508, column: 82, scope: !2881)
!2885 = !DILocation(line: 508, column: 75, scope: !2881)
!2886 = !DILocation(line: 508, column: 25, scope: !2881)
!2887 = !DILocation(line: 0, scope: !1706, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 508, column: 9, scope: !2881)
!2889 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2888)
!2890 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2888)
!2891 = !DILocation(line: 0, scope: !1716, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2888)
!2893 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2892)
!2894 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2892)
!2895 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2892)
!2896 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2892)
!2897 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2892)
!2898 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2892)
!2899 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2892)
!2900 = !DILocation(line: 509, column: 24, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 509, column: 14)
!2902 = !DILocation(line: 509, column: 14, scope: !2881)
!2903 = !DILocation(line: 510, column: 53, scope: !2901)
!2904 = !DILocation(line: 510, column: 66, scope: !2901)
!2905 = !DILocation(line: 510, column: 79, scope: !2901)
!2906 = !DILocation(line: 510, column: 72, scope: !2901)
!2907 = !DILocation(line: 510, column: 25, scope: !2901)
!2908 = !DILocation(line: 0, scope: !1706, inlinedAt: !2909)
!2909 = distinct !DILocation(line: 510, column: 9, scope: !2901)
!2910 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !2909)
!2911 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !2909)
!2912 = !DILocation(line: 0, scope: !1716, inlinedAt: !2913)
!2913 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !2909)
!2914 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !2913)
!2915 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !2913)
!2916 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !2913)
!2917 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !2913)
!2918 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !2913)
!2919 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !2913)
!2920 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !2913)
!2921 = !DILocation(line: 0, scope: !2881)
!2922 = !DILocation(line: 402, column: 13, scope: !2923, inlinedAt: !2924)
!2923 = distinct !DILexicalBlock(scope: !1454, file: !1327, line: 402, column: 9)
!2924 = distinct !DILocation(line: 513, column: 9, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2, file: !3, line: 513, column: 9)
!2926 = !DILocation(line: 0, scope: !1454, inlinedAt: !2924)
!2927 = !DILocation(line: 402, column: 18, scope: !2923, inlinedAt: !2924)
!2928 = !DILocation(line: 402, column: 10, scope: !2923, inlinedAt: !2924)
!2929 = !DILocation(line: 402, column: 9, scope: !1454, inlinedAt: !2924)
!2930 = !DILocation(line: 404, column: 15, scope: !2931, inlinedAt: !2924)
!2931 = distinct !DILexicalBlock(scope: !1454, file: !1327, line: 404, column: 9)
!2932 = !DILocation(line: 404, column: 22, scope: !2931, inlinedAt: !2924)
!2933 = !DILocation(line: 404, column: 9, scope: !1454, inlinedAt: !2924)
!2934 = !DILocation(line: 405, column: 16, scope: !2931, inlinedAt: !2924)
!2935 = !DILocation(line: 405, column: 9, scope: !2931, inlinedAt: !2924)
!2936 = !DILocation(line: 406, column: 12, scope: !1454, inlinedAt: !2924)
!2937 = !DILocation(line: 406, column: 41, scope: !1454, inlinedAt: !2924)
!2938 = !DILocation(line: 406, column: 5, scope: !1454, inlinedAt: !2924)
!2939 = !DILocation(line: 513, column: 9, scope: !2925)
!2940 = !DILocation(line: 513, column: 44, scope: !2925)
!2941 = !DILocation(line: 513, column: 53, scope: !2925)
!2942 = !DILocation(line: 513, column: 47, scope: !2925)
!2943 = !DILocation(line: 513, column: 9, scope: !2)
!2944 = !DILocation(line: 514, column: 29, scope: !2925)
!2945 = !DILocation(line: 0, scope: !1670, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 514, column: 9, scope: !2925)
!2947 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !2946)
!2948 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !2946)
!2949 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !2946)
!2950 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !2946)
!2951 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !2946)
!2952 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !2946)
!2953 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !2946)
!2954 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !2946)
!2955 = !DILocation(line: 0, scope: !1689, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !2946)
!2957 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !2956)
!2958 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !2946)
!2959 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !2946)
!2960 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !2946)
!2961 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !2946)
!2962 = !DILocation(line: 517, column: 19, scope: !1569)
!2963 = !DILocation(line: 517, column: 9, scope: !2)
!2964 = !DILocalVariable(name: "h", arg: 1, scope: !2965, file: !3, line: 213, type: !6)
!2965 = distinct !DISubprogram(name: "cavlc_qp_delta", scope: !3, file: !3, line: 213, type: !4, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !2966)
!2966 = !{!2964, !2967, !2968}
!2967 = !DILocalVariable(name: "s", scope: !2965, file: !3, line: 215, type: !1474)
!2968 = !DILocalVariable(name: "i_dqp", scope: !2965, file: !3, line: 216, type: !19)
!2969 = !DILocation(line: 0, scope: !2965, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 519, column: 9, scope: !1568)
!2971 = !DILocation(line: 216, column: 23, scope: !2965, inlinedAt: !2970)
!2972 = !{!1605, !1607, i64 25792}
!2973 = !DILocation(line: 216, column: 36, scope: !2965, inlinedAt: !2970)
!2974 = !{!1605, !1607, i64 25800}
!2975 = !DILocation(line: 216, column: 28, scope: !2965, inlinedAt: !2970)
!2976 = !DILocation(line: 219, column: 15, scope: !2977, inlinedAt: !2970)
!2977 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 219, column: 9)
!2978 = !DILocation(line: 219, column: 22, scope: !2977, inlinedAt: !2970)
!2979 = !DILocation(line: 219, column: 33, scope: !2977, inlinedAt: !2970)
!2980 = !DILocation(line: 219, column: 44, scope: !2977, inlinedAt: !2970)
!2981 = !DILocation(line: 219, column: 63, scope: !2977, inlinedAt: !2970)
!2982 = !DILocation(line: 219, column: 55, scope: !2977, inlinedAt: !2970)
!2983 = !DILocation(line: 220, column: 9, scope: !2977, inlinedAt: !2970)
!2984 = !DILocation(line: 220, column: 13, scope: !2977, inlinedAt: !2970)
!2985 = !DILocation(line: 219, column: 9, scope: !2965, inlinedAt: !2970)
!2986 = !DILocation(line: 223, column: 20, scope: !2987, inlinedAt: !2970)
!2987 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 221, column: 5)
!2988 = !DILocation(line: 228, column: 9, scope: !2965, inlinedAt: !2970)
!2989 = !DILocation(line: 228, column: 9, scope: !2990, inlinedAt: !2970)
!2990 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 228, column: 9)
!2991 = !DILocation(line: 230, column: 19, scope: !2992, inlinedAt: !2970)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 230, column: 13)
!2993 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 229, column: 5)
!2994 = !DILocation(line: 230, column: 13, scope: !2993, inlinedAt: !2970)
!2995 = !DILocation(line: 231, column: 19, scope: !2992, inlinedAt: !2970)
!2996 = !DILocation(line: 231, column: 13, scope: !2992, inlinedAt: !2970)
!2997 = !DILocation(line: 232, column: 24, scope: !2998, inlinedAt: !2970)
!2998 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 232, column: 18)
!2999 = !DILocation(line: 232, column: 18, scope: !2992, inlinedAt: !2970)
!3000 = !DILocalVariable(name: "s", arg: 1, scope: !3001, file: !220, line: 233, type: !1474)
!3001 = distinct !DISubprogram(name: "bs_write_se", scope: !220, file: !220, line: 233, type: !1707, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !3002)
!3002 = !{!3000, !3003, !3004, !3005}
!3003 = !DILocalVariable(name: "val", arg: 2, scope: !3001, file: !220, line: 233, type: !19)
!3004 = !DILocalVariable(name: "size", scope: !3001, file: !220, line: 235, type: !19)
!3005 = !DILocalVariable(name: "tmp", scope: !3001, file: !220, line: 238, type: !19)
!3006 = !DILocation(line: 0, scope: !3001, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 235, column: 5, scope: !2965, inlinedAt: !2970)
!3008 = !DILocation(line: 238, column: 22, scope: !3001, inlinedAt: !3007)
!3009 = !DILocation(line: 238, column: 17, scope: !3001, inlinedAt: !3007)
!3010 = !DILocation(line: 239, column: 13, scope: !3011, inlinedAt: !3007)
!3011 = distinct !DILexicalBlock(scope: !3001, file: !220, line: 239, column: 9)
!3012 = !DILocation(line: 239, column: 9, scope: !3001, inlinedAt: !3007)
!3013 = !DILocation(line: 242, column: 13, scope: !3014, inlinedAt: !3007)
!3014 = distinct !DILexicalBlock(scope: !3001, file: !220, line: 242, column: 9)
!3015 = !DILocation(line: 242, column: 9, scope: !3001, inlinedAt: !3007)
!3016 = !DILocation(line: 247, column: 13, scope: !3001, inlinedAt: !3007)
!3017 = !DILocation(line: 247, column: 10, scope: !3001, inlinedAt: !3007)
!3018 = !DILocation(line: 0, scope: !1716, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 248, column: 5, scope: !3001, inlinedAt: !3007)
!3020 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3019)
!3021 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3019)
!3022 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3019)
!3023 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3019)
!3024 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3019)
!3025 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3019)
!3026 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3019)
!3027 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3019)
!3028 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3019)
!3029 = !DILocation(line: 0, scope: !1737, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3019)
!3031 = !DILocation(line: 0, scope: !1744, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3030)
!3033 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3032)
!3034 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3019)
!3035 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3019)
!3036 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3019)
!3037 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3019)
!3038 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3019)
!3039 = !DILocalVariable(name: "h", arg: 1, scope: !3040, file: !1327, line: 378, type: !6)
!3040 = distinct !DISubprogram(name: "x264_mb_predict_non_zero_code", scope: !1327, file: !1327, line: 378, type: !1972, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !3041)
!3041 = !{!3039, !3042, !3043, !3044, !3045}
!3042 = !DILocalVariable(name: "idx", arg: 2, scope: !3040, file: !1327, line: 378, type: !19)
!3043 = !DILocalVariable(name: "za", scope: !3040, file: !1327, line: 380, type: !1422)
!3044 = !DILocalVariable(name: "zb", scope: !3040, file: !1327, line: 381, type: !1422)
!3045 = !DILocalVariable(name: "i_ret", scope: !3040, file: !1327, line: 383, type: !19)
!3046 = !DILocation(line: 0, scope: !3040, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 522, column: 9, scope: !1567)
!3048 = !DILocation(line: 380, column: 20, scope: !3040, inlinedAt: !3047)
!3049 = !DILocation(line: 381, column: 20, scope: !3040, inlinedAt: !3047)
!3050 = !DILocation(line: 383, column: 20, scope: !3040, inlinedAt: !3047)
!3051 = !DILocation(line: 385, column: 15, scope: !3052, inlinedAt: !3047)
!3052 = distinct !DILexicalBlock(scope: !3040, file: !1327, line: 385, column: 9)
!3053 = !DILocation(line: 385, column: 9, scope: !3040, inlinedAt: !3047)
!3054 = !DILocation(line: 386, column: 25, scope: !3052, inlinedAt: !3047)
!3055 = !DILocation(line: 386, column: 31, scope: !3052, inlinedAt: !3047)
!3056 = !DILocation(line: 386, column: 9, scope: !3052, inlinedAt: !3047)
!3057 = !DILocation(line: 387, column: 18, scope: !3040, inlinedAt: !3047)
!3058 = !DILocation(line: 522, column: 9, scope: !1567)
!3059 = !DILocation(line: 0, scope: !1567)
!3060 = !DILocation(line: 522, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 522, column: 9)
!3062 = !{!3063, !1608, i64 1}
!3063 = !{!"", !1608, i64 0, !1608, i64 1}
!3064 = !{!3063, !1608, i64 0}
!3065 = !DILocation(line: 0, scope: !1716, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 522, column: 9, scope: !3061)
!3067 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3066)
!3068 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3066)
!3069 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3066)
!3070 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3066)
!3071 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3066)
!3072 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3066)
!3073 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3066)
!3074 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3066)
!3075 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3066)
!3076 = !DILocation(line: 0, scope: !1737, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3066)
!3078 = !DILocation(line: 0, scope: !1744, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3077)
!3080 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3079)
!3081 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3066)
!3082 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3066)
!3083 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3066)
!3084 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3066)
!3085 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3066)
!3086 = !DILocation(line: 525, column: 19, scope: !1573)
!3087 = !DILocation(line: 525, column: 13, scope: !1573)
!3088 = !DILocation(line: 525, column: 13, scope: !1568)
!3089 = !DILocation(line: 0, scope: !1572)
!3090 = !DILocation(line: 0, scope: !3040, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 527, column: 17, scope: !1575)
!3092 = !DILocation(line: 380, column: 47, scope: !3040, inlinedAt: !3091)
!3093 = !DILocation(line: 380, column: 63, scope: !3040, inlinedAt: !3091)
!3094 = !DILocation(line: 380, column: 20, scope: !3040, inlinedAt: !3091)
!3095 = !DILocation(line: 381, column: 63, scope: !3040, inlinedAt: !3091)
!3096 = !DILocation(line: 381, column: 20, scope: !3040, inlinedAt: !3091)
!3097 = !DILocation(line: 383, column: 20, scope: !3040, inlinedAt: !3091)
!3098 = !DILocation(line: 385, column: 15, scope: !3052, inlinedAt: !3091)
!3099 = !DILocation(line: 385, column: 9, scope: !3040, inlinedAt: !3091)
!3100 = !DILocation(line: 386, column: 25, scope: !3052, inlinedAt: !3091)
!3101 = !DILocation(line: 386, column: 31, scope: !3052, inlinedAt: !3091)
!3102 = !DILocation(line: 386, column: 9, scope: !3052, inlinedAt: !3091)
!3103 = !DILocation(line: 387, column: 18, scope: !3040, inlinedAt: !3091)
!3104 = !DILocation(line: 527, column: 17, scope: !1575)
!3105 = !DILocation(line: 0, scope: !1575)
!3106 = !DILocation(line: 527, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 527, column: 17)
!3108 = !DILocation(line: 0, scope: !1716, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 527, column: 17, scope: !3107)
!3110 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3109)
!3111 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3109)
!3112 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3109)
!3113 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3109)
!3114 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3109)
!3115 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3109)
!3116 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3109)
!3117 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3109)
!3118 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3109)
!3119 = !DILocation(line: 0, scope: !1737, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3109)
!3121 = !DILocation(line: 0, scope: !1744, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3120)
!3123 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3122)
!3124 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3109)
!3125 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3109)
!3126 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3109)
!3127 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3109)
!3128 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3109)
!3129 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3109)
!3130 = !DILocation(line: 526, column: 38, scope: !1576)
!3131 = !DILocation(line: 526, column: 31, scope: !1576)
!3132 = !DILocation(line: 526, column: 13, scope: !1572)
!3133 = distinct !{!3133, !3132, !3134, !1836, !1837}
!3134 = !DILocation(line: 527, column: 17, scope: !1572)
!3135 = !DILocation(line: 529, column: 20, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 529, column: 14)
!3137 = !DILocation(line: 529, column: 39, scope: !3136)
!3138 = !DILocation(line: 529, column: 31, scope: !3136)
!3139 = !DILocation(line: 529, column: 14, scope: !1569)
!3140 = !DILocation(line: 0, scope: !2965, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 531, column: 9, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 530, column: 5)
!3143 = !DILocation(line: 216, column: 23, scope: !2965, inlinedAt: !3141)
!3144 = !DILocation(line: 216, column: 36, scope: !2965, inlinedAt: !3141)
!3145 = !DILocation(line: 216, column: 28, scope: !2965, inlinedAt: !3141)
!3146 = !DILocation(line: 228, column: 9, scope: !2990, inlinedAt: !3141)
!3147 = !DILocation(line: 228, column: 9, scope: !2965, inlinedAt: !3141)
!3148 = !DILocation(line: 230, column: 19, scope: !2992, inlinedAt: !3141)
!3149 = !DILocation(line: 230, column: 13, scope: !2993, inlinedAt: !3141)
!3150 = !DILocation(line: 231, column: 19, scope: !2992, inlinedAt: !3141)
!3151 = !DILocation(line: 231, column: 13, scope: !2992, inlinedAt: !3141)
!3152 = !DILocation(line: 232, column: 24, scope: !2998, inlinedAt: !3141)
!3153 = !DILocation(line: 232, column: 18, scope: !2992, inlinedAt: !3141)
!3154 = !DILocation(line: 0, scope: !3001, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 235, column: 5, scope: !2965, inlinedAt: !3141)
!3156 = !DILocation(line: 238, column: 22, scope: !3001, inlinedAt: !3155)
!3157 = !DILocation(line: 238, column: 17, scope: !3001, inlinedAt: !3155)
!3158 = !DILocation(line: 239, column: 13, scope: !3011, inlinedAt: !3155)
!3159 = !DILocation(line: 239, column: 9, scope: !3001, inlinedAt: !3155)
!3160 = !DILocation(line: 242, column: 13, scope: !3014, inlinedAt: !3155)
!3161 = !DILocation(line: 242, column: 9, scope: !3001, inlinedAt: !3155)
!3162 = !DILocation(line: 247, column: 13, scope: !3001, inlinedAt: !3155)
!3163 = !DILocation(line: 247, column: 10, scope: !3001, inlinedAt: !3155)
!3164 = !DILocation(line: 0, scope: !1716, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 248, column: 5, scope: !3001, inlinedAt: !3155)
!3166 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3165)
!3167 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3165)
!3168 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3165)
!3169 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3165)
!3170 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3165)
!3171 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3165)
!3172 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3165)
!3173 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3165)
!3174 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3165)
!3175 = !DILocation(line: 0, scope: !1737, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3165)
!3177 = !DILocation(line: 0, scope: !1744, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3176)
!3179 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3178)
!3180 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3165)
!3181 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3165)
!3182 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3165)
!3183 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3165)
!3184 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3165)
!3185 = !DILocalVariable(name: "h", arg: 1, scope: !3186, file: !3, line: 271, type: !6)
!3186 = distinct !DISubprogram(name: "x264_macroblock_luma_write_cavlc", scope: !3, file: !3, line: 271, type: !3187, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{null, !6, !19, !19}
!3189 = !{!3185, !3190, !3191, !3192, !3196, !3198, !3202, !3205}
!3190 = !DILocalVariable(name: "i8start", arg: 2, scope: !3186, file: !3, line: 271, type: !19)
!3191 = !DILocalVariable(name: "i8end", arg: 3, scope: !3186, file: !3, line: 271, type: !19)
!3192 = !DILocalVariable(name: "i8", scope: !3193, file: !3, line: 276, type: !19)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 276, column: 9)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 274, column: 5)
!3195 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 273, column: 9)
!3196 = !DILocalVariable(name: "i8", scope: !3197, file: !3, line: 281, type: !19)
!3197 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 281, column: 5)
!3198 = !DILocalVariable(name: "i4", scope: !3199, file: !3, line: 283, type: !19)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !3, line: 283, column: 13)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 282, column: 13)
!3201 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 281, column: 5)
!3202 = !DILocalVariable(name: "nC", scope: !3203, file: !3, line: 284, type: !19)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 284, column: 17)
!3204 = distinct !DILexicalBlock(scope: !3199, file: !3, line: 283, column: 13)
!3205 = !DILocalVariable(name: "nnz", scope: !3203, file: !3, line: 284, type: !215)
!3206 = !DILocation(line: 0, scope: !3186, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 532, column: 9, scope: !3142)
!3208 = !DILocation(line: 273, column: 15, scope: !3195, inlinedAt: !3207)
!3209 = !DILocation(line: 273, column: 9, scope: !3195, inlinedAt: !3207)
!3210 = !DILocation(line: 273, column: 9, scope: !3186, inlinedAt: !3207)
!3211 = !DILocation(line: 0, scope: !3193, inlinedAt: !3207)
!3212 = !DILocation(line: 276, column: 9, scope: !3193, inlinedAt: !3207)
!3213 = !DILocation(line: 277, column: 23, scope: !3214, inlinedAt: !3207)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 277, column: 17)
!3215 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 276, column: 9)
!3216 = !DILocation(line: 277, column: 39, scope: !3214, inlinedAt: !3207)
!3217 = !DILocation(line: 277, column: 34, scope: !3214, inlinedAt: !3207)
!3218 = !DILocation(line: 277, column: 17, scope: !3215, inlinedAt: !3207)
!3219 = !DILocation(line: 278, column: 28, scope: !3214, inlinedAt: !3207)
!3220 = !{!1605, !1611, i64 33072}
!3221 = !DILocation(line: 278, column: 67, scope: !3214, inlinedAt: !3207)
!3222 = !DILocation(line: 278, column: 50, scope: !3214, inlinedAt: !3207)
!3223 = !DILocation(line: 278, column: 72, scope: !3214, inlinedAt: !3207)
!3224 = !DILocation(line: 278, column: 120, scope: !3214, inlinedAt: !3207)
!3225 = !DILocation(line: 278, column: 93, scope: !3214, inlinedAt: !3207)
!3226 = !DILocation(line: 278, column: 17, scope: !3214, inlinedAt: !3207)
!3227 = !DILocation(line: 276, column: 47, scope: !3215, inlinedAt: !3207)
!3228 = !DILocation(line: 276, column: 35, scope: !3215, inlinedAt: !3207)
!3229 = distinct !{!3229, !3212, !3230, !1836, !1837}
!3230 = !DILocation(line: 278, column: 138, scope: !3193, inlinedAt: !3207)
!3231 = !DILocation(line: 281, column: 5, scope: !3197, inlinedAt: !3207)
!3232 = !DILocation(line: 0, scope: !3197, inlinedAt: !3207)
!3233 = !DILocation(line: 282, column: 19, scope: !3200, inlinedAt: !3207)
!3234 = !DILocation(line: 282, column: 35, scope: !3200, inlinedAt: !3207)
!3235 = !DILocation(line: 282, column: 30, scope: !3200, inlinedAt: !3207)
!3236 = !DILocation(line: 282, column: 13, scope: !3201, inlinedAt: !3207)
!3237 = !DILocation(line: 0, scope: !3199, inlinedAt: !3207)
!3238 = !DILocation(line: 283, column: 13, scope: !3199, inlinedAt: !3207)
!3239 = !DILocation(line: 284, column: 17, scope: !3203, inlinedAt: !3207)
!3240 = !DILocation(line: 0, scope: !3040, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 284, column: 17, scope: !3203, inlinedAt: !3207)
!3242 = !DILocation(line: 380, column: 47, scope: !3040, inlinedAt: !3241)
!3243 = !DILocation(line: 380, column: 63, scope: !3040, inlinedAt: !3241)
!3244 = !DILocation(line: 380, column: 20, scope: !3040, inlinedAt: !3241)
!3245 = !DILocation(line: 381, column: 63, scope: !3040, inlinedAt: !3241)
!3246 = !DILocation(line: 381, column: 20, scope: !3040, inlinedAt: !3241)
!3247 = !DILocation(line: 383, column: 20, scope: !3040, inlinedAt: !3241)
!3248 = !DILocation(line: 385, column: 15, scope: !3052, inlinedAt: !3241)
!3249 = !DILocation(line: 385, column: 9, scope: !3040, inlinedAt: !3241)
!3250 = !DILocation(line: 386, column: 25, scope: !3052, inlinedAt: !3241)
!3251 = !DILocation(line: 386, column: 31, scope: !3052, inlinedAt: !3241)
!3252 = !DILocation(line: 386, column: 9, scope: !3052, inlinedAt: !3241)
!3253 = !DILocation(line: 387, column: 18, scope: !3040, inlinedAt: !3241)
!3254 = !DILocation(line: 0, scope: !3203, inlinedAt: !3207)
!3255 = !DILocation(line: 284, column: 17, scope: !3256, inlinedAt: !3207)
!3256 = distinct !DILexicalBlock(scope: !3203, file: !3, line: 284, column: 17)
!3257 = !DILocation(line: 0, scope: !1716, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 284, column: 17, scope: !3256, inlinedAt: !3207)
!3259 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3258)
!3260 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3258)
!3261 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3258)
!3262 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3258)
!3263 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3258)
!3264 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3258)
!3265 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3258)
!3266 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3258)
!3267 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3258)
!3268 = !DILocation(line: 0, scope: !1737, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3258)
!3270 = !DILocation(line: 0, scope: !1744, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3269)
!3272 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3271)
!3273 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3258)
!3274 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3258)
!3275 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3258)
!3276 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3258)
!3277 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3258)
!3278 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3258)
!3279 = !DILocation(line: 283, column: 40, scope: !3204, inlinedAt: !3207)
!3280 = !DILocation(line: 283, column: 33, scope: !3204, inlinedAt: !3207)
!3281 = distinct !{!3281, !3238, !3282, !1836, !1837}
!3282 = !DILocation(line: 284, column: 17, scope: !3199, inlinedAt: !3207)
!3283 = !DILocation(line: 281, column: 43, scope: !3201, inlinedAt: !3207)
!3284 = !DILocation(line: 281, column: 31, scope: !3201, inlinedAt: !3207)
!3285 = distinct !{!3285, !3231, !3286, !1836, !1837}
!3286 = !DILocation(line: 284, column: 17, scope: !3197, inlinedAt: !3207)
!3287 = !DILocation(line: 534, column: 15, scope: !1581)
!3288 = !DILocation(line: 534, column: 9, scope: !1581)
!3289 = !DILocation(line: 534, column: 9, scope: !2)
!3290 = !DILocation(line: 0, scope: !1579)
!3291 = !DILocation(line: 537, column: 9, scope: !1579)
!3292 = !DILocation(line: 537, column: 9, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !1579, file: !3, line: 537, column: 9)
!3294 = !DILocation(line: 0, scope: !1716, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 537, column: 9, scope: !3293)
!3296 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3295)
!3297 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3295)
!3298 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3295)
!3299 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3295)
!3300 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3295)
!3301 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3295)
!3302 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3295)
!3303 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3295)
!3304 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3295)
!3305 = !DILocation(line: 0, scope: !1737, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3295)
!3307 = !DILocation(line: 0, scope: !1744, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3306)
!3309 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3308)
!3310 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3295)
!3311 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3295)
!3312 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3295)
!3313 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3295)
!3314 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3295)
!3315 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3295)
!3316 = !DILocation(line: 0, scope: !1584)
!3317 = !DILocation(line: 538, column: 9, scope: !1584)
!3318 = !DILocation(line: 538, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 538, column: 9)
!3320 = !DILocation(line: 0, scope: !1716, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 538, column: 9, scope: !3319)
!3322 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3321)
!3323 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3321)
!3324 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3321)
!3325 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3321)
!3326 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3321)
!3327 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3321)
!3328 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3321)
!3329 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3321)
!3330 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3321)
!3331 = !DILocation(line: 0, scope: !1737, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3321)
!3333 = !DILocation(line: 0, scope: !1744, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3332)
!3335 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3334)
!3336 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3321)
!3337 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3321)
!3338 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3321)
!3339 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3321)
!3340 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3321)
!3341 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3321)
!3342 = !DILocation(line: 539, column: 19, scope: !1588)
!3343 = !DILocation(line: 539, column: 31, scope: !1588)
!3344 = !DILocation(line: 539, column: 13, scope: !1580)
!3345 = !DILocation(line: 0, scope: !1587)
!3346 = !DILocation(line: 540, column: 13, scope: !1587)
!3347 = !DILocation(line: 0, scope: !3040, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 541, column: 17, scope: !1590)
!3349 = !DILocation(line: 380, column: 47, scope: !3040, inlinedAt: !3348)
!3350 = !DILocation(line: 380, column: 63, scope: !3040, inlinedAt: !3348)
!3351 = !DILocation(line: 380, column: 20, scope: !3040, inlinedAt: !3348)
!3352 = !DILocation(line: 381, column: 63, scope: !3040, inlinedAt: !3348)
!3353 = !DILocation(line: 381, column: 20, scope: !3040, inlinedAt: !3348)
!3354 = !DILocation(line: 383, column: 20, scope: !3040, inlinedAt: !3348)
!3355 = !DILocation(line: 385, column: 15, scope: !3052, inlinedAt: !3348)
!3356 = !DILocation(line: 385, column: 9, scope: !3040, inlinedAt: !3348)
!3357 = !DILocation(line: 386, column: 25, scope: !3052, inlinedAt: !3348)
!3358 = !DILocation(line: 386, column: 31, scope: !3052, inlinedAt: !3348)
!3359 = !DILocation(line: 386, column: 9, scope: !3052, inlinedAt: !3348)
!3360 = !DILocation(line: 387, column: 18, scope: !3040, inlinedAt: !3348)
!3361 = !DILocation(line: 541, column: 17, scope: !1590)
!3362 = !DILocation(line: 0, scope: !1590)
!3363 = !DILocation(line: 541, column: 17, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 541, column: 17)
!3365 = !DILocation(line: 0, scope: !1716, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 541, column: 17, scope: !3364)
!3367 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3366)
!3368 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3366)
!3369 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3366)
!3370 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3366)
!3371 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3366)
!3372 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3366)
!3373 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3366)
!3374 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3366)
!3375 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3366)
!3376 = !DILocation(line: 0, scope: !1737, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3366)
!3378 = !DILocation(line: 0, scope: !1744, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3377)
!3380 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3379)
!3381 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3366)
!3382 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3366)
!3383 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3366)
!3384 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3366)
!3385 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3366)
!3386 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3366)
!3387 = !DILocation(line: 540, column: 39, scope: !1591)
!3388 = !DILocation(line: 540, column: 32, scope: !1591)
!3389 = distinct !{!3389, !3346, !3390, !1836, !1837}
!3390 = !DILocation(line: 541, column: 17, scope: !1587)
!3391 = !DILocation(line: 0, scope: !1639, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 545, column: 33, scope: !2)
!3393 = !DILocation(line: 90, column: 21, scope: !1639, inlinedAt: !3392)
!3394 = !DILocation(line: 90, column: 28, scope: !1639, inlinedAt: !3392)
!3395 = !DILocation(line: 90, column: 23, scope: !1639, inlinedAt: !3392)
!3396 = !DILocation(line: 90, column: 58, scope: !1639, inlinedAt: !3392)
!3397 = !DILocation(line: 90, column: 11, scope: !1639, inlinedAt: !3392)
!3398 = !DILocation(line: 545, column: 19, scope: !2)
!3399 = !DILocation(line: 545, column: 30, scope: !2)
!3400 = !DILocation(line: 545, column: 43, scope: !2)
!3401 = !DILocation(line: 547, column: 1, scope: !2)
!3402 = !DILocation(line: 0, scope: !1706)
!3403 = !DILocation(line: 230, column: 38, scope: !1706)
!3404 = !DILocation(line: 230, column: 18, scope: !1706)
!3405 = !DILocation(line: 0, scope: !1716, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 230, column: 5, scope: !1706)
!3407 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3406)
!3408 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3406)
!3409 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3406)
!3410 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3406)
!3411 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3406)
!3412 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3406)
!3413 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3406)
!3414 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3406)
!3415 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3406)
!3416 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3406)
!3417 = !DILocation(line: 0, scope: !1737, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3406)
!3419 = !DILocation(line: 0, scope: !1744, inlinedAt: !3420)
!3420 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3418)
!3421 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3420)
!3422 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3406)
!3423 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3406)
!3424 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3406)
!3425 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3406)
!3426 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3406)
!3427 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3406)
!3428 = !DILocation(line: 231, column: 1, scope: !1706)
!3429 = !DILocation(line: 0, scope: !2283)
!3430 = !DILocation(line: 253, column: 11, scope: !2292)
!3431 = !DILocation(line: 253, column: 9, scope: !2283)
!3432 = !DILocation(line: 254, column: 24, scope: !2292)
!3433 = !DILocation(line: 0, scope: !1670, inlinedAt: !3434)
!3434 = distinct !DILocation(line: 254, column: 9, scope: !2292)
!3435 = !DILocation(line: 159, column: 8, scope: !1670, inlinedAt: !3434)
!3436 = !DILocation(line: 159, column: 17, scope: !1670, inlinedAt: !3434)
!3437 = !DILocation(line: 160, column: 20, scope: !1670, inlinedAt: !3434)
!3438 = !DILocation(line: 160, column: 17, scope: !1670, inlinedAt: !3434)
!3439 = !DILocation(line: 161, column: 8, scope: !1670, inlinedAt: !3434)
!3440 = !DILocation(line: 161, column: 14, scope: !1670, inlinedAt: !3434)
!3441 = !DILocation(line: 162, column: 19, scope: !1684, inlinedAt: !3434)
!3442 = !DILocation(line: 162, column: 9, scope: !1670, inlinedAt: !3434)
!3443 = !DILocation(line: 164, column: 37, scope: !1687, inlinedAt: !3434)
!3444 = !DILocation(line: 0, scope: !1689, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 164, column: 23, scope: !1687, inlinedAt: !3434)
!3446 = !DILocation(line: 264, column: 58, scope: !1689, inlinedAt: !3445)
!3447 = !DILocation(line: 164, column: 9, scope: !1687, inlinedAt: !3434)
!3448 = !DILocation(line: 164, column: 21, scope: !1687, inlinedAt: !3434)
!3449 = !DILocation(line: 165, column: 14, scope: !1687, inlinedAt: !3434)
!3450 = !DILocation(line: 166, column: 19, scope: !1687, inlinedAt: !3434)
!3451 = !DILocation(line: 167, column: 5, scope: !1687, inlinedAt: !3434)
!3452 = !DILocation(line: 0, scope: !1706, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 256, column: 9, scope: !2292)
!3454 = !DILocation(line: 230, column: 38, scope: !1706, inlinedAt: !3453)
!3455 = !DILocation(line: 230, column: 18, scope: !1706, inlinedAt: !3453)
!3456 = !DILocation(line: 0, scope: !1716, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 230, column: 5, scope: !1706, inlinedAt: !3453)
!3458 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3457)
!3459 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3457)
!3460 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3457)
!3461 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3457)
!3462 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3457)
!3463 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3457)
!3464 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3457)
!3465 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3457)
!3466 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3457)
!3467 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3457)
!3468 = !DILocation(line: 0, scope: !1737, inlinedAt: !3469)
!3469 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3457)
!3470 = !DILocation(line: 0, scope: !1744, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3469)
!3472 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3471)
!3473 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3457)
!3474 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3457)
!3475 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3457)
!3476 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3457)
!3477 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3457)
!3478 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3457)
!3479 = !DILocation(line: 257, column: 1, scope: !2283)
!3480 = distinct !DISubprogram(name: "cavlc_mb_mvd", scope: !3, file: !3, line: 238, type: !3481, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1323, retainedNodes: !3483)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !6, !19, !19, !19}
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489}
!3484 = !DILocalVariable(name: "h", arg: 1, scope: !3480, file: !3, line: 238, type: !6)
!3485 = !DILocalVariable(name: "i_list", arg: 2, scope: !3480, file: !3, line: 238, type: !19)
!3486 = !DILocalVariable(name: "idx", arg: 3, scope: !3480, file: !3, line: 238, type: !19)
!3487 = !DILocalVariable(name: "width", arg: 4, scope: !3480, file: !3, line: 238, type: !19)
!3488 = !DILocalVariable(name: "s", scope: !3480, file: !3, line: 240, type: !1474)
!3489 = !DILocalVariable(name: "mvp", scope: !3480, file: !3, line: 241, type: !571, align: 32)
!3490 = !DILocation(line: 0, scope: !3480)
!3491 = !DILocation(line: 241, column: 5, scope: !3480)
!3492 = !DILocation(line: 242, column: 5, scope: !3480)
!3493 = !DILocation(line: 243, column: 44, scope: !3480)
!3494 = !DILocation(line: 243, column: 21, scope: !3480)
!3495 = !{!3496, !3496, i64 0}
!3496 = !{!"short", !1608, i64 0}
!3497 = !DILocation(line: 243, column: 66, scope: !3480)
!3498 = !DILocation(line: 243, column: 64, scope: !3480)
!3499 = !DILocation(line: 0, scope: !3001, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 243, column: 5, scope: !3480)
!3501 = !DILocation(line: 238, column: 22, scope: !3001, inlinedAt: !3500)
!3502 = !DILocation(line: 238, column: 17, scope: !3001, inlinedAt: !3500)
!3503 = !DILocation(line: 239, column: 13, scope: !3011, inlinedAt: !3500)
!3504 = !DILocation(line: 239, column: 9, scope: !3001, inlinedAt: !3500)
!3505 = !DILocation(line: 242, column: 13, scope: !3014, inlinedAt: !3500)
!3506 = !DILocation(line: 242, column: 9, scope: !3001, inlinedAt: !3500)
!3507 = !DILocation(line: 247, column: 13, scope: !3001, inlinedAt: !3500)
!3508 = !DILocation(line: 247, column: 10, scope: !3001, inlinedAt: !3500)
!3509 = !DILocation(line: 0, scope: !1716, inlinedAt: !3510)
!3510 = distinct !DILocation(line: 248, column: 5, scope: !3001, inlinedAt: !3500)
!3511 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3510)
!3512 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3510)
!3513 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3510)
!3514 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3510)
!3515 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3510)
!3516 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3510)
!3517 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3510)
!3518 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3510)
!3519 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3510)
!3520 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3510)
!3521 = !DILocation(line: 0, scope: !1737, inlinedAt: !3522)
!3522 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3510)
!3523 = !DILocation(line: 0, scope: !1744, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3522)
!3525 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3524)
!3526 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3510)
!3527 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3510)
!3528 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3510)
!3529 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3510)
!3530 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3510)
!3531 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 248, column: 5, scope: !3001, inlinedAt: !3533)
!3533 = distinct !DILocation(line: 244, column: 5, scope: !3480)
!3534 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3510)
!3535 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3532)
!3536 = !DILocation(line: 244, column: 21, scope: !3480)
!3537 = !DILocation(line: 244, column: 66, scope: !3480)
!3538 = !DILocation(line: 244, column: 64, scope: !3480)
!3539 = !DILocation(line: 0, scope: !3001, inlinedAt: !3533)
!3540 = !DILocation(line: 238, column: 22, scope: !3001, inlinedAt: !3533)
!3541 = !DILocation(line: 238, column: 17, scope: !3001, inlinedAt: !3533)
!3542 = !DILocation(line: 239, column: 13, scope: !3011, inlinedAt: !3533)
!3543 = !DILocation(line: 239, column: 9, scope: !3001, inlinedAt: !3533)
!3544 = !DILocation(line: 242, column: 13, scope: !3014, inlinedAt: !3533)
!3545 = !DILocation(line: 242, column: 9, scope: !3001, inlinedAt: !3533)
!3546 = !DILocation(line: 247, column: 13, scope: !3001, inlinedAt: !3533)
!3547 = !DILocation(line: 247, column: 10, scope: !3001, inlinedAt: !3533)
!3548 = !DILocation(line: 0, scope: !1716, inlinedAt: !3532)
!3549 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3532)
!3550 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3532)
!3551 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3532)
!3552 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3532)
!3553 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3532)
!3554 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3532)
!3555 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3532)
!3556 = !DILocation(line: 0, scope: !1737, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3532)
!3558 = !DILocation(line: 0, scope: !1744, inlinedAt: !3559)
!3559 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3557)
!3560 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3559)
!3561 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3532)
!3562 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3532)
!3563 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3532)
!3564 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3532)
!3565 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3532)
!3566 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3532)
!3567 = !DILocation(line: 245, column: 1, scope: !3480)
!3568 = !DILocation(line: 0, scope: !1465)
!3569 = !DILocation(line: 129, column: 5, scope: !1465)
!3570 = !DILocation(line: 129, column: 22, scope: !1465)
!3571 = !DILocation(line: 136, column: 14, scope: !1465)
!3572 = !DILocation(line: 136, column: 5, scope: !1465)
!3573 = !DILocation(line: 136, column: 23, scope: !1465)
!3574 = !DILocation(line: 137, column: 5, scope: !1465)
!3575 = !DILocation(line: 137, column: 23, scope: !1465)
!3576 = !DILocation(line: 138, column: 15, scope: !1465)
!3577 = !DILocation(line: 139, column: 29, scope: !1465)
!3578 = !{!3579, !1607, i64 0}
!3579 = !{!"", !1607, i64 0, !1608, i64 4, !1608, i64 36}
!3580 = !DILocation(line: 139, column: 34, scope: !1465)
!3581 = !DILocation(line: 139, column: 38, scope: !1465)
!3582 = !DILocation(line: 141, column: 22, scope: !1465)
!3583 = !DILocation(line: 141, column: 39, scope: !1465)
!3584 = !DILocation(line: 141, column: 47, scope: !1465)
!3585 = !DILocation(line: 141, column: 43, scope: !1465)
!3586 = !DILocation(line: 141, column: 68, scope: !1465)
!3587 = !DILocation(line: 142, column: 22, scope: !1465)
!3588 = !DILocation(line: 142, column: 39, scope: !1465)
!3589 = !DILocation(line: 142, column: 47, scope: !1465)
!3590 = !DILocation(line: 142, column: 43, scope: !1465)
!3591 = !DILocation(line: 142, column: 75, scope: !1465)
!3592 = !DILocation(line: 142, column: 16, scope: !1465)
!3593 = !DILocation(line: 143, column: 22, scope: !1465)
!3594 = !DILocation(line: 143, column: 39, scope: !1465)
!3595 = !DILocation(line: 143, column: 47, scope: !1465)
!3596 = !DILocation(line: 143, column: 43, scope: !1465)
!3597 = !DILocation(line: 143, column: 75, scope: !1465)
!3598 = !DILocation(line: 143, column: 16, scope: !1465)
!3599 = !DILocation(line: 144, column: 18, scope: !1465)
!3600 = !DILocation(line: 145, column: 34, scope: !1465)
!3601 = !DILocation(line: 146, column: 41, scope: !1465)
!3602 = !DILocation(line: 147, column: 41, scope: !1465)
!3603 = !DILocation(line: 146, column: 12, scope: !1465)
!3604 = !DILocation(line: 147, column: 12, scope: !1465)
!3605 = !DILocation(line: 148, column: 17, scope: !1465)
!3606 = !DILocation(line: 148, column: 12, scope: !1465)
!3607 = !DILocation(line: 151, column: 5, scope: !1465)
!3608 = !DILocation(line: 0, scope: !1716, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 151, column: 5, scope: !1465)
!3610 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3609)
!3611 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3609)
!3612 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3609)
!3613 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3609)
!3614 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3609)
!3615 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3609)
!3616 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3609)
!3617 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3609)
!3618 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3609)
!3619 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3609)
!3620 = !DILocation(line: 0, scope: !1737, inlinedAt: !3621)
!3621 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3609)
!3622 = !DILocation(line: 0, scope: !1744, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3621)
!3624 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3623)
!3625 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3609)
!3626 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3609)
!3627 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3609)
!3628 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3609)
!3629 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3609)
!3630 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3609)
!3631 = !DILocation(line: 153, column: 31, scope: !1465)
!3632 = !DILocation(line: 153, column: 36, scope: !1465)
!3633 = !DILocation(line: 153, column: 50, scope: !1465)
!3634 = !DILocation(line: 0, scope: !1716, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 154, column: 5, scope: !1465)
!3636 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3635)
!3637 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3635)
!3638 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3635)
!3639 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3635)
!3640 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3635)
!3641 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3635)
!3642 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3635)
!3643 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3635)
!3644 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3635)
!3645 = !DILocation(line: 0, scope: !1737, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3635)
!3647 = !DILocation(line: 0, scope: !1744, inlinedAt: !3648)
!3648 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3646)
!3649 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3648)
!3650 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3635)
!3651 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3635)
!3652 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3635)
!3653 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3635)
!3654 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3635)
!3655 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3635)
!3656 = !DILocation(line: 156, column: 20, scope: !1483)
!3657 = !DILocation(line: 156, column: 9, scope: !1465)
!3658 = !DILocation(line: 158, column: 19, scope: !1482)
!3659 = !DILocation(line: 0, scope: !1482)
!3660 = !DILocation(line: 159, column: 54, scope: !1482)
!3661 = !DILocation(line: 160, column: 21, scope: !1482)
!3662 = !DILocation(line: 160, column: 26, scope: !1482)
!3663 = !DILocation(line: 160, column: 45, scope: !1482)
!3664 = !DILocation(line: 160, column: 30, scope: !1482)
!3665 = !DILocation(line: 160, column: 13, scope: !1482)
!3666 = !DILocation(line: 163, column: 36, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 163, column: 13)
!3668 = !DILocation(line: 163, column: 13, scope: !1482)
!3669 = !DILocation(line: 161, column: 13, scope: !1482)
!3670 = !DILocation(line: 165, column: 13, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 164, column: 9)
!3672 = !{!3673, !1608, i64 2}
!3673 = !{!"", !3496, i64 0, !1608, i64 2, !1608, i64 3}
!3674 = !{!3673, !3496, i64 0}
!3675 = !DILocation(line: 0, scope: !1716, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 165, column: 13, scope: !3671)
!3677 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3676)
!3678 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3676)
!3679 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3676)
!3680 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3676)
!3681 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3676)
!3682 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3676)
!3683 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3676)
!3684 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3676)
!3685 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3676)
!3686 = !DILocation(line: 0, scope: !1737, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3676)
!3688 = !DILocation(line: 0, scope: !1744, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3687)
!3690 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3689)
!3691 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3676)
!3692 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3676)
!3693 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3676)
!3694 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3676)
!3695 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3676)
!3696 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3676)
!3697 = !DILocation(line: 166, column: 31, scope: !3671)
!3698 = !DILocation(line: 166, column: 79, scope: !3671)
!3699 = !{!3673, !1608, i64 3}
!3700 = !DILocation(line: 167, column: 9, scope: !3671)
!3701 = !DILocation(line: 169, column: 31, scope: !3667)
!3702 = !DILocation(line: 0, scope: !3667)
!3703 = !DILocation(line: 0, scope: !1486)
!3704 = !DILocation(line: 170, column: 38, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 170, column: 9)
!3706 = !DILocation(line: 170, column: 9, scope: !1486)
!3707 = !DILocation(line: 172, column: 19, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 171, column: 9)
!3709 = !DILocation(line: 172, column: 37, scope: !3708)
!3710 = !DILocation(line: 173, column: 31, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 173, column: 17)
!3712 = !DILocation(line: 173, column: 17, scope: !3708)
!3713 = !DILocation(line: 175, column: 17, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 174, column: 13)
!3715 = !DILocation(line: 0, scope: !1716, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 175, column: 17, scope: !3714)
!3717 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3716)
!3718 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3716)
!3719 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3716)
!3720 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3716)
!3721 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3716)
!3722 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3716)
!3723 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3716)
!3724 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3716)
!3725 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3716)
!3726 = !DILocation(line: 0, scope: !1737, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3716)
!3728 = !DILocation(line: 0, scope: !1744, inlinedAt: !3729)
!3729 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3727)
!3730 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3729)
!3731 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3716)
!3732 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3716)
!3733 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3716)
!3734 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3716)
!3735 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3716)
!3736 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3716)
!3737 = !DILocation(line: 176, column: 74, scope: !3714)
!3738 = !DILocation(line: 176, column: 35, scope: !3714)
!3739 = !DILocation(line: 177, column: 13, scope: !3714)
!3740 = !DILocation(line: 179, column: 35, scope: !3711)
!3741 = !DILocation(line: 0, scope: !3711)
!3742 = distinct !{!3742, !3706, !3743, !1836, !1837}
!3743 = !DILocation(line: 180, column: 9, scope: !1486)
!3744 = !DILocation(line: 183, column: 9, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 183, column: 9)
!3746 = !DILocation(line: 183, column: 28, scope: !3745)
!3747 = !DILocation(line: 183, column: 26, scope: !3745)
!3748 = !DILocation(line: 183, column: 9, scope: !1465)
!3749 = !DILocation(line: 185, column: 27, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !3, line: 185, column: 13)
!3751 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 184, column: 5)
!3752 = !DILocation(line: 0, scope: !3750)
!3753 = !DILocation(line: 185, column: 13, scope: !3751)
!3754 = !DILocation(line: 186, column: 13, scope: !3750)
!3755 = !DILocation(line: 0, scope: !1716, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 186, column: 13, scope: !3750)
!3757 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3756)
!3758 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3756)
!3759 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3756)
!3760 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3756)
!3761 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3756)
!3762 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3756)
!3763 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3756)
!3764 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3756)
!3765 = !DILocation(line: 188, column: 13, scope: !3750)
!3766 = !DILocation(line: 0, scope: !1716, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 188, column: 13, scope: !3750)
!3768 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3767)
!3769 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3767)
!3770 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3767)
!3771 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3767)
!3772 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3767)
!3773 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3767)
!3774 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3767)
!3775 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3767)
!3776 = !DILocation(line: 191, column: 23, scope: !1491)
!3777 = !DILocation(line: 0, scope: !1488)
!3778 = !DILocation(line: 191, column: 35, scope: !1491)
!3779 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 194, column: 9, scope: !1490)
!3781 = !DILocation(line: 199, column: 1, scope: !1465)
!3782 = !DILocation(line: 198, column: 5, scope: !1465)
!3783 = !DILocation(line: 193, column: 20, scope: !1490)
!3784 = !DILocation(line: 0, scope: !1490)
!3785 = !DILocation(line: 194, column: 9, scope: !1490)
!3786 = !DILocation(line: 0, scope: !1716, inlinedAt: !3780)
!3787 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3780)
!3788 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3780)
!3789 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3780)
!3790 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3780)
!3791 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3780)
!3792 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3780)
!3793 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3780)
!3794 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3780)
!3795 = !DILocation(line: 0, scope: !1737, inlinedAt: !3796)
!3796 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3780)
!3797 = !DILocation(line: 0, scope: !1744, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3796)
!3799 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3798)
!3800 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3780)
!3801 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3780)
!3802 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3780)
!3803 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3780)
!3804 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3780)
!3805 = !DILocation(line: 195, column: 25, scope: !1490)
!3806 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3780)
!3807 = !DILocation(line: 195, column: 22, scope: !1490)
!3808 = !DILocation(line: 191, column: 57, scope: !1491)
!3809 = distinct !{!3809, !3810, !3811, !1836, !1837}
!3810 = !DILocation(line: 191, column: 5, scope: !1488)
!3811 = !DILocation(line: 196, column: 5, scope: !1488)
!3812 = !DISubprogram(name: "x264_mb_predict_mv", scope: !1327, file: !1327, line: 299, type: !3813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3815)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{null, !6, !19, !19, !19, !740}
!3815 = !{}
!3816 = !DILocation(line: 0, scope: !1498)
!3817 = !DILocation(line: 77, column: 22, scope: !1498)
!3818 = !DILocation(line: 78, column: 27, scope: !1498)
!3819 = !DILocation(line: 78, column: 33, scope: !1498)
!3820 = !DILocation(line: 79, column: 33, scope: !1498)
!3821 = !DILocation(line: 79, column: 35, scope: !1498)
!3822 = !DILocation(line: 79, column: 40, scope: !1498)
!3823 = !DILocation(line: 80, column: 24, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 80, column: 9)
!3825 = !DILocation(line: 80, column: 45, scope: !3824)
!3826 = !DILocation(line: 80, column: 9, scope: !1498)
!3827 = !DILocation(line: 82, column: 56, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 81, column: 5)
!3829 = !DILocation(line: 82, column: 60, scope: !3828)
!3830 = !DILocation(line: 83, column: 20, scope: !3828)
!3831 = !DILocation(line: 83, column: 78, scope: !3828)
!3832 = !DILocation(line: 83, column: 55, scope: !3828)
!3833 = !DILocation(line: 83, column: 39, scope: !3828)
!3834 = !DILocation(line: 0, scope: !1716, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 82, column: 9, scope: !3828)
!3836 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3835)
!3837 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3835)
!3838 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3835)
!3839 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3835)
!3840 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3835)
!3841 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3835)
!3842 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3835)
!3843 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3835)
!3844 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3835)
!3845 = !DILocation(line: 87, column: 28, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 86, column: 5)
!3847 = !DILocation(line: 87, column: 22, scope: !3846)
!3848 = !DILocation(line: 88, column: 29, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 88, column: 13)
!3850 = !DILocation(line: 88, column: 13, scope: !3846)
!3851 = !DILocation(line: 92, column: 26, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3846, file: !3, line: 92, column: 13)
!3853 = !DILocation(line: 92, column: 13, scope: !3846)
!3854 = !DILocation(line: 94, column: 20, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !3, line: 94, column: 17)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !3, line: 93, column: 9)
!3857 = !{!1605, !1611, i64 3200}
!3858 = !DILocation(line: 94, column: 25, scope: !3855)
!3859 = !{!3860, !1607, i64 4}
!3860 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1608, i64 52, !1607, i64 1076, !1607, i64 1080, !1607, i64 1084, !1607, i64 1088, !1607, i64 1092, !1607, i64 1096, !1607, i64 1100, !1607, i64 1104, !3861, i64 1108, !1607, i64 1124, !3862, i64 1128, !1607, i64 1296}
!3861 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12}
!3862 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44, !1607, i64 48, !1607, i64 52, !1607, i64 56, !1607, i64 60, !1607, i64 64, !1607, i64 68, !1607, i64 72, !1607, i64 76, !1607, i64 80, !3863, i64 84, !1607, i64 132, !1607, i64 136, !1607, i64 140, !1607, i64 144, !1607, i64 148, !1607, i64 152, !1607, i64 156, !1607, i64 160, !1607, i64 164}
!3863 = !{!"", !1607, i64 0, !1607, i64 4, !1607, i64 8, !1607, i64 12, !1607, i64 16, !1607, i64 20, !1607, i64 24, !1607, i64 28, !1607, i64 32, !1607, i64 36, !1607, i64 40, !1607, i64 44}
!3864 = !DILocation(line: 94, column: 39, scope: !3855)
!3865 = !DILocation(line: 94, column: 17, scope: !3856)
!3866 = !DILocation(line: 96, column: 37, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 95, column: 13)
!3868 = !DILocation(line: 96, column: 17, scope: !3867)
!3869 = !DILocation(line: 98, column: 34, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 97, column: 17)
!3871 = !DILocation(line: 99, column: 35, scope: !3870)
!3872 = !DILocation(line: 96, column: 57, scope: !3867)
!3873 = !DILocation(line: 96, column: 40, scope: !3867)
!3874 = distinct !{!3874, !3868, !3875, !1836, !1837}
!3875 = !DILocation(line: 100, column: 17, scope: !3867)
!3876 = !DILocation(line: 108, column: 17, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 103, column: 13)
!3878 = !DILocation(line: 110, column: 60, scope: !3877)
!3879 = !DILocation(line: 110, column: 44, scope: !3877)
!3880 = !DILocation(line: 76, column: 9, scope: !1498)
!3881 = !DILocation(line: 0, scope: !3846)
!3882 = !DILocation(line: 114, column: 37, scope: !3846)
!3883 = !DILocation(line: 0, scope: !1716, inlinedAt: !3884)
!3884 = distinct !DILocation(line: 114, column: 9, scope: !3846)
!3885 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3884)
!3886 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3884)
!3887 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3884)
!3888 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3884)
!3889 = !DILocation(line: 118, column: 12, scope: !1725, inlinedAt: !3884)
!3890 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3884)
!3891 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3884)
!3892 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3884)
!3893 = !DILocation(line: 124, column: 51, scope: !1735, inlinedAt: !3884)
!3894 = !DILocation(line: 0, scope: !1737, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3884)
!3896 = !DILocation(line: 0, scope: !1744, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 282, column: 29, scope: !1737, inlinedAt: !3895)
!3898 = !DILocation(line: 277, column: 32, scope: !1744, inlinedAt: !3897)
!3899 = !DILocation(line: 124, column: 27, scope: !1735, inlinedAt: !3884)
!3900 = !DILocation(line: 124, column: 13, scope: !1735, inlinedAt: !3884)
!3901 = !DILocation(line: 124, column: 25, scope: !1735, inlinedAt: !3884)
!3902 = !DILocation(line: 126, column: 23, scope: !1735, inlinedAt: !3884)
!3903 = !DILocation(line: 127, column: 18, scope: !1735, inlinedAt: !3884)
!3904 = !DILocation(line: 117, column: 27, scope: !1725, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 115, column: 9, scope: !3846)
!3906 = !DILocation(line: 128, column: 9, scope: !1735, inlinedAt: !3884)
!3907 = !DILocation(line: 118, column: 19, scope: !1725, inlinedAt: !3905)
!3908 = !DILocation(line: 115, column: 37, scope: !3846)
!3909 = !DILocation(line: 115, column: 81, scope: !3846)
!3910 = !DILocation(line: 115, column: 55, scope: !3846)
!3911 = !DILocation(line: 0, scope: !1716, inlinedAt: !3905)
!3912 = !DILocation(line: 117, column: 36, scope: !1725, inlinedAt: !3905)
!3913 = !DILocation(line: 117, column: 50, scope: !1725, inlinedAt: !3905)
!3914 = !DILocation(line: 117, column: 48, scope: !1725, inlinedAt: !3905)
!3915 = !DILocation(line: 117, column: 21, scope: !1725, inlinedAt: !3905)
!3916 = !DILocation(line: 119, column: 23, scope: !1732, inlinedAt: !3905)
!3917 = !DILocation(line: 119, column: 13, scope: !1725, inlinedAt: !3905)
!3918 = !DILocation(line: 0, scope: !3824)
!3919 = !DILocation(line: 117, column: 25, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 117, column: 9)
!3921 = !DILocation(line: 117, column: 9, scope: !1498)
!3922 = !DILocation(line: 119, column: 21, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 119, column: 9)
!3924 = !DILocation(line: 119, column: 19, scope: !3923)
!3925 = !DILocation(line: 119, column: 9, scope: !1498)
!3926 = !DILocation(line: 121, column: 5, scope: !1498)
!3927 = !DISubprogram(name: "x264_log", scope: !10, file: !10, line: 190, type: !3928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3815)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{null, !6, !19, !83, null}
