; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/frame.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/frame.c"
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
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_synch_frame_list_t = type { ptr, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid input colorspace\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Input picture width is greater than stride\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_new(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1343, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 %b_fdec, metadata !1344, metadata !DIExpression()), !dbg !1384
  %mb = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, !dbg !1385
  %0 = load i32, ptr %mb, align 16, !dbg !1386, !tbaa !1387
  call void @llvm.dbg.value(metadata i32 %0, metadata !1346, metadata !DIExpression()), !dbg !1384
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 26, !dbg !1417
  %1 = load i32, ptr %b_interlaced, align 8, !dbg !1417, !tbaa !1418
  %shl = shl i32 32, %1, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1350, metadata !DIExpression()), !dbg !1384
  %2 = load i32, ptr %h, align 16, !dbg !1420, !tbaa !1421
  %and = and i32 %2, 2, !dbg !1422
  %tobool.not = icmp eq i32 %and, 0, !dbg !1422
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !1423

cond.false:                                       ; preds = %entry
  %and5 = and i32 %2, 1, !dbg !1424
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !1425
  %cond = select i1 %tobool6.not, i32 16, i32 32, !dbg !1425
  br label %cond.end, !dbg !1423

cond.end:                                         ; preds = %entry, %cond.false
  %cond7 = phi i32 [ %cond, %cond.false ], [ 64, %entry ], !dbg !1423
  call void @llvm.dbg.value(metadata i32 %cond7, metadata !1353, metadata !DIExpression()), !dbg !1384
  %call = tail call ptr @x264_malloc(i32 noundef 15632) #10, !dbg !1426
  call void @llvm.dbg.value(metadata ptr %call, metadata !1345, metadata !DIExpression()), !dbg !1384
  %tobool9.not = icmp eq ptr %call, null, !dbg !1429
  br i1 %tobool9.not, label %fail, label %do.end, !dbg !1426

do.end:                                           ; preds = %cond.end
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %call, i8 0, i64 15632, i1 false), !dbg !1431
  %i_width13 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 5, !dbg !1432
  %3 = load i32, ptr %i_width13, align 4, !dbg !1432, !tbaa !1433
  %add = add nsw i32 %3, 15, !dbg !1432
  %and14 = and i32 %add, -16, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %and14, metadata !1348, metadata !DIExpression()), !dbg !1384
  %sub = add nsw i32 %cond7, -1, !dbg !1434
  %add15 = add nuw nsw i32 %cond7, 63, !dbg !1434
  %add16 = add i32 %add15, %and14, !dbg !1434
  %neg = sub nsw i32 0, %cond7, !dbg !1434
  %and18 = and i32 %add16, %neg, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %and18, metadata !1347, metadata !DIExpression()), !dbg !1384
  %i_height = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 6, !dbg !1435
  %4 = load i32, ptr %i_height, align 8, !dbg !1435, !tbaa !1436
  %5 = load i32, ptr %b_interlaced, align 8, !dbg !1435, !tbaa !1418
  %shl22 = shl i32 16, %5, !dbg !1435
  %sub23 = add i32 %4, -1, !dbg !1435
  %add24 = add i32 %sub23, %shl22, !dbg !1435
  %neg29 = sub i32 0, %shl22, !dbg !1435
  %and30 = and i32 %add24, %neg29, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %and30, metadata !1349, metadata !DIExpression()), !dbg !1384
  %i_plane = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 23, !dbg !1437
  store i32 3, ptr %i_plane, align 4, !dbg !1438, !tbaa !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1354, metadata !DIExpression()), !dbg !1442
  br label %for.body, !dbg !1443

for.cond.cleanup:                                 ; preds = %for.body
  %i_stride57 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 24, !dbg !1444
  %6 = load i32, ptr %i_stride57, align 8, !dbg !1445, !tbaa !1446
  %i_lines59 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 26, !dbg !1447
  %7 = load i32, ptr %i_lines59, align 16, !dbg !1448, !tbaa !1446
  %mul = shl nsw i32 %shl, 1, !dbg !1449
  %add61 = add nsw i32 %7, %mul, !dbg !1450
  %mul62 = mul nsw i32 %add61, %6, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %mul62, metadata !1351, metadata !DIExpression()), !dbg !1384
  %arrayidx64 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 24, i64 1, !dbg !1452
  %8 = load i32, ptr %arrayidx64, align 4, !dbg !1452, !tbaa !1446
  %arrayidx66 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 26, i64 1, !dbg !1453
  %9 = load i32, ptr %arrayidx66, align 4, !dbg !1453, !tbaa !1446
  %add68 = add nsw i32 %9, %mul, !dbg !1454
  %mul69 = mul nsw i32 %add68, %8, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %mul69, metadata !1352, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata i32 1, metadata !1356, metadata !DIExpression()), !dbg !1456
  br label %do.body75, !dbg !1457

for.body:                                         ; preds = %do.end, %for.body
  %indvars.iv = phi i64 [ 0, %do.end ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1354, metadata !DIExpression()), !dbg !1442
  %tobool31 = icmp ne i64 %indvars.iv, 0, !dbg !1458
  %lnot.ext = zext i1 %tobool31 to i32, !dbg !1458
  %shr = ashr i32 %and18, %lnot.ext, !dbg !1458
  %add34 = add nsw i32 %shr, %sub, !dbg !1458
  %and37 = and i32 %add34, %neg, !dbg !1458
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 24, i64 %indvars.iv, !dbg !1461
  store i32 %and37, ptr %arrayidx, align 4, !dbg !1462, !tbaa !1446
  %shr44 = ashr i32 %and14, %lnot.ext, !dbg !1463
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 25, i64 %indvars.iv, !dbg !1464
  store i32 %shr44, ptr %arrayidx47, align 4, !dbg !1465, !tbaa !1446
  %shr53 = ashr i32 %and30, %lnot.ext, !dbg !1466
  %arrayidx56 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 26, i64 %indvars.iv, !dbg !1467
  store i32 %shr53, ptr %arrayidx56, align 4, !dbg !1468, !tbaa !1446
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1354, metadata !DIExpression()), !dbg !1442
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !1470
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1443, !llvm.loop !1471

for.cond101.preheader:                            ; preds = %do.end86
  %i_bframe = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 17
  call void @llvm.dbg.value(metadata i32 0, metadata !1358, metadata !DIExpression()), !dbg !1475
  %10 = load i32, ptr %i_bframe, align 4, !dbg !1476, !tbaa !1477
  %cmp104890 = icmp sgt i32 %10, -2, !dbg !1478
  br i1 %cmp104890, label %for.cond107.preheader.lr.ph, label %for.end142, !dbg !1479

for.cond107.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %div115 = sdiv i32 %and30, 16
  %mul116 = shl nsw i32 %div115, 2
  br label %for.cond107.preheader, !dbg !1479

do.body75:                                        ; preds = %for.cond.cleanup, %do.end86
  %indvars.iv913 = phi i64 [ 1, %for.cond.cleanup ], [ %indvars.iv.next914, %do.end86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv913, metadata !1356, metadata !DIExpression()), !dbg !1456
  %call76 = tail call ptr @x264_malloc(i32 noundef %mul69) #10, !dbg !1480
  %arrayidx78 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 34, i64 %indvars.iv913, !dbg !1480
  store ptr %call76, ptr %arrayidx78, align 8, !dbg !1480, !tbaa !1484
  %tobool82.not = icmp eq ptr %call76, null, !dbg !1485
  br i1 %tobool82.not, label %fail, label %do.end86, !dbg !1480

do.end86:                                         ; preds = %do.body75
  %arrayidx92 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 24, i64 %indvars.iv913, !dbg !1487
  %11 = load i32, ptr %arrayidx92, align 4, !dbg !1487, !tbaa !1446
  %mul93 = mul nsw i32 %11, %shl, !dbg !1488
  %add94 = add nsw i32 %mul93, 32, !dbg !1489
  %div = sdiv i32 %add94, 2, !dbg !1490
  %idx.ext = sext i32 %div to i64, !dbg !1491
  %add.ptr = getelementptr inbounds i8, ptr %call76, i64 %idx.ext, !dbg !1491
  %arrayidx96 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 30, i64 %indvars.iv913, !dbg !1492
  store ptr %add.ptr, ptr %arrayidx96, align 8, !dbg !1493, !tbaa !1484
  %indvars.iv.next914 = add nuw nsw i64 %indvars.iv913, 1, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next914, metadata !1356, metadata !DIExpression()), !dbg !1456
  %exitcond916.not = icmp eq i64 %indvars.iv.next914, 3, !dbg !1495
  br i1 %exitcond916.not, label %for.cond101.preheader, label %do.body75, !dbg !1457, !llvm.loop !1496

for.cond107.preheader:                            ; preds = %for.cond107.preheader.lr.ph, %for.inc138
  %12 = phi i32 [ %10, %for.cond107.preheader.lr.ph ], [ %.lcssa956.sink, %for.inc138 ]
  %indvars.iv920 = phi i64 [ 0, %for.cond107.preheader.lr.ph ], [ %indvars.iv.next921, %for.inc138 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv920, metadata !1358, metadata !DIExpression()), !dbg !1475
  call void @llvm.dbg.value(metadata i32 0, metadata !1360, metadata !DIExpression()), !dbg !1498
  %cmp111887 = icmp sgt i32 %12, -2, !dbg !1499
  br i1 %cmp111887, label %do.body114, label %for.inc138, !dbg !1501

for.cond107:                                      ; preds = %do.body114
  %indvars.iv.next918 = add nuw nsw i64 %indvars.iv917, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next918, metadata !1360, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i32 undef, metadata !1360, metadata !DIExpression()), !dbg !1498
  %13 = load i32, ptr %i_bframe, align 4, !dbg !1503, !tbaa !1477
  %14 = sext i32 %13 to i64, !dbg !1499
  %cmp111.not = icmp sgt i64 %indvars.iv917, %14, !dbg !1499
  br i1 %cmp111.not, label %for.inc138, label %do.body114, !dbg !1501, !llvm.loop !1504

do.body114:                                       ; preds = %for.cond107.preheader, %for.cond107
  %indvars.iv917 = phi i64 [ %indvars.iv.next918, %for.cond107 ], [ 0, %for.cond107.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv917, metadata !1360, metadata !DIExpression()), !dbg !1498
  %call118 = tail call ptr @x264_malloc(i32 noundef %mul116) #10, !dbg !1506
  %arrayidx122 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 56, i64 %indvars.iv920, i64 %indvars.iv917, !dbg !1506
  store ptr %call118, ptr %arrayidx122, align 8, !dbg !1506, !tbaa !1484
  %tobool128.not = icmp eq ptr %call118, null, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %indvars.iv917, metadata !1360, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1498
  br i1 %tobool128.not, label %fail, label %for.cond107, !dbg !1506

for.inc138:                                       ; preds = %for.cond107, %for.cond107.preheader
  %.lcssa956.sink = phi i32 [ %12, %for.cond107.preheader ], [ %13, %for.cond107 ]
  %15 = sext i32 %.lcssa956.sink to i64, !dbg !1510
  %indvars.iv.next921 = add nuw nsw i64 %indvars.iv920, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next921, metadata !1358, metadata !DIExpression()), !dbg !1475
  %cmp104.not = icmp sgt i64 %indvars.iv920, %15, !dbg !1478
  br i1 %cmp104.not, label %for.end142, label %for.cond107.preheader, !dbg !1479, !llvm.loop !1512

for.end142:                                       ; preds = %for.inc138, %for.cond101.preheader
  store i32 -1, ptr %call, align 16, !dbg !1514, !tbaa !1515
  %i_type = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 1, !dbg !1516
  store i32 0, ptr %i_type, align 4, !dbg !1517, !tbaa !1518
  %i_qpplus1 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 2, !dbg !1519
  store i32 0, ptr %i_qpplus1, align 8, !dbg !1520, !tbaa !1521
  %i_pts = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 3, !dbg !1522
  store i64 -1, ptr %i_pts, align 16, !dbg !1523, !tbaa !1524
  %i_frame = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 10, !dbg !1525
  store i32 -1, ptr %i_frame, align 8, !dbg !1526, !tbaa !1527
  %i_frame_num = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 13, !dbg !1528
  store i32 -1, ptr %i_frame_num, align 4, !dbg !1529, !tbaa !1530
  %i_lines_completed = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 76, !dbg !1531
  store i32 -1, ptr %i_lines_completed, align 8, !dbg !1532, !tbaa !1533
  %conv143 = trunc i32 %b_fdec to i8, !dbg !1534
  %b_fdec144 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 17, !dbg !1535
  store i8 %conv143, ptr %b_fdec144, align 4, !dbg !1536, !tbaa !1537
  %i_pic_struct = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 15, !dbg !1538
  store i32 0, ptr %i_pic_struct, align 4, !dbg !1539, !tbaa !1540
  %i_field_cnt = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 12, !dbg !1541
  store i32 -1, ptr %i_field_cnt, align 16, !dbg !1542, !tbaa !1543
  %i_duration = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 5, !dbg !1544
  %i_cpb_delay_lookahead = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 75, !dbg !1545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i_duration, i8 0, i64 16, i1 false), !dbg !1546
  store i32 -1, ptr %i_cpb_delay_lookahead, align 4, !dbg !1547, !tbaa !1548
  %i_coded_fields_lookahead = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 74, !dbg !1549
  store i32 -1, ptr %i_coded_fields_lookahead, align 16, !dbg !1550, !tbaa !1551
  %orig = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 40, !dbg !1552
  store ptr %call, ptr %orig, align 8, !dbg !1553, !tbaa !1554
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 11, !dbg !1555
  %16 = load i32, ptr %i_subpel_refine, align 4, !dbg !1555, !tbaa !1556
  %tobool146 = icmp ne i32 %16, 0, !dbg !1557
  %tobool147 = icmp ne i32 %b_fdec, 0
  %or.cond = and i1 %tobool147, %tobool146, !dbg !1558
  br i1 %or.cond, label %do.body149, label %do.body188, !dbg !1558

do.body149:                                       ; preds = %for.end142
  %mul150 = shl nsw i32 %mul62, 2, !dbg !1559
  %call151 = tail call ptr @x264_malloc(i32 noundef %mul150) #10, !dbg !1559
  %buffer152 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 34, !dbg !1559
  store ptr %call151, ptr %buffer152, align 8, !dbg !1559, !tbaa !1484
  %tobool156.not = icmp eq ptr %call151, null, !dbg !1561
  br i1 %tobool156.not, label %fail, label %for.cond162.preheader, !dbg !1559

for.cond162.preheader:                            ; preds = %do.body149
  %17 = load i32, ptr %i_stride57, align 8, !tbaa !1446
  %mul174 = mul nsw i32 %17, %shl
  %idx.ext175 = sext i32 %mul174 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1363, metadata !DIExpression()), !dbg !1563
  %18 = sext i32 %mul62 to i64, !dbg !1564
  call void @llvm.dbg.value(metadata i64 0, metadata !1363, metadata !DIExpression()), !dbg !1563
  %add.ptr171963 = getelementptr inbounds i8, ptr %call151, i64 %idx.ext175, !dbg !1565
  %add.ptr176964 = getelementptr inbounds i8, ptr %add.ptr171963, i64 32, !dbg !1567
  %arrayidx179965 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 31, i64 0, !dbg !1568
  store ptr %add.ptr176964, ptr %arrayidx179965, align 8, !dbg !1569, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 1, metadata !1363, metadata !DIExpression()), !dbg !1563
  br label %for.body166.for.body166_crit_edge, !dbg !1564

for.cond.cleanup165:                              ; preds = %for.body166.for.body166_crit_edge
  %filtered184 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 31, !dbg !1570
  %19 = load ptr, ptr %filtered184, align 16, !dbg !1571, !tbaa !1484
  %plane186 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 30, !dbg !1572
  store ptr %19, ptr %plane186, align 8, !dbg !1573, !tbaa !1484
  br label %if.end211, !dbg !1574

for.body166.for.body166_crit_edge:                ; preds = %for.cond162.preheader, %for.body166.for.body166_crit_edge
  %indvars.iv.next924966 = phi i64 [ 1, %for.cond162.preheader ], [ %indvars.iv.next924, %for.body166.for.body166_crit_edge ]
  %.pre = load ptr, ptr %buffer152, align 8, !dbg !1575, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next924966, metadata !1363, metadata !DIExpression()), !dbg !1563
  %20 = mul nsw i64 %indvars.iv.next924966, %18, !dbg !1576
  %add.ptr171 = getelementptr inbounds i8, ptr %.pre, i64 %idx.ext175, !dbg !1565
  %add.ptr176 = getelementptr inbounds i8, ptr %add.ptr171, i64 32, !dbg !1567
  %add.ptr177 = getelementptr inbounds i8, ptr %add.ptr176, i64 %20, !dbg !1577
  %arrayidx179 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 31, i64 %indvars.iv.next924966, !dbg !1568
  store ptr %add.ptr177, ptr %arrayidx179, align 8, !dbg !1569, !tbaa !1484
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv.next924966, 1, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next924, metadata !1363, metadata !DIExpression()), !dbg !1563
  %exitcond927.not = icmp eq i64 %indvars.iv.next924, 4, !dbg !1579
  br i1 %exitcond927.not, label %for.cond.cleanup165, label %for.body166.for.body166_crit_edge, !dbg !1564, !llvm.loop !1580

do.body188:                                       ; preds = %for.end142
  %call189 = tail call ptr @x264_malloc(i32 noundef %mul62) #10, !dbg !1582
  %buffer190 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 34, !dbg !1582
  store ptr %call189, ptr %buffer190, align 8, !dbg !1582, !tbaa !1484
  %tobool194.not = icmp eq ptr %call189, null, !dbg !1585
  br i1 %tobool194.not, label %fail, label %do.end198, !dbg !1582

do.end198:                                        ; preds = %do.body188
  %21 = load i32, ptr %i_stride57, align 8, !dbg !1587, !tbaa !1446
  %mul203 = mul nsw i32 %21, %shl, !dbg !1588
  %idx.ext204 = sext i32 %mul203 to i64, !dbg !1589
  %add.ptr205 = getelementptr inbounds i8, ptr %call189, i64 %idx.ext204, !dbg !1589
  %add.ptr206 = getelementptr inbounds i8, ptr %add.ptr205, i64 32, !dbg !1590
  %plane207 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 30, !dbg !1591
  store ptr %add.ptr206, ptr %plane207, align 8, !dbg !1592, !tbaa !1484
  %filtered209 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 31, !dbg !1593
  store ptr %add.ptr206, ptr %filtered209, align 16, !dbg !1594, !tbaa !1484
  br label %if.end211

if.end211:                                        ; preds = %do.end198, %for.cond.cleanup165
  %b_duplicate = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 39, !dbg !1595
  store i32 0, ptr %b_duplicate, align 16, !dbg !1596, !tbaa !1597
  br i1 %tobool147, label %do.body214, label %if.else376, !dbg !1598

do.body214:                                       ; preds = %if.end211
  %call218 = tail call ptr @x264_malloc(i32 noundef %0) #10, !dbg !1599
  %mb_type = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 41, !dbg !1599
  store ptr %call218, ptr %mb_type, align 16, !dbg !1599, !tbaa !1602
  %tobool220.not = icmp eq ptr %call218, null, !dbg !1603
  br i1 %tobool220.not, label %fail, label %do.body225, !dbg !1599

do.body225:                                       ; preds = %do.body214
  %call229 = tail call ptr @x264_malloc(i32 noundef %0) #10, !dbg !1605
  %mb_partition = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 42, !dbg !1605
  store ptr %call229, ptr %mb_partition, align 8, !dbg !1605, !tbaa !1607
  %tobool231.not = icmp eq ptr %call229, null, !dbg !1608
  br i1 %tobool231.not, label %fail, label %do.body236, !dbg !1605

do.body236:                                       ; preds = %do.body225
  %mul237 = shl i32 %0, 6, !dbg !1610
  %call241 = tail call ptr @x264_malloc(i32 noundef %mul237) #10, !dbg !1610
  %mv = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 43, !dbg !1610
  store ptr %call241, ptr %mv, align 16, !dbg !1610, !tbaa !1484
  %tobool245.not = icmp eq ptr %call241, null, !dbg !1612
  br i1 %tobool245.not, label %fail, label %do.body250, !dbg !1610

do.body250:                                       ; preds = %do.body236
  %mul251 = shl i32 %0, 2, !dbg !1614
  %call255 = tail call ptr @x264_malloc(i32 noundef %mul251) #10, !dbg !1614
  %mv16x16 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 44, !dbg !1614
  store ptr %call255, ptr %mv16x16, align 16, !dbg !1614, !tbaa !1616
  %tobool257.not = icmp eq ptr %call255, null, !dbg !1617
  br i1 %tobool257.not, label %fail, label %do.body262, !dbg !1614

do.body262:                                       ; preds = %do.body250
  %call267 = tail call ptr @x264_malloc(i32 noundef %mul251) #10, !dbg !1619
  %ref = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 48, !dbg !1619
  store ptr %call267, ptr %ref, align 8, !dbg !1619, !tbaa !1484
  %tobool271.not = icmp eq ptr %call267, null, !dbg !1621
  br i1 %tobool271.not, label %fail, label %do.end275, !dbg !1619

do.end275:                                        ; preds = %do.body262
  %22 = load i32, ptr %i_bframe, align 4, !dbg !1623, !tbaa !1477
  %tobool278.not = icmp eq i32 %22, 0, !dbg !1625
  br i1 %tobool278.not, label %if.else310, label %do.body280, !dbg !1626

do.body280:                                       ; preds = %do.end275
  %call285 = tail call ptr @x264_malloc(i32 noundef %mul237) #10, !dbg !1627
  %arrayidx287 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 43, i64 1, !dbg !1627
  store ptr %call285, ptr %arrayidx287, align 8, !dbg !1627, !tbaa !1484
  %tobool290.not = icmp eq ptr %call285, null, !dbg !1630
  br i1 %tobool290.not, label %fail, label %do.body295, !dbg !1627

do.body295:                                       ; preds = %do.body280
  %call300 = tail call ptr @x264_malloc(i32 noundef %mul251) #10, !dbg !1632
  %arrayidx302 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 48, i64 1, !dbg !1632
  store ptr %call300, ptr %arrayidx302, align 8, !dbg !1632, !tbaa !1484
  %tobool305.not = icmp eq ptr %call300, null, !dbg !1634
  br i1 %tobool305.not, label %fail, label %do.body316, !dbg !1632

if.else310:                                       ; preds = %do.end275
  %arrayidx312 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 43, i64 1, !dbg !1636
  store ptr null, ptr %arrayidx312, align 8, !dbg !1638, !tbaa !1484
  %arrayidx314 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 48, i64 1, !dbg !1639
  store ptr null, ptr %arrayidx314, align 8, !dbg !1640, !tbaa !1484
  br label %do.body316

do.body316:                                       ; preds = %if.else310, %do.body295
  %div317 = sdiv i32 %and30, 16, !dbg !1641
  %mul319 = shl nsw i32 %div317, 2, !dbg !1641
  %call321 = tail call ptr @x264_malloc(i32 noundef %mul319) #10, !dbg !1641
  %i_row_bits = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 58, !dbg !1641
  store ptr %call321, ptr %i_row_bits, align 8, !dbg !1641, !tbaa !1643
  %tobool323.not = icmp eq ptr %call321, null, !dbg !1644
  br i1 %tobool323.not, label %fail, label %do.body328, !dbg !1641

do.body328:                                       ; preds = %do.body316
  %call333 = tail call ptr @x264_malloc(i32 noundef %mul319) #10, !dbg !1646
  %f_row_qp = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 59, !dbg !1646
  store ptr %call333, ptr %f_row_qp, align 16, !dbg !1646, !tbaa !1648
  %tobool335.not = icmp eq ptr %call333, null, !dbg !1649
  br i1 %tobool335.not, label %fail, label %do.end339, !dbg !1646

do.end339:                                        ; preds = %do.body328
  %i_me_method = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 7, !dbg !1651
  %23 = load i32, ptr %i_me_method, align 4, !dbg !1651, !tbaa !1653
  %cmp342 = icmp sgt i32 %23, 2, !dbg !1654
  br i1 %cmp342, label %do.body345, label %cleanup646, !dbg !1655

do.body345:                                       ; preds = %do.end339
  %24 = load i32, ptr %i_stride57, align 8, !dbg !1656, !tbaa !1446
  %25 = load i32, ptr %i_lines59, align 16, !dbg !1656, !tbaa !1446
  %add351 = add nsw i32 %25, %mul, !dbg !1656
  %mul352 = mul nsw i32 %add351, %24, !dbg !1656
  %conv353 = sext i32 %mul352 to i64, !dbg !1656
  %mul354 = shl nsw i64 %conv353, 1, !dbg !1656
  %b_have_sub8x8_esa = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 17, !dbg !1656
  %26 = load i32, ptr %b_have_sub8x8_esa, align 4, !dbg !1656, !tbaa !1659
  %sh_prom = zext i32 %26 to i64, !dbg !1656
  %shl355 = shl i64 %mul354, %sh_prom, !dbg !1656
  %conv356 = trunc i64 %shl355 to i32, !dbg !1656
  %call357 = tail call ptr @x264_malloc(i32 noundef %conv356) #10, !dbg !1656
  %arrayidx359 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 34, i64 3, !dbg !1656
  store ptr %call357, ptr %arrayidx359, align 8, !dbg !1656, !tbaa !1484
  %tobool362.not = icmp eq ptr %call357, null, !dbg !1660
  br i1 %tobool362.not, label %fail, label %do.end366, !dbg !1656

do.end366:                                        ; preds = %do.body345
  %27 = load i32, ptr %i_stride57, align 8, !dbg !1662, !tbaa !1446
  %mul371 = mul nsw i32 %27, %shl, !dbg !1663
  %idx.ext372 = sext i32 %mul371 to i64, !dbg !1664
  %add.ptr373 = getelementptr inbounds i16, ptr %call357, i64 %idx.ext372, !dbg !1664
  %add.ptr374 = getelementptr inbounds i16, ptr %add.ptr373, i64 32, !dbg !1665
  %integral = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 33, !dbg !1666
  store ptr %add.ptr374, ptr %integral, align 16, !dbg !1667, !tbaa !1668
  br label %cleanup646, !dbg !1669

if.else376:                                       ; preds = %if.end211
  %b_have_lowres = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 16, !dbg !1670
  %28 = load i32, ptr %b_have_lowres, align 16, !dbg !1670, !tbaa !1671
  %tobool378.not = icmp eq i32 %28, 0, !dbg !1672
  br i1 %tobool378.not, label %if.end586, label %if.then379, !dbg !1673

if.then379:                                       ; preds = %if.else376
  %i_width380 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 25, !dbg !1674
  %29 = load i32, ptr %i_width380, align 4, !dbg !1675, !tbaa !1446
  %div382 = sdiv i32 %29, 2, !dbg !1676
  %i_width_lowres = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 28, !dbg !1677
  store i32 %div382, ptr %i_width_lowres, align 16, !dbg !1678, !tbaa !1679
  %add386 = add nsw i32 %add15, %div382, !dbg !1680
  %and389 = and i32 %add386, %neg, !dbg !1680
  %i_stride_lowres = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 27, !dbg !1681
  store i32 %and389, ptr %i_stride_lowres, align 4, !dbg !1682, !tbaa !1683
  %30 = load i32, ptr %i_lines59, align 16, !dbg !1684, !tbaa !1446
  %div392 = sdiv i32 %30, 2, !dbg !1685
  %i_lines_lowres = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 29, !dbg !1686
  store i32 %div392, ptr %i_lines_lowres, align 4, !dbg !1687, !tbaa !1688
  %add397 = add nsw i32 %div392, 64, !dbg !1689
  %mul398 = mul nsw i32 %add397, %and389, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %mul398, metadata !1351, metadata !DIExpression()), !dbg !1384
  %mul400 = shl nsw i32 %mul398, 2, !dbg !1691
  %call401 = tail call ptr @x264_malloc(i32 noundef %mul400) #10, !dbg !1691
  %buffer_lowres = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 35, !dbg !1691
  store ptr %call401, ptr %buffer_lowres, align 8, !dbg !1691, !tbaa !1484
  %tobool405.not = icmp eq ptr %call401, null, !dbg !1693
  br i1 %tobool405.not, label %fail, label %for.cond411.preheader, !dbg !1691

for.cond411.preheader:                            ; preds = %if.then379
  %31 = load i32, ptr %i_stride_lowres, align 4, !tbaa !1683
  %mul419 = shl nsw i32 %31, 5
  %add420 = add nsw i32 %mul419, 32
  %idx.ext421 = sext i32 %add420 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1367, metadata !DIExpression()), !dbg !1695
  %32 = sext i32 %mul398 to i64, !dbg !1696
  call void @llvm.dbg.value(metadata i64 0, metadata !1367, metadata !DIExpression()), !dbg !1695
  %add.ptr422967 = getelementptr inbounds i8, ptr %call401, i64 %idx.ext421, !dbg !1697
  %arrayidx427968 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 32, i64 0, !dbg !1699
  store ptr %add.ptr422967, ptr %arrayidx427968, align 8, !dbg !1700, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 1, metadata !1367, metadata !DIExpression()), !dbg !1695
  br label %for.body415.for.body415_crit_edge, !dbg !1696

for.cond433.preheader:                            ; preds = %for.body415.for.body415_crit_edge
  call void @llvm.dbg.value(metadata i32 0, metadata !1373, metadata !DIExpression()), !dbg !1701
  %33 = load i32, ptr %i_bframe, align 4, !dbg !1702, !tbaa !1477
  %34 = icmp slt i32 %33, 0, !dbg !1704
  br i1 %34, label %do.body519, label %for.cond446.preheader

for.body415.for.body415_crit_edge:                ; preds = %for.cond411.preheader, %for.body415.for.body415_crit_edge
  %indvars.iv.next929969 = phi i64 [ 1, %for.cond411.preheader ], [ %indvars.iv.next929, %for.body415.for.body415_crit_edge ]
  %.pre945 = load ptr, ptr %buffer_lowres, align 8, !dbg !1705, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next929969, metadata !1367, metadata !DIExpression()), !dbg !1695
  %add.ptr422 = getelementptr inbounds i8, ptr %.pre945, i64 %idx.ext421, !dbg !1697
  %35 = mul nsw i64 %indvars.iv.next929969, %32, !dbg !1706
  %add.ptr425 = getelementptr inbounds i8, ptr %add.ptr422, i64 %35, !dbg !1707
  %arrayidx427 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 32, i64 %indvars.iv.next929969, !dbg !1699
  store ptr %add.ptr425, ptr %arrayidx427, align 8, !dbg !1700, !tbaa !1484
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv.next929969, 1, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next929, metadata !1367, metadata !DIExpression()), !dbg !1695
  %exitcond932.not = icmp eq i64 %indvars.iv.next929, 4, !dbg !1709
  br i1 %exitcond932.not, label %for.cond433.preheader, label %for.body415.for.body415_crit_edge, !dbg !1696, !llvm.loop !1710

for.cond446.preheader:                            ; preds = %for.cond433.preheader, %for.inc514
  %36 = phi i32 [ %42, %for.inc514 ], [ %33, %for.cond433.preheader ]
  %indvars.iv936 = phi i64 [ %indvars.iv.next937, %for.inc514 ], [ 0, %for.cond433.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv936, metadata !1373, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 0, metadata !1375, metadata !DIExpression()), !dbg !1712
  %cmp449.not895 = icmp slt i32 %36, 0, !dbg !1704
  br i1 %cmp449.not895, label %for.inc514, label %do.body454, !dbg !1713

for.cond446:                                      ; preds = %do.end475
  %indvars.iv.next934 = add nuw nsw i64 %indvars.iv933, 1, !dbg !1714
  call void @llvm.dbg.value(metadata i32 undef, metadata !1375, metadata !DIExpression()), !dbg !1712
  %37 = load i32, ptr %i_bframe, align 4, !dbg !1702, !tbaa !1477
  %38 = sext i32 %37 to i64, !dbg !1704
  %cmp449.not.not = icmp slt i64 %indvars.iv933, %38, !dbg !1704
  br i1 %cmp449.not.not, label %do.body454, label %for.inc514, !dbg !1713, !llvm.loop !1715

do.body454:                                       ; preds = %for.cond446.preheader, %for.cond446
  %indvars.iv933 = phi i64 [ %indvars.iv.next934, %for.cond446 ], [ 0, %for.cond446.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv933, metadata !1375, metadata !DIExpression()), !dbg !1712
  %39 = load i32, ptr %mb, align 16, !dbg !1717, !tbaa !1387
  %mul457 = shl i32 %39, 2, !dbg !1717
  %call461 = tail call ptr @x264_malloc(i32 noundef %mul457) #10, !dbg !1717
  %arrayidx465 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 45, i64 %indvars.iv936, i64 %indvars.iv933, !dbg !1717
  store ptr %call461, ptr %arrayidx465, align 8, !dbg !1717, !tbaa !1484
  %tobool471.not = icmp eq ptr %call461, null, !dbg !1721
  br i1 %tobool471.not, label %fail, label %do.end475, !dbg !1717

do.end475:                                        ; preds = %do.body454
  %40 = load i32, ptr %mb, align 16, !dbg !1723, !tbaa !1387
  %mul483 = shl nsw i32 %40, 1, !dbg !1723
  %conv484 = sext i32 %mul483 to i64, !dbg !1723
  %mul485 = shl nsw i64 %conv484, 1, !dbg !1723
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call461, i8 0, i64 %mul485, i1 false), !dbg !1723
  %41 = load i32, ptr %mb, align 16, !dbg !1724, !tbaa !1387
  %mul492 = shl i32 %41, 2, !dbg !1724
  %call494 = tail call ptr @x264_malloc(i32 noundef %mul492) #10, !dbg !1724
  %arrayidx498 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 47, i64 %indvars.iv936, i64 %indvars.iv933, !dbg !1724
  store ptr %call494, ptr %arrayidx498, align 8, !dbg !1724, !tbaa !1484
  %tobool504.not = icmp eq ptr %call494, null, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %indvars.iv933, metadata !1375, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1712
  br i1 %tobool504.not, label %fail, label %for.cond446, !dbg !1724

for.inc514:                                       ; preds = %for.cond446, %for.cond446.preheader
  %42 = phi i32 [ %36, %for.cond446.preheader ], [ %37, %for.cond446 ], !dbg !1728
  %indvars.iv.next937 = add nuw nsw i64 %indvars.iv936, 1, !dbg !1729
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next937, metadata !1373, metadata !DIExpression()), !dbg !1701
  %tobool436 = icmp ne i32 %42, 0, !dbg !1730
  %43 = zext i1 %tobool436 to i64, !dbg !1731
  %cmp441.not.not = icmp ult i64 %indvars.iv936, %43, !dbg !1731
  br i1 %cmp441.not.not, label %for.cond446.preheader, label %do.body519, !dbg !1732, !llvm.loop !1733

do.body519:                                       ; preds = %for.inc514, %for.cond433.preheader
  %add520 = add nsw i32 %0, 3, !dbg !1736
  %conv521 = sext i32 %add520 to i64, !dbg !1736
  %mul522 = shl nsw i64 %conv521, 1, !dbg !1736
  %conv523 = trunc i64 %mul522 to i32, !dbg !1736
  %call524 = tail call ptr @x264_malloc(i32 noundef %conv523) #10, !dbg !1736
  %i_propagate_cost = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 64, !dbg !1736
  store ptr %call524, ptr %i_propagate_cost, align 8, !dbg !1736, !tbaa !1738
  %tobool526.not = icmp eq ptr %call524, null, !dbg !1739
  br i1 %tobool526.not, label %fail, label %for.cond532.preheader, !dbg !1736

for.cond532.preheader:                            ; preds = %do.body519
  call void @llvm.dbg.value(metadata i32 0, metadata !1378, metadata !DIExpression()), !dbg !1741
  %44 = load i32, ptr %i_bframe, align 4, !dbg !1742, !tbaa !1477
  %cmp536.not905 = icmp slt i32 %44, -1, !dbg !1743
  br i1 %cmp536.not905, label %for.end578, label %for.cond541.preheader, !dbg !1744

for.cond541.preheader:                            ; preds = %for.cond532.preheader, %for.inc574
  %45 = phi i32 [ %.lcssa957.sink, %for.inc574 ], [ %44, %for.cond532.preheader ]
  %indvars.iv942 = phi i64 [ %indvars.iv.next943, %for.inc574 ], [ 0, %for.cond532.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv942, metadata !1378, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 0, metadata !1380, metadata !DIExpression()), !dbg !1745
  %cmp545.not902 = icmp slt i32 %45, -1, !dbg !1746
  br i1 %cmp545.not902, label %for.inc574, label %do.body549, !dbg !1748

for.cond541:                                      ; preds = %do.body549
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i32 undef, metadata !1380, metadata !DIExpression()), !dbg !1745
  %46 = load i32, ptr %i_bframe, align 4, !dbg !1750, !tbaa !1477
  %47 = sext i32 %46 to i64, !dbg !1746
  %cmp545.not = icmp sgt i64 %indvars.iv939, %47, !dbg !1746
  br i1 %cmp545.not, label %for.inc574, label %do.body549, !dbg !1748, !llvm.loop !1751

do.body549:                                       ; preds = %for.cond541.preheader, %for.cond541
  %indvars.iv939 = phi i64 [ %indvars.iv.next940, %for.cond541 ], [ 0, %for.cond541.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv939, metadata !1380, metadata !DIExpression()), !dbg !1745
  %call554 = tail call ptr @x264_malloc(i32 noundef %conv523) #10, !dbg !1753
  %arrayidx558 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 46, i64 %indvars.iv942, i64 %indvars.iv939, !dbg !1753
  store ptr %call554, ptr %arrayidx558, align 8, !dbg !1753, !tbaa !1484
  %tobool564.not = icmp eq ptr %call554, null, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %indvars.iv939, metadata !1380, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1745
  br i1 %tobool564.not, label %fail, label %for.cond541, !dbg !1753

for.inc574:                                       ; preds = %for.cond541, %for.cond541.preheader
  %.lcssa957.sink = phi i32 [ %45, %for.cond541.preheader ], [ %46, %for.cond541 ]
  %48 = sext i32 %.lcssa957.sink to i64, !dbg !1757
  %indvars.iv.next943 = add nuw nsw i64 %indvars.iv942, 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next943, metadata !1378, metadata !DIExpression()), !dbg !1741
  %cmp536.not = icmp sgt i64 %indvars.iv942, %48, !dbg !1743
  br i1 %cmp536.not, label %for.end578, label %for.cond541.preheader, !dbg !1744, !llvm.loop !1759

for.end578:                                       ; preds = %for.inc574, %for.cond532.preheader
  %lowres_costs579 = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 46, !dbg !1761
  %49 = load ptr, ptr %lowres_costs579, align 8, !dbg !1762, !tbaa !1484
  %i_intra_cost = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 63, !dbg !1763
  store ptr %49, ptr %i_intra_cost, align 16, !dbg !1764, !tbaa !1765
  tail call void @llvm.memset.p0.i64(ptr align 2 %49, i8 -1, i64 %mul522, i1 false), !dbg !1766
  br label %if.end586, !dbg !1767

if.end586:                                        ; preds = %for.end578, %if.else376
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 14, !dbg !1768
  %50 = load i32, ptr %i_aq_mode, align 8, !dbg !1768, !tbaa !1770
  %tobool588.not = icmp eq i32 %50, 0, !dbg !1771
  br i1 %tobool588.not, label %cleanup646, label %do.body590, !dbg !1772

do.body590:                                       ; preds = %if.end586
  %51 = load i32, ptr %mb, align 16, !dbg !1773, !tbaa !1387
  %mul594 = shl i32 %51, 2, !dbg !1773
  %call596 = tail call ptr @x264_malloc(i32 noundef %mul594) #10, !dbg !1773
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 60, !dbg !1773
  store ptr %call596, ptr %f_qp_offset, align 8, !dbg !1773, !tbaa !1776
  %tobool598.not = icmp eq ptr %call596, null, !dbg !1777
  br i1 %tobool598.not, label %fail, label %do.body603, !dbg !1773

do.body603:                                       ; preds = %do.body590
  %52 = load i32, ptr %mb, align 16, !dbg !1779, !tbaa !1387
  %mul607 = shl i32 %52, 2, !dbg !1779
  %call609 = tail call ptr @x264_malloc(i32 noundef %mul607) #10, !dbg !1779
  %f_qp_offset_aq = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 61, !dbg !1779
  store ptr %call609, ptr %f_qp_offset_aq, align 16, !dbg !1779, !tbaa !1781
  %tobool611.not = icmp eq ptr %call609, null, !dbg !1782
  br i1 %tobool611.not, label %fail, label %do.end615, !dbg !1779

do.end615:                                        ; preds = %do.body603
  %53 = load i32, ptr %b_have_lowres, align 16, !dbg !1784, !tbaa !1671
  %tobool618.not = icmp eq i32 %53, 0, !dbg !1786
  br i1 %tobool618.not, label %cleanup646, label %do.body621, !dbg !1787

do.body621:                                       ; preds = %do.end615
  %54 = load i32, ptr %mb, align 16, !dbg !1788, !tbaa !1387
  %add624 = shl i32 %54, 1, !dbg !1788
  %mul626 = add i32 %add624, 6, !dbg !1788
  %call628 = tail call ptr @x264_malloc(i32 noundef %mul626) #10, !dbg !1788
  %i_inv_qscale_factor = getelementptr inbounds %struct.x264_frame, ptr %call, i64 0, i32 65, !dbg !1788
  store ptr %call628, ptr %i_inv_qscale_factor, align 16, !dbg !1788, !tbaa !1791
  %tobool630.not = icmp eq ptr %call628, null, !dbg !1792
  br i1 %tobool630.not, label %fail, label %do.end634, !dbg !1788

do.end634:                                        ; preds = %do.body621
  %55 = load i32, ptr %mb, align 16, !dbg !1794, !tbaa !1387
  %add638 = add nsw i32 %55, 3, !dbg !1794
  %conv639 = sext i32 %add638 to i64, !dbg !1794
  %mul640 = shl nsw i64 %conv639, 1, !dbg !1794
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %call628, i8 0, i64 %mul640, i1 false), !dbg !1794
  br label %cleanup646, !dbg !1794

fail:                                             ; preds = %do.body75, %do.body114, %do.body454, %do.end475, %do.body549, %do.body621, %do.body603, %do.body590, %do.body519, %if.then379, %do.body345, %do.body328, %do.body316, %do.body295, %do.body280, %do.body262, %do.body250, %do.body236, %do.body225, %do.body214, %do.body188, %do.body149, %cond.end
  call void @llvm.dbg.label(metadata !1383), !dbg !1795
  tail call void @x264_free(ptr noundef %call) #10, !dbg !1796
  br label %cleanup646, !dbg !1797

cleanup646:                                       ; preds = %do.end366, %do.end339, %do.end615, %do.end634, %if.end586, %fail
  %retval.0 = phi ptr [ null, %fail ], [ %call, %if.end586 ], [ %call, %do.end634 ], [ %call, %do.end615 ], [ %call, %do.end339 ], [ %call, %do.end366 ]
  ret ptr %retval.0, !dbg !1798
}

declare !dbg !1799 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

declare !dbg !1803 void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete(ptr noundef %frame) local_unnamed_addr #0 !dbg !1804 {
entry:
  call void @llvm.dbg.value(metadata ptr %frame, metadata !1808, metadata !DIExpression()), !dbg !1830
  %b_duplicate = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 39, !dbg !1831
  %0 = load i32, ptr %b_duplicate, align 16, !dbg !1831, !tbaa !1597
  %tobool.not = icmp eq i32 %0, 0, !dbg !1832
  br i1 %tobool.not, label %for.body, label %if.end, !dbg !1833

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1809, metadata !DIExpression()), !dbg !1834
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 34, i64 %indvars.iv, !dbg !1835
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !1835, !tbaa !1484
  tail call void @x264_free(ptr noundef %1) #10, !dbg !1837
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1809, metadata !DIExpression()), !dbg !1834
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !1839
  br i1 %exitcond.not, label %for.body5, label %for.body, !dbg !1840, !llvm.loop !1841

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.body5 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv127, metadata !1813, metadata !DIExpression()), !dbg !1843
  %arrayidx7 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 35, i64 %indvars.iv127, !dbg !1844
  %2 = load ptr, ptr %arrayidx7, align 8, !dbg !1844, !tbaa !1484
  tail call void @x264_free(ptr noundef %2) #10, !dbg !1846
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next128, metadata !1813, metadata !DIExpression()), !dbg !1843
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 4, !dbg !1848
  br i1 %exitcond130.not, label %for.cond16.preheader, label %for.body5, !dbg !1849, !llvm.loop !1850

for.cond16.preheader:                             ; preds = %for.body5, %for.cond.cleanup18
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.cond.cleanup18 ], [ 0, %for.body5 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv135, metadata !1815, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i32 0, metadata !1817, metadata !DIExpression()), !dbg !1853
  br label %for.body19, !dbg !1854

for.cond.cleanup18:                               ; preds = %for.body19
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next136, metadata !1815, metadata !DIExpression()), !dbg !1852
  %exitcond138.not = icmp eq i64 %indvars.iv.next136, 18, !dbg !1856
  br i1 %exitcond138.not, label %for.cond36.preheader, label %for.cond16.preheader, !dbg !1857, !llvm.loop !1858

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv131 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next132, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv131, metadata !1817, metadata !DIExpression()), !dbg !1853
  %arrayidx23 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 56, i64 %indvars.iv135, i64 %indvars.iv131, !dbg !1860
  %3 = load ptr, ptr %arrayidx23, align 8, !dbg !1860, !tbaa !1484
  tail call void @x264_free(ptr noundef %3) #10, !dbg !1862
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next132, metadata !1817, metadata !DIExpression()), !dbg !1853
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, 18, !dbg !1864
  br i1 %exitcond134.not, label %for.cond.cleanup18, label %for.body19, !dbg !1854, !llvm.loop !1865

for.cond36.preheader:                             ; preds = %for.cond.cleanup18, %for.cond.cleanup38
  %cmp32 = phi i1 [ false, %for.cond.cleanup38 ], [ true, %for.cond.cleanup18 ]
  %indvars.iv143 = phi i64 [ 1, %for.cond.cleanup38 ], [ 0, %for.cond.cleanup18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv143, metadata !1820, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1868
  br label %for.body39, !dbg !1869

for.cond.cleanup33:                               ; preds = %for.cond.cleanup38
  %i_propagate_cost = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 64, !dbg !1870
  %4 = load ptr, ptr %i_propagate_cost, align 8, !dbg !1870, !tbaa !1738
  tail call void @x264_free(ptr noundef %4) #10, !dbg !1871
  call void @llvm.dbg.value(metadata i32 0, metadata !1825, metadata !DIExpression()), !dbg !1872
  br label %for.cond60.preheader, !dbg !1873

for.cond.cleanup38:                               ; preds = %for.body39
  call void @llvm.dbg.value(metadata i64 %indvars.iv143, metadata !1820, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1867
  br i1 %cmp32, label %for.cond36.preheader, label %for.cond.cleanup33, !dbg !1874, !llvm.loop !1875

for.body39:                                       ; preds = %for.cond36.preheader, %for.body39
  %indvars.iv139 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next140, %for.body39 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv139, metadata !1822, metadata !DIExpression()), !dbg !1868
  %arrayidx43 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 45, i64 %indvars.iv143, i64 %indvars.iv139, !dbg !1877
  %5 = load ptr, ptr %arrayidx43, align 8, !dbg !1877, !tbaa !1484
  tail call void @x264_free(ptr noundef %5) #10, !dbg !1880
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 47, i64 %indvars.iv143, i64 %indvars.iv139, !dbg !1881
  %6 = load ptr, ptr %arrayidx47, align 8, !dbg !1881, !tbaa !1484
  tail call void @x264_free(ptr noundef %6) #10, !dbg !1882
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next140, metadata !1822, metadata !DIExpression()), !dbg !1868
  %exitcond142.not = icmp eq i64 %indvars.iv.next140, 17, !dbg !1884
  br i1 %exitcond142.not, label %for.cond.cleanup38, label %for.body39, !dbg !1869, !llvm.loop !1885

for.cond60.preheader:                             ; preds = %for.cond.cleanup33, %for.cond.cleanup62
  %indvars.iv150 = phi i64 [ 0, %for.cond.cleanup33 ], [ %indvars.iv.next151, %for.cond.cleanup62 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv150, metadata !1825, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 0, metadata !1827, metadata !DIExpression()), !dbg !1887
  br label %for.body63, !dbg !1888

for.cond.cleanup57:                               ; preds = %for.cond.cleanup62
  %f_qp_offset = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 60, !dbg !1889
  %7 = load ptr, ptr %f_qp_offset, align 8, !dbg !1889, !tbaa !1776
  tail call void @x264_free(ptr noundef %7) #10, !dbg !1890
  %f_qp_offset_aq = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 61, !dbg !1891
  %8 = load ptr, ptr %f_qp_offset_aq, align 16, !dbg !1891, !tbaa !1781
  tail call void @x264_free(ptr noundef %8) #10, !dbg !1892
  %i_inv_qscale_factor = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 65, !dbg !1893
  %9 = load ptr, ptr %i_inv_qscale_factor, align 16, !dbg !1893, !tbaa !1791
  tail call void @x264_free(ptr noundef %9) #10, !dbg !1894
  %i_row_bits = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 58, !dbg !1895
  %10 = load ptr, ptr %i_row_bits, align 8, !dbg !1895, !tbaa !1643
  tail call void @x264_free(ptr noundef %10) #10, !dbg !1896
  %f_row_qp = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 59, !dbg !1897
  %11 = load ptr, ptr %f_row_qp, align 16, !dbg !1897, !tbaa !1648
  tail call void @x264_free(ptr noundef %11) #10, !dbg !1898
  %mb_type = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 41, !dbg !1899
  %12 = load ptr, ptr %mb_type, align 16, !dbg !1899, !tbaa !1602
  tail call void @x264_free(ptr noundef %12) #10, !dbg !1900
  %mb_partition = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 42, !dbg !1901
  %13 = load ptr, ptr %mb_partition, align 8, !dbg !1901, !tbaa !1607
  tail call void @x264_free(ptr noundef %13) #10, !dbg !1902
  %mv = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 43, !dbg !1903
  %14 = load ptr, ptr %mv, align 16, !dbg !1904, !tbaa !1484
  tail call void @x264_free(ptr noundef %14) #10, !dbg !1905
  %arrayidx76 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 43, i64 1, !dbg !1906
  %15 = load ptr, ptr %arrayidx76, align 8, !dbg !1906, !tbaa !1484
  tail call void @x264_free(ptr noundef %15) #10, !dbg !1907
  %mv16x16 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 44, !dbg !1908
  %16 = load ptr, ptr %mv16x16, align 16, !dbg !1908, !tbaa !1616
  tail call void @x264_free(ptr noundef %16) #10, !dbg !1909
  %ref = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 48, !dbg !1910
  %17 = load ptr, ptr %ref, align 8, !dbg !1911, !tbaa !1484
  tail call void @x264_free(ptr noundef %17) #10, !dbg !1912
  %arrayidx79 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 48, i64 1, !dbg !1913
  %18 = load ptr, ptr %arrayidx79, align 8, !dbg !1913, !tbaa !1484
  tail call void @x264_free(ptr noundef %18) #10, !dbg !1914
  br label %if.end, !dbg !1915

for.cond.cleanup62:                               ; preds = %for.body63
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next151, metadata !1825, metadata !DIExpression()), !dbg !1872
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 18, !dbg !1917
  br i1 %exitcond153.not, label %for.cond.cleanup57, label %for.cond60.preheader, !dbg !1873, !llvm.loop !1918

for.body63:                                       ; preds = %for.cond60.preheader, %for.body63
  %indvars.iv146 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next147, %for.body63 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146, metadata !1827, metadata !DIExpression()), !dbg !1887
  %arrayidx67 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 46, i64 %indvars.iv150, i64 %indvars.iv146, !dbg !1920
  %19 = load ptr, ptr %arrayidx67, align 8, !dbg !1920, !tbaa !1484
  tail call void @x264_free(ptr noundef %19) #10, !dbg !1922
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147, metadata !1827, metadata !DIExpression()), !dbg !1887
  %exitcond149.not = icmp eq i64 %indvars.iv.next147, 18, !dbg !1924
  br i1 %exitcond149.not, label %for.cond.cleanup62, label %for.body63, !dbg !1888, !llvm.loop !1925

if.end:                                           ; preds = %for.cond.cleanup57, %entry
  tail call void @x264_free(ptr noundef nonnull %frame) #10, !dbg !1927
  ret void, !dbg !1928
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_frame_copy_picture(ptr noundef %h, ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) local_unnamed_addr #0 !dbg !1929 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1954, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1955, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata ptr %src, metadata !1956, metadata !DIExpression()), !dbg !1967
  %img = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 7, !dbg !1968
  %0 = load i32, ptr %img, align 8, !dbg !1969, !tbaa !1970
  call void @llvm.dbg.value(metadata i32 %0, metadata !1957, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !1967
  %trunc = trunc i32 %0 to i8, !dbg !1973
  switch i8 %trunc, label %if.then [
    i8 4, label %if.end
    i8 1, label %if.end
  ], !dbg !1973

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str) #10, !dbg !1975
  br label %cleanup48, !dbg !1977

if.end:                                           ; preds = %entry, %entry
  %and = and i32 %0, 255, !dbg !1978
  %1 = load i32, ptr %src, align 8, !dbg !1979, !tbaa !1980
  %i_type3 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 1, !dbg !1981
  store i32 %1, ptr %i_type3, align 4, !dbg !1982, !tbaa !1518
  %i_qpplus1 = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 1, !dbg !1983
  %2 = load i32, ptr %i_qpplus1, align 4, !dbg !1983, !tbaa !1984
  %i_qpplus14 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 2, !dbg !1985
  store i32 %2, ptr %i_qpplus14, align 8, !dbg !1986, !tbaa !1521
  %i_pts = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 4, !dbg !1987
  %3 = load i64, ptr %i_pts, align 8, !dbg !1987, !tbaa !1988
  %i_reordered_pts = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 4, !dbg !1989
  store i64 %3, ptr %i_reordered_pts, align 8, !dbg !1990, !tbaa !1991
  %i_pts5 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 3, !dbg !1992
  store i64 %3, ptr %i_pts5, align 16, !dbg !1993, !tbaa !1524
  %param = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 6, !dbg !1994
  %4 = load ptr, ptr %param, align 8, !dbg !1994, !tbaa !1995
  %param6 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 9, !dbg !1996
  store ptr %4, ptr %param6, align 16, !dbg !1997, !tbaa !1998
  %i_pic_struct = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 2, !dbg !1999
  %5 = load i32, ptr %i_pic_struct, align 8, !dbg !1999, !tbaa !2000
  %i_pic_struct7 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 15, !dbg !2001
  store i32 %5, ptr %i_pic_struct7, align 4, !dbg !2002, !tbaa !1540
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !2003
  %cmp9 = icmp eq i32 %and, 4
  %i_width = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 5
  %i_height = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 6
  call void @llvm.dbg.value(metadata i32 0, metadata !1958, metadata !DIExpression()), !dbg !2003
  %plane_copy = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 70, i32 6
  br label %for.body, !dbg !2004

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %6 = phi i32 [ %0, %if.end ], [ %.pre, %for.inc.for.body_crit_edge ], !dbg !2005
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %cmp893 = phi i1 [ true, %if.end ], [ %cmp8, %for.inc.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1958, metadata !DIExpression()), !dbg !2003
  %tobool = icmp ne i64 %indvars.iv, 0
  %or.cond51 = select i1 %cmp9, i1 %tobool, i1 false, !dbg !2007
  %xor = xor i64 %indvars.iv, 3
  %spec.select89 = select i1 %or.cond51, i64 %xor, i64 %indvars.iv, !dbg !2007
  %idxprom = and i64 %spec.select89, 4294967295, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %spec.select89, metadata !1960, metadata !DIExpression()), !dbg !2009
  %arrayidx = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 7, i32 3, i64 %idxprom, !dbg !2008
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2008, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %7, metadata !1963, metadata !DIExpression()), !dbg !2009
  %arrayidx15 = getelementptr inbounds %struct.x264_picture_t, ptr %src, i64 0, i32 7, i32 2, i64 %idxprom, !dbg !2010
  %8 = load i32, ptr %arrayidx15, align 4, !dbg !2010, !tbaa !1446
  call void @llvm.dbg.value(metadata i32 %8, metadata !1964, metadata !DIExpression()), !dbg !2009
  %9 = load i32, ptr %i_width, align 4, !dbg !2011, !tbaa !1433
  %lnot.ext = zext i1 %tobool to i32, !dbg !2012
  %shr = ashr i32 %9, %lnot.ext, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1965, metadata !DIExpression()), !dbg !2009
  %10 = load i32, ptr %i_height, align 8, !dbg !2014, !tbaa !1436
  %shr25 = ashr i32 %10, %lnot.ext, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %shr25, metadata !1966, metadata !DIExpression()), !dbg !2009
  %and28 = and i32 %6, 4096, !dbg !2016
  %tobool29.not = icmp eq i32 %and28, 0, !dbg !2016
  br i1 %tobool29.not, label %if.end32, label %if.then30, !dbg !2017

if.then30:                                        ; preds = %for.body
  %sub = add nsw i32 %shr25, -1, !dbg !2018
  %mul = mul nsw i32 %sub, %8, !dbg !2020
  %idx.ext = sext i32 %mul to i64, !dbg !2021
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext, !dbg !2021
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1963, metadata !DIExpression()), !dbg !2009
  %sub31 = sub nsw i32 0, %8, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %sub31, metadata !1964, metadata !DIExpression()), !dbg !2009
  br label %if.end32, !dbg !2023

if.end32:                                         ; preds = %if.then30, %for.body
  %plane.0 = phi ptr [ %add.ptr, %if.then30 ], [ %7, %for.body ], !dbg !2009
  %stride.0 = phi i32 [ %sub31, %if.then30 ], [ %8, %for.body ], !dbg !2009
  call void @llvm.dbg.value(metadata i32 %stride.0, metadata !1964, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata ptr %plane.0, metadata !1963, metadata !DIExpression()), !dbg !2009
  %11 = tail call i32 @llvm.abs.i32(i32 %stride.0, i1 true), !dbg !2024
  %cmp33 = icmp sgt i32 %shr, %11, !dbg !2026
  br i1 %cmp33, label %cleanup.thread, label %for.inc, !dbg !2027

cleanup.thread:                                   ; preds = %if.end32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1) #10, !dbg !2028
  br label %cleanup46

for.inc:                                          ; preds = %if.end32
  %12 = load ptr, ptr %plane_copy, align 8, !dbg !2030, !tbaa !2031
  %arrayidx38 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 30, i64 %indvars.iv, !dbg !2032
  %13 = load ptr, ptr %arrayidx38, align 8, !dbg !2032, !tbaa !1484
  %arrayidx41 = getelementptr inbounds %struct.x264_frame, ptr %dst, i64 0, i32 24, i64 %indvars.iv, !dbg !2033
  %14 = load i32, ptr %arrayidx41, align 4, !dbg !2033, !tbaa !1446
  tail call void %12(ptr noundef %13, i32 noundef %14, ptr noundef %plane.0, i32 noundef %stride.0, i32 noundef %shr, i32 noundef %shr25) #10, !dbg !2034
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1958, metadata !DIExpression()), !dbg !2003
  %cmp8 = icmp ult i64 %indvars.iv, 2, !dbg !2036
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3, !dbg !2036
  br i1 %exitcond.not, label %cleanup46, label %for.inc.for.body_crit_edge, !dbg !2004, !llvm.loop !2037

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i32, ptr %img, align 8, !dbg !2005, !tbaa !1970
  br label %for.body, !dbg !2004

cleanup46:                                        ; preds = %for.inc, %cleanup.thread
  %cmp891 = phi i1 [ %cmp893, %cleanup.thread ], [ %cmp8, %for.inc ]
  %spec.select = sext i1 %cmp891 to i32
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup46, %if.then
  %retval.3 = phi i32 [ -1, %if.then ], [ %spec.select, %cleanup46 ], !dbg !1967
  ret i32 %retval.3, !dbg !2039
}

declare !dbg !2040 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_frame_expand_border(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 !dbg !2043 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2047, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2048, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !2049, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2050, metadata !DIExpression()), !dbg !2062
  %tobool.not = icmp eq i32 %mb_y, 0, !dbg !2063
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2062
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !2064
  %0 = load i32, ptr %b_mbaff, align 4, !dbg !2064, !tbaa !2066
  %and = and i32 %0, %mb_y, !dbg !2067
  %tobool1.not = icmp eq i32 %and, 0, !dbg !2067
  br i1 %tobool1.not, label %for.cond.preheader, label %cleanup, !dbg !2068

for.cond.preheader:                               ; preds = %entry
  %i_plane = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 23
  call void @llvm.dbg.value(metadata i32 0, metadata !2052, metadata !DIExpression()), !dbg !2069
  %1 = load i32, ptr %i_plane, align 4, !dbg !2070, !tbaa !1439
  %cmp236 = icmp sgt i32 %1, 0, !dbg !2071
  br i1 %cmp236, label %for.body.lr.ph, label %cleanup, !dbg !2072

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24
  %tobool7.not = icmp eq i32 %b_end, 0
  %mul33 = shl nsw i32 %mb_y, 4
  %sub34 = add nsw i32 %mul33, -4
  %or.cond = or i1 %tobool.not, %tobool7.not
  br label %for.body, !dbg !2072

for.body:                                         ; preds = %for.body.lr.ph, %if.end77
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end77 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2052, metadata !DIExpression()), !dbg !2069
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, i64 %indvars.iv, !dbg !2073
  %2 = load i32, ptr %arrayidx, align 4, !dbg !2073, !tbaa !1446
  call void @llvm.dbg.value(metadata i32 %2, metadata !2054, metadata !DIExpression()), !dbg !2074
  %3 = load ptr, ptr %sps, align 16, !dbg !2075, !tbaa !2076
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %3, i64 0, i32 16, !dbg !2077
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !2077, !tbaa !2078
  %mul = shl nsw i32 %4, 4, !dbg !2083
  %tobool2 = icmp ne i64 %indvars.iv, 0, !dbg !2084
  %lnot.ext6 = zext i1 %tobool2 to i32, !dbg !2085
  %shr = ashr i32 %mul, %lnot.ext6, !dbg !2086
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2057, metadata !DIExpression()), !dbg !2074
  br i1 %tobool7.not, label %cond.end, label %cond.true, !dbg !2087

cond.true:                                        ; preds = %for.body
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, ptr %3, i64 0, i32 17, !dbg !2088
  %5 = load i32, ptr %i_mb_height, align 4, !dbg !2088, !tbaa !2089
  %sub = sub nsw i32 %5, %mb_y, !dbg !2090
  %mul9 = shl nsw i32 %sub, 4, !dbg !2091
  %6 = load i32, ptr %b_mbaff, align 4, !dbg !2092, !tbaa !2066
  %shr12 = ashr i32 %mul9, %6, !dbg !2093
  br label %cond.end, !dbg !2087

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i32 [ %shr12, %cond.true ], [ 16, %for.body ], !dbg !2087
  %shr18 = ashr i32 %cond, %lnot.ext6, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %shr18, metadata !2058, metadata !DIExpression()), !dbg !2074
  %shr24 = lshr i32 32, %lnot.ext6, !dbg !2095
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2059, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2060, metadata !DIExpression()), !dbg !2074
  %arrayidx32 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30, i64 %indvars.iv, !dbg !2096
  %7 = load ptr, ptr %arrayidx32, align 8, !dbg !2096, !tbaa !1484
  %mul35 = mul nsw i32 %2, %sub34, !dbg !2097
  %shr41 = ashr i32 %mul35, %lnot.ext6, !dbg !2097
  %8 = tail call i32 @llvm.smax.i32(i32 %shr41, i32 0), !dbg !2097
  %idx.ext234 = zext i32 %8 to i64, !dbg !2098
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 %idx.ext234, !dbg !2098
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2061, metadata !DIExpression()), !dbg !2074
  %.pr = load i32, ptr %b_mbaff, align 4, !dbg !2074, !tbaa !2066
  br i1 %or.cond, label %if.end68, label %if.then58, !dbg !2099

if.then58:                                        ; preds = %cond.end
  %add = add nsw i32 %.pr, %lnot.ext6, !dbg !2101
  %shr66 = lshr i32 4, %add, !dbg !2102
  %add67 = add nsw i32 %shr66, %shr18, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %add67, metadata !2058, metadata !DIExpression()), !dbg !2074
  br label %if.end68, !dbg !2104

if.end68:                                         ; preds = %cond.end, %if.then58
  %height.0 = phi i32 [ %add67, %if.then58 ], [ %shr18, %cond.end ], !dbg !2074
  call void @llvm.dbg.value(metadata i32 %height.0, metadata !2058, metadata !DIExpression()), !dbg !2074
  %tobool71.not = icmp eq i32 %.pr, 0, !dbg !2105
  br i1 %tobool71.not, label %if.else, label %if.then72, !dbg !2107

if.then72:                                        ; preds = %if.end68
  %mul73 = shl nsw i32 %2, 1, !dbg !2108
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2110, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %mul73, metadata !2115, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2116, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %height.0, metadata !2117, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2118, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2119, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2130
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2132
  %cmp113.i = icmp sgt i32 %height.0, 0, !dbg !2133
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i, !dbg !2135

for.body.lr.ph.i:                                 ; preds = %if.then72
  %sub.i = sub nsw i32 0, %shr24
  %idx.ext.i = sext i32 %sub.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i
  %9 = zext i32 %shr24 to i64
  %idx.ext8.i = sext i32 %shr to i64
  %add.ptr9.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext8.i
  %sub13.i = add nsw i32 %shr, -1
  %idx.ext14.i = sext i32 %sub13.i to i64
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext14.i
  %10 = sext i32 %mul73 to i64, !dbg !2135
  %wide.trip.count.i = zext i32 %height.0 to i64, !dbg !2133
  br label %for.body.i, !dbg !2135

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then72
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2136
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i, !dbg !2137

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %sub28.i = sub nsw i32 0, %shr24
  %idx.ext29.i = sext i32 %sub28.i to i64
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i
  %mul42.i = shl nuw nsw i32 %shr24, 1
  %add.i = add nsw i32 %shr, %mul42.i
  %conv43.i = sext i32 %add.i to i64
  %11 = sext i32 %mul73 to i64, !dbg !2138
  %wide.trip.count127.i = zext i32 %shr24 to i64, !dbg !2139
  br label %for.body27.i, !dbg !2138

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2132
  %12 = mul nsw i64 %indvars.iv.i, %10, !dbg !2141
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %12, !dbg !2141
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr, i64 %12, !dbg !2143
  %13 = load i8, ptr %add.ptr6.i, align 1, !dbg !2143, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2.i, i8 %13, i64 %9, i1 false) #10, !dbg !2145
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %12, !dbg !2146
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %12, !dbg !2147
  %14 = load i8, ptr %add.ptr18.i, align 1, !dbg !2147, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr12.i, i8 %14, i64 %9, i1 false) #10, !dbg !2148
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2149
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2132
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !2133
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !2135, !llvm.loop !2150

for.body27.i:                                     ; preds = %for.body27.i, %for.body27.lr.ph.i
  %indvars.iv122.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next123.i, %for.body27.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2136
  %15 = xor i64 %indvars.iv122.i, -1, !dbg !2152
  %16 = mul nsw i64 %15, %11, !dbg !2152
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %16, !dbg !2152
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr35.i, ptr align 1 %add.ptr30.i, i64 %conv43.i, i1 false) #10, !dbg !2153
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2136
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next123.i, %wide.trip.count127.i, !dbg !2139
  br i1 %exitcond128.not.i, label %if.end.i, label %for.body27.i, !dbg !2138, !llvm.loop !2155

if.end.i:                                         ; preds = %for.body27.i, %for.cond.cleanup.i
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2157
  br i1 %tobool7.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i, !dbg !2158

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %sub55.i = sub nsw i32 0, %shr24
  %idx.ext56.i = sext i32 %sub55.i to i64
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i
  %sub65.i = add nsw i32 %height.0, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul73
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
  %mul69.i = shl nuw nsw i32 %shr24, 1
  %add70.i = add nsw i32 %shr, %mul69.i
  %conv71.i = sext i32 %add70.i to i64
  %17 = sext i32 %height.0 to i64, !dbg !2159
  %18 = sext i32 %mul73 to i64, !dbg !2159
  %wide.trip.count134.i = zext i32 %shr24 to i64, !dbg !2160
  br label %for.body54.i, !dbg !2159

for.body54.i:                                     ; preds = %for.body54.i, %for.body54.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.body54.lr.ph.i ], [ %indvars.iv.next130.i, %for.body54.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2157
  %19 = add nsw i64 %indvars.iv129.i, %17, !dbg !2162
  %20 = mul nsw i64 %19, %18, !dbg !2162
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %20, !dbg !2162
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr61.i, ptr align 1 %add.ptr68.i, i64 %conv71.i, i1 false) #10, !dbg !2163
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2157
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next130.i, %wide.trip.count134.i, !dbg !2160
  br i1 %exitcond135.not.i, label %plane_expand_border.exit, label %for.body54.i, !dbg !2159, !llvm.loop !2165

plane_expand_border.exit:                         ; preds = %for.body54.i, %if.end.i
  %idx.ext74 = sext i32 %2 to i64, !dbg !2167
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext74, !dbg !2167
  call void @llvm.dbg.value(metadata ptr %add.ptr75, metadata !2110, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %mul73, metadata !2115, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2116, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %height.0, metadata !2117, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2118, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2119, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2168
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2170
  br i1 %cmp113.i, label %for.body.lr.ph.i132, label %for.cond.cleanup.i135, !dbg !2171

for.body.lr.ph.i132:                              ; preds = %plane_expand_border.exit
  %sub.i123 = sub nsw i32 0, %shr24
  %idx.ext.i124 = sext i32 %sub.i123 to i64
  %add.ptr.i125 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext.i124
  %21 = zext i32 %shr24 to i64
  %idx.ext8.i126 = sext i32 %shr to i64
  %add.ptr9.i127 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext8.i126
  %sub13.i128 = add nsw i32 %shr, -1
  %idx.ext14.i129 = sext i32 %sub13.i128 to i64
  %add.ptr15.i130 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext14.i129
  %22 = sext i32 %mul73 to i64, !dbg !2171
  %wide.trip.count.i131 = zext i32 %height.0 to i64, !dbg !2172
  br label %for.body.i151, !dbg !2171

for.cond.cleanup.i135:                            ; preds = %for.body.i151, %plane_expand_border.exit
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2173
  br i1 %tobool.not, label %for.body27.lr.ph.i143, label %if.end.i159, !dbg !2174

for.body27.lr.ph.i143:                            ; preds = %for.cond.cleanup.i135
  %sub28.i136 = sub nsw i32 0, %shr24
  %idx.ext29.i137 = sext i32 %sub28.i136 to i64
  %add.ptr30.i138 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext29.i137
  %mul42.i139 = shl nuw nsw i32 %shr24, 1
  %add.i140 = add nsw i32 %shr, %mul42.i139
  %conv43.i141 = sext i32 %add.i140 to i64
  %23 = sext i32 %mul73 to i64, !dbg !2175
  %wide.trip.count127.i142 = zext i32 %shr24 to i64, !dbg !2176
  br label %for.body27.i156, !dbg !2175

for.body.i151:                                    ; preds = %for.body.i151, %for.body.lr.ph.i132
  %indvars.iv.i144 = phi i64 [ 0, %for.body.lr.ph.i132 ], [ %indvars.iv.next.i149, %for.body.i151 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i144, metadata !2122, metadata !DIExpression()) #10, !dbg !2170
  %24 = mul nsw i64 %indvars.iv.i144, %22, !dbg !2177
  %add.ptr2.i145 = getelementptr inbounds i8, ptr %add.ptr.i125, i64 %24, !dbg !2177
  %add.ptr6.i146 = getelementptr inbounds i8, ptr %add.ptr75, i64 %24, !dbg !2178
  %25 = load i8, ptr %add.ptr6.i146, align 1, !dbg !2178, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2.i145, i8 %25, i64 %21, i1 false) #10, !dbg !2179
  %add.ptr12.i147 = getelementptr inbounds i8, ptr %add.ptr9.i127, i64 %24, !dbg !2180
  %add.ptr18.i148 = getelementptr inbounds i8, ptr %add.ptr15.i130, i64 %24, !dbg !2181
  %26 = load i8, ptr %add.ptr18.i148, align 1, !dbg !2181, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr12.i147, i8 %26, i64 %21, i1 false) #10, !dbg !2182
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i144, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i149, metadata !2122, metadata !DIExpression()) #10, !dbg !2170
  %exitcond.not.i150 = icmp eq i64 %indvars.iv.next.i149, %wide.trip.count.i131, !dbg !2172
  br i1 %exitcond.not.i150, label %for.cond.cleanup.i135, label %for.body.i151, !dbg !2171, !llvm.loop !2184

for.body27.i156:                                  ; preds = %for.body27.i156, %for.body27.lr.ph.i143
  %indvars.iv122.i152 = phi i64 [ 0, %for.body27.lr.ph.i143 ], [ %indvars.iv.next123.i154, %for.body27.i156 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i152, metadata !2124, metadata !DIExpression()) #10, !dbg !2173
  %27 = xor i64 %indvars.iv122.i152, -1, !dbg !2186
  %28 = mul nsw i64 %27, %23, !dbg !2186
  %add.ptr35.i153 = getelementptr inbounds i8, ptr %add.ptr30.i138, i64 %28, !dbg !2186
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr35.i153, ptr align 1 %add.ptr30.i138, i64 %conv43.i141, i1 false) #10, !dbg !2187
  %indvars.iv.next123.i154 = add nuw nsw i64 %indvars.iv122.i152, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i154, metadata !2124, metadata !DIExpression()) #10, !dbg !2173
  %exitcond128.not.i155 = icmp eq i64 %indvars.iv.next123.i154, %wide.trip.count127.i142, !dbg !2176
  br i1 %exitcond128.not.i155, label %if.end.i159, label %for.body27.i156, !dbg !2175, !llvm.loop !2189

if.end.i159:                                      ; preds = %for.body27.i156, %for.cond.cleanup.i135
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2191
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i171, !dbg !2192

for.body54.lr.ph.i171:                            ; preds = %if.end.i159
  %sub55.i160 = sub nsw i32 0, %shr24
  %idx.ext56.i161 = sext i32 %sub55.i160 to i64
  %add.ptr57.i162 = getelementptr inbounds i8, ptr %add.ptr75, i64 %idx.ext56.i161
  %sub65.i163 = add nsw i32 %height.0, -1
  %mul66.i164 = mul nsw i32 %sub65.i163, %mul73
  %idx.ext67.i165 = sext i32 %mul66.i164 to i64
  %add.ptr68.i166 = getelementptr inbounds i8, ptr %add.ptr57.i162, i64 %idx.ext67.i165
  %mul69.i167 = shl nuw nsw i32 %shr24, 1
  %add70.i168 = add nsw i32 %shr, %mul69.i167
  %conv71.i169 = sext i32 %add70.i168 to i64
  %29 = sext i32 %height.0 to i64, !dbg !2193
  %30 = sext i32 %mul73 to i64, !dbg !2193
  %wide.trip.count134.i170 = zext i32 %shr24 to i64, !dbg !2194
  br label %for.body54.i176, !dbg !2193

for.body54.i176:                                  ; preds = %for.body54.i176, %for.body54.lr.ph.i171
  %indvars.iv129.i172 = phi i64 [ 0, %for.body54.lr.ph.i171 ], [ %indvars.iv.next130.i174, %for.body54.i176 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i172, metadata !2127, metadata !DIExpression()) #10, !dbg !2191
  %31 = add nsw i64 %indvars.iv129.i172, %29, !dbg !2195
  %32 = mul nsw i64 %31, %30, !dbg !2195
  %add.ptr61.i173 = getelementptr inbounds i8, ptr %add.ptr57.i162, i64 %32, !dbg !2195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr61.i173, ptr align 1 %add.ptr68.i166, i64 %conv71.i169, i1 false) #10, !dbg !2196
  %indvars.iv.next130.i174 = add nuw nsw i64 %indvars.iv129.i172, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i174, metadata !2127, metadata !DIExpression()) #10, !dbg !2191
  %exitcond135.not.i175 = icmp eq i64 %indvars.iv.next130.i174, %wide.trip.count134.i170, !dbg !2194
  br i1 %exitcond135.not.i175, label %if.end77, label %for.body54.i176, !dbg !2193, !llvm.loop !2198

if.else:                                          ; preds = %if.end68
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2110, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %2, metadata !2115, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2116, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %height.0, metadata !2117, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2118, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %shr24, metadata !2119, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2200
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2203
  %cmp113.i178 = icmp sgt i32 %height.0, 0, !dbg !2204
  br i1 %cmp113.i178, label %for.body.lr.ph.i188, label %for.cond.cleanup.i191, !dbg !2205

for.body.lr.ph.i188:                              ; preds = %if.else
  %sub.i179 = sub nsw i32 0, %shr24
  %idx.ext.i180 = sext i32 %sub.i179 to i64
  %add.ptr.i181 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext.i180
  %33 = zext i32 %shr24 to i64
  %idx.ext8.i182 = sext i32 %shr to i64
  %add.ptr9.i183 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext8.i182
  %sub13.i184 = add nsw i32 %shr, -1
  %idx.ext14.i185 = sext i32 %sub13.i184 to i64
  %add.ptr15.i186 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext14.i185
  %34 = sext i32 %2 to i64, !dbg !2205
  %wide.trip.count.i187 = zext i32 %height.0 to i64, !dbg !2204
  br label %for.body.i207, !dbg !2205

for.cond.cleanup.i191:                            ; preds = %for.body.i207, %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2206
  br i1 %tobool.not, label %for.body27.lr.ph.i199, label %if.end.i215, !dbg !2207

for.body27.lr.ph.i199:                            ; preds = %for.cond.cleanup.i191
  %sub28.i192 = sub nsw i32 0, %shr24
  %idx.ext29.i193 = sext i32 %sub28.i192 to i64
  %add.ptr30.i194 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext29.i193
  %mul42.i195 = shl nuw nsw i32 %shr24, 1
  %add.i196 = add nsw i32 %shr, %mul42.i195
  %conv43.i197 = sext i32 %add.i196 to i64
  %35 = sext i32 %2 to i64, !dbg !2208
  %wide.trip.count127.i198 = zext i32 %shr24 to i64, !dbg !2209
  br label %for.body27.i212, !dbg !2208

for.body.i207:                                    ; preds = %for.body.i207, %for.body.lr.ph.i188
  %indvars.iv.i200 = phi i64 [ 0, %for.body.lr.ph.i188 ], [ %indvars.iv.next.i205, %for.body.i207 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i200, metadata !2122, metadata !DIExpression()) #10, !dbg !2203
  %36 = mul nsw i64 %indvars.iv.i200, %34, !dbg !2210
  %add.ptr2.i201 = getelementptr inbounds i8, ptr %add.ptr.i181, i64 %36, !dbg !2210
  %add.ptr6.i202 = getelementptr inbounds i8, ptr %add.ptr, i64 %36, !dbg !2211
  %37 = load i8, ptr %add.ptr6.i202, align 1, !dbg !2211, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr2.i201, i8 %37, i64 %33, i1 false) #10, !dbg !2212
  %add.ptr12.i203 = getelementptr inbounds i8, ptr %add.ptr9.i183, i64 %36, !dbg !2213
  %add.ptr18.i204 = getelementptr inbounds i8, ptr %add.ptr15.i186, i64 %36, !dbg !2214
  %38 = load i8, ptr %add.ptr18.i204, align 1, !dbg !2214, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr12.i203, i8 %38, i64 %33, i1 false) #10, !dbg !2215
  %indvars.iv.next.i205 = add nuw nsw i64 %indvars.iv.i200, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i205, metadata !2122, metadata !DIExpression()) #10, !dbg !2203
  %exitcond.not.i206 = icmp eq i64 %indvars.iv.next.i205, %wide.trip.count.i187, !dbg !2204
  br i1 %exitcond.not.i206, label %for.cond.cleanup.i191, label %for.body.i207, !dbg !2205, !llvm.loop !2217

for.body27.i212:                                  ; preds = %for.body27.i212, %for.body27.lr.ph.i199
  %indvars.iv122.i208 = phi i64 [ 0, %for.body27.lr.ph.i199 ], [ %indvars.iv.next123.i210, %for.body27.i212 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i208, metadata !2124, metadata !DIExpression()) #10, !dbg !2206
  %39 = xor i64 %indvars.iv122.i208, -1, !dbg !2219
  %40 = mul nsw i64 %39, %35, !dbg !2219
  %add.ptr35.i209 = getelementptr inbounds i8, ptr %add.ptr30.i194, i64 %40, !dbg !2219
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr35.i209, ptr align 1 %add.ptr30.i194, i64 %conv43.i197, i1 false) #10, !dbg !2220
  %indvars.iv.next123.i210 = add nuw nsw i64 %indvars.iv122.i208, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i210, metadata !2124, metadata !DIExpression()) #10, !dbg !2206
  %exitcond128.not.i211 = icmp eq i64 %indvars.iv.next123.i210, %wide.trip.count127.i198, !dbg !2209
  br i1 %exitcond128.not.i211, label %if.end.i215, label %for.body27.i212, !dbg !2208, !llvm.loop !2222

if.end.i215:                                      ; preds = %for.body27.i212, %for.cond.cleanup.i191
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2224
  br i1 %tobool7.not, label %if.end77, label %for.body54.lr.ph.i227, !dbg !2225

for.body54.lr.ph.i227:                            ; preds = %if.end.i215
  %sub55.i216 = sub nsw i32 0, %shr24
  %idx.ext56.i217 = sext i32 %sub55.i216 to i64
  %add.ptr57.i218 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext56.i217
  %sub65.i219 = add nsw i32 %height.0, -1
  %mul66.i220 = mul nsw i32 %sub65.i219, %2
  %idx.ext67.i221 = sext i32 %mul66.i220 to i64
  %add.ptr68.i222 = getelementptr inbounds i8, ptr %add.ptr57.i218, i64 %idx.ext67.i221
  %mul69.i223 = shl nuw nsw i32 %shr24, 1
  %add70.i224 = add nsw i32 %shr, %mul69.i223
  %conv71.i225 = sext i32 %add70.i224 to i64
  %41 = sext i32 %height.0 to i64, !dbg !2226
  %42 = sext i32 %2 to i64, !dbg !2226
  %wide.trip.count134.i226 = zext i32 %shr24 to i64, !dbg !2227
  br label %for.body54.i232, !dbg !2226

for.body54.i232:                                  ; preds = %for.body54.i232, %for.body54.lr.ph.i227
  %indvars.iv129.i228 = phi i64 [ 0, %for.body54.lr.ph.i227 ], [ %indvars.iv.next130.i230, %for.body54.i232 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i228, metadata !2127, metadata !DIExpression()) #10, !dbg !2224
  %43 = add nsw i64 %indvars.iv129.i228, %41, !dbg !2228
  %44 = mul nsw i64 %43, %42, !dbg !2228
  %add.ptr61.i229 = getelementptr inbounds i8, ptr %add.ptr57.i218, i64 %44, !dbg !2228
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr61.i229, ptr align 1 %add.ptr68.i222, i64 %conv71.i225, i1 false) #10, !dbg !2229
  %indvars.iv.next130.i230 = add nuw nsw i64 %indvars.iv129.i228, 1, !dbg !2230
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i230, metadata !2127, metadata !DIExpression()) #10, !dbg !2224
  %exitcond135.not.i231 = icmp eq i64 %indvars.iv.next130.i230, %wide.trip.count134.i226, !dbg !2227
  br i1 %exitcond135.not.i231, label %if.end77, label %for.body54.i232, !dbg !2226, !llvm.loop !2231

if.end77:                                         ; preds = %for.body54.i176, %for.body54.i232, %if.end.i215, %if.end.i159
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2233
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2052, metadata !DIExpression()), !dbg !2069
  %45 = load i32, ptr %i_plane, align 4, !dbg !2070, !tbaa !1439
  %46 = sext i32 %45 to i64, !dbg !2071
  %cmp = icmp slt i64 %indvars.iv.next, %46, !dbg !2071
  br i1 %cmp, label %for.body, label %cleanup, !dbg !2072, !llvm.loop !2234

cleanup:                                          ; preds = %if.end77, %for.cond.preheader, %entry
  ret void, !dbg !2236
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_frame_expand_border_filtered(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame, i32 noundef %mb_y, i32 noundef %b_end) local_unnamed_addr #4 !dbg !2237 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2239, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2240, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %mb_y, metadata !2241, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2242, metadata !DIExpression()), !dbg !2254
  %tobool.not = icmp eq i32 %mb_y, 0, !dbg !2255
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2243, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2254
  %i_stride = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, !dbg !2256
  %0 = load i32, ptr %i_stride, align 8, !dbg !2257, !tbaa !1446
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2254
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24, !dbg !2258
  %1 = load ptr, ptr %sps, align 16, !dbg !2258, !tbaa !2076
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 16, !dbg !2259
  %2 = load i32, ptr %i_mb_width, align 4, !dbg !2259, !tbaa !2078
  %mul = shl nsw i32 %2, 4, !dbg !2260
  %add = or i32 %mul, 8, !dbg !2261
  call void @llvm.dbg.value(metadata i32 %add, metadata !2245, metadata !DIExpression()), !dbg !2254
  %tobool1.not = icmp eq i32 %b_end, 0, !dbg !2262
  br i1 %tobool1.not, label %cond.end, label %cond.true, !dbg !2262

cond.true:                                        ; preds = %entry
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 17, !dbg !2263
  %3 = load i32, ptr %i_mb_height, align 4, !dbg !2263, !tbaa !2089
  %sub = sub nsw i32 %3, %mb_y, !dbg !2264
  %mul3 = shl nsw i32 %sub, 4, !dbg !2265
  %b_mbaff = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7, !dbg !2266
  %4 = load i32, ptr %b_mbaff, align 4, !dbg !2266, !tbaa !2066
  %shr = ashr i32 %mul3, %4, !dbg !2267
  %add4 = add nsw i32 %shr, 16, !dbg !2268
  br label %cond.end, !dbg !2262

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ 16, %entry ], !dbg !2262
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2246, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 28, metadata !2247, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 24, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2269
  %mul6 = shl nsw i32 %mb_y, 4
  %b_mbaff8 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 41, i32 7
  call void @llvm.dbg.value(metadata i32 1, metadata !2249, metadata !DIExpression()), !dbg !2269
  %mul15 = shl nsw i32 %0, 1
  %cmp113.i = icmp sgt i32 %cond, 0
  %idx.ext8.i = sext i32 %add to i64
  %sub13.i = or i32 %mul, 7
  %idx.ext14.i = sext i32 %sub13.i to i64
  %5 = sext i32 %mul15 to i64
  %wide.trip.count.i = zext i32 %cond to i64
  %add.i = add i32 %mul, 64
  %conv43.i = sext i32 %add.i to i64
  %sub65.i = add nsw i32 %cond, -1
  %mul66.i = mul nsw i32 %sub65.i, %mul15
  %idx.ext67.i = sext i32 %mul66.i to i64
  %6 = sext i32 %cond to i64
  %idx.ext16 = sext i32 %0 to i64
  %mul66.i121 = mul nsw i32 %sub65.i, %0
  %idx.ext67.i122 = sext i32 %mul66.i121 to i64
  br label %for.body, !dbg !2270

for.cond.cleanup:                                 ; preds = %if.end
  ret void, !dbg !2271

for.body:                                         ; preds = %cond.end, %if.end
  %indvars.iv = phi i64 [ 1, %cond.end ], [ %indvars.iv.next, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2249, metadata !DIExpression()), !dbg !2269
  %arrayidx5 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 31, i64 %indvars.iv, !dbg !2272
  %7 = load ptr, ptr %arrayidx5, align 8, !dbg !2272, !tbaa !1484
  %8 = load i32, ptr %b_mbaff8, align 4, !dbg !2273, !tbaa !2066
  %shl.neg = shl i32 -8, %8, !dbg !2274
  %sub9 = add i32 %shl.neg, %mul6, !dbg !2275
  %mul10 = mul nsw i32 %sub9, %0, !dbg !2276
  %idx.ext = sext i32 %mul10 to i64, !dbg !2277
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 -4, !dbg !2277
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !2251, metadata !DIExpression()), !dbg !2279
  %tobool14.not = icmp eq i32 %8, 0, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !2110, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata ptr %add.ptr11, metadata !2110, metadata !DIExpression()) #10, !dbg !2284
  br i1 %tobool14.not, label %if.else, label %if.then, !dbg !2287

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %mul15, metadata !2115, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %add, metadata !2116, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2117, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 28, metadata !2118, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 24, metadata !2119, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2284
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2288
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.cond.cleanup.i, !dbg !2289

for.body.lr.ph.i:                                 ; preds = %if.then
  %add.ptr.i = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  %add.ptr9.i = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext14.i
  br label %for.body.i, !dbg !2289

for.cond.cleanup.i:                               ; preds = %for.body.i, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2290
  br i1 %tobool.not, label %for.body27.lr.ph.i, label %if.end.i, !dbg !2291

for.body27.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %add.ptr30.i = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  br label %for.body27.i, !dbg !2292

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2288
  %9 = mul nsw i64 %indvars.iv.i, %5, !dbg !2293
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %9, !dbg !2293
  %add.ptr6.i = getelementptr inbounds i8, ptr %add.ptr11, i64 %9, !dbg !2294
  %10 = load i8, ptr %add.ptr6.i, align 1, !dbg !2294, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i, i8 %10, i64 28, i1 false) #10, !dbg !2295
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %9, !dbg !2296
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %9, !dbg !2297
  %11 = load i8, ptr %add.ptr18.i, align 1, !dbg !2297, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i, i8 %11, i64 28, i1 false) #10, !dbg !2298
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2288
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !2300
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !2289, !llvm.loop !2301

for.body27.i:                                     ; preds = %for.body27.i, %for.body27.lr.ph.i
  %indvars.iv122.i = phi i64 [ 0, %for.body27.lr.ph.i ], [ %indvars.iv.next123.i, %for.body27.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2290
  %12 = xor i64 %indvars.iv122.i, -1, !dbg !2303
  %13 = mul nsw i64 %12, %5, !dbg !2303
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %13, !dbg !2303
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false) #10, !dbg !2304
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2290
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next123.i, 24, !dbg !2306
  br i1 %exitcond128.not.i, label %if.end.i, label %for.body27.i, !dbg !2292, !llvm.loop !2307

if.end.i:                                         ; preds = %for.body27.i, %for.cond.cleanup.i
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2309
  br i1 %tobool1.not, label %plane_expand_border.exit, label %for.body54.lr.ph.i, !dbg !2310

for.body54.lr.ph.i:                               ; preds = %if.end.i
  %add.ptr57.i = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %idx.ext67.i
  br label %for.body54.i, !dbg !2311

for.body54.i:                                     ; preds = %for.body54.i, %for.body54.lr.ph.i
  %indvars.iv129.i = phi i64 [ 0, %for.body54.lr.ph.i ], [ %indvars.iv.next130.i, %for.body54.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2309
  %14 = add nsw i64 %indvars.iv129.i, %6, !dbg !2312
  %15 = mul nsw i64 %14, %5, !dbg !2312
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr57.i, i64 %15, !dbg !2312
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false) #10, !dbg !2313
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2309
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next130.i, 24, !dbg !2315
  br i1 %exitcond135.not.i, label %plane_expand_border.exit, label %for.body54.i, !dbg !2311, !llvm.loop !2316

plane_expand_border.exit:                         ; preds = %for.body54.i, %if.end.i
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext16, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %add.ptr17, metadata !2110, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %mul15, metadata !2115, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %add, metadata !2116, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2117, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 28, metadata !2118, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 24, metadata !2119, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2321
  br i1 %cmp113.i, label %for.body.lr.ph.i55, label %for.cond.cleanup.i56, !dbg !2322

for.body.lr.ph.i55:                               ; preds = %plane_expand_border.exit
  %add.ptr.i48 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr9.i50 = getelementptr inbounds i8, ptr %add.ptr17, i64 %idx.ext8.i
  %add.ptr15.i53 = getelementptr inbounds i8, ptr %add.ptr17, i64 %idx.ext14.i
  br label %for.body.i68, !dbg !2322

for.cond.cleanup.i56:                             ; preds = %for.body.i68, %plane_expand_border.exit
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2323
  br i1 %tobool.not, label %for.body27.lr.ph.i60, label %if.end.i75, !dbg !2324

for.body27.lr.ph.i60:                             ; preds = %for.cond.cleanup.i56
  %add.ptr30.i57 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  br label %for.body27.i73, !dbg !2325

for.body.i68:                                     ; preds = %for.body.i68, %for.body.lr.ph.i55
  %indvars.iv.i61 = phi i64 [ 0, %for.body.lr.ph.i55 ], [ %indvars.iv.next.i66, %for.body.i68 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i61, metadata !2122, metadata !DIExpression()) #10, !dbg !2321
  %16 = mul nsw i64 %indvars.iv.i61, %5, !dbg !2326
  %add.ptr2.i62 = getelementptr inbounds i8, ptr %add.ptr.i48, i64 %16, !dbg !2326
  %add.ptr6.i63 = getelementptr inbounds i8, ptr %add.ptr17, i64 %16, !dbg !2327
  %17 = load i8, ptr %add.ptr6.i63, align 1, !dbg !2327, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i62, i8 %17, i64 28, i1 false) #10, !dbg !2328
  %add.ptr12.i64 = getelementptr inbounds i8, ptr %add.ptr9.i50, i64 %16, !dbg !2329
  %add.ptr18.i65 = getelementptr inbounds i8, ptr %add.ptr15.i53, i64 %16, !dbg !2330
  %18 = load i8, ptr %add.ptr18.i65, align 1, !dbg !2330, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i64, i8 %18, i64 28, i1 false) #10, !dbg !2331
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i61, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i66, metadata !2122, metadata !DIExpression()) #10, !dbg !2321
  %exitcond.not.i67 = icmp eq i64 %indvars.iv.next.i66, %wide.trip.count.i, !dbg !2333
  br i1 %exitcond.not.i67, label %for.cond.cleanup.i56, label %for.body.i68, !dbg !2322, !llvm.loop !2334

for.body27.i73:                                   ; preds = %for.body27.i73, %for.body27.lr.ph.i60
  %indvars.iv122.i69 = phi i64 [ 0, %for.body27.lr.ph.i60 ], [ %indvars.iv.next123.i71, %for.body27.i73 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i69, metadata !2124, metadata !DIExpression()) #10, !dbg !2323
  %19 = xor i64 %indvars.iv122.i69, -1, !dbg !2336
  %20 = mul nsw i64 %19, %5, !dbg !2336
  %add.ptr35.i70 = getelementptr inbounds i8, ptr %add.ptr30.i57, i64 %20, !dbg !2336
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i70, ptr nonnull align 1 %add.ptr30.i57, i64 %conv43.i, i1 false) #10, !dbg !2337
  %indvars.iv.next123.i71 = add nuw nsw i64 %indvars.iv122.i69, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i71, metadata !2124, metadata !DIExpression()) #10, !dbg !2323
  %exitcond128.not.i72 = icmp eq i64 %indvars.iv.next123.i71, 24, !dbg !2339
  br i1 %exitcond128.not.i72, label %if.end.i75, label %for.body27.i73, !dbg !2325, !llvm.loop !2340

if.end.i75:                                       ; preds = %for.body27.i73, %for.cond.cleanup.i56
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2342
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i83, !dbg !2343

for.body54.lr.ph.i83:                             ; preds = %if.end.i75
  %add.ptr57.i76 = getelementptr inbounds i8, ptr %add.ptr17, i64 -28
  %add.ptr68.i80 = getelementptr inbounds i8, ptr %add.ptr57.i76, i64 %idx.ext67.i
  br label %for.body54.i88, !dbg !2344

for.body54.i88:                                   ; preds = %for.body54.i88, %for.body54.lr.ph.i83
  %indvars.iv129.i84 = phi i64 [ 0, %for.body54.lr.ph.i83 ], [ %indvars.iv.next130.i86, %for.body54.i88 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i84, metadata !2127, metadata !DIExpression()) #10, !dbg !2342
  %21 = add nsw i64 %indvars.iv129.i84, %6, !dbg !2345
  %22 = mul nsw i64 %21, %5, !dbg !2345
  %add.ptr61.i85 = getelementptr inbounds i8, ptr %add.ptr57.i76, i64 %22, !dbg !2345
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i85, ptr nonnull align 1 %add.ptr68.i80, i64 %conv43.i, i1 false) #10, !dbg !2346
  %indvars.iv.next130.i86 = add nuw nsw i64 %indvars.iv129.i84, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i86, metadata !2127, metadata !DIExpression()) #10, !dbg !2342
  %exitcond135.not.i87 = icmp eq i64 %indvars.iv.next130.i86, 24, !dbg !2348
  br i1 %exitcond135.not.i87, label %if.end, label %for.body54.i88, !dbg !2344, !llvm.loop !2349

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %0, metadata !2115, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %add, metadata !2116, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2117, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 28, metadata !2118, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 24, metadata !2119, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2120, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %b_end, metadata !2121, metadata !DIExpression()) #10, !dbg !2282
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2351
  br i1 %cmp113.i, label %for.body.lr.ph.i98, label %for.cond.cleanup.i99, !dbg !2352

for.body.lr.ph.i98:                               ; preds = %if.else
  %add.ptr.i91 = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  %add.ptr9.i93 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext8.i
  %add.ptr15.i96 = getelementptr inbounds i8, ptr %add.ptr11, i64 %idx.ext14.i
  br label %for.body.i111, !dbg !2352

for.cond.cleanup.i99:                             ; preds = %for.body.i111, %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2353
  br i1 %tobool.not, label %for.body27.lr.ph.i103, label %if.end.i118, !dbg !2354

for.body27.lr.ph.i103:                            ; preds = %for.cond.cleanup.i99
  %add.ptr30.i100 = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  br label %for.body27.i116, !dbg !2355

for.body.i111:                                    ; preds = %for.body.i111, %for.body.lr.ph.i98
  %indvars.iv.i104 = phi i64 [ 0, %for.body.lr.ph.i98 ], [ %indvars.iv.next.i109, %for.body.i111 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i104, metadata !2122, metadata !DIExpression()) #10, !dbg !2351
  %23 = mul nsw i64 %indvars.iv.i104, %idx.ext16, !dbg !2356
  %add.ptr2.i105 = getelementptr inbounds i8, ptr %add.ptr.i91, i64 %23, !dbg !2356
  %add.ptr6.i106 = getelementptr inbounds i8, ptr %add.ptr11, i64 %23, !dbg !2357
  %24 = load i8, ptr %add.ptr6.i106, align 1, !dbg !2357, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr2.i105, i8 %24, i64 28, i1 false) #10, !dbg !2358
  %add.ptr12.i107 = getelementptr inbounds i8, ptr %add.ptr9.i93, i64 %23, !dbg !2359
  %add.ptr18.i108 = getelementptr inbounds i8, ptr %add.ptr15.i96, i64 %23, !dbg !2360
  %25 = load i8, ptr %add.ptr18.i108, align 1, !dbg !2360, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %add.ptr12.i107, i8 %25, i64 28, i1 false) #10, !dbg !2361
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i104, 1, !dbg !2362
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i109, metadata !2122, metadata !DIExpression()) #10, !dbg !2351
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i, !dbg !2363
  br i1 %exitcond.not.i110, label %for.cond.cleanup.i99, label %for.body.i111, !dbg !2352, !llvm.loop !2364

for.body27.i116:                                  ; preds = %for.body27.i116, %for.body27.lr.ph.i103
  %indvars.iv122.i112 = phi i64 [ 0, %for.body27.lr.ph.i103 ], [ %indvars.iv.next123.i114, %for.body27.i116 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i112, metadata !2124, metadata !DIExpression()) #10, !dbg !2353
  %26 = xor i64 %indvars.iv122.i112, -1, !dbg !2366
  %27 = mul nsw i64 %26, %idx.ext16, !dbg !2366
  %add.ptr35.i113 = getelementptr inbounds i8, ptr %add.ptr30.i100, i64 %27, !dbg !2366
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i113, ptr nonnull align 1 %add.ptr30.i100, i64 %conv43.i, i1 false) #10, !dbg !2367
  %indvars.iv.next123.i114 = add nuw nsw i64 %indvars.iv122.i112, 1, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i114, metadata !2124, metadata !DIExpression()) #10, !dbg !2353
  %exitcond128.not.i115 = icmp eq i64 %indvars.iv.next123.i114, 24, !dbg !2369
  br i1 %exitcond128.not.i115, label %if.end.i118, label %for.body27.i116, !dbg !2355, !llvm.loop !2370

if.end.i118:                                      ; preds = %for.body27.i116, %for.cond.cleanup.i99
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2372
  br i1 %tobool1.not, label %if.end, label %for.body54.lr.ph.i126, !dbg !2373

for.body54.lr.ph.i126:                            ; preds = %if.end.i118
  %add.ptr57.i119 = getelementptr inbounds i8, ptr %add.ptr11, i64 -28
  %add.ptr68.i123 = getelementptr inbounds i8, ptr %add.ptr57.i119, i64 %idx.ext67.i122
  br label %for.body54.i131, !dbg !2374

for.body54.i131:                                  ; preds = %for.body54.i131, %for.body54.lr.ph.i126
  %indvars.iv129.i127 = phi i64 [ 0, %for.body54.lr.ph.i126 ], [ %indvars.iv.next130.i129, %for.body54.i131 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i127, metadata !2127, metadata !DIExpression()) #10, !dbg !2372
  %28 = add nsw i64 %indvars.iv129.i127, %6, !dbg !2375
  %29 = mul nsw i64 %28, %idx.ext16, !dbg !2375
  %add.ptr61.i128 = getelementptr inbounds i8, ptr %add.ptr57.i119, i64 %29, !dbg !2375
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i128, ptr nonnull align 1 %add.ptr68.i123, i64 %conv43.i, i1 false) #10, !dbg !2376
  %indvars.iv.next130.i129 = add nuw nsw i64 %indvars.iv129.i127, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i129, metadata !2127, metadata !DIExpression()) #10, !dbg !2372
  %exitcond135.not.i130 = icmp eq i64 %indvars.iv.next130.i129, 24, !dbg !2378
  br i1 %exitcond135.not.i130, label %if.end, label %for.body54.i131, !dbg !2374, !llvm.loop !2379

if.end:                                           ; preds = %for.body54.i88, %for.body54.i131, %if.end.i118, %if.end.i75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2249, metadata !DIExpression()), !dbg !2269
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2382
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2270, !llvm.loop !2383
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_frame_expand_border_lowres(ptr nocapture noundef readonly %frame) local_unnamed_addr #4 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 0, metadata !2388, metadata !DIExpression()), !dbg !2391
  %i_stride_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 27
  %i_width_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 28
  %i_lines_lowres = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 29
  call void @llvm.dbg.value(metadata i32 0, metadata !2388, metadata !DIExpression()), !dbg !2391
  br label %for.body, !dbg !2392

for.cond.cleanup:                                 ; preds = %plane_expand_border.exit
  ret void, !dbg !2393

for.body:                                         ; preds = %entry, %plane_expand_border.exit
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %plane_expand_border.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2388, metadata !DIExpression()), !dbg !2391
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 32, i64 %indvars.iv, !dbg !2394
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2394, !tbaa !1484
  %1 = load i32, ptr %i_stride_lowres, align 4, !dbg !2396, !tbaa !1683
  %2 = load i32, ptr %i_width_lowres, align 16, !dbg !2397, !tbaa !1679
  %3 = load i32, ptr %i_lines_lowres, align 4, !dbg !2398, !tbaa !1688
  call void @llvm.dbg.value(metadata ptr %0, metadata !2110, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %1, metadata !2115, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %2, metadata !2116, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %3, metadata !2117, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 32, metadata !2118, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 32, metadata !2119, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 1, metadata !2120, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 1, metadata !2121, metadata !DIExpression()) #10, !dbg !2399
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2401
  %cmp113.i = icmp sgt i32 %3, 0, !dbg !2402
  br i1 %cmp113.i, label %for.body.lr.ph.i, label %for.body.for.cond.cleanup.i_crit_edge, !dbg !2403

for.body.for.cond.cleanup.i_crit_edge:            ; preds = %for.body
  %.pre = sext i32 %1 to i64, !dbg !2404
  br label %for.cond.cleanup.i, !dbg !2403

for.body.lr.ph.i:                                 ; preds = %for.body
  %add.ptr.i = getelementptr inbounds i8, ptr %0, i64 -32
  %idx.ext8.i = sext i32 %2 to i64
  %add.ptr9.i = getelementptr inbounds i8, ptr %0, i64 %idx.ext8.i
  %sub13.i = add nsw i32 %2, -1
  %idx.ext14.i = sext i32 %sub13.i to i64
  %add.ptr15.i = getelementptr inbounds i8, ptr %0, i64 %idx.ext14.i
  %4 = sext i32 %1 to i64, !dbg !2403
  %wide.trip.count.i = zext i32 %3 to i64, !dbg !2402
  br label %for.body.i, !dbg !2403

for.cond.cleanup.i:                               ; preds = %for.body.i, %for.body.for.cond.cleanup.i_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.body.for.cond.cleanup.i_crit_edge ], [ %4, %for.body.i ], !dbg !2404
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2405
  %add.ptr30.i = getelementptr inbounds i8, ptr %0, i64 -32
  %add.i = add nsw i32 %2, 64
  %conv43.i = sext i32 %add.i to i64
  br label %for.body27.i, !dbg !2404

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2401
  %5 = mul nsw i64 %indvars.iv.i, %4, !dbg !2406
  %add.ptr2.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %5, !dbg !2406
  %add.ptr6.i = getelementptr inbounds i8, ptr %0, i64 %5, !dbg !2407
  %6 = load i8, ptr %add.ptr6.i, align 1, !dbg !2407, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr2.i, i8 %6, i64 32, i1 false) #10, !dbg !2408
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr9.i, i64 %5, !dbg !2409
  %add.ptr18.i = getelementptr inbounds i8, ptr %add.ptr15.i, i64 %5, !dbg !2410
  %7 = load i8, ptr %add.ptr18.i, align 1, !dbg !2410, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %add.ptr12.i, i8 %7, i64 32, i1 false) #10, !dbg !2411
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2122, metadata !DIExpression()) #10, !dbg !2401
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i, !dbg !2402
  br i1 %exitcond.not.i, label %for.cond.cleanup.i, label %for.body.i, !dbg !2403, !llvm.loop !2413

for.body27.i:                                     ; preds = %for.body27.i, %for.cond.cleanup.i
  %indvars.iv122.i = phi i64 [ 0, %for.cond.cleanup.i ], [ %indvars.iv.next123.i, %for.body27.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv122.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2405
  %8 = xor i64 %indvars.iv122.i, -1, !dbg !2415
  %9 = mul nsw i64 %.pre-phi, %8, !dbg !2415
  %add.ptr35.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %9, !dbg !2415
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr35.i, ptr nonnull align 1 %add.ptr30.i, i64 %conv43.i, i1 false) #10, !dbg !2416
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1, !dbg !2417
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next123.i, metadata !2124, metadata !DIExpression()) #10, !dbg !2405
  %exitcond128.not.i = icmp eq i64 %indvars.iv.next123.i, 32, !dbg !2418
  br i1 %exitcond128.not.i, label %if.end.i, label %for.body27.i, !dbg !2404, !llvm.loop !2419

if.end.i:                                         ; preds = %for.body27.i
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #10, !dbg !2421
  %sub65.i = add nsw i32 %3, -1
  %mul66.i = mul nsw i32 %sub65.i, %1
  %idx.ext67.i = sext i32 %mul66.i to i64
  %add.ptr68.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %idx.ext67.i
  %10 = sext i32 %3 to i64, !dbg !2422
  br label %for.body54.i, !dbg !2422

for.body54.i:                                     ; preds = %for.body54.i, %if.end.i
  %indvars.iv129.i = phi i64 [ 0, %if.end.i ], [ %indvars.iv.next130.i, %for.body54.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv129.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2421
  %11 = add nsw i64 %indvars.iv129.i, %10, !dbg !2423
  %12 = mul nsw i64 %11, %.pre-phi, !dbg !2423
  %add.ptr61.i = getelementptr inbounds i8, ptr %add.ptr30.i, i64 %12, !dbg !2423
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr61.i, ptr nonnull align 1 %add.ptr68.i, i64 %conv43.i, i1 false) #10, !dbg !2424
  %indvars.iv.next130.i = add nuw nsw i64 %indvars.iv129.i, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next130.i, metadata !2127, metadata !DIExpression()) #10, !dbg !2421
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next130.i, 32, !dbg !2426
  br i1 %exitcond135.not.i, label %plane_expand_border.exit, label %for.body54.i, !dbg !2422, !llvm.loop !2427

plane_expand_border.exit:                         ; preds = %for.body54.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2429
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2388, metadata !DIExpression()), !dbg !2391
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !2430
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !2392, !llvm.loop !2431
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @x264_frame_expand_border_mod16(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %frame) local_unnamed_addr #4 !dbg !2433 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2437, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2438, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2457
  %i_plane = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 23
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()), !dbg !2457
  %0 = load i32, ptr %i_plane, align 4, !dbg !2458, !tbaa !1439
  %cmp120 = icmp sgt i32 %0, 0, !dbg !2459
  br i1 %cmp120, label %for.body.lr.ph, label %for.cond.cleanup, !dbg !2460

for.body.lr.ph:                                   ; preds = %entry
  %i_width1 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 5
  %i_height3 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 6
  %sps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 24
  %b_interlaced = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 26
  br label %for.body, !dbg !2460

for.cond.cleanup:                                 ; preds = %if.end71, %entry
  ret void, !dbg !2461

for.body:                                         ; preds = %for.body.lr.ph, %if.end71
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end71 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2439, metadata !DIExpression()), !dbg !2457
  %tobool.not = icmp ne i64 %indvars.iv, 0, !dbg !2462
  %cond = zext i1 %tobool.not to i32, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2441, metadata !DIExpression()), !dbg !2463
  %1 = load i32, ptr %i_width1, align 4, !dbg !2464, !tbaa !1433
  %shr = ashr i32 %1, %cond, !dbg !2465
  call void @llvm.dbg.value(metadata i32 %shr, metadata !2444, metadata !DIExpression()), !dbg !2463
  %2 = load i32, ptr %i_height3, align 8, !dbg !2466, !tbaa !1436
  %shr4 = ashr i32 %2, %cond, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %shr4, metadata !2445, metadata !DIExpression()), !dbg !2463
  %3 = load ptr, ptr %sps, align 16, !dbg !2468, !tbaa !2076
  %i_mb_width = getelementptr inbounds %struct.x264_sps_t, ptr %3, i64 0, i32 16, !dbg !2469
  %4 = load i32, ptr %i_mb_width, align 4, !dbg !2469, !tbaa !2078
  %mul = shl nsw i32 %4, 4, !dbg !2470
  %sub = sub nsw i32 %mul, %1, !dbg !2471
  %shr7 = ashr i32 %sub, %cond, !dbg !2472
  call void @llvm.dbg.value(metadata i32 %shr7, metadata !2446, metadata !DIExpression()), !dbg !2463
  %i_mb_height = getelementptr inbounds %struct.x264_sps_t, ptr %3, i64 0, i32 17, !dbg !2473
  %5 = load i32, ptr %i_mb_height, align 4, !dbg !2473, !tbaa !2089
  %mul9 = shl nsw i32 %5, 4, !dbg !2474
  %sub12 = sub nsw i32 %mul9, %2, !dbg !2475
  %shr13 = ashr i32 %sub12, %cond, !dbg !2476
  call void @llvm.dbg.value(metadata i32 %shr13, metadata !2447, metadata !DIExpression()), !dbg !2463
  %tobool14.not = icmp ne i32 %shr7, 0, !dbg !2477
  %cmp16116 = icmp sgt i32 %shr4, 0
  %or.cond = select i1 %tobool14.not, i1 %cmp16116, i1 false, !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2448, metadata !DIExpression()), !dbg !2479
  br i1 %or.cond, label %for.body18.lr.ph, label %if.end, !dbg !2478

for.body18.lr.ph:                                 ; preds = %for.body
  %arrayidx = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30, i64 %indvars.iv
  %arrayidx20 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, i64 %indvars.iv
  %conv35 = sext i32 %shr7 to i64
  br label %for.body18, !dbg !2480

for.body18:                                       ; preds = %for.body18.lr.ph, %for.body18
  %y.0117 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %for.body18 ]
  call void @llvm.dbg.value(metadata i32 %y.0117, metadata !2448, metadata !DIExpression()), !dbg !2479
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2481, !tbaa !1484
  %7 = load i32, ptr %arrayidx20, align 4, !dbg !2483, !tbaa !1446
  %mul21 = mul nsw i32 %7, %y.0117, !dbg !2484
  %add = add nsw i32 %mul21, %shr, !dbg !2485
  %idxprom22 = sext i32 %add to i64, !dbg !2481
  %arrayidx23 = getelementptr inbounds i8, ptr %6, i64 %idxprom22, !dbg !2481
  %sub32 = add nsw i32 %add, -1, !dbg !2486
  %idxprom33 = sext i32 %sub32 to i64, !dbg !2487
  %arrayidx34 = getelementptr inbounds i8, ptr %6, i64 %idxprom33, !dbg !2487
  %8 = load i8, ptr %arrayidx34, align 1, !dbg !2487, !tbaa !2144
  tail call void @llvm.memset.p0.i64(ptr align 1 %arrayidx23, i8 %8, i64 %conv35, i1 false), !dbg !2488
  %inc = add nuw nsw i32 %y.0117, 1, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2448, metadata !DIExpression()), !dbg !2479
  %exitcond.not = icmp eq i32 %inc, %shr4, !dbg !2490
  br i1 %exitcond.not, label %if.end, label %for.body18, !dbg !2480, !llvm.loop !2491

if.end:                                           ; preds = %for.body18, %for.body
  %tobool36.not = icmp eq i32 %shr13, 0, !dbg !2493
  br i1 %tobool36.not, label %if.end71, label %for.cond39.preheader, !dbg !2494

for.cond39.preheader:                             ; preds = %if.end
  %add40 = add nsw i32 %shr13, %shr4
  call void @llvm.dbg.value(metadata i32 %shr4, metadata !2452, metadata !DIExpression()), !dbg !2495
  %cmp41118 = icmp sgt i32 %shr13, 0, !dbg !2496
  br i1 %cmp41118, label %for.body44.lr.ph, label %if.end71, !dbg !2498

for.body44.lr.ph:                                 ; preds = %for.cond39.preheader
  %arrayidx47 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 30, i64 %indvars.iv
  %arrayidx50 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 24, i64 %indvars.iv
  %add66 = add nsw i32 %shr7, %shr
  %conv67 = sext i32 %add66 to i64
  br label %for.body44, !dbg !2498

for.body44:                                       ; preds = %for.body44.lr.ph, %for.body44
  %y38.0119 = phi i32 [ %shr4, %for.body44.lr.ph ], [ %inc69, %for.body44 ]
  call void @llvm.dbg.value(metadata i32 %y38.0119, metadata !2452, metadata !DIExpression()), !dbg !2495
  %9 = load ptr, ptr %arrayidx47, align 8, !dbg !2499, !tbaa !1484
  %10 = load i32, ptr %arrayidx50, align 4, !dbg !2500, !tbaa !1446
  %mul51 = mul nsw i32 %10, %y38.0119, !dbg !2501
  %idxprom52 = sext i32 %mul51 to i64, !dbg !2499
  %arrayidx53 = getelementptr inbounds i8, ptr %9, i64 %idxprom52, !dbg !2499
  %11 = load i32, ptr %b_interlaced, align 8, !dbg !2502, !tbaa !1418
  %.not = xor i32 %11, -1, !dbg !2503
  %12 = or i32 %y38.0119, %.not, !dbg !2503
  %sub59 = add i32 %12, %shr4, !dbg !2503
  %mul63 = mul nsw i32 %sub59, %10, !dbg !2504
  %idxprom64 = sext i32 %mul63 to i64, !dbg !2505
  %arrayidx65 = getelementptr inbounds i8, ptr %9, i64 %idxprom64, !dbg !2505
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx53, ptr align 1 %arrayidx65, i64 %conv67, i1 false), !dbg !2506
  %inc69 = add nsw i32 %y38.0119, 1, !dbg !2507
  call void @llvm.dbg.value(metadata i32 %inc69, metadata !2452, metadata !DIExpression()), !dbg !2495
  %cmp41 = icmp slt i32 %inc69, %add40, !dbg !2496
  br i1 %cmp41, label %for.body44, label %if.end71, !dbg !2498, !llvm.loop !2508

if.end71:                                         ; preds = %for.body44, %for.cond39.preheader, %if.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2510
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2439, metadata !DIExpression()), !dbg !2457
  %13 = load i32, ptr %i_plane, align 4, !dbg !2458, !tbaa !1439
  %14 = sext i32 %13 to i64, !dbg !2459
  %cmp = icmp slt i64 %indvars.iv.next, %14, !dbg !2459
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !2460, !llvm.loop !2511
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_frame_cond_broadcast(ptr nocapture noundef writeonly %frame, i32 noundef %i_lines_completed) local_unnamed_addr #6 !dbg !2513 {
entry:
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2517, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i32 %i_lines_completed, metadata !2518, metadata !DIExpression()), !dbg !2519
  %i_lines_completed1 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 76, !dbg !2520
  store i32 %i_lines_completed, ptr %i_lines_completed1, align 8, !dbg !2521, !tbaa !1533
  ret void, !dbg !2522
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define dso_local void @x264_frame_cond_wait(ptr nocapture noundef %frame, i32 noundef %i_lines_completed) local_unnamed_addr #7 !dbg !2523 {
entry:
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2525, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 %i_lines_completed, metadata !2526, metadata !DIExpression()), !dbg !2527
  %i_lines_completed1 = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 76
  %0 = load i32, ptr %i_lines_completed1, align 8, !tbaa !1533
  %cmp = icmp slt i32 %0, %i_lines_completed
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2528, !llvm.loop !2529

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond

while.end:                                        ; preds = %entry
  ret void, !dbg !2531
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @x264_frame_push(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 !dbg !2532 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2537, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2539
  br label %while.cond, !dbg !2540

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2539
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2538, metadata !DIExpression()), !dbg !2539
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv, !dbg !2541
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2541, !tbaa !1484
  %tobool.not = icmp eq ptr %0, null, !dbg !2540
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2538, metadata !DIExpression()), !dbg !2539
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !2540, !llvm.loop !2543

while.end:                                        ; preds = %while.cond
  %idxprom.le = and i64 %indvars.iv, 4294967295, !dbg !2541
  %arrayidx.le = getelementptr inbounds ptr, ptr %list, i64 %idxprom.le, !dbg !2541
  store ptr %frame, ptr %arrayidx.le, align 8, !dbg !2544, !tbaa !1484
  ret void, !dbg !2545
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local ptr @x264_frame_pop(ptr nocapture noundef %list) local_unnamed_addr #8 !dbg !2546 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()), !dbg !2553
  br label %while.cond, !dbg !2554

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2553
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2552, metadata !DIExpression()), !dbg !2553
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2555
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2556
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2556, !tbaa !1484
  %tobool.not = icmp eq ptr %0, null, !dbg !2554
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !2554, !llvm.loop !2557

while.end:                                        ; preds = %while.cond
  %idxprom1 = and i64 %indvars.iv, 4294967295, !dbg !2559
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %idxprom1, !dbg !2559
  %1 = load ptr, ptr %arrayidx2, align 8, !dbg !2559, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %1, metadata !2551, metadata !DIExpression()), !dbg !2553
  store ptr null, ptr %arrayidx2, align 8, !dbg !2560, !tbaa !1484
  ret ptr %1, !dbg !2561
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @x264_frame_unshift(ptr nocapture noundef %list, ptr noundef %frame) local_unnamed_addr #8 !dbg !2562 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 0, metadata !2566, metadata !DIExpression()), !dbg !2567
  br label %while.cond, !dbg !2568

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ], !dbg !2567
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2566, metadata !DIExpression()), !dbg !2567
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv, !dbg !2569
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2569, !tbaa !1484
  %tobool.not = icmp eq ptr %0, null, !dbg !2568
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2570
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2566, metadata !DIExpression()), !dbg !2567
  br i1 %tobool.not, label %while.cond1.preheader, label %while.cond, !dbg !2568, !llvm.loop !2571

while.cond1.preheader:                            ; preds = %while.cond
  %1 = trunc i64 %indvars.iv to i32, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2567
  %tobool2.not17 = icmp eq i32 %1, 0, !dbg !2572
  br i1 %tobool2.not17, label %while.end8, label %while.body3.preheader, !dbg !2572

while.body3.preheader:                            ; preds = %while.cond1.preheader
  %sext = shl i64 %indvars.iv, 32, !dbg !2572
  %2 = ashr exact i64 %sext, 32, !dbg !2572
  br label %while.body3, !dbg !2572

while.body3:                                      ; preds = %while.body3.preheader, %while.body3
  %indvars.iv21 = phi i64 [ %2, %while.body3.preheader ], [ %indvars.iv.next22, %while.body3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv21, metadata !2566, metadata !DIExpression()), !dbg !2567
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next22, metadata !2566, metadata !DIExpression()), !dbg !2567
  %arrayidx5 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next22, !dbg !2574
  %3 = load ptr, ptr %arrayidx5, align 8, !dbg !2574, !tbaa !1484
  %arrayidx7 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv21, !dbg !2575
  store ptr %3, ptr %arrayidx7, align 8, !dbg !2576, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next22, metadata !2566, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2567
  %4 = trunc i64 %indvars.iv.next22 to i32, !dbg !2572
  %tobool2.not = icmp eq i32 %4, 0, !dbg !2572
  br i1 %tobool2.not, label %while.end8, label %while.body3, !dbg !2572, !llvm.loop !2577

while.end8:                                       ; preds = %while.body3, %while.cond1.preheader
  store ptr %frame, ptr %list, align 8, !dbg !2579, !tbaa !1484
  ret void, !dbg !2580
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local ptr @x264_frame_shift(ptr nocapture noundef %list) local_unnamed_addr #8 !dbg !2581 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2583, metadata !DIExpression()), !dbg !2586
  %0 = load ptr, ptr %list, align 8, !dbg !2587, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %0, metadata !2584, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2585, metadata !DIExpression()), !dbg !2586
  %tobool.not12 = icmp eq ptr %0, null, !dbg !2588
  br i1 %tobool.not12, label %for.end, label %for.body, !dbg !2588

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx114 = phi ptr [ %arrayidx3, %for.body ], [ %list, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2585, metadata !DIExpression()), !dbg !2586
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2590
  %arrayidx3 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2592
  %1 = load ptr, ptr %arrayidx3, align 8, !dbg !2592, !tbaa !1484
  store ptr %1, ptr %arrayidx114, align 8, !dbg !2593, !tbaa !1484
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2585, metadata !DIExpression()), !dbg !2586
  %2 = load ptr, ptr %arrayidx3, align 8, !dbg !2594, !tbaa !1484
  %tobool.not = icmp eq ptr %2, null, !dbg !2588
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !2588, !llvm.loop !2595

for.end:                                          ; preds = %for.body, %entry
  ret ptr %0, !dbg !2597
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_frame_push_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #9 !dbg !2598 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2601, metadata !DIExpression()), !dbg !2602
  %i_reference_count = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 78, !dbg !2603
  %0 = load i32, ptr %i_reference_count, align 16, !dbg !2604, !tbaa !2605
  %dec = add nsw i32 %0, -1, !dbg !2604
  store i32 %dec, ptr %i_reference_count, align 16, !dbg !2604, !tbaa !2605
  %cmp = icmp eq i32 %dec, 0, !dbg !2606
  br i1 %cmp, label %if.then, label %if.end, !dbg !2608

if.then:                                          ; preds = %entry
  %b_fdec = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 17, !dbg !2609
  %1 = load i8, ptr %b_fdec, align 4, !dbg !2609, !tbaa !1537
  %idxprom = zext i8 %1 to i64, !dbg !2610
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 1, i64 %idxprom, !dbg !2610
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2610, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %2, metadata !2536, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2537, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2611
  br label %while.cond.i, !dbg !2613

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ], !dbg !2611
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2538, metadata !DIExpression()), !dbg !2611
  %arrayidx.i = getelementptr inbounds ptr, ptr %2, i64 %indvars.iv.i, !dbg !2614
  %3 = load ptr, ptr %arrayidx.i, align 8, !dbg !2614, !tbaa !1484
  %tobool.not.i = icmp eq ptr %3, null, !dbg !2613
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2538, metadata !DIExpression()), !dbg !2611
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i, !dbg !2613, !llvm.loop !2616

x264_frame_push.exit:                             ; preds = %while.cond.i
  %idxprom.le.i = and i64 %indvars.iv.i, 4294967295, !dbg !2614
  %arrayidx.le.i = getelementptr inbounds ptr, ptr %2, i64 %idxprom.le.i, !dbg !2614
  store ptr %frame, ptr %arrayidx.le.i, align 8, !dbg !2617, !tbaa !1484
  br label %if.end, !dbg !2618

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_unused(ptr nocapture noundef readonly %h, i32 noundef %b_fdec) local_unnamed_addr #0 !dbg !2620 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 %b_fdec, metadata !2623, metadata !DIExpression()), !dbg !2625
  %idxprom = sext i32 %b_fdec to i64, !dbg !2626
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 1, i64 %idxprom, !dbg !2626
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !2626, !tbaa !1484
  %1 = load ptr, ptr %0, align 8, !dbg !2626, !tbaa !1484
  %tobool.not = icmp eq ptr %1, null, !dbg !2626
  br i1 %tobool.not, label %if.else, label %while.cond.i, !dbg !2628

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ], !dbg !2629
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2552, metadata !DIExpression()), !dbg !2629
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2631
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2632
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2632, !tbaa !1484
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2633
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i, !dbg !2633, !llvm.loop !2634

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295, !dbg !2636
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i, !dbg !2636
  %3 = load ptr, ptr %arrayidx2.i, align 8, !dbg !2636, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %3, metadata !2551, metadata !DIExpression()), !dbg !2629
  store ptr null, ptr %arrayidx2.i, align 8, !dbg !2637, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !2625
  br label %if.end, !dbg !2638

if.else:                                          ; preds = %entry
  %call6 = tail call ptr @x264_frame_new(ptr noundef nonnull %h, i32 noundef %b_fdec), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2624, metadata !DIExpression()), !dbg !2625
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call6, %if.else ], !dbg !2640
  call void @llvm.dbg.value(metadata ptr %frame.0, metadata !2624, metadata !DIExpression()), !dbg !2625
  %tobool7.not = icmp eq ptr %frame.0, null, !dbg !2641
  br i1 %tobool7.not, label %cleanup, label %if.end9, !dbg !2643

if.end9:                                          ; preds = %if.end
  %b_last_minigop_bframe = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 18, !dbg !2644
  store i8 0, ptr %b_last_minigop_bframe, align 1, !dbg !2645, !tbaa !2646
  %i_reference_count = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 78, !dbg !2647
  store i32 1, ptr %i_reference_count, align 16, !dbg !2648, !tbaa !2605
  %b_intra_calculated = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 62, !dbg !2649
  store i32 0, ptr %b_intra_calculated, align 8, !dbg !2650, !tbaa !2651
  %b_scenecut = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 66, !dbg !2652
  store i32 1, ptr %b_scenecut, align 8, !dbg !2653, !tbaa !2654
  %b_keyframe = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 16, !dbg !2655
  store i32 0, ptr %b_keyframe, align 16, !dbg !2656, !tbaa !2657
  %weight = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 37, !dbg !2658
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %weight, i8 0, i64 3072, i1 false), !dbg !2659
  %f_weighted_cost_delta = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 67, !dbg !2660
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %f_weighted_cost_delta, i8 0, i64 72, i1 false), !dbg !2661
  br label %cleanup, !dbg !2662

cleanup:                                          ; preds = %if.end, %if.end9
  ret ptr %frame.0, !dbg !2663
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_frame_push_blank_unused(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #9 !dbg !2664 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2666, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2667, metadata !DIExpression()), !dbg !2668
  %i_reference_count = getelementptr inbounds %struct.x264_frame, ptr %frame, i64 0, i32 78, !dbg !2669
  %0 = load i32, ptr %i_reference_count, align 16, !dbg !2670, !tbaa !2605
  %dec = add nsw i32 %0, -1, !dbg !2670
  store i32 %dec, ptr %i_reference_count, align 16, !dbg !2670, !tbaa !2605
  %cmp = icmp eq i32 %dec, 0, !dbg !2671
  br i1 %cmp, label %if.then, label %if.end, !dbg !2673

if.then:                                          ; preds = %entry
  %blank_unused = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 2, !dbg !2674
  %1 = load ptr, ptr %blank_unused, align 8, !dbg !2674, !tbaa !2675
  call void @llvm.dbg.value(metadata ptr %1, metadata !2536, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2537, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression()), !dbg !2676
  br label %while.cond.i, !dbg !2678

while.cond.i:                                     ; preds = %while.cond.i, %if.then
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %if.then ], !dbg !2676
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2538, metadata !DIExpression()), !dbg !2676
  %arrayidx.i = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv.i, !dbg !2679
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2679, !tbaa !1484
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2678
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2538, metadata !DIExpression()), !dbg !2676
  br i1 %tobool.not.i, label %x264_frame_push.exit, label %while.cond.i, !dbg !2678, !llvm.loop !2681

x264_frame_push.exit:                             ; preds = %while.cond.i
  %idxprom.le.i = and i64 %indvars.iv.i, 4294967295, !dbg !2679
  %arrayidx.le.i = getelementptr inbounds ptr, ptr %1, i64 %idxprom.le.i, !dbg !2679
  store ptr %frame, ptr %arrayidx.le.i, align 8, !dbg !2682, !tbaa !1484
  br label %if.end, !dbg !2683

if.end:                                           ; preds = %x264_frame_push.exit, %entry
  ret void, !dbg !2684
}

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_frame_pop_blank_unused(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !2685 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2689, metadata !DIExpression()), !dbg !2691
  %blank_unused = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 2, !dbg !2692
  %0 = load ptr, ptr %blank_unused, align 8, !dbg !2692, !tbaa !2675
  %1 = load ptr, ptr %0, align 8, !dbg !2694, !tbaa !1484
  %tobool.not = icmp eq ptr %1, null, !dbg !2694
  br i1 %tobool.not, label %if.else, label %while.cond.i, !dbg !2695

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.cond.i ], [ 0, %entry ], !dbg !2696
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2552, metadata !DIExpression()), !dbg !2696
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2698
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2699
  %2 = load ptr, ptr %arrayidx.i, align 8, !dbg !2699, !tbaa !1484
  %tobool.not.i = icmp eq ptr %2, null, !dbg !2700
  br i1 %tobool.not.i, label %x264_frame_pop.exit, label %while.cond.i, !dbg !2700, !llvm.loop !2701

x264_frame_pop.exit:                              ; preds = %while.cond.i
  %idxprom1.i = and i64 %indvars.iv.i, 4294967295, !dbg !2703
  %arrayidx2.i = getelementptr inbounds ptr, ptr %0, i64 %idxprom1.i, !dbg !2703
  %3 = load ptr, ptr %arrayidx2.i, align 8, !dbg !2703, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %3, metadata !2551, metadata !DIExpression()), !dbg !2696
  store ptr null, ptr %arrayidx2.i, align 8, !dbg !2704, !tbaa !1484
  call void @llvm.dbg.value(metadata ptr %3, metadata !2690, metadata !DIExpression()), !dbg !2691
  br label %if.end, !dbg !2705

if.else:                                          ; preds = %entry
  %call3 = tail call ptr @x264_malloc(i32 noundef 15632) #10, !dbg !2706
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2690, metadata !DIExpression()), !dbg !2691
  br label %if.end

if.end:                                           ; preds = %if.else, %x264_frame_pop.exit
  %frame.0 = phi ptr [ %3, %x264_frame_pop.exit ], [ %call3, %if.else ], !dbg !2707
  call void @llvm.dbg.value(metadata ptr %frame.0, metadata !2690, metadata !DIExpression()), !dbg !2691
  %tobool4.not = icmp eq ptr %frame.0, null, !dbg !2708
  br i1 %tobool4.not, label %cleanup, label %if.end6, !dbg !2710

if.end6:                                          ; preds = %if.end
  %b_duplicate = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 39, !dbg !2711
  store i32 1, ptr %b_duplicate, align 16, !dbg !2712, !tbaa !1597
  %i_reference_count = getelementptr inbounds %struct.x264_frame, ptr %frame.0, i64 0, i32 78, !dbg !2713
  store i32 1, ptr %i_reference_count, align 16, !dbg !2714, !tbaa !2605
  br label %cleanup, !dbg !2715

cleanup:                                          ; preds = %if.end, %if.end6
  ret ptr %frame.0, !dbg !2716
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_frame_sort(ptr nocapture noundef %list, i32 noundef %b_dts) local_unnamed_addr #9 !dbg !2717 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2721, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 %b_dts, metadata !2722, metadata !DIExpression()), !dbg !2736
  %arrayidx52 = getelementptr inbounds ptr, ptr %list, i64 1
  %tobool14.not = icmp eq i32 %b_dts, 0
  %0 = load ptr, ptr %arrayidx52, align 8, !dbg !2737, !tbaa !1484
  %1 = icmp eq ptr %0, null, !dbg !2738
  br i1 %1, label %do.end32, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry, %for.cond.cleanup.do.body_crit_edge
  %2 = phi ptr [ %.pre, %for.cond.cleanup.do.body_crit_edge ], [ %0, %entry ]
  br i1 %tobool14.not, label %for.body.us, label %for.body, !dbg !2739

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %if.end.us ], [ 0, %for.body.lr.ph ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %if.end.us ], [ 1, %for.body.lr.ph ]
  %3 = phi ptr [ %7, %if.end.us ], [ %2, %for.body.lr.ph ]
  %arrayidx57.us = phi ptr [ %arrayidx.us, %if.end.us ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055.us = phi i32 [ %b_ok.1.us, %if.end.us ], [ 1, %for.body.lr.ph ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  call void @llvm.dbg.value(metadata i32 %b_ok.055.us, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %indvars.iv66, metadata !2724, metadata !DIExpression()), !dbg !2740
  %arrayidx2.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv66, !dbg !2741
  %4 = load ptr, ptr %arrayidx2.us, align 8, !dbg !2741, !tbaa !1484
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef), metadata !2727, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  %i_frame.us = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 10, !dbg !2743
  %5 = load i32, ptr %i_frame.us, align 8, !dbg !2743, !tbaa !1527
  %i_frame12.us = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 10, !dbg !2744
  %6 = load i32, ptr %i_frame12.us, align 8, !dbg !2744, !tbaa !1527
  call void @llvm.dbg.value(metadata !DIArgList(i32 %5, i32 %6), metadata !2730, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  %cmp17.us = icmp sgt i32 %5, %6, !dbg !2745
  call void @llvm.dbg.value(metadata i1 %spec.select, metadata !2731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2742
  br i1 %cmp17.us, label %do.body19.us, label %if.end.us, !dbg !2746

do.body19.us:                                     ; preds = %for.body.us
  call void @llvm.dbg.value(metadata ptr %4, metadata !2732, metadata !DIExpression()), !dbg !2747
  store ptr %3, ptr %arrayidx2.us, align 8, !dbg !2748, !tbaa !1484
  store ptr %4, ptr %arrayidx57.us, align 8, !dbg !2748, !tbaa !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()), !dbg !2736
  br label %if.end.us, !dbg !2749

if.end.us:                                        ; preds = %do.body19.us, %for.body.us
  %b_ok.1.us = phi i32 [ 0, %do.body19.us ], [ %b_ok.055.us, %for.body.us ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %b_ok.1.us, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %indvars.iv64, metadata !2724, metadata !DIExpression()), !dbg !2740
  %indvars.iv.next65 = add nuw i64 %indvars.iv64, 1, !dbg !2751
  %arrayidx.us = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next65, !dbg !2737
  %7 = load ptr, ptr %arrayidx.us, align 8, !dbg !2737, !tbaa !1484
  %tobool.not.us = icmp eq ptr %7, null, !dbg !2738
  br i1 %tobool.not.us, label %for.cond.cleanup, label %for.body.us, !dbg !2738, !llvm.loop !2752

for.cond.cleanup:                                 ; preds = %if.end, %if.end.us
  %b_ok.0.lcssa = phi i32 [ %b_ok.1.us, %if.end.us ], [ %b_ok.1, %if.end ], !dbg !2750
  %tobool31.not = icmp eq i32 %b_ok.0.lcssa, 0, !dbg !2754
  br i1 %tobool31.not, label %for.cond.cleanup.do.body_crit_edge, label %do.end32, !dbg !2755, !llvm.loop !2756

for.cond.cleanup.do.body_crit_edge:               ; preds = %for.cond.cleanup
  %.pre = load ptr, ptr %arrayidx52, align 8, !dbg !2737, !tbaa !1484
  call void @llvm.dbg.value(metadata i32 1, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i32 0, metadata !2724, metadata !DIExpression()), !dbg !2740
  %tobool.not53 = icmp eq ptr %.pre, null, !dbg !2738
  br i1 %tobool.not53, label %do.end32, label %for.body.lr.ph, !dbg !2738

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %if.end ], [ 0, %for.body.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %for.body.lr.ph ]
  %8 = phi ptr [ %14, %if.end ], [ %2, %for.body.lr.ph ]
  %arrayidx57 = phi ptr [ %arrayidx, %if.end ], [ %arrayidx52, %for.body.lr.ph ]
  %b_ok.055 = phi i32 [ %b_ok.1, %if.end ], [ 1, %for.body.lr.ph ]
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  call void @llvm.dbg.value(metadata i32 %b_ok.055, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %indvars.iv59, metadata !2724, metadata !DIExpression()), !dbg !2740
  %arrayidx2 = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv59, !dbg !2741
  %9 = load ptr, ptr %arrayidx2, align 8, !dbg !2741, !tbaa !1484
  %i_type = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 1, !dbg !2759
  %10 = load i32, ptr %i_type, align 4, !dbg !2759, !tbaa !1518
  %i_type6 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 1, !dbg !2760
  %11 = load i32, ptr %i_type6, align 4, !dbg !2760, !tbaa !1518
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 undef), metadata !2730, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  call void @llvm.dbg.value(metadata !DIArgList(i32 %10, i32 %11), metadata !2727, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  %cmp = icmp sgt i32 %10, %11, !dbg !2761
  br i1 %cmp, label %do.body19, label %cond.end, !dbg !2762

cond.end:                                         ; preds = %for.body
  %i_frame = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 10, !dbg !2743
  %12 = load i32, ptr %i_frame, align 8, !dbg !2743, !tbaa !1527
  call void @llvm.dbg.value(metadata !DIArgList(i32 %12, i32 undef), metadata !2730, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  %i_frame12 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 10, !dbg !2744
  %13 = load i32, ptr %i_frame12, align 8, !dbg !2744, !tbaa !1527
  call void @llvm.dbg.value(metadata !DIArgList(i32 %12, i32 %13), metadata !2730, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2742
  %cmp15 = icmp eq i32 %10, %11, !dbg !2763
  %cmp16 = icmp sgt i32 %12, %13
  %spec.select = select i1 %cmp15, i1 %cmp16, i1 false, !dbg !2764
  call void @llvm.dbg.value(metadata i1 %spec.select, metadata !2731, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2742
  br i1 %spec.select, label %do.body19, label %if.end, !dbg !2746

do.body19:                                        ; preds = %for.body, %cond.end
  call void @llvm.dbg.value(metadata ptr %9, metadata !2732, metadata !DIExpression()), !dbg !2747
  store ptr %8, ptr %arrayidx2, align 8, !dbg !2748, !tbaa !1484
  store ptr %9, ptr %arrayidx57, align 8, !dbg !2748, !tbaa !1484
  call void @llvm.dbg.value(metadata i32 0, metadata !2723, metadata !DIExpression()), !dbg !2736
  br label %if.end, !dbg !2749

if.end:                                           ; preds = %do.body19, %cond.end
  %b_ok.1 = phi i32 [ 0, %do.body19 ], [ %b_ok.055, %cond.end ], !dbg !2750
  call void @llvm.dbg.value(metadata i32 %b_ok.1, metadata !2723, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2724, metadata !DIExpression()), !dbg !2740
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2751
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2737
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !2737, !tbaa !1484
  %tobool.not = icmp eq ptr %14, null, !dbg !2738
  br i1 %tobool.not, label %for.cond.cleanup, label %for.body, !dbg !2738, !llvm.loop !2752

do.end32:                                         ; preds = %for.cond.cleanup, %for.cond.cleanup.do.body_crit_edge, %entry
  ret void, !dbg !2765
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_weight_scale_plane(ptr nocapture noundef readnone %h, ptr noundef %dst, i32 noundef %i_dst_stride, ptr noundef %src, i32 noundef %i_src_stride, i32 noundef %i_width, i32 noundef %i_height, ptr noundef %w) local_unnamed_addr #0 !dbg !2766 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !2770, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2771, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %i_dst_stride, metadata !2772, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %src, metadata !2773, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %i_src_stride, metadata !2774, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %i_width, metadata !2775, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %i_height, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %w, metadata !2777, metadata !DIExpression()), !dbg !2781
  %cmp23 = icmp sgt i32 %i_height, 0, !dbg !2782
  br i1 %cmp23, label %for.cond.preheader.lr.ph, label %while.end, !dbg !2783

for.cond.preheader.lr.ph:                         ; preds = %entry
  %cmp121 = icmp sgt i32 %i_width, 0
  %weightfn = getelementptr inbounds %struct.x264_weight_t, ptr %w, i64 0, i32 5
  %mul = shl nsw i32 %i_dst_stride, 4
  %idx.ext5 = sext i32 %mul to i64
  %mul7 = shl nsw i32 %i_src_stride, 4
  %idx.ext8 = sext i32 %mul7 to i64
  br i1 %cmp121, label %for.cond.preheader.us, label %while.end, !dbg !2784

for.cond.preheader.us:                            ; preds = %for.cond.preheader.lr.ph, %for.cond.for.cond.cleanup_crit_edge.us
  %dst.addr.027.us = phi ptr [ %add.ptr6.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %dst, %for.cond.preheader.lr.ph ]
  %i_height.addr.025.us = phi i32 [ %sub.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %i_height, %for.cond.preheader.lr.ph ]
  %src.addr.024.us = phi ptr [ %add.ptr9.us, %for.cond.for.cond.cleanup_crit_edge.us ], [ %src, %for.cond.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %dst.addr.027.us, metadata !2771, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %i_height.addr.025.us, metadata !2776, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata ptr %src.addr.024.us, metadata !2773, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 0, metadata !2778, metadata !DIExpression()), !dbg !2785
  %0 = tail call i32 @llvm.smin.i32(i32 %i_height.addr.025.us, i32 16), !dbg !2781
  br label %for.body.us, !dbg !2784

for.body.us:                                      ; preds = %for.cond.preheader.us, %for.body.us
  %indvars.iv = phi i64 [ 0, %for.cond.preheader.us ], [ %indvars.iv.next, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2778, metadata !DIExpression()), !dbg !2785
  %1 = load ptr, ptr %weightfn, align 16, !dbg !2786, !tbaa !2788
  %arrayidx.us = getelementptr inbounds ptr, ptr %1, i64 4, !dbg !2790
  %2 = load ptr, ptr %arrayidx.us, align 8, !dbg !2790, !tbaa !1484
  %add.ptr.us = getelementptr inbounds i8, ptr %dst.addr.027.us, i64 %indvars.iv, !dbg !2791
  %add.ptr3.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %indvars.iv, !dbg !2792
  tail call void %2(ptr noundef %add.ptr.us, i32 noundef %i_dst_stride, ptr noundef %add.ptr3.us, i32 noundef %i_src_stride, ptr noundef %w, i32 noundef %0) #10, !dbg !2790
  %indvars.iv.next = add nuw i64 %indvars.iv, 16, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2778, metadata !DIExpression()), !dbg !2785
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !2794
  %cmp1.us = icmp slt i32 %3, %i_width, !dbg !2794
  br i1 %cmp1.us, label %for.body.us, label %for.cond.for.cond.cleanup_crit_edge.us, !dbg !2784, !llvm.loop !2795

for.cond.for.cond.cleanup_crit_edge.us:           ; preds = %for.body.us
  %sub.us = add nsw i32 %i_height.addr.025.us, -16, !dbg !2797
  call void @llvm.dbg.value(metadata i32 %sub.us, metadata !2776, metadata !DIExpression()), !dbg !2781
  %add.ptr6.us = getelementptr inbounds i8, ptr %dst.addr.027.us, i64 %idx.ext5, !dbg !2798
  call void @llvm.dbg.value(metadata ptr %add.ptr6.us, metadata !2771, metadata !DIExpression()), !dbg !2781
  %add.ptr9.us = getelementptr inbounds i8, ptr %src.addr.024.us, i64 %idx.ext8, !dbg !2799
  call void @llvm.dbg.value(metadata ptr %add.ptr9.us, metadata !2773, metadata !DIExpression()), !dbg !2781
  %cmp.us = icmp sgt i32 %i_height.addr.025.us, 16, !dbg !2782
  br i1 %cmp.us, label %for.cond.preheader.us, label %while.end, !dbg !2783, !llvm.loop !2800

while.end:                                        ; preds = %for.cond.for.cond.cleanup_crit_edge.us, %for.cond.preheader.lr.ph, %entry
  ret void, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_frame_delete_list(ptr noundef %list) local_unnamed_addr #0 !dbg !2803 {
entry:
  call void @llvm.dbg.value(metadata ptr %list, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  %tobool.not = icmp eq ptr %list, null, !dbg !2810
  br i1 %tobool.not, label %cleanup, label %while.cond.preheader, !dbg !2812

while.cond.preheader:                             ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = load ptr, ptr %list, align 8, !dbg !2813, !tbaa !1484
  %tobool1.not8 = icmp eq ptr %0, null, !dbg !2814
  br i1 %tobool1.not8, label %while.end, label %while.body, !dbg !2814

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %while.cond.preheader ]
  %1 = phi ptr [ %2, %while.body ], [ %0, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2808, metadata !DIExpression()), !dbg !2809
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2808, metadata !DIExpression()), !dbg !2809
  tail call void @x264_frame_delete(ptr noundef nonnull %1), !dbg !2816
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %indvars.iv.next, !dbg !2813
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2813, !tbaa !1484
  %tobool1.not = icmp eq ptr %2, null, !dbg !2814
  br i1 %tobool1.not, label %while.end, label %while.body, !dbg !2814, !llvm.loop !2817

while.end:                                        ; preds = %while.body, %while.cond.preheader
  tail call void @x264_free(ptr noundef nonnull %list) #10, !dbg !2819
  br label %cleanup, !dbg !2820

cleanup:                                          ; preds = %entry, %while.end
  ret void, !dbg !2820
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_synch_frame_list_init(ptr nocapture noundef writeonly %slist, i32 noundef %max_size) local_unnamed_addr #0 !dbg !2821 {
entry:
  call void @llvm.dbg.value(metadata ptr %slist, metadata !2826, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.value(metadata i32 %max_size, metadata !2827, metadata !DIExpression()), !dbg !2829
  %cmp = icmp slt i32 %max_size, 0, !dbg !2830
  br i1 %cmp, label %return, label %if.end, !dbg !2832

if.end:                                           ; preds = %entry
  %i_max_size = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %slist, i64 0, i32 1, !dbg !2833
  store i32 %max_size, ptr %i_max_size, align 8, !dbg !2834, !tbaa !2835
  %i_size = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %slist, i64 0, i32 2, !dbg !2837
  store i32 0, ptr %i_size, align 4, !dbg !2838, !tbaa !2839
  %add = add nuw nsw i32 %max_size, 1, !dbg !2840
  %conv18 = zext i32 %add to i64, !dbg !2840
  %mul = shl nuw nsw i64 %conv18, 3, !dbg !2840
  %conv2 = trunc i64 %mul to i32, !dbg !2840
  %call = tail call ptr @x264_malloc(i32 noundef %conv2) #10, !dbg !2840
  store ptr %call, ptr %slist, align 8, !dbg !2840, !tbaa !2843
  %tobool.not = icmp eq ptr %call, null, !dbg !2844
  br i1 %tobool.not, label %return, label %do.end, !dbg !2840

do.end:                                           ; preds = %if.end
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call, i8 0, i64 %mul, i1 false), !dbg !2846
  br label %return, !dbg !2847

return:                                           ; preds = %if.end, %entry, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -1, %entry ], [ -1, %if.end ], !dbg !2829
  ret i32 %retval.0, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_synch_frame_list_delete(ptr nocapture noundef readonly %slist) local_unnamed_addr #0 !dbg !2849 {
entry:
  call void @llvm.dbg.value(metadata ptr %slist, metadata !2853, metadata !DIExpression()), !dbg !2854
  %0 = load ptr, ptr %slist, align 8, !dbg !2855, !tbaa !2843
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()) #10, !dbg !2856
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()) #10, !dbg !2856
  %tobool.not.i = icmp eq ptr %0, null, !dbg !2858
  br i1 %tobool.not.i, label %x264_frame_delete_list.exit, label %while.cond.preheader.i, !dbg !2859

while.cond.preheader.i:                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2808, metadata !DIExpression()) #10, !dbg !2856
  %1 = load ptr, ptr %0, align 8, !dbg !2860, !tbaa !1484
  %tobool1.not8.i = icmp eq ptr %1, null, !dbg !2861
  br i1 %tobool1.not8.i, label %while.end.i, label %while.body.i, !dbg !2861

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %while.body.i ], [ 0, %while.cond.preheader.i ]
  %2 = phi ptr [ %3, %while.body.i ], [ %1, %while.cond.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2808, metadata !DIExpression()) #10, !dbg !2856
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2808, metadata !DIExpression()) #10, !dbg !2856
  tail call void @x264_frame_delete(ptr noundef nonnull %2) #10, !dbg !2863
  %arrayidx.i = getelementptr inbounds ptr, ptr %0, i64 %indvars.iv.next.i, !dbg !2860
  %3 = load ptr, ptr %arrayidx.i, align 8, !dbg !2860, !tbaa !1484
  %tobool1.not.i = icmp eq ptr %3, null, !dbg !2861
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i, !dbg !2861, !llvm.loop !2864

while.end.i:                                      ; preds = %while.body.i, %while.cond.preheader.i
  tail call void @x264_free(ptr noundef nonnull %0) #10, !dbg !2866
  br label %x264_frame_delete_list.exit, !dbg !2867

x264_frame_delete_list.exit:                      ; preds = %entry, %while.end.i
  ret void, !dbg !2868
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_synch_frame_list_push(ptr nocapture noundef %slist, ptr noundef %frame) local_unnamed_addr #9 !dbg !2869 {
entry:
  call void @llvm.dbg.value(metadata ptr %slist, metadata !2873, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.value(metadata ptr %frame, metadata !2874, metadata !DIExpression()), !dbg !2875
  %i_size = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %slist, i64 0, i32 2
  %0 = load i32, ptr %i_size, align 4, !tbaa !2839
  %i_max_size = getelementptr inbounds %struct.x264_synch_frame_list_t, ptr %slist, i64 0, i32 1
  %1 = load i32, ptr %i_max_size, align 8, !tbaa !2835
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %while.cond, label %while.end, !dbg !2876, !llvm.loop !2877

while.cond:                                       ; preds = %entry, %while.cond
  br label %while.cond

while.end:                                        ; preds = %entry
  %2 = load ptr, ptr %slist, align 8, !dbg !2879, !tbaa !2843
  %inc = add nsw i32 %0, 1, !dbg !2880
  store i32 %inc, ptr %i_size, align 4, !dbg !2880, !tbaa !2839
  %idxprom = sext i32 %0 to i64, !dbg !2881
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom, !dbg !2881
  store ptr %frame, ptr %arrayidx, align 8, !dbg !2882, !tbaa !1484
  ret void, !dbg !2883
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !15, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/frame.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "2de27f64079da1a9117f5fc2a58ed5b6")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pic_struct_e", file: !4, line: 483, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14}
!7 = !DIEnumerator(name: "PIC_STRUCT_AUTO", value: 0)
!8 = !DIEnumerator(name: "PIC_STRUCT_PROGRESSIVE", value: 1)
!9 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM", value: 4)
!10 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP", value: 5)
!11 = !DIEnumerator(name: "PIC_STRUCT_TOP_BOTTOM_TOP", value: 6)
!12 = !DIEnumerator(name: "PIC_STRUCT_BOTTOM_TOP_BOTTOM", value: 7)
!13 = !DIEnumerator(name: "PIC_STRUCT_DOUBLE", value: 8)
!14 = !DIEnumerator(name: "PIC_STRUCT_TRIPLE", value: 9)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !18, line: 25, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !20, line: 40, baseType: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!21 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!22 = !{i32 7, !"Dwarf Version", i32 5}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = !{i32 7, !"PIC Level", i32 2}
!26 = !{i32 7, !"PIE Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!29 = distinct !DISubprogram(name: "x264_frame_new", scope: !30, file: !30, line: 29, type: !31, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1342)
!30 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2de27f64079da1a9117f5fc2a58ed5b6")
!31 = !DISubroutineType(types: !32)
!32 = !{!33, !380, !39}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !35, line: 146, baseType: !36)
!35 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !35, line: 31, size: 125056, elements: !37)
!37 = !{!38, !40, !41, !42, !47, !48, !49, !50, !51, !52, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !247, !248, !249, !250, !251, !252, !255, !259, !260, !261, !262, !263, !291, !293, !294, !296, !301, !302, !306, !307, !311, !315, !318, !320, !321, !324, !325, !327, !328, !329, !332, !334, !335, !336, !338, !339, !340, !341, !342, !343, !344, !345, !347, !348, !352, !361, !365, !367, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !36, file: !35, line: 34, baseType: !39, size: 32)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !36, file: !35, line: 35, baseType: !39, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !36, file: !35, line: 36, baseType: !39, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !36, file: !35, line: 37, baseType: !43, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !44, line: 27, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !20, line: 44, baseType: !46)
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !36, file: !35, line: 38, baseType: !43, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !36, file: !35, line: 39, baseType: !39, size: 32, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !36, file: !35, line: 40, baseType: !39, size: 32, offset: 288)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !36, file: !35, line: 41, baseType: !39, size: 32, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !36, file: !35, line: 42, baseType: !39, size: 32, offset: 352)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !36, file: !35, line: 43, baseType: !53, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !4, line: 376, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !4, line: 176, size: 5632, elements: !56)
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !107, !108, !109, !110, !114, !115, !130, !131, !132, !133, !134, !165, !207, !208, !209, !210, !211, !212, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !55, file: !4, line: 179, baseType: !5, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !55, file: !4, line: 180, baseType: !39, size: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !55, file: !4, line: 181, baseType: !39, size: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !55, file: !4, line: 182, baseType: !39, size: 32, offset: 96)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !55, file: !4, line: 183, baseType: !39, size: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !55, file: !4, line: 186, baseType: !39, size: 32, offset: 160)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !55, file: !4, line: 187, baseType: !39, size: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !55, file: !4, line: 188, baseType: !39, size: 32, offset: 224)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !55, file: !4, line: 189, baseType: !39, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !55, file: !4, line: 190, baseType: !39, size: 32, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !55, file: !4, line: 198, baseType: !39, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !55, file: !4, line: 215, baseType: !69, size: 288, offset: 352)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !4, line: 200, size: 288, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !69, file: !4, line: 203, baseType: !39, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !69, file: !4, line: 204, baseType: !39, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !69, file: !4, line: 206, baseType: !39, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !69, file: !4, line: 209, baseType: !39, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !69, file: !4, line: 210, baseType: !39, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !69, file: !4, line: 211, baseType: !39, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !69, file: !4, line: 212, baseType: !39, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !69, file: !4, line: 213, baseType: !39, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !69, file: !4, line: 214, baseType: !39, size: 32, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !55, file: !4, line: 218, baseType: !39, size: 32, offset: 640)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !55, file: !4, line: 219, baseType: !39, size: 32, offset: 672)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !55, file: !4, line: 220, baseType: !39, size: 32, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !55, file: !4, line: 221, baseType: !39, size: 32, offset: 736)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !55, file: !4, line: 222, baseType: !39, size: 32, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !55, file: !4, line: 224, baseType: !39, size: 32, offset: 800)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !55, file: !4, line: 225, baseType: !39, size: 32, offset: 832)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !55, file: !4, line: 226, baseType: !39, size: 32, offset: 864)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !55, file: !4, line: 227, baseType: !39, size: 32, offset: 896)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !55, file: !4, line: 229, baseType: !39, size: 32, offset: 928)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !55, file: !4, line: 230, baseType: !39, size: 32, offset: 960)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !55, file: !4, line: 231, baseType: !39, size: 32, offset: 992)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !55, file: !4, line: 233, baseType: !39, size: 32, offset: 1024)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !55, file: !4, line: 234, baseType: !39, size: 32, offset: 1056)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !55, file: !4, line: 236, baseType: !39, size: 32, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !55, file: !4, line: 237, baseType: !39, size: 32, offset: 1120)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !55, file: !4, line: 239, baseType: !39, size: 32, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !55, file: !4, line: 240, baseType: !98, size: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !55, file: !4, line: 241, baseType: !101, size: 128, offset: 1280)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !105)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !18, line: 24, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !20, line: 38, baseType: !104)
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !{!106}
!106 = !DISubrange(count: 16)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !55, file: !4, line: 242, baseType: !101, size: 128, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !55, file: !4, line: 243, baseType: !101, size: 128, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !55, file: !4, line: 244, baseType: !101, size: 128, offset: 1664)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !55, file: !4, line: 245, baseType: !111, size: 512, offset: 1792)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 512, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !55, file: !4, line: 246, baseType: !111, size: 512, offset: 2304)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !55, file: !4, line: 249, baseType: !116, size: 64, offset: 2816)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !39, !120, !122}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !124)
!124 = !{!125, !127, !128, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !123, file: !126, baseType: !5, size: 32)
!126 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !123, file: !126, baseType: !5, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !123, file: !126, baseType: !119, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !123, file: !126, baseType: !119, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !55, file: !4, line: 250, baseType: !119, size: 64, offset: 2880)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !55, file: !4, line: 251, baseType: !39, size: 32, offset: 2944)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !55, file: !4, line: 252, baseType: !39, size: 32, offset: 2976)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !55, file: !4, line: 253, baseType: !98, size: 64, offset: 3008)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !55, file: !4, line: 287, baseType: !135, size: 800, offset: 3072)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !4, line: 256, size: 800, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !157, !158, !159, !163, !164}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !135, file: !4, line: 258, baseType: !5, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !135, file: !4, line: 259, baseType: !5, size: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !135, file: !4, line: 261, baseType: !39, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !135, file: !4, line: 262, baseType: !39, size: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !135, file: !4, line: 263, baseType: !39, size: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !135, file: !4, line: 264, baseType: !39, size: 32, offset: 160)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !135, file: !4, line: 265, baseType: !39, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !135, file: !4, line: 267, baseType: !39, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !135, file: !4, line: 268, baseType: !39, size: 32, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !135, file: !4, line: 269, baseType: !39, size: 32, offset: 288)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !135, file: !4, line: 270, baseType: !39, size: 32, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !135, file: !4, line: 271, baseType: !39, size: 32, offset: 352)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !135, file: !4, line: 272, baseType: !39, size: 32, offset: 384)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !135, file: !4, line: 273, baseType: !39, size: 32, offset: 416)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !135, file: !4, line: 274, baseType: !39, size: 32, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !135, file: !4, line: 275, baseType: !39, size: 32, offset: 480)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !135, file: !4, line: 276, baseType: !39, size: 32, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !135, file: !4, line: 277, baseType: !39, size: 32, offset: 544)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !135, file: !4, line: 278, baseType: !156, size: 32, offset: 576)
!156 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !135, file: !4, line: 279, baseType: !156, size: 32, offset: 608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !135, file: !4, line: 280, baseType: !39, size: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !135, file: !4, line: 283, baseType: !160, size: 64, offset: 672)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !135, file: !4, line: 285, baseType: !39, size: 32, offset: 736)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !135, file: !4, line: 286, baseType: !39, size: 32, offset: 768)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !55, file: !4, line: 327, baseType: !166, size: 1152, offset: 3904)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !55, file: !4, line: 290, size: 1152, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !205, !206}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !166, file: !4, line: 292, baseType: !39, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !166, file: !4, line: 294, baseType: !39, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !166, file: !4, line: 295, baseType: !39, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !166, file: !4, line: 296, baseType: !39, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !166, file: !4, line: 297, baseType: !39, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !166, file: !4, line: 299, baseType: !39, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !166, file: !4, line: 300, baseType: !156, size: 32, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !166, file: !4, line: 301, baseType: !156, size: 32, offset: 224)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !166, file: !4, line: 302, baseType: !156, size: 32, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !166, file: !4, line: 303, baseType: !39, size: 32, offset: 288)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !166, file: !4, line: 304, baseType: !39, size: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !166, file: !4, line: 305, baseType: !156, size: 32, offset: 352)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !166, file: !4, line: 306, baseType: !156, size: 32, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !166, file: !4, line: 307, baseType: !156, size: 32, offset: 416)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !166, file: !4, line: 309, baseType: !39, size: 32, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !166, file: !4, line: 310, baseType: !156, size: 32, offset: 480)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !166, file: !4, line: 311, baseType: !39, size: 32, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !166, file: !4, line: 312, baseType: !39, size: 32, offset: 544)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !166, file: !4, line: 315, baseType: !39, size: 32, offset: 576)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !166, file: !4, line: 316, baseType: !98, size: 64, offset: 640)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !166, file: !4, line: 317, baseType: !39, size: 32, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !166, file: !4, line: 318, baseType: !98, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !166, file: !4, line: 321, baseType: !156, size: 32, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !166, file: !4, line: 322, baseType: !156, size: 32, offset: 864)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !166, file: !4, line: 323, baseType: !156, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !166, file: !4, line: 324, baseType: !194, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !4, line: 174, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 167, size: 256, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !196, file: !4, line: 169, baseType: !39, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !196, file: !4, line: 169, baseType: !39, size: 32, offset: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !196, file: !4, line: 170, baseType: !39, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !196, file: !4, line: 171, baseType: !39, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !196, file: !4, line: 172, baseType: !156, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !196, file: !4, line: 173, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !166, file: !4, line: 325, baseType: !39, size: 32, offset: 1024)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !166, file: !4, line: 326, baseType: !98, size: 64, offset: 1088)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !55, file: !4, line: 330, baseType: !39, size: 32, offset: 5056)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !55, file: !4, line: 331, baseType: !39, size: 32, offset: 5088)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !55, file: !4, line: 332, baseType: !39, size: 32, offset: 5120)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !55, file: !4, line: 334, baseType: !39, size: 32, offset: 5152)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !55, file: !4, line: 335, baseType: !39, size: 32, offset: 5184)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !55, file: !4, line: 336, baseType: !213, size: 32, offset: 5216)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 26, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !5)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !55, file: !4, line: 337, baseType: !213, size: 32, offset: 5248)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !55, file: !4, line: 338, baseType: !213, size: 32, offset: 5280)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !55, file: !4, line: 339, baseType: !213, size: 32, offset: 5312)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !55, file: !4, line: 340, baseType: !39, size: 32, offset: 5344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !55, file: !4, line: 344, baseType: !39, size: 32, offset: 5376)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !55, file: !4, line: 356, baseType: !39, size: 32, offset: 5408)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !55, file: !4, line: 364, baseType: !39, size: 32, offset: 5440)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !55, file: !4, line: 367, baseType: !39, size: 32, offset: 5472)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !55, file: !4, line: 368, baseType: !39, size: 32, offset: 5504)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !55, file: !4, line: 369, baseType: !39, size: 32, offset: 5536)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !55, file: !4, line: 375, baseType: !226, size: 64, offset: 5568)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !119}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !36, file: !35, line: 45, baseType: !39, size: 32, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !36, file: !35, line: 46, baseType: !39, size: 32, offset: 480)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !36, file: !35, line: 47, baseType: !39, size: 32, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !36, file: !35, line: 48, baseType: !39, size: 32, offset: 544)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !36, file: !35, line: 49, baseType: !39, size: 32, offset: 576)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !36, file: !35, line: 50, baseType: !39, size: 32, offset: 608)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !36, file: !35, line: 51, baseType: !39, size: 32, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !36, file: !35, line: 52, baseType: !102, size: 8, offset: 672)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !36, file: !35, line: 53, baseType: !102, size: 8, offset: 680)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !36, file: !35, line: 54, baseType: !102, size: 8, offset: 688)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !36, file: !35, line: 55, baseType: !156, size: 32, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !36, file: !35, line: 56, baseType: !156, size: 32, offset: 736)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !36, file: !35, line: 57, baseType: !39, size: 32, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !36, file: !35, line: 60, baseType: !39, size: 32, offset: 800)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !36, file: !35, line: 61, baseType: !244, size: 96, offset: 832)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 96, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !36, file: !35, line: 62, baseType: !244, size: 96, offset: 928)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !36, file: !35, line: 63, baseType: !244, size: 96, offset: 1024)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !36, file: !35, line: 64, baseType: !39, size: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !36, file: !35, line: 65, baseType: !39, size: 32, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !36, file: !35, line: 66, baseType: !39, size: 32, offset: 1184)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !36, file: !35, line: 67, baseType: !253, size: 192, offset: 1216)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 192, elements: !245)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !36, file: !35, line: 68, baseType: !256, size: 256, offset: 1408)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 4)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !36, file: !35, line: 69, baseType: !256, size: 256, offset: 1664)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !36, file: !35, line: 70, baseType: !16, size: 64, offset: 1920)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !36, file: !35, line: 74, baseType: !256, size: 256, offset: 1984)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !36, file: !35, line: 75, baseType: !256, size: 256, offset: 2240)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !36, file: !35, line: 77, baseType: !264, size: 24576, align: 128, offset: 2560)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 24576, align: 128, elements: !290)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !266, line: 36, baseType: !267, align: 128)
!266 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !266, line: 26, size: 512, elements: !268)
!268 = !{!269, !276, !277, !280, !281, !282}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !267, file: !266, line: 30, baseType: !270, size: 128, align: 128)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !274)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !44, line: 25, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !20, line: 39, baseType: !273)
!273 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !267, file: !266, line: 31, baseType: !270, size: 128, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !267, file: !266, line: 32, baseType: !278, size: 32, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !44, line: 26, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !20, line: 41, baseType: !39)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !267, file: !266, line: 33, baseType: !278, size: 32, offset: 288)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !267, file: !266, line: 34, baseType: !278, size: 32, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !267, file: !266, line: 35, baseType: !283, size: 64, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !266, line: 25, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !254, !39, !254, !39, !288, !39}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!290 = !{!106, !246}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !36, file: !35, line: 78, baseType: !292, size: 1024, offset: 27136)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 1024, elements: !105)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !36, file: !35, line: 79, baseType: !39, size: 32, offset: 28160)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !36, file: !35, line: 80, baseType: !295, size: 64, offset: 28224)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !36, file: !35, line: 83, baseType: !297, size: 64, offset: 28288)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !44, line: 24, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !20, line: 37, baseType: !300)
!300 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !36, file: !35, line: 84, baseType: !254, size: 64, offset: 28352)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !36, file: !35, line: 85, baseType: !303, size: 128, offset: 28416)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 128, elements: !161)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 32, elements: !161)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !36, file: !35, line: 86, baseType: !304, size: 64, offset: 28544)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !36, file: !35, line: 87, baseType: !308, size: 2176, offset: 28608)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 2176, elements: !309)
!309 = !{!162, !310}
!310 = !DISubrange(count: 17)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !36, file: !35, line: 92, baseType: !312, size: 20736, offset: 30784)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 20736, elements: !313)
!313 = !{!314, !314}
!314 = !DISubrange(count: 18)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !36, file: !35, line: 96, baseType: !316, size: 2176, offset: 51520)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 2176, elements: !309)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !36, file: !35, line: 97, baseType: !319, size: 128, offset: 53696)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !161)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !36, file: !35, line: 98, baseType: !160, size: 64, offset: 53824)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !36, file: !35, line: 99, baseType: !322, size: 1024, offset: 53888)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1024, elements: !323)
!323 = !{!162, !106}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !36, file: !35, line: 100, baseType: !305, size: 32, offset: 54912)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !36, file: !35, line: 105, baseType: !326, size: 10368, offset: 54944)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 10368, elements: !313)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !36, file: !35, line: 106, baseType: !326, size: 10368, offset: 65312)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !36, file: !35, line: 107, baseType: !39, size: 32, offset: 75680)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !36, file: !35, line: 108, baseType: !330, size: 576, offset: 75712)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 576, elements: !331)
!331 = !{!314}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !36, file: !35, line: 109, baseType: !333, size: 20736, offset: 76288)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 20736, elements: !313)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !36, file: !35, line: 110, baseType: !317, size: 64, offset: 97024)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !36, file: !35, line: 111, baseType: !317, size: 64, offset: 97088)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !36, file: !35, line: 112, baseType: !337, size: 64, offset: 97152)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !36, file: !35, line: 113, baseType: !337, size: 64, offset: 97216)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !36, file: !35, line: 114, baseType: !337, size: 64, offset: 97280)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !36, file: !35, line: 115, baseType: !39, size: 32, offset: 97344)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !36, file: !35, line: 116, baseType: !16, size: 64, offset: 97408)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !36, file: !35, line: 117, baseType: !16, size: 64, offset: 97472)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !36, file: !35, line: 118, baseType: !16, size: 64, offset: 97536)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !36, file: !35, line: 119, baseType: !39, size: 32, offset: 97600)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !36, file: !35, line: 120, baseType: !346, size: 576, offset: 97632)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 576, elements: !331)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !36, file: !35, line: 121, baseType: !213, size: 32, offset: 98208)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !36, file: !35, line: 122, baseType: !349, size: 64, offset: 98240)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !18, line: 27, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !20, line: 45, baseType: !351)
!351 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !36, file: !35, line: 125, baseType: !353, size: 256, offset: 98304)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !4, line: 503, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 496, size: 256, elements: !355)
!355 = !{!356, !358, !359, !360}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !354, file: !4, line: 498, baseType: !357, size: 64)
!357 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !354, file: !4, line: 499, baseType: !357, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !354, file: !4, line: 500, baseType: !357, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !354, file: !4, line: 502, baseType: !357, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !36, file: !35, line: 128, baseType: !362, size: 2008, offset: 98560)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2008, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 251)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !36, file: !35, line: 129, baseType: !366, size: 8032, offset: 100576)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8032, elements: !363)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !36, file: !35, line: 130, baseType: !368, size: 16064, offset: 108608)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 16064, elements: !363)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !36, file: !35, line: 131, baseType: !39, size: 32, offset: 124672)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !36, file: !35, line: 132, baseType: !39, size: 32, offset: 124704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !36, file: !35, line: 135, baseType: !39, size: 32, offset: 124736)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !36, file: !35, line: 136, baseType: !39, size: 32, offset: 124768)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !36, file: !35, line: 137, baseType: !39, size: 32, offset: 124800)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !36, file: !35, line: 138, baseType: !39, size: 32, offset: 124832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !36, file: !35, line: 139, baseType: !39, size: 32, offset: 124864)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !36, file: !35, line: 142, baseType: !156, size: 32, offset: 124896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !36, file: !35, line: 143, baseType: !39, size: 32, offset: 124928)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !36, file: !35, line: 144, baseType: !39, size: 32, offset: 124960)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !36, file: !35, line: 145, baseType: !39, size: 32, offset: 124992)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !4, line: 46, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !383, line: 381, size: 266752, elements: !384)
!383 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!384 = !{!385, !386, !390, !391, !392, !393, !394, !395, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !529, !531, !559, !561, !562, !563, !567, !571, !572, !573, !577, !581, !582, !583, !587, !590, !591, !642, !659, !684, !685, !686, !687, !691, !692, !693, !694, !695, !696, !697, !712, !906, !910, !971, !974, !976, !978, !979, !982, !987, !996, !997, !1005, !1007, !1012, !1088, !1174, !1218, !1240, !1289, !1318}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !382, file: !383, line: 384, baseType: !54, size: 5632)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !382, file: !383, line: 386, baseType: !387, size: 8256, offset: 5632)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 8256, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 129)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !382, file: !383, line: 387, baseType: !39, size: 32, offset: 13888)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !382, file: !383, line: 388, baseType: !39, size: 32, offset: 13920)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !382, file: !383, line: 389, baseType: !39, size: 32, offset: 13952)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !382, file: !383, line: 390, baseType: !39, size: 32, offset: 13984)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !382, file: !383, line: 391, baseType: !39, size: 32, offset: 14016)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !382, file: !383, line: 402, baseType: !396, size: 576, offset: 14080)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 394, size: 576, elements: !397)
!397 = !{!398, !399, !400, !409, !410, !411}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !396, file: !383, line: 396, baseType: !39, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !396, file: !383, line: 397, baseType: !39, size: 32, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !396, file: !383, line: 398, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !4, line: 604, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 593, size: 192, elements: !404)
!404 = !{!405, !406, !407, !408}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !403, file: !4, line: 595, baseType: !39, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !403, file: !4, line: 596, baseType: !39, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !403, file: !4, line: 599, baseType: !39, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !403, file: !4, line: 603, baseType: !254, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !396, file: !383, line: 399, baseType: !39, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !396, file: !383, line: 400, baseType: !254, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !396, file: !383, line: 401, baseType: !412, size: 320, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !413, line: 56, baseType: !414)
!413 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !413, line: 47, size: 320, elements: !415)
!415 = !{!416, !417, !418, !419, !422, !423}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !414, file: !413, line: 49, baseType: !254, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !414, file: !413, line: 50, baseType: !254, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !414, file: !413, line: 51, baseType: !254, size: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !414, file: !413, line: 53, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !421, line: 87, baseType: !46)
!421 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !414, file: !413, line: 54, baseType: !39, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !414, file: !413, line: 55, baseType: !39, size: 32, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !382, file: !383, line: 404, baseType: !254, size: 64, offset: 14656)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !382, file: !383, line: 405, baseType: !39, size: 32, offset: 14720)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !382, file: !383, line: 410, baseType: !39, size: 32, offset: 14752)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !382, file: !383, line: 411, baseType: !39, size: 32, offset: 14784)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !382, file: !383, line: 413, baseType: !39, size: 32, offset: 14816)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !382, file: !383, line: 415, baseType: !39, size: 32, offset: 14848)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !382, file: !383, line: 416, baseType: !39, size: 32, offset: 14880)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !382, file: !383, line: 418, baseType: !39, size: 32, offset: 14912)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !382, file: !383, line: 419, baseType: !39, size: 32, offset: 14944)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !382, file: !383, line: 420, baseType: !39, size: 32, offset: 14976)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !382, file: !383, line: 421, baseType: !39, size: 32, offset: 15008)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !382, file: !383, line: 422, baseType: !39, size: 32, offset: 15040)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !382, file: !383, line: 424, baseType: !39, size: 32, offset: 15072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !382, file: !383, line: 425, baseType: !39, size: 32, offset: 15104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !382, file: !383, line: 427, baseType: !39, size: 32, offset: 15136)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !382, file: !383, line: 430, baseType: !440, size: 10400, offset: 15168)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 10400, elements: !527)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !442, line: 154, baseType: !443)
!442 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 52, size: 10400, elements: !444)
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !463, !464, !465, !466, !467, !468, !469, !470, !477, !478, !526}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !443, file: !442, line: 54, baseType: !39, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !443, file: !442, line: 56, baseType: !39, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !443, file: !442, line: 57, baseType: !39, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !443, file: !442, line: 59, baseType: !39, size: 32, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !443, file: !442, line: 60, baseType: !39, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !443, file: !442, line: 61, baseType: !39, size: 32, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !443, file: !442, line: 63, baseType: !39, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !443, file: !442, line: 65, baseType: !39, size: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !443, file: !442, line: 67, baseType: !39, size: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !443, file: !442, line: 69, baseType: !39, size: 32, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !443, file: !442, line: 70, baseType: !39, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !443, file: !442, line: 71, baseType: !39, size: 32, offset: 352)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !443, file: !442, line: 72, baseType: !39, size: 32, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !443, file: !442, line: 73, baseType: !459, size: 8192, offset: 416)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8192, elements: !460)
!460 = !{!461}
!461 = !DISubrange(count: 256)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !443, file: !442, line: 75, baseType: !39, size: 32, offset: 8608)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !443, file: !442, line: 76, baseType: !39, size: 32, offset: 8640)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !443, file: !442, line: 77, baseType: !39, size: 32, offset: 8672)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !443, file: !442, line: 78, baseType: !39, size: 32, offset: 8704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !443, file: !442, line: 79, baseType: !39, size: 32, offset: 8736)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !443, file: !442, line: 80, baseType: !39, size: 32, offset: 8768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !443, file: !442, line: 81, baseType: !39, size: 32, offset: 8800)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !443, file: !442, line: 83, baseType: !39, size: 32, offset: 8832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !443, file: !442, line: 90, baseType: !471, size: 128, offset: 8864)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !442, line: 84, size: 128, elements: !472)
!472 = !{!473, !474, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !471, file: !442, line: 86, baseType: !39, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !471, file: !442, line: 87, baseType: !39, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !471, file: !442, line: 88, baseType: !39, size: 32, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !471, file: !442, line: 89, baseType: !39, size: 32, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !443, file: !442, line: 92, baseType: !39, size: 32, offset: 8992)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !443, file: !442, line: 150, baseType: !479, size: 1344, offset: 9024)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !442, line: 93, size: 1344, elements: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !517, !518, !519, !520, !521, !522, !523, !524, !525}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !479, file: !442, line: 95, baseType: !39, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !479, file: !442, line: 96, baseType: !39, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !479, file: !442, line: 97, baseType: !39, size: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !479, file: !442, line: 99, baseType: !39, size: 32, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !479, file: !442, line: 100, baseType: !39, size: 32, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !479, file: !442, line: 102, baseType: !39, size: 32, offset: 160)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !479, file: !442, line: 103, baseType: !39, size: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !479, file: !442, line: 104, baseType: !39, size: 32, offset: 224)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !479, file: !442, line: 105, baseType: !39, size: 32, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !479, file: !442, line: 106, baseType: !39, size: 32, offset: 288)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !479, file: !442, line: 107, baseType: !39, size: 32, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !479, file: !442, line: 108, baseType: !39, size: 32, offset: 352)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !479, file: !442, line: 110, baseType: !39, size: 32, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !479, file: !442, line: 111, baseType: !39, size: 32, offset: 416)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !479, file: !442, line: 112, baseType: !39, size: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !479, file: !442, line: 114, baseType: !39, size: 32, offset: 480)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !479, file: !442, line: 115, baseType: !213, size: 32, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !479, file: !442, line: 116, baseType: !213, size: 32, offset: 544)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !479, file: !442, line: 117, baseType: !39, size: 32, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !479, file: !442, line: 119, baseType: !39, size: 32, offset: 608)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !479, file: !442, line: 120, baseType: !39, size: 32, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !479, file: !442, line: 137, baseType: !503, size: 384, offset: 672)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !442, line: 122, size: 384, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !503, file: !442, line: 124, baseType: !39, size: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !503, file: !442, line: 125, baseType: !39, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !503, file: !442, line: 126, baseType: !39, size: 32, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !503, file: !442, line: 127, baseType: !39, size: 32, offset: 96)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !503, file: !442, line: 128, baseType: !39, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !503, file: !442, line: 129, baseType: !39, size: 32, offset: 160)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !503, file: !442, line: 130, baseType: !39, size: 32, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !503, file: !442, line: 131, baseType: !39, size: 32, offset: 224)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !503, file: !442, line: 133, baseType: !39, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !503, file: !442, line: 134, baseType: !39, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !503, file: !442, line: 135, baseType: !39, size: 32, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !503, file: !442, line: 136, baseType: !39, size: 32, offset: 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !479, file: !442, line: 139, baseType: !39, size: 32, offset: 1056)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !479, file: !442, line: 140, baseType: !39, size: 32, offset: 1088)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !479, file: !442, line: 141, baseType: !39, size: 32, offset: 1120)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !479, file: !442, line: 142, baseType: !39, size: 32, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !479, file: !442, line: 143, baseType: !39, size: 32, offset: 1184)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !479, file: !442, line: 144, baseType: !39, size: 32, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !479, file: !442, line: 145, baseType: !39, size: 32, offset: 1248)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !479, file: !442, line: 146, baseType: !39, size: 32, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !479, file: !442, line: 147, baseType: !39, size: 32, offset: 1312)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !443, file: !442, line: 152, baseType: !39, size: 32, offset: 10368)
!527 = !{!528}
!528 = !DISubrange(count: 1)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !382, file: !383, line: 431, baseType: !530, size: 64, offset: 25600)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !382, file: !383, line: 432, baseType: !532, size: 960, offset: 25664)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 960, elements: !527)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !442, line: 186, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 156, size: 960, elements: !535)
!535 = !{!536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !534, file: !442, line: 158, baseType: !39, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !534, file: !442, line: 159, baseType: !39, size: 32, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !534, file: !442, line: 161, baseType: !39, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !534, file: !442, line: 163, baseType: !39, size: 32, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !534, file: !442, line: 164, baseType: !39, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !534, file: !442, line: 166, baseType: !39, size: 32, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !534, file: !442, line: 167, baseType: !39, size: 32, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !534, file: !442, line: 169, baseType: !39, size: 32, offset: 224)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !534, file: !442, line: 170, baseType: !39, size: 32, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !534, file: !442, line: 172, baseType: !39, size: 32, offset: 288)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !534, file: !442, line: 173, baseType: !39, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !534, file: !442, line: 175, baseType: !39, size: 32, offset: 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !534, file: !442, line: 177, baseType: !39, size: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !534, file: !442, line: 178, baseType: !39, size: 32, offset: 416)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !534, file: !442, line: 179, baseType: !39, size: 32, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !534, file: !442, line: 181, baseType: !39, size: 32, offset: 480)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !534, file: !442, line: 183, baseType: !39, size: 32, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !534, file: !442, line: 184, baseType: !554, size: 384, offset: 576)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 384, elements: !557)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!557 = !{!558}
!558 = !DISubrange(count: 6)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !382, file: !383, line: 433, baseType: !560, size: 64, offset: 26624)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !382, file: !383, line: 434, baseType: !39, size: 32, offset: 26688)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !382, file: !383, line: 437, baseType: !39, size: 32, offset: 26720)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !382, file: !383, line: 440, baseType: !564, size: 256, offset: 26752)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 256, elements: !257)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !105)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !382, file: !383, line: 441, baseType: !568, size: 128, offset: 27008)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 128, elements: !161)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !112)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !382, file: !383, line: 443, baseType: !564, size: 256, offset: 27136)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !382, file: !383, line: 444, baseType: !568, size: 128, offset: 27392)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !382, file: !383, line: 446, baseType: !574, size: 256, offset: 27520)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 256, elements: !257)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !105)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !382, file: !383, line: 447, baseType: !578, size: 128, offset: 27776)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 128, elements: !161)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1024, elements: !112)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !382, file: !383, line: 448, baseType: !574, size: 256, offset: 27904)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !382, file: !383, line: 449, baseType: !578, size: 128, offset: 28160)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !382, file: !383, line: 454, baseType: !584, size: 5888, offset: 28288)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 5888, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 92)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !382, file: !383, line: 455, baseType: !588, size: 23552, offset: 34176)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 23552, elements: !589)
!589 = !{!586, !258}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !382, file: !383, line: 457, baseType: !555, size: 64, offset: 57728)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !382, file: !383, line: 460, baseType: !592, size: 53376, offset: 57856)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !383, line: 364, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !383, line: 302, size: 53376, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !622, !626, !627, !628, !634, !635, !636, !637, !638, !639, !640, !641}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !593, file: !383, line: 304, baseType: !530, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !593, file: !383, line: 305, baseType: !560, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !593, file: !383, line: 307, baseType: !39, size: 32, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !593, file: !383, line: 308, baseType: !39, size: 32, offset: 160)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !593, file: !383, line: 309, baseType: !39, size: 32, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !593, file: !383, line: 311, baseType: !39, size: 32, offset: 224)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !593, file: !383, line: 313, baseType: !39, size: 32, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !593, file: !383, line: 315, baseType: !39, size: 32, offset: 288)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !593, file: !383, line: 316, baseType: !39, size: 32, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !593, file: !383, line: 317, baseType: !39, size: 32, offset: 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !593, file: !383, line: 319, baseType: !39, size: 32, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !593, file: !383, line: 321, baseType: !39, size: 32, offset: 416)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !593, file: !383, line: 322, baseType: !39, size: 32, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !593, file: !383, line: 324, baseType: !160, size: 64, offset: 480)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !593, file: !383, line: 325, baseType: !39, size: 32, offset: 544)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !593, file: !383, line: 327, baseType: !39, size: 32, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !593, file: !383, line: 329, baseType: !39, size: 32, offset: 608)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !593, file: !383, line: 330, baseType: !39, size: 32, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !593, file: !383, line: 331, baseType: !39, size: 32, offset: 672)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !593, file: !383, line: 333, baseType: !39, size: 32, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !593, file: !383, line: 334, baseType: !39, size: 32, offset: 736)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !593, file: !383, line: 339, baseType: !617, size: 2048, offset: 768)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 2048, elements: !323)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !383, line: 335, size: 64, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !618, file: !383, line: 337, baseType: !39, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !618, file: !383, line: 338, baseType: !39, size: 32, offset: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !593, file: !383, line: 342, baseType: !623, size: 49152, align: 128, offset: 2816)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 49152, align: 128, elements: !624)
!624 = !{!625, !246}
!625 = !DISubrange(count: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !593, file: !383, line: 344, baseType: !39, size: 32, offset: 51968)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !593, file: !383, line: 345, baseType: !39, size: 32, offset: 52000)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !593, file: !383, line: 350, baseType: !629, size: 1024, offset: 52032)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, size: 1024, elements: !105)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !593, file: !383, line: 346, size: 64, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !630, file: !383, line: 348, baseType: !39, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !630, file: !383, line: 349, baseType: !39, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !593, file: !383, line: 352, baseType: !39, size: 32, offset: 53056)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !593, file: !383, line: 354, baseType: !39, size: 32, offset: 53088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !593, file: !383, line: 355, baseType: !39, size: 32, offset: 53120)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !593, file: !383, line: 356, baseType: !39, size: 32, offset: 53152)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !593, file: !383, line: 357, baseType: !39, size: 32, offset: 53184)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !593, file: !383, line: 360, baseType: !39, size: 32, offset: 53216)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !593, file: !383, line: 361, baseType: !39, size: 32, offset: 53248)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !593, file: !383, line: 362, baseType: !39, size: 32, offset: 53280)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !382, file: !383, line: 463, baseType: !643, size: 4096, offset: 111232)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !644, line: 46, baseType: !645)
!644 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !644, line: 27, size: 4096, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !645, file: !644, line: 30, baseType: !39, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !645, file: !644, line: 31, baseType: !39, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !645, file: !644, line: 34, baseType: !39, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !645, file: !644, line: 35, baseType: !39, size: 32, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !645, file: !644, line: 37, baseType: !254, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !645, file: !644, line: 38, baseType: !254, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !645, file: !644, line: 39, baseType: !254, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !645, file: !644, line: 42, baseType: !39, size: 32, align: 128, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !645, file: !644, line: 45, baseType: !656, size: 3680, offset: 416)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3680, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 460)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !382, file: !383, line: 494, baseType: !660, size: 2112, offset: 115328)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 465, size: 2112, elements: !661)
!661 = !{!662, !664, !666, !667, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !680, !681, !682, !683}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !660, file: !383, line: 468, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !660, file: !383, line: 470, baseType: !665, size: 128, offset: 64)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 128, elements: !161)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !660, file: !383, line: 473, baseType: !663, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !660, file: !383, line: 476, baseType: !668, size: 1152, offset: 256)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1152, elements: !331)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !660, file: !383, line: 478, baseType: !39, size: 32, offset: 1408)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !660, file: !383, line: 480, baseType: !39, size: 32, offset: 1440)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !660, file: !383, line: 482, baseType: !39, size: 32, offset: 1472)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !660, file: !383, line: 483, baseType: !39, size: 32, offset: 1504)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !660, file: !383, line: 484, baseType: !39, size: 32, offset: 1536)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !660, file: !383, line: 485, baseType: !39, size: 32, offset: 1568)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !660, file: !383, line: 486, baseType: !39, size: 32, offset: 1600)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !660, file: !383, line: 487, baseType: !43, size: 64, offset: 1664)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !660, file: !383, line: 488, baseType: !43, size: 64, offset: 1728)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !660, file: !383, line: 489, baseType: !679, size: 128, offset: 1792)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !161)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !660, file: !383, line: 490, baseType: !43, size: 64, offset: 1920)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !660, file: !383, line: 491, baseType: !43, size: 64, offset: 1984)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !660, file: !383, line: 492, baseType: !39, size: 32, offset: 2048)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !660, file: !383, line: 493, baseType: !39, size: 32, offset: 2080)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !382, file: !383, line: 497, baseType: !33, size: 64, offset: 117440)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !382, file: !383, line: 500, baseType: !33, size: 64, offset: 117504)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !382, file: !383, line: 503, baseType: !39, size: 32, offset: 117568)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !382, file: !383, line: 504, baseType: !688, size: 1216, offset: 117632)
!688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1216, elements: !689)
!689 = !{!690}
!690 = !DISubrange(count: 19)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !382, file: !383, line: 505, baseType: !39, size: 32, offset: 118848)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !382, file: !383, line: 506, baseType: !688, size: 1216, offset: 118912)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !382, file: !383, line: 507, baseType: !160, size: 64, offset: 120128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !382, file: !383, line: 510, baseType: !39, size: 32, offset: 120192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !382, file: !383, line: 511, baseType: !39, size: 32, offset: 120224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !382, file: !383, line: 512, baseType: !43, size: 64, offset: 120256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !382, file: !383, line: 522, baseType: !698, size: 10624, offset: 120320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 515, size: 10624, elements: !699)
!699 = !{!700, !702, !705, !708}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !698, file: !383, line: 517, baseType: !701, size: 256, align: 128)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !105)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !698, file: !383, line: 518, baseType: !703, size: 128, align: 128, offset: 256)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 128, elements: !704)
!704 = !{!162, !258}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !698, file: !383, line: 520, baseType: !706, size: 4096, align: 128, offset: 384)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, elements: !707)
!707 = !{!258, !113}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !698, file: !383, line: 521, baseType: !709, size: 6144, align: 128, offset: 4480)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 6144, elements: !710)
!710 = !{!711, !106}
!711 = !DISubrange(count: 24)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !382, file: !383, line: 732, baseType: !713, size: 82688, offset: 130944)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 525, size: 82688, elements: !714)
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !742, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !760, !763, !767, !768, !769, !774, !775, !778, !779, !780, !781, !782, !783, !784, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !844, !875, !876, !877, !878, !879, !880, !881, !882, !883, !886, !887, !888, !891, !894, !896, !899, !901, !902}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !713, file: !383, line: 527, baseType: !39, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !713, file: !383, line: 530, baseType: !39, size: 32, offset: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !713, file: !383, line: 531, baseType: !39, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !713, file: !383, line: 532, baseType: !39, size: 32, offset: 96)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !713, file: !383, line: 535, baseType: !39, size: 32, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !713, file: !383, line: 536, baseType: !39, size: 32, offset: 160)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !713, file: !383, line: 537, baseType: !39, size: 32, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !713, file: !383, line: 538, baseType: !39, size: 32, offset: 224)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !713, file: !383, line: 539, baseType: !39, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !713, file: !383, line: 542, baseType: !39, size: 32, offset: 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !713, file: !383, line: 543, baseType: !39, size: 32, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !713, file: !383, line: 544, baseType: !39, size: 32, offset: 352)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !713, file: !383, line: 545, baseType: !39, size: 32, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !713, file: !383, line: 546, baseType: !39, size: 32, offset: 416)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !713, file: !383, line: 547, baseType: !39, size: 32, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !713, file: !383, line: 548, baseType: !39, size: 32, offset: 480)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !713, file: !383, line: 549, baseType: !39, size: 32, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !713, file: !383, line: 551, baseType: !39, size: 32, offset: 544)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !713, file: !383, line: 554, baseType: !160, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !713, file: !383, line: 555, baseType: !160, size: 64, offset: 640)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !713, file: !383, line: 558, baseType: !160, size: 64, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !713, file: !383, line: 559, baseType: !160, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !713, file: !383, line: 561, baseType: !160, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !713, file: !383, line: 562, baseType: !160, size: 64, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !713, file: !383, line: 565, baseType: !5, size: 32, offset: 960)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !713, file: !383, line: 566, baseType: !741, size: 128, offset: 992)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !257)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !713, file: !383, line: 567, baseType: !743, size: 512, offset: 1120)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !105)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !713, file: !383, line: 568, baseType: !5, size: 32, offset: 1632)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !713, file: !383, line: 569, baseType: !5, size: 32, offset: 1664)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !713, file: !383, line: 570, baseType: !39, size: 32, offset: 1696)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !713, file: !383, line: 571, baseType: !39, size: 32, offset: 1728)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !713, file: !383, line: 572, baseType: !39, size: 32, offset: 1760)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !713, file: !383, line: 573, baseType: !39, size: 32, offset: 1792)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !713, file: !383, line: 574, baseType: !39, size: 32, offset: 1824)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !713, file: !383, line: 575, baseType: !39, size: 32, offset: 1856)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !713, file: !383, line: 576, baseType: !39, size: 32, offset: 1888)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !713, file: !383, line: 577, baseType: !39, size: 32, offset: 1920)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !713, file: !383, line: 578, baseType: !39, size: 32, offset: 1952)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !383, line: 585, baseType: !297, size: 64, offset: 1984)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !713, file: !383, line: 586, baseType: !254, size: 64, offset: 2048)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !713, file: !383, line: 587, baseType: !297, size: 64, offset: 2112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !713, file: !383, line: 588, baseType: !759, size: 64, offset: 2176)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !713, file: !383, line: 589, baseType: !761, size: 64, offset: 2240)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 64, elements: !274)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !713, file: !383, line: 591, baseType: !764, size: 64, offset: 2304)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 192, elements: !766)
!766 = !{!711}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !713, file: !383, line: 592, baseType: !297, size: 64, offset: 2368)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !713, file: !383, line: 593, baseType: !303, size: 128, offset: 2432)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !713, file: !383, line: 594, baseType: !770, size: 128, offset: 2560)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 128, elements: !161)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !773)
!773 = !{!275, !162}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !713, file: !383, line: 595, baseType: !319, size: 128, offset: 2688)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !713, file: !383, line: 596, baseType: !776, size: 4096, offset: 2816)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 4096, elements: !777)
!777 = !{!162, !625}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !713, file: !383, line: 597, baseType: !297, size: 64, offset: 6912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !713, file: !383, line: 598, baseType: !297, size: 64, offset: 6976)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !713, file: !383, line: 599, baseType: !16, size: 64, offset: 7040)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !713, file: !383, line: 603, baseType: !292, size: 1024, offset: 7104)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !713, file: !383, line: 606, baseType: !39, size: 32, offset: 8128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !713, file: !383, line: 607, baseType: !39, size: 32, offset: 8160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !713, file: !383, line: 608, baseType: !785, size: 32, align: 32, offset: 8192)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 32, elements: !257)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !713, file: !383, line: 609, baseType: !39, size: 32, offset: 8224)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !713, file: !383, line: 611, baseType: !39, size: 32, offset: 8256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !713, file: !383, line: 612, baseType: !39, size: 32, offset: 8288)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !713, file: !383, line: 614, baseType: !39, size: 32, offset: 8320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !713, file: !383, line: 615, baseType: !39, size: 32, offset: 8352)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !713, file: !383, line: 621, baseType: !39, size: 32, offset: 8384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !713, file: !383, line: 624, baseType: !39, size: 32, offset: 8416)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !713, file: !383, line: 626, baseType: !39, size: 32, offset: 8448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !713, file: !383, line: 627, baseType: !39, size: 32, offset: 8480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !713, file: !383, line: 671, baseType: !796, size: 60672, offset: 8576)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !383, line: 629, size: 60672, elements: !797)
!797 = !{!798, !802, !806, !808, !809, !812, !816, !818, !819, !820, !821, !822, !825, !829, !832, !833, !834, !835, !836, !839, !841, !843}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !796, file: !383, line: 634, baseType: !799, size: 3072, align: 128)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3072, elements: !800)
!800 = !{!801}
!801 = !DISubrange(count: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !796, file: !383, line: 635, baseType: !803, size: 6912, align: 128, offset: 3072)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 6912, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 864)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !796, file: !383, line: 638, baseType: !807, size: 2048, align: 128, offset: 9984)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 2048, elements: !460)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !796, file: !383, line: 639, baseType: !807, size: 2048, align: 128, offset: 12032)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !796, file: !383, line: 640, baseType: !810, size: 3072, align: 128, offset: 14080)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 3072, elements: !811)
!811 = !{!246, !113}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !796, file: !383, line: 641, baseType: !813, size: 3840, align: 128, offset: 17152)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 3840, elements: !814)
!814 = !{!815, !106}
!815 = !DISubrange(count: 15)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !796, file: !383, line: 642, baseType: !817, size: 128, offset: 20992)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !257)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !796, file: !383, line: 643, baseType: !817, size: 128, offset: 21120)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !796, file: !383, line: 644, baseType: !39, size: 32, offset: 21248)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !796, file: !383, line: 645, baseType: !39, size: 32, offset: 21280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !796, file: !383, line: 648, baseType: !706, size: 4096, align: 128, offset: 21376)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !796, file: !383, line: 649, baseType: !823, size: 4096, align: 128, offset: 25472)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, elements: !824)
!824 = !{!106, !106}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !796, file: !383, line: 652, baseType: !826, size: 576, align: 128, offset: 29568)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 576, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 9)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !796, file: !383, line: 653, baseType: !830, size: 1024, align: 128, offset: 30208)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !831)
!831 = !{!625}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !796, file: !383, line: 656, baseType: !253, size: 192, offset: 31232)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !796, file: !383, line: 658, baseType: !253, size: 192, offset: 31424)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !796, file: !383, line: 661, baseType: !253, size: 192, offset: 31616)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !796, file: !383, line: 664, baseType: !160, size: 64, offset: 31808)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !796, file: !383, line: 665, baseType: !837, size: 24576, offset: 31872)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 24576, elements: !838)
!838 = !{!162, !625, !558}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !796, file: !383, line: 666, baseType: !840, size: 2048, offset: 56448)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 2048, elements: !831)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !796, file: !383, line: 667, baseType: !842, size: 2048, offset: 58496)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 2048, elements: !323)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !796, file: !383, line: 670, baseType: !244, size: 96, offset: 60544)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !713, file: !383, line: 704, baseType: !845, size: 6144, offset: 69248)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !713, file: !383, line: 674, size: 6144, elements: !846)
!846 = !{!847, !851, !855, !858, !861, !863, !864, !867, !869, !870, !871, !872, !873, !874}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !845, file: !383, line: 677, baseType: !848, size: 320, align: 64)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 320, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 40)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !845, file: !383, line: 680, baseType: !852, size: 384, align: 128, offset: 384)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 384, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 48)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !845, file: !383, line: 683, baseType: !856, size: 640, align: 32, offset: 768)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 640, elements: !857)
!857 = !{!162, !850}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !845, file: !383, line: 686, baseType: !859, size: 2560, align: 128, offset: 1408)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2560, elements: !860)
!860 = !{!162, !850, !162}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !845, file: !383, line: 687, baseType: !862, size: 1280, align: 64, offset: 3968)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 1280, elements: !860)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !845, file: !383, line: 690, baseType: !848, size: 320, align: 32, offset: 5248)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !845, file: !383, line: 692, baseType: !865, size: 256, align: 32, offset: 5568)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !866)
!866 = !{!162, !258, !162}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !845, file: !383, line: 693, baseType: !868, size: 64, align: 32, offset: 5824)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 64, elements: !704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !845, file: !383, line: 694, baseType: !39, size: 32, offset: 5888)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !845, file: !383, line: 695, baseType: !305, size: 32, align: 32, offset: 5920)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !845, file: !383, line: 698, baseType: !39, size: 32, offset: 5952)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !845, file: !383, line: 699, baseType: !39, size: 32, offset: 5984)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !845, file: !383, line: 702, baseType: !39, size: 32, offset: 6016)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !845, file: !383, line: 703, baseType: !39, size: 32, offset: 6048)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !713, file: !383, line: 707, baseType: !39, size: 32, offset: 75392)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !713, file: !383, line: 708, baseType: !39, size: 32, offset: 75424)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !713, file: !383, line: 709, baseType: !39, size: 32, offset: 75456)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !713, file: !383, line: 710, baseType: !39, size: 32, offset: 75488)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !713, file: !383, line: 711, baseType: !39, size: 32, offset: 75520)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !713, file: !383, line: 712, baseType: !39, size: 32, offset: 75552)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !713, file: !383, line: 713, baseType: !39, size: 32, offset: 75584)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !713, file: !383, line: 714, baseType: !39, size: 32, offset: 75616)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !713, file: !383, line: 717, baseType: !884, size: 128, offset: 75648)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !885)
!885 = !{!162, !162}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !713, file: !383, line: 718, baseType: !39, size: 32, offset: 75776)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !713, file: !383, line: 719, baseType: !39, size: 32, offset: 75808)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !713, file: !383, line: 722, baseType: !889, size: 4096, offset: 75840)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, elements: !890)
!890 = !{!162, !625, !258}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !713, file: !383, line: 723, baseType: !892, size: 64, offset: 79936)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 64, elements: !257)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !713, file: !383, line: 724, baseType: !895, size: 2048, offset: 80000)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 2048, elements: !890)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !713, file: !383, line: 725, baseType: !897, size: 64, offset: 82048)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 32, elements: !257)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !713, file: !383, line: 728, baseType: !900, size: 144, offset: 82112)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 144, elements: !331)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !713, file: !383, line: 729, baseType: !39, size: 32, offset: 82272)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !713, file: !383, line: 730, baseType: !903, size: 272, offset: 82304)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 272, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 34)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !382, file: !383, line: 735, baseType: !907, size: 64, offset: 213632)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !383, line: 379, baseType: !909)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !383, line: 379, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !382, file: !383, line: 793, baseType: !911, size: 29504, offset: 213696)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !383, line: 738, size: 29504, elements: !912)
!912 = !{!913, !940, !944, !946, !948, !949, !950, !951, !952, !953, !954, !955, !958, !960, !961, !964, !966, !968, !969, !970}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !911, file: !383, line: 764, baseType: !914, size: 5632)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !911, file: !383, line: 741, size: 5632, elements: !915)
!915 = !{!916, !917, !918, !919, !921, !922, !923, !924, !925, !927, !930, !932, !936, !937, !939}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !914, file: !383, line: 744, baseType: !39, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !914, file: !383, line: 746, baseType: !39, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !914, file: !383, line: 748, baseType: !39, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !914, file: !383, line: 750, baseType: !920, size: 608, offset: 96)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 608, elements: !689)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !914, file: !383, line: 751, baseType: !39, size: 32, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !914, file: !383, line: 752, baseType: !39, size: 32, offset: 736)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !914, file: !383, line: 753, baseType: !39, size: 32, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !914, file: !383, line: 754, baseType: !160, size: 64, offset: 800)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !914, file: !383, line: 755, baseType: !926, size: 2048, offset: 864)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 2048, elements: !777)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !914, file: !383, line: 756, baseType: !928, size: 544, offset: 2912)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 544, elements: !929)
!929 = !{!310}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !914, file: !383, line: 757, baseType: !931, size: 192, offset: 3456)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 192, elements: !557)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !914, file: !383, line: 758, baseType: !933, size: 1664, offset: 3648)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1664, elements: !934)
!934 = !{!258, !935}
!935 = !DISubrange(count: 13)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !914, file: !383, line: 760, baseType: !160, size: 64, offset: 5312)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !914, file: !383, line: 762, baseType: !938, size: 192, offset: 5376)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 192, elements: !245)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !914, file: !383, line: 763, baseType: !357, size: 64, offset: 5568)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !911, file: !383, line: 769, baseType: !941, size: 160, offset: 5632)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 5)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !911, file: !383, line: 770, baseType: !945, size: 320, offset: 5824)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 320, elements: !942)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !911, file: !383, line: 771, baseType: !947, size: 320, offset: 6144)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 320, elements: !942)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !911, file: !383, line: 772, baseType: !928, size: 544, offset: 6464)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !911, file: !383, line: 774, baseType: !945, size: 320, offset: 7040)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !911, file: !383, line: 775, baseType: !947, size: 320, offset: 7360)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !911, file: !383, line: 776, baseType: !947, size: 320, offset: 7680)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !911, file: !383, line: 777, baseType: !947, size: 320, offset: 8000)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !911, file: !383, line: 778, baseType: !947, size: 320, offset: 8320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !911, file: !383, line: 779, baseType: !947, size: 320, offset: 8640)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !911, file: !383, line: 781, baseType: !956, size: 6080, offset: 8960)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 6080, elements: !957)
!957 = !{!943, !690}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !911, file: !383, line: 782, baseType: !959, size: 2176, offset: 15040)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2176, elements: !309)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !911, file: !383, line: 783, baseType: !679, size: 128, offset: 17216)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !911, file: !383, line: 784, baseType: !962, size: 8192, offset: 17344)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8192, elements: !963)
!963 = !{!162, !162, !625}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !911, file: !383, line: 785, baseType: !965, size: 384, offset: 25536)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 384, elements: !557)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !911, file: !383, line: 786, baseType: !967, size: 3328, offset: 25920)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 3328, elements: !934)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !911, file: !383, line: 788, baseType: !160, size: 64, offset: 29248)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !911, file: !383, line: 789, baseType: !160, size: 64, offset: 29312)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !911, file: !383, line: 791, baseType: !244, size: 96, offset: 29376)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !382, file: !383, line: 795, baseType: !972, size: 4096, align: 128, offset: 243200)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4096, elements: !973)
!973 = !{!162, !113}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !382, file: !383, line: 796, baseType: !975, size: 2048, align: 128, offset: 247296)
!975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !973)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !382, file: !383, line: 797, baseType: !977, size: 64, offset: 249344)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 64, elements: !161)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !382, file: !383, line: 800, baseType: !119, size: 64, offset: 249408)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !382, file: !383, line: 801, baseType: !980, size: 384, offset: 249472)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 384, elements: !981)
!981 = !{!162, !246}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !382, file: !383, line: 802, baseType: !983, size: 128, offset: 249856)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 128, elements: !161)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !986)
!986 = !{!162, !258, !258}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !382, file: !383, line: 805, baseType: !988, size: 448, offset: 249984)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 448, elements: !994)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !990, line: 27, baseType: !991)
!990 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !254}
!994 = !{!995}
!995 = !DISubrange(count: 7)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !382, file: !383, line: 806, baseType: !988, size: 448, offset: 250432)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !382, file: !383, line: 807, baseType: !998, size: 768, offset: 250880)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !999, size: 768, elements: !1003)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !990, line: 28, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{null, !254, !254}
!1003 = !{!1004}
!1004 = !DISubrange(count: 12)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !382, file: !383, line: 808, baseType: !1006, size: 768, offset: 251648)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 768, elements: !1003)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !382, file: !383, line: 809, baseType: !1008, size: 64, offset: 252416)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !990, line: 29, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !254, !254, !39, !39}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !382, file: !383, line: 811, baseType: !1013, size: 8448, offset: 252480)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1014, line: 110, baseType: !1015)
!1014 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1014, line: 63, size: 8448, elements: !1016)
!1016 = !{!1017, !1023, !1024, !1025, !1026, !1028, !1029, !1030, !1031, !1037, !1043, !1044, !1048, !1053, !1054, !1060, !1064, !1065, !1066, !1067, !1068, !1073, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1015, file: !1014, line: 65, baseType: !1018, size: 448)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 448, elements: !994)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1014, line: 26, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!39, !254, !39, !254, !39}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1015, file: !1014, line: 66, baseType: !1018, size: 448, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1015, file: !1014, line: 67, baseType: !1018, size: 448, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1015, file: !1014, line: 68, baseType: !1018, size: 448, offset: 1344)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1015, file: !1014, line: 69, baseType: !1027, size: 256, offset: 1792)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1019, size: 256, elements: !257)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1015, file: !1014, line: 70, baseType: !1018, size: 448, offset: 2048)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1015, file: !1014, line: 71, baseType: !1018, size: 448, offset: 2496)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1015, file: !1014, line: 72, baseType: !1018, size: 448, offset: 2944)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1015, file: !1014, line: 73, baseType: !1032, size: 448, offset: 3392)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 448, elements: !994)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1014, line: 27, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !254, !254, !254, !254, !39, !317}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1015, file: !1014, line: 74, baseType: !1038, size: 448, offset: 3840)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 448, elements: !994)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1014, line: 28, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !254, !254, !254, !254, !254, !39, !317}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1015, file: !1014, line: 75, baseType: !1018, size: 448, offset: 4288)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1015, file: !1014, line: 76, baseType: !1045, size: 64, offset: 4736)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!39, !254, !39, !254, !39, !317}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1015, file: !1014, line: 78, baseType: !1049, size: 256, offset: 4800)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, size: 256, elements: !257)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!349, !254, !39}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1015, file: !1014, line: 79, baseType: !1049, size: 256, offset: 5056)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1015, file: !1014, line: 81, baseType: !1055, size: 64, offset: 5312)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{null, !555, !39, !555, !39, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !257)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1015, file: !1014, line: 83, baseType: !1061, size: 64, offset: 5376)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!156, !1058, !1058, !39}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1015, file: !1014, line: 86, baseType: !1032, size: 448, offset: 5440)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1015, file: !1014, line: 87, baseType: !1038, size: 448, offset: 5888)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1015, file: !1014, line: 88, baseType: !1032, size: 448, offset: 6336)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1015, file: !1014, line: 89, baseType: !1038, size: 448, offset: 6784)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1015, file: !1014, line: 93, baseType: !1069, size: 448, offset: 7232)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 448, elements: !994)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!39, !317, !16, !39, !16, !759, !39, !39}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1015, file: !1014, line: 98, baseType: !1074, size: 64, offset: 7680)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !254, !254, !317}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1015, file: !1014, line: 99, baseType: !1074, size: 64, offset: 7744)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1015, file: !1014, line: 100, baseType: !1074, size: 64, offset: 7808)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1015, file: !1014, line: 101, baseType: !1074, size: 64, offset: 7872)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1015, file: !1014, line: 102, baseType: !1074, size: 64, offset: 7936)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1015, file: !1014, line: 103, baseType: !1074, size: 64, offset: 8000)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1015, file: !1014, line: 104, baseType: !1074, size: 64, offset: 8064)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1015, file: !1014, line: 105, baseType: !1074, size: 64, offset: 8128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1015, file: !1014, line: 106, baseType: !1074, size: 64, offset: 8192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1015, file: !1014, line: 107, baseType: !1074, size: 64, offset: 8256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1015, file: !1014, line: 108, baseType: !1074, size: 64, offset: 8320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1015, file: !1014, line: 109, baseType: !1074, size: 64, offset: 8384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !382, file: !383, line: 812, baseType: !1089, size: 2368, offset: 260928)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !266, line: 111, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 58, size: 2368, elements: !1091)
!1091 = !{!1092, !1099, !1103, !1107, !1114, !1119, !1120, !1124, !1128, !1129, !1133, !1141, !1145, !1149, !1150, !1154, !1158, !1162, !1163, !1164, !1165, !1170}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1090, file: !266, line: 60, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !254, !39, !1096, !39, !39, !39, !39, !39, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1090, file: !266, line: 65, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!254, !254, !317, !1096, !39, !39, !39, !39, !39, !1097}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1090, file: !266, line: 71, baseType: !1104, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !254, !39, !254, !39, !39, !39, !39, !39}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1090, file: !266, line: 75, baseType: !1108, size: 640, offset: 192)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1109, size: 640, elements: !1112)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !254, !39, !254, !39, !254, !39, !39}
!1112 = !{!1113}
!1113 = !DISubrange(count: 10)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1090, file: !266, line: 78, baseType: !1115, size: 448, offset: 832)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 448, elements: !994)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !254, !39, !254, !39, !39}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1090, file: !266, line: 79, baseType: !1116, size: 64, offset: 1280)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1090, file: !266, line: 81, baseType: !1121, size: 64, offset: 1344)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{null, !254, !39, !254, !39, !39, !39}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1090, file: !266, line: 84, baseType: !1125, size: 64, offset: 1408)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !254, !254, !254, !254, !39, !39, !39, !759}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1090, file: !266, line: 88, baseType: !1116, size: 64, offset: 1472)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1090, file: !266, line: 91, baseType: !1130, size: 64, offset: 1536)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !254, !39, !39}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1090, file: !266, line: 93, baseType: !1134, size: 64, offset: 1600)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!119, !119, !1137, !1139}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1140, line: 46, baseType: !351)
!1140 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1090, file: !266, line: 94, baseType: !1142, size: 64, offset: 1664)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null, !119, !39}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1090, file: !266, line: 97, baseType: !1146, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !16, !254, !39}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1090, file: !266, line: 98, baseType: !1146, size: 64, offset: 1792)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1090, file: !266, line: 99, baseType: !1151, size: 64, offset: 1856)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !16, !16, !39}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1090, file: !266, line: 100, baseType: !1155, size: 64, offset: 1920)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !16, !39}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1090, file: !266, line: 102, baseType: !1159, size: 64, offset: 1984)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !254, !254, !254, !254, !254, !39, !39, !39, !39}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1090, file: !266, line: 104, baseType: !283, size: 64, offset: 2048)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1090, file: !266, line: 105, baseType: !283, size: 64, offset: 2112)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1090, file: !266, line: 106, baseType: !283, size: 64, offset: 2176)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1090, file: !266, line: 107, baseType: !1166, size: 64, offset: 2240)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !380, !1169}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1090, file: !266, line: 109, baseType: !1171, size: 64, offset: 2304)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !317, !16, !16, !16, !16, !39}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !382, file: !383, line: 813, baseType: !1175, size: 960, offset: 263296)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1176, line: 115, baseType: !1177)
!1176 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1176, line: 89, size: 960, elements: !1178)
!1178 = !{!1179, !1183, !1187, !1192, !1193, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1209, !1213, !1217}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1177, file: !1176, line: 94, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !759, !254, !254}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1177, file: !1176, line: 95, baseType: !1184, size: 64, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !254, !759}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1177, file: !1176, line: 97, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !1191, !254, !254}
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1177, file: !1176, line: 98, baseType: !1180, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1177, file: !1176, line: 99, baseType: !1194, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{null, !254, !1191}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1177, file: !1176, line: 100, baseType: !1184, size: 64, offset: 320)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1177, file: !1176, line: 102, baseType: !1188, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1177, file: !1176, line: 103, baseType: !1194, size: 64, offset: 448)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1177, file: !1176, line: 104, baseType: !1184, size: 64, offset: 512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1177, file: !1176, line: 106, baseType: !1180, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1177, file: !1176, line: 107, baseType: !1184, size: 64, offset: 640)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1177, file: !1176, line: 109, baseType: !1204, size: 64, offset: 704)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !1207, !254, !254}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 1024, elements: !112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1177, file: !1176, line: 110, baseType: !1210, size: 64, offset: 768)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !254, !1207}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1177, file: !1176, line: 112, baseType: !1214, size: 64, offset: 832)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !759}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1177, file: !1176, line: 113, baseType: !1214, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !382, file: !383, line: 814, baseType: !1219, size: 384, offset: 264256)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1176, line: 126, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1176, line: 117, size: 384, elements: !1221)
!1221 = !{!1222, !1226, !1227, !1231, !1232, !1236}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1220, file: !1176, line: 119, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{null, !759, !759}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1220, file: !1176, line: 120, baseType: !1223, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1220, file: !1176, line: 121, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!39, !759, !555, !254}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1220, file: !1176, line: 122, baseType: !1228, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1220, file: !1176, line: 123, baseType: !1233, size: 64, offset: 256)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!39, !759, !555, !254, !759}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1220, file: !1176, line: 124, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !759, !759, !254}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !382, file: !383, line: 815, baseType: !1241, size: 1408, offset: 264640)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1242, line: 44, baseType: !1243)
!1242 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1242, line: 26, size: 1408, elements: !1244)
!1244 = !{!1245, !1249, !1250, !1254, !1255, !1259, !1263, !1264, !1269, !1273, !1274, !1275, !1277}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1243, file: !1242, line: 28, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!39, !759, !16, !16}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1243, file: !1242, line: 29, baseType: !1246, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1243, file: !1242, line: 30, baseType: !1251, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!39, !759, !39, !39}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1243, file: !1242, line: 31, baseType: !1251, size: 64, offset: 192)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1243, file: !1242, line: 33, baseType: !1256, size: 64, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !759, !569, !39}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1243, file: !1242, line: 34, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !759, !565, !39}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1243, file: !1242, line: 35, baseType: !1260, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1243, file: !1242, line: 37, baseType: !1265, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !759, !1268, !16, !39}
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1243, file: !1242, line: 39, baseType: !1270, size: 64, offset: 512)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!39, !759}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1243, file: !1242, line: 40, baseType: !1270, size: 64, offset: 576)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1243, file: !1242, line: 41, baseType: !1270, size: 64, offset: 640)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1243, file: !1242, line: 42, baseType: !1276, size: 384, offset: 704)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 384, elements: !557)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1243, file: !1242, line: 43, baseType: !1278, size: 320, offset: 1088)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 320, elements: !942)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!39, !759, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !413, line: 63, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !413, line: 58, size: 416, elements: !1285)
!1285 = !{!1286, !1287, !1288}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1284, file: !413, line: 60, baseType: !39, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1284, file: !413, line: 61, baseType: !701, size: 256, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1284, file: !413, line: 62, baseType: !101, size: 128, offset: 288)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !382, file: !383, line: 816, baseType: !1290, size: 576, offset: 266048)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !35, line: 170, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 161, size: 576, elements: !1292)
!1292 = !{!1293, !1299, !1300, !1306, !1307}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1291, file: !35, line: 163, baseType: !1294, size: 128)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1295, size: 128, elements: !161)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !35, line: 159, baseType: !1296)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !254, !39, !39, !39, !297}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1291, file: !35, line: 164, baseType: !1294, size: 128, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1291, file: !35, line: 165, baseType: !1301, size: 128, offset: 256)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1302, size: 128, elements: !161)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !35, line: 160, baseType: !1303)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !254, !39, !39, !39}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1291, file: !35, line: 166, baseType: !1301, size: 128, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1291, file: !35, line: 167, baseType: !1308, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{null, !254, !1311, !1312, !1315, !39, !39}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 1280, elements: !1314)
!1314 = !{!850, !162}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 128, elements: !1317)
!1317 = !{!258, !258}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !382, file: !383, line: 821, baseType: !1319, size: 64, offset: 266624)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !383, line: 377, baseType: !1321)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !383, line: 366, size: 960, elements: !1322)
!1322 = !{!1323, !1325, !1326, !1327, !1328, !1329, !1330, !1340, !1341}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1321, file: !383, line: 368, baseType: !1324, size: 8)
!1324 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1321, file: !383, line: 369, baseType: !102, size: 8, offset: 8)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1321, file: !383, line: 370, baseType: !102, size: 8, offset: 16)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1321, file: !383, line: 371, baseType: !39, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1321, file: !383, line: 372, baseType: !39, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1321, file: !383, line: 373, baseType: !33, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1321, file: !383, line: 374, baseType: !1331, size: 256, offset: 192)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !35, line: 157, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 149, size: 256, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1332, file: !35, line: 151, baseType: !663, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1332, file: !35, line: 152, baseType: !39, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1332, file: !35, line: 153, baseType: !39, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1332, file: !35, line: 154, baseType: !39, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1332, file: !35, line: 155, baseType: !39, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1332, file: !35, line: 156, baseType: !39, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1321, file: !383, line: 375, baseType: !1331, size: 256, offset: 448)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1321, file: !383, line: 376, baseType: !1331, size: 256, offset: 704)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1356, !1358, !1360, !1363, !1367, !1373, !1375, !1378, !1380, !1383}
!1343 = !DILocalVariable(name: "h", arg: 1, scope: !29, file: !30, line: 29, type: !380)
!1344 = !DILocalVariable(name: "b_fdec", arg: 2, scope: !29, file: !30, line: 29, type: !39)
!1345 = !DILocalVariable(name: "frame", scope: !29, file: !30, line: 31, type: !33)
!1346 = !DILocalVariable(name: "i_mb_count", scope: !29, file: !30, line: 33, type: !39)
!1347 = !DILocalVariable(name: "i_stride", scope: !29, file: !30, line: 34, type: !39)
!1348 = !DILocalVariable(name: "i_width", scope: !29, file: !30, line: 34, type: !39)
!1349 = !DILocalVariable(name: "i_lines", scope: !29, file: !30, line: 34, type: !39)
!1350 = !DILocalVariable(name: "i_padv", scope: !29, file: !30, line: 35, type: !39)
!1351 = !DILocalVariable(name: "luma_plane_size", scope: !29, file: !30, line: 36, type: !39)
!1352 = !DILocalVariable(name: "chroma_plane_size", scope: !29, file: !30, line: 37, type: !39)
!1353 = !DILocalVariable(name: "align", scope: !29, file: !30, line: 38, type: !39)
!1354 = !DILocalVariable(name: "i", scope: !1355, file: !30, line: 48, type: !39)
!1355 = distinct !DILexicalBlock(scope: !29, file: !30, line: 48, column: 5)
!1356 = !DILocalVariable(name: "i", scope: !1357, file: !30, line: 57, type: !39)
!1357 = distinct !DILexicalBlock(scope: !29, file: !30, line: 57, column: 5)
!1358 = !DILocalVariable(name: "i", scope: !1359, file: !30, line: 63, type: !39)
!1359 = distinct !DILexicalBlock(scope: !29, file: !30, line: 63, column: 5)
!1360 = !DILocalVariable(name: "j", scope: !1361, file: !30, line: 64, type: !39)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !30, line: 64, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1359, file: !30, line: 63, column: 5)
!1363 = !DILocalVariable(name: "i", scope: !1364, file: !30, line: 91, type: !39)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !30, line: 91, column: 9)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !30, line: 89, column: 5)
!1366 = distinct !DILexicalBlock(scope: !29, file: !30, line: 88, column: 9)
!1367 = !DILocalVariable(name: "i", scope: !1368, file: !30, line: 140, type: !39)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !30, line: 140, column: 13)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !30, line: 132, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !30, line: 131, column: 13)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !30, line: 130, column: 5)
!1372 = distinct !DILexicalBlock(scope: !29, file: !30, line: 103, column: 9)
!1373 = !DILocalVariable(name: "j", scope: !1374, file: !30, line: 143, type: !39)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !30, line: 143, column: 13)
!1375 = !DILocalVariable(name: "i", scope: !1376, file: !30, line: 144, type: !39)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !30, line: 144, column: 17)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !30, line: 143, column: 13)
!1378 = !DILocalVariable(name: "j", scope: !1379, file: !30, line: 150, type: !39)
!1379 = distinct !DILexicalBlock(scope: !1369, file: !30, line: 150, column: 13)
!1380 = !DILocalVariable(name: "i", scope: !1381, file: !30, line: 151, type: !39)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !30, line: 151, column: 17)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !30, line: 150, column: 13)
!1383 = !DILabel(scope: !29, name: "fail", file: !30, line: 173)
!1384 = !DILocation(line: 0, scope: !29)
!1385 = !DILocation(line: 33, column: 25, scope: !29)
!1386 = !DILocation(line: 33, column: 28, scope: !29)
!1387 = !{!1388, !1390, i64 16368}
!1388 = !{!"x264_t", !1389, i64 0, !1391, i64 704, !1390, i64 1736, !1390, i64 1740, !1390, i64 1744, !1390, i64 1748, !1390, i64 1752, !1398, i64 1760, !1394, i64 1832, !1390, i64 1840, !1390, i64 1844, !1390, i64 1848, !1390, i64 1852, !1390, i64 1856, !1390, i64 1860, !1390, i64 1864, !1390, i64 1868, !1390, i64 1872, !1390, i64 1876, !1390, i64 1880, !1390, i64 1884, !1390, i64 1888, !1390, i64 1892, !1391, i64 1896, !1394, i64 3200, !1391, i64 3208, !1394, i64 3328, !1390, i64 3336, !1390, i64 3340, !1391, i64 3344, !1391, i64 3376, !1391, i64 3392, !1391, i64 3424, !1391, i64 3440, !1391, i64 3472, !1391, i64 3488, !1391, i64 3520, !1391, i64 3536, !1391, i64 4272, !1394, i64 7216, !1401, i64 7232, !1402, i64 13904, !1403, i64 14416, !1394, i64 14680, !1394, i64 14688, !1390, i64 14696, !1391, i64 14704, !1390, i64 14856, !1391, i64 14864, !1391, i64 15016, !1390, i64 15024, !1390, i64 15028, !1400, i64 15032, !1404, i64 15040, !1405, i64 16368, !1394, i64 26704, !1408, i64 26712, !1391, i64 30400, !1391, i64 30912, !1391, i64 31168, !1394, i64 31176, !1391, i64 31184, !1391, i64 31232, !1391, i64 31248, !1391, i64 31304, !1391, i64 31360, !1391, i64 31456, !1394, i64 31552, !1411, i64 31560, !1412, i64 32616, !1413, i64 32912, !1414, i64 33032, !1415, i64 33080, !1416, i64 33256, !1394, i64 33328}
!1389 = !{!"x264_param_t", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1393, i64 44, !1390, i64 80, !1390, i64 84, !1390, i64 88, !1390, i64 92, !1390, i64 96, !1390, i64 100, !1390, i64 104, !1390, i64 108, !1390, i64 112, !1390, i64 116, !1390, i64 120, !1390, i64 124, !1390, i64 128, !1390, i64 132, !1390, i64 136, !1390, i64 140, !1390, i64 144, !1394, i64 152, !1391, i64 160, !1391, i64 176, !1391, i64 192, !1391, i64 208, !1391, i64 224, !1391, i64 288, !1394, i64 352, !1394, i64 360, !1390, i64 368, !1390, i64 372, !1394, i64 376, !1395, i64 384, !1397, i64 488, !1390, i64 632, !1390, i64 636, !1390, i64 640, !1390, i64 644, !1390, i64 648, !1390, i64 652, !1390, i64 656, !1390, i64 660, !1390, i64 664, !1390, i64 668, !1390, i64 672, !1390, i64 676, !1390, i64 680, !1390, i64 684, !1390, i64 688, !1390, i64 692, !1394, i64 696}
!1390 = !{!"int", !1391, i64 0}
!1391 = !{!"omnipotent char", !1392, i64 0}
!1392 = !{!"Simple C/C++ TBAA"}
!1393 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32}
!1394 = !{!"any pointer", !1391, i64 0}
!1395 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1390, i64 48, !1390, i64 52, !1390, i64 56, !1390, i64 60, !1390, i64 64, !1390, i64 68, !1396, i64 72, !1396, i64 76, !1390, i64 80, !1391, i64 84, !1390, i64 92, !1390, i64 96}
!1396 = !{!"float", !1391, i64 0}
!1397 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1396, i64 24, !1396, i64 28, !1396, i64 32, !1390, i64 36, !1390, i64 40, !1396, i64 44, !1396, i64 48, !1396, i64 52, !1390, i64 56, !1396, i64 60, !1390, i64 64, !1390, i64 68, !1390, i64 72, !1394, i64 80, !1390, i64 88, !1394, i64 96, !1396, i64 104, !1396, i64 108, !1396, i64 112, !1394, i64 120, !1390, i64 128, !1394, i64 136}
!1398 = !{!"", !1390, i64 0, !1390, i64 4, !1394, i64 8, !1390, i64 16, !1394, i64 24, !1399, i64 32}
!1399 = !{!"bs_s", !1394, i64 0, !1394, i64 8, !1394, i64 16, !1400, i64 24, !1390, i64 32, !1390, i64 36}
!1400 = !{!"long", !1391, i64 0}
!1401 = !{!"", !1394, i64 0, !1394, i64 8, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1390, i64 48, !1390, i64 52, !1390, i64 56, !1391, i64 60, !1390, i64 68, !1390, i64 72, !1390, i64 76, !1390, i64 80, !1390, i64 84, !1390, i64 88, !1390, i64 92, !1391, i64 96, !1391, i64 352, !1390, i64 6496, !1390, i64 6500, !1391, i64 6504, !1390, i64 6632, !1390, i64 6636, !1390, i64 6640, !1390, i64 6644, !1390, i64 6648, !1390, i64 6652, !1390, i64 6656, !1390, i64 6660}
!1402 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1394, i64 16, !1394, i64 24, !1394, i64 32, !1390, i64 48, !1391, i64 52}
!1403 = !{!"", !1394, i64 0, !1391, i64 8, !1394, i64 24, !1391, i64 32, !1390, i64 176, !1390, i64 180, !1390, i64 184, !1390, i64 188, !1390, i64 192, !1390, i64 196, !1390, i64 200, !1400, i64 208, !1400, i64 216, !1391, i64 224, !1400, i64 240, !1400, i64 248, !1390, i64 256, !1390, i64 260}
!1404 = !{!"", !1391, i64 0, !1391, i64 32, !1391, i64 48, !1391, i64 560}
!1405 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1390, i64 48, !1390, i64 52, !1390, i64 56, !1390, i64 60, !1390, i64 64, !1390, i64 68, !1391, i64 72, !1391, i64 80, !1391, i64 88, !1391, i64 96, !1391, i64 104, !1391, i64 112, !1390, i64 120, !1391, i64 124, !1391, i64 140, !1390, i64 204, !1390, i64 208, !1390, i64 212, !1390, i64 216, !1390, i64 220, !1390, i64 224, !1390, i64 228, !1390, i64 232, !1390, i64 236, !1390, i64 240, !1390, i64 244, !1394, i64 248, !1394, i64 256, !1394, i64 264, !1394, i64 272, !1394, i64 280, !1394, i64 288, !1394, i64 296, !1391, i64 304, !1391, i64 320, !1391, i64 336, !1391, i64 352, !1394, i64 864, !1394, i64 872, !1394, i64 880, !1391, i64 888, !1390, i64 1016, !1390, i64 1020, !1391, i64 1024, !1390, i64 1028, !1390, i64 1032, !1390, i64 1036, !1390, i64 1040, !1390, i64 1044, !1390, i64 1048, !1390, i64 1052, !1390, i64 1056, !1390, i64 1060, !1406, i64 1072, !1407, i64 8656, !1390, i64 9424, !1390, i64 9428, !1390, i64 9432, !1390, i64 9436, !1390, i64 9440, !1390, i64 9444, !1390, i64 9448, !1390, i64 9452, !1391, i64 9456, !1390, i64 9472, !1390, i64 9476, !1391, i64 9480, !1394, i64 9992, !1391, i64 10000, !1394, i64 10256, !1391, i64 10264, !1390, i64 10284, !1391, i64 10288}
!1406 = !{!"", !1391, i64 0, !1391, i64 384, !1391, i64 1248, !1391, i64 1504, !1391, i64 1760, !1391, i64 2144, !1391, i64 2624, !1391, i64 2640, !1390, i64 2656, !1390, i64 2660, !1391, i64 2672, !1391, i64 3184, !1391, i64 3696, !1391, i64 3776, !1391, i64 3904, !1391, i64 3928, !1391, i64 3952, !1391, i64 3976, !1391, i64 3984, !1391, i64 7056, !1391, i64 7312, !1391, i64 7568}
!1407 = !{!"", !1391, i64 0, !1391, i64 48, !1391, i64 96, !1391, i64 176, !1391, i64 496, !1391, i64 656, !1391, i64 696, !1391, i64 728, !1390, i64 736, !1391, i64 740, !1390, i64 744, !1390, i64 748, !1390, i64 752, !1390, i64 756}
!1408 = !{!"", !1409, i64 0, !1391, i64 704, !1391, i64 728, !1391, i64 768, !1391, i64 808, !1391, i64 880, !1391, i64 920, !1391, i64 960, !1391, i64 1000, !1391, i64 1040, !1391, i64 1080, !1391, i64 1120, !1391, i64 1880, !1391, i64 2152, !1391, i64 2168, !1391, i64 3192, !1391, i64 3240, !1391, i64 3656, !1391, i64 3664, !1391, i64 3672}
!1409 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1391, i64 12, !1390, i64 88, !1390, i64 92, !1390, i64 96, !1391, i64 100, !1391, i64 108, !1391, i64 364, !1391, i64 432, !1391, i64 456, !1391, i64 664, !1391, i64 672, !1410, i64 696}
!1410 = !{!"double", !1391, i64 0}
!1411 = !{!"", !1391, i64 0, !1391, i64 56, !1391, i64 112, !1391, i64 168, !1391, i64 224, !1391, i64 256, !1391, i64 312, !1391, i64 368, !1391, i64 424, !1391, i64 480, !1391, i64 536, !1394, i64 592, !1391, i64 600, !1391, i64 632, !1394, i64 664, !1394, i64 672, !1391, i64 680, !1391, i64 736, !1391, i64 792, !1391, i64 848, !1391, i64 904, !1394, i64 960, !1394, i64 968, !1394, i64 976, !1394, i64 984, !1394, i64 992, !1394, i64 1000, !1394, i64 1008, !1394, i64 1016, !1394, i64 1024, !1394, i64 1032, !1394, i64 1040, !1394, i64 1048}
!1412 = !{!"", !1394, i64 0, !1394, i64 8, !1394, i64 16, !1391, i64 24, !1391, i64 104, !1394, i64 160, !1394, i64 168, !1394, i64 176, !1394, i64 184, !1394, i64 192, !1394, i64 200, !1394, i64 208, !1394, i64 216, !1394, i64 224, !1394, i64 232, !1394, i64 240, !1394, i64 248, !1394, i64 256, !1394, i64 264, !1394, i64 272, !1394, i64 280, !1394, i64 288}
!1413 = !{!"", !1394, i64 0, !1394, i64 8, !1394, i64 16, !1394, i64 24, !1394, i64 32, !1394, i64 40, !1394, i64 48, !1394, i64 56, !1394, i64 64, !1394, i64 72, !1394, i64 80, !1394, i64 88, !1394, i64 96, !1394, i64 104, !1394, i64 112}
!1414 = !{!"", !1394, i64 0, !1394, i64 8, !1394, i64 16, !1394, i64 24, !1394, i64 32, !1394, i64 40}
!1415 = !{!"", !1394, i64 0, !1394, i64 8, !1394, i64 16, !1394, i64 24, !1394, i64 32, !1394, i64 40, !1394, i64 48, !1394, i64 56, !1394, i64 64, !1394, i64 72, !1394, i64 80, !1391, i64 88, !1391, i64 136}
!1416 = !{!"", !1391, i64 0, !1391, i64 16, !1391, i64 32, !1391, i64 48, !1394, i64 64}
!1417 = !DILocation(line: 35, column: 35, scope: !29)
!1418 = !{!1388, !1390, i64 136}
!1419 = !DILocation(line: 35, column: 23, scope: !29)
!1420 = !DILocation(line: 38, column: 26, scope: !29)
!1421 = !{!1388, !1390, i64 0}
!1422 = !DILocation(line: 38, column: 29, scope: !29)
!1423 = !DILocation(line: 38, column: 17, scope: !29)
!1424 = !DILocation(line: 38, column: 71, scope: !29)
!1425 = !DILocation(line: 38, column: 59, scope: !29)
!1426 = !DILocation(line: 40, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !30, line: 40, column: 5)
!1428 = distinct !DILexicalBlock(scope: !29, file: !30, line: 40, column: 5)
!1429 = !DILocation(line: 40, column: 5, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !30, line: 40, column: 5)
!1431 = !DILocation(line: 40, column: 5, scope: !1428)
!1432 = !DILocation(line: 43, column: 16, scope: !29)
!1433 = !{!1388, !1390, i64 20}
!1434 = !DILocation(line: 44, column: 16, scope: !29)
!1435 = !DILocation(line: 45, column: 16, scope: !29)
!1436 = !{!1388, !1390, i64 24}
!1437 = !DILocation(line: 47, column: 12, scope: !29)
!1438 = !DILocation(line: 47, column: 20, scope: !29)
!1439 = !{!1440, !1390, i64 100}
!1440 = !{!"x264_frame", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1400, i64 16, !1400, i64 24, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1394, i64 48, !1390, i64 56, !1390, i64 60, !1390, i64 64, !1390, i64 68, !1390, i64 72, !1390, i64 76, !1390, i64 80, !1391, i64 84, !1391, i64 85, !1391, i64 86, !1396, i64 88, !1396, i64 92, !1390, i64 96, !1390, i64 100, !1391, i64 104, !1391, i64 116, !1391, i64 128, !1390, i64 140, !1390, i64 144, !1390, i64 148, !1391, i64 152, !1391, i64 176, !1391, i64 208, !1394, i64 240, !1391, i64 248, !1391, i64 280, !1391, i64 320, !1391, i64 3392, !1390, i64 3520, !1394, i64 3528, !1394, i64 3536, !1394, i64 3544, !1391, i64 3552, !1394, i64 3568, !1391, i64 3576, !1391, i64 3848, !1391, i64 6440, !1391, i64 6712, !1391, i64 6728, !1391, i64 6736, !1391, i64 6864, !1391, i64 6868, !1391, i64 8164, !1390, i64 9460, !1391, i64 9464, !1391, i64 9536, !1394, i64 12128, !1394, i64 12136, !1394, i64 12144, !1394, i64 12152, !1394, i64 12160, !1390, i64 12168, !1394, i64 12176, !1394, i64 12184, !1394, i64 12192, !1390, i64 12200, !1391, i64 12204, !1390, i64 12276, !1400, i64 12280, !1441, i64 12288, !1391, i64 12320, !1391, i64 12572, !1391, i64 13576, !1390, i64 15584, !1390, i64 15588, !1390, i64 15592, !1390, i64 15596, !1390, i64 15600, !1390, i64 15604, !1390, i64 15608, !1396, i64 15612, !1390, i64 15616, !1390, i64 15620, !1390, i64 15624}
!1441 = !{!"", !1410, i64 0, !1410, i64 8, !1410, i64 16, !1410, i64 24}
!1442 = !DILocation(line: 0, scope: !1355)
!1443 = !DILocation(line: 48, column: 5, scope: !1355)
!1444 = !DILocation(line: 55, column: 31, scope: !29)
!1445 = !DILocation(line: 55, column: 24, scope: !29)
!1446 = !{!1390, !1390, i64 0}
!1447 = !DILocation(line: 55, column: 53, scope: !29)
!1448 = !DILocation(line: 55, column: 46, scope: !29)
!1449 = !DILocation(line: 55, column: 67, scope: !29)
!1450 = !DILocation(line: 55, column: 64, scope: !29)
!1451 = !DILocation(line: 55, column: 43, scope: !29)
!1452 = !DILocation(line: 56, column: 26, scope: !29)
!1453 = !DILocation(line: 56, column: 48, scope: !29)
!1454 = !DILocation(line: 56, column: 66, scope: !29)
!1455 = !DILocation(line: 56, column: 45, scope: !29)
!1456 = !DILocation(line: 0, scope: !1357)
!1457 = !DILocation(line: 57, column: 5, scope: !1357)
!1458 = !DILocation(line: 50, column: 30, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !30, line: 49, column: 5)
!1460 = distinct !DILexicalBlock(scope: !1355, file: !30, line: 48, column: 5)
!1461 = !DILocation(line: 50, column: 9, scope: !1459)
!1462 = !DILocation(line: 50, column: 28, scope: !1459)
!1463 = !DILocation(line: 51, column: 37, scope: !1459)
!1464 = !DILocation(line: 51, column: 9, scope: !1459)
!1465 = !DILocation(line: 51, column: 27, scope: !1459)
!1466 = !DILocation(line: 52, column: 37, scope: !1459)
!1467 = !DILocation(line: 52, column: 9, scope: !1459)
!1468 = !DILocation(line: 52, column: 27, scope: !1459)
!1469 = !DILocation(line: 48, column: 29, scope: !1460)
!1470 = !DILocation(line: 48, column: 23, scope: !1460)
!1471 = distinct !{!1471, !1443, !1472, !1473, !1474}
!1472 = !DILocation(line: 53, column: 5, scope: !1355)
!1473 = !{!"llvm.loop.mustprogress"}
!1474 = !{!"llvm.loop.unroll.disable"}
!1475 = !DILocation(line: 0, scope: !1359)
!1476 = !DILocation(line: 63, column: 34, scope: !1362)
!1477 = !{!1388, !1390, i64 100}
!1478 = !DILocation(line: 63, column: 23, scope: !1362)
!1479 = !DILocation(line: 63, column: 5, scope: !1359)
!1480 = !DILocation(line: 59, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !30, line: 59, column: 9)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !30, line: 58, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1357, file: !30, line: 57, column: 5)
!1484 = !{!1394, !1394, i64 0}
!1485 = !DILocation(line: 59, column: 9, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1481, file: !30, line: 59, column: 9)
!1487 = !DILocation(line: 60, column: 47, scope: !1482)
!1488 = !DILocation(line: 60, column: 66, scope: !1482)
!1489 = !DILocation(line: 60, column: 75, scope: !1482)
!1490 = !DILocation(line: 60, column: 82, scope: !1482)
!1491 = !DILocation(line: 60, column: 44, scope: !1482)
!1492 = !DILocation(line: 60, column: 9, scope: !1482)
!1493 = !DILocation(line: 60, column: 25, scope: !1482)
!1494 = !DILocation(line: 57, column: 29, scope: !1483)
!1495 = !DILocation(line: 57, column: 23, scope: !1483)
!1496 = distinct !{!1496, !1457, !1497, !1473, !1474}
!1497 = !DILocation(line: 61, column: 5, scope: !1357)
!1498 = !DILocation(line: 0, scope: !1361)
!1499 = !DILocation(line: 64, column: 27, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1361, file: !30, line: 64, column: 9)
!1501 = !DILocation(line: 64, column: 9, scope: !1361)
!1502 = !DILocation(line: 64, column: 53, scope: !1500)
!1503 = !DILocation(line: 64, column: 38, scope: !1500)
!1504 = distinct !{!1504, !1501, !1505, !1473, !1474}
!1505 = !DILocation(line: 65, column: 13, scope: !1361)
!1506 = !DILocation(line: 65, column: 13, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1500, file: !30, line: 65, column: 13)
!1508 = !DILocation(line: 65, column: 13, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1507, file: !30, line: 65, column: 13)
!1510 = !DILocation(line: 0, scope: !1362)
!1511 = !DILocation(line: 63, column: 49, scope: !1362)
!1512 = distinct !{!1512, !1479, !1513, !1473, !1474}
!1513 = !DILocation(line: 65, column: 13, scope: !1359)
!1514 = !DILocation(line: 67, column: 18, scope: !29)
!1515 = !{!1440, !1390, i64 0}
!1516 = !DILocation(line: 68, column: 12, scope: !29)
!1517 = !DILocation(line: 68, column: 19, scope: !29)
!1518 = !{!1440, !1390, i64 4}
!1519 = !DILocation(line: 69, column: 12, scope: !29)
!1520 = !DILocation(line: 69, column: 22, scope: !29)
!1521 = !{!1440, !1390, i64 8}
!1522 = !DILocation(line: 70, column: 12, scope: !29)
!1523 = !DILocation(line: 70, column: 18, scope: !29)
!1524 = !{!1440, !1400, i64 16}
!1525 = !DILocation(line: 71, column: 12, scope: !29)
!1526 = !DILocation(line: 71, column: 20, scope: !29)
!1527 = !{!1440, !1390, i64 56}
!1528 = !DILocation(line: 72, column: 12, scope: !29)
!1529 = !DILocation(line: 72, column: 24, scope: !29)
!1530 = !{!1440, !1390, i64 68}
!1531 = !DILocation(line: 73, column: 12, scope: !29)
!1532 = !DILocation(line: 73, column: 30, scope: !29)
!1533 = !{!1440, !1390, i64 15592}
!1534 = !DILocation(line: 74, column: 21, scope: !29)
!1535 = !DILocation(line: 74, column: 12, scope: !29)
!1536 = !DILocation(line: 74, column: 19, scope: !29)
!1537 = !{!1440, !1391, i64 84}
!1538 = !DILocation(line: 75, column: 12, scope: !29)
!1539 = !DILocation(line: 75, column: 25, scope: !29)
!1540 = !{!1440, !1390, i64 76}
!1541 = !DILocation(line: 76, column: 12, scope: !29)
!1542 = !DILocation(line: 76, column: 24, scope: !29)
!1543 = !{!1440, !1390, i64 64}
!1544 = !DILocation(line: 77, column: 12, scope: !29)
!1545 = !DILocation(line: 82, column: 12, scope: !29)
!1546 = !DILocation(line: 78, column: 27, scope: !29)
!1547 = !DILocation(line: 82, column: 34, scope: !29)
!1548 = !{!1440, !1390, i64 15588}
!1549 = !DILocation(line: 81, column: 12, scope: !29)
!1550 = !DILocation(line: 81, column: 37, scope: !29)
!1551 = !{!1440, !1390, i64 15584}
!1552 = !DILocation(line: 84, column: 12, scope: !29)
!1553 = !DILocation(line: 84, column: 17, scope: !29)
!1554 = !{!1440, !1394, i64 3528}
!1555 = !DILocation(line: 88, column: 26, scope: !1366)
!1556 = !{!1388, !1390, i64 428}
!1557 = !DILocation(line: 88, column: 9, scope: !1366)
!1558 = !DILocation(line: 88, column: 42, scope: !1366)
!1559 = !DILocation(line: 90, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1365, file: !30, line: 90, column: 9)
!1561 = !DILocation(line: 90, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1560, file: !30, line: 90, column: 9)
!1563 = !DILocation(line: 0, scope: !1364)
!1564 = !DILocation(line: 91, column: 9, scope: !1364)
!1565 = !DILocation(line: 92, column: 51, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1364, file: !30, line: 91, column: 9)
!1567 = !DILocation(line: 92, column: 71, scope: !1566)
!1568 = !DILocation(line: 92, column: 13, scope: !1566)
!1569 = !DILocation(line: 92, column: 32, scope: !1566)
!1570 = !DILocation(line: 93, column: 34, scope: !1365)
!1571 = !DILocation(line: 93, column: 27, scope: !1365)
!1572 = !DILocation(line: 93, column: 16, scope: !1365)
!1573 = !DILocation(line: 93, column: 25, scope: !1365)
!1574 = !DILocation(line: 94, column: 5, scope: !1365)
!1575 = !DILocation(line: 92, column: 34, scope: !1566)
!1576 = !DILocation(line: 92, column: 54, scope: !1566)
!1577 = !DILocation(line: 92, column: 101, scope: !1566)
!1578 = !DILocation(line: 91, column: 33, scope: !1566)
!1579 = !DILocation(line: 91, column: 27, scope: !1566)
!1580 = distinct !{!1580, !1564, !1581, !1473, !1474}
!1581 = !DILocation(line: 92, column: 103, scope: !1364)
!1582 = !DILocation(line: 97, column: 9, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !30, line: 97, column: 9)
!1584 = distinct !DILexicalBlock(scope: !1366, file: !30, line: 96, column: 5)
!1585 = !DILocation(line: 97, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !30, line: 97, column: 9)
!1587 = !DILocation(line: 98, column: 67, scope: !1584)
!1588 = !DILocation(line: 98, column: 86, scope: !1584)
!1589 = !DILocation(line: 98, column: 65, scope: !1584)
!1590 = !DILocation(line: 98, column: 95, scope: !1584)
!1591 = !DILocation(line: 98, column: 37, scope: !1584)
!1592 = !DILocation(line: 98, column: 46, scope: !1584)
!1593 = !DILocation(line: 98, column: 16, scope: !1584)
!1594 = !DILocation(line: 98, column: 28, scope: !1584)
!1595 = !DILocation(line: 101, column: 12, scope: !29)
!1596 = !DILocation(line: 101, column: 24, scope: !29)
!1597 = !{!1440, !1390, i64 3520}
!1598 = !DILocation(line: 103, column: 9, scope: !29)
!1599 = !DILocation(line: 105, column: 9, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 105, column: 9)
!1601 = distinct !DILexicalBlock(scope: !1372, file: !30, line: 104, column: 5)
!1602 = !{!1440, !1394, i64 3536}
!1603 = !DILocation(line: 105, column: 9, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !30, line: 105, column: 9)
!1605 = !DILocation(line: 106, column: 9, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 106, column: 9)
!1607 = !{!1440, !1394, i64 3544}
!1608 = !DILocation(line: 106, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !30, line: 106, column: 9)
!1610 = !DILocation(line: 107, column: 9, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 107, column: 9)
!1612 = !DILocation(line: 107, column: 9, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1611, file: !30, line: 107, column: 9)
!1614 = !DILocation(line: 108, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 108, column: 9)
!1616 = !{!1440, !1394, i64 3568}
!1617 = !DILocation(line: 108, column: 9, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !30, line: 108, column: 9)
!1619 = !DILocation(line: 109, column: 9, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 109, column: 9)
!1621 = !DILocation(line: 109, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1620, file: !30, line: 109, column: 9)
!1623 = !DILocation(line: 110, column: 22, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 110, column: 13)
!1625 = !DILocation(line: 110, column: 13, scope: !1624)
!1626 = !DILocation(line: 110, column: 13, scope: !1601)
!1627 = !DILocation(line: 112, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !30, line: 112, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !30, line: 111, column: 9)
!1630 = !DILocation(line: 112, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !30, line: 112, column: 13)
!1632 = !DILocation(line: 113, column: 13, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !30, line: 113, column: 13)
!1634 = !DILocation(line: 113, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1633, file: !30, line: 113, column: 13)
!1636 = !DILocation(line: 117, column: 13, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1624, file: !30, line: 116, column: 9)
!1638 = !DILocation(line: 117, column: 27, scope: !1637)
!1639 = !DILocation(line: 118, column: 13, scope: !1637)
!1640 = !DILocation(line: 118, column: 27, scope: !1637)
!1641 = !DILocation(line: 120, column: 9, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 120, column: 9)
!1643 = !{!1440, !1394, i64 12136}
!1644 = !DILocation(line: 120, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !30, line: 120, column: 9)
!1646 = !DILocation(line: 121, column: 9, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 121, column: 9)
!1648 = !{!1440, !1394, i64 12144}
!1649 = !DILocation(line: 121, column: 9, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1647, file: !30, line: 121, column: 9)
!1651 = !DILocation(line: 122, column: 30, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1601, file: !30, line: 122, column: 13)
!1653 = !{!1388, !1390, i64 412}
!1654 = !DILocation(line: 122, column: 42, scope: !1652)
!1655 = !DILocation(line: 122, column: 13, scope: !1601)
!1656 = !DILocation(line: 124, column: 13, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !30, line: 124, column: 13)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !30, line: 123, column: 9)
!1659 = !{!1388, !1390, i64 14676}
!1660 = !DILocation(line: 124, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !30, line: 124, column: 13)
!1662 = !DILocation(line: 126, column: 61, scope: !1658)
!1663 = !DILocation(line: 126, column: 80, scope: !1658)
!1664 = !DILocation(line: 126, column: 59, scope: !1658)
!1665 = !DILocation(line: 126, column: 89, scope: !1658)
!1666 = !DILocation(line: 126, column: 20, scope: !1658)
!1667 = !DILocation(line: 126, column: 29, scope: !1658)
!1668 = !{!1440, !1394, i64 240}
!1669 = !DILocation(line: 127, column: 9, scope: !1658)
!1670 = !DILocation(line: 131, column: 23, scope: !1370)
!1671 = !{!1388, !1390, i64 14672}
!1672 = !DILocation(line: 131, column: 13, scope: !1370)
!1673 = !DILocation(line: 131, column: 13, scope: !1371)
!1674 = !DILocation(line: 133, column: 44, scope: !1369)
!1675 = !DILocation(line: 133, column: 37, scope: !1369)
!1676 = !DILocation(line: 133, column: 54, scope: !1369)
!1677 = !DILocation(line: 133, column: 20, scope: !1369)
!1678 = !DILocation(line: 133, column: 35, scope: !1369)
!1679 = !{!1440, !1390, i64 144}
!1680 = !DILocation(line: 134, column: 38, scope: !1369)
!1681 = !DILocation(line: 134, column: 20, scope: !1369)
!1682 = !DILocation(line: 134, column: 36, scope: !1369)
!1683 = !{!1440, !1390, i64 140}
!1684 = !DILocation(line: 135, column: 37, scope: !1369)
!1685 = !DILocation(line: 135, column: 54, scope: !1369)
!1686 = !DILocation(line: 135, column: 20, scope: !1369)
!1687 = !DILocation(line: 135, column: 35, scope: !1369)
!1688 = !{!1440, !1390, i64 148}
!1689 = !DILocation(line: 137, column: 77, scope: !1369)
!1690 = !DILocation(line: 137, column: 54, scope: !1369)
!1691 = !DILocation(line: 139, column: 13, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1369, file: !30, line: 139, column: 13)
!1693 = !DILocation(line: 139, column: 13, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1692, file: !30, line: 139, column: 13)
!1695 = !DILocation(line: 0, scope: !1368)
!1696 = !DILocation(line: 140, column: 13, scope: !1368)
!1697 = !DILocation(line: 141, column: 60, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1368, file: !30, line: 140, column: 13)
!1699 = !DILocation(line: 141, column: 17, scope: !1698)
!1700 = !DILocation(line: 141, column: 34, scope: !1698)
!1701 = !DILocation(line: 0, scope: !1374)
!1702 = !DILocation(line: 144, column: 47, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1376, file: !30, line: 144, column: 17)
!1704 = !DILocation(line: 144, column: 35, scope: !1703)
!1705 = !DILocation(line: 141, column: 36, scope: !1698)
!1706 = !DILocation(line: 141, column: 105, scope: !1698)
!1707 = !DILocation(line: 141, column: 101, scope: !1698)
!1708 = !DILocation(line: 140, column: 37, scope: !1698)
!1709 = !DILocation(line: 140, column: 31, scope: !1698)
!1710 = distinct !{!1710, !1696, !1711, !1473, !1474}
!1711 = !DILocation(line: 141, column: 107, scope: !1368)
!1712 = !DILocation(line: 0, scope: !1376)
!1713 = !DILocation(line: 144, column: 17, scope: !1376)
!1714 = !DILocation(line: 144, column: 58, scope: !1703)
!1715 = distinct !{!1715, !1713, !1716, !1473, !1474}
!1716 = !DILocation(line: 148, column: 17, scope: !1376)
!1717 = !DILocation(line: 146, column: 21, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !30, line: 146, column: 21)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !30, line: 146, column: 21)
!1720 = distinct !DILexicalBlock(scope: !1703, file: !30, line: 145, column: 17)
!1721 = !DILocation(line: 146, column: 21, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !30, line: 146, column: 21)
!1723 = !DILocation(line: 146, column: 21, scope: !1719)
!1724 = !DILocation(line: 147, column: 21, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1720, file: !30, line: 147, column: 21)
!1726 = !DILocation(line: 147, column: 21, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1725, file: !30, line: 147, column: 21)
!1728 = !DILocation(line: 143, column: 45, scope: !1377)
!1729 = !DILocation(line: 143, column: 56, scope: !1377)
!1730 = !DILocation(line: 143, column: 35, scope: !1377)
!1731 = !DILocation(line: 143, column: 31, scope: !1377)
!1732 = !DILocation(line: 143, column: 13, scope: !1374)
!1733 = distinct !{!1733, !1732, !1734, !1473, !1474, !1735}
!1734 = !DILocation(line: 148, column: 17, scope: !1374)
!1735 = !{!"llvm.loop.unswitch.partial.disable"}
!1736 = !DILocation(line: 149, column: 13, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1369, file: !30, line: 149, column: 13)
!1738 = !{!1440, !1394, i64 12184}
!1739 = !DILocation(line: 149, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !30, line: 149, column: 13)
!1741 = !DILocation(line: 0, scope: !1379)
!1742 = !DILocation(line: 150, column: 43, scope: !1382)
!1743 = !DILocation(line: 150, column: 31, scope: !1382)
!1744 = !DILocation(line: 150, column: 13, scope: !1379)
!1745 = !DILocation(line: 0, scope: !1381)
!1746 = !DILocation(line: 151, column: 35, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1381, file: !30, line: 151, column: 17)
!1748 = !DILocation(line: 151, column: 17, scope: !1381)
!1749 = !DILocation(line: 151, column: 60, scope: !1747)
!1750 = !DILocation(line: 151, column: 47, scope: !1747)
!1751 = distinct !{!1751, !1748, !1752, !1473, !1474}
!1752 = !DILocation(line: 152, column: 21, scope: !1381)
!1753 = !DILocation(line: 152, column: 21, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1747, file: !30, line: 152, column: 21)
!1755 = !DILocation(line: 152, column: 21, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1754, file: !30, line: 152, column: 21)
!1757 = !DILocation(line: 0, scope: !1382)
!1758 = !DILocation(line: 150, column: 56, scope: !1382)
!1759 = distinct !{!1759, !1744, !1760, !1473, !1474}
!1760 = !DILocation(line: 152, column: 21, scope: !1379)
!1761 = !DILocation(line: 153, column: 42, scope: !1369)
!1762 = !DILocation(line: 153, column: 35, scope: !1369)
!1763 = !DILocation(line: 153, column: 20, scope: !1369)
!1764 = !DILocation(line: 153, column: 33, scope: !1369)
!1765 = !{!1440, !1394, i64 12176}
!1766 = !DILocation(line: 154, column: 13, scope: !1369)
!1767 = !DILocation(line: 155, column: 9, scope: !1369)
!1768 = !DILocation(line: 156, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1371, file: !30, line: 156, column: 13)
!1770 = !{!1388, !1390, i64 544}
!1771 = !DILocation(line: 156, column: 13, scope: !1769)
!1772 = !DILocation(line: 156, column: 13, scope: !1371)
!1773 = !DILocation(line: 158, column: 13, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !30, line: 158, column: 13)
!1775 = distinct !DILexicalBlock(scope: !1769, file: !30, line: 157, column: 9)
!1776 = !{!1440, !1394, i64 12152}
!1777 = !DILocation(line: 158, column: 13, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !30, line: 158, column: 13)
!1779 = !DILocation(line: 159, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1775, file: !30, line: 159, column: 13)
!1781 = !{!1440, !1394, i64 12160}
!1782 = !DILocation(line: 159, column: 13, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !30, line: 159, column: 13)
!1784 = !DILocation(line: 160, column: 27, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1775, file: !30, line: 160, column: 17)
!1786 = !DILocation(line: 160, column: 17, scope: !1785)
!1787 = !DILocation(line: 160, column: 17, scope: !1775)
!1788 = !DILocation(line: 162, column: 17, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !30, line: 162, column: 17)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !30, line: 162, column: 17)
!1791 = !{!1440, !1394, i64 12192}
!1792 = !DILocation(line: 162, column: 17, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !30, line: 162, column: 17)
!1794 = !DILocation(line: 162, column: 17, scope: !1790)
!1795 = !DILocation(line: 173, column: 1, scope: !29)
!1796 = !DILocation(line: 174, column: 5, scope: !29)
!1797 = !DILocation(line: 175, column: 5, scope: !29)
!1798 = !DILocation(line: 176, column: 1, scope: !29)
!1799 = !DISubprogram(name: "x264_malloc", scope: !383, file: !383, line: 174, type: !1800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1802)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!119, !39}
!1802 = !{}
!1803 = !DISubprogram(name: "x264_free", scope: !383, file: !383, line: 175, type: !227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1802)
!1804 = distinct !DISubprogram(name: "x264_frame_delete", scope: !30, file: !30, line: 178, type: !1805, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1807)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{null, !33}
!1807 = !{!1808, !1809, !1813, !1815, !1817, !1820, !1822, !1825, !1827}
!1808 = !DILocalVariable(name: "frame", arg: 1, scope: !1804, file: !30, line: 178, type: !33)
!1809 = !DILocalVariable(name: "i", scope: !1810, file: !30, line: 184, type: !39)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !30, line: 184, column: 9)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !30, line: 183, column: 5)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !30, line: 182, column: 9)
!1813 = !DILocalVariable(name: "i", scope: !1814, file: !30, line: 186, type: !39)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !30, line: 186, column: 9)
!1815 = !DILocalVariable(name: "i", scope: !1816, file: !30, line: 188, type: !39)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !30, line: 188, column: 9)
!1817 = !DILocalVariable(name: "j", scope: !1818, file: !30, line: 189, type: !39)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !30, line: 189, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1816, file: !30, line: 188, column: 9)
!1820 = !DILocalVariable(name: "j", scope: !1821, file: !30, line: 191, type: !39)
!1821 = distinct !DILexicalBlock(scope: !1811, file: !30, line: 191, column: 9)
!1822 = !DILocalVariable(name: "i", scope: !1823, file: !30, line: 192, type: !39)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !30, line: 192, column: 13)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !30, line: 191, column: 9)
!1825 = !DILocalVariable(name: "j", scope: !1826, file: !30, line: 198, type: !39)
!1826 = distinct !DILexicalBlock(scope: !1811, file: !30, line: 198, column: 9)
!1827 = !DILocalVariable(name: "i", scope: !1828, file: !30, line: 199, type: !39)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !30, line: 199, column: 13)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !30, line: 198, column: 9)
!1830 = !DILocation(line: 0, scope: !1804)
!1831 = !DILocation(line: 182, column: 17, scope: !1812)
!1832 = !DILocation(line: 182, column: 10, scope: !1812)
!1833 = !DILocation(line: 182, column: 9, scope: !1804)
!1834 = !DILocation(line: 0, scope: !1810)
!1835 = !DILocation(line: 185, column: 24, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1810, file: !30, line: 184, column: 9)
!1837 = !DILocation(line: 185, column: 13, scope: !1836)
!1838 = !DILocation(line: 184, column: 33, scope: !1836)
!1839 = !DILocation(line: 184, column: 27, scope: !1836)
!1840 = !DILocation(line: 184, column: 9, scope: !1810)
!1841 = distinct !{!1841, !1840, !1842, !1473, !1474}
!1842 = !DILocation(line: 185, column: 41, scope: !1810)
!1843 = !DILocation(line: 0, scope: !1814)
!1844 = !DILocation(line: 187, column: 24, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1814, file: !30, line: 186, column: 9)
!1846 = !DILocation(line: 187, column: 13, scope: !1845)
!1847 = !DILocation(line: 186, column: 33, scope: !1845)
!1848 = !DILocation(line: 186, column: 27, scope: !1845)
!1849 = !DILocation(line: 186, column: 9, scope: !1814)
!1850 = distinct !{!1850, !1849, !1851, !1473, !1474}
!1851 = !DILocation(line: 187, column: 48, scope: !1814)
!1852 = !DILocation(line: 0, scope: !1816)
!1853 = !DILocation(line: 0, scope: !1818)
!1854 = !DILocation(line: 189, column: 13, scope: !1818)
!1855 = !DILocation(line: 188, column: 49, scope: !1819)
!1856 = !DILocation(line: 188, column: 27, scope: !1819)
!1857 = !DILocation(line: 188, column: 9, scope: !1816)
!1858 = distinct !{!1858, !1857, !1859, !1473, !1474}
!1859 = !DILocation(line: 190, column: 53, scope: !1816)
!1860 = !DILocation(line: 190, column: 28, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1818, file: !30, line: 189, column: 13)
!1862 = !DILocation(line: 190, column: 17, scope: !1861)
!1863 = !DILocation(line: 189, column: 53, scope: !1861)
!1864 = !DILocation(line: 189, column: 31, scope: !1861)
!1865 = distinct !{!1865, !1854, !1866, !1473, !1474}
!1866 = !DILocation(line: 190, column: 53, scope: !1818)
!1867 = !DILocation(line: 0, scope: !1821)
!1868 = !DILocation(line: 0, scope: !1823)
!1869 = !DILocation(line: 192, column: 13, scope: !1823)
!1870 = !DILocation(line: 197, column: 27, scope: !1811)
!1871 = !DILocation(line: 197, column: 9, scope: !1811)
!1872 = !DILocation(line: 0, scope: !1826)
!1873 = !DILocation(line: 198, column: 9, scope: !1826)
!1874 = !DILocation(line: 191, column: 9, scope: !1821)
!1875 = distinct !{!1875, !1874, !1876, !1473, !1474}
!1876 = !DILocation(line: 196, column: 13, scope: !1821)
!1877 = !DILocation(line: 194, column: 28, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !30, line: 193, column: 13)
!1879 = distinct !DILexicalBlock(scope: !1823, file: !30, line: 192, column: 13)
!1880 = !DILocation(line: 194, column: 17, scope: !1878)
!1881 = !DILocation(line: 195, column: 28, scope: !1878)
!1882 = !DILocation(line: 195, column: 17, scope: !1878)
!1883 = !DILocation(line: 192, column: 52, scope: !1879)
!1884 = !DILocation(line: 192, column: 31, scope: !1879)
!1885 = distinct !{!1885, !1869, !1886, !1473, !1474}
!1886 = !DILocation(line: 196, column: 13, scope: !1823)
!1887 = !DILocation(line: 0, scope: !1828)
!1888 = !DILocation(line: 199, column: 13, scope: !1828)
!1889 = !DILocation(line: 201, column: 27, scope: !1811)
!1890 = !DILocation(line: 201, column: 9, scope: !1811)
!1891 = !DILocation(line: 202, column: 27, scope: !1811)
!1892 = !DILocation(line: 202, column: 9, scope: !1811)
!1893 = !DILocation(line: 203, column: 27, scope: !1811)
!1894 = !DILocation(line: 203, column: 9, scope: !1811)
!1895 = !DILocation(line: 204, column: 27, scope: !1811)
!1896 = !DILocation(line: 204, column: 9, scope: !1811)
!1897 = !DILocation(line: 205, column: 27, scope: !1811)
!1898 = !DILocation(line: 205, column: 9, scope: !1811)
!1899 = !DILocation(line: 206, column: 27, scope: !1811)
!1900 = !DILocation(line: 206, column: 9, scope: !1811)
!1901 = !DILocation(line: 207, column: 27, scope: !1811)
!1902 = !DILocation(line: 207, column: 9, scope: !1811)
!1903 = !DILocation(line: 208, column: 27, scope: !1811)
!1904 = !DILocation(line: 208, column: 20, scope: !1811)
!1905 = !DILocation(line: 208, column: 9, scope: !1811)
!1906 = !DILocation(line: 209, column: 20, scope: !1811)
!1907 = !DILocation(line: 209, column: 9, scope: !1811)
!1908 = !DILocation(line: 210, column: 27, scope: !1811)
!1909 = !DILocation(line: 210, column: 9, scope: !1811)
!1910 = !DILocation(line: 211, column: 27, scope: !1811)
!1911 = !DILocation(line: 211, column: 20, scope: !1811)
!1912 = !DILocation(line: 211, column: 9, scope: !1811)
!1913 = !DILocation(line: 212, column: 20, scope: !1811)
!1914 = !DILocation(line: 212, column: 9, scope: !1811)
!1915 = !DILocation(line: 215, column: 5, scope: !1811)
!1916 = !DILocation(line: 198, column: 50, scope: !1829)
!1917 = !DILocation(line: 198, column: 27, scope: !1829)
!1918 = distinct !{!1918, !1873, !1919, !1473, !1474}
!1919 = !DILocation(line: 200, column: 54, scope: !1826)
!1920 = !DILocation(line: 200, column: 28, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1828, file: !30, line: 199, column: 13)
!1922 = !DILocation(line: 200, column: 17, scope: !1921)
!1923 = !DILocation(line: 199, column: 54, scope: !1921)
!1924 = !DILocation(line: 199, column: 31, scope: !1921)
!1925 = distinct !{!1925, !1888, !1926, !1473, !1474}
!1926 = !DILocation(line: 200, column: 54, scope: !1828)
!1927 = !DILocation(line: 216, column: 5, scope: !1804)
!1928 = !DILocation(line: 217, column: 1, scope: !1804)
!1929 = distinct !DISubprogram(name: "x264_frame_copy_picture", scope: !30, file: !30, line: 219, type: !1930, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1953)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!39, !380, !33, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !4, line: 549, baseType: !1934)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 513, size: 1088, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1951, !1952}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1934, file: !4, line: 521, baseType: !39, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1934, file: !4, line: 523, baseType: !39, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !1934, file: !4, line: 526, baseType: !39, size: 32, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !1934, file: !4, line: 529, baseType: !39, size: 32, offset: 96)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1934, file: !4, line: 531, baseType: !43, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !1934, file: !4, line: 534, baseType: !43, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1934, file: !4, line: 541, baseType: !53, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !1934, file: !4, line: 543, baseType: !1944, size: 448, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !4, line: 511, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 505, size: 448, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !1945, file: !4, line: 507, baseType: !39, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1945, file: !4, line: 508, baseType: !39, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1945, file: !4, line: 509, baseType: !1059, size: 128, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1945, file: !4, line: 510, baseType: !256, size: 256, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !1934, file: !4, line: 545, baseType: !353, size: 256, offset: 768)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1934, file: !4, line: 548, baseType: !119, size: 64, offset: 1024)
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1960, !1963, !1964, !1965, !1966}
!1954 = !DILocalVariable(name: "h", arg: 1, scope: !1929, file: !30, line: 219, type: !380)
!1955 = !DILocalVariable(name: "dst", arg: 2, scope: !1929, file: !30, line: 219, type: !33)
!1956 = !DILocalVariable(name: "src", arg: 3, scope: !1929, file: !30, line: 219, type: !1932)
!1957 = !DILocalVariable(name: "i_csp", scope: !1929, file: !30, line: 221, type: !39)
!1958 = !DILocalVariable(name: "i", scope: !1959, file: !30, line: 234, type: !39)
!1959 = distinct !DILexicalBlock(scope: !1929, file: !30, line: 234, column: 5)
!1960 = !DILocalVariable(name: "s", scope: !1961, file: !30, line: 236, type: !39)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !30, line: 235, column: 5)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !30, line: 234, column: 5)
!1963 = !DILocalVariable(name: "plane", scope: !1961, file: !30, line: 237, type: !254)
!1964 = !DILocalVariable(name: "stride", scope: !1961, file: !30, line: 238, type: !39)
!1965 = !DILocalVariable(name: "width", scope: !1961, file: !30, line: 239, type: !39)
!1966 = !DILocalVariable(name: "height", scope: !1961, file: !30, line: 240, type: !39)
!1967 = !DILocation(line: 0, scope: !1929)
!1968 = !DILocation(line: 221, column: 22, scope: !1929)
!1969 = !DILocation(line: 221, column: 26, scope: !1929)
!1970 = !{!1971, !1390, i64 40}
!1971 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1400, i64 16, !1400, i64 24, !1394, i64 32, !1972, i64 40, !1441, i64 96, !1394, i64 128}
!1972 = !{!"", !1390, i64 0, !1390, i64 4, !1391, i64 8, !1391, i64 24}
!1973 = !DILocation(line: 222, column: 32, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1929, file: !30, line: 222, column: 9)
!1975 = !DILocation(line: 224, column: 9, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !30, line: 223, column: 5)
!1977 = !DILocation(line: 225, column: 9, scope: !1976)
!1978 = !DILocation(line: 221, column: 32, scope: !1929)
!1979 = !DILocation(line: 228, column: 28, scope: !1929)
!1980 = !{!1971, !1390, i64 0}
!1981 = !DILocation(line: 228, column: 10, scope: !1929)
!1982 = !DILocation(line: 228, column: 21, scope: !1929)
!1983 = !DILocation(line: 229, column: 28, scope: !1929)
!1984 = !{!1971, !1390, i64 4}
!1985 = !DILocation(line: 229, column: 10, scope: !1929)
!1986 = !DILocation(line: 229, column: 21, scope: !1929)
!1987 = !DILocation(line: 230, column: 51, scope: !1929)
!1988 = !{!1971, !1400, i64 16}
!1989 = !DILocation(line: 230, column: 28, scope: !1929)
!1990 = !DILocation(line: 230, column: 44, scope: !1929)
!1991 = !{!1440, !1400, i64 24}
!1992 = !DILocation(line: 230, column: 10, scope: !1929)
!1993 = !DILocation(line: 230, column: 21, scope: !1929)
!1994 = !DILocation(line: 231, column: 28, scope: !1929)
!1995 = !{!1971, !1394, i64 32}
!1996 = !DILocation(line: 231, column: 10, scope: !1929)
!1997 = !DILocation(line: 231, column: 21, scope: !1929)
!1998 = !{!1440, !1394, i64 48}
!1999 = !DILocation(line: 232, column: 30, scope: !1929)
!2000 = !{!1971, !1390, i64 8}
!2001 = !DILocation(line: 232, column: 10, scope: !1929)
!2002 = !DILocation(line: 232, column: 23, scope: !1929)
!2003 = !DILocation(line: 0, scope: !1959)
!2004 = !DILocation(line: 234, column: 5, scope: !1959)
!2005 = !DILocation(line: 241, column: 22, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1961, file: !30, line: 241, column: 13)
!2007 = !DILocation(line: 236, column: 41, scope: !1961)
!2008 = !DILocation(line: 237, column: 26, scope: !1961)
!2009 = !DILocation(line: 0, scope: !1961)
!2010 = !DILocation(line: 238, column: 22, scope: !1961)
!2011 = !DILocation(line: 239, column: 30, scope: !1961)
!2012 = !DILocation(line: 239, column: 41, scope: !1961)
!2013 = !DILocation(line: 239, column: 38, scope: !1961)
!2014 = !DILocation(line: 240, column: 31, scope: !1961)
!2015 = !DILocation(line: 240, column: 40, scope: !1961)
!2016 = !DILocation(line: 241, column: 28, scope: !2006)
!2017 = !DILocation(line: 241, column: 13, scope: !1961)
!2018 = !DILocation(line: 243, column: 29, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2006, file: !30, line: 242, column: 9)
!2020 = !DILocation(line: 243, column: 32, scope: !2019)
!2021 = !DILocation(line: 243, column: 19, scope: !2019)
!2022 = !DILocation(line: 244, column: 22, scope: !2019)
!2023 = !DILocation(line: 245, column: 9, scope: !2019)
!2024 = !DILocation(line: 246, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1961, file: !30, line: 246, column: 13)
!2026 = !DILocation(line: 246, column: 19, scope: !2025)
!2027 = !DILocation(line: 246, column: 13, scope: !1961)
!2028 = !DILocation(line: 248, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2025, file: !30, line: 247, column: 9)
!2030 = !DILocation(line: 251, column: 15, scope: !1961)
!2031 = !{!1388, !1394, i64 32784}
!2032 = !DILocation(line: 251, column: 27, scope: !1961)
!2033 = !DILocation(line: 251, column: 42, scope: !1961)
!2034 = !DILocation(line: 251, column: 9, scope: !1961)
!2035 = !DILocation(line: 234, column: 29, scope: !1962)
!2036 = !DILocation(line: 234, column: 23, scope: !1962)
!2037 = distinct !{!2037, !2004, !2038, !1473, !1474}
!2038 = !DILocation(line: 252, column: 5, scope: !1959)
!2039 = !DILocation(line: 254, column: 1, scope: !1929)
!2040 = !DISubprogram(name: "x264_log", scope: !383, file: !383, line: 190, type: !2041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1802)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !380, !39, !120, null}
!2043 = distinct !DISubprogram(name: "x264_frame_expand_border", scope: !30, file: !30, line: 279, type: !2044, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !380, !33, !39, !39}
!2046 = !{!2047, !2048, !2049, !2050, !2051, !2052, !2054, !2057, !2058, !2059, !2060, !2061}
!2047 = !DILocalVariable(name: "h", arg: 1, scope: !2043, file: !30, line: 279, type: !380)
!2048 = !DILocalVariable(name: "frame", arg: 2, scope: !2043, file: !30, line: 279, type: !33)
!2049 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2043, file: !30, line: 279, type: !39)
!2050 = !DILocalVariable(name: "b_end", arg: 4, scope: !2043, file: !30, line: 279, type: !39)
!2051 = !DILocalVariable(name: "b_start", scope: !2043, file: !30, line: 281, type: !39)
!2052 = !DILocalVariable(name: "i", scope: !2053, file: !30, line: 284, type: !39)
!2053 = distinct !DILexicalBlock(scope: !2043, file: !30, line: 284, column: 5)
!2054 = !DILocalVariable(name: "stride", scope: !2055, file: !30, line: 286, type: !39)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !30, line: 285, column: 5)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !30, line: 284, column: 5)
!2057 = !DILocalVariable(name: "width", scope: !2055, file: !30, line: 287, type: !39)
!2058 = !DILocalVariable(name: "height", scope: !2055, file: !30, line: 288, type: !39)
!2059 = !DILocalVariable(name: "padh", scope: !2055, file: !30, line: 289, type: !39)
!2060 = !DILocalVariable(name: "padv", scope: !2055, file: !30, line: 290, type: !39)
!2061 = !DILocalVariable(name: "pix", scope: !2055, file: !30, line: 292, type: !254)
!2062 = !DILocation(line: 0, scope: !2043)
!2063 = !DILocation(line: 281, column: 19, scope: !2043)
!2064 = !DILocation(line: 282, column: 22, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2043, file: !30, line: 282, column: 9)
!2066 = !{!1388, !1390, i64 7268}
!2067 = !DILocation(line: 282, column: 14, scope: !2065)
!2068 = !DILocation(line: 282, column: 9, scope: !2043)
!2069 = !DILocation(line: 0, scope: !2053)
!2070 = !DILocation(line: 284, column: 32, scope: !2056)
!2071 = !DILocation(line: 284, column: 23, scope: !2056)
!2072 = !DILocation(line: 284, column: 5, scope: !2053)
!2073 = !DILocation(line: 286, column: 22, scope: !2055)
!2074 = !DILocation(line: 0, scope: !2055)
!2075 = !DILocation(line: 287, column: 27, scope: !2055)
!2076 = !{!1388, !1394, i64 3200}
!2077 = !DILocation(line: 287, column: 32, scope: !2055)
!2078 = !{!2079, !1390, i64 1084}
!2079 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1390, i64 48, !1391, i64 52, !1390, i64 1076, !1390, i64 1080, !1390, i64 1084, !1390, i64 1088, !1390, i64 1092, !1390, i64 1096, !1390, i64 1100, !1390, i64 1104, !2080, i64 1108, !1390, i64 1124, !2081, i64 1128, !1390, i64 1296}
!2080 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12}
!2081 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44, !1390, i64 48, !1390, i64 52, !1390, i64 56, !1390, i64 60, !1390, i64 64, !1390, i64 68, !1390, i64 72, !1390, i64 76, !1390, i64 80, !2082, i64 84, !1390, i64 132, !1390, i64 136, !1390, i64 140, !1390, i64 144, !1390, i64 148, !1390, i64 152, !1390, i64 156, !1390, i64 160, !1390, i64 164}
!2082 = !{!"", !1390, i64 0, !1390, i64 4, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24, !1390, i64 28, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1390, i64 44}
!2083 = !DILocation(line: 287, column: 23, scope: !2055)
!2084 = !DILocation(line: 287, column: 47, scope: !2055)
!2085 = !DILocation(line: 287, column: 46, scope: !2055)
!2086 = !DILocation(line: 287, column: 43, scope: !2055)
!2087 = !DILocation(line: 288, column: 23, scope: !2055)
!2088 = !DILocation(line: 288, column: 43, scope: !2055)
!2089 = !{!2079, !1390, i64 1088}
!2090 = !DILocation(line: 288, column: 55, scope: !2055)
!2091 = !DILocation(line: 288, column: 33, scope: !2055)
!2092 = !DILocation(line: 288, column: 72, scope: !2055)
!2093 = !DILocation(line: 288, column: 63, scope: !2055)
!2094 = !DILocation(line: 288, column: 86, scope: !2055)
!2095 = !DILocation(line: 289, column: 25, scope: !2055)
!2096 = !DILocation(line: 292, column: 24, scope: !2055)
!2097 = !DILocation(line: 292, column: 42, scope: !2055)
!2098 = !DILocation(line: 292, column: 40, scope: !2055)
!2099 = !DILocation(line: 293, column: 19, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2055, file: !30, line: 293, column: 13)
!2101 = !DILocation(line: 294, column: 33, scope: !2100)
!2102 = !DILocation(line: 294, column: 25, scope: !2100)
!2103 = !DILocation(line: 294, column: 20, scope: !2100)
!2104 = !DILocation(line: 294, column: 13, scope: !2100)
!2105 = !DILocation(line: 295, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2055, file: !30, line: 295, column: 13)
!2107 = !DILocation(line: 295, column: 13, scope: !2055)
!2108 = !DILocation(line: 297, column: 45, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2106, file: !30, line: 296, column: 9)
!2110 = !DILocalVariable(name: "pix", arg: 1, scope: !2111, file: !30, line: 258, type: !254)
!2111 = distinct !DISubprogram(name: "plane_expand_border", scope: !30, file: !30, line: 258, type: !2112, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !254, !39, !39, !39, !39, !39, !39, !39}
!2114 = !{!2110, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2124, !2127}
!2115 = !DILocalVariable(name: "i_stride", arg: 2, scope: !2111, file: !30, line: 258, type: !39)
!2116 = !DILocalVariable(name: "i_width", arg: 3, scope: !2111, file: !30, line: 258, type: !39)
!2117 = !DILocalVariable(name: "i_height", arg: 4, scope: !2111, file: !30, line: 258, type: !39)
!2118 = !DILocalVariable(name: "i_padh", arg: 5, scope: !2111, file: !30, line: 258, type: !39)
!2119 = !DILocalVariable(name: "i_padv", arg: 6, scope: !2111, file: !30, line: 258, type: !39)
!2120 = !DILocalVariable(name: "b_pad_top", arg: 7, scope: !2111, file: !30, line: 258, type: !39)
!2121 = !DILocalVariable(name: "b_pad_bottom", arg: 8, scope: !2111, file: !30, line: 258, type: !39)
!2122 = !DILocalVariable(name: "y", scope: !2123, file: !30, line: 261, type: !39)
!2123 = distinct !DILexicalBlock(scope: !2111, file: !30, line: 261, column: 5)
!2124 = !DILocalVariable(name: "y", scope: !2125, file: !30, line: 270, type: !39)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !30, line: 270, column: 9)
!2126 = distinct !DILexicalBlock(scope: !2111, file: !30, line: 269, column: 9)
!2127 = !DILocalVariable(name: "y", scope: !2128, file: !30, line: 274, type: !39)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !30, line: 274, column: 9)
!2129 = distinct !DILexicalBlock(scope: !2111, file: !30, line: 273, column: 9)
!2130 = !DILocation(line: 0, scope: !2111, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 297, column: 13, scope: !2109)
!2132 = !DILocation(line: 0, scope: !2123, inlinedAt: !2131)
!2133 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2131)
!2134 = distinct !DILexicalBlock(scope: !2123, file: !30, line: 261, column: 5)
!2135 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2131)
!2136 = !DILocation(line: 0, scope: !2125, inlinedAt: !2131)
!2137 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2131)
!2138 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2131)
!2139 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2131)
!2140 = distinct !DILexicalBlock(scope: !2125, file: !30, line: 270, column: 9)
!2141 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2131)
!2142 = distinct !DILexicalBlock(scope: !2134, file: !30, line: 262, column: 5)
!2143 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2131)
!2144 = !{!1391, !1391, i64 0}
!2145 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2131)
!2146 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2131)
!2147 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2131)
!2148 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2131)
!2149 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2131)
!2150 = distinct !{!2150, !2135, !2151, !1473, !1474}
!2151 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2131)
!2152 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2131)
!2153 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2131)
!2154 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2131)
!2155 = distinct !{!2155, !2138, !2156, !1473, !1474}
!2156 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2131)
!2157 = !DILocation(line: 0, scope: !2128, inlinedAt: !2131)
!2158 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2131)
!2159 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2131)
!2160 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2131)
!2161 = distinct !DILexicalBlock(scope: !2128, file: !30, line: 274, column: 9)
!2162 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2131)
!2163 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2131)
!2164 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2131)
!2165 = distinct !{!2165, !2159, !2166, !1473, !1474}
!2166 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2131)
!2167 = !DILocation(line: 298, column: 37, scope: !2109)
!2168 = !DILocation(line: 0, scope: !2111, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 298, column: 13, scope: !2109)
!2170 = !DILocation(line: 0, scope: !2123, inlinedAt: !2169)
!2171 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2169)
!2172 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2169)
!2173 = !DILocation(line: 0, scope: !2125, inlinedAt: !2169)
!2174 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2169)
!2175 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2169)
!2176 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2169)
!2177 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2169)
!2178 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2169)
!2179 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2169)
!2180 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2169)
!2181 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2169)
!2182 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2169)
!2183 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2169)
!2184 = distinct !{!2184, !2171, !2185, !1473, !1474}
!2185 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2169)
!2186 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2169)
!2187 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2169)
!2188 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2169)
!2189 = distinct !{!2189, !2175, !2190, !1473, !1474}
!2190 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2169)
!2191 = !DILocation(line: 0, scope: !2128, inlinedAt: !2169)
!2192 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2169)
!2193 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2169)
!2194 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2169)
!2195 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2169)
!2196 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2169)
!2197 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2169)
!2198 = distinct !{!2198, !2193, !2199, !1473, !1474}
!2199 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2169)
!2200 = !DILocation(line: 0, scope: !2111, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 302, column: 13, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2106, file: !30, line: 301, column: 9)
!2203 = !DILocation(line: 0, scope: !2123, inlinedAt: !2201)
!2204 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2201)
!2205 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2201)
!2206 = !DILocation(line: 0, scope: !2125, inlinedAt: !2201)
!2207 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2201)
!2208 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2201)
!2209 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2201)
!2210 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2201)
!2211 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2201)
!2212 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2201)
!2213 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2201)
!2214 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2201)
!2215 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2201)
!2216 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2201)
!2217 = distinct !{!2217, !2205, !2218, !1473, !1474}
!2218 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2201)
!2219 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2201)
!2220 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2201)
!2221 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2201)
!2222 = distinct !{!2222, !2208, !2223, !1473, !1474}
!2223 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2201)
!2224 = !DILocation(line: 0, scope: !2128, inlinedAt: !2201)
!2225 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2201)
!2226 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2201)
!2227 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2201)
!2228 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2201)
!2229 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2201)
!2230 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2201)
!2231 = distinct !{!2231, !2226, !2232, !1473, !1474}
!2232 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2201)
!2233 = !DILocation(line: 284, column: 42, scope: !2056)
!2234 = distinct !{!2234, !2072, !2235, !1473, !1474}
!2235 = !DILocation(line: 304, column: 5, scope: !2053)
!2236 = !DILocation(line: 305, column: 1, scope: !2043)
!2237 = distinct !DISubprogram(name: "x264_frame_expand_border_filtered", scope: !30, file: !30, line: 307, type: !2044, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2251}
!2239 = !DILocalVariable(name: "h", arg: 1, scope: !2237, file: !30, line: 307, type: !380)
!2240 = !DILocalVariable(name: "frame", arg: 2, scope: !2237, file: !30, line: 307, type: !33)
!2241 = !DILocalVariable(name: "mb_y", arg: 3, scope: !2237, file: !30, line: 307, type: !39)
!2242 = !DILocalVariable(name: "b_end", arg: 4, scope: !2237, file: !30, line: 307, type: !39)
!2243 = !DILocalVariable(name: "b_start", scope: !2237, file: !30, line: 312, type: !39)
!2244 = !DILocalVariable(name: "stride", scope: !2237, file: !30, line: 313, type: !39)
!2245 = !DILocalVariable(name: "width", scope: !2237, file: !30, line: 314, type: !39)
!2246 = !DILocalVariable(name: "height", scope: !2237, file: !30, line: 315, type: !39)
!2247 = !DILocalVariable(name: "padh", scope: !2237, file: !30, line: 316, type: !39)
!2248 = !DILocalVariable(name: "padv", scope: !2237, file: !30, line: 317, type: !39)
!2249 = !DILocalVariable(name: "i", scope: !2250, file: !30, line: 318, type: !39)
!2250 = distinct !DILexicalBlock(scope: !2237, file: !30, line: 318, column: 5)
!2251 = !DILocalVariable(name: "pix", scope: !2252, file: !30, line: 321, type: !254)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !30, line: 319, column: 5)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !30, line: 318, column: 5)
!2254 = !DILocation(line: 0, scope: !2237)
!2255 = !DILocation(line: 312, column: 19, scope: !2237)
!2256 = !DILocation(line: 313, column: 25, scope: !2237)
!2257 = !DILocation(line: 313, column: 18, scope: !2237)
!2258 = !DILocation(line: 314, column: 23, scope: !2237)
!2259 = !DILocation(line: 314, column: 28, scope: !2237)
!2260 = !DILocation(line: 314, column: 19, scope: !2237)
!2261 = !DILocation(line: 314, column: 39, scope: !2237)
!2262 = !DILocation(line: 315, column: 18, scope: !2237)
!2263 = !DILocation(line: 315, column: 39, scope: !2237)
!2264 = !DILocation(line: 315, column: 51, scope: !2237)
!2265 = !DILocation(line: 315, column: 29, scope: !2237)
!2266 = !DILocation(line: 315, column: 68, scope: !2237)
!2267 = !DILocation(line: 315, column: 59, scope: !2237)
!2268 = !DILocation(line: 315, column: 77, scope: !2237)
!2269 = !DILocation(line: 0, scope: !2250)
!2270 = !DILocation(line: 318, column: 5, scope: !2250)
!2271 = !DILocation(line: 330, column: 1, scope: !2237)
!2272 = !DILocation(line: 321, column: 24, scope: !2252)
!2273 = !DILocation(line: 321, column: 68, scope: !2252)
!2274 = !DILocation(line: 321, column: 59, scope: !2252)
!2275 = !DILocation(line: 321, column: 54, scope: !2252)
!2276 = !DILocation(line: 321, column: 78, scope: !2252)
!2277 = !DILocation(line: 321, column: 43, scope: !2252)
!2278 = !DILocation(line: 321, column: 87, scope: !2252)
!2279 = !DILocation(line: 0, scope: !2252)
!2280 = !DILocation(line: 322, column: 13, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2252, file: !30, line: 322, column: 13)
!2282 = !DILocation(line: 0, scope: !2111, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 328, column: 13, scope: !2281)
!2284 = !DILocation(line: 0, scope: !2111, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 324, column: 13, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !30, line: 323, column: 9)
!2287 = !DILocation(line: 322, column: 13, scope: !2252)
!2288 = !DILocation(line: 0, scope: !2123, inlinedAt: !2285)
!2289 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2285)
!2290 = !DILocation(line: 0, scope: !2125, inlinedAt: !2285)
!2291 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2285)
!2292 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2285)
!2293 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2285)
!2294 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2285)
!2295 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2285)
!2296 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2285)
!2297 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2285)
!2298 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2285)
!2299 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2285)
!2300 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2285)
!2301 = distinct !{!2301, !2289, !2302, !1473, !1474}
!2302 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2285)
!2303 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2285)
!2304 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2285)
!2305 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2285)
!2306 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2285)
!2307 = distinct !{!2307, !2292, !2308, !1473, !1474}
!2308 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2285)
!2309 = !DILocation(line: 0, scope: !2128, inlinedAt: !2285)
!2310 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2285)
!2311 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2285)
!2312 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2285)
!2313 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2285)
!2314 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2285)
!2315 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2285)
!2316 = distinct !{!2316, !2311, !2317, !1473, !1474}
!2317 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2285)
!2318 = !DILocation(line: 325, column: 37, scope: !2286)
!2319 = !DILocation(line: 0, scope: !2111, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 325, column: 13, scope: !2286)
!2321 = !DILocation(line: 0, scope: !2123, inlinedAt: !2320)
!2322 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2320)
!2323 = !DILocation(line: 0, scope: !2125, inlinedAt: !2320)
!2324 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2320)
!2325 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2320)
!2326 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2320)
!2327 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2320)
!2328 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2320)
!2329 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2320)
!2330 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2320)
!2331 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2320)
!2332 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2320)
!2333 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2320)
!2334 = distinct !{!2334, !2322, !2335, !1473, !1474}
!2335 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2320)
!2336 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2320)
!2337 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2320)
!2338 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2320)
!2339 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2320)
!2340 = distinct !{!2340, !2325, !2341, !1473, !1474}
!2341 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2320)
!2342 = !DILocation(line: 0, scope: !2128, inlinedAt: !2320)
!2343 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2320)
!2344 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2320)
!2345 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2320)
!2346 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2320)
!2347 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2320)
!2348 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2320)
!2349 = distinct !{!2349, !2344, !2350, !1473, !1474}
!2350 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2320)
!2351 = !DILocation(line: 0, scope: !2123, inlinedAt: !2283)
!2352 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2283)
!2353 = !DILocation(line: 0, scope: !2125, inlinedAt: !2283)
!2354 = !DILocation(line: 269, column: 9, scope: !2111, inlinedAt: !2283)
!2355 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2283)
!2356 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2283)
!2357 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2283)
!2358 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2283)
!2359 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2283)
!2360 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2283)
!2361 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2283)
!2362 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2283)
!2363 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2283)
!2364 = distinct !{!2364, !2352, !2365, !1473, !1474}
!2365 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2283)
!2366 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2283)
!2367 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2283)
!2368 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2283)
!2369 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2283)
!2370 = distinct !{!2370, !2355, !2371, !1473, !1474}
!2371 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2283)
!2372 = !DILocation(line: 0, scope: !2128, inlinedAt: !2283)
!2373 = !DILocation(line: 273, column: 9, scope: !2111, inlinedAt: !2283)
!2374 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2283)
!2375 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2283)
!2376 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2283)
!2377 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2283)
!2378 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2283)
!2379 = distinct !{!2379, !2374, !2380, !1473, !1474}
!2380 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2283)
!2381 = !DILocation(line: 318, column: 29, scope: !2253)
!2382 = !DILocation(line: 318, column: 23, scope: !2253)
!2383 = distinct !{!2383, !2270, !2384, !1473, !1474}
!2384 = !DILocation(line: 329, column: 5, scope: !2250)
!2385 = distinct !DISubprogram(name: "x264_frame_expand_border_lowres", scope: !30, file: !30, line: 332, type: !1805, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2386)
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "frame", arg: 1, scope: !2385, file: !30, line: 332, type: !33)
!2388 = !DILocalVariable(name: "i", scope: !2389, file: !30, line: 334, type: !39)
!2389 = distinct !DILexicalBlock(scope: !2385, file: !30, line: 334, column: 5)
!2390 = !DILocation(line: 0, scope: !2385)
!2391 = !DILocation(line: 0, scope: !2389)
!2392 = !DILocation(line: 334, column: 5, scope: !2389)
!2393 = !DILocation(line: 336, column: 1, scope: !2385)
!2394 = !DILocation(line: 335, column: 30, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2389, file: !30, line: 334, column: 5)
!2396 = !DILocation(line: 335, column: 55, scope: !2395)
!2397 = !DILocation(line: 335, column: 79, scope: !2395)
!2398 = !DILocation(line: 335, column: 102, scope: !2395)
!2399 = !DILocation(line: 0, scope: !2111, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 335, column: 9, scope: !2395)
!2401 = !DILocation(line: 0, scope: !2123, inlinedAt: !2400)
!2402 = !DILocation(line: 261, column: 23, scope: !2134, inlinedAt: !2400)
!2403 = !DILocation(line: 261, column: 5, scope: !2123, inlinedAt: !2400)
!2404 = !DILocation(line: 270, column: 9, scope: !2125, inlinedAt: !2400)
!2405 = !DILocation(line: 0, scope: !2125, inlinedAt: !2400)
!2406 = !DILocation(line: 264, column: 17, scope: !2142, inlinedAt: !2400)
!2407 = !DILocation(line: 264, column: 37, scope: !2142, inlinedAt: !2400)
!2408 = !DILocation(line: 264, column: 9, scope: !2142, inlinedAt: !2400)
!2409 = !DILocation(line: 266, column: 17, scope: !2142, inlinedAt: !2400)
!2410 = !DILocation(line: 266, column: 37, scope: !2142, inlinedAt: !2400)
!2411 = !DILocation(line: 266, column: 9, scope: !2142, inlinedAt: !2400)
!2412 = !DILocation(line: 261, column: 36, scope: !2134, inlinedAt: !2400)
!2413 = distinct !{!2413, !2403, !2414, !1473, !1474}
!2414 = !DILocation(line: 267, column: 5, scope: !2123, inlinedAt: !2400)
!2415 = !DILocation(line: 271, column: 21, scope: !2140, inlinedAt: !2400)
!2416 = !DILocation(line: 271, column: 13, scope: !2140, inlinedAt: !2400)
!2417 = !DILocation(line: 270, column: 38, scope: !2140, inlinedAt: !2400)
!2418 = !DILocation(line: 270, column: 27, scope: !2140, inlinedAt: !2400)
!2419 = distinct !{!2419, !2404, !2420, !1473, !1474}
!2420 = !DILocation(line: 271, column: 81, scope: !2125, inlinedAt: !2400)
!2421 = !DILocation(line: 0, scope: !2128, inlinedAt: !2400)
!2422 = !DILocation(line: 274, column: 9, scope: !2128, inlinedAt: !2400)
!2423 = !DILocation(line: 275, column: 21, scope: !2161, inlinedAt: !2400)
!2424 = !DILocation(line: 275, column: 13, scope: !2161, inlinedAt: !2400)
!2425 = !DILocation(line: 274, column: 38, scope: !2161, inlinedAt: !2400)
!2426 = !DILocation(line: 274, column: 27, scope: !2161, inlinedAt: !2400)
!2427 = distinct !{!2427, !2422, !2428, !1473, !1474}
!2428 = !DILocation(line: 275, column: 96, scope: !2128, inlinedAt: !2400)
!2429 = !DILocation(line: 334, column: 29, scope: !2395)
!2430 = !DILocation(line: 334, column: 23, scope: !2395)
!2431 = distinct !{!2431, !2392, !2432, !1473, !1474}
!2432 = !DILocation(line: 335, column: 135, scope: !2389)
!2433 = distinct !DISubprogram(name: "x264_frame_expand_border_mod16", scope: !30, file: !30, line: 338, type: !2434, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !380, !33}
!2436 = !{!2437, !2438, !2439, !2441, !2444, !2445, !2446, !2447, !2448, !2452}
!2437 = !DILocalVariable(name: "h", arg: 1, scope: !2433, file: !30, line: 338, type: !380)
!2438 = !DILocalVariable(name: "frame", arg: 2, scope: !2433, file: !30, line: 338, type: !33)
!2439 = !DILocalVariable(name: "i", scope: !2440, file: !30, line: 340, type: !39)
!2440 = distinct !DILexicalBlock(scope: !2433, file: !30, line: 340, column: 5)
!2441 = !DILocalVariable(name: "i_subsample", scope: !2442, file: !30, line: 342, type: !39)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !30, line: 341, column: 5)
!2443 = distinct !DILexicalBlock(scope: !2440, file: !30, line: 340, column: 5)
!2444 = !DILocalVariable(name: "i_width", scope: !2442, file: !30, line: 343, type: !39)
!2445 = !DILocalVariable(name: "i_height", scope: !2442, file: !30, line: 344, type: !39)
!2446 = !DILocalVariable(name: "i_padx", scope: !2442, file: !30, line: 345, type: !39)
!2447 = !DILocalVariable(name: "i_pady", scope: !2442, file: !30, line: 346, type: !39)
!2448 = !DILocalVariable(name: "y", scope: !2449, file: !30, line: 350, type: !39)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !30, line: 350, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !30, line: 349, column: 9)
!2451 = distinct !DILexicalBlock(scope: !2442, file: !30, line: 348, column: 13)
!2452 = !DILocalVariable(name: "y", scope: !2453, file: !30, line: 357, type: !39)
!2453 = distinct !DILexicalBlock(scope: !2454, file: !30, line: 357, column: 13)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !30, line: 356, column: 9)
!2455 = distinct !DILexicalBlock(scope: !2442, file: !30, line: 355, column: 13)
!2456 = !DILocation(line: 0, scope: !2433)
!2457 = !DILocation(line: 0, scope: !2440)
!2458 = !DILocation(line: 340, column: 32, scope: !2443)
!2459 = !DILocation(line: 340, column: 23, scope: !2443)
!2460 = !DILocation(line: 340, column: 5, scope: !2440)
!2461 = !DILocation(line: 363, column: 1, scope: !2433)
!2462 = !DILocation(line: 342, column: 27, scope: !2442)
!2463 = !DILocation(line: 0, scope: !2442)
!2464 = !DILocation(line: 343, column: 32, scope: !2442)
!2465 = !DILocation(line: 343, column: 40, scope: !2442)
!2466 = !DILocation(line: 344, column: 33, scope: !2442)
!2467 = !DILocation(line: 344, column: 42, scope: !2442)
!2468 = !DILocation(line: 345, column: 26, scope: !2442)
!2469 = !DILocation(line: 345, column: 31, scope: !2442)
!2470 = !DILocation(line: 345, column: 42, scope: !2442)
!2471 = !DILocation(line: 345, column: 47, scope: !2442)
!2472 = !DILocation(line: 345, column: 67, scope: !2442)
!2473 = !DILocation(line: 346, column: 31, scope: !2442)
!2474 = !DILocation(line: 346, column: 43, scope: !2442)
!2475 = !DILocation(line: 346, column: 48, scope: !2442)
!2476 = !DILocation(line: 346, column: 69, scope: !2442)
!2477 = !DILocation(line: 348, column: 13, scope: !2451)
!2478 = !DILocation(line: 348, column: 13, scope: !2442)
!2479 = !DILocation(line: 0, scope: !2449)
!2480 = !DILocation(line: 350, column: 13, scope: !2449)
!2481 = !DILocation(line: 351, column: 26, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2449, file: !30, line: 350, column: 13)
!2483 = !DILocation(line: 351, column: 44, scope: !2482)
!2484 = !DILocation(line: 351, column: 43, scope: !2482)
!2485 = !DILocation(line: 351, column: 63, scope: !2482)
!2486 = !DILocation(line: 352, column: 73, scope: !2482)
!2487 = !DILocation(line: 352, column: 26, scope: !2482)
!2488 = !DILocation(line: 351, column: 17, scope: !2482)
!2489 = !DILocation(line: 350, column: 44, scope: !2482)
!2490 = !DILocation(line: 350, column: 31, scope: !2482)
!2491 = distinct !{!2491, !2480, !2492, !1473, !1474}
!2492 = !DILocation(line: 353, column: 33, scope: !2449)
!2493 = !DILocation(line: 355, column: 13, scope: !2455)
!2494 = !DILocation(line: 355, column: 13, scope: !2442)
!2495 = !DILocation(line: 0, scope: !2453)
!2496 = !DILocation(line: 357, column: 38, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2453, file: !30, line: 357, column: 13)
!2498 = !DILocation(line: 357, column: 13, scope: !2453)
!2499 = !DILocation(line: 358, column: 26, scope: !2497)
!2500 = !DILocation(line: 358, column: 44, scope: !2497)
!2501 = !DILocation(line: 358, column: 43, scope: !2497)
!2502 = !DILocation(line: 359, column: 65, scope: !2497)
!2503 = !DILocation(line: 359, column: 78, scope: !2497)
!2504 = !DILocation(line: 359, column: 81, scope: !2497)
!2505 = !DILocation(line: 359, column: 26, scope: !2497)
!2506 = !DILocation(line: 358, column: 17, scope: !2497)
!2507 = !DILocation(line: 357, column: 60, scope: !2497)
!2508 = distinct !{!2508, !2498, !2509, !1473, !1474}
!2509 = !DILocation(line: 360, column: 42, scope: !2453)
!2510 = !DILocation(line: 340, column: 42, scope: !2443)
!2511 = distinct !{!2511, !2460, !2512, !1473, !1474}
!2512 = !DILocation(line: 362, column: 5, scope: !2440)
!2513 = distinct !DISubprogram(name: "x264_frame_cond_broadcast", scope: !30, file: !30, line: 366, type: !2514, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !33, !39}
!2516 = !{!2517, !2518}
!2517 = !DILocalVariable(name: "frame", arg: 1, scope: !2513, file: !30, line: 366, type: !33)
!2518 = !DILocalVariable(name: "i_lines_completed", arg: 2, scope: !2513, file: !30, line: 366, type: !39)
!2519 = !DILocation(line: 0, scope: !2513)
!2520 = !DILocation(line: 369, column: 12, scope: !2513)
!2521 = !DILocation(line: 369, column: 30, scope: !2513)
!2522 = !DILocation(line: 372, column: 1, scope: !2513)
!2523 = distinct !DISubprogram(name: "x264_frame_cond_wait", scope: !30, file: !30, line: 374, type: !2514, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2524)
!2524 = !{!2525, !2526}
!2525 = !DILocalVariable(name: "frame", arg: 1, scope: !2523, file: !30, line: 374, type: !33)
!2526 = !DILocalVariable(name: "i_lines_completed", arg: 2, scope: !2523, file: !30, line: 374, type: !39)
!2527 = !DILocation(line: 0, scope: !2523)
!2528 = !DILocation(line: 377, column: 5, scope: !2523)
!2529 = distinct !{!2529, !2528, !2530, !1473, !1474}
!2530 = !DILocation(line: 378, column: 60, scope: !2523)
!2531 = !DILocation(line: 380, column: 1, scope: !2523)
!2532 = distinct !DISubprogram(name: "x264_frame_push", scope: !30, file: !30, line: 384, type: !2533, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !663, !33}
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "list", arg: 1, scope: !2532, file: !30, line: 384, type: !663)
!2537 = !DILocalVariable(name: "frame", arg: 2, scope: !2532, file: !30, line: 384, type: !33)
!2538 = !DILocalVariable(name: "i", scope: !2532, file: !30, line: 386, type: !39)
!2539 = !DILocation(line: 0, scope: !2532)
!2540 = !DILocation(line: 387, column: 5, scope: !2532)
!2541 = !DILocation(line: 387, column: 12, scope: !2532)
!2542 = !DILocation(line: 387, column: 23, scope: !2532)
!2543 = distinct !{!2543, !2540, !2542, !1473, !1474}
!2544 = !DILocation(line: 388, column: 13, scope: !2532)
!2545 = !DILocation(line: 389, column: 1, scope: !2532)
!2546 = distinct !DISubprogram(name: "x264_frame_pop", scope: !30, file: !30, line: 391, type: !2547, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!33, !663}
!2549 = !{!2550, !2551, !2552}
!2550 = !DILocalVariable(name: "list", arg: 1, scope: !2546, file: !30, line: 391, type: !663)
!2551 = !DILocalVariable(name: "frame", scope: !2546, file: !30, line: 393, type: !33)
!2552 = !DILocalVariable(name: "i", scope: !2546, file: !30, line: 394, type: !39)
!2553 = !DILocation(line: 0, scope: !2546)
!2554 = !DILocation(line: 396, column: 5, scope: !2546)
!2555 = !DILocation(line: 396, column: 18, scope: !2546)
!2556 = !DILocation(line: 396, column: 12, scope: !2546)
!2557 = distinct !{!2557, !2554, !2558, !1473, !1474}
!2558 = !DILocation(line: 396, column: 25, scope: !2546)
!2559 = !DILocation(line: 397, column: 13, scope: !2546)
!2560 = !DILocation(line: 398, column: 13, scope: !2546)
!2561 = !DILocation(line: 399, column: 5, scope: !2546)
!2562 = distinct !DISubprogram(name: "x264_frame_unshift", scope: !30, file: !30, line: 402, type: !2533, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DILocalVariable(name: "list", arg: 1, scope: !2562, file: !30, line: 402, type: !663)
!2565 = !DILocalVariable(name: "frame", arg: 2, scope: !2562, file: !30, line: 402, type: !33)
!2566 = !DILocalVariable(name: "i", scope: !2562, file: !30, line: 404, type: !39)
!2567 = !DILocation(line: 0, scope: !2562)
!2568 = !DILocation(line: 405, column: 5, scope: !2562)
!2569 = !DILocation(line: 405, column: 12, scope: !2562)
!2570 = !DILocation(line: 405, column: 23, scope: !2562)
!2571 = distinct !{!2571, !2568, !2570, !1473, !1474}
!2572 = !DILocation(line: 406, column: 5, scope: !2562)
!2573 = !DILocation(line: 406, column: 13, scope: !2562)
!2574 = !DILocation(line: 407, column: 21, scope: !2562)
!2575 = !DILocation(line: 407, column: 9, scope: !2562)
!2576 = !DILocation(line: 407, column: 19, scope: !2562)
!2577 = distinct !{!2577, !2572, !2578, !1473, !1474}
!2578 = !DILocation(line: 407, column: 27, scope: !2562)
!2579 = !DILocation(line: 408, column: 13, scope: !2562)
!2580 = !DILocation(line: 409, column: 1, scope: !2562)
!2581 = distinct !DISubprogram(name: "x264_frame_shift", scope: !30, file: !30, line: 411, type: !2547, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2582)
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "list", arg: 1, scope: !2581, file: !30, line: 411, type: !663)
!2584 = !DILocalVariable(name: "frame", scope: !2581, file: !30, line: 413, type: !33)
!2585 = !DILocalVariable(name: "i", scope: !2581, file: !30, line: 414, type: !39)
!2586 = !DILocation(line: 0, scope: !2581)
!2587 = !DILocation(line: 413, column: 27, scope: !2581)
!2588 = !DILocation(line: 415, column: 5, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2581, file: !30, line: 415, column: 5)
!2590 = !DILocation(line: 416, column: 25, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2589, file: !30, line: 415, column: 5)
!2592 = !DILocation(line: 416, column: 19, scope: !2591)
!2593 = !DILocation(line: 416, column: 17, scope: !2591)
!2594 = !DILocation(line: 415, column: 17, scope: !2591)
!2595 = distinct !{!2595, !2588, !2596, !1473, !1474}
!2596 = !DILocation(line: 416, column: 27, scope: !2589)
!2597 = !DILocation(line: 418, column: 5, scope: !2581)
!2598 = distinct !DISubprogram(name: "x264_frame_push_unused", scope: !30, file: !30, line: 421, type: !2434, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2599)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "h", arg: 1, scope: !2598, file: !30, line: 421, type: !380)
!2601 = !DILocalVariable(name: "frame", arg: 2, scope: !2598, file: !30, line: 421, type: !33)
!2602 = !DILocation(line: 0, scope: !2598)
!2603 = !DILocation(line: 424, column: 12, scope: !2598)
!2604 = !DILocation(line: 424, column: 29, scope: !2598)
!2605 = !{!1440, !1390, i64 15600}
!2606 = !DILocation(line: 425, column: 34, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2598, file: !30, line: 425, column: 9)
!2608 = !DILocation(line: 425, column: 9, scope: !2598)
!2609 = !DILocation(line: 426, column: 50, scope: !2607)
!2610 = !DILocation(line: 426, column: 26, scope: !2607)
!2611 = !DILocation(line: 0, scope: !2532, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 426, column: 9, scope: !2607)
!2613 = !DILocation(line: 387, column: 5, scope: !2532, inlinedAt: !2612)
!2614 = !DILocation(line: 387, column: 12, scope: !2532, inlinedAt: !2612)
!2615 = !DILocation(line: 387, column: 23, scope: !2532, inlinedAt: !2612)
!2616 = distinct !{!2616, !2613, !2615, !1473, !1474}
!2617 = !DILocation(line: 388, column: 13, scope: !2532, inlinedAt: !2612)
!2618 = !DILocation(line: 426, column: 9, scope: !2607)
!2619 = !DILocation(line: 427, column: 1, scope: !2598)
!2620 = distinct !DISubprogram(name: "x264_frame_pop_unused", scope: !30, file: !30, line: 429, type: !31, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2621)
!2621 = !{!2622, !2623, !2624}
!2622 = !DILocalVariable(name: "h", arg: 1, scope: !2620, file: !30, line: 429, type: !380)
!2623 = !DILocalVariable(name: "b_fdec", arg: 2, scope: !2620, file: !30, line: 429, type: !39)
!2624 = !DILocalVariable(name: "frame", scope: !2620, file: !30, line: 431, type: !33)
!2625 = !DILocation(line: 0, scope: !2620)
!2626 = !DILocation(line: 432, column: 9, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2620, file: !30, line: 432, column: 9)
!2628 = !DILocation(line: 432, column: 9, scope: !2620)
!2629 = !DILocation(line: 0, scope: !2546, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 433, column: 17, scope: !2627)
!2631 = !DILocation(line: 396, column: 18, scope: !2546, inlinedAt: !2630)
!2632 = !DILocation(line: 396, column: 12, scope: !2546, inlinedAt: !2630)
!2633 = !DILocation(line: 396, column: 5, scope: !2546, inlinedAt: !2630)
!2634 = distinct !{!2634, !2633, !2635, !1473, !1474}
!2635 = !DILocation(line: 396, column: 25, scope: !2546, inlinedAt: !2630)
!2636 = !DILocation(line: 397, column: 13, scope: !2546, inlinedAt: !2630)
!2637 = !DILocation(line: 398, column: 13, scope: !2546, inlinedAt: !2630)
!2638 = !DILocation(line: 433, column: 9, scope: !2627)
!2639 = !DILocation(line: 435, column: 17, scope: !2627)
!2640 = !DILocation(line: 0, scope: !2627)
!2641 = !DILocation(line: 436, column: 10, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2620, file: !30, line: 436, column: 9)
!2643 = !DILocation(line: 436, column: 9, scope: !2620)
!2644 = !DILocation(line: 438, column: 12, scope: !2620)
!2645 = !DILocation(line: 438, column: 34, scope: !2620)
!2646 = !{!1440, !1391, i64 85}
!2647 = !DILocation(line: 439, column: 12, scope: !2620)
!2648 = !DILocation(line: 439, column: 30, scope: !2620)
!2649 = !DILocation(line: 440, column: 12, scope: !2620)
!2650 = !DILocation(line: 440, column: 31, scope: !2620)
!2651 = !{!1440, !1390, i64 12168}
!2652 = !DILocation(line: 441, column: 12, scope: !2620)
!2653 = !DILocation(line: 441, column: 23, scope: !2620)
!2654 = !{!1440, !1390, i64 12200}
!2655 = !DILocation(line: 442, column: 12, scope: !2620)
!2656 = !DILocation(line: 442, column: 23, scope: !2620)
!2657 = !{!1440, !1390, i64 80}
!2658 = !DILocation(line: 444, column: 20, scope: !2620)
!2659 = !DILocation(line: 444, column: 5, scope: !2620)
!2660 = !DILocation(line: 445, column: 20, scope: !2620)
!2661 = !DILocation(line: 445, column: 5, scope: !2620)
!2662 = !DILocation(line: 447, column: 5, scope: !2620)
!2663 = !DILocation(line: 448, column: 1, scope: !2620)
!2664 = distinct !DISubprogram(name: "x264_frame_push_blank_unused", scope: !30, file: !30, line: 450, type: !2434, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2665)
!2665 = !{!2666, !2667}
!2666 = !DILocalVariable(name: "h", arg: 1, scope: !2664, file: !30, line: 450, type: !380)
!2667 = !DILocalVariable(name: "frame", arg: 2, scope: !2664, file: !30, line: 450, type: !33)
!2668 = !DILocation(line: 0, scope: !2664)
!2669 = !DILocation(line: 453, column: 12, scope: !2664)
!2670 = !DILocation(line: 453, column: 29, scope: !2664)
!2671 = !DILocation(line: 454, column: 34, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !30, line: 454, column: 9)
!2673 = !DILocation(line: 454, column: 9, scope: !2664)
!2674 = !DILocation(line: 455, column: 36, scope: !2672)
!2675 = !{!1388, !1394, i64 14440}
!2676 = !DILocation(line: 0, scope: !2532, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 455, column: 9, scope: !2672)
!2678 = !DILocation(line: 387, column: 5, scope: !2532, inlinedAt: !2677)
!2679 = !DILocation(line: 387, column: 12, scope: !2532, inlinedAt: !2677)
!2680 = !DILocation(line: 387, column: 23, scope: !2532, inlinedAt: !2677)
!2681 = distinct !{!2681, !2678, !2680, !1473, !1474}
!2682 = !DILocation(line: 388, column: 13, scope: !2532, inlinedAt: !2677)
!2683 = !DILocation(line: 455, column: 9, scope: !2672)
!2684 = !DILocation(line: 456, column: 1, scope: !2664)
!2685 = distinct !DISubprogram(name: "x264_frame_pop_blank_unused", scope: !30, file: !30, line: 458, type: !2686, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!33, !380}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "h", arg: 1, scope: !2685, file: !30, line: 458, type: !380)
!2690 = !DILocalVariable(name: "frame", scope: !2685, file: !30, line: 460, type: !33)
!2691 = !DILocation(line: 0, scope: !2685)
!2692 = !DILocation(line: 461, column: 19, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2685, file: !30, line: 461, column: 9)
!2694 = !DILocation(line: 461, column: 9, scope: !2693)
!2695 = !DILocation(line: 461, column: 9, scope: !2685)
!2696 = !DILocation(line: 0, scope: !2546, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 462, column: 17, scope: !2693)
!2698 = !DILocation(line: 396, column: 18, scope: !2546, inlinedAt: !2697)
!2699 = !DILocation(line: 396, column: 12, scope: !2546, inlinedAt: !2697)
!2700 = !DILocation(line: 396, column: 5, scope: !2546, inlinedAt: !2697)
!2701 = distinct !{!2701, !2700, !2702, !1473, !1474}
!2702 = !DILocation(line: 396, column: 25, scope: !2546, inlinedAt: !2697)
!2703 = !DILocation(line: 397, column: 13, scope: !2546, inlinedAt: !2697)
!2704 = !DILocation(line: 398, column: 13, scope: !2546, inlinedAt: !2697)
!2705 = !DILocation(line: 462, column: 9, scope: !2693)
!2706 = !DILocation(line: 464, column: 17, scope: !2693)
!2707 = !DILocation(line: 0, scope: !2693)
!2708 = !DILocation(line: 465, column: 10, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2685, file: !30, line: 465, column: 9)
!2710 = !DILocation(line: 465, column: 9, scope: !2685)
!2711 = !DILocation(line: 467, column: 12, scope: !2685)
!2712 = !DILocation(line: 467, column: 24, scope: !2685)
!2713 = !DILocation(line: 468, column: 12, scope: !2685)
!2714 = !DILocation(line: 468, column: 30, scope: !2685)
!2715 = !DILocation(line: 469, column: 5, scope: !2685)
!2716 = !DILocation(line: 470, column: 1, scope: !2685)
!2717 = distinct !DISubprogram(name: "x264_frame_sort", scope: !30, file: !30, line: 472, type: !2718, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !663, !39}
!2720 = !{!2721, !2722, !2723, !2724, !2727, !2730, !2731, !2732}
!2721 = !DILocalVariable(name: "list", arg: 1, scope: !2717, file: !30, line: 472, type: !663)
!2722 = !DILocalVariable(name: "b_dts", arg: 2, scope: !2717, file: !30, line: 472, type: !39)
!2723 = !DILocalVariable(name: "b_ok", scope: !2717, file: !30, line: 474, type: !39)
!2724 = !DILocalVariable(name: "i", scope: !2725, file: !30, line: 477, type: !39)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !30, line: 477, column: 9)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !30, line: 475, column: 8)
!2727 = !DILocalVariable(name: "dtype", scope: !2728, file: !30, line: 479, type: !39)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !30, line: 478, column: 9)
!2729 = distinct !DILexicalBlock(scope: !2725, file: !30, line: 477, column: 9)
!2730 = !DILocalVariable(name: "dtime", scope: !2728, file: !30, line: 480, type: !39)
!2731 = !DILocalVariable(name: "swap", scope: !2728, file: !30, line: 481, type: !39)
!2732 = !DILocalVariable(name: "t", scope: !2733, file: !30, line: 485, type: !33)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !30, line: 485, column: 17)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !30, line: 484, column: 13)
!2735 = distinct !DILexicalBlock(scope: !2728, file: !30, line: 483, column: 17)
!2736 = !DILocation(line: 0, scope: !2717)
!2737 = !DILocation(line: 477, column: 25, scope: !2729)
!2738 = !DILocation(line: 477, column: 9, scope: !2725)
!2739 = !DILocation(line: 481, column: 24, scope: !2728)
!2740 = !DILocation(line: 0, scope: !2725)
!2741 = !DILocation(line: 479, column: 25, scope: !2728)
!2742 = !DILocation(line: 0, scope: !2728)
!2743 = !DILocation(line: 480, column: 34, scope: !2728)
!2744 = !DILocation(line: 480, column: 55, scope: !2728)
!2745 = !DILocation(line: 482, column: 38, scope: !2728)
!2746 = !DILocation(line: 483, column: 17, scope: !2728)
!2747 = !DILocation(line: 0, scope: !2733)
!2748 = !DILocation(line: 485, column: 17, scope: !2733)
!2749 = !DILocation(line: 487, column: 13, scope: !2734)
!2750 = !DILocation(line: 0, scope: !2726)
!2751 = !DILocation(line: 477, column: 31, scope: !2729)
!2752 = distinct !{!2752, !2738, !2753, !1473, !1474}
!2753 = !DILocation(line: 488, column: 9, scope: !2725)
!2754 = !DILocation(line: 489, column: 14, scope: !2717)
!2755 = !DILocation(line: 489, column: 5, scope: !2726)
!2756 = distinct !{!2756, !2757, !2758, !1473, !1474, !1735}
!2757 = !DILocation(line: 475, column: 5, scope: !2717)
!2758 = !DILocation(line: 489, column: 20, scope: !2717)
!2759 = !DILocation(line: 479, column: 34, scope: !2728)
!2760 = !DILocation(line: 479, column: 54, scope: !2728)
!2761 = !DILocation(line: 481, column: 38, scope: !2728)
!2762 = !DILocation(line: 481, column: 42, scope: !2728)
!2763 = !DILocation(line: 481, column: 53, scope: !2728)
!2764 = !DILocation(line: 481, column: 58, scope: !2728)
!2765 = !DILocation(line: 490, column: 1, scope: !2717)
!2766 = distinct !DISubprogram(name: "x264_weight_scale_plane", scope: !30, file: !30, line: 492, type: !2767, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{null, !380, !254, !39, !254, !39, !39, !39, !1169}
!2769 = !{!2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2770 = !DILocalVariable(name: "h", arg: 1, scope: !2766, file: !30, line: 492, type: !380)
!2771 = !DILocalVariable(name: "dst", arg: 2, scope: !2766, file: !30, line: 492, type: !254)
!2772 = !DILocalVariable(name: "i_dst_stride", arg: 3, scope: !2766, file: !30, line: 492, type: !39)
!2773 = !DILocalVariable(name: "src", arg: 4, scope: !2766, file: !30, line: 492, type: !254)
!2774 = !DILocalVariable(name: "i_src_stride", arg: 5, scope: !2766, file: !30, line: 492, type: !39)
!2775 = !DILocalVariable(name: "i_width", arg: 6, scope: !2766, file: !30, line: 493, type: !39)
!2776 = !DILocalVariable(name: "i_height", arg: 7, scope: !2766, file: !30, line: 493, type: !39)
!2777 = !DILocalVariable(name: "w", arg: 8, scope: !2766, file: !30, line: 493, type: !1169)
!2778 = !DILocalVariable(name: "x", scope: !2779, file: !30, line: 499, type: !39)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !30, line: 499, column: 9)
!2780 = distinct !DILexicalBlock(scope: !2766, file: !30, line: 498, column: 5)
!2781 = !DILocation(line: 0, scope: !2766)
!2782 = !DILocation(line: 497, column: 21, scope: !2766)
!2783 = !DILocation(line: 497, column: 5, scope: !2766)
!2784 = !DILocation(line: 499, column: 9, scope: !2779)
!2785 = !DILocation(line: 0, scope: !2779)
!2786 = !DILocation(line: 500, column: 16, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2779, file: !30, line: 499, column: 9)
!2788 = !{!2789, !1394, i64 48}
!2789 = !{!"x264_weight_t", !1391, i64 0, !1391, i64 16, !1390, i64 32, !1390, i64 36, !1390, i64 40, !1394, i64 48}
!2790 = !DILocation(line: 500, column: 13, scope: !2787)
!2791 = !DILocation(line: 500, column: 36, scope: !2787)
!2792 = !DILocation(line: 500, column: 57, scope: !2787)
!2793 = !DILocation(line: 499, column: 40, scope: !2787)
!2794 = !DILocation(line: 499, column: 27, scope: !2787)
!2795 = distinct !{!2795, !2784, !2796, !1473, !1474}
!2796 = !DILocation(line: 500, column: 103, scope: !2779)
!2797 = !DILocation(line: 501, column: 18, scope: !2780)
!2798 = !DILocation(line: 502, column: 13, scope: !2780)
!2799 = !DILocation(line: 503, column: 13, scope: !2780)
!2800 = distinct !{!2800, !2783, !2801, !1473, !1474}
!2801 = !DILocation(line: 504, column: 5, scope: !2766)
!2802 = !DILocation(line: 505, column: 1, scope: !2766)
!2803 = distinct !DISubprogram(name: "x264_frame_delete_list", scope: !30, file: !30, line: 507, type: !2804, scopeLine: 508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !663}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "list", arg: 1, scope: !2803, file: !30, line: 507, type: !663)
!2808 = !DILocalVariable(name: "i", scope: !2803, file: !30, line: 509, type: !39)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocation(line: 510, column: 10, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2803, file: !30, line: 510, column: 9)
!2812 = !DILocation(line: 510, column: 9, scope: !2803)
!2813 = !DILocation(line: 512, column: 12, scope: !2803)
!2814 = !DILocation(line: 512, column: 5, scope: !2803)
!2815 = !DILocation(line: 513, column: 34, scope: !2803)
!2816 = !DILocation(line: 513, column: 9, scope: !2803)
!2817 = distinct !{!2817, !2814, !2818, !1473, !1474}
!2818 = !DILocation(line: 513, column: 38, scope: !2803)
!2819 = !DILocation(line: 514, column: 5, scope: !2803)
!2820 = !DILocation(line: 515, column: 1, scope: !2803)
!2821 = distinct !DISubprogram(name: "x264_synch_frame_list_init", scope: !30, file: !30, line: 517, type: !2822, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2825)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!39, !2824, !39}
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!2825 = !{!2826, !2827, !2828}
!2826 = !DILocalVariable(name: "slist", arg: 1, scope: !2821, file: !30, line: 517, type: !2824)
!2827 = !DILocalVariable(name: "max_size", arg: 2, scope: !2821, file: !30, line: 517, type: !39)
!2828 = !DILabel(scope: !2821, name: "fail", file: !30, line: 529)
!2829 = !DILocation(line: 0, scope: !2821)
!2830 = !DILocation(line: 519, column: 18, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2821, file: !30, line: 519, column: 9)
!2832 = !DILocation(line: 519, column: 9, scope: !2821)
!2833 = !DILocation(line: 521, column: 12, scope: !2821)
!2834 = !DILocation(line: 521, column: 23, scope: !2821)
!2835 = !{!2836, !1390, i64 8}
!2836 = !{!"", !1394, i64 0, !1390, i64 8, !1390, i64 12, !1390, i64 16, !1390, i64 20, !1390, i64 24}
!2837 = !DILocation(line: 522, column: 12, scope: !2821)
!2838 = !DILocation(line: 522, column: 19, scope: !2821)
!2839 = !{!2836, !1390, i64 12}
!2840 = !DILocation(line: 523, column: 5, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !30, line: 523, column: 5)
!2842 = distinct !DILexicalBlock(scope: !2821, file: !30, line: 523, column: 5)
!2843 = !{!2836, !1394, i64 0}
!2844 = !DILocation(line: 523, column: 5, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !30, line: 523, column: 5)
!2846 = !DILocation(line: 523, column: 5, scope: !2842)
!2847 = !DILocation(line: 528, column: 5, scope: !2821)
!2848 = !DILocation(line: 531, column: 1, scope: !2821)
!2849 = distinct !DISubprogram(name: "x264_synch_frame_list_delete", scope: !30, file: !30, line: 533, type: !2850, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2824}
!2852 = !{!2853}
!2853 = !DILocalVariable(name: "slist", arg: 1, scope: !2849, file: !30, line: 533, type: !2824)
!2854 = !DILocation(line: 0, scope: !2849)
!2855 = !DILocation(line: 538, column: 36, scope: !2849)
!2856 = !DILocation(line: 0, scope: !2803, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 538, column: 5, scope: !2849)
!2858 = !DILocation(line: 510, column: 10, scope: !2811, inlinedAt: !2857)
!2859 = !DILocation(line: 510, column: 9, scope: !2803, inlinedAt: !2857)
!2860 = !DILocation(line: 512, column: 12, scope: !2803, inlinedAt: !2857)
!2861 = !DILocation(line: 512, column: 5, scope: !2803, inlinedAt: !2857)
!2862 = !DILocation(line: 513, column: 34, scope: !2803, inlinedAt: !2857)
!2863 = !DILocation(line: 513, column: 9, scope: !2803, inlinedAt: !2857)
!2864 = distinct !{!2864, !2861, !2865, !1473, !1474}
!2865 = !DILocation(line: 513, column: 38, scope: !2803, inlinedAt: !2857)
!2866 = !DILocation(line: 514, column: 5, scope: !2803, inlinedAt: !2857)
!2867 = !DILocation(line: 515, column: 1, scope: !2803, inlinedAt: !2857)
!2868 = !DILocation(line: 539, column: 1, scope: !2849)
!2869 = distinct !DISubprogram(name: "x264_synch_frame_list_push", scope: !30, file: !30, line: 541, type: !2870, scopeLine: 542, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2872)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{null, !2824, !33}
!2872 = !{!2873, !2874}
!2873 = !DILocalVariable(name: "slist", arg: 1, scope: !2869, file: !30, line: 541, type: !2824)
!2874 = !DILocalVariable(name: "frame", arg: 2, scope: !2869, file: !30, line: 541, type: !33)
!2875 = !DILocation(line: 0, scope: !2869)
!2876 = !DILocation(line: 544, column: 5, scope: !2869)
!2877 = distinct !{!2877, !2876, !2878, !1473, !1474}
!2878 = !DILocation(line: 545, column: 66, scope: !2869)
!2879 = !DILocation(line: 546, column: 12, scope: !2869)
!2880 = !DILocation(line: 546, column: 31, scope: !2869)
!2881 = !DILocation(line: 546, column: 5, scope: !2869)
!2882 = !DILocation(line: 546, column: 36, scope: !2869)
!2883 = !DILocation(line: 549, column: 1, scope: !2869)
