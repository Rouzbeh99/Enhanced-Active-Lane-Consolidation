; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/macroblock.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/macroblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
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
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }

@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16, !dbg !0
@x264_mb_type_fix = internal unnamed_addr constant [19 x i8] c"\00\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16, !dbg !175
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1, !dbg !180
@x264_size2pixel = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\00\06\04\00\00", [5 x i8] c"\00\05\03\00\01", [5 x i8] zeroinitializer, [5 x i8] c"\00\00\02\00\00"], align 16, !dbg !169
@weight_none = external constant [3 x %struct.x264_weight_t], align 16

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc_8x8(ptr noundef %h, i32 noundef %i8) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1483, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %i8, metadata !1484, metadata !DIExpression()), !dbg !1490
  %and = shl i32 %i8, 1, !dbg !1491
  %mul = and i32 %and, 2, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %mul, metadata !1485, metadata !DIExpression()), !dbg !1490
  %mul1 = and i32 %i8, -2, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %i8, metadata !1486, metadata !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value)), !dbg !1490
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !1493
  %0 = load i32, ptr %i_type, align 16, !dbg !1493, !tbaa !1494
  %cmp = icmp eq i32 %0, 0, !dbg !1524
  br i1 %cmp, label %if.then, label %if.else, !dbg !1525

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i8 to i64, !dbg !1526
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 %idxprom, !dbg !1526
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1526, !tbaa !1528
  switch i8 %1, label %if.end40 [
    i8 3, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
    i8 0, label %sw.bb7
  ], !dbg !1529

sw.bb:                                            ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1530
  br label %if.end40, !dbg !1532

sw.bb2:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 1), !dbg !1533
  %add3 = or i32 %i8, 1, !dbg !1534
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add3, i32 noundef 2, i32 noundef 1), !dbg !1535
  br label %if.end40, !dbg !1536

sw.bb4:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 2), !dbg !1537
  %add6 = or i32 %mul, 1, !dbg !1538
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add6, i32 noundef %mul1, i32 noundef 1, i32 noundef 2), !dbg !1539
  br label %if.end40, !dbg !1540

sw.bb7:                                           ; preds = %if.then
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 1, i32 noundef 1), !dbg !1541
  %add10 = or i32 %mul, 1, !dbg !1542
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %mul1, i32 noundef 1, i32 noundef 1), !dbg !1543
  %add13 = or i32 %i8, 1, !dbg !1544
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %add13, i32 noundef 1, i32 noundef 1), !dbg !1545
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %add10, i32 noundef %add13, i32 noundef 1, i32 noundef 1), !dbg !1546
  br label %if.end40, !dbg !1547

if.else:                                          ; preds = %entry
  %mul17 = shl nsw i32 %i8, 3, !dbg !1548
  %add16 = or i32 %mul, %mul17, !dbg !1549
  %add18 = or i32 %add16, 12, !dbg !1549
  call void @llvm.dbg.value(metadata i32 %add18, metadata !1487, metadata !DIExpression()), !dbg !1550
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !1551
  %idxprom21 = sext i32 %add18 to i64, !dbg !1553
  %arrayidx22 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom21, !dbg !1553
  %2 = load i8, ptr %arrayidx22, align 1, !dbg !1553, !tbaa !1528
  %cmp24 = icmp sgt i8 %2, -1, !dbg !1554
  br i1 %cmp24, label %if.then26, label %if.else38, !dbg !1555

if.then26:                                        ; preds = %if.else
  %arrayidx32 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %idxprom21, !dbg !1556
  %3 = load i8, ptr %arrayidx32, align 1, !dbg !1556, !tbaa !1528
  %cmp34 = icmp sgt i8 %3, -1, !dbg !1558
  br i1 %cmp34, label %if.then36, label %if.else37, !dbg !1559

if.then36:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1560
  br label %if.end40, !dbg !1560

if.else37:                                        ; preds = %if.then26
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1561
  br label %if.end40

if.else38:                                        ; preds = %if.else
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef %mul, i32 noundef %mul1, i32 noundef 2, i32 noundef 2), !dbg !1562
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %if.else37, %if.then36, %sw.bb, %sw.bb2, %sw.bb4, %sw.bb7, %if.then
  ret void, !dbg !1563
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_0xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1564 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1568, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %x, metadata !1569, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %y, metadata !1570, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %width, metadata !1571, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.value(metadata i32 %height, metadata !1572, metadata !DIExpression()), !dbg !1577
  %add = add nsw i32 %x, 12, !dbg !1578
  %mul = shl nsw i32 %y, 3, !dbg !1579
  %add1 = add nsw i32 %add, %mul, !dbg !1580
  call void @llvm.dbg.value(metadata i32 %add1, metadata !1573, metadata !DIExpression()), !dbg !1577
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !1581
  %idxprom = sext i32 %add1 to i64, !dbg !1582
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom, !dbg !1582
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1582, !tbaa !1528
  %conv = sext i8 %0 to i32, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1574, metadata !DIExpression()), !dbg !1577
  %mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !1583
  %arrayidx7 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, !dbg !1584
  %1 = load i16, ptr %arrayidx7, align 4, !dbg !1584, !tbaa !1585
  %conv9 = sext i16 %1 to i32, !dbg !1584
  %mv_min = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, !dbg !1587
  %2 = load i32, ptr %mv_min, align 8, !dbg !1588, !tbaa !1589
  %mv_max = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, !dbg !1590
  %3 = load i32, ptr %mv_max, align 16, !dbg !1591, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !1592, metadata !DIExpression()) #11, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %2, metadata !1597, metadata !DIExpression()) #11, !dbg !1599
  call void @llvm.dbg.value(metadata i32 %3, metadata !1598, metadata !DIExpression()) #11, !dbg !1599
  %cmp.i = icmp sgt i32 %2, %conv9, !dbg !1601
  %4 = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3) #11
  %spec.select.i = select i1 %cmp.i, i32 %2, i32 %4, !dbg !1602
  %mul14 = shl nsw i32 %x, 4, !dbg !1603
  %add15 = add nsw i32 %spec.select.i, %mul14, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %add15, metadata !1575, metadata !DIExpression()), !dbg !1577
  %arrayidx22 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, i64 1, !dbg !1605
  %5 = load i16, ptr %arrayidx22, align 2, !dbg !1605, !tbaa !1585
  %conv23 = sext i16 %5 to i32, !dbg !1605
  %arrayidx26 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, i64 1, !dbg !1606
  %6 = load i32, ptr %arrayidx26, align 4, !dbg !1606, !tbaa !1589
  %arrayidx29 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, i64 1, !dbg !1607
  %7 = load i32, ptr %arrayidx29, align 4, !dbg !1607, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv23, metadata !1592, metadata !DIExpression()) #11, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %6, metadata !1597, metadata !DIExpression()) #11, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %7, metadata !1598, metadata !DIExpression()) #11, !dbg !1608
  %cmp.i267 = icmp sgt i32 %6, %conv23, !dbg !1610
  %8 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %7) #11
  %spec.select.i268 = select i1 %cmp.i267, i32 %6, i32 %8, !dbg !1611
  %mul31 = shl nsw i32 %y, 4, !dbg !1612
  %add32 = add nsw i32 %spec.select.i268, %mul31, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %add32, metadata !1576, metadata !DIExpression()), !dbg !1577
  %mc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, !dbg !1614
  %9 = load ptr, ptr %mc, align 8, !dbg !1615, !tbaa !1616
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !1617
  %10 = load ptr, ptr %p_fdec, align 16, !dbg !1618, !tbaa !1619
  %mul36 = shl nsw i32 %y, 7, !dbg !1620
  %mul37 = shl nsw i32 %x, 2, !dbg !1621
  %add38 = add nsw i32 %mul36, %mul37, !dbg !1622
  %idxprom39 = sext i32 %add38 to i64, !dbg !1618
  %arrayidx40 = getelementptr inbounds i8, ptr %10, i64 %idxprom39, !dbg !1618
  %p_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, !dbg !1623
  %idxprom44 = sext i8 %0 to i64, !dbg !1624
  %arrayidx45 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom44, !dbg !1624
  %i_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, !dbg !1625
  %11 = load i32, ptr %i_stride, align 16, !dbg !1626, !tbaa !1589
  %mul49 = shl nsw i32 %width, 2, !dbg !1627
  %mul50 = shl nsw i32 %height, 2, !dbg !1628
  %arrayidx52 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %idxprom44, !dbg !1629
  tail call void %9(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %11, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull %arrayidx52) #11, !dbg !1630
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !1631
  %12 = load i32, ptr %b_interlaced, align 4, !dbg !1631, !tbaa !1633
  %and = and i32 %12, %conv, !dbg !1634
  %tobool.not = icmp eq i32 %and, 0, !dbg !1634
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1635

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !1636
  %13 = load i32, ptr %i_mb_y, align 4, !dbg !1636, !tbaa !1637
  %and56 = shl i32 %13, 2, !dbg !1638
  %mul57 = and i32 %and56, 4, !dbg !1638
  %sub = add i32 %add32, -2, !dbg !1639
  %add58 = add i32 %sub, %mul57, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %add58, metadata !1576, metadata !DIExpression()), !dbg !1577
  br label %if.end, !dbg !1641

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add58, %if.then ], [ %add32, %entry ], !dbg !1577
  call void @llvm.dbg.value(metadata i32 %mvy.0, metadata !1576, metadata !DIExpression()), !dbg !1577
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !1642
  %14 = load ptr, ptr %mc_chroma, align 8, !dbg !1642, !tbaa !1643
  %arrayidx63 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !1644
  %15 = load ptr, ptr %arrayidx63, align 8, !dbg !1644, !tbaa !1619
  %mul65 = shl nsw i32 %y, 6, !dbg !1645
  %mul66 = shl nsw i32 %x, 1, !dbg !1646
  %add67 = add nsw i32 %mul65, %mul66, !dbg !1647
  %idxprom68 = sext i32 %add67 to i64, !dbg !1644
  %arrayidx69 = getelementptr inbounds i8, ptr %15, i64 %idxprom68, !dbg !1644
  %arrayidx76 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom44, i64 4, !dbg !1648
  %16 = load ptr, ptr %arrayidx76, align 16, !dbg !1648, !tbaa !1619
  %arrayidx80 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 1, !dbg !1649
  %17 = load i32, ptr %arrayidx80, align 4, !dbg !1649, !tbaa !1589
  %mul81 = shl nsw i32 %width, 1, !dbg !1650
  %mul82 = shl nsw i32 %height, 1, !dbg !1651
  tail call void %14(ptr noundef %arrayidx69, i32 noundef 32, ptr noundef %16, i32 noundef %17, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #11, !dbg !1652
  %weightfn = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %idxprom44, i64 1, i32 5, !dbg !1653
  %18 = load ptr, ptr %weightfn, align 16, !dbg !1653, !tbaa !1655
  %tobool88.not = icmp eq ptr %18, null, !dbg !1657
  br i1 %tobool88.not, label %if.end124, label %if.then89, !dbg !1658

if.then89:                                        ; preds = %if.end
  %arrayidx87 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %idxprom44, i64 1, !dbg !1657
  %shr = ashr i32 %width, 1, !dbg !1659
  %19 = zext i32 %shr to i64
  %arrayidx97 = getelementptr inbounds ptr, ptr %18, i64 %19, !dbg !1660
  %20 = load ptr, ptr %arrayidx97, align 8, !dbg !1660, !tbaa !1619
  %21 = load ptr, ptr %arrayidx63, align 8, !dbg !1661, !tbaa !1619
  %arrayidx107 = getelementptr inbounds i8, ptr %21, i64 %idxprom68, !dbg !1661
  tail call void %20(ptr noundef %arrayidx107, i32 noundef 32, ptr noundef %arrayidx107, i32 noundef 32, ptr noundef nonnull %arrayidx87, i32 noundef %mul82) #11, !dbg !1660
  br label %if.end124, !dbg !1660

if.end124:                                        ; preds = %if.then89, %if.end
  %22 = load ptr, ptr %mc_chroma, align 8, !dbg !1662, !tbaa !1643
  %arrayidx130 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !1663
  %23 = load ptr, ptr %arrayidx130, align 16, !dbg !1663, !tbaa !1619
  %arrayidx136 = getelementptr inbounds i8, ptr %23, i64 %idxprom68, !dbg !1663
  %arrayidx143 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom44, i64 5, !dbg !1664
  %24 = load ptr, ptr %arrayidx143, align 8, !dbg !1664, !tbaa !1619
  %arrayidx147 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 2, !dbg !1665
  %25 = load i32, ptr %arrayidx147, align 8, !dbg !1665, !tbaa !1589
  tail call void %22(ptr noundef %arrayidx136, i32 noundef 32, ptr noundef %24, i32 noundef %25, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul81, i32 noundef %mul82) #11, !dbg !1666
  %weightfn155 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %idxprom44, i64 2, i32 5, !dbg !1667
  %26 = load ptr, ptr %weightfn155, align 16, !dbg !1667, !tbaa !1655
  %tobool156.not = icmp eq ptr %26, null, !dbg !1669
  br i1 %tobool156.not, label %if.end193, label %if.then157, !dbg !1670

if.then157:                                       ; preds = %if.end124
  %arrayidx154 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %idxprom44, i64 2, !dbg !1669
  %shr164 = ashr i32 %width, 1, !dbg !1671
  %27 = zext i32 %shr164 to i64
  %arrayidx166 = getelementptr inbounds ptr, ptr %26, i64 %27, !dbg !1672
  %28 = load ptr, ptr %arrayidx166, align 8, !dbg !1672, !tbaa !1619
  %29 = load ptr, ptr %arrayidx130, align 16, !dbg !1673, !tbaa !1619
  %arrayidx176 = getelementptr inbounds i8, ptr %29, i64 %idxprom68, !dbg !1673
  tail call void %28(ptr noundef %arrayidx176, i32 noundef 32, ptr noundef %arrayidx176, i32 noundef 32, ptr noundef nonnull %arrayidx154, i32 noundef %mul82) #11, !dbg !1672
  br label %if.end193, !dbg !1672

if.end193:                                        ; preds = %if.then157, %if.end124
  ret void, !dbg !1674
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_01xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1675 {
entry:
  %i_stride0 = alloca i32, align 4
  %i_stride1 = alloca i32, align 4
  %tmp0 = alloca [256 x i8], align 16
  %tmp1 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %h, metadata !1677, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %x, metadata !1678, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %y, metadata !1679, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %width, metadata !1680, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %height, metadata !1681, metadata !DIExpression()), !dbg !1697
  %add = add nsw i32 %x, 12, !dbg !1698
  %mul = shl nsw i32 %y, 3, !dbg !1699
  %add1 = add nsw i32 %add, %mul, !dbg !1700
  call void @llvm.dbg.value(metadata i32 %add1, metadata !1682, metadata !DIExpression()), !dbg !1697
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !1701
  %idxprom = sext i32 %add1 to i64, !dbg !1702
  %arrayidx2 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 %idxprom, !dbg !1702
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1702, !tbaa !1528
  %conv = sext i8 %0 to i32, !dbg !1702
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1683, metadata !DIExpression()), !dbg !1697
  %arrayidx8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %idxprom, !dbg !1703
  %1 = load i8, ptr %arrayidx8, align 1, !dbg !1703, !tbaa !1528
  %conv9 = sext i8 %1 to i32, !dbg !1703
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !1684, metadata !DIExpression()), !dbg !1697
  %bipred_weight = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 82, !dbg !1704
  %2 = load ptr, ptr %bipred_weight, align 16, !dbg !1704, !tbaa !1705
  %idxprom11 = sext i8 %0 to i64, !dbg !1706
  %idxprom13 = sext i8 %1 to i64, !dbg !1706
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %2, i64 %idxprom11, i64 %idxprom13, !dbg !1706
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !1706, !tbaa !1528
  %conv15 = sext i8 %3 to i32, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !1685, metadata !DIExpression()), !dbg !1697
  %mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !1707
  %arrayidx20 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, !dbg !1708
  %4 = load i16, ptr %arrayidx20, align 4, !dbg !1708, !tbaa !1585
  %conv22 = sext i16 %4 to i32, !dbg !1708
  %mv_min = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, !dbg !1709
  %5 = load i32, ptr %mv_min, align 8, !dbg !1710, !tbaa !1589
  %mv_max = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, !dbg !1711
  %6 = load i32, ptr %mv_max, align 16, !dbg !1712, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv22, metadata !1592, metadata !DIExpression()) #11, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression()) #11, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %6, metadata !1598, metadata !DIExpression()) #11, !dbg !1713
  %cmp.i = icmp sgt i32 %5, %conv22, !dbg !1715
  %7 = tail call i32 @llvm.smin.i32(i32 %conv22, i32 %6) #11
  %spec.select.i = select i1 %cmp.i, i32 %5, i32 %7, !dbg !1716
  %mul27 = shl nsw i32 %x, 4, !dbg !1717
  %add28 = add nsw i32 %spec.select.i, %mul27, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %add28, metadata !1686, metadata !DIExpression()), !dbg !1697
  %arrayidx34 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom, !dbg !1719
  %8 = load i16, ptr %arrayidx34, align 4, !dbg !1719, !tbaa !1585
  %conv36 = sext i16 %8 to i32, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %conv36, metadata !1592, metadata !DIExpression()) #11, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression()) #11, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %6, metadata !1598, metadata !DIExpression()) #11, !dbg !1720
  %cmp.i330 = icmp sgt i32 %5, %conv36, !dbg !1722
  %9 = tail call i32 @llvm.smin.i32(i32 %conv36, i32 %6) #11
  %spec.select.i331 = select i1 %cmp.i330, i32 %5, i32 %9, !dbg !1723
  %add45 = add nsw i32 %spec.select.i331, %mul27, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %add45, metadata !1687, metadata !DIExpression()), !dbg !1697
  %arrayidx52 = getelementptr inbounds [40 x [2 x i16]], ptr %mv, i64 0, i64 %idxprom, i64 1, !dbg !1725
  %10 = load i16, ptr %arrayidx52, align 2, !dbg !1725, !tbaa !1585
  %conv53 = sext i16 %10 to i32, !dbg !1725
  %arrayidx56 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, i64 1, !dbg !1726
  %11 = load i32, ptr %arrayidx56, align 4, !dbg !1726, !tbaa !1589
  %arrayidx59 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, i64 1, !dbg !1727
  %12 = load i32, ptr %arrayidx59, align 4, !dbg !1727, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv53, metadata !1592, metadata !DIExpression()) #11, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %11, metadata !1597, metadata !DIExpression()) #11, !dbg !1728
  call void @llvm.dbg.value(metadata i32 %12, metadata !1598, metadata !DIExpression()) #11, !dbg !1728
  %cmp.i332 = icmp sgt i32 %11, %conv53, !dbg !1730
  %13 = tail call i32 @llvm.smin.i32(i32 %conv53, i32 %12) #11
  %spec.select.i333 = select i1 %cmp.i332, i32 %11, i32 %13, !dbg !1731
  %mul61 = shl nsw i32 %y, 4, !dbg !1732
  %add62 = add nsw i32 %spec.select.i333, %mul61, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %add62, metadata !1688, metadata !DIExpression()), !dbg !1697
  %arrayidx69 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom, i64 1, !dbg !1734
  %14 = load i16, ptr %arrayidx69, align 2, !dbg !1734, !tbaa !1585
  %conv70 = sext i16 %14 to i32, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %conv70, metadata !1592, metadata !DIExpression()) #11, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %11, metadata !1597, metadata !DIExpression()) #11, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %12, metadata !1598, metadata !DIExpression()) #11, !dbg !1735
  %cmp.i334 = icmp sgt i32 %11, %conv70, !dbg !1737
  %15 = tail call i32 @llvm.smin.i32(i32 %conv70, i32 %12) #11
  %spec.select.i335 = select i1 %cmp.i334, i32 %11, i32 %15, !dbg !1738
  %add79 = add nsw i32 %spec.select.i335, %mul61, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %add79, metadata !1689, metadata !DIExpression()), !dbg !1697
  %16 = zext i32 %height to i64
  %17 = zext i32 %width to i64
  %arrayidx83 = getelementptr inbounds [5 x [5 x i8]], ptr @x264_size2pixel, i64 0, i64 %16, i64 %17, !dbg !1740
  %18 = load i8, ptr %arrayidx83, align 1, !dbg !1740, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %18, metadata !1690, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1697
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride0) #11, !dbg !1741
  call void @llvm.dbg.value(metadata i32 16, metadata !1691, metadata !DIExpression()), !dbg !1697
  store i32 16, ptr %i_stride0, align 4, !dbg !1742, !tbaa !1589
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_stride1) #11, !dbg !1741
  call void @llvm.dbg.value(metadata i32 16, metadata !1692, metadata !DIExpression()), !dbg !1697
  store i32 16, ptr %i_stride1, align 4, !dbg !1743, !tbaa !1589
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp0) #11, !dbg !1744
  call void @llvm.dbg.declare(metadata ptr %tmp0, metadata !1693, metadata !DIExpression()), !dbg !1744
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %tmp1) #11, !dbg !1745
  call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !1694, metadata !DIExpression()), !dbg !1745
  %get_ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 1, !dbg !1746
  %19 = load ptr, ptr %get_ref, align 8, !dbg !1746, !tbaa !1747
  %p_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, !dbg !1748
  %arrayidx88 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom11, !dbg !1749
  %i_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, !dbg !1750
  %20 = load i32, ptr %i_stride, align 16, !dbg !1751, !tbaa !1589
  %mul93 = shl nsw i32 %width, 2, !dbg !1752
  %mul94 = shl nsw i32 %height, 2, !dbg !1753
  call void @llvm.dbg.value(metadata ptr %i_stride0, metadata !1691, metadata !DIExpression(DW_OP_deref)), !dbg !1697
  %call95 = call ptr %19(ptr noundef nonnull %tmp0, ptr noundef nonnull %i_stride0, ptr noundef nonnull %arrayidx88, i32 noundef %20, i32 noundef %add28, i32 noundef %add62, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #11, !dbg !1754
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1695, metadata !DIExpression()), !dbg !1697
  %21 = load ptr, ptr %get_ref, align 8, !dbg !1755, !tbaa !1747
  %arrayidx104 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom13, !dbg !1756
  %22 = load i32, ptr %i_stride, align 16, !dbg !1757, !tbaa !1589
  call void @llvm.dbg.value(metadata ptr %i_stride1, metadata !1692, metadata !DIExpression(DW_OP_deref)), !dbg !1697
  %call112 = call ptr %21(ptr noundef nonnull %tmp1, ptr noundef nonnull %i_stride1, ptr noundef nonnull %arrayidx104, i32 noundef %22, i32 noundef %add45, i32 noundef %add79, i32 noundef %mul93, i32 noundef %mul94, ptr noundef nonnull @weight_none) #11, !dbg !1758
  call void @llvm.dbg.value(metadata ptr %call112, metadata !1696, metadata !DIExpression()), !dbg !1697
  %23 = zext i8 %18 to i64
  %arrayidx115 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 3, i64 %23, !dbg !1759
  %24 = load ptr, ptr %arrayidx115, align 8, !dbg !1759, !tbaa !1619
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !1760
  %25 = load ptr, ptr %p_fdec, align 16, !dbg !1761, !tbaa !1619
  %mul120 = shl nsw i32 %y, 7, !dbg !1762
  %mul121 = shl nsw i32 %x, 2, !dbg !1763
  %add122 = add nsw i32 %mul120, %mul121, !dbg !1764
  %idxprom123 = sext i32 %add122 to i64, !dbg !1761
  %arrayidx124 = getelementptr inbounds i8, ptr %25, i64 %idxprom123, !dbg !1761
  %26 = load i32, ptr %i_stride0, align 4, !dbg !1765, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %26, metadata !1691, metadata !DIExpression()), !dbg !1697
  %27 = load i32, ptr %i_stride1, align 4, !dbg !1766, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %27, metadata !1692, metadata !DIExpression()), !dbg !1697
  call void %24(ptr noundef %arrayidx124, i32 noundef 32, ptr noundef %call95, i32 noundef %26, ptr noundef %call112, i32 noundef %27, i32 noundef %conv15) #11, !dbg !1759
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !1767
  %28 = load i32, ptr %b_interlaced, align 4, !dbg !1767, !tbaa !1633
  %and = and i32 %28, %conv, !dbg !1769
  %tobool.not = icmp eq i32 %and, 0, !dbg !1769
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1770

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !1771
  %29 = load i32, ptr %i_mb_y, align 4, !dbg !1771, !tbaa !1637
  %and127 = shl i32 %29, 2, !dbg !1772
  %mul128 = and i32 %and127, 4, !dbg !1772
  %sub = add i32 %add62, -2, !dbg !1773
  %add129 = add i32 %sub, %mul128, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %add129, metadata !1688, metadata !DIExpression()), !dbg !1697
  br label %if.end, !dbg !1775

if.end:                                           ; preds = %if.then, %entry
  %mvy0.0 = phi i32 [ %add129, %if.then ], [ %add62, %entry ], !dbg !1697
  call void @llvm.dbg.value(metadata i32 %mvy0.0, metadata !1688, metadata !DIExpression()), !dbg !1697
  %and132 = and i32 %28, %conv9, !dbg !1776
  %tobool133.not = icmp eq i32 %and132, 0, !dbg !1776
  br i1 %tobool133.not, label %if.end141, label %if.then134, !dbg !1778

if.then134:                                       ; preds = %if.end
  %i_mb_y136 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !1779
  %30 = load i32, ptr %i_mb_y136, align 4, !dbg !1779, !tbaa !1637
  %and137 = shl i32 %30, 2, !dbg !1780
  %mul138 = and i32 %and137, 4, !dbg !1780
  %sub139 = add i32 %add79, -2, !dbg !1781
  %add140 = add i32 %sub139, %mul138, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %add140, metadata !1689, metadata !DIExpression()), !dbg !1697
  br label %if.end141, !dbg !1783

if.end141:                                        ; preds = %if.then134, %if.end
  %mvy1.0 = phi i32 [ %add140, %if.then134 ], [ %add79, %if.end ], !dbg !1697
  call void @llvm.dbg.value(metadata i8 %18, metadata !1690, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %mvy1.0, metadata !1689, metadata !DIExpression()), !dbg !1697
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !1784
  %31 = load ptr, ptr %mc_chroma, align 8, !dbg !1784, !tbaa !1643
  %arrayidx150 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom11, i64 4, !dbg !1785
  %32 = load ptr, ptr %arrayidx150, align 16, !dbg !1785, !tbaa !1619
  %arrayidx154 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 1, !dbg !1786
  %33 = load i32, ptr %arrayidx154, align 4, !dbg !1786, !tbaa !1589
  %mul155 = shl nsw i32 %width, 1, !dbg !1787
  %mul156 = shl nsw i32 %height, 1, !dbg !1788
  call void %31(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %32, i32 noundef %33, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #11, !dbg !1789
  %34 = load ptr, ptr %mc_chroma, align 8, !dbg !1790, !tbaa !1643
  %arrayidx166 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom13, i64 4, !dbg !1791
  %35 = load ptr, ptr %arrayidx166, align 16, !dbg !1791, !tbaa !1619
  %36 = load i32, ptr %arrayidx154, align 4, !dbg !1792, !tbaa !1589
  call void %34(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %35, i32 noundef %36, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #11, !dbg !1793
  %add175 = add nuw nsw i64 %23, 3, !dbg !1794
  %arrayidx177 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 3, i64 %add175, !dbg !1795
  %37 = load ptr, ptr %arrayidx177, align 8, !dbg !1795, !tbaa !1619
  %arrayidx181 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !1796
  %38 = load ptr, ptr %arrayidx181, align 8, !dbg !1796, !tbaa !1619
  %mul183 = shl nsw i32 %y, 6, !dbg !1797
  %mul184 = shl nsw i32 %x, 1, !dbg !1798
  %add185 = add nsw i32 %mul183, %mul184, !dbg !1799
  %idxprom186 = sext i32 %add185 to i64, !dbg !1796
  %arrayidx187 = getelementptr inbounds i8, ptr %38, i64 %idxprom186, !dbg !1796
  call void %37(ptr noundef %arrayidx187, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #11, !dbg !1795
  %39 = load ptr, ptr %mc_chroma, align 8, !dbg !1800, !tbaa !1643
  %arrayidx199 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %idxprom11, i64 5, !dbg !1801
  %40 = load ptr, ptr %arrayidx199, align 8, !dbg !1801, !tbaa !1619
  %arrayidx203 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 2, !dbg !1802
  %41 = load i32, ptr %arrayidx203, align 8, !dbg !1802, !tbaa !1589
  call void %39(ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef %40, i32 noundef %41, i32 noundef %add28, i32 noundef %mvy0.0, i32 noundef %mul155, i32 noundef %mul156) #11, !dbg !1803
  %42 = load ptr, ptr %mc_chroma, align 8, !dbg !1804, !tbaa !1643
  %arrayidx215 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom13, i64 5, !dbg !1805
  %43 = load ptr, ptr %arrayidx215, align 8, !dbg !1805, !tbaa !1619
  %44 = load i32, ptr %arrayidx203, align 8, !dbg !1806, !tbaa !1589
  call void %42(ptr noundef nonnull %tmp1, i32 noundef 16, ptr noundef %43, i32 noundef %44, i32 noundef %add45, i32 noundef %mvy1.0, i32 noundef %mul155, i32 noundef %mul156) #11, !dbg !1807
  %45 = load ptr, ptr %arrayidx177, align 8, !dbg !1808, !tbaa !1619
  %arrayidx230 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !1809
  %46 = load ptr, ptr %arrayidx230, align 16, !dbg !1809, !tbaa !1619
  %arrayidx236 = getelementptr inbounds i8, ptr %46, i64 %idxprom186, !dbg !1809
  call void %45(ptr noundef %arrayidx236, i32 noundef 32, ptr noundef nonnull %tmp0, i32 noundef 16, ptr noundef nonnull %tmp1, i32 noundef 16, i32 noundef %conv15) #11, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp1) #11, !dbg !1810
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %tmp0) #11, !dbg !1810
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride1) #11, !dbg !1810
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_stride0) #11, !dbg !1810
  ret void, !dbg !1810
}

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_mb_mc_1xywh(ptr noundef %h, i32 noundef %x, i32 noundef %y, i32 noundef %width, i32 noundef %height) unnamed_addr #0 !dbg !1811 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1813, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %x, metadata !1814, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %y, metadata !1815, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %width, metadata !1816, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i32 %height, metadata !1817, metadata !DIExpression()), !dbg !1822
  %add = add nsw i32 %x, 12, !dbg !1823
  %mul = shl nsw i32 %y, 3, !dbg !1824
  %add1 = add nsw i32 %add, %mul, !dbg !1825
  call void @llvm.dbg.value(metadata i32 %add1, metadata !1818, metadata !DIExpression()), !dbg !1822
  %idxprom = sext i32 %add1 to i64, !dbg !1826
  %arrayidx2 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 %idxprom, !dbg !1826
  %0 = load i8, ptr %arrayidx2, align 1, !dbg !1826, !tbaa !1528
  %conv = sext i8 %0 to i32, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1819, metadata !DIExpression()), !dbg !1822
  %arrayidx7 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom, !dbg !1827
  %1 = load i16, ptr %arrayidx7, align 4, !dbg !1827, !tbaa !1585
  %conv9 = sext i16 %1 to i32, !dbg !1827
  %mv_min = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, !dbg !1828
  %2 = load i32, ptr %mv_min, align 8, !dbg !1829, !tbaa !1589
  %mv_max = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, !dbg !1830
  %3 = load i32, ptr %mv_max, align 16, !dbg !1831, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv9, metadata !1592, metadata !DIExpression()) #11, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %2, metadata !1597, metadata !DIExpression()) #11, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %3, metadata !1598, metadata !DIExpression()) #11, !dbg !1832
  %cmp.i = icmp sgt i32 %2, %conv9, !dbg !1834
  %4 = tail call i32 @llvm.smin.i32(i32 %conv9, i32 %3) #11
  %spec.select.i = select i1 %cmp.i, i32 %2, i32 %4, !dbg !1835
  %mul14 = shl nsw i32 %x, 4, !dbg !1836
  %add15 = add nsw i32 %spec.select.i, %mul14, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %add15, metadata !1820, metadata !DIExpression()), !dbg !1822
  %arrayidx22 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 %idxprom, i64 1, !dbg !1838
  %5 = load i16, ptr %arrayidx22, align 2, !dbg !1838, !tbaa !1585
  %conv23 = sext i16 %5 to i32, !dbg !1838
  %arrayidx26 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 18, i64 1, !dbg !1839
  %6 = load i32, ptr %arrayidx26, align 4, !dbg !1839, !tbaa !1589
  %arrayidx29 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 19, i64 1, !dbg !1840
  %7 = load i32, ptr %arrayidx29, align 4, !dbg !1840, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %conv23, metadata !1592, metadata !DIExpression()) #11, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %6, metadata !1597, metadata !DIExpression()) #11, !dbg !1841
  call void @llvm.dbg.value(metadata i32 %7, metadata !1598, metadata !DIExpression()) #11, !dbg !1841
  %cmp.i147 = icmp sgt i32 %6, %conv23, !dbg !1843
  %8 = tail call i32 @llvm.smin.i32(i32 %conv23, i32 %7) #11
  %spec.select.i148 = select i1 %cmp.i147, i32 %6, i32 %8, !dbg !1844
  %mul31 = shl nsw i32 %y, 4, !dbg !1845
  %add32 = add nsw i32 %spec.select.i148, %mul31, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %add32, metadata !1821, metadata !DIExpression()), !dbg !1822
  %mc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, !dbg !1847
  %9 = load ptr, ptr %mc, align 8, !dbg !1848, !tbaa !1616
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !1849
  %10 = load ptr, ptr %p_fdec, align 16, !dbg !1850, !tbaa !1619
  %mul36 = shl nsw i32 %y, 7, !dbg !1851
  %mul37 = shl nsw i32 %x, 2, !dbg !1852
  %add38 = add nsw i32 %mul36, %mul37, !dbg !1853
  %idxprom39 = sext i32 %add38 to i64, !dbg !1850
  %arrayidx40 = getelementptr inbounds i8, ptr %10, i64 %idxprom39, !dbg !1850
  %idxprom44 = sext i8 %0 to i64, !dbg !1854
  %arrayidx45 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom44, !dbg !1854
  %i_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, !dbg !1855
  %11 = load i32, ptr %i_stride, align 16, !dbg !1856, !tbaa !1589
  %mul49 = shl nsw i32 %width, 2, !dbg !1857
  %mul50 = shl nsw i32 %height, 2, !dbg !1858
  tail call void %9(ptr noundef %arrayidx40, i32 noundef 32, ptr noundef nonnull %arrayidx45, i32 noundef %11, i32 noundef %add15, i32 noundef %add32, i32 noundef %mul49, i32 noundef %mul50, ptr noundef nonnull @weight_none) #11, !dbg !1859
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !1860
  %12 = load i32, ptr %b_interlaced, align 4, !dbg !1860, !tbaa !1633
  %and = and i32 %12, %conv, !dbg !1862
  %tobool.not = icmp eq i32 %and, 0, !dbg !1862
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1863

if.then:                                          ; preds = %entry
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !1864
  %13 = load i32, ptr %i_mb_y, align 4, !dbg !1864, !tbaa !1637
  %and53 = shl i32 %13, 2, !dbg !1865
  %mul54 = and i32 %and53, 4, !dbg !1865
  %sub = add i32 %add32, -2, !dbg !1866
  %add55 = add i32 %sub, %mul54, !dbg !1867
  call void @llvm.dbg.value(metadata i32 %add55, metadata !1821, metadata !DIExpression()), !dbg !1822
  br label %if.end, !dbg !1868

if.end:                                           ; preds = %if.then, %entry
  %mvy.0 = phi i32 [ %add55, %if.then ], [ %add32, %entry ], !dbg !1822
  call void @llvm.dbg.value(metadata i32 %mvy.0, metadata !1821, metadata !DIExpression()), !dbg !1822
  %mc_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 2, !dbg !1869
  %14 = load ptr, ptr %mc_chroma, align 8, !dbg !1869, !tbaa !1643
  %arrayidx60 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !1870
  %15 = load ptr, ptr %arrayidx60, align 8, !dbg !1870, !tbaa !1619
  %mul62 = shl nsw i32 %y, 6, !dbg !1871
  %mul63 = shl nsw i32 %x, 1, !dbg !1872
  %add64 = add nsw i32 %mul62, %mul63, !dbg !1873
  %idxprom65 = sext i32 %add64 to i64, !dbg !1870
  %arrayidx66 = getelementptr inbounds i8, ptr %15, i64 %idxprom65, !dbg !1870
  %arrayidx73 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom44, i64 4, !dbg !1874
  %16 = load ptr, ptr %arrayidx73, align 16, !dbg !1874, !tbaa !1619
  %arrayidx77 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 1, !dbg !1875
  %17 = load i32, ptr %arrayidx77, align 4, !dbg !1875, !tbaa !1589
  %mul78 = shl nsw i32 %width, 1, !dbg !1876
  %mul79 = shl nsw i32 %height, 1, !dbg !1877
  tail call void %14(ptr noundef %arrayidx66, i32 noundef 32, ptr noundef %16, i32 noundef %17, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #11, !dbg !1878
  %18 = load ptr, ptr %mc_chroma, align 8, !dbg !1879, !tbaa !1643
  %arrayidx85 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !1880
  %19 = load ptr, ptr %arrayidx85, align 16, !dbg !1880, !tbaa !1619
  %arrayidx91 = getelementptr inbounds i8, ptr %19, i64 %idxprom65, !dbg !1880
  %arrayidx98 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %idxprom44, i64 5, !dbg !1881
  %20 = load ptr, ptr %arrayidx98, align 8, !dbg !1881, !tbaa !1619
  %arrayidx102 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 2, !dbg !1882
  %21 = load i32, ptr %arrayidx102, align 8, !dbg !1882, !tbaa !1589
  tail call void %18(ptr noundef %arrayidx91, i32 noundef 32, ptr noundef %20, i32 noundef %21, i32 noundef %add15, i32 noundef %mvy.0, i32 noundef %mul78, i32 noundef %mul79) #11, !dbg !1883
  ret void, !dbg !1884
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_mb_mc(ptr noundef %h) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1889, metadata !DIExpression()), !dbg !1899
  %i_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !1900
  %0 = load i32, ptr %i_partition, align 4, !dbg !1900, !tbaa !1901
  %cmp = icmp eq i32 %0, 13, !dbg !1902
  br i1 %cmp, label %for.body, label %if.else, !dbg !1903

for.body:                                         ; preds = %entry, %for.body
  %i.0126 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.0126, metadata !1890, metadata !DIExpression()), !dbg !1904
  tail call void @x264_mb_mc_8x8(ptr noundef %h, i32 noundef %i.0126), !dbg !1905
  %inc = add nuw nsw i32 %i.0126, 1, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1890, metadata !DIExpression()), !dbg !1904
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !1908
  br i1 %exitcond.not, label %if.end94, label %for.body, !dbg !1909, !llvm.loop !1910

if.else:                                          ; preds = %entry
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !1914
  %arrayidx3 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 12, !dbg !1915
  %1 = load i8, ptr %arrayidx3, align 1, !dbg !1915, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %1, metadata !1894, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1916
  %arrayidx9 = getelementptr inbounds [40 x i8], ptr %ref, i64 0, i64 30, !dbg !1917
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !1917, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %2, metadata !1896, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1916
  %arrayidx16 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !1918
  %3 = load i8, ptr %arrayidx16, align 1, !dbg !1918, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %3, metadata !1897, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1916
  %arrayidx23 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30, !dbg !1919
  %4 = load i8, ptr %arrayidx23, align 1, !dbg !1919, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %4, metadata !1898, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1916
  switch i32 %0, label %if.end94 [
    i32 16, label %if.then29
    i32 14, label %if.then44
    i32 15, label %if.then70
  ], !dbg !1920

if.then29:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8 %1, metadata !1894, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1916
  %cmp30 = icmp sgt i8 %1, -1, !dbg !1921
  br i1 %cmp30, label %if.then32, label %if.else37, !dbg !1925

if.then32:                                        ; preds = %if.then29
  %cmp33 = icmp sgt i8 %3, -1, !dbg !1926
  br i1 %cmp33, label %if.then35, label %if.else36, !dbg !1928

if.then35:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1929
  br label %if.end94, !dbg !1929

if.else36:                                        ; preds = %if.then32
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1930
  br label %if.end94

if.else37:                                        ; preds = %if.then29
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 4), !dbg !1931
  br label %if.end94

if.then44:                                        ; preds = %if.else
  %cmp45 = icmp sgt i8 %1, -1, !dbg !1932
  br i1 %cmp45, label %if.then47, label %if.else53, !dbg !1936

if.then47:                                        ; preds = %if.then44
  %cmp48 = icmp sgt i8 %3, -1, !dbg !1937
  br i1 %cmp48, label %if.then50, label %if.else51, !dbg !1939

if.then50:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1940
  br label %if.end54, !dbg !1940

if.else51:                                        ; preds = %if.then47
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1941
  br label %if.end54

if.else53:                                        ; preds = %if.then44
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 4, i32 noundef 2), !dbg !1942
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.else51, %if.else53
  %cmp55 = icmp sgt i8 %2, -1, !dbg !1943
  br i1 %cmp55, label %if.then57, label %if.else63, !dbg !1945

if.then57:                                        ; preds = %if.end54
  %cmp58 = icmp sgt i8 %4, -1, !dbg !1946
  br i1 %cmp58, label %if.then60, label %if.else61, !dbg !1948

if.then60:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1949
  br label %if.end94, !dbg !1949

if.else61:                                        ; preds = %if.then57
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1950
  br label %if.end94

if.else63:                                        ; preds = %if.end54
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 2), !dbg !1951
  br label %if.end94

if.then70:                                        ; preds = %if.else
  %cmp71 = icmp sgt i8 %1, -1, !dbg !1952
  br i1 %cmp71, label %if.then73, label %if.else79, !dbg !1956

if.then73:                                        ; preds = %if.then70
  %cmp74 = icmp sgt i8 %3, -1, !dbg !1957
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !1959

if.then76:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1960
  br label %if.end80, !dbg !1960

if.else77:                                        ; preds = %if.then73
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1961
  br label %if.end80

if.else79:                                        ; preds = %if.then70
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1962
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %if.else77, %if.else79
  %cmp81 = icmp sgt i8 %2, -1, !dbg !1963
  br i1 %cmp81, label %if.then83, label %if.else89, !dbg !1965

if.then83:                                        ; preds = %if.end80
  %cmp84 = icmp sgt i8 %4, -1, !dbg !1966
  br i1 %cmp84, label %if.then86, label %if.else87, !dbg !1968

if.then86:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_01xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1969
  br label %if.end94, !dbg !1969

if.else87:                                        ; preds = %if.then83
  tail call fastcc void @x264_mb_mc_0xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1970
  br label %if.end94

if.else89:                                        ; preds = %if.end80
  tail call fastcc void @x264_mb_mc_1xywh(ptr noundef nonnull %h, i32 noundef 2, i32 noundef 0, i32 noundef 2, i32 noundef 4), !dbg !1971
  br label %if.end94

if.end94:                                         ; preds = %for.body, %if.then35, %if.else36, %if.else37, %if.then86, %if.else87, %if.else89, %if.else63, %if.else61, %if.then60, %if.else
  ret void, !dbg !1972
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_macroblock_cache_allocate(ptr noundef %h) local_unnamed_addr #0 !dbg !1973 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1977, metadata !DIExpression()), !dbg !1996
  %mb = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, !dbg !1997
  %0 = load i32, ptr %mb, align 16, !dbg !1998, !tbaa !1999
  call void @llvm.dbg.value(metadata i32 %0, metadata !1978, metadata !DIExpression()), !dbg !1996
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2000
  %1 = load ptr, ptr %sps, align 16, !dbg !2000, !tbaa !2001
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 16, !dbg !2002
  %2 = load i32, ptr %i_mb_width, align 4, !dbg !2002, !tbaa !2003
  %i_mb_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !2008
  store i32 %2, ptr %i_mb_stride, align 4, !dbg !2009, !tbaa !2010
  %mul = shl nsw i32 %2, 1, !dbg !2011
  %i_b8_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2, !dbg !2012
  store i32 %mul, ptr %i_b8_stride, align 8, !dbg !2013, !tbaa !2014
  %mul8 = shl nsw i32 %2, 2, !dbg !2015
  %i_b4_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3, !dbg !2016
  store i32 %mul8, ptr %i_b4_stride, align 4, !dbg !2017, !tbaa !2018
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 26, !dbg !2019
  %3 = load i32, ptr %b_interlaced, align 8, !dbg !2019, !tbaa !2020
  %b_interlaced11 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !2021
  store i32 %3, ptr %b_interlaced11, align 4, !dbg !2022, !tbaa !1633
  %call = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !2023
  %qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 40, !dbg !2023
  store ptr %call, ptr %qp, align 8, !dbg !2023, !tbaa !2025
  %tobool.not = icmp eq ptr %call, null, !dbg !2026
  br i1 %tobool.not, label %cleanup346, label %do.body17, !dbg !2023

do.body17:                                        ; preds = %entry
  %conv = sext i32 %0 to i64, !dbg !2023
  %mul19 = shl nsw i64 %conv, 1, !dbg !2028
  %conv20 = trunc i64 %mul19 to i32, !dbg !2028
  %call21 = tail call ptr @x264_malloc(i32 noundef %conv20) #11, !dbg !2028
  %cbp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 41, !dbg !2028
  store ptr %call21, ptr %cbp, align 16, !dbg !2028, !tbaa !2030
  %tobool25.not = icmp eq ptr %call21, null, !dbg !2031
  br i1 %tobool25.not, label %cleanup346, label %do.body30, !dbg !2028

do.body30:                                        ; preds = %do.body17
  %call34 = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !2033
  %skipbp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !2033
  store ptr %call34, ptr %skipbp, align 16, !dbg !2033, !tbaa !2035
  %tobool38.not = icmp eq ptr %call34, null, !dbg !2036
  br i1 %tobool38.not, label %cleanup346, label %do.body43, !dbg !2033

do.body43:                                        ; preds = %do.body30
  %call47 = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !2038
  %mb_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !2038
  store ptr %call47, ptr %mb_transform_size, align 8, !dbg !2038, !tbaa !2040
  %tobool51.not = icmp eq ptr %call47, null, !dbg !2041
  br i1 %tobool51.not, label %cleanup346, label %do.body56, !dbg !2038

do.body56:                                        ; preds = %do.body43
  %call60 = tail call ptr @x264_malloc(i32 noundef %conv20) #11, !dbg !2043
  %slice_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 51, !dbg !2043
  store ptr %call60, ptr %slice_table, align 16, !dbg !2043, !tbaa !2045
  %tobool64.not = icmp eq ptr %call60, null, !dbg !2046
  br i1 %tobool64.not, label %cleanup346, label %do.end68, !dbg !2043

do.end68:                                         ; preds = %do.body56
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call60, i8 -1, i64 %mul19, i1 false), !dbg !2048
  %mul74 = shl nsw i32 %0, 3, !dbg !2049
  %call78 = tail call ptr @x264_malloc(i32 noundef %mul74) #11, !dbg !2049
  %intra4x4_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 42, !dbg !2049
  store ptr %call78, ptr %intra4x4_pred_mode, align 8, !dbg !2049, !tbaa !2051
  %tobool82.not = icmp eq ptr %call78, null, !dbg !2052
  br i1 %tobool82.not, label %cleanup346, label %do.body87, !dbg !2049

do.body87:                                        ; preds = %do.end68
  %mul88 = mul nsw i32 %0, 24, !dbg !2054
  %call92 = tail call ptr @x264_malloc(i32 noundef %mul88) #11, !dbg !2054
  %non_zero_count = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !2054
  store ptr %call92, ptr %non_zero_count, align 16, !dbg !2054, !tbaa !2056
  %tobool96.not = icmp eq ptr %call92, null, !dbg !2057
  br i1 %tobool96.not, label %cleanup346, label %do.end100, !dbg !2054

do.end100:                                        ; preds = %do.body87
  %b_cabac = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 24, !dbg !2059
  %4 = load i32, ptr %b_cabac, align 16, !dbg !2059, !tbaa !2061
  %tobool102.not = icmp eq i32 %4, 0, !dbg !2062
  br i1 %tobool102.not, label %if.end147, label %do.body104, !dbg !2063

do.body104:                                       ; preds = %do.end100
  %call108 = tail call ptr @x264_malloc(i32 noundef %0) #11, !dbg !2064
  %chroma_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 44, !dbg !2064
  store ptr %call108, ptr %chroma_pred_mode, align 8, !dbg !2064, !tbaa !2067
  %tobool112.not = icmp eq ptr %call108, null, !dbg !2068
  br i1 %tobool112.not, label %cleanup346, label %do.body117, !dbg !2064

do.body117:                                       ; preds = %do.body104
  %mul119 = shl i32 %0, 4, !dbg !2070
  %call121 = tail call ptr @x264_malloc(i32 noundef %mul119) #11, !dbg !2070
  %mvd = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, !dbg !2070
  store ptr %call121, ptr %mvd, align 16, !dbg !2070, !tbaa !1619
  %tobool126.not = icmp eq ptr %call121, null, !dbg !2072
  br i1 %tobool126.not, label %cleanup346, label %do.body131, !dbg !2070

do.body131:                                       ; preds = %do.body117
  %call135 = tail call ptr @x264_malloc(i32 noundef %mul119) #11, !dbg !2074
  %arrayidx138 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, i64 1, !dbg !2074
  store ptr %call135, ptr %arrayidx138, align 8, !dbg !2074, !tbaa !1619
  %tobool142.not = icmp eq ptr %call135, null, !dbg !2076
  br i1 %tobool142.not, label %cleanup346, label %if.end147, !dbg !2074

if.end147:                                        ; preds = %do.body131, %do.end100
  call void @llvm.dbg.value(metadata i32 0, metadata !1979, metadata !DIExpression()), !dbg !2078
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 3
  call void @llvm.dbg.value(metadata i32 0, metadata !1979, metadata !DIExpression()), !dbg !2078
  %i_bframe_pyramid161 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 20
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 12
  %mul214 = shl i32 %0, 2
  br label %for.body, !dbg !2079

for.body:                                         ; preds = %if.end147, %for.inc236
  %tobool149.not = phi i1 [ true, %if.end147 ], [ false, %for.inc236 ]
  %indvars.iv461 = phi i64 [ 0, %if.end147 ], [ 1, %for.inc236 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv461, metadata !1979, metadata !DIExpression()), !dbg !2078
  br i1 %tobool149.not, label %cond.end, label %cond.true159, !dbg !2080

cond.end:                                         ; preds = %for.body
  %5 = load i32, ptr %i_frame_reference, align 16, !dbg !2080, !tbaa !2081
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 16), !dbg !2080
  br label %cond.end173, !dbg !2080

cond.true159:                                     ; preds = %for.body
  %7 = load i32, ptr %i_bframe_pyramid161, align 16, !dbg !2080, !tbaa !2082
  %tobool162.not = icmp eq i32 %7, 0, !dbg !2080
  %add167 = select i1 %tobool162.not, i32 1, i32 2, !dbg !2080
  br label %cond.end173, !dbg !2080

cond.end173:                                      ; preds = %cond.end, %cond.true159
  %cond174 = phi i32 [ %add167, %cond.true159 ], [ %6, %cond.end ], !dbg !2080
  %8 = load i32, ptr %b_interlaced, align 8, !dbg !2083, !tbaa !2020
  %shl = shl i32 %cond174, %8, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1981, metadata !DIExpression()), !dbg !2085
  %9 = load i32, ptr %i_weighted_pred, align 4, !dbg !2086, !tbaa !2088
  switch i32 %9, label %if.end204 [
    i32 2, label %if.then180
    i32 1, label %if.then194
  ], !dbg !2089

if.then180:                                       ; preds = %cond.end173
  %cmp182 = icmp sgt i32 %shl, 14, !dbg !2090
  %add181 = add nsw i32 %shl, 2
  %spec.select = select i1 %cmp182, i32 16, i32 %add181, !dbg !2090
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1981, metadata !DIExpression()), !dbg !2085
  br label %if.end204, !dbg !2091

if.then194:                                       ; preds = %cond.end173
  %add195 = add nsw i32 %shl, 1
  %cmp196.inv = icmp slt i32 %shl, 16, !dbg !2092
  %spec.select443 = select i1 %cmp196.inv, i32 %add195, i32 16, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %spec.select443, metadata !1981, metadata !DIExpression()), !dbg !2085
  br label %if.end204, !dbg !2094

if.end204:                                        ; preds = %cond.end173, %if.then194, %if.then180
  %i_refs.0 = phi i32 [ %spec.select, %if.then180 ], [ %spec.select443, %if.then194 ], [ %shl, %cond.end173 ], !dbg !2085
  call void @llvm.dbg.value(metadata i32 %i_refs.0, metadata !1981, metadata !DIExpression()), !dbg !2085
  %lnot.ext207 = zext i1 %tobool149.not to i32, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %lnot.ext207, metadata !1984, metadata !DIExpression()), !dbg !2096
  %cmp209452 = icmp sgt i32 %i_refs.0, %lnot.ext207, !dbg !2097
  br i1 %cmp209452, label %do.body213.lr.ph, label %for.inc236, !dbg !2099

do.body213.lr.ph:                                 ; preds = %if.end204
  %10 = zext i1 %tobool149.not to i64, !dbg !2099
  %wide.trip.count = zext i32 %i_refs.0 to i64, !dbg !2097
  br label %do.body213, !dbg !2099

for.cond208:                                      ; preds = %do.body213
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1984, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 undef, metadata !1984, metadata !DIExpression()), !dbg !2096
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2097
  br i1 %exitcond.not, label %for.inc236, label %do.body213, !dbg !2099, !llvm.loop !2101

do.body213:                                       ; preds = %do.body213.lr.ph, %for.cond208
  %indvars.iv = phi i64 [ %10, %do.body213.lr.ph ], [ %indvars.iv.next, %for.cond208 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1984, metadata !DIExpression()), !dbg !2096
  %call218 = tail call ptr @x264_malloc(i32 noundef %mul214) #11, !dbg !2103
  %arrayidx222 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 48, i64 %indvars.iv461, i64 %indvars.iv, !dbg !2103
  store ptr %call218, ptr %arrayidx222, align 8, !dbg !2103, !tbaa !1619
  %tobool229.not = icmp eq ptr %call218, null, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1984, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2096
  br i1 %tobool229.not, label %cleanup346, label %for.cond208, !dbg !2103

for.inc236:                                       ; preds = %for.cond208, %if.end204
  call void @llvm.dbg.value(metadata i64 %indvars.iv461, metadata !1979, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2078
  br i1 %tobool149.not, label %for.body, label %for.end240, !dbg !2079, !llvm.loop !2107

for.end240:                                       ; preds = %for.inc236
  %11 = load i32, ptr %i_weighted_pred, align 4, !dbg !2109, !tbaa !2088
  %tobool244.not = icmp eq i32 %11, 0, !dbg !2110
  br i1 %tobool244.not, label %cleanup346, label %if.then245, !dbg !2111

if.then245:                                       ; preds = %for.end240
  %12 = load i32, ptr %b_interlaced, align 8, !dbg !2112, !tbaa !2020
  %shl248 = shl i32 32, %12, !dbg !2113
  call void @llvm.dbg.value(metadata i32 %shl248, metadata !1986, metadata !DIExpression()), !dbg !2114
  %13 = load i32, ptr %h, align 16, !dbg !2115, !tbaa !2116
  %and = and i32 %13, 2, !dbg !2117
  %tobool250.not = icmp eq i32 %and, 0, !dbg !2117
  br i1 %tobool250.not, label %cond.false252, label %cond.end258, !dbg !2118

cond.false252:                                    ; preds = %if.then245
  %and255 = and i32 %13, 1, !dbg !2119
  %tobool256.not = icmp eq i32 %and255, 0, !dbg !2120
  %cond257 = select i1 %tobool256.not, i32 16, i32 32, !dbg !2120
  br label %cond.end258, !dbg !2118

cond.end258:                                      ; preds = %if.then245, %cond.false252
  %cond259 = phi i32 [ %cond257, %cond.false252 ], [ 64, %if.then245 ], !dbg !2118
  call void @llvm.dbg.value(metadata i32 %cond259, metadata !1989, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !1991, metadata !DIExpression()), !dbg !2114
  %cmp263 = icmp eq i32 %11, -1, !dbg !2121
  br i1 %cmp263, label %if.then265, label %if.else288, !dbg !2123

if.then265:                                       ; preds = %cond.end258
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 4, !dbg !2124
  %14 = load i32, ptr %i_sync_lookahead, align 16, !dbg !2124, !tbaa !2127
  %tobool267.not = icmp eq i32 %14, 0, !dbg !2128
  br i1 %tobool267.not, label %if.then273, label %lor.lhs.false, !dbg !2129

lor.lhs.false:                                    ; preds = %if.then265
  %i_threads = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 1, !dbg !2130
  %15 = load i32, ptr %i_threads, align 4, !dbg !2130, !tbaa !2131
  %idxprom269 = sext i32 %15 to i64, !dbg !2132
  %arrayidx270 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %idxprom269, !dbg !2132
  %16 = load ptr, ptr %arrayidx270, align 8, !dbg !2132, !tbaa !1619
  %cmp271 = icmp eq ptr %16, %h, !dbg !2133
  br i1 %cmp271, label %if.then273, label %cleanup346, !dbg !2134

if.then273:                                       ; preds = %lor.lhs.false, %if.then265
  %17 = load ptr, ptr %sps, align 16, !dbg !2135, !tbaa !2001
  %i_mb_width275 = getelementptr inbounds %struct.x264_sps_t, ptr %17, i64 0, i32 16, !dbg !2135
  %18 = load i32, ptr %i_mb_width275, align 4, !dbg !2135, !tbaa !2003
  %mul276 = shl nsw i32 %18, 3, !dbg !2135
  %sub = add nuw nsw i32 %cond259, 63, !dbg !2135
  %add278 = add i32 %sub, %mul276, !dbg !2135
  %neg = sub nsw i32 0, %cond259, !dbg !2135
  %and280 = and i32 %add278, %neg, !dbg !2135
  call void @llvm.dbg.value(metadata i32 %and280, metadata !1990, metadata !DIExpression()), !dbg !2114
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, ptr %17, i64 0, i32 17, !dbg !2137
  %19 = load i32, ptr %i_mb_height, align 4, !dbg !2137, !tbaa !2138
  %mul282 = shl nsw i32 %19, 3, !dbg !2139
  %mul283 = shl nsw i32 %shl248, 1, !dbg !2140
  %add284 = add nsw i32 %mul282, %mul283, !dbg !2141
  %mul285 = mul nsw i32 %and280, %add284, !dbg !2142
  call void @llvm.dbg.value(metadata i32 %mul285, metadata !1991, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 1, metadata !1992, metadata !DIExpression()), !dbg !2114
  br label %do.body319.preheader, !dbg !2143

if.else288:                                       ; preds = %cond.end258
  %20 = load ptr, ptr %sps, align 16, !dbg !2144, !tbaa !2001
  %i_mb_width290 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 16, !dbg !2144
  %21 = load i32, ptr %i_mb_width290, align 4, !dbg !2144, !tbaa !2003
  %mul291 = shl nsw i32 %21, 4, !dbg !2144
  %sub293 = add nuw nsw i32 %cond259, 63, !dbg !2144
  %add294 = add i32 %sub293, %mul291, !dbg !2144
  %neg296 = sub nsw i32 0, %cond259, !dbg !2144
  %and297 = and i32 %add294, %neg296, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %and297, metadata !1990, metadata !DIExpression()), !dbg !2114
  %i_mb_height299 = getelementptr inbounds %struct.x264_sps_t, ptr %20, i64 0, i32 17, !dbg !2146
  %22 = load i32, ptr %i_mb_height299, align 4, !dbg !2146, !tbaa !2138
  %mul300 = shl nsw i32 %22, 4, !dbg !2147
  %mul301 = shl nsw i32 %shl248, 1, !dbg !2148
  %add302 = add nsw i32 %mul300, %mul301, !dbg !2149
  %mul303 = mul nsw i32 %and297, %add302, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %mul303, metadata !1991, metadata !DIExpression()), !dbg !2114
  %cmp307 = icmp eq i32 %11, 2, !dbg !2151
  %. = select i1 %cmp307, i64 2, i64 1
  br label %do.body319.preheader

do.body319.preheader:                             ; preds = %if.then273, %if.else288
  %luma_plane_size.0.ph = phi i32 [ %mul303, %if.else288 ], [ %mul285, %if.then273 ]
  %numweightbuf.0.ph = phi i64 [ %., %if.else288 ], [ 1, %if.then273 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1992, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 undef, metadata !1991, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 0, metadata !1993, metadata !DIExpression()), !dbg !2153
  br label %do.body319, !dbg !2154

for.cond314:                                      ; preds = %do.body319
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %indvars.iv464, metadata !1993, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2153
  %exitcond468.not = icmp eq i64 %indvars.iv.next465, %numweightbuf.0.ph, !dbg !2157
  br i1 %exitcond468.not, label %cleanup346, label %do.body319, !dbg !2154, !llvm.loop !2158

do.body319:                                       ; preds = %do.body319.preheader, %for.cond314
  %indvars.iv464 = phi i64 [ 0, %do.body319.preheader ], [ %indvars.iv.next465, %for.cond314 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv464, metadata !1993, metadata !DIExpression()), !dbg !2153
  %call320 = tail call ptr @x264_malloc(i32 noundef %luma_plane_size.0.ph) #11, !dbg !2160
  %arrayidx323 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 52, i64 %indvars.iv464, !dbg !2160
  store ptr %call320, ptr %arrayidx323, align 8, !dbg !2160, !tbaa !1619
  %tobool328.not = icmp eq ptr %call320, null, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %indvars.iv464, metadata !1993, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2153
  br i1 %tobool328.not, label %cleanup346, label %for.cond314, !dbg !2160

cleanup346:                                       ; preds = %do.body213, %do.body319, %for.cond314, %lor.lhs.false, %entry, %do.body17, %do.body30, %do.body43, %do.body56, %do.end68, %do.body87, %do.body104, %do.body117, %do.body131, %for.end240
  %retval.0 = phi i32 [ 0, %for.end240 ], [ -1, %do.body131 ], [ -1, %do.body117 ], [ -1, %do.body104 ], [ -1, %do.body87 ], [ -1, %do.end68 ], [ -1, %do.body56 ], [ -1, %do.body43 ], [ -1, %do.body30 ], [ -1, %do.body17 ], [ -1, %entry ], [ 0, %lor.lhs.false ], [ -1, %do.body319 ], [ 0, %for.cond314 ], [ -1, %do.body213 ]
  ret i32 %retval.0, !dbg !2164
}

declare !dbg !2165 ptr @x264_malloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_free(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !2169 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2171, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i32 0, metadata !2172, metadata !DIExpression()), !dbg !2180
  br label %for.body, !dbg !2181

for.body:                                         ; preds = %entry, %for.cond.cleanup3
  %tobool.not = phi i1 [ true, %entry ], [ false, %for.cond.cleanup3 ]
  %indvars.iv58 = phi i64 [ 0, %entry ], [ 1, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv58, metadata !2172, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  %0 = zext i1 %tobool.not to i64, !dbg !2183
  br label %for.body4, !dbg !2183

for.cond.cleanup3:                                ; preds = %for.body4
  call void @llvm.dbg.value(metadata i64 %indvars.iv58, metadata !2172, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2180
  br i1 %tobool.not, label %for.body, label %for.body14, !dbg !2181, !llvm.loop !2184

for.body4:                                        ; preds = %for.body, %for.body4
  %indvars.iv = phi i64 [ %0, %for.body ], [ %indvars.iv.next, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2174, metadata !DIExpression()), !dbg !2182
  %arrayidx6 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 48, i64 %indvars.iv58, i64 %indvars.iv, !dbg !2186
  %1 = load ptr, ptr %arrayidx6, align 8, !dbg !2186, !tbaa !1619
  tail call void @x264_free(ptr noundef %1) #11, !dbg !2188
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2174, metadata !DIExpression()), !dbg !2182
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32, !dbg !2190
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4, !dbg !2183, !llvm.loop !2191

for.cond.cleanup13:                               ; preds = %for.body14
  %b_cabac = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 24, !dbg !2193
  %2 = load i32, ptr %b_cabac, align 16, !dbg !2193, !tbaa !2061
  %tobool21.not = icmp eq i32 %2, 0, !dbg !2195
  br i1 %tobool21.not, label %if.end, label %if.then, !dbg !2196

for.body14:                                       ; preds = %for.cond.cleanup3, %for.body14
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body14 ], [ 0, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv61, metadata !2177, metadata !DIExpression()), !dbg !2197
  %arrayidx17 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 52, i64 %indvars.iv61, !dbg !2198
  %3 = load ptr, ptr %arrayidx17, align 8, !dbg !2198, !tbaa !1619
  tail call void @x264_free(ptr noundef %3) #11, !dbg !2200
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next62, metadata !2177, metadata !DIExpression()), !dbg !2197
  %exitcond64.not = icmp eq i64 %indvars.iv.next62, 16, !dbg !2202
  br i1 %exitcond64.not, label %for.cond.cleanup13, label %for.body14, !dbg !2203, !llvm.loop !2204

if.then:                                          ; preds = %for.cond.cleanup13
  %chroma_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 44, !dbg !2206
  %4 = load ptr, ptr %chroma_pred_mode, align 8, !dbg !2206, !tbaa !2067
  tail call void @x264_free(ptr noundef %4) #11, !dbg !2208
  %mvd = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, !dbg !2209
  %5 = load ptr, ptr %mvd, align 16, !dbg !2210, !tbaa !1619
  tail call void @x264_free(ptr noundef %5) #11, !dbg !2211
  %arrayidx27 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, i64 1, !dbg !2212
  %6 = load ptr, ptr %arrayidx27, align 8, !dbg !2212, !tbaa !1619
  tail call void @x264_free(ptr noundef %6) #11, !dbg !2213
  br label %if.end, !dbg !2214

if.end:                                           ; preds = %if.then, %for.cond.cleanup13
  %slice_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 51, !dbg !2215
  %7 = load ptr, ptr %slice_table, align 16, !dbg !2215, !tbaa !2045
  tail call void @x264_free(ptr noundef %7) #11, !dbg !2216
  %intra4x4_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 42, !dbg !2217
  %8 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !2217, !tbaa !2051
  tail call void @x264_free(ptr noundef %8) #11, !dbg !2218
  %non_zero_count = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !2219
  %9 = load ptr, ptr %non_zero_count, align 16, !dbg !2219, !tbaa !2056
  tail call void @x264_free(ptr noundef %9) #11, !dbg !2220
  %mb_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !2221
  %10 = load ptr, ptr %mb_transform_size, align 8, !dbg !2221, !tbaa !2040
  tail call void @x264_free(ptr noundef %10) #11, !dbg !2222
  %skipbp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !2223
  %11 = load ptr, ptr %skipbp, align 16, !dbg !2223, !tbaa !2035
  tail call void @x264_free(ptr noundef %11) #11, !dbg !2224
  %cbp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 41, !dbg !2225
  %12 = load ptr, ptr %cbp, align 16, !dbg !2225, !tbaa !2030
  tail call void @x264_free(ptr noundef %12) #11, !dbg !2226
  %qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 40, !dbg !2227
  %13 = load ptr, ptr %qp, align 8, !dbg !2227, !tbaa !2025
  tail call void @x264_free(ptr noundef %13) #11, !dbg !2228
  ret void, !dbg !2229
}

declare !dbg !2230 void @x264_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_macroblock_thread_allocate(ptr nocapture noundef %h, i32 noundef %b_lookahead) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2235, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %b_lookahead, metadata !2236, metadata !DIExpression()), !dbg !2254
  %tobool.not = icmp eq i32 %b_lookahead, 0, !dbg !2255
  br i1 %tobool.not, label %for.cond.preheader, label %if.end165, !dbg !2256

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 26
  call void @llvm.dbg.value(metadata i32 0, metadata !2237, metadata !DIExpression()), !dbg !2257
  %0 = load i32, ptr %b_interlaced, align 8, !dbg !2258, !tbaa !2020
  %cmp.not264 = icmp slt i32 %0, 0, !dbg !2259
  br i1 %cmp.not264, label %if.then63, label %for.cond1.preheader.lr.ph, !dbg !2260

for.cond1.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24
  br label %for.cond1.preheader, !dbg !2260

for.cond:                                         ; preds = %do.body39
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next269, metadata !2237, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %indvars.iv268, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2257
  %1 = load i32, ptr %b_interlaced, align 8, !dbg !2258, !tbaa !2020
  %2 = sext i32 %1 to i64, !dbg !2259
  %cmp.not.not = icmp slt i64 %indvars.iv268, %2, !dbg !2259
  br i1 %cmp.not.not, label %for.cond1.preheader, label %if.then63, !dbg !2260, !llvm.loop !2262

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.cond
  %indvars.iv268 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next269, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv268, metadata !2237, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2240, metadata !DIExpression()), !dbg !2264
  br label %do.body5, !dbg !2265

do.body5:                                         ; preds = %for.cond1.preheader, %do.end
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %do.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2240, metadata !DIExpression()), !dbg !2264
  %3 = load ptr, ptr %sps, align 16, !dbg !2266, !tbaa !2001
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %3, i64 0, i32 16, !dbg !2266
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !2266, !tbaa !2003
  %mul = shl nsw i32 %4, 4, !dbg !2266
  %add = add nsw i32 %mul, 32, !dbg !2266
  %tobool6 = icmp ne i64 %indvars.iv, 0, !dbg !2266
  %lnot.ext = zext i1 %tobool6 to i32, !dbg !2266
  %shr = ashr i32 %add, %lnot.ext, !dbg !2266
  %call = tail call ptr @x264_malloc(i32 noundef %shr) #11, !dbg !2266
  %arrayidx9 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 62, i64 %indvars.iv268, i64 %indvars.iv, !dbg !2266
  store ptr %call, ptr %arrayidx9, align 8, !dbg !2266, !tbaa !1619
  %tobool15.not = icmp eq ptr %call, null, !dbg !2271
  br i1 %tobool15.not, label %fail, label %do.end, !dbg !2266

do.end:                                           ; preds = %do.body5
  %5 = load ptr, ptr %sps, align 16, !dbg !2273, !tbaa !2001
  %i_mb_width23 = getelementptr inbounds %struct.x264_sps_t, ptr %5, i64 0, i32 16, !dbg !2273
  %6 = load i32, ptr %i_mb_width23, align 4, !dbg !2273, !tbaa !2003
  %mul24 = shl nsw i32 %6, 4, !dbg !2273
  %add25 = add nsw i32 %mul24, 32, !dbg !2273
  %shr31 = ashr i32 %add25, %lnot.ext, !dbg !2273
  %conv = sext i32 %shr31 to i64, !dbg !2273
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call, i8 0, i64 %conv, i1 false), !dbg !2273
  %7 = load ptr, ptr %arrayidx9, align 8, !dbg !2274, !tbaa !1619
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 8, !dbg !2274
  store ptr %add.ptr, ptr %arrayidx9, align 8, !dbg !2274, !tbaa !1619
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2240, metadata !DIExpression()), !dbg !2264
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !2276
  br i1 %exitcond.not, label %do.body39, label %do.body5, !dbg !2265, !llvm.loop !2277

do.body39:                                        ; preds = %do.end
  %8 = load ptr, ptr %sps, align 16, !dbg !2279, !tbaa !2001
  %i_mb_width41 = getelementptr inbounds %struct.x264_sps_t, ptr %8, i64 0, i32 16, !dbg !2279
  %9 = load i32, ptr %i_mb_width41, align 4, !dbg !2279, !tbaa !2003
  %mul43 = shl i32 %9, 5, !dbg !2279
  %call45 = tail call ptr @x264_malloc(i32 noundef %mul43) #11, !dbg !2279
  %arrayidx47 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 63, i64 %indvars.iv268, !dbg !2279
  store ptr %call45, ptr %arrayidx47, align 8, !dbg !2279, !tbaa !1619
  %tobool51.not = icmp eq ptr %call45, null, !dbg !2281
  call void @llvm.dbg.value(metadata i64 %indvars.iv268, metadata !2237, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2257
  br i1 %tobool51.not, label %fail, label %for.cond, !dbg !2279

if.then63:                                        ; preds = %for.cond, %for.cond.preheader
  call void @llvm.dbg.value(metadata i32 0, metadata !2244, metadata !DIExpression()), !dbg !2254
  %thread = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, !dbg !2283
  %10 = load ptr, ptr %thread, align 16, !dbg !2284, !tbaa !1619
  %fdec = getelementptr inbounds %struct.x264_t, ptr %10, i64 0, i32 45, !dbg !2285
  %11 = load ptr, ptr %fdec, align 16, !dbg !2285, !tbaa !2286
  %i_width = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 25, !dbg !2287
  %12 = load i32, ptr %i_width, align 4, !dbg !2284, !tbaa !1589
  %add66 = shl i32 %12, 1, !dbg !2288
  %mul68 = add i32 %add66, 96, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %mul68, metadata !2245, metadata !DIExpression()), !dbg !2289
  %b_ssim = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 23, !dbg !2290
  %13 = load i32, ptr %b_ssim, align 16, !dbg !2290, !tbaa !2291
  %i_width73 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 5, !dbg !2292
  %14 = load i32, ptr %i_width73, align 4, !dbg !2292, !tbaa !2293
  %div = sdiv i32 %14, 4, !dbg !2294
  %add74 = add nsw i32 %div, 3, !dbg !2295
  %mul75 = shl i32 %13, 5, !dbg !2296
  %mul77 = mul i32 %mul75, %add74, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %mul77, metadata !2248, metadata !DIExpression()), !dbg !2289
  %i_me_range = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 8, !dbg !2298
  %15 = load i32, ptr %i_me_range, align 16, !dbg !2298, !tbaa !2299
  %i_mv_range = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 9, !dbg !2298
  %16 = load i32, ptr %i_mv_range, align 4, !dbg !2298, !tbaa !2300
  %17 = tail call i32 @llvm.smin.i32(i32 %15, i32 %16), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %17, metadata !2249, metadata !DIExpression()), !dbg !2289
  %i_me_method = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 7, !dbg !2301
  %18 = load i32, ptr %i_me_method, align 4, !dbg !2301, !tbaa !2302
  %cmp93 = icmp sgt i32 %18, 2, !dbg !2303
  %mul96 = shl i32 %17, 2, !dbg !2304
  %mul99 = add i32 %mul96, 36, !dbg !2305
  %add100 = add nsw i32 %17, 4, !dbg !2306
  %add101 = shl i32 %17, 5, !dbg !2307
  %mul102 = add i32 %add101, 32, !dbg !2307
  %mul103 = mul i32 %mul102, %add100, !dbg !2308
  %add106 = add i32 %mul99, %mul103, !dbg !2309
  %conv108 = select i1 %cmp93, i32 %add106, i32 0, !dbg !2310
  call void @llvm.dbg.value(metadata i32 %conv108, metadata !2250, metadata !DIExpression()), !dbg !2289
  %b_cabac = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 24, !dbg !2311
  %19 = load i32, ptr %b_cabac, align 16, !dbg !2311, !tbaa !2061
  %tobool110.not = icmp eq i32 %19, 0, !dbg !2312
  %pps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !2313
  %20 = load ptr, ptr %pps, align 16, !dbg !2313, !tbaa !2314
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, ptr %20, i64 0, i32 15, !dbg !2315
  %21 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !2315, !tbaa !2316
  %sps115 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2318
  %22 = load ptr, ptr %sps115, align 16, !dbg !2318, !tbaa !2001
  %i_mb_width116 = getelementptr inbounds %struct.x264_sps_t, ptr %22, i64 0, i32 16, !dbg !2319
  %23 = load i32, ptr %i_mb_width116, align 4, !dbg !2319, !tbaa !2003
  %.op = shl i32 %21, 6, !dbg !2320
  %mul118 = select i1 %tobool110.not, i32 %.op, i32 0, !dbg !2320
  %mul121 = mul i32 %mul118, %23, !dbg !2321
  call void @llvm.dbg.value(metadata i32 %mul121, metadata !2251, metadata !DIExpression()), !dbg !2289
  %24 = tail call i32 @llvm.smax.i32(i32 %conv108, i32 %mul121), !dbg !2322
  %25 = tail call i32 @llvm.smax.i32(i32 %mul77, i32 %24), !dbg !2322
  %26 = tail call i32 @llvm.smax.i32(i32 %mul68, i32 %25), !dbg !2322
  br label %if.end165, !dbg !2322

if.end165:                                        ; preds = %if.then63, %entry
  %scratch_size.0 = phi i32 [ 0, %entry ], [ %26, %if.then63 ], !dbg !2254
  call void @llvm.dbg.value(metadata i32 %scratch_size.0, metadata !2244, metadata !DIExpression()), !dbg !2254
  %b_mb_tree = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 16, !dbg !2323
  %27 = load i32, ptr %b_mb_tree, align 8, !dbg !2323, !tbaa !2324
  %sps167 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2325
  %28 = load ptr, ptr %sps167, align 16, !dbg !2325, !tbaa !2001
  %i_mb_width168 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 16, !dbg !2326
  %29 = load i32, ptr %i_mb_width168, align 4, !dbg !2326, !tbaa !2003
  %add169 = add nsw i32 %29, 3, !dbg !2327
  %and = and i32 %add169, 1073741820, !dbg !2328
  %mul170 = shl i32 %27, 2, !dbg !2329
  %mul172 = mul i32 %mul170, %and, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %mul172, metadata !2252, metadata !DIExpression()), !dbg !2254
  %30 = tail call i32 @llvm.smax.i32(i32 %scratch_size.0, i32 %mul172), !dbg !2331
  call void @llvm.dbg.value(metadata i32 %30, metadata !2244, metadata !DIExpression()), !dbg !2254
  %call181 = tail call ptr @x264_malloc(i32 noundef %30) #11, !dbg !2332
  %scratch_buffer = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 61, !dbg !2332
  store ptr %call181, ptr %scratch_buffer, align 8, !dbg !2332, !tbaa !2334
  %tobool183.not = icmp eq ptr %call181, null, !dbg !2335
  br i1 %tobool183.not, label %fail, label %return, !dbg !2332

fail:                                             ; preds = %do.body39, %do.body5, %if.end165
  call void @llvm.dbg.label(metadata !2253), !dbg !2337
  br label %return, !dbg !2338

return:                                           ; preds = %if.end165, %fail
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end165 ], !dbg !2254
  ret i32 %retval.0, !dbg !2339
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_thread_free(ptr nocapture noundef readonly %h, i32 noundef %b_lookahead) local_unnamed_addr #0 !dbg !2340 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2342, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %b_lookahead, metadata !2343, metadata !DIExpression()), !dbg !2351
  %tobool.not = icmp eq i32 %b_lookahead, 0, !dbg !2352
  br i1 %tobool.not, label %for.cond.preheader, label %if.end, !dbg !2353

for.cond.preheader:                               ; preds = %entry
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 26
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2354
  %0 = load i32, ptr %b_interlaced, align 8, !dbg !2355, !tbaa !2020
  %cmp.not21 = icmp slt i32 %0, 0, !dbg !2356
  br i1 %cmp.not21, label %if.end, label %for.body, !dbg !2357

for.body:                                         ; preds = %for.cond.preheader, %for.cond.cleanup3
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.cond.cleanup3 ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv24, metadata !2344, metadata !DIExpression()), !dbg !2354
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 63, i64 %indvars.iv24, !dbg !2358
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2358, !tbaa !1619
  tail call void @x264_free(ptr noundef %1) #11, !dbg !2359
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()), !dbg !2360
  br label %for.body4, !dbg !2361

for.cond.cleanup3:                                ; preds = %for.body4
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next25, metadata !2344, metadata !DIExpression()), !dbg !2354
  %2 = load i32, ptr %b_interlaced, align 8, !dbg !2355, !tbaa !2020
  %3 = sext i32 %2 to i64, !dbg !2356
  %cmp.not.not = icmp slt i64 %indvars.iv24, %3, !dbg !2356
  br i1 %cmp.not.not, label %for.body, label %if.end, !dbg !2357, !llvm.loop !2363

for.body4:                                        ; preds = %for.body, %for.body4
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2347, metadata !DIExpression()), !dbg !2360
  %arrayidx8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 62, i64 %indvars.iv24, i64 %indvars.iv, !dbg !2365
  %4 = load ptr, ptr %arrayidx8, align 8, !dbg !2365, !tbaa !1619
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 -8, !dbg !2367
  tail call void @x264_free(ptr noundef nonnull %add.ptr) #11, !dbg !2368
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2347, metadata !DIExpression()), !dbg !2360
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !2370
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4, !dbg !2361, !llvm.loop !2371

if.end:                                           ; preds = %for.cond.cleanup3, %for.cond.preheader, %entry
  %scratch_buffer = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 61, !dbg !2373
  %5 = load ptr, ptr %scratch_buffer, align 8, !dbg !2373, !tbaa !2334
  tail call void @x264_free(ptr noundef %5) #11, !dbg !2374
  ret void, !dbg !2375
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_macroblock_slice_init(ptr noundef %h) local_unnamed_addr #5 !dbg !2376 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2378, metadata !DIExpression()), !dbg !2402
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !2403
  %0 = load ptr, ptr %fdec, align 16, !dbg !2403, !tbaa !2286
  %mv = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43, !dbg !2404
  %1 = load ptr, ptr %mv, align 16, !dbg !2405, !tbaa !1619
  %mv1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, !dbg !2406
  store ptr %1, ptr %mv1, align 16, !dbg !2407, !tbaa !1619
  %arrayidx5 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 43, i64 1, !dbg !2408
  %2 = load ptr, ptr %arrayidx5, align 8, !dbg !2408, !tbaa !1619
  %arrayidx8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 1, !dbg !2409
  store ptr %2, ptr %arrayidx8, align 8, !dbg !2410, !tbaa !1619
  %mv16x16 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 44, !dbg !2411
  %3 = load ptr, ptr %mv16x16, align 16, !dbg !2411, !tbaa !2412
  %mvr = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 48, !dbg !2415
  store ptr %3, ptr %mvr, align 16, !dbg !2416, !tbaa !1619
  %ref = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48, !dbg !2417
  %4 = load ptr, ptr %ref, align 8, !dbg !2418, !tbaa !1619
  %ref16 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, !dbg !2419
  store ptr %4, ptr %ref16, align 16, !dbg !2420, !tbaa !1619
  %arrayidx20 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 48, i64 1, !dbg !2421
  %5 = load ptr, ptr %arrayidx20, align 8, !dbg !2421, !tbaa !1619
  %arrayidx23 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 1, !dbg !2422
  store ptr %5, ptr %arrayidx23, align 8, !dbg !2423, !tbaa !1619
  %mb_type = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 41, !dbg !2424
  %6 = load ptr, ptr %mb_type, align 16, !dbg !2424, !tbaa !2425
  %type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !2426
  store ptr %6, ptr %type, align 8, !dbg !2427, !tbaa !2428
  %mb_partition = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 42, !dbg !2429
  %7 = load ptr, ptr %mb_partition, align 8, !dbg !2429, !tbaa !2430
  %partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 39, !dbg !2431
  store ptr %7, ptr %partition, align 16, !dbg !2432, !tbaa !2433
  %i_ref0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 46, !dbg !2434
  %8 = load i32, ptr %i_ref0, align 8, !dbg !2434, !tbaa !2435
  %i_ref = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 49, !dbg !2436
  store i32 %8, ptr %i_ref, align 8, !dbg !2437, !tbaa !1589
  %i_ref1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 48, !dbg !2438
  %9 = load i32, ptr %i_ref1, align 8, !dbg !2438, !tbaa !2439
  %arrayidx32 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 49, i64 1, !dbg !2440
  store i32 %9, ptr %arrayidx32, align 4, !dbg !2441, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()), !dbg !2442
  %10 = load i32, ptr %i_ref0, align 8, !dbg !2443, !tbaa !2435
  %cmp313 = icmp sgt i32 %10, 0, !dbg !2445
  br i1 %cmp313, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !2446

for.body.lr.ph:                                   ; preds = %entry
  %ref_poc = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 50
  br label %for.body, !dbg !2446

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !2447
  %11 = load i32, ptr %i_type, align 16, !dbg !2447, !tbaa !1494
  %cmp39 = icmp eq i32 %11, 1, !dbg !2448
  br i1 %cmp39, label %for.cond41.preheader, label %if.end104, !dbg !2449

for.cond41.preheader:                             ; preds = %for.cond.cleanup
  call void @llvm.dbg.value(metadata i32 0, metadata !2381, metadata !DIExpression()), !dbg !2450
  %12 = load i32, ptr %i_ref1, align 8, !dbg !2451, !tbaa !2439
  %cmp43315 = icmp sgt i32 %12, 0, !dbg !2453
  br i1 %cmp43315, label %for.body45, label %for.cond.cleanup44, !dbg !2454

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2379, metadata !DIExpression()), !dbg !2442
  %arrayidx34 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %indvars.iv, !dbg !2455
  %13 = load ptr, ptr %arrayidx34, align 8, !dbg !2455, !tbaa !1619
  %14 = load i32, ptr %13, align 16, !dbg !2456, !tbaa !2457
  %arrayidx38 = getelementptr inbounds [16 x i32], ptr %ref_poc, i64 0, i64 %indvars.iv, !dbg !2458
  store i32 %14, ptr %arrayidx38, align 4, !dbg !2459, !tbaa !1589
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2460
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2379, metadata !DIExpression()), !dbg !2442
  %15 = load i32, ptr %i_ref0, align 8, !dbg !2443, !tbaa !2435
  %16 = sext i32 %15 to i64, !dbg !2445
  %cmp = icmp slt i64 %indvars.iv.next, %16, !dbg !2445
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !2446, !llvm.loop !2461

for.cond.cleanup44:                               ; preds = %for.body45, %for.cond41.preheader
  %map_col_to_list0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 83, !dbg !2463
  %arrayidx58 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 83, i64 1, !dbg !2463
  store i8 -1, ptr %arrayidx58, align 1, !dbg !2464, !tbaa !1528
  store i8 -2, ptr %map_col_to_list0, align 8, !dbg !2465, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()), !dbg !2466
  %fref164 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49
  %17 = load ptr, ptr %fref164, align 16, !tbaa !1619
  %i_ref66 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 49
  %18 = load i32, ptr %i_ref66, align 8, !dbg !2467, !tbaa !1589
  %cmp68319 = icmp sgt i32 %18, 0, !dbg !2468
  br i1 %cmp68319, label %for.body70.lr.ph, label %if.end104thread-pre-split, !dbg !2469

for.body70.lr.ph:                                 ; preds = %for.cond.cleanup44
  %ref_poc73 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 50
  %19 = load i32, ptr %i_ref0, align 8, !tbaa !2435
  %cmp83317 = icmp sgt i32 %19, 0
  br i1 %cmp83317, label %for.body70.us.preheader, label %for.body70, !dbg !2470

for.body70.us.preheader:                          ; preds = %for.body70.lr.ph
  %wide.trip.count = zext i32 %19 to i64
  br label %for.body70.us, !dbg !2469

for.body70.us:                                    ; preds = %for.body70.us.preheader, %cleanup.us
  %indvars.iv340 = phi i64 [ 0, %for.body70.us.preheader ], [ %indvars.iv.next341, %cleanup.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv340, metadata !2385, metadata !DIExpression()), !dbg !2466
  %arrayidx76.us = getelementptr inbounds [16 x i32], ptr %ref_poc73, i64 0, i64 %indvars.iv340, !dbg !2471
  %20 = load i32, ptr %arrayidx76.us, align 4, !dbg !2471, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %20, metadata !2387, metadata !DIExpression()), !dbg !2472
  %21 = add nuw nsw i64 %indvars.iv340, 2, !dbg !2473
  %arrayidx80.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 83, i64 %21, !dbg !2473
  store i8 -2, ptr %arrayidx80.us, align 1, !dbg !2474, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()), !dbg !2475
  br label %for.body85.us, !dbg !2470

for.body85.us:                                    ; preds = %for.body70.us, %for.inc97.us
  %indvars.iv337 = phi i64 [ 0, %for.body70.us ], [ %indvars.iv.next338, %for.inc97.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv337, metadata !2390, metadata !DIExpression()), !dbg !2475
  %arrayidx88.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %indvars.iv337, !dbg !2476
  %22 = load ptr, ptr %arrayidx88.us, align 8, !dbg !2476, !tbaa !1619
  %23 = load i32, ptr %22, align 16, !dbg !2479, !tbaa !2457
  %cmp90.us = icmp eq i32 %23, %20, !dbg !2480
  br i1 %cmp90.us, label %if.then91.us, label %for.inc97.us, !dbg !2481

for.inc97.us:                                     ; preds = %for.body85.us
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next338, metadata !2390, metadata !DIExpression()), !dbg !2475
  %exitcond.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count, !dbg !2483
  br i1 %exitcond.not, label %cleanup.us, label %for.body85.us, !dbg !2470, !llvm.loop !2484

if.then91.us:                                     ; preds = %for.body85.us
  %conv.us = trunc i64 %indvars.iv337 to i8, !dbg !2486
  store i8 %conv.us, ptr %arrayidx80.us, align 1, !dbg !2488, !tbaa !1528
  br label %cleanup.us, !dbg !2489

cleanup.us:                                       ; preds = %for.inc97.us, %if.then91.us
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next341, metadata !2385, metadata !DIExpression()), !dbg !2466
  %24 = load i32, ptr %i_ref66, align 8, !dbg !2467, !tbaa !1589
  %25 = sext i32 %24 to i64, !dbg !2468
  %cmp68.us = icmp slt i64 %indvars.iv.next341, %25, !dbg !2468
  br i1 %cmp68.us, label %for.body70.us, label %if.end104thread-pre-split, !dbg !2469, !llvm.loop !2491

for.body45:                                       ; preds = %for.cond41.preheader, %for.body45
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %for.body45 ], [ 0, %for.cond41.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv330, metadata !2381, metadata !DIExpression()), !dbg !2450
  %arrayidx47 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, i64 %indvars.iv330, !dbg !2493
  %26 = load ptr, ptr %arrayidx47, align 8, !dbg !2493, !tbaa !1619
  %27 = load i32, ptr %26, align 16, !dbg !2494, !tbaa !2457
  %arrayidx53 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 50, i64 1, i64 %indvars.iv330, !dbg !2495
  store i32 %27, ptr %arrayidx53, align 4, !dbg !2496, !tbaa !1589
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next331, metadata !2381, metadata !DIExpression()), !dbg !2450
  %28 = load i32, ptr %i_ref1, align 8, !dbg !2451, !tbaa !2439
  %29 = sext i32 %28 to i64, !dbg !2453
  %cmp43 = icmp slt i64 %indvars.iv.next331, %29, !dbg !2453
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44, !dbg !2454, !llvm.loop !2498

for.body70:                                       ; preds = %for.body70.lr.ph, %for.body70
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %for.body70 ], [ 0, %for.body70.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv333, metadata !2385, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 undef, metadata !2387, metadata !DIExpression()), !dbg !2472
  %30 = add nuw nsw i64 %indvars.iv333, 2, !dbg !2473
  %arrayidx80 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 83, i64 %30, !dbg !2473
  store i8 -2, ptr %arrayidx80, align 1, !dbg !2474, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()), !dbg !2475
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next334, metadata !2385, metadata !DIExpression()), !dbg !2466
  %31 = load i32, ptr %i_ref66, align 8, !dbg !2467, !tbaa !1589
  %32 = sext i32 %31 to i64, !dbg !2468
  %cmp68 = icmp slt i64 %indvars.iv.next334, %32, !dbg !2468
  br i1 %cmp68, label %for.body70, label %if.end104thread-pre-split, !dbg !2469, !llvm.loop !2491

if.end104thread-pre-split:                        ; preds = %for.body70, %cleanup.us, %for.cond.cleanup44
  %.pr = load i32, ptr %i_type, align 16, !dbg !2500, !tbaa !1494
  br label %if.end104, !dbg !2500

if.end104:                                        ; preds = %if.end104thread-pre-split, %for.cond.cleanup
  %33 = phi i32 [ %.pr, %if.end104thread-pre-split ], [ %11, %for.cond.cleanup ], !dbg !2500
  %cmp107 = icmp eq i32 %33, 0, !dbg !2502
  br i1 %cmp107, label %if.then109, label %if.end111, !dbg !2503

if.then109:                                       ; preds = %if.end104
  %skip = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, !dbg !2504
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %skip, i8 0, i64 40, i1 false), !dbg !2505
  br label %if.end111, !dbg !2505

if.end111:                                        ; preds = %if.then109, %if.end104
  %ref114 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !2506
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %ref114, i8 -2, i64 80, i1 false), !dbg !2507
  %34 = load i32, ptr %i_ref0, align 8, !dbg !2508, !tbaa !2435
  %cmp117 = icmp slt i32 %34, 1, !dbg !2509
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7
  %35 = load i32, ptr %b_mbaff, align 4, !tbaa !2510
  %cmp122.not321 = icmp slt i32 %35, 0
  %or.cond365 = select i1 %cmp117, i1 true, i1 %cmp122.not321, !dbg !2511
  call void @llvm.dbg.value(metadata i32 0, metadata !2392, metadata !DIExpression()), !dbg !2512
  br i1 %or.cond365, label %if.end151, label %for.body125.lr.ph, !dbg !2511

for.body125.lr.ph:                                ; preds = %if.end111
  %36 = load i32, ptr %0, align 16, !tbaa !2457
  %i_delta_poc_bottom = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 12
  %37 = load i32, ptr %i_delta_poc_bottom, align 8, !tbaa !2513
  %fref0130 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47
  %38 = load ptr, ptr %fref0130, align 16, !tbaa !1619
  %39 = load i32, ptr %38, align 16, !tbaa !2457
  %tobool = icmp ne i32 %35, 0
  %40 = add nuw i32 %35, 1, !dbg !2514
  %wide.trip.count348 = zext i32 %40 to i64, !dbg !2515
  br label %for.body125, !dbg !2514

for.body125:                                      ; preds = %for.body125.lr.ph, %for.body125
  %indvars.iv344 = phi i64 [ 0, %for.body125.lr.ph ], [ %indvars.iv.next345, %for.body125 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv344, metadata !2392, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i32 undef, metadata !2395, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 %39, metadata !2398, metadata !DIExpression()), !dbg !2516
  %tobool135 = icmp ne i64 %indvars.iv344, 0
  %or.cond = select i1 %tobool, i1 %tobool135, i1 false, !dbg !2517
  %add139 = select i1 %or.cond, i32 %37, i32 0, !dbg !2517
  call void @llvm.dbg.value(metadata i32 undef, metadata !2398, metadata !DIExpression()), !dbg !2516
  %41 = trunc i64 %indvars.iv344 to i32, !dbg !2517
  %42 = mul i32 %37, %41, !dbg !2517
  %spec.select.neg = add i32 %42, %36, !dbg !2517
  %43 = add i32 %add139, %39, !dbg !2519
  %sub = sub i32 %spec.select.neg, %43, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2399, metadata !DIExpression()), !dbg !2516
  %div = sdiv i32 %sub, 2, !dbg !2520
  %add141 = add nsw i32 %div, 256, !dbg !2521
  %div142 = sdiv i32 %add141, %sub, !dbg !2522
  %conv143 = trunc i32 %div142 to i16, !dbg !2523
  %arrayidx146 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 51, i64 %indvars.iv344, !dbg !2524
  store i16 %conv143, ptr %arrayidx146, align 2, !dbg !2525, !tbaa !1585
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next345, metadata !2392, metadata !DIExpression()), !dbg !2512
  %exitcond349.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count348, !dbg !2515
  br i1 %exitcond349.not, label %if.end151, label %for.body125, !dbg !2514, !llvm.loop !2527

if.end151:                                        ; preds = %for.body125, %if.end111
  %deblock_ref_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, !dbg !2529
  store i8 -2, ptr %deblock_ref_table, align 16, !dbg !2530, !tbaa !1528
  %arrayidx156 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 1, !dbg !2531
  store i8 -1, ptr %arrayidx156, align 1, !dbg !2532, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !2400, metadata !DIExpression()), !dbg !2533
  %shl = shl i32 %34, %35
  %cmp162323 = icmp sgt i32 %shl, 0, !dbg !2534
  br i1 %cmp162323, label %for.body165.lr.ph, label %for.cond.cleanup164, !dbg !2536

for.body165.lr.ph:                                ; preds = %if.end151
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17
  %44 = load i32, ptr %b_interlaced, align 4, !tbaa !1633
  %tobool167.not = icmp eq i32 %44, 0
  %wide.trip.count360 = zext i32 %shl to i64, !dbg !2534
  br i1 %tobool167.not, label %for.body165.us, label %for.body165, !dbg !2537

for.body165.us:                                   ; preds = %for.body165.lr.ph, %for.body165.us
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %for.body165.us ], [ 0, %for.body165.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv356, metadata !2400, metadata !DIExpression()), !dbg !2533
  %arrayidx171.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %indvars.iv356, !dbg !2539
  %45 = load ptr, ptr %arrayidx171.us, align 8, !dbg !2539, !tbaa !1619
  %i_frame_num.us = getelementptr inbounds %struct.x264_frame, ptr %45, i64 0, i32 13, !dbg !2541
  %46 = load i32, ptr %i_frame_num.us, align 4, !dbg !2541, !tbaa !2542
  %47 = trunc i32 %46 to i8, !dbg !2539
  %conv172.us = and i8 %47, 63, !dbg !2539
  %48 = add nuw nsw i64 %indvars.iv356, 2, !dbg !2543
  %arrayidx177.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %48, !dbg !2543
  store i8 %conv172.us, ptr %arrayidx177.us, align 1, !dbg !2544, !tbaa !1528
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next357, metadata !2400, metadata !DIExpression()), !dbg !2533
  %exitcond361.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count360, !dbg !2534
  br i1 %exitcond361.not, label %for.cond.cleanup164, label %for.body165.us, !dbg !2536, !llvm.loop !2546

for.cond.cleanup164:                              ; preds = %for.body165, %for.body165.us, %if.end151
  %arrayidx198 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 14, !dbg !2548
  store i32 15, ptr %arrayidx198, align 4, !dbg !2549, !tbaa !1589
  %arrayidx201 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 12, !dbg !2550
  store i32 15, ptr %arrayidx201, align 4, !dbg !2551, !tbaa !1589
  %arrayidx204 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 9, !dbg !2552
  store i32 15, ptr %arrayidx204, align 4, !dbg !2553, !tbaa !1589
  %arrayidx207 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 6, !dbg !2554
  store i32 15, ptr %arrayidx207, align 4, !dbg !2555, !tbaa !1589
  %arrayidx209 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 25, i64 3, !dbg !2556
  store i32 11, ptr %arrayidx209, align 4, !dbg !2557, !tbaa !1589
  %arrayidx212 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 15, !dbg !2558
  store i32 11, ptr %arrayidx212, align 4, !dbg !2559, !tbaa !1589
  %arrayidx215 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 13, !dbg !2560
  store i32 11, ptr %arrayidx215, align 4, !dbg !2561, !tbaa !1589
  %arrayidx218 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 11, !dbg !2562
  store i32 11, ptr %arrayidx218, align 4, !dbg !2563, !tbaa !1589
  %arrayidx221 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 7, !dbg !2564
  store i32 11, ptr %arrayidx221, align 4, !dbg !2565, !tbaa !1589
  %arrayidx224 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 3, !dbg !2566
  store i32 11, ptr %arrayidx224, align 4, !dbg !2567, !tbaa !1589
  ret void, !dbg !2568

for.body165:                                      ; preds = %for.body165.lr.ph, %for.body165
  %indvars.iv350 = phi i64 [ %indvars.iv.next351, %for.body165 ], [ 0, %for.body165.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv350, metadata !2400, metadata !DIExpression()), !dbg !2533
  %49 = trunc i64 %indvars.iv350 to i32, !dbg !2569
  %50 = lshr i64 %indvars.iv350, 1, !dbg !2569
  %idxprom179 = and i64 %50, 2147483647, !dbg !2570
  %arrayidx180 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %idxprom179, !dbg !2570
  %51 = load ptr, ptr %arrayidx180, align 8, !dbg !2570, !tbaa !1619
  %i_frame_num181 = getelementptr inbounds %struct.x264_frame, ptr %51, i64 0, i32 13, !dbg !2571
  %52 = load i32, ptr %i_frame_num181, align 4, !dbg !2571, !tbaa !2542
  %and182 = shl i32 %52, 1, !dbg !2572
  %shl183 = and i32 %and182, 126, !dbg !2572
  %and184 = and i32 %49, 1, !dbg !2573
  %add185 = or i32 %shl183, %and184, !dbg !2574
  %conv186 = trunc i32 %add185 to i8, !dbg !2575
  %53 = add nuw nsw i64 %indvars.iv350, 2, !dbg !2576
  %arrayidx191 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %53, !dbg !2576
  store i8 %conv186, ptr %arrayidx191, align 1, !dbg !2577, !tbaa !1528
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next351, metadata !2400, metadata !DIExpression()), !dbg !2533
  %exitcond355.not = icmp eq i64 %indvars.iv.next351, %wide.trip.count360, !dbg !2534
  br i1 %exitcond355.not, label %for.cond.cleanup164, label %for.body165, !dbg !2536, !llvm.loop !2546
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @x264_macroblock_thread_init(ptr noundef %h) local_unnamed_addr #6 !dbg !2578 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2580, metadata !DIExpression()), !dbg !2581
  %i_me_method = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 7, !dbg !2582
  %0 = load i32, ptr %i_me_method, align 4, !dbg !2582, !tbaa !2302
  %i_me_method1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 9, !dbg !2583
  store i32 %0, ptr %i_me_method1, align 4, !dbg !2584, !tbaa !2585
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 11, !dbg !2586
  %1 = load i32, ptr %i_subpel_refine, align 4, !dbg !2586, !tbaa !2587
  %i_subpel_refine5 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 10, !dbg !2588
  store i32 %1, ptr %i_subpel_refine5, align 8, !dbg !2589, !tbaa !2590
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !2591
  %2 = load i32, ptr %i_type, align 16, !dbg !2591, !tbaa !1494
  %cmp = icmp eq i32 %2, 1, !dbg !2593
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2594

land.lhs.true:                                    ; preds = %entry
  switch i32 %1, label %land.end [
    i32 6, label %if.then
    i32 8, label %if.then
  ], !dbg !2595

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %dec = add nsw i32 %1, -1, !dbg !2596
  store i32 %dec, ptr %i_subpel_refine5, align 8, !dbg !2596, !tbaa !2590
  br label %land.end, !dbg !2597

if.end:                                           ; preds = %entry
  %b_chroma_me = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 12, !dbg !2598
  %3 = load i32, ptr %b_chroma_me, align 16, !dbg !2598, !tbaa !2599
  %tobool.not = icmp ne i32 %3, 0, !dbg !2600
  %cmp19 = icmp eq i32 %2, 0
  %or.cond = select i1 %tobool.not, i1 %cmp19, i1 false, !dbg !2601
  br i1 %or.cond, label %land.rhs, label %lor.rhs, !dbg !2601

land.rhs:                                         ; preds = %if.end
  %cmp22 = icmp sgt i32 %1, 4, !dbg !2602
  %phi.cast = zext i1 %cmp22 to i32
  br label %lor.rhs

land.end:                                         ; preds = %land.lhs.true, %if.then
  %b_chroma_me24 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 11, !dbg !2603
  store i32 0, ptr %b_chroma_me24, align 4, !dbg !2604, !tbaa !2605
  br label %lor.end, !dbg !2606

lor.rhs:                                          ; preds = %land.rhs, %if.end
  %.ph = phi i32 [ %phi.cast, %land.rhs ], [ 0, %if.end ]
  %b_chroma_me24119 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 11, !dbg !2603
  store i32 %.ph, ptr %b_chroma_me24119, align 4, !dbg !2604, !tbaa !2605
  %b_dct_decimate = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 16, !dbg !2607
  %4 = load i32, ptr %b_dct_decimate, align 16, !dbg !2607, !tbaa !2608
  %tobool30.not = icmp eq i32 %4, 0, !dbg !2609
  br i1 %tobool30.not, label %lor.end, label %land.rhs31, !dbg !2610

land.rhs31:                                       ; preds = %lor.rhs
  %cmp34 = icmp ne i32 %2, 2, !dbg !2611
  %phi.cast114 = zext i1 %cmp34 to i32
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.rhs, %land.rhs31
  %5 = phi i32 [ 1, %land.end ], [ 0, %lor.rhs ], [ %phi.cast114, %land.rhs31 ]
  %b_dct_decimate38 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 14, !dbg !2612
  store i32 %5, ptr %b_dct_decimate38, align 8, !dbg !2613, !tbaa !2614
  %pic = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, !dbg !2615
  %p_fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, !dbg !2616
  store ptr %pic, ptr %p_fenc, align 16, !dbg !2617, !tbaa !1619
  %add.ptr = getelementptr inbounds i8, ptr %pic, i64 256, !dbg !2618
  %arrayidx49 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, i64 1, !dbg !2619
  store ptr %add.ptr, ptr %arrayidx49, align 8, !dbg !2620, !tbaa !1619
  %add.ptr55 = getelementptr inbounds i8, ptr %pic, i64 264, !dbg !2621
  %arrayidx59 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, i64 2, !dbg !2622
  store ptr %add.ptr55, ptr %arrayidx59, align 16, !dbg !2623, !tbaa !1619
  %fdec_buf = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 1, !dbg !2624
  %add.ptr63 = getelementptr inbounds i8, ptr %fdec_buf, i64 64, !dbg !2625
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !2626
  store ptr %add.ptr63, ptr %p_fdec, align 16, !dbg !2627, !tbaa !1619
  %add.ptr71 = getelementptr inbounds i8, ptr %fdec_buf, i64 608, !dbg !2628
  %arrayidx75 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !2629
  store ptr %add.ptr71, ptr %arrayidx75, align 8, !dbg !2630, !tbaa !1619
  %add.ptr81 = getelementptr inbounds i8, ptr %fdec_buf, i64 624, !dbg !2631
  %arrayidx85 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !2632
  store ptr %add.ptr81, ptr %arrayidx85, align 16, !dbg !2633, !tbaa !1619
  ret void, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_prefetch_fenc(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %fenc, i32 noundef %i_mb_x, i32 noundef %i_mb_y) local_unnamed_addr #0 !dbg !2635 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2639, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata ptr %fenc, metadata !2640, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %i_mb_x, metadata !2641, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i32 %i_mb_y, metadata !2642, metadata !DIExpression()), !dbg !2647
  %i_stride = getelementptr inbounds %struct.x264_frame, ptr %fenc, i64 0, i32 24, !dbg !2648
  %0 = load i32, ptr %i_stride, align 8, !dbg !2649, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2647
  %arrayidx2 = getelementptr inbounds %struct.x264_frame, ptr %fenc, i64 0, i32 24, i64 1, !dbg !2650
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !2650, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %1, metadata !2644, metadata !DIExpression()), !dbg !2647
  %mul = mul nsw i32 %0, %i_mb_y, !dbg !2651
  %add = add nsw i32 %mul, %i_mb_x, !dbg !2652
  %mul3 = shl nsw i32 %add, 4, !dbg !2653
  call void @llvm.dbg.value(metadata i32 %mul3, metadata !2645, metadata !DIExpression()), !dbg !2647
  %mul4 = mul nsw i32 %1, %i_mb_y, !dbg !2654
  %add5 = add nsw i32 %mul4, %i_mb_x, !dbg !2655
  %mul6 = shl nsw i32 %add5, 3, !dbg !2656
  call void @llvm.dbg.value(metadata i32 %mul6, metadata !2646, metadata !DIExpression()), !dbg !2647
  %prefetch_fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 8, !dbg !2657
  %2 = load ptr, ptr %prefetch_fenc, align 8, !dbg !2657, !tbaa !2658
  %plane = getelementptr inbounds %struct.x264_frame, ptr %fenc, i64 0, i32 30, !dbg !2659
  %3 = load ptr, ptr %plane, align 8, !dbg !2660, !tbaa !1619
  %idx.ext = sext i32 %mul3 to i64, !dbg !2661
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext, !dbg !2661
  %and = and i32 %i_mb_x, 1, !dbg !2662
  %add9 = add nuw nsw i32 %and, 1, !dbg !2663
  %4 = zext i32 %add9 to i64
  %arrayidx10 = getelementptr inbounds %struct.x264_frame, ptr %fenc, i64 0, i32 30, i64 %4, !dbg !2664
  %5 = load ptr, ptr %arrayidx10, align 8, !dbg !2664, !tbaa !1619
  %idx.ext11 = sext i32 %mul6 to i64, !dbg !2665
  %add.ptr12 = getelementptr inbounds i8, ptr %5, i64 %idx.ext11, !dbg !2665
  tail call void %2(ptr noundef %add.ptr, i32 noundef %0, ptr noundef %add.ptr12, i32 noundef %1, i32 noundef %i_mb_x) #11, !dbg !2666
  ret void, !dbg !2667
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_load(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #0 !dbg !2668 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2672, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !2673, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !2674, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %h, metadata !2725, metadata !DIExpression()) #11, !dbg !2731
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !2728, metadata !DIExpression()) #11, !dbg !2731
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !2729, metadata !DIExpression()) #11, !dbg !2731
  %b_interlaced.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !2733
  %0 = load i32, ptr %b_interlaced.i, align 4, !dbg !2733, !tbaa !1633
  %shl.neg.i = shl nsw i32 -1, %0, !dbg !2734
  %sub.i = add i32 %shl.neg.i, %mb_y, !dbg !2735
  %i_mb_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !2736
  %1 = load i32, ptr %i_mb_stride.i, align 4, !dbg !2736, !tbaa !2010
  %mul.i = mul nsw i32 %sub.i, %1, !dbg !2737
  %add.i = add nsw i32 %mul.i, %mb_x, !dbg !2738
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2730, metadata !DIExpression()) #11, !dbg !2731
  %i_mb_x.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 4, !dbg !2739
  store i32 %mb_x, ptr %i_mb_x.i, align 16, !dbg !2740, !tbaa !2741
  %i_mb_y.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !2742
  store i32 %mb_y, ptr %i_mb_y.i, align 4, !dbg !2743, !tbaa !1637
  %mul6.i = mul nsw i32 %1, %mb_y, !dbg !2744
  %add7.i = add nsw i32 %mul6.i, %mb_x, !dbg !2745
  %i_mb_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !2746
  store i32 %add7.i, ptr %i_mb_xy.i, align 8, !dbg !2747, !tbaa !2748
  %i_b8_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2, !dbg !2749
  %2 = load i32, ptr %i_b8_stride.i, align 8, !dbg !2749, !tbaa !2014
  %mul10.i = mul nsw i32 %2, %mb_y, !dbg !2750
  %add11.i = add nsw i32 %mul10.i, %mb_x, !dbg !2751
  %mul12.i = shl nsw i32 %add11.i, 1, !dbg !2752
  %i_b8_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 7, !dbg !2753
  store i32 %mul12.i, ptr %i_b8_xy.i, align 4, !dbg !2754, !tbaa !2755
  %i_b4_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3, !dbg !2756
  %3 = load i32, ptr %i_b4_stride.i, align 4, !dbg !2756, !tbaa !2018
  %mul15.i = mul nsw i32 %3, %mb_y, !dbg !2757
  %add16.i = add nsw i32 %mul15.i, %mb_x, !dbg !2758
  %mul17.i = shl nsw i32 %add16.i, 2, !dbg !2759
  %i_b4_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 8, !dbg !2760
  store i32 %mul17.i, ptr %i_b4_xy.i, align 16, !dbg !2761, !tbaa !2762
  %i_neighbour.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 24, !dbg !2763
  store i32 0, ptr %i_neighbour.i, align 8, !dbg !2764, !tbaa !2765
  %i_neighbour_intra.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 27, !dbg !2766
  store i32 0, ptr %i_neighbour_intra.i, align 4, !dbg !2767, !tbaa !2768
  %i_neighbour_frame.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 28, !dbg !2769
  store i32 0, ptr %i_neighbour_frame.i, align 16, !dbg !2770, !tbaa !2771
  %i_mb_top_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !2772
  %i_mb_left_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34, !dbg !2773
  %i_mb_topleft_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 36, !dbg !2774
  %i_mb_topright_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 37, !dbg !2775
  %i_mb_type_top.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 29, !dbg !2776
  %i_mb_type_topleft.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 31, !dbg !2777
  %i_mb_type_topright.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 32, !dbg !2778
  %cmp.i = icmp sgt i32 %mb_x, 0, !dbg !2779
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i_mb_type_top.i, i8 -1, i64 16, i1 false) #11, !dbg !2781
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i_mb_left_xy.i, i8 -1, i64 16, i1 false) #11, !dbg !2782
  br i1 %cmp.i, label %if.then.i, label %if.end74.i, !dbg !2783

if.then.i:                                        ; preds = %entry
  %i_mb_type_left.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 30, !dbg !2784
  store i32 1, ptr %i_neighbour_frame.i, align 16, !dbg !2785, !tbaa !2771
  %sub34.i = add nsw i32 %add7.i, -1, !dbg !2787
  store i32 %sub34.i, ptr %i_mb_left_xy.i, align 8, !dbg !2788, !tbaa !2789
  %type.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !2790
  %4 = load ptr, ptr %type.i, align 8, !dbg !2790, !tbaa !2428
  %idxprom.i = sext i32 %sub34.i to i64, !dbg !2791
  %arrayidx.i = getelementptr inbounds i8, ptr %4, i64 %idxprom.i, !dbg !2791
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !2791, !tbaa !1528
  %conv.i = sext i8 %5 to i32, !dbg !2791
  store i32 %conv.i, ptr %i_mb_type_left.i, align 8, !dbg !2792, !tbaa !2793
  %i_first_mb.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 3, !dbg !2794
  %6 = load i32, ptr %i_first_mb.i, align 4, !dbg !2794, !tbaa !2796
  %cmp44.i = icmp sgt i32 %add7.i, %6, !dbg !2797
  br i1 %cmp44.i, label %if.then46.i, label %if.end74.i, !dbg !2798

if.then46.i:                                      ; preds = %if.then.i
  store i32 1, ptr %i_neighbour.i, align 8, !dbg !2799, !tbaa !2765
  %b_constrained_intra.i = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 27, !dbg !2801
  %7 = load i32, ptr %b_constrained_intra.i, align 4, !dbg !2801, !tbaa !2803
  %tobool.not.i = icmp eq i32 %7, 0, !dbg !2804
  %switch.i = icmp ult i8 %5, 4
  %or.cond397.i = select i1 %tobool.not.i, i1 true, i1 %switch.i, !dbg !2805
  br i1 %or.cond397.i, label %if.then69.i, label %if.end74.i, !dbg !2805

if.then69.i:                                      ; preds = %if.then46.i
  store i32 1, ptr %i_neighbour_intra.i, align 4, !dbg !2806, !tbaa !2768
  br label %if.end74.i, !dbg !2807

if.end74.i:                                       ; preds = %if.then69.i, %if.then46.i, %if.then.i, %entry
  %8 = phi i32 [ %sub34.i, %if.then46.i ], [ %sub34.i, %if.then.i ], [ %sub34.i, %if.then69.i ], [ -1, %entry ]
  %9 = phi i32 [ 0, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %10 = phi i32 [ 1, %if.then46.i ], [ 0, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %11 = phi i32 [ 1, %if.then46.i ], [ 1, %if.then.i ], [ 1, %if.then69.i ], [ 0, %entry ]
  %i_threadslice_start.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 5, !dbg !2808
  %12 = load i32, ptr %i_threadslice_start.i, align 4, !dbg !2808, !tbaa !2810
  %shr.i = ashr i32 %12, %0, !dbg !2811
  %shr79.i = ashr i32 %mb_y, %0, !dbg !2812
  %cmp80.not.i = icmp eq i32 %shr.i, %shr79.i, !dbg !2813
  br i1 %cmp80.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then82.i, !dbg !2814

if.then82.i:                                      ; preds = %if.end74.i
  %cmp83.i = icmp sgt i32 %add.i, -1, !dbg !2815
  br i1 %cmp83.i, label %if.then85.i, label %if.end213.i, !dbg !2818

if.then85.i:                                      ; preds = %if.then82.i
  %or88.i = or i32 %11, 2, !dbg !2819
  store i32 %or88.i, ptr %i_neighbour_frame.i, align 16, !dbg !2819, !tbaa !2771
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4, !dbg !2821, !tbaa !2822
  %type92.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !2823
  %13 = load ptr, ptr %type92.i, align 8, !dbg !2823, !tbaa !2428
  %idxprom95394.i = zext i32 %add.i to i64, !dbg !2824
  %arrayidx96.i = getelementptr inbounds i8, ptr %13, i64 %idxprom95394.i, !dbg !2824
  %14 = load i8, ptr %arrayidx96.i, align 1, !dbg !2824, !tbaa !1528
  %conv97.i = sext i8 %14 to i32, !dbg !2824
  store i32 %conv97.i, ptr %i_mb_type_top.i, align 4, !dbg !2825, !tbaa !2826
  %i_first_mb101.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 3, !dbg !2827
  %15 = load i32, ptr %i_first_mb101.i, align 4, !dbg !2827, !tbaa !2796
  %cmp102.not.i = icmp slt i32 %add.i, %15, !dbg !2829
  br i1 %cmp102.not.i, label %if.end153.i, label %if.then104.i, !dbg !2830

if.then104.i:                                     ; preds = %if.then85.i
  %or107.i = or i32 %10, 2, !dbg !2831
  store i32 %or107.i, ptr %i_neighbour.i, align 8, !dbg !2831, !tbaa !2765
  %b_constrained_intra109.i = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 27, !dbg !2833
  %16 = load i32, ptr %b_constrained_intra109.i, align 4, !dbg !2833, !tbaa !2803
  %tobool110.not.i = icmp eq i32 %16, 0, !dbg !2835
  %switch389.i = icmp ult i8 %14, 4
  %or.cond398.i = select i1 %tobool110.not.i, i1 true, i1 %switch389.i, !dbg !2836
  br i1 %or.cond398.i, label %if.then131.i, label %if.end135.i, !dbg !2836

if.then131.i:                                     ; preds = %if.then104.i
  %or134.i = or i32 %9, 2, !dbg !2837
  store i32 %or134.i, ptr %i_neighbour_intra.i, align 4, !dbg !2837, !tbaa !2768
  br label %if.end135.i, !dbg !2838

if.end135.i:                                      ; preds = %if.then131.i, %if.then104.i
  %17 = phi i32 [ %9, %if.then104.i ], [ %or134.i, %if.then131.i ]
  %cbp.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 41, !dbg !2839
  %18 = load ptr, ptr %cbp.i, align 16, !dbg !2839, !tbaa !2030
  %arrayidx138.i = getelementptr inbounds i16, ptr %18, i64 %idxprom95394.i, !dbg !2839
  tail call void @llvm.prefetch.p0(ptr %arrayidx138.i, i32 0, i32 3, i32 1) #11, !dbg !2839
  %intra4x4_pred_mode.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 42, !dbg !2840
  %19 = load ptr, ptr %intra4x4_pred_mode.i, align 8, !dbg !2840, !tbaa !2051
  %arrayidx141.i = getelementptr inbounds [8 x i8], ptr %19, i64 %idxprom95394.i, !dbg !2840
  tail call void @llvm.prefetch.p0(ptr %arrayidx141.i, i32 0, i32 3, i32 1) #11, !dbg !2840
  %non_zero_count.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !2841
  %20 = load ptr, ptr %non_zero_count.i, align 16, !dbg !2841, !tbaa !2056
  %arrayidx145.i = getelementptr inbounds [24 x i8], ptr %20, i64 %idxprom95394.i, i64 12, !dbg !2841
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx145.i, i32 0, i32 3, i32 1) #11, !dbg !2841
  %mb_transform_size.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !2842
  %21 = load ptr, ptr %mb_transform_size.i, align 8, !dbg !2842, !tbaa !2040
  %arrayidx148.i = getelementptr inbounds i8, ptr %21, i64 %idxprom95394.i, !dbg !2842
  tail call void @llvm.prefetch.p0(ptr %arrayidx148.i, i32 0, i32 3, i32 1) #11, !dbg !2842
  %skipbp.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !2843
  %22 = load ptr, ptr %skipbp.i, align 16, !dbg !2843, !tbaa !2035
  %arrayidx151.i = getelementptr inbounds i8, ptr %22, i64 %idxprom95394.i, !dbg !2843
  tail call void @llvm.prefetch.p0(ptr %arrayidx151.i, i32 0, i32 3, i32 1) #11, !dbg !2843
  br label %if.end153.i, !dbg !2844

if.end153.i:                                      ; preds = %if.end135.i, %if.then85.i
  %23 = phi i32 [ %9, %if.then85.i ], [ %17, %if.end135.i ]
  %24 = phi i32 [ %10, %if.then85.i ], [ %or107.i, %if.end135.i ]
  %cmp157.i = icmp ne i32 %add.i, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp157.i, i1 false, !dbg !2845
  br i1 %or.cond.i, label %if.then159.i, label %if.end213.i, !dbg !2845

if.then159.i:                                     ; preds = %if.end153.i
  %sub156.i = add nsw i32 %add.i, -1, !dbg !2847
  %or162.i = or i32 %11, 10, !dbg !2848
  store i32 %or162.i, ptr %i_neighbour_frame.i, align 16, !dbg !2848, !tbaa !2771
  store i32 %sub156.i, ptr %i_mb_topleft_xy.i, align 16, !dbg !2850, !tbaa !2851
  %idxprom170395.i = zext i32 %sub156.i to i64, !dbg !2852
  %arrayidx171.i = getelementptr inbounds i8, ptr %13, i64 %idxprom170395.i, !dbg !2852
  %25 = load i8, ptr %arrayidx171.i, align 1, !dbg !2852, !tbaa !1528
  %conv172.i = sext i8 %25 to i32, !dbg !2852
  store i32 %conv172.i, ptr %i_mb_type_topleft.i, align 4, !dbg !2853, !tbaa !2854
  %cmp178.not.not.i = icmp sgt i32 %add.i, %15, !dbg !2855
  br i1 %cmp178.not.not.i, label %if.then180.i, label %if.end213.i, !dbg !2857

if.then180.i:                                     ; preds = %if.then159.i
  %or183.i = or i32 %24, 8, !dbg !2858
  store i32 %or183.i, ptr %i_neighbour.i, align 8, !dbg !2858, !tbaa !2765
  %b_constrained_intra185.i = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 27, !dbg !2860
  %26 = load i32, ptr %b_constrained_intra185.i, align 4, !dbg !2860, !tbaa !2803
  %tobool186.not.i = icmp eq i32 %26, 0, !dbg !2862
  %switch390.i = icmp ult i8 %25, 4
  %or.cond399.i = select i1 %tobool186.not.i, i1 true, i1 %switch390.i, !dbg !2863
  br i1 %or.cond399.i, label %if.then207.i, label %if.end213.i, !dbg !2863

if.then207.i:                                     ; preds = %if.then180.i
  %or210.i = or i32 %23, 8, !dbg !2864
  store i32 %or210.i, ptr %i_neighbour_intra.i, align 4, !dbg !2864, !tbaa !2768
  br label %if.end213.i, !dbg !2865

if.end213.i:                                      ; preds = %if.then207.i, %if.then180.i, %if.then159.i, %if.end153.i, %if.then82.i
  %27 = phi i32 [ %add.i, %if.then180.i ], [ -1, %if.then82.i ], [ %add.i, %if.then159.i ], [ %add.i, %if.then207.i ], [ %add.i, %if.end153.i ]
  %28 = phi i32 [ %23, %if.then180.i ], [ %9, %if.then82.i ], [ %23, %if.then159.i ], [ %or210.i, %if.then207.i ], [ %23, %if.end153.i ]
  %29 = phi i32 [ %or183.i, %if.then180.i ], [ %10, %if.then82.i ], [ %24, %if.then159.i ], [ %or183.i, %if.then207.i ], [ %24, %if.end153.i ]
  %30 = phi i32 [ %or162.i, %if.then180.i ], [ %11, %if.then82.i ], [ %or162.i, %if.then159.i ], [ %or162.i, %if.then207.i ], [ %or88.i, %if.end153.i ]
  %sps.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2866
  %31 = load ptr, ptr %sps.i, align 16, !dbg !2866, !tbaa !2001
  %i_mb_width.i = getelementptr inbounds %struct.x264_sps_t, ptr %31, i64 0, i32 16, !dbg !2868
  %32 = load i32, ptr %i_mb_width.i, align 4, !dbg !2868, !tbaa !2003
  %sub214.i = add nsw i32 %32, -1, !dbg !2869
  %cmp215.i = icmp sgt i32 %sub214.i, %mb_x, !dbg !2870
  %cmp219.i = icmp sgt i32 %add.i, -2
  %or.cond388.i = select i1 %cmp215.i, i1 %cmp219.i, i1 false, !dbg !2871
  br i1 %or.cond388.i, label %if.then221.i, label %x264_macroblock_cache_load_neighbours.exit, !dbg !2871

if.then221.i:                                     ; preds = %if.end213.i
  %add218.i = add nsw i32 %add.i, 1, !dbg !2872
  %or224.i = or i32 %30, 4, !dbg !2873
  store i32 %or224.i, ptr %i_neighbour_frame.i, align 16, !dbg !2873, !tbaa !2771
  store i32 %add218.i, ptr %i_mb_topright_xy.i, align 4, !dbg !2875, !tbaa !2876
  %type229.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !2877
  %33 = load ptr, ptr %type229.i, align 8, !dbg !2877, !tbaa !2428
  %idxprom232396.i = zext i32 %add218.i to i64, !dbg !2878
  %arrayidx233.i = getelementptr inbounds i8, ptr %33, i64 %idxprom232396.i, !dbg !2878
  %34 = load i8, ptr %arrayidx233.i, align 1, !dbg !2878, !tbaa !1528
  %conv234.i = sext i8 %34 to i32, !dbg !2878
  store i32 %conv234.i, ptr %i_mb_type_topright.i, align 16, !dbg !2879, !tbaa !2880
  %i_first_mb239.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 3, !dbg !2881
  %35 = load i32, ptr %i_first_mb239.i, align 4, !dbg !2881, !tbaa !2796
  %cmp240.not.i = icmp slt i32 %add218.i, %35, !dbg !2883
  br i1 %cmp240.not.i, label %x264_macroblock_cache_load_neighbours.exit, label %if.then242.i, !dbg !2884

if.then242.i:                                     ; preds = %if.then221.i
  %or245.i = or i32 %29, 4, !dbg !2885
  store i32 %or245.i, ptr %i_neighbour.i, align 8, !dbg !2885, !tbaa !2765
  %b_constrained_intra247.i = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 27, !dbg !2887
  %36 = load i32, ptr %b_constrained_intra247.i, align 4, !dbg !2887, !tbaa !2803
  %tobool248.not.i = icmp eq i32 %36, 0, !dbg !2889
  %switch391.i = icmp ult i8 %34, 4
  %or.cond400.i = select i1 %tobool248.not.i, i1 true, i1 %switch391.i, !dbg !2890
  br i1 %or.cond400.i, label %if.then269.i, label %x264_macroblock_cache_load_neighbours.exit, !dbg !2890

if.then269.i:                                     ; preds = %if.then242.i
  %or272.i = or i32 %28, 4, !dbg !2891
  store i32 %or272.i, ptr %i_neighbour_intra.i, align 4, !dbg !2891, !tbaa !2768
  br label %x264_macroblock_cache_load_neighbours.exit, !dbg !2892

x264_macroblock_cache_load_neighbours.exit:       ; preds = %if.end74.i, %if.end213.i, %if.then221.i, %if.then242.i, %if.then269.i
  %37 = phi i32 [ %10, %if.end74.i ], [ %29, %if.end213.i ], [ %29, %if.then221.i ], [ %or245.i, %if.then242.i ], [ %or245.i, %if.then269.i ], !dbg !2893
  %38 = phi i32 [ -1, %if.end74.i ], [ %27, %if.end213.i ], [ %27, %if.then221.i ], [ %27, %if.then242.i ], [ %27, %if.then269.i ], !dbg !2895
  call void @llvm.dbg.value(metadata i32 %8, metadata !2675, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %38, metadata !2676, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !2677, metadata !DIExpression()), !dbg !2724
  %mul = shl nsw i32 %sub.i, 1, !dbg !2896
  %add = or i32 %mul, 1, !dbg !2897
  %mul4 = mul nsw i32 %2, %add, !dbg !2898
  %mul5 = shl nsw i32 %mb_x, 1, !dbg !2899
  %add6 = add nsw i32 %mul4, %mul5, !dbg !2900
  call void @llvm.dbg.value(metadata i32 %add6, metadata !2678, metadata !DIExpression()), !dbg !2724
  %mul7 = shl nsw i32 %sub.i, 2, !dbg !2901
  %add8 = or i32 %mul7, 3, !dbg !2902
  %mul10 = mul nsw i32 %3, %add8, !dbg !2903
  %mul11 = shl nsw i32 %mb_x, 2, !dbg !2904
  %add12 = add nsw i32 %mul10, %mul11, !dbg !2905
  call void @llvm.dbg.value(metadata i32 %add12, metadata !2679, metadata !DIExpression()), !dbg !2724
  %intra4x4_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 42, !dbg !2906
  %39 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !2906, !tbaa !2051
  call void @llvm.dbg.value(metadata ptr %39, metadata !2680, metadata !DIExpression()), !dbg !2724
  %non_zero_count = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !2907
  %40 = load ptr, ptr %non_zero_count, align 16, !dbg !2907, !tbaa !2056
  call void @llvm.dbg.value(metadata ptr %40, metadata !2681, metadata !DIExpression()), !dbg !2724
  %cbp16 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 41, !dbg !2908
  %41 = load ptr, ptr %cbp16, align 16, !dbg !2908, !tbaa !2030
  call void @llvm.dbg.value(metadata ptr %41, metadata !2682, metadata !DIExpression()), !dbg !2724
  %and = and i32 %37, 2, !dbg !2909
  %tobool.not = icmp eq i32 %and, 0, !dbg !2909
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2910

if.then:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %idxprom = sext i32 %38 to i64, !dbg !2911
  %arrayidx = getelementptr inbounds i16, ptr %41, i64 %idxprom, !dbg !2911
  %42 = load i16, ptr %arrayidx, align 2, !dbg !2911, !tbaa !1585
  %conv = sext i16 %42 to i32, !dbg !2911
  %cache = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, !dbg !2913
  %i_cbp_top = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 13, !dbg !2914
  store i32 %conv, ptr %i_cbp_top, align 16, !dbg !2915, !tbaa !2916
  %arrayidx20 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom, !dbg !2917
  %43 = load i32, ptr %arrayidx20, align 4, !dbg !2917, !tbaa !1528
  %arrayidx27 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 4, !dbg !2917
  store i32 %43, ptr %arrayidx27, align 1, !dbg !2917, !tbaa !1528
  %arrayidx30 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom, i64 12, !dbg !2918
  %44 = load i32, ptr %arrayidx30, align 4, !dbg !2918, !tbaa !1528
  %non_zero_count33 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, !dbg !2918
  %arrayidx36 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 4, !dbg !2918
  store i32 %44, ptr %arrayidx36, align 1, !dbg !2918, !tbaa !1528
  %arrayidx39 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom, i64 18, !dbg !2919
  %45 = load i16, ptr %arrayidx39, align 2, !dbg !2919, !tbaa !1528
  %conv40 = zext i16 %45 to i32, !dbg !2919
  %shl41 = shl nuw nsw i32 %conv40, 8, !dbg !2920
  store i32 %shl41, ptr %non_zero_count33, align 1, !dbg !2921, !tbaa !1528
  %arrayidx50 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom, i64 22, !dbg !2922
  %46 = load i16, ptr %arrayidx50, align 2, !dbg !2922, !tbaa !1528
  %conv51 = zext i16 %46 to i32, !dbg !2922
  %shl52 = shl nuw nsw i32 %conv51, 8, !dbg !2923
  br label %if.end, !dbg !2924

if.else:                                          ; preds = %x264_macroblock_cache_load_neighbours.exit
  %cache60 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, !dbg !2925
  %i_cbp_top61 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 13, !dbg !2927
  store i32 -1, ptr %i_cbp_top61, align 16, !dbg !2928, !tbaa !2916
  %arrayidx67 = getelementptr inbounds [40 x i8], ptr %cache60, i64 0, i64 4, !dbg !2929
  store i32 -1, ptr %arrayidx67, align 1, !dbg !2930, !tbaa !1528
  %non_zero_count70 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, !dbg !2931
  %arrayidx73 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 4, !dbg !2931
  store i32 -2139062144, ptr %arrayidx73, align 1, !dbg !2932, !tbaa !1528
  store i32 -2139062144, ptr %non_zero_count70, align 1, !dbg !2933, !tbaa !1528
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shl52.sink = phi i32 [ -2139062144, %if.else ], [ %shl52, %if.then ], !dbg !2934
  %47 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 24, !dbg !2935
  store i32 %shl52.sink, ptr %47, align 1, !dbg !2936
  %and88 = and i32 %37, 1, !dbg !2937
  %tobool89.not = icmp eq i32 %and88, 0, !dbg !2937
  br i1 %tobool89.not, label %if.end314.thread1446, label %if.then90, !dbg !2938

if.then90:                                        ; preds = %if.end
  %idxprom91 = sext i32 %8 to i64, !dbg !2939
  %arrayidx92 = getelementptr inbounds i16, ptr %41, i64 %idxprom91, !dbg !2939
  %48 = load i16, ptr %arrayidx92, align 2, !dbg !2939, !tbaa !1585
  %conv93 = sext i16 %48 to i32, !dbg !2939
  %cache95 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, !dbg !2940
  %i_cbp_left = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 14, !dbg !2941
  store i32 %conv93, ptr %i_cbp_left, align 4, !dbg !2942, !tbaa !2943
  %arrayidx98 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91, i64 4, !dbg !2944
  %49 = load i8, ptr %arrayidx98, align 1, !dbg !2944, !tbaa !1528
  %arrayidx104 = getelementptr inbounds [40 x i8], ptr %cache95, i64 0, i64 11, !dbg !2945
  store i8 %49, ptr %arrayidx104, align 1, !dbg !2946, !tbaa !1528
  %arrayidx107 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91, i64 5, !dbg !2947
  %50 = load i8, ptr %arrayidx107, align 1, !dbg !2947, !tbaa !1528
  %arrayidx113 = getelementptr inbounds [40 x i8], ptr %cache95, i64 0, i64 19, !dbg !2948
  store i8 %50, ptr %arrayidx113, align 1, !dbg !2949, !tbaa !1528
  %arrayidx116 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91, i64 6, !dbg !2950
  %51 = load i8, ptr %arrayidx116, align 1, !dbg !2950, !tbaa !1528
  %arrayidx122 = getelementptr inbounds [40 x i8], ptr %cache95, i64 0, i64 27, !dbg !2951
  store i8 %51, ptr %arrayidx122, align 1, !dbg !2952, !tbaa !1528
  %arrayidx125 = getelementptr inbounds [8 x i8], ptr %39, i64 %idxprom91, i64 3, !dbg !2953
  %52 = load i8, ptr %arrayidx125, align 1, !dbg !2953, !tbaa !1528
  %arrayidx131 = getelementptr inbounds [40 x i8], ptr %cache95, i64 0, i64 35, !dbg !2954
  store i8 %52, ptr %arrayidx131, align 1, !dbg !2955, !tbaa !1528
  %arrayidx134 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 3, !dbg !2956
  %53 = load i8, ptr %arrayidx134, align 1, !dbg !2956, !tbaa !1528
  %arrayidx140 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 11, !dbg !2957
  store i8 %53, ptr %arrayidx140, align 1, !dbg !2958, !tbaa !1528
  %arrayidx143 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 7, !dbg !2959
  %54 = load i8, ptr %arrayidx143, align 1, !dbg !2959, !tbaa !1528
  %arrayidx149 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 19, !dbg !2960
  store i8 %54, ptr %arrayidx149, align 1, !dbg !2961, !tbaa !1528
  %arrayidx152 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 11, !dbg !2962
  %55 = load i8, ptr %arrayidx152, align 1, !dbg !2962, !tbaa !1528
  %arrayidx158 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 27, !dbg !2963
  store i8 %55, ptr %arrayidx158, align 1, !dbg !2964, !tbaa !1528
  %arrayidx161 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 15, !dbg !2965
  %56 = load i8, ptr %arrayidx161, align 1, !dbg !2965, !tbaa !1528
  %arrayidx167 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 35, !dbg !2966
  store i8 %56, ptr %arrayidx167, align 1, !dbg !2967, !tbaa !1528
  %arrayidx170 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 17, !dbg !2968
  %57 = load i8, ptr %arrayidx170, align 1, !dbg !2968, !tbaa !1528
  %arrayidx176 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 8, !dbg !2969
  store i8 %57, ptr %arrayidx176, align 1, !dbg !2970, !tbaa !1528
  %arrayidx179 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 19, !dbg !2971
  %58 = load i8, ptr %arrayidx179, align 1, !dbg !2971, !tbaa !1528
  %arrayidx185 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 16, !dbg !2972
  store i8 %58, ptr %arrayidx185, align 1, !dbg !2973, !tbaa !1528
  %arrayidx188 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 21, !dbg !2974
  %59 = load i8, ptr %arrayidx188, align 1, !dbg !2974, !tbaa !1528
  %arrayidx194 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 32, !dbg !2975
  store i8 %59, ptr %arrayidx194, align 1, !dbg !2976, !tbaa !1528
  %arrayidx197 = getelementptr inbounds [24 x i8], ptr %40, i64 %idxprom91, i64 23, !dbg !2977
  %60 = load i8, ptr %arrayidx197, align 1, !dbg !2977, !tbaa !1528
  %arrayidx203 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 40, !dbg !2978
  store i8 %60, ptr %arrayidx203, align 1, !dbg !2979, !tbaa !1528
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !2980
  %61 = load i32, ptr %i_type, align 16, !dbg !2980, !tbaa !1494
  %cmp.not = icmp eq i32 %61, 2, !dbg !2981
  br i1 %cmp.not, label %if.end314.thread, label %for.cond.preheader, !dbg !2982

for.cond.preheader:                               ; preds = %if.then90
  %cmp208 = icmp eq i32 %61, 1
  %add210 = select i1 %cmp208, i64 2, i64 1
  %sub216 = add nsw i32 %add12, -1
  %idxprom217 = sext i32 %sub216 to i64
  %add223 = add nsw i32 %add12, 4
  %idxprom224 = sext i32 %add223 to i64
  %sub229 = add nsw i32 %add6, -1
  %idxprom230 = sext i32 %sub229 to i64
  %idxprom235 = sext i32 %38 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !2683, metadata !DIExpression()), !dbg !2983
  br label %for.body, !dbg !2984

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2683, metadata !DIExpression()), !dbg !2983
  %arrayidx215 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 %indvars.iv, !dbg !2985
  %62 = load ptr, ptr %arrayidx215, align 8, !dbg !2985, !tbaa !1619
  %arrayidx218 = getelementptr inbounds [2 x i16], ptr %62, i64 %idxprom217, !dbg !2985
  tail call void @llvm.prefetch.p0(ptr %arrayidx218, i32 0, i32 3, i32 1), !dbg !2985
  %arrayidx225 = getelementptr inbounds [2 x i16], ptr %62, i64 %idxprom224, !dbg !2988
  tail call void @llvm.prefetch.p0(ptr %arrayidx225, i32 0, i32 3, i32 1), !dbg !2988
  %arrayidx228 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 %indvars.iv, !dbg !2989
  %63 = load ptr, ptr %arrayidx228, align 8, !dbg !2989, !tbaa !1619
  %arrayidx231 = getelementptr inbounds i8, ptr %63, i64 %idxprom230, !dbg !2989
  tail call void @llvm.prefetch.p0(ptr %arrayidx231, i32 0, i32 3, i32 1), !dbg !2989
  %arrayidx234 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, i64 %indvars.iv, !dbg !2990
  %64 = load ptr, ptr %arrayidx234, align 8, !dbg !2990, !tbaa !1619
  %arrayidx236 = getelementptr inbounds [8 x [2 x i8]], ptr %64, i64 %idxprom235, !dbg !2990
  tail call void @llvm.prefetch.p0(ptr %arrayidx236, i32 0, i32 3, i32 1), !dbg !2990
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2683, metadata !DIExpression()), !dbg !2983
  %exitcond.not = icmp eq i64 %indvars.iv.next, %add210, !dbg !2992
  br i1 %exitcond.not, label %if.end314, label %for.body, !dbg !2984, !llvm.loop !2993

if.end314:                                        ; preds = %for.body
  %pps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !2995
  %65 = load ptr, ptr %pps, align 16, !dbg !2995, !tbaa !2314
  %b_transform_8x8_mode = getelementptr inbounds %struct.x264_pps_t, ptr %65, i64 0, i32 15, !dbg !2997
  %66 = load i32, ptr %b_transform_8x8_mode, align 4, !dbg !2997, !tbaa !2316
  %tobool315.not = icmp eq i32 %66, 0, !dbg !2998
  br i1 %tobool315.not, label %if.end342, label %land.rhs, !dbg !2999

if.end314.thread1446:                             ; preds = %if.end
  %cache240 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, !dbg !3000
  %i_cbp_left241 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 14, !dbg !3002
  store i32 -1, ptr %i_cbp_left241, align 4, !dbg !3003, !tbaa !2943
  %arrayidx247 = getelementptr inbounds [40 x i8], ptr %cache240, i64 0, i64 35, !dbg !3004
  store i8 -1, ptr %arrayidx247, align 1, !dbg !3005, !tbaa !1528
  %arrayidx253 = getelementptr inbounds [40 x i8], ptr %cache240, i64 0, i64 27, !dbg !3006
  store i8 -1, ptr %arrayidx253, align 1, !dbg !3007, !tbaa !1528
  %arrayidx259 = getelementptr inbounds [40 x i8], ptr %cache240, i64 0, i64 19, !dbg !3008
  store i8 -1, ptr %arrayidx259, align 1, !dbg !3009, !tbaa !1528
  %arrayidx265 = getelementptr inbounds [40 x i8], ptr %cache240, i64 0, i64 11, !dbg !3010
  store i8 -1, ptr %arrayidx265, align 1, !dbg !3011, !tbaa !1528
  %arrayidx271 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 40, !dbg !3012
  store i8 -128, ptr %arrayidx271, align 1, !dbg !3013, !tbaa !1528
  %arrayidx277 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 32, !dbg !3014
  store i8 -128, ptr %arrayidx277, align 1, !dbg !3015, !tbaa !1528
  %arrayidx283 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 16, !dbg !3016
  store i8 -128, ptr %arrayidx283, align 1, !dbg !3017, !tbaa !1528
  %arrayidx289 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 8, !dbg !3018
  store i8 -128, ptr %arrayidx289, align 1, !dbg !3019, !tbaa !1528
  %arrayidx295 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 35, !dbg !3020
  store i8 -128, ptr %arrayidx295, align 1, !dbg !3021, !tbaa !1528
  %arrayidx301 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 27, !dbg !3022
  store i8 -128, ptr %arrayidx301, align 1, !dbg !3023, !tbaa !1528
  %arrayidx307 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 19, !dbg !3024
  store i8 -128, ptr %arrayidx307, align 1, !dbg !3025, !tbaa !1528
  %arrayidx313 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 11, !dbg !3026
  store i8 -128, ptr %arrayidx313, align 1, !dbg !3027, !tbaa !1528
  %pps1447 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !2995
  %67 = load ptr, ptr %pps1447, align 16, !dbg !2995, !tbaa !2314
  %b_transform_8x8_mode1448 = getelementptr inbounds %struct.x264_pps_t, ptr %67, i64 0, i32 15, !dbg !2997
  %68 = load i32, ptr %b_transform_8x8_mode1448, align 4, !dbg !2997, !tbaa !2316
  %tobool315.not1449 = icmp eq i32 %68, 0, !dbg !2998
  br i1 %tobool315.not1449, label %if.end342, label %land.end, !dbg !2999

if.end314.thread:                                 ; preds = %if.then90
  %pps1443 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26, !dbg !2995
  %69 = load ptr, ptr %pps1443, align 16, !dbg !2995, !tbaa !2314
  %b_transform_8x8_mode1444 = getelementptr inbounds %struct.x264_pps_t, ptr %69, i64 0, i32 15, !dbg !2997
  %70 = load i32, ptr %b_transform_8x8_mode1444, align 4, !dbg !2997, !tbaa !2316
  %tobool315.not1445 = icmp eq i32 %70, 0, !dbg !2998
  br i1 %tobool315.not1445, label %if.end342, label %land.rhs, !dbg !2999

land.rhs:                                         ; preds = %if.end314, %if.end314.thread
  %mb_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !3028
  %71 = load ptr, ptr %mb_transform_size, align 8, !dbg !3028, !tbaa !2040
  %arrayidx323 = getelementptr inbounds i8, ptr %71, i64 %idxprom91, !dbg !3030
  %72 = load i8, ptr %arrayidx323, align 1, !dbg !3030, !tbaa !1528
  %tobool325 = icmp ne i8 %72, 0, !dbg !3031
  br label %land.end

land.end:                                         ; preds = %if.end314.thread1446, %land.rhs
  %73 = phi i1 [ %tobool325, %land.rhs ], [ false, %if.end314.thread1446 ], !dbg !3032
  %land.ext = zext i1 %73 to i32, !dbg !3031
  br i1 %tobool.not, label %land.end337, label %land.rhs330, !dbg !3033

land.rhs330:                                      ; preds = %land.end
  %mb_transform_size332 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !3034
  %74 = load ptr, ptr %mb_transform_size332, align 8, !dbg !3034, !tbaa !2040
  %idxprom333 = sext i32 %38 to i64, !dbg !3035
  %arrayidx334 = getelementptr inbounds i8, ptr %74, i64 %idxprom333, !dbg !3035
  %75 = load i8, ptr %arrayidx334, align 1, !dbg !3035, !tbaa !1528
  %tobool336 = icmp ne i8 %75, 0, !dbg !3033
  br label %land.end337

land.end337:                                      ; preds = %land.rhs330, %land.end
  %76 = phi i1 [ false, %land.end ], [ %tobool336, %land.rhs330 ], !dbg !3032
  %land.ext338 = zext i1 %76 to i32, !dbg !3033
  %add339 = add nuw nsw i32 %land.ext338, %land.ext, !dbg !3036
  %i_neighbour_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 11, !dbg !3037
  store i32 %add339, ptr %i_neighbour_transform_size, align 8, !dbg !3038, !tbaa !3039
  br label %if.end342, !dbg !3040

if.end342:                                        ; preds = %if.end314.thread1446, %if.end314.thread, %land.end337, %if.end314
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !3041
  %77 = load i32, ptr %b_mbaff, align 4, !dbg !3041, !tbaa !2510
  %tobool344.not = icmp eq i32 %77, 0, !dbg !3043
  br i1 %tobool344.not, label %if.end374, label %if.then345, !dbg !3044

if.then345:                                       ; preds = %if.end342
  %i_ref0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 46, !dbg !3045
  %78 = load i32, ptr %i_ref0, align 8, !dbg !3045, !tbaa !2435
  %shl348 = shl i32 %78, %0, !dbg !3047
  %i_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, !dbg !3048
  store i32 %shl348, ptr %i_fref, align 8, !dbg !3049, !tbaa !1589
  %i_ref1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 48, !dbg !3050
  %79 = load i32, ptr %i_ref1, align 8, !dbg !3050, !tbaa !2439
  %shl353 = shl i32 %79, %0, !dbg !3051
  %arrayidx357 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, i64 1, !dbg !3052
  store i32 %shl353, ptr %arrayidx357, align 4, !dbg !3053, !tbaa !1589
  %and365 = lshr i32 %37, 1, !dbg !3054
  %and365.lobit = and i32 %and365, 1, !dbg !3054
  %add371 = add nuw nsw i32 %and365.lobit, %and88, !dbg !3055
  %i_neighbour_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 12, !dbg !3056
  store i32 %add371, ptr %i_neighbour_interlaced, align 4, !dbg !3057, !tbaa !3058
  br label %if.end374, !dbg !3059

if.end374:                                        ; preds = %if.then345, %if.end342
  %tobool377.not = icmp eq i32 %0, 0, !dbg !3060
  br i1 %tobool377.not, label %if.then378, label %if.end425, !dbg !3062

if.then378:                                       ; preds = %if.end374
  %p_fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, !dbg !3063
  %80 = load ptr, ptr %p_fdec, align 16, !dbg !3065, !tbaa !1619
  %add.ptr382 = getelementptr inbounds i8, ptr %80, i64 127, !dbg !3066
  %add.ptr388 = getelementptr inbounds i8, ptr %80, i64 143, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %add.ptr382, metadata !3068, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %add.ptr388, metadata !3071, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i32 -4, metadata !3072, metadata !DIExpression()), !dbg !3076
  br label %for.body.i, !dbg !3077

for.body.i:                                       ; preds = %for.body.i, %if.then378
  %indvars.iv.i = phi i64 [ -4, %if.then378 ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !3072, metadata !DIExpression()), !dbg !3076
  %81 = shl nsw i64 %indvars.iv.i, 5, !dbg !3078
  %arrayidx.i1417 = getelementptr inbounds i8, ptr %add.ptr388, i64 %81, !dbg !3080
  %82 = load i8, ptr %arrayidx.i1417, align 1, !dbg !3080, !tbaa !1528
  %arrayidx3.i = getelementptr inbounds i8, ptr %add.ptr382, i64 %81, !dbg !3081
  store i8 %82, ptr %arrayidx3.i, align 1, !dbg !3082, !tbaa !1528
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !3072, metadata !DIExpression()), !dbg !3076
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !3084
  br i1 %exitcond.not.i, label %copy_column8.exit, label %for.body.i, !dbg !3077, !llvm.loop !3085

copy_column8.exit:                                ; preds = %for.body.i
  %83 = load ptr, ptr %p_fdec, align 16, !dbg !3087, !tbaa !1619
  %add.ptr394 = getelementptr inbounds i8, ptr %83, i64 383, !dbg !3088
  %add.ptr400 = getelementptr inbounds i8, ptr %83, i64 399, !dbg !3089
  call void @llvm.dbg.value(metadata ptr %add.ptr394, metadata !3068, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %add.ptr400, metadata !3071, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i32 -4, metadata !3072, metadata !DIExpression()), !dbg !3092
  br label %for.body.i1423, !dbg !3093

for.body.i1423:                                   ; preds = %for.body.i1423, %copy_column8.exit
  %indvars.iv.i1418 = phi i64 [ -4, %copy_column8.exit ], [ %indvars.iv.next.i1421, %for.body.i1423 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1418, metadata !3072, metadata !DIExpression()), !dbg !3092
  %84 = shl nsw i64 %indvars.iv.i1418, 5, !dbg !3094
  %arrayidx.i1419 = getelementptr inbounds i8, ptr %add.ptr400, i64 %84, !dbg !3095
  %85 = load i8, ptr %arrayidx.i1419, align 1, !dbg !3095, !tbaa !1528
  %arrayidx3.i1420 = getelementptr inbounds i8, ptr %add.ptr394, i64 %84, !dbg !3096
  store i8 %85, ptr %arrayidx3.i1420, align 1, !dbg !3097, !tbaa !1528
  %indvars.iv.next.i1421 = add nsw i64 %indvars.iv.i1418, 1, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1421, metadata !3072, metadata !DIExpression()), !dbg !3092
  %exitcond.not.i1422 = icmp eq i64 %indvars.iv.next.i1421, 4, !dbg !3099
  br i1 %exitcond.not.i1422, label %copy_column8.exit1424, label %for.body.i1423, !dbg !3093, !llvm.loop !3100

copy_column8.exit1424:                            ; preds = %for.body.i1423
  %arrayidx404 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !3102
  %86 = load ptr, ptr %arrayidx404, align 8, !dbg !3102, !tbaa !1619
  %add.ptr406 = getelementptr inbounds i8, ptr %86, i64 127, !dbg !3103
  %add.ptr412 = getelementptr inbounds i8, ptr %86, i64 135, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %add.ptr406, metadata !3068, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr %add.ptr412, metadata !3071, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i32 -4, metadata !3072, metadata !DIExpression()), !dbg !3107
  br label %for.body.i1430, !dbg !3108

for.body.i1430:                                   ; preds = %for.body.i1430, %copy_column8.exit1424
  %indvars.iv.i1425 = phi i64 [ -4, %copy_column8.exit1424 ], [ %indvars.iv.next.i1428, %for.body.i1430 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1425, metadata !3072, metadata !DIExpression()), !dbg !3107
  %87 = shl nsw i64 %indvars.iv.i1425, 5, !dbg !3109
  %arrayidx.i1426 = getelementptr inbounds i8, ptr %add.ptr412, i64 %87, !dbg !3110
  %88 = load i8, ptr %arrayidx.i1426, align 1, !dbg !3110, !tbaa !1528
  %arrayidx3.i1427 = getelementptr inbounds i8, ptr %add.ptr406, i64 %87, !dbg !3111
  store i8 %88, ptr %arrayidx3.i1427, align 1, !dbg !3112, !tbaa !1528
  %indvars.iv.next.i1428 = add nsw i64 %indvars.iv.i1425, 1, !dbg !3113
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1428, metadata !3072, metadata !DIExpression()), !dbg !3107
  %exitcond.not.i1429 = icmp eq i64 %indvars.iv.next.i1428, 4, !dbg !3114
  br i1 %exitcond.not.i1429, label %copy_column8.exit1431, label %for.body.i1430, !dbg !3108, !llvm.loop !3115

copy_column8.exit1431:                            ; preds = %for.body.i1430
  %arrayidx416 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !3117
  %89 = load ptr, ptr %arrayidx416, align 16, !dbg !3117, !tbaa !1619
  %add.ptr418 = getelementptr inbounds i8, ptr %89, i64 127, !dbg !3118
  %add.ptr424 = getelementptr inbounds i8, ptr %89, i64 135, !dbg !3119
  call void @llvm.dbg.value(metadata ptr %add.ptr418, metadata !3068, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata ptr %add.ptr424, metadata !3071, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 -4, metadata !3072, metadata !DIExpression()), !dbg !3122
  br label %for.body.i1437, !dbg !3123

for.body.i1437:                                   ; preds = %for.body.i1437, %copy_column8.exit1431
  %indvars.iv.i1432 = phi i64 [ -4, %copy_column8.exit1431 ], [ %indvars.iv.next.i1435, %for.body.i1437 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i1432, metadata !3072, metadata !DIExpression()), !dbg !3122
  %90 = shl nsw i64 %indvars.iv.i1432, 5, !dbg !3124
  %arrayidx.i1433 = getelementptr inbounds i8, ptr %add.ptr424, i64 %90, !dbg !3125
  %91 = load i8, ptr %arrayidx.i1433, align 1, !dbg !3125, !tbaa !1528
  %arrayidx3.i1434 = getelementptr inbounds i8, ptr %add.ptr418, i64 %90, !dbg !3126
  store i8 %91, ptr %arrayidx3.i1434, align 1, !dbg !3127, !tbaa !1528
  %indvars.iv.next.i1435 = add nsw i64 %indvars.iv.i1432, 1, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i1435, metadata !3072, metadata !DIExpression()), !dbg !3122
  %exitcond.not.i1436 = icmp eq i64 %indvars.iv.next.i1435, 4, !dbg !3129
  br i1 %exitcond.not.i1436, label %if.end425, label %for.body.i1437, !dbg !3123, !llvm.loop !3130

if.end425:                                        ; preds = %for.body.i1437, %if.end374
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 0), !dbg !3132
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 1), !dbg !3133
  tail call fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef 2), !dbg !3134
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !3135
  %92 = load ptr, ptr %fdec, align 16, !dbg !3135, !tbaa !2286
  %integral = getelementptr inbounds %struct.x264_frame, ptr %92, i64 0, i32 33, !dbg !3136
  %93 = load ptr, ptr %integral, align 16, !dbg !3136, !tbaa !3137
  %tobool426.not = icmp eq ptr %93, null, !dbg !3138
  br i1 %tobool426.not, label %if.end479, label %if.then427, !dbg !3139

if.then427:                                       ; preds = %if.end425
  %i_stride = getelementptr inbounds %struct.x264_frame, ptr %92, i64 0, i32 24, !dbg !3140
  %94 = load i32, ptr %i_stride, align 8, !dbg !3141, !tbaa !1589
  %mul430 = mul nsw i32 %94, %mb_y, !dbg !3142
  %add431 = add nsw i32 %mul430, %mb_x, !dbg !3143
  %mul432 = shl nsw i32 %add431, 4, !dbg !3144
  call void @llvm.dbg.value(metadata i32 %mul432, metadata !2688, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i32 0, metadata !2691, metadata !DIExpression()), !dbg !3146
  %i_fref436 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19
  %95 = load i32, ptr %i_fref436, align 8, !tbaa !1589
  %cmp4381453 = icmp sgt i32 %95, 0, !dbg !3147
  br i1 %cmp4381453, label %for.body441.lr.ph, label %for.cond456.preheader, !dbg !3149

for.body441.lr.ph:                                ; preds = %if.then427
  %idxprom445 = sext i32 %mul432 to i64
  %p_integral = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 22
  %wide.trip.count1464 = zext i32 %95 to i64, !dbg !3147
  br label %for.body441, !dbg !3149

for.cond456.preheader:                            ; preds = %for.body441, %if.then427
  %arrayidx460 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, i64 1
  %96 = load i32, ptr %arrayidx460, align 4, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !2693, metadata !DIExpression()), !dbg !3150
  %cmp4611455 = icmp sgt i32 %96, 0, !dbg !3151
  br i1 %cmp4611455, label %for.body464.lr.ph, label %if.end479, !dbg !3153

for.body464.lr.ph:                                ; preds = %for.cond456.preheader
  %idxprom468 = sext i32 %mul432 to i64
  %wide.trip.count1469 = zext i32 %96 to i64, !dbg !3151
  br label %for.body464, !dbg !3153

for.body441:                                      ; preds = %for.body441.lr.ph, %for.body441
  %indvars.iv1461 = phi i64 [ 0, %for.body441.lr.ph ], [ %indvars.iv.next1462, %for.body441 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1461, metadata !2691, metadata !DIExpression()), !dbg !3146
  %arrayidx443 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %indvars.iv1461, !dbg !3154
  %97 = load ptr, ptr %arrayidx443, align 8, !dbg !3154, !tbaa !1619
  %integral444 = getelementptr inbounds %struct.x264_frame, ptr %97, i64 0, i32 33, !dbg !3155
  %98 = load ptr, ptr %integral444, align 16, !dbg !3155, !tbaa !3137
  %arrayidx446 = getelementptr inbounds i16, ptr %98, i64 %idxprom445, !dbg !3154
  %arrayidx451 = getelementptr inbounds [16 x ptr], ptr %p_integral, i64 0, i64 %indvars.iv1461, !dbg !3156
  store ptr %arrayidx446, ptr %arrayidx451, align 8, !dbg !3157, !tbaa !1619
  %indvars.iv.next1462 = add nuw nsw i64 %indvars.iv1461, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1462, metadata !2691, metadata !DIExpression()), !dbg !3146
  %exitcond1465.not = icmp eq i64 %indvars.iv.next1462, %wide.trip.count1464, !dbg !3147
  br i1 %exitcond1465.not, label %for.cond456.preheader, label %for.body441, !dbg !3149, !llvm.loop !3159

for.body464:                                      ; preds = %for.body464.lr.ph, %for.body464
  %indvars.iv1466 = phi i64 [ 0, %for.body464.lr.ph ], [ %indvars.iv.next1467, %for.body464 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1466, metadata !2693, metadata !DIExpression()), !dbg !3150
  %arrayidx466 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, i64 %indvars.iv1466, !dbg !3161
  %99 = load ptr, ptr %arrayidx466, align 8, !dbg !3161, !tbaa !1619
  %integral467 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 33, !dbg !3162
  %100 = load ptr, ptr %integral467, align 16, !dbg !3162, !tbaa !3137
  %arrayidx469 = getelementptr inbounds i16, ptr %100, i64 %idxprom468, !dbg !3161
  %arrayidx475 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 22, i64 1, i64 %indvars.iv1466, !dbg !3163
  store ptr %arrayidx469, ptr %arrayidx475, align 8, !dbg !3164, !tbaa !1619
  %indvars.iv.next1467 = add nuw nsw i64 %indvars.iv1466, 1, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1467, metadata !2693, metadata !DIExpression()), !dbg !3150
  %exitcond1470.not = icmp eq i64 %indvars.iv.next1467, %wide.trip.count1469, !dbg !3151
  br i1 %exitcond1470.not, label %if.end479, label %for.body464, !dbg !3153, !llvm.loop !3166

if.end479:                                        ; preds = %for.body464, %for.cond456.preheader, %if.end425
  %fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 44, !dbg !3168
  %101 = load ptr, ptr %fenc, align 8, !dbg !3168, !tbaa !3169
  call void @llvm.dbg.value(metadata ptr %h, metadata !2639, metadata !DIExpression()) #11, !dbg !3170
  call void @llvm.dbg.value(metadata ptr %101, metadata !2640, metadata !DIExpression()) #11, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !2641, metadata !DIExpression()) #11, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !2642, metadata !DIExpression()) #11, !dbg !3170
  %i_stride.i = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 24, !dbg !3172
  %102 = load i32, ptr %i_stride.i, align 8, !dbg !3173, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %102, metadata !2643, metadata !DIExpression()) #11, !dbg !3170
  %arrayidx2.i = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 24, i64 1, !dbg !3174
  %103 = load i32, ptr %arrayidx2.i, align 4, !dbg !3174, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %103, metadata !2644, metadata !DIExpression()) #11, !dbg !3170
  %mul.i1439 = mul nsw i32 %102, %mb_y, !dbg !3175
  %add.i1440 = add nsw i32 %mul.i1439, %mb_x, !dbg !3176
  %mul3.i = shl nsw i32 %add.i1440, 4, !dbg !3177
  call void @llvm.dbg.value(metadata i32 %mul3.i, metadata !2645, metadata !DIExpression()) #11, !dbg !3170
  %mul4.i = mul nsw i32 %103, %mb_y, !dbg !3178
  %add5.i = add nsw i32 %mul4.i, %mb_x, !dbg !3179
  %mul6.i1441 = shl nsw i32 %add5.i, 3, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %mul6.i1441, metadata !2646, metadata !DIExpression()) #11, !dbg !3170
  %prefetch_fenc.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 8, !dbg !3181
  %104 = load ptr, ptr %prefetch_fenc.i, align 8, !dbg !3181, !tbaa !2658
  %plane.i = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 30, !dbg !3182
  %105 = load ptr, ptr %plane.i, align 8, !dbg !3183, !tbaa !1619
  %idx.ext.i = sext i32 %mul3.i to i64, !dbg !3184
  %add.ptr.i = getelementptr inbounds i8, ptr %105, i64 %idx.ext.i, !dbg !3184
  %and.i = and i32 %mb_x, 1, !dbg !3185
  %add9.i = add nuw nsw i32 %and.i, 1, !dbg !3186
  %106 = zext i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds %struct.x264_frame, ptr %101, i64 0, i32 30, i64 %106, !dbg !3187
  %107 = load ptr, ptr %arrayidx10.i, align 8, !dbg !3187, !tbaa !1619
  %idx.ext11.i = sext i32 %mul6.i1441 to i64, !dbg !3188
  %add.ptr12.i = getelementptr inbounds i8, ptr %107, i64 %idx.ext11.i, !dbg !3188
  tail call void %104(ptr noundef %add.ptr.i, i32 noundef %102, ptr noundef %add.ptr12.i, i32 noundef %103, i32 noundef %mb_x) #11, !dbg !3189
  %i_type481 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !3190
  %108 = load i32, ptr %i_type481, align 16, !dbg !3190, !tbaa !1494
  %cmp482.not = icmp eq i32 %108, 2, !dbg !3191
  br i1 %cmp482.not, label %if.end1018, label %if.then484, !dbg !3192

if.then484:                                       ; preds = %if.end479
  %109 = load i32, ptr %i_b8_stride.i, align 8, !dbg !3193, !tbaa !2014
  call void @llvm.dbg.value(metadata i32 %109, metadata !2695, metadata !DIExpression()), !dbg !3194
  %110 = load i32, ptr %i_b4_stride.i, align 4, !dbg !3195, !tbaa !2018
  call void @llvm.dbg.value(metadata i32 %110, metadata !2698, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()), !dbg !3196
  %cmp493 = icmp eq i32 %108, 1
  %add495 = select i1 %cmp493, i64 2, i64 1
  %111 = load i32, ptr %i_neighbour.i, align 8, !tbaa !2765
  %and514 = and i32 %111, 8
  %tobool515.not = icmp eq i32 %and514, 0
  %and558 = and i32 %111, 2
  %tobool559.not = icmp eq i32 %and558, 0
  %and632 = and i32 %111, 4
  %tobool633.not = icmp eq i32 %and632, 0
  %and669 = and i32 %111, 1
  %tobool670.not = icmp eq i32 %and669, 0
  %b_cabac = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 24
  %112 = load i32, ptr %b_cabac, align 16, !tbaa !2061
  %tobool802.not = icmp eq i32 %112, 0
  %sub517 = add nsw i32 %add6, -1
  %idxprom518 = sext i32 %sub517 to i64
  %sub527 = add nsw i32 %add12, -1
  %idxprom528 = sext i32 %sub527 to i64
  %idxprom562 = sext i32 %add6 to i64
  %add580 = add nsw i32 %add6, 1
  %idxprom581 = sext i32 %add580 to i64
  %idxprom607 = sext i32 %add12 to i64
  %add635 = add nsw i32 %add6, 2
  %idxprom636 = sext i32 %add635 to i64
  %add645 = add nsw i32 %add12, 4
  %idxprom646 = sext i32 %add645 to i64
  %mul744 = shl nsw i32 %110, 1
  %mul758 = mul nsw i32 %110, 3
  %idxprom814 = sext i32 %38 to i64
  %idxprom843 = sext i32 %8 to i64
  br label %for.body499, !dbg !3197

for.cond.cleanup498:                              ; preds = %if.end917
  br i1 %cmp493, label %if.then925, label %if.end1008, !dbg !3198

for.body499:                                      ; preds = %if.then484, %if.end917
  %indvars.iv1483 = phi i64 [ 0, %if.then484 ], [ %indvars.iv.next1484, %if.end917 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1483, metadata !2699, metadata !DIExpression()), !dbg !3196
  %arrayidx504 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 %indvars.iv1483, !dbg !3199
  %113 = load ptr, ptr %arrayidx504, align 8, !dbg !3199, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %113, metadata !2701, metadata !DIExpression()), !dbg !3200
  %arrayidx509 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 %indvars.iv1483, !dbg !3201
  %114 = load ptr, ptr %arrayidx509, align 8, !dbg !3201, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %114, metadata !2704, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 3, metadata !2705, metadata !DIExpression()), !dbg !3200
  br i1 %tobool515.not, label %if.else538, label %if.then516, !dbg !3202

if.then516:                                       ; preds = %for.body499
  %arrayidx519 = getelementptr inbounds i8, ptr %114, i64 %idxprom518, !dbg !3203
  %115 = load i8, ptr %arrayidx519, align 1, !dbg !3203, !tbaa !1528
  %arrayidx526 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 3, !dbg !3206
  store i8 %115, ptr %arrayidx526, align 1, !dbg !3207, !tbaa !1528
  %arrayidx529 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom528, !dbg !3208
  %116 = load i32, ptr %arrayidx529, align 4, !dbg !3208, !tbaa !1528
  br label %if.end554, !dbg !3209

if.else538:                                       ; preds = %for.body499
  %arrayidx545 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 3, !dbg !3210
  store i8 -2, ptr %arrayidx545, align 1, !dbg !3212, !tbaa !1528
  br label %if.end554

if.end554:                                        ; preds = %if.else538, %if.then516
  %.sink = phi i32 [ 0, %if.else538 ], [ %116, %if.then516 ], !dbg !3213
  %117 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 3, !dbg !3214
  store i32 %.sink, ptr %117, align 4, !dbg !3215
  call void @llvm.dbg.value(metadata i32 4, metadata !2705, metadata !DIExpression()), !dbg !3200
  br i1 %tobool559.not, label %if.else610, label %if.then560, !dbg !3216

if.then560:                                       ; preds = %if.end554
  %arrayidx563 = getelementptr inbounds i8, ptr %114, i64 %idxprom562, !dbg !3217
  %118 = load i8, ptr %arrayidx563, align 1, !dbg !3217, !tbaa !1528
  %arrayidx571 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 5, !dbg !3220
  store i8 %118, ptr %arrayidx571, align 1, !dbg !3221, !tbaa !1528
  %arrayidx579 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 4, !dbg !3222
  store i8 %118, ptr %arrayidx579, align 1, !dbg !3223, !tbaa !1528
  %arrayidx582 = getelementptr inbounds i8, ptr %114, i64 %idxprom581, !dbg !3224
  %119 = load i8, ptr %arrayidx582, align 1, !dbg !3224, !tbaa !1528
  %arrayidx590 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 7, !dbg !3225
  store i8 %119, ptr %arrayidx590, align 1, !dbg !3226, !tbaa !1528
  %arrayidx598 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 6, !dbg !3227
  store i8 %119, ptr %arrayidx598, align 1, !dbg !3228, !tbaa !1528
  %arrayidx605 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 4, !dbg !3229
  %arrayidx608 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom607, !dbg !3229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx605, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx608, i64 16, i1 false), !dbg !3229, !tbaa.struct !3230
  br label %if.end627, !dbg !3231

if.else610:                                       ; preds = %if.end554
  %arrayidx617 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 4, !dbg !3232
  %arrayidx626 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 4, !dbg !3234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx617, i8 0, i64 16, i1 false), !dbg !3235
  store i32 -16843010, ptr %arrayidx626, align 1, !dbg !3236, !tbaa !1528
  br label %if.end627

if.end627:                                        ; preds = %if.else610, %if.then560
  call void @llvm.dbg.value(metadata i32 8, metadata !2705, metadata !DIExpression()), !dbg !3200
  br i1 %tobool633.not, label %if.else657, label %if.then634, !dbg !3237

if.then634:                                       ; preds = %if.end627
  %arrayidx637 = getelementptr inbounds i8, ptr %114, i64 %idxprom636, !dbg !3238
  %120 = load i8, ptr %arrayidx637, align 1, !dbg !3238, !tbaa !1528
  %arrayidx644 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 8, !dbg !3241
  store i8 %120, ptr %arrayidx644, align 1, !dbg !3242, !tbaa !1528
  %arrayidx647 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom646, !dbg !3243
  %121 = load i32, ptr %arrayidx647, align 4, !dbg !3243, !tbaa !1528
  %arrayidx655 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 8, !dbg !3243
  store i32 %121, ptr %arrayidx655, align 4, !dbg !3243, !tbaa !1528
  br label %if.end665, !dbg !3244

if.else657:                                       ; preds = %if.end627
  %arrayidx664 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 8, !dbg !3245
  store i8 -2, ptr %arrayidx664, align 1, !dbg !3246, !tbaa !1528
  br label %if.end665

if.end665:                                        ; preds = %if.else657, %if.then634
  call void @llvm.dbg.value(metadata i32 11, metadata !2705, metadata !DIExpression()), !dbg !3200
  br i1 %tobool670.not, label %for.body778, label %if.then671, !dbg !3247

if.then671:                                       ; preds = %if.end665
  %122 = load i32, ptr %i_b8_xy.i, align 4, !dbg !3248, !tbaa !2755
  %sub673 = add nsw i32 %122, -1, !dbg !3249
  call void @llvm.dbg.value(metadata i32 %sub673, metadata !2706, metadata !DIExpression()), !dbg !3250
  %123 = load i32, ptr %i_b4_xy.i, align 16, !dbg !3251, !tbaa !2762
  %sub675 = add nsw i32 %123, -1, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %sub675, metadata !2709, metadata !DIExpression()), !dbg !3250
  %idxprom678 = sext i32 %sub673 to i64, !dbg !3253
  %arrayidx679 = getelementptr inbounds i8, ptr %114, i64 %idxprom678, !dbg !3253
  %124 = load i8, ptr %arrayidx679, align 1, !dbg !3253, !tbaa !1528
  %arrayidx687 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 19, !dbg !3254
  store i8 %124, ptr %arrayidx687, align 1, !dbg !3255, !tbaa !1528
  %arrayidx695 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 11, !dbg !3256
  store i8 %124, ptr %arrayidx695, align 1, !dbg !3257, !tbaa !1528
  %add697 = add nsw i32 %sub673, %109, !dbg !3258
  %idxprom698 = sext i32 %add697 to i64, !dbg !3259
  %arrayidx699 = getelementptr inbounds i8, ptr %114, i64 %idxprom698, !dbg !3259
  %125 = load i8, ptr %arrayidx699, align 1, !dbg !3259, !tbaa !1528
  %arrayidx707 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 35, !dbg !3260
  store i8 %125, ptr %arrayidx707, align 1, !dbg !3261, !tbaa !1528
  %arrayidx715 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 27, !dbg !3262
  store i8 %125, ptr %arrayidx715, align 1, !dbg !3263, !tbaa !1528
  %idxprom718 = sext i32 %sub675 to i64, !dbg !3264
  %arrayidx719 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom718, !dbg !3264
  %126 = load i32, ptr %arrayidx719, align 4, !dbg !3264, !tbaa !1528
  %arrayidx728 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 11, !dbg !3264
  store i32 %126, ptr %arrayidx728, align 4, !dbg !3264, !tbaa !1528
  %add731 = add nsw i32 %sub675, %110, !dbg !3265
  %idxprom732 = sext i32 %add731 to i64, !dbg !3265
  %arrayidx733 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom732, !dbg !3265
  %127 = load i32, ptr %arrayidx733, align 4, !dbg !3265, !tbaa !1528
  %arrayidx742 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 19, !dbg !3265
  store i32 %127, ptr %arrayidx742, align 4, !dbg !3265, !tbaa !1528
  %add745 = add nsw i32 %sub675, %mul744, !dbg !3266
  %idxprom746 = sext i32 %add745 to i64, !dbg !3266
  %arrayidx747 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom746, !dbg !3266
  %128 = load i32, ptr %arrayidx747, align 4, !dbg !3266, !tbaa !1528
  %arrayidx756 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 27, !dbg !3266
  store i32 %128, ptr %arrayidx756, align 4, !dbg !3266, !tbaa !1528
  %add759 = add nsw i32 %sub675, %mul758, !dbg !3267
  %idxprom760 = sext i32 %add759 to i64, !dbg !3267
  %arrayidx761 = getelementptr inbounds [2 x i16], ptr %113, i64 %idxprom760, !dbg !3267
  %129 = load i32, ptr %arrayidx761, align 4, !dbg !3267, !tbaa !1528
  %arrayidx770 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 35, !dbg !3267
  store i32 %129, ptr %arrayidx770, align 4, !dbg !3267, !tbaa !1528
  br label %if.end801, !dbg !3268

for.body778:                                      ; preds = %if.end665, %for.body778
  %indvars.iv1471 = phi i64 [ %indvars.iv.next1472, %for.body778 ], [ 0, %if.end665 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1471, metadata !2710, metadata !DIExpression()), !dbg !3269
  %130 = shl nuw nsw i64 %indvars.iv1471, 3, !dbg !3270
  %131 = add nuw nsw i64 %130, 11, !dbg !3273
  %arrayidx787 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv1483, i64 %131, !dbg !3274
  store i8 -2, ptr %arrayidx787, align 1, !dbg !3275, !tbaa !1528
  %arrayidx796 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv1483, i64 %131, !dbg !3276
  store i32 0, ptr %arrayidx796, align 4, !dbg !3277, !tbaa !1528
  %indvars.iv.next1472 = add nuw nsw i64 %indvars.iv1471, 1, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1472, metadata !2710, metadata !DIExpression()), !dbg !3269
  %exitcond1476.not = icmp eq i64 %indvars.iv.next1472, 4, !dbg !3279
  br i1 %exitcond1476.not, label %if.end801, label %for.body778, !dbg !3280, !llvm.loop !3281

if.end801:                                        ; preds = %for.body778, %if.then671
  br i1 %tobool802.not, label %if.end917, label %if.then803, !dbg !3283

if.then803:                                       ; preds = %if.end801
  %arrayidx808 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, i64 %indvars.iv1483, !dbg !3284
  %132 = load ptr, ptr %arrayidx808, align 8, !dbg !3284, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %132, metadata !2713, metadata !DIExpression()), !dbg !3285
  br i1 %tobool559.not, label %if.end837, label %if.then813, !dbg !3286

if.then813:                                       ; preds = %if.then803
  %arrayidx815 = getelementptr inbounds [8 x [2 x i8]], ptr %132, i64 %idxprom814, !dbg !3287
  %133 = load i64, ptr %arrayidx815, align 8, !dbg !3287, !tbaa !1528
  br label %if.end837, !dbg !3287

if.end837:                                        ; preds = %if.then803, %if.then813
  %.sink1489 = phi i64 [ %133, %if.then813 ], [ 0, %if.then803 ], !dbg !3289
  %134 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 4, !dbg !3290
  store i64 %.sink1489, ptr %134, align 2, !dbg !3291
  br i1 %tobool670.not, label %for.body901, label %if.then842, !dbg !3292

if.then842:                                       ; preds = %if.end837
  %arrayidx845 = getelementptr inbounds [8 x [2 x i8]], ptr %132, i64 %idxprom843, i64 4, !dbg !3293
  %135 = load i16, ptr %arrayidx845, align 2, !dbg !3293, !tbaa !1528
  %arrayidx854 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 11, !dbg !3293
  store i16 %135, ptr %arrayidx854, align 2, !dbg !3293, !tbaa !1528
  %arrayidx858 = getelementptr inbounds [8 x [2 x i8]], ptr %132, i64 %idxprom843, i64 5, !dbg !3295
  %136 = load i16, ptr %arrayidx858, align 2, !dbg !3295, !tbaa !1528
  %arrayidx867 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 19, !dbg !3295
  store i16 %136, ptr %arrayidx867, align 2, !dbg !3295, !tbaa !1528
  %arrayidx871 = getelementptr inbounds [8 x [2 x i8]], ptr %132, i64 %idxprom843, i64 6, !dbg !3296
  %137 = load i16, ptr %arrayidx871, align 2, !dbg !3296, !tbaa !1528
  %arrayidx880 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 27, !dbg !3296
  store i16 %137, ptr %arrayidx880, align 2, !dbg !3296, !tbaa !1528
  %arrayidx884 = getelementptr inbounds [8 x [2 x i8]], ptr %132, i64 %idxprom843, i64 3, !dbg !3297
  %138 = load i16, ptr %arrayidx884, align 2, !dbg !3297, !tbaa !1528
  %arrayidx893 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 35, !dbg !3297
  store i16 %138, ptr %arrayidx893, align 2, !dbg !3297, !tbaa !1528
  br label %if.end917, !dbg !3298

for.body901:                                      ; preds = %if.end837, %for.body901
  %indvars.iv1477 = phi i64 [ %indvars.iv.next1478, %for.body901 ], [ 0, %if.end837 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1477, metadata !2716, metadata !DIExpression()), !dbg !3299
  %139 = shl nuw nsw i64 %indvars.iv1477, 3, !dbg !3300
  %140 = add nuw nsw i64 %139, 11, !dbg !3300
  %arrayidx911 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 %indvars.iv1483, i64 %140, !dbg !3300
  store i16 0, ptr %arrayidx911, align 2, !dbg !3302, !tbaa !1528
  %indvars.iv.next1478 = add nuw nsw i64 %indvars.iv1477, 1, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1478, metadata !2716, metadata !DIExpression()), !dbg !3299
  %exitcond1482.not = icmp eq i64 %indvars.iv.next1478, 4, !dbg !3304
  br i1 %exitcond1482.not, label %if.end917, label %for.body901, !dbg !3305, !llvm.loop !3306

if.end917:                                        ; preds = %for.body901, %if.then842, %if.end801
  %indvars.iv.next1484 = add nuw nsw i64 %indvars.iv1483, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1484, metadata !2699, metadata !DIExpression()), !dbg !3196
  %exitcond1488.not = icmp eq i64 %indvars.iv.next1484, %add495, !dbg !3309
  br i1 %exitcond1488.not, label %for.cond.cleanup498, label %for.body499, !dbg !3197, !llvm.loop !3310

if.then925:                                       ; preds = %for.cond.cleanup498
  %141 = load i32, ptr %b_interlaced.i, align 4, !dbg !3312, !tbaa !1633
  %and929 = and i32 %mb_y, 1, !dbg !3313
  %and930 = and i32 %and929, %141, !dbg !3314
  %142 = zext i32 %and930 to i64
  %arrayidx932 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 81, i64 %142, !dbg !3315
  %bipred_weight = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 82, !dbg !3316
  store ptr %arrayidx932, ptr %bipred_weight, align 16, !dbg !3317, !tbaa !1705
  %arrayidx941 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 79, i64 %142, !dbg !3318
  %dist_scale_factor = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 80, !dbg !3319
  store ptr %arrayidx941, ptr %dist_scale_factor, align 8, !dbg !3320, !tbaa !3321
  %143 = load i32, ptr %b_cabac, align 16, !dbg !3322, !tbaa !2061
  %tobool946.not = icmp eq i32 %143, 0, !dbg !3323
  br i1 %tobool946.not, label %if.end1018, label %if.then947, !dbg !3324

if.then947:                                       ; preds = %if.then925
  call void @llvm.dbg.value(metadata ptr %h, metadata !3325, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3332, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 4, metadata !3333, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 4, metadata !3334, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()), !dbg !3336
  %arrayidx.i1442 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 12, !dbg !3338
  call void @llvm.dbg.value(metadata ptr %arrayidx.i1442, metadata !3339, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 4, metadata !3344, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 4, metadata !3345, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3347, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata ptr %arrayidx.i1442, metadata !3348, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i16 0, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 0, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 0, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i32 8, metadata !3346, metadata !DIExpression()), !dbg !3352
  store i32 0, ptr %arrayidx.i1442, align 4, !dbg !3354, !tbaa !1528
  %add.ptr49.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 20, !dbg !3358
  store i32 0, ptr %add.ptr49.i.i, align 4, !dbg !3359, !tbaa !1528
  %add.ptr56.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 28, !dbg !3360
  store i32 0, ptr %add.ptr56.i.i, align 4, !dbg !3361, !tbaa !1528
  %add.ptr59.i.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 36, !dbg !3362
  store i32 0, ptr %add.ptr59.i.i, align 4, !dbg !3363, !tbaa !1528
  %144 = load i32, ptr %i_neighbour.i, align 8, !dbg !3364, !tbaa !2765
  %and950 = and i32 %144, 1, !dbg !3365
  %tobool951.not = icmp eq i32 %and950, 0, !dbg !3365
  br i1 %tobool951.not, label %cond.end, label %cond.true, !dbg !3366

cond.true:                                        ; preds = %if.then947
  %skipbp953 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !3367
  %145 = load ptr, ptr %skipbp953, align 16, !dbg !3367, !tbaa !2035
  %arrayidx955 = getelementptr inbounds i8, ptr %145, i64 %idxprom843, !dbg !3368
  %146 = load i8, ptr %arrayidx955, align 1, !dbg !3368, !tbaa !1528
  br label %cond.end, !dbg !3366

cond.end:                                         ; preds = %if.then947, %cond.true
  %cond = phi i8 [ %146, %cond.true ], [ 0, %if.then947 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2719, metadata !DIExpression()), !dbg !3369
  %conv960 = and i8 %cond, 2, !dbg !3370
  %arrayidx965 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 11, !dbg !3371
  store i8 %conv960, ptr %arrayidx965, align 1, !dbg !3372, !tbaa !1528
  %conv968 = and i8 %cond, 8, !dbg !3373
  %arrayidx974 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 27, !dbg !3374
  store i8 %conv968, ptr %arrayidx974, align 1, !dbg !3375, !tbaa !1528
  %and977 = and i32 %144, 2, !dbg !3376
  %tobool978.not = icmp eq i32 %and977, 0, !dbg !3376
  br i1 %tobool978.not, label %cond.end986, label %cond.true979, !dbg !3377

cond.true979:                                     ; preds = %cond.end
  %skipbp981 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !3378
  %147 = load ptr, ptr %skipbp981, align 16, !dbg !3378, !tbaa !2035
  %arrayidx983 = getelementptr inbounds i8, ptr %147, i64 %idxprom814, !dbg !3379
  %148 = load i8, ptr %arrayidx983, align 1, !dbg !3379, !tbaa !1528
  br label %cond.end986, !dbg !3377

cond.end986:                                      ; preds = %cond.end, %cond.true979
  %cond987 = phi i8 [ %148, %cond.true979 ], [ 0, %cond.end ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2719, metadata !DIExpression()), !dbg !3369
  %conv991 = and i8 %cond987, 4, !dbg !3380
  %arrayidx997 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 4, !dbg !3381
  store i8 %conv991, ptr %arrayidx997, align 1, !dbg !3382, !tbaa !1528
  %conv1000 = and i8 %cond987, 8, !dbg !3383
  %arrayidx1006 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 6, i64 6, !dbg !3384
  store i8 %conv1000, ptr %arrayidx1006, align 1, !dbg !3385, !tbaa !1528
  br label %if.end1018, !dbg !3386

if.end1008:                                       ; preds = %for.cond.cleanup498
  %cmp1011 = icmp eq i32 %108, 0, !dbg !3387
  br i1 %cmp1011, label %if.then1013, label %if.end1018, !dbg !3389

if.then1013:                                      ; preds = %if.end1008
  %pskip_mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 10, !dbg !3390
  tail call void @x264_mb_predict_mv_pskip(ptr noundef nonnull %h, ptr noundef nonnull %pskip_mv) #11, !dbg !3391
  br label %if.end1018, !dbg !3391

if.end1018:                                       ; preds = %cond.end986, %if.then925, %if.end1008, %if.then1013, %if.end479
  %149 = load i32, ptr %i_neighbour_intra.i, align 4, !dbg !3392, !tbaa !2768
  %and1020 = and i32 %149, 11, !dbg !3393
  %and1023 = shl i32 %149, 1, !dbg !3394
  %150 = and i32 %and1023, 4, !dbg !3394
  %or = or i32 %150, %and1020, !dbg !3395
  %i_neighbour8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 25, !dbg !3396
  store i32 %or, ptr %i_neighbour8, align 4, !dbg !3397, !tbaa !1589
  %i_neighbour4 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, !dbg !3398
  store i32 %or, ptr %i_neighbour4, align 4, !dbg !3399, !tbaa !1589
  %and1032 = and i32 %149, 2, !dbg !3400
  %tobool1033.not = icmp eq i32 %and1032, 0, !dbg !3401
  %or1035 = select i1 %tobool1033.not, i32 1, i32 15, !dbg !3402
  %arrayidx1038 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 1, !dbg !3403
  store i32 %or1035, ptr %arrayidx1038, align 4, !dbg !3404, !tbaa !1589
  %arrayidx1041 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 4, !dbg !3405
  store i32 %or1035, ptr %arrayidx1041, align 4, !dbg !3406, !tbaa !1589
  %and1044 = and i32 %149, 1, !dbg !3407
  %tobool1045.not = icmp eq i32 %and1044, 0, !dbg !3408
  %or1047 = select i1 %tobool1045.not, i32 6, i32 15, !dbg !3409
  %arrayidx1050 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 25, i64 2, !dbg !3410
  store i32 %or1047, ptr %arrayidx1050, align 4, !dbg !3411, !tbaa !1589
  %arrayidx1053 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 10, !dbg !3412
  store i32 %or1047, ptr %arrayidx1053, align 4, !dbg !3413, !tbaa !1589
  %arrayidx1056 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 8, !dbg !3414
  store i32 %or1047, ptr %arrayidx1056, align 4, !dbg !3415, !tbaa !1589
  %arrayidx1059 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 2, !dbg !3416
  store i32 %or1047, ptr %arrayidx1059, align 4, !dbg !3417, !tbaa !1589
  %and1062 = and i32 %149, 4, !dbg !3418
  %cond1068 = select i1 %tobool1033.not, i32 0, i32 10, !dbg !3419
  %or1063 = or i32 %and1062, %cond1068, !dbg !3420
  %or1069 = or i32 %or1063, 1, !dbg !3420
  %arrayidx1072 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 25, i64 1, !dbg !3421
  store i32 %or1069, ptr %arrayidx1072, align 4, !dbg !3422, !tbaa !1589
  %arrayidx1075 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 26, i64 5, !dbg !3423
  store i32 %or1069, ptr %arrayidx1075, align 4, !dbg !3424, !tbaa !1589
  ret void, !dbg !3425
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr noundef %h, i32 noundef %mb_x, i32 noundef %mb_y, i32 noundef %i) unnamed_addr #8 !dbg !3426 {
entry:
  %ref_pix_offset = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata ptr %h, metadata !3430, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !3431, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !3432, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.value(metadata i32 %i, metadata !3433, metadata !DIExpression()), !dbg !3461
  %cmp = icmp eq i32 %i, 0, !dbg !3462
  %cond = select i1 %cmp, i32 16, i32 8, !dbg !3463
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3434, metadata !DIExpression()), !dbg !3461
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !3464
  %0 = load ptr, ptr %fdec, align 16, !dbg !3464, !tbaa !2286
  %tobool = icmp ne i32 %i, 0, !dbg !3465
  %lnot.ext = zext i1 %tobool to i32, !dbg !3466
  %1 = zext i1 %tobool to i64
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 24, i64 %1, !dbg !3467
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3467, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %2, metadata !3435, metadata !DIExpression()), !dbg !3461
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3468
  %3 = load i32, ptr %b_interlaced, align 4, !dbg !3468, !tbaa !1633
  %shl = shl i32 %2, %3, !dbg !3469
  call void @llvm.dbg.value(metadata i32 %shl, metadata !3436, metadata !DIExpression()), !dbg !3461
  %tobool5.not = icmp eq i32 %3, 0, !dbg !3470
  br i1 %tobool5.not, label %cond.false, label %cond.true, !dbg !3470

cond.true:                                        ; preds = %entry
  %and = and i32 %mb_y, -2, !dbg !3471
  %mul = mul nsw i32 %2, %and, !dbg !3472
  %add = add nsw i32 %mul, %mb_x, !dbg !3473
  %mul6 = mul nsw i32 %add, %cond, !dbg !3474
  %and7 = and i32 %mb_y, 1, !dbg !3475
  %mul8 = mul nuw nsw i32 %2, %and7, !dbg !3476
  %add9 = add nsw i32 %mul6, %mul8, !dbg !3477
  br label %cond.end, !dbg !3470

cond.false:                                       ; preds = %entry
  %mul10 = mul nsw i32 %2, %mb_y, !dbg !3478
  %add11 = add nsw i32 %mul10, %mb_x, !dbg !3479
  %mul12 = mul nsw i32 %add11, %cond, !dbg !3480
  br label %cond.end, !dbg !3470

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i32 [ %add9, %cond.true ], [ %mul12, %cond.false ], !dbg !3470
  call void @llvm.dbg.value(metadata i32 %4, metadata !3437, metadata !DIExpression()), !dbg !3461
  %5 = zext i32 %i to i64
  %arrayidx16 = getelementptr inbounds %struct.x264_frame, ptr %0, i64 0, i32 30, i64 %5, !dbg !3481
  %6 = load ptr, ptr %arrayidx16, align 8, !dbg !3481, !tbaa !1619
  %idxprom17 = sext i32 %4 to i64, !dbg !3481
  %arrayidx18 = getelementptr inbounds i8, ptr %6, i64 %idxprom17, !dbg !3481
  call void @llvm.dbg.value(metadata ptr %arrayidx18, metadata !3438, metadata !DIExpression()), !dbg !3461
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !3482
  %7 = load i32, ptr %b_mbaff, align 4, !dbg !3482, !tbaa !2510
  %and19 = and i32 %7, %mb_y, !dbg !3483
  %idxprom20 = sext i32 %and19 to i64, !dbg !3484
  %arrayidx23 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 62, i64 %idxprom20, i64 %5, !dbg !3484
  %8 = load ptr, ptr %arrayidx23, align 8, !dbg !3484, !tbaa !1619
  %mul24 = shl nsw i32 %mb_x, 4, !dbg !3485
  %shr = ashr i32 %mul24, %lnot.ext, !dbg !3486
  %idxprom30 = sext i32 %shr to i64, !dbg !3484
  %arrayidx31 = getelementptr inbounds i8, ptr %8, i64 %idxprom30, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %arrayidx31, metadata !3439, metadata !DIExpression()), !dbg !3461
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ref_pix_offset) #11, !dbg !3487
  call void @llvm.dbg.declare(metadata ptr %ref_pix_offset, metadata !3440, metadata !DIExpression()), !dbg !3488
  store i32 %4, ptr %ref_pix_offset, align 4, !dbg !3489, !tbaa !1589
  %arrayinit.element = getelementptr inbounds i32, ptr %ref_pix_offset, i64 1, !dbg !3489
  store i32 %4, ptr %arrayinit.element, align 4, !dbg !3489, !tbaa !1589
  %fref0 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, !dbg !3490
  call void @llvm.dbg.value(metadata ptr %fref0, metadata !3441, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3461
  %fref1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, !dbg !3491
  call void @llvm.dbg.value(metadata ptr %fref1, metadata !3441, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3461
  br i1 %tobool5.not, label %if.end, label %if.then, !dbg !3492

if.then:                                          ; preds = %cond.end
  %and38 = shl i32 %mb_y, 1, !dbg !3493
  %mul39 = and i32 %and38, 2, !dbg !3493
  %sub = sub nsw i32 1, %mul39, !dbg !3495
  %mul40 = mul nsw i32 %2, %sub, !dbg !3496
  %arrayidx41 = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 1, !dbg !3497
  %add42 = add nsw i32 %4, %mul40, !dbg !3498
  store i32 %add42, ptr %arrayidx41, align 4, !dbg !3498, !tbaa !1589
  br label %if.end, !dbg !3497

if.end:                                           ; preds = %if.then, %cond.end
  %arrayidx46 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 23, i64 %5, !dbg !3499
  store i32 %shl, ptr %arrayidx46, align 4, !dbg !3500, !tbaa !1589
  %fenc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 44, !dbg !3501
  %9 = load ptr, ptr %fenc, align 8, !dbg !3501, !tbaa !3169
  %arrayidx49 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30, i64 %5, !dbg !3502
  %10 = load ptr, ptr %arrayidx49, align 8, !dbg !3502, !tbaa !1619
  %arrayidx51 = getelementptr inbounds i8, ptr %10, i64 %idxprom17, !dbg !3502
  %arrayidx55 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 17, i64 %5, !dbg !3503
  store ptr %arrayidx51, ptr %arrayidx55, align 8, !dbg !3504, !tbaa !1619
  %cond57 = select i1 %tobool, i64 3, i64 0, !dbg !3505
  %arrayidx59 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 4, i64 %cond57, !dbg !3506
  %11 = load ptr, ptr %arrayidx59, align 8, !dbg !3506, !tbaa !1619
  %arrayidx63 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 16, i64 %5, !dbg !3507
  %12 = load ptr, ptr %arrayidx63, align 8, !dbg !3507, !tbaa !1619
  tail call void %11(ptr noundef %12, i32 noundef 16, ptr noundef %arrayidx51, i32 noundef %shl, i32 noundef %cond) #11, !dbg !3506
  %arrayidx72 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 %5, !dbg !3508
  %13 = load ptr, ptr %arrayidx72, align 8, !dbg !3508, !tbaa !1619
  %arrayidx73 = getelementptr inbounds i8, ptr %13, i64 -33, !dbg !3508
  %add.ptr = getelementptr inbounds i8, ptr %arrayidx31, i64 -1, !dbg !3509
  %mul74 = mul nuw nsw i32 %cond, 3, !dbg !3510
  %div389 = lshr exact i32 %mul74, 1, !dbg !3511
  %add75 = or i32 %div389, 1, !dbg !3512
  %14 = zext i32 %add75 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %arrayidx73, ptr noundef nonnull align 1 %add.ptr, i64 %14, i1 false), !dbg !3513
  %15 = load i32, ptr %b_interlaced, align 4, !dbg !3514, !tbaa !1633
  %tobool78.not = icmp eq i32 %15, 0, !dbg !3515
  br i1 %tobool78.not, label %if.end95, label %for.body.preheader, !dbg !3516

for.body.preheader:                               ; preds = %if.end
  %16 = sext i32 %shl to i64, !dbg !3517
  %wide.trip.count = zext i32 %cond to i64, !dbg !3518
  br label %for.body, !dbg !3517

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3442, metadata !DIExpression()), !dbg !3520
  %17 = mul nsw i64 %indvars.iv, %16, !dbg !3521
  %18 = add nsw i64 %17, -1, !dbg !3522
  %arrayidx85 = getelementptr inbounds i8, ptr %arrayidx18, i64 %18, !dbg !3523
  %19 = load i8, ptr %arrayidx85, align 1, !dbg !3523, !tbaa !1528
  %20 = load ptr, ptr %arrayidx72, align 8, !dbg !3524, !tbaa !1619
  %21 = shl nsw i64 %indvars.iv, 5, !dbg !3525
  %22 = add nsw i64 %21, -1, !dbg !3526
  %arrayidx94 = getelementptr inbounds i8, ptr %20, i64 %22, !dbg !3524
  store i8 %19, ptr %arrayidx94, align 1, !dbg !3527, !tbaa !1528
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3442, metadata !DIExpression()), !dbg !3520
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !3518
  br i1 %exitcond.not, label %if.end95, label %for.body, !dbg !3517, !llvm.loop !3529

if.end95:                                         ; preds = %for.body, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !3445, metadata !DIExpression()), !dbg !3531
  %i_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19
  %23 = load i32, ptr %i_fref, align 8, !tbaa !1589
  %cmp101393 = icmp sgt i32 %23, 0, !dbg !3532
  br i1 %cmp101393, label %for.body104.lr.ph, label %for.cond.cleanup103, !dbg !3533

for.body104.lr.ph:                                ; preds = %if.end95
  %24 = load i32, ptr %b_interlaced, align 4, !tbaa !1633
  %p_fref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20
  %add128 = add nsw i32 %i, 3
  %spec.select = select i1 %cmp, i32 0, i32 %add128
  %25 = zext i32 %spec.select to i64
  %wide.trip.count417 = zext i32 %23 to i64, !dbg !3532
  br i1 %cmp, label %for.body104.us, label %for.body104, !dbg !3534

for.body104.us:                                   ; preds = %for.body104.lr.ph, %for.inc200.us
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc200.us ], [ 0, %for.body104.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv414, metadata !3445, metadata !DIExpression()), !dbg !3531
  %26 = trunc i64 %indvars.iv414 to i32, !dbg !3535
  %shr108.us = lshr i32 %26, %24, !dbg !3535
  %idxprom109.us = sext i32 %shr108.us to i64, !dbg !3536
  %arrayidx110.us = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom109.us, !dbg !3536
  %27 = load ptr, ptr %arrayidx110.us, align 8, !dbg !3536, !tbaa !1619
  %arrayidx113.us = getelementptr inbounds %struct.x264_frame, ptr %27, i64 0, i32 30, i64 %5, !dbg !3536
  %28 = load ptr, ptr %arrayidx113.us, align 8, !dbg !3536, !tbaa !1619
  %and114.us = and i64 %indvars.iv414, 1, !dbg !3537
  %arrayidx116.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and114.us, !dbg !3538
  %29 = load i32, ptr %arrayidx116.us, align 4, !dbg !3538, !tbaa !1589
  %idxprom117.us = sext i32 %29 to i64, !dbg !3536
  %arrayidx118.us = getelementptr inbounds i8, ptr %28, i64 %idxprom117.us, !dbg !3536
  %arrayidx132.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv414, i64 %25, !dbg !3539
  store ptr %arrayidx118.us, ptr %arrayidx132.us, align 8, !dbg !3540, !tbaa !1619
  call void @llvm.dbg.value(metadata i32 1, metadata !3447, metadata !DIExpression()), !dbg !3541
  br label %for.body140.us, !dbg !3542

for.cond.cleanup139.us:                           ; preds = %for.body140.us
  %arrayidx167.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 22, i64 %indvars.iv414, !dbg !3543
  %weightfn.us = getelementptr inbounds %struct.x264_weight_t, ptr %arrayidx167.us, i64 0, i32 5, !dbg !3545
  %30 = load ptr, ptr %weightfn.us, align 16, !dbg !3545, !tbaa !1655
  %tobool169.not.us = icmp eq ptr %30, null, !dbg !3543
  br i1 %tobool169.not.us, label %if.else.us, label %if.then170.us, !dbg !3546

if.then170.us:                                    ; preds = %for.cond.cleanup139.us
  %31 = load ptr, ptr %fenc, align 8, !dbg !3547, !tbaa !3169
  %arrayidx176.us = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 38, i64 %idxprom109.us, !dbg !3548
  %32 = load ptr, ptr %arrayidx176.us, align 8, !dbg !3548, !tbaa !1619
  %arrayidx181.us = getelementptr inbounds i8, ptr %32, i64 %idxprom117.us, !dbg !3548
  br label %for.inc200.us, !dbg !3549

if.else.us:                                       ; preds = %for.cond.cleanup139.us
  %arrayidx123.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv414, !dbg !3539
  %33 = load ptr, ptr %arrayidx123.us, align 16, !dbg !3550, !tbaa !1619
  br label %for.inc200.us

for.inc200.us:                                    ; preds = %if.else.us, %if.then170.us
  %arrayidx181.us.sink = phi ptr [ %33, %if.else.us ], [ %arrayidx181.us, %if.then170.us ], !dbg !3551
  %34 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 21, i64 %indvars.iv414, !dbg !3552
  store ptr %arrayidx181.us.sink, ptr %34, align 8, !dbg !3553
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next415, metadata !3445, metadata !DIExpression()), !dbg !3531
  %exitcond418.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count417, !dbg !3532
  br i1 %exitcond418.not, label %for.cond.cleanup103, label %for.body104.us, !dbg !3533, !llvm.loop !3555

for.body140.us:                                   ; preds = %for.body104.us, %for.body140.us
  %indvars.iv410 = phi i64 [ 1, %for.body104.us ], [ %indvars.iv.next411, %for.body140.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv410, metadata !3447, metadata !DIExpression()), !dbg !3541
  %35 = load ptr, ptr %arrayidx110.us, align 8, !dbg !3557, !tbaa !1619
  %arrayidx148.us = getelementptr inbounds %struct.x264_frame, ptr %35, i64 0, i32 31, i64 %indvars.iv410, !dbg !3557
  %36 = load ptr, ptr %arrayidx148.us, align 8, !dbg !3557, !tbaa !1619
  %arrayidx153.us = getelementptr inbounds i8, ptr %36, i64 %idxprom117.us, !dbg !3557
  %arrayidx161.us = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv414, i64 %indvars.iv410, !dbg !3559
  store ptr %arrayidx153.us, ptr %arrayidx161.us, align 8, !dbg !3560, !tbaa !1619
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next411, metadata !3447, metadata !DIExpression()), !dbg !3541
  %exitcond413.not = icmp eq i64 %indvars.iv.next411, 4, !dbg !3562
  br i1 %exitcond413.not, label %for.cond.cleanup139.us, label %for.body140.us, !dbg !3542, !llvm.loop !3563

for.cond.cleanup103:                              ; preds = %for.body104, %for.inc200.us, %if.end95
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !3565
  %37 = load i32, ptr %i_type, align 16, !dbg !3565, !tbaa !1494
  %cmp204 = icmp eq i32 %37, 1, !dbg !3566
  br i1 %cmp204, label %for.cond208.preheader, label %if.end284, !dbg !3567

for.cond208.preheader:                            ; preds = %for.cond.cleanup103
  %arrayidx212 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 19, i64 1
  %38 = load i32, ptr %arrayidx212, align 4, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 0, metadata !3453, metadata !DIExpression()), !dbg !3568
  %cmp213396 = icmp sgt i32 %38, 0, !dbg !3569
  br i1 %cmp213396, label %for.body216.lr.ph, label %if.end284, !dbg !3570

for.body216.lr.ph:                                ; preds = %for.cond208.preheader
  %39 = load i32, ptr %b_interlaced, align 4, !tbaa !1633
  %add241 = add nsw i32 %i, 3
  %spec.select390 = select i1 %cmp, i32 0, i32 %add241
  %40 = zext i32 %spec.select390 to i64
  %wide.trip.count431 = zext i32 %38 to i64, !dbg !3569
  br i1 %cmp, label %for.body216.us, label %for.body216, !dbg !3571

for.body216.us:                                   ; preds = %for.body216.lr.ph, %for.inc281.loopexit.us
  %indvars.iv428 = phi i64 [ %indvars.iv.next429, %for.inc281.loopexit.us ], [ 0, %for.body216.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv428, metadata !3453, metadata !DIExpression()), !dbg !3568
  %41 = trunc i64 %indvars.iv428 to i32, !dbg !3572
  %shr220.us = lshr i32 %41, %39, !dbg !3572
  %idxprom221.us = sext i32 %shr220.us to i64, !dbg !3573
  %arrayidx222.us = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom221.us, !dbg !3573
  %42 = load ptr, ptr %arrayidx222.us, align 8, !dbg !3573, !tbaa !1619
  %arrayidx225.us = getelementptr inbounds %struct.x264_frame, ptr %42, i64 0, i32 30, i64 %5, !dbg !3573
  %43 = load ptr, ptr %arrayidx225.us, align 8, !dbg !3573, !tbaa !1619
  %and226.us = and i64 %indvars.iv428, 1, !dbg !3574
  %arrayidx228.us = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and226.us, !dbg !3575
  %44 = load i32, ptr %arrayidx228.us, align 4, !dbg !3575, !tbaa !1589
  %idxprom229.us = sext i32 %44 to i64, !dbg !3573
  %arrayidx230.us = getelementptr inbounds i8, ptr %43, i64 %idxprom229.us, !dbg !3573
  %arrayidx245.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %indvars.iv428, i64 %40, !dbg !3576
  store ptr %arrayidx230.us, ptr %arrayidx245.us, align 8, !dbg !3577, !tbaa !1619
  call void @llvm.dbg.value(metadata i32 1, metadata !3456, metadata !DIExpression()), !dbg !3578
  br label %for.body254.us, !dbg !3579

for.body254.us:                                   ; preds = %for.body216.us, %for.body254.us
  %indvars.iv424 = phi i64 [ 1, %for.body216.us ], [ %indvars.iv.next425, %for.body254.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv424, metadata !3456, metadata !DIExpression()), !dbg !3578
  %45 = load ptr, ptr %arrayidx222.us, align 8, !dbg !3580, !tbaa !1619
  %arrayidx263.us = getelementptr inbounds %struct.x264_frame, ptr %45, i64 0, i32 31, i64 %indvars.iv424, !dbg !3580
  %46 = load ptr, ptr %arrayidx263.us, align 8, !dbg !3580, !tbaa !1619
  %arrayidx268.us = getelementptr inbounds i8, ptr %46, i64 %idxprom229.us, !dbg !3580
  %arrayidx276.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %indvars.iv428, i64 %indvars.iv424, !dbg !3582
  store ptr %arrayidx268.us, ptr %arrayidx276.us, align 8, !dbg !3583, !tbaa !1619
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next425, metadata !3456, metadata !DIExpression()), !dbg !3578
  %exitcond427.not = icmp eq i64 %indvars.iv.next425, 4, !dbg !3585
  br i1 %exitcond427.not, label %for.inc281.loopexit.us, label %for.body254.us, !dbg !3579, !llvm.loop !3586

for.inc281.loopexit.us:                           ; preds = %for.body254.us
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next429, metadata !3453, metadata !DIExpression()), !dbg !3568
  %exitcond432.not = icmp eq i64 %indvars.iv.next429, %wide.trip.count431, !dbg !3569
  br i1 %exitcond432.not, label %if.end284, label %for.body216.us, !dbg !3570, !llvm.loop !3589

for.body104:                                      ; preds = %for.body104.lr.ph, %for.body104
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %for.body104 ], [ 0, %for.body104.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv405, metadata !3445, metadata !DIExpression()), !dbg !3531
  %47 = trunc i64 %indvars.iv405 to i32, !dbg !3535
  %shr108 = lshr i32 %47, %24, !dbg !3535
  %idxprom109 = sext i32 %shr108 to i64, !dbg !3536
  %arrayidx110 = getelementptr inbounds ptr, ptr %fref0, i64 %idxprom109, !dbg !3536
  %48 = load ptr, ptr %arrayidx110, align 8, !dbg !3536, !tbaa !1619
  %arrayidx113 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 30, i64 %5, !dbg !3536
  %49 = load ptr, ptr %arrayidx113, align 8, !dbg !3536, !tbaa !1619
  %and114 = and i64 %indvars.iv405, 1, !dbg !3537
  %arrayidx116 = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and114, !dbg !3538
  %50 = load i32, ptr %arrayidx116, align 4, !dbg !3538, !tbaa !1589
  %idxprom117 = sext i32 %50 to i64, !dbg !3536
  %arrayidx118 = getelementptr inbounds i8, ptr %49, i64 %idxprom117, !dbg !3536
  %arrayidx132 = getelementptr inbounds [32 x [6 x ptr]], ptr %p_fref, i64 0, i64 %indvars.iv405, i64 %25, !dbg !3539
  store ptr %arrayidx118, ptr %arrayidx132, align 8, !dbg !3540, !tbaa !1619
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1, !dbg !3554
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next406, metadata !3445, metadata !DIExpression()), !dbg !3531
  %exitcond409.not = icmp eq i64 %indvars.iv.next406, %wide.trip.count417, !dbg !3532
  br i1 %exitcond409.not, label %for.cond.cleanup103, label %for.body104, !dbg !3533, !llvm.loop !3555

for.body216:                                      ; preds = %for.body216.lr.ph, %for.body216
  %indvars.iv419 = phi i64 [ %indvars.iv.next420, %for.body216 ], [ 0, %for.body216.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv419, metadata !3453, metadata !DIExpression()), !dbg !3568
  %51 = trunc i64 %indvars.iv419 to i32, !dbg !3572
  %shr220 = lshr i32 %51, %39, !dbg !3572
  %idxprom221 = sext i32 %shr220 to i64, !dbg !3573
  %arrayidx222 = getelementptr inbounds ptr, ptr %fref1, i64 %idxprom221, !dbg !3573
  %52 = load ptr, ptr %arrayidx222, align 8, !dbg !3573, !tbaa !1619
  %arrayidx225 = getelementptr inbounds %struct.x264_frame, ptr %52, i64 0, i32 30, i64 %5, !dbg !3573
  %53 = load ptr, ptr %arrayidx225, align 8, !dbg !3573, !tbaa !1619
  %and226 = and i64 %indvars.iv419, 1, !dbg !3574
  %arrayidx228 = getelementptr inbounds [2 x i32], ptr %ref_pix_offset, i64 0, i64 %and226, !dbg !3575
  %54 = load i32, ptr %arrayidx228, align 4, !dbg !3575, !tbaa !1589
  %idxprom229 = sext i32 %54 to i64, !dbg !3573
  %arrayidx230 = getelementptr inbounds i8, ptr %53, i64 %idxprom229, !dbg !3573
  %arrayidx245 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 20, i64 1, i64 %indvars.iv419, i64 %40, !dbg !3576
  store ptr %arrayidx230, ptr %arrayidx245, align 8, !dbg !3577, !tbaa !1619
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1, !dbg !3588
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next420, metadata !3453, metadata !DIExpression()), !dbg !3568
  %exitcond423.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count431, !dbg !3569
  br i1 %exitcond423.not, label %if.end284, label %for.body216, !dbg !3570, !llvm.loop !3589

if.end284:                                        ; preds = %for.body216, %for.inc281.loopexit.us, %for.cond208.preheader, %for.cond.cleanup103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ref_pix_offset) #11, !dbg !3591
  ret void, !dbg !3591
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare !dbg !3592 void @x264_mb_predict_mv_pskip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @x264_macroblock_cache_load_neighbours_deblock(ptr nocapture noundef %h, i32 noundef %mb_x, i32 noundef %mb_y) local_unnamed_addr #10 !dbg !3595 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3597, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %mb_x, metadata !3598, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !3599, metadata !DIExpression()), !dbg !3602
  %i_disable_deblocking_filter_idc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 31, !dbg !3603
  %0 = load i32, ptr %i_disable_deblocking_filter_idc, align 4, !dbg !3603, !tbaa !3604
  %cmp.not = icmp eq i32 %0, 2, !dbg !3605
  call void @llvm.dbg.value(metadata i1 %cmp.not, metadata !3600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3602
  %b_interlaced = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3606
  %1 = load i32, ptr %b_interlaced, align 4, !dbg !3606, !tbaa !1633
  %shl.neg = shl nsw i32 -1, %1, !dbg !3607
  %sub = add i32 %shl.neg, %mb_y, !dbg !3608
  %i_mb_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !3609
  %2 = load i32, ptr %i_mb_stride, align 4, !dbg !3609, !tbaa !2010
  %mul = mul nsw i32 %sub, %2, !dbg !3610
  %add = add nsw i32 %mul, %mb_x, !dbg !3611
  call void @llvm.dbg.value(metadata i32 %add, metadata !3601, metadata !DIExpression()), !dbg !3602
  %i_neighbour = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 24, !dbg !3612
  store i32 0, ptr %i_neighbour, align 8, !dbg !3613, !tbaa !2765
  %mul5 = mul nsw i32 %2, %mb_y, !dbg !3614
  %add6 = add nsw i32 %mul5, %mb_x, !dbg !3615
  %i_mb_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !3616
  store i32 %add6, ptr %i_mb_xy, align 8, !dbg !3617, !tbaa !2748
  %cmp8 = icmp sgt i32 %mb_x, 0, !dbg !3618
  br i1 %cmp8, label %if.then, label %if.end30, !dbg !3620

if.then:                                          ; preds = %entry
  %sub12 = add nsw i32 %add6, -1, !dbg !3621
  %i_mb_left_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34, !dbg !3623
  store i32 %sub12, ptr %i_mb_left_xy, align 8, !dbg !3624, !tbaa !2789
  br i1 %cmp.not, label %lor.lhs.false, label %if.then27, !dbg !3625

lor.lhs.false:                                    ; preds = %if.then
  %slice_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 51, !dbg !3627
  %3 = load ptr, ptr %slice_table, align 16, !dbg !3627, !tbaa !2045
  %idxprom = sext i32 %sub12 to i64, !dbg !3628
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom, !dbg !3628
  %4 = load i16, ptr %arrayidx, align 2, !dbg !3628, !tbaa !1585
  %idxprom22 = sext i32 %add6 to i64, !dbg !3629
  %arrayidx23 = getelementptr inbounds i16, ptr %3, i64 %idxprom22, !dbg !3629
  %5 = load i16, ptr %arrayidx23, align 2, !dbg !3629, !tbaa !1585
  %cmp25 = icmp eq i16 %4, %5, !dbg !3630
  br i1 %cmp25, label %if.then27, label %if.end30.thread, !dbg !3631

if.then27:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, ptr %i_neighbour, align 8, !dbg !3632, !tbaa !2765
  br label %if.end30, !dbg !3633

if.end30:                                         ; preds = %if.then27, %entry
  %6 = phi i32 [ 1, %if.then27 ], [ 0, %entry ]
  %cmp31 = icmp sgt i32 %add, -1, !dbg !3634
  br i1 %cmp31, label %if.then33, label %if.end58, !dbg !3636

if.end30.thread:                                  ; preds = %lor.lhs.false
  %cmp3182 = icmp sgt i32 %add, -1, !dbg !3634
  br i1 %cmp3182, label %if.then33.thread, label %if.end58, !dbg !3636

if.then33.thread:                                 ; preds = %if.end30.thread
  %i_mb_top_xy83 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !3637
  store i32 %add, ptr %i_mb_top_xy83, align 4, !dbg !3639, !tbaa !2822
  br label %lor.lhs.false36, !dbg !3640

if.then33:                                        ; preds = %if.end30
  %i_mb_top_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !3637
  store i32 %add, ptr %i_mb_top_xy, align 4, !dbg !3639, !tbaa !2822
  br i1 %cmp.not, label %if.then33.lor.lhs.false36_crit_edge, label %if.then53, !dbg !3640

if.then33.lor.lhs.false36_crit_edge:              ; preds = %if.then33
  %slice_table38.phi.trans.insert = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 51
  %.pre = load ptr, ptr %slice_table38.phi.trans.insert, align 16, !dbg !3642, !tbaa !2045
  %.pre85 = sext i32 %add6 to i64, !dbg !3643
  %arrayidx49.phi.trans.insert = getelementptr inbounds i16, ptr %.pre, i64 %.pre85
  %.pre86 = load i16, ptr %arrayidx49.phi.trans.insert, align 2, !dbg !3643, !tbaa !1585
  br label %lor.lhs.false36, !dbg !3640

lor.lhs.false36:                                  ; preds = %if.then33.lor.lhs.false36_crit_edge, %if.then33.thread
  %7 = phi i16 [ %.pre86, %if.then33.lor.lhs.false36_crit_edge ], [ %5, %if.then33.thread ], !dbg !3643
  %8 = phi i32 [ %6, %if.then33.lor.lhs.false36_crit_edge ], [ 0, %if.then33.thread ]
  %9 = phi ptr [ %.pre, %if.then33.lor.lhs.false36_crit_edge ], [ %3, %if.then33.thread ], !dbg !3642
  %idxprom4184 = zext i32 %add to i64, !dbg !3644
  %arrayidx42 = getelementptr inbounds i16, ptr %9, i64 %idxprom4184, !dbg !3644
  %10 = load i16, ptr %arrayidx42, align 2, !dbg !3644, !tbaa !1585
  %cmp51 = icmp eq i16 %10, %7, !dbg !3645
  br i1 %cmp51, label %if.then53, label %if.end58, !dbg !3646

if.then53:                                        ; preds = %lor.lhs.false36, %if.then33
  %11 = phi i32 [ %8, %lor.lhs.false36 ], [ %6, %if.then33 ], !dbg !3647
  %or56 = or i32 %11, 2, !dbg !3647
  store i32 %or56, ptr %i_neighbour, align 8, !dbg !3647, !tbaa !2765
  br label %if.end58, !dbg !3648

if.end58:                                         ; preds = %if.end30.thread, %lor.lhs.false36, %if.then53, %if.end30
  ret void, !dbg !3649
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_macroblock_cache_load_deblock(ptr noundef %h) local_unnamed_addr #5 !dbg !3650 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3652, metadata !DIExpression()), !dbg !3688
  %type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !3689
  %0 = load ptr, ptr %type, align 8, !dbg !3689, !tbaa !2428
  %i_mb_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !3689
  %1 = load i32, ptr %i_mb_xy, align 8, !dbg !3689, !tbaa !2748
  %idxprom = sext i32 %1 to i64, !dbg !3689
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom, !dbg !3689
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3689, !tbaa !1528
  %switch = icmp ult i8 %2, 4, !dbg !3689
  br i1 %switch, label %if.end504, label %if.end, !dbg !3689

if.end:                                           ; preds = %entry
  %i_first_mb = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 3, !dbg !3691
  %3 = load i32, ptr %i_first_mb, align 4, !dbg !3691, !tbaa !2796
  %tobool.not = icmp eq i32 %3, 0, !dbg !3692
  br i1 %tobool.not, label %if.end295, label %land.lhs.true, !dbg !3693

land.lhs.true:                                    ; preds = %if.end
  %i_disable_deblocking_filter_idc = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 31, !dbg !3694
  %4 = load i32, ptr %i_disable_deblocking_filter_idc, align 4, !dbg !3694, !tbaa !3604
  %cmp33.not = icmp eq i32 %4, 2, !dbg !3695
  br i1 %cmp33.not, label %if.end295, label %if.then35, !dbg !3696

if.then35:                                        ; preds = %land.lhs.true
  %i_neighbour = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 24, !dbg !3697
  %5 = load i32, ptr %i_neighbour, align 8, !dbg !3697, !tbaa !2765
  call void @llvm.dbg.value(metadata i32 %5, metadata !3653, metadata !DIExpression()), !dbg !3698
  %i_mb_x = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 4, !dbg !3699
  %6 = load i32, ptr %i_mb_x, align 16, !dbg !3699, !tbaa !2741
  call void @llvm.dbg.value(metadata i32 %6, metadata !3656, metadata !DIExpression()), !dbg !3698
  %i_mb_y = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !3700
  %7 = load i32, ptr %i_mb_y, align 4, !dbg !3700, !tbaa !1637
  call void @llvm.dbg.value(metadata i32 %7, metadata !3657, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata ptr %h, metadata !3597, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %6, metadata !3598, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i32 %7, metadata !3599, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i1 false, metadata !3600, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3701
  %b_interlaced.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3703
  %8 = load i32, ptr %b_interlaced.i, align 4, !dbg !3703, !tbaa !1633
  %shl.neg.i = shl nsw i32 -1, %8, !dbg !3704
  %sub.i = add i32 %shl.neg.i, %7, !dbg !3705
  %i_mb_stride.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 1, !dbg !3706
  %9 = load i32, ptr %i_mb_stride.i, align 4, !dbg !3706, !tbaa !2010
  %mul.i = mul nsw i32 %sub.i, %9, !dbg !3707
  %add.i = add nsw i32 %mul.i, %6, !dbg !3708
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !3601, metadata !DIExpression()), !dbg !3701
  %mul5.i = mul nsw i32 %9, %7, !dbg !3709
  %add6.i = add nsw i32 %mul5.i, %6, !dbg !3710
  store i32 %add6.i, ptr %i_mb_xy, align 8, !dbg !3711, !tbaa !2748
  %cmp8.i = icmp sgt i32 %6, 0, !dbg !3712
  br i1 %cmp8.i, label %if.then27.i, label %if.end30.i, !dbg !3713

if.then27.i:                                      ; preds = %if.then35
  %sub12.i = add nsw i32 %add6.i, -1, !dbg !3714
  %i_mb_left_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34, !dbg !3715
  store i32 %sub12.i, ptr %i_mb_left_xy.i, align 8, !dbg !3716, !tbaa !2789
  br label %if.end30.i, !dbg !3717

if.end30.i:                                       ; preds = %if.then27.i, %if.then35
  %10 = phi i32 [ 1, %if.then27.i ], [ 0, %if.then35 ]
  %11 = phi i32 [ 3, %if.then27.i ], [ 2, %if.then35 ]
  %cmp31.i = icmp sgt i32 %add.i, -1, !dbg !3718
  br i1 %cmp31.i, label %if.then53.i, label %x264_macroblock_cache_load_neighbours_deblock.exit, !dbg !3719

if.then53.i:                                      ; preds = %if.end30.i
  %i_mb_top_xy.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !3720
  store i32 %add.i, ptr %i_mb_top_xy.i, align 4, !dbg !3721, !tbaa !2822
  br label %x264_macroblock_cache_load_neighbours_deblock.exit, !dbg !3722

x264_macroblock_cache_load_neighbours_deblock.exit: ; preds = %if.end30.i, %if.then53.i
  %12 = phi i32 [ %10, %if.end30.i ], [ %11, %if.then53.i ], !dbg !3723
  %neg = xor i32 %5, -1, !dbg !3724
  %and = and i32 %12, %neg, !dbg !3723
  store i32 %and, ptr %i_neighbour, align 8, !dbg !3723, !tbaa !2765
  %tobool43.not = icmp eq i32 %and, 0, !dbg !3725
  br i1 %tobool43.not, label %if.end295, label %if.then44, !dbg !3726

if.then44:                                        ; preds = %x264_macroblock_cache_load_neighbours_deblock.exit
  %i_mb_left_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 34, !dbg !3727
  %13 = load i32, ptr %i_mb_left_xy, align 8, !dbg !3727, !tbaa !2789
  call void @llvm.dbg.value(metadata i32 %13, metadata !3658, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 undef, metadata !3661, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !3662, metadata !DIExpression()), !dbg !3728
  %mul = shl nsw i32 %sub.i, 1, !dbg !3729
  %add = or i32 %mul, 1, !dbg !3730
  %i_b8_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2, !dbg !3731
  %14 = load i32, ptr %i_b8_stride, align 8, !dbg !3731, !tbaa !2014
  %mul49 = mul nsw i32 %14, %add, !dbg !3732
  %mul50 = shl nsw i32 %6, 1, !dbg !3733
  %add51 = add nsw i32 %mul49, %mul50, !dbg !3734
  call void @llvm.dbg.value(metadata i32 %add51, metadata !3663, metadata !DIExpression()), !dbg !3728
  %mul52 = shl nsw i32 %sub.i, 2, !dbg !3735
  %add53 = or i32 %mul52, 3, !dbg !3736
  %i_b4_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3, !dbg !3737
  %15 = load i32, ptr %i_b4_stride, align 4, !dbg !3737, !tbaa !2018
  %mul55 = mul nsw i32 %15, %add53, !dbg !3738
  %mul56 = shl nsw i32 %6, 2, !dbg !3739
  %add57 = add nsw i32 %mul55, %mul56, !dbg !3740
  call void @llvm.dbg.value(metadata i32 %add57, metadata !3664, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 %14, metadata !3665, metadata !DIExpression()), !dbg !3728
  call void @llvm.dbg.value(metadata i32 %15, metadata !3666, metadata !DIExpression()), !dbg !3728
  %non_zero_count = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !3741
  %16 = load ptr, ptr %non_zero_count, align 16, !dbg !3741, !tbaa !2056
  call void @llvm.dbg.value(metadata ptr %16, metadata !3667, metadata !DIExpression()), !dbg !3728
  %and65 = and i32 %and, 2, !dbg !3742
  %tobool66.not = icmp eq i32 %and65, 0, !dbg !3742
  br i1 %tobool66.not, label %if.end76, label %if.then67, !dbg !3744

if.then67:                                        ; preds = %if.then44
  %i_mb_top_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 35, !dbg !3745
  %17 = load i32, ptr %i_mb_top_xy, align 4, !dbg !3745, !tbaa !2822
  call void @llvm.dbg.value(metadata i32 %17, metadata !3661, metadata !DIExpression()), !dbg !3728
  %idxprom68 = sext i32 %17 to i64, !dbg !3746
  %arrayidx70 = getelementptr inbounds [24 x i8], ptr %16, i64 %idxprom68, i64 12, !dbg !3746
  %18 = load i32, ptr %arrayidx70, align 4, !dbg !3746, !tbaa !1528
  %arrayidx75 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 4, !dbg !3746
  store i32 %18, ptr %arrayidx75, align 1, !dbg !3746, !tbaa !1528
  br label %if.end76, !dbg !3746

if.end76:                                         ; preds = %if.then67, %if.then44
  %and79 = and i32 %and, 1, !dbg !3747
  %tobool80.not = icmp eq i32 %and79, 0, !dbg !3747
  br i1 %tobool80.not, label %if.end118.split.us, label %if.end118.split, !dbg !3749

if.end118.split.us:                               ; preds = %if.end76
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3750
  %idxprom139681 = sext i32 %add51 to i64
  %add157682 = add nsw i32 %add51, 1
  %idxprom158683 = sext i32 %add157682 to i64
  %idxprom183684 = sext i32 %add57 to i64
  br i1 %tobool66.not, label %if.end295, label %for.body.us.preheader, !dbg !3751

for.body.us.preheader:                            ; preds = %if.end118.split.us
  %i_type679 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2
  %19 = load i32, ptr %i_type679, align 16, !tbaa !1494
  %cmp120680 = icmp eq i32 %19, 1
  %20 = select i1 %cmp120680, i64 2, i64 1, !dbg !3752
  br label %for.body.us, !dbg !3752

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %indvars.iv674 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next675, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv674, metadata !3668, metadata !DIExpression()), !dbg !3750
  %arrayidx127.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 %indvars.iv674, !dbg !3753
  %21 = load ptr, ptr %arrayidx127.us, align 8, !dbg !3753, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %21, metadata !3670, metadata !DIExpression()), !dbg !3754
  %arrayidx131.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 %indvars.iv674, !dbg !3755
  %22 = load ptr, ptr %arrayidx131.us, align 8, !dbg !3755, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %22, metadata !3673, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 4, metadata !3674, metadata !DIExpression()), !dbg !3754
  %arrayidx140.us = getelementptr inbounds i8, ptr %22, i64 %idxprom139681, !dbg !3756
  %23 = load i8, ptr %arrayidx140.us, align 1, !dbg !3756, !tbaa !1528
  %arrayidx148.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv674, i64 5, !dbg !3759
  store i8 %23, ptr %arrayidx148.us, align 1, !dbg !3760, !tbaa !1528
  %arrayidx156.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv674, i64 4, !dbg !3761
  store i8 %23, ptr %arrayidx156.us, align 1, !dbg !3762, !tbaa !1528
  %arrayidx159.us = getelementptr inbounds i8, ptr %22, i64 %idxprom158683, !dbg !3763
  %24 = load i8, ptr %arrayidx159.us, align 1, !dbg !3763, !tbaa !1528
  %arrayidx167.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv674, i64 7, !dbg !3764
  store i8 %24, ptr %arrayidx167.us, align 1, !dbg !3765, !tbaa !1528
  %arrayidx175.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv674, i64 6, !dbg !3766
  store i8 %24, ptr %arrayidx175.us, align 1, !dbg !3767, !tbaa !1528
  %arrayidx182.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv674, i64 4, !dbg !3768
  %arrayidx184.us = getelementptr inbounds [2 x i16], ptr %21, i64 %idxprom183684, !dbg !3768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182.us, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184.us, i64 16, i1 false), !dbg !3768, !tbaa.struct !3230
  call void @llvm.dbg.value(metadata i32 11, metadata !3674, metadata !DIExpression()), !dbg !3754
  %indvars.iv.next675 = add nuw nsw i64 %indvars.iv674, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next675, metadata !3668, metadata !DIExpression()), !dbg !3750
  %exitcond678.not = icmp eq i64 %indvars.iv.next675, %20, !dbg !3770
  br i1 %exitcond678.not, label %if.end295, label %for.body.us, !dbg !3752, !llvm.loop !3771

if.end118.split:                                  ; preds = %if.end76
  %idxprom82 = sext i32 %13 to i64, !dbg !3773
  %arrayidx84 = getelementptr inbounds [24 x i8], ptr %16, i64 %idxprom82, i64 3, !dbg !3773
  %25 = load i8, ptr %arrayidx84, align 1, !dbg !3773, !tbaa !1528
  %arrayidx90 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 11, !dbg !3775
  store i8 %25, ptr %arrayidx90, align 1, !dbg !3776, !tbaa !1528
  %arrayidx93 = getelementptr inbounds [24 x i8], ptr %16, i64 %idxprom82, i64 7, !dbg !3777
  %26 = load i8, ptr %arrayidx93, align 1, !dbg !3777, !tbaa !1528
  %arrayidx99 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 19, !dbg !3778
  store i8 %26, ptr %arrayidx99, align 1, !dbg !3779, !tbaa !1528
  %arrayidx102 = getelementptr inbounds [24 x i8], ptr %16, i64 %idxprom82, i64 11, !dbg !3780
  %27 = load i8, ptr %arrayidx102, align 1, !dbg !3780, !tbaa !1528
  %arrayidx108 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 27, !dbg !3781
  store i8 %27, ptr %arrayidx108, align 1, !dbg !3782, !tbaa !1528
  %arrayidx111 = getelementptr inbounds [24 x i8], ptr %16, i64 %idxprom82, i64 15, !dbg !3783
  %28 = load i8, ptr %arrayidx111, align 1, !dbg !3783, !tbaa !1528
  %arrayidx117 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 35, !dbg !3784
  store i8 %28, ptr %arrayidx117, align 1, !dbg !3785, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3750
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2
  %29 = load i32, ptr %i_type, align 16, !tbaa !1494
  %cmp120 = icmp eq i32 %29, 1
  %idxprom139 = sext i32 %add51 to i64
  %add157 = add nsw i32 %add51, 1
  %idxprom158 = sext i32 %add157 to i64
  %idxprom183 = sext i32 %add57 to i64
  %mul279 = mul nsw i32 %15, 3
  %mul265 = shl nsw i32 %15, 1
  %i_b4_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 8
  %i_b8_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 7
  %30 = load i32, ptr %i_b8_xy, align 4, !tbaa !2755
  %sub194 = add nsw i32 %30, -1
  %31 = load i32, ptr %i_b4_xy, align 16, !tbaa !2762
  %sub196 = add nsw i32 %31, -1
  %idxprom199 = sext i32 %sub194 to i64
  %add218 = add nsw i32 %sub194, %14
  %idxprom219 = sext i32 %add218 to i64
  %idxprom239 = sext i32 %sub196 to i64
  %add252 = add nsw i32 %sub196, %15
  %idxprom253 = sext i32 %add252 to i64
  %add266 = add nsw i32 %sub196, %mul265
  %idxprom267 = sext i32 %add266 to i64
  %add280 = add nsw i32 %sub196, %mul279
  %idxprom281 = sext i32 %add280 to i64
  %32 = select i1 %cmp120, i64 2, i64 1, !dbg !3752
  br i1 %tobool66.not, label %for.body.us657, label %for.body, !dbg !3751

for.body.us657:                                   ; preds = %if.end118.split, %for.body.us657
  %indvars.iv669 = phi i64 [ %indvars.iv.next670, %for.body.us657 ], [ 0, %if.end118.split ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv669, metadata !3668, metadata !DIExpression()), !dbg !3750
  %arrayidx127.us660 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 %indvars.iv669, !dbg !3753
  %33 = load ptr, ptr %arrayidx127.us660, align 8, !dbg !3753, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %33, metadata !3670, metadata !DIExpression()), !dbg !3754
  %arrayidx131.us661 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 %indvars.iv669, !dbg !3755
  %34 = load ptr, ptr %arrayidx131.us661, align 8, !dbg !3755, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %34, metadata !3673, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 11, metadata !3674, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %sub194, metadata !3675, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %sub196, metadata !3678, metadata !DIExpression()), !dbg !3786
  %arrayidx200.us = getelementptr inbounds i8, ptr %34, i64 %idxprom199, !dbg !3787
  %35 = load i8, ptr %arrayidx200.us, align 1, !dbg !3787, !tbaa !1528
  %arrayidx208.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv669, i64 19, !dbg !3788
  store i8 %35, ptr %arrayidx208.us, align 1, !dbg !3789, !tbaa !1528
  %arrayidx216.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv669, i64 11, !dbg !3790
  store i8 %35, ptr %arrayidx216.us, align 1, !dbg !3791, !tbaa !1528
  %arrayidx220.us = getelementptr inbounds i8, ptr %34, i64 %idxprom219, !dbg !3792
  %36 = load i8, ptr %arrayidx220.us, align 1, !dbg !3792, !tbaa !1528
  %arrayidx228.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv669, i64 35, !dbg !3793
  store i8 %36, ptr %arrayidx228.us, align 1, !dbg !3794, !tbaa !1528
  %arrayidx236.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv669, i64 27, !dbg !3795
  store i8 %36, ptr %arrayidx236.us, align 1, !dbg !3796, !tbaa !1528
  %arrayidx240.us = getelementptr inbounds [2 x i16], ptr %33, i64 %idxprom239, !dbg !3797
  %37 = load i32, ptr %arrayidx240.us, align 4, !dbg !3797, !tbaa !1528
  %arrayidx249.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv669, i64 11, !dbg !3797
  store i32 %37, ptr %arrayidx249.us, align 4, !dbg !3797, !tbaa !1528
  %arrayidx254.us = getelementptr inbounds [2 x i16], ptr %33, i64 %idxprom253, !dbg !3798
  %38 = load i32, ptr %arrayidx254.us, align 4, !dbg !3798, !tbaa !1528
  %arrayidx263.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv669, i64 19, !dbg !3798
  store i32 %38, ptr %arrayidx263.us, align 4, !dbg !3798, !tbaa !1528
  %arrayidx268.us = getelementptr inbounds [2 x i16], ptr %33, i64 %idxprom267, !dbg !3799
  %39 = load i32, ptr %arrayidx268.us, align 4, !dbg !3799, !tbaa !1528
  %arrayidx277.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv669, i64 27, !dbg !3799
  store i32 %39, ptr %arrayidx277.us, align 4, !dbg !3799, !tbaa !1528
  %arrayidx282.us = getelementptr inbounds [2 x i16], ptr %33, i64 %idxprom281, !dbg !3800
  %40 = load i32, ptr %arrayidx282.us, align 4, !dbg !3800, !tbaa !1528
  %arrayidx291.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv669, i64 35, !dbg !3800
  store i32 %40, ptr %arrayidx291.us, align 4, !dbg !3800, !tbaa !1528
  %indvars.iv.next670 = add nuw nsw i64 %indvars.iv669, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next670, metadata !3668, metadata !DIExpression()), !dbg !3750
  %exitcond673.not = icmp eq i64 %indvars.iv.next670, %32, !dbg !3770
  br i1 %exitcond673.not, label %if.end295, label %for.body.us657, !dbg !3752, !llvm.loop !3771

for.body:                                         ; preds = %if.end118.split, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end118.split ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3668, metadata !DIExpression()), !dbg !3750
  %arrayidx127 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 %indvars.iv, !dbg !3753
  %41 = load ptr, ptr %arrayidx127, align 8, !dbg !3753, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %41, metadata !3670, metadata !DIExpression()), !dbg !3754
  %arrayidx131 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 %indvars.iv, !dbg !3755
  %42 = load ptr, ptr %arrayidx131, align 8, !dbg !3755, !tbaa !1619
  call void @llvm.dbg.value(metadata ptr %42, metadata !3673, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 4, metadata !3674, metadata !DIExpression()), !dbg !3754
  %arrayidx140 = getelementptr inbounds i8, ptr %42, i64 %idxprom139, !dbg !3756
  %43 = load i8, ptr %arrayidx140, align 1, !dbg !3756, !tbaa !1528
  %arrayidx148 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 5, !dbg !3759
  store i8 %43, ptr %arrayidx148, align 1, !dbg !3760, !tbaa !1528
  %arrayidx156 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 4, !dbg !3761
  store i8 %43, ptr %arrayidx156, align 1, !dbg !3762, !tbaa !1528
  %arrayidx159 = getelementptr inbounds i8, ptr %42, i64 %idxprom158, !dbg !3763
  %44 = load i8, ptr %arrayidx159, align 1, !dbg !3763, !tbaa !1528
  %arrayidx167 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 7, !dbg !3764
  store i8 %44, ptr %arrayidx167, align 1, !dbg !3765, !tbaa !1528
  %arrayidx175 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 6, !dbg !3766
  store i8 %44, ptr %arrayidx175, align 1, !dbg !3767, !tbaa !1528
  %arrayidx182 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 4, !dbg !3768
  %arrayidx184 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom183, !dbg !3768
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %arrayidx182, ptr noundef nonnull align 8 dereferenceable(16) %arrayidx184, i64 16, i1 false), !dbg !3768, !tbaa.struct !3230
  call void @llvm.dbg.value(metadata i32 11, metadata !3674, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i32 %sub194, metadata !3675, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %sub196, metadata !3678, metadata !DIExpression()), !dbg !3786
  %arrayidx200 = getelementptr inbounds i8, ptr %42, i64 %idxprom199, !dbg !3787
  %45 = load i8, ptr %arrayidx200, align 1, !dbg !3787, !tbaa !1528
  %arrayidx208 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 19, !dbg !3788
  store i8 %45, ptr %arrayidx208, align 1, !dbg !3789, !tbaa !1528
  %arrayidx216 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 11, !dbg !3790
  store i8 %45, ptr %arrayidx216, align 1, !dbg !3791, !tbaa !1528
  %arrayidx220 = getelementptr inbounds i8, ptr %42, i64 %idxprom219, !dbg !3792
  %46 = load i8, ptr %arrayidx220, align 1, !dbg !3792, !tbaa !1528
  %arrayidx228 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 35, !dbg !3793
  store i8 %46, ptr %arrayidx228, align 1, !dbg !3794, !tbaa !1528
  %arrayidx236 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 %indvars.iv, i64 27, !dbg !3795
  store i8 %46, ptr %arrayidx236, align 1, !dbg !3796, !tbaa !1528
  %arrayidx240 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom239, !dbg !3797
  %47 = load i32, ptr %arrayidx240, align 4, !dbg !3797, !tbaa !1528
  %arrayidx249 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 11, !dbg !3797
  store i32 %47, ptr %arrayidx249, align 4, !dbg !3797, !tbaa !1528
  %arrayidx254 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom253, !dbg !3798
  %48 = load i32, ptr %arrayidx254, align 4, !dbg !3798, !tbaa !1528
  %arrayidx263 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 19, !dbg !3798
  store i32 %48, ptr %arrayidx263, align 4, !dbg !3798, !tbaa !1528
  %arrayidx268 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom267, !dbg !3799
  %49 = load i32, ptr %arrayidx268, align 4, !dbg !3799, !tbaa !1528
  %arrayidx277 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 27, !dbg !3799
  store i32 %49, ptr %arrayidx277, align 4, !dbg !3799, !tbaa !1528
  %arrayidx282 = getelementptr inbounds [2 x i16], ptr %41, i64 %idxprom281, !dbg !3800
  %50 = load i32, ptr %arrayidx282, align 4, !dbg !3800, !tbaa !1528
  %arrayidx291 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 %indvars.iv, i64 35, !dbg !3800
  store i32 %50, ptr %arrayidx291, align 4, !dbg !3800, !tbaa !1528
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3769
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3668, metadata !DIExpression()), !dbg !3750
  %exitcond.not = icmp eq i64 %indvars.iv.next, %32, !dbg !3770
  br i1 %exitcond.not, label %if.end295, label %for.body, !dbg !3752, !llvm.loop !3771

if.end295:                                        ; preds = %for.body, %for.body.us657, %for.body.us, %if.end118.split.us, %x264_macroblock_cache_load_neighbours_deblock.exit, %land.lhs.true, %if.end
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 3, !dbg !3801
  %51 = load i32, ptr %i_weighted_pred, align 4, !dbg !3801, !tbaa !2088
  %tobool296.not = icmp eq i32 %51, 0, !dbg !3802
  br i1 %tobool296.not, label %if.end504, label %land.lhs.true297, !dbg !3803

land.lhs.true297:                                 ; preds = %if.end295
  %i_type299 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !3804
  %52 = load i32, ptr %i_type299, align 16, !dbg !3804, !tbaa !1494
  %cmp300 = icmp eq i32 %52, 0, !dbg !3805
  br i1 %cmp300, label %if.then302, label %if.end504, !dbg !3806

if.then302:                                       ; preds = %land.lhs.true297
  call void @llvm.dbg.value(metadata i32 4, metadata !3679, metadata !DIExpression()), !dbg !3807
  %ref308 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !3808
  %arrayidx312 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 4, !dbg !3808
  %53 = load i8, ptr %arrayidx312, align 1, !dbg !3808, !tbaa !1528
  %conv313 = sext i8 %53 to i64, !dbg !3808
  %add314 = add nsw i64 %conv313, 2, !dbg !3808
  %arrayidx316 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add314, !dbg !3808
  %54 = load i8, ptr %arrayidx316, align 1, !dbg !3808, !tbaa !1528
  %arrayidx323 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 5, !dbg !3809
  store i8 %54, ptr %arrayidx323, align 1, !dbg !3810, !tbaa !1528
  store i8 %54, ptr %arrayidx312, align 1, !dbg !3811, !tbaa !1528
  %arrayidx339 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 6, !dbg !3812
  %55 = load i8, ptr %arrayidx339, align 1, !dbg !3812, !tbaa !1528
  %conv340 = sext i8 %55 to i64, !dbg !3812
  %add341 = add nsw i64 %conv340, 2, !dbg !3812
  %arrayidx343 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add341, !dbg !3812
  %56 = load i8, ptr %arrayidx343, align 1, !dbg !3812, !tbaa !1528
  %arrayidx350 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 7, !dbg !3813
  store i8 %56, ptr %arrayidx350, align 1, !dbg !3814, !tbaa !1528
  store i8 %56, ptr %arrayidx339, align 1, !dbg !3815, !tbaa !1528
  call void @llvm.dbg.value(metadata i32 11, metadata !3679, metadata !DIExpression()), !dbg !3807
  %arrayidx367 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 11, !dbg !3816
  %57 = load i8, ptr %arrayidx367, align 1, !dbg !3816, !tbaa !1528
  %conv368 = sext i8 %57 to i64, !dbg !3816
  %add369 = add nsw i64 %conv368, 2, !dbg !3816
  %arrayidx371 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add369, !dbg !3816
  %58 = load i8, ptr %arrayidx371, align 1, !dbg !3816, !tbaa !1528
  %arrayidx378 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 19, !dbg !3817
  store i8 %58, ptr %arrayidx378, align 1, !dbg !3818, !tbaa !1528
  store i8 %58, ptr %arrayidx367, align 1, !dbg !3819, !tbaa !1528
  %arrayidx394 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 27, !dbg !3820
  %59 = load i8, ptr %arrayidx394, align 1, !dbg !3820, !tbaa !1528
  %conv395 = sext i8 %59 to i64, !dbg !3820
  %add396 = add nsw i64 %conv395, 2, !dbg !3820
  %arrayidx398 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add396, !dbg !3820
  %60 = load i8, ptr %arrayidx398, align 1, !dbg !3820, !tbaa !1528
  %arrayidx405 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 35, !dbg !3821
  store i8 %60, ptr %arrayidx405, align 1, !dbg !3822, !tbaa !1528
  store i8 %60, ptr %arrayidx394, align 1, !dbg !3823, !tbaa !1528
  %arrayidx420 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 12, !dbg !3824
  %61 = load i8, ptr %arrayidx420, align 1, !dbg !3824, !tbaa !1528
  %conv421 = sext i8 %61 to i64, !dbg !3824
  %add422 = add nsw i64 %conv421, 2, !dbg !3824
  %arrayidx424 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add422, !dbg !3824
  %62 = load i8, ptr %arrayidx424, align 1, !dbg !3824, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %62, metadata !3682, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !3807
  %arrayidx433 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 14, !dbg !3825
  %63 = load i8, ptr %arrayidx433, align 1, !dbg !3825, !tbaa !1528
  %conv434 = sext i8 %63 to i64, !dbg !3825
  %add435 = add nsw i64 %conv434, 2, !dbg !3825
  %arrayidx437 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add435, !dbg !3825
  %64 = load i8, ptr %arrayidx437, align 1, !dbg !3825, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %64, metadata !3683, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !3807
  %arrayidx446 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 28, !dbg !3826
  %65 = load i8, ptr %arrayidx446, align 1, !dbg !3826, !tbaa !1528
  %conv447 = sext i8 %65 to i64, !dbg !3826
  %add448 = add nsw i64 %conv447, 2, !dbg !3826
  %arrayidx450 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add448, !dbg !3826
  %66 = load i8, ptr %arrayidx450, align 1, !dbg !3826, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %66, metadata !3684, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !3807
  %arrayidx459 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 30, !dbg !3827
  %67 = load i8, ptr %arrayidx459, align 1, !dbg !3827, !tbaa !1528
  %conv460 = sext i8 %67 to i64, !dbg !3827
  %add461 = add nsw i64 %conv460, 2, !dbg !3827
  %arrayidx463 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 85, i64 %add461, !dbg !3827
  %68 = load i8, ptr %arrayidx463, align 1, !dbg !3827, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %68, metadata !3685, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !3807
  %conv466 = zext i8 %62 to i32, !dbg !3828
  %conv468 = zext i8 %64 to i32, !dbg !3829
  call void @llvm.dbg.value(metadata i32 %conv466, metadata !3830, metadata !DIExpression()), !dbg !3836
  call void @llvm.dbg.value(metadata i32 %conv468, metadata !3835, metadata !DIExpression()), !dbg !3836
  %shl.i = shl nuw nsw i32 %conv468, 16, !dbg !3838
  %add.i653 = or i32 %shl.i, %conv466, !dbg !3839
  %mul469 = mul nuw i32 %add.i653, 257, !dbg !3840
  call void @llvm.dbg.value(metadata i32 %mul469, metadata !3686, metadata !DIExpression()), !dbg !3807
  %conv471 = zext i8 %66 to i32, !dbg !3841
  %conv473 = zext i8 %68 to i32, !dbg !3842
  call void @llvm.dbg.value(metadata i32 %conv471, metadata !3830, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i32 %conv473, metadata !3835, metadata !DIExpression()), !dbg !3843
  %shl.i654 = shl nuw nsw i32 %conv473, 16, !dbg !3845
  %add.i655 = or i32 %shl.i654, %conv471, !dbg !3846
  %mul475 = mul nuw i32 %add.i655, 257, !dbg !3847
  call void @llvm.dbg.value(metadata i32 %mul475, metadata !3687, metadata !DIExpression()), !dbg !3807
  store i32 %mul469, ptr %arrayidx420, align 1, !dbg !3848, !tbaa !1528
  %arrayidx489 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 20, !dbg !3849
  store i32 %mul469, ptr %arrayidx489, align 1, !dbg !3850, !tbaa !1528
  store i32 %mul475, ptr %arrayidx446, align 1, !dbg !3851, !tbaa !1528
  %arrayidx503 = getelementptr inbounds [40 x i8], ptr %ref308, i64 0, i64 36, !dbg !3852
  store i32 %mul475, ptr %arrayidx503, align 1, !dbg !3853, !tbaa !1528
  br label %if.end504, !dbg !3854

if.end504:                                        ; preds = %entry, %if.then302, %land.lhs.true297, %if.end295
  ret void, !dbg !3855
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_macroblock_cache_save(ptr noundef %h) local_unnamed_addr #0 !dbg !3856 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !3858, metadata !DIExpression()), !dbg !3888
  %i_mb_xy1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 6, !dbg !3889
  %0 = load i32, ptr %i_mb_xy1, align 8, !dbg !3889, !tbaa !2748
  call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3888
  %i_type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 53, !dbg !3890
  %1 = load i32, ptr %i_type, align 8, !dbg !3890, !tbaa !3891
  %idxprom = sext i32 %1 to i64, !dbg !3892
  %arrayidx = getelementptr inbounds [19 x i8], ptr @x264_mb_type_fix, i64 0, i64 %idxprom, !dbg !3892
  %2 = load i8, ptr %arrayidx, align 1, !dbg !3892, !tbaa !1528
  call void @llvm.dbg.value(metadata i8 %2, metadata !3860, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3888
  %i_b8_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 2, !dbg !3893
  %3 = load i32, ptr %i_b8_stride, align 8, !dbg !3893, !tbaa !2014
  call void @llvm.dbg.value(metadata i32 %3, metadata !3861, metadata !DIExpression()), !dbg !3888
  %i_b4_stride = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 3, !dbg !3894
  %4 = load i32, ptr %i_b4_stride, align 4, !dbg !3894, !tbaa !2018
  call void @llvm.dbg.value(metadata i32 %4, metadata !3862, metadata !DIExpression()), !dbg !3888
  %i_b4_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 8, !dbg !3895
  %5 = load i32, ptr %i_b4_xy, align 16, !dbg !3895, !tbaa !2762
  call void @llvm.dbg.value(metadata i32 %5, metadata !3863, metadata !DIExpression()), !dbg !3888
  %i_b8_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 7, !dbg !3896
  %6 = load i32, ptr %i_b8_xy, align 4, !dbg !3896, !tbaa !2755
  call void @llvm.dbg.value(metadata i32 %6, metadata !3864, metadata !DIExpression()), !dbg !3888
  %intra4x4_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 42, !dbg !3897
  %7 = load ptr, ptr %intra4x4_pred_mode, align 8, !dbg !3897, !tbaa !2051
  %idxprom8 = sext i32 %0 to i64, !dbg !3898
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %7, i64 %idxprom8, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %arrayidx9, metadata !3865, metadata !DIExpression()), !dbg !3888
  %non_zero_count = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 43, !dbg !3899
  %8 = load ptr, ptr %non_zero_count, align 16, !dbg !3899, !tbaa !2056
  %arrayidx12 = getelementptr inbounds [24 x i8], ptr %8, i64 %idxprom8, !dbg !3900
  call void @llvm.dbg.value(metadata ptr %arrayidx12, metadata !3866, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata ptr %h, metadata !3901, metadata !DIExpression()) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i32 0, metadata !3904, metadata !DIExpression()) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i32 16, metadata !3905, metadata !DIExpression()) #11, !dbg !3909
  %fdec.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45, !dbg !3911
  %9 = load ptr, ptr %fdec.i, align 16, !dbg !3911, !tbaa !2286
  %arrayidx.i = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 24, i64 0, !dbg !3912
  %10 = load i32, ptr %arrayidx.i, align 4, !dbg !3912, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %10, metadata !3906, metadata !DIExpression()) #11, !dbg !3909
  %b_interlaced.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 17, !dbg !3913
  %11 = load i32, ptr %b_interlaced.i, align 4, !dbg !3913, !tbaa !1633
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %11), metadata !3907, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)) #11, !dbg !3909
  %tobool6.not.i = icmp eq i32 %11, 0, !dbg !3914
  %i_mb_x16.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 4, !dbg !3909
  %12 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3909, !tbaa !2741
  %i_mb_y18.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 5, !dbg !3909
  %13 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3909, !tbaa !1637
  br i1 %tobool6.not.i, label %cond.false.i, label %cond.true.i, !dbg !3914

cond.true.i:                                      ; preds = %entry
  %and.i = and i32 %13, -2, !dbg !3915
  %mul.i = mul nsw i32 %and.i, %10, !dbg !3916
  %add.i = add nsw i32 %mul.i, %12, !dbg !3917
  %mul9.i = shl nsw i32 %add.i, 4, !dbg !3918
  %and12.i = and i32 %13, 1, !dbg !3919
  %mul13.i = mul nuw nsw i32 %and12.i, %10, !dbg !3920
  %add14.i = add nsw i32 %mul9.i, %mul13.i, !dbg !3921
  br label %x264_macroblock_store_pic.exit, !dbg !3914

cond.false.i:                                     ; preds = %entry
  %mul19.i = mul nsw i32 %13, %10, !dbg !3922
  %add20.i = add nsw i32 %mul19.i, %12, !dbg !3923
  %mul21.i = shl nsw i32 %add20.i, 4, !dbg !3924
  br label %x264_macroblock_store_pic.exit, !dbg !3914

x264_macroblock_store_pic.exit:                   ; preds = %cond.true.i, %cond.false.i
  %cond22.i = phi i32 [ %add14.i, %cond.true.i ], [ %mul21.i, %cond.false.i ], !dbg !3914
  %shl.i = shl i32 %10, %11, !dbg !3925
  call void @llvm.dbg.value(metadata i32 %shl.i, metadata !3907, metadata !DIExpression()) #11, !dbg !3909
  call void @llvm.dbg.value(metadata i32 %cond22.i, metadata !3908, metadata !DIExpression()) #11, !dbg !3909
  %arrayidx26.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 4, i64 0, !dbg !3926
  %14 = load ptr, ptr %arrayidx26.i, align 8, !dbg !3926, !tbaa !1619
  %arrayidx29.i = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 30, i64 0, !dbg !3927
  %15 = load ptr, ptr %arrayidx29.i, align 8, !dbg !3927, !tbaa !1619
  %idxprom30.i = sext i32 %cond22.i to i64, !dbg !3927
  %arrayidx31.i = getelementptr inbounds i8, ptr %15, i64 %idxprom30.i, !dbg !3927
  %arrayidx34.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 0, !dbg !3928
  %16 = load ptr, ptr %arrayidx34.i, align 8, !dbg !3928, !tbaa !1619
  tail call void %14(ptr noundef %arrayidx31.i, i32 noundef %shl.i, ptr noundef %16, i32 noundef 32, i32 noundef 16) #11, !dbg !3926
  call void @llvm.dbg.value(metadata ptr %h, metadata !3901, metadata !DIExpression()) #11, !dbg !3929
  call void @llvm.dbg.value(metadata i32 1, metadata !3904, metadata !DIExpression()) #11, !dbg !3929
  call void @llvm.dbg.value(metadata i32 8, metadata !3905, metadata !DIExpression()) #11, !dbg !3929
  %17 = load ptr, ptr %fdec.i, align 16, !dbg !3931, !tbaa !2286
  %arrayidx.i968 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 24, i64 1, !dbg !3932
  %18 = load i32, ptr %arrayidx.i968, align 4, !dbg !3932, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %18, metadata !3906, metadata !DIExpression()) #11, !dbg !3929
  %19 = load i32, ptr %b_interlaced.i, align 4, !dbg !3933, !tbaa !1633
  call void @llvm.dbg.value(metadata !DIArgList(i32 %18, i32 %19), metadata !3907, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)) #11, !dbg !3929
  %tobool6.not.i970 = icmp eq i32 %19, 0, !dbg !3934
  %20 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3929, !tbaa !2741
  %21 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3929, !tbaa !1637
  br i1 %tobool6.not.i970, label %cond.false.i984, label %cond.true.i980, !dbg !3934

cond.true.i980:                                   ; preds = %x264_macroblock_store_pic.exit
  %and.i973 = and i32 %21, -2, !dbg !3935
  %mul.i974 = mul nsw i32 %and.i973, %18, !dbg !3936
  %add.i975 = add nsw i32 %mul.i974, %20, !dbg !3937
  %mul9.i976 = shl nsw i32 %add.i975, 3, !dbg !3938
  %and12.i977 = and i32 %21, 1, !dbg !3939
  %mul13.i978 = mul nuw nsw i32 %and12.i977, %18, !dbg !3940
  %add14.i979 = add nsw i32 %mul9.i976, %mul13.i978, !dbg !3941
  br label %x264_macroblock_store_pic.exit992, !dbg !3934

cond.false.i984:                                  ; preds = %x264_macroblock_store_pic.exit
  %mul19.i981 = mul nsw i32 %21, %18, !dbg !3942
  %add20.i982 = add nsw i32 %mul19.i981, %20, !dbg !3943
  %mul21.i983 = shl nsw i32 %add20.i982, 3, !dbg !3944
  br label %x264_macroblock_store_pic.exit992, !dbg !3934

x264_macroblock_store_pic.exit992:                ; preds = %cond.true.i980, %cond.false.i984
  %cond22.i985 = phi i32 [ %add14.i979, %cond.true.i980 ], [ %mul21.i983, %cond.false.i984 ], !dbg !3934
  %shl.i986 = shl i32 %18, %19, !dbg !3945
  call void @llvm.dbg.value(metadata i32 %shl.i986, metadata !3907, metadata !DIExpression()) #11, !dbg !3929
  call void @llvm.dbg.value(metadata i32 %cond22.i985, metadata !3908, metadata !DIExpression()) #11, !dbg !3929
  %arrayidx26.i987 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 4, i64 3, !dbg !3946
  %22 = load ptr, ptr %arrayidx26.i987, align 8, !dbg !3946, !tbaa !1619
  %arrayidx29.i988 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 30, i64 1, !dbg !3947
  %23 = load ptr, ptr %arrayidx29.i988, align 8, !dbg !3947, !tbaa !1619
  %idxprom30.i989 = sext i32 %cond22.i985 to i64, !dbg !3947
  %arrayidx31.i990 = getelementptr inbounds i8, ptr %23, i64 %idxprom30.i989, !dbg !3947
  %arrayidx34.i991 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 1, !dbg !3948
  %24 = load ptr, ptr %arrayidx34.i991, align 8, !dbg !3948, !tbaa !1619
  tail call void %22(ptr noundef %arrayidx31.i990, i32 noundef %shl.i986, ptr noundef %24, i32 noundef 32, i32 noundef 8) #11, !dbg !3946
  call void @llvm.dbg.value(metadata ptr %h, metadata !3901, metadata !DIExpression()) #11, !dbg !3949
  call void @llvm.dbg.value(metadata i32 2, metadata !3904, metadata !DIExpression()) #11, !dbg !3949
  call void @llvm.dbg.value(metadata i32 8, metadata !3905, metadata !DIExpression()) #11, !dbg !3949
  %25 = load ptr, ptr %fdec.i, align 16, !dbg !3951, !tbaa !2286
  %arrayidx.i994 = getelementptr inbounds %struct.x264_frame, ptr %25, i64 0, i32 24, i64 1, !dbg !3952
  %26 = load i32, ptr %arrayidx.i994, align 4, !dbg !3952, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %26, metadata !3906, metadata !DIExpression()) #11, !dbg !3949
  %27 = load i32, ptr %b_interlaced.i, align 4, !dbg !3953, !tbaa !1633
  call void @llvm.dbg.value(metadata !DIArgList(i32 %26, i32 %27), metadata !3907, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)) #11, !dbg !3949
  %tobool6.not.i996 = icmp eq i32 %27, 0, !dbg !3954
  %28 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3949, !tbaa !2741
  %29 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3949, !tbaa !1637
  br i1 %tobool6.not.i996, label %cond.false.i1010, label %cond.true.i1006, !dbg !3954

cond.true.i1006:                                  ; preds = %x264_macroblock_store_pic.exit992
  %and.i999 = and i32 %29, -2, !dbg !3955
  %mul.i1000 = mul nsw i32 %and.i999, %26, !dbg !3956
  %add.i1001 = add nsw i32 %mul.i1000, %28, !dbg !3957
  %mul9.i1002 = shl nsw i32 %add.i1001, 3, !dbg !3958
  %and12.i1003 = and i32 %29, 1, !dbg !3959
  %mul13.i1004 = mul nuw nsw i32 %and12.i1003, %26, !dbg !3960
  %add14.i1005 = add nsw i32 %mul9.i1002, %mul13.i1004, !dbg !3961
  br label %x264_macroblock_store_pic.exit1018, !dbg !3954

cond.false.i1010:                                 ; preds = %x264_macroblock_store_pic.exit992
  %mul19.i1007 = mul nsw i32 %29, %26, !dbg !3962
  %add20.i1008 = add nsw i32 %mul19.i1007, %28, !dbg !3963
  %mul21.i1009 = shl nsw i32 %add20.i1008, 3, !dbg !3964
  br label %x264_macroblock_store_pic.exit1018, !dbg !3954

x264_macroblock_store_pic.exit1018:               ; preds = %cond.true.i1006, %cond.false.i1010
  %cond22.i1011 = phi i32 [ %add14.i1005, %cond.true.i1006 ], [ %mul21.i1009, %cond.false.i1010 ], !dbg !3954
  %shl.i1012 = shl i32 %26, %27, !dbg !3965
  call void @llvm.dbg.value(metadata i32 %shl.i1012, metadata !3907, metadata !DIExpression()) #11, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %cond22.i1011, metadata !3908, metadata !DIExpression()) #11, !dbg !3949
  %30 = load ptr, ptr %arrayidx26.i987, align 8, !dbg !3966, !tbaa !1619
  %arrayidx29.i1014 = getelementptr inbounds %struct.x264_frame, ptr %25, i64 0, i32 30, i64 2, !dbg !3967
  %31 = load ptr, ptr %arrayidx29.i1014, align 8, !dbg !3967, !tbaa !1619
  %idxprom30.i1015 = sext i32 %cond22.i1011 to i64, !dbg !3967
  %arrayidx31.i1016 = getelementptr inbounds i8, ptr %31, i64 %idxprom30.i1015, !dbg !3967
  %arrayidx34.i1017 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 66, i32 18, i64 2, !dbg !3968
  %32 = load ptr, ptr %arrayidx34.i1017, align 8, !dbg !3968, !tbaa !1619
  tail call void %30(ptr noundef %arrayidx31.i1016, i32 noundef %shl.i1012, ptr noundef %32, i32 noundef 32, i32 noundef 8) #11, !dbg !3966
  %33 = load ptr, ptr %fdec.i, align 16, !dbg !3969, !tbaa !2286
  %34 = load i32, ptr %i_mb_x16.i, align 16, !dbg !3970, !tbaa !2741
  %35 = load i32, ptr %i_mb_y18.i, align 4, !dbg !3971, !tbaa !1637
  call void @llvm.dbg.value(metadata ptr %h, metadata !2639, metadata !DIExpression()) #11, !dbg !3972
  call void @llvm.dbg.value(metadata ptr %33, metadata !2640, metadata !DIExpression()) #11, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %34, metadata !2641, metadata !DIExpression()) #11, !dbg !3972
  call void @llvm.dbg.value(metadata i32 %35, metadata !2642, metadata !DIExpression()) #11, !dbg !3972
  %i_stride.i = getelementptr inbounds %struct.x264_frame, ptr %33, i64 0, i32 24, !dbg !3974
  %36 = load i32, ptr %i_stride.i, align 8, !dbg !3975, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %36, metadata !2643, metadata !DIExpression()) #11, !dbg !3972
  %arrayidx2.i = getelementptr inbounds %struct.x264_frame, ptr %33, i64 0, i32 24, i64 1, !dbg !3976
  %37 = load i32, ptr %arrayidx2.i, align 4, !dbg !3976, !tbaa !1589
  call void @llvm.dbg.value(metadata i32 %37, metadata !2644, metadata !DIExpression()) #11, !dbg !3972
  %mul.i1019 = mul nsw i32 %36, %35, !dbg !3977
  %add.i1020 = add nsw i32 %mul.i1019, %34, !dbg !3978
  %mul3.i = shl nsw i32 %add.i1020, 4, !dbg !3979
  call void @llvm.dbg.value(metadata i32 %mul3.i, metadata !2645, metadata !DIExpression()) #11, !dbg !3972
  %mul4.i = mul nsw i32 %37, %35, !dbg !3980
  %add5.i = add nsw i32 %mul4.i, %34, !dbg !3981
  %mul6.i = shl nsw i32 %add5.i, 3, !dbg !3982
  call void @llvm.dbg.value(metadata i32 %mul6.i, metadata !2646, metadata !DIExpression()) #11, !dbg !3972
  %prefetch_fenc.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 8, !dbg !3983
  %38 = load ptr, ptr %prefetch_fenc.i, align 8, !dbg !3983, !tbaa !2658
  %plane.i = getelementptr inbounds %struct.x264_frame, ptr %33, i64 0, i32 30, !dbg !3984
  %39 = load ptr, ptr %plane.i, align 8, !dbg !3985, !tbaa !1619
  %idx.ext.i = sext i32 %mul3.i to i64, !dbg !3986
  %add.ptr.i = getelementptr inbounds i8, ptr %39, i64 %idx.ext.i, !dbg !3986
  %and.i1021 = and i32 %34, 1, !dbg !3987
  %add9.i = add nuw nsw i32 %and.i1021, 1, !dbg !3988
  %40 = zext i32 %add9.i to i64
  %arrayidx10.i = getelementptr inbounds %struct.x264_frame, ptr %33, i64 0, i32 30, i64 %40, !dbg !3989
  %41 = load ptr, ptr %arrayidx10.i, align 8, !dbg !3989, !tbaa !1619
  %idx.ext11.i = sext i32 %mul6.i to i64, !dbg !3990
  %add.ptr12.i = getelementptr inbounds i8, ptr %41, i64 %idx.ext11.i, !dbg !3990
  tail call void %38(ptr noundef %add.ptr.i, i32 noundef %36, ptr noundef %add.ptr12.i, i32 noundef %37, i32 noundef %34) #11, !dbg !3991
  %type = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 38, !dbg !3992
  %42 = load ptr, ptr %type, align 8, !dbg !3992, !tbaa !2428
  %arrayidx19 = getelementptr inbounds i8, ptr %42, i64 %idxprom8, !dbg !3993
  store i8 %2, ptr %arrayidx19, align 1, !dbg !3994, !tbaa !1528
  %i_first_mb = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 3, !dbg !3995
  %43 = load i32, ptr %i_first_mb, align 4, !dbg !3995, !tbaa !2796
  %conv20 = trunc i32 %43 to i16, !dbg !3996
  %slice_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 51, !dbg !3997
  %44 = load ptr, ptr %slice_table, align 16, !dbg !3997, !tbaa !2045
  %arrayidx23 = getelementptr inbounds i16, ptr %44, i64 %idxprom8, !dbg !3998
  store i16 %conv20, ptr %arrayidx23, align 2, !dbg !3999, !tbaa !1585
  %45 = icmp ult i32 %1, 2, !dbg !4000
  %cmp28 = icmp eq i32 %1, 2, !dbg !4000
  %cmp31 = icmp eq i32 %1, 3, !dbg !4000
  %46 = icmp ult i32 %1, 4, !dbg !4000
  br i1 %46, label %cond.end, label %cond.false, !dbg !4000

cond.false:                                       ; preds = %x264_macroblock_store_pic.exit1018
  %i_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 54, !dbg !4001
  %47 = load i32, ptr %i_partition, align 4, !dbg !4001, !tbaa !1901
  br label %cond.end, !dbg !4000

cond.end:                                         ; preds = %x264_macroblock_store_pic.exit1018, %cond.false
  %cond = phi i32 [ %47, %cond.false ], [ 16, %x264_macroblock_store_pic.exit1018 ], !dbg !4000
  %conv34 = trunc i32 %cond to i8, !dbg !4000
  %partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 39, !dbg !4002
  %48 = load ptr, ptr %partition, align 16, !dbg !4002, !tbaa !2433
  %arrayidx37 = getelementptr inbounds i8, ptr %48, i64 %idxprom8, !dbg !4003
  store i8 %conv34, ptr %arrayidx37, align 1, !dbg !4004, !tbaa !1528
  %i_mb_prev_xy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 33, !dbg !4005
  store i32 %0, ptr %i_mb_prev_xy, align 4, !dbg !4006, !tbaa !4007
  br i1 %45, label %if.then, label %if.else, !dbg !4008

if.then:                                          ; preds = %cond.end
  %cache = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, !dbg !4009
  %arrayidx44 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 36, !dbg !4009
  %49 = load i32, ptr %arrayidx44, align 1, !dbg !4009, !tbaa !1528
  store i32 %49, ptr %arrayidx9, align 4, !dbg !4009, !tbaa !1528
  %arrayidx50 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 15, !dbg !4012
  %50 = load i8, ptr %arrayidx50, align 1, !dbg !4012, !tbaa !1528
  %conv51 = sext i8 %50 to i32, !dbg !4012
  %arrayidx56 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 23, !dbg !4013
  %51 = load i8, ptr %arrayidx56, align 1, !dbg !4013, !tbaa !1528
  %conv57 = sext i8 %51 to i32, !dbg !4013
  %arrayidx62 = getelementptr inbounds [40 x i8], ptr %cache, i64 0, i64 31, !dbg !4014
  %52 = load i8, ptr %arrayidx62, align 1, !dbg !4014, !tbaa !1528
  %conv63 = sext i8 %52 to i32, !dbg !4014
  call void @llvm.dbg.value(metadata i32 %conv51, metadata !4015, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %conv57, metadata !4020, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %conv63, metadata !4021, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !4022, metadata !DIExpression()), !dbg !4023
  %shl.i1022 = shl nsw i32 %conv57, 8, !dbg !4025
  %add.i1023 = add nsw i32 %shl.i1022, %conv51, !dbg !4026
  %shl1.i = shl nsw i32 %conv63, 16, !dbg !4027
  %add2.i = add nsw i32 %add.i1023, %shl1.i, !dbg !4028
  %arrayidx64 = getelementptr inbounds i8, ptr %arrayidx9, i64 4, !dbg !4029
  store i32 %add2.i, ptr %arrayidx64, align 4, !dbg !4030, !tbaa !1528
  br label %if.end79, !dbg !4031

if.else:                                          ; preds = %cond.end
  %b_constrained_intra = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 27, !dbg !4032
  %53 = load i32, ptr %b_constrained_intra, align 4, !dbg !4032, !tbaa !2803
  %tobool = icmp eq i32 %53, 0, !dbg !4034
  %or.cond726 = select i1 %tobool, i1 true, i1 %cmp28, !dbg !4035
  %or.cond727 = select i1 %or.cond726, i1 true, i1 %cmp31, !dbg !4035
  br i1 %or.cond727, label %if.then77, label %if.else78, !dbg !4035

if.then77:                                        ; preds = %if.else
  store i64 144680345676153346, ptr %arrayidx9, align 8, !dbg !4036, !tbaa !1528
  br label %if.end79, !dbg !4037

if.else78:                                        ; preds = %if.else
  store i64 -1, ptr %arrayidx9, align 8, !dbg !4038, !tbaa !1528
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.else78, %if.then
  br i1 %cmp31, label %if.then82, label %if.else102, !dbg !4039

if.then82:                                        ; preds = %if.end79
  %qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 40, !dbg !4040
  %54 = load ptr, ptr %qp, align 8, !dbg !4040, !tbaa !2025
  %arrayidx85 = getelementptr inbounds i8, ptr %54, i64 %idxprom8, !dbg !4041
  store i8 0, ptr %arrayidx85, align 1, !dbg !4042, !tbaa !1528
  %i_last_dqp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 71, !dbg !4043
  store i32 0, ptr %i_last_dqp, align 4, !dbg !4044, !tbaa !4045
  %i_cbp_chroma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !4046
  store i32 2, ptr %i_cbp_chroma, align 4, !dbg !4047, !tbaa !4048
  %i_cbp_luma = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !4049
  store i32 15, ptr %i_cbp_luma, align 8, !dbg !4050, !tbaa !4051
  %cbp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 41, !dbg !4052
  %55 = load ptr, ptr %cbp, align 16, !dbg !4052, !tbaa !2030
  %arrayidx91 = getelementptr inbounds i16, ptr %55, i64 %idxprom8, !dbg !4053
  store i16 1839, ptr %arrayidx91, align 2, !dbg !4054, !tbaa !1585
  %b_transform_8x8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !4055
  store i32 0, ptr %b_transform_8x8, align 4, !dbg !4056, !tbaa !4057
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %arrayidx12, i8 16, i64 24, i1 false), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !3867, metadata !DIExpression()), !dbg !4059
  br label %for.body, !dbg !4060

for.body:                                         ; preds = %if.then82, %for.body
  %indvars.iv = phi i64 [ 0, %if.then82 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3867, metadata !DIExpression()), !dbg !4059
  %arrayidx99 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %indvars.iv, !dbg !4061
  %56 = load i32, ptr %arrayidx99, align 4, !dbg !4061, !tbaa !1589
  %idxprom100 = sext i32 %56 to i64, !dbg !4063
  %arrayidx101 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 %idxprom100, !dbg !4063
  store i8 16, ptr %arrayidx101, align 1, !dbg !4064, !tbaa !1528
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4065
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3867, metadata !DIExpression()), !dbg !4059
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24, !dbg !4066
  br i1 %exitcond.not, label %if.end199, label %for.body, !dbg !4060, !llvm.loop !4067

if.else102:                                       ; preds = %if.end79
  %arrayidx107 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 12, !dbg !4069
  %57 = load i32, ptr %arrayidx107, align 1, !dbg !4069, !tbaa !1528
  store i32 %57, ptr %arrayidx12, align 4, !dbg !4069, !tbaa !1528
  %arrayidx114 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 20, !dbg !4071
  %58 = load i32, ptr %arrayidx114, align 1, !dbg !4071, !tbaa !1528
  %arrayidx115 = getelementptr inbounds i8, ptr %arrayidx12, i64 4, !dbg !4071
  store i32 %58, ptr %arrayidx115, align 4, !dbg !4071, !tbaa !1528
  %arrayidx121 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 28, !dbg !4072
  %59 = load i32, ptr %arrayidx121, align 1, !dbg !4072, !tbaa !1528
  %arrayidx122 = getelementptr inbounds i8, ptr %arrayidx12, i64 8, !dbg !4072
  store i32 %59, ptr %arrayidx122, align 4, !dbg !4072, !tbaa !1528
  %arrayidx128 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 36, !dbg !4073
  %60 = load i32, ptr %arrayidx128, align 1, !dbg !4073, !tbaa !1528
  %arrayidx129 = getelementptr inbounds i8, ptr %arrayidx12, i64 12, !dbg !4073
  store i32 %60, ptr %arrayidx129, align 4, !dbg !4073, !tbaa !1528
  %arrayidx134 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 8, !dbg !4074
  %61 = load i32, ptr %arrayidx134, align 1, !dbg !4074, !tbaa !1528
  %shr = lshr i32 %61, 8, !dbg !4075
  %conv135 = trunc i32 %shr to i16, !dbg !4074
  %arrayidx136 = getelementptr inbounds i8, ptr %arrayidx12, i64 16, !dbg !4076
  store i16 %conv135, ptr %arrayidx136, align 2, !dbg !4077, !tbaa !1528
  %arrayidx142 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 16, !dbg !4078
  %62 = load i32, ptr %arrayidx142, align 1, !dbg !4078, !tbaa !1528
  %shr143 = lshr i32 %62, 8, !dbg !4079
  %conv144 = trunc i32 %shr143 to i16, !dbg !4078
  %arrayidx145 = getelementptr inbounds i8, ptr %arrayidx12, i64 18, !dbg !4080
  store i16 %conv144, ptr %arrayidx145, align 2, !dbg !4081, !tbaa !1528
  %arrayidx151 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 32, !dbg !4082
  %63 = load i32, ptr %arrayidx151, align 1, !dbg !4082, !tbaa !1528
  %shr152 = lshr i32 %63, 8, !dbg !4083
  %conv153 = trunc i32 %shr152 to i16, !dbg !4082
  %arrayidx154 = getelementptr inbounds i8, ptr %arrayidx12, i64 20, !dbg !4084
  store i16 %conv153, ptr %arrayidx154, align 2, !dbg !4085, !tbaa !1528
  %arrayidx160 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 2, i64 40, !dbg !4086
  %64 = load i32, ptr %arrayidx160, align 1, !dbg !4086, !tbaa !1528
  %shr161 = lshr i32 %64, 8, !dbg !4087
  %conv162 = trunc i32 %shr161 to i16, !dbg !4086
  %arrayidx163 = getelementptr inbounds i8, ptr %arrayidx12, i64 22, !dbg !4088
  store i16 %conv162, ptr %arrayidx163, align 2, !dbg !4089, !tbaa !1528
  %65 = load i32, ptr %i_type, align 8, !dbg !4090, !tbaa !3891
  %cmp166.not = icmp eq i32 %65, 2, !dbg !4092
  br i1 %cmp166.not, label %if.end180, label %land.lhs.true, !dbg !4093

land.lhs.true:                                    ; preds = %if.else102
  %i_cbp_luma169 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !4094
  %66 = load i32, ptr %i_cbp_luma169, align 8, !dbg !4094, !tbaa !4051
  %cmp170 = icmp eq i32 %66, 0, !dbg !4095
  br i1 %cmp170, label %land.lhs.true172, label %if.end180, !dbg !4096

land.lhs.true172:                                 ; preds = %land.lhs.true
  %i_cbp_chroma174 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 58, !dbg !4097
  %67 = load i32, ptr %i_cbp_chroma174, align 4, !dbg !4097, !tbaa !4048
  %cmp175 = icmp eq i32 %67, 0, !dbg !4098
  br i1 %cmp175, label %if.then177, label %if.end180, !dbg !4099

if.then177:                                       ; preds = %land.lhs.true172
  %i_last_qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 70, !dbg !4100
  %68 = load i32, ptr %i_last_qp, align 8, !dbg !4100, !tbaa !4101
  %i_qp = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 68, !dbg !4102
  store i32 %68, ptr %i_qp, align 16, !dbg !4103, !tbaa !4104
  br label %if.end180, !dbg !4105

if.end180:                                        ; preds = %if.then177, %land.lhs.true172, %land.lhs.true, %if.else102
  %i_qp182 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 68, !dbg !4106
  %69 = load i32, ptr %i_qp182, align 16, !dbg !4106, !tbaa !4104
  %conv183 = trunc i32 %69 to i8, !dbg !4107
  %qp185 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 40, !dbg !4108
  %70 = load ptr, ptr %qp185, align 8, !dbg !4108, !tbaa !2025
  %arrayidx187 = getelementptr inbounds i8, ptr %70, i64 %idxprom8, !dbg !4109
  store i8 %conv183, ptr %arrayidx187, align 1, !dbg !4110, !tbaa !1528
  %71 = load i32, ptr %i_qp182, align 16, !dbg !4111, !tbaa !4104
  %i_last_qp191 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 70, !dbg !4112
  %72 = load i32, ptr %i_last_qp191, align 8, !dbg !4112, !tbaa !4101
  %sub192 = sub nsw i32 %71, %72, !dbg !4113
  %i_last_dqp194 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 71, !dbg !4114
  store i32 %sub192, ptr %i_last_dqp194, align 4, !dbg !4115, !tbaa !4045
  store i32 %71, ptr %i_last_qp191, align 8, !dbg !4116, !tbaa !4101
  br label %if.end199

if.end199:                                        ; preds = %for.body, %if.end180
  %i_cbp_luma201 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 57, !dbg !4117
  %73 = load i32, ptr %i_cbp_luma201, align 8, !dbg !4117, !tbaa !4051
  %cmp202 = icmp eq i32 %73, 0, !dbg !4119
  br i1 %cmp202, label %land.lhs.true204, label %if.end212, !dbg !4120

land.lhs.true204:                                 ; preds = %if.end199
  %74 = load i32, ptr %i_type, align 8, !dbg !4121, !tbaa !3891
  %cmp207.not = icmp eq i32 %74, 1, !dbg !4122
  br i1 %cmp207.not, label %if.end212, label %if.then209, !dbg !4123

if.then209:                                       ; preds = %land.lhs.true204
  %b_transform_8x8211 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !4124
  store i32 0, ptr %b_transform_8x8211, align 4, !dbg !4125, !tbaa !4057
  br label %if.end212, !dbg !4126

if.end212:                                        ; preds = %if.then209, %land.lhs.true204, %if.end199
  %b_transform_8x8214 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 56, !dbg !4127
  %75 = load i32, ptr %b_transform_8x8214, align 4, !dbg !4127, !tbaa !4057
  %conv215 = trunc i32 %75 to i8, !dbg !4128
  %mb_transform_size = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 50, !dbg !4129
  %76 = load ptr, ptr %mb_transform_size, align 8, !dbg !4129, !tbaa !2040
  %arrayidx218 = getelementptr inbounds i8, ptr %76, i64 %idxprom8, !dbg !4130
  store i8 %conv215, ptr %arrayidx218, align 1, !dbg !4131, !tbaa !1528
  %i_type220 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 2, !dbg !4132
  %77 = load i32, ptr %i_type220, align 16, !dbg !4132, !tbaa !1494
  %cmp221.not = icmp eq i32 %77, 2, !dbg !4133
  br i1 %cmp221.not, label %if.end500, label %if.then223, !dbg !4134

if.then223:                                       ; preds = %if.end212
  %mv = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, !dbg !4135
  %78 = load ptr, ptr %mv, align 16, !dbg !4136, !tbaa !1619
  %idxprom226 = sext i32 %5 to i64, !dbg !4136
  %arrayidx227 = getelementptr inbounds [2 x i16], ptr %78, i64 %idxprom226, !dbg !4136
  call void @llvm.dbg.value(metadata ptr %arrayidx227, metadata !3871, metadata !DIExpression()), !dbg !4137
  %arrayidx230 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 45, i64 1, !dbg !4138
  %79 = load ptr, ptr %arrayidx230, align 8, !dbg !4138, !tbaa !1619
  %arrayidx232 = getelementptr inbounds [2 x i16], ptr %79, i64 %idxprom226, !dbg !4138
  call void @llvm.dbg.value(metadata ptr %arrayidx232, metadata !3874, metadata !DIExpression()), !dbg !4137
  %ref = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, !dbg !4139
  %80 = load ptr, ptr %ref, align 16, !dbg !4140, !tbaa !1619
  %idxprom235 = sext i32 %6 to i64, !dbg !4140
  %arrayidx236 = getelementptr inbounds i8, ptr %80, i64 %idxprom235, !dbg !4140
  call void @llvm.dbg.value(metadata ptr %arrayidx236, metadata !3875, metadata !DIExpression()), !dbg !4137
  %arrayidx239 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 47, i64 1, !dbg !4141
  %81 = load ptr, ptr %arrayidx239, align 8, !dbg !4141, !tbaa !1619
  %arrayidx241 = getelementptr inbounds i8, ptr %81, i64 %idxprom235, !dbg !4141
  call void @llvm.dbg.value(metadata ptr %arrayidx241, metadata !3876, metadata !DIExpression()), !dbg !4137
  br i1 %46, label %if.else427, label %if.then253, !dbg !4142

if.then253:                                       ; preds = %if.then223
  %ref256 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, !dbg !4144
  %arrayidx259 = getelementptr inbounds [40 x i8], ptr %ref256, i64 0, i64 12, !dbg !4146
  %82 = load i8, ptr %arrayidx259, align 1, !dbg !4146, !tbaa !1528
  store i8 %82, ptr %arrayidx236, align 1, !dbg !4147, !tbaa !1528
  %arrayidx268 = getelementptr inbounds [40 x i8], ptr %ref256, i64 0, i64 14, !dbg !4148
  %83 = load i8, ptr %arrayidx268, align 1, !dbg !4148, !tbaa !1528
  %arrayidx272 = getelementptr inbounds i8, ptr %arrayidx236, i64 1, !dbg !4149
  store i8 %83, ptr %arrayidx272, align 1, !dbg !4150, !tbaa !1528
  %arrayidx278 = getelementptr inbounds [40 x i8], ptr %ref256, i64 0, i64 28, !dbg !4151
  %84 = load i8, ptr %arrayidx278, align 1, !dbg !4151, !tbaa !1528
  %idxprom281 = sext i32 %3 to i64, !dbg !4152
  %arrayidx282 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom281, !dbg !4152
  store i8 %84, ptr %arrayidx282, align 1, !dbg !4153, !tbaa !1528
  %arrayidx288 = getelementptr inbounds [40 x i8], ptr %ref256, i64 0, i64 30, !dbg !4154
  %85 = load i8, ptr %arrayidx288, align 1, !dbg !4154, !tbaa !1528
  %add290 = add nsw i32 %3, 1, !dbg !4155
  %idxprom291 = sext i32 %add290 to i64, !dbg !4156
  %arrayidx292 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom291, !dbg !4156
  store i8 %85, ptr %arrayidx292, align 1, !dbg !4157, !tbaa !1528
  %mv298 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, !dbg !4158
  %arrayidx302 = getelementptr inbounds [40 x [2 x i16]], ptr %mv298, i64 0, i64 12, !dbg !4158
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx302, i64 16, i1 false), !dbg !4158, !tbaa.struct !3230
  %idxprom305 = sext i32 %4 to i64, !dbg !4159
  %arrayidx306 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom305, !dbg !4159
  %arrayidx313 = getelementptr inbounds [40 x [2 x i16]], ptr %mv298, i64 0, i64 20, !dbg !4159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx306, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx313, i64 16, i1 false), !dbg !4159, !tbaa.struct !3230
  %mul315 = shl nsw i32 %4, 1, !dbg !4160
  %idxprom316 = sext i32 %mul315 to i64, !dbg !4160
  %arrayidx317 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom316, !dbg !4160
  %arrayidx324 = getelementptr inbounds [40 x [2 x i16]], ptr %mv298, i64 0, i64 28, !dbg !4160
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx317, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx324, i64 16, i1 false), !dbg !4160, !tbaa.struct !3230
  %mul326 = mul nsw i32 %4, 3, !dbg !4161
  %idxprom327 = sext i32 %mul326 to i64, !dbg !4161
  %arrayidx328 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom327, !dbg !4161
  %arrayidx335 = getelementptr inbounds [40 x [2 x i16]], ptr %mv298, i64 0, i64 36, !dbg !4161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx328, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx335, i64 16, i1 false), !dbg !4161, !tbaa.struct !3230
  %86 = load i32, ptr %i_type220, align 16, !dbg !4162, !tbaa !1494
  %cmp339 = icmp eq i32 %86, 1, !dbg !4164
  br i1 %cmp339, label %if.then341, label %if.end500, !dbg !4165

if.then341:                                       ; preds = %if.then253
  %arrayidx347 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 12, !dbg !4166
  %87 = load i8, ptr %arrayidx347, align 1, !dbg !4166, !tbaa !1528
  store i8 %87, ptr %arrayidx241, align 1, !dbg !4168, !tbaa !1528
  %arrayidx357 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 14, !dbg !4169
  %88 = load i8, ptr %arrayidx357, align 1, !dbg !4169, !tbaa !1528
  %arrayidx361 = getelementptr inbounds i8, ptr %arrayidx241, i64 1, !dbg !4170
  store i8 %88, ptr %arrayidx361, align 1, !dbg !4171, !tbaa !1528
  %arrayidx367 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 28, !dbg !4172
  %89 = load i8, ptr %arrayidx367, align 1, !dbg !4172, !tbaa !1528
  %arrayidx371 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom281, !dbg !4173
  store i8 %89, ptr %arrayidx371, align 1, !dbg !4174, !tbaa !1528
  %arrayidx377 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 3, i64 1, i64 30, !dbg !4175
  %90 = load i8, ptr %arrayidx377, align 1, !dbg !4175, !tbaa !1528
  %arrayidx381 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom291, !dbg !4176
  store i8 %90, ptr %arrayidx381, align 1, !dbg !4177, !tbaa !1528
  %arrayidx391 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 12, !dbg !4178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx391, i64 16, i1 false), !dbg !4178, !tbaa.struct !3230
  %arrayidx395 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom305, !dbg !4179
  %arrayidx402 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 20, !dbg !4179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx395, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx402, i64 16, i1 false), !dbg !4179, !tbaa.struct !3230
  %arrayidx406 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom316, !dbg !4180
  %arrayidx413 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 28, !dbg !4180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx406, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx413, i64 16, i1 false), !dbg !4180, !tbaa.struct !3230
  %arrayidx417 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom327, !dbg !4181
  %arrayidx424 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 4, i64 1, i64 36, !dbg !4181
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx417, ptr noundef nonnull align 4 dereferenceable(16) %arrayidx424, i64 16, i1 false), !dbg !4181, !tbaa.struct !3230
  br label %if.end500, !dbg !4182

if.else427:                                       ; preds = %if.then223
  store i16 -1, ptr %arrayidx236, align 2, !dbg !4183, !tbaa !1528
  %idxprom432 = sext i32 %3 to i64, !dbg !4185
  %arrayidx433 = getelementptr inbounds i8, ptr %arrayidx236, i64 %idxprom432, !dbg !4185
  store i16 -1, ptr %arrayidx433, align 2, !dbg !4186, !tbaa !1528
  %idxprom439 = sext i32 %4 to i64, !dbg !4187
  %arrayidx440 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom439, !dbg !4187
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx227, i8 0, i64 16, i1 false), !dbg !4188
  %mul445 = shl nsw i32 %4, 1, !dbg !4189
  %idxprom446 = sext i32 %mul445 to i64, !dbg !4189
  %arrayidx447 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom446, !dbg !4189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx440, i8 0, i64 16, i1 false), !dbg !4190
  %mul452 = mul nsw i32 %4, 3, !dbg !4191
  %idxprom453 = sext i32 %mul452 to i64, !dbg !4191
  %arrayidx454 = getelementptr inbounds [2 x i16], ptr %arrayidx227, i64 %idxprom453, !dbg !4191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx447, i8 0, i64 16, i1 false), !dbg !4192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx454, i8 0, i64 16, i1 false), !dbg !4193
  %91 = load i32, ptr %i_type220, align 16, !dbg !4194, !tbaa !1494
  %cmp461 = icmp eq i32 %91, 1, !dbg !4196
  br i1 %cmp461, label %if.then463, label %if.end500, !dbg !4197

if.then463:                                       ; preds = %if.else427
  store i16 -1, ptr %arrayidx241, align 2, !dbg !4198, !tbaa !1528
  %arrayidx469 = getelementptr inbounds i8, ptr %arrayidx241, i64 %idxprom432, !dbg !4200
  store i16 -1, ptr %arrayidx469, align 2, !dbg !4201, !tbaa !1528
  %arrayidx479 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom439, !dbg !4202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx232, i8 0, i64 16, i1 false), !dbg !4203
  %arrayidx486 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom446, !dbg !4204
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx479, i8 0, i64 16, i1 false), !dbg !4205
  %arrayidx493 = getelementptr inbounds [2 x i16], ptr %arrayidx232, i64 %idxprom453, !dbg !4206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx486, i8 0, i64 16, i1 false), !dbg !4207
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx493, i8 0, i64 16, i1 false), !dbg !4208
  br label %if.end500, !dbg !4209

if.end500:                                        ; preds = %if.then341, %if.then253, %if.then463, %if.else427, %if.end212
  %b_cabac = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 24, !dbg !4210
  %92 = load i32, ptr %b_cabac, align 16, !dbg !4210, !tbaa !2061
  %tobool502.not = icmp eq i32 %92, 0, !dbg !4211
  br i1 %tobool502.not, label %if.end721, label %if.then503, !dbg !4212

if.then503:                                       ; preds = %if.end500
  %mvd = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, !dbg !4213
  %93 = load ptr, ptr %mvd, align 16, !dbg !4214, !tbaa !1619
  %arrayidx507 = getelementptr inbounds [8 x [2 x i8]], ptr %93, i64 %idxprom8, !dbg !4214
  call void @llvm.dbg.value(metadata ptr %arrayidx507, metadata !3877, metadata !DIExpression()), !dbg !4215
  %arrayidx511 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 46, i64 1, !dbg !4216
  %94 = load ptr, ptr %arrayidx511, align 8, !dbg !4216, !tbaa !1619
  %arrayidx513 = getelementptr inbounds [8 x [2 x i8]], ptr %94, i64 %idxprom8, !dbg !4216
  call void @llvm.dbg.value(metadata ptr %arrayidx513, metadata !3881, metadata !DIExpression()), !dbg !4215
  %95 = icmp ult i32 %1, 3, !dbg !4217
  br i1 %95, label %if.then529, label %if.end541, !dbg !4217

if.then529:                                       ; preds = %if.then503
  %i_chroma_pred_mode = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 60, !dbg !4219
  %96 = load i32, ptr %i_chroma_pred_mode, align 4, !dbg !4219, !tbaa !4220
  %idxprom531 = sext i32 %96 to i64, !dbg !4221
  %arrayidx532 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %idxprom531, !dbg !4221
  %97 = load i8, ptr %arrayidx532, align 1, !dbg !4221, !tbaa !1528
  br label %if.end541, !dbg !4222

if.end541:                                        ; preds = %if.then503, %if.then529
  %.sink = phi i8 [ %97, %if.then529 ], [ 0, %if.then503 ]
  %chroma_pred_mode538 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 44, !dbg !4223
  %98 = load ptr, ptr %chroma_pred_mode538, align 8, !dbg !4223, !tbaa !2067
  %arrayidx540 = getelementptr inbounds i8, ptr %98, i64 %idxprom8, !dbg !4223
  store i8 %.sink, ptr %arrayidx540, align 1, !dbg !4223, !tbaa !1528
  switch i32 %1, label %if.then562 [
    i32 18, label %if.else641
    i32 7, label %if.else641
    i32 6, label %if.else641
    i32 3, label %if.else641
    i32 2, label %if.else641
    i32 1, label %if.else641
    i32 0, label %if.else641
  ], !dbg !4224

if.then562:                                       ; preds = %if.end541
  %mvd565 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, !dbg !4226
  %arrayidx568 = getelementptr inbounds [40 x [2 x i8]], ptr %mvd565, i64 0, i64 36, !dbg !4226
  %99 = load i64, ptr %arrayidx568, align 2, !dbg !4226, !tbaa !1528
  store i64 %99, ptr %arrayidx507, align 8, !dbg !4226, !tbaa !1528
  %arrayidx577 = getelementptr inbounds [40 x [2 x i8]], ptr %mvd565, i64 0, i64 15, !dbg !4228
  %100 = load i16, ptr %arrayidx577, align 2, !dbg !4228, !tbaa !1528
  %arrayidx579 = getelementptr inbounds [2 x i8], ptr %arrayidx507, i64 4, !dbg !4228
  store i16 %100, ptr %arrayidx579, align 2, !dbg !4228, !tbaa !1528
  %arrayidx586 = getelementptr inbounds [40 x [2 x i8]], ptr %mvd565, i64 0, i64 23, !dbg !4229
  %101 = load i16, ptr %arrayidx586, align 2, !dbg !4229, !tbaa !1528
  %arrayidx588 = getelementptr inbounds [2 x i8], ptr %arrayidx507, i64 5, !dbg !4229
  store i16 %101, ptr %arrayidx588, align 2, !dbg !4229, !tbaa !1528
  %arrayidx595 = getelementptr inbounds [40 x [2 x i8]], ptr %mvd565, i64 0, i64 31, !dbg !4230
  %102 = load i16, ptr %arrayidx595, align 2, !dbg !4230, !tbaa !1528
  %arrayidx597 = getelementptr inbounds [2 x i8], ptr %arrayidx507, i64 6, !dbg !4230
  store i16 %102, ptr %arrayidx597, align 2, !dbg !4230, !tbaa !1528
  %103 = load i32, ptr %i_type220, align 16, !dbg !4231, !tbaa !1494
  %cmp601 = icmp eq i32 %103, 1, !dbg !4233
  br i1 %cmp601, label %if.then603, label %if.end721, !dbg !4234

if.then603:                                       ; preds = %if.then562
  %arrayidx609 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 1, i64 36, !dbg !4235
  %104 = load i64, ptr %arrayidx609, align 2, !dbg !4235, !tbaa !1528
  store i64 %104, ptr %arrayidx513, align 8, !dbg !4235, !tbaa !1528
  %arrayidx618 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 1, i64 15, !dbg !4237
  %105 = load i16, ptr %arrayidx618, align 2, !dbg !4237, !tbaa !1528
  %arrayidx620 = getelementptr inbounds [2 x i8], ptr %arrayidx513, i64 4, !dbg !4237
  store i16 %105, ptr %arrayidx620, align 2, !dbg !4237, !tbaa !1528
  %arrayidx627 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 1, i64 23, !dbg !4238
  %106 = load i16, ptr %arrayidx627, align 2, !dbg !4238, !tbaa !1528
  %arrayidx629 = getelementptr inbounds [2 x i8], ptr %arrayidx513, i64 5, !dbg !4238
  store i16 %106, ptr %arrayidx629, align 2, !dbg !4238, !tbaa !1528
  %arrayidx636 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 67, i32 5, i64 1, i64 31, !dbg !4239
  %107 = load i16, ptr %arrayidx636, align 2, !dbg !4239, !tbaa !1528
  %arrayidx638 = getelementptr inbounds [2 x i8], ptr %arrayidx513, i64 6, !dbg !4239
  store i16 %107, ptr %arrayidx638, align 2, !dbg !4239, !tbaa !1528
  br label %if.end660, !dbg !4240

if.else641:                                       ; preds = %if.end541, %if.end541, %if.end541, %if.end541, %if.end541, %if.end541, %if.end541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx507, i8 0, i64 16, i1 false), !dbg !4241
  %108 = load i32, ptr %i_type220, align 16, !dbg !4243, !tbaa !1494
  %cmp650 = icmp eq i32 %108, 1, !dbg !4245
  br i1 %cmp650, label %if.then652, label %if.end721, !dbg !4246

if.then652:                                       ; preds = %if.else641
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %arrayidx513, i8 0, i64 16, i1 false), !dbg !4247
  br label %if.end660, !dbg !4248

if.end660:                                        ; preds = %if.then652, %if.then603
  %.pr = load i32, ptr %i_type220, align 16, !dbg !4249, !tbaa !1494
  %cmp663 = icmp eq i32 %.pr, 1, !dbg !4250
  br i1 %cmp663, label %if.then665, label %if.end721, !dbg !4251

if.then665:                                       ; preds = %if.end660
  switch i32 %1, label %if.else713 [
    i32 18, label %if.end721.sink.split
    i32 7, label %if.end721.sink.split
    i32 17, label %if.then678
  ], !dbg !4252

if.then678:                                       ; preds = %if.then665
  %i_sub_partition = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, !dbg !4253
  %109 = load i8, ptr %i_sub_partition, align 16, !dbg !4254, !tbaa !1528
  %cmp683 = icmp eq i8 %109, 12, !dbg !4255
  %conv684 = zext i1 %cmp683 to i8, !dbg !4255
  call void @llvm.dbg.value(metadata i1 %cmp683, metadata !3882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4256
  %arrayidx687 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 1, !dbg !4257
  %110 = load i8, ptr %arrayidx687, align 1, !dbg !4257, !tbaa !1528
  %cmp689 = icmp eq i8 %110, 12, !dbg !4258
  %shl691 = select i1 %cmp689, i8 2, i8 0, !dbg !4259
  %or = or i8 %shl691, %conv684, !dbg !4260
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i1 %cmp683), metadata !3882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value)), !dbg !4256
  %arrayidx694 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 2, !dbg !4261
  %111 = load i8, ptr %arrayidx694, align 2, !dbg !4261, !tbaa !1528
  %cmp696 = icmp eq i8 %111, 12, !dbg !4262
  %shl698 = select i1 %cmp696, i8 4, i8 0, !dbg !4263
  %or699 = or i8 %or, %shl698, !dbg !4264
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef, i1 %cmp683), metadata !3882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4256
  %arrayidx702 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 55, i64 3, !dbg !4265
  %112 = load i8, ptr %arrayidx702, align 1, !dbg !4265, !tbaa !1528
  %cmp704 = icmp eq i8 %112, 12, !dbg !4266
  %shl706 = select i1 %cmp704, i8 8, i8 0, !dbg !4267
  %or707 = or i8 %or699, %shl706, !dbg !4268
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef, i32 undef, i1 %cmp683), metadata !3882, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value)), !dbg !4256
  br label %if.end721.sink.split, !dbg !4269

if.else713:                                       ; preds = %if.then665
  br label %if.end721.sink.split

if.end721.sink.split:                             ; preds = %if.then665, %if.then665, %if.else713, %if.then678
  %or707.sink = phi i8 [ %or707, %if.then678 ], [ 0, %if.else713 ], [ 15, %if.then665 ], [ 15, %if.then665 ]
  %skipbp710 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 49, !dbg !4270
  %113 = load ptr, ptr %skipbp710, align 16, !dbg !4270, !tbaa !2035
  %arrayidx712 = getelementptr inbounds i8, ptr %113, i64 %idxprom8, !dbg !4270
  store i8 %or707.sink, ptr %arrayidx712, align 1, !dbg !4270, !tbaa !1528
  br label %if.end721, !dbg !4271

if.end721:                                        ; preds = %if.end721.sink.split, %if.then562, %if.else641, %if.end660, %if.end500
  ret void, !dbg !4271
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_macroblock_bipred_init(ptr nocapture noundef %h) local_unnamed_addr #5 !dbg !4272 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !4274, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata i32 0, metadata !4275, metadata !DIExpression()), !dbg !4296
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7
  %0 = load i32, ptr %b_mbaff, align 4, !tbaa !2510
  call void @llvm.dbg.value(metadata i32 0, metadata !4275, metadata !DIExpression()), !dbg !4296
  %cmp.not163 = icmp slt i32 %0, 0, !dbg !4297
  br i1 %cmp.not163, label %for.cond.cleanup, label %for.cond1.preheader.lr.ph, !dbg !4298

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %i_ref02 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 46
  %1 = load i32, ptr %i_ref02, align 8, !tbaa !2435
  %shl = shl i32 %1, %0
  %cmp5152 = icmp sgt i32 %shl, 0
  %tobool.not = icmp eq i32 %0, 0
  %i_delta_poc_bottom = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 12
  %fdec = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 45
  %b_weighted_bipred = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 4
  br i1 %cmp5152, label %for.cond1.preheader.lr.ph.split.us, label %for.cond.cleanup, !dbg !4299

for.cond1.preheader.lr.ph.split.us:               ; preds = %for.cond1.preheader.lr.ph
  %i_ref115 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 48
  %2 = load i32, ptr %i_ref115, align 8, !tbaa !2439
  %shl18.us = shl i32 %2, %0
  %cmp19150.us = icmp sgt i32 %shl18.us, 0
  br i1 %cmp19150.us, label %for.cond1.preheader.lr.ph.split.us.split.us, label %for.cond.cleanup, !dbg !4300

for.cond1.preheader.lr.ph.split.us.split.us:      ; preds = %for.cond1.preheader.lr.ph.split.us
  %3 = load i32, ptr %b_weighted_bipred, align 16, !tbaa !4301
  %tobool63.us.us.us = icmp ne i32 %3, 0
  %4 = add nuw i32 %0, 1, !dbg !4298
  %wide.trip.count196 = zext i32 %4 to i64, !dbg !4297
  %wide.trip.count191 = zext i32 %shl to i64
  %wide.trip.count = zext i32 %shl18.us to i64
  br label %for.cond1.preheader.us.us, !dbg !4298

for.cond1.preheader.us.us:                        ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us.split.us
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us ], [ 0, %for.cond1.preheader.lr.ph.split.us.split.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv193, metadata !4275, metadata !DIExpression()), !dbg !4296
  call void @llvm.dbg.value(metadata i32 0, metadata !4277, metadata !DIExpression()), !dbg !4302
  %5 = trunc i64 %indvars.iv193 to i32
  br label %for.body7.us.us.us, !dbg !4299

for.body7.us.us.us:                               ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, %for.cond1.preheader.us.us
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %for.cond14.for.cond.cleanup20_crit_edge.us.us.us ], [ 0, %for.cond1.preheader.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv188, metadata !4277, metadata !DIExpression()), !dbg !4302
  %6 = trunc i64 %indvars.iv188 to i32, !dbg !4303
  %shr.us.us.us = lshr i32 %6, %0, !dbg !4303
  %idxprom.us.us.us = sext i32 %shr.us.us.us to i64, !dbg !4304
  %arrayidx.us.us.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 47, i64 %idxprom.us.us.us, !dbg !4304
  %7 = load ptr, ptr %arrayidx.us.us.us, align 8, !dbg !4304, !tbaa !1619
  %8 = load i32, ptr %7, align 16, !dbg !4305, !tbaa !2457
  call void @llvm.dbg.value(metadata i32 %8, metadata !4280, metadata !DIExpression()), !dbg !4306
  %and.us.us.us = and i64 %indvars.iv188, 1
  %tobool12.not.us.us.us = icmp eq i64 %indvars.iv193, %and.us.us.us
  %or.cond143.us.us.us = select i1 %tobool.not, i1 true, i1 %tobool12.not.us.us.us, !dbg !4307
  br i1 %or.cond143.us.us.us, label %if.end.us.us.us, label %if.then.us.us.us, !dbg !4307

if.then.us.us.us:                                 ; preds = %for.body7.us.us.us
  %9 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4309, !tbaa !2513
  %add.us.us.us = add nsw i32 %9, %8, !dbg !4310
  call void @llvm.dbg.value(metadata i32 %add.us.us.us, metadata !4280, metadata !DIExpression()), !dbg !4306
  br label %if.end.us.us.us, !dbg !4311

if.end.us.us.us:                                  ; preds = %if.then.us.us.us, %for.body7.us.us.us
  %poc0.0.us.us.us = phi i32 [ %add.us.us.us, %if.then.us.us.us ], [ %8, %for.body7.us.us.us ], !dbg !4306
  call void @llvm.dbg.value(metadata i32 %poc0.0.us.us.us, metadata !4280, metadata !DIExpression()), !dbg !4306
  call void @llvm.dbg.value(metadata i32 0, metadata !4283, metadata !DIExpression()), !dbg !4312
  br label %for.body21.us.us.us, !dbg !4300

for.body21.us.us.us:                              ; preds = %if.end89.us.us.us, %if.end.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end89.us.us.us ], [ 0, %if.end.us.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4283, metadata !DIExpression()), !dbg !4312
  %10 = trunc i64 %indvars.iv to i32, !dbg !4313
  %shr24.us.us.us = lshr i32 %10, %0, !dbg !4313
  %idxprom25.us.us.us = sext i32 %shr24.us.us.us to i64, !dbg !4314
  %arrayidx26.us.us.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 49, i64 %idxprom25.us.us.us, !dbg !4314
  %11 = load ptr, ptr %arrayidx26.us.us.us, align 8, !dbg !4314, !tbaa !1619
  %12 = load i32, ptr %11, align 16, !dbg !4315, !tbaa !2457
  call void @llvm.dbg.value(metadata i32 %12, metadata !4288, metadata !DIExpression()), !dbg !4316
  %and32.us.us.us = and i64 %indvars.iv, 1
  %tobool34.not.us.us.us = icmp eq i64 %indvars.iv193, %and32.us.us.us
  %or.cond144.us.us.us = select i1 %tobool.not, i1 true, i1 %tobool34.not.us.us.us, !dbg !4317
  br i1 %or.cond144.us.us.us, label %if.end39.us.us.us, label %if.then35.us.us.us, !dbg !4317

if.then35.us.us.us:                               ; preds = %for.body21.us.us.us
  %13 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4319, !tbaa !2513
  %add38.us.us.us = add nsw i32 %13, %12, !dbg !4320
  call void @llvm.dbg.value(metadata i32 %add38.us.us.us, metadata !4288, metadata !DIExpression()), !dbg !4316
  br label %if.end39.us.us.us, !dbg !4321

if.end39.us.us.us:                                ; preds = %if.then35.us.us.us, %for.body21.us.us.us
  %poc1.0.us.us.us = phi i32 [ %add38.us.us.us, %if.then35.us.us.us ], [ %12, %for.body21.us.us.us ], !dbg !4316
  call void @llvm.dbg.value(metadata i32 %poc1.0.us.us.us, metadata !4288, metadata !DIExpression()), !dbg !4316
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i64 %indvars.iv193, i32 undef), metadata !4289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4316
  %sub.us.us.us = sub nsw i32 %poc1.0.us.us.us, %poc0.0.us.us.us, !dbg !4322
  call void @llvm.dbg.value(metadata i32 %sub.us.us.us, metadata !1592, metadata !DIExpression()) #11, !dbg !4323
  call void @llvm.dbg.value(metadata i32 -128, metadata !1597, metadata !DIExpression()) #11, !dbg !4323
  call void @llvm.dbg.value(metadata i32 127, metadata !1598, metadata !DIExpression()) #11, !dbg !4323
  %14 = tail call i32 @llvm.smin.i32(i32 %sub.us.us.us, i32 127) #11
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 -128), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %15, metadata !4290, metadata !DIExpression()), !dbg !4316
  %cmp44.us.us.us = icmp eq i32 %15, 0, !dbg !4326
  br i1 %cmp44.us.us.us, label %if.end55.us.us.us, label %if.else.us.us.us, !dbg !4327

if.else.us.us.us:                                 ; preds = %if.end39.us.us.us
  %16 = load i32, ptr %i_delta_poc_bottom, align 8, !dbg !4328, !tbaa !2513
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i64 %indvars.iv193, i32 %16), metadata !4289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4316
  %17 = load ptr, ptr %fdec, align 16, !dbg !4329, !tbaa !2286
  %18 = load i32, ptr %17, align 16, !dbg !4330, !tbaa !2457
  call void @llvm.dbg.value(metadata !DIArgList(i32 %18, i64 %indvars.iv193, i32 undef), metadata !4289, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4316
  %mul.us.us.us = mul nsw i32 %16, %5, !dbg !4331
  call void @llvm.dbg.value(metadata i32 undef, metadata !4289, metadata !DIExpression()), !dbg !4316
  %add43.us.us.us = sub i32 %mul.us.us.us, %poc0.0.us.us.us, !dbg !4332
  %sub46.us.us.us = add i32 %add43.us.us.us, %18, !dbg !4333
  call void @llvm.dbg.value(metadata i32 %sub46.us.us.us, metadata !1592, metadata !DIExpression()) #11, !dbg !4334
  call void @llvm.dbg.value(metadata i32 -128, metadata !1597, metadata !DIExpression()) #11, !dbg !4334
  call void @llvm.dbg.value(metadata i32 127, metadata !1598, metadata !DIExpression()) #11, !dbg !4334
  %19 = tail call i32 @llvm.smin.i32(i32 %sub46.us.us.us, i32 127) #11
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 -128), !dbg !4336
  call void @llvm.dbg.value(metadata i32 %20, metadata !4291, metadata !DIExpression()), !dbg !4337
  %21 = tail call i32 @llvm.abs.i32(i32 %15, i1 true), !dbg !4338
  %22 = lshr i32 %21, 1, !dbg !4339
  %23 = trunc i32 %22 to i16, !dbg !4340
  %div.lhs.trunc.us.us.us = add nuw nsw i16 %23, 16384, !dbg !4340
  %div.rhs.trunc.us.us.us = trunc i32 %15 to i16, !dbg !4340
  %div149.us.us.us = sdiv i16 %div.lhs.trunc.us.us.us, %div.rhs.trunc.us.us.us, !dbg !4340
  %div.sext.us.us.us = sext i16 %div149.us.us.us to i32, !dbg !4340
  call void @llvm.dbg.value(metadata i32 %div.sext.us.us.us, metadata !4294, metadata !DIExpression()), !dbg !4337
  %mul51.us.us.us = mul nsw i32 %20, %div.sext.us.us.us, !dbg !4341
  %add52.us.us.us = add nsw i32 %mul51.us.us.us, 32, !dbg !4342
  %shr53.us.us.us = ashr i32 %add52.us.us.us, 6, !dbg !4343
  call void @llvm.dbg.value(metadata i32 %shr53.us.us.us, metadata !1592, metadata !DIExpression()) #11, !dbg !4344
  call void @llvm.dbg.value(metadata i32 -1024, metadata !1597, metadata !DIExpression()) #11, !dbg !4344
  call void @llvm.dbg.value(metadata i32 1023, metadata !1598, metadata !DIExpression()) #11, !dbg !4344
  %24 = tail call i32 @llvm.smin.i32(i32 %shr53.us.us.us, i32 1023) #11
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 -1024), !dbg !4346
  call void @llvm.dbg.value(metadata i32 %25, metadata !4285, metadata !DIExpression()), !dbg !4316
  br label %if.end55.us.us.us

if.end55.us.us.us:                                ; preds = %if.else.us.us.us, %if.end39.us.us.us
  %dist_scale_factor.0.us.us.us = phi i32 [ %25, %if.else.us.us.us ], [ 256, %if.end39.us.us.us ], !dbg !4347
  call void @llvm.dbg.value(metadata i32 %dist_scale_factor.0.us.us.us, metadata !4285, metadata !DIExpression()), !dbg !4316
  %conv.us.us.us = trunc i32 %dist_scale_factor.0.us.us.us to i16, !dbg !4348
  %arrayidx61.us.us.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 79, i64 %indvars.iv193, i64 %indvars.iv188, i64 %indvars.iv, !dbg !4349
  store i16 %conv.us.us.us, ptr %arrayidx61.us.us.us, align 2, !dbg !4350, !tbaa !1585
  call void @llvm.dbg.value(metadata i32 %dist_scale_factor.0.us.us.us, metadata !4285, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !4316
  %cmp65.us.us.us = icmp sgt i32 %dist_scale_factor.0.us.us.us, -257
  %or.cond.us.us.us = select i1 %tobool63.us.us.us, i1 %cmp65.us.us.us, i1 false, !dbg !4351
  %cmp68.us.us.us = icmp slt i32 %dist_scale_factor.0.us.us.us, 516
  %or.cond96.us.us.us = select i1 %or.cond.us.us.us, i1 %cmp68.us.us.us, i1 false, !dbg !4351
  br i1 %or.cond96.us.us.us, label %if.then70.us.us.us, label %if.end89.us.us.us, !dbg !4351

if.then70.us.us.us:                               ; preds = %if.end55.us.us.us
  %26 = lshr i32 %dist_scale_factor.0.us.us.us, 2, !dbg !4353
  call void @llvm.dbg.value(metadata i32 %dist_scale_factor.0.us.us.us, metadata !4285, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shra, DW_OP_stack_value)), !dbg !4316
  %27 = trunc i32 %26 to i8, !dbg !4354
  %conv72.us.us.us = sub i8 64, %27, !dbg !4354
  br label %if.end89.us.us.us, !dbg !4356

if.end89.us.us.us:                                ; preds = %if.end55.us.us.us, %if.then70.us.us.us
  %.sink = phi i8 [ %conv72.us.us.us, %if.then70.us.us.us ], [ 32, %if.end55.us.us.us ], !dbg !4357
  %28 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 81, i64 %indvars.iv193, i64 %indvars.iv188, i64 %indvars.iv, !dbg !4358
  store i8 %.sink, ptr %28, align 1, !dbg !4359
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !4360
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4283, metadata !DIExpression()), !dbg !4312
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !4361
  br i1 %exitcond.not, label %for.cond14.for.cond.cleanup20_crit_edge.us.us.us, label %for.body21.us.us.us, !dbg !4300, !llvm.loop !4362

for.cond14.for.cond.cleanup20_crit_edge.us.us.us: ; preds = %if.end89.us.us.us
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1, !dbg !4364
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next189, metadata !4277, metadata !DIExpression()), !dbg !4302
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191, !dbg !4365
  br i1 %exitcond192.not, label %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, label %for.body7.us.us.us, !dbg !4299, !llvm.loop !4366

for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us: ; preds = %for.cond14.for.cond.cleanup20_crit_edge.us.us.us
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1, !dbg !4368
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next194, metadata !4275, metadata !DIExpression()), !dbg !4296
  %exitcond197.not = icmp eq i64 %indvars.iv.next194, %wide.trip.count196, !dbg !4297
  br i1 %exitcond197.not, label %for.cond.cleanup, label %for.cond1.preheader.us.us, !dbg !4298, !llvm.loop !4369

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup6_crit_edge.split.us.us.us, %for.cond1.preheader.lr.ph.split.us, %for.cond1.preheader.lr.ph, %entry
  ret void, !dbg !4371
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
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195}
!llvm.ident = !{!196}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_scan8", scope: !2, file: !6, line: 125, type: !185, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/macroblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "0b3bd83ad3c1537e307ae76d0bffb91a")
!4 = !{!5, !14, !35, !43, !65, !80, !89}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!10 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!11 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!12 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!13 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_partition_e", file: !15, line: 117, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!17 = !DIEnumerator(name: "D_L0_4x4", value: 0)
!18 = !DIEnumerator(name: "D_L0_8x4", value: 1)
!19 = !DIEnumerator(name: "D_L0_4x8", value: 2)
!20 = !DIEnumerator(name: "D_L0_8x8", value: 3)
!21 = !DIEnumerator(name: "D_L1_4x4", value: 4)
!22 = !DIEnumerator(name: "D_L1_8x4", value: 5)
!23 = !DIEnumerator(name: "D_L1_4x8", value: 6)
!24 = !DIEnumerator(name: "D_L1_8x8", value: 7)
!25 = !DIEnumerator(name: "D_BI_4x4", value: 8)
!26 = !DIEnumerator(name: "D_BI_8x4", value: 9)
!27 = !DIEnumerator(name: "D_BI_4x8", value: 10)
!28 = !DIEnumerator(name: "D_BI_8x8", value: 11)
!29 = !DIEnumerator(name: "D_DIRECT_8x8", value: 12)
!30 = !DIEnumerator(name: "D_8x8", value: 13)
!31 = !DIEnumerator(name: "D_16x8", value: 14)
!32 = !DIEnumerator(name: "D_8x16", value: 15)
!33 = !DIEnumerator(name: "D_16x16", value: 16)
!34 = !DIEnumerator(name: "X264_PARTTYPE_MAX", value: 17)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macroblock_position_e", file: !15, line: 33, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "MB_LEFT", value: 1)
!38 = !DIEnumerator(name: "MB_TOP", value: 2)
!39 = !DIEnumerator(name: "MB_TOPRIGHT", value: 4)
!40 = !DIEnumerator(name: "MB_TOPLEFT", value: 8)
!41 = !DIEnumerator(name: "MB_PRIVATE", value: 16)
!42 = !DIEnumerator(name: "ALL_NEIGHBORS", value: 15)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mb_class_e", file: !15, line: 66, baseType: !7, size: 32, elements: !44)
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
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra4x4_pred_e", file: !66, line: 65, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!68 = !DIEnumerator(name: "I_PRED_4x4_V", value: 0)
!69 = !DIEnumerator(name: "I_PRED_4x4_H", value: 1)
!70 = !DIEnumerator(name: "I_PRED_4x4_DC", value: 2)
!71 = !DIEnumerator(name: "I_PRED_4x4_DDL", value: 3)
!72 = !DIEnumerator(name: "I_PRED_4x4_DDR", value: 4)
!73 = !DIEnumerator(name: "I_PRED_4x4_VR", value: 5)
!74 = !DIEnumerator(name: "I_PRED_4x4_HD", value: 6)
!75 = !DIEnumerator(name: "I_PRED_4x4_VL", value: 7)
!76 = !DIEnumerator(name: "I_PRED_4x4_HU", value: 8)
!77 = !DIEnumerator(name: "I_PRED_4x4_DC_LEFT", value: 9)
!78 = !DIEnumerator(name: "I_PRED_4x4_DC_TOP", value: 10)
!79 = !DIEnumerator(name: "I_PRED_4x4_DC_128", value: 11)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "intra_chroma_pred_e", file: !66, line: 31, baseType: !7, size: 32, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DIEnumerator(name: "I_PRED_CHROMA_DC", value: 0)
!83 = !DIEnumerator(name: "I_PRED_CHROMA_H", value: 1)
!84 = !DIEnumerator(name: "I_PRED_CHROMA_V", value: 2)
!85 = !DIEnumerator(name: "I_PRED_CHROMA_P", value: 3)
!86 = !DIEnumerator(name: "I_PRED_CHROMA_DC_LEFT", value: 4)
!87 = !DIEnumerator(name: "I_PRED_CHROMA_DC_TOP", value: 5)
!88 = !DIEnumerator(name: "I_PRED_CHROMA_DC_128", value: 6)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 30, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!92 = !DIEnumerator(name: "PIXEL_16x16", value: 0)
!93 = !DIEnumerator(name: "PIXEL_16x8", value: 1)
!94 = !DIEnumerator(name: "PIXEL_8x16", value: 2)
!95 = !DIEnumerator(name: "PIXEL_8x8", value: 3)
!96 = !DIEnumerator(name: "PIXEL_8x4", value: 4)
!97 = !DIEnumerator(name: "PIXEL_4x8", value: 5)
!98 = !DIEnumerator(name: "PIXEL_4x4", value: 6)
!99 = !DIEnumerator(name: "PIXEL_4x2", value: 7)
!100 = !DIEnumerator(name: "PIXEL_2x4", value: 8)
!101 = !DIEnumerator(name: "PIXEL_2x2", value: 9)
!102 = !{!103, !126, !133, !121, !157, !143}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !6, line: 89, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 89, size: 32, elements: !106)
!106 = !{!107, !112, !119}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !105, file: !6, line: 89, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 26, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !111, line: 42, baseType: !7)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !105, file: !6, line: 89, baseType: !113, size: 32)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 32, elements: !117)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !109, line: 25, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !111, line: 40, baseType: !116)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !{!118}
!118 = !DISubrange(count: 2)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !105, file: !6, line: 89, baseType: !120, size: 32)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !124)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !109, line: 24, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !111, line: 38, baseType: !123)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union16_t", file: !6, line: 88, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 88, size: 16, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !128, file: !6, line: 88, baseType: !114, size: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !128, file: !6, line: 88, baseType: !132, size: 16)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16, elements: !117)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union128_t", file: !6, line: 92, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 92, size: 128, elements: !136)
!136 = !{!137, !146, !147, !149, !153}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !135, file: !6, line: 92, baseType: !138, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_uint128_t", file: !6, line: 91, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 91, size: 128, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !139, file: !6, line: 91, baseType: !142, size: 128)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !117)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !109, line: 27, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !111, line: 45, baseType: !145)
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !135, file: !6, line: 92, baseType: !142, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !135, file: !6, line: 92, baseType: !148, size: 128)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !124)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !135, file: !6, line: 92, baseType: !150, size: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !135, file: !6, line: 92, baseType: !154, size: 128)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 16)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !6, line: 90, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !6, line: 90, size: 64, elements: !160)
!160 = !{!161, !162, !164, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !159, file: !6, line: 90, baseType: !143, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !159, file: !6, line: 90, baseType: !163, size: 64)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !117)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !159, file: !6, line: 90, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !124)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !159, file: !6, line: 90, baseType: !167, size: 64)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !151)
!168 = !{!0, !169, !175, !180}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "x264_size2pixel", scope: !2, file: !90, line: 55, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 200, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!173 = !{!174, !174}
!174 = !DISubrange(count: 5)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "x264_mb_type_fix", scope: !2, file: !15, line: 92, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 152, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 19)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "x264_mb_pred_mode8x8c_fix", scope: !2, file: !66, line: 42, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 56, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 7)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 864, elements: !188)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!188 = !{!189}
!189 = !DISubrange(count: 27)
!190 = !{i32 7, !"Dwarf Version", i32 5}
!191 = !{i32 2, !"Debug Info Version", i32 3}
!192 = !{i32 1, !"wchar_size", i32 4}
!193 = !{i32 7, !"PIC Level", i32 2}
!194 = !{i32 7, !"PIE Level", i32 2}
!195 = !{i32 7, !"uwtable", i32 2}
!196 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!197 = distinct !DISubprogram(name: "x264_mb_mc_8x8", scope: !198, file: !198, line: 125, type: !199, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1482)
!198 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b3bd83ad3c1537e307ae76d0bffb91a")
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !187}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !203, line: 46, baseType: !204)
!203 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !6, line: 381, size: 266752, elements: !205)
!205 = !{!206, !372, !376, !377, !378, !379, !380, !381, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !517, !519, !546, !548, !549, !550, !554, !558, !559, !560, !564, !568, !569, !570, !575, !578, !579, !656, !673, !834, !835, !836, !837, !839, !840, !841, !842, !843, !844, !845, !860, !1052, !1056, !1116, !1119, !1121, !1122, !1123, !1126, !1131, !1137, !1138, !1146, !1148, !1153, !1228, !1314, !1358, !1380, !1429, !1458}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !204, file: !6, line: 384, baseType: !207, size: 5632)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !203, line: 376, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !203, line: 176, size: 5632, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !254, !255, !256, !257, !261, !262, !277, !278, !279, !280, !281, !310, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !208, file: !203, line: 179, baseType: !7, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !208, file: !203, line: 180, baseType: !187, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !208, file: !203, line: 181, baseType: !187, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !208, file: !203, line: 182, baseType: !187, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !208, file: !203, line: 183, baseType: !187, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !208, file: !203, line: 186, baseType: !187, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !208, file: !203, line: 187, baseType: !187, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !208, file: !203, line: 188, baseType: !187, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !208, file: !203, line: 189, baseType: !187, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !208, file: !203, line: 190, baseType: !187, size: 32, offset: 288)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !208, file: !203, line: 198, baseType: !187, size: 32, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !208, file: !203, line: 215, baseType: !222, size: 288, offset: 352)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 200, size: 288, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !222, file: !203, line: 203, baseType: !187, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !222, file: !203, line: 204, baseType: !187, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !222, file: !203, line: 206, baseType: !187, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !222, file: !203, line: 209, baseType: !187, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !222, file: !203, line: 210, baseType: !187, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !222, file: !203, line: 211, baseType: !187, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !222, file: !203, line: 212, baseType: !187, size: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !222, file: !203, line: 213, baseType: !187, size: 32, offset: 224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !222, file: !203, line: 214, baseType: !187, size: 32, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !208, file: !203, line: 218, baseType: !187, size: 32, offset: 640)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !208, file: !203, line: 219, baseType: !187, size: 32, offset: 672)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !208, file: !203, line: 220, baseType: !187, size: 32, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !208, file: !203, line: 221, baseType: !187, size: 32, offset: 736)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !208, file: !203, line: 222, baseType: !187, size: 32, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !208, file: !203, line: 224, baseType: !187, size: 32, offset: 800)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !208, file: !203, line: 225, baseType: !187, size: 32, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !208, file: !203, line: 226, baseType: !187, size: 32, offset: 864)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !208, file: !203, line: 227, baseType: !187, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !208, file: !203, line: 229, baseType: !187, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !208, file: !203, line: 230, baseType: !187, size: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !208, file: !203, line: 231, baseType: !187, size: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !208, file: !203, line: 233, baseType: !187, size: 32, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !208, file: !203, line: 234, baseType: !187, size: 32, offset: 1056)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !208, file: !203, line: 236, baseType: !187, size: 32, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !208, file: !203, line: 237, baseType: !187, size: 32, offset: 1120)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !208, file: !203, line: 239, baseType: !187, size: 32, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !208, file: !203, line: 240, baseType: !251, size: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !208, file: !203, line: 241, baseType: !154, size: 128, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !208, file: !203, line: 242, baseType: !154, size: 128, offset: 1408)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !208, file: !203, line: 243, baseType: !154, size: 128, offset: 1536)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !208, file: !203, line: 244, baseType: !154, size: 128, offset: 1664)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !208, file: !203, line: 245, baseType: !258, size: 512, offset: 1792)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !208, file: !203, line: 246, baseType: !258, size: 512, offset: 2304)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !208, file: !203, line: 249, baseType: !263, size: 64, offset: 2816)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266, !187, !267, !269}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !271)
!271 = !{!272, !274, !275, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !270, file: !273, baseType: !7, size: 32)
!273 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !270, file: !273, baseType: !7, size: 32, offset: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !270, file: !273, baseType: !266, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !270, file: !273, baseType: !266, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !208, file: !203, line: 250, baseType: !266, size: 64, offset: 2880)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !208, file: !203, line: 251, baseType: !187, size: 32, offset: 2944)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !208, file: !203, line: 252, baseType: !187, size: 32, offset: 2976)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !208, file: !203, line: 253, baseType: !251, size: 64, offset: 3008)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !208, file: !203, line: 287, baseType: !282, size: 800, offset: 3072)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 256, size: 800, elements: !283)
!283 = !{!284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !304, !305, !306, !308, !309}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !282, file: !203, line: 258, baseType: !7, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !282, file: !203, line: 259, baseType: !7, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !282, file: !203, line: 261, baseType: !187, size: 32, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !282, file: !203, line: 262, baseType: !187, size: 32, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !282, file: !203, line: 263, baseType: !187, size: 32, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !282, file: !203, line: 264, baseType: !187, size: 32, offset: 160)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !282, file: !203, line: 265, baseType: !187, size: 32, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !282, file: !203, line: 267, baseType: !187, size: 32, offset: 224)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !282, file: !203, line: 268, baseType: !187, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !282, file: !203, line: 269, baseType: !187, size: 32, offset: 288)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !282, file: !203, line: 270, baseType: !187, size: 32, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !282, file: !203, line: 271, baseType: !187, size: 32, offset: 352)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !282, file: !203, line: 272, baseType: !187, size: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !282, file: !203, line: 273, baseType: !187, size: 32, offset: 416)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !282, file: !203, line: 274, baseType: !187, size: 32, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !282, file: !203, line: 275, baseType: !187, size: 32, offset: 480)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !282, file: !203, line: 276, baseType: !187, size: 32, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !282, file: !203, line: 277, baseType: !187, size: 32, offset: 544)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !282, file: !203, line: 278, baseType: !303, size: 32, offset: 576)
!303 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !282, file: !203, line: 279, baseType: !303, size: 32, offset: 608)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !282, file: !203, line: 280, baseType: !187, size: 32, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !282, file: !203, line: 283, baseType: !307, size: 64, offset: 672)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 64, elements: !117)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !282, file: !203, line: 285, baseType: !187, size: 32, offset: 736)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !282, file: !203, line: 286, baseType: !187, size: 32, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !208, file: !203, line: 327, baseType: !311, size: 1152, offset: 3904)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !203, line: 290, size: 1152, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !350, !351}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !311, file: !203, line: 292, baseType: !187, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !311, file: !203, line: 294, baseType: !187, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !311, file: !203, line: 295, baseType: !187, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !311, file: !203, line: 296, baseType: !187, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !311, file: !203, line: 297, baseType: !187, size: 32, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !311, file: !203, line: 299, baseType: !187, size: 32, offset: 160)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !311, file: !203, line: 300, baseType: !303, size: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !311, file: !203, line: 301, baseType: !303, size: 32, offset: 224)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !311, file: !203, line: 302, baseType: !303, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !311, file: !203, line: 303, baseType: !187, size: 32, offset: 288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !311, file: !203, line: 304, baseType: !187, size: 32, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !311, file: !203, line: 305, baseType: !303, size: 32, offset: 352)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !311, file: !203, line: 306, baseType: !303, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !311, file: !203, line: 307, baseType: !303, size: 32, offset: 416)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !311, file: !203, line: 309, baseType: !187, size: 32, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !311, file: !203, line: 310, baseType: !303, size: 32, offset: 480)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !311, file: !203, line: 311, baseType: !187, size: 32, offset: 512)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !311, file: !203, line: 312, baseType: !187, size: 32, offset: 544)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !311, file: !203, line: 315, baseType: !187, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !311, file: !203, line: 316, baseType: !251, size: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !311, file: !203, line: 317, baseType: !187, size: 32, offset: 704)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !311, file: !203, line: 318, baseType: !251, size: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !311, file: !203, line: 321, baseType: !303, size: 32, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !311, file: !203, line: 322, baseType: !303, size: 32, offset: 864)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !311, file: !203, line: 323, baseType: !303, size: 32, offset: 896)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !311, file: !203, line: 324, baseType: !339, size: 64, offset: 960)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !203, line: 174, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 167, size: 256, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !341, file: !203, line: 169, baseType: !187, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !341, file: !203, line: 169, baseType: !187, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !341, file: !203, line: 170, baseType: !187, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !341, file: !203, line: 171, baseType: !187, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !341, file: !203, line: 172, baseType: !303, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !341, file: !203, line: 173, baseType: !349, size: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !311, file: !203, line: 325, baseType: !187, size: 32, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !311, file: !203, line: 326, baseType: !251, size: 64, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !208, file: !203, line: 330, baseType: !187, size: 32, offset: 5056)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !208, file: !203, line: 331, baseType: !187, size: 32, offset: 5088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !208, file: !203, line: 332, baseType: !187, size: 32, offset: 5120)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !208, file: !203, line: 334, baseType: !187, size: 32, offset: 5152)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !208, file: !203, line: 335, baseType: !187, size: 32, offset: 5184)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !208, file: !203, line: 336, baseType: !108, size: 32, offset: 5216)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !208, file: !203, line: 337, baseType: !108, size: 32, offset: 5248)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !208, file: !203, line: 338, baseType: !108, size: 32, offset: 5280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !208, file: !203, line: 339, baseType: !108, size: 32, offset: 5312)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !208, file: !203, line: 340, baseType: !187, size: 32, offset: 5344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !208, file: !203, line: 344, baseType: !187, size: 32, offset: 5376)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !208, file: !203, line: 356, baseType: !187, size: 32, offset: 5408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !208, file: !203, line: 364, baseType: !187, size: 32, offset: 5440)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !208, file: !203, line: 367, baseType: !187, size: 32, offset: 5472)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !208, file: !203, line: 368, baseType: !187, size: 32, offset: 5504)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !208, file: !203, line: 369, baseType: !187, size: 32, offset: 5536)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !208, file: !203, line: 375, baseType: !369, size: 64, offset: 5568)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !266}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !204, file: !6, line: 386, baseType: !373, size: 8256, offset: 5632)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 8256, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 129)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !204, file: !6, line: 387, baseType: !187, size: 32, offset: 13888)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !204, file: !6, line: 388, baseType: !187, size: 32, offset: 13920)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !204, file: !6, line: 389, baseType: !187, size: 32, offset: 13952)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !204, file: !6, line: 390, baseType: !187, size: 32, offset: 13984)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !204, file: !6, line: 391, baseType: !187, size: 32, offset: 14016)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !204, file: !6, line: 402, baseType: !382, size: 576, offset: 14080)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 394, size: 576, elements: !383)
!383 = !{!384, !385, !386, !396, !397, !398}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !382, file: !6, line: 396, baseType: !187, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !382, file: !6, line: 397, baseType: !187, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !382, file: !6, line: 398, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !203, line: 604, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 593, size: 192, elements: !390)
!390 = !{!391, !392, !393, !394}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !389, file: !203, line: 595, baseType: !187, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !389, file: !203, line: 596, baseType: !187, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !389, file: !203, line: 599, baseType: !187, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !389, file: !203, line: 603, baseType: !395, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !382, file: !6, line: 399, baseType: !187, size: 32, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !382, file: !6, line: 400, baseType: !395, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !382, file: !6, line: 401, baseType: !399, size: 320, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !400, line: 56, baseType: !401)
!400 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !400, line: 47, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !410, !411}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !401, file: !400, line: 49, baseType: !395, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !401, file: !400, line: 50, baseType: !395, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !401, file: !400, line: 51, baseType: !395, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !401, file: !400, line: 53, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !408, line: 87, baseType: !409)
!408 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!409 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !401, file: !400, line: 54, baseType: !187, size: 32, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !401, file: !400, line: 55, baseType: !187, size: 32, offset: 288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !204, file: !6, line: 404, baseType: !395, size: 64, offset: 14656)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !204, file: !6, line: 405, baseType: !187, size: 32, offset: 14720)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !204, file: !6, line: 410, baseType: !187, size: 32, offset: 14752)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !204, file: !6, line: 411, baseType: !187, size: 32, offset: 14784)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !204, file: !6, line: 413, baseType: !187, size: 32, offset: 14816)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !204, file: !6, line: 415, baseType: !187, size: 32, offset: 14848)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !204, file: !6, line: 416, baseType: !187, size: 32, offset: 14880)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !204, file: !6, line: 418, baseType: !187, size: 32, offset: 14912)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !204, file: !6, line: 419, baseType: !187, size: 32, offset: 14944)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !204, file: !6, line: 420, baseType: !187, size: 32, offset: 14976)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !204, file: !6, line: 421, baseType: !187, size: 32, offset: 15008)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !204, file: !6, line: 422, baseType: !187, size: 32, offset: 15040)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !204, file: !6, line: 424, baseType: !187, size: 32, offset: 15072)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !204, file: !6, line: 425, baseType: !187, size: 32, offset: 15104)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !204, file: !6, line: 427, baseType: !187, size: 32, offset: 15136)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !204, file: !6, line: 430, baseType: !428, size: 10400, offset: 15168)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 10400, elements: !515)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !430, line: 154, baseType: !431)
!430 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 52, size: 10400, elements: !432)
!432 = !{!433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !450, !451, !452, !453, !454, !455, !456, !457, !458, !465, !466, !514}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !431, file: !430, line: 54, baseType: !187, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !431, file: !430, line: 56, baseType: !187, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !431, file: !430, line: 57, baseType: !187, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !431, file: !430, line: 59, baseType: !187, size: 32, offset: 96)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !431, file: !430, line: 60, baseType: !187, size: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !431, file: !430, line: 61, baseType: !187, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !431, file: !430, line: 63, baseType: !187, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !431, file: !430, line: 65, baseType: !187, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !431, file: !430, line: 67, baseType: !187, size: 32, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !431, file: !430, line: 69, baseType: !187, size: 32, offset: 288)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !431, file: !430, line: 70, baseType: !187, size: 32, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !431, file: !430, line: 71, baseType: !187, size: 32, offset: 352)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !431, file: !430, line: 72, baseType: !187, size: 32, offset: 384)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !431, file: !430, line: 73, baseType: !447, size: 8192, offset: 416)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 8192, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !431, file: !430, line: 75, baseType: !187, size: 32, offset: 8608)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !431, file: !430, line: 76, baseType: !187, size: 32, offset: 8640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !431, file: !430, line: 77, baseType: !187, size: 32, offset: 8672)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !431, file: !430, line: 78, baseType: !187, size: 32, offset: 8704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !431, file: !430, line: 79, baseType: !187, size: 32, offset: 8736)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !431, file: !430, line: 80, baseType: !187, size: 32, offset: 8768)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !431, file: !430, line: 81, baseType: !187, size: 32, offset: 8800)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !431, file: !430, line: 83, baseType: !187, size: 32, offset: 8832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !431, file: !430, line: 90, baseType: !459, size: 128, offset: 8864)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !430, line: 84, size: 128, elements: !460)
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !459, file: !430, line: 86, baseType: !187, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !459, file: !430, line: 87, baseType: !187, size: 32, offset: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !459, file: !430, line: 88, baseType: !187, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !459, file: !430, line: 89, baseType: !187, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !431, file: !430, line: 92, baseType: !187, size: 32, offset: 8992)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !431, file: !430, line: 150, baseType: !467, size: 1344, offset: 9024)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !431, file: !430, line: 93, size: 1344, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !467, file: !430, line: 95, baseType: !187, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !467, file: !430, line: 96, baseType: !187, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !467, file: !430, line: 97, baseType: !187, size: 32, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !467, file: !430, line: 99, baseType: !187, size: 32, offset: 96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !467, file: !430, line: 100, baseType: !187, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !467, file: !430, line: 102, baseType: !187, size: 32, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !467, file: !430, line: 103, baseType: !187, size: 32, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !467, file: !430, line: 104, baseType: !187, size: 32, offset: 224)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !467, file: !430, line: 105, baseType: !187, size: 32, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !467, file: !430, line: 106, baseType: !187, size: 32, offset: 288)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !467, file: !430, line: 107, baseType: !187, size: 32, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !467, file: !430, line: 108, baseType: !187, size: 32, offset: 352)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !467, file: !430, line: 110, baseType: !187, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !467, file: !430, line: 111, baseType: !187, size: 32, offset: 416)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !467, file: !430, line: 112, baseType: !187, size: 32, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !467, file: !430, line: 114, baseType: !187, size: 32, offset: 480)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !467, file: !430, line: 115, baseType: !108, size: 32, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !467, file: !430, line: 116, baseType: !108, size: 32, offset: 544)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !467, file: !430, line: 117, baseType: !187, size: 32, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !467, file: !430, line: 119, baseType: !187, size: 32, offset: 608)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !467, file: !430, line: 120, baseType: !187, size: 32, offset: 640)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !467, file: !430, line: 137, baseType: !491, size: 384, offset: 672)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !430, line: 122, size: 384, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !491, file: !430, line: 124, baseType: !187, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !491, file: !430, line: 125, baseType: !187, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !491, file: !430, line: 126, baseType: !187, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !491, file: !430, line: 127, baseType: !187, size: 32, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !491, file: !430, line: 128, baseType: !187, size: 32, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !491, file: !430, line: 129, baseType: !187, size: 32, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !491, file: !430, line: 130, baseType: !187, size: 32, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !491, file: !430, line: 131, baseType: !187, size: 32, offset: 224)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !491, file: !430, line: 133, baseType: !187, size: 32, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !491, file: !430, line: 134, baseType: !187, size: 32, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !491, file: !430, line: 135, baseType: !187, size: 32, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !491, file: !430, line: 136, baseType: !187, size: 32, offset: 352)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !467, file: !430, line: 139, baseType: !187, size: 32, offset: 1056)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !467, file: !430, line: 140, baseType: !187, size: 32, offset: 1088)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !467, file: !430, line: 141, baseType: !187, size: 32, offset: 1120)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !467, file: !430, line: 142, baseType: !187, size: 32, offset: 1152)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !467, file: !430, line: 143, baseType: !187, size: 32, offset: 1184)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !467, file: !430, line: 144, baseType: !187, size: 32, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !467, file: !430, line: 145, baseType: !187, size: 32, offset: 1248)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !467, file: !430, line: 146, baseType: !187, size: 32, offset: 1280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !467, file: !430, line: 147, baseType: !187, size: 32, offset: 1312)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !431, file: !430, line: 152, baseType: !187, size: 32, offset: 10368)
!515 = !{!516}
!516 = !DISubrange(count: 1)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !204, file: !6, line: 431, baseType: !518, size: 64, offset: 25600)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !204, file: !6, line: 432, baseType: !520, size: 960, offset: 25664)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 960, elements: !515)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !430, line: 186, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 156, size: 960, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !522, file: !430, line: 158, baseType: !187, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !522, file: !430, line: 159, baseType: !187, size: 32, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !522, file: !430, line: 161, baseType: !187, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !522, file: !430, line: 163, baseType: !187, size: 32, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !522, file: !430, line: 164, baseType: !187, size: 32, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !522, file: !430, line: 166, baseType: !187, size: 32, offset: 160)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !522, file: !430, line: 167, baseType: !187, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !522, file: !430, line: 169, baseType: !187, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !522, file: !430, line: 170, baseType: !187, size: 32, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !522, file: !430, line: 172, baseType: !187, size: 32, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !522, file: !430, line: 173, baseType: !187, size: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !522, file: !430, line: 175, baseType: !187, size: 32, offset: 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !522, file: !430, line: 177, baseType: !187, size: 32, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !522, file: !430, line: 178, baseType: !187, size: 32, offset: 416)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !522, file: !430, line: 179, baseType: !187, size: 32, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !522, file: !430, line: 181, baseType: !187, size: 32, offset: 480)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !522, file: !430, line: 183, baseType: !187, size: 32, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !522, file: !430, line: 184, baseType: !542, size: 384, offset: 576)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 384, elements: !544)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!544 = !{!545}
!545 = !DISubrange(count: 6)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !204, file: !6, line: 433, baseType: !547, size: 64, offset: 26624)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !204, file: !6, line: 434, baseType: !187, size: 32, offset: 26688)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !204, file: !6, line: 437, baseType: !187, size: 32, offset: 26720)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !204, file: !6, line: 440, baseType: !551, size: 256, offset: 26752)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 256, elements: !124)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 512, elements: !155)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !204, file: !6, line: 441, baseType: !555, size: 128, offset: 27008)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 128, elements: !117)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2048, elements: !259)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !204, file: !6, line: 443, baseType: !551, size: 256, offset: 27136)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !204, file: !6, line: 444, baseType: !555, size: 128, offset: 27392)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !204, file: !6, line: 446, baseType: !561, size: 256, offset: 27520)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !562, size: 256, elements: !124)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !155)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !204, file: !6, line: 447, baseType: !565, size: 128, offset: 27776)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 128, elements: !117)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1024, elements: !259)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !204, file: !6, line: 448, baseType: !561, size: 256, offset: 27904)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !204, file: !6, line: 449, baseType: !565, size: 128, offset: 28160)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !204, file: !6, line: 454, baseType: !571, size: 5888, offset: 28288)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 5888, elements: !573)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!573 = !{!574}
!574 = !DISubrange(count: 92)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !204, file: !6, line: 455, baseType: !576, size: 23552, offset: 34176)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 23552, elements: !577)
!577 = !{!574, !125}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !204, file: !6, line: 457, baseType: !543, size: 64, offset: 57728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !204, file: !6, line: 460, baseType: !580, size: 53376, offset: 57856)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !6, line: 364, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 302, size: 53376, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !611, !640, !641, !642, !648, !649, !650, !651, !652, !653, !654, !655}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !581, file: !6, line: 304, baseType: !518, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !581, file: !6, line: 305, baseType: !547, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !581, file: !6, line: 307, baseType: !187, size: 32, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !581, file: !6, line: 308, baseType: !187, size: 32, offset: 160)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !581, file: !6, line: 309, baseType: !187, size: 32, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !581, file: !6, line: 311, baseType: !187, size: 32, offset: 224)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !581, file: !6, line: 313, baseType: !187, size: 32, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !581, file: !6, line: 315, baseType: !187, size: 32, offset: 288)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !581, file: !6, line: 316, baseType: !187, size: 32, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !581, file: !6, line: 317, baseType: !187, size: 32, offset: 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !581, file: !6, line: 319, baseType: !187, size: 32, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !581, file: !6, line: 321, baseType: !187, size: 32, offset: 416)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !581, file: !6, line: 322, baseType: !187, size: 32, offset: 448)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !581, file: !6, line: 324, baseType: !307, size: 64, offset: 480)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !581, file: !6, line: 325, baseType: !187, size: 32, offset: 544)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !581, file: !6, line: 327, baseType: !187, size: 32, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !581, file: !6, line: 329, baseType: !187, size: 32, offset: 608)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !581, file: !6, line: 330, baseType: !187, size: 32, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !581, file: !6, line: 331, baseType: !187, size: 32, offset: 672)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !581, file: !6, line: 333, baseType: !187, size: 32, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !581, file: !6, line: 334, baseType: !187, size: 32, offset: 736)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !581, file: !6, line: 339, baseType: !605, size: 2048, offset: 768)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 2048, elements: !610)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !6, line: 335, size: 64, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !606, file: !6, line: 337, baseType: !187, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !606, file: !6, line: 338, baseType: !187, size: 32, offset: 32)
!610 = !{!118, !156}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !581, file: !6, line: 342, baseType: !612, size: 49152, align: 128, offset: 2816)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 49152, align: 128, elements: !637)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !614, line: 36, baseType: !615, align: 128)
!614 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !614, line: 26, size: 512, elements: !616)
!616 = !{!617, !623, !624, !627, !628, !629}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !615, file: !614, line: 30, baseType: !618, size: 128, align: 128)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 128, elements: !151)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !620, line: 25, baseType: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !111, line: 39, baseType: !622)
!622 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !615, file: !614, line: 31, baseType: !618, size: 128, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !615, file: !614, line: 32, baseType: !625, size: 32, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !620, line: 26, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !111, line: 41, baseType: !187)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !615, file: !614, line: 33, baseType: !625, size: 32, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !615, file: !614, line: 34, baseType: !625, size: 32, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !615, file: !614, line: 35, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !614, line: 25, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !395, !187, !395, !187, !635, !187}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!637 = !{!638, !639}
!638 = !DISubrange(count: 32)
!639 = !DISubrange(count: 3)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !581, file: !6, line: 344, baseType: !187, size: 32, offset: 51968)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !581, file: !6, line: 345, baseType: !187, size: 32, offset: 52000)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !581, file: !6, line: 350, baseType: !643, size: 1024, offset: 52032)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 1024, elements: !155)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !581, file: !6, line: 346, size: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !644, file: !6, line: 348, baseType: !187, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !644, file: !6, line: 349, baseType: !187, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !581, file: !6, line: 352, baseType: !187, size: 32, offset: 53056)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !581, file: !6, line: 354, baseType: !187, size: 32, offset: 53088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !581, file: !6, line: 355, baseType: !187, size: 32, offset: 53120)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !581, file: !6, line: 356, baseType: !187, size: 32, offset: 53152)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !581, file: !6, line: 357, baseType: !187, size: 32, offset: 53184)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !581, file: !6, line: 360, baseType: !187, size: 32, offset: 53216)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !581, file: !6, line: 361, baseType: !187, size: 32, offset: 53248)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !581, file: !6, line: 362, baseType: !187, size: 32, offset: 53280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !204, file: !6, line: 463, baseType: !657, size: 4096, offset: 111232)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !658, line: 46, baseType: !659)
!658 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !658, line: 27, size: 4096, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !659, file: !658, line: 30, baseType: !187, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !659, file: !658, line: 31, baseType: !187, size: 32, offset: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !659, file: !658, line: 34, baseType: !187, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !659, file: !658, line: 35, baseType: !187, size: 32, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !659, file: !658, line: 37, baseType: !395, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !659, file: !658, line: 38, baseType: !395, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !659, file: !658, line: 39, baseType: !395, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !659, file: !658, line: 42, baseType: !187, size: 32, align: 128, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !659, file: !658, line: 45, baseType: !670, size: 3680, offset: 416)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 3680, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 460)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !204, file: !6, line: 494, baseType: !674, size: 2112, offset: 115328)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 465, size: 2112, elements: !675)
!675 = !{!676, !814, !816, !817, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !830, !831, !832, !833}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !674, file: !6, line: 468, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !680, line: 146, baseType: !681)
!680 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !680, line: 31, size: 125056, elements: !682)
!682 = !{!683, !684, !685, !686, !689, !690, !691, !692, !693, !694, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !713, !714, !715, !716, !717, !718, !720, !722, !723, !724, !725, !726, !729, !731, !732, !734, !739, !740, !744, !745, !749, !753, !756, !758, !759, !761, !762, !764, !765, !766, !769, !771, !772, !773, !775, !776, !777, !778, !779, !780, !781, !782, !784, !785, !786, !795, !799, !801, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !681, file: !680, line: 34, baseType: !187, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !681, file: !680, line: 35, baseType: !187, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !681, file: !680, line: 36, baseType: !187, size: 32, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !681, file: !680, line: 37, baseType: !687, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !620, line: 27, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !409)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !681, file: !680, line: 38, baseType: !687, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !681, file: !680, line: 39, baseType: !187, size: 32, offset: 256)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !681, file: !680, line: 40, baseType: !187, size: 32, offset: 288)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !681, file: !680, line: 41, baseType: !187, size: 32, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !681, file: !680, line: 42, baseType: !187, size: 32, offset: 352)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !681, file: !680, line: 43, baseType: !695, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !681, file: !680, line: 45, baseType: !187, size: 32, offset: 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !681, file: !680, line: 46, baseType: !187, size: 32, offset: 480)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !681, file: !680, line: 47, baseType: !187, size: 32, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !681, file: !680, line: 48, baseType: !187, size: 32, offset: 544)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !681, file: !680, line: 49, baseType: !187, size: 32, offset: 576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !681, file: !680, line: 50, baseType: !187, size: 32, offset: 608)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !681, file: !680, line: 51, baseType: !187, size: 32, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !681, file: !680, line: 52, baseType: !121, size: 8, offset: 672)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !681, file: !680, line: 53, baseType: !121, size: 8, offset: 680)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !681, file: !680, line: 54, baseType: !121, size: 8, offset: 688)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !681, file: !680, line: 55, baseType: !303, size: 32, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !681, file: !680, line: 56, baseType: !303, size: 32, offset: 736)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !681, file: !680, line: 57, baseType: !187, size: 32, offset: 768)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !681, file: !680, line: 60, baseType: !187, size: 32, offset: 800)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !681, file: !680, line: 61, baseType: !711, size: 96, offset: 832)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 96, elements: !712)
!712 = !{!639}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !681, file: !680, line: 62, baseType: !711, size: 96, offset: 928)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !681, file: !680, line: 63, baseType: !711, size: 96, offset: 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !681, file: !680, line: 64, baseType: !187, size: 32, offset: 1120)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !681, file: !680, line: 65, baseType: !187, size: 32, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !681, file: !680, line: 66, baseType: !187, size: 32, offset: 1184)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !681, file: !680, line: 67, baseType: !719, size: 192, offset: 1216)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !712)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !681, file: !680, line: 68, baseType: !721, size: 256, offset: 1408)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 256, elements: !124)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !681, file: !680, line: 69, baseType: !721, size: 256, offset: 1664)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !681, file: !680, line: 70, baseType: !572, size: 64, offset: 1920)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !681, file: !680, line: 74, baseType: !721, size: 256, offset: 1984)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !681, file: !680, line: 75, baseType: !721, size: 256, offset: 2240)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !681, file: !680, line: 77, baseType: !727, size: 24576, align: 128, offset: 2560)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 24576, align: 128, elements: !728)
!728 = !{!156, !639}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !681, file: !680, line: 78, baseType: !730, size: 1024, offset: 27136)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1024, elements: !155)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !681, file: !680, line: 79, baseType: !187, size: 32, offset: 28160)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !681, file: !680, line: 80, baseType: !733, size: 64, offset: 28224)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !681, file: !680, line: 83, baseType: !735, size: 64, offset: 28288)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !620, line: 24, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !111, line: 37, baseType: !738)
!738 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !681, file: !680, line: 84, baseType: !395, size: 64, offset: 28352)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !681, file: !680, line: 85, baseType: !741, size: 128, offset: 28416)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 128, elements: !117)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 32, elements: !117)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !681, file: !680, line: 86, baseType: !742, size: 64, offset: 28544)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !681, file: !680, line: 87, baseType: !746, size: 2176, offset: 28608)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 2176, elements: !747)
!747 = !{!118, !748}
!748 = !DISubrange(count: 17)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !681, file: !680, line: 92, baseType: !750, size: 20736, offset: 30784)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 20736, elements: !751)
!751 = !{!752, !752}
!752 = !DISubrange(count: 18)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !681, file: !680, line: 96, baseType: !754, size: 2176, offset: 51520)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 2176, elements: !747)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !681, file: !680, line: 97, baseType: !757, size: 128, offset: 53696)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !735, size: 128, elements: !117)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !681, file: !680, line: 98, baseType: !307, size: 64, offset: 53824)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !681, file: !680, line: 99, baseType: !760, size: 1024, offset: 53888)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 1024, elements: !610)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !681, file: !680, line: 100, baseType: !743, size: 32, offset: 54912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !681, file: !680, line: 105, baseType: !763, size: 10368, offset: 54944)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 10368, elements: !751)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !681, file: !680, line: 106, baseType: !763, size: 10368, offset: 65312)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !681, file: !680, line: 107, baseType: !187, size: 32, offset: 75680)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !681, file: !680, line: 108, baseType: !767, size: 576, offset: 75712)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 576, elements: !768)
!768 = !{!752}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !681, file: !680, line: 109, baseType: !770, size: 20736, offset: 76288)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 20736, elements: !751)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !681, file: !680, line: 110, baseType: !755, size: 64, offset: 97024)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !681, file: !680, line: 111, baseType: !755, size: 64, offset: 97088)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !681, file: !680, line: 112, baseType: !774, size: 64, offset: 97152)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !681, file: !680, line: 113, baseType: !774, size: 64, offset: 97216)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !681, file: !680, line: 114, baseType: !774, size: 64, offset: 97280)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !681, file: !680, line: 115, baseType: !187, size: 32, offset: 97344)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !681, file: !680, line: 116, baseType: !572, size: 64, offset: 97408)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !681, file: !680, line: 117, baseType: !572, size: 64, offset: 97472)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !681, file: !680, line: 118, baseType: !572, size: 64, offset: 97536)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !681, file: !680, line: 119, baseType: !187, size: 32, offset: 97600)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !681, file: !680, line: 120, baseType: !783, size: 576, offset: 97632)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 576, elements: !768)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !681, file: !680, line: 121, baseType: !108, size: 32, offset: 98208)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !681, file: !680, line: 122, baseType: !143, size: 64, offset: 98240)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !681, file: !680, line: 125, baseType: !787, size: 256, offset: 98304)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !203, line: 503, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 496, size: 256, elements: !789)
!789 = !{!790, !792, !793, !794}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !788, file: !203, line: 498, baseType: !791, size: 64)
!791 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !788, file: !203, line: 499, baseType: !791, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !788, file: !203, line: 500, baseType: !791, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !788, file: !203, line: 502, baseType: !791, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !681, file: !680, line: 128, baseType: !796, size: 2008, offset: 98560)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2008, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 251)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !681, file: !680, line: 129, baseType: !800, size: 8032, offset: 100576)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 8032, elements: !797)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !681, file: !680, line: 130, baseType: !802, size: 16064, offset: 108608)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 16064, elements: !797)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !681, file: !680, line: 131, baseType: !187, size: 32, offset: 124672)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !681, file: !680, line: 132, baseType: !187, size: 32, offset: 124704)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !681, file: !680, line: 135, baseType: !187, size: 32, offset: 124736)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !681, file: !680, line: 136, baseType: !187, size: 32, offset: 124768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !681, file: !680, line: 137, baseType: !187, size: 32, offset: 124800)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !681, file: !680, line: 138, baseType: !187, size: 32, offset: 124832)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !681, file: !680, line: 139, baseType: !187, size: 32, offset: 124864)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !681, file: !680, line: 142, baseType: !303, size: 32, offset: 124896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !681, file: !680, line: 143, baseType: !187, size: 32, offset: 124928)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !681, file: !680, line: 144, baseType: !187, size: 32, offset: 124960)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !681, file: !680, line: 145, baseType: !187, size: 32, offset: 124992)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !674, file: !6, line: 470, baseType: !815, size: 128, offset: 64)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 128, elements: !117)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !674, file: !6, line: 473, baseType: !677, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !674, file: !6, line: 476, baseType: !818, size: 1152, offset: 256)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 1152, elements: !768)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !674, file: !6, line: 478, baseType: !187, size: 32, offset: 1408)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !674, file: !6, line: 480, baseType: !187, size: 32, offset: 1440)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !674, file: !6, line: 482, baseType: !187, size: 32, offset: 1472)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !674, file: !6, line: 483, baseType: !187, size: 32, offset: 1504)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !674, file: !6, line: 484, baseType: !187, size: 32, offset: 1536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !674, file: !6, line: 485, baseType: !187, size: 32, offset: 1568)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !674, file: !6, line: 486, baseType: !187, size: 32, offset: 1600)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !674, file: !6, line: 487, baseType: !687, size: 64, offset: 1664)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !674, file: !6, line: 488, baseType: !687, size: 64, offset: 1728)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !674, file: !6, line: 489, baseType: !829, size: 128, offset: 1792)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 128, elements: !117)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !674, file: !6, line: 490, baseType: !687, size: 64, offset: 1920)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !674, file: !6, line: 491, baseType: !687, size: 64, offset: 1984)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !674, file: !6, line: 492, baseType: !187, size: 32, offset: 2048)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !674, file: !6, line: 493, baseType: !187, size: 32, offset: 2080)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !204, file: !6, line: 497, baseType: !678, size: 64, offset: 117440)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !204, file: !6, line: 500, baseType: !678, size: 64, offset: 117504)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !204, file: !6, line: 503, baseType: !187, size: 32, offset: 117568)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !204, file: !6, line: 504, baseType: !838, size: 1216, offset: 117632)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 1216, elements: !178)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !204, file: !6, line: 505, baseType: !187, size: 32, offset: 118848)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !204, file: !6, line: 506, baseType: !838, size: 1216, offset: 118912)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !204, file: !6, line: 507, baseType: !307, size: 64, offset: 120128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !204, file: !6, line: 510, baseType: !187, size: 32, offset: 120192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !204, file: !6, line: 511, baseType: !187, size: 32, offset: 120224)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !204, file: !6, line: 512, baseType: !687, size: 64, offset: 120256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !204, file: !6, line: 522, baseType: !846, size: 10624, offset: 120320)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 515, size: 10624, elements: !847)
!847 = !{!848, !850, !853, !856}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !846, file: !6, line: 517, baseType: !849, size: 256, align: 128)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 256, elements: !155)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !846, file: !6, line: 518, baseType: !851, size: 128, align: 128, offset: 256)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 128, elements: !852)
!852 = !{!118, !125}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !846, file: !6, line: 520, baseType: !854, size: 4096, align: 128, offset: 384)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 4096, elements: !855)
!855 = !{!125, !260}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !846, file: !6, line: 521, baseType: !857, size: 6144, align: 128, offset: 4480)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 6144, elements: !858)
!858 = !{!859, !156}
!859 = !DISubrange(count: 24)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !204, file: !6, line: 732, baseType: !861, size: 82688, offset: 130944)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 525, size: 82688, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !890, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !908, !911, !915, !916, !917, !922, !923, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !990, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1032, !1033, !1034, !1037, !1040, !1042, !1045, !1047, !1048}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !861, file: !6, line: 527, baseType: !187, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !861, file: !6, line: 530, baseType: !187, size: 32, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !861, file: !6, line: 531, baseType: !187, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !861, file: !6, line: 532, baseType: !187, size: 32, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !861, file: !6, line: 535, baseType: !187, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !861, file: !6, line: 536, baseType: !187, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !861, file: !6, line: 537, baseType: !187, size: 32, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !861, file: !6, line: 538, baseType: !187, size: 32, offset: 224)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !861, file: !6, line: 539, baseType: !187, size: 32, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !861, file: !6, line: 542, baseType: !187, size: 32, offset: 288)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !861, file: !6, line: 543, baseType: !187, size: 32, offset: 320)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !861, file: !6, line: 544, baseType: !187, size: 32, offset: 352)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !861, file: !6, line: 545, baseType: !187, size: 32, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !861, file: !6, line: 546, baseType: !187, size: 32, offset: 416)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !861, file: !6, line: 547, baseType: !187, size: 32, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !861, file: !6, line: 548, baseType: !187, size: 32, offset: 480)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !861, file: !6, line: 549, baseType: !187, size: 32, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !861, file: !6, line: 551, baseType: !187, size: 32, offset: 544)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !861, file: !6, line: 554, baseType: !307, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !861, file: !6, line: 555, baseType: !307, size: 64, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !861, file: !6, line: 558, baseType: !307, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !861, file: !6, line: 559, baseType: !307, size: 64, offset: 768)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !861, file: !6, line: 561, baseType: !307, size: 64, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !861, file: !6, line: 562, baseType: !307, size: 64, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !861, file: !6, line: 565, baseType: !7, size: 32, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !861, file: !6, line: 566, baseType: !889, size: 128, offset: 992)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !124)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !861, file: !6, line: 567, baseType: !891, size: 512, offset: 1120)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !155)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !861, file: !6, line: 568, baseType: !7, size: 32, offset: 1632)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !861, file: !6, line: 569, baseType: !7, size: 32, offset: 1664)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !861, file: !6, line: 570, baseType: !187, size: 32, offset: 1696)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !861, file: !6, line: 571, baseType: !187, size: 32, offset: 1728)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !861, file: !6, line: 572, baseType: !187, size: 32, offset: 1760)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !861, file: !6, line: 573, baseType: !187, size: 32, offset: 1792)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !861, file: !6, line: 574, baseType: !187, size: 32, offset: 1824)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !861, file: !6, line: 575, baseType: !187, size: 32, offset: 1856)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !861, file: !6, line: 576, baseType: !187, size: 32, offset: 1888)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !861, file: !6, line: 577, baseType: !187, size: 32, offset: 1920)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !861, file: !6, line: 578, baseType: !187, size: 32, offset: 1952)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !861, file: !6, line: 585, baseType: !735, size: 64, offset: 1984)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !861, file: !6, line: 586, baseType: !395, size: 64, offset: 2048)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !861, file: !6, line: 587, baseType: !735, size: 64, offset: 2112)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !861, file: !6, line: 588, baseType: !907, size: 64, offset: 2176)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !861, file: !6, line: 589, baseType: !909, size: 64, offset: 2240)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 64, elements: !151)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !861, file: !6, line: 591, baseType: !912, size: 64, offset: 2304)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !914)
!914 = !{!859}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !861, file: !6, line: 592, baseType: !735, size: 64, offset: 2368)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !861, file: !6, line: 593, baseType: !741, size: 128, offset: 2432)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !861, file: !6, line: 594, baseType: !918, size: 128, offset: 2560)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 128, elements: !117)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !921)
!921 = !{!152, !118}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !861, file: !6, line: 595, baseType: !757, size: 128, offset: 2688)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !861, file: !6, line: 596, baseType: !924, size: 4096, offset: 2816)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 4096, elements: !925)
!925 = !{!118, !638}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !861, file: !6, line: 597, baseType: !735, size: 64, offset: 6912)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !861, file: !6, line: 598, baseType: !735, size: 64, offset: 6976)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !861, file: !6, line: 599, baseType: !572, size: 64, offset: 7040)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !861, file: !6, line: 603, baseType: !730, size: 1024, offset: 7104)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !861, file: !6, line: 606, baseType: !187, size: 32, offset: 8128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !861, file: !6, line: 607, baseType: !187, size: 32, offset: 8160)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !861, file: !6, line: 608, baseType: !120, size: 32, align: 32, offset: 8192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !861, file: !6, line: 609, baseType: !187, size: 32, offset: 8224)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !861, file: !6, line: 611, baseType: !187, size: 32, offset: 8256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !861, file: !6, line: 612, baseType: !187, size: 32, offset: 8288)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !861, file: !6, line: 614, baseType: !187, size: 32, offset: 8320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !861, file: !6, line: 615, baseType: !187, size: 32, offset: 8352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !861, file: !6, line: 621, baseType: !187, size: 32, offset: 8384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !861, file: !6, line: 624, baseType: !187, size: 32, offset: 8416)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !861, file: !6, line: 626, baseType: !187, size: 32, offset: 8448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !861, file: !6, line: 627, baseType: !187, size: 32, offset: 8480)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !861, file: !6, line: 671, baseType: !943, size: 60672, offset: 8576)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !6, line: 629, size: 60672, elements: !944)
!944 = !{!945, !949, !953, !955, !956, !959, !963, !964, !965, !966, !967, !968, !971, !975, !978, !979, !980, !981, !982, !985, !987, !989}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !943, file: !6, line: 634, baseType: !946, size: 3072, align: 128)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 3072, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 384)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !943, file: !6, line: 635, baseType: !950, size: 6912, align: 128, offset: 3072)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 6912, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 864)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !943, file: !6, line: 638, baseType: !954, size: 2048, align: 128, offset: 9984)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 2048, elements: !448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !943, file: !6, line: 639, baseType: !954, size: 2048, align: 128, offset: 12032)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !943, file: !6, line: 640, baseType: !957, size: 3072, align: 128, offset: 14080)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 3072, elements: !958)
!958 = !{!639, !260}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !943, file: !6, line: 641, baseType: !960, size: 3840, align: 128, offset: 17152)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 3840, elements: !961)
!961 = !{!962, !156}
!962 = !DISubrange(count: 15)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !943, file: !6, line: 642, baseType: !148, size: 128, offset: 20992)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !943, file: !6, line: 643, baseType: !148, size: 128, offset: 21120)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !943, file: !6, line: 644, baseType: !187, size: 32, offset: 21248)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !943, file: !6, line: 645, baseType: !187, size: 32, offset: 21280)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !943, file: !6, line: 648, baseType: !854, size: 4096, align: 128, offset: 21376)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !943, file: !6, line: 649, baseType: !969, size: 4096, align: 128, offset: 25472)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 4096, elements: !970)
!970 = !{!156, !156}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !943, file: !6, line: 652, baseType: !972, size: 576, align: 128, offset: 29568)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 576, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 9)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !943, file: !6, line: 653, baseType: !976, size: 1024, align: 128, offset: 30208)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1024, elements: !977)
!977 = !{!638}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !943, file: !6, line: 656, baseType: !719, size: 192, offset: 31232)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !943, file: !6, line: 658, baseType: !719, size: 192, offset: 31424)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !943, file: !6, line: 661, baseType: !719, size: 192, offset: 31616)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !943, file: !6, line: 664, baseType: !307, size: 64, offset: 31808)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !943, file: !6, line: 665, baseType: !983, size: 24576, offset: 31872)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 24576, elements: !984)
!984 = !{!118, !638, !545}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !943, file: !6, line: 666, baseType: !986, size: 2048, offset: 56448)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 2048, elements: !977)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !943, file: !6, line: 667, baseType: !988, size: 2048, offset: 58496)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !572, size: 2048, elements: !610)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !943, file: !6, line: 670, baseType: !711, size: 96, offset: 60544)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !861, file: !6, line: 704, baseType: !991, size: 6144, offset: 69248)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !6, line: 674, size: 6144, elements: !992)
!992 = !{!993, !997, !1001, !1004, !1007, !1009, !1010, !1013, !1015, !1016, !1017, !1018, !1019, !1020}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !991, file: !6, line: 677, baseType: !994, size: 320, align: 64)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 320, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 40)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !991, file: !6, line: 680, baseType: !998, size: 384, align: 128, offset: 384)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 384, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 48)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !991, file: !6, line: 683, baseType: !1002, size: 640, align: 32, offset: 768)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 640, elements: !1003)
!1003 = !{!118, !996}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !991, file: !6, line: 686, baseType: !1005, size: 2560, align: 128, offset: 1408)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 2560, elements: !1006)
!1006 = !{!118, !996, !118}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !991, file: !6, line: 687, baseType: !1008, size: 1280, align: 64, offset: 3968)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 1280, elements: !1006)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !991, file: !6, line: 690, baseType: !994, size: 320, align: 32, offset: 5248)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !991, file: !6, line: 692, baseType: !1011, size: 256, align: 32, offset: 5568)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 256, elements: !1012)
!1012 = !{!118, !125, !118}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !991, file: !6, line: 693, baseType: !1014, size: 64, align: 32, offset: 5824)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 64, elements: !852)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !991, file: !6, line: 694, baseType: !187, size: 32, offset: 5888)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !991, file: !6, line: 695, baseType: !743, size: 32, align: 32, offset: 5920)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !991, file: !6, line: 698, baseType: !187, size: 32, offset: 5952)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !991, file: !6, line: 699, baseType: !187, size: 32, offset: 5984)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !991, file: !6, line: 702, baseType: !187, size: 32, offset: 6016)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !991, file: !6, line: 703, baseType: !187, size: 32, offset: 6048)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !861, file: !6, line: 707, baseType: !187, size: 32, offset: 75392)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !861, file: !6, line: 708, baseType: !187, size: 32, offset: 75424)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !861, file: !6, line: 709, baseType: !187, size: 32, offset: 75456)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !861, file: !6, line: 710, baseType: !187, size: 32, offset: 75488)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !861, file: !6, line: 711, baseType: !187, size: 32, offset: 75520)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !861, file: !6, line: 712, baseType: !187, size: 32, offset: 75552)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !861, file: !6, line: 713, baseType: !187, size: 32, offset: 75584)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !861, file: !6, line: 714, baseType: !187, size: 32, offset: 75616)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !861, file: !6, line: 717, baseType: !1030, size: 128, offset: 75648)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !1031)
!1031 = !{!118, !118}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !861, file: !6, line: 718, baseType: !187, size: 32, offset: 75776)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !861, file: !6, line: 719, baseType: !187, size: 32, offset: 75808)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !861, file: !6, line: 722, baseType: !1035, size: 4096, offset: 75840)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 4096, elements: !1036)
!1036 = !{!118, !638, !125}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !861, file: !6, line: 723, baseType: !1038, size: 64, offset: 79936)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 64, elements: !124)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !861, file: !6, line: 724, baseType: !1041, size: 2048, offset: 80000)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 2048, elements: !1036)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !861, file: !6, line: 725, baseType: !1043, size: 64, offset: 82048)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 32, elements: !124)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !861, file: !6, line: 728, baseType: !1046, size: 144, offset: 82112)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 144, elements: !768)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !861, file: !6, line: 729, baseType: !187, size: 32, offset: 82272)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !861, file: !6, line: 730, baseType: !1049, size: 272, offset: 82304)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 272, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 34)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !204, file: !6, line: 735, baseType: !1053, size: 64, offset: 213632)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !6, line: 379, baseType: !1055)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !6, line: 379, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !204, file: !6, line: 793, baseType: !1057, size: 29504, offset: 213696)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !204, file: !6, line: 738, size: 29504, elements: !1058)
!1058 = !{!1059, !1086, !1089, !1091, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1103, !1105, !1106, !1109, !1111, !1113, !1114, !1115}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1057, file: !6, line: 764, baseType: !1060, size: 5632)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !6, line: 741, size: 5632, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1067, !1068, !1069, !1070, !1071, !1073, !1076, !1078, !1082, !1083, !1085}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1060, file: !6, line: 744, baseType: !187, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1060, file: !6, line: 746, baseType: !187, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1060, file: !6, line: 748, baseType: !187, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1060, file: !6, line: 750, baseType: !1066, size: 608, offset: 96)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 608, elements: !178)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1060, file: !6, line: 751, baseType: !187, size: 32, offset: 704)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1060, file: !6, line: 752, baseType: !187, size: 32, offset: 736)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1060, file: !6, line: 753, baseType: !187, size: 32, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1060, file: !6, line: 754, baseType: !307, size: 64, offset: 800)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1060, file: !6, line: 755, baseType: !1072, size: 2048, offset: 864)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 2048, elements: !925)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1060, file: !6, line: 756, baseType: !1074, size: 544, offset: 2912)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 544, elements: !1075)
!1075 = !{!748}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1060, file: !6, line: 757, baseType: !1077, size: 192, offset: 3456)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 192, elements: !544)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1060, file: !6, line: 758, baseType: !1079, size: 1664, offset: 3648)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 1664, elements: !1080)
!1080 = !{!125, !1081}
!1081 = !DISubrange(count: 13)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1060, file: !6, line: 760, baseType: !307, size: 64, offset: 5312)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1060, file: !6, line: 762, baseType: !1084, size: 192, offset: 5376)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 192, elements: !712)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1060, file: !6, line: 763, baseType: !791, size: 64, offset: 5568)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1057, file: !6, line: 769, baseType: !1087, size: 160, offset: 5632)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 160, elements: !1088)
!1088 = !{!174}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1057, file: !6, line: 770, baseType: !1090, size: 320, offset: 5824)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 320, elements: !1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1057, file: !6, line: 771, baseType: !1092, size: 320, offset: 6144)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 320, elements: !1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1057, file: !6, line: 772, baseType: !1074, size: 544, offset: 6464)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1057, file: !6, line: 774, baseType: !1090, size: 320, offset: 7040)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1057, file: !6, line: 775, baseType: !1092, size: 320, offset: 7360)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1057, file: !6, line: 776, baseType: !1092, size: 320, offset: 7680)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1057, file: !6, line: 777, baseType: !1092, size: 320, offset: 8000)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1057, file: !6, line: 778, baseType: !1092, size: 320, offset: 8320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1057, file: !6, line: 779, baseType: !1092, size: 320, offset: 8640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1057, file: !6, line: 781, baseType: !1101, size: 6080, offset: 8960)
!1101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 6080, elements: !1102)
!1102 = !{!174, !179}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1057, file: !6, line: 782, baseType: !1104, size: 2176, offset: 15040)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 2176, elements: !747)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1057, file: !6, line: 783, baseType: !829, size: 128, offset: 17216)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1057, file: !6, line: 784, baseType: !1107, size: 8192, offset: 17344)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 8192, elements: !1108)
!1108 = !{!118, !118, !638}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1057, file: !6, line: 785, baseType: !1110, size: 384, offset: 25536)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 384, elements: !544)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1057, file: !6, line: 786, baseType: !1112, size: 3328, offset: 25920)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 3328, elements: !1080)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1057, file: !6, line: 788, baseType: !307, size: 64, offset: 29248)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1057, file: !6, line: 789, baseType: !307, size: 64, offset: 29312)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1057, file: !6, line: 791, baseType: !711, size: 96, offset: 29376)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !204, file: !6, line: 795, baseType: !1117, size: 4096, align: 128, offset: 243200)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 4096, elements: !1118)
!1118 = !{!118, !260}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !204, file: !6, line: 796, baseType: !1120, size: 2048, align: 128, offset: 247296)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 2048, elements: !1118)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !204, file: !6, line: 797, baseType: !163, size: 64, offset: 249344)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !204, file: !6, line: 800, baseType: !266, size: 64, offset: 249408)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !204, file: !6, line: 801, baseType: !1124, size: 384, offset: 249472)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 384, elements: !1125)
!1125 = !{!118, !639}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !204, file: !6, line: 802, baseType: !1127, size: 128, offset: 249856)
!1127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 128, elements: !117)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !1130)
!1130 = !{!118, !125, !125}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !204, file: !6, line: 805, baseType: !1132, size: 448, offset: 249984)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 448, elements: !183)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !66, line: 27, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !395}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !204, file: !6, line: 806, baseType: !1132, size: 448, offset: 250432)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !204, file: !6, line: 807, baseType: !1139, size: 768, offset: 250880)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 768, elements: !1144)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !66, line: 28, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !395, !395}
!1144 = !{!1145}
!1145 = !DISubrange(count: 12)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !204, file: !6, line: 808, baseType: !1147, size: 768, offset: 251648)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 768, elements: !1144)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !204, file: !6, line: 809, baseType: !1149, size: 64, offset: 252416)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !66, line: 29, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !395, !395, !187, !187}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !204, file: !6, line: 811, baseType: !1154, size: 8448, offset: 252480)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !90, line: 110, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 63, size: 8448, elements: !1156)
!1156 = !{!1157, !1163, !1164, !1165, !1166, !1168, !1169, !1170, !1171, !1177, !1183, !1184, !1188, !1193, !1194, !1200, !1204, !1205, !1206, !1207, !1208, !1213, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1155, file: !90, line: 65, baseType: !1158, size: 448)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 448, elements: !183)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !90, line: 26, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!187, !395, !187, !395, !187}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1155, file: !90, line: 66, baseType: !1158, size: 448, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1155, file: !90, line: 67, baseType: !1158, size: 448, offset: 896)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1155, file: !90, line: 68, baseType: !1158, size: 448, offset: 1344)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1155, file: !90, line: 69, baseType: !1167, size: 256, offset: 1792)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 256, elements: !124)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1155, file: !90, line: 70, baseType: !1158, size: 448, offset: 2048)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1155, file: !90, line: 71, baseType: !1158, size: 448, offset: 2496)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1155, file: !90, line: 72, baseType: !1158, size: 448, offset: 2944)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1155, file: !90, line: 73, baseType: !1172, size: 448, offset: 3392)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 448, elements: !183)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !90, line: 27, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{null, !395, !395, !395, !395, !187, !755}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1155, file: !90, line: 74, baseType: !1178, size: 448, offset: 3840)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 448, elements: !183)
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !90, line: 28, baseType: !1180)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !395, !395, !395, !395, !395, !187, !755}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1155, file: !90, line: 75, baseType: !1158, size: 448, offset: 4288)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1155, file: !90, line: 76, baseType: !1185, size: 64, offset: 4736)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!187, !395, !187, !395, !187, !755}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1155, file: !90, line: 78, baseType: !1189, size: 256, offset: 4800)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 256, elements: !124)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!143, !395, !187}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1155, file: !90, line: 79, baseType: !1189, size: 256, offset: 5056)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1155, file: !90, line: 81, baseType: !1195, size: 64, offset: 5312)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !543, !187, !543, !187, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 128, elements: !124)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1155, file: !90, line: 83, baseType: !1201, size: 64, offset: 5376)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!303, !1198, !1198, !187}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1155, file: !90, line: 86, baseType: !1172, size: 448, offset: 5440)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1155, file: !90, line: 87, baseType: !1178, size: 448, offset: 5888)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1155, file: !90, line: 88, baseType: !1172, size: 448, offset: 6336)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1155, file: !90, line: 89, baseType: !1178, size: 448, offset: 6784)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1155, file: !90, line: 93, baseType: !1209, size: 448, offset: 7232)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1210, size: 448, elements: !183)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!187, !755, !572, !187, !572, !907, !187, !187}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1155, file: !90, line: 98, baseType: !1214, size: 64, offset: 7680)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !395, !395, !755}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1155, file: !90, line: 99, baseType: !1214, size: 64, offset: 7744)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1155, file: !90, line: 100, baseType: !1214, size: 64, offset: 7808)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1155, file: !90, line: 101, baseType: !1214, size: 64, offset: 7872)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1155, file: !90, line: 102, baseType: !1214, size: 64, offset: 7936)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1155, file: !90, line: 103, baseType: !1214, size: 64, offset: 8000)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1155, file: !90, line: 104, baseType: !1214, size: 64, offset: 8064)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1155, file: !90, line: 105, baseType: !1214, size: 64, offset: 8128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1155, file: !90, line: 106, baseType: !1214, size: 64, offset: 8192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1155, file: !90, line: 107, baseType: !1214, size: 64, offset: 8256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1155, file: !90, line: 108, baseType: !1214, size: 64, offset: 8320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1155, file: !90, line: 109, baseType: !1214, size: 64, offset: 8384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !204, file: !6, line: 812, baseType: !1229, size: 2368, offset: 260928)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !614, line: 111, baseType: !1230)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !614, line: 58, size: 2368, elements: !1231)
!1231 = !{!1232, !1239, !1243, !1247, !1254, !1259, !1260, !1264, !1268, !1269, !1273, !1281, !1285, !1289, !1290, !1294, !1298, !1302, !1303, !1304, !1305, !1310}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1230, file: !614, line: 60, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null, !395, !187, !1236, !187, !187, !187, !187, !187, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1230, file: !614, line: 65, baseType: !1240, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!395, !395, !755, !1236, !187, !187, !187, !187, !187, !1237}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1230, file: !614, line: 71, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !395, !187, !395, !187, !187, !187, !187, !187}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1230, file: !614, line: 75, baseType: !1248, size: 640, offset: 192)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, size: 640, elements: !1252)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !395, !187, !395, !187, !395, !187, !187}
!1252 = !{!1253}
!1253 = !DISubrange(count: 10)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1230, file: !614, line: 78, baseType: !1255, size: 448, offset: 832)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1256, size: 448, elements: !183)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !395, !187, !395, !187, !187}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1230, file: !614, line: 79, baseType: !1256, size: 64, offset: 1280)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1230, file: !614, line: 81, baseType: !1261, size: 64, offset: 1344)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !395, !187, !395, !187, !187, !187}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1230, file: !614, line: 84, baseType: !1265, size: 64, offset: 1408)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !395, !395, !395, !395, !187, !187, !187, !907}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1230, file: !614, line: 88, baseType: !1256, size: 64, offset: 1472)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1230, file: !614, line: 91, baseType: !1270, size: 64, offset: 1536)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !395, !187, !187}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1230, file: !614, line: 93, baseType: !1274, size: 64, offset: 1600)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!266, !266, !1277, !1279}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1280, line: 46, baseType: !145)
!1280 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1230, file: !614, line: 94, baseType: !1282, size: 64, offset: 1664)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !266, !187}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1230, file: !614, line: 97, baseType: !1286, size: 64, offset: 1728)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !572, !395, !187}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1230, file: !614, line: 98, baseType: !1286, size: 64, offset: 1792)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1230, file: !614, line: 99, baseType: !1291, size: 64, offset: 1856)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !572, !572, !187}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1230, file: !614, line: 100, baseType: !1295, size: 64, offset: 1920)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !572, !187}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1230, file: !614, line: 102, baseType: !1299, size: 64, offset: 1984)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !395, !395, !395, !395, !395, !187, !187, !187, !187}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1230, file: !614, line: 104, baseType: !630, size: 64, offset: 2048)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1230, file: !614, line: 105, baseType: !630, size: 64, offset: 2112)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1230, file: !614, line: 106, baseType: !630, size: 64, offset: 2176)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1230, file: !614, line: 107, baseType: !1306, size: 64, offset: 2240)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{null, !201, !1309}
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1230, file: !614, line: 109, baseType: !1311, size: 64, offset: 2304)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !755, !572, !572, !572, !572, !187}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !204, file: !6, line: 813, baseType: !1315, size: 960, offset: 263296)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1316, line: 115, baseType: !1317)
!1316 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 89, size: 960, elements: !1318)
!1318 = !{!1319, !1323, !1327, !1332, !1333, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1349, !1353, !1357}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1317, file: !1316, line: 94, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !907, !395, !395}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1317, file: !1316, line: 95, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !395, !907}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1317, file: !1316, line: 97, baseType: !1328, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1331, !395, !395}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1317, file: !1316, line: 98, baseType: !1320, size: 64, offset: 192)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1317, file: !1316, line: 99, baseType: !1334, size: 64, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{null, !395, !1331}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1317, file: !1316, line: 100, baseType: !1324, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1317, file: !1316, line: 102, baseType: !1328, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1317, file: !1316, line: 103, baseType: !1334, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1317, file: !1316, line: 104, baseType: !1324, size: 64, offset: 512)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1317, file: !1316, line: 106, baseType: !1320, size: 64, offset: 576)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1317, file: !1316, line: 107, baseType: !1324, size: 64, offset: 640)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1317, file: !1316, line: 109, baseType: !1344, size: 64, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !1347, !395, !395}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 1024, elements: !259)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1317, file: !1316, line: 110, baseType: !1350, size: 64, offset: 768)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !395, !1347}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1317, file: !1316, line: 112, baseType: !1354, size: 64, offset: 832)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{null, !907}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1317, file: !1316, line: 113, baseType: !1354, size: 64, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !204, file: !6, line: 814, baseType: !1359, size: 384, offset: 264256)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1316, line: 126, baseType: !1360)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1316, line: 117, size: 384, elements: !1361)
!1361 = !{!1362, !1366, !1367, !1371, !1372, !1376}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1360, file: !1316, line: 119, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{null, !907, !907}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1360, file: !1316, line: 120, baseType: !1363, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1360, file: !1316, line: 121, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!187, !907, !543, !395}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1360, file: !1316, line: 122, baseType: !1368, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1360, file: !1316, line: 123, baseType: !1373, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!187, !907, !543, !395, !907}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1360, file: !1316, line: 124, baseType: !1377, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !907, !907, !395}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !204, file: !6, line: 815, baseType: !1381, size: 1408, offset: 264640)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1382, line: 44, baseType: !1383)
!1382 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1382, line: 26, size: 1408, elements: !1384)
!1384 = !{!1385, !1389, !1390, !1394, !1395, !1399, !1403, !1404, !1409, !1413, !1414, !1415, !1417}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1383, file: !1382, line: 28, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!187, !907, !572, !572}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1383, file: !1382, line: 29, baseType: !1386, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1383, file: !1382, line: 30, baseType: !1391, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!187, !907, !187, !187}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1383, file: !1382, line: 31, baseType: !1391, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1383, file: !1382, line: 33, baseType: !1396, size: 64, offset: 256)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !907, !556, !187}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1383, file: !1382, line: 34, baseType: !1400, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !907, !552, !187}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1383, file: !1382, line: 35, baseType: !1400, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1383, file: !1382, line: 37, baseType: !1405, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !907, !1408, !572, !187}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1383, file: !1382, line: 39, baseType: !1410, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!187, !907}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1383, file: !1382, line: 40, baseType: !1410, size: 64, offset: 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1383, file: !1382, line: 41, baseType: !1410, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1383, file: !1382, line: 42, baseType: !1416, size: 384, offset: 704)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 384, elements: !544)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1383, file: !1382, line: 43, baseType: !1418, size: 320, offset: 1088)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1419, size: 320, elements: !1088)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!187, !907, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !400, line: 63, baseType: !1424)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 58, size: 416, elements: !1425)
!1425 = !{!1426, !1427, !1428}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1424, file: !400, line: 60, baseType: !187, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1424, file: !400, line: 61, baseType: !849, size: 256, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1424, file: !400, line: 62, baseType: !154, size: 128, offset: 288)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !204, file: !6, line: 816, baseType: !1430, size: 576, offset: 266048)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !680, line: 170, baseType: !1431)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 161, size: 576, elements: !1432)
!1432 = !{!1433, !1439, !1440, !1446, !1447}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1431, file: !680, line: 163, baseType: !1434, size: 128)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1435, size: 128, elements: !117)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !680, line: 159, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !395, !187, !187, !187, !735}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1431, file: !680, line: 164, baseType: !1434, size: 128, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1431, file: !680, line: 165, baseType: !1441, size: 128, offset: 256)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 128, elements: !117)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !680, line: 160, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !395, !187, !187, !187}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1431, file: !680, line: 166, baseType: !1441, size: 128, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1431, file: !680, line: 167, baseType: !1448, size: 64, offset: 512)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{null, !395, !1451, !1452, !1455, !187, !187}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 1280, elements: !1454)
!1454 = !{!996, !118}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !1457)
!1457 = !{!125, !125}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !204, file: !6, line: 821, baseType: !1459, size: 64, offset: 266624)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !6, line: 377, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !6, line: 366, size: 960, elements: !1462)
!1462 = !{!1463, !1465, !1466, !1467, !1468, !1469, !1470, !1480, !1481}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1461, file: !6, line: 368, baseType: !1464, size: 8)
!1464 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1461, file: !6, line: 369, baseType: !121, size: 8, offset: 8)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1461, file: !6, line: 370, baseType: !121, size: 8, offset: 16)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1461, file: !6, line: 371, baseType: !187, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1461, file: !6, line: 372, baseType: !187, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1461, file: !6, line: 373, baseType: !678, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1461, file: !6, line: 374, baseType: !1471, size: 256, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !680, line: 157, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 149, size: 256, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1472, file: !680, line: 151, baseType: !677, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1472, file: !680, line: 152, baseType: !187, size: 32, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1472, file: !680, line: 153, baseType: !187, size: 32, offset: 96)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1472, file: !680, line: 154, baseType: !187, size: 32, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1472, file: !680, line: 155, baseType: !187, size: 32, offset: 160)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1472, file: !680, line: 156, baseType: !187, size: 32, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1461, file: !6, line: 375, baseType: !1471, size: 256, offset: 448)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1461, file: !6, line: 376, baseType: !1471, size: 256, offset: 704)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DILocalVariable(name: "h", arg: 1, scope: !197, file: !198, line: 125, type: !201)
!1484 = !DILocalVariable(name: "i8", arg: 2, scope: !197, file: !198, line: 125, type: !187)
!1485 = !DILocalVariable(name: "x", scope: !197, file: !198, line: 127, type: !187)
!1486 = !DILocalVariable(name: "y", scope: !197, file: !198, line: 128, type: !187)
!1487 = !DILocalVariable(name: "scan8", scope: !1488, file: !198, line: 155, type: !187)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !198, line: 154, column: 5)
!1489 = distinct !DILexicalBlock(scope: !197, file: !198, line: 130, column: 9)
!1490 = !DILocation(line: 0, scope: !197)
!1491 = !DILocation(line: 127, column: 14, scope: !197)
!1492 = !DILocation(line: 128, column: 14, scope: !197)
!1493 = !DILocation(line: 130, column: 15, scope: !1489)
!1494 = !{!1495, !1497, i64 7248}
!1495 = !{!"x264_t", !1496, i64 0, !1498, i64 704, !1497, i64 1736, !1497, i64 1740, !1497, i64 1744, !1497, i64 1748, !1497, i64 1752, !1505, i64 1760, !1501, i64 1832, !1497, i64 1840, !1497, i64 1844, !1497, i64 1848, !1497, i64 1852, !1497, i64 1856, !1497, i64 1860, !1497, i64 1864, !1497, i64 1868, !1497, i64 1872, !1497, i64 1876, !1497, i64 1880, !1497, i64 1884, !1497, i64 1888, !1497, i64 1892, !1498, i64 1896, !1501, i64 3200, !1498, i64 3208, !1501, i64 3328, !1497, i64 3336, !1497, i64 3340, !1498, i64 3344, !1498, i64 3376, !1498, i64 3392, !1498, i64 3424, !1498, i64 3440, !1498, i64 3472, !1498, i64 3488, !1498, i64 3520, !1498, i64 3536, !1498, i64 4272, !1501, i64 7216, !1508, i64 7232, !1509, i64 13904, !1510, i64 14416, !1501, i64 14680, !1501, i64 14688, !1497, i64 14696, !1498, i64 14704, !1497, i64 14856, !1498, i64 14864, !1498, i64 15016, !1497, i64 15024, !1497, i64 15028, !1507, i64 15032, !1511, i64 15040, !1512, i64 16368, !1501, i64 26704, !1515, i64 26712, !1498, i64 30400, !1498, i64 30912, !1498, i64 31168, !1501, i64 31176, !1498, i64 31184, !1498, i64 31232, !1498, i64 31248, !1498, i64 31304, !1498, i64 31360, !1498, i64 31456, !1501, i64 31552, !1518, i64 31560, !1519, i64 32616, !1520, i64 32912, !1521, i64 33032, !1522, i64 33080, !1523, i64 33256, !1501, i64 33328}
!1496 = !{!"x264_param_t", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1500, i64 44, !1497, i64 80, !1497, i64 84, !1497, i64 88, !1497, i64 92, !1497, i64 96, !1497, i64 100, !1497, i64 104, !1497, i64 108, !1497, i64 112, !1497, i64 116, !1497, i64 120, !1497, i64 124, !1497, i64 128, !1497, i64 132, !1497, i64 136, !1497, i64 140, !1497, i64 144, !1501, i64 152, !1498, i64 160, !1498, i64 176, !1498, i64 192, !1498, i64 208, !1498, i64 224, !1498, i64 288, !1501, i64 352, !1501, i64 360, !1497, i64 368, !1497, i64 372, !1501, i64 376, !1502, i64 384, !1504, i64 488, !1497, i64 632, !1497, i64 636, !1497, i64 640, !1497, i64 644, !1497, i64 648, !1497, i64 652, !1497, i64 656, !1497, i64 660, !1497, i64 664, !1497, i64 668, !1497, i64 672, !1497, i64 676, !1497, i64 680, !1497, i64 684, !1497, i64 688, !1497, i64 692, !1501, i64 696}
!1497 = !{!"int", !1498, i64 0}
!1498 = !{!"omnipotent char", !1499, i64 0}
!1499 = !{!"Simple C/C++ TBAA"}
!1500 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32}
!1501 = !{!"any pointer", !1498, i64 0}
!1502 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1497, i64 52, !1497, i64 56, !1497, i64 60, !1497, i64 64, !1497, i64 68, !1503, i64 72, !1503, i64 76, !1497, i64 80, !1498, i64 84, !1497, i64 92, !1497, i64 96}
!1503 = !{!"float", !1498, i64 0}
!1504 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1503, i64 24, !1503, i64 28, !1503, i64 32, !1497, i64 36, !1497, i64 40, !1503, i64 44, !1503, i64 48, !1503, i64 52, !1497, i64 56, !1503, i64 60, !1497, i64 64, !1497, i64 68, !1497, i64 72, !1501, i64 80, !1497, i64 88, !1501, i64 96, !1503, i64 104, !1503, i64 108, !1503, i64 112, !1501, i64 120, !1497, i64 128, !1501, i64 136}
!1505 = !{!"", !1497, i64 0, !1497, i64 4, !1501, i64 8, !1497, i64 16, !1501, i64 24, !1506, i64 32}
!1506 = !{!"bs_s", !1501, i64 0, !1501, i64 8, !1501, i64 16, !1507, i64 24, !1497, i64 32, !1497, i64 36}
!1507 = !{!"long", !1498, i64 0}
!1508 = !{!"", !1501, i64 0, !1501, i64 8, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1497, i64 52, !1497, i64 56, !1498, i64 60, !1497, i64 68, !1497, i64 72, !1497, i64 76, !1497, i64 80, !1497, i64 84, !1497, i64 88, !1497, i64 92, !1498, i64 96, !1498, i64 352, !1497, i64 6496, !1497, i64 6500, !1498, i64 6504, !1497, i64 6632, !1497, i64 6636, !1497, i64 6640, !1497, i64 6644, !1497, i64 6648, !1497, i64 6652, !1497, i64 6656, !1497, i64 6660}
!1509 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1501, i64 16, !1501, i64 24, !1501, i64 32, !1497, i64 48, !1498, i64 52}
!1510 = !{!"", !1501, i64 0, !1498, i64 8, !1501, i64 24, !1498, i64 32, !1497, i64 176, !1497, i64 180, !1497, i64 184, !1497, i64 188, !1497, i64 192, !1497, i64 196, !1497, i64 200, !1507, i64 208, !1507, i64 216, !1498, i64 224, !1507, i64 240, !1507, i64 248, !1497, i64 256, !1497, i64 260}
!1511 = !{!"", !1498, i64 0, !1498, i64 32, !1498, i64 48, !1498, i64 560}
!1512 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1497, i64 52, !1497, i64 56, !1497, i64 60, !1497, i64 64, !1497, i64 68, !1498, i64 72, !1498, i64 80, !1498, i64 88, !1498, i64 96, !1498, i64 104, !1498, i64 112, !1497, i64 120, !1498, i64 124, !1498, i64 140, !1497, i64 204, !1497, i64 208, !1497, i64 212, !1497, i64 216, !1497, i64 220, !1497, i64 224, !1497, i64 228, !1497, i64 232, !1497, i64 236, !1497, i64 240, !1497, i64 244, !1501, i64 248, !1501, i64 256, !1501, i64 264, !1501, i64 272, !1501, i64 280, !1501, i64 288, !1501, i64 296, !1498, i64 304, !1498, i64 320, !1498, i64 336, !1498, i64 352, !1501, i64 864, !1501, i64 872, !1501, i64 880, !1498, i64 888, !1497, i64 1016, !1497, i64 1020, !1498, i64 1024, !1497, i64 1028, !1497, i64 1032, !1497, i64 1036, !1497, i64 1040, !1497, i64 1044, !1497, i64 1048, !1497, i64 1052, !1497, i64 1056, !1497, i64 1060, !1513, i64 1072, !1514, i64 8656, !1497, i64 9424, !1497, i64 9428, !1497, i64 9432, !1497, i64 9436, !1497, i64 9440, !1497, i64 9444, !1497, i64 9448, !1497, i64 9452, !1498, i64 9456, !1497, i64 9472, !1497, i64 9476, !1498, i64 9480, !1501, i64 9992, !1498, i64 10000, !1501, i64 10256, !1498, i64 10264, !1497, i64 10284, !1498, i64 10288}
!1513 = !{!"", !1498, i64 0, !1498, i64 384, !1498, i64 1248, !1498, i64 1504, !1498, i64 1760, !1498, i64 2144, !1498, i64 2624, !1498, i64 2640, !1497, i64 2656, !1497, i64 2660, !1498, i64 2672, !1498, i64 3184, !1498, i64 3696, !1498, i64 3776, !1498, i64 3904, !1498, i64 3928, !1498, i64 3952, !1498, i64 3976, !1498, i64 3984, !1498, i64 7056, !1498, i64 7312, !1498, i64 7568}
!1514 = !{!"", !1498, i64 0, !1498, i64 48, !1498, i64 96, !1498, i64 176, !1498, i64 496, !1498, i64 656, !1498, i64 696, !1498, i64 728, !1497, i64 736, !1498, i64 740, !1497, i64 744, !1497, i64 748, !1497, i64 752, !1497, i64 756}
!1515 = !{!"", !1516, i64 0, !1498, i64 704, !1498, i64 728, !1498, i64 768, !1498, i64 808, !1498, i64 880, !1498, i64 920, !1498, i64 960, !1498, i64 1000, !1498, i64 1040, !1498, i64 1080, !1498, i64 1120, !1498, i64 1880, !1498, i64 2152, !1498, i64 2168, !1498, i64 3192, !1498, i64 3240, !1498, i64 3656, !1498, i64 3664, !1498, i64 3672}
!1516 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1498, i64 12, !1497, i64 88, !1497, i64 92, !1497, i64 96, !1498, i64 100, !1498, i64 108, !1498, i64 364, !1498, i64 432, !1498, i64 456, !1498, i64 664, !1498, i64 672, !1517, i64 696}
!1517 = !{!"double", !1498, i64 0}
!1518 = !{!"", !1498, i64 0, !1498, i64 56, !1498, i64 112, !1498, i64 168, !1498, i64 224, !1498, i64 256, !1498, i64 312, !1498, i64 368, !1498, i64 424, !1498, i64 480, !1498, i64 536, !1501, i64 592, !1498, i64 600, !1498, i64 632, !1501, i64 664, !1501, i64 672, !1498, i64 680, !1498, i64 736, !1498, i64 792, !1498, i64 848, !1498, i64 904, !1501, i64 960, !1501, i64 968, !1501, i64 976, !1501, i64 984, !1501, i64 992, !1501, i64 1000, !1501, i64 1008, !1501, i64 1016, !1501, i64 1024, !1501, i64 1032, !1501, i64 1040, !1501, i64 1048}
!1519 = !{!"", !1501, i64 0, !1501, i64 8, !1501, i64 16, !1498, i64 24, !1498, i64 104, !1501, i64 160, !1501, i64 168, !1501, i64 176, !1501, i64 184, !1501, i64 192, !1501, i64 200, !1501, i64 208, !1501, i64 216, !1501, i64 224, !1501, i64 232, !1501, i64 240, !1501, i64 248, !1501, i64 256, !1501, i64 264, !1501, i64 272, !1501, i64 280, !1501, i64 288}
!1520 = !{!"", !1501, i64 0, !1501, i64 8, !1501, i64 16, !1501, i64 24, !1501, i64 32, !1501, i64 40, !1501, i64 48, !1501, i64 56, !1501, i64 64, !1501, i64 72, !1501, i64 80, !1501, i64 88, !1501, i64 96, !1501, i64 104, !1501, i64 112}
!1521 = !{!"", !1501, i64 0, !1501, i64 8, !1501, i64 16, !1501, i64 24, !1501, i64 32, !1501, i64 40}
!1522 = !{!"", !1501, i64 0, !1501, i64 8, !1501, i64 16, !1501, i64 24, !1501, i64 32, !1501, i64 40, !1501, i64 48, !1501, i64 56, !1501, i64 64, !1501, i64 72, !1501, i64 80, !1498, i64 88, !1498, i64 136}
!1523 = !{!"", !1498, i64 0, !1498, i64 16, !1498, i64 32, !1498, i64 48, !1501, i64 64}
!1524 = !DILocation(line: 130, column: 22, scope: !1489)
!1525 = !DILocation(line: 130, column: 9, scope: !197)
!1526 = !DILocation(line: 132, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1489, file: !198, line: 131, column: 5)
!1528 = !{!1498, !1498, i64 0}
!1529 = !DILocation(line: 132, column: 9, scope: !1527)
!1530 = !DILocation(line: 135, column: 17, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !198, line: 133, column: 9)
!1532 = !DILocation(line: 136, column: 17, scope: !1531)
!1533 = !DILocation(line: 138, column: 17, scope: !1531)
!1534 = !DILocation(line: 139, column: 42, scope: !1531)
!1535 = !DILocation(line: 139, column: 17, scope: !1531)
!1536 = !DILocation(line: 140, column: 17, scope: !1531)
!1537 = !DILocation(line: 142, column: 17, scope: !1531)
!1538 = !DILocation(line: 143, column: 39, scope: !1531)
!1539 = !DILocation(line: 143, column: 17, scope: !1531)
!1540 = !DILocation(line: 144, column: 17, scope: !1531)
!1541 = !DILocation(line: 146, column: 17, scope: !1531)
!1542 = !DILocation(line: 147, column: 39, scope: !1531)
!1543 = !DILocation(line: 147, column: 17, scope: !1531)
!1544 = !DILocation(line: 148, column: 44, scope: !1531)
!1545 = !DILocation(line: 148, column: 17, scope: !1531)
!1546 = !DILocation(line: 149, column: 17, scope: !1531)
!1547 = !DILocation(line: 150, column: 17, scope: !1531)
!1548 = !DILocation(line: 155, column: 42, scope: !1488)
!1549 = !DILocation(line: 155, column: 39, scope: !1488)
!1550 = !DILocation(line: 0, scope: !1488)
!1551 = !DILocation(line: 157, column: 25, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1488, file: !198, line: 157, column: 13)
!1553 = !DILocation(line: 157, column: 13, scope: !1552)
!1554 = !DILocation(line: 157, column: 39, scope: !1552)
!1555 = !DILocation(line: 157, column: 13, scope: !1488)
!1556 = !DILocation(line: 158, column: 17, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !198, line: 158, column: 17)
!1558 = !DILocation(line: 158, column: 43, scope: !1557)
!1559 = !DILocation(line: 158, column: 17, scope: !1552)
!1560 = !DILocation(line: 159, column: 17, scope: !1557)
!1561 = !DILocation(line: 161, column: 17, scope: !1557)
!1562 = !DILocation(line: 163, column: 13, scope: !1552)
!1563 = !DILocation(line: 165, column: 1, scope: !197)
!1564 = distinct !DISubprogram(name: "x264_mb_mc_0xywh", scope: !198, file: !198, line: 28, type: !1565, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !201, !187, !187, !187, !187}
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1568 = !DILocalVariable(name: "h", arg: 1, scope: !1564, file: !198, line: 28, type: !201)
!1569 = !DILocalVariable(name: "x", arg: 2, scope: !1564, file: !198, line: 28, type: !187)
!1570 = !DILocalVariable(name: "y", arg: 3, scope: !1564, file: !198, line: 28, type: !187)
!1571 = !DILocalVariable(name: "width", arg: 4, scope: !1564, file: !198, line: 28, type: !187)
!1572 = !DILocalVariable(name: "height", arg: 5, scope: !1564, file: !198, line: 28, type: !187)
!1573 = !DILocalVariable(name: "i8", scope: !1564, file: !198, line: 30, type: !187)
!1574 = !DILocalVariable(name: "i_ref", scope: !1564, file: !198, line: 31, type: !187)
!1575 = !DILocalVariable(name: "mvx", scope: !1564, file: !198, line: 32, type: !187)
!1576 = !DILocalVariable(name: "mvy", scope: !1564, file: !198, line: 33, type: !187)
!1577 = !DILocation(line: 0, scope: !1564)
!1578 = !DILocation(line: 30, column: 30, scope: !1564)
!1579 = !DILocation(line: 30, column: 34, scope: !1564)
!1580 = !DILocation(line: 30, column: 32, scope: !1564)
!1581 = !DILocation(line: 31, column: 29, scope: !1564)
!1582 = !DILocation(line: 31, column: 17, scope: !1564)
!1583 = !DILocation(line: 32, column: 41, scope: !1564)
!1584 = !DILocation(line: 32, column: 29, scope: !1564)
!1585 = !{!1586, !1586, i64 0}
!1586 = !{!"short", !1498, i64 0}
!1587 = !DILocation(line: 32, column: 61, scope: !1564)
!1588 = !DILocation(line: 32, column: 55, scope: !1564)
!1589 = !{!1497, !1497, i64 0}
!1590 = !DILocation(line: 32, column: 78, scope: !1564)
!1591 = !DILocation(line: 32, column: 72, scope: !1564)
!1592 = !DILocalVariable(name: "v", arg: 1, scope: !1593, file: !6, line: 200, type: !187)
!1593 = distinct !DISubprogram(name: "x264_clip3", scope: !6, file: !6, line: 200, type: !1594, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!187, !187, !187, !187}
!1596 = !{!1592, !1597, !1598}
!1597 = !DILocalVariable(name: "i_min", arg: 2, scope: !1593, file: !6, line: 200, type: !187)
!1598 = !DILocalVariable(name: "i_max", arg: 3, scope: !1593, file: !6, line: 200, type: !187)
!1599 = !DILocation(line: 0, scope: !1593, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 32, column: 17, scope: !1564)
!1601 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1600)
!1602 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1600)
!1603 = !DILocation(line: 32, column: 95, scope: !1564)
!1604 = !DILocation(line: 32, column: 90, scope: !1564)
!1605 = !DILocation(line: 33, column: 29, scope: !1564)
!1606 = !DILocation(line: 33, column: 55, scope: !1564)
!1607 = !DILocation(line: 33, column: 72, scope: !1564)
!1608 = !DILocation(line: 0, scope: !1593, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 33, column: 17, scope: !1564)
!1610 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1609)
!1611 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1609)
!1612 = !DILocation(line: 33, column: 95, scope: !1564)
!1613 = !DILocation(line: 33, column: 90, scope: !1564)
!1614 = !DILocation(line: 35, column: 8, scope: !1564)
!1615 = !DILocation(line: 35, column: 11, scope: !1564)
!1616 = !{!1495, !1501, i64 32616}
!1617 = !DILocation(line: 35, column: 31, scope: !1564)
!1618 = !DILocation(line: 35, column: 21, scope: !1564)
!1619 = !{!1501, !1501, i64 0}
!1620 = !DILocation(line: 35, column: 44, scope: !1564)
!1621 = !DILocation(line: 35, column: 58, scope: !1564)
!1622 = !DILocation(line: 35, column: 56, scope: !1564)
!1623 = !DILocation(line: 36, column: 30, scope: !1564)
!1624 = !DILocation(line: 36, column: 20, scope: !1564)
!1625 = !DILocation(line: 36, column: 58, scope: !1564)
!1626 = !DILocation(line: 36, column: 48, scope: !1564)
!1627 = !DILocation(line: 37, column: 31, scope: !1564)
!1628 = !DILocation(line: 37, column: 40, scope: !1564)
!1629 = !DILocation(line: 37, column: 50, scope: !1564)
!1630 = !DILocation(line: 35, column: 5, scope: !1564)
!1631 = !DILocation(line: 40, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1564, file: !198, line: 40, column: 9)
!1633 = !{!1495, !1497, i64 16436}
!1634 = !DILocation(line: 40, column: 28, scope: !1632)
!1635 = !DILocation(line: 40, column: 9, scope: !1564)
!1636 = !DILocation(line: 41, column: 23, scope: !1632)
!1637 = !{!1495, !1497, i64 16388}
!1638 = !DILocation(line: 41, column: 34, scope: !1632)
!1639 = !DILocation(line: 41, column: 37, scope: !1632)
!1640 = !DILocation(line: 41, column: 13, scope: !1632)
!1641 = !DILocation(line: 41, column: 9, scope: !1632)
!1642 = !DILocation(line: 43, column: 11, scope: !1564)
!1643 = !{!1495, !1501, i64 32632}
!1644 = !DILocation(line: 43, column: 23, scope: !1564)
!1645 = !DILocation(line: 43, column: 46, scope: !1564)
!1646 = !DILocation(line: 43, column: 60, scope: !1564)
!1647 = !DILocation(line: 43, column: 58, scope: !1564)
!1648 = !DILocation(line: 44, column: 22, scope: !1564)
!1649 = !DILocation(line: 44, column: 53, scope: !1564)
!1650 = !DILocation(line: 45, column: 33, scope: !1564)
!1651 = !DILocation(line: 45, column: 42, scope: !1564)
!1652 = !DILocation(line: 43, column: 5, scope: !1564)
!1653 = !DILocation(line: 47, column: 32, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1564, file: !198, line: 47, column: 9)
!1655 = !{!1656, !1501, i64 48}
!1656 = !{!"x264_weight_t", !1498, i64 0, !1498, i64 16, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1501, i64 48}
!1657 = !DILocation(line: 47, column: 9, scope: !1654)
!1658 = !DILocation(line: 47, column: 9, scope: !1564)
!1659 = !DILocation(line: 48, column: 46, scope: !1654)
!1660 = !DILocation(line: 48, column: 9, scope: !1654)
!1661 = !DILocation(line: 48, column: 53, scope: !1654)
!1662 = !DILocation(line: 52, column: 11, scope: !1564)
!1663 = !DILocation(line: 52, column: 23, scope: !1564)
!1664 = !DILocation(line: 53, column: 22, scope: !1564)
!1665 = !DILocation(line: 53, column: 53, scope: !1564)
!1666 = !DILocation(line: 52, column: 5, scope: !1564)
!1667 = !DILocation(line: 56, column: 32, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1564, file: !198, line: 56, column: 9)
!1669 = !DILocation(line: 56, column: 9, scope: !1668)
!1670 = !DILocation(line: 56, column: 9, scope: !1564)
!1671 = !DILocation(line: 57, column: 46, scope: !1668)
!1672 = !DILocation(line: 57, column: 9, scope: !1668)
!1673 = !DILocation(line: 57, column: 53, scope: !1668)
!1674 = !DILocation(line: 61, column: 1, scope: !1564)
!1675 = distinct !DISubprogram(name: "x264_mb_mc_01xywh", scope: !198, file: !198, line: 85, type: !1565, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1676)
!1676 = !{!1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1677 = !DILocalVariable(name: "h", arg: 1, scope: !1675, file: !198, line: 85, type: !201)
!1678 = !DILocalVariable(name: "x", arg: 2, scope: !1675, file: !198, line: 85, type: !187)
!1679 = !DILocalVariable(name: "y", arg: 3, scope: !1675, file: !198, line: 85, type: !187)
!1680 = !DILocalVariable(name: "width", arg: 4, scope: !1675, file: !198, line: 85, type: !187)
!1681 = !DILocalVariable(name: "height", arg: 5, scope: !1675, file: !198, line: 85, type: !187)
!1682 = !DILocalVariable(name: "i8", scope: !1675, file: !198, line: 87, type: !187)
!1683 = !DILocalVariable(name: "i_ref0", scope: !1675, file: !198, line: 88, type: !187)
!1684 = !DILocalVariable(name: "i_ref1", scope: !1675, file: !198, line: 89, type: !187)
!1685 = !DILocalVariable(name: "weight", scope: !1675, file: !198, line: 90, type: !187)
!1686 = !DILocalVariable(name: "mvx0", scope: !1675, file: !198, line: 91, type: !187)
!1687 = !DILocalVariable(name: "mvx1", scope: !1675, file: !198, line: 92, type: !187)
!1688 = !DILocalVariable(name: "mvy0", scope: !1675, file: !198, line: 93, type: !187)
!1689 = !DILocalVariable(name: "mvy1", scope: !1675, file: !198, line: 94, type: !187)
!1690 = !DILocalVariable(name: "i_mode", scope: !1675, file: !198, line: 95, type: !187)
!1691 = !DILocalVariable(name: "i_stride0", scope: !1675, file: !198, line: 96, type: !187)
!1692 = !DILocalVariable(name: "i_stride1", scope: !1675, file: !198, line: 96, type: !187)
!1693 = !DILocalVariable(name: "tmp0", scope: !1675, file: !198, line: 97, type: !954, align: 128)
!1694 = !DILocalVariable(name: "tmp1", scope: !1675, file: !198, line: 98, type: !954, align: 128)
!1695 = !DILocalVariable(name: "src0", scope: !1675, file: !198, line: 99, type: !395)
!1696 = !DILocalVariable(name: "src1", scope: !1675, file: !198, line: 99, type: !395)
!1697 = !DILocation(line: 0, scope: !1675)
!1698 = !DILocation(line: 87, column: 27, scope: !1675)
!1699 = !DILocation(line: 87, column: 31, scope: !1675)
!1700 = !DILocation(line: 87, column: 29, scope: !1675)
!1701 = !DILocation(line: 88, column: 30, scope: !1675)
!1702 = !DILocation(line: 88, column: 18, scope: !1675)
!1703 = !DILocation(line: 89, column: 18, scope: !1675)
!1704 = !DILocation(line: 90, column: 24, scope: !1675)
!1705 = !{!1495, !1501, i64 26624}
!1706 = !DILocation(line: 90, column: 18, scope: !1675)
!1707 = !DILocation(line: 91, column: 42, scope: !1675)
!1708 = !DILocation(line: 91, column: 30, scope: !1675)
!1709 = !DILocation(line: 91, column: 62, scope: !1675)
!1710 = !DILocation(line: 91, column: 56, scope: !1675)
!1711 = !DILocation(line: 91, column: 79, scope: !1675)
!1712 = !DILocation(line: 91, column: 73, scope: !1675)
!1713 = !DILocation(line: 0, scope: !1593, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 91, column: 18, scope: !1675)
!1715 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1714)
!1716 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1714)
!1717 = !DILocation(line: 91, column: 96, scope: !1675)
!1718 = !DILocation(line: 91, column: 91, scope: !1675)
!1719 = !DILocation(line: 92, column: 30, scope: !1675)
!1720 = !DILocation(line: 0, scope: !1593, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 92, column: 18, scope: !1675)
!1722 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1721)
!1723 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1721)
!1724 = !DILocation(line: 92, column: 91, scope: !1675)
!1725 = !DILocation(line: 93, column: 30, scope: !1675)
!1726 = !DILocation(line: 93, column: 56, scope: !1675)
!1727 = !DILocation(line: 93, column: 73, scope: !1675)
!1728 = !DILocation(line: 0, scope: !1593, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 93, column: 18, scope: !1675)
!1730 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1729)
!1731 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1729)
!1732 = !DILocation(line: 93, column: 96, scope: !1675)
!1733 = !DILocation(line: 93, column: 91, scope: !1675)
!1734 = !DILocation(line: 94, column: 30, scope: !1675)
!1735 = !DILocation(line: 0, scope: !1593, inlinedAt: !1736)
!1736 = distinct !DILocation(line: 94, column: 18, scope: !1675)
!1737 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1736)
!1738 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1736)
!1739 = !DILocation(line: 94, column: 91, scope: !1675)
!1740 = !DILocation(line: 95, column: 18, scope: !1675)
!1741 = !DILocation(line: 96, column: 5, scope: !1675)
!1742 = !DILocation(line: 96, column: 9, scope: !1675)
!1743 = !DILocation(line: 96, column: 25, scope: !1675)
!1744 = !DILocation(line: 97, column: 5, scope: !1675)
!1745 = !DILocation(line: 98, column: 5, scope: !1675)
!1746 = !DILocation(line: 101, column: 18, scope: !1675)
!1747 = !{!1495, !1501, i64 32624}
!1748 = !DILocation(line: 101, column: 55, scope: !1675)
!1749 = !DILocation(line: 101, column: 45, scope: !1675)
!1750 = !DILocation(line: 101, column: 84, scope: !1675)
!1751 = !DILocation(line: 101, column: 74, scope: !1675)
!1752 = !DILocation(line: 102, column: 40, scope: !1675)
!1753 = !DILocation(line: 102, column: 49, scope: !1675)
!1754 = !DILocation(line: 101, column: 12, scope: !1675)
!1755 = !DILocation(line: 103, column: 18, scope: !1675)
!1756 = !DILocation(line: 103, column: 45, scope: !1675)
!1757 = !DILocation(line: 103, column: 74, scope: !1675)
!1758 = !DILocation(line: 103, column: 12, scope: !1675)
!1759 = !DILocation(line: 105, column: 5, scope: !1675)
!1760 = !DILocation(line: 105, column: 35, scope: !1675)
!1761 = !DILocation(line: 105, column: 25, scope: !1675)
!1762 = !DILocation(line: 105, column: 48, scope: !1675)
!1763 = !DILocation(line: 105, column: 62, scope: !1675)
!1764 = !DILocation(line: 105, column: 60, scope: !1675)
!1765 = !DILocation(line: 106, column: 30, scope: !1675)
!1766 = !DILocation(line: 106, column: 47, scope: !1675)
!1767 = !DILocation(line: 108, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1675, file: !198, line: 108, column: 9)
!1769 = !DILocation(line: 108, column: 28, scope: !1768)
!1770 = !DILocation(line: 108, column: 9, scope: !1675)
!1771 = !DILocation(line: 109, column: 24, scope: !1768)
!1772 = !DILocation(line: 109, column: 35, scope: !1768)
!1773 = !DILocation(line: 109, column: 38, scope: !1768)
!1774 = !DILocation(line: 109, column: 14, scope: !1768)
!1775 = !DILocation(line: 109, column: 9, scope: !1768)
!1776 = !DILocation(line: 110, column: 28, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1675, file: !198, line: 110, column: 9)
!1778 = !DILocation(line: 110, column: 9, scope: !1675)
!1779 = !DILocation(line: 111, column: 24, scope: !1777)
!1780 = !DILocation(line: 111, column: 35, scope: !1777)
!1781 = !DILocation(line: 111, column: 38, scope: !1777)
!1782 = !DILocation(line: 111, column: 14, scope: !1777)
!1783 = !DILocation(line: 111, column: 9, scope: !1777)
!1784 = !DILocation(line: 113, column: 11, scope: !1675)
!1785 = !DILocation(line: 113, column: 32, scope: !1675)
!1786 = !DILocation(line: 113, column: 64, scope: !1675)
!1787 = !DILocation(line: 114, column: 35, scope: !1675)
!1788 = !DILocation(line: 114, column: 44, scope: !1675)
!1789 = !DILocation(line: 113, column: 5, scope: !1675)
!1790 = !DILocation(line: 115, column: 11, scope: !1675)
!1791 = !DILocation(line: 115, column: 32, scope: !1675)
!1792 = !DILocation(line: 115, column: 64, scope: !1675)
!1793 = !DILocation(line: 115, column: 5, scope: !1675)
!1794 = !DILocation(line: 117, column: 21, scope: !1675)
!1795 = !DILocation(line: 117, column: 5, scope: !1675)
!1796 = !DILocation(line: 117, column: 27, scope: !1675)
!1797 = !DILocation(line: 117, column: 50, scope: !1675)
!1798 = !DILocation(line: 117, column: 64, scope: !1675)
!1799 = !DILocation(line: 117, column: 62, scope: !1675)
!1800 = !DILocation(line: 118, column: 11, scope: !1675)
!1801 = !DILocation(line: 118, column: 32, scope: !1675)
!1802 = !DILocation(line: 118, column: 64, scope: !1675)
!1803 = !DILocation(line: 118, column: 5, scope: !1675)
!1804 = !DILocation(line: 120, column: 11, scope: !1675)
!1805 = !DILocation(line: 120, column: 32, scope: !1675)
!1806 = !DILocation(line: 120, column: 64, scope: !1675)
!1807 = !DILocation(line: 120, column: 5, scope: !1675)
!1808 = !DILocation(line: 122, column: 5, scope: !1675)
!1809 = !DILocation(line: 122, column: 27, scope: !1675)
!1810 = !DILocation(line: 123, column: 1, scope: !1675)
!1811 = distinct !DISubprogram(name: "x264_mb_mc_1xywh", scope: !198, file: !198, line: 62, type: !1565, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821}
!1813 = !DILocalVariable(name: "h", arg: 1, scope: !1811, file: !198, line: 62, type: !201)
!1814 = !DILocalVariable(name: "x", arg: 2, scope: !1811, file: !198, line: 62, type: !187)
!1815 = !DILocalVariable(name: "y", arg: 3, scope: !1811, file: !198, line: 62, type: !187)
!1816 = !DILocalVariable(name: "width", arg: 4, scope: !1811, file: !198, line: 62, type: !187)
!1817 = !DILocalVariable(name: "height", arg: 5, scope: !1811, file: !198, line: 62, type: !187)
!1818 = !DILocalVariable(name: "i8", scope: !1811, file: !198, line: 64, type: !187)
!1819 = !DILocalVariable(name: "i_ref", scope: !1811, file: !198, line: 65, type: !187)
!1820 = !DILocalVariable(name: "mvx", scope: !1811, file: !198, line: 66, type: !187)
!1821 = !DILocalVariable(name: "mvy", scope: !1811, file: !198, line: 67, type: !187)
!1822 = !DILocation(line: 0, scope: !1811)
!1823 = !DILocation(line: 64, column: 30, scope: !1811)
!1824 = !DILocation(line: 64, column: 34, scope: !1811)
!1825 = !DILocation(line: 64, column: 32, scope: !1811)
!1826 = !DILocation(line: 65, column: 17, scope: !1811)
!1827 = !DILocation(line: 66, column: 29, scope: !1811)
!1828 = !DILocation(line: 66, column: 61, scope: !1811)
!1829 = !DILocation(line: 66, column: 55, scope: !1811)
!1830 = !DILocation(line: 66, column: 78, scope: !1811)
!1831 = !DILocation(line: 66, column: 72, scope: !1811)
!1832 = !DILocation(line: 0, scope: !1593, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 66, column: 17, scope: !1811)
!1834 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1833)
!1835 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1833)
!1836 = !DILocation(line: 66, column: 95, scope: !1811)
!1837 = !DILocation(line: 66, column: 90, scope: !1811)
!1838 = !DILocation(line: 67, column: 29, scope: !1811)
!1839 = !DILocation(line: 67, column: 55, scope: !1811)
!1840 = !DILocation(line: 67, column: 72, scope: !1811)
!1841 = !DILocation(line: 0, scope: !1593, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 67, column: 17, scope: !1811)
!1843 = !DILocation(line: 202, column: 17, scope: !1593, inlinedAt: !1842)
!1844 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !1842)
!1845 = !DILocation(line: 67, column: 95, scope: !1811)
!1846 = !DILocation(line: 67, column: 90, scope: !1811)
!1847 = !DILocation(line: 69, column: 8, scope: !1811)
!1848 = !DILocation(line: 69, column: 11, scope: !1811)
!1849 = !DILocation(line: 69, column: 31, scope: !1811)
!1850 = !DILocation(line: 69, column: 21, scope: !1811)
!1851 = !DILocation(line: 69, column: 44, scope: !1811)
!1852 = !DILocation(line: 69, column: 58, scope: !1811)
!1853 = !DILocation(line: 69, column: 56, scope: !1811)
!1854 = !DILocation(line: 70, column: 20, scope: !1811)
!1855 = !DILocation(line: 70, column: 58, scope: !1811)
!1856 = !DILocation(line: 70, column: 48, scope: !1811)
!1857 = !DILocation(line: 71, column: 31, scope: !1811)
!1858 = !DILocation(line: 71, column: 40, scope: !1811)
!1859 = !DILocation(line: 69, column: 5, scope: !1811)
!1860 = !DILocation(line: 73, column: 15, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1811, file: !198, line: 73, column: 9)
!1862 = !DILocation(line: 73, column: 28, scope: !1861)
!1863 = !DILocation(line: 73, column: 9, scope: !1811)
!1864 = !DILocation(line: 74, column: 23, scope: !1861)
!1865 = !DILocation(line: 74, column: 34, scope: !1861)
!1866 = !DILocation(line: 74, column: 37, scope: !1861)
!1867 = !DILocation(line: 74, column: 13, scope: !1861)
!1868 = !DILocation(line: 74, column: 9, scope: !1861)
!1869 = !DILocation(line: 76, column: 11, scope: !1811)
!1870 = !DILocation(line: 76, column: 23, scope: !1811)
!1871 = !DILocation(line: 76, column: 46, scope: !1811)
!1872 = !DILocation(line: 76, column: 60, scope: !1811)
!1873 = !DILocation(line: 76, column: 58, scope: !1811)
!1874 = !DILocation(line: 77, column: 22, scope: !1811)
!1875 = !DILocation(line: 77, column: 53, scope: !1811)
!1876 = !DILocation(line: 78, column: 33, scope: !1811)
!1877 = !DILocation(line: 78, column: 42, scope: !1811)
!1878 = !DILocation(line: 76, column: 5, scope: !1811)
!1879 = !DILocation(line: 80, column: 11, scope: !1811)
!1880 = !DILocation(line: 80, column: 23, scope: !1811)
!1881 = !DILocation(line: 81, column: 22, scope: !1811)
!1882 = !DILocation(line: 81, column: 53, scope: !1811)
!1883 = !DILocation(line: 80, column: 5, scope: !1811)
!1884 = !DILocation(line: 83, column: 1, scope: !1811)
!1885 = distinct !DISubprogram(name: "x264_mb_mc", scope: !198, file: !198, line: 167, type: !1886, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !201}
!1888 = !{!1889, !1890, !1894, !1896, !1897, !1898}
!1889 = !DILocalVariable(name: "h", arg: 1, scope: !1885, file: !198, line: 167, type: !201)
!1890 = !DILocalVariable(name: "i", scope: !1891, file: !198, line: 171, type: !187)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !198, line: 171, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !198, line: 170, column: 5)
!1893 = distinct !DILexicalBlock(scope: !1885, file: !198, line: 169, column: 9)
!1894 = !DILocalVariable(name: "ref0a", scope: !1895, file: !198, line: 176, type: !187)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !198, line: 175, column: 5)
!1896 = !DILocalVariable(name: "ref0b", scope: !1895, file: !198, line: 177, type: !187)
!1897 = !DILocalVariable(name: "ref1a", scope: !1895, file: !198, line: 178, type: !187)
!1898 = !DILocalVariable(name: "ref1b", scope: !1895, file: !198, line: 179, type: !187)
!1899 = !DILocation(line: 0, scope: !1885)
!1900 = !DILocation(line: 169, column: 15, scope: !1893)
!1901 = !{!1495, !1497, i64 17388}
!1902 = !DILocation(line: 169, column: 27, scope: !1893)
!1903 = !DILocation(line: 169, column: 9, scope: !1885)
!1904 = !DILocation(line: 0, scope: !1891)
!1905 = !DILocation(line: 172, column: 13, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1891, file: !198, line: 171, column: 9)
!1907 = !DILocation(line: 171, column: 33, scope: !1906)
!1908 = !DILocation(line: 171, column: 27, scope: !1906)
!1909 = !DILocation(line: 171, column: 9, scope: !1891)
!1910 = distinct !{!1910, !1909, !1911, !1912, !1913}
!1911 = !DILocation(line: 172, column: 34, scope: !1891)
!1912 = !{!"llvm.loop.mustprogress"}
!1913 = !{!"llvm.loop.unroll.disable"}
!1914 = !DILocation(line: 176, column: 33, scope: !1895)
!1915 = !DILocation(line: 176, column: 21, scope: !1895)
!1916 = !DILocation(line: 0, scope: !1895)
!1917 = !DILocation(line: 177, column: 21, scope: !1895)
!1918 = !DILocation(line: 178, column: 21, scope: !1895)
!1919 = !DILocation(line: 179, column: 21, scope: !1895)
!1920 = !DILocation(line: 181, column: 13, scope: !1895)
!1921 = !DILocation(line: 183, column: 23, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !198, line: 183, column: 17)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !198, line: 182, column: 9)
!1924 = distinct !DILexicalBlock(scope: !1895, file: !198, line: 181, column: 13)
!1925 = !DILocation(line: 183, column: 17, scope: !1923)
!1926 = !DILocation(line: 184, column: 27, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1922, file: !198, line: 184, column: 21)
!1928 = !DILocation(line: 184, column: 21, scope: !1922)
!1929 = !DILocation(line: 184, column: 34, scope: !1927)
!1930 = !DILocation(line: 185, column: 34, scope: !1927)
!1931 = !DILocation(line: 186, column: 34, scope: !1922)
!1932 = !DILocation(line: 190, column: 23, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !198, line: 190, column: 17)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !198, line: 189, column: 9)
!1935 = distinct !DILexicalBlock(scope: !1924, file: !198, line: 188, column: 18)
!1936 = !DILocation(line: 190, column: 17, scope: !1934)
!1937 = !DILocation(line: 191, column: 27, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !198, line: 191, column: 21)
!1939 = !DILocation(line: 191, column: 21, scope: !1933)
!1940 = !DILocation(line: 191, column: 34, scope: !1938)
!1941 = !DILocation(line: 192, column: 34, scope: !1938)
!1942 = !DILocation(line: 193, column: 34, scope: !1933)
!1943 = !DILocation(line: 195, column: 23, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1934, file: !198, line: 195, column: 17)
!1945 = !DILocation(line: 195, column: 17, scope: !1934)
!1946 = !DILocation(line: 196, column: 27, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1944, file: !198, line: 196, column: 21)
!1948 = !DILocation(line: 196, column: 21, scope: !1944)
!1949 = !DILocation(line: 196, column: 34, scope: !1947)
!1950 = !DILocation(line: 197, column: 34, scope: !1947)
!1951 = !DILocation(line: 198, column: 34, scope: !1944)
!1952 = !DILocation(line: 202, column: 23, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !198, line: 202, column: 17)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !198, line: 201, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1935, file: !198, line: 200, column: 18)
!1956 = !DILocation(line: 202, column: 17, scope: !1954)
!1957 = !DILocation(line: 203, column: 27, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1953, file: !198, line: 203, column: 21)
!1959 = !DILocation(line: 203, column: 21, scope: !1953)
!1960 = !DILocation(line: 203, column: 34, scope: !1958)
!1961 = !DILocation(line: 204, column: 34, scope: !1958)
!1962 = !DILocation(line: 205, column: 34, scope: !1953)
!1963 = !DILocation(line: 207, column: 23, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1954, file: !198, line: 207, column: 17)
!1965 = !DILocation(line: 207, column: 17, scope: !1954)
!1966 = !DILocation(line: 208, column: 27, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1964, file: !198, line: 208, column: 21)
!1968 = !DILocation(line: 208, column: 21, scope: !1964)
!1969 = !DILocation(line: 208, column: 34, scope: !1967)
!1970 = !DILocation(line: 209, column: 34, scope: !1967)
!1971 = !DILocation(line: 210, column: 34, scope: !1964)
!1972 = !DILocation(line: 213, column: 1, scope: !1885)
!1973 = distinct !DISubprogram(name: "x264_macroblock_cache_allocate", scope: !198, file: !198, line: 215, type: !1974, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1976)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!187, !201}
!1976 = !{!1977, !1978, !1979, !1981, !1984, !1986, !1989, !1990, !1991, !1992, !1993, !1995}
!1977 = !DILocalVariable(name: "h", arg: 1, scope: !1973, file: !198, line: 215, type: !201)
!1978 = !DILocalVariable(name: "i_mb_count", scope: !1973, file: !198, line: 217, type: !187)
!1979 = !DILocalVariable(name: "i", scope: !1980, file: !198, line: 245, type: !187)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 245, column: 5)
!1981 = !DILocalVariable(name: "i_refs", scope: !1982, file: !198, line: 247, type: !187)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !198, line: 246, column: 5)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !198, line: 245, column: 5)
!1984 = !DILocalVariable(name: "j", scope: !1985, file: !198, line: 253, type: !187)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !198, line: 253, column: 9)
!1986 = !DILocalVariable(name: "i_padv", scope: !1987, file: !198, line: 259, type: !187)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !198, line: 258, column: 5)
!1988 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 257, column: 9)
!1989 = !DILocalVariable(name: "align", scope: !1987, file: !198, line: 261, type: !187)
!1990 = !DILocalVariable(name: "i_stride", scope: !1987, file: !198, line: 262, type: !187)
!1991 = !DILocalVariable(name: "luma_plane_size", scope: !1987, file: !198, line: 262, type: !187)
!1992 = !DILocalVariable(name: "numweightbuf", scope: !1987, file: !198, line: 263, type: !187)
!1993 = !DILocalVariable(name: "i", scope: !1994, file: !198, line: 292, type: !187)
!1994 = distinct !DILexicalBlock(scope: !1987, file: !198, line: 292, column: 9)
!1995 = !DILabel(scope: !1973, name: "fail", file: !198, line: 298)
!1996 = !DILocation(line: 0, scope: !1973)
!1997 = !DILocation(line: 217, column: 25, scope: !1973)
!1998 = !DILocation(line: 217, column: 28, scope: !1973)
!1999 = !{!1495, !1497, i64 16368}
!2000 = !DILocation(line: 219, column: 28, scope: !1973)
!2001 = !{!1495, !1501, i64 3200}
!2002 = !DILocation(line: 219, column: 33, scope: !1973)
!2003 = !{!2004, !1497, i64 1084}
!2004 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1498, i64 52, !1497, i64 1076, !1497, i64 1080, !1497, i64 1084, !1497, i64 1088, !1497, i64 1092, !1497, i64 1096, !1497, i64 1100, !1497, i64 1104, !2005, i64 1108, !1497, i64 1124, !2006, i64 1128, !1497, i64 1296}
!2005 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12}
!2006 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1497, i64 52, !1497, i64 56, !1497, i64 60, !1497, i64 64, !1497, i64 68, !1497, i64 72, !1497, i64 76, !1497, i64 80, !2007, i64 84, !1497, i64 132, !1497, i64 136, !1497, i64 140, !1497, i64 144, !1497, i64 148, !1497, i64 152, !1497, i64 156, !1497, i64 160, !1497, i64 164}
!2007 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44}
!2008 = !DILocation(line: 219, column: 11, scope: !1973)
!2009 = !DILocation(line: 219, column: 23, scope: !1973)
!2010 = !{!1495, !1497, i64 16372}
!2011 = !DILocation(line: 220, column: 44, scope: !1973)
!2012 = !DILocation(line: 220, column: 11, scope: !1973)
!2013 = !DILocation(line: 220, column: 23, scope: !1973)
!2014 = !{!1495, !1497, i64 16376}
!2015 = !DILocation(line: 221, column: 44, scope: !1973)
!2016 = !DILocation(line: 221, column: 11, scope: !1973)
!2017 = !DILocation(line: 221, column: 23, scope: !1973)
!2018 = !{!1495, !1497, i64 16380}
!2019 = !DILocation(line: 223, column: 35, scope: !1973)
!2020 = !{!1495, !1497, i64 136}
!2021 = !DILocation(line: 223, column: 11, scope: !1973)
!2022 = !DILocation(line: 223, column: 24, scope: !1973)
!2023 = !DILocation(line: 225, column: 5, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 225, column: 5)
!2025 = !{!1495, !1501, i64 16632}
!2026 = !DILocation(line: 225, column: 5, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !198, line: 225, column: 5)
!2028 = !DILocation(line: 226, column: 5, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 226, column: 5)
!2030 = !{!1495, !1501, i64 16640}
!2031 = !DILocation(line: 226, column: 5, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !198, line: 226, column: 5)
!2033 = !DILocation(line: 227, column: 5, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 227, column: 5)
!2035 = !{!1495, !1501, i64 17232}
!2036 = !DILocation(line: 227, column: 5, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2034, file: !198, line: 227, column: 5)
!2038 = !DILocation(line: 228, column: 5, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 228, column: 5)
!2040 = !{!1495, !1501, i64 17240}
!2041 = !DILocation(line: 228, column: 5, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2039, file: !198, line: 228, column: 5)
!2043 = !DILocation(line: 229, column: 5, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 229, column: 5)
!2045 = !{!1495, !1501, i64 17248}
!2046 = !DILocation(line: 229, column: 5, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2044, file: !198, line: 229, column: 5)
!2048 = !DILocation(line: 230, column: 5, scope: !1973)
!2049 = !DILocation(line: 233, column: 5, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 233, column: 5)
!2051 = !{!1495, !1501, i64 16648}
!2052 = !DILocation(line: 233, column: 5, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2050, file: !198, line: 233, column: 5)
!2054 = !DILocation(line: 236, column: 5, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 236, column: 5)
!2056 = !{!1495, !1501, i64 16656}
!2057 = !DILocation(line: 236, column: 5, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !198, line: 236, column: 5)
!2059 = !DILocation(line: 238, column: 18, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !1973, file: !198, line: 238, column: 9)
!2061 = !{!1495, !1497, i64 128}
!2062 = !DILocation(line: 238, column: 9, scope: !2060)
!2063 = !DILocation(line: 238, column: 9, scope: !1973)
!2064 = !DILocation(line: 240, column: 9, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !198, line: 240, column: 9)
!2066 = distinct !DILexicalBlock(scope: !2060, file: !198, line: 239, column: 5)
!2067 = !{!1495, !1501, i64 16664}
!2068 = !DILocation(line: 240, column: 9, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !198, line: 240, column: 9)
!2070 = !DILocation(line: 241, column: 9, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !198, line: 241, column: 9)
!2072 = !DILocation(line: 241, column: 9, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !198, line: 241, column: 9)
!2074 = !DILocation(line: 242, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2066, file: !198, line: 242, column: 9)
!2076 = !DILocation(line: 242, column: 9, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2075, file: !198, line: 242, column: 9)
!2078 = !DILocation(line: 0, scope: !1980)
!2079 = !DILocation(line: 245, column: 5, scope: !1980)
!2080 = !DILocation(line: 247, column: 22, scope: !1982)
!2081 = !{!1495, !1497, i64 80}
!2082 = !{!1495, !1497, i64 112}
!2083 = !DILocation(line: 247, column: 116, scope: !1982)
!2084 = !DILocation(line: 247, column: 104, scope: !1982)
!2085 = !DILocation(line: 0, scope: !1982)
!2086 = !DILocation(line: 248, column: 30, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1982, file: !198, line: 248, column: 13)
!2088 = !{!1495, !1497, i64 396}
!2089 = !DILocation(line: 248, column: 13, scope: !1982)
!2090 = !DILocation(line: 249, column: 22, scope: !2087)
!2091 = !DILocation(line: 249, column: 13, scope: !2087)
!2092 = !DILocation(line: 251, column: 22, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !198, line: 250, column: 18)
!2094 = !DILocation(line: 251, column: 13, scope: !2093)
!2095 = !DILocation(line: 253, column: 22, scope: !1985)
!2096 = !DILocation(line: 0, scope: !1985)
!2097 = !DILocation(line: 253, column: 28, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !1985, file: !198, line: 253, column: 9)
!2099 = !DILocation(line: 253, column: 9, scope: !1985)
!2100 = !DILocation(line: 253, column: 39, scope: !2098)
!2101 = distinct !{!2101, !2099, !2102, !1912, !1913}
!2102 = !DILocation(line: 254, column: 13, scope: !1985)
!2103 = !DILocation(line: 254, column: 13, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !198, line: 254, column: 13)
!2105 = !DILocation(line: 254, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2104, file: !198, line: 254, column: 13)
!2107 = distinct !{!2107, !2079, !2108, !1912, !1913}
!2108 = !DILocation(line: 255, column: 5, scope: !1980)
!2109 = !DILocation(line: 257, column: 26, scope: !1988)
!2110 = !DILocation(line: 257, column: 9, scope: !1988)
!2111 = !DILocation(line: 257, column: 9, scope: !1973)
!2112 = !DILocation(line: 259, column: 39, scope: !1987)
!2113 = !DILocation(line: 259, column: 27, scope: !1987)
!2114 = !DILocation(line: 0, scope: !1987)
!2115 = !DILocation(line: 261, column: 30, scope: !1987)
!2116 = !{!1495, !1497, i64 0}
!2117 = !DILocation(line: 261, column: 33, scope: !1987)
!2118 = !DILocation(line: 261, column: 21, scope: !1987)
!2119 = !DILocation(line: 261, column: 75, scope: !1987)
!2120 = !DILocation(line: 261, column: 63, scope: !1987)
!2121 = !DILocation(line: 265, column: 46, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !1987, file: !198, line: 265, column: 13)
!2123 = !DILocation(line: 265, column: 13, scope: !1987)
!2124 = !DILocation(line: 268, column: 27, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !198, line: 268, column: 17)
!2126 = distinct !DILexicalBlock(scope: !2122, file: !198, line: 266, column: 9)
!2127 = !{!1495, !1497, i64 16}
!2128 = !DILocation(line: 268, column: 18, scope: !2125)
!2129 = !DILocation(line: 268, column: 44, scope: !2125)
!2130 = !DILocation(line: 268, column: 71, scope: !2125)
!2131 = !{!1495, !1497, i64 4}
!2132 = !DILocation(line: 268, column: 52, scope: !2125)
!2133 = !DILocation(line: 268, column: 49, scope: !2125)
!2134 = !DILocation(line: 268, column: 17, scope: !2126)
!2135 = !DILocation(line: 271, column: 28, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2125, file: !198, line: 269, column: 13)
!2137 = !DILocation(line: 272, column: 55, scope: !2136)
!2138 = !{!2004, !1497, i64 1088}
!2139 = !DILocation(line: 272, column: 66, scope: !2136)
!2140 = !DILocation(line: 272, column: 70, scope: !2136)
!2141 = !DILocation(line: 272, column: 68, scope: !2136)
!2142 = !DILocation(line: 272, column: 44, scope: !2136)
!2143 = !DILocation(line: 275, column: 13, scope: !2136)
!2144 = !DILocation(line: 281, column: 24, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2122, file: !198, line: 280, column: 9)
!2146 = !DILocation(line: 282, column: 51, scope: !2145)
!2147 = !DILocation(line: 282, column: 62, scope: !2145)
!2148 = !DILocation(line: 282, column: 67, scope: !2145)
!2149 = !DILocation(line: 282, column: 65, scope: !2145)
!2150 = !DILocation(line: 282, column: 40, scope: !2145)
!2151 = !DILocation(line: 284, column: 50, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2145, file: !198, line: 284, column: 17)
!2153 = !DILocation(line: 0, scope: !1994)
!2154 = !DILocation(line: 292, column: 9, scope: !1994)
!2155 = !DILocation(line: 292, column: 44, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !1994, file: !198, line: 292, column: 9)
!2157 = !DILocation(line: 292, column: 27, scope: !2156)
!2158 = distinct !{!2158, !2154, !2159, !1912, !1913}
!2159 = !DILocation(line: 293, column: 13, scope: !1994)
!2160 = !DILocation(line: 293, column: 13, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !198, line: 293, column: 13)
!2162 = !DILocation(line: 293, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2161, file: !198, line: 293, column: 13)
!2164 = !DILocation(line: 300, column: 1, scope: !1973)
!2165 = !DISubprogram(name: "x264_malloc", scope: !6, file: !6, line: 174, type: !2166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!266, !187}
!2168 = !{}
!2169 = distinct !DISubprogram(name: "x264_macroblock_cache_free", scope: !198, file: !198, line: 301, type: !1886, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2171, !2172, !2174, !2177}
!2171 = !DILocalVariable(name: "h", arg: 1, scope: !2169, file: !198, line: 301, type: !201)
!2172 = !DILocalVariable(name: "i", scope: !2173, file: !198, line: 303, type: !187)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !198, line: 303, column: 5)
!2174 = !DILocalVariable(name: "j", scope: !2175, file: !198, line: 304, type: !187)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !198, line: 304, column: 9)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !198, line: 303, column: 5)
!2177 = !DILocalVariable(name: "i", scope: !2178, file: !198, line: 306, type: !187)
!2178 = distinct !DILexicalBlock(scope: !2169, file: !198, line: 306, column: 5)
!2179 = !DILocation(line: 0, scope: !2169)
!2180 = !DILocation(line: 0, scope: !2173)
!2181 = !DILocation(line: 303, column: 5, scope: !2173)
!2182 = !DILocation(line: 0, scope: !2175)
!2183 = !DILocation(line: 304, column: 9, scope: !2175)
!2184 = distinct !{!2184, !2181, !2185, !1912, !1913}
!2185 = !DILocation(line: 305, column: 40, scope: !2173)
!2186 = !DILocation(line: 305, column: 24, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2175, file: !198, line: 304, column: 9)
!2188 = !DILocation(line: 305, column: 13, scope: !2187)
!2189 = !DILocation(line: 304, column: 35, scope: !2187)
!2190 = !DILocation(line: 304, column: 28, scope: !2187)
!2191 = distinct !{!2191, !2183, !2192, !1912, !1913}
!2192 = !DILocation(line: 305, column: 40, scope: !2175)
!2193 = !DILocation(line: 309, column: 18, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2169, file: !198, line: 309, column: 9)
!2195 = !DILocation(line: 309, column: 9, scope: !2194)
!2196 = !DILocation(line: 309, column: 9, scope: !2169)
!2197 = !DILocation(line: 0, scope: !2178)
!2198 = !DILocation(line: 307, column: 20, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2178, file: !198, line: 306, column: 5)
!2200 = !DILocation(line: 307, column: 9, scope: !2199)
!2201 = !DILocation(line: 306, column: 30, scope: !2199)
!2202 = !DILocation(line: 306, column: 23, scope: !2199)
!2203 = !DILocation(line: 306, column: 5, scope: !2178)
!2204 = distinct !{!2204, !2203, !2205, !1912, !1913}
!2205 = !DILocation(line: 307, column: 42, scope: !2178)
!2206 = !DILocation(line: 311, column: 26, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2194, file: !198, line: 310, column: 5)
!2208 = !DILocation(line: 311, column: 9, scope: !2207)
!2209 = !DILocation(line: 312, column: 26, scope: !2207)
!2210 = !DILocation(line: 312, column: 20, scope: !2207)
!2211 = !DILocation(line: 312, column: 9, scope: !2207)
!2212 = !DILocation(line: 313, column: 20, scope: !2207)
!2213 = !DILocation(line: 313, column: 9, scope: !2207)
!2214 = !DILocation(line: 314, column: 5, scope: !2207)
!2215 = !DILocation(line: 315, column: 22, scope: !2169)
!2216 = !DILocation(line: 315, column: 5, scope: !2169)
!2217 = !DILocation(line: 316, column: 22, scope: !2169)
!2218 = !DILocation(line: 316, column: 5, scope: !2169)
!2219 = !DILocation(line: 317, column: 22, scope: !2169)
!2220 = !DILocation(line: 317, column: 5, scope: !2169)
!2221 = !DILocation(line: 318, column: 22, scope: !2169)
!2222 = !DILocation(line: 318, column: 5, scope: !2169)
!2223 = !DILocation(line: 319, column: 22, scope: !2169)
!2224 = !DILocation(line: 319, column: 5, scope: !2169)
!2225 = !DILocation(line: 320, column: 22, scope: !2169)
!2226 = !DILocation(line: 320, column: 5, scope: !2169)
!2227 = !DILocation(line: 321, column: 22, scope: !2169)
!2228 = !DILocation(line: 321, column: 5, scope: !2169)
!2229 = !DILocation(line: 322, column: 1, scope: !2169)
!2230 = !DISubprogram(name: "x264_free", scope: !6, file: !6, line: 175, type: !370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2168)
!2231 = distinct !DISubprogram(name: "x264_macroblock_thread_allocate", scope: !198, file: !198, line: 324, type: !2232, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!187, !201, !187}
!2234 = !{!2235, !2236, !2237, !2240, !2244, !2245, !2248, !2249, !2250, !2251, !2252, !2253}
!2235 = !DILocalVariable(name: "h", arg: 1, scope: !2231, file: !198, line: 324, type: !201)
!2236 = !DILocalVariable(name: "b_lookahead", arg: 2, scope: !2231, file: !198, line: 324, type: !187)
!2237 = !DILocalVariable(name: "i", scope: !2238, file: !198, line: 327, type: !187)
!2238 = distinct !DILexicalBlock(scope: !2239, file: !198, line: 327, column: 9)
!2239 = distinct !DILexicalBlock(scope: !2231, file: !198, line: 326, column: 9)
!2240 = !DILocalVariable(name: "j", scope: !2241, file: !198, line: 329, type: !187)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !198, line: 329, column: 13)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !198, line: 328, column: 9)
!2243 = distinct !DILexicalBlock(scope: !2238, file: !198, line: 327, column: 9)
!2244 = !DILocalVariable(name: "scratch_size", scope: !2231, file: !198, line: 339, type: !187)
!2245 = !DILocalVariable(name: "buf_hpel", scope: !2246, file: !198, line: 342, type: !187)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !198, line: 341, column: 5)
!2247 = distinct !DILexicalBlock(scope: !2231, file: !198, line: 340, column: 9)
!2248 = !DILocalVariable(name: "buf_ssim", scope: !2246, file: !198, line: 343, type: !187)
!2249 = !DILocalVariable(name: "me_range", scope: !2246, file: !198, line: 344, type: !187)
!2250 = !DILocalVariable(name: "buf_tesa", scope: !2246, file: !198, line: 345, type: !187)
!2251 = !DILocalVariable(name: "buf_nnz", scope: !2246, file: !198, line: 347, type: !187)
!2252 = !DILocalVariable(name: "buf_mbtree", scope: !2231, file: !198, line: 350, type: !187)
!2253 = !DILabel(scope: !2231, name: "fail", file: !198, line: 355)
!2254 = !DILocation(line: 0, scope: !2231)
!2255 = !DILocation(line: 326, column: 10, scope: !2239)
!2256 = !DILocation(line: 326, column: 9, scope: !2231)
!2257 = !DILocation(line: 0, scope: !2238)
!2258 = !DILocation(line: 327, column: 39, scope: !2243)
!2259 = !DILocation(line: 327, column: 27, scope: !2243)
!2260 = !DILocation(line: 327, column: 9, scope: !2238)
!2261 = !DILocation(line: 327, column: 54, scope: !2243)
!2262 = distinct !{!2262, !2260, !2263, !1912, !1913}
!2263 = !DILocation(line: 336, column: 9, scope: !2238)
!2264 = !DILocation(line: 0, scope: !2241)
!2265 = !DILocation(line: 329, column: 13, scope: !2241)
!2266 = !DILocation(line: 332, column: 17, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !198, line: 332, column: 17)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !198, line: 332, column: 17)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !198, line: 330, column: 13)
!2270 = distinct !DILexicalBlock(scope: !2241, file: !198, line: 329, column: 13)
!2271 = !DILocation(line: 332, column: 17, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !198, line: 332, column: 17)
!2273 = !DILocation(line: 332, column: 17, scope: !2268)
!2274 = !DILocation(line: 333, column: 46, scope: !2269)
!2275 = !DILocation(line: 329, column: 37, scope: !2270)
!2276 = !DILocation(line: 329, column: 31, scope: !2270)
!2277 = distinct !{!2277, !2265, !2278, !1912, !1913}
!2278 = !DILocation(line: 334, column: 13, scope: !2241)
!2279 = !DILocation(line: 335, column: 13, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2242, file: !198, line: 335, column: 13)
!2281 = !DILocation(line: 335, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2280, file: !198, line: 335, column: 13)
!2283 = !DILocation(line: 342, column: 28, scope: !2246)
!2284 = !DILocation(line: 342, column: 25, scope: !2246)
!2285 = !DILocation(line: 342, column: 39, scope: !2246)
!2286 = !{!1495, !1501, i64 14688}
!2287 = !DILocation(line: 342, column: 45, scope: !2246)
!2288 = !DILocation(line: 342, column: 60, scope: !2246)
!2289 = !DILocation(line: 0, scope: !2246)
!2290 = !DILocation(line: 343, column: 41, scope: !2246)
!2291 = !{!1495, !1497, i64 480}
!2292 = !DILocation(line: 343, column: 64, scope: !2246)
!2293 = !{!1495, !1497, i64 20}
!2294 = !DILocation(line: 343, column: 71, scope: !2246)
!2295 = !DILocation(line: 343, column: 73, scope: !2246)
!2296 = !DILocation(line: 343, column: 52, scope: !2246)
!2297 = !DILocation(line: 343, column: 77, scope: !2246)
!2298 = !DILocation(line: 344, column: 24, scope: !2246)
!2299 = !{!1495, !1497, i64 416}
!2300 = !{!1495, !1497, i64 420}
!2301 = !DILocation(line: 345, column: 42, scope: !2246)
!2302 = !{!1495, !1497, i64 412}
!2303 = !DILocation(line: 345, column: 54, scope: !2246)
!2304 = !DILocation(line: 346, column: 23, scope: !2246)
!2305 = !DILocation(line: 346, column: 30, scope: !2246)
!2306 = !DILocation(line: 346, column: 59, scope: !2246)
!2307 = !DILocation(line: 346, column: 63, scope: !2246)
!2308 = !DILocation(line: 346, column: 78, scope: !2246)
!2309 = !DILocation(line: 346, column: 48, scope: !2246)
!2310 = !DILocation(line: 345, column: 24, scope: !2246)
!2311 = !DILocation(line: 347, column: 33, scope: !2246)
!2312 = !DILocation(line: 347, column: 23, scope: !2246)
!2313 = !DILocation(line: 347, column: 46, scope: !2246)
!2314 = !{!1495, !1501, i64 3328}
!2315 = !DILocation(line: 347, column: 51, scope: !2246)
!2316 = !{!2317, !1497, i64 60}
!2317 = !{!"", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1497, i64 12, !1497, i64 16, !1497, i64 20, !1497, i64 24, !1497, i64 28, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1497, i64 48, !1497, i64 52, !1497, i64 56, !1497, i64 60, !1497, i64 64, !1498, i64 72}
!2318 = !DILocation(line: 347, column: 78, scope: !2246)
!2319 = !DILocation(line: 347, column: 83, scope: !2246)
!2320 = !DILocation(line: 347, column: 98, scope: !2246)
!2321 = !DILocation(line: 347, column: 72, scope: !2246)
!2322 = !DILocation(line: 348, column: 24, scope: !2246)
!2323 = !DILocation(line: 350, column: 34, scope: !2231)
!2324 = !{!1495, !1497, i64 552}
!2325 = !DILocation(line: 350, column: 51, scope: !2231)
!2326 = !DILocation(line: 350, column: 56, scope: !2231)
!2327 = !DILocation(line: 350, column: 66, scope: !2231)
!2328 = !DILocation(line: 350, column: 69, scope: !2231)
!2329 = !DILocation(line: 350, column: 44, scope: !2231)
!2330 = !DILocation(line: 350, column: 74, scope: !2231)
!2331 = !DILocation(line: 351, column: 20, scope: !2231)
!2332 = !DILocation(line: 352, column: 5, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2231, file: !198, line: 352, column: 5)
!2334 = !{!1495, !1501, i64 31176}
!2335 = !DILocation(line: 352, column: 5, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2333, file: !198, line: 352, column: 5)
!2337 = !DILocation(line: 355, column: 1, scope: !2231)
!2338 = !DILocation(line: 356, column: 5, scope: !2231)
!2339 = !DILocation(line: 357, column: 1, scope: !2231)
!2340 = distinct !DISubprogram(name: "x264_macroblock_thread_free", scope: !198, file: !198, line: 359, type: !199, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2341 = !{!2342, !2343, !2344, !2347}
!2342 = !DILocalVariable(name: "h", arg: 1, scope: !2340, file: !198, line: 359, type: !201)
!2343 = !DILocalVariable(name: "b_lookahead", arg: 2, scope: !2340, file: !198, line: 359, type: !187)
!2344 = !DILocalVariable(name: "i", scope: !2345, file: !198, line: 362, type: !187)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !198, line: 362, column: 9)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !198, line: 361, column: 9)
!2347 = !DILocalVariable(name: "j", scope: !2348, file: !198, line: 365, type: !187)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !198, line: 365, column: 13)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !198, line: 363, column: 9)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !198, line: 362, column: 9)
!2351 = !DILocation(line: 0, scope: !2340)
!2352 = !DILocation(line: 361, column: 10, scope: !2346)
!2353 = !DILocation(line: 361, column: 9, scope: !2340)
!2354 = !DILocation(line: 0, scope: !2345)
!2355 = !DILocation(line: 362, column: 39, scope: !2350)
!2356 = !DILocation(line: 362, column: 27, scope: !2350)
!2357 = !DILocation(line: 362, column: 9, scope: !2345)
!2358 = !DILocation(line: 364, column: 24, scope: !2349)
!2359 = !DILocation(line: 364, column: 13, scope: !2349)
!2360 = !DILocation(line: 0, scope: !2348)
!2361 = !DILocation(line: 365, column: 13, scope: !2348)
!2362 = !DILocation(line: 362, column: 54, scope: !2350)
!2363 = distinct !{!2363, !2357, !2364, !1912, !1913}
!2364 = !DILocation(line: 367, column: 9, scope: !2345)
!2365 = !DILocation(line: 366, column: 28, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2348, file: !198, line: 365, column: 13)
!2367 = !DILocation(line: 366, column: 57, scope: !2366)
!2368 = !DILocation(line: 366, column: 17, scope: !2366)
!2369 = !DILocation(line: 365, column: 37, scope: !2366)
!2370 = !DILocation(line: 365, column: 31, scope: !2366)
!2371 = distinct !{!2371, !2361, !2372, !1912, !1913}
!2372 = !DILocation(line: 366, column: 61, scope: !2348)
!2373 = !DILocation(line: 368, column: 19, scope: !2340)
!2374 = !DILocation(line: 368, column: 5, scope: !2340)
!2375 = !DILocation(line: 369, column: 1, scope: !2340)
!2376 = distinct !DISubprogram(name: "x264_macroblock_slice_init", scope: !198, file: !198, line: 371, type: !1886, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2377)
!2377 = !{!2378, !2379, !2381, !2385, !2387, !2390, !2392, !2395, !2398, !2399, !2400}
!2378 = !DILocalVariable(name: "h", arg: 1, scope: !2376, file: !198, line: 371, type: !201)
!2379 = !DILocalVariable(name: "i", scope: !2380, file: !198, line: 383, type: !187)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !198, line: 383, column: 5)
!2381 = !DILocalVariable(name: "i", scope: !2382, file: !198, line: 387, type: !187)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !198, line: 387, column: 9)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !198, line: 386, column: 5)
!2384 = distinct !DILexicalBlock(scope: !2376, file: !198, line: 385, column: 9)
!2385 = !DILocalVariable(name: "i", scope: !2386, file: !198, line: 392, type: !187)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !198, line: 392, column: 9)
!2387 = !DILocalVariable(name: "poc", scope: !2388, file: !198, line: 394, type: !187)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !198, line: 393, column: 9)
!2389 = distinct !DILexicalBlock(scope: !2386, file: !198, line: 392, column: 9)
!2390 = !DILocalVariable(name: "j", scope: !2391, file: !198, line: 396, type: !187)
!2391 = distinct !DILexicalBlock(scope: !2388, file: !198, line: 396, column: 13)
!2392 = !DILocalVariable(name: "field", scope: !2393, file: !198, line: 411, type: !187)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !198, line: 411, column: 9)
!2394 = distinct !DILexicalBlock(scope: !2376, file: !198, line: 410, column: 9)
!2395 = !DILocalVariable(name: "curpoc", scope: !2396, file: !198, line: 413, type: !187)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !198, line: 412, column: 9)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !198, line: 411, column: 9)
!2398 = !DILocalVariable(name: "refpoc", scope: !2396, file: !198, line: 414, type: !187)
!2399 = !DILocalVariable(name: "delta", scope: !2396, file: !198, line: 417, type: !187)
!2400 = !DILocalVariable(name: "i", scope: !2401, file: !198, line: 424, type: !187)
!2401 = distinct !DILexicalBlock(scope: !2376, file: !198, line: 424, column: 5)
!2402 = !DILocation(line: 0, scope: !2376)
!2403 = !DILocation(line: 373, column: 22, scope: !2376)
!2404 = !DILocation(line: 373, column: 28, scope: !2376)
!2405 = !DILocation(line: 373, column: 19, scope: !2376)
!2406 = !DILocation(line: 373, column: 11, scope: !2376)
!2407 = !DILocation(line: 373, column: 17, scope: !2376)
!2408 = !DILocation(line: 374, column: 19, scope: !2376)
!2409 = !DILocation(line: 374, column: 5, scope: !2376)
!2410 = !DILocation(line: 374, column: 17, scope: !2376)
!2411 = !DILocation(line: 375, column: 32, scope: !2376)
!2412 = !{!2413, !1501, i64 3568}
!2413 = !{!"x264_frame", !1497, i64 0, !1497, i64 4, !1497, i64 8, !1507, i64 16, !1507, i64 24, !1497, i64 32, !1497, i64 36, !1497, i64 40, !1497, i64 44, !1501, i64 48, !1497, i64 56, !1497, i64 60, !1497, i64 64, !1497, i64 68, !1497, i64 72, !1497, i64 76, !1497, i64 80, !1498, i64 84, !1498, i64 85, !1498, i64 86, !1503, i64 88, !1503, i64 92, !1497, i64 96, !1497, i64 100, !1498, i64 104, !1498, i64 116, !1498, i64 128, !1497, i64 140, !1497, i64 144, !1497, i64 148, !1498, i64 152, !1498, i64 176, !1498, i64 208, !1501, i64 240, !1498, i64 248, !1498, i64 280, !1498, i64 320, !1498, i64 3392, !1497, i64 3520, !1501, i64 3528, !1501, i64 3536, !1501, i64 3544, !1498, i64 3552, !1501, i64 3568, !1498, i64 3576, !1498, i64 3848, !1498, i64 6440, !1498, i64 6712, !1498, i64 6728, !1498, i64 6736, !1498, i64 6864, !1498, i64 6868, !1498, i64 8164, !1497, i64 9460, !1498, i64 9464, !1498, i64 9536, !1501, i64 12128, !1501, i64 12136, !1501, i64 12144, !1501, i64 12152, !1501, i64 12160, !1497, i64 12168, !1501, i64 12176, !1501, i64 12184, !1501, i64 12192, !1497, i64 12200, !1498, i64 12204, !1497, i64 12276, !1507, i64 12280, !2414, i64 12288, !1498, i64 12320, !1498, i64 12572, !1498, i64 13576, !1497, i64 15584, !1497, i64 15588, !1497, i64 15592, !1497, i64 15596, !1497, i64 15600, !1497, i64 15604, !1497, i64 15608, !1503, i64 15612, !1497, i64 15616, !1497, i64 15620, !1497, i64 15624}
!2414 = !{!"", !1517, i64 0, !1517, i64 8, !1517, i64 16, !1517, i64 24}
!2415 = !DILocation(line: 375, column: 11, scope: !2376)
!2416 = !DILocation(line: 375, column: 21, scope: !2376)
!2417 = !DILocation(line: 376, column: 29, scope: !2376)
!2418 = !DILocation(line: 376, column: 20, scope: !2376)
!2419 = !DILocation(line: 376, column: 11, scope: !2376)
!2420 = !DILocation(line: 376, column: 18, scope: !2376)
!2421 = !DILocation(line: 377, column: 20, scope: !2376)
!2422 = !DILocation(line: 377, column: 5, scope: !2376)
!2423 = !DILocation(line: 377, column: 18, scope: !2376)
!2424 = !DILocation(line: 378, column: 27, scope: !2376)
!2425 = !{!2413, !1501, i64 3536}
!2426 = !DILocation(line: 378, column: 11, scope: !2376)
!2427 = !DILocation(line: 378, column: 16, scope: !2376)
!2428 = !{!1495, !1501, i64 16616}
!2429 = !DILocation(line: 379, column: 32, scope: !2376)
!2430 = !{!2413, !1501, i64 3544}
!2431 = !DILocation(line: 379, column: 11, scope: !2376)
!2432 = !DILocation(line: 379, column: 21, scope: !2376)
!2433 = !{!1495, !1501, i64 16624}
!2434 = !DILocation(line: 381, column: 28, scope: !2376)
!2435 = !{!1495, !1497, i64 14696}
!2436 = !DILocation(line: 381, column: 14, scope: !2376)
!2437 = !DILocation(line: 381, column: 23, scope: !2376)
!2438 = !DILocation(line: 382, column: 28, scope: !2376)
!2439 = !{!1495, !1497, i64 14856}
!2440 = !DILocation(line: 382, column: 5, scope: !2376)
!2441 = !DILocation(line: 382, column: 23, scope: !2376)
!2442 = !DILocation(line: 0, scope: !2380)
!2443 = !DILocation(line: 383, column: 28, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2380, file: !198, line: 383, column: 5)
!2445 = !DILocation(line: 383, column: 23, scope: !2444)
!2446 = !DILocation(line: 383, column: 5, scope: !2380)
!2447 = !DILocation(line: 385, column: 15, scope: !2384)
!2448 = !DILocation(line: 385, column: 22, scope: !2384)
!2449 = !DILocation(line: 385, column: 9, scope: !2376)
!2450 = !DILocation(line: 0, scope: !2382)
!2451 = !DILocation(line: 387, column: 32, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2382, file: !198, line: 387, column: 9)
!2453 = !DILocation(line: 387, column: 27, scope: !2452)
!2454 = !DILocation(line: 387, column: 9, scope: !2382)
!2455 = !DILocation(line: 384, column: 34, scope: !2444)
!2456 = !DILocation(line: 384, column: 47, scope: !2444)
!2457 = !{!2413, !1497, i64 0}
!2458 = !DILocation(line: 384, column: 9, scope: !2444)
!2459 = !DILocation(line: 384, column: 32, scope: !2444)
!2460 = !DILocation(line: 383, column: 37, scope: !2444)
!2461 = distinct !{!2461, !2446, !2462, !1912, !1913}
!2462 = !DILocation(line: 384, column: 47, scope: !2380)
!2463 = !DILocation(line: 390, column: 9, scope: !2383)
!2464 = !DILocation(line: 390, column: 30, scope: !2383)
!2465 = !DILocation(line: 391, column: 30, scope: !2383)
!2466 = !DILocation(line: 0, scope: !2386)
!2467 = !DILocation(line: 392, column: 29, scope: !2389)
!2468 = !DILocation(line: 392, column: 27, scope: !2389)
!2469 = !DILocation(line: 392, column: 9, scope: !2386)
!2470 = !DILocation(line: 396, column: 13, scope: !2391)
!2471 = !DILocation(line: 394, column: 23, scope: !2388)
!2472 = !DILocation(line: 0, scope: !2388)
!2473 = !DILocation(line: 395, column: 13, scope: !2388)
!2474 = !DILocation(line: 395, column: 33, scope: !2388)
!2475 = !DILocation(line: 0, scope: !2391)
!2476 = !DILocation(line: 397, column: 21, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !198, line: 397, column: 21)
!2478 = distinct !DILexicalBlock(scope: !2391, file: !198, line: 396, column: 13)
!2479 = !DILocation(line: 397, column: 34, scope: !2477)
!2480 = !DILocation(line: 397, column: 40, scope: !2477)
!2481 = !DILocation(line: 397, column: 21, scope: !2478)
!2482 = !DILocation(line: 396, column: 45, scope: !2478)
!2483 = !DILocation(line: 396, column: 31, scope: !2478)
!2484 = distinct !{!2484, !2470, !2485, !1912, !1913}
!2485 = !DILocation(line: 401, column: 17, scope: !2391)
!2486 = !DILocation(line: 399, column: 43, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2477, file: !198, line: 398, column: 17)
!2488 = !DILocation(line: 399, column: 41, scope: !2487)
!2489 = !DILocation(line: 400, column: 21, scope: !2487)
!2490 = !DILocation(line: 392, column: 53, scope: !2389)
!2491 = distinct !{!2491, !2469, !2492, !1912, !1913}
!2492 = !DILocation(line: 402, column: 9, scope: !2386)
!2493 = !DILocation(line: 388, column: 38, scope: !2452)
!2494 = !DILocation(line: 388, column: 51, scope: !2452)
!2495 = !DILocation(line: 388, column: 13, scope: !2452)
!2496 = !DILocation(line: 388, column: 36, scope: !2452)
!2497 = !DILocation(line: 387, column: 41, scope: !2452)
!2498 = distinct !{!2498, !2454, !2499, !1912, !1913}
!2499 = !DILocation(line: 388, column: 51, scope: !2382)
!2500 = !DILocation(line: 404, column: 15, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2376, file: !198, line: 404, column: 9)
!2502 = !DILocation(line: 404, column: 22, scope: !2501)
!2503 = !DILocation(line: 404, column: 9, scope: !2376)
!2504 = !DILocation(line: 405, column: 29, scope: !2501)
!2505 = !DILocation(line: 405, column: 9, scope: !2501)
!2506 = !DILocation(line: 408, column: 25, scope: !2376)
!2507 = !DILocation(line: 408, column: 5, scope: !2376)
!2508 = !DILocation(line: 410, column: 12, scope: !2394)
!2509 = !DILocation(line: 410, column: 19, scope: !2394)
!2510 = !{!1495, !1497, i64 7268}
!2511 = !DILocation(line: 410, column: 9, scope: !2376)
!2512 = !DILocation(line: 0, scope: !2393)
!2513 = !{!1495, !1497, i64 7288}
!2514 = !DILocation(line: 411, column: 9, scope: !2393)
!2515 = !DILocation(line: 411, column: 35, scope: !2397)
!2516 = !DILocation(line: 0, scope: !2396)
!2517 = !DILocation(line: 415, column: 31, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2396, file: !198, line: 415, column: 17)
!2519 = !DILocation(line: 417, column: 32, scope: !2396)
!2520 = !DILocation(line: 419, column: 55, scope: !2396)
!2521 = !DILocation(line: 419, column: 48, scope: !2396)
!2522 = !DILocation(line: 419, column: 59, scope: !2396)
!2523 = !DILocation(line: 419, column: 43, scope: !2396)
!2524 = !DILocation(line: 419, column: 13, scope: !2396)
!2525 = !DILocation(line: 419, column: 41, scope: !2396)
!2526 = !DILocation(line: 411, column: 58, scope: !2397)
!2527 = distinct !{!2527, !2514, !2528, !1912, !1913}
!2528 = !DILocation(line: 420, column: 9, scope: !2393)
!2529 = !DILocation(line: 422, column: 5, scope: !2376)
!2530 = !DILocation(line: 422, column: 27, scope: !2376)
!2531 = !DILocation(line: 423, column: 5, scope: !2376)
!2532 = !DILocation(line: 423, column: 27, scope: !2376)
!2533 = !DILocation(line: 0, scope: !2401)
!2534 = !DILocation(line: 424, column: 23, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2401, file: !198, line: 424, column: 5)
!2536 = !DILocation(line: 424, column: 5, scope: !2401)
!2537 = !DILocation(line: 429, column: 13, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2535, file: !198, line: 425, column: 5)
!2539 = !DILocation(line: 430, column: 36, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2538, file: !198, line: 429, column: 13)
!2541 = !DILocation(line: 430, column: 49, scope: !2540)
!2542 = !{!2413, !1497, i64 68}
!2543 = !DILocation(line: 430, column: 13, scope: !2540)
!2544 = !DILocation(line: 430, column: 34, scope: !2540)
!2545 = !DILocation(line: 424, column: 54, scope: !2535)
!2546 = distinct !{!2546, !2536, !2547, !1912, !1913}
!2547 = !DILocation(line: 433, column: 5, scope: !2401)
!2548 = !DILocation(line: 438, column: 5, scope: !2376)
!2549 = !DILocation(line: 438, column: 28, scope: !2376)
!2550 = !DILocation(line: 437, column: 5, scope: !2376)
!2551 = !DILocation(line: 437, column: 28, scope: !2376)
!2552 = !DILocation(line: 436, column: 5, scope: !2376)
!2553 = !DILocation(line: 436, column: 27, scope: !2376)
!2554 = !DILocation(line: 435, column: 5, scope: !2376)
!2555 = !DILocation(line: 435, column: 27, scope: !2376)
!2556 = !DILocation(line: 444, column: 5, scope: !2376)
!2557 = !DILocation(line: 444, column: 27, scope: !2376)
!2558 = !DILocation(line: 443, column: 5, scope: !2376)
!2559 = !DILocation(line: 443, column: 28, scope: !2376)
!2560 = !DILocation(line: 442, column: 5, scope: !2376)
!2561 = !DILocation(line: 442, column: 28, scope: !2376)
!2562 = !DILocation(line: 441, column: 5, scope: !2376)
!2563 = !DILocation(line: 441, column: 28, scope: !2376)
!2564 = !DILocation(line: 440, column: 5, scope: !2376)
!2565 = !DILocation(line: 440, column: 27, scope: !2376)
!2566 = !DILocation(line: 439, column: 5, scope: !2376)
!2567 = !DILocation(line: 439, column: 27, scope: !2376)
!2568 = !DILocation(line: 445, column: 1, scope: !2376)
!2569 = !DILocation(line: 432, column: 48, scope: !2540)
!2570 = !DILocation(line: 432, column: 38, scope: !2540)
!2571 = !DILocation(line: 432, column: 54, scope: !2540)
!2572 = !DILocation(line: 432, column: 69, scope: !2540)
!2573 = !DILocation(line: 432, column: 78, scope: !2540)
!2574 = !DILocation(line: 432, column: 74, scope: !2540)
!2575 = !DILocation(line: 432, column: 36, scope: !2540)
!2576 = !DILocation(line: 432, column: 13, scope: !2540)
!2577 = !DILocation(line: 432, column: 34, scope: !2540)
!2578 = distinct !DISubprogram(name: "x264_macroblock_thread_init", scope: !198, file: !198, line: 447, type: !1886, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2579)
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "h", arg: 1, scope: !2578, file: !198, line: 447, type: !201)
!2581 = !DILocation(line: 0, scope: !2578)
!2582 = !DILocation(line: 449, column: 42, scope: !2578)
!2583 = !DILocation(line: 449, column: 11, scope: !2578)
!2584 = !DILocation(line: 449, column: 23, scope: !2578)
!2585 = !{!1495, !1497, i64 16404}
!2586 = !DILocation(line: 450, column: 46, scope: !2578)
!2587 = !{!1495, !1497, i64 428}
!2588 = !DILocation(line: 450, column: 11, scope: !2578)
!2589 = !DILocation(line: 450, column: 27, scope: !2578)
!2590 = !{!1495, !1497, i64 16408}
!2591 = !DILocation(line: 451, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2578, file: !198, line: 451, column: 9)
!2593 = !DILocation(line: 451, column: 22, scope: !2592)
!2594 = !DILocation(line: 451, column: 38, scope: !2592)
!2595 = !DILocation(line: 451, column: 69, scope: !2592)
!2596 = !DILocation(line: 452, column: 30, scope: !2592)
!2597 = !DILocation(line: 452, column: 9, scope: !2592)
!2598 = !DILocation(line: 453, column: 42, scope: !2578)
!2599 = !{!1495, !1497, i64 432}
!2600 = !DILocation(line: 453, column: 25, scope: !2578)
!2601 = !DILocation(line: 453, column: 54, scope: !2578)
!2602 = !DILocation(line: 454, column: 50, scope: !2578)
!2603 = !DILocation(line: 453, column: 11, scope: !2578)
!2604 = !DILocation(line: 453, column: 23, scope: !2578)
!2605 = !{!1495, !1497, i64 16412}
!2606 = !DILocation(line: 455, column: 57, scope: !2578)
!2607 = !DILocation(line: 456, column: 45, scope: !2578)
!2608 = !{!1495, !1497, i64 448}
!2609 = !DILocation(line: 456, column: 28, scope: !2578)
!2610 = !DILocation(line: 456, column: 60, scope: !2578)
!2611 = !DILocation(line: 456, column: 76, scope: !2578)
!2612 = !DILocation(line: 455, column: 11, scope: !2578)
!2613 = !DILocation(line: 455, column: 26, scope: !2578)
!2614 = !{!1495, !1497, i64 16424}
!2615 = !DILocation(line: 469, column: 33, scope: !2578)
!2616 = !DILocation(line: 469, column: 15, scope: !2578)
!2617 = !DILocation(line: 469, column: 25, scope: !2578)
!2618 = !DILocation(line: 470, column: 46, scope: !2578)
!2619 = !DILocation(line: 470, column: 5, scope: !2578)
!2620 = !DILocation(line: 470, column: 25, scope: !2578)
!2621 = !DILocation(line: 471, column: 63, scope: !2578)
!2622 = !DILocation(line: 471, column: 5, scope: !2578)
!2623 = !DILocation(line: 471, column: 25, scope: !2578)
!2624 = !DILocation(line: 472, column: 37, scope: !2578)
!2625 = !DILocation(line: 472, column: 46, scope: !2578)
!2626 = !DILocation(line: 472, column: 15, scope: !2578)
!2627 = !DILocation(line: 472, column: 25, scope: !2578)
!2628 = !DILocation(line: 473, column: 46, scope: !2578)
!2629 = !DILocation(line: 473, column: 5, scope: !2578)
!2630 = !DILocation(line: 473, column: 25, scope: !2578)
!2631 = !DILocation(line: 474, column: 63, scope: !2578)
!2632 = !DILocation(line: 474, column: 5, scope: !2578)
!2633 = !DILocation(line: 474, column: 25, scope: !2578)
!2634 = !DILocation(line: 475, column: 1, scope: !2578)
!2635 = distinct !DISubprogram(name: "x264_prefetch_fenc", scope: !198, file: !198, line: 477, type: !2636, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !201, !678, !187, !187}
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646}
!2639 = !DILocalVariable(name: "h", arg: 1, scope: !2635, file: !198, line: 477, type: !201)
!2640 = !DILocalVariable(name: "fenc", arg: 2, scope: !2635, file: !198, line: 477, type: !678)
!2641 = !DILocalVariable(name: "i_mb_x", arg: 3, scope: !2635, file: !198, line: 477, type: !187)
!2642 = !DILocalVariable(name: "i_mb_y", arg: 4, scope: !2635, file: !198, line: 477, type: !187)
!2643 = !DILocalVariable(name: "stride_y", scope: !2635, file: !198, line: 479, type: !187)
!2644 = !DILocalVariable(name: "stride_uv", scope: !2635, file: !198, line: 480, type: !187)
!2645 = !DILocalVariable(name: "off_y", scope: !2635, file: !198, line: 481, type: !187)
!2646 = !DILocalVariable(name: "off_uv", scope: !2635, file: !198, line: 482, type: !187)
!2647 = !DILocation(line: 0, scope: !2635)
!2648 = !DILocation(line: 479, column: 27, scope: !2635)
!2649 = !DILocation(line: 479, column: 21, scope: !2635)
!2650 = !DILocation(line: 480, column: 21, scope: !2635)
!2651 = !DILocation(line: 481, column: 39, scope: !2635)
!2652 = !DILocation(line: 481, column: 30, scope: !2635)
!2653 = !DILocation(line: 481, column: 20, scope: !2635)
!2654 = !DILocation(line: 482, column: 39, scope: !2635)
!2655 = !DILocation(line: 482, column: 30, scope: !2635)
!2656 = !DILocation(line: 482, column: 20, scope: !2635)
!2657 = !DILocation(line: 483, column: 11, scope: !2635)
!2658 = !{!1495, !1501, i64 32800}
!2659 = !DILocation(line: 483, column: 32, scope: !2635)
!2660 = !DILocation(line: 483, column: 26, scope: !2635)
!2661 = !DILocation(line: 483, column: 40, scope: !2635)
!2662 = !DILocation(line: 484, column: 47, scope: !2635)
!2663 = !DILocation(line: 484, column: 39, scope: !2635)
!2664 = !DILocation(line: 484, column: 26, scope: !2635)
!2665 = !DILocation(line: 484, column: 51, scope: !2635)
!2666 = !DILocation(line: 483, column: 5, scope: !2635)
!2667 = !DILocation(line: 485, column: 1, scope: !2635)
!2668 = distinct !DISubprogram(name: "x264_macroblock_cache_load", scope: !198, file: !198, line: 631, type: !2669, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !201, !187, !187}
!2671 = !{!2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2688, !2691, !2693, !2695, !2698, !2699, !2701, !2704, !2705, !2706, !2709, !2710, !2713, !2716, !2719}
!2672 = !DILocalVariable(name: "h", arg: 1, scope: !2668, file: !198, line: 631, type: !201)
!2673 = !DILocalVariable(name: "mb_x", arg: 2, scope: !2668, file: !198, line: 631, type: !187)
!2674 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2668, file: !198, line: 631, type: !187)
!2675 = !DILocalVariable(name: "left", scope: !2668, file: !198, line: 635, type: !187)
!2676 = !DILocalVariable(name: "top", scope: !2668, file: !198, line: 636, type: !187)
!2677 = !DILocalVariable(name: "top_y", scope: !2668, file: !198, line: 637, type: !187)
!2678 = !DILocalVariable(name: "top_8x8", scope: !2668, file: !198, line: 638, type: !187)
!2679 = !DILocalVariable(name: "top_4x4", scope: !2668, file: !198, line: 639, type: !187)
!2680 = !DILocalVariable(name: "i4x4", scope: !2668, file: !198, line: 643, type: !909)
!2681 = !DILocalVariable(name: "nnz", scope: !2668, file: !198, line: 644, type: !912)
!2682 = !DILocalVariable(name: "cbp", scope: !2668, file: !198, line: 645, type: !907)
!2683 = !DILocalVariable(name: "l", scope: !2684, file: !198, line: 697, type: !187)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !198, line: 697, column: 13)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !198, line: 696, column: 13)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !198, line: 674, column: 5)
!2687 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 673, column: 9)
!2688 = !DILocalVariable(name: "offset", scope: !2689, file: !198, line: 758, type: !187)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !198, line: 757, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 756, column: 9)
!2691 = !DILocalVariable(name: "i", scope: !2692, file: !198, line: 759, type: !187)
!2692 = distinct !DILexicalBlock(scope: !2689, file: !198, line: 759, column: 9)
!2693 = !DILocalVariable(name: "i", scope: !2694, file: !198, line: 761, type: !187)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !198, line: 761, column: 9)
!2695 = !DILocalVariable(name: "s8x8", scope: !2696, file: !198, line: 770, type: !187)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !198, line: 769, column: 5)
!2697 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 768, column: 9)
!2698 = !DILocalVariable(name: "s4x4", scope: !2696, file: !198, line: 771, type: !187)
!2699 = !DILocalVariable(name: "l", scope: !2700, file: !198, line: 773, type: !187)
!2700 = distinct !DILexicalBlock(scope: !2696, file: !198, line: 773, column: 9)
!2701 = !DILocalVariable(name: "mv", scope: !2702, file: !198, line: 775, type: !742)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !198, line: 774, column: 9)
!2703 = distinct !DILexicalBlock(scope: !2700, file: !198, line: 773, column: 9)
!2704 = !DILocalVariable(name: "ref", scope: !2702, file: !198, line: 776, type: !735)
!2705 = !DILocalVariable(name: "i8", scope: !2702, file: !198, line: 778, type: !187)
!2706 = !DILocalVariable(name: "ir", scope: !2707, file: !198, line: 817, type: !186)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !198, line: 816, column: 13)
!2708 = distinct !DILexicalBlock(scope: !2702, file: !198, line: 815, column: 17)
!2709 = !DILocalVariable(name: "iv", scope: !2707, file: !198, line: 818, type: !186)
!2710 = !DILocalVariable(name: "i", scope: !2711, file: !198, line: 831, type: !187)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !198, line: 831, column: 17)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !198, line: 830, column: 13)
!2713 = !DILocalVariable(name: "mvd", scope: !2714, file: !198, line: 840, type: !919)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !198, line: 839, column: 13)
!2715 = distinct !DILexicalBlock(scope: !2702, file: !198, line: 838, column: 17)
!2716 = !DILocalVariable(name: "i", scope: !2717, file: !198, line: 854, type: !187)
!2717 = distinct !DILexicalBlock(scope: !2718, file: !198, line: 854, column: 21)
!2718 = distinct !DILexicalBlock(scope: !2714, file: !198, line: 846, column: 21)
!2719 = !DILocalVariable(name: "skipbp", scope: !2720, file: !198, line: 866, type: !121)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !198, line: 865, column: 13)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !198, line: 864, column: 17)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !198, line: 861, column: 9)
!2723 = distinct !DILexicalBlock(scope: !2696, file: !198, line: 860, column: 13)
!2724 = !DILocation(line: 0, scope: !2668)
!2725 = !DILocalVariable(name: "h", arg: 1, scope: !2726, file: !198, line: 539, type: !201)
!2726 = distinct !DISubprogram(name: "x264_macroblock_cache_load_neighbours", scope: !198, file: !198, line: 539, type: !2669, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2727)
!2727 = !{!2725, !2728, !2729, !2730}
!2728 = !DILocalVariable(name: "mb_x", arg: 2, scope: !2726, file: !198, line: 539, type: !187)
!2729 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2726, file: !198, line: 539, type: !187)
!2730 = !DILocalVariable(name: "top", scope: !2726, file: !198, line: 541, type: !187)
!2731 = !DILocation(line: 0, scope: !2726, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 633, column: 5, scope: !2668)
!2733 = !DILocation(line: 541, column: 35, scope: !2726, inlinedAt: !2732)
!2734 = !DILocation(line: 541, column: 26, scope: !2726, inlinedAt: !2732)
!2735 = !DILocation(line: 541, column: 21, scope: !2726, inlinedAt: !2732)
!2736 = !DILocation(line: 541, column: 58, scope: !2726, inlinedAt: !2732)
!2737 = !DILocation(line: 541, column: 50, scope: !2726, inlinedAt: !2732)
!2738 = !DILocation(line: 541, column: 70, scope: !2726, inlinedAt: !2732)
!2739 = !DILocation(line: 543, column: 11, scope: !2726, inlinedAt: !2732)
!2740 = !DILocation(line: 543, column: 18, scope: !2726, inlinedAt: !2732)
!2741 = !{!1495, !1497, i64 16384}
!2742 = !DILocation(line: 544, column: 11, scope: !2726, inlinedAt: !2732)
!2743 = !DILocation(line: 544, column: 18, scope: !2726, inlinedAt: !2732)
!2744 = !DILocation(line: 545, column: 26, scope: !2726, inlinedAt: !2732)
!2745 = !DILocation(line: 545, column: 46, scope: !2726, inlinedAt: !2732)
!2746 = !DILocation(line: 545, column: 11, scope: !2726, inlinedAt: !2732)
!2747 = !DILocation(line: 545, column: 19, scope: !2726, inlinedAt: !2732)
!2748 = !{!1495, !1497, i64 16392}
!2749 = !DILocation(line: 546, column: 37, scope: !2726, inlinedAt: !2732)
!2750 = !DILocation(line: 546, column: 29, scope: !2726, inlinedAt: !2732)
!2751 = !DILocation(line: 546, column: 49, scope: !2726, inlinedAt: !2732)
!2752 = !DILocation(line: 546, column: 22, scope: !2726, inlinedAt: !2732)
!2753 = !DILocation(line: 546, column: 11, scope: !2726, inlinedAt: !2732)
!2754 = !DILocation(line: 546, column: 19, scope: !2726, inlinedAt: !2732)
!2755 = !{!1495, !1497, i64 16396}
!2756 = !DILocation(line: 547, column: 37, scope: !2726, inlinedAt: !2732)
!2757 = !DILocation(line: 547, column: 29, scope: !2726, inlinedAt: !2732)
!2758 = !DILocation(line: 547, column: 49, scope: !2726, inlinedAt: !2732)
!2759 = !DILocation(line: 547, column: 22, scope: !2726, inlinedAt: !2732)
!2760 = !DILocation(line: 547, column: 11, scope: !2726, inlinedAt: !2732)
!2761 = !DILocation(line: 547, column: 19, scope: !2726, inlinedAt: !2732)
!2762 = !{!1495, !1497, i64 16400}
!2763 = !DILocation(line: 548, column: 11, scope: !2726, inlinedAt: !2732)
!2764 = !DILocation(line: 548, column: 23, scope: !2726, inlinedAt: !2732)
!2765 = !{!1495, !1497, i64 16488}
!2766 = !DILocation(line: 549, column: 11, scope: !2726, inlinedAt: !2732)
!2767 = !DILocation(line: 549, column: 29, scope: !2726, inlinedAt: !2732)
!2768 = !{!1495, !1497, i64 16572}
!2769 = !DILocation(line: 550, column: 11, scope: !2726, inlinedAt: !2732)
!2770 = !DILocation(line: 550, column: 29, scope: !2726, inlinedAt: !2732)
!2771 = !{!1495, !1497, i64 16576}
!2772 = !DILocation(line: 551, column: 11, scope: !2726, inlinedAt: !2732)
!2773 = !DILocation(line: 552, column: 11, scope: !2726, inlinedAt: !2732)
!2774 = !DILocation(line: 553, column: 11, scope: !2726, inlinedAt: !2732)
!2775 = !DILocation(line: 554, column: 11, scope: !2726, inlinedAt: !2732)
!2776 = !DILocation(line: 555, column: 11, scope: !2726, inlinedAt: !2732)
!2777 = !DILocation(line: 557, column: 11, scope: !2726, inlinedAt: !2732)
!2778 = !DILocation(line: 558, column: 11, scope: !2726, inlinedAt: !2732)
!2779 = !DILocation(line: 560, column: 14, scope: !2780, inlinedAt: !2732)
!2780 = distinct !DILexicalBlock(scope: !2726, file: !198, line: 560, column: 9)
!2781 = !DILocation(line: 555, column: 25, scope: !2726, inlinedAt: !2732)
!2782 = !DILocation(line: 552, column: 24, scope: !2726, inlinedAt: !2732)
!2783 = !DILocation(line: 560, column: 9, scope: !2726, inlinedAt: !2732)
!2784 = !DILocation(line: 556, column: 11, scope: !2726, inlinedAt: !2732)
!2785 = !DILocation(line: 562, column: 33, scope: !2786, inlinedAt: !2732)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !198, line: 561, column: 5)
!2787 = !DILocation(line: 563, column: 44, scope: !2786, inlinedAt: !2732)
!2788 = !DILocation(line: 563, column: 28, scope: !2786, inlinedAt: !2732)
!2789 = !{!1495, !1497, i64 16600}
!2790 = !DILocation(line: 564, column: 38, scope: !2786, inlinedAt: !2732)
!2791 = !DILocation(line: 564, column: 32, scope: !2786, inlinedAt: !2732)
!2792 = !DILocation(line: 564, column: 30, scope: !2786, inlinedAt: !2732)
!2793 = !{!1495, !1497, i64 16584}
!2794 = !DILocation(line: 565, column: 35, scope: !2795, inlinedAt: !2732)
!2795 = distinct !DILexicalBlock(scope: !2786, file: !198, line: 565, column: 13)
!2796 = !{!1495, !1497, i64 7252}
!2797 = !DILocation(line: 565, column: 27, scope: !2795, inlinedAt: !2732)
!2798 = !DILocation(line: 565, column: 13, scope: !2786, inlinedAt: !2732)
!2799 = !DILocation(line: 567, column: 31, scope: !2800, inlinedAt: !2732)
!2800 = distinct !DILexicalBlock(scope: !2795, file: !198, line: 566, column: 9)
!2801 = !DILocation(line: 569, column: 27, scope: !2802, inlinedAt: !2732)
!2802 = distinct !DILexicalBlock(scope: !2800, file: !198, line: 569, column: 17)
!2803 = !{!1495, !1497, i64 140}
!2804 = !DILocation(line: 569, column: 18, scope: !2802, inlinedAt: !2732)
!2805 = !DILocation(line: 569, column: 47, scope: !2802, inlinedAt: !2732)
!2806 = !DILocation(line: 570, column: 41, scope: !2802, inlinedAt: !2732)
!2807 = !DILocation(line: 570, column: 17, scope: !2802, inlinedAt: !2732)
!2808 = !DILocation(line: 575, column: 13, scope: !2809, inlinedAt: !2732)
!2809 = distinct !DILexicalBlock(scope: !2726, file: !198, line: 575, column: 9)
!2810 = !{!1495, !1497, i64 1748}
!2811 = !DILocation(line: 575, column: 33, scope: !2809, inlinedAt: !2732)
!2812 = !DILocation(line: 575, column: 65, scope: !2809, inlinedAt: !2732)
!2813 = !DILocation(line: 575, column: 56, scope: !2809, inlinedAt: !2732)
!2814 = !DILocation(line: 575, column: 9, scope: !2726, inlinedAt: !2732)
!2815 = !DILocation(line: 577, column: 17, scope: !2816, inlinedAt: !2732)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !198, line: 577, column: 13)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !198, line: 576, column: 5)
!2818 = !DILocation(line: 577, column: 13, scope: !2817, inlinedAt: !2732)
!2819 = !DILocation(line: 579, column: 37, scope: !2820, inlinedAt: !2732)
!2820 = distinct !DILexicalBlock(scope: !2816, file: !198, line: 578, column: 9)
!2821 = !DILocation(line: 580, column: 31, scope: !2820, inlinedAt: !2732)
!2822 = !{!1495, !1497, i64 16604}
!2823 = !DILocation(line: 581, column: 41, scope: !2820, inlinedAt: !2732)
!2824 = !DILocation(line: 581, column: 35, scope: !2820, inlinedAt: !2732)
!2825 = !DILocation(line: 581, column: 33, scope: !2820, inlinedAt: !2732)
!2826 = !{!1495, !1497, i64 16580}
!2827 = !DILocation(line: 582, column: 30, scope: !2828, inlinedAt: !2732)
!2828 = distinct !DILexicalBlock(scope: !2820, file: !198, line: 582, column: 17)
!2829 = !DILocation(line: 582, column: 21, scope: !2828, inlinedAt: !2732)
!2830 = !DILocation(line: 582, column: 17, scope: !2820, inlinedAt: !2732)
!2831 = !DILocation(line: 584, column: 35, scope: !2832, inlinedAt: !2732)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !198, line: 583, column: 13)
!2833 = !DILocation(line: 586, column: 31, scope: !2834, inlinedAt: !2732)
!2834 = distinct !DILexicalBlock(scope: !2832, file: !198, line: 586, column: 21)
!2835 = !DILocation(line: 586, column: 22, scope: !2834, inlinedAt: !2732)
!2836 = !DILocation(line: 586, column: 51, scope: !2834, inlinedAt: !2732)
!2837 = !DILocation(line: 587, column: 45, scope: !2834, inlinedAt: !2732)
!2838 = !DILocation(line: 587, column: 21, scope: !2834, inlinedAt: !2732)
!2839 = !DILocation(line: 592, column: 17, scope: !2832, inlinedAt: !2732)
!2840 = !DILocation(line: 593, column: 17, scope: !2832, inlinedAt: !2732)
!2841 = !DILocation(line: 594, column: 17, scope: !2832, inlinedAt: !2732)
!2842 = !DILocation(line: 596, column: 17, scope: !2832, inlinedAt: !2732)
!2843 = !DILocation(line: 597, column: 17, scope: !2832, inlinedAt: !2732)
!2844 = !DILocation(line: 598, column: 13, scope: !2832, inlinedAt: !2732)
!2845 = !DILocation(line: 601, column: 22, scope: !2846, inlinedAt: !2732)
!2846 = distinct !DILexicalBlock(scope: !2817, file: !198, line: 601, column: 13)
!2847 = !DILocation(line: 601, column: 29, scope: !2846, inlinedAt: !2732)
!2848 = !DILocation(line: 603, column: 37, scope: !2849, inlinedAt: !2732)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !198, line: 602, column: 9)
!2850 = !DILocation(line: 604, column: 35, scope: !2849, inlinedAt: !2732)
!2851 = !{!1495, !1497, i64 16608}
!2852 = !DILocation(line: 605, column: 39, scope: !2849, inlinedAt: !2732)
!2853 = !DILocation(line: 605, column: 37, scope: !2849, inlinedAt: !2732)
!2854 = !{!1495, !1497, i64 16588}
!2855 = !DILocation(line: 606, column: 25, scope: !2856, inlinedAt: !2732)
!2856 = distinct !DILexicalBlock(scope: !2849, file: !198, line: 606, column: 17)
!2857 = !DILocation(line: 606, column: 17, scope: !2849, inlinedAt: !2732)
!2858 = !DILocation(line: 608, column: 35, scope: !2859, inlinedAt: !2732)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !198, line: 607, column: 13)
!2860 = !DILocation(line: 610, column: 31, scope: !2861, inlinedAt: !2732)
!2861 = distinct !DILexicalBlock(scope: !2859, file: !198, line: 610, column: 21)
!2862 = !DILocation(line: 610, column: 22, scope: !2861, inlinedAt: !2732)
!2863 = !DILocation(line: 610, column: 51, scope: !2861, inlinedAt: !2732)
!2864 = !DILocation(line: 611, column: 45, scope: !2861, inlinedAt: !2732)
!2865 = !DILocation(line: 611, column: 21, scope: !2861, inlinedAt: !2732)
!2866 = !DILocation(line: 615, column: 23, scope: !2867, inlinedAt: !2732)
!2867 = distinct !DILexicalBlock(scope: !2817, file: !198, line: 615, column: 13)
!2868 = !DILocation(line: 615, column: 28, scope: !2867, inlinedAt: !2732)
!2869 = !DILocation(line: 615, column: 39, scope: !2867, inlinedAt: !2732)
!2870 = !DILocation(line: 615, column: 18, scope: !2867, inlinedAt: !2732)
!2871 = !DILocation(line: 615, column: 43, scope: !2867, inlinedAt: !2732)
!2872 = !DILocation(line: 615, column: 50, scope: !2867, inlinedAt: !2732)
!2873 = !DILocation(line: 617, column: 37, scope: !2874, inlinedAt: !2732)
!2874 = distinct !DILexicalBlock(scope: !2867, file: !198, line: 616, column: 9)
!2875 = !DILocation(line: 618, column: 36, scope: !2874, inlinedAt: !2732)
!2876 = !{!1495, !1497, i64 16612}
!2877 = !DILocation(line: 619, column: 46, scope: !2874, inlinedAt: !2732)
!2878 = !DILocation(line: 619, column: 40, scope: !2874, inlinedAt: !2732)
!2879 = !DILocation(line: 619, column: 38, scope: !2874, inlinedAt: !2732)
!2880 = !{!1495, !1497, i64 16592}
!2881 = !DILocation(line: 620, column: 34, scope: !2882, inlinedAt: !2732)
!2882 = distinct !DILexicalBlock(scope: !2874, file: !198, line: 620, column: 17)
!2883 = !DILocation(line: 620, column: 25, scope: !2882, inlinedAt: !2732)
!2884 = !DILocation(line: 620, column: 17, scope: !2874, inlinedAt: !2732)
!2885 = !DILocation(line: 622, column: 35, scope: !2886, inlinedAt: !2732)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !198, line: 621, column: 13)
!2887 = !DILocation(line: 624, column: 31, scope: !2888, inlinedAt: !2732)
!2888 = distinct !DILexicalBlock(scope: !2886, file: !198, line: 624, column: 21)
!2889 = !DILocation(line: 624, column: 22, scope: !2888, inlinedAt: !2732)
!2890 = !DILocation(line: 624, column: 51, scope: !2888, inlinedAt: !2732)
!2891 = !DILocation(line: 625, column: 45, scope: !2888, inlinedAt: !2732)
!2892 = !DILocation(line: 625, column: 21, scope: !2888, inlinedAt: !2732)
!2893 = !DILocation(line: 648, column: 15, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 648, column: 9)
!2895 = !DILocation(line: 636, column: 22, scope: !2668)
!2896 = !DILocation(line: 638, column: 21, scope: !2668)
!2897 = !DILocation(line: 638, column: 27, scope: !2668)
!2898 = !DILocation(line: 638, column: 31, scope: !2668)
!2899 = !DILocation(line: 638, column: 54, scope: !2668)
!2900 = !DILocation(line: 638, column: 51, scope: !2668)
!2901 = !DILocation(line: 639, column: 21, scope: !2668)
!2902 = !DILocation(line: 639, column: 27, scope: !2668)
!2903 = !DILocation(line: 639, column: 31, scope: !2668)
!2904 = !DILocation(line: 639, column: 54, scope: !2668)
!2905 = !DILocation(line: 639, column: 51, scope: !2668)
!2906 = !DILocation(line: 643, column: 31, scope: !2668)
!2907 = !DILocation(line: 644, column: 32, scope: !2668)
!2908 = !DILocation(line: 645, column: 26, scope: !2668)
!2909 = !DILocation(line: 648, column: 27, scope: !2894)
!2910 = !DILocation(line: 648, column: 9, scope: !2668)
!2911 = !DILocation(line: 650, column: 33, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2894, file: !198, line: 649, column: 5)
!2913 = !DILocation(line: 650, column: 15, scope: !2912)
!2914 = !DILocation(line: 650, column: 21, scope: !2912)
!2915 = !DILocation(line: 650, column: 31, scope: !2912)
!2916 = !{!1495, !1497, i64 25776}
!2917 = !DILocation(line: 652, column: 9, scope: !2912)
!2918 = !DILocation(line: 655, column: 9, scope: !2912)
!2919 = !DILocation(line: 657, column: 68, scope: !2912)
!2920 = !DILocation(line: 657, column: 89, scope: !2912)
!2921 = !DILocation(line: 657, column: 66, scope: !2912)
!2922 = !DILocation(line: 658, column: 68, scope: !2912)
!2923 = !DILocation(line: 658, column: 89, scope: !2912)
!2924 = !DILocation(line: 659, column: 5, scope: !2912)
!2925 = !DILocation(line: 662, column: 15, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2894, file: !198, line: 661, column: 5)
!2927 = !DILocation(line: 662, column: 21, scope: !2926)
!2928 = !DILocation(line: 662, column: 31, scope: !2926)
!2929 = !DILocation(line: 665, column: 9, scope: !2926)
!2930 = !DILocation(line: 665, column: 67, scope: !2926)
!2931 = !DILocation(line: 668, column: 9, scope: !2926)
!2932 = !DILocation(line: 668, column: 66, scope: !2926)
!2933 = !DILocation(line: 669, column: 66, scope: !2926)
!2934 = !DILocation(line: 0, scope: !2894)
!2935 = !DILocation(line: 670, column: 9, scope: !2926)
!2936 = !DILocation(line: 670, column: 66, scope: !2926)
!2937 = !DILocation(line: 673, column: 27, scope: !2687)
!2938 = !DILocation(line: 673, column: 9, scope: !2668)
!2939 = !DILocation(line: 675, column: 34, scope: !2686)
!2940 = !DILocation(line: 675, column: 15, scope: !2686)
!2941 = !DILocation(line: 675, column: 21, scope: !2686)
!2942 = !DILocation(line: 675, column: 32, scope: !2686)
!2943 = !{!1495, !1497, i64 25780}
!2944 = !DILocation(line: 678, column: 62, scope: !2686)
!2945 = !DILocation(line: 678, column: 9, scope: !2686)
!2946 = !DILocation(line: 678, column: 60, scope: !2686)
!2947 = !DILocation(line: 679, column: 62, scope: !2686)
!2948 = !DILocation(line: 679, column: 9, scope: !2686)
!2949 = !DILocation(line: 679, column: 60, scope: !2686)
!2950 = !DILocation(line: 680, column: 62, scope: !2686)
!2951 = !DILocation(line: 680, column: 9, scope: !2686)
!2952 = !DILocation(line: 680, column: 60, scope: !2686)
!2953 = !DILocation(line: 681, column: 62, scope: !2686)
!2954 = !DILocation(line: 681, column: 9, scope: !2686)
!2955 = !DILocation(line: 681, column: 60, scope: !2686)
!2956 = !DILocation(line: 684, column: 58, scope: !2686)
!2957 = !DILocation(line: 684, column: 9, scope: !2686)
!2958 = !DILocation(line: 684, column: 56, scope: !2686)
!2959 = !DILocation(line: 685, column: 58, scope: !2686)
!2960 = !DILocation(line: 685, column: 9, scope: !2686)
!2961 = !DILocation(line: 685, column: 56, scope: !2686)
!2962 = !DILocation(line: 686, column: 58, scope: !2686)
!2963 = !DILocation(line: 686, column: 9, scope: !2686)
!2964 = !DILocation(line: 686, column: 56, scope: !2686)
!2965 = !DILocation(line: 687, column: 58, scope: !2686)
!2966 = !DILocation(line: 687, column: 9, scope: !2686)
!2967 = !DILocation(line: 687, column: 56, scope: !2686)
!2968 = !DILocation(line: 689, column: 60, scope: !2686)
!2969 = !DILocation(line: 689, column: 9, scope: !2686)
!2970 = !DILocation(line: 689, column: 58, scope: !2686)
!2971 = !DILocation(line: 690, column: 60, scope: !2686)
!2972 = !DILocation(line: 690, column: 9, scope: !2686)
!2973 = !DILocation(line: 690, column: 58, scope: !2686)
!2974 = !DILocation(line: 692, column: 62, scope: !2686)
!2975 = !DILocation(line: 692, column: 9, scope: !2686)
!2976 = !DILocation(line: 692, column: 60, scope: !2686)
!2977 = !DILocation(line: 693, column: 62, scope: !2686)
!2978 = !DILocation(line: 693, column: 9, scope: !2686)
!2979 = !DILocation(line: 693, column: 60, scope: !2686)
!2980 = !DILocation(line: 696, column: 19, scope: !2685)
!2981 = !DILocation(line: 696, column: 26, scope: !2685)
!2982 = !DILocation(line: 696, column: 13, scope: !2686)
!2983 = !DILocation(line: 0, scope: !2684)
!2984 = !DILocation(line: 697, column: 13, scope: !2684)
!2985 = !DILocation(line: 699, column: 17, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !198, line: 698, column: 13)
!2987 = distinct !DILexicalBlock(scope: !2684, file: !198, line: 697, column: 13)
!2988 = !DILocation(line: 702, column: 17, scope: !2986)
!2989 = !DILocation(line: 703, column: 17, scope: !2986)
!2990 = !DILocation(line: 704, column: 17, scope: !2986)
!2991 = !DILocation(line: 697, column: 70, scope: !2987)
!2992 = !DILocation(line: 697, column: 31, scope: !2987)
!2993 = distinct !{!2993, !2984, !2994, !1912, !1913}
!2994 = !DILocation(line: 705, column: 13, scope: !2684)
!2995 = !DILocation(line: 727, column: 12, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 727, column: 9)
!2997 = !DILocation(line: 727, column: 17, scope: !2996)
!2998 = !DILocation(line: 727, column: 9, scope: !2996)
!2999 = !DILocation(line: 727, column: 9, scope: !2668)
!3000 = !DILocation(line: 709, column: 15, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2687, file: !198, line: 708, column: 5)
!3002 = !DILocation(line: 709, column: 21, scope: !3001)
!3003 = !DILocation(line: 709, column: 32, scope: !3001)
!3004 = !DILocation(line: 714, column: 9, scope: !3001)
!3005 = !DILocation(line: 714, column: 60, scope: !3001)
!3006 = !DILocation(line: 713, column: 9, scope: !3001)
!3007 = !DILocation(line: 713, column: 60, scope: !3001)
!3008 = !DILocation(line: 712, column: 9, scope: !3001)
!3009 = !DILocation(line: 712, column: 60, scope: !3001)
!3010 = !DILocation(line: 711, column: 9, scope: !3001)
!3011 = !DILocation(line: 711, column: 60, scope: !3001)
!3012 = !DILocation(line: 724, column: 9, scope: !3001)
!3013 = !DILocation(line: 724, column: 60, scope: !3001)
!3014 = !DILocation(line: 723, column: 9, scope: !3001)
!3015 = !DILocation(line: 723, column: 60, scope: !3001)
!3016 = !DILocation(line: 722, column: 9, scope: !3001)
!3017 = !DILocation(line: 722, column: 58, scope: !3001)
!3018 = !DILocation(line: 721, column: 9, scope: !3001)
!3019 = !DILocation(line: 721, column: 58, scope: !3001)
!3020 = !DILocation(line: 720, column: 9, scope: !3001)
!3021 = !DILocation(line: 720, column: 56, scope: !3001)
!3022 = !DILocation(line: 719, column: 9, scope: !3001)
!3023 = !DILocation(line: 719, column: 56, scope: !3001)
!3024 = !DILocation(line: 718, column: 9, scope: !3001)
!3025 = !DILocation(line: 718, column: 56, scope: !3001)
!3026 = !DILocation(line: 717, column: 9, scope: !3001)
!3027 = !DILocation(line: 717, column: 56, scope: !3001)
!3028 = !DILocation(line: 730, column: 54, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2996, file: !198, line: 728, column: 5)
!3030 = !DILocation(line: 730, column: 48, scope: !3029)
!3031 = !DILocation(line: 730, column: 45, scope: !3029)
!3032 = !DILocation(line: 0, scope: !3029)
!3033 = !DILocation(line: 731, column: 44, scope: !3029)
!3034 = !DILocation(line: 731, column: 53, scope: !3029)
!3035 = !DILocation(line: 731, column: 47, scope: !3029)
!3036 = !DILocation(line: 731, column: 11, scope: !3029)
!3037 = !DILocation(line: 729, column: 21, scope: !3029)
!3038 = !DILocation(line: 729, column: 48, scope: !3029)
!3039 = !{!1495, !1497, i64 25768}
!3040 = !DILocation(line: 732, column: 5, scope: !3029)
!3041 = !DILocation(line: 734, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 734, column: 9)
!3043 = !DILocation(line: 734, column: 9, scope: !3042)
!3044 = !DILocation(line: 734, column: 9, scope: !2668)
!3045 = !DILocation(line: 736, column: 34, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !198, line: 735, column: 5)
!3047 = !DILocation(line: 736, column: 41, scope: !3046)
!3048 = !DILocation(line: 736, column: 19, scope: !3046)
!3049 = !DILocation(line: 736, column: 29, scope: !3046)
!3050 = !DILocation(line: 737, column: 34, scope: !3046)
!3051 = !DILocation(line: 737, column: 41, scope: !3046)
!3052 = !DILocation(line: 737, column: 9, scope: !3046)
!3053 = !DILocation(line: 737, column: 29, scope: !3046)
!3054 = !DILocation(line: 740, column: 13, scope: !3046)
!3055 = !DILocation(line: 740, column: 11, scope: !3046)
!3056 = !DILocation(line: 738, column: 21, scope: !3046)
!3057 = !DILocation(line: 738, column: 44, scope: !3046)
!3058 = !{!1495, !1497, i64 25772}
!3059 = !DILocation(line: 741, column: 5, scope: !3046)
!3060 = !DILocation(line: 743, column: 10, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !2668, file: !198, line: 743, column: 9)
!3062 = !DILocation(line: 743, column: 9, scope: !2668)
!3063 = !DILocation(line: 745, column: 33, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3061, file: !198, line: 744, column: 5)
!3065 = !DILocation(line: 745, column: 23, scope: !3064)
!3066 = !DILocation(line: 745, column: 44, scope: !3064)
!3067 = !DILocation(line: 745, column: 83, scope: !3064)
!3068 = !DILocalVariable(name: "dst", arg: 1, scope: !3069, file: !198, line: 487, type: !395)
!3069 = distinct !DISubprogram(name: "copy_column8", scope: !198, file: !198, line: 487, type: !1142, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3070 = !{!3068, !3071, !3072}
!3071 = !DILocalVariable(name: "src", arg: 2, scope: !3069, file: !198, line: 487, type: !395)
!3072 = !DILocalVariable(name: "i", scope: !3073, file: !198, line: 490, type: !187)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !198, line: 490, column: 5)
!3074 = !DILocation(line: 0, scope: !3069, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 745, column: 9, scope: !3064)
!3076 = !DILocation(line: 0, scope: !3073, inlinedAt: !3075)
!3077 = !DILocation(line: 490, column: 5, scope: !3073, inlinedAt: !3075)
!3078 = !DILocation(line: 491, column: 35, scope: !3079, inlinedAt: !3075)
!3079 = distinct !DILexicalBlock(scope: !3073, file: !198, line: 490, column: 5)
!3080 = !DILocation(line: 491, column: 30, scope: !3079, inlinedAt: !3075)
!3081 = !DILocation(line: 491, column: 9, scope: !3079, inlinedAt: !3075)
!3082 = !DILocation(line: 491, column: 28, scope: !3079, inlinedAt: !3075)
!3083 = !DILocation(line: 490, column: 30, scope: !3079, inlinedAt: !3075)
!3084 = !DILocation(line: 490, column: 24, scope: !3079, inlinedAt: !3075)
!3085 = distinct !{!3085, !3077, !3086, !1912, !1913}
!3086 = !DILocation(line: 491, column: 47, scope: !3073, inlinedAt: !3075)
!3087 = !DILocation(line: 746, column: 23, scope: !3064)
!3088 = !DILocation(line: 746, column: 44, scope: !3064)
!3089 = !DILocation(line: 746, column: 83, scope: !3064)
!3090 = !DILocation(line: 0, scope: !3069, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 746, column: 9, scope: !3064)
!3092 = !DILocation(line: 0, scope: !3073, inlinedAt: !3091)
!3093 = !DILocation(line: 490, column: 5, scope: !3073, inlinedAt: !3091)
!3094 = !DILocation(line: 491, column: 35, scope: !3079, inlinedAt: !3091)
!3095 = !DILocation(line: 491, column: 30, scope: !3079, inlinedAt: !3091)
!3096 = !DILocation(line: 491, column: 9, scope: !3079, inlinedAt: !3091)
!3097 = !DILocation(line: 491, column: 28, scope: !3079, inlinedAt: !3091)
!3098 = !DILocation(line: 490, column: 30, scope: !3079, inlinedAt: !3091)
!3099 = !DILocation(line: 490, column: 24, scope: !3079, inlinedAt: !3091)
!3100 = distinct !{!3100, !3093, !3101, !1912, !1913}
!3101 = !DILocation(line: 491, column: 47, scope: !3073, inlinedAt: !3091)
!3102 = !DILocation(line: 747, column: 23, scope: !3064)
!3103 = !DILocation(line: 747, column: 44, scope: !3064)
!3104 = !DILocation(line: 747, column: 83, scope: !3064)
!3105 = !DILocation(line: 0, scope: !3069, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 747, column: 9, scope: !3064)
!3107 = !DILocation(line: 0, scope: !3073, inlinedAt: !3106)
!3108 = !DILocation(line: 490, column: 5, scope: !3073, inlinedAt: !3106)
!3109 = !DILocation(line: 491, column: 35, scope: !3079, inlinedAt: !3106)
!3110 = !DILocation(line: 491, column: 30, scope: !3079, inlinedAt: !3106)
!3111 = !DILocation(line: 491, column: 9, scope: !3079, inlinedAt: !3106)
!3112 = !DILocation(line: 491, column: 28, scope: !3079, inlinedAt: !3106)
!3113 = !DILocation(line: 490, column: 30, scope: !3079, inlinedAt: !3106)
!3114 = !DILocation(line: 490, column: 24, scope: !3079, inlinedAt: !3106)
!3115 = distinct !{!3115, !3108, !3116, !1912, !1913}
!3116 = !DILocation(line: 491, column: 47, scope: !3073, inlinedAt: !3106)
!3117 = !DILocation(line: 748, column: 23, scope: !3064)
!3118 = !DILocation(line: 748, column: 44, scope: !3064)
!3119 = !DILocation(line: 748, column: 83, scope: !3064)
!3120 = !DILocation(line: 0, scope: !3069, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 748, column: 9, scope: !3064)
!3122 = !DILocation(line: 0, scope: !3073, inlinedAt: !3121)
!3123 = !DILocation(line: 490, column: 5, scope: !3073, inlinedAt: !3121)
!3124 = !DILocation(line: 491, column: 35, scope: !3079, inlinedAt: !3121)
!3125 = !DILocation(line: 491, column: 30, scope: !3079, inlinedAt: !3121)
!3126 = !DILocation(line: 491, column: 9, scope: !3079, inlinedAt: !3121)
!3127 = !DILocation(line: 491, column: 28, scope: !3079, inlinedAt: !3121)
!3128 = !DILocation(line: 490, column: 30, scope: !3079, inlinedAt: !3121)
!3129 = !DILocation(line: 490, column: 24, scope: !3079, inlinedAt: !3121)
!3130 = distinct !{!3130, !3123, !3131, !1912, !1913}
!3131 = !DILocation(line: 491, column: 47, scope: !3073, inlinedAt: !3121)
!3132 = !DILocation(line: 752, column: 5, scope: !2668)
!3133 = !DILocation(line: 753, column: 5, scope: !2668)
!3134 = !DILocation(line: 754, column: 5, scope: !2668)
!3135 = !DILocation(line: 756, column: 12, scope: !2690)
!3136 = !DILocation(line: 756, column: 18, scope: !2690)
!3137 = !{!2413, !1501, i64 240}
!3138 = !DILocation(line: 756, column: 9, scope: !2690)
!3139 = !DILocation(line: 756, column: 9, scope: !2668)
!3140 = !DILocation(line: 758, column: 51, scope: !2689)
!3141 = !DILocation(line: 758, column: 42, scope: !2689)
!3142 = !DILocation(line: 758, column: 40, scope: !2689)
!3143 = !DILocation(line: 758, column: 33, scope: !2689)
!3144 = !DILocation(line: 758, column: 25, scope: !2689)
!3145 = !DILocation(line: 0, scope: !2689)
!3146 = !DILocation(line: 0, scope: !2692)
!3147 = !DILocation(line: 759, column: 27, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !2692, file: !198, line: 759, column: 9)
!3149 = !DILocation(line: 759, column: 9, scope: !2692)
!3150 = !DILocation(line: 0, scope: !2694)
!3151 = !DILocation(line: 761, column: 27, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !2694, file: !198, line: 761, column: 9)
!3153 = !DILocation(line: 761, column: 9, scope: !2694)
!3154 = !DILocation(line: 760, column: 43, scope: !3148)
!3155 = !DILocation(line: 760, column: 56, scope: !3148)
!3156 = !DILocation(line: 760, column: 13, scope: !3148)
!3157 = !DILocation(line: 760, column: 40, scope: !3148)
!3158 = !DILocation(line: 759, column: 51, scope: !3148)
!3159 = distinct !{!3159, !3149, !3160, !1912, !1913}
!3160 = !DILocation(line: 760, column: 71, scope: !2692)
!3161 = !DILocation(line: 762, column: 43, scope: !3152)
!3162 = !DILocation(line: 762, column: 56, scope: !3152)
!3163 = !DILocation(line: 762, column: 13, scope: !3152)
!3164 = !DILocation(line: 762, column: 40, scope: !3152)
!3165 = !DILocation(line: 761, column: 51, scope: !3152)
!3166 = distinct !{!3166, !3153, !3167, !1912, !1913}
!3167 = !DILocation(line: 762, column: 71, scope: !2694)
!3168 = !DILocation(line: 765, column: 31, scope: !2668)
!3169 = !{!1495, !1501, i64 14680}
!3170 = !DILocation(line: 0, scope: !2635, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 765, column: 5, scope: !2668)
!3172 = !DILocation(line: 479, column: 27, scope: !2635, inlinedAt: !3171)
!3173 = !DILocation(line: 479, column: 21, scope: !2635, inlinedAt: !3171)
!3174 = !DILocation(line: 480, column: 21, scope: !2635, inlinedAt: !3171)
!3175 = !DILocation(line: 481, column: 39, scope: !2635, inlinedAt: !3171)
!3176 = !DILocation(line: 481, column: 30, scope: !2635, inlinedAt: !3171)
!3177 = !DILocation(line: 481, column: 20, scope: !2635, inlinedAt: !3171)
!3178 = !DILocation(line: 482, column: 39, scope: !2635, inlinedAt: !3171)
!3179 = !DILocation(line: 482, column: 30, scope: !2635, inlinedAt: !3171)
!3180 = !DILocation(line: 482, column: 20, scope: !2635, inlinedAt: !3171)
!3181 = !DILocation(line: 483, column: 11, scope: !2635, inlinedAt: !3171)
!3182 = !DILocation(line: 483, column: 32, scope: !2635, inlinedAt: !3171)
!3183 = !DILocation(line: 483, column: 26, scope: !2635, inlinedAt: !3171)
!3184 = !DILocation(line: 483, column: 40, scope: !2635, inlinedAt: !3171)
!3185 = !DILocation(line: 484, column: 47, scope: !2635, inlinedAt: !3171)
!3186 = !DILocation(line: 484, column: 39, scope: !2635, inlinedAt: !3171)
!3187 = !DILocation(line: 484, column: 26, scope: !2635, inlinedAt: !3171)
!3188 = !DILocation(line: 484, column: 51, scope: !2635, inlinedAt: !3171)
!3189 = !DILocation(line: 483, column: 5, scope: !2635, inlinedAt: !3171)
!3190 = !DILocation(line: 768, column: 15, scope: !2697)
!3191 = !DILocation(line: 768, column: 22, scope: !2697)
!3192 = !DILocation(line: 768, column: 9, scope: !2668)
!3193 = !DILocation(line: 770, column: 26, scope: !2696)
!3194 = !DILocation(line: 0, scope: !2696)
!3195 = !DILocation(line: 771, column: 26, scope: !2696)
!3196 = !DILocation(line: 0, scope: !2700)
!3197 = !DILocation(line: 773, column: 9, scope: !2700)
!3198 = !DILocation(line: 860, column: 13, scope: !2696)
!3199 = !DILocation(line: 775, column: 32, scope: !2702)
!3200 = !DILocation(line: 0, scope: !2702)
!3201 = !DILocation(line: 776, column: 27, scope: !2702)
!3202 = !DILocation(line: 779, column: 17, scope: !2702)
!3203 = !DILocation(line: 781, column: 42, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !198, line: 780, column: 13)
!3205 = distinct !DILexicalBlock(scope: !2702, file: !198, line: 779, column: 17)
!3206 = !DILocation(line: 781, column: 17, scope: !3204)
!3207 = !DILocation(line: 781, column: 40, scope: !3204)
!3208 = !DILocation(line: 782, column: 17, scope: !3204)
!3209 = !DILocation(line: 783, column: 13, scope: !3204)
!3210 = !DILocation(line: 786, column: 17, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3205, file: !198, line: 785, column: 13)
!3212 = !DILocation(line: 786, column: 40, scope: !3211)
!3213 = !DILocation(line: 0, scope: !3205)
!3214 = !DILocation(line: 787, column: 17, scope: !3211)
!3215 = !DILocation(line: 787, column: 46, scope: !3211)
!3216 = !DILocation(line: 791, column: 17, scope: !2702)
!3217 = !DILocation(line: 794, column: 44, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !198, line: 792, column: 13)
!3219 = distinct !DILexicalBlock(scope: !2702, file: !198, line: 791, column: 17)
!3220 = !DILocation(line: 794, column: 17, scope: !3218)
!3221 = !DILocation(line: 794, column: 42, scope: !3218)
!3222 = !DILocation(line: 793, column: 17, scope: !3218)
!3223 = !DILocation(line: 793, column: 42, scope: !3218)
!3224 = !DILocation(line: 796, column: 44, scope: !3218)
!3225 = !DILocation(line: 796, column: 17, scope: !3218)
!3226 = !DILocation(line: 796, column: 42, scope: !3218)
!3227 = !DILocation(line: 795, column: 17, scope: !3218)
!3228 = !DILocation(line: 795, column: 42, scope: !3218)
!3229 = !DILocation(line: 797, column: 17, scope: !3218)
!3230 = !{i64 0, i64 16, !1528}
!3231 = !DILocation(line: 798, column: 13, scope: !3218)
!3232 = !DILocation(line: 801, column: 17, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3219, file: !198, line: 800, column: 13)
!3234 = !DILocation(line: 802, column: 17, scope: !3233)
!3235 = !DILocation(line: 801, column: 49, scope: !3233)
!3236 = !DILocation(line: 802, column: 48, scope: !3233)
!3237 = !DILocation(line: 806, column: 17, scope: !2702)
!3238 = !DILocation(line: 808, column: 42, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3240, file: !198, line: 807, column: 13)
!3240 = distinct !DILexicalBlock(scope: !2702, file: !198, line: 806, column: 17)
!3241 = !DILocation(line: 808, column: 17, scope: !3239)
!3242 = !DILocation(line: 808, column: 40, scope: !3239)
!3243 = !DILocation(line: 809, column: 17, scope: !3239)
!3244 = !DILocation(line: 810, column: 13, scope: !3239)
!3245 = !DILocation(line: 812, column: 18, scope: !3240)
!3246 = !DILocation(line: 812, column: 41, scope: !3240)
!3247 = !DILocation(line: 815, column: 17, scope: !2702)
!3248 = !DILocation(line: 817, column: 38, scope: !2707)
!3249 = !DILocation(line: 817, column: 46, scope: !2707)
!3250 = !DILocation(line: 0, scope: !2707)
!3251 = !DILocation(line: 818, column: 38, scope: !2707)
!3252 = !DILocation(line: 818, column: 46, scope: !2707)
!3253 = !DILocation(line: 820, column: 46, scope: !2707)
!3254 = !DILocation(line: 820, column: 17, scope: !2707)
!3255 = !DILocation(line: 820, column: 44, scope: !2707)
!3256 = !DILocation(line: 819, column: 17, scope: !2707)
!3257 = !DILocation(line: 819, column: 44, scope: !2707)
!3258 = !DILocation(line: 822, column: 53, scope: !2707)
!3259 = !DILocation(line: 822, column: 46, scope: !2707)
!3260 = !DILocation(line: 822, column: 17, scope: !2707)
!3261 = !DILocation(line: 822, column: 44, scope: !2707)
!3262 = !DILocation(line: 821, column: 17, scope: !2707)
!3263 = !DILocation(line: 821, column: 44, scope: !2707)
!3264 = !DILocation(line: 824, column: 17, scope: !2707)
!3265 = !DILocation(line: 825, column: 17, scope: !2707)
!3266 = !DILocation(line: 826, column: 17, scope: !2707)
!3267 = !DILocation(line: 827, column: 17, scope: !2707)
!3268 = !DILocation(line: 828, column: 13, scope: !2707)
!3269 = !DILocation(line: 0, scope: !2711)
!3270 = !DILocation(line: 833, column: 44, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !198, line: 832, column: 17)
!3272 = distinct !DILexicalBlock(scope: !2711, file: !198, line: 831, column: 17)
!3273 = !DILocation(line: 833, column: 42, scope: !3271)
!3274 = !DILocation(line: 833, column: 21, scope: !3271)
!3275 = !DILocation(line: 833, column: 48, scope: !3271)
!3276 = !DILocation(line: 834, column: 21, scope: !3271)
!3277 = !DILocation(line: 834, column: 54, scope: !3271)
!3278 = !DILocation(line: 831, column: 41, scope: !3272)
!3279 = !DILocation(line: 831, column: 35, scope: !3272)
!3280 = !DILocation(line: 831, column: 17, scope: !2711)
!3281 = distinct !{!3281, !3280, !3282, !1912, !1913}
!3282 = !DILocation(line: 835, column: 17, scope: !2711)
!3283 = !DILocation(line: 838, column: 17, scope: !2702)
!3284 = !DILocation(line: 840, column: 40, scope: !2714)
!3285 = !DILocation(line: 0, scope: !2714)
!3286 = !DILocation(line: 841, column: 21, scope: !2714)
!3287 = !DILocation(line: 842, column: 21, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !2714, file: !198, line: 841, column: 21)
!3289 = !DILocation(line: 0, scope: !3288)
!3290 = !DILocation(line: 844, column: 21, scope: !3288)
!3291 = !DILocation(line: 844, column: 66, scope: !3288)
!3292 = !DILocation(line: 846, column: 21, scope: !2714)
!3293 = !DILocation(line: 848, column: 21, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !2718, file: !198, line: 847, column: 17)
!3295 = !DILocation(line: 849, column: 21, scope: !3294)
!3296 = !DILocation(line: 850, column: 21, scope: !3294)
!3297 = !DILocation(line: 851, column: 21, scope: !3294)
!3298 = !DILocation(line: 852, column: 17, scope: !3294)
!3299 = !DILocation(line: 0, scope: !2717)
!3300 = !DILocation(line: 855, column: 25, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !2717, file: !198, line: 854, column: 21)
!3302 = !DILocation(line: 855, column: 72, scope: !3301)
!3303 = !DILocation(line: 854, column: 45, scope: !3301)
!3304 = !DILocation(line: 854, column: 39, scope: !3301)
!3305 = !DILocation(line: 854, column: 21, scope: !2717)
!3306 = distinct !{!3306, !3305, !3307, !1912, !1913}
!3307 = !DILocation(line: 855, column: 74, scope: !2717)
!3308 = !DILocation(line: 773, column: 66, scope: !2703)
!3309 = !DILocation(line: 773, column: 27, scope: !2703)
!3310 = distinct !{!3310, !3197, !3311, !1912, !1913}
!3311 = !DILocation(line: 857, column: 9, scope: !2700)
!3312 = !DILocation(line: 862, column: 65, scope: !2722)
!3313 = !DILocation(line: 862, column: 83, scope: !2722)
!3314 = !DILocation(line: 862, column: 77, scope: !2722)
!3315 = !DILocation(line: 862, column: 35, scope: !2722)
!3316 = !DILocation(line: 862, column: 19, scope: !2722)
!3317 = !DILocation(line: 862, column: 33, scope: !2722)
!3318 = !DILocation(line: 863, column: 39, scope: !2722)
!3319 = !DILocation(line: 863, column: 19, scope: !2722)
!3320 = !DILocation(line: 863, column: 37, scope: !2722)
!3321 = !{!1495, !1501, i64 26360}
!3322 = !DILocation(line: 864, column: 26, scope: !2721)
!3323 = !DILocation(line: 864, column: 17, scope: !2721)
!3324 = !DILocation(line: 864, column: 17, scope: !2722)
!3325 = !DILocalVariable(name: "h", arg: 1, scope: !3326, file: !3327, line: 134, type: !201)
!3326 = distinct !DISubprogram(name: "x264_macroblock_cache_skip", scope: !3327, file: !3327, line: 134, type: !3328, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3330)
!3327 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/rectangle.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d042158b8d3023ac6d42be3fb9b0d384")
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !201, !187, !187, !187, !187, !187}
!3330 = !{!3325, !3331, !3332, !3333, !3334, !3335}
!3331 = !DILocalVariable(name: "x", arg: 2, scope: !3326, file: !3327, line: 134, type: !187)
!3332 = !DILocalVariable(name: "y", arg: 3, scope: !3326, file: !3327, line: 134, type: !187)
!3333 = !DILocalVariable(name: "width", arg: 4, scope: !3326, file: !3327, line: 134, type: !187)
!3334 = !DILocalVariable(name: "height", arg: 5, scope: !3326, file: !3327, line: 134, type: !187)
!3335 = !DILocalVariable(name: "b_skip", arg: 6, scope: !3326, file: !3327, line: 134, type: !187)
!3336 = !DILocation(line: 0, scope: !3326, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 867, column: 17, scope: !2720)
!3338 = !DILocation(line: 136, column: 34, scope: !3326, inlinedAt: !3337)
!3339 = !DILocalVariable(name: "dst", arg: 1, scope: !3340, file: !3327, line: 22, type: !266)
!3340 = distinct !DISubprogram(name: "x264_macroblock_cache_rect", scope: !3327, file: !3327, line: 22, type: !3341, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !266, !187, !187, !187, !108}
!3343 = !{!3339, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3344 = !DILocalVariable(name: "w", arg: 2, scope: !3340, file: !3327, line: 22, type: !187)
!3345 = !DILocalVariable(name: "h", arg: 3, scope: !3340, file: !3327, line: 22, type: !187)
!3346 = !DILocalVariable(name: "s", arg: 4, scope: !3340, file: !3327, line: 22, type: !187)
!3347 = !DILocalVariable(name: "v", arg: 5, scope: !3340, file: !3327, line: 22, type: !108)
!3348 = !DILocalVariable(name: "d", scope: !3340, file: !3327, line: 24, type: !395)
!3349 = !DILocalVariable(name: "v2", scope: !3340, file: !3327, line: 25, type: !114)
!3350 = !DILocalVariable(name: "v4", scope: !3340, file: !3327, line: 26, type: !108)
!3351 = !DILocalVariable(name: "v8", scope: !3340, file: !3327, line: 27, type: !143)
!3352 = !DILocation(line: 0, scope: !3340, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 136, column: 5, scope: !3326, inlinedAt: !3337)
!3354 = !DILocation(line: 41, column: 22, scope: !3355, inlinedAt: !3353)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3327, line: 40, column: 5)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3327, line: 39, column: 14)
!3357 = distinct !DILexicalBlock(scope: !3340, file: !3327, line: 30, column: 9)
!3358 = !DILocation(line: 43, column: 9, scope: !3355, inlinedAt: !3353)
!3359 = !DILocation(line: 43, column: 22, scope: !3355, inlinedAt: !3353)
!3360 = !DILocation(line: 45, column: 9, scope: !3355, inlinedAt: !3353)
!3361 = !DILocation(line: 45, column: 22, scope: !3355, inlinedAt: !3353)
!3362 = !DILocation(line: 46, column: 9, scope: !3355, inlinedAt: !3353)
!3363 = !DILocation(line: 46, column: 22, scope: !3355, inlinedAt: !3353)
!3364 = !DILocation(line: 868, column: 33, scope: !2720)
!3365 = !DILocation(line: 868, column: 45, scope: !2720)
!3366 = !DILocation(line: 868, column: 26, scope: !2720)
!3367 = !DILocation(line: 868, column: 64, scope: !2720)
!3368 = !DILocation(line: 868, column: 58, scope: !2720)
!3369 = !DILocation(line: 0, scope: !2720)
!3370 = !DILocation(line: 869, column: 55, scope: !2720)
!3371 = !DILocation(line: 869, column: 17, scope: !2720)
!3372 = !DILocation(line: 869, column: 53, scope: !2720)
!3373 = !DILocation(line: 870, column: 55, scope: !2720)
!3374 = !DILocation(line: 870, column: 17, scope: !2720)
!3375 = !DILocation(line: 870, column: 53, scope: !2720)
!3376 = !DILocation(line: 871, column: 45, scope: !2720)
!3377 = !DILocation(line: 871, column: 26, scope: !2720)
!3378 = !DILocation(line: 871, column: 63, scope: !2720)
!3379 = !DILocation(line: 871, column: 57, scope: !2720)
!3380 = !DILocation(line: 872, column: 55, scope: !2720)
!3381 = !DILocation(line: 872, column: 17, scope: !2720)
!3382 = !DILocation(line: 872, column: 53, scope: !2720)
!3383 = !DILocation(line: 873, column: 55, scope: !2720)
!3384 = !DILocation(line: 873, column: 17, scope: !2720)
!3385 = !DILocation(line: 873, column: 53, scope: !2720)
!3386 = !DILocation(line: 874, column: 13, scope: !2720)
!3387 = !DILocation(line: 877, column: 26, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !2696, file: !198, line: 877, column: 13)
!3389 = !DILocation(line: 877, column: 13, scope: !2696)
!3390 = !DILocation(line: 878, column: 54, scope: !3388)
!3391 = !DILocation(line: 878, column: 13, scope: !3388)
!3392 = !DILocation(line: 882, column: 36, scope: !2668)
!3393 = !DILocation(line: 882, column: 54, scope: !2668)
!3394 = !DILocation(line: 883, column: 32, scope: !2668)
!3395 = !DILocation(line: 883, column: 29, scope: !2668)
!3396 = !DILocation(line: 882, column: 11, scope: !2668)
!3397 = !DILocation(line: 882, column: 27, scope: !2668)
!3398 = !DILocation(line: 881, column: 11, scope: !2668)
!3399 = !DILocation(line: 881, column: 27, scope: !2668)
!3400 = !DILocation(line: 885, column: 65, scope: !2668)
!3401 = !DILocation(line: 885, column: 40, scope: !2668)
!3402 = !DILocation(line: 885, column: 37, scope: !2668)
!3403 = !DILocation(line: 885, column: 5, scope: !2668)
!3404 = !DILocation(line: 885, column: 27, scope: !2668)
!3405 = !DILocation(line: 884, column: 5, scope: !2668)
!3406 = !DILocation(line: 884, column: 27, scope: !2668)
!3407 = !DILocation(line: 889, column: 76, scope: !2668)
!3408 = !DILocation(line: 889, column: 51, scope: !2668)
!3409 = !DILocation(line: 889, column: 48, scope: !2668)
!3410 = !DILocation(line: 889, column: 5, scope: !2668)
!3411 = !DILocation(line: 889, column: 27, scope: !2668)
!3412 = !DILocation(line: 888, column: 5, scope: !2668)
!3413 = !DILocation(line: 888, column: 28, scope: !2668)
!3414 = !DILocation(line: 887, column: 5, scope: !2668)
!3415 = !DILocation(line: 887, column: 27, scope: !2668)
!3416 = !DILocation(line: 886, column: 5, scope: !2668)
!3417 = !DILocation(line: 886, column: 27, scope: !2668)
!3418 = !DILocation(line: 891, column: 64, scope: !2668)
!3419 = !DILocation(line: 892, column: 32, scope: !2668)
!3420 = !DILocation(line: 892, column: 29, scope: !2668)
!3421 = !DILocation(line: 891, column: 5, scope: !2668)
!3422 = !DILocation(line: 891, column: 27, scope: !2668)
!3423 = !DILocation(line: 890, column: 5, scope: !2668)
!3424 = !DILocation(line: 890, column: 27, scope: !2668)
!3425 = !DILocation(line: 893, column: 1, scope: !2668)
!3426 = distinct !DISubprogram(name: "x264_macroblock_load_pic_pointers", scope: !198, file: !198, line: 494, type: !3427, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !201, !187, !187, !187}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3445, !3447, !3453, !3456}
!3430 = !DILocalVariable(name: "h", arg: 1, scope: !3426, file: !198, line: 494, type: !201)
!3431 = !DILocalVariable(name: "mb_x", arg: 2, scope: !3426, file: !198, line: 494, type: !187)
!3432 = !DILocalVariable(name: "mb_y", arg: 3, scope: !3426, file: !198, line: 494, type: !187)
!3433 = !DILocalVariable(name: "i", arg: 4, scope: !3426, file: !198, line: 494, type: !187)
!3434 = !DILocalVariable(name: "w", scope: !3426, file: !198, line: 496, type: !186)
!3435 = !DILocalVariable(name: "i_stride", scope: !3426, file: !198, line: 497, type: !186)
!3436 = !DILocalVariable(name: "i_stride2", scope: !3426, file: !198, line: 498, type: !186)
!3437 = !DILocalVariable(name: "i_pix_offset", scope: !3426, file: !198, line: 499, type: !186)
!3438 = !DILocalVariable(name: "plane_fdec", scope: !3426, file: !198, line: 502, type: !543)
!3439 = !DILocalVariable(name: "intra_fdec", scope: !3426, file: !198, line: 503, type: !543)
!3440 = !DILocalVariable(name: "ref_pix_offset", scope: !3426, file: !198, line: 504, type: !307)
!3441 = !DILocalVariable(name: "fref", scope: !3426, file: !198, line: 505, type: !815)
!3442 = !DILocalVariable(name: "j", scope: !3443, file: !198, line: 514, type: !187)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !198, line: 514, column: 9)
!3444 = distinct !DILexicalBlock(scope: !3426, file: !198, line: 513, column: 9)
!3445 = !DILocalVariable(name: "j", scope: !3446, file: !198, line: 516, type: !187)
!3446 = distinct !DILexicalBlock(scope: !3426, file: !198, line: 516, column: 5)
!3447 = !DILocalVariable(name: "k", scope: !3448, file: !198, line: 521, type: !187)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !198, line: 521, column: 13)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !198, line: 520, column: 9)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !198, line: 519, column: 13)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !198, line: 517, column: 5)
!3452 = distinct !DILexicalBlock(scope: !3446, file: !198, line: 516, column: 5)
!3453 = !DILocalVariable(name: "j", scope: !3454, file: !198, line: 530, type: !187)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !198, line: 530, column: 9)
!3455 = distinct !DILexicalBlock(scope: !3426, file: !198, line: 529, column: 9)
!3456 = !DILocalVariable(name: "k", scope: !3457, file: !198, line: 534, type: !187)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !198, line: 534, column: 17)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !198, line: 533, column: 17)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !198, line: 531, column: 9)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !198, line: 530, column: 9)
!3461 = !DILocation(line: 0, scope: !3426)
!3462 = !DILocation(line: 496, column: 22, scope: !3426)
!3463 = !DILocation(line: 496, column: 20, scope: !3426)
!3464 = !DILocation(line: 497, column: 29, scope: !3426)
!3465 = !DILocation(line: 497, column: 45, scope: !3426)
!3466 = !DILocation(line: 497, column: 44, scope: !3426)
!3467 = !DILocation(line: 497, column: 26, scope: !3426)
!3468 = !DILocation(line: 498, column: 45, scope: !3426)
!3469 = !DILocation(line: 498, column: 36, scope: !3426)
!3470 = !DILocation(line: 499, column: 30, scope: !3426)
!3471 = !DILocation(line: 500, column: 47, scope: !3426)
!3472 = !DILocation(line: 500, column: 52, scope: !3426)
!3473 = !DILocation(line: 500, column: 40, scope: !3426)
!3474 = !DILocation(line: 500, column: 32, scope: !3426)
!3475 = !DILocation(line: 500, column: 71, scope: !3426)
!3476 = !DILocation(line: 500, column: 75, scope: !3426)
!3477 = !DILocation(line: 500, column: 64, scope: !3426)
!3478 = !DILocation(line: 501, column: 47, scope: !3426)
!3479 = !DILocation(line: 501, column: 40, scope: !3426)
!3480 = !DILocation(line: 501, column: 32, scope: !3426)
!3481 = !DILocation(line: 502, column: 34, scope: !3426)
!3482 = !DILocation(line: 503, column: 70, scope: !3426)
!3483 = !DILocation(line: 503, column: 62, scope: !3426)
!3484 = !DILocation(line: 503, column: 34, scope: !3426)
!3485 = !DILocation(line: 503, column: 86, scope: !3426)
!3486 = !DILocation(line: 503, column: 89, scope: !3426)
!3487 = !DILocation(line: 504, column: 5, scope: !3426)
!3488 = !DILocation(line: 504, column: 9, scope: !3426)
!3489 = !DILocation(line: 504, column: 29, scope: !3426)
!3490 = !DILocation(line: 505, column: 35, scope: !3426)
!3491 = !DILocation(line: 505, column: 45, scope: !3426)
!3492 = !DILocation(line: 506, column: 9, scope: !3426)
!3493 = !DILocation(line: 507, column: 34, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3426, file: !198, line: 506, column: 9)
!3495 = !DILocation(line: 507, column: 32, scope: !3494)
!3496 = !DILocation(line: 507, column: 45, scope: !3494)
!3497 = !DILocation(line: 507, column: 9, scope: !3494)
!3498 = !DILocation(line: 507, column: 27, scope: !3494)
!3499 = !DILocation(line: 508, column: 5, scope: !3426)
!3500 = !DILocation(line: 508, column: 27, scope: !3426)
!3501 = !DILocation(line: 509, column: 37, scope: !3426)
!3502 = !DILocation(line: 509, column: 34, scope: !3426)
!3503 = !DILocation(line: 509, column: 5, scope: !3426)
!3504 = !DILocation(line: 509, column: 31, scope: !3426)
!3505 = !DILocation(line: 510, column: 16, scope: !3426)
!3506 = !DILocation(line: 510, column: 5, scope: !3426)
!3507 = !DILocation(line: 510, column: 42, scope: !3426)
!3508 = !DILocation(line: 512, column: 14, scope: !3426)
!3509 = !DILocation(line: 512, column: 61, scope: !3426)
!3510 = !DILocation(line: 512, column: 66, scope: !3426)
!3511 = !DILocation(line: 512, column: 68, scope: !3426)
!3512 = !DILocation(line: 512, column: 70, scope: !3426)
!3513 = !DILocation(line: 512, column: 5, scope: !3426)
!3514 = !DILocation(line: 513, column: 15, scope: !3444)
!3515 = !DILocation(line: 513, column: 9, scope: !3444)
!3516 = !DILocation(line: 513, column: 9, scope: !3426)
!3517 = !DILocation(line: 514, column: 9, scope: !3443)
!3518 = !DILocation(line: 514, column: 27, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3443, file: !198, line: 514, column: 9)
!3520 = !DILocation(line: 0, scope: !3443)
!3521 = !DILocation(line: 515, column: 68, scope: !3519)
!3522 = !DILocation(line: 515, column: 66, scope: !3519)
!3523 = !DILocation(line: 515, column: 53, scope: !3519)
!3524 = !DILocation(line: 515, column: 13, scope: !3519)
!3525 = !DILocation(line: 515, column: 37, scope: !3519)
!3526 = !DILocation(line: 515, column: 35, scope: !3519)
!3527 = !DILocation(line: 515, column: 51, scope: !3519)
!3528 = !DILocation(line: 514, column: 33, scope: !3519)
!3529 = distinct !{!3529, !3517, !3530, !1912, !1913}
!3530 = !DILocation(line: 515, column: 78, scope: !3443)
!3531 = !DILocation(line: 0, scope: !3446)
!3532 = !DILocation(line: 516, column: 23, scope: !3452)
!3533 = !DILocation(line: 516, column: 5, scope: !3446)
!3534 = !DILocation(line: 519, column: 13, scope: !3451)
!3535 = !DILocation(line: 518, column: 59, scope: !3451)
!3536 = !DILocation(line: 518, column: 49, scope: !3451)
!3537 = !DILocation(line: 518, column: 108, scope: !3451)
!3538 = !DILocation(line: 518, column: 92, scope: !3451)
!3539 = !DILocation(line: 518, column: 9, scope: !3451)
!3540 = !DILocation(line: 518, column: 46, scope: !3451)
!3541 = !DILocation(line: 0, scope: !3448)
!3542 = !DILocation(line: 521, column: 13, scope: !3448)
!3543 = !DILocation(line: 523, column: 17, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3449, file: !198, line: 523, column: 17)
!3545 = !DILocation(line: 523, column: 36, scope: !3544)
!3546 = !DILocation(line: 523, column: 17, scope: !3449)
!3547 = !DILocation(line: 524, column: 45, scope: !3544)
!3548 = !DILocation(line: 524, column: 42, scope: !3544)
!3549 = !DILocation(line: 524, column: 17, scope: !3544)
!3550 = !DILocation(line: 526, column: 41, scope: !3544)
!3551 = !DILocation(line: 0, scope: !3544)
!3552 = !DILocation(line: 526, column: 17, scope: !3544)
!3553 = !DILocation(line: 526, column: 39, scope: !3544)
!3554 = !DILocation(line: 516, column: 47, scope: !3452)
!3555 = distinct !{!3555, !3533, !3556, !1912, !1913}
!3556 = !DILocation(line: 528, column: 5, scope: !3446)
!3557 = !DILocation(line: 522, column: 46, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3448, file: !198, line: 521, column: 13)
!3559 = !DILocation(line: 522, column: 17, scope: !3558)
!3560 = !DILocation(line: 522, column: 43, scope: !3558)
!3561 = !DILocation(line: 521, column: 37, scope: !3558)
!3562 = !DILocation(line: 521, column: 31, scope: !3558)
!3563 = distinct !{!3563, !3542, !3564, !1912, !1913}
!3564 = !DILocation(line: 522, column: 111, scope: !3448)
!3565 = !DILocation(line: 529, column: 15, scope: !3455)
!3566 = !DILocation(line: 529, column: 22, scope: !3455)
!3567 = !DILocation(line: 529, column: 9, scope: !3426)
!3568 = !DILocation(line: 0, scope: !3454)
!3569 = !DILocation(line: 530, column: 27, scope: !3460)
!3570 = !DILocation(line: 530, column: 9, scope: !3454)
!3571 = !DILocation(line: 533, column: 17, scope: !3459)
!3572 = !DILocation(line: 532, column: 63, scope: !3459)
!3573 = !DILocation(line: 532, column: 53, scope: !3459)
!3574 = !DILocation(line: 532, column: 112, scope: !3459)
!3575 = !DILocation(line: 532, column: 96, scope: !3459)
!3576 = !DILocation(line: 532, column: 13, scope: !3459)
!3577 = !DILocation(line: 532, column: 50, scope: !3459)
!3578 = !DILocation(line: 0, scope: !3457)
!3579 = !DILocation(line: 534, column: 17, scope: !3457)
!3580 = !DILocation(line: 535, column: 50, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3457, file: !198, line: 534, column: 17)
!3582 = !DILocation(line: 535, column: 21, scope: !3581)
!3583 = !DILocation(line: 535, column: 47, scope: !3581)
!3584 = !DILocation(line: 534, column: 41, scope: !3581)
!3585 = !DILocation(line: 534, column: 35, scope: !3581)
!3586 = distinct !{!3586, !3579, !3587, !1912, !1913}
!3587 = !DILocation(line: 535, column: 115, scope: !3457)
!3588 = !DILocation(line: 530, column: 51, scope: !3460)
!3589 = distinct !{!3589, !3570, !3590, !1912, !1913}
!3590 = !DILocation(line: 536, column: 9, scope: !3454)
!3591 = !DILocation(line: 537, column: 1, scope: !3426)
!3592 = !DISubprogram(name: "x264_mb_predict_mv_pskip", scope: !15, file: !15, line: 294, type: !3593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2168)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !201, !907}
!3595 = distinct !DISubprogram(name: "x264_macroblock_cache_load_neighbours_deblock", scope: !198, file: !198, line: 895, type: !2669, scopeLine: 896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601}
!3597 = !DILocalVariable(name: "h", arg: 1, scope: !3595, file: !198, line: 895, type: !201)
!3598 = !DILocalVariable(name: "mb_x", arg: 2, scope: !3595, file: !198, line: 895, type: !187)
!3599 = !DILocalVariable(name: "mb_y", arg: 3, scope: !3595, file: !198, line: 895, type: !187)
!3600 = !DILocalVariable(name: "deblock_on_slice_edges", scope: !3595, file: !198, line: 897, type: !187)
!3601 = !DILocalVariable(name: "top", scope: !3595, file: !198, line: 898, type: !187)
!3602 = !DILocation(line: 0, scope: !3595)
!3603 = !DILocation(line: 897, column: 40, scope: !3595)
!3604 = !{!1495, !1497, i64 13884}
!3605 = !DILocation(line: 897, column: 72, scope: !3595)
!3606 = !DILocation(line: 898, column: 35, scope: !3595)
!3607 = !DILocation(line: 898, column: 26, scope: !3595)
!3608 = !DILocation(line: 898, column: 21, scope: !3595)
!3609 = !DILocation(line: 898, column: 58, scope: !3595)
!3610 = !DILocation(line: 898, column: 50, scope: !3595)
!3611 = !DILocation(line: 898, column: 70, scope: !3595)
!3612 = !DILocation(line: 900, column: 11, scope: !3595)
!3613 = !DILocation(line: 900, column: 23, scope: !3595)
!3614 = !DILocation(line: 901, column: 26, scope: !3595)
!3615 = !DILocation(line: 901, column: 46, scope: !3595)
!3616 = !DILocation(line: 901, column: 11, scope: !3595)
!3617 = !DILocation(line: 901, column: 19, scope: !3595)
!3618 = !DILocation(line: 903, column: 14, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3595, file: !198, line: 903, column: 9)
!3620 = !DILocation(line: 903, column: 9, scope: !3595)
!3621 = !DILocation(line: 905, column: 44, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3619, file: !198, line: 904, column: 5)
!3623 = !DILocation(line: 905, column: 15, scope: !3622)
!3624 = !DILocation(line: 905, column: 28, scope: !3622)
!3625 = !DILocation(line: 906, column: 36, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3622, file: !198, line: 906, column: 13)
!3627 = !DILocation(line: 906, column: 45, scope: !3626)
!3628 = !DILocation(line: 906, column: 39, scope: !3626)
!3629 = !DILocation(line: 906, column: 80, scope: !3626)
!3630 = !DILocation(line: 906, column: 77, scope: !3626)
!3631 = !DILocation(line: 906, column: 13, scope: !3622)
!3632 = !DILocation(line: 907, column: 31, scope: !3626)
!3633 = !DILocation(line: 907, column: 13, scope: !3626)
!3634 = !DILocation(line: 910, column: 13, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3595, file: !198, line: 910, column: 9)
!3636 = !DILocation(line: 910, column: 9, scope: !3595)
!3637 = !DILocation(line: 912, column: 15, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3635, file: !198, line: 911, column: 5)
!3639 = !DILocation(line: 912, column: 27, scope: !3638)
!3640 = !DILocation(line: 913, column: 36, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3638, file: !198, line: 913, column: 13)
!3642 = !DILocation(line: 913, column: 45, scope: !3641)
!3643 = !DILocation(line: 913, column: 79, scope: !3641)
!3644 = !DILocation(line: 913, column: 39, scope: !3641)
!3645 = !DILocation(line: 913, column: 76, scope: !3641)
!3646 = !DILocation(line: 913, column: 13, scope: !3638)
!3647 = !DILocation(line: 914, column: 31, scope: !3641)
!3648 = !DILocation(line: 914, column: 13, scope: !3641)
!3649 = !DILocation(line: 916, column: 1, scope: !3595)
!3650 = distinct !DISubprogram(name: "x264_macroblock_cache_load_deblock", scope: !198, file: !198, line: 918, type: !1886, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3656, !3657, !3658, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3670, !3673, !3674, !3675, !3678, !3679, !3682, !3683, !3684, !3685, !3686, !3687}
!3652 = !DILocalVariable(name: "h", arg: 1, scope: !3650, file: !198, line: 918, type: !201)
!3653 = !DILocalVariable(name: "old_neighbour", scope: !3654, file: !198, line: 927, type: !187)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !198, line: 926, column: 5)
!3655 = distinct !DILexicalBlock(scope: !3650, file: !198, line: 925, column: 9)
!3656 = !DILocalVariable(name: "mb_x", scope: !3654, file: !198, line: 928, type: !187)
!3657 = !DILocalVariable(name: "mb_y", scope: !3654, file: !198, line: 929, type: !187)
!3658 = !DILocalVariable(name: "left", scope: !3659, file: !198, line: 934, type: !187)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !198, line: 933, column: 9)
!3660 = distinct !DILexicalBlock(scope: !3654, file: !198, line: 932, column: 13)
!3661 = !DILocalVariable(name: "top", scope: !3659, file: !198, line: 935, type: !187)
!3662 = !DILocalVariable(name: "top_y", scope: !3659, file: !198, line: 936, type: !187)
!3663 = !DILocalVariable(name: "top_8x8", scope: !3659, file: !198, line: 937, type: !187)
!3664 = !DILocalVariable(name: "top_4x4", scope: !3659, file: !198, line: 938, type: !187)
!3665 = !DILocalVariable(name: "s8x8", scope: !3659, file: !198, line: 939, type: !187)
!3666 = !DILocalVariable(name: "s4x4", scope: !3659, file: !198, line: 940, type: !187)
!3667 = !DILocalVariable(name: "nnz", scope: !3659, file: !198, line: 942, type: !912)
!3668 = !DILocalVariable(name: "l", scope: !3669, file: !198, line: 955, type: !187)
!3669 = distinct !DILexicalBlock(scope: !3659, file: !198, line: 955, column: 13)
!3670 = !DILocalVariable(name: "mv", scope: !3671, file: !198, line: 957, type: !742)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !198, line: 956, column: 13)
!3672 = distinct !DILexicalBlock(scope: !3669, file: !198, line: 955, column: 13)
!3673 = !DILocalVariable(name: "ref", scope: !3671, file: !198, line: 958, type: !735)
!3674 = !DILocalVariable(name: "i8", scope: !3671, file: !198, line: 960, type: !187)
!3675 = !DILocalVariable(name: "ir", scope: !3676, file: !198, line: 973, type: !187)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !198, line: 972, column: 17)
!3677 = distinct !DILexicalBlock(scope: !3671, file: !198, line: 971, column: 21)
!3678 = !DILocalVariable(name: "iv", scope: !3676, file: !198, line: 974, type: !187)
!3679 = !DILocalVariable(name: "i8", scope: !3680, file: !198, line: 992, type: !187)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !198, line: 990, column: 5)
!3681 = distinct !DILexicalBlock(scope: !3650, file: !198, line: 989, column: 9)
!3682 = !DILocalVariable(name: "ref0", scope: !3680, file: !198, line: 1004, type: !187)
!3683 = !DILocalVariable(name: "ref1", scope: !3680, file: !198, line: 1005, type: !187)
!3684 = !DILocalVariable(name: "ref2", scope: !3680, file: !198, line: 1006, type: !187)
!3685 = !DILocalVariable(name: "ref3", scope: !3680, file: !198, line: 1007, type: !187)
!3686 = !DILocalVariable(name: "reftop", scope: !3680, file: !198, line: 1008, type: !108)
!3687 = !DILocalVariable(name: "refbot", scope: !3680, file: !198, line: 1009, type: !108)
!3688 = !DILocation(line: 0, scope: !3650)
!3689 = !DILocation(line: 920, column: 9, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3650, file: !198, line: 920, column: 9)
!3691 = !DILocation(line: 925, column: 15, scope: !3655)
!3692 = !DILocation(line: 925, column: 9, scope: !3655)
!3693 = !DILocation(line: 925, column: 26, scope: !3655)
!3694 = !DILocation(line: 925, column: 35, scope: !3655)
!3695 = !DILocation(line: 925, column: 67, scope: !3655)
!3696 = !DILocation(line: 925, column: 9, scope: !3650)
!3697 = !DILocation(line: 927, column: 35, scope: !3654)
!3698 = !DILocation(line: 0, scope: !3654)
!3699 = !DILocation(line: 928, column: 26, scope: !3654)
!3700 = !DILocation(line: 929, column: 26, scope: !3654)
!3701 = !DILocation(line: 0, scope: !3595, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 930, column: 9, scope: !3654)
!3703 = !DILocation(line: 898, column: 35, scope: !3595, inlinedAt: !3702)
!3704 = !DILocation(line: 898, column: 26, scope: !3595, inlinedAt: !3702)
!3705 = !DILocation(line: 898, column: 21, scope: !3595, inlinedAt: !3702)
!3706 = !DILocation(line: 898, column: 58, scope: !3595, inlinedAt: !3702)
!3707 = !DILocation(line: 898, column: 50, scope: !3595, inlinedAt: !3702)
!3708 = !DILocation(line: 898, column: 70, scope: !3595, inlinedAt: !3702)
!3709 = !DILocation(line: 901, column: 26, scope: !3595, inlinedAt: !3702)
!3710 = !DILocation(line: 901, column: 46, scope: !3595, inlinedAt: !3702)
!3711 = !DILocation(line: 901, column: 19, scope: !3595, inlinedAt: !3702)
!3712 = !DILocation(line: 903, column: 14, scope: !3619, inlinedAt: !3702)
!3713 = !DILocation(line: 903, column: 9, scope: !3595, inlinedAt: !3702)
!3714 = !DILocation(line: 905, column: 44, scope: !3622, inlinedAt: !3702)
!3715 = !DILocation(line: 905, column: 15, scope: !3622, inlinedAt: !3702)
!3716 = !DILocation(line: 905, column: 28, scope: !3622, inlinedAt: !3702)
!3717 = !DILocation(line: 907, column: 13, scope: !3626, inlinedAt: !3702)
!3718 = !DILocation(line: 910, column: 13, scope: !3635, inlinedAt: !3702)
!3719 = !DILocation(line: 910, column: 9, scope: !3595, inlinedAt: !3702)
!3720 = !DILocation(line: 912, column: 15, scope: !3638, inlinedAt: !3702)
!3721 = !DILocation(line: 912, column: 27, scope: !3638, inlinedAt: !3702)
!3722 = !DILocation(line: 914, column: 13, scope: !3641, inlinedAt: !3702)
!3723 = !DILocation(line: 931, column: 27, scope: !3654)
!3724 = !DILocation(line: 931, column: 30, scope: !3654)
!3725 = !DILocation(line: 932, column: 13, scope: !3660)
!3726 = !DILocation(line: 932, column: 13, scope: !3654)
!3727 = !DILocation(line: 934, column: 30, scope: !3659)
!3728 = !DILocation(line: 0, scope: !3659)
!3729 = !DILocation(line: 937, column: 29, scope: !3659)
!3730 = !DILocation(line: 937, column: 35, scope: !3659)
!3731 = !DILocation(line: 937, column: 47, scope: !3659)
!3732 = !DILocation(line: 937, column: 39, scope: !3659)
!3733 = !DILocation(line: 937, column: 62, scope: !3659)
!3734 = !DILocation(line: 937, column: 59, scope: !3659)
!3735 = !DILocation(line: 938, column: 29, scope: !3659)
!3736 = !DILocation(line: 938, column: 35, scope: !3659)
!3737 = !DILocation(line: 938, column: 47, scope: !3659)
!3738 = !DILocation(line: 938, column: 39, scope: !3659)
!3739 = !DILocation(line: 938, column: 62, scope: !3659)
!3740 = !DILocation(line: 938, column: 59, scope: !3659)
!3741 = !DILocation(line: 942, column: 40, scope: !3659)
!3742 = !DILocation(line: 944, column: 35, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3659, file: !198, line: 944, column: 17)
!3744 = !DILocation(line: 944, column: 17, scope: !3659)
!3745 = !DILocation(line: 935, column: 30, scope: !3659)
!3746 = !DILocation(line: 945, column: 17, scope: !3743)
!3747 = !DILocation(line: 947, column: 35, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3659, file: !198, line: 947, column: 17)
!3749 = !DILocation(line: 947, column: 17, scope: !3659)
!3750 = !DILocation(line: 0, scope: !3669)
!3751 = !DILocation(line: 961, column: 21, scope: !3671)
!3752 = !DILocation(line: 955, column: 13, scope: !3669)
!3753 = !DILocation(line: 957, column: 36, scope: !3671)
!3754 = !DILocation(line: 0, scope: !3671)
!3755 = !DILocation(line: 958, column: 31, scope: !3671)
!3756 = !DILocation(line: 964, column: 48, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !198, line: 962, column: 17)
!3758 = distinct !DILexicalBlock(scope: !3671, file: !198, line: 961, column: 21)
!3759 = !DILocation(line: 964, column: 21, scope: !3757)
!3760 = !DILocation(line: 964, column: 46, scope: !3757)
!3761 = !DILocation(line: 963, column: 21, scope: !3757)
!3762 = !DILocation(line: 963, column: 46, scope: !3757)
!3763 = !DILocation(line: 966, column: 48, scope: !3757)
!3764 = !DILocation(line: 966, column: 21, scope: !3757)
!3765 = !DILocation(line: 966, column: 46, scope: !3757)
!3766 = !DILocation(line: 965, column: 21, scope: !3757)
!3767 = !DILocation(line: 965, column: 46, scope: !3757)
!3768 = !DILocation(line: 967, column: 21, scope: !3757)
!3769 = !DILocation(line: 955, column: 67, scope: !3672)
!3770 = !DILocation(line: 955, column: 31, scope: !3672)
!3771 = distinct !{!3771, !3752, !3772, !1912, !1913}
!3772 = !DILocation(line: 985, column: 13, scope: !3669)
!3773 = !DILocation(line: 949, column: 66, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3748, file: !198, line: 948, column: 13)
!3775 = !DILocation(line: 949, column: 17, scope: !3774)
!3776 = !DILocation(line: 949, column: 64, scope: !3774)
!3777 = !DILocation(line: 950, column: 66, scope: !3774)
!3778 = !DILocation(line: 950, column: 17, scope: !3774)
!3779 = !DILocation(line: 950, column: 64, scope: !3774)
!3780 = !DILocation(line: 951, column: 66, scope: !3774)
!3781 = !DILocation(line: 951, column: 17, scope: !3774)
!3782 = !DILocation(line: 951, column: 64, scope: !3774)
!3783 = !DILocation(line: 952, column: 66, scope: !3774)
!3784 = !DILocation(line: 952, column: 17, scope: !3774)
!3785 = !DILocation(line: 952, column: 64, scope: !3774)
!3786 = !DILocation(line: 0, scope: !3676)
!3787 = !DILocation(line: 976, column: 50, scope: !3676)
!3788 = !DILocation(line: 976, column: 21, scope: !3676)
!3789 = !DILocation(line: 976, column: 48, scope: !3676)
!3790 = !DILocation(line: 975, column: 21, scope: !3676)
!3791 = !DILocation(line: 975, column: 48, scope: !3676)
!3792 = !DILocation(line: 978, column: 50, scope: !3676)
!3793 = !DILocation(line: 978, column: 21, scope: !3676)
!3794 = !DILocation(line: 978, column: 48, scope: !3676)
!3795 = !DILocation(line: 977, column: 21, scope: !3676)
!3796 = !DILocation(line: 977, column: 48, scope: !3676)
!3797 = !DILocation(line: 980, column: 21, scope: !3676)
!3798 = !DILocation(line: 981, column: 21, scope: !3676)
!3799 = !DILocation(line: 982, column: 21, scope: !3676)
!3800 = !DILocation(line: 983, column: 21, scope: !3676)
!3801 = !DILocation(line: 989, column: 26, scope: !3681)
!3802 = !DILocation(line: 989, column: 9, scope: !3681)
!3803 = !DILocation(line: 989, column: 42, scope: !3681)
!3804 = !DILocation(line: 989, column: 51, scope: !3681)
!3805 = !DILocation(line: 989, column: 58, scope: !3681)
!3806 = !DILocation(line: 989, column: 9, scope: !3650)
!3807 = !DILocation(line: 0, scope: !3680)
!3808 = !DILocation(line: 994, column: 36, scope: !3680)
!3809 = !DILocation(line: 994, column: 9, scope: !3680)
!3810 = !DILocation(line: 994, column: 34, scope: !3680)
!3811 = !DILocation(line: 993, column: 34, scope: !3680)
!3812 = !DILocation(line: 996, column: 36, scope: !3680)
!3813 = !DILocation(line: 996, column: 9, scope: !3680)
!3814 = !DILocation(line: 996, column: 34, scope: !3680)
!3815 = !DILocation(line: 995, column: 34, scope: !3680)
!3816 = !DILocation(line: 1000, column: 38, scope: !3680)
!3817 = !DILocation(line: 1000, column: 9, scope: !3680)
!3818 = !DILocation(line: 1000, column: 36, scope: !3680)
!3819 = !DILocation(line: 999, column: 36, scope: !3680)
!3820 = !DILocation(line: 1002, column: 38, scope: !3680)
!3821 = !DILocation(line: 1002, column: 9, scope: !3680)
!3822 = !DILocation(line: 1002, column: 36, scope: !3680)
!3823 = !DILocation(line: 1001, column: 36, scope: !3680)
!3824 = !DILocation(line: 1004, column: 20, scope: !3680)
!3825 = !DILocation(line: 1005, column: 20, scope: !3680)
!3826 = !DILocation(line: 1006, column: 20, scope: !3680)
!3827 = !DILocation(line: 1007, column: 20, scope: !3680)
!3828 = !DILocation(line: 1008, column: 39, scope: !3680)
!3829 = !DILocation(line: 1008, column: 54, scope: !3680)
!3830 = !DILocalVariable(name: "a", arg: 1, scope: !3831, file: !15, line: 316, type: !187)
!3831 = distinct !DISubprogram(name: "pack16to32", scope: !15, file: !15, line: 316, type: !3832, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3834)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!108, !187, !187}
!3834 = !{!3830, !3835}
!3835 = !DILocalVariable(name: "b", arg: 2, scope: !3831, file: !15, line: 316, type: !187)
!3836 = !DILocation(line: 0, scope: !3831, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 1008, column: 27, scope: !3680)
!3838 = !DILocation(line: 321, column: 17, scope: !3831, inlinedAt: !3837)
!3839 = !DILocation(line: 321, column: 13, scope: !3831, inlinedAt: !3837)
!3840 = !DILocation(line: 1008, column: 70, scope: !3680)
!3841 = !DILocation(line: 1009, column: 39, scope: !3680)
!3842 = !DILocation(line: 1009, column: 54, scope: !3680)
!3843 = !DILocation(line: 0, scope: !3831, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 1009, column: 27, scope: !3680)
!3845 = !DILocation(line: 321, column: 17, scope: !3831, inlinedAt: !3844)
!3846 = !DILocation(line: 321, column: 13, scope: !3831, inlinedAt: !3844)
!3847 = !DILocation(line: 1009, column: 70, scope: !3680)
!3848 = !DILocation(line: 1011, column: 55, scope: !3680)
!3849 = !DILocation(line: 1012, column: 9, scope: !3680)
!3850 = !DILocation(line: 1012, column: 55, scope: !3680)
!3851 = !DILocation(line: 1013, column: 55, scope: !3680)
!3852 = !DILocation(line: 1014, column: 9, scope: !3680)
!3853 = !DILocation(line: 1014, column: 55, scope: !3680)
!3854 = !DILocation(line: 1015, column: 5, scope: !3680)
!3855 = !DILocation(line: 1016, column: 1, scope: !3650)
!3856 = distinct !DISubprogram(name: "x264_macroblock_cache_save", scope: !198, file: !198, line: 1030, type: !1886, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3857 = !{!3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3871, !3874, !3875, !3876, !3877, !3881, !3882}
!3858 = !DILocalVariable(name: "h", arg: 1, scope: !3856, file: !198, line: 1030, type: !201)
!3859 = !DILocalVariable(name: "i_mb_xy", scope: !3856, file: !198, line: 1032, type: !186)
!3860 = !DILocalVariable(name: "i_mb_type", scope: !3856, file: !198, line: 1033, type: !186)
!3861 = !DILocalVariable(name: "s8x8", scope: !3856, file: !198, line: 1034, type: !186)
!3862 = !DILocalVariable(name: "s4x4", scope: !3856, file: !198, line: 1035, type: !186)
!3863 = !DILocalVariable(name: "i_mb_4x4", scope: !3856, file: !198, line: 1036, type: !186)
!3864 = !DILocalVariable(name: "i_mb_8x8", scope: !3856, file: !198, line: 1037, type: !186)
!3865 = !DILocalVariable(name: "i4x4", scope: !3856, file: !198, line: 1041, type: !735)
!3866 = !DILocalVariable(name: "nnz", scope: !3856, file: !198, line: 1042, type: !395)
!3867 = !DILocalVariable(name: "i", scope: !3868, file: !198, line: 1078, type: !187)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !198, line: 1078, column: 9)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !198, line: 1070, column: 5)
!3870 = distinct !DILexicalBlock(scope: !3856, file: !198, line: 1069, column: 9)
!3871 = !DILocalVariable(name: "mv0", scope: !3872, file: !198, line: 1106, type: !742)
!3872 = distinct !DILexicalBlock(scope: !3873, file: !198, line: 1105, column: 5)
!3873 = distinct !DILexicalBlock(scope: !3856, file: !198, line: 1104, column: 9)
!3874 = !DILocalVariable(name: "mv1", scope: !3872, file: !198, line: 1107, type: !742)
!3875 = !DILocalVariable(name: "ref0", scope: !3872, file: !198, line: 1108, type: !735)
!3876 = !DILocalVariable(name: "ref1", scope: !3872, file: !198, line: 1109, type: !735)
!3877 = !DILocalVariable(name: "mvd0", scope: !3878, file: !198, line: 1154, type: !3880)
!3878 = distinct !DILexicalBlock(scope: !3879, file: !198, line: 1153, column: 5)
!3879 = distinct !DILexicalBlock(scope: !3856, file: !198, line: 1152, column: 9)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!3881 = !DILocalVariable(name: "mvd1", scope: !3878, file: !198, line: 1155, type: !3880)
!3882 = !DILocalVariable(name: "skipbp", scope: !3883, file: !198, line: 1188, type: !187)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !198, line: 1187, column: 13)
!3884 = distinct !DILexicalBlock(scope: !3885, file: !198, line: 1186, column: 22)
!3885 = distinct !DILexicalBlock(scope: !3886, file: !198, line: 1184, column: 17)
!3886 = distinct !DILexicalBlock(scope: !3887, file: !198, line: 1183, column: 9)
!3887 = distinct !DILexicalBlock(scope: !3878, file: !198, line: 1182, column: 13)
!3888 = !DILocation(line: 0, scope: !3856)
!3889 = !DILocation(line: 1032, column: 31, scope: !3856)
!3890 = !DILocation(line: 1033, column: 50, scope: !3856)
!3891 = !{!1495, !1497, i64 17384}
!3892 = !DILocation(line: 1033, column: 27, scope: !3856)
!3893 = !DILocation(line: 1034, column: 28, scope: !3856)
!3894 = !DILocation(line: 1035, column: 28, scope: !3856)
!3895 = !DILocation(line: 1036, column: 32, scope: !3856)
!3896 = !DILocation(line: 1037, column: 32, scope: !3856)
!3897 = !DILocation(line: 1041, column: 26, scope: !3856)
!3898 = !DILocation(line: 1041, column: 20, scope: !3856)
!3899 = !DILocation(line: 1042, column: 26, scope: !3856)
!3900 = !DILocation(line: 1042, column: 20, scope: !3856)
!3901 = !DILocalVariable(name: "h", arg: 1, scope: !3902, file: !198, line: 1018, type: !201)
!3902 = distinct !DISubprogram(name: "x264_macroblock_store_pic", scope: !198, file: !198, line: 1018, type: !199, scopeLine: 1019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3903)
!3903 = !{!3901, !3904, !3905, !3906, !3907, !3908}
!3904 = !DILocalVariable(name: "i", arg: 2, scope: !3902, file: !198, line: 1018, type: !187)
!3905 = !DILocalVariable(name: "w", scope: !3902, file: !198, line: 1020, type: !187)
!3906 = !DILocalVariable(name: "i_stride", scope: !3902, file: !198, line: 1021, type: !187)
!3907 = !DILocalVariable(name: "i_stride2", scope: !3902, file: !198, line: 1022, type: !187)
!3908 = !DILocalVariable(name: "i_pix_offset", scope: !3902, file: !198, line: 1023, type: !187)
!3909 = !DILocation(line: 0, scope: !3902, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 1044, column: 5, scope: !3856)
!3911 = !DILocation(line: 1021, column: 23, scope: !3902, inlinedAt: !3910)
!3912 = !DILocation(line: 1021, column: 20, scope: !3902, inlinedAt: !3910)
!3913 = !DILocation(line: 1022, column: 39, scope: !3902, inlinedAt: !3910)
!3914 = !DILocation(line: 1023, column: 24, scope: !3902, inlinedAt: !3910)
!3915 = !DILocation(line: 1024, column: 57, scope: !3902, inlinedAt: !3910)
!3916 = !DILocation(line: 1024, column: 62, scope: !3902, inlinedAt: !3910)
!3917 = !DILocation(line: 1024, column: 42, scope: !3902, inlinedAt: !3910)
!3918 = !DILocation(line: 1024, column: 26, scope: !3902, inlinedAt: !3910)
!3919 = !DILocation(line: 1024, column: 89, scope: !3902, inlinedAt: !3910)
!3920 = !DILocation(line: 1024, column: 93, scope: !3902, inlinedAt: !3910)
!3921 = !DILocation(line: 1024, column: 74, scope: !3902, inlinedAt: !3910)
!3922 = !DILocation(line: 1025, column: 57, scope: !3902, inlinedAt: !3910)
!3923 = !DILocation(line: 1025, column: 42, scope: !3902, inlinedAt: !3910)
!3924 = !DILocation(line: 1025, column: 26, scope: !3902, inlinedAt: !3910)
!3925 = !DILocation(line: 1022, column: 30, scope: !3902, inlinedAt: !3910)
!3926 = !DILocation(line: 1026, column: 5, scope: !3902, inlinedAt: !3910)
!3927 = !DILocation(line: 1026, column: 43, scope: !3902, inlinedAt: !3910)
!3928 = !DILocation(line: 1027, column: 42, scope: !3902, inlinedAt: !3910)
!3929 = !DILocation(line: 0, scope: !3902, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 1045, column: 5, scope: !3856)
!3931 = !DILocation(line: 1021, column: 23, scope: !3902, inlinedAt: !3930)
!3932 = !DILocation(line: 1021, column: 20, scope: !3902, inlinedAt: !3930)
!3933 = !DILocation(line: 1022, column: 39, scope: !3902, inlinedAt: !3930)
!3934 = !DILocation(line: 1023, column: 24, scope: !3902, inlinedAt: !3930)
!3935 = !DILocation(line: 1024, column: 57, scope: !3902, inlinedAt: !3930)
!3936 = !DILocation(line: 1024, column: 62, scope: !3902, inlinedAt: !3930)
!3937 = !DILocation(line: 1024, column: 42, scope: !3902, inlinedAt: !3930)
!3938 = !DILocation(line: 1024, column: 26, scope: !3902, inlinedAt: !3930)
!3939 = !DILocation(line: 1024, column: 89, scope: !3902, inlinedAt: !3930)
!3940 = !DILocation(line: 1024, column: 93, scope: !3902, inlinedAt: !3930)
!3941 = !DILocation(line: 1024, column: 74, scope: !3902, inlinedAt: !3930)
!3942 = !DILocation(line: 1025, column: 57, scope: !3902, inlinedAt: !3930)
!3943 = !DILocation(line: 1025, column: 42, scope: !3902, inlinedAt: !3930)
!3944 = !DILocation(line: 1025, column: 26, scope: !3902, inlinedAt: !3930)
!3945 = !DILocation(line: 1022, column: 30, scope: !3902, inlinedAt: !3930)
!3946 = !DILocation(line: 1026, column: 5, scope: !3902, inlinedAt: !3930)
!3947 = !DILocation(line: 1026, column: 43, scope: !3902, inlinedAt: !3930)
!3948 = !DILocation(line: 1027, column: 42, scope: !3902, inlinedAt: !3930)
!3949 = !DILocation(line: 0, scope: !3902, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 1046, column: 5, scope: !3856)
!3951 = !DILocation(line: 1021, column: 23, scope: !3902, inlinedAt: !3950)
!3952 = !DILocation(line: 1021, column: 20, scope: !3902, inlinedAt: !3950)
!3953 = !DILocation(line: 1022, column: 39, scope: !3902, inlinedAt: !3950)
!3954 = !DILocation(line: 1023, column: 24, scope: !3902, inlinedAt: !3950)
!3955 = !DILocation(line: 1024, column: 57, scope: !3902, inlinedAt: !3950)
!3956 = !DILocation(line: 1024, column: 62, scope: !3902, inlinedAt: !3950)
!3957 = !DILocation(line: 1024, column: 42, scope: !3902, inlinedAt: !3950)
!3958 = !DILocation(line: 1024, column: 26, scope: !3902, inlinedAt: !3950)
!3959 = !DILocation(line: 1024, column: 89, scope: !3902, inlinedAt: !3950)
!3960 = !DILocation(line: 1024, column: 93, scope: !3902, inlinedAt: !3950)
!3961 = !DILocation(line: 1024, column: 74, scope: !3902, inlinedAt: !3950)
!3962 = !DILocation(line: 1025, column: 57, scope: !3902, inlinedAt: !3950)
!3963 = !DILocation(line: 1025, column: 42, scope: !3902, inlinedAt: !3950)
!3964 = !DILocation(line: 1025, column: 26, scope: !3902, inlinedAt: !3950)
!3965 = !DILocation(line: 1022, column: 30, scope: !3902, inlinedAt: !3950)
!3966 = !DILocation(line: 1026, column: 5, scope: !3902, inlinedAt: !3950)
!3967 = !DILocation(line: 1026, column: 43, scope: !3902, inlinedAt: !3950)
!3968 = !DILocation(line: 1027, column: 42, scope: !3902, inlinedAt: !3950)
!3969 = !DILocation(line: 1048, column: 31, scope: !3856)
!3970 = !DILocation(line: 1048, column: 43, scope: !3856)
!3971 = !DILocation(line: 1048, column: 57, scope: !3856)
!3972 = !DILocation(line: 0, scope: !2635, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 1048, column: 5, scope: !3856)
!3974 = !DILocation(line: 479, column: 27, scope: !2635, inlinedAt: !3973)
!3975 = !DILocation(line: 479, column: 21, scope: !2635, inlinedAt: !3973)
!3976 = !DILocation(line: 480, column: 21, scope: !2635, inlinedAt: !3973)
!3977 = !DILocation(line: 481, column: 39, scope: !2635, inlinedAt: !3973)
!3978 = !DILocation(line: 481, column: 30, scope: !2635, inlinedAt: !3973)
!3979 = !DILocation(line: 481, column: 20, scope: !2635, inlinedAt: !3973)
!3980 = !DILocation(line: 482, column: 39, scope: !2635, inlinedAt: !3973)
!3981 = !DILocation(line: 482, column: 30, scope: !2635, inlinedAt: !3973)
!3982 = !DILocation(line: 482, column: 20, scope: !2635, inlinedAt: !3973)
!3983 = !DILocation(line: 483, column: 11, scope: !2635, inlinedAt: !3973)
!3984 = !DILocation(line: 483, column: 32, scope: !2635, inlinedAt: !3973)
!3985 = !DILocation(line: 483, column: 26, scope: !2635, inlinedAt: !3973)
!3986 = !DILocation(line: 483, column: 40, scope: !2635, inlinedAt: !3973)
!3987 = !DILocation(line: 484, column: 47, scope: !2635, inlinedAt: !3973)
!3988 = !DILocation(line: 484, column: 39, scope: !2635, inlinedAt: !3973)
!3989 = !DILocation(line: 484, column: 26, scope: !2635, inlinedAt: !3973)
!3990 = !DILocation(line: 484, column: 51, scope: !2635, inlinedAt: !3973)
!3991 = !DILocation(line: 483, column: 5, scope: !2635, inlinedAt: !3973)
!3992 = !DILocation(line: 1050, column: 11, scope: !3856)
!3993 = !DILocation(line: 1050, column: 5, scope: !3856)
!3994 = !DILocation(line: 1050, column: 25, scope: !3856)
!3995 = !DILocation(line: 1051, column: 40, scope: !3856)
!3996 = !DILocation(line: 1051, column: 34, scope: !3856)
!3997 = !DILocation(line: 1051, column: 11, scope: !3856)
!3998 = !DILocation(line: 1051, column: 5, scope: !3856)
!3999 = !DILocation(line: 1051, column: 32, scope: !3856)
!4000 = !DILocation(line: 1052, column: 32, scope: !3856)
!4001 = !DILocation(line: 1052, column: 72, scope: !3856)
!4002 = !DILocation(line: 1052, column: 11, scope: !3856)
!4003 = !DILocation(line: 1052, column: 5, scope: !3856)
!4004 = !DILocation(line: 1052, column: 30, scope: !3856)
!4005 = !DILocation(line: 1053, column: 11, scope: !3856)
!4006 = !DILocation(line: 1053, column: 24, scope: !3856)
!4007 = !{!1495, !1497, i64 16596}
!4008 = !DILocation(line: 1056, column: 9, scope: !3856)
!4009 = !DILocation(line: 1058, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !198, line: 1057, column: 5)
!4011 = distinct !DILexicalBlock(scope: !3856, file: !198, line: 1056, column: 9)
!4012 = !DILocation(line: 1059, column: 38, scope: !4010)
!4013 = !DILocation(line: 1060, column: 38, scope: !4010)
!4014 = !DILocation(line: 1061, column: 38, scope: !4010)
!4015 = !DILocalVariable(name: "a", arg: 1, scope: !4016, file: !15, line: 332, type: !187)
!4016 = distinct !DISubprogram(name: "pack8to32", scope: !15, file: !15, line: 332, type: !4017, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!108, !187, !187, !187, !187}
!4019 = !{!4015, !4020, !4021, !4022}
!4020 = !DILocalVariable(name: "b", arg: 2, scope: !4016, file: !15, line: 332, type: !187)
!4021 = !DILocalVariable(name: "c", arg: 3, scope: !4016, file: !15, line: 332, type: !187)
!4022 = !DILocalVariable(name: "d", arg: 4, scope: !4016, file: !15, line: 332, type: !187)
!4023 = !DILocation(line: 0, scope: !4016, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 1059, column: 27, scope: !4010)
!4025 = !DILocation(line: 337, column: 17, scope: !4016, inlinedAt: !4024)
!4026 = !DILocation(line: 337, column: 13, scope: !4016, inlinedAt: !4024)
!4027 = !DILocation(line: 337, column: 26, scope: !4016, inlinedAt: !4024)
!4028 = !DILocation(line: 337, column: 22, scope: !4016, inlinedAt: !4024)
!4029 = !DILocation(line: 1059, column: 9, scope: !4010)
!4030 = !DILocation(line: 1059, column: 25, scope: !4010)
!4031 = !DILocation(line: 1062, column: 5, scope: !4010)
!4032 = !DILocation(line: 1063, column: 24, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4011, file: !198, line: 1063, column: 14)
!4034 = !DILocation(line: 1063, column: 15, scope: !4033)
!4035 = !DILocation(line: 1063, column: 44, scope: !4033)
!4036 = !DILocation(line: 1064, column: 21, scope: !4033)
!4037 = !DILocation(line: 1064, column: 9, scope: !4033)
!4038 = !DILocation(line: 1066, column: 21, scope: !4033)
!4039 = !DILocation(line: 1069, column: 9, scope: !3856)
!4040 = !DILocation(line: 1071, column: 15, scope: !3869)
!4041 = !DILocation(line: 1071, column: 9, scope: !3869)
!4042 = !DILocation(line: 1071, column: 27, scope: !3869)
!4043 = !DILocation(line: 1072, column: 15, scope: !3869)
!4044 = !DILocation(line: 1072, column: 26, scope: !3869)
!4045 = !{!1495, !1497, i64 25804}
!4046 = !DILocation(line: 1073, column: 15, scope: !3869)
!4047 = !DILocation(line: 1073, column: 28, scope: !3869)
!4048 = !{!1495, !1497, i64 17404}
!4049 = !DILocation(line: 1074, column: 15, scope: !3869)
!4050 = !DILocation(line: 1074, column: 26, scope: !3869)
!4051 = !{!1495, !1497, i64 17400}
!4052 = !DILocation(line: 1075, column: 15, scope: !3869)
!4053 = !DILocation(line: 1075, column: 9, scope: !3869)
!4054 = !DILocation(line: 1075, column: 28, scope: !3869)
!4055 = !DILocation(line: 1076, column: 15, scope: !3869)
!4056 = !DILocation(line: 1076, column: 31, scope: !3869)
!4057 = !{!1495, !1497, i64 17396}
!4058 = !DILocation(line: 1077, column: 9, scope: !3869)
!4059 = !DILocation(line: 0, scope: !3868)
!4060 = !DILocation(line: 1078, column: 9, scope: !3868)
!4061 = !DILocation(line: 1079, column: 40, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3868, file: !198, line: 1078, column: 9)
!4063 = !DILocation(line: 1079, column: 13, scope: !4062)
!4064 = !DILocation(line: 1079, column: 55, scope: !4062)
!4065 = !DILocation(line: 1078, column: 34, scope: !4062)
!4066 = !DILocation(line: 1078, column: 27, scope: !4062)
!4067 = distinct !{!4067, !4060, !4068, !1912, !1913}
!4068 = !DILocation(line: 1079, column: 57, scope: !3868)
!4069 = !DILocation(line: 1084, column: 9, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !3870, file: !198, line: 1082, column: 5)
!4071 = !DILocation(line: 1085, column: 9, scope: !4070)
!4072 = !DILocation(line: 1086, column: 9, scope: !4070)
!4073 = !DILocation(line: 1087, column: 9, scope: !4070)
!4074 = !DILocation(line: 1088, column: 31, scope: !4070)
!4075 = !DILocation(line: 1088, column: 88, scope: !4070)
!4076 = !DILocation(line: 1088, column: 9, scope: !4070)
!4077 = !DILocation(line: 1088, column: 29, scope: !4070)
!4078 = !DILocation(line: 1089, column: 31, scope: !4070)
!4079 = !DILocation(line: 1089, column: 88, scope: !4070)
!4080 = !DILocation(line: 1089, column: 9, scope: !4070)
!4081 = !DILocation(line: 1089, column: 29, scope: !4070)
!4082 = !DILocation(line: 1090, column: 31, scope: !4070)
!4083 = !DILocation(line: 1090, column: 88, scope: !4070)
!4084 = !DILocation(line: 1090, column: 9, scope: !4070)
!4085 = !DILocation(line: 1090, column: 29, scope: !4070)
!4086 = !DILocation(line: 1091, column: 31, scope: !4070)
!4087 = !DILocation(line: 1091, column: 88, scope: !4070)
!4088 = !DILocation(line: 1091, column: 9, scope: !4070)
!4089 = !DILocation(line: 1091, column: 29, scope: !4070)
!4090 = !DILocation(line: 1093, column: 19, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4070, file: !198, line: 1093, column: 13)
!4092 = !DILocation(line: 1093, column: 26, scope: !4091)
!4093 = !DILocation(line: 1093, column: 37, scope: !4091)
!4094 = !DILocation(line: 1093, column: 46, scope: !4091)
!4095 = !DILocation(line: 1093, column: 57, scope: !4091)
!4096 = !DILocation(line: 1093, column: 62, scope: !4091)
!4097 = !DILocation(line: 1093, column: 71, scope: !4091)
!4098 = !DILocation(line: 1093, column: 84, scope: !4091)
!4099 = !DILocation(line: 1093, column: 13, scope: !4070)
!4100 = !DILocation(line: 1094, column: 32, scope: !4091)
!4101 = !{!1495, !1497, i64 25800}
!4102 = !DILocation(line: 1094, column: 19, scope: !4091)
!4103 = !DILocation(line: 1094, column: 24, scope: !4091)
!4104 = !{!1495, !1497, i64 25792}
!4105 = !DILocation(line: 1094, column: 13, scope: !4091)
!4106 = !DILocation(line: 1095, column: 35, scope: !4070)
!4107 = !DILocation(line: 1095, column: 29, scope: !4070)
!4108 = !DILocation(line: 1095, column: 15, scope: !4070)
!4109 = !DILocation(line: 1095, column: 9, scope: !4070)
!4110 = !DILocation(line: 1095, column: 27, scope: !4070)
!4111 = !DILocation(line: 1096, column: 34, scope: !4070)
!4112 = !DILocation(line: 1096, column: 47, scope: !4070)
!4113 = !DILocation(line: 1096, column: 39, scope: !4070)
!4114 = !DILocation(line: 1096, column: 15, scope: !4070)
!4115 = !DILocation(line: 1096, column: 26, scope: !4070)
!4116 = !DILocation(line: 1097, column: 25, scope: !4070)
!4117 = !DILocation(line: 1100, column: 15, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !3856, file: !198, line: 1100, column: 9)
!4119 = !DILocation(line: 1100, column: 26, scope: !4118)
!4120 = !DILocation(line: 1100, column: 31, scope: !4118)
!4121 = !DILocation(line: 1100, column: 40, scope: !4118)
!4122 = !DILocation(line: 1100, column: 47, scope: !4118)
!4123 = !DILocation(line: 1100, column: 9, scope: !3856)
!4124 = !DILocation(line: 1101, column: 15, scope: !4118)
!4125 = !DILocation(line: 1101, column: 31, scope: !4118)
!4126 = !DILocation(line: 1101, column: 9, scope: !4118)
!4127 = !DILocation(line: 1102, column: 46, scope: !3856)
!4128 = !DILocation(line: 1102, column: 40, scope: !3856)
!4129 = !DILocation(line: 1102, column: 11, scope: !3856)
!4130 = !DILocation(line: 1102, column: 5, scope: !3856)
!4131 = !DILocation(line: 1102, column: 38, scope: !3856)
!4132 = !DILocation(line: 1104, column: 15, scope: !3873)
!4133 = !DILocation(line: 1104, column: 22, scope: !3873)
!4134 = !DILocation(line: 1104, column: 9, scope: !3856)
!4135 = !DILocation(line: 1106, column: 36, scope: !3872)
!4136 = !DILocation(line: 1106, column: 30, scope: !3872)
!4137 = !DILocation(line: 0, scope: !3872)
!4138 = !DILocation(line: 1107, column: 30, scope: !3872)
!4139 = !DILocation(line: 1108, column: 31, scope: !3872)
!4140 = !DILocation(line: 1108, column: 25, scope: !3872)
!4141 = !DILocation(line: 1109, column: 25, scope: !3872)
!4142 = !DILocation(line: 1110, column: 14, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3872, file: !198, line: 1110, column: 13)
!4144 = !DILocation(line: 1112, column: 42, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4143, file: !198, line: 1111, column: 9)
!4146 = !DILocation(line: 1112, column: 30, scope: !4145)
!4147 = !DILocation(line: 1112, column: 28, scope: !4145)
!4148 = !DILocation(line: 1113, column: 30, scope: !4145)
!4149 = !DILocation(line: 1113, column: 13, scope: !4145)
!4150 = !DILocation(line: 1113, column: 28, scope: !4145)
!4151 = !DILocation(line: 1114, column: 30, scope: !4145)
!4152 = !DILocation(line: 1114, column: 13, scope: !4145)
!4153 = !DILocation(line: 1114, column: 28, scope: !4145)
!4154 = !DILocation(line: 1115, column: 30, scope: !4145)
!4155 = !DILocation(line: 1115, column: 19, scope: !4145)
!4156 = !DILocation(line: 1115, column: 13, scope: !4145)
!4157 = !DILocation(line: 1115, column: 28, scope: !4145)
!4158 = !DILocation(line: 1116, column: 13, scope: !4145)
!4159 = !DILocation(line: 1117, column: 13, scope: !4145)
!4160 = !DILocation(line: 1118, column: 13, scope: !4145)
!4161 = !DILocation(line: 1119, column: 13, scope: !4145)
!4162 = !DILocation(line: 1120, column: 23, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4145, file: !198, line: 1120, column: 17)
!4164 = !DILocation(line: 1120, column: 30, scope: !4163)
!4165 = !DILocation(line: 1120, column: 17, scope: !4145)
!4166 = !DILocation(line: 1122, column: 34, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4163, file: !198, line: 1121, column: 13)
!4168 = !DILocation(line: 1122, column: 32, scope: !4167)
!4169 = !DILocation(line: 1123, column: 34, scope: !4167)
!4170 = !DILocation(line: 1123, column: 17, scope: !4167)
!4171 = !DILocation(line: 1123, column: 32, scope: !4167)
!4172 = !DILocation(line: 1124, column: 34, scope: !4167)
!4173 = !DILocation(line: 1124, column: 17, scope: !4167)
!4174 = !DILocation(line: 1124, column: 32, scope: !4167)
!4175 = !DILocation(line: 1125, column: 34, scope: !4167)
!4176 = !DILocation(line: 1125, column: 17, scope: !4167)
!4177 = !DILocation(line: 1125, column: 32, scope: !4167)
!4178 = !DILocation(line: 1126, column: 17, scope: !4167)
!4179 = !DILocation(line: 1127, column: 17, scope: !4167)
!4180 = !DILocation(line: 1128, column: 17, scope: !4167)
!4181 = !DILocation(line: 1129, column: 17, scope: !4167)
!4182 = !DILocation(line: 1130, column: 13, scope: !4167)
!4183 = !DILocation(line: 1134, column: 34, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4143, file: !198, line: 1133, column: 9)
!4185 = !DILocation(line: 1135, column: 13, scope: !4184)
!4186 = !DILocation(line: 1135, column: 34, scope: !4184)
!4187 = !DILocation(line: 1137, column: 13, scope: !4184)
!4188 = !DILocation(line: 1136, column: 36, scope: !4184)
!4189 = !DILocation(line: 1138, column: 13, scope: !4184)
!4190 = !DILocation(line: 1137, column: 36, scope: !4184)
!4191 = !DILocation(line: 1139, column: 13, scope: !4184)
!4192 = !DILocation(line: 1138, column: 36, scope: !4184)
!4193 = !DILocation(line: 1139, column: 36, scope: !4184)
!4194 = !DILocation(line: 1140, column: 23, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4184, file: !198, line: 1140, column: 17)
!4196 = !DILocation(line: 1140, column: 30, scope: !4195)
!4197 = !DILocation(line: 1140, column: 17, scope: !4184)
!4198 = !DILocation(line: 1142, column: 38, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4195, file: !198, line: 1141, column: 13)
!4200 = !DILocation(line: 1143, column: 17, scope: !4199)
!4201 = !DILocation(line: 1143, column: 38, scope: !4199)
!4202 = !DILocation(line: 1145, column: 17, scope: !4199)
!4203 = !DILocation(line: 1144, column: 40, scope: !4199)
!4204 = !DILocation(line: 1146, column: 17, scope: !4199)
!4205 = !DILocation(line: 1145, column: 40, scope: !4199)
!4206 = !DILocation(line: 1147, column: 17, scope: !4199)
!4207 = !DILocation(line: 1146, column: 40, scope: !4199)
!4208 = !DILocation(line: 1147, column: 40, scope: !4199)
!4209 = !DILocation(line: 1148, column: 13, scope: !4199)
!4210 = !DILocation(line: 1152, column: 18, scope: !3879)
!4211 = !DILocation(line: 1152, column: 9, scope: !3879)
!4212 = !DILocation(line: 1152, column: 9, scope: !3856)
!4213 = !DILocation(line: 1154, column: 36, scope: !3878)
!4214 = !DILocation(line: 1154, column: 30, scope: !3878)
!4215 = !DILocation(line: 0, scope: !3878)
!4216 = !DILocation(line: 1155, column: 30, scope: !3878)
!4217 = !DILocation(line: 1156, column: 13, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !3878, file: !198, line: 1156, column: 13)
!4219 = !DILocation(line: 1157, column: 80, scope: !4218)
!4220 = !{!1495, !1497, i64 17412}
!4221 = !DILocation(line: 1157, column: 47, scope: !4218)
!4222 = !DILocation(line: 1157, column: 13, scope: !4218)
!4223 = !DILocation(line: 0, scope: !4218)
!4224 = !DILocation(line: 1161, column: 14, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !3878, file: !198, line: 1161, column: 13)
!4226 = !DILocation(line: 1163, column: 13, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4225, file: !198, line: 1162, column: 9)
!4228 = !DILocation(line: 1164, column: 13, scope: !4227)
!4229 = !DILocation(line: 1165, column: 13, scope: !4227)
!4230 = !DILocation(line: 1166, column: 13, scope: !4227)
!4231 = !DILocation(line: 1167, column: 23, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4227, file: !198, line: 1167, column: 17)
!4233 = !DILocation(line: 1167, column: 30, scope: !4232)
!4234 = !DILocation(line: 1167, column: 17, scope: !4227)
!4235 = !DILocation(line: 1169, column: 17, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4232, file: !198, line: 1168, column: 13)
!4237 = !DILocation(line: 1170, column: 17, scope: !4236)
!4238 = !DILocation(line: 1171, column: 17, scope: !4236)
!4239 = !DILocation(line: 1172, column: 17, scope: !4236)
!4240 = !DILocation(line: 1173, column: 13, scope: !4236)
!4241 = !DILocation(line: 1177, column: 31, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4225, file: !198, line: 1176, column: 9)
!4243 = !DILocation(line: 1178, column: 23, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4242, file: !198, line: 1178, column: 17)
!4245 = !DILocation(line: 1178, column: 30, scope: !4244)
!4246 = !DILocation(line: 1178, column: 17, scope: !4242)
!4247 = !DILocation(line: 1179, column: 35, scope: !4244)
!4248 = !DILocation(line: 1179, column: 17, scope: !4244)
!4249 = !DILocation(line: 1182, column: 19, scope: !3887)
!4250 = !DILocation(line: 1182, column: 26, scope: !3887)
!4251 = !DILocation(line: 1182, column: 13, scope: !3878)
!4252 = !DILocation(line: 1184, column: 37, scope: !3885)
!4253 = !DILocation(line: 1188, column: 38, scope: !3883)
!4254 = !DILocation(line: 1188, column: 32, scope: !3883)
!4255 = !DILocation(line: 1188, column: 57, scope: !3883)
!4256 = !DILocation(line: 0, scope: !3883)
!4257 = !DILocation(line: 1189, column: 32, scope: !3883)
!4258 = !DILocation(line: 1189, column: 57, scope: !3883)
!4259 = !DILocation(line: 1189, column: 75, scope: !3883)
!4260 = !DILocation(line: 1189, column: 27, scope: !3883)
!4261 = !DILocation(line: 1190, column: 32, scope: !3883)
!4262 = !DILocation(line: 1190, column: 57, scope: !3883)
!4263 = !DILocation(line: 1190, column: 75, scope: !3883)
!4264 = !DILocation(line: 1190, column: 27, scope: !3883)
!4265 = !DILocation(line: 1191, column: 32, scope: !3883)
!4266 = !DILocation(line: 1191, column: 57, scope: !3883)
!4267 = !DILocation(line: 1191, column: 75, scope: !3883)
!4268 = !DILocation(line: 1191, column: 27, scope: !3883)
!4269 = !DILocation(line: 1193, column: 13, scope: !3883)
!4270 = !DILocation(line: 0, scope: !3885)
!4271 = !DILocation(line: 1198, column: 1, scope: !3856)
!4272 = distinct !DISubprogram(name: "x264_macroblock_bipred_init", scope: !198, file: !198, line: 1201, type: !1886, scopeLine: 1202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4273)
!4273 = !{!4274, !4275, !4277, !4280, !4283, !4285, !4288, !4289, !4290, !4291, !4294}
!4274 = !DILocalVariable(name: "h", arg: 1, scope: !4272, file: !198, line: 1201, type: !201)
!4275 = !DILocalVariable(name: "field", scope: !4276, file: !198, line: 1203, type: !187)
!4276 = distinct !DILexicalBlock(scope: !4272, file: !198, line: 1203, column: 5)
!4277 = !DILocalVariable(name: "i_ref0", scope: !4278, file: !198, line: 1204, type: !187)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !198, line: 1204, column: 9)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !198, line: 1203, column: 5)
!4280 = !DILocalVariable(name: "poc0", scope: !4281, file: !198, line: 1206, type: !187)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !198, line: 1205, column: 9)
!4282 = distinct !DILexicalBlock(scope: !4278, file: !198, line: 1204, column: 9)
!4283 = !DILocalVariable(name: "i_ref1", scope: !4284, file: !198, line: 1209, type: !187)
!4284 = distinct !DILexicalBlock(scope: !4281, file: !198, line: 1209, column: 13)
!4285 = !DILocalVariable(name: "dist_scale_factor", scope: !4286, file: !198, line: 1211, type: !187)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !198, line: 1210, column: 13)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !198, line: 1209, column: 13)
!4288 = !DILocalVariable(name: "poc1", scope: !4286, file: !198, line: 1212, type: !187)
!4289 = !DILocalVariable(name: "cur_poc", scope: !4286, file: !198, line: 1215, type: !187)
!4290 = !DILocalVariable(name: "td", scope: !4286, file: !198, line: 1216, type: !187)
!4291 = !DILocalVariable(name: "tb", scope: !4292, file: !198, line: 1221, type: !187)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !198, line: 1220, column: 17)
!4293 = distinct !DILexicalBlock(scope: !4286, file: !198, line: 1217, column: 21)
!4294 = !DILocalVariable(name: "tx", scope: !4292, file: !198, line: 1222, type: !187)
!4295 = !DILocation(line: 0, scope: !4272)
!4296 = !DILocation(line: 0, scope: !4276)
!4297 = !DILocation(line: 1203, column: 31, scope: !4279)
!4298 = !DILocation(line: 1203, column: 5, scope: !4276)
!4299 = !DILocation(line: 1204, column: 9, scope: !4278)
!4300 = !DILocation(line: 1209, column: 13, scope: !4284)
!4301 = !{!1495, !1497, i64 400}
!4302 = !DILocation(line: 0, scope: !4278)
!4303 = !DILocation(line: 1206, column: 39, scope: !4281)
!4304 = !DILocation(line: 1206, column: 24, scope: !4281)
!4305 = !DILocation(line: 1206, column: 57, scope: !4281)
!4306 = !DILocation(line: 0, scope: !4281)
!4307 = !DILocation(line: 1207, column: 31, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4281, file: !198, line: 1207, column: 17)
!4309 = !DILocation(line: 1208, column: 31, scope: !4308)
!4310 = !DILocation(line: 1208, column: 22, scope: !4308)
!4311 = !DILocation(line: 1208, column: 17, scope: !4308)
!4312 = !DILocation(line: 0, scope: !4284)
!4313 = !DILocation(line: 1212, column: 43, scope: !4286)
!4314 = !DILocation(line: 1212, column: 28, scope: !4286)
!4315 = !DILocation(line: 1212, column: 61, scope: !4286)
!4316 = !DILocation(line: 0, scope: !4286)
!4317 = !DILocation(line: 1213, column: 35, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4286, file: !198, line: 1213, column: 21)
!4319 = !DILocation(line: 1214, column: 35, scope: !4318)
!4320 = !DILocation(line: 1214, column: 26, scope: !4318)
!4321 = !DILocation(line: 1214, column: 21, scope: !4318)
!4322 = !DILocation(line: 1216, column: 43, scope: !4286)
!4323 = !DILocation(line: 0, scope: !1593, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 1216, column: 26, scope: !4286)
!4325 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !4324)
!4326 = !DILocation(line: 1217, column: 24, scope: !4293)
!4327 = !DILocation(line: 1217, column: 21, scope: !4286)
!4328 = !DILocation(line: 1215, column: 60, scope: !4286)
!4329 = !DILocation(line: 1215, column: 34, scope: !4286)
!4330 = !DILocation(line: 1215, column: 40, scope: !4286)
!4331 = !DILocation(line: 1215, column: 53, scope: !4286)
!4332 = !DILocation(line: 1215, column: 46, scope: !4286)
!4333 = !DILocation(line: 1221, column: 50, scope: !4292)
!4334 = !DILocation(line: 0, scope: !1593, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 1221, column: 30, scope: !4292)
!4336 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !4335)
!4337 = !DILocation(line: 0, scope: !4292)
!4338 = !DILocation(line: 1222, column: 40, scope: !4292)
!4339 = !DILocation(line: 1222, column: 48, scope: !4292)
!4340 = !DILocation(line: 1222, column: 55, scope: !4292)
!4341 = !DILocation(line: 1223, column: 57, scope: !4292)
!4342 = !DILocation(line: 1223, column: 62, scope: !4292)
!4343 = !DILocation(line: 1223, column: 68, scope: !4292)
!4344 = !DILocation(line: 0, scope: !1593, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 1223, column: 41, scope: !4292)
!4346 = !DILocation(line: 202, column: 14, scope: !1593, inlinedAt: !4345)
!4347 = !DILocation(line: 0, scope: !4293)
!4348 = !DILocation(line: 1226, column: 70, scope: !4286)
!4349 = !DILocation(line: 1226, column: 17, scope: !4286)
!4350 = !DILocation(line: 1226, column: 68, scope: !4286)
!4351 = !DILocation(line: 1230, column: 23, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4286, file: !198, line: 1229, column: 21)
!4353 = !DILocation(line: 1228, column: 35, scope: !4286)
!4354 = !DILocation(line: 1233, column: 70, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4352, file: !198, line: 1232, column: 17)
!4356 = !DILocation(line: 1237, column: 17, scope: !4355)
!4357 = !DILocation(line: 0, scope: !4352)
!4358 = !DILocation(line: 1233, column: 21, scope: !4355)
!4359 = !DILocation(line: 1233, column: 68, scope: !4355)
!4360 = !DILocation(line: 1209, column: 77, scope: !4287)
!4361 = !DILocation(line: 1209, column: 41, scope: !4287)
!4362 = distinct !{!4362, !4300, !4363, !1912, !1913}
!4363 = !DILocation(line: 1240, column: 13, scope: !4284)
!4364 = !DILocation(line: 1204, column: 73, scope: !4282)
!4365 = !DILocation(line: 1204, column: 37, scope: !4282)
!4366 = distinct !{!4366, !4299, !4367, !1912, !1913}
!4367 = !DILocation(line: 1241, column: 9, scope: !4278)
!4368 = !DILocation(line: 1203, column: 54, scope: !4279)
!4369 = distinct !{!4369, !4298, !4370, !1912, !1913}
!4370 = !DILocation(line: 1241, column: 9, scope: !4276)
!4371 = !DILocation(line: 1242, column: 1, scope: !4272)
