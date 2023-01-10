; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/mvpred.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/mvpred.c"
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

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !0

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @x264_mb_predict_mv(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %idx, i32 noundef %i_width, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #0 !dbg !133 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1426, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !1427, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %idx, metadata !1428, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !1429, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata ptr %mvp, metadata !1430, metadata !DIExpression()), !dbg !1443
  %idxprom = sext i32 %idx to i64, !dbg !1444
  %arrayidx = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %idxprom, !dbg !1444
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1444, !tbaa !1445
  call void @llvm.dbg.value(metadata i32 %0, metadata !1431, metadata !DIExpression()), !dbg !1443
  %idxprom1 = sext i32 %i_list to i64, !dbg !1449
  %idxprom3 = sext i32 %0 to i64, !dbg !1449
  %arrayidx4 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom1, i64 %idxprom3, !dbg !1449
  %1 = load i8, ptr %arrayidx4, align 1, !dbg !1449, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %1, metadata !1432, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  %sub = add nsw i32 %0, -1, !dbg !1451
  %idxprom10 = sext i32 %sub to i64, !dbg !1452
  %arrayidx11 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom1, i64 %idxprom10, !dbg !1452
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !1452, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %2, metadata !1433, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  %arrayidx19 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom1, i64 %idxprom10, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %arrayidx19, metadata !1434, metadata !DIExpression()), !dbg !1443
  %sub25 = add nsw i32 %0, -8, !dbg !1454
  %idxprom26 = sext i32 %sub25 to i64, !dbg !1455
  %arrayidx27 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom1, i64 %idxprom26, !dbg !1455
  %3 = load i8, ptr %arrayidx27, align 1, !dbg !1455, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %3, metadata !1435, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  %arrayidx36 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom1, i64 %idxprom26, !dbg !1456
  call void @llvm.dbg.value(metadata ptr %arrayidx36, metadata !1436, metadata !DIExpression()), !dbg !1443
  %add = add nsw i32 %sub25, %i_width, !dbg !1457
  %idxprom44 = sext i32 %add to i64, !dbg !1458
  %arrayidx45 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom1, i64 %idxprom44, !dbg !1458
  %4 = load i8, ptr %arrayidx45, align 1, !dbg !1458, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %4, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  call void @llvm.dbg.value(metadata !DIArgList(ptr %h, i64 %idxprom1, i64 %idxprom44), metadata !1438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 160, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 25200, DW_OP_stack_value)), !dbg !1443
  %and = and i32 %idx, 3, !dbg !1459
  %and57 = and i32 %i_width, 1, !dbg !1461
  %add58 = or i32 %and57, 2, !dbg !1462
  %cmp = icmp uge i32 %and, %add58, !dbg !1463
  %cmp60 = icmp eq i8 %4, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp60, !dbg !1464
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1464

if.then:                                          ; preds = %entry
  %sub68 = add nsw i32 %0, -9, !dbg !1465
  %idxprom69 = sext i32 %sub68 to i64, !dbg !1467
  %arrayidx70 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom1, i64 %idxprom69, !dbg !1467
  %5 = load i8, ptr %arrayidx70, align 1, !dbg !1467, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %5, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  call void @llvm.dbg.value(metadata !DIArgList(ptr %h, i64 %idxprom1, i64 %idxprom69), metadata !1438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 160, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_constu, 4, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 25200, DW_OP_stack_value)), !dbg !1443
  br label %if.end, !dbg !1468

if.end:                                           ; preds = %entry, %if.then
  %idxprom69.pn = phi i64 [ %idxprom69, %if.then ], [ %idxprom44, %entry ]
  %i_refc.0.in = phi i8 [ %5, %if.then ], [ %4, %entry ]
  %mv_c.0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom1, i64 %idxprom69.pn, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %i_refc.0.in, metadata !1437, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1443
  call void @llvm.dbg.value(metadata ptr %mv_c.0, metadata !1438, metadata !DIExpression()), !dbg !1443
  %i_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !1469
  %6 = load i32, ptr %i_partition, align 4, !dbg !1469, !tbaa !1471
  switch i32 %6, label %if.end118 [
    i32 14, label %if.then85
    i32 15, label %if.then103
  ], !dbg !1498

if.then85:                                        ; preds = %if.end
  %cmp86 = icmp eq i32 %idx, 0, !dbg !1499
  br i1 %cmp86, label %if.then88, label %if.else, !dbg !1502

if.then88:                                        ; preds = %if.then85
  %cmp89 = icmp eq i8 %3, %1, !dbg !1503
  br i1 %cmp89, label %if.then91, label %if.end118, !dbg !1506

if.then91:                                        ; preds = %if.then88
  %7 = load i32, ptr %arrayidx36, align 4, !dbg !1507, !tbaa !1450
  store i32 %7, ptr %mvp, align 4, !dbg !1507, !tbaa !1450
  br label %cleanup, !dbg !1509

if.else:                                          ; preds = %if.then85
  %cmp93 = icmp eq i8 %2, %1, !dbg !1510
  br i1 %cmp93, label %if.then95, label %if.end118, !dbg !1513

if.then95:                                        ; preds = %if.else
  %8 = load i32, ptr %arrayidx19, align 4, !dbg !1514, !tbaa !1450
  store i32 %8, ptr %mvp, align 4, !dbg !1514, !tbaa !1450
  br label %cleanup, !dbg !1516

if.then103:                                       ; preds = %if.end
  %cmp104 = icmp eq i32 %idx, 0, !dbg !1517
  br i1 %cmp104, label %if.then106, label %if.else111, !dbg !1521

if.then106:                                       ; preds = %if.then103
  %cmp107 = icmp eq i8 %2, %1, !dbg !1522
  br i1 %cmp107, label %if.then109, label %if.end118, !dbg !1525

if.then109:                                       ; preds = %if.then106
  %9 = load i32, ptr %arrayidx19, align 4, !dbg !1526, !tbaa !1450
  store i32 %9, ptr %mvp, align 4, !dbg !1526, !tbaa !1450
  br label %cleanup, !dbg !1528

if.else111:                                       ; preds = %if.then103
  %cmp112 = icmp eq i8 %i_refc.0.in, %1, !dbg !1529
  br i1 %cmp112, label %if.then114, label %if.end118, !dbg !1532

if.then114:                                       ; preds = %if.else111
  %10 = load i32, ptr %mv_c.0, align 4, !dbg !1533, !tbaa !1450
  store i32 %10, ptr %mvp, align 4, !dbg !1533, !tbaa !1450
  br label %cleanup, !dbg !1535

if.end118:                                        ; preds = %if.end, %if.else111, %if.then106, %if.then88, %if.else
  %cmp119 = icmp eq i8 %2, %1, !dbg !1536
  %conv120 = zext i1 %cmp119 to i32, !dbg !1536
  %cmp121 = icmp eq i8 %3, %1, !dbg !1537
  %conv122 = zext i1 %cmp121 to i32, !dbg !1537
  %add123 = add nuw nsw i32 %conv122, %conv120, !dbg !1538
  %cmp124 = icmp eq i8 %i_refc.0.in, %1, !dbg !1539
  %conv125 = zext i1 %cmp124 to i32, !dbg !1539
  %add126 = add nuw nsw i32 %add123, %conv125, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %add126, metadata !1439, metadata !DIExpression()), !dbg !1443
  %cmp127 = icmp ugt i32 %add126, 1, !dbg !1541
  br i1 %cmp127, label %median, label %if.else130, !dbg !1542

median:                                           ; preds = %if.else144, %if.end118
  call void @llvm.dbg.label(metadata !1440), !dbg !1543
  call void @llvm.dbg.value(metadata ptr %mvp, metadata !1544, metadata !DIExpression()) #7, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %arrayidx19, metadata !1549, metadata !DIExpression()) #7, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %arrayidx36, metadata !1550, metadata !DIExpression()) #7, !dbg !1552
  call void @llvm.dbg.value(metadata ptr %mv_c.0, metadata !1551, metadata !DIExpression()) #7, !dbg !1552
  %11 = load i16, ptr %arrayidx19, align 2, !dbg !1554, !tbaa !1555
  %conv.i = sext i16 %11 to i32, !dbg !1554
  %12 = load i16, ptr %arrayidx36, align 2, !dbg !1557, !tbaa !1555
  %conv2.i = sext i16 %12 to i32, !dbg !1557
  %13 = load i16, ptr %mv_c.0, align 2, !dbg !1558, !tbaa !1555
  %conv4.i = sext i16 %13 to i32, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %conv2.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %conv4.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1567
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1569
  %14 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0) #7, !dbg !1570
  call void @llvm.dbg.value(metadata i32 %14, metadata !1566, metadata !DIExpression()) #7, !dbg !1567
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv.i, i32 %14), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1567
  %add.i.i = add nsw i32 %14, %conv2.i, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1567
  %sub3.i.i = sub nsw i32 %add.i.i, %conv4.i, !dbg !1572
  %15 = tail call i32 @llvm.smin.i32(i32 %sub3.i.i, i32 0) #7, !dbg !1573
  %sub7.i.i = sub nsw i32 %add.i.i, %15, !dbg !1574
  call void @llvm.dbg.value(metadata i32 %sub7.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1567
  %16 = add nsw i32 %14, %sub7.i.i, !dbg !1575
  %sub8.i.i = sub nsw i32 %conv.i, %16, !dbg !1575
  %17 = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0) #7, !dbg !1576
  %add12.i.i = add nsw i32 %17, %sub7.i.i, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %add12.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1567
  %conv5.i = trunc i32 %add12.i.i to i16, !dbg !1578
  store i16 %conv5.i, ptr %mvp, align 2, !dbg !1579, !tbaa !1555
  %arrayidx7.i = getelementptr inbounds i16, ptr %arrayidx19, i64 1, !dbg !1580
  %18 = load i16, ptr %arrayidx7.i, align 2, !dbg !1580, !tbaa !1555
  %conv8.i = sext i16 %18 to i32, !dbg !1580
  %arrayidx9.i = getelementptr inbounds i16, ptr %arrayidx36, i64 1, !dbg !1581
  %19 = load i16, ptr %arrayidx9.i, align 2, !dbg !1581, !tbaa !1555
  %conv10.i = sext i16 %19 to i32, !dbg !1581
  %arrayidx11.i = getelementptr inbounds i16, ptr %mv_c.0, i64 1, !dbg !1582
  %20 = load i16, ptr %arrayidx11.i, align 2, !dbg !1582, !tbaa !1555
  %conv12.i = sext i16 %20 to i32, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %conv8.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %conv10.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1583
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i, !dbg !1585
  %21 = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0) #7, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %21, metadata !1566, metadata !DIExpression()) #7, !dbg !1583
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv8.i, i32 %21), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1583
  %add.i21.i = add nsw i32 %21, %conv10.i, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %add.i21.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1583
  %sub3.i22.i = sub nsw i32 %add.i21.i, %conv12.i, !dbg !1588
  %22 = tail call i32 @llvm.smin.i32(i32 %sub3.i22.i, i32 0) #7, !dbg !1589
  %sub7.i23.i = sub nsw i32 %add.i21.i, %22, !dbg !1590
  call void @llvm.dbg.value(metadata i32 %sub7.i23.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1583
  %23 = add nsw i32 %21, %sub7.i23.i, !dbg !1591
  %sub8.i24.i = sub nsw i32 %conv8.i, %23, !dbg !1591
  %24 = tail call i32 @llvm.smin.i32(i32 %sub8.i24.i, i32 0) #7, !dbg !1592
  %add12.i25.i = add nsw i32 %24, %sub7.i23.i, !dbg !1593
  call void @llvm.dbg.value(metadata i32 %add12.i25.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1583
  %conv14.i = trunc i32 %add12.i25.i to i16, !dbg !1594
  %arrayidx15.i = getelementptr inbounds i16, ptr %mvp, i64 1, !dbg !1595
  store i16 %conv14.i, ptr %arrayidx15.i, align 2, !dbg !1596, !tbaa !1555
  br label %cleanup, !dbg !1597

if.else130:                                       ; preds = %if.end118
  %cmp131 = icmp eq i32 %add126, 1, !dbg !1598
  br i1 %cmp131, label %if.then133, label %if.else144, !dbg !1600

if.then133:                                       ; preds = %if.else130
  br i1 %cmp119, label %if.then136, label %if.else137, !dbg !1601

if.then136:                                       ; preds = %if.then133
  %25 = load i32, ptr %arrayidx19, align 4, !dbg !1603, !tbaa !1450
  store i32 %25, ptr %mvp, align 4, !dbg !1603, !tbaa !1450
  br label %cleanup, !dbg !1603

if.else137:                                       ; preds = %if.then133
  br i1 %cmp121, label %if.then140, label %if.else141, !dbg !1605

if.then140:                                       ; preds = %if.else137
  %26 = load i32, ptr %arrayidx36, align 4, !dbg !1606, !tbaa !1450
  store i32 %26, ptr %mvp, align 4, !dbg !1606, !tbaa !1450
  br label %cleanup, !dbg !1606

if.else141:                                       ; preds = %if.else137
  %27 = load i32, ptr %mv_c.0, align 4, !dbg !1608, !tbaa !1450
  store i32 %27, ptr %mvp, align 4, !dbg !1608, !tbaa !1450
  br label %cleanup

if.else144:                                       ; preds = %if.else130
  %cmp145 = icmp eq i8 %3, -2, !dbg !1609
  %cmp147 = icmp eq i8 %i_refc.0.in, -2
  %or.cond164 = select i1 %cmp145, i1 %cmp147, i1 false, !dbg !1611
  %cmp150 = icmp ne i8 %2, -2
  %or.cond165 = select i1 %or.cond164, i1 %cmp150, i1 false, !dbg !1611
  br i1 %or.cond165, label %if.then152, label %median, !dbg !1611

if.then152:                                       ; preds = %if.else144
  %28 = load i32, ptr %arrayidx19, align 4, !dbg !1612, !tbaa !1450
  store i32 %28, ptr %mvp, align 4, !dbg !1612, !tbaa !1450
  br label %cleanup

cleanup:                                          ; preds = %median, %if.then136, %if.else141, %if.then140, %if.then152, %if.then114, %if.then109, %if.then95, %if.then91
  ret void, !dbg !1613
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @x264_mb_predict_mv_16x16(ptr nocapture noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvp) local_unnamed_addr #3 !dbg !1614 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1618, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !1619, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i_ref, metadata !1620, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata ptr %mvp, metadata !1621, metadata !DIExpression()), !dbg !1632
  %idxprom = sext i32 %i_list to i64, !dbg !1633
  %arrayidx1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom, i64 11, !dbg !1633
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1633, !tbaa !1450
  %conv = sext i8 %0 to i32, !dbg !1633
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1622, metadata !DIExpression()), !dbg !1632
  %arrayidx6 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 11, !dbg !1634
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !1623, metadata !DIExpression()), !dbg !1632
  %arrayidx12 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom, i64 4, !dbg !1635
  %1 = load i8, ptr %arrayidx12, align 4, !dbg !1635, !tbaa !1450
  %conv13 = sext i8 %1 to i32, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %conv13, metadata !1624, metadata !DIExpression()), !dbg !1632
  %arrayidx19 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 4, !dbg !1636
  call void @llvm.dbg.value(metadata ptr %arrayidx19, metadata !1625, metadata !DIExpression()), !dbg !1632
  %arrayidx26 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom, i64 8, !dbg !1637
  %2 = load i8, ptr %arrayidx26, align 8, !dbg !1637, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %2, metadata !1626, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1632
  %arrayidx33 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 8, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %arrayidx33, metadata !1627, metadata !DIExpression()), !dbg !1632
  %cmp = icmp eq i8 %2, -2, !dbg !1639
  br i1 %cmp, label %if.then, label %if.end, !dbg !1641

if.then:                                          ; preds = %entry
  %arrayidx41 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom, i64 3, !dbg !1642
  %3 = load i8, ptr %arrayidx41, align 1, !dbg !1642, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %3, metadata !1626, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1632
  %arrayidx48 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 3, !dbg !1644
  call void @llvm.dbg.value(metadata ptr %arrayidx48, metadata !1627, metadata !DIExpression()), !dbg !1632
  br label %if.end, !dbg !1645

if.end:                                           ; preds = %if.then, %entry
  %mv_c.0 = phi ptr [ %arrayidx48, %if.then ], [ %arrayidx33, %entry ], !dbg !1632
  %i_refc.0.in = phi i8 [ %3, %if.then ], [ %2, %entry ]
  %i_refc.0 = sext i8 %i_refc.0.in to i32, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i_refc.0, metadata !1626, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata ptr %mv_c.0, metadata !1627, metadata !DIExpression()), !dbg !1632
  %cmp50 = icmp eq i32 %conv, %i_ref, !dbg !1646
  %conv51 = zext i1 %cmp50 to i32, !dbg !1646
  %cmp52 = icmp eq i32 %conv13, %i_ref, !dbg !1647
  %conv53 = zext i1 %cmp52 to i32, !dbg !1647
  %add = add nuw nsw i32 %conv53, %conv51, !dbg !1648
  %cmp54 = icmp eq i32 %i_refc.0, %i_ref, !dbg !1649
  %conv55 = zext i1 %cmp54 to i32, !dbg !1649
  %add56 = add nuw nsw i32 %add, %conv55, !dbg !1650
  call void @llvm.dbg.value(metadata i32 %add56, metadata !1628, metadata !DIExpression()), !dbg !1632
  %cmp57 = icmp ugt i32 %add56, 1, !dbg !1651
  br i1 %cmp57, label %median, label %if.else, !dbg !1652

median:                                           ; preds = %if.else73, %if.end
  call void @llvm.dbg.label(metadata !1629), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %mvp, metadata !1544, metadata !DIExpression()) #7, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !1549, metadata !DIExpression()) #7, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %arrayidx19, metadata !1550, metadata !DIExpression()) #7, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %mv_c.0, metadata !1551, metadata !DIExpression()) #7, !dbg !1654
  %4 = load i16, ptr %arrayidx6, align 2, !dbg !1656, !tbaa !1555
  %conv.i = sext i16 %4 to i32, !dbg !1656
  %5 = load i16, ptr %arrayidx19, align 2, !dbg !1657, !tbaa !1555
  %conv2.i = sext i16 %5 to i32, !dbg !1657
  %6 = load i16, ptr %mv_c.0, align 2, !dbg !1658, !tbaa !1555
  %conv4.i = sext i16 %6 to i32, !dbg !1658
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %conv2.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %conv4.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1659
  %sub.i.i = sub nsw i32 %conv.i, %conv2.i, !dbg !1661
  %7 = tail call i32 @llvm.smin.i32(i32 %sub.i.i, i32 0) #7, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %7, metadata !1566, metadata !DIExpression()) #7, !dbg !1659
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv.i, i32 %7), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1659
  %add.i.i = add nsw i32 %7, %conv2.i, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1659
  %sub3.i.i = sub nsw i32 %add.i.i, %conv4.i, !dbg !1664
  %8 = tail call i32 @llvm.smin.i32(i32 %sub3.i.i, i32 0) #7, !dbg !1665
  %sub7.i.i = sub nsw i32 %add.i.i, %8, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %sub7.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1659
  %9 = add nsw i32 %7, %sub7.i.i, !dbg !1667
  %sub8.i.i = sub nsw i32 %conv.i, %9, !dbg !1667
  %10 = tail call i32 @llvm.smin.i32(i32 %sub8.i.i, i32 0) #7, !dbg !1668
  %add12.i.i = add nsw i32 %10, %sub7.i.i, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %add12.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1659
  %conv5.i = trunc i32 %add12.i.i to i16, !dbg !1670
  store i16 %conv5.i, ptr %mvp, align 2, !dbg !1671, !tbaa !1555
  %arrayidx7.i = getelementptr inbounds i16, ptr %arrayidx6, i64 1, !dbg !1672
  %11 = load i16, ptr %arrayidx7.i, align 2, !dbg !1672, !tbaa !1555
  %conv8.i = sext i16 %11 to i32, !dbg !1672
  %arrayidx9.i = getelementptr inbounds i16, ptr %arrayidx19, i64 1, !dbg !1673
  %12 = load i16, ptr %arrayidx9.i, align 2, !dbg !1673, !tbaa !1555
  %conv10.i = sext i16 %12 to i32, !dbg !1673
  %arrayidx11.i = getelementptr inbounds i16, ptr %mv_c.0, i64 1, !dbg !1674
  %13 = load i16, ptr %arrayidx11.i, align 2, !dbg !1674, !tbaa !1555
  %conv12.i = sext i16 %13 to i32, !dbg !1674
  call void @llvm.dbg.value(metadata i32 %conv8.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %conv10.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1675
  call void @llvm.dbg.value(metadata i32 %conv12.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1675
  %sub.i20.i = sub nsw i32 %conv8.i, %conv10.i, !dbg !1677
  %14 = tail call i32 @llvm.smin.i32(i32 %sub.i20.i, i32 0) #7, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %14, metadata !1566, metadata !DIExpression()) #7, !dbg !1675
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv8.i, i32 %14), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1675
  %add.i21.i = add nsw i32 %14, %conv10.i, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %add.i21.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1675
  %sub3.i22.i = sub nsw i32 %add.i21.i, %conv12.i, !dbg !1680
  %15 = tail call i32 @llvm.smin.i32(i32 %sub3.i22.i, i32 0) #7, !dbg !1681
  %sub7.i23.i = sub nsw i32 %add.i21.i, %15, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %sub7.i23.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1675
  %16 = add nsw i32 %14, %sub7.i23.i, !dbg !1683
  %sub8.i24.i = sub nsw i32 %conv8.i, %16, !dbg !1683
  %17 = tail call i32 @llvm.smin.i32(i32 %sub8.i24.i, i32 0) #7, !dbg !1684
  %add12.i25.i = add nsw i32 %17, %sub7.i23.i, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %add12.i25.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1675
  %conv14.i = trunc i32 %add12.i25.i to i16, !dbg !1686
  %arrayidx15.i = getelementptr inbounds i16, ptr %mvp, i64 1, !dbg !1687
  store i16 %conv14.i, ptr %arrayidx15.i, align 2, !dbg !1688, !tbaa !1555
  br label %if.end85, !dbg !1689

if.else:                                          ; preds = %if.end
  %cmp60 = icmp eq i32 %add56, 1, !dbg !1690
  br i1 %cmp60, label %if.then62, label %if.else73, !dbg !1692

if.then62:                                        ; preds = %if.else
  br i1 %cmp50, label %if.then65, label %if.else66, !dbg !1693

if.then65:                                        ; preds = %if.then62
  %18 = load i32, ptr %arrayidx6, align 4, !dbg !1695, !tbaa !1450
  store i32 %18, ptr %mvp, align 4, !dbg !1695, !tbaa !1450
  br label %if.end85, !dbg !1695

if.else66:                                        ; preds = %if.then62
  br i1 %cmp52, label %if.then69, label %if.else70, !dbg !1697

if.then69:                                        ; preds = %if.else66
  %19 = load i32, ptr %arrayidx19, align 4, !dbg !1698, !tbaa !1450
  store i32 %19, ptr %mvp, align 4, !dbg !1698, !tbaa !1450
  br label %if.end85, !dbg !1698

if.else70:                                        ; preds = %if.else66
  %20 = load i32, ptr %mv_c.0, align 4, !dbg !1700, !tbaa !1450
  store i32 %20, ptr %mvp, align 4, !dbg !1700, !tbaa !1450
  br label %if.end85

if.else73:                                        ; preds = %if.else
  %cmp74 = icmp eq i8 %1, -2, !dbg !1701
  %cmp76 = icmp eq i8 %i_refc.0.in, -2
  %or.cond = select i1 %cmp74, i1 %cmp76, i1 false, !dbg !1703
  %cmp79 = icmp ne i8 %0, -2
  %or.cond86 = select i1 %or.cond, i1 %cmp79, i1 false, !dbg !1703
  br i1 %or.cond86, label %if.then81, label %median, !dbg !1703

if.then81:                                        ; preds = %if.else73
  %21 = load i32, ptr %arrayidx6, align 4, !dbg !1704, !tbaa !1450
  store i32 %21, ptr %mvp, align 4, !dbg !1704, !tbaa !1450
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %if.then69, %if.else70, %if.then65, %median
  ret void, !dbg !1705
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn uwtable
define dso_local void @x264_mb_predict_mv_pskip(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %mv) local_unnamed_addr #3 !dbg !1706 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1710, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata ptr %mv, metadata !1711, metadata !DIExpression()), !dbg !1716
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !1717
  %arrayidx1 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 11, !dbg !1718
  %0 = load i8, ptr %arrayidx1, align 1, !dbg !1718, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %0, metadata !1712, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1716
  %arrayidx6 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 4, !dbg !1719
  %1 = load i8, ptr %arrayidx6, align 4, !dbg !1719, !tbaa !1450
  %conv7 = sext i8 %1 to i32, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %conv7, metadata !1713, metadata !DIExpression()), !dbg !1716
  %mv10 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !1720
  call void @llvm.dbg.value(metadata ptr %mv10, metadata !1714, metadata !DIExpression(DW_OP_plus_uconst, 44, DW_OP_stack_value)), !dbg !1716
  %arrayidx17 = getelementptr inbounds [40 x [2 x i16]], ptr %mv10, i64 0, i64 4, !dbg !1721
  call void @llvm.dbg.value(metadata ptr %arrayidx17, metadata !1715, metadata !DIExpression()), !dbg !1716
  %cmp = icmp eq i8 %0, -2, !dbg !1722
  %cmp20 = icmp eq i8 %1, -2
  %or.cond = select i1 %cmp, i1 true, i1 %cmp20, !dbg !1724
  br i1 %or.cond, label %if.then, label %lor.lhs.false22, !dbg !1724

lor.lhs.false22:                                  ; preds = %entry
  %conv = sext i8 %0 to i32, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1712, metadata !DIExpression()), !dbg !1716
  %arrayidx12 = getelementptr inbounds [40 x [2 x i16]], ptr %mv10, i64 0, i64 11, !dbg !1725
  call void @llvm.dbg.value(metadata ptr %arrayidx12, metadata !1714, metadata !DIExpression()), !dbg !1716
  %2 = load i32, ptr %arrayidx12, align 4, !dbg !1726, !tbaa !1450
  %or = or i32 %2, %conv, !dbg !1727
  %tobool.not = icmp eq i32 %or, 0, !dbg !1727
  br i1 %tobool.not, label %if.then, label %lor.lhs.false23, !dbg !1728

lor.lhs.false23:                                  ; preds = %lor.lhs.false22
  %3 = load i32, ptr %arrayidx17, align 4, !dbg !1729, !tbaa !1450
  %or24 = or i32 %3, %conv7, !dbg !1730
  %tobool25.not = icmp eq i32 %or24, 0, !dbg !1730
  br i1 %tobool25.not, label %if.then, label %if.else, !dbg !1731

if.then:                                          ; preds = %lor.lhs.false23, %lor.lhs.false22, %entry
  store i32 0, ptr %mv, align 4, !dbg !1732, !tbaa !1450
  br label %if.end, !dbg !1734

if.else:                                          ; preds = %lor.lhs.false23
  tail call void @x264_mb_predict_mv_16x16(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, ptr noundef %mv), !dbg !1735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1736
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @x264_mb_predict_mv_direct16x16(ptr noundef %h, ptr noundef writeonly %b_changed) local_unnamed_addr #4 !dbg !1737 {
entry:
  %ref.i = alloca [2 x i8], align 2
  %mv.i = alloca [2 x [2 x i16]], align 8
  %l1mv.i = alloca [2 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %h, metadata !1741, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %b_changed, metadata !1742, metadata !DIExpression()), !dbg !1750
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 5, !dbg !1751
  %0 = load i32, ptr %i_direct_mv_pred, align 4, !dbg !1751, !tbaa !1753
  %cmp = icmp eq i32 %0, 0, !dbg !1754
  br i1 %cmp, label %cleanup376, label %if.else, !dbg !1755

if.else:                                          ; preds = %entry
  %b_direct_spatial_mv_pred = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 15, !dbg !1756
  %1 = load i32, ptr %b_direct_spatial_mv_pred, align 8, !dbg !1756, !tbaa !1758
  %tobool.not = icmp eq i32 %1, 0, !dbg !1759
  br i1 %tobool.not, label %if.else2, label %if.then1, !dbg !1760

if.then1:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %h, metadata !1761, metadata !DIExpression()) #7, !dbg !1805
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ref.i) #7, !dbg !1807
  call void @llvm.dbg.declare(metadata ptr %ref.i, metadata !1766, metadata !DIExpression()) #7, !dbg !1808
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mv.i) #7, !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %mv.i, metadata !1768, metadata !DIExpression()) #7, !dbg !1809
  %fref1.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, !dbg !1810
  %2 = load ptr, ptr %fref1.i, align 16, !dbg !1811, !tbaa !1812
  %ref1.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 48, !dbg !1813
  %3 = load ptr, ptr %ref1.i, align 8, !dbg !1811, !tbaa !1812
  %i_b8_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 7, !dbg !1814
  %4 = load i32, ptr %i_b8_xy.i, align 4, !dbg !1814, !tbaa !1815
  %arrayidx7.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 48, i64 1, !dbg !1816
  %5 = load ptr, ptr %arrayidx7.i, align 8, !dbg !1816, !tbaa !1812
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %l1mv.i) #7, !dbg !1817
  call void @llvm.dbg.declare(metadata ptr %l1mv.i, metadata !1774, metadata !DIExpression()) #7, !dbg !1818
  %mv14.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 43, !dbg !1819
  %6 = load ptr, ptr %mv14.i, align 16, !dbg !1820, !tbaa !1812
  %i_b4_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 8, !dbg !1821
  %7 = load i32, ptr %i_b4_xy.i, align 16, !dbg !1821, !tbaa !1822
  %idxprom17.i = sext i32 %7 to i64, !dbg !1820
  %arrayidx18.i = getelementptr inbounds [2 x i16], ptr %6, i64 %idxprom17.i, !dbg !1820
  store ptr %arrayidx18.i, ptr %l1mv.i, align 16, !dbg !1823, !tbaa !1812
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %l1mv.i, i64 1, !dbg !1823
  %arrayidx22.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 43, i64 1, !dbg !1824
  %8 = load ptr, ptr %arrayidx22.i, align 8, !dbg !1824, !tbaa !1812
  %arrayidx26.i = getelementptr inbounds [2 x i16], ptr %8, i64 %idxprom17.i, !dbg !1824
  store ptr %arrayidx26.i, ptr %arrayinit.element.i, align 8, !dbg !1823, !tbaa !1812
  %mb_type.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 41, !dbg !1825
  %9 = load ptr, ptr %mb_type.i, align 16, !dbg !1825, !tbaa !1826
  %i_mb_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !1829
  %10 = load i32, ptr %i_mb_xy.i, align 8, !dbg !1829, !tbaa !1830
  %idxprom30.i = sext i32 %10 to i64, !dbg !1831
  %arrayidx31.i = getelementptr inbounds i8, ptr %9, i64 %idxprom30.i, !dbg !1831
  %11 = load i8, ptr %arrayidx31.i, align 1, !dbg !1831, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %11, metadata !1776, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1805
  %mb_partition.i = getelementptr inbounds %struct.x264_frame, ptr %2, i64 0, i32 42, !dbg !1832
  %12 = load ptr, ptr %mb_partition.i, align 8, !dbg !1832, !tbaa !1833
  %arrayidx37.i = getelementptr inbounds i8, ptr %12, i64 %idxprom30.i, !dbg !1834
  %13 = load i8, ptr %arrayidx37.i, align 1, !dbg !1834, !tbaa !1450
  %conv38.i = zext i8 %13 to i32, !dbg !1834
  call void @llvm.dbg.value(metadata i32 %conv38.i, metadata !1777, metadata !DIExpression()) #7, !dbg !1805
  %i_partition.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !1835
  store i32 %conv38.i, ptr %i_partition.i, align 4, !dbg !1836, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 0, metadata !1778, metadata !DIExpression()) #7, !dbg !1837
  br label %for.body.i, !dbg !1838

for.cond.cleanup.i:                               ; preds = %x264_macroblock_cache_mv.exit.i
  %idxprom.i = sext i32 %4 to i64, !dbg !1811
  %arrayidx3.i = getelementptr inbounds i8, ptr %3, i64 %idxprom.i, !dbg !1811
  %arrayidx11.i = getelementptr inbounds i8, ptr %5, i64 %idxprom.i, !dbg !1816
  %14 = load i16, ptr %ref.i, align 2, !dbg !1839, !tbaa !1450
  %15 = and i16 %14, -32640, !dbg !1841
  %cmp161.i = icmp eq i16 %15, -32640, !dbg !1842
  %16 = trunc i16 %14 to i8, !dbg !1843
  %17 = lshr i16 %14, 8, !dbg !1843
  %18 = trunc i16 %17 to i8, !dbg !1843
  br i1 %cmp161.i, label %if.then163.i, label %if.end164.i, !dbg !1843

for.body.i:                                       ; preds = %x264_macroblock_cache_mv.exit.i, %if.then1
  %cmp.i = phi i1 [ true, %if.then1 ], [ false, %x264_macroblock_cache_mv.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %if.then1 ], [ 1, %x264_macroblock_cache_mv.exit.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1778, metadata !DIExpression()) #7, !dbg !1837
  %arrayidx45.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 11, !dbg !1844
  %19 = load i8, ptr %arrayidx45.i, align 1, !dbg !1844, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %19, metadata !1780, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %arrayidx52.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv.i, i64 11, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %arrayidx52.i, metadata !1783, metadata !DIExpression()) #7, !dbg !1845
  %arrayidx58.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 4, !dbg !1847
  %20 = load i8, ptr %arrayidx58.i, align 4, !dbg !1847, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %20, metadata !1784, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %arrayidx65.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv.i, i64 4, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %arrayidx65.i, metadata !1785, metadata !DIExpression()) #7, !dbg !1845
  %arrayidx72.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 8, !dbg !1849
  %21 = load i8, ptr %arrayidx72.i, align 8, !dbg !1849, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %21, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %arrayidx79.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv.i, i64 8, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %arrayidx79.i, metadata !1787, metadata !DIExpression()) #7, !dbg !1845
  %cmp81.i = icmp eq i8 %21, -2, !dbg !1851
  br i1 %cmp81.i, label %if.then.i, label %if.end.i, !dbg !1853

if.then.i:                                        ; preds = %for.body.i
  %arrayidx88.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 3, !dbg !1854
  %22 = load i8, ptr %arrayidx88.i, align 1, !dbg !1854, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %22, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %arrayidx95.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv.i, i64 3, !dbg !1856
  call void @llvm.dbg.value(metadata ptr %arrayidx95.i, metadata !1787, metadata !DIExpression()) #7, !dbg !1845
  br label %if.end.i, !dbg !1857

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %mv_c.0.i = phi ptr [ %arrayidx95.i, %if.then.i ], [ %arrayidx79.i, %for.body.i ], !dbg !1845
  %i_refc.0.in.i = phi i8 [ %22, %if.then.i ], [ %21, %for.body.i ]
  call void @llvm.dbg.value(metadata i8 %i_refc.0.in.i, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %mv_c.0.i, metadata !1787, metadata !DIExpression()) #7, !dbg !1845
  %23 = tail call i8 @llvm.umin.i8(i8 %20, i8 %i_refc.0.in.i) #7, !dbg !1858
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 %19) #7, !dbg !1858
  call void @llvm.dbg.value(metadata i8 %24, metadata !1788, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %cmp111.i = icmp slt i8 %24, 0, !dbg !1859
  br i1 %cmp111.i, label %if.then113.i, label %if.else.i, !dbg !1860

if.then113.i:                                     ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i32 -1, metadata !1788, metadata !DIExpression()) #7, !dbg !1845
  %arrayidx115.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 %indvars.iv.i, !dbg !1861
  store i32 0, ptr %arrayidx115.i, align 4, !dbg !1863, !tbaa !1450
  br label %if.end151.i, !dbg !1864

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i8 %i_refc.0.in.i, metadata !1786, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !1845
  %cmp117.i = icmp ule i8 %19, %23, !dbg !1865
  %conv118.i = zext i1 %cmp117.i to i32, !dbg !1865
  %cmp119.i = icmp eq i8 %24, %20, !dbg !1866
  %conv120.i = zext i1 %cmp119.i to i32, !dbg !1866
  %add.i = add nuw nsw i32 %conv120.i, %conv118.i, !dbg !1867
  %cmp121.i = icmp eq i8 %24, %i_refc.0.in.i, !dbg !1868
  %conv122.i = zext i1 %cmp121.i to i32, !dbg !1868
  %add123.i = add nuw nsw i32 %add.i, %conv122.i, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %add123.i, metadata !1789, metadata !DIExpression()) #7, !dbg !1870
  %cmp124.i = icmp ugt i32 %add123.i, 1, !dbg !1871
  br i1 %cmp124.i, label %if.then126.i, label %if.else130.i, !dbg !1873

if.then126.i:                                     ; preds = %if.else.i
  %arrayidx128.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 %indvars.iv.i, !dbg !1874
  call void @llvm.dbg.value(metadata ptr %arrayidx128.i, metadata !1544, metadata !DIExpression()) #7, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %arrayidx52.i, metadata !1549, metadata !DIExpression()) #7, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %arrayidx65.i, metadata !1550, metadata !DIExpression()) #7, !dbg !1875
  call void @llvm.dbg.value(metadata ptr %mv_c.0.i, metadata !1551, metadata !DIExpression()) #7, !dbg !1875
  %25 = load i16, ptr %arrayidx52.i, align 2, !dbg !1877, !tbaa !1555
  %conv.i.i = sext i16 %25 to i32, !dbg !1877
  %26 = load i16, ptr %arrayidx65.i, align 2, !dbg !1878, !tbaa !1555
  %conv2.i.i = sext i16 %26 to i32, !dbg !1878
  %27 = load i16, ptr %mv_c.0.i, align 2, !dbg !1879, !tbaa !1555
  %conv4.i.i = sext i16 %27 to i32, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %conv.i.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %conv2.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %conv4.i.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1880
  %sub.i.i.i = sub nsw i32 %conv.i.i, %conv2.i.i, !dbg !1882
  %28 = tail call i32 @llvm.smin.i32(i32 %sub.i.i.i, i32 0) #7, !dbg !1883
  call void @llvm.dbg.value(metadata i32 %28, metadata !1566, metadata !DIExpression()) #7, !dbg !1880
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv.i.i, i32 %28), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1880
  %add.i.i.i = add nsw i32 %28, %conv2.i.i, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %add.i.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1880
  %sub3.i.i.i = sub nsw i32 %add.i.i.i, %conv4.i.i, !dbg !1885
  %29 = tail call i32 @llvm.smin.i32(i32 %sub3.i.i.i, i32 0) #7, !dbg !1886
  %sub7.i.i.i = sub nsw i32 %add.i.i.i, %29, !dbg !1887
  call void @llvm.dbg.value(metadata i32 %sub7.i.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1880
  %30 = add nsw i32 %28, %sub7.i.i.i, !dbg !1888
  %sub8.i.i.i = sub nsw i32 %conv.i.i, %30, !dbg !1888
  %31 = tail call i32 @llvm.smin.i32(i32 %sub8.i.i.i, i32 0) #7, !dbg !1889
  %add12.i.i.i = add nsw i32 %31, %sub7.i.i.i, !dbg !1890
  call void @llvm.dbg.value(metadata i32 %add12.i.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1880
  %conv5.i.i = trunc i32 %add12.i.i.i to i16, !dbg !1891
  store i16 %conv5.i.i, ptr %arrayidx128.i, align 4, !dbg !1892, !tbaa !1555
  %arrayidx7.i.i = getelementptr inbounds i16, ptr %arrayidx52.i, i64 1, !dbg !1893
  %32 = load i16, ptr %arrayidx7.i.i, align 2, !dbg !1893, !tbaa !1555
  %conv8.i.i = sext i16 %32 to i32, !dbg !1893
  %arrayidx9.i.i = getelementptr inbounds i16, ptr %arrayidx65.i, i64 1, !dbg !1894
  %33 = load i16, ptr %arrayidx9.i.i, align 2, !dbg !1894, !tbaa !1555
  %conv10.i.i = sext i16 %33 to i32, !dbg !1894
  %arrayidx11.i.i = getelementptr inbounds i16, ptr %mv_c.0.i, i64 1, !dbg !1895
  %34 = load i16, ptr %arrayidx11.i.i, align 2, !dbg !1895, !tbaa !1555
  %conv12.i.i = sext i16 %34 to i32, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %conv8.i.i, metadata !1559, metadata !DIExpression()) #7, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %conv10.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %conv12.i.i, metadata !1565, metadata !DIExpression()) #7, !dbg !1896
  %sub.i20.i.i = sub nsw i32 %conv8.i.i, %conv10.i.i, !dbg !1898
  %35 = tail call i32 @llvm.smin.i32(i32 %sub.i20.i.i, i32 0) #7, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %35, metadata !1566, metadata !DIExpression()) #7, !dbg !1896
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv8.i.i, i32 %35), metadata !1559, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !1896
  %add.i21.i.i = add nsw i32 %35, %conv10.i.i, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %add.i21.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1896
  %sub3.i22.i.i = sub nsw i32 %add.i21.i.i, %conv12.i.i, !dbg !1901
  %36 = tail call i32 @llvm.smin.i32(i32 %sub3.i22.i.i, i32 0) #7, !dbg !1902
  %sub7.i23.i.i = sub nsw i32 %add.i21.i.i, %36, !dbg !1903
  call void @llvm.dbg.value(metadata i32 %sub7.i23.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1896
  %37 = add nsw i32 %35, %sub7.i23.i.i, !dbg !1904
  %sub8.i24.i.i = sub nsw i32 %conv8.i.i, %37, !dbg !1904
  %38 = tail call i32 @llvm.smin.i32(i32 %sub8.i24.i.i, i32 0) #7, !dbg !1905
  %add12.i25.i.i = add nsw i32 %38, %sub7.i23.i.i, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %add12.i25.i.i, metadata !1564, metadata !DIExpression()) #7, !dbg !1896
  %conv14.i.i = trunc i32 %add12.i25.i.i to i16, !dbg !1907
  %arrayidx15.i.i = getelementptr inbounds i16, ptr %arrayidx128.i, i64 1, !dbg !1908
  store i16 %conv14.i.i, ptr %arrayidx15.i.i, align 2, !dbg !1909, !tbaa !1555
  %.pre.i = load i32, ptr %arrayidx128.i, align 4, !dbg !1910, !tbaa !1450
  br label %if.end151.i, !dbg !1911

if.else130.i:                                     ; preds = %if.else.i
  br i1 %cmp117.i, label %if.then133.i, label %if.else137.i, !dbg !1912

if.then133.i:                                     ; preds = %if.else130.i
  %39 = load i32, ptr %arrayidx52.i, align 4, !dbg !1914, !tbaa !1450
  %arrayidx135.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 %indvars.iv.i, !dbg !1914
  store i32 %39, ptr %arrayidx135.i, align 4, !dbg !1914, !tbaa !1450
  br label %if.end151.i, !dbg !1914

if.else137.i:                                     ; preds = %if.else130.i
  br i1 %cmp119.i, label %if.then140.i, label %if.else144.i, !dbg !1916

if.then140.i:                                     ; preds = %if.else137.i
  %40 = load i32, ptr %arrayidx65.i, align 4, !dbg !1917, !tbaa !1450
  %arrayidx142.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 %indvars.iv.i, !dbg !1917
  store i32 %40, ptr %arrayidx142.i, align 4, !dbg !1917, !tbaa !1450
  br label %if.end151.i, !dbg !1917

if.else144.i:                                     ; preds = %if.else137.i
  %41 = load i32, ptr %mv_c.0.i, align 4, !dbg !1919, !tbaa !1450
  %arrayidx146.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 %indvars.iv.i, !dbg !1919
  store i32 %41, ptr %arrayidx146.i, align 4, !dbg !1919, !tbaa !1450
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else144.i, %if.then140.i, %if.then133.i, %if.then126.i, %if.then113.i
  %42 = phi i32 [ 0, %if.then113.i ], [ %39, %if.then133.i ], [ %41, %if.else144.i ], [ %40, %if.then140.i ], [ %.pre.i, %if.then126.i ], !dbg !1910
  %i_ref.0.i = phi i8 [ -1, %if.then113.i ], [ %24, %if.then133.i ], [ %24, %if.else144.i ], [ %20, %if.then140.i ], [ %24, %if.then126.i ], !dbg !1845
  call void @llvm.dbg.value(metadata i32 undef, metadata !1788, metadata !DIExpression()) #7, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i32 4, metadata !1928, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i32 4, metadata !1929, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1930, metadata !DIExpression()) #7, !dbg !1933
  call void @llvm.dbg.value(metadata i8 %i_ref.0.i, metadata !1931, metadata !DIExpression()) #7, !dbg !1933
  %arrayidx4.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 12, !dbg !1935
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i, metadata !1932, metadata !DIExpression()) #7, !dbg !1933
  %conv.i407.i = zext i8 %i_ref.0.i to i32, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i, metadata !1938, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 4, metadata !1943, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %conv.i407.i, metadata !1946, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i, metadata !1947, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i8 %i_ref.0.i, metadata !1948, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 257, DW_OP_mul, DW_OP_stack_value)) #7, !dbg !1951
  %mul10.i.i.i = mul nuw i32 %conv.i407.i, 16843009, !dbg !1953
  call void @llvm.dbg.value(metadata i32 %mul10.i.i.i, metadata !1949, metadata !DIExpression()) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %mul10.i.i.i, metadata !1950, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)) #7, !dbg !1951
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !1951
  store i32 %mul10.i.i.i, ptr %arrayidx4.i.i, align 4, !dbg !1954, !tbaa !1450
  %add.ptr49.i.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 20, !dbg !1958
  store i32 %mul10.i.i.i, ptr %add.ptr49.i.i.i, align 4, !dbg !1959, !tbaa !1450
  %add.ptr56.i.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 28, !dbg !1960
  store i32 %mul10.i.i.i, ptr %add.ptr56.i.i.i, align 4, !dbg !1961, !tbaa !1450
  %add.ptr59.i.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv.i, i64 36, !dbg !1962
  store i32 %mul10.i.i.i, ptr %add.ptr59.i.i.i, align 4, !dbg !1963, !tbaa !1450
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i32 0, metadata !1970, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i32 4, metadata !1971, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i32 4, metadata !1972, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1973, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata i32 %42, metadata !1974, metadata !DIExpression()) #7, !dbg !1976
  %arrayidx4.i410.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv.i, i64 12, !dbg !1978
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i410.i, metadata !1975, metadata !DIExpression()) #7, !dbg !1976
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i410.i, metadata !1938, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 16, metadata !1943, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 4, metadata !1945, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %42, metadata !1946, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i410.i, metadata !1947, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %42, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 %42, metadata !1949, metadata !DIExpression()) #7, !dbg !1979
  %conv15.i.i411.i = zext i32 %42 to i64, !dbg !1982
  %add.i.i412.i = mul nuw i64 %conv15.i.i411.i, 4294967297, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %add.i.i412.i, metadata !1950, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !1979
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %if.end151.i
  %d.0.i.i.i = phi ptr [ %add.ptr106.i.i.i, %do.body.i.i.i ], [ %arrayidx4.i410.i, %if.end151.i ], !dbg !1979
  %h.addr.0.i.i.i = phi i32 [ %sub.i.i413.i, %do.body.i.i.i ], [ 4, %if.end151.i ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i.i, metadata !1944, metadata !DIExpression()) #7, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %d.0.i.i.i, metadata !1947, metadata !DIExpression()) #7, !dbg !1979
  store i64 %add.i.i412.i, ptr %d.0.i.i.i, align 8, !dbg !1984, !tbaa !1450
  %add.ptr95.i.i.i = getelementptr inbounds i8, ptr %d.0.i.i.i, i64 8, !dbg !1991
  store i64 %add.i.i412.i, ptr %add.ptr95.i.i.i, align 8, !dbg !1992, !tbaa !1450
  %add.ptr98.i.i.i = getelementptr inbounds i8, ptr %d.0.i.i.i, i64 32, !dbg !1993
  store i64 %add.i.i412.i, ptr %add.ptr98.i.i.i, align 8, !dbg !1994, !tbaa !1450
  %add.ptr103.i.i.i = getelementptr inbounds i8, ptr %d.0.i.i.i, i64 40, !dbg !1995
  store i64 %add.i.i412.i, ptr %add.ptr103.i.i.i, align 8, !dbg !1996, !tbaa !1450
  %sub.i.i413.i = add nsw i32 %h.addr.0.i.i.i, -2, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %sub.i.i413.i, metadata !1944, metadata !DIExpression()) #7, !dbg !1979
  %add.ptr106.i.i.i = getelementptr inbounds i8, ptr %d.0.i.i.i, i64 64, !dbg !1998
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i.i, metadata !1947, metadata !DIExpression()) #7, !dbg !1979
  %tobool.not.i.i.i = icmp eq i32 %sub.i.i413.i, 0, !dbg !1999
  br i1 %tobool.not.i.i.i, label %x264_macroblock_cache_mv.exit.i, label %do.body.i.i.i, !dbg !1999, !llvm.loop !2000

x264_macroblock_cache_mv.exit.i:                  ; preds = %do.body.i.i.i
  %arrayidx158.i = getelementptr inbounds [2 x i8], ptr %ref.i, i64 0, i64 %indvars.iv.i, !dbg !2005
  store i8 %i_ref.0.i, ptr %arrayidx158.i, align 1, !dbg !2006, !tbaa !1450
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1778, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #7, !dbg !1837
  br i1 %cmp.i, label %for.body.i, label %for.cond.cleanup.i, !dbg !1838, !llvm.loop !2007

if.then163.i:                                     ; preds = %for.cond.cleanup.i
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i32 4, metadata !1928, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i32 4, metadata !1929, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i32 0, metadata !1930, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()) #7, !dbg !2009
  %arrayidx4.i414.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12, !dbg !2012
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i414.i, metadata !1932, metadata !DIExpression()) #7, !dbg !2009
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i414.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 4, metadata !1943, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i414.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i16 0, metadata !1948, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2013
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !2013
  store i32 0, ptr %arrayidx4.i414.i, align 4, !dbg !2015, !tbaa !1450
  %add.ptr49.i.i415.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20, !dbg !2016
  store i32 0, ptr %add.ptr49.i.i415.i, align 4, !dbg !2017, !tbaa !1450
  %add.ptr56.i.i416.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28, !dbg !2018
  store i32 0, ptr %add.ptr56.i.i416.i, align 4, !dbg !2019, !tbaa !1450
  %add.ptr59.i.i417.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36, !dbg !2020
  store i32 0, ptr %add.ptr59.i.i417.i, align 4, !dbg !2021, !tbaa !1450
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i32 4, metadata !1928, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i32 4, metadata !1929, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i32 1, metadata !1930, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()) #7, !dbg !2022
  %arrayidx4.i418.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !2024
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i418.i, metadata !1932, metadata !DIExpression()) #7, !dbg !2022
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i418.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 4, metadata !1943, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i418.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i16 0, metadata !1948, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2025
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !2025
  store i32 0, ptr %arrayidx4.i418.i, align 4, !dbg !2027, !tbaa !1450
  %add.ptr49.i.i419.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 20, !dbg !2028
  store i32 0, ptr %add.ptr49.i.i419.i, align 4, !dbg !2029, !tbaa !1450
  %add.ptr56.i.i420.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28, !dbg !2030
  store i32 0, ptr %add.ptr56.i.i420.i, align 4, !dbg !2031, !tbaa !1450
  %add.ptr59.i.i421.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 36, !dbg !2032
  store i32 0, ptr %add.ptr59.i.i421.i, align 4, !dbg !2033, !tbaa !1450
  br label %x264_mb_predict_mv_direct16x16_spatial.exit, !dbg !2034

if.end164.i:                                      ; preds = %for.cond.cleanup.i
  %i_threads.i = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 1, !dbg !2035
  %43 = load i32, ptr %i_threads.i, align 4, !dbg !2035, !tbaa !2037
  %cmp165.i = icmp sgt i32 %43, 1, !dbg !2038
  br i1 %cmp165.i, label %land.lhs.true.i, label %if.end183.i, !dbg !2039

land.lhs.true.i:                                  ; preds = %if.end164.i
  %arrayidx168.i = getelementptr inbounds [2 x i16], ptr %mv.i, i64 0, i64 1, !dbg !2040
  %44 = load i16, ptr %arrayidx168.i, align 2, !dbg !2040, !tbaa !1555
  %conv169.i = sext i16 %44 to i32, !dbg !2040
  %arrayidx171.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1, !dbg !2041
  %45 = load i32, ptr %arrayidx171.i, align 4, !dbg !2041, !tbaa !1445
  %cmp172.i = icmp slt i32 %45, %conv169.i, !dbg !2042
  %arrayidx175.i = getelementptr inbounds [2 x [2 x i16]], ptr %mv.i, i64 0, i64 1, i64 1
  %46 = load i16, ptr %arrayidx175.i, align 2
  %conv176.i = sext i16 %46 to i32
  %cmp180.i = icmp slt i32 %45, %conv176.i
  %or.cond406.i = select i1 %cmp172.i, i1 true, i1 %cmp180.i, !dbg !2043
  br i1 %or.cond406.i, label %x264_mb_predict_mv_direct16x16_spatial.exit, label %if.end183.i, !dbg !2043

if.end183.i:                                      ; preds = %land.lhs.true.i, %if.end164.i
  %47 = load i64, ptr %mv.i, align 8, !dbg !2044, !tbaa !1450
  %tobool.i = icmp eq i64 %47, 0, !dbg !2044
  %cmp186.i = icmp eq i8 %11, 0
  %or.cond.i = select i1 %tobool.i, i1 true, i1 %cmp186.i, !dbg !2046
  %cmp189.i = icmp eq i8 %11, 1
  %or.cond306.i = select i1 %or.cond.i, i1 true, i1 %cmp189.i, !dbg !2046
  %cmp192.i = icmp eq i8 %11, 2
  %or.cond307.i = select i1 %or.cond306.i, i1 true, i1 %cmp192.i, !dbg !2046
  %cmp195.i = icmp eq i8 %11, 3
  %or.cond308.i = select i1 %or.cond307.i, i1 true, i1 %cmp195.i, !dbg !2046
  br i1 %or.cond308.i, label %x264_mb_predict_mv_direct16x16_spatial.exit, label %lor.lhs.false197.i, !dbg !2046

lor.lhs.false197.i:                               ; preds = %if.end183.i
  %tobool200.i = icmp ne i8 %16, 0, !dbg !2047
  %tobool204.i = icmp ne i8 %18, 0
  %or.cond309.i = select i1 %tobool200.i, i1 %tobool204.i, i1 false, !dbg !2048
  br i1 %or.cond309.i, label %x264_mb_predict_mv_direct16x16_spatial.exit, label %if.end206.i, !dbg !2048

if.end206.i:                                      ; preds = %lor.lhs.false197.i
  %sub.i = sub nsw i32 16, %conv38.i, !dbg !2049
  %add207.i = sub nsw i32 17, %conv38.i, !dbg !2050
  call void @llvm.dbg.value(metadata i32 %add207.i, metadata !1792, metadata !DIExpression()) #7, !dbg !1805
  %cmp208.i = icmp eq i8 %13, 14, !dbg !2051
  %add210.i = select i1 %cmp208.i, i32 2, i32 1, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %add210.i, metadata !1793, metadata !DIExpression()) #7, !dbg !1805
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i), metadata !1794, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !1805
  %shr214.i = ashr i32 %sub.i, 1, !dbg !2053
  %shr215.i = lshr i32 4, %shr214.i, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %shr215.i, metadata !1795, metadata !DIExpression()) #7, !dbg !1805
  call void @llvm.dbg.value(metadata i32 0, metadata !1796, metadata !DIExpression()) #7, !dbg !2055
  %cmp217474.i = icmp ult i8 %13, 17, !dbg !2056
  br i1 %cmp217474.i, label %for.body220.lr.ph.i, label %x264_mb_predict_mv_direct16x16_spatial.exit, !dbg !2057

for.body220.lr.ph.i:                              ; preds = %if.end206.i
  %and212.i = and i32 %sub.i, 1, !dbg !2058
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %and212.i), metadata !1794, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !1805
  %shr.i = lshr i32 4, %and212.i, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !1794, metadata !DIExpression()) #7, !dbg !1805
  %i_b8_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2
  %i_b4_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3
  %cmp272.i = icmp eq i8 %16, 0
  %mul5.i.i = shl nuw nsw i32 %shr.i, 2
  %48 = add nsw i32 %mul5.i.i, -2
  %49 = tail call i32 @llvm.fshl.i32(i32 2, i32 %48, i32 31) #7, !dbg !1805
  %cmp67.i.i.i = icmp eq i32 %shr214.i, 2
  %cmp74.i.i.i = icmp eq i32 %shr214.i, 1
  %cmp280.i = icmp eq i8 %18, 0
  br label %for.body220.i, !dbg !2057

for.body220.i:                                    ; preds = %cleanup.i, %for.body220.lr.ph.i
  %i8.0475.i = phi i32 [ 0, %for.body220.lr.ph.i ], [ %add292.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata i32 %i8.0475.i, metadata !1796, metadata !DIExpression()) #7, !dbg !2055
  %and221.i = and i32 %i8.0475.i, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %and221.i, metadata !1798, metadata !DIExpression()) #7, !dbg !2061
  %50 = lshr i32 %i8.0475.i, 1, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %50, metadata !1801, metadata !DIExpression()) #7, !dbg !2061
  %51 = load i32, ptr %i_b8_stride.i, align 8, !dbg !2063, !tbaa !2064
  %mul.i = mul nsw i32 %51, %50, !dbg !2065
  %add224.i = add nsw i32 %mul.i, %and221.i, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %add224.i, metadata !1802, metadata !DIExpression()) #7, !dbg !2061
  %52 = load i32, ptr %i_b4_stride.i, align 4, !dbg !2067, !tbaa !2068
  %mul226.i = mul nsw i32 %52, %50, !dbg !2069
  %add227.i = add nsw i32 %mul226.i, %and221.i, !dbg !2070
  %mul228.i = mul nsw i32 %add227.i, 3, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %mul228.i, metadata !1803, metadata !DIExpression()) #7, !dbg !2061
  %idxprom229.i = sext i32 %add224.i to i64, !dbg !2072
  %arrayidx230.i = getelementptr inbounds i8, ptr %arrayidx3.i, i64 %idxprom229.i, !dbg !2072
  %53 = load i8, ptr %arrayidx230.i, align 1, !dbg !2072, !tbaa !1450
  %cmp232.i = icmp eq i8 %53, 0, !dbg !2074
  br i1 %cmp232.i, label %if.end250.i, label %if.else235.i, !dbg !2075

if.else235.i:                                     ; preds = %for.body220.i
  %cmp239.i = icmp slt i8 %53, 0, !dbg !2076
  br i1 %cmp239.i, label %land.lhs.true241.i, label %cleanup.i, !dbg !2078

land.lhs.true241.i:                               ; preds = %if.else235.i
  %arrayidx243.i = getelementptr inbounds i8, ptr %arrayidx11.i, i64 %idxprom229.i, !dbg !2079
  %54 = load i8, ptr %arrayidx243.i, align 1, !dbg !2079, !tbaa !1450
  %cmp245.i = icmp eq i8 %54, 0, !dbg !2080
  br i1 %cmp245.i, label %if.end250.i, label %cleanup.i, !dbg !2081

if.end250.i:                                      ; preds = %land.lhs.true241.i, %for.body220.i
  %idx.0.i = phi i64 [ 0, %for.body220.i ], [ 1, %land.lhs.true241.i ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1804, metadata !DIExpression()) #7, !dbg !2061
  %arrayidx252.i = getelementptr inbounds [2 x ptr], ptr %l1mv.i, i64 0, i64 %idx.0.i, !dbg !2082
  %55 = load ptr, ptr %arrayidx252.i, align 8, !dbg !2082, !tbaa !1812
  %idxprom253.i = sext i32 %mul228.i to i64, !dbg !2082
  %arrayidx254.i = getelementptr inbounds [2 x i16], ptr %55, i64 %idxprom253.i, !dbg !2082
  %56 = load i16, ptr %arrayidx254.i, align 2, !dbg !2082, !tbaa !1555
  %57 = tail call i16 @llvm.abs.i16(i16 %56, i1 false) #7, !dbg !2084
  %cmp257.i = icmp ult i16 %57, 2, !dbg !2085
  br i1 %cmp257.i, label %land.lhs.true259.i, label %cleanup.i, !dbg !2086

land.lhs.true259.i:                               ; preds = %if.end250.i
  %arrayidx264.i = getelementptr inbounds [2 x i16], ptr %55, i64 %idxprom253.i, i64 1, !dbg !2087
  %58 = load i16, ptr %arrayidx264.i, align 2, !dbg !2087, !tbaa !1555
  %59 = tail call i16 @llvm.abs.i16(i16 %58, i1 false) #7, !dbg !2088
  %cmp267.i = icmp ult i16 %59, 2, !dbg !2089
  br i1 %cmp267.i, label %if.then269.i, label %cleanup.i, !dbg !2090

if.then269.i:                                     ; preds = %land.lhs.true259.i
  br i1 %cmp272.i, label %if.then274.i, label %if.end277.i, !dbg !2091

if.then274.i:                                     ; preds = %if.then269.i
  %mul275.i = shl nuw nsw i32 %and221.i, 1, !dbg !2093
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %mul275.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %i8.0475.i, metadata !1970, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2095
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %shr215.i, metadata !1972, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #7, !dbg !2095
  %mul276.i = shl i32 %i8.0475.i, 3, !dbg !2097
  %add.i.i = or i32 %mul275.i, %mul276.i, !dbg !2098
  %add2.i.i = or i32 %add.i.i, 12, !dbg !2098
  %idxprom3.i.i = sext i32 %add2.i.i to i64, !dbg !2099
  %arrayidx4.i422.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %idxprom3.i.i, !dbg !2099
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i422.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2095
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i422.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %mul5.i.i, metadata !1943, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 %shr215.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 4, metadata !1945, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i422.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2100
  switch i32 %49, label %if.end277.i [
    i32 7, label %do.body.i.i434.i
    i32 3, label %if.then63.i.i.i
  ], !dbg !2102

if.then63.i.i.i:                                  ; preds = %if.then274.i
  store i64 0, ptr %arrayidx4.i422.i, align 8, !dbg !2103, !tbaa !1450
  br i1 %cmp67.i.i.i, label %if.end277.i, label %if.end70.i.i.i, !dbg !2107

if.end70.i.i.i:                                   ; preds = %if.then63.i.i.i
  %add.ptr73.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 32, !dbg !2108
  store i64 0, ptr %add.ptr73.i.i.i, align 8, !dbg !2109, !tbaa !1450
  br i1 %cmp74.i.i.i, label %if.end277.i, label %if.end77.i.i.i, !dbg !2110

if.end77.i.i.i:                                   ; preds = %if.end70.i.i.i
  %add.ptr80.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 64, !dbg !2111
  store i64 0, ptr %add.ptr80.i.i.i, align 8, !dbg !2112, !tbaa !1450
  %add.ptr83.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i422.i, i64 96, !dbg !2113
  store i64 0, ptr %add.ptr83.i.i.i, align 8, !dbg !2114, !tbaa !1450
  br label %if.end277.i, !dbg !2115

do.body.i.i434.i:                                 ; preds = %if.then274.i, %do.body.i.i434.i
  %d.0.i.i426.i = phi ptr [ %add.ptr106.i.i432.i, %do.body.i.i434.i ], [ %arrayidx4.i422.i, %if.then274.i ], !dbg !2100
  %h.addr.0.i.i427.i = phi i32 [ %sub.i.i431.i, %do.body.i.i434.i ], [ %shr215.i, %if.then274.i ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i427.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2100
  call void @llvm.dbg.value(metadata ptr %d.0.i.i426.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2100
  %add.ptr98.i.i429.i = getelementptr inbounds i8, ptr %d.0.i.i426.i, i64 32, !dbg !2116
  %sub.i.i431.i = add nsw i32 %h.addr.0.i.i427.i, -2, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %sub.i.i431.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2100
  %add.ptr106.i.i432.i = getelementptr inbounds i8, ptr %d.0.i.i426.i, i64 64, !dbg !2118
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i432.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2100
  %tobool.not.i.i433.i = icmp eq i32 %sub.i.i431.i, 0, !dbg !2119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i426.i, i8 0, i64 16, i1 false) #7, !dbg !2120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i429.i, i8 0, i64 16, i1 false) #7, !dbg !2121
  br i1 %tobool.not.i.i433.i, label %if.end277.i, label %do.body.i.i434.i, !dbg !2119, !llvm.loop !2122

if.end277.i:                                      ; preds = %do.body.i.i434.i, %if.end77.i.i.i, %if.end70.i.i.i, %if.then63.i.i.i, %if.then274.i, %if.then269.i
  br i1 %cmp280.i, label %if.then282.i, label %cleanup.i, !dbg !2125

if.then282.i:                                     ; preds = %if.end277.i
  %mul283.i = shl nuw nsw i32 %and221.i, 1, !dbg !2126
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %mul283.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %i8.0475.i, metadata !1970, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2128
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %shr215.i, metadata !1972, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i32 1, metadata !1973, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #7, !dbg !2128
  %mul284.i = shl i32 %i8.0475.i, 3, !dbg !2130
  %add.i436.i = or i32 %mul283.i, %mul284.i, !dbg !2131
  %add2.i438.i = or i32 %add.i436.i, 12, !dbg !2131
  %idxprom3.i439.i = sext i32 %add2.i438.i to i64, !dbg !2132
  %arrayidx4.i440.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom3.i439.i, !dbg !2132
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i440.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i440.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %mul5.i.i, metadata !1943, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 %shr215.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i440.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2133
  switch i32 %49, label %cleanup.i [
    i32 7, label %do.body.i.i466.i
    i32 3, label %if.then63.i.i451.i
  ], !dbg !2135

if.then63.i.i451.i:                               ; preds = %if.then282.i
  store i64 0, ptr %arrayidx4.i440.i, align 8, !dbg !2136, !tbaa !1450
  br i1 %cmp67.i.i.i, label %cleanup.i, label %if.end70.i.i454.i, !dbg !2137

if.end70.i.i454.i:                                ; preds = %if.then63.i.i451.i
  %add.ptr73.i.i452.i = getelementptr inbounds i8, ptr %arrayidx4.i440.i, i64 32, !dbg !2138
  store i64 0, ptr %add.ptr73.i.i452.i, align 8, !dbg !2139, !tbaa !1450
  br i1 %cmp74.i.i.i, label %cleanup.i, label %if.end77.i.i457.i, !dbg !2140

if.end77.i.i457.i:                                ; preds = %if.end70.i.i454.i
  %add.ptr80.i.i455.i = getelementptr inbounds i8, ptr %arrayidx4.i440.i, i64 64, !dbg !2141
  store i64 0, ptr %add.ptr80.i.i455.i, align 8, !dbg !2142, !tbaa !1450
  %add.ptr83.i.i456.i = getelementptr inbounds i8, ptr %arrayidx4.i440.i, i64 96, !dbg !2143
  store i64 0, ptr %add.ptr83.i.i456.i, align 8, !dbg !2144, !tbaa !1450
  br label %cleanup.i, !dbg !2145

do.body.i.i466.i:                                 ; preds = %if.then282.i, %do.body.i.i466.i
  %d.0.i.i458.i = phi ptr [ %add.ptr106.i.i464.i, %do.body.i.i466.i ], [ %arrayidx4.i440.i, %if.then282.i ], !dbg !2133
  %h.addr.0.i.i459.i = phi i32 [ %sub.i.i463.i, %do.body.i.i466.i ], [ %shr215.i, %if.then282.i ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i459.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %d.0.i.i458.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2133
  %add.ptr98.i.i461.i = getelementptr inbounds i8, ptr %d.0.i.i458.i, i64 32, !dbg !2146
  %sub.i.i463.i = add nsw i32 %h.addr.0.i.i459.i, -2, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %sub.i.i463.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2133
  %add.ptr106.i.i464.i = getelementptr inbounds i8, ptr %d.0.i.i458.i, i64 64, !dbg !2148
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i464.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2133
  %tobool.not.i.i465.i = icmp eq i32 %sub.i.i463.i, 0, !dbg !2149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i458.i, i8 0, i64 16, i1 false) #7, !dbg !2150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i461.i, i8 0, i64 16, i1 false) #7, !dbg !2151
  br i1 %tobool.not.i.i465.i, label %cleanup.i, label %do.body.i.i466.i, !dbg !2149, !llvm.loop !2152

cleanup.i:                                        ; preds = %do.body.i.i466.i, %if.end77.i.i457.i, %if.end70.i.i454.i, %if.then63.i.i451.i, %if.then282.i, %if.end277.i, %land.lhs.true259.i, %if.end250.i, %land.lhs.true241.i, %if.else235.i
  %add292.i = add nuw nsw i32 %i8.0475.i, %add210.i, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %add292.i, metadata !1796, metadata !DIExpression()) #7, !dbg !2055
  %cmp217.i = icmp slt i32 %add292.i, %add207.i, !dbg !2056
  br i1 %cmp217.i, label %for.body220.i, label %x264_mb_predict_mv_direct16x16_spatial.exit, !dbg !2057, !llvm.loop !2156

x264_mb_predict_mv_direct16x16_spatial.exit:      ; preds = %cleanup.i, %if.then163.i, %land.lhs.true.i, %if.end183.i, %lor.lhs.false197.i, %if.end206.i
  %retval.0.i = phi i32 [ 1, %if.then163.i ], [ 0, %land.lhs.true.i ], [ 1, %lor.lhs.false197.i ], [ 1, %if.end183.i ], [ 1, %if.end206.i ], [ 1, %cleanup.i ], !dbg !1805
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %l1mv.i) #7, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mv.i) #7, !dbg !2158
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ref.i) #7, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !1743, metadata !DIExpression()), !dbg !1750
  br label %if.end4, !dbg !2159

if.else2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %h, metadata !2160, metadata !DIExpression()) #7, !dbg !2186
  %i_mb_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !2188
  %60 = load i32, ptr %i_mb_stride.i, align 4, !dbg !2188, !tbaa !2189
  %mul.i479 = shl nsw i32 %60, 4, !dbg !2190
  %i_mb_y.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !2191
  %61 = load i32, ptr %i_mb_y.i, align 4, !dbg !2191, !tbaa !2192
  %mul2.i = mul nsw i32 %mul.i479, %61, !dbg !2193
  %i_mb_x.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 4, !dbg !2194
  %62 = load i32, ptr %i_mb_x.i, align 16, !dbg !2194, !tbaa !2195
  %mul4.i = shl nsw i32 %62, 2, !dbg !2196
  call void @llvm.dbg.value(metadata !DIArgList(i32 %mul4.i, i32 %mul2.i), metadata !2163, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #7, !dbg !2186
  %mul7.i = shl nsw i32 %60, 2, !dbg !2197
  %mul10.i = mul nsw i32 %mul7.i, %61, !dbg !2198
  %mul13.i = shl nsw i32 %62, 1, !dbg !2199
  %add14.i = add nsw i32 %mul13.i, %mul10.i, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %add14.i, metadata !2164, metadata !DIExpression()) #7, !dbg !2186
  %fref1.i480 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, !dbg !2201
  %63 = load ptr, ptr %fref1.i480, align 16, !dbg !2202, !tbaa !1812
  %mb_type.i481 = getelementptr inbounds %struct.x264_frame, ptr %63, i64 0, i32 41, !dbg !2203
  %64 = load ptr, ptr %mb_type.i481, align 16, !dbg !2203, !tbaa !1826
  %i_mb_xy.i482 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !2204
  %65 = load i32, ptr %i_mb_xy.i482, align 8, !dbg !2204, !tbaa !1830
  %idxprom.i483 = sext i32 %65 to i64, !dbg !2202
  %arrayidx16.i = getelementptr inbounds i8, ptr %64, i64 %idxprom.i483, !dbg !2202
  %66 = load i8, ptr %arrayidx16.i, align 1, !dbg !2202, !tbaa !1450
  call void @llvm.dbg.value(metadata i8 %66, metadata !2165, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #7, !dbg !2186
  %mb_partition.i484 = getelementptr inbounds %struct.x264_frame, ptr %63, i64 0, i32 42, !dbg !2205
  %67 = load ptr, ptr %mb_partition.i484, align 8, !dbg !2205, !tbaa !1833
  %arrayidx22.i485 = getelementptr inbounds i8, ptr %67, i64 %idxprom.i483, !dbg !2206
  %68 = load i8, ptr %arrayidx22.i485, align 1, !dbg !2206, !tbaa !1450
  %conv23.i = zext i8 %68 to i32, !dbg !2206
  call void @llvm.dbg.value(metadata i32 %conv23.i, metadata !2166, metadata !DIExpression()) #7, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 4, metadata !1928, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 4, metadata !1929, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i32 1, metadata !1930, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()) #7, !dbg !2207
  %arrayidx4.i.i486 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i486, metadata !1932, metadata !DIExpression()) #7, !dbg !2207
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i486, metadata !1938, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i32 4, metadata !1943, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i.i486, metadata !1947, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i16 0, metadata !1948, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2210
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !2210
  store i32 0, ptr %arrayidx4.i.i486, align 4, !dbg !2212, !tbaa !1450
  %add.ptr49.i.i.i487 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 20, !dbg !2213
  store i32 0, ptr %add.ptr49.i.i.i487, align 4, !dbg !2214, !tbaa !1450
  %add.ptr56.i.i.i488 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28, !dbg !2215
  store i32 0, ptr %add.ptr56.i.i.i488, align 4, !dbg !2216, !tbaa !1450
  %add.ptr59.i.i.i489 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 36, !dbg !2217
  store i32 0, ptr %add.ptr59.i.i.i489, align 4, !dbg !2218, !tbaa !1450
  %i_partition.i490 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !2219
  store i32 %conv23.i, ptr %i_partition.i490, align 4, !dbg !2220, !tbaa !1471
  %69 = icmp ult i8 %66, 4, !dbg !2221
  br i1 %69, label %if.then.i491, label %if.end.i501, !dbg !2221

if.then.i491:                                     ; preds = %if.else2
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32 0, metadata !1926, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32 0, metadata !1927, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32 4, metadata !1928, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32 4, metadata !1929, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i32 0, metadata !1930, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()) #7, !dbg !2223
  %arrayidx4.i220.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 12, !dbg !2226
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i220.i, metadata !1932, metadata !DIExpression()) #7, !dbg !2223
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i220.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 4, metadata !1943, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i220.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i16 0, metadata !1948, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2227
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !2227
  store i32 0, ptr %arrayidx4.i220.i, align 4, !dbg !2229, !tbaa !1450
  %add.ptr49.i.i221.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 20, !dbg !2230
  store i32 0, ptr %add.ptr49.i.i221.i, align 4, !dbg !2231, !tbaa !1450
  %add.ptr56.i.i222.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 28, !dbg !2232
  store i32 0, ptr %add.ptr56.i.i222.i, align 4, !dbg !2233, !tbaa !1450
  %add.ptr59.i.i223.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 36, !dbg !2234
  store i32 0, ptr %add.ptr59.i.i223.i, align 4, !dbg !2235, !tbaa !1450
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !1970, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 4, metadata !1971, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 4, metadata !1972, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #7, !dbg !2236
  %arrayidx4.i224.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 0, i64 12, !dbg !2238
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i224.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2236
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i224.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 16, metadata !1943, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i224.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2239
  br label %do.body.i.i.i498

do.body.i.i.i498:                                 ; preds = %do.body.i.i.i498, %if.then.i491
  %d.0.i.i.i492 = phi ptr [ %add.ptr106.i.i.i496, %do.body.i.i.i498 ], [ %arrayidx4.i224.i, %if.then.i491 ], !dbg !2239
  %h.addr.0.i.i.i493 = phi i32 [ %sub.i.i.i495, %do.body.i.i.i498 ], [ 4, %if.then.i491 ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i.i493, metadata !1944, metadata !DIExpression()) #7, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %d.0.i.i.i492, metadata !1947, metadata !DIExpression()) #7, !dbg !2239
  %add.ptr98.i.i.i494 = getelementptr inbounds i8, ptr %d.0.i.i.i492, i64 32, !dbg !2241
  %sub.i.i.i495 = add nsw i32 %h.addr.0.i.i.i493, -2, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %sub.i.i.i495, metadata !1944, metadata !DIExpression()) #7, !dbg !2239
  %add.ptr106.i.i.i496 = getelementptr inbounds i8, ptr %d.0.i.i.i492, i64 64, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i.i496, metadata !1947, metadata !DIExpression()) #7, !dbg !2239
  %tobool.not.i.i.i497 = icmp eq i32 %sub.i.i.i495, 0, !dbg !2244
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i.i492, i8 0, i64 16, i1 false) #7, !dbg !2245
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i.i494, i8 0, i64 16, i1 false) #7, !dbg !2246
  br i1 %tobool.not.i.i.i497, label %x264_macroblock_cache_mv.exit.i499, label %do.body.i.i.i498, !dbg !2244, !llvm.loop !2247

x264_macroblock_cache_mv.exit.i499:               ; preds = %do.body.i.i.i498
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !1969, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !1970, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 4, metadata !1971, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 4, metadata !1972, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 1, metadata !1973, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata i32 0, metadata !1974, metadata !DIExpression()) #7, !dbg !2250
  %arrayidx4.i225.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i225.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2250
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i225.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 16, metadata !1943, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 4, metadata !1944, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !1946, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i225.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 0, metadata !1949, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2253
  br label %do.body.i.i234.i

do.body.i.i234.i:                                 ; preds = %do.body.i.i234.i, %x264_macroblock_cache_mv.exit.i499
  %d.0.i.i226.i = phi ptr [ %add.ptr106.i.i232.i, %do.body.i.i234.i ], [ %arrayidx4.i225.i, %x264_macroblock_cache_mv.exit.i499 ], !dbg !2253
  %h.addr.0.i.i227.i = phi i32 [ %sub.i.i231.i, %do.body.i.i234.i ], [ 4, %x264_macroblock_cache_mv.exit.i499 ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i227.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2253
  call void @llvm.dbg.value(metadata ptr %d.0.i.i226.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2253
  %add.ptr98.i.i229.i = getelementptr inbounds i8, ptr %d.0.i.i226.i, i64 32, !dbg !2255
  %sub.i.i231.i = add nsw i32 %h.addr.0.i.i227.i, -2, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %sub.i.i231.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2253
  %add.ptr106.i.i232.i = getelementptr inbounds i8, ptr %d.0.i.i226.i, i64 64, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i232.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2253
  %tobool.not.i.i233.i = icmp eq i32 %sub.i.i231.i, 0, !dbg !2258
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %d.0.i.i226.i, i8 0, i64 16, i1 false) #7, !dbg !2259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %add.ptr98.i.i229.i, i8 0, i64 16, i1 false) #7, !dbg !2260
  br i1 %tobool.not.i.i233.i, label %if.end4, label %do.body.i.i234.i, !dbg !2258, !llvm.loop !2261

if.end.i501:                                      ; preds = %if.else2
  %sub.i500 = sub nsw i32 16, %conv23.i, !dbg !2264
  %add34.i = sub nsw i32 17, %conv23.i, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %add34.i, metadata !2167, metadata !DIExpression()) #7, !dbg !2186
  %cmp35.i = icmp eq i8 %68, 14, !dbg !2266
  %add37.i = select i1 %cmp35.i, i32 2, i32 1, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %add37.i, metadata !2168, metadata !DIExpression()) #7, !dbg !2186
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !2169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2186
  %shr40.i = ashr i32 %sub.i500, 1, !dbg !2268
  %shr41.i = lshr i32 4, %shr40.i, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !2170, metadata !DIExpression()) #7, !dbg !2186
  call void @llvm.dbg.value(metadata i32 0, metadata !2171, metadata !DIExpression()) #7, !dbg !2270
  %cmp42351.i = icmp ult i8 %68, 17, !dbg !2271
  br i1 %cmp42351.i, label %for.body.lr.ph.i, label %if.end4, !dbg !2272

for.body.lr.ph.i:                                 ; preds = %if.end.i501
  %and.i = and i32 %sub.i500, 1, !dbg !2273
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %and.i), metadata !2169, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2186
  %shr.i502 = lshr i32 4, %and.i, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %shr.i502, metadata !2169, metadata !DIExpression()) #7, !dbg !2186
  %i_b8_stride.i503 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2
  %b_mbaff.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7
  %dist_scale_factor72.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 80
  %i_b4_stride.i504 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3
  %add81.i = add i32 %mul4.i, %mul2.i
  %i_threads.i505 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 1
  %arrayidx101.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 21, i64 1
  %70 = add nsw i32 %shr.i502, -2
  %71 = lshr exact i32 %70, 1
  %cmp67.i.i.i506 = icmp eq i32 %shr40.i, 2
  %cmp74.i.i.i507 = icmp eq i32 %shr40.i, 1
  %mul5.i.i508 = shl nuw nsw i32 %shr.i502, 2
  %72 = add nsw i32 %mul5.i.i508, -2
  %73 = tail call i32 @llvm.fshl.i32(i32 2, i32 %72, i32 31) #7, !dbg !2186
  br label %for.body.i510, !dbg !2272

for.body.i510:                                    ; preds = %for.inc.for.body_crit_edge.i, %for.body.lr.ph.i
  %74 = phi ptr [ %63, %for.body.lr.ph.i ], [ %.pre.i520, %for.inc.for.body_crit_edge.i ], !dbg !2275
  %i8.0352.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add140.i, %for.inc.for.body_crit_edge.i ]
  call void @llvm.dbg.value(metadata i32 %i8.0352.i, metadata !2171, metadata !DIExpression()) #7, !dbg !2270
  %and44.i = and i32 %i8.0352.i, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %and44.i, metadata !2173, metadata !DIExpression()) #7, !dbg !2277
  %75 = lshr i32 %i8.0352.i, 1, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %75, metadata !2176, metadata !DIExpression()) #7, !dbg !2277
  %add46.i = or i32 %add14.i, %and44.i, !dbg !2279
  %76 = load i32, ptr %i_b8_stride.i503, align 8, !dbg !2280, !tbaa !2064
  %mul48.i = mul nsw i32 %76, %75, !dbg !2281
  %add49.i = add nsw i32 %add46.i, %mul48.i, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %add49.i, metadata !2177, metadata !DIExpression()) #7, !dbg !2277
  %ref.i509 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 48, !dbg !2283
  %77 = load ptr, ptr %ref.i509, align 8, !dbg !2275, !tbaa !1812
  %idxprom53.i = sext i32 %add49.i to i64, !dbg !2275
  %arrayidx54.i = getelementptr inbounds i8, ptr %77, i64 %idxprom53.i, !dbg !2275
  %78 = load i8, ptr %arrayidx54.i, align 1, !dbg !2275, !tbaa !1450
  %conv55.i = sext i8 %78 to i32, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %conv55.i, metadata !2178, metadata !DIExpression()) #7, !dbg !2277
  %79 = load i32, ptr %b_mbaff.i, align 4, !dbg !2284, !tbaa !2285
  %shr57.i = ashr i32 %conv55.i, %79, !dbg !2284
  %add58.i = add nsw i32 %shr57.i, 2, !dbg !2284
  %idxprom59.i = sext i32 %add58.i to i64, !dbg !2284
  %arrayidx60.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 83, i64 %idxprom59.i, !dbg !2284
  %80 = load i8, ptr %arrayidx60.i, align 1, !dbg !2284, !tbaa !1450
  %conv61.i = sext i8 %80 to i32, !dbg !2284
  %shl.i = shl i32 %conv61.i, %79, !dbg !2286
  %and66.i = and i32 %79, %conv55.i, !dbg !2287
  %add67.i = add nsw i32 %shl.i, %and66.i, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %add67.i, metadata !2179, metadata !DIExpression()) #7, !dbg !2277
  %cmp68.i = icmp sgt i32 %add67.i, -1, !dbg !2289
  br i1 %cmp68.i, label %if.then70.i, label %cleanup376, !dbg !2290

if.then70.i:                                      ; preds = %for.body.i510
  %81 = load ptr, ptr %dist_scale_factor72.i, align 8, !dbg !2291, !tbaa !2292
  %idxprom73346.i = zext i32 %add67.i to i64, !dbg !2293
  %arrayidx74.i = getelementptr inbounds [4 x i16], ptr %81, i64 %idxprom73346.i, !dbg !2293
  %82 = load i16, ptr %arrayidx74.i, align 2, !dbg !2293, !tbaa !1555
  %conv76.i = sext i16 %82 to i32, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %conv76.i, metadata !2180, metadata !DIExpression()) #7, !dbg !2294
  %mv.i511 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 43, !dbg !2295
  %83 = load ptr, ptr %mv.i511, align 16, !dbg !2296, !tbaa !1812
  %84 = load i32, ptr %i_b4_stride.i504, align 4, !dbg !2297, !tbaa !2068
  %mul84.i = mul i32 %84, %75, !dbg !2298
  %reass.add.i = add i32 %mul84.i, %and44.i
  %reass.mul.i = mul i32 %reass.add.i, 3
  %add85.i = add i32 %add81.i, %reass.mul.i, !dbg !2299
  %idxprom86.i = sext i32 %add85.i to i64, !dbg !2296
  %arrayidx87.i = getelementptr inbounds [2 x i16], ptr %83, i64 %idxprom86.i, !dbg !2296
  call void @llvm.dbg.value(metadata ptr %arrayidx87.i, metadata !2183, metadata !DIExpression()) #7, !dbg !2294
  %85 = load i16, ptr %arrayidx87.i, align 2, !dbg !2300, !tbaa !1555
  %conv89.i = sext i16 %85 to i32, !dbg !2300
  %mul90.i = mul nsw i32 %conv89.i, %conv76.i, !dbg !2301
  %add91.i = add nsw i32 %mul90.i, 128, !dbg !2302
  %shr92.i = ashr i32 %add91.i, 8, !dbg !2303
  call void @llvm.dbg.value(metadata i32 %shr92.i, metadata !2184, metadata !DIExpression()) #7, !dbg !2294
  %arrayidx93.i = getelementptr inbounds i16, ptr %arrayidx87.i, i64 1, !dbg !2304
  %86 = load i16, ptr %arrayidx93.i, align 2, !dbg !2304, !tbaa !1555
  %conv94.i = sext i16 %86 to i32, !dbg !2304
  %mul95.i = mul nsw i32 %conv94.i, %conv76.i, !dbg !2305
  %add96.i = add nsw i32 %mul95.i, 128, !dbg !2306
  %shr97.i = ashr i32 %add96.i, 8, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %shr97.i, metadata !2185, metadata !DIExpression()) #7, !dbg !2294
  %87 = load i32, ptr %i_threads.i505, align 4, !dbg !2308, !tbaa !2037
  %cmp98.i = icmp sgt i32 %87, 1, !dbg !2310
  br i1 %cmp98.i, label %land.lhs.true.i514, label %if.end114.i, !dbg !2311

land.lhs.true.i514:                               ; preds = %if.then70.i
  %88 = load i32, ptr %arrayidx101.i, align 4, !dbg !2312, !tbaa !1445
  %cmp102.i = icmp sgt i32 %shr97.i, %88, !dbg !2313
  %sub107.i = sub nsw i32 %shr97.i, %conv94.i
  %cmp111.i512 = icmp sgt i32 %sub107.i, %88
  %or.cond.i513 = select i1 %cmp102.i, i1 true, i1 %cmp111.i512, !dbg !2314
  br i1 %or.cond.i513, label %cleanup376, label %if.end114.i, !dbg !2314

if.end114.i:                                      ; preds = %land.lhs.true.i514, %if.then70.i
  %mul115.i = shl nuw nsw i32 %and44.i, 1, !dbg !2315
  %conv117.i = trunc i32 %add67.i to i16, !dbg !2316
  call void @llvm.dbg.value(metadata ptr %h, metadata !1920, metadata !DIExpression()) #7, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %mul115.i, metadata !1926, metadata !DIExpression()) #7, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %i8.0352.i, metadata !1927, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2317
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !1928, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1929, metadata !DIExpression()) #7, !dbg !2317
  call void @llvm.dbg.value(metadata i32 0, metadata !1930, metadata !DIExpression()) #7, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %add67.i, metadata !1931, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2317
  %mul116.i = shl i32 %i8.0352.i, 3, !dbg !2319
  %add.i.i515 = or i32 %mul115.i, %mul116.i, !dbg !2320
  %add2.i.i516 = or i32 %add.i.i515, 12, !dbg !2320
  %idxprom3.i.i517 = sext i32 %add2.i.i516 to i64, !dbg !2321
  %arrayidx4.i236.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 0, i64 %idxprom3.i.i517, !dbg !2321
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i236.i, metadata !1932, metadata !DIExpression()) #7, !dbg !2317
  %conv.i.i518 = and i32 %add67.i, 255, !dbg !2322
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i236.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2323
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !1943, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2323
  call void @llvm.dbg.value(metadata i32 1, metadata !1945, metadata !DIExpression()) #7, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %conv.i.i518, metadata !1946, metadata !DIExpression()) #7, !dbg !2323
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i236.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2323
  %89 = and i16 %conv117.i, 255, !dbg !2325
  %conv.i.i.i = mul nuw i16 %89, 257, !dbg !2325
  call void @llvm.dbg.value(metadata i16 %conv.i.i.i, metadata !1948, metadata !DIExpression()) #7, !dbg !2323
  %mul10.i.i.i519 = mul nuw i32 %conv.i.i518, 16843009, !dbg !2326
  call void @llvm.dbg.value(metadata i32 %mul10.i.i.i519, metadata !1949, metadata !DIExpression()) #7, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %mul10.i.i.i519, metadata !1950, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 4294967297, DW_OP_mul, DW_OP_stack_value)) #7, !dbg !2323
  call void @llvm.dbg.value(metadata i32 8, metadata !1945, metadata !DIExpression()) #7, !dbg !2323
  switch i32 %71, label %x264_macroblock_cache_ref.exit.i [
    i32 0, label %if.then.i.i.i
    i32 1, label %if.then39.i.i.i
  ], !dbg !2327

if.then.i.i.i:                                    ; preds = %if.end114.i
  store i16 %conv.i.i.i, ptr %arrayidx4.i236.i, align 2, !dbg !2328, !tbaa !1450
  br i1 %cmp67.i.i.i506, label %x264_macroblock_cache_ref.exit.i, label %if.end.i.i.i, !dbg !2330

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %add.ptr26.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 8, !dbg !2331
  store i16 %conv.i.i.i, ptr %add.ptr26.i.i.i, align 2, !dbg !2332, !tbaa !1450
  br i1 %cmp74.i.i.i507, label %x264_macroblock_cache_ref.exit.i, label %if.end30.i.i.i, !dbg !2333

if.end30.i.i.i:                                   ; preds = %if.end.i.i.i
  %add.ptr33.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 16, !dbg !2334
  store i16 %conv.i.i.i, ptr %add.ptr33.i.i.i, align 2, !dbg !2335, !tbaa !1450
  %add.ptr36.i.i.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 24, !dbg !2336
  store i16 %conv.i.i.i, ptr %add.ptr36.i.i.i, align 2, !dbg !2337, !tbaa !1450
  br label %x264_macroblock_cache_ref.exit.i, !dbg !2338

if.then39.i.i.i:                                  ; preds = %if.end114.i
  store i32 %mul10.i.i.i519, ptr %arrayidx4.i236.i, align 4, !dbg !2339, !tbaa !1450
  br i1 %cmp67.i.i.i506, label %x264_macroblock_cache_ref.exit.i, label %if.end46.i.i.i, !dbg !2340

if.end46.i.i.i:                                   ; preds = %if.then39.i.i.i
  %add.ptr49.i.i237.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 8, !dbg !2341
  store i32 %mul10.i.i.i519, ptr %add.ptr49.i.i237.i, align 4, !dbg !2342, !tbaa !1450
  br i1 %cmp74.i.i.i507, label %x264_macroblock_cache_ref.exit.i, label %if.end53.i.i.i, !dbg !2343

if.end53.i.i.i:                                   ; preds = %if.end46.i.i.i
  %add.ptr56.i.i238.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 16, !dbg !2344
  store i32 %mul10.i.i.i519, ptr %add.ptr56.i.i238.i, align 4, !dbg !2345, !tbaa !1450
  %add.ptr59.i.i239.i = getelementptr inbounds i8, ptr %arrayidx4.i236.i, i64 24, !dbg !2346
  store i32 %mul10.i.i.i519, ptr %add.ptr59.i.i239.i, align 4, !dbg !2347, !tbaa !1450
  br label %x264_macroblock_cache_ref.exit.i, !dbg !2348

x264_macroblock_cache_ref.exit.i:                 ; preds = %if.end53.i.i.i, %if.end46.i.i.i, %if.then39.i.i.i, %if.end30.i.i.i, %if.end.i.i.i, %if.then.i.i.i, %if.end114.i
  call void @llvm.dbg.value(metadata i32 %shr92.i, metadata !2349, metadata !DIExpression()) #7, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %shr97.i, metadata !2354, metadata !DIExpression()) #7, !dbg !2355
  %and.i.i = and i32 %shr92.i, 65535, !dbg !2357
  %shl.i.i = shl i32 %shr97.i, 16, !dbg !2358
  %add.i247.i = or i32 %shl.i.i, %and.i.i, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %mul115.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %i8.0352.i, metadata !1970, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2360
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1972, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !1973, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %add.i247.i, metadata !1974, metadata !DIExpression()) #7, !dbg !2360
  %arrayidx4.i252.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 0, i64 %idxprom3.i.i517, !dbg !2362
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i252.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2360
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i252.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %mul5.i.i508, metadata !1943, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 4, metadata !1945, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %add.i247.i, metadata !1946, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i252.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %add.i247.i, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 %add.i247.i, metadata !1949, metadata !DIExpression()) #7, !dbg !2363
  %conv15.i.i253.i = zext i32 %add.i247.i to i64, !dbg !2365
  %add.i.i254.i = mul nuw i64 %conv15.i.i253.i, 4294967297, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %add.i.i254.i, metadata !1950, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2363
  switch i32 %73, label %x264_macroblock_cache_mv.exit280.i [
    i32 7, label %do.body.i.i279.i
    i32 3, label %if.then63.i.i264.i
  ], !dbg !2367

if.then63.i.i264.i:                               ; preds = %x264_macroblock_cache_ref.exit.i
  store i64 %add.i.i254.i, ptr %arrayidx4.i252.i, align 8, !dbg !2368, !tbaa !1450
  br i1 %cmp67.i.i.i506, label %x264_macroblock_cache_mv.exit280.thread331.i, label %if.end70.i.i267.i, !dbg !2369

if.end70.i.i267.i:                                ; preds = %if.then63.i.i264.i
  %add.ptr73.i.i265.i = getelementptr inbounds i8, ptr %arrayidx4.i252.i, i64 32, !dbg !2370
  store i64 %add.i.i254.i, ptr %add.ptr73.i.i265.i, align 8, !dbg !2371, !tbaa !1450
  br i1 %cmp74.i.i.i507, label %x264_macroblock_cache_mv.exit280.thread331.i, label %if.end77.i.i270.i, !dbg !2372

if.end77.i.i270.i:                                ; preds = %if.end70.i.i267.i
  %add.ptr80.i.i268.i = getelementptr inbounds i8, ptr %arrayidx4.i252.i, i64 64, !dbg !2373
  store i64 %add.i.i254.i, ptr %add.ptr80.i.i268.i, align 8, !dbg !2374, !tbaa !1450
  %add.ptr83.i.i269.i = getelementptr inbounds i8, ptr %arrayidx4.i252.i, i64 96, !dbg !2375
  store i64 %add.i.i254.i, ptr %add.ptr83.i.i269.i, align 8, !dbg !2376, !tbaa !1450
  br label %x264_macroblock_cache_mv.exit280.thread331.i, !dbg !2377

do.body.i.i279.i:                                 ; preds = %x264_macroblock_cache_ref.exit.i, %do.body.i.i279.i
  %d.0.i.i271.i = phi ptr [ %add.ptr106.i.i277.i, %do.body.i.i279.i ], [ %arrayidx4.i252.i, %x264_macroblock_cache_ref.exit.i ], !dbg !2363
  %h.addr.0.i.i272.i = phi i32 [ %sub.i.i276.i, %do.body.i.i279.i ], [ %shr41.i, %x264_macroblock_cache_ref.exit.i ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i272.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2363
  call void @llvm.dbg.value(metadata ptr %d.0.i.i271.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2363
  store i64 %add.i.i254.i, ptr %d.0.i.i271.i, align 8, !dbg !2378, !tbaa !1450
  %add.ptr95.i.i273.i = getelementptr inbounds i8, ptr %d.0.i.i271.i, i64 8, !dbg !2379
  store i64 %add.i.i254.i, ptr %add.ptr95.i.i273.i, align 8, !dbg !2380, !tbaa !1450
  %add.ptr98.i.i274.i = getelementptr inbounds i8, ptr %d.0.i.i271.i, i64 32, !dbg !2381
  store i64 %add.i.i254.i, ptr %add.ptr98.i.i274.i, align 8, !dbg !2382, !tbaa !1450
  %add.ptr103.i.i275.i = getelementptr inbounds i8, ptr %d.0.i.i271.i, i64 40, !dbg !2383
  store i64 %add.i.i254.i, ptr %add.ptr103.i.i275.i, align 8, !dbg !2384, !tbaa !1450
  %sub.i.i276.i = add nsw i32 %h.addr.0.i.i272.i, -2, !dbg !2385
  call void @llvm.dbg.value(metadata i32 %sub.i.i276.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2363
  %add.ptr106.i.i277.i = getelementptr inbounds i8, ptr %d.0.i.i271.i, i64 64, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i277.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2363
  %tobool.not.i.i278.i = icmp eq i32 %sub.i.i276.i, 0, !dbg !2387
  br i1 %tobool.not.i.i278.i, label %x264_macroblock_cache_mv.exit280.i, label %do.body.i.i279.i, !dbg !2387, !llvm.loop !2388

x264_macroblock_cache_mv.exit280.thread331.i:     ; preds = %if.end77.i.i270.i, %if.end70.i.i267.i, %if.then63.i.i264.i
  %90 = load i16, ptr %arrayidx87.i, align 2, !dbg !2391, !tbaa !1555
  %conv123332347.i = zext i16 %90 to i32, !dbg !2391
  %sub124333.i = sub nsw i32 %shr92.i, %conv123332347.i, !dbg !2392
  %91 = load i16, ptr %arrayidx93.i, align 2, !dbg !2393, !tbaa !1555
  %conv126334348.i = zext i16 %91 to i32, !dbg !2393
  %sub127335.i = sub nsw i32 %shr97.i, %conv126334348.i, !dbg !2394
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shr92.i, i32 undef), metadata !2349, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2395
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shr97.i, i32 undef), metadata !2354, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2395
  %and.i281336.i = and i32 %sub124333.i, 65535, !dbg !2397
  %shl.i282337.i = shl i32 %sub127335.i, 16, !dbg !2398
  %add.i283338.i = or i32 %shl.i282337.i, %and.i281336.i, !dbg !2399
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %mul115.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %i8.0352.i, metadata !1970, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2400
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1972, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 1, metadata !1973, metadata !DIExpression()) #7, !dbg !2400
  %arrayidx4.i288339.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom3.i.i517, !dbg !2402
  call void @llvm.dbg.value(metadata i32 %mul5.i.i508, metadata !1943, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 4, metadata !1945, metadata !DIExpression()) #7, !dbg !2403
  %conv15.i.i290340.i = zext i32 %add.i283338.i to i64, !dbg !2405
  %add.i.i291341.i = mul nuw i64 %conv15.i.i290340.i, 4294967297, !dbg !2406
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2403
  br label %if.then63.i.i301.i, !dbg !2407

x264_macroblock_cache_mv.exit280.i:               ; preds = %do.body.i.i279.i, %x264_macroblock_cache_ref.exit.i
  %92 = load i16, ptr %arrayidx87.i, align 2, !dbg !2391, !tbaa !1555
  %conv123349.i = zext i16 %92 to i32, !dbg !2391
  %sub124.i = sub nsw i32 %shr92.i, %conv123349.i, !dbg !2392
  %93 = load i16, ptr %arrayidx93.i, align 2, !dbg !2393, !tbaa !1555
  %conv126350.i = zext i16 %93 to i32, !dbg !2393
  %sub127.i = sub nsw i32 %shr97.i, %conv126350.i, !dbg !2394
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shr92.i, i32 %conv123349.i), metadata !2349, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2395
  call void @llvm.dbg.value(metadata !DIArgList(i32 %shr97.i, i32 %conv126350.i), metadata !2354, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #7, !dbg !2395
  %and.i281.i = and i32 %sub124.i, 65535, !dbg !2397
  %shl.i282.i = shl i32 %sub127.i, 16, !dbg !2398
  %add.i283.i = or i32 %shl.i282.i, %and.i281.i, !dbg !2399
  call void @llvm.dbg.value(metadata ptr %h, metadata !1964, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %mul115.i, metadata !1969, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %i8.0352.i, metadata !1970, metadata !DIExpression(DW_OP_constu, 2147483646, DW_OP_and, DW_OP_stack_value)) #7, !dbg !2400
  call void @llvm.dbg.value(metadata !DIArgList(i32 4, i32 %sub.i500), metadata !1971, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_and, DW_OP_shr, DW_OP_stack_value)) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1972, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 1, metadata !1973, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %add.i283.i, metadata !1974, metadata !DIExpression()) #7, !dbg !2400
  %arrayidx4.i288.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom3.i.i517, !dbg !2402
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i288.i, metadata !1975, metadata !DIExpression()) #7, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i288.i, metadata !1938, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %mul5.i.i508, metadata !1943, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %shr41.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 4, metadata !1945, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %add.i283.i, metadata !1946, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %arrayidx4.i288.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %add.i283.i, metadata !1948, metadata !DIExpression(DW_OP_constu, 257, DW_OP_mul, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %add.i283.i, metadata !1949, metadata !DIExpression()) #7, !dbg !2403
  %conv15.i.i290.i = zext i32 %add.i283.i to i64, !dbg !2405
  %add.i.i291.i = mul nuw i64 %conv15.i.i290.i, 4294967297, !dbg !2406
  call void @llvm.dbg.value(metadata i64 %add.i.i291.i, metadata !1950, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata i32 32, metadata !1945, metadata !DIExpression()) #7, !dbg !2403
  switch i32 %73, label %for.inc.i [
    i32 7, label %do.body.i.i316.i
    i32 3, label %if.then63.i.i301.i
  ], !dbg !2407

if.then63.i.i301.i:                               ; preds = %x264_macroblock_cache_mv.exit280.i, %x264_macroblock_cache_mv.exit280.thread331.i
  %add.i.i291343.i = phi i64 [ %add.i.i291341.i, %x264_macroblock_cache_mv.exit280.thread331.i ], [ %add.i.i291.i, %x264_macroblock_cache_mv.exit280.i ]
  %arrayidx4.i288342.i = phi ptr [ %arrayidx4.i288339.i, %x264_macroblock_cache_mv.exit280.thread331.i ], [ %arrayidx4.i288.i, %x264_macroblock_cache_mv.exit280.i ]
  store i64 %add.i.i291343.i, ptr %arrayidx4.i288342.i, align 8, !dbg !2408, !tbaa !1450
  br i1 %cmp67.i.i.i506, label %for.inc.i, label %if.end70.i.i304.i, !dbg !2409

if.end70.i.i304.i:                                ; preds = %if.then63.i.i301.i
  %94 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom3.i.i517, !dbg !2402
  %add.ptr73.i.i302.i = getelementptr inbounds i8, ptr %94, i64 32, !dbg !2410
  store i64 %add.i.i291343.i, ptr %add.ptr73.i.i302.i, align 8, !dbg !2411, !tbaa !1450
  br i1 %cmp74.i.i.i507, label %for.inc.i, label %if.end77.i.i307.i, !dbg !2412

if.end77.i.i307.i:                                ; preds = %if.end70.i.i304.i
  %add.ptr80.i.i305.i = getelementptr inbounds i8, ptr %94, i64 64, !dbg !2413
  store i64 %add.i.i291343.i, ptr %add.ptr80.i.i305.i, align 8, !dbg !2414, !tbaa !1450
  %add.ptr83.i.i306.i = getelementptr inbounds i8, ptr %94, i64 96, !dbg !2415
  store i64 %add.i.i291343.i, ptr %add.ptr83.i.i306.i, align 8, !dbg !2416, !tbaa !1450
  br label %for.inc.i, !dbg !2417

do.body.i.i316.i:                                 ; preds = %x264_macroblock_cache_mv.exit280.i, %do.body.i.i316.i
  %d.0.i.i308.i = phi ptr [ %add.ptr106.i.i314.i, %do.body.i.i316.i ], [ %arrayidx4.i288.i, %x264_macroblock_cache_mv.exit280.i ], !dbg !2403
  %h.addr.0.i.i309.i = phi i32 [ %sub.i.i313.i, %do.body.i.i316.i ], [ %shr41.i, %x264_macroblock_cache_mv.exit280.i ]
  call void @llvm.dbg.value(metadata i32 %h.addr.0.i.i309.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2403
  call void @llvm.dbg.value(metadata ptr %d.0.i.i308.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2403
  store i64 %add.i.i291.i, ptr %d.0.i.i308.i, align 8, !dbg !2418, !tbaa !1450
  %add.ptr95.i.i310.i = getelementptr inbounds i8, ptr %d.0.i.i308.i, i64 8, !dbg !2419
  store i64 %add.i.i291.i, ptr %add.ptr95.i.i310.i, align 8, !dbg !2420, !tbaa !1450
  %add.ptr98.i.i311.i = getelementptr inbounds i8, ptr %d.0.i.i308.i, i64 32, !dbg !2421
  store i64 %add.i.i291.i, ptr %add.ptr98.i.i311.i, align 8, !dbg !2422, !tbaa !1450
  %add.ptr103.i.i312.i = getelementptr inbounds i8, ptr %d.0.i.i308.i, i64 40, !dbg !2423
  store i64 %add.i.i291.i, ptr %add.ptr103.i.i312.i, align 8, !dbg !2424, !tbaa !1450
  %sub.i.i313.i = add nsw i32 %h.addr.0.i.i309.i, -2, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %sub.i.i313.i, metadata !1944, metadata !DIExpression()) #7, !dbg !2403
  %add.ptr106.i.i314.i = getelementptr inbounds i8, ptr %d.0.i.i308.i, i64 64, !dbg !2426
  call void @llvm.dbg.value(metadata ptr %add.ptr106.i.i314.i, metadata !1947, metadata !DIExpression()) #7, !dbg !2403
  %tobool.not.i.i315.i = icmp eq i32 %sub.i.i313.i, 0, !dbg !2427
  br i1 %tobool.not.i.i315.i, label %for.inc.i, label %do.body.i.i316.i, !dbg !2427, !llvm.loop !2428

for.inc.i:                                        ; preds = %do.body.i.i316.i, %if.end77.i.i307.i, %if.end70.i.i304.i, %if.then63.i.i301.i, %x264_macroblock_cache_mv.exit280.i
  %add140.i = add nuw nsw i32 %i8.0352.i, %add37.i, !dbg !2431
  call void @llvm.dbg.value(metadata i32 %add140.i, metadata !2171, metadata !DIExpression()) #7, !dbg !2270
  %cmp42.i = icmp slt i32 %add140.i, %add34.i, !dbg !2271
  br i1 %cmp42.i, label %for.inc.for.body_crit_edge.i, label %if.end4, !dbg !2272, !llvm.loop !2432

for.inc.for.body_crit_edge.i:                     ; preds = %for.inc.i
  %.pre.i520 = load ptr, ptr %fref1.i480, align 16, !dbg !2275, !tbaa !1812
  br label %for.body.i510, !dbg !2272

if.end4:                                          ; preds = %for.inc.i, %do.body.i.i234.i, %if.end.i501, %x264_mb_predict_mv_direct16x16_spatial.exit
  %b_available.0 = phi i32 [ %retval.0.i, %x264_mb_predict_mv_direct16x16_spatial.exit ], [ 1, %if.end.i501 ], [ 1, %do.body.i.i234.i ], [ 1, %for.inc.i ], !dbg !2434
  call void @llvm.dbg.value(metadata i32 %b_available.0, metadata !1743, metadata !DIExpression()), !dbg !1750
  %cmp5 = icmp ne ptr %b_changed, null, !dbg !2435
  %tobool6 = icmp ne i32 %b_available.0, 0
  %or.cond = and i1 %cmp5, %tobool6, !dbg !2436
  br i1 %or.cond, label %if.then7, label %if.end253, !dbg !2436

if.then7:                                         ; preds = %if.end4
  %direct_mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, !dbg !2437
  %95 = load i32, ptr %direct_mv, align 8, !dbg !2437, !tbaa !1450
  %mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !2438
  %arrayidx12 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 12, !dbg !2438
  %96 = load i32, ptr %arrayidx12, align 4, !dbg !2438, !tbaa !1450
  %xor = xor i32 %96, %95, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx17 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 1, !dbg !2441
  %97 = load i32, ptr %arrayidx17, align 8, !dbg !2441, !tbaa !1450
  %arrayidx25 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12, !dbg !2442
  %98 = load i32, ptr %arrayidx25, align 4, !dbg !2442, !tbaa !1450
  %xor27 = xor i32 %98, %97, !dbg !2443
  %or = or i32 %xor27, %xor, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %or, metadata !1744, metadata !DIExpression()), !dbg !2440
  %direct_ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, !dbg !2445
  %99 = load i8, ptr %direct_ref, align 8, !dbg !2446, !tbaa !1450
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2447
  %arrayidx36 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 12, !dbg !2448
  %100 = load i8, ptr %arrayidx36, align 1, !dbg !2448, !tbaa !1450
  %xor38471 = xor i8 %100, %99, !dbg !2449
  %xor38 = sext i8 %xor38471 to i32, !dbg !2449
  %or39 = or i32 %or, %xor38, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %or39, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx43 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 1, !dbg !2451
  %101 = load i8, ptr %arrayidx43, align 4, !dbg !2451, !tbaa !1450
  %arrayidx51 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !2452
  %102 = load i8, ptr %arrayidx51, align 1, !dbg !2452, !tbaa !1450
  %xor53472 = xor i8 %102, %101, !dbg !2453
  %xor53 = sext i8 %xor53472 to i32, !dbg !2453
  %or54 = or i32 %or39, %xor53, !dbg !2454
  call void @llvm.dbg.value(metadata i32 %or54, metadata !1744, metadata !DIExpression()), !dbg !2440
  %tobool55.not = icmp eq i32 %or54, 0, !dbg !2455
  br i1 %tobool55.not, label %land.lhs.true56, label %if.end249.thread547, !dbg !2457

land.lhs.true56:                                  ; preds = %if.then7
  %i_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !2458
  %103 = load i32, ptr %i_partition, align 4, !dbg !2458, !tbaa !1471
  %cmp58.not = icmp eq i32 %103, 16, !dbg !2459
  br i1 %cmp58.not, label %if.end249.thread, label %if.end121, !dbg !2460

if.end121:                                        ; preds = %land.lhs.true56
  %arrayidx65 = getelementptr inbounds [4 x [2 x i16]], ptr %direct_mv, i64 0, i64 3, !dbg !2461
  %104 = load i32, ptr %arrayidx65, align 4, !dbg !2461, !tbaa !1450
  %arrayidx72 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 30, !dbg !2463
  %105 = load i32, ptr %arrayidx72, align 4, !dbg !2463, !tbaa !1450
  %xor74 = xor i32 %105, %104, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %xor74, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx80 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 1, i64 3, !dbg !2465
  %106 = load i32, ptr %arrayidx80, align 4, !dbg !2465, !tbaa !1450
  %arrayidx87 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 30, !dbg !2466
  %107 = load i32, ptr %arrayidx87, align 4, !dbg !2466, !tbaa !1450
  %xor89 = xor i32 %107, %106, !dbg !2467
  %or90 = or i32 %xor89, %xor74, !dbg !2468
  call void @llvm.dbg.value(metadata i32 %or90, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx95 = getelementptr inbounds [4 x i8], ptr %direct_ref, i64 0, i64 3, !dbg !2469
  %108 = load i8, ptr %arrayidx95, align 1, !dbg !2469, !tbaa !1450
  %arrayidx102 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 30, !dbg !2470
  %109 = load i8, ptr %arrayidx102, align 1, !dbg !2470, !tbaa !1450
  %xor104477 = xor i8 %109, %108, !dbg !2471
  %xor104 = sext i8 %xor104477 to i32, !dbg !2471
  %or105 = or i32 %or90, %xor104, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %or105, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx110 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 1, i64 3, !dbg !2473
  %110 = load i8, ptr %arrayidx110, align 1, !dbg !2473, !tbaa !1450
  %arrayidx117 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30, !dbg !2474
  %111 = load i8, ptr %arrayidx117, align 1, !dbg !2474, !tbaa !1450
  %xor119478 = xor i8 %111, %110, !dbg !2475
  %xor119 = sext i8 %xor119478 to i32, !dbg !2475
  %or120 = or i32 %or105, %xor119, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %or120, metadata !1744, metadata !DIExpression()), !dbg !2440
  %tobool122.not = icmp eq i32 %or120, 0, !dbg !2477
  br i1 %tobool122.not, label %land.lhs.true123, label %if.end249.thread547, !dbg !2479

land.lhs.true123:                                 ; preds = %if.end121
  %cmp126 = icmp eq i32 %103, 13, !dbg !2480
  br i1 %cmp126, label %if.end249, label %if.end249.thread, !dbg !2481

if.end249.thread:                                 ; preds = %land.lhs.true56, %land.lhs.true123
  call void @llvm.dbg.value(metadata i32 %or248, metadata !1744, metadata !DIExpression()), !dbg !2440
  store i32 0, ptr %b_changed, align 4, !dbg !2482, !tbaa !1445
  br label %cleanup376

if.end249.thread547:                              ; preds = %if.end121, %if.then7
  %changed.1.ph = phi i32 [ %or54, %if.then7 ], [ %or120, %if.end121 ]
  call void @llvm.dbg.value(metadata i32 %or248, metadata !1744, metadata !DIExpression()), !dbg !2440
  store i32 %changed.1.ph, ptr %b_changed, align 4, !dbg !2482, !tbaa !1445
  br label %for.cond.preheader

if.end249:                                        ; preds = %land.lhs.true123
  %arrayidx133 = getelementptr inbounds [4 x [2 x i16]], ptr %direct_mv, i64 0, i64 1, !dbg !2483
  %112 = load i32, ptr %arrayidx133, align 4, !dbg !2483, !tbaa !1450
  %arrayidx140 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 14, !dbg !2485
  %113 = load i32, ptr %arrayidx140, align 4, !dbg !2485, !tbaa !1450
  %xor142 = xor i32 %113, %112, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %xor142, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx148 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 1, i64 1, !dbg !2487
  %114 = load i32, ptr %arrayidx148, align 4, !dbg !2487, !tbaa !1450
  %arrayidx155 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 14, !dbg !2488
  %115 = load i32, ptr %arrayidx155, align 4, !dbg !2488, !tbaa !1450
  %xor157 = xor i32 %115, %114, !dbg !2489
  %or158 = or i32 %xor157, %xor142, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %or158, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx163 = getelementptr inbounds [4 x [2 x i16]], ptr %direct_mv, i64 0, i64 2, !dbg !2491
  %116 = load i32, ptr %arrayidx163, align 8, !dbg !2491, !tbaa !1450
  %arrayidx170 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 28, !dbg !2492
  %117 = load i32, ptr %arrayidx170, align 4, !dbg !2492, !tbaa !1450
  %xor172 = xor i32 %117, %116, !dbg !2493
  %or173 = or i32 %or158, %xor172, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %or173, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx178 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 1, i64 2, !dbg !2495
  %118 = load i32, ptr %arrayidx178, align 8, !dbg !2495, !tbaa !1450
  %arrayidx185 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28, !dbg !2496
  %119 = load i32, ptr %arrayidx185, align 4, !dbg !2496, !tbaa !1450
  %xor187 = xor i32 %119, %118, !dbg !2497
  %or188 = or i32 %or173, %xor187, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %or188, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx193 = getelementptr inbounds [4 x i8], ptr %direct_ref, i64 0, i64 1, !dbg !2499
  %120 = load i8, ptr %arrayidx193, align 1, !dbg !2499, !tbaa !1450
  %arrayidx200 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 14, !dbg !2500
  %121 = load i8, ptr %arrayidx200, align 1, !dbg !2500, !tbaa !1450
  %xor202473 = xor i8 %121, %120, !dbg !2501
  %xor202 = sext i8 %xor202473 to i32, !dbg !2501
  %or203 = or i32 %or188, %xor202, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %or203, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx208 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 1, i64 1, !dbg !2503
  %122 = load i8, ptr %arrayidx208, align 1, !dbg !2503, !tbaa !1450
  %arrayidx215 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14, !dbg !2504
  %123 = load i8, ptr %arrayidx215, align 1, !dbg !2504, !tbaa !1450
  %xor217474 = xor i8 %123, %122, !dbg !2505
  %xor217 = sext i8 %xor217474 to i32, !dbg !2505
  %or218 = or i32 %or203, %xor217, !dbg !2506
  call void @llvm.dbg.value(metadata i32 %or218, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx223 = getelementptr inbounds [4 x i8], ptr %direct_ref, i64 0, i64 2, !dbg !2507
  %124 = load i8, ptr %arrayidx223, align 2, !dbg !2507, !tbaa !1450
  %arrayidx230 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 28, !dbg !2508
  %125 = load i8, ptr %arrayidx230, align 1, !dbg !2508, !tbaa !1450
  %xor232475 = xor i8 %125, %124, !dbg !2509
  %xor232 = sext i8 %xor232475 to i32, !dbg !2509
  %or233 = or i32 %or218, %xor232, !dbg !2510
  call void @llvm.dbg.value(metadata i32 %or233, metadata !1744, metadata !DIExpression()), !dbg !2440
  %arrayidx238 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 1, i64 2, !dbg !2511
  %126 = load i8, ptr %arrayidx238, align 2, !dbg !2511, !tbaa !1450
  %arrayidx245 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28, !dbg !2512
  %127 = load i8, ptr %arrayidx245, align 1, !dbg !2512, !tbaa !1450
  %xor247476 = xor i8 %127, %126, !dbg !2513
  %xor247 = sext i8 %xor247476 to i32, !dbg !2513
  %or248 = or i32 %or233, %xor247, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %or248, metadata !1744, metadata !DIExpression()), !dbg !2440
  store i32 %or248, ptr %b_changed, align 4, !dbg !2482, !tbaa !1445
  %tobool250.not = icmp eq i32 %or248, 0, !dbg !2515
  br i1 %tobool250.not, label %cleanup376, label %for.cond.preheader

if.end253:                                        ; preds = %if.end4
  br i1 %tobool6, label %for.cond.preheader, label %cleanup376, !dbg !2517

for.cond.preheader:                               ; preds = %if.end249.thread547, %if.end253, %if.end249
  %i_partition371 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54
  %128 = load i32, ptr %i_partition371, align 4, !tbaa !1471
  %direct_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 9
  call void @llvm.dbg.value(metadata i32 0, metadata !1747, metadata !DIExpression()), !dbg !2518
  br label %for.body, !dbg !2519

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %cmp256 = phi i1 [ true, %for.cond.preheader ], [ false, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ 1, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1747, metadata !DIExpression()), !dbg !2518
  %arrayidx264 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 12, !dbg !2520
  %129 = load i32, ptr %arrayidx264, align 4, !dbg !2520, !tbaa !1450
  %arrayidx270 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 %indvars.iv, !dbg !2520
  store i32 %129, ptr %arrayidx270, align 8, !dbg !2520, !tbaa !1450
  %arrayidx279 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 14, !dbg !2523
  %130 = load i32, ptr %arrayidx279, align 4, !dbg !2523, !tbaa !1450
  %arrayidx286 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 %indvars.iv, i64 1, !dbg !2523
  store i32 %130, ptr %arrayidx286, align 4, !dbg !2523, !tbaa !1450
  %arrayidx294 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 28, !dbg !2524
  %131 = load i32, ptr %arrayidx294, align 4, !dbg !2524, !tbaa !1450
  %arrayidx301 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 %indvars.iv, i64 2, !dbg !2524
  store i32 %131, ptr %arrayidx301, align 8, !dbg !2524, !tbaa !1450
  %arrayidx309 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 30, !dbg !2525
  %132 = load i32, ptr %arrayidx309, align 4, !dbg !2525, !tbaa !1450
  %arrayidx316 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 7, i64 %indvars.iv, i64 3, !dbg !2525
  store i32 %132, ptr %arrayidx316, align 4, !dbg !2525, !tbaa !1450
  %arrayidx324 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 12, !dbg !2526
  %133 = load i8, ptr %arrayidx324, align 1, !dbg !2526, !tbaa !1450
  %arrayidx329 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 %indvars.iv, !dbg !2527
  store i8 %133, ptr %arrayidx329, align 4, !dbg !2528, !tbaa !1450
  %arrayidx337 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 14, !dbg !2529
  %134 = load i8, ptr %arrayidx337, align 1, !dbg !2529, !tbaa !1450
  %arrayidx343 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 %indvars.iv, i64 1, !dbg !2530
  store i8 %134, ptr %arrayidx343, align 1, !dbg !2531, !tbaa !1450
  %arrayidx350 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 28, !dbg !2532
  %135 = load i8, ptr %arrayidx350, align 1, !dbg !2532, !tbaa !1450
  %arrayidx356 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 %indvars.iv, i64 2, !dbg !2533
  store i8 %135, ptr %arrayidx356, align 2, !dbg !2534, !tbaa !1450
  %arrayidx363 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 30, !dbg !2535
  %136 = load i8, ptr %arrayidx363, align 1, !dbg !2535, !tbaa !1450
  %arrayidx369 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 8, i64 %indvars.iv, i64 3, !dbg !2536
  store i8 %136, ptr %arrayidx369, align 1, !dbg !2537, !tbaa !1450
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1747, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2518
  br i1 %cmp256, label %for.body, label %cleanup376.loopexit, !dbg !2519, !llvm.loop !2538

cleanup376.loopexit:                              ; preds = %for.body
  store i32 %128, ptr %direct_partition, align 16, !dbg !2540, !tbaa !2541
  br label %cleanup376, !dbg !2542

cleanup376:                                       ; preds = %land.lhs.true.i514, %for.body.i510, %cleanup376.loopexit, %if.end249.thread, %if.end249, %if.end253, %entry
  %retval.1 = phi i32 [ 1, %if.end249 ], [ 0, %entry ], [ 0, %if.end253 ], [ 1, %if.end249.thread ], [ 1, %cleanup376.loopexit ], [ 0, %for.body.i510 ], [ 0, %land.lhs.true.i514 ]
  ret i32 %retval.1, !dbg !2542
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @x264_mb_predict_mv_ref16x16(ptr noundef readonly %h, i32 noundef %i_list, i32 noundef %i_ref, ptr nocapture noundef writeonly %mvc, ptr nocapture noundef writeonly %i_mvc) local_unnamed_addr #5 !dbg !2543 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2547, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i_list, metadata !2548, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i_ref, metadata !2549, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %mvc, metadata !2550, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata ptr %i_mvc, metadata !2551, metadata !DIExpression()), !dbg !2575
  %idxprom = sext i32 %i_list to i64, !dbg !2576
  %idxprom2 = sext i32 %i_ref to i64, !dbg !2576
  %arrayidx3 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 48, i64 %idxprom, i64 %idxprom2, !dbg !2576
  %0 = load ptr, ptr %arrayidx3, align 8, !dbg !2576, !tbaa !1812
  call void @llvm.dbg.value(metadata ptr %0, metadata !2552, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2553, metadata !DIExpression()), !dbg !2575
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !2577
  %1 = load i32, ptr %i_type, align 16, !dbg !2577, !tbaa !2579
  %cmp = icmp eq i32 %1, 1, !dbg !2580
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2581

land.lhs.true:                                    ; preds = %entry
  %arrayidx8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %idxprom, i64 30, !dbg !2582
  %2 = load i8, ptr %arrayidx8, align 1, !dbg !2582, !tbaa !1450
  %conv = sext i8 %2 to i32, !dbg !2582
  %cmp9 = icmp eq i32 %conv, %i_ref, !dbg !2583
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2584

if.then:                                          ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %idxprom, i64 30, !dbg !2585
  %3 = load i32, ptr %arrayidx16, align 4, !dbg !2585, !tbaa !1450
  store i32 %3, ptr %mvc, align 4, !dbg !2585, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 1, metadata !2553, metadata !DIExpression()), !dbg !2575
  br label %if.end, !dbg !2588

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %i.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true ], [ 0, %entry ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2553, metadata !DIExpression()), !dbg !2575
  %cmp20 = icmp eq i32 %i_ref, 0, !dbg !2589
  br i1 %cmp20, label %land.lhs.true22, label %if.end58, !dbg !2590

land.lhs.true22:                                  ; preds = %if.end
  %b_have_lowres = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 16, !dbg !2591
  %4 = load i32, ptr %b_have_lowres, align 16, !dbg !2591, !tbaa !2592
  %tobool.not = icmp eq i32 %4, 0, !dbg !2593
  br i1 %tobool.not, label %if.end58, label %if.then23, !dbg !2594

if.then23:                                        ; preds = %land.lhs.true22
  %tobool24.not = icmp eq i32 %i_list, 0, !dbg !2595
  %fenc32 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 44, !dbg !2596
  %5 = load ptr, ptr %fenc32, align 8, !dbg !2596, !tbaa !2597
  br i1 %tobool24.not, label %cond.false, label %cond.true, !dbg !2595

cond.true:                                        ; preds = %if.then23
  %fref1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, !dbg !2598
  %6 = load ptr, ptr %fref1, align 16, !dbg !2599, !tbaa !1812
  %i_frame = getelementptr inbounds %struct.x264_frame, ptr %6, i64 0, i32 10, !dbg !2600
  %7 = load i32, ptr %i_frame, align 8, !dbg !2600, !tbaa !2601
  %i_frame28 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 10, !dbg !2602
  %8 = load i32, ptr %i_frame28, align 8, !dbg !2602, !tbaa !2601
  %9 = xor i32 %8, -1, !dbg !2603
  %sub29 = add i32 %7, %9, !dbg !2603
  %idxprom30 = sext i32 %sub29 to i64, !dbg !2604
  %arrayidx31 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 45, i64 1, i64 %idxprom30, !dbg !2604
  br label %cond.end, !dbg !2595

cond.false:                                       ; preds = %if.then23
  %lowres_mvs33 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 45, !dbg !2605
  %i_frame36 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 10, !dbg !2606
  %10 = load i32, ptr %i_frame36, align 8, !dbg !2606, !tbaa !2601
  %fref0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, !dbg !2607
  %11 = load ptr, ptr %fref0, align 16, !dbg !2608, !tbaa !1812
  %i_frame38 = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 10, !dbg !2609
  %12 = load i32, ptr %i_frame38, align 8, !dbg !2609, !tbaa !2601
  %13 = xor i32 %12, -1, !dbg !2610
  %sub40 = add i32 %10, %13, !dbg !2610
  %idxprom41 = sext i32 %sub40 to i64, !dbg !2611
  %arrayidx42 = getelementptr inbounds [17 x ptr], ptr %lowres_mvs33, i64 0, i64 %idxprom41, !dbg !2611
  br label %cond.end, !dbg !2595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %arrayidx31, %cond.true ], [ %arrayidx42, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8, !dbg !2595, !tbaa !1812
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2554, metadata !DIExpression()), !dbg !2596
  %14 = load i16, ptr %cond, align 2, !dbg !2612, !tbaa !1555
  %cmp46.not = icmp eq i16 %14, 32767, !dbg !2614
  br i1 %cmp46.not, label %if.end58, label %if.then48, !dbg !2615

if.then48:                                        ; preds = %cond.end
  %i_mb_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !2616
  %15 = load i32, ptr %i_mb_xy, align 8, !dbg !2616, !tbaa !1830
  %idxprom50 = sext i32 %15 to i64, !dbg !2616
  %arrayidx51 = getelementptr inbounds [2 x i16], ptr %cond, i64 %idxprom50, !dbg !2616
  %16 = load i32, ptr %arrayidx51, align 4, !dbg !2616, !tbaa !1450
  %mul = shl i32 %16, 1, !dbg !2618
  %and = and i32 %mul, -65538, !dbg !2619
  %17 = zext i32 %i.0 to i64
  %arrayidx54 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %17, !dbg !2620
  store i32 %and, ptr %arrayidx54, align 4, !dbg !2621, !tbaa !1450
  %inc56 = add nuw nsw i32 %i.0, 1, !dbg !2622
  call void @llvm.dbg.value(metadata i32 %inc56, metadata !2553, metadata !DIExpression()), !dbg !2575
  br label %if.end58, !dbg !2623

if.end58:                                         ; preds = %cond.end, %if.then48, %land.lhs.true22, %if.end
  %i.2 = phi i32 [ %i.0, %land.lhs.true22 ], [ %i.0, %if.end ], [ %inc56, %if.then48 ], [ %i.0, %cond.end ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2553, metadata !DIExpression()), !dbg !2575
  %i_neighbour_frame = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 28, !dbg !2624
  %18 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2624, !tbaa !2626
  %and60 = and i32 %18, 1, !dbg !2627
  %tobool61.not = icmp eq i32 %and60, 0, !dbg !2627
  br i1 %tobool61.not, label %if.end71, label %if.then62, !dbg !2628

if.then62:                                        ; preds = %if.end58
  %i_mb_left_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34, !dbg !2629
  %19 = load i32, ptr %i_mb_left_xy, align 8, !dbg !2629, !tbaa !2632
  %idxprom64 = sext i32 %19 to i64, !dbg !2629
  %arrayidx65 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom64, !dbg !2629
  %20 = load i32, ptr %arrayidx65, align 4, !dbg !2629, !tbaa !1450
  %idxprom67405 = zext i32 %i.2 to i64, !dbg !2629
  %arrayidx68 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom67405, !dbg !2629
  store i32 %20, ptr %arrayidx68, align 4, !dbg !2629, !tbaa !1450
  %inc70 = add nuw nsw i32 %i.2, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %inc70, metadata !2553, metadata !DIExpression()), !dbg !2575
  %.pre = load i32, ptr %i_neighbour_frame, align 16, !dbg !2633, !tbaa !2626
  br label %if.end71, !dbg !2635

if.end71:                                         ; preds = %if.then62, %if.end58
  %21 = phi i32 [ %.pre, %if.then62 ], [ %18, %if.end58 ], !dbg !2633
  %i.3 = phi i32 [ %inc70, %if.then62 ], [ %i.2, %if.end58 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !2553, metadata !DIExpression()), !dbg !2575
  %and74 = and i32 %21, 2, !dbg !2636
  %tobool75.not = icmp eq i32 %and74, 0, !dbg !2636
  br i1 %tobool75.not, label %if.end113, label %if.then76, !dbg !2637

if.then76:                                        ; preds = %if.end71
  %i_mb_top_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !2638
  %22 = load i32, ptr %i_mb_top_xy, align 4, !dbg !2638, !tbaa !2641
  %idxprom78 = sext i32 %22 to i64, !dbg !2638
  %arrayidx79 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom78, !dbg !2638
  %23 = load i32, ptr %arrayidx79, align 4, !dbg !2638, !tbaa !1450
  %idxprom81402 = zext i32 %i.3 to i64, !dbg !2638
  %arrayidx82 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom81402, !dbg !2638
  store i32 %23, ptr %arrayidx82, align 4, !dbg !2638, !tbaa !1450
  %inc84 = add nuw nsw i32 %i.3, 1, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %inc84, metadata !2553, metadata !DIExpression()), !dbg !2575
  %24 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2642, !tbaa !2626
  %and87 = and i32 %24, 8, !dbg !2644
  %tobool88.not = icmp eq i32 %and87, 0, !dbg !2644
  br i1 %tobool88.not, label %if.end98, label %if.then89, !dbg !2645

if.then89:                                        ; preds = %if.then76
  %i_mb_topleft_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 36, !dbg !2646
  %25 = load i32, ptr %i_mb_topleft_xy, align 16, !dbg !2646, !tbaa !2648
  %idxprom91 = sext i32 %25 to i64, !dbg !2646
  %arrayidx92 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom91, !dbg !2646
  %26 = load i32, ptr %arrayidx92, align 4, !dbg !2646, !tbaa !1450
  %idxprom94404 = zext i32 %inc84 to i64, !dbg !2646
  %arrayidx95 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom94404, !dbg !2646
  store i32 %26, ptr %arrayidx95, align 4, !dbg !2646, !tbaa !1450
  %inc97 = add nuw nsw i32 %i.3, 2, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %inc97, metadata !2553, metadata !DIExpression()), !dbg !2575
  %.pre406 = load i32, ptr %i_neighbour_frame, align 16, !dbg !2649, !tbaa !2626
  br label %if.end98, !dbg !2646

if.end98:                                         ; preds = %if.then89, %if.then76
  %27 = phi i32 [ %.pre406, %if.then89 ], [ %24, %if.then76 ], !dbg !2649
  %i.4 = phi i32 [ %inc97, %if.then89 ], [ %inc84, %if.then76 ], !dbg !2651
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !2553, metadata !DIExpression()), !dbg !2575
  %and101 = and i32 %27, 4, !dbg !2652
  %tobool102.not = icmp eq i32 %and101, 0, !dbg !2652
  br i1 %tobool102.not, label %if.end113, label %if.then103, !dbg !2653

if.then103:                                       ; preds = %if.end98
  %i_mb_topright_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 37, !dbg !2654
  %28 = load i32, ptr %i_mb_topright_xy, align 4, !dbg !2654, !tbaa !2656
  %idxprom105 = sext i32 %28 to i64, !dbg !2654
  %arrayidx106 = getelementptr inbounds [2 x i16], ptr %0, i64 %idxprom105, !dbg !2654
  %29 = load i32, ptr %arrayidx106, align 4, !dbg !2654, !tbaa !1450
  %idxprom108403 = zext i32 %i.4 to i64, !dbg !2654
  %arrayidx109 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom108403, !dbg !2654
  store i32 %29, ptr %arrayidx109, align 4, !dbg !2654, !tbaa !1450
  %inc111 = add nuw nsw i32 %i.4, 1, !dbg !2654
  call void @llvm.dbg.value(metadata i32 %inc111, metadata !2553, metadata !DIExpression()), !dbg !2575
  br label %if.end113, !dbg !2654

if.end113:                                        ; preds = %if.end98, %if.then103, %if.end71
  %i.5 = phi i32 [ %inc111, %if.then103 ], [ %i.4, %if.end98 ], [ %i.3, %if.end71 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !2553, metadata !DIExpression()), !dbg !2575
  %fref0114 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, !dbg !2657
  %30 = load ptr, ptr %fref0114, align 16, !dbg !2658, !tbaa !1812
  %i_ref116 = getelementptr inbounds %struct.x264_frame, ptr %30, i64 0, i32 49, !dbg !2659
  %31 = load i32, ptr %i_ref116, align 8, !dbg !2658, !tbaa !1445
  %cmp118 = icmp sgt i32 %31, 0, !dbg !2660
  br i1 %cmp118, label %if.then120, label %if.end288, !dbg !2661

if.then120:                                       ; preds = %if.end113
  call void @llvm.dbg.value(metadata ptr %30, metadata !2557, metadata !DIExpression()), !dbg !2662
  %tobool123.not = icmp eq i32 %i_list, 0, !dbg !2663
  %fref1125 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49
  %spec.select = select i1 %tobool123.not, ptr %fref0114, ptr %fref1125, !dbg !2663
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2560, metadata !DIExpression()), !dbg !2662
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !2664
  %32 = load i32, ptr %i_mb_y, align 4, !dbg !2664, !tbaa !2192
  %and133 = and i32 %32, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i32 %and133, metadata !2561, metadata !DIExpression()), !dbg !2662
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !2666
  %33 = load ptr, ptr %fdec, align 16, !dbg !2666, !tbaa !2667
  %34 = load i32, ptr %33, align 16, !dbg !2668, !tbaa !2669
  %i_delta_poc_bottom = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 12, !dbg !2670
  %35 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !2670, !tbaa !2671
  %mul135 = mul nuw nsw i32 %35, %and133, !dbg !2672
  call void @llvm.dbg.value(metadata i32 undef, metadata !2562, metadata !DIExpression()), !dbg !2662
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !2673
  %36 = load i32, ptr %b_mbaff, align 4, !dbg !2673, !tbaa !2285
  %shr = ashr i32 %i_ref, %36, !dbg !2674
  %idxprom137 = sext i32 %shr to i64, !dbg !2675
  %arrayidx138 = getelementptr inbounds ptr, ptr %spec.select, i64 %idxprom137, !dbg !2675
  %37 = load ptr, ptr %arrayidx138, align 8, !dbg !2675, !tbaa !1812
  %38 = load i32, ptr %37, align 16, !dbg !2676, !tbaa !2669
  call void @llvm.dbg.value(metadata i32 %38, metadata !2563, metadata !DIExpression()), !dbg !2662
  %tobool142.not = icmp eq i32 %36, 0, !dbg !2677
  %and144 = and i32 %i_ref, 1
  %tobool145.not = icmp eq i32 %and133, %and144
  %or.cond = select i1 %tobool142.not, i1 true, i1 %tobool145.not, !dbg !2679
  %add149 = select i1 %or.cond, i32 0, i32 %35, !dbg !2679
  call void @llvm.dbg.value(metadata i32 undef, metadata !2563, metadata !DIExpression()), !dbg !2662
  %i_mb_xy152 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !2680
  %39 = load i32, ptr %i_mb_xy152, align 8, !dbg !2680, !tbaa !1830
  %i_mb_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %39, metadata !2564, metadata !DIExpression()), !dbg !2681
  %spec.select398.neg = add i32 %mul135, %34, !dbg !2679
  %40 = add i32 %38, %add149, !dbg !2680
  %sub157 = sub i32 %spec.select398.neg, %40, !dbg !2680
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !2680
  %41 = load i32, ptr %b_interlaced, align 4, !dbg !2680, !tbaa !2682
  %and159 = and i32 %41, %and133, !dbg !2680
  %42 = zext i32 %and159 to i64
  %arrayidx161 = getelementptr inbounds %struct.x264_frame, ptr %30, i64 0, i32 51, i64 %42, !dbg !2680
  %43 = load i16, ptr %arrayidx161, align 2, !dbg !2680, !tbaa !1555
  %conv162 = sext i16 %43 to i32, !dbg !2680
  %mul163 = mul nsw i32 %sub157, %conv162, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %mul163, metadata !2566, metadata !DIExpression()), !dbg !2681
  %mv16x16 = getelementptr inbounds %struct.x264_frame, ptr %30, i64 0, i32 44, !dbg !2680
  %44 = load ptr, ptr %mv16x16, align 16, !dbg !2680, !tbaa !2683
  %idxprom164 = sext i32 %39 to i64, !dbg !2680
  %arrayidx165 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom164, !dbg !2680
  %45 = load i16, ptr %arrayidx165, align 2, !dbg !2680, !tbaa !1555
  %conv167 = sext i16 %45 to i32, !dbg !2680
  %mul168 = mul nsw i32 %mul163, %conv167, !dbg !2680
  %add169 = add nsw i32 %mul168, 128, !dbg !2680
  %46 = lshr i32 %add169, 8, !dbg !2680
  %conv171 = trunc i32 %46 to i16, !dbg !2680
  %idxprom172399 = zext i32 %i.5 to i64, !dbg !2680
  %arrayidx173 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom172399, !dbg !2680
  store i16 %conv171, ptr %arrayidx173, align 2, !dbg !2680, !tbaa !1555
  %arrayidx178 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom164, i64 1, !dbg !2680
  %47 = load i16, ptr %arrayidx178, align 2, !dbg !2680, !tbaa !1555
  %conv179 = sext i16 %47 to i32, !dbg !2680
  %mul180 = mul nsw i32 %mul163, %conv179, !dbg !2680
  %add181 = add nsw i32 %mul180, 128, !dbg !2680
  %48 = lshr i32 %add181, 8, !dbg !2680
  %conv183 = trunc i32 %48 to i16, !dbg !2680
  %arrayidx186 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom172399, i64 1, !dbg !2680
  store i16 %conv183, ptr %arrayidx186, align 2, !dbg !2680, !tbaa !1555
  %inc187 = add nuw nsw i32 %i.5, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i32 %inc187, metadata !2553, metadata !DIExpression()), !dbg !2575
  %i_mb_x = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 4, !dbg !2684
  %49 = load i32, ptr %i_mb_x, align 16, !dbg !2684, !tbaa !2195
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2685
  %50 = load ptr, ptr %sps, align 16, !dbg !2685, !tbaa !2686
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 16, !dbg !2687
  %51 = load i32, ptr %i_mb_width, align 4, !dbg !2687, !tbaa !2688
  %sub189 = add nsw i32 %51, -1, !dbg !2693
  %cmp190 = icmp slt i32 %49, %sub189, !dbg !2694
  br i1 %cmp190, label %if.then192, label %if.end236, !dbg !2695

if.then192:                                       ; preds = %if.then120
  %add196 = add nsw i32 %39, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %add196, metadata !2567, metadata !DIExpression()), !dbg !2697
  %52 = load i16, ptr %arrayidx161, align 2, !dbg !2696, !tbaa !1555
  %conv209 = sext i16 %52 to i32, !dbg !2696
  %mul210 = mul nsw i32 %sub157, %conv209, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %mul210, metadata !2570, metadata !DIExpression()), !dbg !2697
  %idxprom212 = sext i32 %add196 to i64, !dbg !2696
  %arrayidx213 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom212, !dbg !2696
  %53 = load i16, ptr %arrayidx213, align 2, !dbg !2696, !tbaa !1555
  %conv215 = sext i16 %53 to i32, !dbg !2696
  %mul216 = mul nsw i32 %mul210, %conv215, !dbg !2696
  %add217 = add nsw i32 %mul216, 128, !dbg !2696
  %54 = lshr i32 %add217, 8, !dbg !2696
  %conv219 = trunc i32 %54 to i16, !dbg !2696
  %idxprom220400 = zext i32 %inc187 to i64, !dbg !2696
  %arrayidx221 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom220400, !dbg !2696
  store i16 %conv219, ptr %arrayidx221, align 2, !dbg !2696, !tbaa !1555
  %arrayidx226 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom212, i64 1, !dbg !2696
  %55 = load i16, ptr %arrayidx226, align 2, !dbg !2696, !tbaa !1555
  %conv227 = sext i16 %55 to i32, !dbg !2696
  %mul228 = mul nsw i32 %mul210, %conv227, !dbg !2696
  %add229 = add nsw i32 %mul228, 128, !dbg !2696
  %56 = lshr i32 %add229, 8, !dbg !2696
  %conv231 = trunc i32 %56 to i16, !dbg !2696
  %arrayidx234 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom220400, i64 1, !dbg !2696
  store i16 %conv231, ptr %arrayidx234, align 2, !dbg !2696, !tbaa !1555
  %inc235 = add nuw nsw i32 %i.5, 2, !dbg !2696
  call void @llvm.dbg.value(metadata i32 %inc235, metadata !2553, metadata !DIExpression()), !dbg !2575
  br label %if.end236, !dbg !2696

if.end236:                                        ; preds = %if.then192, %if.then120
  %i.6 = phi i32 [ %inc235, %if.then192 ], [ %inc187, %if.then120 ], !dbg !2662
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !2553, metadata !DIExpression()), !dbg !2575
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 17, !dbg !2698
  %57 = load i32, ptr %i_mb_height, align 4, !dbg !2698, !tbaa !2699
  %sub240 = add nsw i32 %57, -1, !dbg !2700
  %cmp241 = icmp slt i32 %32, %sub240, !dbg !2701
  br i1 %cmp241, label %if.then243, label %if.end288, !dbg !2702

if.then243:                                       ; preds = %if.end236
  %58 = load i32, ptr %i_mb_stride, align 4, !dbg !2703, !tbaa !2189
  %add251 = add nsw i32 %58, %39, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %add251, metadata !2571, metadata !DIExpression()), !dbg !2704
  %59 = load i16, ptr %arrayidx161, align 2, !dbg !2703, !tbaa !1555
  %conv260 = sext i16 %59 to i32, !dbg !2703
  %mul261 = mul nsw i32 %sub157, %conv260, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %mul261, metadata !2574, metadata !DIExpression()), !dbg !2704
  %idxprom263 = sext i32 %add251 to i64, !dbg !2703
  %arrayidx264 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom263, !dbg !2703
  %60 = load i16, ptr %arrayidx264, align 2, !dbg !2703, !tbaa !1555
  %conv266 = sext i16 %60 to i32, !dbg !2703
  %mul267 = mul nsw i32 %mul261, %conv266, !dbg !2703
  %add268 = add nsw i32 %mul267, 128, !dbg !2703
  %61 = lshr i32 %add268, 8, !dbg !2703
  %conv270 = trunc i32 %61 to i16, !dbg !2703
  %idxprom271401 = zext i32 %i.6 to i64, !dbg !2703
  %arrayidx272 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom271401, !dbg !2703
  store i16 %conv270, ptr %arrayidx272, align 2, !dbg !2703, !tbaa !1555
  %arrayidx277 = getelementptr inbounds [2 x i16], ptr %44, i64 %idxprom263, i64 1, !dbg !2703
  %62 = load i16, ptr %arrayidx277, align 2, !dbg !2703, !tbaa !1555
  %conv278 = sext i16 %62 to i32, !dbg !2703
  %mul279 = mul nsw i32 %mul261, %conv278, !dbg !2703
  %add280 = add nsw i32 %mul279, 128, !dbg !2703
  %63 = lshr i32 %add280, 8, !dbg !2703
  %conv282 = trunc i32 %63 to i16, !dbg !2703
  %arrayidx285 = getelementptr inbounds [2 x i16], ptr %mvc, i64 %idxprom271401, i64 1, !dbg !2703
  store i16 %conv282, ptr %arrayidx285, align 2, !dbg !2703, !tbaa !1555
  %inc286 = add nuw nsw i32 %i.6, 1, !dbg !2703
  call void @llvm.dbg.value(metadata i32 %inc286, metadata !2553, metadata !DIExpression()), !dbg !2575
  br label %if.end288, !dbg !2703

if.end288:                                        ; preds = %if.end236, %if.then243, %if.end113
  %i.8 = phi i32 [ %i.5, %if.end113 ], [ %inc286, %if.then243 ], [ %i.6, %if.end236 ], !dbg !2575
  call void @llvm.dbg.value(metadata i32 %i.8, metadata !2553, metadata !DIExpression()), !dbg !2575
  store i32 %i.8, ptr %i_mvc, align 4, !dbg !2705, !tbaa !1445
  ret void, !dbg !2706
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.abs.i16(i16, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { argmemonly mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !28, line: 125, type: !121, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/mvpred.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "3012a7d0e2b81d922088fb8c07eaaf20")
!4 = !{!5, !27, !35, !43}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !6, line: 117, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!9 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!10 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!11 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!12 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!13 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!14 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!15 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!16 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!17 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!18 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!19 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!20 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!21 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!22 = !DIEnumerator(name: "D_8x8", value: 13)
!23 = !DIEnumerator(name: "D_16x8", value: 14)
!24 = !DIEnumerator(name: "D_8x16", value: 15)
!25 = !DIEnumerator(name: "D_16x16", value: 16)
!26 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !28, line: 280, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!31 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!32 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!33 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!34 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !6, line: 33, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "MB_LEFT", value: 1)
!38 = !DIEnumerator(name: "MB_TOP", value: 2)
!39 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!40 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!41 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!42 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !6, line: 66, baseType: !7, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!45 = !DIEnumerator(name: "I_4x4", value: 0)
!46 = !DIEnumerator(name: "I_8x8", value: 1)
!47 = !DIEnumerator(name: "I_16x16", value: 2)
!48 = !DIEnumerator(name: "I_PCM", value: 3)
!49 = !DIEnumerator(name: "P_L0", value: 4)
!50 = !DIEnumerator(name: "P_8x8", value: 5)
!51 = !DIEnumerator(name: "P_SKIP", value: 6)
!52 = !DIEnumerator(name: "B_DIRECT", value: 7)
!53 = !DIEnumerator(name: "B_L0_L0", value: 8)
!54 = !DIEnumerator(name: "B_L0_L1", value: 9)
!55 = !DIEnumerator(name: "B_L0_BI", value: 10)
!56 = !DIEnumerator(name: "B_L1_L0", value: 11)
!57 = !DIEnumerator(name: "B_L1_L1", value: 12)
!58 = !DIEnumerator(name: "B_L1_BI", value: 13)
!59 = !DIEnumerator(name: "B_BI_L0", value: 14)
!60 = !DIEnumerator(name: "B_BI_L1", value: 15)
!61 = !DIEnumerator(name: "B_BI_BI", value: 16)
!62 = !DIEnumerator(name: "B_8x8", value: 17)
!63 = !DIEnumerator(name: "B_SKIP", value: 18)
!64 = !DIEnumerator(name: "X264_MBTYPE_MAX", value: 19)
!65 = !{!66, !89, !90, !7, !97, !104, !109}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !28, line: 89, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 89, size: 32, elements: !69)
!69 = !{!70, !75, !82}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !68, file: !28, line: 89, baseType: !71, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !72, line: 26, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !74, line: 42, baseType: !7)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !68, file: !28, line: 89, baseType: !76, size: 32)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !80)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !72, line: 25, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !74, line: 40, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !68, file: !28, line: 89, baseType: !83, size: 32)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 32, elements: !87)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !72, line: 24, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !74, line: 38, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!88}
!88 = !DISubrange(count: 4)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 32, elements: !80)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !94, line: 25, baseType: !95)
!94 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !74, line: 39, baseType: !96)
!96 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !28, line: 88, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 88, size: 16, elements: !100)
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !99, file: !28, line: 88, baseType: !77, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !99, file: !28, line: 88, baseType: !103, size: 16)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 16, elements: !80)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !28, line: 90, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !28, line: 90, size: 64, elements: !107)
!107 = !{!108, !112, !114, !116}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !106, file: !28, line: 90, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !72, line: 27, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !74, line: 45, baseType: !111)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !106, file: !28, line: 90, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !80)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !106, file: !28, line: 90, baseType: !115, size: 64)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, elements: !87)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !106, file: !28, line: 90, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 64, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !{!0}
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 864, elements: !124)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125}
!125 = !DISubrange(count: 27)
!126 = !{i32 7, !"Dwarf Version", i32 5}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{i32 1, !"wchar_size", i32 4}
!129 = !{i32 7, !"PIC Level", i32 2}
!130 = !{i32 7, !"PIE Level", i32 2}
!131 = !{i32 7, !"uwtable", i32 2}
!132 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!133 = distinct !DISubprogram(name: "x264_mb_predict_mv", scope: !134, file: !134, line: 27, type: !135, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1425)
!134 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mvpred.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3012a7d0e2b81d922088fb8c07eaaf20")
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137, !123, !123, !123, !844}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !139, line: 46, baseType: !140)
!139 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !28, line: 381, size: 266752, elements: !141)
!141 = !{!142, !310, !314, !315, !316, !317, !318, !319, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !455, !457, !485, !487, !488, !489, !493, !497, !498, !499, !503, !507, !508, !509, !514, !517, !518, !591, !608, !769, !770, !771, !772, !776, !777, !778, !779, !780, !781, !782, !797, !990, !994, !1055, !1058, !1060, !1061, !1062, !1065, !1070, !1079, !1080, !1088, !1090, !1095, !1171, !1257, !1301, !1323, !1372, !1401}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !140, file: !28, line: 384, baseType: !143, size: 5632)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !139, line: 376, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !139, line: 176, size: 5632, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !189, !193, !194, !195, !196, !200, !201, !215, !216, !217, !218, !219, !248, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !144, file: !139, line: 179, baseType: !7, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !144, file: !139, line: 180, baseType: !123, size: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !144, file: !139, line: 181, baseType: !123, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !144, file: !139, line: 182, baseType: !123, size: 32, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !144, file: !139, line: 183, baseType: !123, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !144, file: !139, line: 186, baseType: !123, size: 32, offset: 160)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !144, file: !139, line: 187, baseType: !123, size: 32, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !144, file: !139, line: 188, baseType: !123, size: 32, offset: 224)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !144, file: !139, line: 189, baseType: !123, size: 32, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !144, file: !139, line: 190, baseType: !123, size: 32, offset: 288)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !144, file: !139, line: 198, baseType: !123, size: 32, offset: 320)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !144, file: !139, line: 215, baseType: !158, size: 288, offset: 352)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 200, size: 288, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !158, file: !139, line: 203, baseType: !123, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !158, file: !139, line: 204, baseType: !123, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !158, file: !139, line: 206, baseType: !123, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !158, file: !139, line: 209, baseType: !123, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !158, file: !139, line: 210, baseType: !123, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !158, file: !139, line: 211, baseType: !123, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !158, file: !139, line: 212, baseType: !123, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !158, file: !139, line: 213, baseType: !123, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !158, file: !139, line: 214, baseType: !123, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !144, file: !139, line: 218, baseType: !123, size: 32, offset: 640)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !144, file: !139, line: 219, baseType: !123, size: 32, offset: 672)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !144, file: !139, line: 220, baseType: !123, size: 32, offset: 704)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !144, file: !139, line: 221, baseType: !123, size: 32, offset: 736)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !144, file: !139, line: 222, baseType: !123, size: 32, offset: 768)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !144, file: !139, line: 224, baseType: !123, size: 32, offset: 800)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !144, file: !139, line: 225, baseType: !123, size: 32, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !144, file: !139, line: 226, baseType: !123, size: 32, offset: 864)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !144, file: !139, line: 227, baseType: !123, size: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !144, file: !139, line: 229, baseType: !123, size: 32, offset: 928)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !144, file: !139, line: 230, baseType: !123, size: 32, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !144, file: !139, line: 231, baseType: !123, size: 32, offset: 992)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !144, file: !139, line: 233, baseType: !123, size: 32, offset: 1024)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !144, file: !139, line: 234, baseType: !123, size: 32, offset: 1056)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !144, file: !139, line: 236, baseType: !123, size: 32, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !144, file: !139, line: 237, baseType: !123, size: 32, offset: 1120)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !144, file: !139, line: 239, baseType: !123, size: 32, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !144, file: !139, line: 240, baseType: !187, size: 64, offset: 1216)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !144, file: !139, line: 241, baseType: !190, size: 128, offset: 1280)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !144, file: !139, line: 242, baseType: !190, size: 128, offset: 1408)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !144, file: !139, line: 243, baseType: !190, size: 128, offset: 1536)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !144, file: !139, line: 244, baseType: !190, size: 128, offset: 1664)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !144, file: !139, line: 245, baseType: !197, size: 512, offset: 1792)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 512, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !144, file: !139, line: 246, baseType: !197, size: 512, offset: 2304)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !144, file: !139, line: 249, baseType: !202, size: 64, offset: 2816)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !89, !123, !205, !207}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !209)
!209 = !{!210, !212, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !208, file: !211, baseType: !7, size: 32)
!211 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mvpred.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !208, file: !211, baseType: !7, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !208, file: !211, baseType: !89, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !208, file: !211, baseType: !89, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !144, file: !139, line: 250, baseType: !89, size: 64, offset: 2880)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !144, file: !139, line: 251, baseType: !123, size: 32, offset: 2944)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !144, file: !139, line: 252, baseType: !123, size: 32, offset: 2976)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !144, file: !139, line: 253, baseType: !187, size: 64, offset: 3008)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !144, file: !139, line: 287, baseType: !220, size: 800, offset: 3072)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 256, size: 800, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !242, !243, !244, !246, !247}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !220, file: !139, line: 258, baseType: !7, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !220, file: !139, line: 259, baseType: !7, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !220, file: !139, line: 261, baseType: !123, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !220, file: !139, line: 262, baseType: !123, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !220, file: !139, line: 263, baseType: !123, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !220, file: !139, line: 264, baseType: !123, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !220, file: !139, line: 265, baseType: !123, size: 32, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !220, file: !139, line: 267, baseType: !123, size: 32, offset: 224)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !220, file: !139, line: 268, baseType: !123, size: 32, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !220, file: !139, line: 269, baseType: !123, size: 32, offset: 288)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !220, file: !139, line: 270, baseType: !123, size: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !220, file: !139, line: 271, baseType: !123, size: 32, offset: 352)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !220, file: !139, line: 272, baseType: !123, size: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !220, file: !139, line: 273, baseType: !123, size: 32, offset: 416)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !220, file: !139, line: 274, baseType: !123, size: 32, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !220, file: !139, line: 275, baseType: !123, size: 32, offset: 480)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !220, file: !139, line: 276, baseType: !123, size: 32, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !220, file: !139, line: 277, baseType: !123, size: 32, offset: 544)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !220, file: !139, line: 278, baseType: !241, size: 32, offset: 576)
!241 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !220, file: !139, line: 279, baseType: !241, size: 32, offset: 608)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !220, file: !139, line: 280, baseType: !123, size: 32, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !220, file: !139, line: 283, baseType: !245, size: 64, offset: 672)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 64, elements: !80)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !220, file: !139, line: 285, baseType: !123, size: 32, offset: 736)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !220, file: !139, line: 286, baseType: !123, size: 32, offset: 768)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !144, file: !139, line: 327, baseType: !249, size: 1152, offset: 3904)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !144, file: !139, line: 290, size: 1152, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !288, !289}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !249, file: !139, line: 292, baseType: !123, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !249, file: !139, line: 294, baseType: !123, size: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !249, file: !139, line: 295, baseType: !123, size: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !249, file: !139, line: 296, baseType: !123, size: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !249, file: !139, line: 297, baseType: !123, size: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !249, file: !139, line: 299, baseType: !123, size: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !249, file: !139, line: 300, baseType: !241, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !249, file: !139, line: 301, baseType: !241, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !249, file: !139, line: 302, baseType: !241, size: 32, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !249, file: !139, line: 303, baseType: !123, size: 32, offset: 288)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !249, file: !139, line: 304, baseType: !123, size: 32, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !249, file: !139, line: 305, baseType: !241, size: 32, offset: 352)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !249, file: !139, line: 306, baseType: !241, size: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !249, file: !139, line: 307, baseType: !241, size: 32, offset: 416)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !249, file: !139, line: 309, baseType: !123, size: 32, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !249, file: !139, line: 310, baseType: !241, size: 32, offset: 480)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !249, file: !139, line: 311, baseType: !123, size: 32, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !249, file: !139, line: 312, baseType: !123, size: 32, offset: 544)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !249, file: !139, line: 315, baseType: !123, size: 32, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !249, file: !139, line: 316, baseType: !187, size: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !249, file: !139, line: 317, baseType: !123, size: 32, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !249, file: !139, line: 318, baseType: !187, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !249, file: !139, line: 321, baseType: !241, size: 32, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !249, file: !139, line: 322, baseType: !241, size: 32, offset: 864)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !249, file: !139, line: 323, baseType: !241, size: 32, offset: 896)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !249, file: !139, line: 324, baseType: !277, size: 64, offset: 960)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !139, line: 174, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 167, size: 256, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !279, file: !139, line: 169, baseType: !123, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !279, file: !139, line: 169, baseType: !123, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !279, file: !139, line: 170, baseType: !123, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !279, file: !139, line: 171, baseType: !123, size: 32, offset: 96)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !279, file: !139, line: 172, baseType: !241, size: 32, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !279, file: !139, line: 173, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !249, file: !139, line: 325, baseType: !123, size: 32, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !249, file: !139, line: 326, baseType: !187, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !144, file: !139, line: 330, baseType: !123, size: 32, offset: 5056)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !144, file: !139, line: 331, baseType: !123, size: 32, offset: 5088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !144, file: !139, line: 332, baseType: !123, size: 32, offset: 5120)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !144, file: !139, line: 334, baseType: !123, size: 32, offset: 5152)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !144, file: !139, line: 335, baseType: !123, size: 32, offset: 5184)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !144, file: !139, line: 336, baseType: !71, size: 32, offset: 5216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !144, file: !139, line: 337, baseType: !71, size: 32, offset: 5248)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !144, file: !139, line: 338, baseType: !71, size: 32, offset: 5280)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !144, file: !139, line: 339, baseType: !71, size: 32, offset: 5312)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !144, file: !139, line: 340, baseType: !123, size: 32, offset: 5344)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !144, file: !139, line: 344, baseType: !123, size: 32, offset: 5376)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !144, file: !139, line: 356, baseType: !123, size: 32, offset: 5408)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !144, file: !139, line: 364, baseType: !123, size: 32, offset: 5440)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !144, file: !139, line: 367, baseType: !123, size: 32, offset: 5472)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !144, file: !139, line: 368, baseType: !123, size: 32, offset: 5504)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !144, file: !139, line: 369, baseType: !123, size: 32, offset: 5536)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !144, file: !139, line: 375, baseType: !307, size: 64, offset: 5568)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !89}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !140, file: !28, line: 386, baseType: !311, size: 8256, offset: 5632)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 8256, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 129)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !140, file: !28, line: 387, baseType: !123, size: 32, offset: 13888)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !140, file: !28, line: 388, baseType: !123, size: 32, offset: 13920)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !140, file: !28, line: 389, baseType: !123, size: 32, offset: 13952)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !140, file: !28, line: 390, baseType: !123, size: 32, offset: 13984)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !140, file: !28, line: 391, baseType: !123, size: 32, offset: 14016)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !140, file: !28, line: 402, baseType: !320, size: 576, offset: 14080)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 394, size: 576, elements: !321)
!321 = !{!322, !323, !324, !334, !335, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !320, file: !28, line: 396, baseType: !123, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !320, file: !28, line: 397, baseType: !123, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !320, file: !28, line: 398, baseType: !325, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !139, line: 604, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 593, size: 192, elements: !328)
!328 = !{!329, !330, !331, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !327, file: !139, line: 595, baseType: !123, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !327, file: !139, line: 596, baseType: !123, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !327, file: !139, line: 599, baseType: !123, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !327, file: !139, line: 603, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !320, file: !28, line: 399, baseType: !123, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !320, file: !28, line: 400, baseType: !333, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !320, file: !28, line: 401, baseType: !337, size: 320, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !338, line: 56, baseType: !339)
!338 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !338, line: 47, size: 320, elements: !340)
!340 = !{!341, !342, !343, !344, !348, !349}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !339, file: !338, line: 49, baseType: !333, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !339, file: !338, line: 50, baseType: !333, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !339, file: !338, line: 51, baseType: !333, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !339, file: !338, line: 53, baseType: !345, size: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !346, line: 87, baseType: !347)
!346 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!347 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !339, file: !338, line: 54, baseType: !123, size: 32, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !339, file: !338, line: 55, baseType: !123, size: 32, offset: 288)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !140, file: !28, line: 404, baseType: !333, size: 64, offset: 14656)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !140, file: !28, line: 405, baseType: !123, size: 32, offset: 14720)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !140, file: !28, line: 410, baseType: !123, size: 32, offset: 14752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !140, file: !28, line: 411, baseType: !123, size: 32, offset: 14784)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !140, file: !28, line: 413, baseType: !123, size: 32, offset: 14816)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !140, file: !28, line: 415, baseType: !123, size: 32, offset: 14848)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !140, file: !28, line: 416, baseType: !123, size: 32, offset: 14880)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !140, file: !28, line: 418, baseType: !123, size: 32, offset: 14912)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !140, file: !28, line: 419, baseType: !123, size: 32, offset: 14944)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !140, file: !28, line: 420, baseType: !123, size: 32, offset: 14976)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !140, file: !28, line: 421, baseType: !123, size: 32, offset: 15008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !140, file: !28, line: 422, baseType: !123, size: 32, offset: 15040)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !140, file: !28, line: 424, baseType: !123, size: 32, offset: 15072)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !140, file: !28, line: 425, baseType: !123, size: 32, offset: 15104)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !140, file: !28, line: 427, baseType: !123, size: 32, offset: 15136)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !140, file: !28, line: 430, baseType: !366, size: 10400, offset: 15168)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 10400, elements: !453)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !368, line: 154, baseType: !369)
!368 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 52, size: 10400, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !388, !389, !390, !391, !392, !393, !394, !395, !396, !403, !404, !452}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !369, file: !368, line: 54, baseType: !123, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !369, file: !368, line: 56, baseType: !123, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !369, file: !368, line: 57, baseType: !123, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !369, file: !368, line: 59, baseType: !123, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !369, file: !368, line: 60, baseType: !123, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !369, file: !368, line: 61, baseType: !123, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !369, file: !368, line: 63, baseType: !123, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !369, file: !368, line: 65, baseType: !123, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !369, file: !368, line: 67, baseType: !123, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !369, file: !368, line: 69, baseType: !123, size: 32, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !369, file: !368, line: 70, baseType: !123, size: 32, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !369, file: !368, line: 71, baseType: !123, size: 32, offset: 352)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !369, file: !368, line: 72, baseType: !123, size: 32, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !369, file: !368, line: 73, baseType: !385, size: 8192, offset: 416)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8192, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !369, file: !368, line: 75, baseType: !123, size: 32, offset: 8608)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !369, file: !368, line: 76, baseType: !123, size: 32, offset: 8640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !369, file: !368, line: 77, baseType: !123, size: 32, offset: 8672)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !369, file: !368, line: 78, baseType: !123, size: 32, offset: 8704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !369, file: !368, line: 79, baseType: !123, size: 32, offset: 8736)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !369, file: !368, line: 80, baseType: !123, size: 32, offset: 8768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !369, file: !368, line: 81, baseType: !123, size: 32, offset: 8800)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !369, file: !368, line: 83, baseType: !123, size: 32, offset: 8832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !369, file: !368, line: 90, baseType: !397, size: 128, offset: 8864)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !368, line: 84, size: 128, elements: !398)
!398 = !{!399, !400, !401, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !397, file: !368, line: 86, baseType: !123, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !397, file: !368, line: 87, baseType: !123, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !397, file: !368, line: 88, baseType: !123, size: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !397, file: !368, line: 89, baseType: !123, size: 32, offset: 96)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !369, file: !368, line: 92, baseType: !123, size: 32, offset: 8992)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !369, file: !368, line: 150, baseType: !405, size: 1344, offset: 9024)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !369, file: !368, line: 93, size: 1344, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !443, !444, !445, !446, !447, !448, !449, !450, !451}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !405, file: !368, line: 95, baseType: !123, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !405, file: !368, line: 96, baseType: !123, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !405, file: !368, line: 97, baseType: !123, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !405, file: !368, line: 99, baseType: !123, size: 32, offset: 96)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !405, file: !368, line: 100, baseType: !123, size: 32, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !405, file: !368, line: 102, baseType: !123, size: 32, offset: 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !405, file: !368, line: 103, baseType: !123, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !405, file: !368, line: 104, baseType: !123, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !405, file: !368, line: 105, baseType: !123, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !405, file: !368, line: 106, baseType: !123, size: 32, offset: 288)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !405, file: !368, line: 107, baseType: !123, size: 32, offset: 320)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !405, file: !368, line: 108, baseType: !123, size: 32, offset: 352)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !405, file: !368, line: 110, baseType: !123, size: 32, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !405, file: !368, line: 111, baseType: !123, size: 32, offset: 416)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !405, file: !368, line: 112, baseType: !123, size: 32, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !405, file: !368, line: 114, baseType: !123, size: 32, offset: 480)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !405, file: !368, line: 115, baseType: !71, size: 32, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !405, file: !368, line: 116, baseType: !71, size: 32, offset: 544)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !405, file: !368, line: 117, baseType: !123, size: 32, offset: 576)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !405, file: !368, line: 119, baseType: !123, size: 32, offset: 608)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !405, file: !368, line: 120, baseType: !123, size: 32, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !405, file: !368, line: 137, baseType: !429, size: 384, offset: 672)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !368, line: 122, size: 384, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !429, file: !368, line: 124, baseType: !123, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !429, file: !368, line: 125, baseType: !123, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !429, file: !368, line: 126, baseType: !123, size: 32, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !429, file: !368, line: 127, baseType: !123, size: 32, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !429, file: !368, line: 128, baseType: !123, size: 32, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !429, file: !368, line: 129, baseType: !123, size: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !429, file: !368, line: 130, baseType: !123, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !429, file: !368, line: 131, baseType: !123, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !429, file: !368, line: 133, baseType: !123, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !429, file: !368, line: 134, baseType: !123, size: 32, offset: 288)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !429, file: !368, line: 135, baseType: !123, size: 32, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !429, file: !368, line: 136, baseType: !123, size: 32, offset: 352)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !405, file: !368, line: 139, baseType: !123, size: 32, offset: 1056)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !405, file: !368, line: 140, baseType: !123, size: 32, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !405, file: !368, line: 141, baseType: !123, size: 32, offset: 1120)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !405, file: !368, line: 142, baseType: !123, size: 32, offset: 1152)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !405, file: !368, line: 143, baseType: !123, size: 32, offset: 1184)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !405, file: !368, line: 144, baseType: !123, size: 32, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !405, file: !368, line: 145, baseType: !123, size: 32, offset: 1248)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !405, file: !368, line: 146, baseType: !123, size: 32, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !405, file: !368, line: 147, baseType: !123, size: 32, offset: 1312)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !369, file: !368, line: 152, baseType: !123, size: 32, offset: 10368)
!453 = !{!454}
!454 = !DISubrange(count: 1)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !140, file: !28, line: 431, baseType: !456, size: 64, offset: 25600)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !140, file: !28, line: 432, baseType: !458, size: 960, offset: 25664)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 960, elements: !453)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !368, line: 186, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 156, size: 960, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !460, file: !368, line: 158, baseType: !123, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !460, file: !368, line: 159, baseType: !123, size: 32, offset: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !460, file: !368, line: 161, baseType: !123, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !460, file: !368, line: 163, baseType: !123, size: 32, offset: 96)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !460, file: !368, line: 164, baseType: !123, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !460, file: !368, line: 166, baseType: !123, size: 32, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !460, file: !368, line: 167, baseType: !123, size: 32, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !460, file: !368, line: 169, baseType: !123, size: 32, offset: 224)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !460, file: !368, line: 170, baseType: !123, size: 32, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !460, file: !368, line: 172, baseType: !123, size: 32, offset: 288)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !460, file: !368, line: 173, baseType: !123, size: 32, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !460, file: !368, line: 175, baseType: !123, size: 32, offset: 352)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !460, file: !368, line: 177, baseType: !123, size: 32, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !460, file: !368, line: 178, baseType: !123, size: 32, offset: 416)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !460, file: !368, line: 179, baseType: !123, size: 32, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !460, file: !368, line: 181, baseType: !123, size: 32, offset: 480)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !460, file: !368, line: 183, baseType: !123, size: 32, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !460, file: !368, line: 184, baseType: !480, size: 384, offset: 576)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 384, elements: !483)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!483 = !{!484}
!484 = !DISubrange(count: 6)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !140, file: !28, line: 433, baseType: !486, size: 64, offset: 26624)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !140, file: !28, line: 434, baseType: !123, size: 32, offset: 26688)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !140, file: !28, line: 437, baseType: !123, size: 32, offset: 26720)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !140, file: !28, line: 440, baseType: !490, size: 256, offset: 26752)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 256, elements: !87)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !191)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !140, file: !28, line: 441, baseType: !494, size: 128, offset: 27008)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 128, elements: !80)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !198)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !140, file: !28, line: 443, baseType: !490, size: 256, offset: 27136)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !140, file: !28, line: 444, baseType: !494, size: 128, offset: 27392)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !140, file: !28, line: 446, baseType: !500, size: 256, offset: 27520)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 256, elements: !87)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !191)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !140, file: !28, line: 447, baseType: !504, size: 128, offset: 27776)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 128, elements: !80)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 1024, elements: !198)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !140, file: !28, line: 448, baseType: !500, size: 256, offset: 27904)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !140, file: !28, line: 449, baseType: !504, size: 128, offset: 28160)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !140, file: !28, line: 454, baseType: !510, size: 5888, offset: 28288)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 5888, elements: !512)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!512 = !{!513}
!513 = !DISubrange(count: 92)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !140, file: !28, line: 455, baseType: !515, size: 23552, offset: 34176)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 23552, elements: !516)
!516 = !{!513, !88}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !140, file: !28, line: 457, baseType: !481, size: 64, offset: 57728)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !140, file: !28, line: 460, baseType: !519, size: 53376, offset: 57856)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !28, line: 364, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 302, size: 53376, elements: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !550, !575, !576, !577, !583, !584, !585, !586, !587, !588, !589, !590}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !520, file: !28, line: 304, baseType: !456, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !520, file: !28, line: 305, baseType: !486, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !520, file: !28, line: 307, baseType: !123, size: 32, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !520, file: !28, line: 308, baseType: !123, size: 32, offset: 160)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !520, file: !28, line: 309, baseType: !123, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !520, file: !28, line: 311, baseType: !123, size: 32, offset: 224)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !520, file: !28, line: 313, baseType: !123, size: 32, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !520, file: !28, line: 315, baseType: !123, size: 32, offset: 288)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !520, file: !28, line: 316, baseType: !123, size: 32, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !520, file: !28, line: 317, baseType: !123, size: 32, offset: 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !520, file: !28, line: 319, baseType: !123, size: 32, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !520, file: !28, line: 321, baseType: !123, size: 32, offset: 416)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !520, file: !28, line: 322, baseType: !123, size: 32, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !520, file: !28, line: 324, baseType: !245, size: 64, offset: 480)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !520, file: !28, line: 325, baseType: !123, size: 32, offset: 544)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !520, file: !28, line: 327, baseType: !123, size: 32, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !520, file: !28, line: 329, baseType: !123, size: 32, offset: 608)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !520, file: !28, line: 330, baseType: !123, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !520, file: !28, line: 331, baseType: !123, size: 32, offset: 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !520, file: !28, line: 333, baseType: !123, size: 32, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !520, file: !28, line: 334, baseType: !123, size: 32, offset: 736)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !520, file: !28, line: 339, baseType: !544, size: 2048, offset: 768)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 2048, elements: !549)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !28, line: 335, size: 64, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !545, file: !28, line: 337, baseType: !123, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !545, file: !28, line: 338, baseType: !123, size: 32, offset: 32)
!549 = !{!81, !192}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !520, file: !28, line: 342, baseType: !551, size: 49152, align: 128, offset: 2816)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 49152, align: 128, elements: !572)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !553, line: 36, baseType: !554, align: 128)
!553 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !553, line: 26, size: 512, elements: !555)
!555 = !{!556, !558, !559, !562, !563, !564}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !554, file: !553, line: 30, baseType: !557, size: 128, align: 128)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !118)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !554, file: !553, line: 31, baseType: !557, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !554, file: !553, line: 32, baseType: !560, size: 32, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !94, line: 26, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !74, line: 41, baseType: !123)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !554, file: !553, line: 33, baseType: !560, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !554, file: !553, line: 34, baseType: !560, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !554, file: !553, line: 35, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !553, line: 25, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !333, !123, !333, !123, !570, !123}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!572 = !{!573, !574}
!573 = !DISubrange(count: 32)
!574 = !DISubrange(count: 3)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !520, file: !28, line: 344, baseType: !123, size: 32, offset: 51968)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !520, file: !28, line: 345, baseType: !123, size: 32, offset: 52000)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !520, file: !28, line: 350, baseType: !578, size: 1024, offset: 52032)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 1024, elements: !191)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !28, line: 346, size: 64, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !579, file: !28, line: 348, baseType: !123, size: 32)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !579, file: !28, line: 349, baseType: !123, size: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !520, file: !28, line: 352, baseType: !123, size: 32, offset: 53056)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !520, file: !28, line: 354, baseType: !123, size: 32, offset: 53088)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !520, file: !28, line: 355, baseType: !123, size: 32, offset: 53120)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !520, file: !28, line: 356, baseType: !123, size: 32, offset: 53152)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !520, file: !28, line: 357, baseType: !123, size: 32, offset: 53184)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !520, file: !28, line: 360, baseType: !123, size: 32, offset: 53216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !520, file: !28, line: 361, baseType: !123, size: 32, offset: 53248)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !520, file: !28, line: 362, baseType: !123, size: 32, offset: 53280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !140, file: !28, line: 463, baseType: !592, size: 4096, offset: 111232)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !593, line: 46, baseType: !594)
!593 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !593, line: 27, size: 4096, elements: !595)
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !594, file: !593, line: 30, baseType: !123, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !594, file: !593, line: 31, baseType: !123, size: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !594, file: !593, line: 34, baseType: !123, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !594, file: !593, line: 35, baseType: !123, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !594, file: !593, line: 37, baseType: !333, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !594, file: !593, line: 38, baseType: !333, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !594, file: !593, line: 39, baseType: !333, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !594, file: !593, line: 42, baseType: !123, size: 32, align: 128, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !594, file: !593, line: 45, baseType: !605, size: 3680, offset: 416)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3680, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 460)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !140, file: !28, line: 494, baseType: !609, size: 2112, offset: 115328)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 465, size: 2112, elements: !610)
!610 = !{!611, !749, !751, !752, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !765, !766, !767, !768}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !609, file: !28, line: 468, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !615, line: 146, baseType: !616)
!615 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !615, line: 31, size: 125056, elements: !617)
!617 = !{!618, !619, !620, !621, !624, !625, !626, !627, !628, !629, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !648, !649, !650, !651, !652, !653, !655, !657, !658, !659, !660, !661, !664, !666, !667, !669, !674, !675, !679, !680, !684, !688, !691, !693, !694, !696, !697, !699, !700, !701, !704, !706, !707, !708, !710, !711, !712, !713, !714, !715, !716, !717, !719, !720, !721, !730, !734, !736, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !616, file: !615, line: 34, baseType: !123, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !616, file: !615, line: 35, baseType: !123, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !616, file: !615, line: 36, baseType: !123, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !616, file: !615, line: 37, baseType: !622, size: 64, offset: 128)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !94, line: 27, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !74, line: 44, baseType: !347)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !616, file: !615, line: 38, baseType: !622, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !616, file: !615, line: 39, baseType: !123, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !616, file: !615, line: 40, baseType: !123, size: 32, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !616, file: !615, line: 41, baseType: !123, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !616, file: !615, line: 42, baseType: !123, size: 32, offset: 352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !616, file: !615, line: 43, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !616, file: !615, line: 45, baseType: !123, size: 32, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !616, file: !615, line: 46, baseType: !123, size: 32, offset: 480)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !616, file: !615, line: 47, baseType: !123, size: 32, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !616, file: !615, line: 48, baseType: !123, size: 32, offset: 544)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !616, file: !615, line: 49, baseType: !123, size: 32, offset: 576)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !616, file: !615, line: 50, baseType: !123, size: 32, offset: 608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !616, file: !615, line: 51, baseType: !123, size: 32, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !616, file: !615, line: 52, baseType: !84, size: 8, offset: 672)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !616, file: !615, line: 53, baseType: !84, size: 8, offset: 680)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !616, file: !615, line: 54, baseType: !84, size: 8, offset: 688)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !616, file: !615, line: 55, baseType: !241, size: 32, offset: 704)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !616, file: !615, line: 56, baseType: !241, size: 32, offset: 736)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !616, file: !615, line: 57, baseType: !123, size: 32, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !616, file: !615, line: 60, baseType: !123, size: 32, offset: 800)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !616, file: !615, line: 61, baseType: !646, size: 96, offset: 832)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !647)
!647 = !{!574}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !616, file: !615, line: 62, baseType: !646, size: 96, offset: 928)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !616, file: !615, line: 63, baseType: !646, size: 96, offset: 1024)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !616, file: !615, line: 64, baseType: !123, size: 32, offset: 1120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !616, file: !615, line: 65, baseType: !123, size: 32, offset: 1152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !616, file: !615, line: 66, baseType: !123, size: 32, offset: 1184)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !616, file: !615, line: 67, baseType: !654, size: 192, offset: 1216)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 192, elements: !647)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !616, file: !615, line: 68, baseType: !656, size: 256, offset: 1408)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 256, elements: !87)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !616, file: !615, line: 69, baseType: !656, size: 256, offset: 1664)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !616, file: !615, line: 70, baseType: !511, size: 64, offset: 1920)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !616, file: !615, line: 74, baseType: !656, size: 256, offset: 1984)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !616, file: !615, line: 75, baseType: !656, size: 256, offset: 2240)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !616, file: !615, line: 77, baseType: !662, size: 24576, align: 128, offset: 2560)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 24576, align: 128, elements: !663)
!663 = !{!192, !574}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !616, file: !615, line: 78, baseType: !665, size: 1024, offset: 27136)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 1024, elements: !191)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !616, file: !615, line: 79, baseType: !123, size: 32, offset: 28160)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !616, file: !615, line: 80, baseType: !668, size: 64, offset: 28224)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !616, file: !615, line: 83, baseType: !670, size: 64, offset: 28288)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !94, line: 24, baseType: !672)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !74, line: 37, baseType: !673)
!673 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !616, file: !615, line: 84, baseType: !333, size: 64, offset: 28352)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !616, file: !615, line: 85, baseType: !676, size: 128, offset: 28416)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 128, elements: !80)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 32, elements: !80)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !616, file: !615, line: 86, baseType: !677, size: 64, offset: 28544)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !616, file: !615, line: 87, baseType: !681, size: 2176, offset: 28608)
!681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 2176, elements: !682)
!682 = !{!81, !683}
!683 = !DISubrange(count: 17)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !616, file: !615, line: 92, baseType: !685, size: 20736, offset: 30784)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 20736, elements: !686)
!686 = !{!687, !687}
!687 = !DISubrange(count: 18)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !616, file: !615, line: 96, baseType: !689, size: 2176, offset: 51520)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 2176, elements: !682)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !616, file: !615, line: 97, baseType: !692, size: 128, offset: 53696)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 128, elements: !80)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !616, file: !615, line: 98, baseType: !245, size: 64, offset: 53824)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !616, file: !615, line: 99, baseType: !695, size: 1024, offset: 53888)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1024, elements: !549)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !616, file: !615, line: 100, baseType: !678, size: 32, offset: 54912)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !616, file: !615, line: 105, baseType: !698, size: 10368, offset: 54944)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 10368, elements: !686)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !616, file: !615, line: 106, baseType: !698, size: 10368, offset: 65312)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !616, file: !615, line: 107, baseType: !123, size: 32, offset: 75680)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !616, file: !615, line: 108, baseType: !702, size: 576, offset: 75712)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 576, elements: !703)
!703 = !{!687}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !616, file: !615, line: 109, baseType: !705, size: 20736, offset: 76288)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 20736, elements: !686)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !616, file: !615, line: 110, baseType: !690, size: 64, offset: 97024)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !616, file: !615, line: 111, baseType: !690, size: 64, offset: 97088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !616, file: !615, line: 112, baseType: !709, size: 64, offset: 97152)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !616, file: !615, line: 113, baseType: !709, size: 64, offset: 97216)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !616, file: !615, line: 114, baseType: !709, size: 64, offset: 97280)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !616, file: !615, line: 115, baseType: !123, size: 32, offset: 97344)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !616, file: !615, line: 116, baseType: !511, size: 64, offset: 97408)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !616, file: !615, line: 117, baseType: !511, size: 64, offset: 97472)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !616, file: !615, line: 118, baseType: !511, size: 64, offset: 97536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !616, file: !615, line: 119, baseType: !123, size: 32, offset: 97600)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !616, file: !615, line: 120, baseType: !718, size: 576, offset: 97632)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 576, elements: !703)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !616, file: !615, line: 121, baseType: !71, size: 32, offset: 98208)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !616, file: !615, line: 122, baseType: !109, size: 64, offset: 98240)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !616, file: !615, line: 125, baseType: !722, size: 256, offset: 98304)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !139, line: 503, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 496, size: 256, elements: !724)
!724 = !{!725, !727, !728, !729}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !723, file: !139, line: 498, baseType: !726, size: 64)
!726 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !723, file: !139, line: 499, baseType: !726, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !723, file: !139, line: 500, baseType: !726, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !723, file: !139, line: 502, baseType: !726, size: 64, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !616, file: !615, line: 128, baseType: !731, size: 2008, offset: 98560)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2008, elements: !732)
!732 = !{!733}
!733 = !DISubrange(count: 251)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !616, file: !615, line: 129, baseType: !735, size: 8032, offset: 100576)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 8032, elements: !732)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !616, file: !615, line: 130, baseType: !737, size: 16064, offset: 108608)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 16064, elements: !732)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !616, file: !615, line: 131, baseType: !123, size: 32, offset: 124672)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !616, file: !615, line: 132, baseType: !123, size: 32, offset: 124704)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !616, file: !615, line: 135, baseType: !123, size: 32, offset: 124736)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !616, file: !615, line: 136, baseType: !123, size: 32, offset: 124768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !616, file: !615, line: 137, baseType: !123, size: 32, offset: 124800)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !616, file: !615, line: 138, baseType: !123, size: 32, offset: 124832)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !616, file: !615, line: 139, baseType: !123, size: 32, offset: 124864)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !616, file: !615, line: 142, baseType: !241, size: 32, offset: 124896)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !616, file: !615, line: 143, baseType: !123, size: 32, offset: 124928)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !616, file: !615, line: 144, baseType: !123, size: 32, offset: 124960)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !616, file: !615, line: 145, baseType: !123, size: 32, offset: 124992)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !609, file: !28, line: 470, baseType: !750, size: 128, offset: 64)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 128, elements: !80)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !609, file: !28, line: 473, baseType: !612, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !609, file: !28, line: 476, baseType: !753, size: 1152, offset: 256)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 1152, elements: !703)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !609, file: !28, line: 478, baseType: !123, size: 32, offset: 1408)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !609, file: !28, line: 480, baseType: !123, size: 32, offset: 1440)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !609, file: !28, line: 482, baseType: !123, size: 32, offset: 1472)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !609, file: !28, line: 483, baseType: !123, size: 32, offset: 1504)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !609, file: !28, line: 484, baseType: !123, size: 32, offset: 1536)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !609, file: !28, line: 485, baseType: !123, size: 32, offset: 1568)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !609, file: !28, line: 486, baseType: !123, size: 32, offset: 1600)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !609, file: !28, line: 487, baseType: !622, size: 64, offset: 1664)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !609, file: !28, line: 488, baseType: !622, size: 64, offset: 1728)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !609, file: !28, line: 489, baseType: !764, size: 128, offset: 1792)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 128, elements: !80)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !609, file: !28, line: 490, baseType: !622, size: 64, offset: 1920)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !609, file: !28, line: 491, baseType: !622, size: 64, offset: 1984)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !609, file: !28, line: 492, baseType: !123, size: 32, offset: 2048)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !609, file: !28, line: 493, baseType: !123, size: 32, offset: 2080)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !140, file: !28, line: 497, baseType: !613, size: 64, offset: 117440)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !140, file: !28, line: 500, baseType: !613, size: 64, offset: 117504)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !140, file: !28, line: 503, baseType: !123, size: 32, offset: 117568)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !140, file: !28, line: 504, baseType: !773, size: 1216, offset: 117632)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 1216, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 19)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !140, file: !28, line: 505, baseType: !123, size: 32, offset: 118848)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !140, file: !28, line: 506, baseType: !773, size: 1216, offset: 118912)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !140, file: !28, line: 507, baseType: !245, size: 64, offset: 120128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !140, file: !28, line: 510, baseType: !123, size: 32, offset: 120192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !140, file: !28, line: 511, baseType: !123, size: 32, offset: 120224)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !140, file: !28, line: 512, baseType: !622, size: 64, offset: 120256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !140, file: !28, line: 522, baseType: !783, size: 10624, offset: 120320)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 515, size: 10624, elements: !784)
!784 = !{!785, !787, !790, !793}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !783, file: !28, line: 517, baseType: !786, size: 256, align: 128)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !191)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !783, file: !28, line: 518, baseType: !788, size: 128, align: 128, offset: 256)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !789)
!789 = !{!81, !88}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !783, file: !28, line: 520, baseType: !791, size: 4096, align: 128, offset: 384)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !792)
!792 = !{!88, !199}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !783, file: !28, line: 521, baseType: !794, size: 6144, align: 128, offset: 4480)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 6144, elements: !795)
!795 = !{!796, !192}
!796 = !DISubrange(count: 24)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !140, file: !28, line: 732, baseType: !798, size: 82688, offset: 130944)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 525, size: 82688, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !827, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !845, !848, !852, !853, !854, !859, !860, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !928, !959, !960, !961, !962, !963, !964, !965, !966, !967, !970, !971, !972, !975, !978, !980, !983, !985, !986}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !798, file: !28, line: 527, baseType: !123, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !798, file: !28, line: 530, baseType: !123, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !798, file: !28, line: 531, baseType: !123, size: 32, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !798, file: !28, line: 532, baseType: !123, size: 32, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !798, file: !28, line: 535, baseType: !123, size: 32, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !798, file: !28, line: 536, baseType: !123, size: 32, offset: 160)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !798, file: !28, line: 537, baseType: !123, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !798, file: !28, line: 538, baseType: !123, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !798, file: !28, line: 539, baseType: !123, size: 32, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !798, file: !28, line: 542, baseType: !123, size: 32, offset: 288)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !798, file: !28, line: 543, baseType: !123, size: 32, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !798, file: !28, line: 544, baseType: !123, size: 32, offset: 352)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !798, file: !28, line: 545, baseType: !123, size: 32, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !798, file: !28, line: 546, baseType: !123, size: 32, offset: 416)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !798, file: !28, line: 547, baseType: !123, size: 32, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !798, file: !28, line: 548, baseType: !123, size: 32, offset: 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !798, file: !28, line: 549, baseType: !123, size: 32, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !798, file: !28, line: 551, baseType: !123, size: 32, offset: 544)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !798, file: !28, line: 554, baseType: !245, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !798, file: !28, line: 555, baseType: !245, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !798, file: !28, line: 558, baseType: !245, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !798, file: !28, line: 559, baseType: !245, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !798, file: !28, line: 561, baseType: !245, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !798, file: !28, line: 562, baseType: !245, size: 64, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !798, file: !28, line: 565, baseType: !7, size: 32, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !798, file: !28, line: 566, baseType: !826, size: 128, offset: 992)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !87)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !798, file: !28, line: 567, baseType: !828, size: 512, offset: 1120)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !191)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !798, file: !28, line: 568, baseType: !7, size: 32, offset: 1632)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !798, file: !28, line: 569, baseType: !7, size: 32, offset: 1664)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !798, file: !28, line: 570, baseType: !123, size: 32, offset: 1696)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !798, file: !28, line: 571, baseType: !123, size: 32, offset: 1728)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !798, file: !28, line: 572, baseType: !123, size: 32, offset: 1760)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !798, file: !28, line: 573, baseType: !123, size: 32, offset: 1792)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !798, file: !28, line: 574, baseType: !123, size: 32, offset: 1824)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !798, file: !28, line: 575, baseType: !123, size: 32, offset: 1856)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !798, file: !28, line: 576, baseType: !123, size: 32, offset: 1888)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !798, file: !28, line: 577, baseType: !123, size: 32, offset: 1920)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !798, file: !28, line: 578, baseType: !123, size: 32, offset: 1952)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !28, line: 585, baseType: !670, size: 64, offset: 1984)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !798, file: !28, line: 586, baseType: !333, size: 64, offset: 2048)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !798, file: !28, line: 587, baseType: !670, size: 64, offset: 2112)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !798, file: !28, line: 588, baseType: !844, size: 64, offset: 2176)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !798, file: !28, line: 589, baseType: !846, size: 64, offset: 2240)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 64, elements: !118)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !798, file: !28, line: 591, baseType: !849, size: 64, offset: 2304)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 192, elements: !851)
!851 = !{!796}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !798, file: !28, line: 592, baseType: !670, size: 64, offset: 2368)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !798, file: !28, line: 593, baseType: !676, size: 128, offset: 2432)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !798, file: !28, line: 594, baseType: !855, size: 128, offset: 2560)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 128, elements: !80)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !858)
!858 = !{!119, !81}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !798, file: !28, line: 595, baseType: !692, size: 128, offset: 2688)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !798, file: !28, line: 596, baseType: !861, size: 4096, offset: 2816)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 4096, elements: !862)
!862 = !{!81, !573}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !798, file: !28, line: 597, baseType: !670, size: 64, offset: 6912)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !798, file: !28, line: 598, baseType: !670, size: 64, offset: 6976)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !798, file: !28, line: 599, baseType: !511, size: 64, offset: 7040)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !798, file: !28, line: 603, baseType: !665, size: 1024, offset: 7104)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !798, file: !28, line: 606, baseType: !123, size: 32, offset: 8128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !798, file: !28, line: 607, baseType: !123, size: 32, offset: 8160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !798, file: !28, line: 608, baseType: !83, size: 32, align: 32, offset: 8192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !798, file: !28, line: 609, baseType: !123, size: 32, offset: 8224)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !798, file: !28, line: 611, baseType: !123, size: 32, offset: 8256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !798, file: !28, line: 612, baseType: !123, size: 32, offset: 8288)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !798, file: !28, line: 614, baseType: !123, size: 32, offset: 8320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !798, file: !28, line: 615, baseType: !123, size: 32, offset: 8352)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !798, file: !28, line: 621, baseType: !123, size: 32, offset: 8384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !798, file: !28, line: 624, baseType: !123, size: 32, offset: 8416)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !798, file: !28, line: 626, baseType: !123, size: 32, offset: 8448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !798, file: !28, line: 627, baseType: !123, size: 32, offset: 8480)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !798, file: !28, line: 671, baseType: !880, size: 60672, offset: 8576)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !28, line: 629, size: 60672, elements: !881)
!881 = !{!882, !886, !890, !892, !893, !896, !900, !902, !903, !904, !905, !906, !909, !913, !916, !917, !918, !919, !920, !923, !925, !927}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !880, file: !28, line: 634, baseType: !883, size: 3072, align: 128)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 3072, elements: !884)
!884 = !{!885}
!885 = !DISubrange(count: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !880, file: !28, line: 635, baseType: !887, size: 6912, align: 128, offset: 3072)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 6912, elements: !888)
!888 = !{!889}
!889 = !DISubrange(count: 864)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !880, file: !28, line: 638, baseType: !891, size: 2048, align: 128, offset: 9984)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2048, elements: !386)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !880, file: !28, line: 639, baseType: !891, size: 2048, align: 128, offset: 12032)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !880, file: !28, line: 640, baseType: !894, size: 3072, align: 128, offset: 14080)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3072, elements: !895)
!895 = !{!574, !199}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !880, file: !28, line: 641, baseType: !897, size: 3840, align: 128, offset: 17152)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 3840, elements: !898)
!898 = !{!899, !192}
!899 = !DISubrange(count: 15)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !880, file: !28, line: 642, baseType: !901, size: 128, offset: 20992)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 128, elements: !87)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !880, file: !28, line: 643, baseType: !901, size: 128, offset: 21120)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !880, file: !28, line: 644, baseType: !123, size: 32, offset: 21248)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !880, file: !28, line: 645, baseType: !123, size: 32, offset: 21280)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !880, file: !28, line: 648, baseType: !791, size: 4096, align: 128, offset: 21376)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !880, file: !28, line: 649, baseType: !907, size: 4096, align: 128, offset: 25472)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !908)
!908 = !{!192, !192}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !880, file: !28, line: 652, baseType: !910, size: 576, align: 128, offset: 29568)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 576, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 9)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !880, file: !28, line: 653, baseType: !914, size: 1024, align: 128, offset: 30208)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 1024, elements: !915)
!915 = !{!573}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !880, file: !28, line: 656, baseType: !654, size: 192, offset: 31232)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !880, file: !28, line: 658, baseType: !654, size: 192, offset: 31424)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !880, file: !28, line: 661, baseType: !654, size: 192, offset: 31616)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !880, file: !28, line: 664, baseType: !245, size: 64, offset: 31808)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !880, file: !28, line: 665, baseType: !921, size: 24576, offset: 31872)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 24576, elements: !922)
!922 = !{!81, !573, !484}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !880, file: !28, line: 666, baseType: !924, size: 2048, offset: 56448)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 2048, elements: !915)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !880, file: !28, line: 667, baseType: !926, size: 2048, offset: 58496)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 2048, elements: !549)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !880, file: !28, line: 670, baseType: !646, size: 96, offset: 60544)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !798, file: !28, line: 704, baseType: !929, size: 6144, offset: 69248)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !798, file: !28, line: 674, size: 6144, elements: !930)
!930 = !{!931, !935, !939, !942, !945, !947, !948, !951, !953, !954, !955, !956, !957, !958}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !929, file: !28, line: 677, baseType: !932, size: 320, align: 64)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 320, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 40)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !929, file: !28, line: 680, baseType: !936, size: 384, align: 128, offset: 384)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 384, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 48)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !929, file: !28, line: 683, baseType: !940, size: 640, align: 32, offset: 768)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 640, elements: !941)
!941 = !{!81, !934}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !929, file: !28, line: 686, baseType: !943, size: 2560, align: 128, offset: 1408)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2560, elements: !944)
!944 = !{!81, !934, !81}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !929, file: !28, line: 687, baseType: !946, size: 1280, align: 64, offset: 3968)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 1280, elements: !944)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !929, file: !28, line: 690, baseType: !932, size: 320, align: 32, offset: 5248)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !929, file: !28, line: 692, baseType: !949, size: 256, align: 32, offset: 5568)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !950)
!950 = !{!81, !88, !81}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !929, file: !28, line: 693, baseType: !952, size: 64, align: 32, offset: 5824)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 64, elements: !789)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !929, file: !28, line: 694, baseType: !123, size: 32, offset: 5888)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !929, file: !28, line: 695, baseType: !678, size: 32, align: 32, offset: 5920)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !929, file: !28, line: 698, baseType: !123, size: 32, offset: 5952)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !929, file: !28, line: 699, baseType: !123, size: 32, offset: 5984)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !929, file: !28, line: 702, baseType: !123, size: 32, offset: 6016)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !929, file: !28, line: 703, baseType: !123, size: 32, offset: 6048)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !798, file: !28, line: 707, baseType: !123, size: 32, offset: 75392)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !798, file: !28, line: 708, baseType: !123, size: 32, offset: 75424)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !798, file: !28, line: 709, baseType: !123, size: 32, offset: 75456)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !798, file: !28, line: 710, baseType: !123, size: 32, offset: 75488)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !798, file: !28, line: 711, baseType: !123, size: 32, offset: 75520)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !798, file: !28, line: 712, baseType: !123, size: 32, offset: 75552)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !798, file: !28, line: 713, baseType: !123, size: 32, offset: 75584)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !798, file: !28, line: 714, baseType: !123, size: 32, offset: 75616)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !798, file: !28, line: 717, baseType: !968, size: 128, offset: 75648)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !969)
!969 = !{!81, !81}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !798, file: !28, line: 718, baseType: !123, size: 32, offset: 75776)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !798, file: !28, line: 719, baseType: !123, size: 32, offset: 75808)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !798, file: !28, line: 722, baseType: !973, size: 4096, offset: 75840)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 4096, elements: !974)
!974 = !{!81, !573, !88}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !798, file: !28, line: 723, baseType: !976, size: 64, offset: 79936)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !87)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !798, file: !28, line: 724, baseType: !979, size: 2048, offset: 80000)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 2048, elements: !974)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !798, file: !28, line: 725, baseType: !981, size: 64, offset: 82048)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 32, elements: !87)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !798, file: !28, line: 728, baseType: !984, size: 144, offset: 82112)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 144, elements: !703)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !798, file: !28, line: 729, baseType: !123, size: 32, offset: 82272)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !798, file: !28, line: 730, baseType: !987, size: 272, offset: 82304)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 272, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 34)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !140, file: !28, line: 735, baseType: !991, size: 64, offset: 213632)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !28, line: 379, baseType: !993)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !28, line: 379, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !140, file: !28, line: 793, baseType: !995, size: 29504, offset: 213696)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !28, line: 738, size: 29504, elements: !996)
!996 = !{!997, !1024, !1028, !1030, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1042, !1044, !1045, !1048, !1050, !1052, !1053, !1054}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !995, file: !28, line: 764, baseType: !998, size: 5632)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !995, file: !28, line: 741, size: 5632, elements: !999)
!999 = !{!1000, !1001, !1002, !1003, !1005, !1006, !1007, !1008, !1009, !1011, !1014, !1016, !1020, !1021, !1023}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !998, file: !28, line: 744, baseType: !123, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !998, file: !28, line: 746, baseType: !123, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !998, file: !28, line: 748, baseType: !123, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !998, file: !28, line: 750, baseType: !1004, size: 608, offset: 96)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 608, elements: !774)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !998, file: !28, line: 751, baseType: !123, size: 32, offset: 704)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !998, file: !28, line: 752, baseType: !123, size: 32, offset: 736)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !998, file: !28, line: 753, baseType: !123, size: 32, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !998, file: !28, line: 754, baseType: !245, size: 64, offset: 800)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !998, file: !28, line: 755, baseType: !1010, size: 2048, offset: 864)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 2048, elements: !862)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !998, file: !28, line: 756, baseType: !1012, size: 544, offset: 2912)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 544, elements: !1013)
!1013 = !{!683}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !998, file: !28, line: 757, baseType: !1015, size: 192, offset: 3456)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 192, elements: !483)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !998, file: !28, line: 758, baseType: !1017, size: 1664, offset: 3648)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 1664, elements: !1018)
!1018 = !{!88, !1019}
!1019 = !DISubrange(count: 13)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !998, file: !28, line: 760, baseType: !245, size: 64, offset: 5312)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !998, file: !28, line: 762, baseType: !1022, size: 192, offset: 5376)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 192, elements: !647)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !998, file: !28, line: 763, baseType: !726, size: 64, offset: 5568)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !995, file: !28, line: 769, baseType: !1025, size: 160, offset: 5632)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 160, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 5)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !995, file: !28, line: 770, baseType: !1029, size: 320, offset: 5824)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 320, elements: !1026)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !995, file: !28, line: 771, baseType: !1031, size: 320, offset: 6144)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 320, elements: !1026)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !995, file: !28, line: 772, baseType: !1012, size: 544, offset: 6464)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !995, file: !28, line: 774, baseType: !1029, size: 320, offset: 7040)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !995, file: !28, line: 775, baseType: !1031, size: 320, offset: 7360)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !995, file: !28, line: 776, baseType: !1031, size: 320, offset: 7680)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !995, file: !28, line: 777, baseType: !1031, size: 320, offset: 8000)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !995, file: !28, line: 778, baseType: !1031, size: 320, offset: 8320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !995, file: !28, line: 779, baseType: !1031, size: 320, offset: 8640)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !995, file: !28, line: 781, baseType: !1040, size: 6080, offset: 8960)
!1040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 6080, elements: !1041)
!1041 = !{!1027, !775}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !995, file: !28, line: 782, baseType: !1043, size: 2176, offset: 15040)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 2176, elements: !682)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !995, file: !28, line: 783, baseType: !764, size: 128, offset: 17216)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !995, file: !28, line: 784, baseType: !1046, size: 8192, offset: 17344)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 8192, elements: !1047)
!1047 = !{!81, !81, !573}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !995, file: !28, line: 785, baseType: !1049, size: 384, offset: 25536)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 384, elements: !483)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !995, file: !28, line: 786, baseType: !1051, size: 3328, offset: 25920)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 3328, elements: !1018)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !995, file: !28, line: 788, baseType: !245, size: 64, offset: 29248)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !995, file: !28, line: 789, baseType: !245, size: 64, offset: 29312)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !995, file: !28, line: 791, baseType: !646, size: 96, offset: 29376)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !140, file: !28, line: 795, baseType: !1056, size: 4096, align: 128, offset: 243200)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 4096, elements: !1057)
!1057 = !{!81, !199}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !140, file: !28, line: 796, baseType: !1059, size: 2048, align: 128, offset: 247296)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 2048, elements: !1057)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !140, file: !28, line: 797, baseType: !113, size: 64, offset: 249344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !140, file: !28, line: 800, baseType: !89, size: 64, offset: 249408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !140, file: !28, line: 801, baseType: !1063, size: 384, offset: 249472)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 384, elements: !1064)
!1064 = !{!81, !574}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !140, file: !28, line: 802, baseType: !1066, size: 128, offset: 249856)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 128, elements: !80)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !1069)
!1069 = !{!81, !88, !88}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !140, file: !28, line: 805, baseType: !1071, size: 448, offset: 249984)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 448, elements: !1077)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1073, line: 27, baseType: !1074)
!1073 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !333}
!1077 = !{!1078}
!1078 = !DISubrange(count: 7)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !140, file: !28, line: 806, baseType: !1071, size: 448, offset: 250432)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !140, file: !28, line: 807, baseType: !1081, size: 768, offset: 250880)
!1081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1082, size: 768, elements: !1086)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1073, line: 28, baseType: !1083)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{null, !333, !333}
!1086 = !{!1087}
!1087 = !DISubrange(count: 12)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !140, file: !28, line: 808, baseType: !1089, size: 768, offset: 251648)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, size: 768, elements: !1086)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !140, file: !28, line: 809, baseType: !1091, size: 64, offset: 252416)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1073, line: 29, baseType: !1092)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !333, !333, !123, !123}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !140, file: !28, line: 811, baseType: !1096, size: 8448, offset: 252480)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1097, line: 110, baseType: !1098)
!1097 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1097, line: 63, size: 8448, elements: !1099)
!1099 = !{!1100, !1106, !1107, !1108, !1109, !1111, !1112, !1113, !1114, !1120, !1126, !1127, !1131, !1136, !1137, !1143, !1147, !1148, !1149, !1150, !1151, !1156, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1098, file: !1097, line: 65, baseType: !1101, size: 448)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 448, elements: !1077)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1097, line: 26, baseType: !1103)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!123, !333, !123, !333, !123}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1098, file: !1097, line: 66, baseType: !1101, size: 448, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1098, file: !1097, line: 67, baseType: !1101, size: 448, offset: 896)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1098, file: !1097, line: 68, baseType: !1101, size: 448, offset: 1344)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1098, file: !1097, line: 69, baseType: !1110, size: 256, offset: 1792)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !87)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1098, file: !1097, line: 70, baseType: !1101, size: 448, offset: 2048)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1098, file: !1097, line: 71, baseType: !1101, size: 448, offset: 2496)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1098, file: !1097, line: 72, baseType: !1101, size: 448, offset: 2944)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1098, file: !1097, line: 73, baseType: !1115, size: 448, offset: 3392)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 448, elements: !1077)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1097, line: 27, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !333, !333, !333, !333, !123, !690}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1098, file: !1097, line: 74, baseType: !1121, size: 448, offset: 3840)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 448, elements: !1077)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1097, line: 28, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !333, !333, !333, !333, !333, !123, !690}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1098, file: !1097, line: 75, baseType: !1101, size: 448, offset: 4288)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1098, file: !1097, line: 76, baseType: !1128, size: 64, offset: 4736)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!123, !333, !123, !333, !123, !690}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1098, file: !1097, line: 78, baseType: !1132, size: 256, offset: 4800)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 256, elements: !87)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!109, !333, !123}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1098, file: !1097, line: 79, baseType: !1132, size: 256, offset: 5056)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1098, file: !1097, line: 81, baseType: !1138, size: 64, offset: 5312)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{null, !481, !123, !481, !123, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !87)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1098, file: !1097, line: 83, baseType: !1144, size: 64, offset: 5376)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!241, !1141, !1141, !123}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1098, file: !1097, line: 86, baseType: !1115, size: 448, offset: 5440)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1098, file: !1097, line: 87, baseType: !1121, size: 448, offset: 5888)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1098, file: !1097, line: 88, baseType: !1115, size: 448, offset: 6336)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1098, file: !1097, line: 89, baseType: !1121, size: 448, offset: 6784)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1098, file: !1097, line: 93, baseType: !1152, size: 448, offset: 7232)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 448, elements: !1077)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!123, !690, !511, !123, !511, !844, !123, !123}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1098, file: !1097, line: 98, baseType: !1157, size: 64, offset: 7680)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{null, !333, !333, !690}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1098, file: !1097, line: 99, baseType: !1157, size: 64, offset: 7744)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1098, file: !1097, line: 100, baseType: !1157, size: 64, offset: 7808)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1098, file: !1097, line: 101, baseType: !1157, size: 64, offset: 7872)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1098, file: !1097, line: 102, baseType: !1157, size: 64, offset: 7936)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1098, file: !1097, line: 103, baseType: !1157, size: 64, offset: 8000)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1098, file: !1097, line: 104, baseType: !1157, size: 64, offset: 8064)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1098, file: !1097, line: 105, baseType: !1157, size: 64, offset: 8128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1098, file: !1097, line: 106, baseType: !1157, size: 64, offset: 8192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1098, file: !1097, line: 107, baseType: !1157, size: 64, offset: 8256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1098, file: !1097, line: 108, baseType: !1157, size: 64, offset: 8320)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1098, file: !1097, line: 109, baseType: !1157, size: 64, offset: 8384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !140, file: !28, line: 812, baseType: !1172, size: 2368, offset: 260928)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !553, line: 111, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 58, size: 2368, elements: !1174)
!1174 = !{!1175, !1182, !1186, !1190, !1197, !1202, !1203, !1207, !1211, !1212, !1216, !1224, !1228, !1232, !1233, !1237, !1241, !1245, !1246, !1247, !1248, !1253}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1173, file: !553, line: 60, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !333, !123, !1179, !123, !123, !123, !123, !123, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1173, file: !553, line: 65, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!333, !333, !690, !1179, !123, !123, !123, !123, !123, !1180}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1173, file: !553, line: 71, baseType: !1187, size: 64, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !333, !123, !333, !123, !123, !123, !123, !123}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1173, file: !553, line: 75, baseType: !1191, size: 640, offset: 192)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1192, size: 640, elements: !1195)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !333, !123, !333, !123, !333, !123, !123}
!1195 = !{!1196}
!1196 = !DISubrange(count: 10)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1173, file: !553, line: 78, baseType: !1198, size: 448, offset: 832)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 448, elements: !1077)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !333, !123, !333, !123, !123}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1173, file: !553, line: 79, baseType: !1199, size: 64, offset: 1280)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1173, file: !553, line: 81, baseType: !1204, size: 64, offset: 1344)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !333, !123, !333, !123, !123, !123}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1173, file: !553, line: 84, baseType: !1208, size: 64, offset: 1408)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !333, !333, !333, !333, !123, !123, !123, !844}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1173, file: !553, line: 88, baseType: !1199, size: 64, offset: 1472)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1173, file: !553, line: 91, baseType: !1213, size: 64, offset: 1536)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !333, !123, !123}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1173, file: !553, line: 93, baseType: !1217, size: 64, offset: 1600)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!89, !89, !1220, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1223, line: 46, baseType: !111)
!1223 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1173, file: !553, line: 94, baseType: !1225, size: 64, offset: 1664)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !89, !123}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1173, file: !553, line: 97, baseType: !1229, size: 64, offset: 1728)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !511, !333, !123}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1173, file: !553, line: 98, baseType: !1229, size: 64, offset: 1792)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1173, file: !553, line: 99, baseType: !1234, size: 64, offset: 1856)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !511, !511, !123}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1173, file: !553, line: 100, baseType: !1238, size: 64, offset: 1920)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !511, !123}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1173, file: !553, line: 102, baseType: !1242, size: 64, offset: 1984)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !333, !333, !333, !333, !333, !123, !123, !123, !123}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1173, file: !553, line: 104, baseType: !565, size: 64, offset: 2048)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1173, file: !553, line: 105, baseType: !565, size: 64, offset: 2112)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1173, file: !553, line: 106, baseType: !565, size: 64, offset: 2176)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1173, file: !553, line: 107, baseType: !1249, size: 64, offset: 2240)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !137, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1173, file: !553, line: 109, baseType: !1254, size: 64, offset: 2304)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !690, !511, !511, !511, !511, !123}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !140, file: !28, line: 813, baseType: !1258, size: 960, offset: 263296)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1259, line: 115, baseType: !1260)
!1259 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1259, line: 89, size: 960, elements: !1261)
!1261 = !{!1262, !1266, !1270, !1275, !1276, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1292, !1296, !1300}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1260, file: !1259, line: 94, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !844, !333, !333}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1260, file: !1259, line: 95, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !333, !844}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1260, file: !1259, line: 97, baseType: !1271, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1274, !333, !333}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1260, file: !1259, line: 98, baseType: !1263, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1260, file: !1259, line: 99, baseType: !1277, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !333, !1274}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1260, file: !1259, line: 100, baseType: !1267, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1260, file: !1259, line: 102, baseType: !1271, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1260, file: !1259, line: 103, baseType: !1277, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1260, file: !1259, line: 104, baseType: !1267, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1260, file: !1259, line: 106, baseType: !1263, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1260, file: !1259, line: 107, baseType: !1267, size: 64, offset: 640)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1260, file: !1259, line: 109, baseType: !1287, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1290, !333, !333}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1024, elements: !198)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1260, file: !1259, line: 110, baseType: !1293, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !333, !1290}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1260, file: !1259, line: 112, baseType: !1297, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{null, !844}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1260, file: !1259, line: 113, baseType: !1297, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !140, file: !28, line: 814, baseType: !1302, size: 384, offset: 264256)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1259, line: 126, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1259, line: 117, size: 384, elements: !1304)
!1304 = !{!1305, !1309, !1310, !1314, !1315, !1319}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1303, file: !1259, line: 119, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !844, !844}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1303, file: !1259, line: 120, baseType: !1306, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1303, file: !1259, line: 121, baseType: !1311, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!123, !844, !481, !333}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1303, file: !1259, line: 122, baseType: !1311, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1303, file: !1259, line: 123, baseType: !1316, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!123, !844, !481, !333, !844}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1303, file: !1259, line: 124, baseType: !1320, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !844, !844, !333}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !140, file: !28, line: 815, baseType: !1324, size: 1408, offset: 264640)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1325, line: 44, baseType: !1326)
!1325 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1325, line: 26, size: 1408, elements: !1327)
!1327 = !{!1328, !1332, !1333, !1337, !1338, !1342, !1346, !1347, !1352, !1356, !1357, !1358, !1360}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1326, file: !1325, line: 28, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!123, !844, !511, !511}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1326, file: !1325, line: 29, baseType: !1329, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1326, file: !1325, line: 30, baseType: !1334, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!123, !844, !123, !123}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1326, file: !1325, line: 31, baseType: !1334, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1326, file: !1325, line: 33, baseType: !1339, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !844, !495, !123}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1326, file: !1325, line: 34, baseType: !1343, size: 64, offset: 320)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !844, !491, !123}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1326, file: !1325, line: 35, baseType: !1343, size: 64, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1326, file: !1325, line: 37, baseType: !1348, size: 64, offset: 448)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !844, !1351, !511, !123}
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1326, file: !1325, line: 39, baseType: !1353, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!123, !844}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1326, file: !1325, line: 40, baseType: !1353, size: 64, offset: 576)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1326, file: !1325, line: 41, baseType: !1353, size: 64, offset: 640)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1326, file: !1325, line: 42, baseType: !1359, size: 384, offset: 704)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 384, elements: !483)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1326, file: !1325, line: 43, baseType: !1361, size: 320, offset: 1088)
!1361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 320, elements: !1026)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!123, !844, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !338, line: 63, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 58, size: 416, elements: !1368)
!1368 = !{!1369, !1370, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1367, file: !338, line: 60, baseType: !123, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1367, file: !338, line: 61, baseType: !786, size: 256, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1367, file: !338, line: 62, baseType: !190, size: 128, offset: 288)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !140, file: !28, line: 816, baseType: !1373, size: 576, offset: 266048)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !615, line: 170, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 161, size: 576, elements: !1375)
!1375 = !{!1376, !1382, !1383, !1389, !1390}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1374, file: !615, line: 163, baseType: !1377, size: 128)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1378, size: 128, elements: !80)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !615, line: 159, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !333, !123, !123, !123, !670}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1374, file: !615, line: 164, baseType: !1377, size: 128, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1374, file: !615, line: 165, baseType: !1384, size: 128, offset: 256)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1385, size: 128, elements: !80)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !615, line: 160, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !333, !123, !123, !123}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1374, file: !615, line: 166, baseType: !1384, size: 128, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1374, file: !615, line: 167, baseType: !1391, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !333, !1394, !1395, !1398, !123, !123}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 1280, elements: !1397)
!1397 = !{!934, !81}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, elements: !1400)
!1400 = !{!88, !88}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !140, file: !28, line: 821, baseType: !1402, size: 64, offset: 266624)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !28, line: 377, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !28, line: 366, size: 960, elements: !1405)
!1405 = !{!1406, !1408, !1409, !1410, !1411, !1412, !1413, !1423, !1424}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1404, file: !28, line: 368, baseType: !1407, size: 8)
!1407 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !84)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1404, file: !28, line: 369, baseType: !84, size: 8, offset: 8)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1404, file: !28, line: 370, baseType: !84, size: 8, offset: 16)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1404, file: !28, line: 371, baseType: !123, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1404, file: !28, line: 372, baseType: !123, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1404, file: !28, line: 373, baseType: !613, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1404, file: !28, line: 374, baseType: !1414, size: 256, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !615, line: 157, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !615, line: 149, size: 256, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1415, file: !615, line: 151, baseType: !612, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1415, file: !615, line: 152, baseType: !123, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1415, file: !615, line: 153, baseType: !123, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1415, file: !615, line: 154, baseType: !123, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1415, file: !615, line: 155, baseType: !123, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1415, file: !615, line: 156, baseType: !123, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1404, file: !28, line: 375, baseType: !1414, size: 256, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1404, file: !28, line: 376, baseType: !1414, size: 256, offset: 704)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1426 = !DILocalVariable(name: "h", arg: 1, scope: !133, file: !134, line: 27, type: !137)
!1427 = !DILocalVariable(name: "i_list", arg: 2, scope: !133, file: !134, line: 27, type: !123)
!1428 = !DILocalVariable(name: "idx", arg: 3, scope: !133, file: !134, line: 27, type: !123)
!1429 = !DILocalVariable(name: "i_width", arg: 4, scope: !133, file: !134, line: 27, type: !123)
!1430 = !DILocalVariable(name: "mvp", arg: 5, scope: !133, file: !134, line: 27, type: !844)
!1431 = !DILocalVariable(name: "i8", scope: !133, file: !134, line: 29, type: !122)
!1432 = !DILocalVariable(name: "i_ref", scope: !133, file: !134, line: 30, type: !122)
!1433 = !DILocalVariable(name: "i_refa", scope: !133, file: !134, line: 31, type: !123)
!1434 = !DILocalVariable(name: "mv_a", scope: !133, file: !134, line: 32, type: !844)
!1435 = !DILocalVariable(name: "i_refb", scope: !133, file: !134, line: 33, type: !123)
!1436 = !DILocalVariable(name: "mv_b", scope: !133, file: !134, line: 34, type: !844)
!1437 = !DILocalVariable(name: "i_refc", scope: !133, file: !134, line: 35, type: !123)
!1438 = !DILocalVariable(name: "mv_c", scope: !133, file: !134, line: 36, type: !844)
!1439 = !DILocalVariable(name: "i_count", scope: !133, file: !134, line: 83, type: !123)
!1440 = !DILabel(scope: !1441, name: "median", file: !134, line: 87)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !134, line: 86, column: 5)
!1442 = distinct !DILexicalBlock(scope: !133, file: !134, line: 85, column: 9)
!1443 = !DILocation(line: 0, scope: !133)
!1444 = !DILocation(line: 29, column: 20, scope: !133)
!1445 = !{!1446, !1446, i64 0}
!1446 = !{!"int", !1447, i64 0}
!1447 = !{!"omnipotent char", !1448, i64 0}
!1448 = !{!"Simple C/C++ TBAA"}
!1449 = !DILocation(line: 30, column: 22, scope: !133)
!1450 = !{!1447, !1447, i64 0}
!1451 = !DILocation(line: 31, column: 49, scope: !133)
!1452 = !DILocation(line: 31, column: 22, scope: !133)
!1453 = !DILocation(line: 32, column: 22, scope: !133)
!1454 = !DILocation(line: 33, column: 49, scope: !133)
!1455 = !DILocation(line: 33, column: 22, scope: !133)
!1456 = !DILocation(line: 34, column: 22, scope: !133)
!1457 = !DILocation(line: 35, column: 53, scope: !133)
!1458 = !DILocation(line: 35, column: 22, scope: !133)
!1459 = !DILocation(line: 38, column: 13, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !133, file: !134, line: 38, column: 9)
!1461 = !DILocation(line: 38, column: 32, scope: !1460)
!1462 = !DILocation(line: 38, column: 22, scope: !1460)
!1463 = !DILocation(line: 38, column: 17, scope: !1460)
!1464 = !DILocation(line: 38, column: 36, scope: !1460)
!1465 = !DILocation(line: 40, column: 49, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !134, line: 39, column: 5)
!1467 = !DILocation(line: 40, column: 18, scope: !1466)
!1468 = !DILocation(line: 42, column: 5, scope: !1466)
!1469 = !DILocation(line: 44, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !133, file: !134, line: 44, column: 9)
!1471 = !{!1472, !1446, i64 17388}
!1472 = !{!"x264_t", !1473, i64 0, !1447, i64 704, !1446, i64 1736, !1446, i64 1740, !1446, i64 1744, !1446, i64 1748, !1446, i64 1752, !1479, i64 1760, !1475, i64 1832, !1446, i64 1840, !1446, i64 1844, !1446, i64 1848, !1446, i64 1852, !1446, i64 1856, !1446, i64 1860, !1446, i64 1864, !1446, i64 1868, !1446, i64 1872, !1446, i64 1876, !1446, i64 1880, !1446, i64 1884, !1446, i64 1888, !1446, i64 1892, !1447, i64 1896, !1475, i64 3200, !1447, i64 3208, !1475, i64 3328, !1446, i64 3336, !1446, i64 3340, !1447, i64 3344, !1447, i64 3376, !1447, i64 3392, !1447, i64 3424, !1447, i64 3440, !1447, i64 3472, !1447, i64 3488, !1447, i64 3520, !1447, i64 3536, !1447, i64 4272, !1475, i64 7216, !1482, i64 7232, !1483, i64 13904, !1484, i64 14416, !1475, i64 14680, !1475, i64 14688, !1446, i64 14696, !1447, i64 14704, !1446, i64 14856, !1447, i64 14864, !1447, i64 15016, !1446, i64 15024, !1446, i64 15028, !1481, i64 15032, !1485, i64 15040, !1486, i64 16368, !1475, i64 26704, !1489, i64 26712, !1447, i64 30400, !1447, i64 30912, !1447, i64 31168, !1475, i64 31176, !1447, i64 31184, !1447, i64 31232, !1447, i64 31248, !1447, i64 31304, !1447, i64 31360, !1447, i64 31456, !1475, i64 31552, !1492, i64 31560, !1493, i64 32616, !1494, i64 32912, !1495, i64 33032, !1496, i64 33080, !1497, i64 33256, !1475, i64 33328}
!1473 = !{!"x264_param_t", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1474, i64 44, !1446, i64 80, !1446, i64 84, !1446, i64 88, !1446, i64 92, !1446, i64 96, !1446, i64 100, !1446, i64 104, !1446, i64 108, !1446, i64 112, !1446, i64 116, !1446, i64 120, !1446, i64 124, !1446, i64 128, !1446, i64 132, !1446, i64 136, !1446, i64 140, !1446, i64 144, !1475, i64 152, !1447, i64 160, !1447, i64 176, !1447, i64 192, !1447, i64 208, !1447, i64 224, !1447, i64 288, !1475, i64 352, !1475, i64 360, !1446, i64 368, !1446, i64 372, !1475, i64 376, !1476, i64 384, !1478, i64 488, !1446, i64 632, !1446, i64 636, !1446, i64 640, !1446, i64 644, !1446, i64 648, !1446, i64 652, !1446, i64 656, !1446, i64 660, !1446, i64 664, !1446, i64 668, !1446, i64 672, !1446, i64 676, !1446, i64 680, !1446, i64 684, !1446, i64 688, !1446, i64 692, !1475, i64 696}
!1474 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32}
!1475 = !{!"any pointer", !1447, i64 0}
!1476 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1446, i64 48, !1446, i64 52, !1446, i64 56, !1446, i64 60, !1446, i64 64, !1446, i64 68, !1477, i64 72, !1477, i64 76, !1446, i64 80, !1447, i64 84, !1446, i64 92, !1446, i64 96}
!1477 = !{!"float", !1447, i64 0}
!1478 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1477, i64 24, !1477, i64 28, !1477, i64 32, !1446, i64 36, !1446, i64 40, !1477, i64 44, !1477, i64 48, !1477, i64 52, !1446, i64 56, !1477, i64 60, !1446, i64 64, !1446, i64 68, !1446, i64 72, !1475, i64 80, !1446, i64 88, !1475, i64 96, !1477, i64 104, !1477, i64 108, !1477, i64 112, !1475, i64 120, !1446, i64 128, !1475, i64 136}
!1479 = !{!"", !1446, i64 0, !1446, i64 4, !1475, i64 8, !1446, i64 16, !1475, i64 24, !1480, i64 32}
!1480 = !{!"bs_s", !1475, i64 0, !1475, i64 8, !1475, i64 16, !1481, i64 24, !1446, i64 32, !1446, i64 36}
!1481 = !{!"long", !1447, i64 0}
!1482 = !{!"", !1475, i64 0, !1475, i64 8, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1446, i64 48, !1446, i64 52, !1446, i64 56, !1447, i64 60, !1446, i64 68, !1446, i64 72, !1446, i64 76, !1446, i64 80, !1446, i64 84, !1446, i64 88, !1446, i64 92, !1447, i64 96, !1447, i64 352, !1446, i64 6496, !1446, i64 6500, !1447, i64 6504, !1446, i64 6632, !1446, i64 6636, !1446, i64 6640, !1446, i64 6644, !1446, i64 6648, !1446, i64 6652, !1446, i64 6656, !1446, i64 6660}
!1483 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1475, i64 16, !1475, i64 24, !1475, i64 32, !1446, i64 48, !1447, i64 52}
!1484 = !{!"", !1475, i64 0, !1447, i64 8, !1475, i64 24, !1447, i64 32, !1446, i64 176, !1446, i64 180, !1446, i64 184, !1446, i64 188, !1446, i64 192, !1446, i64 196, !1446, i64 200, !1481, i64 208, !1481, i64 216, !1447, i64 224, !1481, i64 240, !1481, i64 248, !1446, i64 256, !1446, i64 260}
!1485 = !{!"", !1447, i64 0, !1447, i64 32, !1447, i64 48, !1447, i64 560}
!1486 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1446, i64 48, !1446, i64 52, !1446, i64 56, !1446, i64 60, !1446, i64 64, !1446, i64 68, !1447, i64 72, !1447, i64 80, !1447, i64 88, !1447, i64 96, !1447, i64 104, !1447, i64 112, !1446, i64 120, !1447, i64 124, !1447, i64 140, !1446, i64 204, !1446, i64 208, !1446, i64 212, !1446, i64 216, !1446, i64 220, !1446, i64 224, !1446, i64 228, !1446, i64 232, !1446, i64 236, !1446, i64 240, !1446, i64 244, !1475, i64 248, !1475, i64 256, !1475, i64 264, !1475, i64 272, !1475, i64 280, !1475, i64 288, !1475, i64 296, !1447, i64 304, !1447, i64 320, !1447, i64 336, !1447, i64 352, !1475, i64 864, !1475, i64 872, !1475, i64 880, !1447, i64 888, !1446, i64 1016, !1446, i64 1020, !1447, i64 1024, !1446, i64 1028, !1446, i64 1032, !1446, i64 1036, !1446, i64 1040, !1446, i64 1044, !1446, i64 1048, !1446, i64 1052, !1446, i64 1056, !1446, i64 1060, !1487, i64 1072, !1488, i64 8656, !1446, i64 9424, !1446, i64 9428, !1446, i64 9432, !1446, i64 9436, !1446, i64 9440, !1446, i64 9444, !1446, i64 9448, !1446, i64 9452, !1447, i64 9456, !1446, i64 9472, !1446, i64 9476, !1447, i64 9480, !1475, i64 9992, !1447, i64 10000, !1475, i64 10256, !1447, i64 10264, !1446, i64 10284, !1447, i64 10288}
!1487 = !{!"", !1447, i64 0, !1447, i64 384, !1447, i64 1248, !1447, i64 1504, !1447, i64 1760, !1447, i64 2144, !1447, i64 2624, !1447, i64 2640, !1446, i64 2656, !1446, i64 2660, !1447, i64 2672, !1447, i64 3184, !1447, i64 3696, !1447, i64 3776, !1447, i64 3904, !1447, i64 3928, !1447, i64 3952, !1447, i64 3976, !1447, i64 3984, !1447, i64 7056, !1447, i64 7312, !1447, i64 7568}
!1488 = !{!"", !1447, i64 0, !1447, i64 48, !1447, i64 96, !1447, i64 176, !1447, i64 496, !1447, i64 656, !1447, i64 696, !1447, i64 728, !1446, i64 736, !1447, i64 740, !1446, i64 744, !1446, i64 748, !1446, i64 752, !1446, i64 756}
!1489 = !{!"", !1490, i64 0, !1447, i64 704, !1447, i64 728, !1447, i64 768, !1447, i64 808, !1447, i64 880, !1447, i64 920, !1447, i64 960, !1447, i64 1000, !1447, i64 1040, !1447, i64 1080, !1447, i64 1120, !1447, i64 1880, !1447, i64 2152, !1447, i64 2168, !1447, i64 3192, !1447, i64 3240, !1447, i64 3656, !1447, i64 3664, !1447, i64 3672}
!1490 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1447, i64 12, !1446, i64 88, !1446, i64 92, !1446, i64 96, !1447, i64 100, !1447, i64 108, !1447, i64 364, !1447, i64 432, !1447, i64 456, !1447, i64 664, !1447, i64 672, !1491, i64 696}
!1491 = !{!"double", !1447, i64 0}
!1492 = !{!"", !1447, i64 0, !1447, i64 56, !1447, i64 112, !1447, i64 168, !1447, i64 224, !1447, i64 256, !1447, i64 312, !1447, i64 368, !1447, i64 424, !1447, i64 480, !1447, i64 536, !1475, i64 592, !1447, i64 600, !1447, i64 632, !1475, i64 664, !1475, i64 672, !1447, i64 680, !1447, i64 736, !1447, i64 792, !1447, i64 848, !1447, i64 904, !1475, i64 960, !1475, i64 968, !1475, i64 976, !1475, i64 984, !1475, i64 992, !1475, i64 1000, !1475, i64 1008, !1475, i64 1016, !1475, i64 1024, !1475, i64 1032, !1475, i64 1040, !1475, i64 1048}
!1493 = !{!"", !1475, i64 0, !1475, i64 8, !1475, i64 16, !1447, i64 24, !1447, i64 104, !1475, i64 160, !1475, i64 168, !1475, i64 176, !1475, i64 184, !1475, i64 192, !1475, i64 200, !1475, i64 208, !1475, i64 216, !1475, i64 224, !1475, i64 232, !1475, i64 240, !1475, i64 248, !1475, i64 256, !1475, i64 264, !1475, i64 272, !1475, i64 280, !1475, i64 288}
!1494 = !{!"", !1475, i64 0, !1475, i64 8, !1475, i64 16, !1475, i64 24, !1475, i64 32, !1475, i64 40, !1475, i64 48, !1475, i64 56, !1475, i64 64, !1475, i64 72, !1475, i64 80, !1475, i64 88, !1475, i64 96, !1475, i64 104, !1475, i64 112}
!1495 = !{!"", !1475, i64 0, !1475, i64 8, !1475, i64 16, !1475, i64 24, !1475, i64 32, !1475, i64 40}
!1496 = !{!"", !1475, i64 0, !1475, i64 8, !1475, i64 16, !1475, i64 24, !1475, i64 32, !1475, i64 40, !1475, i64 48, !1475, i64 56, !1475, i64 64, !1475, i64 72, !1475, i64 80, !1447, i64 88, !1447, i64 136}
!1497 = !{!"", !1447, i64 0, !1447, i64 16, !1447, i64 32, !1447, i64 48, !1475, i64 64}
!1498 = !DILocation(line: 44, column: 9, scope: !133)
!1499 = !DILocation(line: 46, column: 17, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !134, line: 46, column: 13)
!1501 = distinct !DILexicalBlock(scope: !1470, file: !134, line: 45, column: 5)
!1502 = !DILocation(line: 46, column: 13, scope: !1501)
!1503 = !DILocation(line: 48, column: 24, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !134, line: 48, column: 17)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !134, line: 47, column: 9)
!1506 = !DILocation(line: 48, column: 17, scope: !1505)
!1507 = !DILocation(line: 50, column: 17, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !134, line: 49, column: 13)
!1509 = !DILocation(line: 51, column: 17, scope: !1508)
!1510 = !DILocation(line: 56, column: 24, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !134, line: 56, column: 17)
!1512 = distinct !DILexicalBlock(scope: !1500, file: !134, line: 55, column: 9)
!1513 = !DILocation(line: 56, column: 17, scope: !1512)
!1514 = !DILocation(line: 58, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !134, line: 57, column: 13)
!1516 = !DILocation(line: 59, column: 17, scope: !1515)
!1517 = !DILocation(line: 65, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !134, line: 65, column: 13)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !134, line: 64, column: 5)
!1520 = distinct !DILexicalBlock(scope: !1470, file: !134, line: 63, column: 14)
!1521 = !DILocation(line: 65, column: 13, scope: !1519)
!1522 = !DILocation(line: 67, column: 24, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !134, line: 67, column: 17)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !134, line: 66, column: 9)
!1525 = !DILocation(line: 67, column: 17, scope: !1524)
!1526 = !DILocation(line: 69, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !134, line: 68, column: 13)
!1528 = !DILocation(line: 70, column: 17, scope: !1527)
!1529 = !DILocation(line: 75, column: 24, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !134, line: 75, column: 17)
!1531 = distinct !DILexicalBlock(scope: !1518, file: !134, line: 74, column: 9)
!1532 = !DILocation(line: 75, column: 17, scope: !1531)
!1533 = !DILocation(line: 77, column: 17, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !134, line: 76, column: 13)
!1535 = !DILocation(line: 78, column: 17, scope: !1534)
!1536 = !DILocation(line: 83, column: 27, scope: !133)
!1537 = !DILocation(line: 83, column: 47, scope: !133)
!1538 = !DILocation(line: 83, column: 37, scope: !133)
!1539 = !DILocation(line: 83, column: 67, scope: !133)
!1540 = !DILocation(line: 83, column: 57, scope: !133)
!1541 = !DILocation(line: 85, column: 17, scope: !1442)
!1542 = !DILocation(line: 85, column: 9, scope: !133)
!1543 = !DILocation(line: 87, column: 1, scope: !1441)
!1544 = !DILocalVariable(name: "dst", arg: 1, scope: !1545, file: !28, line: 220, type: !844)
!1545 = distinct !DISubprogram(name: "x264_median_mv", scope: !28, file: !28, line: 220, type: !1546, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !844, !844, !844, !844}
!1548 = !{!1544, !1549, !1550, !1551}
!1549 = !DILocalVariable(name: "a", arg: 2, scope: !1545, file: !28, line: 220, type: !844)
!1550 = !DILocalVariable(name: "b", arg: 3, scope: !1545, file: !28, line: 220, type: !844)
!1551 = !DILocalVariable(name: "c", arg: 4, scope: !1545, file: !28, line: 220, type: !844)
!1552 = !DILocation(line: 0, scope: !1545, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 88, column: 9, scope: !1441)
!1554 = !DILocation(line: 222, column: 27, scope: !1545, inlinedAt: !1553)
!1555 = !{!1556, !1556, i64 0}
!1556 = !{!"short", !1447, i64 0}
!1557 = !DILocation(line: 222, column: 33, scope: !1545, inlinedAt: !1553)
!1558 = !DILocation(line: 222, column: 39, scope: !1545, inlinedAt: !1553)
!1559 = !DILocalVariable(name: "a", arg: 1, scope: !1560, file: !28, line: 210, type: !123)
!1560 = distinct !DISubprogram(name: "x264_median", scope: !28, file: !28, line: 210, type: !1561, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!123, !123, !123, !123}
!1563 = !{!1559, !1564, !1565, !1566}
!1564 = !DILocalVariable(name: "b", arg: 2, scope: !1560, file: !28, line: 210, type: !123)
!1565 = !DILocalVariable(name: "c", arg: 3, scope: !1560, file: !28, line: 210, type: !123)
!1566 = !DILocalVariable(name: "t", scope: !1560, file: !28, line: 212, type: !123)
!1567 = !DILocation(line: 0, scope: !1560, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1553)
!1569 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1568)
!1570 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1568)
!1571 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1568)
!1572 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1568)
!1573 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1568)
!1574 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1568)
!1575 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1568)
!1576 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1568)
!1577 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1568)
!1578 = !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1553)
!1579 = !DILocation(line: 222, column: 12, scope: !1545, inlinedAt: !1553)
!1580 = !DILocation(line: 223, column: 27, scope: !1545, inlinedAt: !1553)
!1581 = !DILocation(line: 223, column: 33, scope: !1545, inlinedAt: !1553)
!1582 = !DILocation(line: 223, column: 39, scope: !1545, inlinedAt: !1553)
!1583 = !DILocation(line: 0, scope: !1560, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1553)
!1585 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1584)
!1586 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1584)
!1587 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1584)
!1588 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1584)
!1589 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1584)
!1590 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1584)
!1591 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1584)
!1592 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1584)
!1593 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1584)
!1594 = !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1553)
!1595 = !DILocation(line: 223, column: 5, scope: !1545, inlinedAt: !1553)
!1596 = !DILocation(line: 223, column: 12, scope: !1545, inlinedAt: !1553)
!1597 = !DILocation(line: 89, column: 5, scope: !1441)
!1598 = !DILocation(line: 90, column: 22, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1442, file: !134, line: 90, column: 14)
!1600 = !DILocation(line: 90, column: 14, scope: !1442)
!1601 = !DILocation(line: 92, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 91, column: 5)
!1603 = !DILocation(line: 93, column: 13, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1602, file: !134, line: 92, column: 13)
!1605 = !DILocation(line: 94, column: 18, scope: !1604)
!1606 = !DILocation(line: 95, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !134, line: 94, column: 18)
!1608 = !DILocation(line: 97, column: 13, scope: !1607)
!1609 = !DILocation(line: 99, column: 21, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1599, file: !134, line: 99, column: 14)
!1611 = !DILocation(line: 99, column: 27, scope: !1610)
!1612 = !DILocation(line: 100, column: 9, scope: !1610)
!1613 = !DILocation(line: 103, column: 1, scope: !133)
!1614 = distinct !DISubprogram(name: "x264_mb_predict_mv_16x16", scope: !134, file: !134, line: 105, type: !1615, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !137, !123, !123, !844}
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1618 = !DILocalVariable(name: "h", arg: 1, scope: !1614, file: !134, line: 105, type: !137)
!1619 = !DILocalVariable(name: "i_list", arg: 2, scope: !1614, file: !134, line: 105, type: !123)
!1620 = !DILocalVariable(name: "i_ref", arg: 3, scope: !1614, file: !134, line: 105, type: !123)
!1621 = !DILocalVariable(name: "mvp", arg: 4, scope: !1614, file: !134, line: 105, type: !844)
!1622 = !DILocalVariable(name: "i_refa", scope: !1614, file: !134, line: 107, type: !123)
!1623 = !DILocalVariable(name: "mv_a", scope: !1614, file: !134, line: 108, type: !844)
!1624 = !DILocalVariable(name: "i_refb", scope: !1614, file: !134, line: 109, type: !123)
!1625 = !DILocalVariable(name: "mv_b", scope: !1614, file: !134, line: 110, type: !844)
!1626 = !DILocalVariable(name: "i_refc", scope: !1614, file: !134, line: 111, type: !123)
!1627 = !DILocalVariable(name: "mv_c", scope: !1614, file: !134, line: 112, type: !844)
!1628 = !DILocalVariable(name: "i_count", scope: !1614, file: !134, line: 119, type: !123)
!1629 = !DILabel(scope: !1630, name: "median", file: !134, line: 123)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !134, line: 122, column: 5)
!1631 = distinct !DILexicalBlock(scope: !1614, file: !134, line: 121, column: 9)
!1632 = !DILocation(line: 0, scope: !1614)
!1633 = !DILocation(line: 107, column: 22, scope: !1614)
!1634 = !DILocation(line: 108, column: 22, scope: !1614)
!1635 = !DILocation(line: 109, column: 22, scope: !1614)
!1636 = !DILocation(line: 110, column: 22, scope: !1614)
!1637 = !DILocation(line: 111, column: 22, scope: !1614)
!1638 = !DILocation(line: 112, column: 22, scope: !1614)
!1639 = !DILocation(line: 113, column: 16, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1614, file: !134, line: 113, column: 9)
!1641 = !DILocation(line: 113, column: 9, scope: !1614)
!1642 = !DILocation(line: 115, column: 18, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !134, line: 114, column: 5)
!1644 = !DILocation(line: 116, column: 18, scope: !1643)
!1645 = !DILocation(line: 117, column: 5, scope: !1643)
!1646 = !DILocation(line: 119, column: 27, scope: !1614)
!1647 = !DILocation(line: 119, column: 47, scope: !1614)
!1648 = !DILocation(line: 119, column: 37, scope: !1614)
!1649 = !DILocation(line: 119, column: 67, scope: !1614)
!1650 = !DILocation(line: 119, column: 57, scope: !1614)
!1651 = !DILocation(line: 121, column: 17, scope: !1631)
!1652 = !DILocation(line: 121, column: 9, scope: !1614)
!1653 = !DILocation(line: 123, column: 1, scope: !1630)
!1654 = !DILocation(line: 0, scope: !1545, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 124, column: 9, scope: !1630)
!1656 = !DILocation(line: 222, column: 27, scope: !1545, inlinedAt: !1655)
!1657 = !DILocation(line: 222, column: 33, scope: !1545, inlinedAt: !1655)
!1658 = !DILocation(line: 222, column: 39, scope: !1545, inlinedAt: !1655)
!1659 = !DILocation(line: 0, scope: !1560, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1655)
!1661 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1660)
!1662 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1660)
!1663 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1660)
!1664 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1660)
!1665 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1660)
!1666 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1660)
!1667 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1660)
!1668 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1660)
!1669 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1660)
!1670 = !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1655)
!1671 = !DILocation(line: 222, column: 12, scope: !1545, inlinedAt: !1655)
!1672 = !DILocation(line: 223, column: 27, scope: !1545, inlinedAt: !1655)
!1673 = !DILocation(line: 223, column: 33, scope: !1545, inlinedAt: !1655)
!1674 = !DILocation(line: 223, column: 39, scope: !1545, inlinedAt: !1655)
!1675 = !DILocation(line: 0, scope: !1560, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1655)
!1677 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1676)
!1678 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1676)
!1679 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1676)
!1680 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1676)
!1681 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1676)
!1682 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1676)
!1683 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1676)
!1684 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1676)
!1685 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1676)
!1686 = !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1655)
!1687 = !DILocation(line: 223, column: 5, scope: !1545, inlinedAt: !1655)
!1688 = !DILocation(line: 223, column: 12, scope: !1545, inlinedAt: !1655)
!1689 = !DILocation(line: 125, column: 5, scope: !1630)
!1690 = !DILocation(line: 126, column: 22, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1631, file: !134, line: 126, column: 14)
!1692 = !DILocation(line: 126, column: 14, scope: !1631)
!1693 = !DILocation(line: 128, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !134, line: 127, column: 5)
!1695 = !DILocation(line: 129, column: 13, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1694, file: !134, line: 128, column: 13)
!1697 = !DILocation(line: 130, column: 18, scope: !1696)
!1698 = !DILocation(line: 131, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1696, file: !134, line: 130, column: 18)
!1700 = !DILocation(line: 133, column: 13, scope: !1699)
!1701 = !DILocation(line: 135, column: 21, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1691, file: !134, line: 135, column: 14)
!1703 = !DILocation(line: 135, column: 27, scope: !1702)
!1704 = !DILocation(line: 136, column: 9, scope: !1702)
!1705 = !DILocation(line: 139, column: 1, scope: !1614)
!1706 = distinct !DISubprogram(name: "x264_mb_predict_mv_pskip", scope: !134, file: !134, line: 142, type: !1707, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !137, !844}
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715}
!1710 = !DILocalVariable(name: "h", arg: 1, scope: !1706, file: !134, line: 142, type: !137)
!1711 = !DILocalVariable(name: "mv", arg: 2, scope: !1706, file: !134, line: 142, type: !844)
!1712 = !DILocalVariable(name: "i_refa", scope: !1706, file: !134, line: 144, type: !123)
!1713 = !DILocalVariable(name: "i_refb", scope: !1706, file: !134, line: 145, type: !123)
!1714 = !DILocalVariable(name: "mv_a", scope: !1706, file: !134, line: 146, type: !844)
!1715 = !DILocalVariable(name: "mv_b", scope: !1706, file: !134, line: 147, type: !844)
!1716 = !DILocation(line: 0, scope: !1706)
!1717 = !DILocation(line: 144, column: 34, scope: !1706)
!1718 = !DILocation(line: 144, column: 22, scope: !1706)
!1719 = !DILocation(line: 145, column: 22, scope: !1706)
!1720 = !DILocation(line: 146, column: 34, scope: !1706)
!1721 = !DILocation(line: 147, column: 22, scope: !1706)
!1722 = !DILocation(line: 149, column: 16, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1706, file: !134, line: 149, column: 9)
!1724 = !DILocation(line: 149, column: 22, scope: !1723)
!1725 = !DILocation(line: 146, column: 22, scope: !1706)
!1726 = !DILocation(line: 150, column: 21, scope: !1723)
!1727 = !DILocation(line: 150, column: 19, scope: !1723)
!1728 = !DILocation(line: 150, column: 35, scope: !1723)
!1729 = !DILocation(line: 151, column: 21, scope: !1723)
!1730 = !DILocation(line: 151, column: 19, scope: !1723)
!1731 = !DILocation(line: 149, column: 9, scope: !1706)
!1732 = !DILocation(line: 153, column: 19, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1723, file: !134, line: 152, column: 5)
!1734 = !DILocation(line: 154, column: 5, scope: !1733)
!1735 = !DILocation(line: 156, column: 9, scope: !1723)
!1736 = !DILocation(line: 157, column: 1, scope: !1706)
!1737 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16", scope: !134, file: !134, line: 332, type: !1738, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!123, !137, !690}
!1740 = !{!1741, !1742, !1743, !1744, !1747}
!1741 = !DILocalVariable(name: "h", arg: 1, scope: !1737, file: !134, line: 332, type: !137)
!1742 = !DILocalVariable(name: "b_changed", arg: 2, scope: !1737, file: !134, line: 332, type: !690)
!1743 = !DILocalVariable(name: "b_available", scope: !1737, file: !134, line: 334, type: !123)
!1744 = !DILocalVariable(name: "changed", scope: !1745, file: !134, line: 344, type: !123)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !134, line: 343, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1737, file: !134, line: 342, column: 9)
!1747 = !DILocalVariable(name: "l", scope: !1748, file: !134, line: 375, type: !123)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !134, line: 375, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1737, file: !134, line: 374, column: 9)
!1750 = !DILocation(line: 0, scope: !1737)
!1751 = !DILocation(line: 335, column: 26, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1737, file: !134, line: 335, column: 9)
!1753 = !{!1472, !1446, i64 404}
!1754 = !DILocation(line: 335, column: 43, scope: !1752)
!1755 = !DILocation(line: 335, column: 9, scope: !1737)
!1756 = !DILocation(line: 337, column: 20, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !134, line: 337, column: 14)
!1758 = !{!1472, !1446, i64 7304}
!1759 = !DILocation(line: 337, column: 14, scope: !1757)
!1760 = !DILocation(line: 337, column: 14, scope: !1752)
!1761 = !DILocalVariable(name: "h", arg: 1, scope: !1762, file: !134, line: 220, type: !137)
!1762 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16_spatial", scope: !134, file: !134, line: 220, type: !1763, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1765)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!123, !137}
!1765 = !{!1761, !1766, !1768, !1770, !1773, !1774, !1776, !1777, !1778, !1780, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1792, !1793, !1794, !1795, !1796, !1798, !1801, !1802, !1803, !1804}
!1766 = !DILocalVariable(name: "ref", scope: !1762, file: !134, line: 222, type: !1767)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 16, elements: !80)
!1768 = !DILocalVariable(name: "mv", scope: !1762, file: !134, line: 223, type: !1769, align: 64)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !969)
!1770 = !DILocalVariable(name: "l1ref0", scope: !1762, file: !134, line: 224, type: !1771)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!1773 = !DILocalVariable(name: "l1ref1", scope: !1762, file: !134, line: 225, type: !1771)
!1774 = !DILocalVariable(name: "l1mv", scope: !1762, file: !134, line: 226, type: !1775)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !80)
!1776 = !DILocalVariable(name: "type_col", scope: !1762, file: !134, line: 228, type: !122)
!1777 = !DILocalVariable(name: "partition_col", scope: !1762, file: !134, line: 229, type: !122)
!1778 = !DILocalVariable(name: "i_list", scope: !1779, file: !134, line: 233, type: !123)
!1779 = distinct !DILexicalBlock(scope: !1762, file: !134, line: 233, column: 5)
!1780 = !DILocalVariable(name: "i_refa", scope: !1781, file: !134, line: 235, type: !123)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !134, line: 234, column: 5)
!1782 = distinct !DILexicalBlock(scope: !1779, file: !134, line: 233, column: 5)
!1783 = !DILocalVariable(name: "mv_a", scope: !1781, file: !134, line: 236, type: !844)
!1784 = !DILocalVariable(name: "i_refb", scope: !1781, file: !134, line: 237, type: !123)
!1785 = !DILocalVariable(name: "mv_b", scope: !1781, file: !134, line: 238, type: !844)
!1786 = !DILocalVariable(name: "i_refc", scope: !1781, file: !134, line: 239, type: !123)
!1787 = !DILocalVariable(name: "mv_c", scope: !1781, file: !134, line: 240, type: !844)
!1788 = !DILocalVariable(name: "i_ref", scope: !1781, file: !134, line: 247, type: !123)
!1789 = !DILocalVariable(name: "i_count", scope: !1790, file: !134, line: 257, type: !123)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !134, line: 254, column: 9)
!1791 = distinct !DILexicalBlock(scope: !1781, file: !134, line: 248, column: 13)
!1792 = !DILocalVariable(name: "max_i8", scope: !1762, file: !134, line: 302, type: !123)
!1793 = !DILocalVariable(name: "step", scope: !1762, file: !134, line: 303, type: !123)
!1794 = !DILocalVariable(name: "width", scope: !1762, file: !134, line: 304, type: !123)
!1795 = !DILocalVariable(name: "height", scope: !1762, file: !134, line: 305, type: !123)
!1796 = !DILocalVariable(name: "i8", scope: !1797, file: !134, line: 308, type: !123)
!1797 = distinct !DILexicalBlock(scope: !1762, file: !134, line: 308, column: 5)
!1798 = !DILocalVariable(name: "x8", scope: !1799, file: !134, line: 310, type: !122)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !134, line: 309, column: 5)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !134, line: 308, column: 5)
!1801 = !DILocalVariable(name: "y8", scope: !1799, file: !134, line: 311, type: !122)
!1802 = !DILocalVariable(name: "o8", scope: !1799, file: !134, line: 312, type: !122)
!1803 = !DILocalVariable(name: "o4", scope: !1799, file: !134, line: 313, type: !122)
!1804 = !DILocalVariable(name: "idx", scope: !1799, file: !134, line: 314, type: !123)
!1805 = !DILocation(line: 0, scope: !1762, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 338, column: 23, scope: !1757)
!1807 = !DILocation(line: 222, column: 5, scope: !1762, inlinedAt: !1806)
!1808 = !DILocation(line: 222, column: 12, scope: !1762, inlinedAt: !1806)
!1809 = !DILocation(line: 223, column: 5, scope: !1762, inlinedAt: !1806)
!1810 = !DILocation(line: 224, column: 32, scope: !1762, inlinedAt: !1806)
!1811 = !DILocation(line: 224, column: 29, scope: !1762, inlinedAt: !1806)
!1812 = !{!1475, !1475, i64 0}
!1813 = !DILocation(line: 224, column: 42, scope: !1762, inlinedAt: !1806)
!1814 = !DILocation(line: 224, column: 55, scope: !1762, inlinedAt: !1806)
!1815 = !{!1472, !1446, i64 16396}
!1816 = !DILocation(line: 225, column: 29, scope: !1762, inlinedAt: !1806)
!1817 = !DILocation(line: 226, column: 5, scope: !1762, inlinedAt: !1806)
!1818 = !DILocation(line: 226, column: 21, scope: !1762, inlinedAt: !1806)
!1819 = !DILocation(line: 226, column: 74, scope: !1762, inlinedAt: !1806)
!1820 = !DILocation(line: 226, column: 61, scope: !1762, inlinedAt: !1806)
!1821 = !DILocation(line: 226, column: 86, scope: !1762, inlinedAt: !1806)
!1822 = !{!1472, !1446, i64 16400}
!1823 = !DILocation(line: 226, column: 35, scope: !1762, inlinedAt: !1806)
!1824 = !DILocation(line: 227, column: 61, scope: !1762, inlinedAt: !1806)
!1825 = !DILocation(line: 228, column: 39, scope: !1762, inlinedAt: !1806)
!1826 = !{!1827, !1475, i64 3536}
!1827 = !{!"x264_frame", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1481, i64 16, !1481, i64 24, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1475, i64 48, !1446, i64 56, !1446, i64 60, !1446, i64 64, !1446, i64 68, !1446, i64 72, !1446, i64 76, !1446, i64 80, !1447, i64 84, !1447, i64 85, !1447, i64 86, !1477, i64 88, !1477, i64 92, !1446, i64 96, !1446, i64 100, !1447, i64 104, !1447, i64 116, !1447, i64 128, !1446, i64 140, !1446, i64 144, !1446, i64 148, !1447, i64 152, !1447, i64 176, !1447, i64 208, !1475, i64 240, !1447, i64 248, !1447, i64 280, !1447, i64 320, !1447, i64 3392, !1446, i64 3520, !1475, i64 3528, !1475, i64 3536, !1475, i64 3544, !1447, i64 3552, !1475, i64 3568, !1447, i64 3576, !1447, i64 3848, !1447, i64 6440, !1447, i64 6712, !1447, i64 6728, !1447, i64 6736, !1447, i64 6864, !1447, i64 6868, !1447, i64 8164, !1446, i64 9460, !1447, i64 9464, !1447, i64 9536, !1475, i64 12128, !1475, i64 12136, !1475, i64 12144, !1475, i64 12152, !1475, i64 12160, !1446, i64 12168, !1475, i64 12176, !1475, i64 12184, !1475, i64 12192, !1446, i64 12200, !1447, i64 12204, !1446, i64 12276, !1481, i64 12280, !1828, i64 12288, !1447, i64 12320, !1447, i64 12572, !1447, i64 13576, !1446, i64 15584, !1446, i64 15588, !1446, i64 15592, !1446, i64 15596, !1446, i64 15600, !1446, i64 15604, !1446, i64 15608, !1477, i64 15612, !1446, i64 15616, !1446, i64 15620, !1446, i64 15624}
!1828 = !{!"", !1491, i64 0, !1491, i64 8, !1491, i64 16, !1491, i64 24}
!1829 = !DILocation(line: 228, column: 53, scope: !1762, inlinedAt: !1806)
!1830 = !{!1472, !1446, i64 16392}
!1831 = !DILocation(line: 228, column: 26, scope: !1762, inlinedAt: !1806)
!1832 = !DILocation(line: 229, column: 44, scope: !1762, inlinedAt: !1806)
!1833 = !{!1827, !1475, i64 3544}
!1834 = !DILocation(line: 229, column: 31, scope: !1762, inlinedAt: !1806)
!1835 = !DILocation(line: 231, column: 11, scope: !1762, inlinedAt: !1806)
!1836 = !DILocation(line: 231, column: 23, scope: !1762, inlinedAt: !1806)
!1837 = !DILocation(line: 0, scope: !1779, inlinedAt: !1806)
!1838 = !DILocation(line: 233, column: 5, scope: !1779, inlinedAt: !1806)
!1839 = !DILocation(line: 277, column: 10, scope: !1840, inlinedAt: !1806)
!1840 = distinct !DILexicalBlock(scope: !1762, file: !134, line: 277, column: 9)
!1841 = !DILocation(line: 277, column: 21, scope: !1840, inlinedAt: !1806)
!1842 = !DILocation(line: 277, column: 31, scope: !1840, inlinedAt: !1806)
!1843 = !DILocation(line: 277, column: 9, scope: !1762, inlinedAt: !1806)
!1844 = !DILocation(line: 235, column: 26, scope: !1781, inlinedAt: !1806)
!1845 = !DILocation(line: 0, scope: !1781, inlinedAt: !1806)
!1846 = !DILocation(line: 236, column: 26, scope: !1781, inlinedAt: !1806)
!1847 = !DILocation(line: 237, column: 26, scope: !1781, inlinedAt: !1806)
!1848 = !DILocation(line: 238, column: 26, scope: !1781, inlinedAt: !1806)
!1849 = !DILocation(line: 239, column: 26, scope: !1781, inlinedAt: !1806)
!1850 = !DILocation(line: 240, column: 26, scope: !1781, inlinedAt: !1806)
!1851 = !DILocation(line: 241, column: 20, scope: !1852, inlinedAt: !1806)
!1852 = distinct !DILexicalBlock(scope: !1781, file: !134, line: 241, column: 13)
!1853 = !DILocation(line: 241, column: 13, scope: !1781, inlinedAt: !1806)
!1854 = !DILocation(line: 243, column: 22, scope: !1855, inlinedAt: !1806)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !134, line: 242, column: 9)
!1856 = !DILocation(line: 244, column: 22, scope: !1855, inlinedAt: !1806)
!1857 = !DILocation(line: 245, column: 9, scope: !1855, inlinedAt: !1806)
!1858 = !DILocation(line: 247, column: 21, scope: !1781, inlinedAt: !1806)
!1859 = !DILocation(line: 248, column: 19, scope: !1791, inlinedAt: !1806)
!1860 = !DILocation(line: 248, column: 13, scope: !1781, inlinedAt: !1806)
!1861 = !DILocation(line: 251, column: 13, scope: !1862, inlinedAt: !1806)
!1862 = distinct !DILexicalBlock(scope: !1791, file: !134, line: 249, column: 9)
!1863 = !DILocation(line: 251, column: 31, scope: !1862, inlinedAt: !1806)
!1864 = !DILocation(line: 252, column: 9, scope: !1862, inlinedAt: !1806)
!1865 = !DILocation(line: 257, column: 35, scope: !1790, inlinedAt: !1806)
!1866 = !DILocation(line: 257, column: 55, scope: !1790, inlinedAt: !1806)
!1867 = !DILocation(line: 257, column: 45, scope: !1790, inlinedAt: !1806)
!1868 = !DILocation(line: 257, column: 75, scope: !1790, inlinedAt: !1806)
!1869 = !DILocation(line: 257, column: 65, scope: !1790, inlinedAt: !1806)
!1870 = !DILocation(line: 0, scope: !1790, inlinedAt: !1806)
!1871 = !DILocation(line: 259, column: 25, scope: !1872, inlinedAt: !1806)
!1872 = distinct !DILexicalBlock(scope: !1790, file: !134, line: 259, column: 17)
!1873 = !DILocation(line: 259, column: 17, scope: !1790, inlinedAt: !1806)
!1874 = !DILocation(line: 260, column: 33, scope: !1872, inlinedAt: !1806)
!1875 = !DILocation(line: 0, scope: !1545, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 260, column: 17, scope: !1872, inlinedAt: !1806)
!1877 = !DILocation(line: 222, column: 27, scope: !1545, inlinedAt: !1876)
!1878 = !DILocation(line: 222, column: 33, scope: !1545, inlinedAt: !1876)
!1879 = !DILocation(line: 222, column: 39, scope: !1545, inlinedAt: !1876)
!1880 = !DILocation(line: 0, scope: !1560, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1876)
!1882 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1881)
!1883 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1881)
!1884 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1881)
!1885 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1881)
!1886 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1881)
!1887 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1881)
!1888 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1881)
!1889 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1881)
!1890 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1881)
!1891 = !DILocation(line: 222, column: 14, scope: !1545, inlinedAt: !1876)
!1892 = !DILocation(line: 222, column: 12, scope: !1545, inlinedAt: !1876)
!1893 = !DILocation(line: 223, column: 27, scope: !1545, inlinedAt: !1876)
!1894 = !DILocation(line: 223, column: 33, scope: !1545, inlinedAt: !1876)
!1895 = !DILocation(line: 223, column: 39, scope: !1545, inlinedAt: !1876)
!1896 = !DILocation(line: 0, scope: !1560, inlinedAt: !1897)
!1897 = distinct !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1876)
!1898 = !DILocation(line: 212, column: 15, scope: !1560, inlinedAt: !1897)
!1899 = !DILocation(line: 212, column: 18, scope: !1560, inlinedAt: !1897)
!1900 = !DILocation(line: 214, column: 7, scope: !1560, inlinedAt: !1897)
!1901 = !DILocation(line: 215, column: 12, scope: !1560, inlinedAt: !1897)
!1902 = !DILocation(line: 215, column: 15, scope: !1560, inlinedAt: !1897)
!1903 = !DILocation(line: 215, column: 7, scope: !1560, inlinedAt: !1897)
!1904 = !DILocation(line: 216, column: 12, scope: !1560, inlinedAt: !1897)
!1905 = !DILocation(line: 216, column: 15, scope: !1560, inlinedAt: !1897)
!1906 = !DILocation(line: 216, column: 7, scope: !1560, inlinedAt: !1897)
!1907 = !DILocation(line: 223, column: 14, scope: !1545, inlinedAt: !1876)
!1908 = !DILocation(line: 223, column: 5, scope: !1545, inlinedAt: !1876)
!1909 = !DILocation(line: 223, column: 12, scope: !1545, inlinedAt: !1876)
!1910 = !DILocation(line: 273, column: 9, scope: !1781, inlinedAt: !1806)
!1911 = !DILocation(line: 260, column: 17, scope: !1872, inlinedAt: !1806)
!1912 = !DILocation(line: 263, column: 21, scope: !1913, inlinedAt: !1806)
!1913 = distinct !DILexicalBlock(scope: !1872, file: !134, line: 262, column: 13)
!1914 = !DILocation(line: 264, column: 21, scope: !1915, inlinedAt: !1806)
!1915 = distinct !DILexicalBlock(scope: !1913, file: !134, line: 263, column: 21)
!1916 = !DILocation(line: 265, column: 26, scope: !1915, inlinedAt: !1806)
!1917 = !DILocation(line: 266, column: 21, scope: !1918, inlinedAt: !1806)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !134, line: 265, column: 26)
!1919 = !DILocation(line: 268, column: 21, scope: !1918, inlinedAt: !1806)
!1920 = !DILocalVariable(name: "h", arg: 1, scope: !1921, file: !1922, line: 126, type: !137)
!1921 = distinct !DISubprogram(name: "x264_macroblock_cache_ref", scope: !1922, file: !1922, line: 126, type: !1923, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1925)
!1922 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/rectangle.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !137, !123, !123, !123, !123, !123, !84}
!1925 = !{!1920, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1926 = !DILocalVariable(name: "x", arg: 2, scope: !1921, file: !1922, line: 126, type: !123)
!1927 = !DILocalVariable(name: "y", arg: 3, scope: !1921, file: !1922, line: 126, type: !123)
!1928 = !DILocalVariable(name: "width", arg: 4, scope: !1921, file: !1922, line: 126, type: !123)
!1929 = !DILocalVariable(name: "height", arg: 5, scope: !1921, file: !1922, line: 126, type: !123)
!1930 = !DILocalVariable(name: "i_list", arg: 6, scope: !1921, file: !1922, line: 126, type: !123)
!1931 = !DILocalVariable(name: "ref", arg: 7, scope: !1921, file: !1922, line: 126, type: !84)
!1932 = !DILocalVariable(name: "ref_cache", scope: !1921, file: !1922, line: 128, type: !89)
!1933 = !DILocation(line: 0, scope: !1921, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 272, column: 9, scope: !1781, inlinedAt: !1806)
!1935 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !1934)
!1936 = !DILocation(line: 132, column: 66, scope: !1937, inlinedAt: !1934)
!1937 = distinct !DILexicalBlock(scope: !1921, file: !1922, line: 129, column: 9)
!1938 = !DILocalVariable(name: "dst", arg: 1, scope: !1939, file: !1922, line: 22, type: !89)
!1939 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !1922, file: !1922, line: 22, type: !1940, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !89, !123, !123, !123, !71}
!1942 = !{!1938, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950}
!1943 = !DILocalVariable(name: "w", arg: 2, scope: !1939, file: !1922, line: 22, type: !123)
!1944 = !DILocalVariable(name: "h", arg: 3, scope: !1939, file: !1922, line: 22, type: !123)
!1945 = !DILocalVariable(name: "s", arg: 4, scope: !1939, file: !1922, line: 22, type: !123)
!1946 = !DILocalVariable(name: "v", arg: 5, scope: !1939, file: !1922, line: 22, type: !71)
!1947 = !DILocalVariable(name: "d", scope: !1939, file: !1922, line: 24, type: !333)
!1948 = !DILocalVariable(name: "v2", scope: !1939, file: !1922, line: 25, type: !77)
!1949 = !DILocalVariable(name: "v4", scope: !1939, file: !1922, line: 26, type: !71)
!1950 = !DILocalVariable(name: "v8", scope: !1939, file: !1922, line: 27, type: !109)
!1951 = !DILocation(line: 0, scope: !1939, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !1934)
!1953 = !DILocation(line: 26, column: 57, scope: !1939, inlinedAt: !1952)
!1954 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !1952)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !1922, line: 40, column: 5)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !1922, line: 39, column: 14)
!1957 = distinct !DILexicalBlock(scope: !1939, file: !1922, line: 30, column: 9)
!1958 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !1952)
!1959 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !1952)
!1960 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !1952)
!1961 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !1952)
!1962 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !1952)
!1963 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !1952)
!1964 = !DILocalVariable(name: "h", arg: 1, scope: !1965, file: !1922, line: 110, type: !137)
!1965 = distinct !DISubprogram(name: "x264_macroblock_cache_mv", scope: !1922, file: !1922, line: 110, type: !1966, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !137, !123, !123, !123, !123, !123, !71}
!1968 = !{!1964, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1969 = !DILocalVariable(name: "x", arg: 2, scope: !1965, file: !1922, line: 110, type: !123)
!1970 = !DILocalVariable(name: "y", arg: 3, scope: !1965, file: !1922, line: 110, type: !123)
!1971 = !DILocalVariable(name: "width", arg: 4, scope: !1965, file: !1922, line: 110, type: !123)
!1972 = !DILocalVariable(name: "height", arg: 5, scope: !1965, file: !1922, line: 110, type: !123)
!1973 = !DILocalVariable(name: "i_list", arg: 6, scope: !1965, file: !1922, line: 110, type: !123)
!1974 = !DILocalVariable(name: "mv", arg: 7, scope: !1965, file: !1922, line: 110, type: !71)
!1975 = !DILocalVariable(name: "mv_cache", scope: !1965, file: !1922, line: 112, type: !89)
!1976 = !DILocation(line: 0, scope: !1965, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 273, column: 9, scope: !1781, inlinedAt: !1806)
!1978 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !1977)
!1979 = !DILocation(line: 0, scope: !1939, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !1977)
!1981 = distinct !DILexicalBlock(scope: !1965, file: !1922, line: 113, column: 9)
!1982 = !DILocation(line: 27, column: 19, scope: !1939, inlinedAt: !1980)
!1983 = !DILocation(line: 27, column: 22, scope: !1939, inlinedAt: !1980)
!1984 = !DILocation(line: 81, column: 32, scope: !1985, inlinedAt: !1980)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !1922, line: 80, column: 13)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !1922, line: 78, column: 9)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !1922, line: 77, column: 13)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !1922, line: 74, column: 5)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !1922, line: 73, column: 14)
!1990 = distinct !DILexicalBlock(scope: !1956, file: !1922, line: 48, column: 14)
!1991 = !DILocation(line: 82, column: 17, scope: !1985, inlinedAt: !1980)
!1992 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !1980)
!1993 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !1980)
!1994 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !1980)
!1995 = !DILocation(line: 84, column: 17, scope: !1985, inlinedAt: !1980)
!1996 = !DILocation(line: 84, column: 32, scope: !1985, inlinedAt: !1980)
!1997 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !1980)
!1998 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !1980)
!1999 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !1980)
!2000 = distinct !{!2000, !2001, !2002, !2003, !2004}
!2001 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !1980)
!2002 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !1980)
!2003 = !{!"llvm.loop.mustprogress"}
!2004 = !{!"llvm.loop.unroll.disable"}
!2005 = !DILocation(line: 274, column: 9, scope: !1781, inlinedAt: !1806)
!2006 = !DILocation(line: 274, column: 21, scope: !1781, inlinedAt: !1806)
!2007 = distinct !{!2007, !1838, !2008, !2003, !2004}
!2008 = !DILocation(line: 275, column: 5, scope: !1779, inlinedAt: !1806)
!2009 = !DILocation(line: 0, scope: !1921, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 279, column: 9, scope: !2011, inlinedAt: !1806)
!2011 = distinct !DILexicalBlock(scope: !1840, file: !134, line: 278, column: 5)
!2012 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !2010)
!2013 = !DILocation(line: 0, scope: !1939, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !2010)
!2015 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !2014)
!2016 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !2014)
!2017 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !2014)
!2018 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !2014)
!2019 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !2014)
!2020 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !2014)
!2021 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !2014)
!2022 = !DILocation(line: 0, scope: !1921, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 280, column: 9, scope: !2011, inlinedAt: !1806)
!2024 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !2023)
!2025 = !DILocation(line: 0, scope: !1939, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !2023)
!2027 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !2026)
!2028 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !2026)
!2029 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !2026)
!2030 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !2026)
!2031 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !2026)
!2032 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !2026)
!2033 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !2026)
!2034 = !DILocation(line: 281, column: 9, scope: !2011, inlinedAt: !1806)
!2035 = !DILocation(line: 284, column: 18, scope: !2036, inlinedAt: !1806)
!2036 = distinct !DILexicalBlock(scope: !1762, file: !134, line: 284, column: 9)
!2037 = !{!1472, !1446, i64 4}
!2038 = !DILocation(line: 284, column: 28, scope: !2036, inlinedAt: !1806)
!2039 = !DILocation(line: 285, column: 9, scope: !2036, inlinedAt: !1806)
!2040 = !DILocation(line: 285, column: 14, scope: !2036, inlinedAt: !1806)
!2041 = !DILocation(line: 285, column: 25, scope: !2036, inlinedAt: !1806)
!2042 = !DILocation(line: 285, column: 23, scope: !2036, inlinedAt: !1806)
!2043 = !DILocation(line: 286, column: 11, scope: !2036, inlinedAt: !1806)
!2044 = !DILocation(line: 296, column: 10, scope: !2045, inlinedAt: !1806)
!2045 = distinct !DILexicalBlock(scope: !1762, file: !134, line: 296, column: 9)
!2046 = !DILocation(line: 296, column: 20, scope: !2045, inlinedAt: !1806)
!2047 = !DILocation(line: 296, column: 48, scope: !2045, inlinedAt: !1806)
!2048 = !DILocation(line: 296, column: 54, scope: !2045, inlinedAt: !1806)
!2049 = !DILocation(line: 302, column: 27, scope: !1762, inlinedAt: !1806)
!2050 = !DILocation(line: 302, column: 44, scope: !1762, inlinedAt: !1806)
!2051 = !DILocation(line: 303, column: 31, scope: !1762, inlinedAt: !1806)
!2052 = !DILocation(line: 303, column: 42, scope: !1762, inlinedAt: !1806)
!2053 = !DILocation(line: 305, column: 49, scope: !1762, inlinedAt: !1806)
!2054 = !DILocation(line: 305, column: 20, scope: !1762, inlinedAt: !1806)
!2055 = !DILocation(line: 0, scope: !1797, inlinedAt: !1806)
!2056 = !DILocation(line: 308, column: 25, scope: !1800, inlinedAt: !1806)
!2057 = !DILocation(line: 308, column: 5, scope: !1797, inlinedAt: !1806)
!2058 = !DILocation(line: 304, column: 48, scope: !1762, inlinedAt: !1806)
!2059 = !DILocation(line: 304, column: 19, scope: !1762, inlinedAt: !1806)
!2060 = !DILocation(line: 310, column: 26, scope: !1799, inlinedAt: !1806)
!2061 = !DILocation(line: 0, scope: !1799, inlinedAt: !1806)
!2062 = !DILocation(line: 311, column: 26, scope: !1799, inlinedAt: !1806)
!2063 = !DILocation(line: 312, column: 40, scope: !1799, inlinedAt: !1806)
!2064 = !{!1472, !1446, i64 16376}
!2065 = !DILocation(line: 312, column: 32, scope: !1799, inlinedAt: !1806)
!2066 = !DILocation(line: 312, column: 27, scope: !1799, inlinedAt: !1806)
!2067 = !DILocation(line: 313, column: 43, scope: !1799, inlinedAt: !1806)
!2068 = !{!1472, !1446, i64 16380}
!2069 = !DILocation(line: 313, column: 35, scope: !1799, inlinedAt: !1806)
!2070 = !DILocation(line: 313, column: 30, scope: !1799, inlinedAt: !1806)
!2071 = !DILocation(line: 313, column: 25, scope: !1799, inlinedAt: !1806)
!2072 = !DILocation(line: 315, column: 13, scope: !2073, inlinedAt: !1806)
!2073 = distinct !DILexicalBlock(scope: !1799, file: !134, line: 315, column: 13)
!2074 = !DILocation(line: 315, column: 24, scope: !2073, inlinedAt: !1806)
!2075 = !DILocation(line: 315, column: 13, scope: !1799, inlinedAt: !1806)
!2076 = !DILocation(line: 317, column: 29, scope: !2077, inlinedAt: !1806)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !134, line: 317, column: 18)
!2078 = !DILocation(line: 317, column: 33, scope: !2077, inlinedAt: !1806)
!2079 = !DILocation(line: 317, column: 36, scope: !2077, inlinedAt: !1806)
!2080 = !DILocation(line: 317, column: 47, scope: !2077, inlinedAt: !1806)
!2081 = !DILocation(line: 317, column: 18, scope: !2073, inlinedAt: !1806)
!2082 = !DILocation(line: 322, column: 18, scope: !2083, inlinedAt: !1806)
!2083 = distinct !DILexicalBlock(scope: !1799, file: !134, line: 322, column: 13)
!2084 = !DILocation(line: 322, column: 13, scope: !2083, inlinedAt: !1806)
!2085 = !DILocation(line: 322, column: 37, scope: !2083, inlinedAt: !1806)
!2086 = !DILocation(line: 322, column: 42, scope: !2083, inlinedAt: !1806)
!2087 = !DILocation(line: 322, column: 50, scope: !2083, inlinedAt: !1806)
!2088 = !DILocation(line: 322, column: 45, scope: !2083, inlinedAt: !1806)
!2089 = !DILocation(line: 322, column: 69, scope: !2083, inlinedAt: !1806)
!2090 = !DILocation(line: 322, column: 13, scope: !1799, inlinedAt: !1806)
!2091 = !DILocation(line: 324, column: 17, scope: !2092, inlinedAt: !1806)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !134, line: 323, column: 9)
!2093 = !DILocation(line: 324, column: 61, scope: !2094, inlinedAt: !1806)
!2094 = distinct !DILexicalBlock(scope: !2092, file: !134, line: 324, column: 17)
!2095 = !DILocation(line: 0, scope: !1965, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 324, column: 31, scope: !2094, inlinedAt: !1806)
!2097 = !DILocation(line: 112, column: 62, scope: !1965, inlinedAt: !2096)
!2098 = !DILocation(line: 112, column: 60, scope: !1965, inlinedAt: !2096)
!2099 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2096)
!2100 = !DILocation(line: 0, scope: !1939, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2096)
!2102 = !DILocation(line: 30, column: 9, scope: !1939, inlinedAt: !2101)
!2103 = !DILocation(line: 52, column: 26, scope: !2104, inlinedAt: !2101)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !1922, line: 51, column: 9)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !1922, line: 50, column: 13)
!2106 = distinct !DILexicalBlock(scope: !1990, file: !1922, line: 49, column: 5)
!2107 = !DILocation(line: 53, column: 17, scope: !2104, inlinedAt: !2101)
!2108 = !DILocation(line: 54, column: 13, scope: !2104, inlinedAt: !2101)
!2109 = !DILocation(line: 54, column: 26, scope: !2104, inlinedAt: !2101)
!2110 = !DILocation(line: 55, column: 17, scope: !2104, inlinedAt: !2101)
!2111 = !DILocation(line: 56, column: 13, scope: !2104, inlinedAt: !2101)
!2112 = !DILocation(line: 56, column: 26, scope: !2104, inlinedAt: !2101)
!2113 = !DILocation(line: 57, column: 13, scope: !2104, inlinedAt: !2101)
!2114 = !DILocation(line: 57, column: 26, scope: !2104, inlinedAt: !2101)
!2115 = !DILocation(line: 72, column: 5, scope: !2106, inlinedAt: !2101)
!2116 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2101)
!2117 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2101)
!2118 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2101)
!2119 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2101)
!2120 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2101)
!2121 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2101)
!2122 = distinct !{!2122, !2123, !2124, !2003, !2004}
!2123 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2101)
!2124 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2101)
!2125 = !DILocation(line: 325, column: 17, scope: !2092, inlinedAt: !1806)
!2126 = !DILocation(line: 325, column: 61, scope: !2127, inlinedAt: !1806)
!2127 = distinct !DILexicalBlock(scope: !2092, file: !134, line: 325, column: 17)
!2128 = !DILocation(line: 0, scope: !1965, inlinedAt: !2129)
!2129 = distinct !DILocation(line: 325, column: 31, scope: !2127, inlinedAt: !1806)
!2130 = !DILocation(line: 112, column: 62, scope: !1965, inlinedAt: !2129)
!2131 = !DILocation(line: 112, column: 60, scope: !1965, inlinedAt: !2129)
!2132 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2129)
!2133 = !DILocation(line: 0, scope: !1939, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2129)
!2135 = !DILocation(line: 30, column: 9, scope: !1939, inlinedAt: !2134)
!2136 = !DILocation(line: 52, column: 26, scope: !2104, inlinedAt: !2134)
!2137 = !DILocation(line: 53, column: 17, scope: !2104, inlinedAt: !2134)
!2138 = !DILocation(line: 54, column: 13, scope: !2104, inlinedAt: !2134)
!2139 = !DILocation(line: 54, column: 26, scope: !2104, inlinedAt: !2134)
!2140 = !DILocation(line: 55, column: 17, scope: !2104, inlinedAt: !2134)
!2141 = !DILocation(line: 56, column: 13, scope: !2104, inlinedAt: !2134)
!2142 = !DILocation(line: 56, column: 26, scope: !2104, inlinedAt: !2134)
!2143 = !DILocation(line: 57, column: 13, scope: !2104, inlinedAt: !2134)
!2144 = !DILocation(line: 57, column: 26, scope: !2104, inlinedAt: !2134)
!2145 = !DILocation(line: 72, column: 5, scope: !2106, inlinedAt: !2134)
!2146 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2134)
!2147 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2134)
!2148 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2134)
!2149 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2134)
!2150 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2134)
!2151 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2134)
!2152 = distinct !{!2152, !2153, !2154, !2003, !2004}
!2153 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2134)
!2154 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2134)
!2155 = !DILocation(line: 308, column: 38, scope: !1800, inlinedAt: !1806)
!2156 = distinct !{!2156, !2057, !2157, !2003, !2004}
!2157 = !DILocation(line: 327, column: 5, scope: !1797, inlinedAt: !1806)
!2158 = !DILocation(line: 330, column: 1, scope: !1762, inlinedAt: !1806)
!2159 = !DILocation(line: 338, column: 9, scope: !1757)
!2160 = !DILocalVariable(name: "h", arg: 1, scope: !2161, file: !134, line: 159, type: !137)
!2161 = distinct !DISubprogram(name: "x264_mb_predict_mv_direct16x16_temporal", scope: !134, file: !134, line: 159, type: !1763, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2162)
!2162 = !{!2160, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2173, !2176, !2177, !2178, !2179, !2180, !2183, !2184, !2185}
!2163 = !DILocalVariable(name: "i_mb_4x4", scope: !2161, file: !134, line: 161, type: !123)
!2164 = !DILocalVariable(name: "i_mb_8x8", scope: !2161, file: !134, line: 162, type: !123)
!2165 = !DILocalVariable(name: "type_col", scope: !2161, file: !134, line: 163, type: !122)
!2166 = !DILocalVariable(name: "partition_col", scope: !2161, file: !134, line: 164, type: !122)
!2167 = !DILocalVariable(name: "max_i8", scope: !2161, file: !134, line: 181, type: !123)
!2168 = !DILocalVariable(name: "step", scope: !2161, file: !134, line: 182, type: !123)
!2169 = !DILocalVariable(name: "width", scope: !2161, file: !134, line: 183, type: !123)
!2170 = !DILocalVariable(name: "height", scope: !2161, file: !134, line: 184, type: !123)
!2171 = !DILocalVariable(name: "i8", scope: !2172, file: !134, line: 186, type: !123)
!2172 = distinct !DILexicalBlock(scope: !2161, file: !134, line: 186, column: 5)
!2173 = !DILocalVariable(name: "x8", scope: !2174, file: !134, line: 188, type: !123)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !134, line: 187, column: 5)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !134, line: 186, column: 5)
!2176 = !DILocalVariable(name: "y8", scope: !2174, file: !134, line: 189, type: !123)
!2177 = !DILocalVariable(name: "i_part_8x8", scope: !2174, file: !134, line: 190, type: !123)
!2178 = !DILocalVariable(name: "i_ref1_ref", scope: !2174, file: !134, line: 191, type: !123)
!2179 = !DILocalVariable(name: "i_ref", scope: !2174, file: !134, line: 192, type: !123)
!2180 = !DILocalVariable(name: "dist_scale_factor", scope: !2181, file: !134, line: 196, type: !123)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !134, line: 195, column: 9)
!2182 = distinct !DILexicalBlock(scope: !2174, file: !134, line: 194, column: 13)
!2183 = !DILocalVariable(name: "mv_col", scope: !2181, file: !134, line: 197, type: !844)
!2184 = !DILocalVariable(name: "l0x", scope: !2181, file: !134, line: 198, type: !123)
!2185 = !DILocalVariable(name: "l0y", scope: !2181, file: !134, line: 199, type: !123)
!2186 = !DILocation(line: 0, scope: !2161, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 340, column: 23, scope: !1757)
!2188 = !DILocation(line: 161, column: 31, scope: !2161, inlinedAt: !2187)
!2189 = !{!1472, !1446, i64 16372}
!2190 = !DILocation(line: 161, column: 23, scope: !2161, inlinedAt: !2187)
!2191 = !DILocation(line: 161, column: 51, scope: !2161, inlinedAt: !2187)
!2192 = !{!1472, !1446, i64 16388}
!2193 = !DILocation(line: 161, column: 43, scope: !2161, inlinedAt: !2187)
!2194 = !DILocation(line: 161, column: 70, scope: !2161, inlinedAt: !2187)
!2195 = !{!1472, !1446, i64 16384}
!2196 = !DILocation(line: 161, column: 62, scope: !2161, inlinedAt: !2187)
!2197 = !DILocation(line: 162, column: 23, scope: !2161, inlinedAt: !2187)
!2198 = !DILocation(line: 162, column: 43, scope: !2161, inlinedAt: !2187)
!2199 = !DILocation(line: 162, column: 62, scope: !2161, inlinedAt: !2187)
!2200 = !DILocation(line: 162, column: 58, scope: !2161, inlinedAt: !2187)
!2201 = !DILocation(line: 163, column: 29, scope: !2161, inlinedAt: !2187)
!2202 = !DILocation(line: 163, column: 26, scope: !2161, inlinedAt: !2187)
!2203 = !DILocation(line: 163, column: 39, scope: !2161, inlinedAt: !2187)
!2204 = !DILocation(line: 163, column: 53, scope: !2161, inlinedAt: !2187)
!2205 = !DILocation(line: 164, column: 44, scope: !2161, inlinedAt: !2187)
!2206 = !DILocation(line: 164, column: 31, scope: !2161, inlinedAt: !2187)
!2207 = !DILocation(line: 0, scope: !1921, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 166, column: 5, scope: !2161, inlinedAt: !2187)
!2209 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !2208)
!2210 = !DILocation(line: 0, scope: !1939, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !2208)
!2212 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !2211)
!2213 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !2211)
!2214 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !2211)
!2215 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !2211)
!2216 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !2211)
!2217 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !2211)
!2218 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !2211)
!2219 = !DILocation(line: 168, column: 11, scope: !2161, inlinedAt: !2187)
!2220 = !DILocation(line: 168, column: 23, scope: !2161, inlinedAt: !2187)
!2221 = !DILocation(line: 170, column: 9, scope: !2222, inlinedAt: !2187)
!2222 = distinct !DILexicalBlock(scope: !2161, file: !134, line: 170, column: 9)
!2223 = !DILocation(line: 0, scope: !1921, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 172, column: 9, scope: !2225, inlinedAt: !2187)
!2225 = distinct !DILexicalBlock(scope: !2222, file: !134, line: 171, column: 5)
!2226 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !2224)
!2227 = !DILocation(line: 0, scope: !1939, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !2224)
!2229 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !2228)
!2230 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !2228)
!2231 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !2228)
!2232 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !2228)
!2233 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !2228)
!2234 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !2228)
!2235 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !2228)
!2236 = !DILocation(line: 0, scope: !1965, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 173, column: 9, scope: !2225, inlinedAt: !2187)
!2238 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2237)
!2239 = !DILocation(line: 0, scope: !1939, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2237)
!2241 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2240)
!2242 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2240)
!2243 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2240)
!2244 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2240)
!2245 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2240)
!2246 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2240)
!2247 = distinct !{!2247, !2248, !2249, !2003, !2004}
!2248 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2240)
!2249 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2240)
!2250 = !DILocation(line: 0, scope: !1965, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 174, column: 9, scope: !2225, inlinedAt: !2187)
!2252 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2251)
!2253 = !DILocation(line: 0, scope: !1939, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2251)
!2255 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2254)
!2256 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2254)
!2257 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2254)
!2258 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2254)
!2259 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2254)
!2260 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2254)
!2261 = distinct !{!2261, !2262, !2263, !2003, !2004}
!2262 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2254)
!2263 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2254)
!2264 = !DILocation(line: 181, column: 27, scope: !2161, inlinedAt: !2187)
!2265 = !DILocation(line: 181, column: 44, scope: !2161, inlinedAt: !2187)
!2266 = !DILocation(line: 182, column: 31, scope: !2161, inlinedAt: !2187)
!2267 = !DILocation(line: 182, column: 42, scope: !2161, inlinedAt: !2187)
!2268 = !DILocation(line: 184, column: 49, scope: !2161, inlinedAt: !2187)
!2269 = !DILocation(line: 184, column: 20, scope: !2161, inlinedAt: !2187)
!2270 = !DILocation(line: 0, scope: !2172, inlinedAt: !2187)
!2271 = !DILocation(line: 186, column: 25, scope: !2175, inlinedAt: !2187)
!2272 = !DILocation(line: 186, column: 5, scope: !2172, inlinedAt: !2187)
!2273 = !DILocation(line: 183, column: 48, scope: !2161, inlinedAt: !2187)
!2274 = !DILocation(line: 183, column: 19, scope: !2161, inlinedAt: !2187)
!2275 = !DILocation(line: 191, column: 26, scope: !2174, inlinedAt: !2187)
!2276 = !DILocation(line: 188, column: 20, scope: !2174, inlinedAt: !2187)
!2277 = !DILocation(line: 0, scope: !2174, inlinedAt: !2187)
!2278 = !DILocation(line: 189, column: 20, scope: !2174, inlinedAt: !2187)
!2279 = !DILocation(line: 190, column: 35, scope: !2174, inlinedAt: !2187)
!2280 = !DILocation(line: 190, column: 53, scope: !2174, inlinedAt: !2187)
!2281 = !DILocation(line: 190, column: 45, scope: !2174, inlinedAt: !2187)
!2282 = !DILocation(line: 190, column: 40, scope: !2174, inlinedAt: !2187)
!2283 = !DILocation(line: 191, column: 39, scope: !2174, inlinedAt: !2187)
!2284 = !DILocation(line: 192, column: 22, scope: !2174, inlinedAt: !2187)
!2285 = !{!1472, !1446, i64 7268}
!2286 = !DILocation(line: 192, column: 66, scope: !2174, inlinedAt: !2187)
!2287 = !DILocation(line: 192, column: 97, scope: !2174, inlinedAt: !2187)
!2288 = !DILocation(line: 192, column: 84, scope: !2174, inlinedAt: !2187)
!2289 = !DILocation(line: 194, column: 19, scope: !2182, inlinedAt: !2187)
!2290 = !DILocation(line: 194, column: 13, scope: !2174, inlinedAt: !2187)
!2291 = !DILocation(line: 196, column: 43, scope: !2181, inlinedAt: !2187)
!2292 = !{!1472, !1475, i64 26360}
!2293 = !DILocation(line: 196, column: 37, scope: !2181, inlinedAt: !2187)
!2294 = !DILocation(line: 0, scope: !2181, inlinedAt: !2187)
!2295 = !DILocation(line: 197, column: 44, scope: !2181, inlinedAt: !2187)
!2296 = !DILocation(line: 197, column: 31, scope: !2181, inlinedAt: !2187)
!2297 = !DILocation(line: 197, column: 81, scope: !2181, inlinedAt: !2187)
!2298 = !DILocation(line: 197, column: 73, scope: !2181, inlinedAt: !2187)
!2299 = !DILocation(line: 197, column: 66, scope: !2181, inlinedAt: !2187)
!2300 = !DILocation(line: 198, column: 45, scope: !2181, inlinedAt: !2187)
!2301 = !DILocation(line: 198, column: 43, scope: !2181, inlinedAt: !2187)
!2302 = !DILocation(line: 198, column: 55, scope: !2181, inlinedAt: !2187)
!2303 = !DILocation(line: 198, column: 63, scope: !2181, inlinedAt: !2187)
!2304 = !DILocation(line: 199, column: 45, scope: !2181, inlinedAt: !2187)
!2305 = !DILocation(line: 199, column: 43, scope: !2181, inlinedAt: !2187)
!2306 = !DILocation(line: 199, column: 55, scope: !2181, inlinedAt: !2187)
!2307 = !DILocation(line: 199, column: 63, scope: !2181, inlinedAt: !2187)
!2308 = !DILocation(line: 200, column: 26, scope: !2309, inlinedAt: !2187)
!2309 = distinct !DILexicalBlock(scope: !2181, file: !134, line: 200, column: 17)
!2310 = !DILocation(line: 200, column: 36, scope: !2309, inlinedAt: !2187)
!2311 = !DILocation(line: 200, column: 40, scope: !2309, inlinedAt: !2187)
!2312 = !DILocation(line: 200, column: 50, scope: !2309, inlinedAt: !2187)
!2313 = !DILocation(line: 200, column: 48, scope: !2309, inlinedAt: !2187)
!2314 = !DILocation(line: 200, column: 71, scope: !2309, inlinedAt: !2187)
!2315 = !DILocation(line: 202, column: 44, scope: !2181, inlinedAt: !2187)
!2316 = !DILocation(line: 202, column: 73, scope: !2181, inlinedAt: !2187)
!2317 = !DILocation(line: 0, scope: !1921, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 202, column: 13, scope: !2181, inlinedAt: !2187)
!2319 = !DILocation(line: 128, column: 64, scope: !1921, inlinedAt: !2318)
!2320 = !DILocation(line: 128, column: 62, scope: !1921, inlinedAt: !2318)
!2321 = !DILocation(line: 128, column: 24, scope: !1921, inlinedAt: !2318)
!2322 = !DILocation(line: 132, column: 66, scope: !1937, inlinedAt: !2318)
!2323 = !DILocation(line: 0, scope: !1939, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 132, column: 9, scope: !1937, inlinedAt: !2318)
!2325 = !DILocation(line: 25, column: 19, scope: !1939, inlinedAt: !2324)
!2326 = !DILocation(line: 26, column: 57, scope: !1939, inlinedAt: !2324)
!2327 = !DILocation(line: 30, column: 9, scope: !1939, inlinedAt: !2324)
!2328 = !DILocation(line: 32, column: 22, scope: !2329, inlinedAt: !2324)
!2329 = distinct !DILexicalBlock(scope: !1957, file: !1922, line: 31, column: 5)
!2330 = !DILocation(line: 33, column: 13, scope: !2329, inlinedAt: !2324)
!2331 = !DILocation(line: 34, column: 9, scope: !2329, inlinedAt: !2324)
!2332 = !DILocation(line: 34, column: 22, scope: !2329, inlinedAt: !2324)
!2333 = !DILocation(line: 35, column: 13, scope: !2329, inlinedAt: !2324)
!2334 = !DILocation(line: 36, column: 9, scope: !2329, inlinedAt: !2324)
!2335 = !DILocation(line: 36, column: 22, scope: !2329, inlinedAt: !2324)
!2336 = !DILocation(line: 37, column: 9, scope: !2329, inlinedAt: !2324)
!2337 = !DILocation(line: 37, column: 22, scope: !2329, inlinedAt: !2324)
!2338 = !DILocation(line: 38, column: 5, scope: !2329, inlinedAt: !2324)
!2339 = !DILocation(line: 41, column: 22, scope: !1955, inlinedAt: !2324)
!2340 = !DILocation(line: 42, column: 13, scope: !1955, inlinedAt: !2324)
!2341 = !DILocation(line: 43, column: 9, scope: !1955, inlinedAt: !2324)
!2342 = !DILocation(line: 43, column: 22, scope: !1955, inlinedAt: !2324)
!2343 = !DILocation(line: 44, column: 13, scope: !1955, inlinedAt: !2324)
!2344 = !DILocation(line: 45, column: 9, scope: !1955, inlinedAt: !2324)
!2345 = !DILocation(line: 45, column: 22, scope: !1955, inlinedAt: !2324)
!2346 = !DILocation(line: 46, column: 9, scope: !1955, inlinedAt: !2324)
!2347 = !DILocation(line: 46, column: 22, scope: !1955, inlinedAt: !2324)
!2348 = !DILocation(line: 47, column: 5, scope: !1955, inlinedAt: !2324)
!2349 = !DILocalVariable(name: "a", arg: 1, scope: !2350, file: !6, line: 340, type: !123)
!2350 = distinct !DISubprogram(name: "pack16to32_mask", scope: !6, file: !6, line: 340, type: !2351, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!71, !123, !123}
!2353 = !{!2349, !2354}
!2354 = !DILocalVariable(name: "b", arg: 2, scope: !2350, file: !6, line: 340, type: !123)
!2355 = !DILocation(line: 0, scope: !2350, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 203, column: 72, scope: !2181, inlinedAt: !2187)
!2357 = !DILocation(line: 345, column: 13, scope: !2350, inlinedAt: !2356)
!2358 = !DILocation(line: 345, column: 26, scope: !2350, inlinedAt: !2356)
!2359 = !DILocation(line: 345, column: 22, scope: !2350, inlinedAt: !2356)
!2360 = !DILocation(line: 0, scope: !1965, inlinedAt: !2361)
!2361 = distinct !DILocation(line: 203, column: 13, scope: !2181, inlinedAt: !2187)
!2362 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2361)
!2363 = !DILocation(line: 0, scope: !1939, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2361)
!2365 = !DILocation(line: 27, column: 19, scope: !1939, inlinedAt: !2364)
!2366 = !DILocation(line: 27, column: 22, scope: !1939, inlinedAt: !2364)
!2367 = !DILocation(line: 30, column: 9, scope: !1939, inlinedAt: !2364)
!2368 = !DILocation(line: 52, column: 26, scope: !2104, inlinedAt: !2364)
!2369 = !DILocation(line: 53, column: 17, scope: !2104, inlinedAt: !2364)
!2370 = !DILocation(line: 54, column: 13, scope: !2104, inlinedAt: !2364)
!2371 = !DILocation(line: 54, column: 26, scope: !2104, inlinedAt: !2364)
!2372 = !DILocation(line: 55, column: 17, scope: !2104, inlinedAt: !2364)
!2373 = !DILocation(line: 56, column: 13, scope: !2104, inlinedAt: !2364)
!2374 = !DILocation(line: 56, column: 26, scope: !2104, inlinedAt: !2364)
!2375 = !DILocation(line: 57, column: 13, scope: !2104, inlinedAt: !2364)
!2376 = !DILocation(line: 57, column: 26, scope: !2104, inlinedAt: !2364)
!2377 = !DILocation(line: 72, column: 5, scope: !2106, inlinedAt: !2364)
!2378 = !DILocation(line: 81, column: 32, scope: !1985, inlinedAt: !2364)
!2379 = !DILocation(line: 82, column: 17, scope: !1985, inlinedAt: !2364)
!2380 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2364)
!2381 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2364)
!2382 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2364)
!2383 = !DILocation(line: 84, column: 17, scope: !1985, inlinedAt: !2364)
!2384 = !DILocation(line: 84, column: 32, scope: !1985, inlinedAt: !2364)
!2385 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2364)
!2386 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2364)
!2387 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2364)
!2388 = distinct !{!2388, !2389, !2390, !2003, !2004}
!2389 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2364)
!2390 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2364)
!2391 = !DILocation(line: 204, column: 92, scope: !2181, inlinedAt: !2187)
!2392 = !DILocation(line: 204, column: 91, scope: !2181, inlinedAt: !2187)
!2393 = !DILocation(line: 204, column: 107, scope: !2181, inlinedAt: !2187)
!2394 = !DILocation(line: 204, column: 106, scope: !2181, inlinedAt: !2187)
!2395 = !DILocation(line: 0, scope: !2350, inlinedAt: !2396)
!2396 = distinct !DILocation(line: 204, column: 72, scope: !2181, inlinedAt: !2187)
!2397 = !DILocation(line: 345, column: 13, scope: !2350, inlinedAt: !2396)
!2398 = !DILocation(line: 345, column: 26, scope: !2350, inlinedAt: !2396)
!2399 = !DILocation(line: 345, column: 22, scope: !2350, inlinedAt: !2396)
!2400 = !DILocation(line: 0, scope: !1965, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 204, column: 13, scope: !2181, inlinedAt: !2187)
!2402 = !DILocation(line: 112, column: 23, scope: !1965, inlinedAt: !2401)
!2403 = !DILocation(line: 0, scope: !1939, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 116, column: 9, scope: !1981, inlinedAt: !2401)
!2405 = !DILocation(line: 27, column: 19, scope: !1939, inlinedAt: !2404)
!2406 = !DILocation(line: 27, column: 22, scope: !1939, inlinedAt: !2404)
!2407 = !DILocation(line: 30, column: 9, scope: !1939, inlinedAt: !2404)
!2408 = !DILocation(line: 52, column: 26, scope: !2104, inlinedAt: !2404)
!2409 = !DILocation(line: 53, column: 17, scope: !2104, inlinedAt: !2404)
!2410 = !DILocation(line: 54, column: 13, scope: !2104, inlinedAt: !2404)
!2411 = !DILocation(line: 54, column: 26, scope: !2104, inlinedAt: !2404)
!2412 = !DILocation(line: 55, column: 17, scope: !2104, inlinedAt: !2404)
!2413 = !DILocation(line: 56, column: 13, scope: !2104, inlinedAt: !2404)
!2414 = !DILocation(line: 56, column: 26, scope: !2104, inlinedAt: !2404)
!2415 = !DILocation(line: 57, column: 13, scope: !2104, inlinedAt: !2404)
!2416 = !DILocation(line: 57, column: 26, scope: !2104, inlinedAt: !2404)
!2417 = !DILocation(line: 72, column: 5, scope: !2106, inlinedAt: !2404)
!2418 = !DILocation(line: 81, column: 32, scope: !1985, inlinedAt: !2404)
!2419 = !DILocation(line: 82, column: 17, scope: !1985, inlinedAt: !2404)
!2420 = !DILocation(line: 82, column: 32, scope: !1985, inlinedAt: !2404)
!2421 = !DILocation(line: 83, column: 17, scope: !1985, inlinedAt: !2404)
!2422 = !DILocation(line: 83, column: 32, scope: !1985, inlinedAt: !2404)
!2423 = !DILocation(line: 84, column: 17, scope: !1985, inlinedAt: !2404)
!2424 = !DILocation(line: 84, column: 32, scope: !1985, inlinedAt: !2404)
!2425 = !DILocation(line: 85, column: 19, scope: !1985, inlinedAt: !2404)
!2426 = !DILocation(line: 86, column: 19, scope: !1985, inlinedAt: !2404)
!2427 = !DILocation(line: 87, column: 13, scope: !1985, inlinedAt: !2404)
!2428 = distinct !{!2428, !2429, !2430, !2003, !2004}
!2429 = !DILocation(line: 79, column: 13, scope: !1986, inlinedAt: !2404)
!2430 = !DILocation(line: 87, column: 24, scope: !1986, inlinedAt: !2404)
!2431 = !DILocation(line: 186, column: 38, scope: !2175, inlinedAt: !2187)
!2432 = distinct !{!2432, !2272, !2433, !2003, !2004}
!2433 = !DILocation(line: 215, column: 5, scope: !2172, inlinedAt: !2187)
!2434 = !DILocation(line: 0, scope: !1757)
!2435 = !DILocation(line: 342, column: 19, scope: !1746)
!2436 = !DILocation(line: 342, column: 27, scope: !1746)
!2437 = !DILocation(line: 346, column: 20, scope: !1745)
!2438 = !DILocation(line: 346, column: 57, scope: !1745)
!2439 = !DILocation(line: 346, column: 55, scope: !1745)
!2440 = !DILocation(line: 0, scope: !1745)
!2441 = !DILocation(line: 347, column: 20, scope: !1745)
!2442 = !DILocation(line: 347, column: 57, scope: !1745)
!2443 = !DILocation(line: 347, column: 55, scope: !1745)
!2444 = !DILocation(line: 347, column: 17, scope: !1745)
!2445 = !DILocation(line: 348, column: 32, scope: !1745)
!2446 = !DILocation(line: 348, column: 20, scope: !1745)
!2447 = !DILocation(line: 348, column: 63, scope: !1745)
!2448 = !DILocation(line: 348, column: 51, scope: !1745)
!2449 = !DILocation(line: 348, column: 49, scope: !1745)
!2450 = !DILocation(line: 348, column: 17, scope: !1745)
!2451 = !DILocation(line: 349, column: 20, scope: !1745)
!2452 = !DILocation(line: 349, column: 51, scope: !1745)
!2453 = !DILocation(line: 349, column: 49, scope: !1745)
!2454 = !DILocation(line: 349, column: 17, scope: !1745)
!2455 = !DILocation(line: 350, column: 14, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !1745, file: !134, line: 350, column: 13)
!2457 = !DILocation(line: 350, column: 22, scope: !2456)
!2458 = !DILocation(line: 350, column: 31, scope: !2456)
!2459 = !DILocation(line: 350, column: 43, scope: !2456)
!2460 = !DILocation(line: 350, column: 13, scope: !1745)
!2461 = !DILocation(line: 352, column: 24, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2456, file: !134, line: 351, column: 9)
!2463 = !DILocation(line: 352, column: 61, scope: !2462)
!2464 = !DILocation(line: 352, column: 59, scope: !2462)
!2465 = !DILocation(line: 353, column: 24, scope: !2462)
!2466 = !DILocation(line: 353, column: 61, scope: !2462)
!2467 = !DILocation(line: 353, column: 59, scope: !2462)
!2468 = !DILocation(line: 353, column: 21, scope: !2462)
!2469 = !DILocation(line: 354, column: 24, scope: !2462)
!2470 = !DILocation(line: 354, column: 55, scope: !2462)
!2471 = !DILocation(line: 354, column: 53, scope: !2462)
!2472 = !DILocation(line: 354, column: 21, scope: !2462)
!2473 = !DILocation(line: 355, column: 24, scope: !2462)
!2474 = !DILocation(line: 355, column: 55, scope: !2462)
!2475 = !DILocation(line: 355, column: 53, scope: !2462)
!2476 = !DILocation(line: 355, column: 21, scope: !2462)
!2477 = !DILocation(line: 357, column: 14, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !1745, file: !134, line: 357, column: 13)
!2479 = !DILocation(line: 357, column: 22, scope: !2478)
!2480 = !DILocation(line: 357, column: 43, scope: !2478)
!2481 = !DILocation(line: 357, column: 13, scope: !1745)
!2482 = !DILocation(line: 368, column: 20, scope: !1745)
!2483 = !DILocation(line: 359, column: 24, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2478, file: !134, line: 358, column: 9)
!2485 = !DILocation(line: 359, column: 61, scope: !2484)
!2486 = !DILocation(line: 359, column: 59, scope: !2484)
!2487 = !DILocation(line: 360, column: 24, scope: !2484)
!2488 = !DILocation(line: 360, column: 61, scope: !2484)
!2489 = !DILocation(line: 360, column: 59, scope: !2484)
!2490 = !DILocation(line: 360, column: 21, scope: !2484)
!2491 = !DILocation(line: 361, column: 24, scope: !2484)
!2492 = !DILocation(line: 361, column: 61, scope: !2484)
!2493 = !DILocation(line: 361, column: 59, scope: !2484)
!2494 = !DILocation(line: 361, column: 21, scope: !2484)
!2495 = !DILocation(line: 362, column: 24, scope: !2484)
!2496 = !DILocation(line: 362, column: 61, scope: !2484)
!2497 = !DILocation(line: 362, column: 59, scope: !2484)
!2498 = !DILocation(line: 362, column: 21, scope: !2484)
!2499 = !DILocation(line: 363, column: 24, scope: !2484)
!2500 = !DILocation(line: 363, column: 55, scope: !2484)
!2501 = !DILocation(line: 363, column: 53, scope: !2484)
!2502 = !DILocation(line: 363, column: 21, scope: !2484)
!2503 = !DILocation(line: 364, column: 24, scope: !2484)
!2504 = !DILocation(line: 364, column: 55, scope: !2484)
!2505 = !DILocation(line: 364, column: 53, scope: !2484)
!2506 = !DILocation(line: 364, column: 21, scope: !2484)
!2507 = !DILocation(line: 365, column: 24, scope: !2484)
!2508 = !DILocation(line: 365, column: 55, scope: !2484)
!2509 = !DILocation(line: 365, column: 53, scope: !2484)
!2510 = !DILocation(line: 365, column: 21, scope: !2484)
!2511 = !DILocation(line: 366, column: 24, scope: !2484)
!2512 = !DILocation(line: 366, column: 55, scope: !2484)
!2513 = !DILocation(line: 366, column: 53, scope: !2484)
!2514 = !DILocation(line: 366, column: 21, scope: !2484)
!2515 = !DILocation(line: 369, column: 14, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !1745, file: !134, line: 369, column: 13)
!2517 = !DILocation(line: 374, column: 9, scope: !1737)
!2518 = !DILocation(line: 0, scope: !1748)
!2519 = !DILocation(line: 375, column: 9, scope: !1748)
!2520 = !DILocation(line: 377, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !134, line: 376, column: 9)
!2522 = distinct !DILexicalBlock(scope: !1748, file: !134, line: 375, column: 9)
!2523 = !DILocation(line: 378, column: 13, scope: !2521)
!2524 = !DILocation(line: 379, column: 13, scope: !2521)
!2525 = !DILocation(line: 380, column: 13, scope: !2521)
!2526 = !DILocation(line: 381, column: 44, scope: !2521)
!2527 = !DILocation(line: 381, column: 13, scope: !2521)
!2528 = !DILocation(line: 381, column: 42, scope: !2521)
!2529 = !DILocation(line: 382, column: 44, scope: !2521)
!2530 = !DILocation(line: 382, column: 13, scope: !2521)
!2531 = !DILocation(line: 382, column: 42, scope: !2521)
!2532 = !DILocation(line: 383, column: 44, scope: !2521)
!2533 = !DILocation(line: 383, column: 13, scope: !2521)
!2534 = !DILocation(line: 383, column: 42, scope: !2521)
!2535 = !DILocation(line: 384, column: 44, scope: !2521)
!2536 = !DILocation(line: 384, column: 13, scope: !2521)
!2537 = !DILocation(line: 384, column: 42, scope: !2521)
!2538 = distinct !{!2538, !2519, !2539, !2003, !2004}
!2539 = !DILocation(line: 386, column: 9, scope: !1748)
!2540 = !DILocation(line: 385, column: 42, scope: !2521)
!2541 = !{!1472, !1446, i64 25760}
!2542 = !DILocation(line: 389, column: 1, scope: !1737)
!2543 = distinct !DISubprogram(name: "x264_mb_predict_mv_ref16x16", scope: !134, file: !134, line: 392, type: !2544, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !137, !123, !123, !677, !690}
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2557, !2560, !2561, !2562, !2563, !2564, !2566, !2567, !2570, !2571, !2574}
!2547 = !DILocalVariable(name: "h", arg: 1, scope: !2543, file: !134, line: 392, type: !137)
!2548 = !DILocalVariable(name: "i_list", arg: 2, scope: !2543, file: !134, line: 392, type: !123)
!2549 = !DILocalVariable(name: "i_ref", arg: 3, scope: !2543, file: !134, line: 392, type: !123)
!2550 = !DILocalVariable(name: "mvc", arg: 4, scope: !2543, file: !134, line: 392, type: !677)
!2551 = !DILocalVariable(name: "i_mvc", arg: 5, scope: !2543, file: !134, line: 392, type: !690)
!2552 = !DILocalVariable(name: "mvr", scope: !2543, file: !134, line: 394, type: !677)
!2553 = !DILocalVariable(name: "i", scope: !2543, file: !134, line: 395, type: !123)
!2554 = !DILocalVariable(name: "lowres_mv", scope: !2555, file: !134, line: 412, type: !677)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !134, line: 411, column: 5)
!2556 = distinct !DILexicalBlock(scope: !2543, file: !134, line: 410, column: 9)
!2557 = !DILocalVariable(name: "l0", scope: !2558, file: !134, line: 440, type: !613)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !134, line: 439, column: 5)
!2559 = distinct !DILexicalBlock(scope: !2543, file: !134, line: 438, column: 9)
!2560 = !DILocalVariable(name: "fref", scope: !2558, file: !134, line: 441, type: !612)
!2561 = !DILocalVariable(name: "field", scope: !2558, file: !134, line: 442, type: !123)
!2562 = !DILocalVariable(name: "curpoc", scope: !2558, file: !134, line: 443, type: !123)
!2563 = !DILocalVariable(name: "refpoc", scope: !2558, file: !134, line: 444, type: !123)
!2564 = !DILocalVariable(name: "mb_index", scope: !2565, file: !134, line: 457, type: !123)
!2565 = distinct !DILexicalBlock(scope: !2558, file: !134, line: 457, column: 9)
!2566 = !DILocalVariable(name: "scale", scope: !2565, file: !134, line: 457, type: !123)
!2567 = !DILocalVariable(name: "mb_index", scope: !2568, file: !134, line: 459, type: !123)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !134, line: 459, column: 13)
!2569 = distinct !DILexicalBlock(scope: !2558, file: !134, line: 458, column: 13)
!2570 = !DILocalVariable(name: "scale", scope: !2568, file: !134, line: 459, type: !123)
!2571 = !DILocalVariable(name: "mb_index", scope: !2572, file: !134, line: 461, type: !123)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !134, line: 461, column: 13)
!2573 = distinct !DILexicalBlock(scope: !2558, file: !134, line: 460, column: 13)
!2574 = !DILocalVariable(name: "scale", scope: !2572, file: !134, line: 461, type: !123)
!2575 = !DILocation(line: 0, scope: !2543)
!2576 = !DILocation(line: 394, column: 25, scope: !2543)
!2577 = !DILocation(line: 404, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2543, file: !134, line: 404, column: 9)
!2579 = !{!1472, !1446, i64 7248}
!2580 = !DILocation(line: 404, column: 22, scope: !2578)
!2581 = !DILocation(line: 405, column: 9, scope: !2578)
!2582 = !DILocation(line: 405, column: 12, scope: !2578)
!2583 = !DILocation(line: 405, column: 52, scope: !2578)
!2584 = !DILocation(line: 404, column: 9, scope: !2543)
!2585 = !DILocation(line: 407, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !134, line: 407, column: 9)
!2587 = distinct !DILexicalBlock(scope: !2578, file: !134, line: 406, column: 5)
!2588 = !DILocation(line: 408, column: 5, scope: !2587)
!2589 = !DILocation(line: 410, column: 15, scope: !2556)
!2590 = !DILocation(line: 410, column: 20, scope: !2556)
!2591 = !DILocation(line: 410, column: 33, scope: !2556)
!2592 = !{!1472, !1446, i64 14672}
!2593 = !DILocation(line: 410, column: 23, scope: !2556)
!2594 = !DILocation(line: 410, column: 9, scope: !2543)
!2595 = !DILocation(line: 412, column: 35, scope: !2555)
!2596 = !DILocation(line: 0, scope: !2555)
!2597 = !{!1472, !1475, i64 14680}
!2598 = !DILocation(line: 412, column: 70, scope: !2555)
!2599 = !DILocation(line: 412, column: 67, scope: !2555)
!2600 = !DILocation(line: 412, column: 80, scope: !2555)
!2601 = !{!1827, !1446, i64 56}
!2602 = !DILocation(line: 412, column: 97, scope: !2555)
!2603 = !DILocation(line: 412, column: 104, scope: !2555)
!2604 = !DILocation(line: 412, column: 44, scope: !2555)
!2605 = !DILocation(line: 413, column: 53, scope: !2555)
!2606 = !DILocation(line: 413, column: 76, scope: !2555)
!2607 = !DILocation(line: 413, column: 87, scope: !2555)
!2608 = !DILocation(line: 413, column: 84, scope: !2555)
!2609 = !DILocation(line: 413, column: 97, scope: !2555)
!2610 = !DILocation(line: 413, column: 104, scope: !2555)
!2611 = !DILocation(line: 413, column: 44, scope: !2555)
!2612 = !DILocation(line: 414, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2555, file: !134, line: 414, column: 13)
!2614 = !DILocation(line: 414, column: 29, scope: !2613)
!2615 = !DILocation(line: 414, column: 13, scope: !2555)
!2616 = !DILocation(line: 416, column: 30, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !134, line: 415, column: 9)
!2618 = !DILocation(line: 416, column: 61, scope: !2617)
!2619 = !DILocation(line: 416, column: 64, scope: !2617)
!2620 = !DILocation(line: 416, column: 13, scope: !2617)
!2621 = !DILocation(line: 416, column: 27, scope: !2617)
!2622 = !DILocation(line: 417, column: 14, scope: !2617)
!2623 = !DILocation(line: 418, column: 9, scope: !2617)
!2624 = !DILocation(line: 422, column: 15, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2543, file: !134, line: 422, column: 9)
!2626 = !{!1472, !1446, i64 16576}
!2627 = !DILocation(line: 422, column: 33, scope: !2625)
!2628 = !DILocation(line: 422, column: 9, scope: !2543)
!2629 = !DILocation(line: 424, column: 9, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !134, line: 424, column: 9)
!2631 = distinct !DILexicalBlock(scope: !2625, file: !134, line: 423, column: 5)
!2632 = !{!1472, !1446, i64 16600}
!2633 = !DILocation(line: 426, column: 15, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2543, file: !134, line: 426, column: 9)
!2635 = !DILocation(line: 425, column: 5, scope: !2631)
!2636 = !DILocation(line: 426, column: 33, scope: !2634)
!2637 = !DILocation(line: 426, column: 9, scope: !2543)
!2638 = !DILocation(line: 428, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !134, line: 428, column: 9)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !134, line: 427, column: 5)
!2641 = !{!1472, !1446, i64 16604}
!2642 = !DILocation(line: 430, column: 19, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !134, line: 430, column: 13)
!2644 = !DILocation(line: 430, column: 37, scope: !2643)
!2645 = !DILocation(line: 430, column: 13, scope: !2640)
!2646 = !DILocation(line: 431, column: 13, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !134, line: 431, column: 13)
!2648 = !{!1472, !1446, i64 16608}
!2649 = !DILocation(line: 432, column: 19, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2640, file: !134, line: 432, column: 13)
!2651 = !DILocation(line: 0, scope: !2640)
!2652 = !DILocation(line: 432, column: 37, scope: !2650)
!2653 = !DILocation(line: 432, column: 13, scope: !2640)
!2654 = !DILocation(line: 433, column: 13, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2650, file: !134, line: 433, column: 13)
!2656 = !{!1472, !1446, i64 16612}
!2657 = !DILocation(line: 438, column: 12, scope: !2559)
!2658 = !DILocation(line: 438, column: 9, scope: !2559)
!2659 = !DILocation(line: 438, column: 22, scope: !2559)
!2660 = !DILocation(line: 438, column: 31, scope: !2559)
!2661 = !DILocation(line: 438, column: 9, scope: !2543)
!2662 = !DILocation(line: 0, scope: !2558)
!2663 = !DILocation(line: 441, column: 31, scope: !2558)
!2664 = !DILocation(line: 442, column: 27, scope: !2558)
!2665 = !DILocation(line: 442, column: 33, scope: !2558)
!2666 = !DILocation(line: 443, column: 25, scope: !2558)
!2667 = !{!1472, !1475, i64 14688}
!2668 = !DILocation(line: 443, column: 31, scope: !2558)
!2669 = !{!1827, !1446, i64 0}
!2670 = !DILocation(line: 443, column: 51, scope: !2558)
!2671 = !{!1472, !1446, i64 7288}
!2672 = !DILocation(line: 443, column: 44, scope: !2558)
!2673 = !DILocation(line: 444, column: 40, scope: !2558)
!2674 = !DILocation(line: 444, column: 32, scope: !2558)
!2675 = !DILocation(line: 444, column: 22, scope: !2558)
!2676 = !DILocation(line: 444, column: 50, scope: !2558)
!2677 = !DILocation(line: 445, column: 13, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2558, file: !134, line: 445, column: 13)
!2679 = !DILocation(line: 445, column: 27, scope: !2678)
!2680 = !DILocation(line: 457, column: 9, scope: !2565)
!2681 = !DILocation(line: 0, scope: !2565)
!2682 = !{!1472, !1446, i64 16436}
!2683 = !{!1827, !1475, i64 3568}
!2684 = !DILocation(line: 458, column: 19, scope: !2569)
!2685 = !DILocation(line: 458, column: 31, scope: !2569)
!2686 = !{!1472, !1475, i64 3200}
!2687 = !DILocation(line: 458, column: 36, scope: !2569)
!2688 = !{!2689, !1446, i64 1084}
!2689 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1446, i64 48, !1447, i64 52, !1446, i64 1076, !1446, i64 1080, !1446, i64 1084, !1446, i64 1088, !1446, i64 1092, !1446, i64 1096, !1446, i64 1100, !1446, i64 1104, !2690, i64 1108, !1446, i64 1124, !2691, i64 1128, !1446, i64 1296}
!2690 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12}
!2691 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44, !1446, i64 48, !1446, i64 52, !1446, i64 56, !1446, i64 60, !1446, i64 64, !1446, i64 68, !1446, i64 72, !1446, i64 76, !1446, i64 80, !2692, i64 84, !1446, i64 132, !1446, i64 136, !1446, i64 140, !1446, i64 144, !1446, i64 148, !1446, i64 152, !1446, i64 156, !1446, i64 160, !1446, i64 164}
!2692 = !{!"", !1446, i64 0, !1446, i64 4, !1446, i64 8, !1446, i64 12, !1446, i64 16, !1446, i64 20, !1446, i64 24, !1446, i64 28, !1446, i64 32, !1446, i64 36, !1446, i64 40, !1446, i64 44}
!2693 = !DILocation(line: 458, column: 46, scope: !2569)
!2694 = !DILocation(line: 458, column: 26, scope: !2569)
!2695 = !DILocation(line: 458, column: 13, scope: !2558)
!2696 = !DILocation(line: 459, column: 13, scope: !2568)
!2697 = !DILocation(line: 0, scope: !2568)
!2698 = !DILocation(line: 460, column: 36, scope: !2573)
!2699 = !{!2689, !1446, i64 1088}
!2700 = !DILocation(line: 460, column: 47, scope: !2573)
!2701 = !DILocation(line: 460, column: 26, scope: !2573)
!2702 = !DILocation(line: 460, column: 13, scope: !2558)
!2703 = !DILocation(line: 461, column: 13, scope: !2572)
!2704 = !DILocation(line: 0, scope: !2572)
!2705 = !DILocation(line: 465, column: 12, scope: !2543)
!2706 = !DILocation(line: 466, column: 1, scope: !2543)
