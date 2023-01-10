; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/quant.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/quant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }

@x264_decimate_table4 = dso_local local_unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 3, i8 2, i8 2, i8 1, i8 1, i8 1, [10 x i8] zeroinitializer }>, align 16, !dbg !0
@x264_decimate_table8 = dso_local local_unnamed_addr constant <{ [24 x i8], [40 x i8] }> <{ [24 x i8] c"\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01", [40 x i8] zeroinitializer }>, align 16, !dbg !57

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @x264_quant_init(ptr nocapture noundef readnone %h, i32 noundef %cpu, ptr noundef %pf) local_unnamed_addr #0 !dbg !74 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1368, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %cpu, metadata !1369, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %pf, metadata !1370, metadata !DIExpression()), !dbg !1371
  store ptr @quant_8x8, ptr %pf, align 8, !dbg !1372, !tbaa !1373
  %quant_4x4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 1, !dbg !1378
  store ptr @quant_4x4, ptr %quant_4x4, align 8, !dbg !1379, !tbaa !1380
  %quant_4x4_dc = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 2, !dbg !1381
  store ptr @quant_4x4_dc, ptr %quant_4x4_dc, align 8, !dbg !1382, !tbaa !1383
  %quant_2x2_dc = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 3, !dbg !1384
  store ptr @quant_2x2_dc, ptr %quant_2x2_dc, align 8, !dbg !1385, !tbaa !1386
  %dequant_4x4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 5, !dbg !1387
  store ptr @dequant_4x4, ptr %dequant_4x4, align 8, !dbg !1388, !tbaa !1389
  %dequant_4x4_dc = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 6, !dbg !1390
  store ptr @dequant_4x4_dc, ptr %dequant_4x4_dc, align 8, !dbg !1391, !tbaa !1392
  %dequant_8x8 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 4, !dbg !1393
  store ptr @dequant_8x8, ptr %dequant_8x8, align 8, !dbg !1394, !tbaa !1395
  %denoise_dct = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 7, !dbg !1396
  store ptr @x264_denoise_dct, ptr %denoise_dct, align 8, !dbg !1397, !tbaa !1398
  %decimate_score15 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 8, !dbg !1399
  store ptr @x264_decimate_score15, ptr %decimate_score15, align 8, !dbg !1400, !tbaa !1401
  %decimate_score16 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 9, !dbg !1402
  store ptr @x264_decimate_score16, ptr %decimate_score16, align 8, !dbg !1403, !tbaa !1404
  %decimate_score64 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 10, !dbg !1405
  store ptr @x264_decimate_score64, ptr %decimate_score64, align 8, !dbg !1406, !tbaa !1407
  %coeff_last = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, !dbg !1408
  %arrayidx = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, i64 3, !dbg !1409
  store ptr @x264_coeff_last4, ptr %arrayidx, align 8, !dbg !1410, !tbaa !1411
  %arrayidx2 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, i64 1, !dbg !1412
  store ptr @x264_coeff_last15, ptr %arrayidx2, align 8, !dbg !1413, !tbaa !1411
  %arrayidx4 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, i64 2, !dbg !1414
  store ptr @x264_coeff_last16, ptr %arrayidx4, align 8, !dbg !1415, !tbaa !1411
  %arrayidx6 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, i64 5, !dbg !1416
  store ptr @x264_coeff_last64, ptr %arrayidx6, align 8, !dbg !1417, !tbaa !1411
  %coeff_level_run = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 12, !dbg !1418
  %arrayidx7 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 12, i64 3, !dbg !1419
  store ptr @x264_coeff_level_run4, ptr %arrayidx7, align 8, !dbg !1420, !tbaa !1411
  %arrayidx9 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 12, i64 1, !dbg !1421
  store ptr @x264_coeff_level_run15, ptr %arrayidx9, align 8, !dbg !1422, !tbaa !1411
  %arrayidx11 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 12, i64 2, !dbg !1423
  store ptr @x264_coeff_level_run16, ptr %arrayidx11, align 8, !dbg !1424, !tbaa !1411
  store ptr @x264_coeff_last16, ptr %coeff_last, align 8, !dbg !1425, !tbaa !1411
  %arrayidx19 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 11, i64 4, !dbg !1426
  store ptr @x264_coeff_last15, ptr %arrayidx19, align 8, !dbg !1427, !tbaa !1411
  store ptr @x264_coeff_level_run16, ptr %coeff_level_run, align 8, !dbg !1428, !tbaa !1411
  %arrayidx27 = getelementptr inbounds %struct.x264_quant_function_t, ptr %pf, i64 0, i32 12, i64 4, !dbg !1429
  store ptr @x264_coeff_level_run15, ptr %arrayidx27, align 8, !dbg !1430, !tbaa !1411
  ret void, !dbg !1431
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @quant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 !dbg !1432 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1434, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1435, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %bias, metadata !1436, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 0, metadata !1437, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()), !dbg !1441
  br label %for.body, !dbg !1442

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0, !dbg !1443
  %lnot.ext = zext i1 %tobool to i32, !dbg !1444
  ret i32 %lnot.ext, !dbg !1445

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %nz.053 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1438, metadata !DIExpression()), !dbg !1441
  call void @llvm.dbg.value(metadata i32 %nz.053, metadata !1437, metadata !DIExpression()), !dbg !1440
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1446
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1446, !tbaa !1450
  %conv = sext i16 %0 to i32, !dbg !1446
  %cmp1 = icmp sgt i16 %0, 0, !dbg !1446
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv, !dbg !1446
  %1 = load i16, ptr %arrayidx4, align 2, !dbg !1446, !tbaa !1450
  %conv5 = zext i16 %1 to i32, !dbg !1446
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1452

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv5, %conv, !dbg !1446
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1446
  %2 = load i16, ptr %arrayidx10, align 2, !dbg !1446, !tbaa !1450
  %conv11 = zext i16 %2 to i32, !dbg !1446
  %mul = mul nsw i32 %add, %conv11, !dbg !1446
  %3 = lshr i32 %mul, 16, !dbg !1446
  %conv12 = trunc i32 %3 to i16, !dbg !1446
  br label %if.end, !dbg !1446

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv, !dbg !1446
  %arrayidx22 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1446
  %4 = load i16, ptr %arrayidx22, align 2, !dbg !1446, !tbaa !1450
  %conv23 = zext i16 %4 to i32, !dbg !1446
  %mul24 = mul nsw i32 %sub, %conv23, !dbg !1446
  %5 = lshr i32 %mul24, 16, !dbg !1446
  %6 = trunc i32 %5 to i16, !dbg !1446
  %conv27 = sub i16 0, %6, !dbg !1446
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ], !dbg !1446
  store i16 %storemerge, ptr %arrayidx, align 2, !dbg !1446, !tbaa !1450
  %conv32 = sext i16 %storemerge to i32, !dbg !1452
  %or = or i32 %nz.053, %conv32, !dbg !1452
  call void @llvm.dbg.value(metadata i32 %or, metadata !1437, metadata !DIExpression()), !dbg !1440
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1438, metadata !DIExpression()), !dbg !1441
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1454
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1442, !llvm.loop !1455
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @quant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %mf, ptr nocapture noundef readonly %bias) #1 !dbg !1459 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1461, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %mf, metadata !1462, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata ptr %bias, metadata !1463, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 0, metadata !1464, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i32 0, metadata !1465, metadata !DIExpression()), !dbg !1468
  br label %for.body, !dbg !1469

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0, !dbg !1470
  %lnot.ext = zext i1 %tobool to i32, !dbg !1471
  ret i32 %lnot.ext, !dbg !1472

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %nz.053 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1465, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %nz.053, metadata !1464, metadata !DIExpression()), !dbg !1467
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1473
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1473, !tbaa !1450
  %conv = sext i16 %0 to i32, !dbg !1473
  %cmp1 = icmp sgt i16 %0, 0, !dbg !1473
  %arrayidx4 = getelementptr inbounds i16, ptr %bias, i64 %indvars.iv, !dbg !1473
  %1 = load i16, ptr %arrayidx4, align 2, !dbg !1473, !tbaa !1450
  %conv5 = zext i16 %1 to i32, !dbg !1473
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1477

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv5, %conv, !dbg !1473
  %arrayidx10 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1473
  %2 = load i16, ptr %arrayidx10, align 2, !dbg !1473, !tbaa !1450
  %conv11 = zext i16 %2 to i32, !dbg !1473
  %mul = mul nsw i32 %add, %conv11, !dbg !1473
  %3 = lshr i32 %mul, 16, !dbg !1473
  %conv12 = trunc i32 %3 to i16, !dbg !1473
  br label %if.end, !dbg !1473

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %conv5, %conv, !dbg !1473
  %arrayidx22 = getelementptr inbounds i16, ptr %mf, i64 %indvars.iv, !dbg !1473
  %4 = load i16, ptr %arrayidx22, align 2, !dbg !1473, !tbaa !1450
  %conv23 = zext i16 %4 to i32, !dbg !1473
  %mul24 = mul nsw i32 %sub, %conv23, !dbg !1473
  %5 = lshr i32 %mul24, 16, !dbg !1473
  %6 = trunc i32 %5 to i16, !dbg !1473
  %conv27 = sub i16 0, %6, !dbg !1473
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv27, %if.else ], [ %conv12, %if.then ], !dbg !1473
  store i16 %storemerge, ptr %arrayidx, align 2, !dbg !1473, !tbaa !1450
  %conv32 = sext i16 %storemerge to i32, !dbg !1477
  %or = or i32 %nz.053, %conv32, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %or, metadata !1464, metadata !DIExpression()), !dbg !1467
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1465, metadata !DIExpression()), !dbg !1468
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1479
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1469, !llvm.loop !1480
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @quant_4x4_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #1 !dbg !1482 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1484, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %mf, metadata !1485, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 %bias, metadata !1486, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 0, metadata !1487, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 0, metadata !1488, metadata !DIExpression()), !dbg !1491
  br label %for.body, !dbg !1492

for.cond.cleanup:                                 ; preds = %if.end
  %tobool = icmp ne i32 %or, 0, !dbg !1493
  %lnot.ext = zext i1 %tobool to i32, !dbg !1494
  ret i32 %lnot.ext, !dbg !1495

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if.end ]
  %nz.037 = phi i32 [ 0, %entry ], [ %or, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1488, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %nz.037, metadata !1487, metadata !DIExpression()), !dbg !1490
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1496
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1496, !tbaa !1450
  %conv = sext i16 %0 to i32, !dbg !1496
  %cmp1 = icmp sgt i16 %0, 0, !dbg !1496
  br i1 %cmp1, label %if.then, label %if.else, !dbg !1500

if.then:                                          ; preds = %for.body
  %add = add nsw i32 %conv, %bias, !dbg !1496
  %mul = mul nsw i32 %add, %mf, !dbg !1496
  %1 = lshr i32 %mul, 16, !dbg !1496
  %conv6 = trunc i32 %1 to i16, !dbg !1496
  br label %if.end, !dbg !1496

if.else:                                          ; preds = %for.body
  %sub = sub nsw i32 %bias, %conv, !dbg !1496
  %mul12 = mul nsw i32 %sub, %mf, !dbg !1496
  %2 = lshr i32 %mul12, 16, !dbg !1496
  %3 = trunc i32 %2 to i16, !dbg !1496
  %conv15 = sub i16 0, %3, !dbg !1496
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv15, %if.else ], [ %conv6, %if.then ], !dbg !1496
  store i16 %storemerge, ptr %arrayidx, align 2, !dbg !1496, !tbaa !1450
  %conv20 = sext i16 %storemerge to i32, !dbg !1500
  %or = or i32 %nz.037, %conv20, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %or, metadata !1487, metadata !DIExpression()), !dbg !1490
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1501
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1488, metadata !DIExpression()), !dbg !1491
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1502
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1492, !llvm.loop !1503
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @quant_2x2_dc(ptr nocapture noundef %dct, i32 noundef %mf, i32 noundef %bias) #0 !dbg !1505 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1507, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %mf, metadata !1508, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %bias, metadata !1509, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 0, metadata !1510, metadata !DIExpression()), !dbg !1511
  %0 = load i16, ptr %dct, align 2, !dbg !1512, !tbaa !1450
  %conv = sext i16 %0 to i32, !dbg !1512
  %cmp = icmp sgt i16 %0, 0, !dbg !1512
  br i1 %cmp, label %if.then, label %if.else, !dbg !1515

if.then:                                          ; preds = %entry
  %add = add nsw i32 %conv, %bias, !dbg !1512
  %mul = mul nsw i32 %add, %mf, !dbg !1512
  %1 = lshr i32 %mul, 16, !dbg !1512
  %conv4 = trunc i32 %1 to i16, !dbg !1512
  br label %if.end, !dbg !1512

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %bias, %conv, !dbg !1512
  %mul8 = mul nsw i32 %sub, %mf, !dbg !1512
  %2 = lshr i32 %mul8, 16, !dbg !1512
  %3 = trunc i32 %2 to i16, !dbg !1512
  %conv11 = sub i16 0, %3, !dbg !1512
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i16 [ %conv11, %if.else ], [ %conv4, %if.then ], !dbg !1512
  store i16 %storemerge, ptr %dct, align 2, !dbg !1512, !tbaa !1450
  call void @llvm.dbg.value(metadata i16 %storemerge, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1511
  %arrayidx15 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !1516
  %4 = load i16, ptr %arrayidx15, align 2, !dbg !1516, !tbaa !1450
  %conv16 = sext i16 %4 to i32, !dbg !1516
  %cmp17 = icmp sgt i16 %4, 0, !dbg !1516
  br i1 %cmp17, label %if.then19, label %if.else27, !dbg !1519

if.then19:                                        ; preds = %if.end
  %add22 = add nsw i32 %conv16, %bias, !dbg !1516
  %mul23 = mul nsw i32 %add22, %mf, !dbg !1516
  %5 = lshr i32 %mul23, 16, !dbg !1516
  %conv25 = trunc i32 %5 to i16, !dbg !1516
  br label %if.end36, !dbg !1516

if.else27:                                        ; preds = %if.end
  %sub30 = sub nsw i32 %bias, %conv16, !dbg !1516
  %mul31 = mul nsw i32 %sub30, %mf, !dbg !1516
  %6 = lshr i32 %mul31, 16, !dbg !1516
  %7 = trunc i32 %6 to i16, !dbg !1516
  %conv34 = sub i16 0, %7, !dbg !1516
  br label %if.end36

if.end36:                                         ; preds = %if.else27, %if.then19
  %storemerge132 = phi i16 [ %conv34, %if.else27 ], [ %conv25, %if.then19 ], !dbg !1516
  store i16 %storemerge132, ptr %arrayidx15, align 2, !dbg !1516, !tbaa !1450
  call void @llvm.dbg.value(metadata !DIArgList(i16 %storemerge, i16 %storemerge132), metadata !1510, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1511
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !1520
  %8 = load i16, ptr %arrayidx40, align 2, !dbg !1520, !tbaa !1450
  %conv41 = sext i16 %8 to i32, !dbg !1520
  %cmp42 = icmp sgt i16 %8, 0, !dbg !1520
  br i1 %cmp42, label %if.then44, label %if.else52, !dbg !1523

if.then44:                                        ; preds = %if.end36
  %add47 = add nsw i32 %conv41, %bias, !dbg !1520
  %mul48 = mul nsw i32 %add47, %mf, !dbg !1520
  %9 = lshr i32 %mul48, 16, !dbg !1520
  %conv50 = trunc i32 %9 to i16, !dbg !1520
  br label %if.end61, !dbg !1520

if.else52:                                        ; preds = %if.end36
  %sub55 = sub nsw i32 %bias, %conv41, !dbg !1520
  %mul56 = mul nsw i32 %sub55, %mf, !dbg !1520
  %10 = lshr i32 %mul56, 16, !dbg !1520
  %11 = trunc i32 %10 to i16, !dbg !1520
  %conv59 = sub i16 0, %11, !dbg !1520
  br label %if.end61

if.end61:                                         ; preds = %if.else52, %if.then44
  %storemerge134 = phi i16 [ %conv59, %if.else52 ], [ %conv50, %if.then44 ], !dbg !1520
  store i16 %storemerge134, ptr %arrayidx40, align 2, !dbg !1520, !tbaa !1450
  call void @llvm.dbg.value(metadata !DIArgList(i16 %storemerge, i16 %storemerge134, i16 %storemerge132), metadata !1510, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_or, DW_OP_stack_value)), !dbg !1511
  %arrayidx65 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !1524
  %12 = load i16, ptr %arrayidx65, align 2, !dbg !1524, !tbaa !1450
  %conv66 = sext i16 %12 to i32, !dbg !1524
  %cmp67 = icmp sgt i16 %12, 0, !dbg !1524
  br i1 %cmp67, label %if.then69, label %if.else77, !dbg !1527

if.then69:                                        ; preds = %if.end61
  %add72 = add nsw i32 %conv66, %bias, !dbg !1524
  %mul73 = mul nsw i32 %add72, %mf, !dbg !1524
  %13 = lshr i32 %mul73, 16, !dbg !1524
  %conv75 = trunc i32 %13 to i16, !dbg !1524
  br label %if.end86, !dbg !1524

if.else77:                                        ; preds = %if.end61
  %sub80 = sub nsw i32 %bias, %conv66, !dbg !1524
  %mul81 = mul nsw i32 %sub80, %mf, !dbg !1524
  %14 = lshr i32 %mul81, 16, !dbg !1524
  %15 = trunc i32 %14 to i16, !dbg !1524
  %conv84 = sub i16 0, %15, !dbg !1524
  br label %if.end86

if.end86:                                         ; preds = %if.else77, %if.then69
  %storemerge136 = phi i16 [ %conv84, %if.else77 ], [ %conv75, %if.then69 ], !dbg !1524
  store i16 %storemerge136, ptr %arrayidx65, align 2, !dbg !1524, !tbaa !1450
  %or39133 = or i16 %storemerge132, %storemerge, !dbg !1519
  call void @llvm.dbg.value(metadata i16 %or39133, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1511
  %or64135 = or i16 %or39133, %storemerge134, !dbg !1523
  call void @llvm.dbg.value(metadata i16 %or64135, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1511
  %or89137 = or i16 %or64135, %storemerge136, !dbg !1527
  call void @llvm.dbg.value(metadata i16 %or89137, metadata !1510, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1511
  %tobool = icmp ne i16 %or89137, 0, !dbg !1528
  %lnot.ext = zext i1 %tobool to i32, !dbg !1529
  ret i32 %lnot.ext, !dbg !1530
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @dequant_4x4(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #1 !dbg !1531 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1533, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata ptr %dequant_mf, metadata !1534, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i32 %i_qp, metadata !1535, metadata !DIExpression()), !dbg !1547
  %rem = srem i32 %i_qp, 6, !dbg !1548
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1536, metadata !DIExpression()), !dbg !1547
  %div = sdiv i32 %i_qp, 6, !dbg !1549
  %sub = add nsw i32 %div, -4, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1538, metadata !DIExpression()), !dbg !1547
  %cmp = icmp sgt i32 %i_qp, 23, !dbg !1551
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !1552

for.cond.preheader:                               ; preds = %entry
  %idxprom2 = sext i32 %rem to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1539, metadata !DIExpression()), !dbg !1553
  br label %for.body, !dbg !1554

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv56 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next57, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv56, metadata !1539, metadata !DIExpression()), !dbg !1553
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv56, !dbg !1555
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1555, !tbaa !1450
  %conv50 = zext i16 %0 to i32, !dbg !1555
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv56, !dbg !1555
  %1 = load i32, ptr %arrayidx5, align 4, !dbg !1555, !tbaa !1557
  %mul = mul i32 %1, %conv50, !dbg !1555
  %shl = shl i32 %mul, %sub, !dbg !1555
  %conv6 = trunc i32 %shl to i16, !dbg !1555
  store i16 %conv6, ptr %arrayidx, align 2, !dbg !1555, !tbaa !1450
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !1559
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next57, metadata !1539, metadata !DIExpression()), !dbg !1553
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 16, !dbg !1560
  br i1 %exitcond59.not, label %if.end, label %for.body, !dbg !1554, !llvm.loop !1561

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 4, %div, !dbg !1563
  %sub10 = sub nsw i32 3, %div, !dbg !1564
  %shl11 = shl nuw i32 1, %sub10, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %shl11, metadata !1543, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i32 0, metadata !1545, metadata !DIExpression()), !dbg !1567
  %idxprom21 = sext i32 %rem to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1545, metadata !DIExpression()), !dbg !1567
  br label %for.body17, !dbg !1568

for.body17:                                       ; preds = %if.else, %for.body17
  %indvars.iv = phi i64 [ 0, %if.else ], [ %indvars.iv.next, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1545, metadata !DIExpression()), !dbg !1567
  %arrayidx19 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1569
  %2 = load i16, ptr %arrayidx19, align 2, !dbg !1569, !tbaa !1450
  %conv20 = sext i16 %2 to i32, !dbg !1569
  %arrayidx24 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv, !dbg !1569
  %3 = load i32, ptr %arrayidx24, align 4, !dbg !1569, !tbaa !1557
  %mul25 = mul nsw i32 %3, %conv20, !dbg !1569
  %add = add nsw i32 %mul25, %shl11, !dbg !1569
  %shr = ashr i32 %add, %sub9, !dbg !1569
  %conv27 = trunc i32 %shr to i16, !dbg !1569
  store i16 %conv27, ptr %arrayidx19, align 2, !dbg !1569, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1545, metadata !DIExpression()), !dbg !1567
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1572
  br i1 %exitcond.not, label %if.end, label %for.body17, !dbg !1568, !llvm.loop !1573

if.end:                                           ; preds = %for.body17, %for.body
  ret void, !dbg !1575
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @dequant_4x4_dc(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #1 !dbg !1576 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1578, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata ptr %dequant_mf, metadata !1579, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata i32 %i_qp, metadata !1580, metadata !DIExpression()), !dbg !1592
  %div = sdiv i32 %i_qp, 6, !dbg !1593
  %rem7 = srem i32 %i_qp, 6, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %div, metadata !1581, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1592
  %cmp = icmp sgt i32 %i_qp, 35, !dbg !1595
  br i1 %cmp, label %if.then, label %if.else, !dbg !1596

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %div, -6, !dbg !1597
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1581, metadata !DIExpression()), !dbg !1592
  %rem45 = urem i32 %i_qp, 6, !dbg !1598
  %idxprom46 = zext i32 %rem45 to i64, !dbg !1599
  %arrayidx = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom46, !dbg !1599
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1599, !tbaa !1557
  %shl = shl i32 %0, %sub, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1582, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1602
  %1 = trunc i32 %shl to i16
  call void @llvm.dbg.value(metadata i32 0, metadata !1585, metadata !DIExpression()), !dbg !1602
  br label %for.body, !dbg !1603

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv52 = phi i64 [ 0, %if.then ], [ %indvars.iv.next53, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv52, metadata !1585, metadata !DIExpression()), !dbg !1602
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv52, !dbg !1604
  %2 = load i16, ptr %arrayidx4, align 2, !dbg !1606, !tbaa !1450
  %conv5 = mul i16 %2, %1, !dbg !1606
  store i16 %conv5, ptr %arrayidx4, align 2, !dbg !1606, !tbaa !1450
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next53, metadata !1585, metadata !DIExpression()), !dbg !1602
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 16, !dbg !1608
  br i1 %exitcond55.not, label %if.end, label %for.body, !dbg !1603, !llvm.loop !1609

if.else:                                          ; preds = %entry
  %idxprom8 = sext i32 %rem7 to i64, !dbg !1611
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %dequant_mf, i64 %idxprom8, !dbg !1611
  %3 = load i32, ptr %arrayidx9, align 4, !dbg !1611, !tbaa !1557
  call void @llvm.dbg.value(metadata i32 %3, metadata !1587, metadata !DIExpression()), !dbg !1612
  %sub11 = sub nsw i32 6, %div, !dbg !1613
  %sub12 = sub nsw i32 5, %div, !dbg !1614
  %shl13 = shl nuw i32 1, %sub12, !dbg !1615
  call void @llvm.dbg.value(metadata i32 %shl13, metadata !1589, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i32 0, metadata !1590, metadata !DIExpression()), !dbg !1616
  br label %for.body19, !dbg !1617

for.body19:                                       ; preds = %if.else, %for.body19
  %indvars.iv = phi i64 [ 0, %if.else ], [ %indvars.iv.next, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1590, metadata !DIExpression()), !dbg !1616
  %arrayidx21 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1618
  %4 = load i16, ptr %arrayidx21, align 2, !dbg !1618, !tbaa !1450
  %conv22 = sext i16 %4 to i32, !dbg !1618
  %mul23 = mul nsw i32 %3, %conv22, !dbg !1620
  %add = add nsw i32 %mul23, %shl13, !dbg !1621
  %shr = ashr i32 %add, %sub11, !dbg !1622
  %conv25 = trunc i32 %shr to i16, !dbg !1623
  store i16 %conv25, ptr %arrayidx21, align 2, !dbg !1624, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1590, metadata !DIExpression()), !dbg !1616
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1626
  br i1 %exitcond.not, label %if.end, label %for.body19, !dbg !1617, !llvm.loop !1627

if.end:                                           ; preds = %for.body19, %for.body
  ret void, !dbg !1629
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @dequant_8x8(ptr nocapture noundef %dct, ptr nocapture noundef readonly %dequant_mf, i32 noundef %i_qp) #1 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1632, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %dequant_mf, metadata !1633, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %i_qp, metadata !1634, metadata !DIExpression()), !dbg !1645
  %rem = srem i32 %i_qp, 6, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1635, metadata !DIExpression()), !dbg !1645
  %div = sdiv i32 %i_qp, 6, !dbg !1647
  %sub = add nsw i32 %div, -6, !dbg !1648
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1636, metadata !DIExpression()), !dbg !1645
  %cmp = icmp sgt i32 %i_qp, 35, !dbg !1649
  br i1 %cmp, label %for.cond.preheader, label %if.else, !dbg !1650

for.cond.preheader:                               ; preds = %entry
  %idxprom2 = sext i32 %rem to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1637, metadata !DIExpression()), !dbg !1651
  br label %for.body, !dbg !1652

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv56 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next57, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv56, metadata !1637, metadata !DIExpression()), !dbg !1651
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv56, !dbg !1653
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1653, !tbaa !1450
  %conv50 = zext i16 %0 to i32, !dbg !1653
  %arrayidx5 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom2, i64 %indvars.iv56, !dbg !1653
  %1 = load i32, ptr %arrayidx5, align 4, !dbg !1653, !tbaa !1557
  %mul = mul i32 %1, %conv50, !dbg !1653
  %shl = shl i32 %mul, %sub, !dbg !1653
  %conv6 = trunc i32 %shl to i16, !dbg !1653
  store i16 %conv6, ptr %arrayidx, align 2, !dbg !1653, !tbaa !1450
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next57, metadata !1637, metadata !DIExpression()), !dbg !1651
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 64, !dbg !1656
  br i1 %exitcond59.not, label %if.end, label %for.body, !dbg !1652, !llvm.loop !1657

if.else:                                          ; preds = %entry
  %sub9 = sub nsw i32 6, %div, !dbg !1659
  %sub10 = sub nsw i32 5, %div, !dbg !1660
  %shl11 = shl nuw i32 1, %sub10, !dbg !1661
  call void @llvm.dbg.value(metadata i32 %shl11, metadata !1641, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 0, metadata !1643, metadata !DIExpression()), !dbg !1663
  %idxprom21 = sext i32 %rem to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1643, metadata !DIExpression()), !dbg !1663
  br label %for.body17, !dbg !1664

for.body17:                                       ; preds = %if.else, %for.body17
  %indvars.iv = phi i64 [ 0, %if.else ], [ %indvars.iv.next, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1643, metadata !DIExpression()), !dbg !1663
  %arrayidx19 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1665
  %2 = load i16, ptr %arrayidx19, align 2, !dbg !1665, !tbaa !1450
  %conv20 = sext i16 %2 to i32, !dbg !1665
  %arrayidx24 = getelementptr inbounds [64 x i32], ptr %dequant_mf, i64 %idxprom21, i64 %indvars.iv, !dbg !1665
  %3 = load i32, ptr %arrayidx24, align 4, !dbg !1665, !tbaa !1557
  %mul25 = mul nsw i32 %3, %conv20, !dbg !1665
  %add = add nsw i32 %mul25, %shl11, !dbg !1665
  %shr = ashr i32 %add, %sub9, !dbg !1665
  %conv27 = trunc i32 %shr to i16, !dbg !1665
  store i16 %conv27, ptr %arrayidx19, align 2, !dbg !1665, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1643, metadata !DIExpression()), !dbg !1663
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1668
  br i1 %exitcond.not, label %if.end, label %for.body17, !dbg !1664, !llvm.loop !1669

if.end:                                           ; preds = %for.body17, %for.body
  ret void, !dbg !1671
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @x264_denoise_dct(ptr nocapture noundef %dct, ptr nocapture noundef %sum, ptr nocapture noundef readonly %offset, i32 noundef %size) #1 !dbg !1672 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1674, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %sum, metadata !1675, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %offset, metadata !1676, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %size, metadata !1677, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 1, metadata !1678, metadata !DIExpression()), !dbg !1685
  %cmp28 = icmp sgt i32 %size, 1, !dbg !1686
  br i1 %cmp28, label %for.body.preheader, label %for.cond.cleanup, !dbg !1687

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %size to i64, !dbg !1686
  br label %for.body, !dbg !1687

for.cond.cleanup:                                 ; preds = %cond.end, %entry
  ret void, !dbg !1688

for.body:                                         ; preds = %for.body.preheader, %cond.end
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1678, metadata !DIExpression()), !dbg !1685
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1689
  %0 = load i16, ptr %arrayidx, align 2, !dbg !1689, !tbaa !1450
  %conv = sext i16 %0 to i32, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1680, metadata !DIExpression()), !dbg !1690
  %shr = ashr i32 %conv, 15, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1683, metadata !DIExpression()), !dbg !1690
  %add = add nsw i32 %shr, %conv, !dbg !1692
  %xor = xor i32 %add, %shr, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %xor, metadata !1680, metadata !DIExpression()), !dbg !1690
  %arrayidx2 = getelementptr inbounds i32, ptr %sum, i64 %indvars.iv, !dbg !1694
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !1695, !tbaa !1557
  %add3 = add i32 %xor, %1, !dbg !1695
  store i32 %add3, ptr %arrayidx2, align 4, !dbg !1695, !tbaa !1557
  %arrayidx5 = getelementptr inbounds i16, ptr %offset, i64 %indvars.iv, !dbg !1696
  %2 = load i16, ptr %arrayidx5, align 2, !dbg !1696, !tbaa !1450
  %conv6 = zext i16 %2 to i32, !dbg !1696
  %sub = sub nsw i32 %xor, %conv6, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1680, metadata !DIExpression()), !dbg !1690
  %cmp7 = icmp slt i32 %sub, 0, !dbg !1698
  br i1 %cmp7, label %cond.end, label %cond.false, !dbg !1699

cond.false:                                       ; preds = %for.body
  %xor9 = xor i32 %sub, %shr, !dbg !1700
  %sub10 = sub nsw i32 %xor9, %shr, !dbg !1701
  br label %cond.end, !dbg !1699

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i32 [ %sub10, %cond.false ], [ 0, %for.body ], !dbg !1699
  %conv11 = trunc i32 %cond to i16, !dbg !1699
  store i16 %conv11, ptr %arrayidx, align 2, !dbg !1702, !tbaa !1450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1678, metadata !DIExpression()), !dbg !1685
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1686
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1687, !llvm.loop !1704
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_decimate_score15(ptr nocapture noundef readonly %dct) #2 !dbg !1706 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1708, metadata !DIExpression()), !dbg !1709
  %add.ptr = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1711, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 15, metadata !1716, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table4, metadata !1717, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 14, metadata !1719, metadata !DIExpression()), !dbg !1722
  br label %land.rhs.i, !dbg !1724

land.rhs.i:                                       ; preds = %while.body.i, %entry
  %indvars.iv.i = phi i64 [ 14, %entry ], [ %indvars.iv.next.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1719, metadata !DIExpression()), !dbg !1722
  %arrayidx.i = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.i, !dbg !1725
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !1725, !tbaa !1726
  %cmp3.i = icmp eq i32 %0, 0, !dbg !1727
  br i1 %cmp3.i, label %while.body.i, label %if.end.i, !dbg !1724

while.body.i:                                     ; preds = %land.rhs.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1719, metadata !DIExpression()), !dbg !1722
  %cmp1.i.not = icmp eq i64 %indvars.iv.i, 0, !dbg !1729
  br i1 %cmp1.i.not, label %x264_decimate_score_internal.exit, label %land.rhs.i, !dbg !1730, !llvm.loop !1731

if.end.i:                                         ; preds = %land.rhs.i
  %idxprom662.i = and i64 %indvars.iv.i, 4294967294, !dbg !1733
  %arrayidx7.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom662.i, !dbg !1733
  %1 = load i16, ptr %arrayidx7.i, align 2, !dbg !1733, !tbaa !1450
  %cmp8.i = icmp eq i16 %1, 0, !dbg !1735
  %2 = sext i1 %cmp8.i to i64, !dbg !1736
  %spec.select.v.i = add nsw i64 %indvars.iv.i, %2, !dbg !1736
  %phi.cast = trunc i64 %spec.select.v.i to i32, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %phi.cast, metadata !1719, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1722
  %cmp11.i2 = icmp sgt i32 %phi.cast, -1, !dbg !1737
  br i1 %cmp11.i2, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1738

while.body13.i:                                   ; preds = %if.end.i, %cleanup.i
  %idx.2.i4 = phi i32 [ %idx.371.i, %cleanup.i ], [ %phi.cast, %if.end.i ]
  %i_score.0.i3 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 %i_score.0.i3, metadata !1718, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %idx.2.i4, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1722
  %idxprom1563.i = zext i32 %idx.2.i4 to i64, !dbg !1739
  %arrayidx16.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom1563.i, !dbg !1739
  %3 = load i16, ptr %arrayidx16.i, align 2, !dbg !1739, !tbaa !1450
  %conv17.i = sext i16 %3 to i32, !dbg !1739
  %4 = add nsw i32 %conv17.i, -2, !dbg !1741
  %cmp18.i = icmp ult i32 %4, -3, !dbg !1741
  br i1 %cmp18.i, label %x264_decimate_score_internal.exit, label %while.cond22.preheader.i, !dbg !1742

while.cond22.preheader.i:                         ; preds = %while.body13.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1720, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 %idx.2.i4, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1722
  %cmp2369.not.i = icmp eq i32 %idx.2.i4, 0, !dbg !1744
  br i1 %cmp2369.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1745

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.371.in.i = phi i32 [ %idx.371.i, %while.body32.i ], [ %idx.2.i4, %while.cond22.preheader.i ]
  %i_run.070.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.371.i = add nsw i32 %idx.371.in.i, -1, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %i_run.070.i, metadata !1720, metadata !DIExpression()), !dbg !1743
  %idxprom2664.i = zext i32 %idx.371.i to i64, !dbg !1746
  %arrayidx27.i = getelementptr inbounds i16, ptr %add.ptr, i64 %idxprom2664.i, !dbg !1746
  %5 = load i16, ptr %arrayidx27.i, align 2, !dbg !1746, !tbaa !1450
  %cmp29.i = icmp eq i16 %5, 0, !dbg !1747
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1748

while.body32.i:                                   ; preds = %land.rhs25.i
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1722
  %inc.i = add nuw i32 %i_run.070.i, 1, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1720, metadata !DIExpression()), !dbg !1743
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i4, !dbg !1744
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1745, !llvm.loop !1751

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i11 = zext i32 %idx.2.i4 to i64, !dbg !1753
  %arrayidx36.i12 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i11, !dbg !1753
  %6 = load i8, ptr %arrayidx36.i12, align 1, !dbg !1753, !tbaa !1726
  %conv37.i13 = zext i8 %6 to i32, !dbg !1753
  %add38.i14 = add nuw nsw i32 %i_score.0.i3, %conv37.i13, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1722
  br label %x264_decimate_score_internal.exit, !dbg !1738

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext i32 %i_run.070.i to i64, !dbg !1753
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i, !dbg !1753
  %7 = load i8, ptr %arrayidx36.i, align 1, !dbg !1753, !tbaa !1726
  %conv37.i = zext i8 %7 to i32, !dbg !1753
  %add38.i = add nuw nsw i32 %i_score.0.i3, %conv37.i, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1722
  %cmp11.i = icmp sgt i32 %idx.371.in.i, 0, !dbg !1737
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1738, !llvm.loop !1755

x264_decimate_score_internal.exit:                ; preds = %while.body.i, %while.body13.i, %cleanup.i, %cleanup.i.thread, %if.end.i
  %retval.2.ph.i = phi i32 [ 0, %if.end.i ], [ %add38.i14, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ], [ 0, %while.body.i ]
  ret i32 %retval.2.ph.i, !dbg !1757
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_decimate_score16(ptr nocapture noundef readonly %dct) #2 !dbg !1758 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1760, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1711, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 16, metadata !1716, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table4, metadata !1717, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 15, metadata !1719, metadata !DIExpression()), !dbg !1762
  br label %land.rhs.i, !dbg !1764

land.rhs.i:                                       ; preds = %while.body.i, %entry
  %indvars.iv.i = phi i64 [ 15, %entry ], [ %indvars.iv.next.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1719, metadata !DIExpression()), !dbg !1762
  %0 = add nsw i64 %indvars.iv.i, -1, !dbg !1765
  %arrayidx.i = getelementptr inbounds i16, ptr %dct, i64 %0, !dbg !1765
  %1 = load i32, ptr %arrayidx.i, align 4, !dbg !1765, !tbaa !1726
  %cmp3.i = icmp eq i32 %1, 0, !dbg !1766
  br i1 %cmp3.i, label %while.body.i, label %if.end.i, !dbg !1764

while.body.i:                                     ; preds = %land.rhs.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1719, metadata !DIExpression()), !dbg !1762
  %cmp1.i = icmp ugt i64 %indvars.iv.i, 1, !dbg !1768
  br i1 %cmp1.i, label %land.rhs.i, label %x264_decimate_score_internal.exit, !dbg !1769, !llvm.loop !1770

if.end.i:                                         ; preds = %land.rhs.i
  %idxprom662.i = and i64 %indvars.iv.i, 4294967295, !dbg !1772
  %arrayidx7.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom662.i, !dbg !1772
  %2 = load i16, ptr %arrayidx7.i, align 2, !dbg !1772, !tbaa !1450
  %cmp8.i = icmp eq i16 %2, 0, !dbg !1773
  %spec.select.v.i = select i1 %cmp8.i, i64 %0, i64 %indvars.iv.i, !dbg !1774
  %phi.cast = trunc i64 %spec.select.v.i to i32, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %phi.cast, metadata !1719, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1762
  %cmp11.i3 = icmp sgt i32 %phi.cast, -1, !dbg !1775
  br i1 %cmp11.i3, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1776

while.body13.i:                                   ; preds = %if.end.i, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.371.i, %cleanup.i ], [ %phi.cast, %if.end.i ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 %i_score.0.i4, metadata !1718, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %idx.2.i5, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1762
  %idxprom1563.i = zext i32 %idx.2.i5 to i64, !dbg !1777
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom1563.i, !dbg !1777
  %3 = load i16, ptr %arrayidx16.i, align 2, !dbg !1777, !tbaa !1450
  %conv17.i = sext i16 %3 to i32, !dbg !1777
  %4 = add nsw i32 %conv17.i, -2, !dbg !1778
  %cmp18.i = icmp ult i32 %4, -3, !dbg !1778
  br i1 %cmp18.i, label %x264_decimate_score_internal.exit, label %while.cond22.preheader.i, !dbg !1779

while.cond22.preheader.i:                         ; preds = %while.body13.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1720, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i32 %idx.2.i5, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1762
  %cmp2369.not.i = icmp eq i32 %idx.2.i5, 0, !dbg !1781
  br i1 %cmp2369.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1782

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.371.in.i = phi i32 [ %idx.371.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.070.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.371.i = add nsw i32 %idx.371.in.i, -1, !dbg !1780
  call void @llvm.dbg.value(metadata i32 %i_run.070.i, metadata !1720, metadata !DIExpression()), !dbg !1780
  %idxprom2664.i = zext i32 %idx.371.i to i64, !dbg !1783
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom2664.i, !dbg !1783
  %5 = load i16, ptr %arrayidx27.i, align 2, !dbg !1783, !tbaa !1450
  %cmp29.i = icmp eq i16 %5, 0, !dbg !1784
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1785

while.body32.i:                                   ; preds = %land.rhs25.i
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1762
  %inc.i = add nuw i32 %i_run.070.i, 1, !dbg !1786
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1720, metadata !DIExpression()), !dbg !1780
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5, !dbg !1781
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1782, !llvm.loop !1787

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i13 = zext i32 %idx.2.i5 to i64, !dbg !1789
  %arrayidx36.i14 = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i13, !dbg !1789
  %6 = load i8, ptr %arrayidx36.i14, align 1, !dbg !1789, !tbaa !1726
  %conv37.i15 = zext i8 %6 to i32, !dbg !1789
  %add38.i16 = add nuw nsw i32 %i_score.0.i4, %conv37.i15, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1762
  br label %x264_decimate_score_internal.exit, !dbg !1776

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext i32 %i_run.070.i to i64, !dbg !1789
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table4, i64 %idxprom35.i, !dbg !1789
  %7 = load i8, ptr %arrayidx36.i, align 1, !dbg !1789, !tbaa !1726
  %conv37.i = zext i8 %7 to i32, !dbg !1789
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1762
  %cmp11.i = icmp sgt i32 %idx.371.in.i, 0, !dbg !1775
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1776, !llvm.loop !1791

x264_decimate_score_internal.exit:                ; preds = %while.body.i, %while.body13.i, %cleanup.i, %cleanup.i.thread, %if.end.i
  %retval.2.ph.i = phi i32 [ 0, %if.end.i ], [ %add38.i16, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ], [ 0, %while.body.i ]
  ret i32 %retval.2.ph.i, !dbg !1793
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_decimate_score64(ptr nocapture noundef readonly %dct) #2 !dbg !1794 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1796, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1711, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 64, metadata !1716, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata ptr @x264_decimate_table8, metadata !1717, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 63, metadata !1719, metadata !DIExpression()), !dbg !1798
  br label %land.rhs.i, !dbg !1800

land.rhs.i:                                       ; preds = %while.body.i, %entry
  %indvars.iv.i = phi i64 [ 63, %entry ], [ %indvars.iv.next.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1719, metadata !DIExpression()), !dbg !1798
  %0 = add nsw i64 %indvars.iv.i, -1, !dbg !1801
  %arrayidx.i = getelementptr inbounds i16, ptr %dct, i64 %0, !dbg !1801
  %1 = load i32, ptr %arrayidx.i, align 4, !dbg !1801, !tbaa !1726
  %cmp3.i = icmp eq i32 %1, 0, !dbg !1802
  br i1 %cmp3.i, label %while.body.i, label %if.end.i, !dbg !1800

while.body.i:                                     ; preds = %land.rhs.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1719, metadata !DIExpression()), !dbg !1798
  %cmp1.i = icmp ugt i64 %indvars.iv.i, 1, !dbg !1804
  br i1 %cmp1.i, label %land.rhs.i, label %x264_decimate_score_internal.exit, !dbg !1805, !llvm.loop !1806

if.end.i:                                         ; preds = %land.rhs.i
  %idxprom662.i = and i64 %indvars.iv.i, 4294967295, !dbg !1808
  %arrayidx7.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom662.i, !dbg !1808
  %2 = load i16, ptr %arrayidx7.i, align 2, !dbg !1808, !tbaa !1450
  %cmp8.i = icmp eq i16 %2, 0, !dbg !1809
  %spec.select.v.i = select i1 %cmp8.i, i64 %0, i64 %indvars.iv.i, !dbg !1810
  %phi.cast = trunc i64 %spec.select.v.i to i32, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %phi.cast, metadata !1719, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1798
  %cmp11.i3 = icmp sgt i32 %phi.cast, -1, !dbg !1811
  br i1 %cmp11.i3, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1812

while.body13.i:                                   ; preds = %if.end.i, %cleanup.i
  %idx.2.i5 = phi i32 [ %idx.371.i, %cleanup.i ], [ %phi.cast, %if.end.i ]
  %i_score.0.i4 = phi i32 [ %add38.i, %cleanup.i ], [ 0, %if.end.i ]
  call void @llvm.dbg.value(metadata i32 %i_score.0.i4, metadata !1718, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %idx.2.i5, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1798
  %idxprom1563.i = zext i32 %idx.2.i5 to i64, !dbg !1813
  %arrayidx16.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom1563.i, !dbg !1813
  %3 = load i16, ptr %arrayidx16.i, align 2, !dbg !1813, !tbaa !1450
  %conv17.i = sext i16 %3 to i32, !dbg !1813
  %4 = add nsw i32 %conv17.i, -2, !dbg !1814
  %cmp18.i = icmp ult i32 %4, -3, !dbg !1814
  br i1 %cmp18.i, label %x264_decimate_score_internal.exit, label %while.cond22.preheader.i, !dbg !1815

while.cond22.preheader.i:                         ; preds = %while.body13.i
  call void @llvm.dbg.value(metadata i32 0, metadata !1720, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %idx.2.i5, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1798
  %cmp2369.not.i = icmp eq i32 %idx.2.i5, 0, !dbg !1817
  br i1 %cmp2369.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1818

land.rhs25.i:                                     ; preds = %while.cond22.preheader.i, %while.body32.i
  %idx.371.in.i = phi i32 [ %idx.371.i, %while.body32.i ], [ %idx.2.i5, %while.cond22.preheader.i ]
  %i_run.070.i = phi i32 [ %inc.i, %while.body32.i ], [ 0, %while.cond22.preheader.i ]
  %idx.371.i = add nsw i32 %idx.371.in.i, -1, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %i_run.070.i, metadata !1720, metadata !DIExpression()), !dbg !1816
  %idxprom2664.i = zext i32 %idx.371.i to i64, !dbg !1819
  %arrayidx27.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom2664.i, !dbg !1819
  %5 = load i16, ptr %arrayidx27.i, align 2, !dbg !1819, !tbaa !1450
  %cmp29.i = icmp eq i16 %5, 0, !dbg !1820
  br i1 %cmp29.i, label %while.body32.i, label %cleanup.i, !dbg !1821

while.body32.i:                                   ; preds = %land.rhs25.i
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1798
  %inc.i = add nuw i32 %i_run.070.i, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !1720, metadata !DIExpression()), !dbg !1816
  %exitcond.not.i = icmp eq i32 %inc.i, %idx.2.i5, !dbg !1817
  br i1 %exitcond.not.i, label %cleanup.i.thread, label %land.rhs25.i, !dbg !1818, !llvm.loop !1823

cleanup.i.thread:                                 ; preds = %while.cond22.preheader.i, %while.body32.i
  %idxprom35.i13 = zext i32 %idx.2.i5 to i64, !dbg !1825
  %arrayidx36.i14 = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i13, !dbg !1825
  %6 = load i8, ptr %arrayidx36.i14, align 1, !dbg !1825, !tbaa !1726
  %conv37.i15 = zext i8 %6 to i32, !dbg !1825
  %add38.i16 = add nuw nsw i32 %i_score.0.i4, %conv37.i15, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1798
  br label %x264_decimate_score_internal.exit, !dbg !1812

cleanup.i:                                        ; preds = %land.rhs25.i
  %idxprom35.i = zext i32 %i_run.070.i to i64, !dbg !1825
  %arrayidx36.i = getelementptr inbounds i8, ptr @x264_decimate_table8, i64 %idxprom35.i, !dbg !1825
  %7 = load i8, ptr %arrayidx36.i, align 1, !dbg !1825, !tbaa !1726
  %conv37.i = zext i8 %7 to i32, !dbg !1825
  %add38.i = add nuw nsw i32 %i_score.0.i4, %conv37.i, !dbg !1826
  call void @llvm.dbg.value(metadata i32 %idx.371.i, metadata !1719, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %add38.i, metadata !1718, metadata !DIExpression()), !dbg !1798
  %cmp11.i = icmp sgt i32 %idx.371.in.i, 0, !dbg !1811
  br i1 %cmp11.i, label %while.body13.i, label %x264_decimate_score_internal.exit, !dbg !1812, !llvm.loop !1827

x264_decimate_score_internal.exit:                ; preds = %while.body.i, %while.body13.i, %cleanup.i, %cleanup.i.thread, %if.end.i
  %retval.2.ph.i = phi i32 [ 0, %if.end.i ], [ %add38.i16, %cleanup.i.thread ], [ %add38.i, %cleanup.i ], [ 9, %while.body13.i ], [ 0, %while.body.i ]
  ret i32 %retval.2.ph.i, !dbg !1829
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_coeff_last4(ptr nocapture noundef readonly %l) #2 !dbg !1830 {
entry:
  call void @llvm.dbg.value(metadata ptr %l, metadata !1832, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata ptr %l, metadata !1834, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 4, metadata !1837, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i32 3, metadata !1838, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata i64 3, metadata !1838, metadata !DIExpression()), !dbg !1839
  %0 = load i64, ptr %l, align 8, !dbg !1841, !tbaa !1726
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1841
  br i1 %tobool.not.i, label %x264_coeff_last_internal.exit, label %land.rhs.i, !dbg !1845

land.rhs.i:                                       ; preds = %entry, %while.body.i
  %i_last.119.i = phi i32 [ %dec.i, %while.body.i ], [ 3, %entry ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i, metadata !1838, metadata !DIExpression()), !dbg !1839
  %idxprom14.i = zext i32 %i_last.119.i to i64, !dbg !1846
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom14.i, !dbg !1846
  %1 = load i16, ptr %arrayidx.i, align 2, !dbg !1846, !tbaa !1450
  %cmp4.i = icmp eq i16 %1, 0, !dbg !1847
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1848

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.119.i, -1, !dbg !1849
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1838, metadata !DIExpression()), !dbg !1839
  %cmp3.i = icmp sgt i32 %i_last.119.i, 0, !dbg !1850
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1851, !llvm.loop !1852

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i, %entry
  %i_last.1.lcssa.i = phi i32 [ -1, %entry ], [ %i_last.119.i, %land.rhs.i ], [ -1, %while.body.i ], !dbg !1839
  ret i32 %i_last.1.lcssa.i, !dbg !1853
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_coeff_last15(ptr nocapture noundef readonly %l) #2 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata ptr %l, metadata !1856, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata ptr %l, metadata !1834, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 15, metadata !1837, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i32 14, metadata !1838, metadata !DIExpression()), !dbg !1858
  %add.ptr.i = getelementptr inbounds i16, ptr %l, i64 -3
  br label %for.body.i, !dbg !1860

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.i ], [ 14, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1838, metadata !DIExpression()), !dbg !1858
  %add.ptr1.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %indvars.iv, !dbg !1861
  %0 = load i64, ptr %add.ptr1.i, align 8, !dbg !1861, !tbaa !1726
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1861
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.preheader.i.loopexit, !dbg !1862

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -4, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1838, metadata !DIExpression()), !dbg !1858
  %cmp.i = icmp ugt i64 %indvars.iv, 6, !dbg !1864
  br i1 %cmp.i, label %for.body.i, label %land.rhs.i.preheader, !dbg !1860, !llvm.loop !1865

land.rhs.preheader.i.loopexit:                    ; preds = %for.body.i
  %1 = trunc i64 %indvars.iv to i32, !dbg !1867
  br label %land.rhs.i.preheader, !dbg !1867

land.rhs.i.preheader:                             ; preds = %for.inc.i, %land.rhs.preheader.i.loopexit
  %i_last.119.i.ph = phi i32 [ %1, %land.rhs.preheader.i.loopexit ], [ 2, %for.inc.i ]
  br label %land.rhs.i, !dbg !1867

land.rhs.i:                                       ; preds = %land.rhs.i.preheader, %while.body.i
  %i_last.119.i = phi i32 [ %dec.i, %while.body.i ], [ %i_last.119.i.ph, %land.rhs.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i, metadata !1838, metadata !DIExpression()), !dbg !1858
  %idxprom14.i = zext i32 %i_last.119.i to i64, !dbg !1868
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom14.i, !dbg !1868
  %2 = load i16, ptr %arrayidx.i, align 2, !dbg !1868, !tbaa !1450
  %cmp4.i = icmp eq i16 %2, 0, !dbg !1869
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1867

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.119.i, -1, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1838, metadata !DIExpression()), !dbg !1858
  %cmp3.i = icmp sgt i32 %i_last.119.i, 0, !dbg !1871
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1872, !llvm.loop !1873

x264_coeff_last_internal.exit:                    ; preds = %land.rhs.i, %while.body.i
  %i_last.1.lcssa.i.ph = phi i32 [ -1, %while.body.i ], [ %i_last.119.i, %land.rhs.i ]
  ret i32 %i_last.1.lcssa.i.ph, !dbg !1874
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_coeff_last16(ptr nocapture noundef readonly %l) #2 !dbg !1875 {
entry:
  call void @llvm.dbg.value(metadata ptr %l, metadata !1877, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata ptr %l, metadata !1834, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 16, metadata !1837, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 15, metadata !1838, metadata !DIExpression()), !dbg !1879
  %add.ptr.i = getelementptr inbounds i16, ptr %l, i64 -3
  br label %for.body.i, !dbg !1881

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.i ], [ 15, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1838, metadata !DIExpression()), !dbg !1879
  %add.ptr1.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %indvars.iv, !dbg !1882
  %0 = load i64, ptr %add.ptr1.i, align 8, !dbg !1882, !tbaa !1726
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1882
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.preheader.i, !dbg !1883

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -4, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1838, metadata !DIExpression()), !dbg !1879
  %cmp.i = icmp ugt i64 %indvars.iv, 6, !dbg !1885
  br i1 %cmp.i, label %for.body.i, label %x264_coeff_last_internal.exit, !dbg !1881, !llvm.loop !1886

land.rhs.preheader.i:                             ; preds = %for.body.i
  %1 = trunc i64 %indvars.iv to i32, !dbg !1888
  br label %land.rhs.i, !dbg !1888

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.preheader.i
  %i_last.119.i = phi i32 [ %dec.i, %while.body.i ], [ %1, %land.rhs.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i, metadata !1838, metadata !DIExpression()), !dbg !1879
  %idxprom14.i = zext i32 %i_last.119.i to i64, !dbg !1889
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom14.i, !dbg !1889
  %2 = load i16, ptr %arrayidx.i, align 2, !dbg !1889, !tbaa !1450
  %cmp4.i = icmp eq i16 %2, 0, !dbg !1890
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1888

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.119.i, -1, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1838, metadata !DIExpression()), !dbg !1879
  %cmp3.i = icmp sgt i32 %i_last.119.i, 0, !dbg !1892
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1893, !llvm.loop !1894

x264_coeff_last_internal.exit:                    ; preds = %for.inc.i, %land.rhs.i, %while.body.i
  %i_last.1.lcssa.i = phi i32 [ %i_last.119.i, %land.rhs.i ], [ -1, %while.body.i ], [ -1, %for.inc.i ], !dbg !1879
  ret i32 %i_last.1.lcssa.i, !dbg !1895
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal i32 @x264_coeff_last64(ptr nocapture noundef readonly %l) #2 !dbg !1896 {
entry:
  call void @llvm.dbg.value(metadata ptr %l, metadata !1898, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata ptr %l, metadata !1834, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i32 64, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i32 63, metadata !1838, metadata !DIExpression()), !dbg !1900
  %add.ptr.i = getelementptr inbounds i16, ptr %l, i64 -3
  br label %for.body.i, !dbg !1902

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.i ], [ 63, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1838, metadata !DIExpression()), !dbg !1900
  %add.ptr1.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %indvars.iv, !dbg !1903
  %0 = load i64, ptr %add.ptr1.i, align 8, !dbg !1903, !tbaa !1726
  %tobool.not.i = icmp eq i64 %0, 0, !dbg !1903
  br i1 %tobool.not.i, label %for.inc.i, label %land.rhs.preheader.i, !dbg !1904

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -4, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1838, metadata !DIExpression()), !dbg !1900
  %cmp.i = icmp ugt i64 %indvars.iv, 6, !dbg !1906
  br i1 %cmp.i, label %for.body.i, label %x264_coeff_last_internal.exit, !dbg !1902, !llvm.loop !1907

land.rhs.preheader.i:                             ; preds = %for.body.i
  %1 = trunc i64 %indvars.iv to i32, !dbg !1909
  br label %land.rhs.i, !dbg !1909

land.rhs.i:                                       ; preds = %while.body.i, %land.rhs.preheader.i
  %i_last.119.i = phi i32 [ %dec.i, %while.body.i ], [ %1, %land.rhs.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i, metadata !1838, metadata !DIExpression()), !dbg !1900
  %idxprom14.i = zext i32 %i_last.119.i to i64, !dbg !1910
  %arrayidx.i = getelementptr inbounds i16, ptr %l, i64 %idxprom14.i, !dbg !1910
  %2 = load i16, ptr %arrayidx.i, align 2, !dbg !1910, !tbaa !1450
  %cmp4.i = icmp eq i16 %2, 0, !dbg !1911
  br i1 %cmp4.i, label %while.body.i, label %x264_coeff_last_internal.exit, !dbg !1909

while.body.i:                                     ; preds = %land.rhs.i
  %dec.i = add nsw i32 %i_last.119.i, -1, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1838, metadata !DIExpression()), !dbg !1900
  %cmp3.i = icmp sgt i32 %i_last.119.i, 0, !dbg !1913
  br i1 %cmp3.i, label %land.rhs.i, label %x264_coeff_last_internal.exit, !dbg !1914, !llvm.loop !1915

x264_coeff_last_internal.exit:                    ; preds = %for.inc.i, %land.rhs.i, %while.body.i
  %i_last.1.lcssa.i = phi i32 [ %i_last.119.i, %land.rhs.i ], [ -1, %while.body.i ], [ -1, %for.inc.i ], !dbg !1900
  ret i32 %i_last.1.lcssa.i, !dbg !1916
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @x264_coeff_level_run4(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1917 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1919, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %runlevel, metadata !1920, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1832, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1834, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 4, metadata !1837, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i32 3, metadata !1838, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 3, metadata !1838, metadata !DIExpression()), !dbg !1928
  %0 = load i64, ptr %dct, align 8, !dbg !1930, !tbaa !1726
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1930
  br i1 %tobool.not.i.i, label %x264_coeff_last4.exit.thread, label %land.rhs.i.i, !dbg !1931

land.rhs.i.i:                                     ; preds = %entry, %while.body.i.i
  %i_last.119.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ 3, %entry ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1838, metadata !DIExpression()), !dbg !1928
  %idxprom14.i.i = zext i32 %i_last.119.i.i to i64, !dbg !1932
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom14.i.i, !dbg !1932
  %1 = load i16, ptr %arrayidx.i.i, align 2, !dbg !1932, !tbaa !1450
  %cmp4.i.i = icmp eq i16 %1, 0, !dbg !1933
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last4.exit, !dbg !1934

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.119.i.i, -1, !dbg !1935
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !1838, metadata !DIExpression()), !dbg !1928
  %cmp3.i.i.not = icmp eq i32 %i_last.119.i.i, 0, !dbg !1936
  br i1 %cmp3.i.i.not, label %x264_coeff_last4.exit.thread, label %land.rhs.i.i, !dbg !1937, !llvm.loop !1938

x264_coeff_last4.exit.thread:                     ; preds = %while.body.i.i, %entry
  store i32 -1, ptr %runlevel, align 4, !dbg !1939, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1923, metadata !DIExpression()), !dbg !1942
  %arrayidx4364 = getelementptr inbounds i16, ptr %dct, i64 -1, !dbg !1943
  %2 = load i16, ptr %arrayidx4364, align 2, !dbg !1943, !tbaa !1450
  %arrayidx24465 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !1943
  store i16 %2, ptr %arrayidx24465, align 2, !dbg !1943, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1921, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1925
  br label %do.end, !dbg !1943

x264_coeff_last4.exit:                            ; preds = %land.rhs.i.i
  store i32 %i_last.119.i.i, ptr %runlevel, align 4, !dbg !1939, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1922, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1923, metadata !DIExpression()), !dbg !1942
  %idxprom42 = sext i32 %i_last.119.i.i to i64, !dbg !1943
  %arrayidx43 = getelementptr inbounds i16, ptr %dct, i64 %idxprom42, !dbg !1943
  %3 = load i16, ptr %arrayidx43, align 2, !dbg !1943, !tbaa !1450
  %arrayidx244 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !1943
  store i16 %3, ptr %arrayidx244, align 2, !dbg !1943, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1921, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1925
  %cmp3146 = icmp sgt i32 %i_last.119.i.i, 0, !dbg !1943
  br i1 %cmp3146, label %land.rhs.lr.ph, label %do.end, !dbg !1943

land.rhs.lr.ph:                                   ; preds = %x264_coeff_last4.exit, %while.end
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %while.end ], [ 0, %x264_coeff_last4.exit ]
  %dec3049.in = phi i32 [ %indvars, %while.end ], [ %i_last.119.i.i, %x264_coeff_last4.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv58, metadata !1922, metadata !DIExpression()), !dbg !1925
  %4 = zext i32 %dec3049.in to i64, !dbg !1943
  %5 = call i32 @llvm.smax.i32(i32 %dec3049.in, i32 1), !dbg !1943
  br label %land.rhs, !dbg !1943

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %4, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.032 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %r.032, metadata !1923, metadata !DIExpression()), !dbg !1942
  %idxprom327 = and i64 %indvars.iv.next, 4294967295, !dbg !1943
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom327, !dbg !1943
  %6 = load i16, ptr %arrayidx4, align 2, !dbg !1943, !tbaa !1450
  %cmp5 = icmp eq i16 %6, 0, !dbg !1943
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1943

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.032, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1923, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1921, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1925
  %exitcond.not = icmp eq i32 %inc, %5, !dbg !1943
  br i1 %exitcond.not, label %while.cond.do.end_crit_edge, label %land.rhs, !dbg !1943, !llvm.loop !1944

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1943
  %7 = trunc i64 %indvars.iv to i32, !dbg !1943
  %conv7 = trunc i32 %r.032 to i8, !dbg !1943
  %indvars.iv.next59 = add nuw i64 %indvars.iv58, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next59, metadata !1922, metadata !DIExpression()), !dbg !1925
  %arrayidx10 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %indvars.iv58, !dbg !1943
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !1943, !tbaa !1726
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1921, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 0, metadata !1923, metadata !DIExpression()), !dbg !1942
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1943
  %idxprom = ashr exact i64 %sext, 32, !dbg !1943
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %idxprom, !dbg !1943
  %8 = load i16, ptr %arrayidx, align 2, !dbg !1943, !tbaa !1450
  %arrayidx2 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 %indvars.iv.next59, !dbg !1943
  store i16 %8, ptr %arrayidx2, align 2, !dbg !1943, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1921, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1925
  %cmp31 = icmp sgt i32 %7, 1, !dbg !1943
  br i1 %cmp31, label %land.rhs.lr.ph, label %do.body.do.end_crit_edge.loopexit, !dbg !1943

do.body.do.end_crit_edge.loopexit:                ; preds = %while.end
  %9 = trunc i64 %indvars.iv.next59 to i32, !dbg !1943
  br label %do.end, !dbg !1943

while.cond.do.end_crit_edge:                      ; preds = %while.body
  %10 = trunc i64 %indvars.iv58 to i32, !dbg !1943
  %phi.cast = trunc i32 %5 to i8, !dbg !1943
  br label %do.end, !dbg !1943

do.end:                                           ; preds = %x264_coeff_last4.exit, %do.body.do.end_crit_edge.loopexit, %x264_coeff_last4.exit.thread, %while.cond.do.end_crit_edge
  %i_total.0.lcssa = phi i32 [ %10, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last4.exit ], [ %9, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last4.exit.thread ], !dbg !1925
  %r.0.lcssa = phi i8 [ %phi.cast, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last4.exit ], [ 0, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last4.exit.thread ]
  %idxprom1.lcssa = zext i32 %i_total.0.lcssa to i64, !dbg !1943
  %inc824 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %9, metadata !1922, metadata !DIExpression()), !dbg !1925
  %arrayidx1025 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %idxprom1.lcssa, !dbg !1943
  store i8 %r.0.lcssa, ptr %arrayidx1025, align 1, !dbg !1943, !tbaa !1726
  ret i32 %inc824, !dbg !1939
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @x264_coeff_level_run15(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1945 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1947, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr %runlevel, metadata !1948, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1856, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1834, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 15, metadata !1837, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 14, metadata !1838, metadata !DIExpression()), !dbg !1956
  %add.ptr.i.i = getelementptr inbounds i16, ptr %dct, i64 -3
  br label %for.body.i.i, !dbg !1958

for.body.i.i:                                     ; preds = %for.inc.i.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i.i ], [ 14, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1838, metadata !DIExpression()), !dbg !1956
  %add.ptr1.i.i = getelementptr inbounds i16, ptr %add.ptr.i.i, i64 %indvars.iv.i, !dbg !1959
  %0 = load i64, ptr %add.ptr1.i.i, align 8, !dbg !1959, !tbaa !1726
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1959
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.preheader.i.loopexit.i, !dbg !1960

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -4, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1838, metadata !DIExpression()), !dbg !1956
  %cmp.i.i = icmp ugt i64 %indvars.iv.i, 6, !dbg !1962
  br i1 %cmp.i.i, label %for.body.i.i, label %land.rhs.i.i.preheader, !dbg !1958, !llvm.loop !1963

land.rhs.preheader.i.loopexit.i:                  ; preds = %for.body.i.i
  %1 = trunc i64 %indvars.iv.i to i32, !dbg !1965
  br label %land.rhs.i.i.preheader, !dbg !1965

land.rhs.i.i.preheader:                           ; preds = %for.inc.i.i, %land.rhs.preheader.i.loopexit.i
  %i_last.119.i.i.ph = phi i32 [ %1, %land.rhs.preheader.i.loopexit.i ], [ 2, %for.inc.i.i ]
  br label %land.rhs.i.i, !dbg !1965

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.preheader, %while.body.i.i
  %i_last.119.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %i_last.119.i.i.ph, %land.rhs.i.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1838, metadata !DIExpression()), !dbg !1956
  %idxprom14.i.i = zext i32 %i_last.119.i.i to i64, !dbg !1966
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom14.i.i, !dbg !1966
  %2 = load i16, ptr %arrayidx.i.i, align 2, !dbg !1966, !tbaa !1450
  %cmp4.i.i = icmp eq i16 %2, 0, !dbg !1967
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last15.exit, !dbg !1965

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.119.i.i, -1, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !1838, metadata !DIExpression()), !dbg !1956
  %cmp3.i.i = icmp sgt i32 %i_last.119.i.i, 0, !dbg !1969
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last15.exit.thread, !dbg !1970, !llvm.loop !1971

x264_coeff_last15.exit.thread:                    ; preds = %while.body.i.i
  store i32 -1, ptr %runlevel, align 4, !dbg !1972, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 undef, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1950, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1973
  %arrayidx4466 = getelementptr inbounds i16, ptr %dct, i64 -1, !dbg !1974
  %3 = load i16, ptr %arrayidx4466, align 2, !dbg !1974, !tbaa !1450
  %arrayidx24567 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !1974
  store i16 %3, ptr %arrayidx24567, align 2, !dbg !1974, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 undef, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1953
  br label %do.end, !dbg !1974

x264_coeff_last15.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.119.i.i, ptr %runlevel, align 4, !dbg !1972, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1950, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1973
  %idxprom43 = sext i32 %i_last.119.i.i to i64, !dbg !1974
  %arrayidx44 = getelementptr inbounds i16, ptr %dct, i64 %idxprom43, !dbg !1974
  %4 = load i16, ptr %arrayidx44, align 2, !dbg !1974, !tbaa !1450
  %arrayidx245 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !1974
  store i16 %4, ptr %arrayidx245, align 2, !dbg !1974, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1953
  %cmp3247 = icmp sgt i32 %i_last.119.i.i, 0, !dbg !1974
  br i1 %cmp3247, label %land.rhs.lr.ph, label %do.end, !dbg !1974

land.rhs.lr.ph:                                   ; preds = %x264_coeff_last15.exit, %while.end
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %while.end ], [ 0, %x264_coeff_last15.exit ]
  %dec3150.in = phi i32 [ %indvars, %while.end ], [ %i_last.119.i.i, %x264_coeff_last15.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv60, metadata !1950, metadata !DIExpression()), !dbg !1953
  %5 = zext i32 %dec3150.in to i64, !dbg !1974
  %6 = call i32 @llvm.smax.i32(i32 %dec3150.in, i32 1), !dbg !1974
  br label %land.rhs, !dbg !1974

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %5, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.033 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %r.033, metadata !1951, metadata !DIExpression()), !dbg !1973
  %idxprom327 = and i64 %indvars.iv.next, 4294967295, !dbg !1974
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom327, !dbg !1974
  %7 = load i16, ptr %arrayidx4, align 2, !dbg !1974, !tbaa !1450
  %cmp5 = icmp eq i16 %7, 0, !dbg !1974
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1974

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.033, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1951, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1953
  %exitcond.not = icmp eq i32 %inc, %6, !dbg !1974
  br i1 %exitcond.not, label %while.cond.do.end_crit_edge, label %land.rhs, !dbg !1974, !llvm.loop !1975

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1974
  %8 = trunc i64 %indvars.iv to i32, !dbg !1974
  %conv7 = trunc i32 %r.033 to i8, !dbg !1974
  %indvars.iv.next61 = add nuw i64 %indvars.iv60, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next61, metadata !1950, metadata !DIExpression()), !dbg !1953
  %arrayidx10 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %indvars.iv60, !dbg !1974
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !1974, !tbaa !1726
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1949, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1951, metadata !DIExpression()), !dbg !1973
  %sext = shl i64 %indvars.iv.next, 32, !dbg !1974
  %idxprom = ashr exact i64 %sext, 32, !dbg !1974
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %idxprom, !dbg !1974
  %9 = load i16, ptr %arrayidx, align 2, !dbg !1974, !tbaa !1450
  %arrayidx2 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 %indvars.iv.next61, !dbg !1974
  store i16 %9, ptr %arrayidx2, align 2, !dbg !1974, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1953
  %cmp32 = icmp sgt i32 %8, 1, !dbg !1974
  br i1 %cmp32, label %land.rhs.lr.ph, label %do.body.do.end_crit_edge.loopexit, !dbg !1974

do.body.do.end_crit_edge.loopexit:                ; preds = %while.end
  %10 = trunc i64 %indvars.iv.next61 to i32, !dbg !1974
  br label %do.end, !dbg !1974

while.cond.do.end_crit_edge:                      ; preds = %while.body
  %11 = trunc i64 %indvars.iv60 to i32, !dbg !1974
  %phi.cast = trunc i32 %6 to i8, !dbg !1974
  br label %do.end, !dbg !1974

do.end:                                           ; preds = %x264_coeff_last15.exit, %do.body.do.end_crit_edge.loopexit, %x264_coeff_last15.exit.thread, %while.cond.do.end_crit_edge
  %i_total.0.lcssa = phi i32 [ %11, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last15.exit ], [ %10, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last15.exit.thread ], !dbg !1953
  %r.0.lcssa = phi i8 [ %phi.cast, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last15.exit ], [ 0, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last15.exit.thread ]
  %idxprom1.lcssa = zext i32 %i_total.0.lcssa to i64, !dbg !1974
  %inc824 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %10, metadata !1950, metadata !DIExpression()), !dbg !1953
  %arrayidx1025 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %idxprom1.lcssa, !dbg !1974
  store i8 %r.0.lcssa, ptr %arrayidx1025, align 1, !dbg !1974, !tbaa !1726
  ret i32 %inc824, !dbg !1972
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i32 @x264_coeff_level_run16(ptr nocapture noundef readonly %dct, ptr nocapture noundef writeonly %runlevel) #1 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1978, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %runlevel, metadata !1979, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1877, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1834, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 16, metadata !1837, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i32 15, metadata !1838, metadata !DIExpression()), !dbg !1987
  %add.ptr.i.i = getelementptr inbounds i16, ptr %dct, i64 -3
  br label %for.body.i.i, !dbg !1989

for.body.i.i:                                     ; preds = %for.inc.i.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i.i ], [ 15, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1838, metadata !DIExpression()), !dbg !1987
  %add.ptr1.i.i = getelementptr inbounds i16, ptr %add.ptr.i.i, i64 %indvars.iv.i, !dbg !1990
  %0 = load i64, ptr %add.ptr1.i.i, align 8, !dbg !1990, !tbaa !1726
  %tobool.not.i.i = icmp eq i64 %0, 0, !dbg !1990
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %land.rhs.preheader.i.i, !dbg !1991

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -4, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1838, metadata !DIExpression()), !dbg !1987
  %cmp.i.i = icmp ugt i64 %indvars.iv.i, 6, !dbg !1993
  br i1 %cmp.i.i, label %for.body.i.i, label %x264_coeff_last16.exit.thread, !dbg !1989, !llvm.loop !1994

land.rhs.preheader.i.i:                           ; preds = %for.body.i.i
  %1 = trunc i64 %indvars.iv.i to i32, !dbg !1996
  br label %land.rhs.i.i, !dbg !1996

land.rhs.i.i:                                     ; preds = %while.body.i.i, %land.rhs.preheader.i.i
  %i_last.119.i.i = phi i32 [ %dec.i.i, %while.body.i.i ], [ %1, %land.rhs.preheader.i.i ]
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1838, metadata !DIExpression()), !dbg !1987
  %idxprom14.i.i = zext i32 %i_last.119.i.i to i64, !dbg !1997
  %arrayidx.i.i = getelementptr inbounds i16, ptr %dct, i64 %idxprom14.i.i, !dbg !1997
  %2 = load i16, ptr %arrayidx.i.i, align 2, !dbg !1997, !tbaa !1450
  %cmp4.i.i = icmp eq i16 %2, 0, !dbg !1998
  br i1 %cmp4.i.i, label %while.body.i.i, label %x264_coeff_last16.exit, !dbg !1996

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %dec.i.i = add nsw i32 %i_last.119.i.i, -1, !dbg !1999
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !1838, metadata !DIExpression()), !dbg !1987
  %cmp3.i.i = icmp sgt i32 %i_last.119.i.i, 0, !dbg !2000
  br i1 %cmp3.i.i, label %land.rhs.i.i, label %x264_coeff_last16.exit.thread, !dbg !2001, !llvm.loop !2002

x264_coeff_last16.exit.thread:                    ; preds = %for.inc.i.i, %while.body.i.i
  store i32 -1, ptr %runlevel, align 4, !dbg !2003, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1982, metadata !DIExpression()), !dbg !2004
  %arrayidx4568 = getelementptr inbounds i16, ptr %dct, i64 -1, !dbg !2005
  %3 = load i16, ptr %arrayidx4568, align 2, !dbg !2005, !tbaa !1450
  %arrayidx24669 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !2005
  store i16 %3, ptr %arrayidx24669, align 2, !dbg !2005, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1980, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1984
  br label %do.end, !dbg !2005

x264_coeff_last16.exit:                           ; preds = %land.rhs.i.i
  store i32 %i_last.119.i.i, ptr %runlevel, align 4, !dbg !2003, !tbaa !1940
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1981, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1982, metadata !DIExpression()), !dbg !2004
  %idxprom44 = sext i32 %i_last.119.i.i to i64, !dbg !2005
  %arrayidx45 = getelementptr inbounds i16, ptr %dct, i64 %idxprom44, !dbg !2005
  %4 = load i16, ptr %arrayidx45, align 2, !dbg !2005, !tbaa !1450
  %arrayidx246 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 0, !dbg !2005
  store i16 %4, ptr %arrayidx246, align 2, !dbg !2005, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %i_last.119.i.i, metadata !1980, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1984
  %cmp3348 = icmp sgt i32 %i_last.119.i.i, 0, !dbg !2005
  br i1 %cmp3348, label %land.rhs.lr.ph, label %do.end, !dbg !2005

land.rhs.lr.ph:                                   ; preds = %x264_coeff_last16.exit, %while.end
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %while.end ], [ 0, %x264_coeff_last16.exit ]
  %dec3251.in = phi i32 [ %indvars, %while.end ], [ %i_last.119.i.i, %x264_coeff_last16.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv62, metadata !1981, metadata !DIExpression()), !dbg !1984
  %5 = zext i32 %dec3251.in to i64, !dbg !2005
  %6 = call i32 @llvm.smax.i32(i32 %dec3251.in, i32 1), !dbg !2005
  br label %land.rhs, !dbg !2005

land.rhs:                                         ; preds = %land.rhs.lr.ph, %while.body
  %indvars.iv = phi i64 [ %5, %land.rhs.lr.ph ], [ %indvars.iv.next, %while.body ]
  %r.034 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %while.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %r.034, metadata !1982, metadata !DIExpression()), !dbg !2004
  %idxprom327 = and i64 %indvars.iv.next, 4294967295, !dbg !2005
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %idxprom327, !dbg !2005
  %7 = load i16, ptr %arrayidx4, align 2, !dbg !2005, !tbaa !1450
  %cmp5 = icmp eq i16 %7, 0, !dbg !2005
  br i1 %cmp5, label %while.body, label %while.end, !dbg !2005

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %r.034, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1982, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1980, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1984
  %exitcond.not = icmp eq i32 %inc, %6, !dbg !2005
  br i1 %exitcond.not, label %while.cond.do.end_crit_edge, label %land.rhs, !dbg !2005, !llvm.loop !2006

while.end:                                        ; preds = %land.rhs
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !2005
  %8 = trunc i64 %indvars.iv to i32, !dbg !2005
  %conv7 = trunc i32 %r.034 to i8, !dbg !2005
  %indvars.iv.next63 = add nuw i64 %indvars.iv62, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next63, metadata !1981, metadata !DIExpression()), !dbg !1984
  %arrayidx10 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %indvars.iv62, !dbg !2005
  store i8 %conv7, ptr %arrayidx10, align 1, !dbg !2005, !tbaa !1726
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1980, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata i32 0, metadata !1982, metadata !DIExpression()), !dbg !2004
  %sext = shl i64 %indvars.iv.next, 32, !dbg !2005
  %idxprom = ashr exact i64 %sext, 32, !dbg !2005
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %idxprom, !dbg !2005
  %9 = load i16, ptr %arrayidx, align 2, !dbg !2005, !tbaa !1450
  %arrayidx2 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 1, i64 %indvars.iv.next63, !dbg !2005
  store i16 %9, ptr %arrayidx2, align 2, !dbg !2005, !tbaa !1450
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !1980, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1984
  %cmp33 = icmp sgt i32 %8, 1, !dbg !2005
  br i1 %cmp33, label %land.rhs.lr.ph, label %do.body.do.end_crit_edge.loopexit, !dbg !2005

do.body.do.end_crit_edge.loopexit:                ; preds = %while.end
  %10 = trunc i64 %indvars.iv.next63 to i32, !dbg !2005
  br label %do.end, !dbg !2005

while.cond.do.end_crit_edge:                      ; preds = %while.body
  %11 = trunc i64 %indvars.iv62 to i32, !dbg !2005
  %phi.cast = trunc i32 %6 to i8, !dbg !2005
  br label %do.end, !dbg !2005

do.end:                                           ; preds = %x264_coeff_last16.exit, %do.body.do.end_crit_edge.loopexit, %x264_coeff_last16.exit.thread, %while.cond.do.end_crit_edge
  %i_total.0.lcssa = phi i32 [ %11, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last16.exit ], [ %10, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last16.exit.thread ], !dbg !1984
  %r.0.lcssa = phi i8 [ %phi.cast, %while.cond.do.end_crit_edge ], [ 0, %x264_coeff_last16.exit ], [ 0, %do.body.do.end_crit_edge.loopexit ], [ 0, %x264_coeff_last16.exit.thread ]
  %idxprom1.lcssa = zext i32 %i_total.0.lcssa to i64, !dbg !2005
  %inc824 = add nuw nsw i32 %i_total.0.lcssa, 1, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %10, metadata !1981, metadata !DIExpression()), !dbg !1984
  %arrayidx1025 = getelementptr inbounds %struct.x264_run_level_t, ptr %runlevel, i64 0, i32 2, i64 %idxprom1.lcssa, !dbg !2005
  store i8 %r.0.lcssa, ptr %arrayidx1025, align 1, !dbg !2005, !tbaa !1726
  ret i32 %inc824, !dbg !2003
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_decimate_table4", scope: !2, file: !59, line: 162, type: !64, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !15, globals: !56, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/quant.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "b18eb31ba13b78284f51bf7313166417")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cabac_ctx_block_cat_e", file: !6, line: 258, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "DCT_LUMA_DC", value: 0)
!10 = !DIEnumerator(name: "DCT_LUMA_AC", value: 1)
!11 = !DIEnumerator(name: "DCT_LUMA_4x4", value: 2)
!12 = !DIEnumerator(name: "DCT_CHROMA_DC", value: 3)
!13 = !DIEnumerator(name: "DCT_CHROMA_AC", value: 4)
!14 = !DIEnumerator(name: "DCT_LUMA_8x8", value: 5)
!15 = !{!16, !7, !40}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !18, line: 89, baseType: !19)
!18 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!19 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 89, size: 32, elements: !20)
!20 = !{!21, !26, !33}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !19, file: !18, line: 89, baseType: !22, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 26, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !7)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!26 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !19, file: !18, line: 89, baseType: !27, size: 32)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !31)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !23, line: 25, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !25, line: 40, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 2)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !19, file: !18, line: 89, baseType: !34, size: 32)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !38)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 24, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !37)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !{!39}
!39 = !DISubrange(count: 4)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !18, line: 90, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !18, line: 90, size: 64, elements: !43)
!43 = !{!44, !48, !50, !52}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !42, file: !18, line: 90, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 27, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !25, line: 45, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !42, file: !18, line: 90, baseType: !49, size: 64)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 64, elements: !31)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !42, file: !18, line: 90, baseType: !51, size: 64)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !38)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !42, file: !18, line: 90, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 8)
!56 = !{!0, !57}
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "x264_decimate_table8", scope: !2, file: !59, line: 166, type: !60, isLocal: false, isDefinition: true)
!59 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b18eb31ba13b78284f51bf7313166417")
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !62)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!62 = !{!63}
!63 = !DISubrange(count: 64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 16)
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 7, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!74 = distinct !DISubprogram(name: "x264_quant_init", scope: !59, file: !59, line: 266, type: !75, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1367)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !88, !1366}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !79, line: 46, baseType: !80)
!79 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !18, line: 381, size: 266752, elements: !81)
!81 = !{!82, !248, !252, !253, !254, !255, !256, !257, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !393, !395, !422, !424, !425, !426, !430, !434, !435, !436, !440, !444, !445, !446, !451, !454, !455, !532, !549, !710, !711, !712, !713, !717, !718, !719, !720, !721, !722, !723, !738, !931, !935, !996, !999, !1001, !1002, !1003, !1006, !1011, !1020, !1021, !1029, !1031, !1036, !1112, !1198, !1242, !1264, !1313, !1342}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !80, file: !18, line: 384, baseType: !83, size: 5632)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !79, line: 376, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !79, line: 176, size: 5632, elements: !85)
!85 = !{!86, !87, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !130, !132, !133, !134, !135, !137, !138, !153, !154, !155, !156, !157, !186, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !84, file: !79, line: 179, baseType: !7, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !84, file: !79, line: 180, baseType: !88, size: 32, offset: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !84, file: !79, line: 181, baseType: !88, size: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !84, file: !79, line: 182, baseType: !88, size: 32, offset: 96)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !84, file: !79, line: 183, baseType: !88, size: 32, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !84, file: !79, line: 186, baseType: !88, size: 32, offset: 160)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !84, file: !79, line: 187, baseType: !88, size: 32, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !84, file: !79, line: 188, baseType: !88, size: 32, offset: 224)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !84, file: !79, line: 189, baseType: !88, size: 32, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !84, file: !79, line: 190, baseType: !88, size: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !84, file: !79, line: 198, baseType: !88, size: 32, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !84, file: !79, line: 215, baseType: !99, size: 288, offset: 352)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 200, size: 288, elements: !100)
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !99, file: !79, line: 203, baseType: !88, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !99, file: !79, line: 204, baseType: !88, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !99, file: !79, line: 206, baseType: !88, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !99, file: !79, line: 209, baseType: !88, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !99, file: !79, line: 210, baseType: !88, size: 32, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !99, file: !79, line: 211, baseType: !88, size: 32, offset: 160)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !99, file: !79, line: 212, baseType: !88, size: 32, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !99, file: !79, line: 213, baseType: !88, size: 32, offset: 224)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !99, file: !79, line: 214, baseType: !88, size: 32, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !84, file: !79, line: 218, baseType: !88, size: 32, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !84, file: !79, line: 219, baseType: !88, size: 32, offset: 672)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !84, file: !79, line: 220, baseType: !88, size: 32, offset: 704)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !84, file: !79, line: 221, baseType: !88, size: 32, offset: 736)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !84, file: !79, line: 222, baseType: !88, size: 32, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !84, file: !79, line: 224, baseType: !88, size: 32, offset: 800)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !84, file: !79, line: 225, baseType: !88, size: 32, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !84, file: !79, line: 226, baseType: !88, size: 32, offset: 864)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !84, file: !79, line: 227, baseType: !88, size: 32, offset: 896)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !84, file: !79, line: 229, baseType: !88, size: 32, offset: 928)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !84, file: !79, line: 230, baseType: !88, size: 32, offset: 960)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !84, file: !79, line: 231, baseType: !88, size: 32, offset: 992)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !84, file: !79, line: 233, baseType: !88, size: 32, offset: 1024)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !84, file: !79, line: 234, baseType: !88, size: 32, offset: 1056)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !84, file: !79, line: 236, baseType: !88, size: 32, offset: 1088)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !84, file: !79, line: 237, baseType: !88, size: 32, offset: 1120)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !84, file: !79, line: 239, baseType: !88, size: 32, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !84, file: !79, line: 240, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !84, file: !79, line: 241, baseType: !131, size: 128, offset: 1280)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !65)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !84, file: !79, line: 242, baseType: !131, size: 128, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !84, file: !79, line: 243, baseType: !131, size: 128, offset: 1536)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !84, file: !79, line: 244, baseType: !131, size: 128, offset: 1664)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !84, file: !79, line: 245, baseType: !136, size: 512, offset: 1792)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !62)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !84, file: !79, line: 246, baseType: !136, size: 512, offset: 2304)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !84, file: !79, line: 249, baseType: !139, size: 64, offset: 2816)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !142, !88, !143, !145}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !147)
!147 = !{!148, !150, !151, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !149, line: 166, baseType: !7, size: 32)
!149 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !149, line: 166, baseType: !7, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !149, line: 166, baseType: !142, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !149, line: 166, baseType: !142, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !84, file: !79, line: 250, baseType: !142, size: 64, offset: 2880)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !84, file: !79, line: 251, baseType: !88, size: 32, offset: 2944)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !84, file: !79, line: 252, baseType: !88, size: 32, offset: 2976)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !84, file: !79, line: 253, baseType: !128, size: 64, offset: 3008)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !84, file: !79, line: 287, baseType: !158, size: 800, offset: 3072)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 256, size: 800, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !184, !185}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !158, file: !79, line: 258, baseType: !7, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !158, file: !79, line: 259, baseType: !7, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !158, file: !79, line: 261, baseType: !88, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !158, file: !79, line: 262, baseType: !88, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !158, file: !79, line: 263, baseType: !88, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !158, file: !79, line: 264, baseType: !88, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !158, file: !79, line: 265, baseType: !88, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !158, file: !79, line: 267, baseType: !88, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !158, file: !79, line: 268, baseType: !88, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !158, file: !79, line: 269, baseType: !88, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !158, file: !79, line: 270, baseType: !88, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !158, file: !79, line: 271, baseType: !88, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !158, file: !79, line: 272, baseType: !88, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !158, file: !79, line: 273, baseType: !88, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !158, file: !79, line: 274, baseType: !88, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !158, file: !79, line: 275, baseType: !88, size: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !158, file: !79, line: 276, baseType: !88, size: 32, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !158, file: !79, line: 277, baseType: !88, size: 32, offset: 544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !158, file: !79, line: 278, baseType: !179, size: 32, offset: 576)
!179 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !158, file: !79, line: 279, baseType: !179, size: 32, offset: 608)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !158, file: !79, line: 280, baseType: !88, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !158, file: !79, line: 283, baseType: !183, size: 64, offset: 672)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !31)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !158, file: !79, line: 285, baseType: !88, size: 32, offset: 736)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !158, file: !79, line: 286, baseType: !88, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !84, file: !79, line: 327, baseType: !187, size: 1152, offset: 3904)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !79, line: 290, size: 1152, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !226, !227}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !187, file: !79, line: 292, baseType: !88, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !187, file: !79, line: 294, baseType: !88, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !187, file: !79, line: 295, baseType: !88, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !187, file: !79, line: 296, baseType: !88, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !187, file: !79, line: 297, baseType: !88, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !187, file: !79, line: 299, baseType: !88, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !187, file: !79, line: 300, baseType: !179, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !187, file: !79, line: 301, baseType: !179, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !187, file: !79, line: 302, baseType: !179, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !187, file: !79, line: 303, baseType: !88, size: 32, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !187, file: !79, line: 304, baseType: !88, size: 32, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !187, file: !79, line: 305, baseType: !179, size: 32, offset: 352)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !187, file: !79, line: 306, baseType: !179, size: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !187, file: !79, line: 307, baseType: !179, size: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !187, file: !79, line: 309, baseType: !88, size: 32, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !187, file: !79, line: 310, baseType: !179, size: 32, offset: 480)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !187, file: !79, line: 311, baseType: !88, size: 32, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !187, file: !79, line: 312, baseType: !88, size: 32, offset: 544)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !187, file: !79, line: 315, baseType: !88, size: 32, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !187, file: !79, line: 316, baseType: !128, size: 64, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !187, file: !79, line: 317, baseType: !88, size: 32, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !187, file: !79, line: 318, baseType: !128, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !187, file: !79, line: 321, baseType: !179, size: 32, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !187, file: !79, line: 322, baseType: !179, size: 32, offset: 864)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !187, file: !79, line: 323, baseType: !179, size: 32, offset: 896)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !187, file: !79, line: 324, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !79, line: 174, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 167, size: 256, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !217, file: !79, line: 169, baseType: !88, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !217, file: !79, line: 169, baseType: !88, size: 32, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !217, file: !79, line: 170, baseType: !88, size: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !217, file: !79, line: 171, baseType: !88, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !217, file: !79, line: 172, baseType: !179, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !217, file: !79, line: 173, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !187, file: !79, line: 325, baseType: !88, size: 32, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !187, file: !79, line: 326, baseType: !128, size: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !84, file: !79, line: 330, baseType: !88, size: 32, offset: 5056)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !84, file: !79, line: 331, baseType: !88, size: 32, offset: 5088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !84, file: !79, line: 332, baseType: !88, size: 32, offset: 5120)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !84, file: !79, line: 334, baseType: !88, size: 32, offset: 5152)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !84, file: !79, line: 335, baseType: !88, size: 32, offset: 5184)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !84, file: !79, line: 336, baseType: !22, size: 32, offset: 5216)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !84, file: !79, line: 337, baseType: !22, size: 32, offset: 5248)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !84, file: !79, line: 338, baseType: !22, size: 32, offset: 5280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !84, file: !79, line: 339, baseType: !22, size: 32, offset: 5312)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !84, file: !79, line: 340, baseType: !88, size: 32, offset: 5344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !84, file: !79, line: 344, baseType: !88, size: 32, offset: 5376)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !84, file: !79, line: 356, baseType: !88, size: 32, offset: 5408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !84, file: !79, line: 364, baseType: !88, size: 32, offset: 5440)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !84, file: !79, line: 367, baseType: !88, size: 32, offset: 5472)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !84, file: !79, line: 368, baseType: !88, size: 32, offset: 5504)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !84, file: !79, line: 369, baseType: !88, size: 32, offset: 5536)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !84, file: !79, line: 375, baseType: !245, size: 64, offset: 5568)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !142}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !80, file: !18, line: 386, baseType: !249, size: 8256, offset: 5632)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8256, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 129)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !80, file: !18, line: 387, baseType: !88, size: 32, offset: 13888)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !80, file: !18, line: 388, baseType: !88, size: 32, offset: 13920)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !80, file: !18, line: 389, baseType: !88, size: 32, offset: 13952)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !80, file: !18, line: 390, baseType: !88, size: 32, offset: 13984)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !80, file: !18, line: 391, baseType: !88, size: 32, offset: 14016)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !80, file: !18, line: 402, baseType: !258, size: 576, offset: 14080)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 394, size: 576, elements: !259)
!259 = !{!260, !261, !262, !272, !273, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !258, file: !18, line: 396, baseType: !88, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !258, file: !18, line: 397, baseType: !88, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !258, file: !18, line: 398, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !79, line: 604, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 593, size: 192, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !265, file: !79, line: 595, baseType: !88, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !265, file: !79, line: 596, baseType: !88, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !265, file: !79, line: 599, baseType: !88, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !265, file: !79, line: 603, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !258, file: !18, line: 399, baseType: !88, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !258, file: !18, line: 400, baseType: !271, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !258, file: !18, line: 401, baseType: !275, size: 320, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !276, line: 56, baseType: !277)
!276 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !276, line: 47, size: 320, elements: !278)
!278 = !{!279, !280, !281, !282, !286, !287}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !277, file: !276, line: 49, baseType: !271, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !277, file: !276, line: 50, baseType: !271, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !277, file: !276, line: 51, baseType: !271, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !277, file: !276, line: 53, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !284, line: 87, baseType: !285)
!284 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!285 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !277, file: !276, line: 54, baseType: !88, size: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !277, file: !276, line: 55, baseType: !88, size: 32, offset: 288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !80, file: !18, line: 404, baseType: !271, size: 64, offset: 14656)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !80, file: !18, line: 405, baseType: !88, size: 32, offset: 14720)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !80, file: !18, line: 410, baseType: !88, size: 32, offset: 14752)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !80, file: !18, line: 411, baseType: !88, size: 32, offset: 14784)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !80, file: !18, line: 413, baseType: !88, size: 32, offset: 14816)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !80, file: !18, line: 415, baseType: !88, size: 32, offset: 14848)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !80, file: !18, line: 416, baseType: !88, size: 32, offset: 14880)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !80, file: !18, line: 418, baseType: !88, size: 32, offset: 14912)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !80, file: !18, line: 419, baseType: !88, size: 32, offset: 14944)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !80, file: !18, line: 420, baseType: !88, size: 32, offset: 14976)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !80, file: !18, line: 421, baseType: !88, size: 32, offset: 15008)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !80, file: !18, line: 422, baseType: !88, size: 32, offset: 15040)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !80, file: !18, line: 424, baseType: !88, size: 32, offset: 15072)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !80, file: !18, line: 425, baseType: !88, size: 32, offset: 15104)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !80, file: !18, line: 427, baseType: !88, size: 32, offset: 15136)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !80, file: !18, line: 430, baseType: !304, size: 10400, offset: 15168)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 10400, elements: !391)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !306, line: 154, baseType: !307)
!306 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 52, size: 10400, elements: !308)
!308 = !{!309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !326, !327, !328, !329, !330, !331, !332, !333, !334, !341, !342, !390}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !307, file: !306, line: 54, baseType: !88, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !307, file: !306, line: 56, baseType: !88, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !307, file: !306, line: 57, baseType: !88, size: 32, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !307, file: !306, line: 59, baseType: !88, size: 32, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !307, file: !306, line: 60, baseType: !88, size: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !307, file: !306, line: 61, baseType: !88, size: 32, offset: 160)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !307, file: !306, line: 63, baseType: !88, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !307, file: !306, line: 65, baseType: !88, size: 32, offset: 224)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !307, file: !306, line: 67, baseType: !88, size: 32, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !307, file: !306, line: 69, baseType: !88, size: 32, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !307, file: !306, line: 70, baseType: !88, size: 32, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !307, file: !306, line: 71, baseType: !88, size: 32, offset: 352)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !307, file: !306, line: 72, baseType: !88, size: 32, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !307, file: !306, line: 73, baseType: !323, size: 8192, offset: 416)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8192, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !307, file: !306, line: 75, baseType: !88, size: 32, offset: 8608)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !307, file: !306, line: 76, baseType: !88, size: 32, offset: 8640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !307, file: !306, line: 77, baseType: !88, size: 32, offset: 8672)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !307, file: !306, line: 78, baseType: !88, size: 32, offset: 8704)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !307, file: !306, line: 79, baseType: !88, size: 32, offset: 8736)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !307, file: !306, line: 80, baseType: !88, size: 32, offset: 8768)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !307, file: !306, line: 81, baseType: !88, size: 32, offset: 8800)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !307, file: !306, line: 83, baseType: !88, size: 32, offset: 8832)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !307, file: !306, line: 90, baseType: !335, size: 128, offset: 8864)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !306, line: 84, size: 128, elements: !336)
!336 = !{!337, !338, !339, !340}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !335, file: !306, line: 86, baseType: !88, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !335, file: !306, line: 87, baseType: !88, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !335, file: !306, line: 88, baseType: !88, size: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !335, file: !306, line: 89, baseType: !88, size: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !307, file: !306, line: 92, baseType: !88, size: 32, offset: 8992)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !307, file: !306, line: 150, baseType: !343, size: 1344, offset: 9024)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !307, file: !306, line: 93, size: 1344, elements: !344)
!344 = !{!345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !343, file: !306, line: 95, baseType: !88, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !343, file: !306, line: 96, baseType: !88, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !343, file: !306, line: 97, baseType: !88, size: 32, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !343, file: !306, line: 99, baseType: !88, size: 32, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !343, file: !306, line: 100, baseType: !88, size: 32, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !343, file: !306, line: 102, baseType: !88, size: 32, offset: 160)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !343, file: !306, line: 103, baseType: !88, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !343, file: !306, line: 104, baseType: !88, size: 32, offset: 224)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !343, file: !306, line: 105, baseType: !88, size: 32, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !343, file: !306, line: 106, baseType: !88, size: 32, offset: 288)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !343, file: !306, line: 107, baseType: !88, size: 32, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !343, file: !306, line: 108, baseType: !88, size: 32, offset: 352)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !343, file: !306, line: 110, baseType: !88, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !343, file: !306, line: 111, baseType: !88, size: 32, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !343, file: !306, line: 112, baseType: !88, size: 32, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !343, file: !306, line: 114, baseType: !88, size: 32, offset: 480)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !343, file: !306, line: 115, baseType: !22, size: 32, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !343, file: !306, line: 116, baseType: !22, size: 32, offset: 544)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !343, file: !306, line: 117, baseType: !88, size: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !343, file: !306, line: 119, baseType: !88, size: 32, offset: 608)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !343, file: !306, line: 120, baseType: !88, size: 32, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !343, file: !306, line: 137, baseType: !367, size: 384, offset: 672)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !306, line: 122, size: 384, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !367, file: !306, line: 124, baseType: !88, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !367, file: !306, line: 125, baseType: !88, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !367, file: !306, line: 126, baseType: !88, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !367, file: !306, line: 127, baseType: !88, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !367, file: !306, line: 128, baseType: !88, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !367, file: !306, line: 129, baseType: !88, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !367, file: !306, line: 130, baseType: !88, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !367, file: !306, line: 131, baseType: !88, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !367, file: !306, line: 133, baseType: !88, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !367, file: !306, line: 134, baseType: !88, size: 32, offset: 288)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !367, file: !306, line: 135, baseType: !88, size: 32, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !367, file: !306, line: 136, baseType: !88, size: 32, offset: 352)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !343, file: !306, line: 139, baseType: !88, size: 32, offset: 1056)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !343, file: !306, line: 140, baseType: !88, size: 32, offset: 1088)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !343, file: !306, line: 141, baseType: !88, size: 32, offset: 1120)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !343, file: !306, line: 142, baseType: !88, size: 32, offset: 1152)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !343, file: !306, line: 143, baseType: !88, size: 32, offset: 1184)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !343, file: !306, line: 144, baseType: !88, size: 32, offset: 1216)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !343, file: !306, line: 145, baseType: !88, size: 32, offset: 1248)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !343, file: !306, line: 146, baseType: !88, size: 32, offset: 1280)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !343, file: !306, line: 147, baseType: !88, size: 32, offset: 1312)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !307, file: !306, line: 152, baseType: !88, size: 32, offset: 10368)
!391 = !{!392}
!392 = !DISubrange(count: 1)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !80, file: !18, line: 431, baseType: !394, size: 64, offset: 25600)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !80, file: !18, line: 432, baseType: !396, size: 960, offset: 25664)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 960, elements: !391)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !306, line: 186, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 156, size: 960, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !398, file: !306, line: 158, baseType: !88, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !398, file: !306, line: 159, baseType: !88, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !398, file: !306, line: 161, baseType: !88, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !398, file: !306, line: 163, baseType: !88, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !398, file: !306, line: 164, baseType: !88, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !398, file: !306, line: 166, baseType: !88, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !398, file: !306, line: 167, baseType: !88, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !398, file: !306, line: 169, baseType: !88, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !398, file: !306, line: 170, baseType: !88, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !398, file: !306, line: 172, baseType: !88, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !398, file: !306, line: 173, baseType: !88, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !398, file: !306, line: 175, baseType: !88, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !398, file: !306, line: 177, baseType: !88, size: 32, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !398, file: !306, line: 178, baseType: !88, size: 32, offset: 416)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !398, file: !306, line: 179, baseType: !88, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !398, file: !306, line: 181, baseType: !88, size: 32, offset: 480)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !398, file: !306, line: 183, baseType: !88, size: 32, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !398, file: !306, line: 184, baseType: !418, size: 384, offset: 576)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !420)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!420 = !{!421}
!421 = !DISubrange(count: 6)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !80, file: !18, line: 433, baseType: !423, size: 64, offset: 26624)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !80, file: !18, line: 434, baseType: !88, size: 32, offset: 26688)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !80, file: !18, line: 437, baseType: !88, size: 32, offset: 26720)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !80, file: !18, line: 440, baseType: !427, size: 256, offset: 26752)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 256, elements: !38)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 512, elements: !65)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !80, file: !18, line: 441, baseType: !431, size: 128, offset: 27008)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 128, elements: !31)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !62)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !80, file: !18, line: 443, baseType: !427, size: 256, offset: 27136)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !80, file: !18, line: 444, baseType: !431, size: 128, offset: 27392)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !80, file: !18, line: 446, baseType: !437, size: 256, offset: 27520)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 256, elements: !38)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !65)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !80, file: !18, line: 447, baseType: !441, size: 128, offset: 27776)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 128, elements: !31)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1024, elements: !62)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !80, file: !18, line: 448, baseType: !437, size: 256, offset: 27904)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !80, file: !18, line: 449, baseType: !441, size: 128, offset: 28160)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !80, file: !18, line: 454, baseType: !447, size: 5888, offset: 28288)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 5888, elements: !449)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!449 = !{!450}
!450 = !DISubrange(count: 92)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !80, file: !18, line: 455, baseType: !452, size: 23552, offset: 34176)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 23552, elements: !453)
!453 = !{!450, !39}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !80, file: !18, line: 457, baseType: !419, size: 64, offset: 57728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !80, file: !18, line: 460, baseType: !456, size: 53376, offset: 57856)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !18, line: 364, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 302, size: 53376, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !487, !516, !517, !518, !524, !525, !526, !527, !528, !529, !530, !531}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !457, file: !18, line: 304, baseType: !394, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !457, file: !18, line: 305, baseType: !423, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !457, file: !18, line: 307, baseType: !88, size: 32, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !457, file: !18, line: 308, baseType: !88, size: 32, offset: 160)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !457, file: !18, line: 309, baseType: !88, size: 32, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !457, file: !18, line: 311, baseType: !88, size: 32, offset: 224)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !457, file: !18, line: 313, baseType: !88, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !457, file: !18, line: 315, baseType: !88, size: 32, offset: 288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !457, file: !18, line: 316, baseType: !88, size: 32, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !457, file: !18, line: 317, baseType: !88, size: 32, offset: 352)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !457, file: !18, line: 319, baseType: !88, size: 32, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !457, file: !18, line: 321, baseType: !88, size: 32, offset: 416)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !457, file: !18, line: 322, baseType: !88, size: 32, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !457, file: !18, line: 324, baseType: !183, size: 64, offset: 480)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !457, file: !18, line: 325, baseType: !88, size: 32, offset: 544)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !457, file: !18, line: 327, baseType: !88, size: 32, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !457, file: !18, line: 329, baseType: !88, size: 32, offset: 608)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !457, file: !18, line: 330, baseType: !88, size: 32, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !457, file: !18, line: 331, baseType: !88, size: 32, offset: 672)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !457, file: !18, line: 333, baseType: !88, size: 32, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !457, file: !18, line: 334, baseType: !88, size: 32, offset: 736)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !457, file: !18, line: 339, baseType: !481, size: 2048, offset: 768)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 2048, elements: !486)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !457, file: !18, line: 335, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !482, file: !18, line: 337, baseType: !88, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !482, file: !18, line: 338, baseType: !88, size: 32, offset: 32)
!486 = !{!32, !66}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !457, file: !18, line: 342, baseType: !488, size: 49152, align: 128, offset: 2816)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 49152, align: 128, elements: !513)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !490, line: 36, baseType: !491, align: 128)
!490 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !490, line: 26, size: 512, elements: !492)
!492 = !{!493, !499, !500, !503, !504, !505}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !491, file: !490, line: 30, baseType: !494, size: 128, align: 128)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 128, elements: !54)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !496, line: 25, baseType: !497)
!496 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !25, line: 39, baseType: !498)
!498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !491, file: !490, line: 31, baseType: !494, size: 128, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !491, file: !490, line: 32, baseType: !501, size: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !496, line: 26, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !25, line: 41, baseType: !88)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !491, file: !490, line: 33, baseType: !501, size: 32, offset: 288)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !491, file: !490, line: 34, baseType: !501, size: 32, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !491, file: !490, line: 35, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !490, line: 25, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !271, !88, !271, !88, !511, !88}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!513 = !{!514, !515}
!514 = !DISubrange(count: 32)
!515 = !DISubrange(count: 3)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !457, file: !18, line: 344, baseType: !88, size: 32, offset: 51968)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !457, file: !18, line: 345, baseType: !88, size: 32, offset: 52000)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !457, file: !18, line: 350, baseType: !519, size: 1024, offset: 52032)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 1024, elements: !65)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !457, file: !18, line: 346, size: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !520, file: !18, line: 348, baseType: !88, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !520, file: !18, line: 349, baseType: !88, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !457, file: !18, line: 352, baseType: !88, size: 32, offset: 53056)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !457, file: !18, line: 354, baseType: !88, size: 32, offset: 53088)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !457, file: !18, line: 355, baseType: !88, size: 32, offset: 53120)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !457, file: !18, line: 356, baseType: !88, size: 32, offset: 53152)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !457, file: !18, line: 357, baseType: !88, size: 32, offset: 53184)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !457, file: !18, line: 360, baseType: !88, size: 32, offset: 53216)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !457, file: !18, line: 361, baseType: !88, size: 32, offset: 53248)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !457, file: !18, line: 362, baseType: !88, size: 32, offset: 53280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !80, file: !18, line: 463, baseType: !533, size: 4096, offset: 111232)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !534, line: 46, baseType: !535)
!534 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 27, size: 4096, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !535, file: !534, line: 30, baseType: !88, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !535, file: !534, line: 31, baseType: !88, size: 32, offset: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !535, file: !534, line: 34, baseType: !88, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !535, file: !534, line: 35, baseType: !88, size: 32, offset: 96)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !535, file: !534, line: 37, baseType: !271, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !535, file: !534, line: 38, baseType: !271, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !535, file: !534, line: 39, baseType: !271, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !535, file: !534, line: 42, baseType: !88, size: 32, align: 128, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !535, file: !534, line: 45, baseType: !546, size: 3680, offset: 416)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3680, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 460)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !80, file: !18, line: 494, baseType: !550, size: 2112, offset: 115328)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 465, size: 2112, elements: !551)
!551 = !{!552, !690, !692, !693, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !706, !707, !708, !709}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !550, file: !18, line: 468, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !556, line: 146, baseType: !557)
!556 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !556, line: 31, size: 125056, elements: !558)
!558 = !{!559, !560, !561, !562, !565, !566, !567, !568, !569, !570, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !589, !590, !591, !592, !593, !594, !596, !598, !599, !600, !601, !602, !605, !607, !608, !610, !615, !616, !620, !621, !625, !629, !632, !634, !635, !637, !638, !640, !641, !642, !645, !647, !648, !649, !651, !652, !653, !654, !655, !656, !657, !658, !660, !661, !662, !671, !675, !677, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !557, file: !556, line: 34, baseType: !88, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !557, file: !556, line: 35, baseType: !88, size: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !557, file: !556, line: 36, baseType: !88, size: 32, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !557, file: !556, line: 37, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !496, line: 27, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !25, line: 44, baseType: !285)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !557, file: !556, line: 38, baseType: !563, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !557, file: !556, line: 39, baseType: !88, size: 32, offset: 256)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !557, file: !556, line: 40, baseType: !88, size: 32, offset: 288)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !557, file: !556, line: 41, baseType: !88, size: 32, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !557, file: !556, line: 42, baseType: !88, size: 32, offset: 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !557, file: !556, line: 43, baseType: !571, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !557, file: !556, line: 45, baseType: !88, size: 32, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !557, file: !556, line: 46, baseType: !88, size: 32, offset: 480)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !557, file: !556, line: 47, baseType: !88, size: 32, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !557, file: !556, line: 48, baseType: !88, size: 32, offset: 544)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !557, file: !556, line: 49, baseType: !88, size: 32, offset: 576)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !557, file: !556, line: 50, baseType: !88, size: 32, offset: 608)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !557, file: !556, line: 51, baseType: !88, size: 32, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !557, file: !556, line: 52, baseType: !35, size: 8, offset: 672)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !557, file: !556, line: 53, baseType: !35, size: 8, offset: 680)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !557, file: !556, line: 54, baseType: !35, size: 8, offset: 688)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !557, file: !556, line: 55, baseType: !179, size: 32, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !557, file: !556, line: 56, baseType: !179, size: 32, offset: 736)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !557, file: !556, line: 57, baseType: !88, size: 32, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !557, file: !556, line: 60, baseType: !88, size: 32, offset: 800)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !557, file: !556, line: 61, baseType: !587, size: 96, offset: 832)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 96, elements: !588)
!588 = !{!515}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !557, file: !556, line: 62, baseType: !587, size: 96, offset: 928)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !557, file: !556, line: 63, baseType: !587, size: 96, offset: 1024)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !557, file: !556, line: 64, baseType: !88, size: 32, offset: 1120)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !557, file: !556, line: 65, baseType: !88, size: 32, offset: 1152)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !557, file: !556, line: 66, baseType: !88, size: 32, offset: 1184)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !557, file: !556, line: 67, baseType: !595, size: 192, offset: 1216)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 192, elements: !588)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !557, file: !556, line: 68, baseType: !597, size: 256, offset: 1408)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !38)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !557, file: !556, line: 69, baseType: !597, size: 256, offset: 1664)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !557, file: !556, line: 70, baseType: !448, size: 64, offset: 1920)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !557, file: !556, line: 74, baseType: !597, size: 256, offset: 1984)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !557, file: !556, line: 75, baseType: !597, size: 256, offset: 2240)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !557, file: !556, line: 77, baseType: !603, size: 24576, align: 128, offset: 2560)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 24576, align: 128, elements: !604)
!604 = !{!66, !515}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !557, file: !556, line: 78, baseType: !606, size: 1024, offset: 27136)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 1024, elements: !65)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !557, file: !556, line: 79, baseType: !88, size: 32, offset: 28160)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !557, file: !556, line: 80, baseType: !609, size: 64, offset: 28224)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !557, file: !556, line: 83, baseType: !611, size: 64, offset: 28288)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !496, line: 24, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !25, line: 37, baseType: !614)
!614 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !557, file: !556, line: 84, baseType: !271, size: 64, offset: 28352)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !557, file: !556, line: 85, baseType: !617, size: 128, offset: 28416)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 128, elements: !31)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 32, elements: !31)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !557, file: !556, line: 86, baseType: !618, size: 64, offset: 28544)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !557, file: !556, line: 87, baseType: !622, size: 2176, offset: 28608)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 2176, elements: !623)
!623 = !{!32, !624}
!624 = !DISubrange(count: 17)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !557, file: !556, line: 92, baseType: !626, size: 20736, offset: 30784)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 20736, elements: !627)
!627 = !{!628, !628}
!628 = !DISubrange(count: 18)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !557, file: !556, line: 96, baseType: !630, size: 2176, offset: 51520)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 2176, elements: !623)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !557, file: !556, line: 97, baseType: !633, size: 128, offset: 53696)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !31)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !557, file: !556, line: 98, baseType: !183, size: 64, offset: 53824)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !557, file: !556, line: 99, baseType: !636, size: 1024, offset: 53888)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1024, elements: !486)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !557, file: !556, line: 100, baseType: !619, size: 32, offset: 54912)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !557, file: !556, line: 105, baseType: !639, size: 10368, offset: 54944)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 10368, elements: !627)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !557, file: !556, line: 106, baseType: !639, size: 10368, offset: 65312)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !557, file: !556, line: 107, baseType: !88, size: 32, offset: 75680)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !557, file: !556, line: 108, baseType: !643, size: 576, offset: 75712)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 576, elements: !644)
!644 = !{!628}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !557, file: !556, line: 109, baseType: !646, size: 20736, offset: 76288)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 20736, elements: !627)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !557, file: !556, line: 110, baseType: !631, size: 64, offset: 97024)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !557, file: !556, line: 111, baseType: !631, size: 64, offset: 97088)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !557, file: !556, line: 112, baseType: !650, size: 64, offset: 97152)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !557, file: !556, line: 113, baseType: !650, size: 64, offset: 97216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !557, file: !556, line: 114, baseType: !650, size: 64, offset: 97280)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !557, file: !556, line: 115, baseType: !88, size: 32, offset: 97344)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !557, file: !556, line: 116, baseType: !448, size: 64, offset: 97408)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !557, file: !556, line: 117, baseType: !448, size: 64, offset: 97472)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !557, file: !556, line: 118, baseType: !448, size: 64, offset: 97536)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !557, file: !556, line: 119, baseType: !88, size: 32, offset: 97600)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !557, file: !556, line: 120, baseType: !659, size: 576, offset: 97632)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 576, elements: !644)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !557, file: !556, line: 121, baseType: !22, size: 32, offset: 98208)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !557, file: !556, line: 122, baseType: !45, size: 64, offset: 98240)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !557, file: !556, line: 125, baseType: !663, size: 256, offset: 98304)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !79, line: 503, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 496, size: 256, elements: !665)
!665 = !{!666, !668, !669, !670}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !664, file: !79, line: 498, baseType: !667, size: 64)
!667 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !664, file: !79, line: 499, baseType: !667, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !664, file: !79, line: 500, baseType: !667, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !664, file: !79, line: 502, baseType: !667, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !557, file: !556, line: 128, baseType: !672, size: 2008, offset: 98560)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2008, elements: !673)
!673 = !{!674}
!674 = !DISubrange(count: 251)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !557, file: !556, line: 129, baseType: !676, size: 8032, offset: 100576)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8032, elements: !673)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !557, file: !556, line: 130, baseType: !678, size: 16064, offset: 108608)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 16064, elements: !673)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !557, file: !556, line: 131, baseType: !88, size: 32, offset: 124672)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !557, file: !556, line: 132, baseType: !88, size: 32, offset: 124704)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !557, file: !556, line: 135, baseType: !88, size: 32, offset: 124736)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !557, file: !556, line: 136, baseType: !88, size: 32, offset: 124768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !557, file: !556, line: 137, baseType: !88, size: 32, offset: 124800)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !557, file: !556, line: 138, baseType: !88, size: 32, offset: 124832)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !557, file: !556, line: 139, baseType: !88, size: 32, offset: 124864)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !557, file: !556, line: 142, baseType: !179, size: 32, offset: 124896)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !557, file: !556, line: 143, baseType: !88, size: 32, offset: 124928)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !557, file: !556, line: 144, baseType: !88, size: 32, offset: 124960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !557, file: !556, line: 145, baseType: !88, size: 32, offset: 124992)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !550, file: !18, line: 470, baseType: !691, size: 128, offset: 64)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 128, elements: !31)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !550, file: !18, line: 473, baseType: !553, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !550, file: !18, line: 476, baseType: !694, size: 1152, offset: 256)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 1152, elements: !644)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !550, file: !18, line: 478, baseType: !88, size: 32, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !550, file: !18, line: 480, baseType: !88, size: 32, offset: 1440)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !550, file: !18, line: 482, baseType: !88, size: 32, offset: 1472)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !550, file: !18, line: 483, baseType: !88, size: 32, offset: 1504)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !550, file: !18, line: 484, baseType: !88, size: 32, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !550, file: !18, line: 485, baseType: !88, size: 32, offset: 1568)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !550, file: !18, line: 486, baseType: !88, size: 32, offset: 1600)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !550, file: !18, line: 487, baseType: !563, size: 64, offset: 1664)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !550, file: !18, line: 488, baseType: !563, size: 64, offset: 1728)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !550, file: !18, line: 489, baseType: !705, size: 128, offset: 1792)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 128, elements: !31)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !550, file: !18, line: 490, baseType: !563, size: 64, offset: 1920)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !550, file: !18, line: 491, baseType: !563, size: 64, offset: 1984)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !550, file: !18, line: 492, baseType: !88, size: 32, offset: 2048)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !550, file: !18, line: 493, baseType: !88, size: 32, offset: 2080)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !80, file: !18, line: 497, baseType: !554, size: 64, offset: 117440)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !80, file: !18, line: 500, baseType: !554, size: 64, offset: 117504)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !80, file: !18, line: 503, baseType: !88, size: 32, offset: 117568)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !80, file: !18, line: 504, baseType: !714, size: 1216, offset: 117632)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !554, size: 1216, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 19)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !80, file: !18, line: 505, baseType: !88, size: 32, offset: 118848)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !80, file: !18, line: 506, baseType: !714, size: 1216, offset: 118912)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !80, file: !18, line: 507, baseType: !183, size: 64, offset: 120128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !80, file: !18, line: 510, baseType: !88, size: 32, offset: 120192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !80, file: !18, line: 511, baseType: !88, size: 32, offset: 120224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !80, file: !18, line: 512, baseType: !563, size: 64, offset: 120256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !80, file: !18, line: 522, baseType: !724, size: 10624, offset: 120320)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 515, size: 10624, elements: !725)
!725 = !{!726, !728, !731, !734}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !724, file: !18, line: 517, baseType: !727, size: 256, align: 128)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !65)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !724, file: !18, line: 518, baseType: !729, size: 128, align: 128, offset: 256)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 128, elements: !730)
!730 = !{!32, !39}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !724, file: !18, line: 520, baseType: !732, size: 4096, align: 128, offset: 384)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 4096, elements: !733)
!733 = !{!39, !63}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !724, file: !18, line: 521, baseType: !735, size: 6144, align: 128, offset: 4480)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 6144, elements: !736)
!736 = !{!737, !66}
!737 = !DISubrange(count: 24)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !80, file: !18, line: 732, baseType: !739, size: 82688, offset: 130944)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 525, size: 82688, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !768, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !786, !789, !793, !794, !795, !800, !801, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !869, !900, !901, !902, !903, !904, !905, !906, !907, !908, !911, !912, !913, !916, !919, !921, !924, !926, !927}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !739, file: !18, line: 527, baseType: !88, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !739, file: !18, line: 530, baseType: !88, size: 32, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !739, file: !18, line: 531, baseType: !88, size: 32, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !739, file: !18, line: 532, baseType: !88, size: 32, offset: 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !739, file: !18, line: 535, baseType: !88, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !739, file: !18, line: 536, baseType: !88, size: 32, offset: 160)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !739, file: !18, line: 537, baseType: !88, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !739, file: !18, line: 538, baseType: !88, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !739, file: !18, line: 539, baseType: !88, size: 32, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !739, file: !18, line: 542, baseType: !88, size: 32, offset: 288)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !739, file: !18, line: 543, baseType: !88, size: 32, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !739, file: !18, line: 544, baseType: !88, size: 32, offset: 352)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !739, file: !18, line: 545, baseType: !88, size: 32, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !739, file: !18, line: 546, baseType: !88, size: 32, offset: 416)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !739, file: !18, line: 547, baseType: !88, size: 32, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !739, file: !18, line: 548, baseType: !88, size: 32, offset: 480)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !739, file: !18, line: 549, baseType: !88, size: 32, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !739, file: !18, line: 551, baseType: !88, size: 32, offset: 544)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !739, file: !18, line: 554, baseType: !183, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !739, file: !18, line: 555, baseType: !183, size: 64, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !739, file: !18, line: 558, baseType: !183, size: 64, offset: 704)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !739, file: !18, line: 559, baseType: !183, size: 64, offset: 768)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !739, file: !18, line: 561, baseType: !183, size: 64, offset: 832)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !739, file: !18, line: 562, baseType: !183, size: 64, offset: 896)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !739, file: !18, line: 565, baseType: !7, size: 32, offset: 960)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !739, file: !18, line: 566, baseType: !767, size: 128, offset: 992)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !38)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !739, file: !18, line: 567, baseType: !769, size: 512, offset: 1120)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !65)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !739, file: !18, line: 568, baseType: !7, size: 32, offset: 1632)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !739, file: !18, line: 569, baseType: !7, size: 32, offset: 1664)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !739, file: !18, line: 570, baseType: !88, size: 32, offset: 1696)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !739, file: !18, line: 571, baseType: !88, size: 32, offset: 1728)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !739, file: !18, line: 572, baseType: !88, size: 32, offset: 1760)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !739, file: !18, line: 573, baseType: !88, size: 32, offset: 1792)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !739, file: !18, line: 574, baseType: !88, size: 32, offset: 1824)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !739, file: !18, line: 575, baseType: !88, size: 32, offset: 1856)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !739, file: !18, line: 576, baseType: !88, size: 32, offset: 1888)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !739, file: !18, line: 577, baseType: !88, size: 32, offset: 1920)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !739, file: !18, line: 578, baseType: !88, size: 32, offset: 1952)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !18, line: 585, baseType: !611, size: 64, offset: 1984)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !739, file: !18, line: 586, baseType: !271, size: 64, offset: 2048)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !739, file: !18, line: 587, baseType: !611, size: 64, offset: 2112)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !739, file: !18, line: 588, baseType: !785, size: 64, offset: 2176)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !739, file: !18, line: 589, baseType: !787, size: 64, offset: 2240)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !54)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !739, file: !18, line: 591, baseType: !790, size: 64, offset: 2304)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !792)
!792 = !{!737}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !739, file: !18, line: 592, baseType: !611, size: 64, offset: 2368)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !739, file: !18, line: 593, baseType: !617, size: 128, offset: 2432)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !739, file: !18, line: 594, baseType: !796, size: 128, offset: 2560)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 128, elements: !31)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !799)
!799 = !{!55, !32}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !739, file: !18, line: 595, baseType: !633, size: 128, offset: 2688)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !739, file: !18, line: 596, baseType: !802, size: 4096, offset: 2816)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 4096, elements: !803)
!803 = !{!32, !514}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !739, file: !18, line: 597, baseType: !611, size: 64, offset: 6912)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !739, file: !18, line: 598, baseType: !611, size: 64, offset: 6976)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !739, file: !18, line: 599, baseType: !448, size: 64, offset: 7040)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !739, file: !18, line: 603, baseType: !606, size: 1024, offset: 7104)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !739, file: !18, line: 606, baseType: !88, size: 32, offset: 8128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !739, file: !18, line: 607, baseType: !88, size: 32, offset: 8160)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !739, file: !18, line: 608, baseType: !34, size: 32, align: 32, offset: 8192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !739, file: !18, line: 609, baseType: !88, size: 32, offset: 8224)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !739, file: !18, line: 611, baseType: !88, size: 32, offset: 8256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !739, file: !18, line: 612, baseType: !88, size: 32, offset: 8288)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !739, file: !18, line: 614, baseType: !88, size: 32, offset: 8320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !739, file: !18, line: 615, baseType: !88, size: 32, offset: 8352)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !739, file: !18, line: 621, baseType: !88, size: 32, offset: 8384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !739, file: !18, line: 624, baseType: !88, size: 32, offset: 8416)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !739, file: !18, line: 626, baseType: !88, size: 32, offset: 8448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !739, file: !18, line: 627, baseType: !88, size: 32, offset: 8480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !739, file: !18, line: 671, baseType: !821, size: 60672, offset: 8576)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !18, line: 629, size: 60672, elements: !822)
!822 = !{!823, !827, !831, !833, !834, !837, !841, !843, !844, !845, !846, !847, !850, !854, !857, !858, !859, !860, !861, !864, !866, !868}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !821, file: !18, line: 634, baseType: !824, size: 3072, align: 128)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3072, elements: !825)
!825 = !{!826}
!826 = !DISubrange(count: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !821, file: !18, line: 635, baseType: !828, size: 6912, align: 128, offset: 3072)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 6912, elements: !829)
!829 = !{!830}
!830 = !DISubrange(count: 864)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !821, file: !18, line: 638, baseType: !832, size: 2048, align: 128, offset: 9984)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !324)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !821, file: !18, line: 639, baseType: !832, size: 2048, align: 128, offset: 12032)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !821, file: !18, line: 640, baseType: !835, size: 3072, align: 128, offset: 14080)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 3072, elements: !836)
!836 = !{!515, !63}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !821, file: !18, line: 641, baseType: !838, size: 3840, align: 128, offset: 17152)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 3840, elements: !839)
!839 = !{!840, !66}
!840 = !DISubrange(count: 15)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !821, file: !18, line: 642, baseType: !842, size: 128, offset: 20992)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 128, elements: !38)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !821, file: !18, line: 643, baseType: !842, size: 128, offset: 21120)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !821, file: !18, line: 644, baseType: !88, size: 32, offset: 21248)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !821, file: !18, line: 645, baseType: !88, size: 32, offset: 21280)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !821, file: !18, line: 648, baseType: !732, size: 4096, align: 128, offset: 21376)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !821, file: !18, line: 649, baseType: !848, size: 4096, align: 128, offset: 25472)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 4096, elements: !849)
!849 = !{!66, !66}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !821, file: !18, line: 652, baseType: !851, size: 576, align: 128, offset: 29568)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 576, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 9)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !821, file: !18, line: 653, baseType: !855, size: 1024, align: 128, offset: 30208)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 1024, elements: !856)
!856 = !{!514}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !821, file: !18, line: 656, baseType: !595, size: 192, offset: 31232)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !821, file: !18, line: 658, baseType: !595, size: 192, offset: 31424)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !821, file: !18, line: 661, baseType: !595, size: 192, offset: 31616)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !821, file: !18, line: 664, baseType: !183, size: 64, offset: 31808)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !821, file: !18, line: 665, baseType: !862, size: 24576, offset: 31872)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 24576, elements: !863)
!863 = !{!32, !514, !421}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !821, file: !18, line: 666, baseType: !865, size: 2048, offset: 56448)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 2048, elements: !856)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !821, file: !18, line: 667, baseType: !867, size: 2048, offset: 58496)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !448, size: 2048, elements: !486)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !821, file: !18, line: 670, baseType: !587, size: 96, offset: 60544)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !739, file: !18, line: 704, baseType: !870, size: 6144, offset: 69248)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !18, line: 674, size: 6144, elements: !871)
!871 = !{!872, !876, !880, !883, !886, !888, !889, !892, !894, !895, !896, !897, !898, !899}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !870, file: !18, line: 677, baseType: !873, size: 320, align: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 320, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 40)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !870, file: !18, line: 680, baseType: !877, size: 384, align: 128, offset: 384)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 384, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 48)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !870, file: !18, line: 683, baseType: !881, size: 640, align: 32, offset: 768)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 640, elements: !882)
!882 = !{!32, !875}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !870, file: !18, line: 686, baseType: !884, size: 2560, align: 128, offset: 1408)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 2560, elements: !885)
!885 = !{!32, !875, !32}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !870, file: !18, line: 687, baseType: !887, size: 1280, align: 64, offset: 3968)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1280, elements: !885)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !870, file: !18, line: 690, baseType: !873, size: 320, align: 32, offset: 5248)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !870, file: !18, line: 692, baseType: !890, size: 256, align: 32, offset: 5568)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 256, elements: !891)
!891 = !{!32, !39, !32}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !870, file: !18, line: 693, baseType: !893, size: 64, align: 32, offset: 5824)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !730)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !870, file: !18, line: 694, baseType: !88, size: 32, offset: 5888)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !870, file: !18, line: 695, baseType: !619, size: 32, align: 32, offset: 5920)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !870, file: !18, line: 698, baseType: !88, size: 32, offset: 5952)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !870, file: !18, line: 699, baseType: !88, size: 32, offset: 5984)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !870, file: !18, line: 702, baseType: !88, size: 32, offset: 6016)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !870, file: !18, line: 703, baseType: !88, size: 32, offset: 6048)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !739, file: !18, line: 707, baseType: !88, size: 32, offset: 75392)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !739, file: !18, line: 708, baseType: !88, size: 32, offset: 75424)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !739, file: !18, line: 709, baseType: !88, size: 32, offset: 75456)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !739, file: !18, line: 710, baseType: !88, size: 32, offset: 75488)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !739, file: !18, line: 711, baseType: !88, size: 32, offset: 75520)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !739, file: !18, line: 712, baseType: !88, size: 32, offset: 75552)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !739, file: !18, line: 713, baseType: !88, size: 32, offset: 75584)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !739, file: !18, line: 714, baseType: !88, size: 32, offset: 75616)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !739, file: !18, line: 717, baseType: !909, size: 128, offset: 75648)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !910)
!910 = !{!32, !32}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !739, file: !18, line: 718, baseType: !88, size: 32, offset: 75776)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !739, file: !18, line: 719, baseType: !88, size: 32, offset: 75808)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !739, file: !18, line: 722, baseType: !914, size: 4096, offset: 75840)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 4096, elements: !915)
!915 = !{!32, !514, !39}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !739, file: !18, line: 723, baseType: !917, size: 64, offset: 79936)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 64, elements: !38)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !739, file: !18, line: 724, baseType: !920, size: 2048, offset: 80000)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 2048, elements: !915)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !739, file: !18, line: 725, baseType: !922, size: 64, offset: 82048)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 32, elements: !38)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !739, file: !18, line: 728, baseType: !925, size: 144, offset: 82112)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 144, elements: !644)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !739, file: !18, line: 729, baseType: !88, size: 32, offset: 82272)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !739, file: !18, line: 730, baseType: !928, size: 272, offset: 82304)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 272, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 34)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !80, file: !18, line: 735, baseType: !932, size: 64, offset: 213632)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !18, line: 379, baseType: !934)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !18, line: 379, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !80, file: !18, line: 793, baseType: !936, size: 29504, offset: 213696)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !80, file: !18, line: 738, size: 29504, elements: !937)
!937 = !{!938, !965, !969, !971, !973, !974, !975, !976, !977, !978, !979, !980, !983, !985, !986, !989, !991, !993, !994, !995}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !936, file: !18, line: 764, baseType: !939, size: 5632)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !18, line: 741, size: 5632, elements: !940)
!940 = !{!941, !942, !943, !944, !946, !947, !948, !949, !950, !952, !955, !957, !961, !962, !964}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !939, file: !18, line: 744, baseType: !88, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !939, file: !18, line: 746, baseType: !88, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !939, file: !18, line: 748, baseType: !88, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !939, file: !18, line: 750, baseType: !945, size: 608, offset: 96)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 608, elements: !715)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !939, file: !18, line: 751, baseType: !88, size: 32, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !939, file: !18, line: 752, baseType: !88, size: 32, offset: 736)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !939, file: !18, line: 753, baseType: !88, size: 32, offset: 768)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !939, file: !18, line: 754, baseType: !183, size: 64, offset: 800)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !939, file: !18, line: 755, baseType: !951, size: 2048, offset: 864)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 2048, elements: !803)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !939, file: !18, line: 756, baseType: !953, size: 544, offset: 2912)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 544, elements: !954)
!954 = !{!624}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !939, file: !18, line: 757, baseType: !956, size: 192, offset: 3456)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 192, elements: !420)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !939, file: !18, line: 758, baseType: !958, size: 1664, offset: 3648)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1664, elements: !959)
!959 = !{!39, !960}
!960 = !DISubrange(count: 13)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !939, file: !18, line: 760, baseType: !183, size: 64, offset: 5312)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !939, file: !18, line: 762, baseType: !963, size: 192, offset: 5376)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 192, elements: !588)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !939, file: !18, line: 763, baseType: !667, size: 64, offset: 5568)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !936, file: !18, line: 769, baseType: !966, size: 160, offset: 5632)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 5)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !936, file: !18, line: 770, baseType: !970, size: 320, offset: 5824)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 320, elements: !967)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !936, file: !18, line: 771, baseType: !972, size: 320, offset: 6144)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !667, size: 320, elements: !967)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !936, file: !18, line: 772, baseType: !953, size: 544, offset: 6464)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !936, file: !18, line: 774, baseType: !970, size: 320, offset: 7040)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !936, file: !18, line: 775, baseType: !972, size: 320, offset: 7360)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !936, file: !18, line: 776, baseType: !972, size: 320, offset: 7680)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !936, file: !18, line: 777, baseType: !972, size: 320, offset: 8000)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !936, file: !18, line: 778, baseType: !972, size: 320, offset: 8320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !936, file: !18, line: 779, baseType: !972, size: 320, offset: 8640)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !936, file: !18, line: 781, baseType: !981, size: 6080, offset: 8960)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 6080, elements: !982)
!982 = !{!968, !716}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !936, file: !18, line: 782, baseType: !984, size: 2176, offset: 15040)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 2176, elements: !623)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !936, file: !18, line: 783, baseType: !705, size: 128, offset: 17216)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !936, file: !18, line: 784, baseType: !987, size: 8192, offset: 17344)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 8192, elements: !988)
!988 = !{!32, !32, !514}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !936, file: !18, line: 785, baseType: !990, size: 384, offset: 25536)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 384, elements: !420)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !936, file: !18, line: 786, baseType: !992, size: 3328, offset: 25920)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 3328, elements: !959)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !936, file: !18, line: 788, baseType: !183, size: 64, offset: 29248)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !936, file: !18, line: 789, baseType: !183, size: 64, offset: 29312)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !936, file: !18, line: 791, baseType: !587, size: 96, offset: 29376)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !80, file: !18, line: 795, baseType: !997, size: 4096, align: 128, offset: 243200)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 4096, elements: !998)
!998 = !{!32, !63}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !80, file: !18, line: 796, baseType: !1000, size: 2048, align: 128, offset: 247296)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !998)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !80, file: !18, line: 797, baseType: !49, size: 64, offset: 249344)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !80, file: !18, line: 800, baseType: !142, size: 64, offset: 249408)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !80, file: !18, line: 801, baseType: !1004, size: 384, offset: 249472)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 384, elements: !1005)
!1005 = !{!32, !515}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !80, file: !18, line: 802, baseType: !1007, size: 128, offset: 249856)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 128, elements: !31)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !1010)
!1010 = !{!32, !39, !39}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !80, file: !18, line: 805, baseType: !1012, size: 448, offset: 249984)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 448, elements: !1018)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1014, line: 27, baseType: !1015)
!1014 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !271}
!1018 = !{!1019}
!1019 = !DISubrange(count: 7)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !80, file: !18, line: 806, baseType: !1012, size: 448, offset: 250432)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !80, file: !18, line: 807, baseType: !1022, size: 768, offset: 250880)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 768, elements: !1027)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1014, line: 28, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !271, !271}
!1027 = !{!1028}
!1028 = !DISubrange(count: 12)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !80, file: !18, line: 808, baseType: !1030, size: 768, offset: 251648)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 768, elements: !1027)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !80, file: !18, line: 809, baseType: !1032, size: 64, offset: 252416)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1014, line: 29, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !271, !271, !88, !88}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !80, file: !18, line: 811, baseType: !1037, size: 8448, offset: 252480)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1038, line: 110, baseType: !1039)
!1038 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1038, line: 63, size: 8448, elements: !1040)
!1040 = !{!1041, !1047, !1048, !1049, !1050, !1052, !1053, !1054, !1055, !1061, !1067, !1068, !1072, !1077, !1078, !1084, !1088, !1089, !1090, !1091, !1092, !1097, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1039, file: !1038, line: 65, baseType: !1042, size: 448)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 448, elements: !1018)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1038, line: 26, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!88, !271, !88, !271, !88}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1039, file: !1038, line: 66, baseType: !1042, size: 448, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1039, file: !1038, line: 67, baseType: !1042, size: 448, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1039, file: !1038, line: 68, baseType: !1042, size: 448, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1039, file: !1038, line: 69, baseType: !1051, size: 256, offset: 1792)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 256, elements: !38)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1039, file: !1038, line: 70, baseType: !1042, size: 448, offset: 2048)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1039, file: !1038, line: 71, baseType: !1042, size: 448, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1039, file: !1038, line: 72, baseType: !1042, size: 448, offset: 2944)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1039, file: !1038, line: 73, baseType: !1056, size: 448, offset: 3392)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 448, elements: !1018)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1038, line: 27, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !271, !271, !271, !271, !88, !631}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1039, file: !1038, line: 74, baseType: !1062, size: 448, offset: 3840)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 448, elements: !1018)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1038, line: 28, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !271, !271, !271, !271, !271, !88, !631}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1039, file: !1038, line: 75, baseType: !1042, size: 448, offset: 4288)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1039, file: !1038, line: 76, baseType: !1069, size: 64, offset: 4736)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!88, !271, !88, !271, !88, !631}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1039, file: !1038, line: 78, baseType: !1073, size: 256, offset: 4800)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 256, elements: !38)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!45, !271, !88}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1039, file: !1038, line: 79, baseType: !1073, size: 256, offset: 5056)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1039, file: !1038, line: 81, baseType: !1079, size: 64, offset: 5312)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !419, !88, !419, !88, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !38)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1039, file: !1038, line: 83, baseType: !1085, size: 64, offset: 5376)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!179, !1082, !1082, !88}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1039, file: !1038, line: 86, baseType: !1056, size: 448, offset: 5440)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1039, file: !1038, line: 87, baseType: !1062, size: 448, offset: 5888)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1039, file: !1038, line: 88, baseType: !1056, size: 448, offset: 6336)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1039, file: !1038, line: 89, baseType: !1062, size: 448, offset: 6784)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1039, file: !1038, line: 93, baseType: !1093, size: 448, offset: 7232)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 448, elements: !1018)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!88, !631, !448, !88, !448, !785, !88, !88}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1039, file: !1038, line: 98, baseType: !1098, size: 64, offset: 7680)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !271, !271, !631}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1039, file: !1038, line: 99, baseType: !1098, size: 64, offset: 7744)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1039, file: !1038, line: 100, baseType: !1098, size: 64, offset: 7808)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1039, file: !1038, line: 101, baseType: !1098, size: 64, offset: 7872)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1039, file: !1038, line: 102, baseType: !1098, size: 64, offset: 7936)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1039, file: !1038, line: 103, baseType: !1098, size: 64, offset: 8000)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1039, file: !1038, line: 104, baseType: !1098, size: 64, offset: 8064)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1039, file: !1038, line: 105, baseType: !1098, size: 64, offset: 8128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1039, file: !1038, line: 106, baseType: !1098, size: 64, offset: 8192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1039, file: !1038, line: 107, baseType: !1098, size: 64, offset: 8256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1039, file: !1038, line: 108, baseType: !1098, size: 64, offset: 8320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1039, file: !1038, line: 109, baseType: !1098, size: 64, offset: 8384)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !80, file: !18, line: 812, baseType: !1113, size: 2368, offset: 260928)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !490, line: 111, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !490, line: 58, size: 2368, elements: !1115)
!1115 = !{!1116, !1123, !1127, !1131, !1138, !1143, !1144, !1148, !1152, !1153, !1157, !1165, !1169, !1173, !1174, !1178, !1182, !1186, !1187, !1188, !1189, !1194}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1114, file: !490, line: 60, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !271, !88, !1120, !88, !88, !88, !88, !88, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1114, file: !490, line: 65, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!271, !271, !631, !1120, !88, !88, !88, !88, !88, !1121}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1114, file: !490, line: 71, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !271, !88, !271, !88, !88, !88, !88, !88}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1114, file: !490, line: 75, baseType: !1132, size: 640, offset: 192)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 640, elements: !1136)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !271, !88, !271, !88, !271, !88, !88}
!1136 = !{!1137}
!1137 = !DISubrange(count: 10)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1114, file: !490, line: 78, baseType: !1139, size: 448, offset: 832)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 448, elements: !1018)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !271, !88, !271, !88, !88}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1114, file: !490, line: 79, baseType: !1140, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1114, file: !490, line: 81, baseType: !1145, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !271, !88, !271, !88, !88, !88}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1114, file: !490, line: 84, baseType: !1149, size: 64, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !271, !271, !271, !271, !88, !88, !88, !785}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1114, file: !490, line: 88, baseType: !1140, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1114, file: !490, line: 91, baseType: !1154, size: 64, offset: 1536)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !271, !88, !88}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1114, file: !490, line: 93, baseType: !1158, size: 64, offset: 1600)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!142, !142, !1161, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1164, line: 46, baseType: !47)
!1164 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1114, file: !490, line: 94, baseType: !1166, size: 64, offset: 1664)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !142, !88}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1114, file: !490, line: 97, baseType: !1170, size: 64, offset: 1728)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !448, !271, !88}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1114, file: !490, line: 98, baseType: !1170, size: 64, offset: 1792)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1114, file: !490, line: 99, baseType: !1175, size: 64, offset: 1856)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !448, !448, !88}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1114, file: !490, line: 100, baseType: !1179, size: 64, offset: 1920)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !448, !88}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1114, file: !490, line: 102, baseType: !1183, size: 64, offset: 1984)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !271, !271, !271, !271, !271, !88, !88, !88, !88}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1114, file: !490, line: 104, baseType: !506, size: 64, offset: 2048)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1114, file: !490, line: 105, baseType: !506, size: 64, offset: 2112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1114, file: !490, line: 106, baseType: !506, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1114, file: !490, line: 107, baseType: !1190, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !77, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1114, file: !490, line: 109, baseType: !1195, size: 64, offset: 2304)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !631, !448, !448, !448, !448, !88}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !80, file: !18, line: 813, baseType: !1199, size: 960, offset: 263296)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1200, line: 115, baseType: !1201)
!1200 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 89, size: 960, elements: !1202)
!1202 = !{!1203, !1207, !1211, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1233, !1237, !1241}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1201, file: !1200, line: 94, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !785, !271, !271}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1201, file: !1200, line: 95, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !271, !785}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1201, file: !1200, line: 97, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1215, !271, !271}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1201, file: !1200, line: 98, baseType: !1204, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1201, file: !1200, line: 99, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !271, !1215}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1201, file: !1200, line: 100, baseType: !1208, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1201, file: !1200, line: 102, baseType: !1212, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1201, file: !1200, line: 103, baseType: !1218, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1201, file: !1200, line: 104, baseType: !1208, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1201, file: !1200, line: 106, baseType: !1204, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1201, file: !1200, line: 107, baseType: !1208, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1201, file: !1200, line: 109, baseType: !1228, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1231, !271, !271}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 1024, elements: !62)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1201, file: !1200, line: 110, baseType: !1234, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !271, !1231}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1201, file: !1200, line: 112, baseType: !1238, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !785}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1201, file: !1200, line: 113, baseType: !1238, size: 64, offset: 896)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !80, file: !18, line: 814, baseType: !1243, size: 384, offset: 264256)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1200, line: 126, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 117, size: 384, elements: !1245)
!1245 = !{!1246, !1250, !1251, !1255, !1256, !1260}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1244, file: !1200, line: 119, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !785, !785}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1244, file: !1200, line: 120, baseType: !1247, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1244, file: !1200, line: 121, baseType: !1252, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!88, !785, !419, !271}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1244, file: !1200, line: 122, baseType: !1252, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1244, file: !1200, line: 123, baseType: !1257, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!88, !785, !419, !271, !785}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1244, file: !1200, line: 124, baseType: !1261, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !785, !785, !271}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !80, file: !18, line: 815, baseType: !1265, size: 1408, offset: 264640)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1266, line: 44, baseType: !1267)
!1266 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 26, size: 1408, elements: !1268)
!1268 = !{!1269, !1273, !1274, !1278, !1279, !1283, !1287, !1288, !1293, !1297, !1298, !1299, !1301}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1267, file: !1266, line: 28, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!88, !785, !448, !448}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1267, file: !1266, line: 29, baseType: !1270, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1267, file: !1266, line: 30, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!88, !785, !88, !88}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1267, file: !1266, line: 31, baseType: !1275, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1267, file: !1266, line: 33, baseType: !1280, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !785, !432, !88}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1267, file: !1266, line: 34, baseType: !1284, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !785, !428, !88}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1267, file: !1266, line: 35, baseType: !1284, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1267, file: !1266, line: 37, baseType: !1289, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !785, !1292, !448, !88}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1267, file: !1266, line: 39, baseType: !1294, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!88, !785}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1267, file: !1266, line: 40, baseType: !1294, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1267, file: !1266, line: 41, baseType: !1294, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1267, file: !1266, line: 42, baseType: !1300, size: 384, offset: 704)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 384, elements: !420)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1267, file: !1266, line: 43, baseType: !1302, size: 320, offset: 1088)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1303, size: 320, elements: !967)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!88, !785, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !276, line: 63, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 58, size: 416, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1308, file: !276, line: 60, baseType: !88, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1308, file: !276, line: 61, baseType: !727, size: 256, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1308, file: !276, line: 62, baseType: !131, size: 128, offset: 288)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !80, file: !18, line: 816, baseType: !1314, size: 576, offset: 266048)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !556, line: 170, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 161, size: 576, elements: !1316)
!1316 = !{!1317, !1323, !1324, !1330, !1331}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1315, file: !556, line: 163, baseType: !1318, size: 128)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 128, elements: !31)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !556, line: 159, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !271, !88, !88, !88, !611}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1315, file: !556, line: 164, baseType: !1318, size: 128, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1315, file: !556, line: 165, baseType: !1325, size: 128, offset: 256)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 128, elements: !31)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !556, line: 160, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !271, !88, !88, !88}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1315, file: !556, line: 166, baseType: !1325, size: 128, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1315, file: !556, line: 167, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !271, !1335, !1336, !1339, !88, !88}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, size: 1280, elements: !1338)
!1338 = !{!875, !32}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, elements: !1341)
!1341 = !{!39, !39}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !80, file: !18, line: 821, baseType: !1343, size: 64, offset: 266624)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !18, line: 377, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !18, line: 366, size: 960, elements: !1346)
!1346 = !{!1347, !1349, !1350, !1351, !1352, !1353, !1354, !1364, !1365}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1345, file: !18, line: 368, baseType: !1348, size: 8)
!1348 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1345, file: !18, line: 369, baseType: !35, size: 8, offset: 8)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1345, file: !18, line: 370, baseType: !35, size: 8, offset: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1345, file: !18, line: 371, baseType: !88, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1345, file: !18, line: 372, baseType: !88, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1345, file: !18, line: 373, baseType: !554, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1345, file: !18, line: 374, baseType: !1355, size: 256, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !556, line: 157, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !556, line: 149, size: 256, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1356, file: !556, line: 151, baseType: !553, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1356, file: !556, line: 152, baseType: !88, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1356, file: !556, line: 153, baseType: !88, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1356, file: !556, line: 154, baseType: !88, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1356, file: !556, line: 155, baseType: !88, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1356, file: !556, line: 156, baseType: !88, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1345, file: !18, line: 375, baseType: !1355, size: 256, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1345, file: !18, line: 376, baseType: !1355, size: 256, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1367 = !{!1368, !1369, !1370}
!1368 = !DILocalVariable(name: "h", arg: 1, scope: !74, file: !59, line: 266, type: !77)
!1369 = !DILocalVariable(name: "cpu", arg: 2, scope: !74, file: !59, line: 266, type: !88)
!1370 = !DILocalVariable(name: "pf", arg: 3, scope: !74, file: !59, line: 266, type: !1366)
!1371 = !DILocation(line: 0, scope: !74)
!1372 = !DILocation(line: 268, column: 19, scope: !74)
!1373 = !{!1374, !1375, i64 0}
!1374 = !{!"", !1375, i64 0, !1375, i64 8, !1375, i64 16, !1375, i64 24, !1375, i64 32, !1375, i64 40, !1375, i64 48, !1375, i64 56, !1375, i64 64, !1375, i64 72, !1375, i64 80, !1376, i64 88, !1376, i64 136}
!1375 = !{!"any pointer", !1376, i64 0}
!1376 = !{!"omnipotent char", !1377, i64 0}
!1377 = !{!"Simple C/C++ TBAA"}
!1378 = !DILocation(line: 269, column: 9, scope: !74)
!1379 = !DILocation(line: 269, column: 19, scope: !74)
!1380 = !{!1374, !1375, i64 8}
!1381 = !DILocation(line: 270, column: 9, scope: !74)
!1382 = !DILocation(line: 270, column: 22, scope: !74)
!1383 = !{!1374, !1375, i64 16}
!1384 = !DILocation(line: 271, column: 9, scope: !74)
!1385 = !DILocation(line: 271, column: 22, scope: !74)
!1386 = !{!1374, !1375, i64 24}
!1387 = !DILocation(line: 273, column: 9, scope: !74)
!1388 = !DILocation(line: 273, column: 21, scope: !74)
!1389 = !{!1374, !1375, i64 40}
!1390 = !DILocation(line: 274, column: 9, scope: !74)
!1391 = !DILocation(line: 274, column: 24, scope: !74)
!1392 = !{!1374, !1375, i64 48}
!1393 = !DILocation(line: 275, column: 9, scope: !74)
!1394 = !DILocation(line: 275, column: 21, scope: !74)
!1395 = !{!1374, !1375, i64 32}
!1396 = !DILocation(line: 277, column: 9, scope: !74)
!1397 = !DILocation(line: 277, column: 21, scope: !74)
!1398 = !{!1374, !1375, i64 56}
!1399 = !DILocation(line: 278, column: 9, scope: !74)
!1400 = !DILocation(line: 278, column: 26, scope: !74)
!1401 = !{!1374, !1375, i64 64}
!1402 = !DILocation(line: 279, column: 9, scope: !74)
!1403 = !DILocation(line: 279, column: 26, scope: !74)
!1404 = !{!1374, !1375, i64 72}
!1405 = !DILocation(line: 280, column: 9, scope: !74)
!1406 = !DILocation(line: 280, column: 26, scope: !74)
!1407 = !{!1374, !1375, i64 80}
!1408 = !DILocation(line: 282, column: 9, scope: !74)
!1409 = !DILocation(line: 282, column: 5, scope: !74)
!1410 = !DILocation(line: 282, column: 35, scope: !74)
!1411 = !{!1375, !1375, i64 0}
!1412 = !DILocation(line: 283, column: 5, scope: !74)
!1413 = !DILocation(line: 283, column: 35, scope: !74)
!1414 = !DILocation(line: 284, column: 5, scope: !74)
!1415 = !DILocation(line: 284, column: 35, scope: !74)
!1416 = !DILocation(line: 285, column: 5, scope: !74)
!1417 = !DILocation(line: 285, column: 35, scope: !74)
!1418 = !DILocation(line: 286, column: 9, scope: !74)
!1419 = !DILocation(line: 286, column: 5, scope: !74)
!1420 = !DILocation(line: 286, column: 40, scope: !74)
!1421 = !DILocation(line: 287, column: 5, scope: !74)
!1422 = !DILocation(line: 287, column: 40, scope: !74)
!1423 = !DILocation(line: 288, column: 5, scope: !74)
!1424 = !DILocation(line: 288, column: 40, scope: !74)
!1425 = !DILocation(line: 428, column: 35, scope: !74)
!1426 = !DILocation(line: 429, column: 5, scope: !74)
!1427 = !DILocation(line: 429, column: 35, scope: !74)
!1428 = !DILocation(line: 430, column: 40, scope: !74)
!1429 = !DILocation(line: 431, column: 5, scope: !74)
!1430 = !DILocation(line: 431, column: 40, scope: !74)
!1431 = !DILocation(line: 432, column: 1, scope: !74)
!1432 = distinct !DISubprogram(name: "quant_8x8", scope: !59, file: !59, line: 45, type: !1271, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438}
!1434 = !DILocalVariable(name: "dct", arg: 1, scope: !1432, file: !59, line: 45, type: !785)
!1435 = !DILocalVariable(name: "mf", arg: 2, scope: !1432, file: !59, line: 45, type: !448)
!1436 = !DILocalVariable(name: "bias", arg: 3, scope: !1432, file: !59, line: 45, type: !448)
!1437 = !DILocalVariable(name: "nz", scope: !1432, file: !59, line: 47, type: !88)
!1438 = !DILocalVariable(name: "i", scope: !1439, file: !59, line: 48, type: !88)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !59, line: 48, column: 5)
!1440 = !DILocation(line: 0, scope: !1432)
!1441 = !DILocation(line: 0, scope: !1439)
!1442 = !DILocation(line: 48, column: 5, scope: !1439)
!1443 = !DILocation(line: 50, column: 13, scope: !1432)
!1444 = !DILocation(line: 50, column: 12, scope: !1432)
!1445 = !DILocation(line: 50, column: 5, scope: !1432)
!1446 = !DILocation(line: 49, column: 9, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !59, line: 49, column: 9)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !59, line: 49, column: 9)
!1449 = distinct !DILexicalBlock(scope: !1439, file: !59, line: 48, column: 5)
!1450 = !{!1451, !1451, i64 0}
!1451 = !{!"short", !1376, i64 0}
!1452 = !DILocation(line: 49, column: 9, scope: !1448)
!1453 = !DILocation(line: 48, column: 30, scope: !1449)
!1454 = !DILocation(line: 48, column: 23, scope: !1449)
!1455 = distinct !{!1455, !1442, !1456, !1457, !1458}
!1456 = !DILocation(line: 49, column: 9, scope: !1439)
!1457 = !{!"llvm.loop.mustprogress"}
!1458 = !{!"llvm.loop.unroll.disable"}
!1459 = distinct !DISubprogram(name: "quant_4x4", scope: !59, file: !59, line: 53, type: !1271, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465}
!1461 = !DILocalVariable(name: "dct", arg: 1, scope: !1459, file: !59, line: 53, type: !785)
!1462 = !DILocalVariable(name: "mf", arg: 2, scope: !1459, file: !59, line: 53, type: !448)
!1463 = !DILocalVariable(name: "bias", arg: 3, scope: !1459, file: !59, line: 53, type: !448)
!1464 = !DILocalVariable(name: "nz", scope: !1459, file: !59, line: 55, type: !88)
!1465 = !DILocalVariable(name: "i", scope: !1466, file: !59, line: 56, type: !88)
!1466 = distinct !DILexicalBlock(scope: !1459, file: !59, line: 56, column: 5)
!1467 = !DILocation(line: 0, scope: !1459)
!1468 = !DILocation(line: 0, scope: !1466)
!1469 = !DILocation(line: 56, column: 5, scope: !1466)
!1470 = !DILocation(line: 58, column: 13, scope: !1459)
!1471 = !DILocation(line: 58, column: 12, scope: !1459)
!1472 = !DILocation(line: 58, column: 5, scope: !1459)
!1473 = !DILocation(line: 57, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !59, line: 57, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !59, line: 57, column: 9)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !59, line: 56, column: 5)
!1477 = !DILocation(line: 57, column: 9, scope: !1475)
!1478 = !DILocation(line: 56, column: 30, scope: !1476)
!1479 = !DILocation(line: 56, column: 23, scope: !1476)
!1480 = distinct !{!1480, !1469, !1481, !1457, !1458}
!1481 = !DILocation(line: 57, column: 9, scope: !1466)
!1482 = distinct !DISubprogram(name: "quant_4x4_dc", scope: !59, file: !59, line: 61, type: !1276, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1483 = !{!1484, !1485, !1486, !1487, !1488}
!1484 = !DILocalVariable(name: "dct", arg: 1, scope: !1482, file: !59, line: 61, type: !785)
!1485 = !DILocalVariable(name: "mf", arg: 2, scope: !1482, file: !59, line: 61, type: !88)
!1486 = !DILocalVariable(name: "bias", arg: 3, scope: !1482, file: !59, line: 61, type: !88)
!1487 = !DILocalVariable(name: "nz", scope: !1482, file: !59, line: 63, type: !88)
!1488 = !DILocalVariable(name: "i", scope: !1489, file: !59, line: 64, type: !88)
!1489 = distinct !DILexicalBlock(scope: !1482, file: !59, line: 64, column: 5)
!1490 = !DILocation(line: 0, scope: !1482)
!1491 = !DILocation(line: 0, scope: !1489)
!1492 = !DILocation(line: 64, column: 5, scope: !1489)
!1493 = !DILocation(line: 66, column: 13, scope: !1482)
!1494 = !DILocation(line: 66, column: 12, scope: !1482)
!1495 = !DILocation(line: 66, column: 5, scope: !1482)
!1496 = !DILocation(line: 65, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !59, line: 65, column: 9)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !59, line: 65, column: 9)
!1499 = distinct !DILexicalBlock(scope: !1489, file: !59, line: 64, column: 5)
!1500 = !DILocation(line: 65, column: 9, scope: !1498)
!1501 = !DILocation(line: 64, column: 30, scope: !1499)
!1502 = !DILocation(line: 64, column: 23, scope: !1499)
!1503 = distinct !{!1503, !1492, !1504, !1457, !1458}
!1504 = !DILocation(line: 65, column: 9, scope: !1489)
!1505 = distinct !DISubprogram(name: "quant_2x2_dc", scope: !59, file: !59, line: 69, type: !1276, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1506)
!1506 = !{!1507, !1508, !1509, !1510}
!1507 = !DILocalVariable(name: "dct", arg: 1, scope: !1505, file: !59, line: 69, type: !785)
!1508 = !DILocalVariable(name: "mf", arg: 2, scope: !1505, file: !59, line: 69, type: !88)
!1509 = !DILocalVariable(name: "bias", arg: 3, scope: !1505, file: !59, line: 69, type: !88)
!1510 = !DILocalVariable(name: "nz", scope: !1505, file: !59, line: 71, type: !88)
!1511 = !DILocation(line: 0, scope: !1505)
!1512 = !DILocation(line: 72, column: 5, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !59, line: 72, column: 5)
!1514 = distinct !DILexicalBlock(scope: !1505, file: !59, line: 72, column: 5)
!1515 = !DILocation(line: 72, column: 5, scope: !1514)
!1516 = !DILocation(line: 73, column: 5, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !59, line: 73, column: 5)
!1518 = distinct !DILexicalBlock(scope: !1505, file: !59, line: 73, column: 5)
!1519 = !DILocation(line: 73, column: 5, scope: !1518)
!1520 = !DILocation(line: 74, column: 5, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !59, line: 74, column: 5)
!1522 = distinct !DILexicalBlock(scope: !1505, file: !59, line: 74, column: 5)
!1523 = !DILocation(line: 74, column: 5, scope: !1522)
!1524 = !DILocation(line: 75, column: 5, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !59, line: 75, column: 5)
!1526 = distinct !DILexicalBlock(scope: !1505, file: !59, line: 75, column: 5)
!1527 = !DILocation(line: 75, column: 5, scope: !1526)
!1528 = !DILocation(line: 76, column: 13, scope: !1505)
!1529 = !DILocation(line: 76, column: 12, scope: !1505)
!1530 = !DILocation(line: 76, column: 5, scope: !1505)
!1531 = distinct !DISubprogram(name: "dequant_4x4", scope: !59, file: !59, line: 85, type: !1285, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1538, !1539, !1543, !1545}
!1533 = !DILocalVariable(name: "dct", arg: 1, scope: !1531, file: !59, line: 85, type: !785)
!1534 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1531, file: !59, line: 85, type: !428)
!1535 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1531, file: !59, line: 85, type: !88)
!1536 = !DILocalVariable(name: "i_mf", scope: !1531, file: !59, line: 87, type: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1538 = !DILocalVariable(name: "i_qbits", scope: !1531, file: !59, line: 88, type: !1537)
!1539 = !DILocalVariable(name: "i", scope: !1540, file: !59, line: 92, type: !88)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !59, line: 92, column: 9)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !59, line: 91, column: 5)
!1542 = distinct !DILexicalBlock(scope: !1531, file: !59, line: 90, column: 9)
!1543 = !DILocalVariable(name: "f", scope: !1544, file: !59, line: 97, type: !1537)
!1544 = distinct !DILexicalBlock(scope: !1542, file: !59, line: 96, column: 5)
!1545 = !DILocalVariable(name: "i", scope: !1546, file: !59, line: 98, type: !88)
!1546 = distinct !DILexicalBlock(scope: !1544, file: !59, line: 98, column: 9)
!1547 = !DILocation(line: 0, scope: !1531)
!1548 = !DILocation(line: 87, column: 26, scope: !1531)
!1549 = !DILocation(line: 88, column: 29, scope: !1531)
!1550 = !DILocation(line: 88, column: 32, scope: !1531)
!1551 = !DILocation(line: 90, column: 17, scope: !1542)
!1552 = !DILocation(line: 90, column: 9, scope: !1531)
!1553 = !DILocation(line: 0, scope: !1540)
!1554 = !DILocation(line: 92, column: 9, scope: !1540)
!1555 = !DILocation(line: 93, column: 13, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1540, file: !59, line: 92, column: 9)
!1557 = !{!1558, !1558, i64 0}
!1558 = !{!"int", !1376, i64 0}
!1559 = !DILocation(line: 92, column: 34, scope: !1556)
!1560 = !DILocation(line: 92, column: 27, scope: !1556)
!1561 = distinct !{!1561, !1554, !1562, !1457, !1458}
!1562 = !DILocation(line: 93, column: 13, scope: !1540)
!1563 = !DILocation(line: 97, column: 29, scope: !1544)
!1564 = !DILocation(line: 97, column: 37, scope: !1544)
!1565 = !DILocation(line: 97, column: 25, scope: !1544)
!1566 = !DILocation(line: 0, scope: !1544)
!1567 = !DILocation(line: 0, scope: !1546)
!1568 = !DILocation(line: 98, column: 9, scope: !1546)
!1569 = !DILocation(line: 99, column: 13, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1546, file: !59, line: 98, column: 9)
!1571 = !DILocation(line: 98, column: 34, scope: !1570)
!1572 = !DILocation(line: 98, column: 27, scope: !1570)
!1573 = distinct !{!1573, !1568, !1574, !1457, !1458}
!1574 = !DILocation(line: 99, column: 13, scope: !1546)
!1575 = !DILocation(line: 101, column: 1, scope: !1531)
!1576 = distinct !DISubprogram(name: "dequant_4x4_dc", scope: !59, file: !59, line: 121, type: !1285, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1577)
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1585, !1587, !1589, !1590}
!1578 = !DILocalVariable(name: "dct", arg: 1, scope: !1576, file: !59, line: 121, type: !785)
!1579 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1576, file: !59, line: 121, type: !428)
!1580 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1576, file: !59, line: 121, type: !88)
!1581 = !DILocalVariable(name: "i_qbits", scope: !1576, file: !59, line: 123, type: !1537)
!1582 = !DILocalVariable(name: "i_dmf", scope: !1583, file: !59, line: 127, type: !1537)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !59, line: 126, column: 5)
!1584 = distinct !DILexicalBlock(scope: !1576, file: !59, line: 125, column: 9)
!1585 = !DILocalVariable(name: "i", scope: !1586, file: !59, line: 128, type: !88)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !59, line: 128, column: 9)
!1587 = !DILocalVariable(name: "i_dmf", scope: !1588, file: !59, line: 133, type: !1537)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !59, line: 132, column: 5)
!1589 = !DILocalVariable(name: "f", scope: !1588, file: !59, line: 134, type: !1537)
!1590 = !DILocalVariable(name: "i", scope: !1591, file: !59, line: 135, type: !88)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !59, line: 135, column: 9)
!1592 = !DILocation(line: 0, scope: !1576)
!1593 = !DILocation(line: 123, column: 29, scope: !1576)
!1594 = !DILocation(line: 133, column: 42, scope: !1588)
!1595 = !DILocation(line: 125, column: 17, scope: !1584)
!1596 = !DILocation(line: 125, column: 9, scope: !1576)
!1597 = !DILocation(line: 123, column: 32, scope: !1576)
!1598 = !DILocation(line: 127, column: 42, scope: !1583)
!1599 = !DILocation(line: 127, column: 27, scope: !1583)
!1600 = !DILocation(line: 127, column: 49, scope: !1583)
!1601 = !DILocation(line: 0, scope: !1583)
!1602 = !DILocation(line: 0, scope: !1586)
!1603 = !DILocation(line: 128, column: 9, scope: !1586)
!1604 = !DILocation(line: 129, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1586, file: !59, line: 128, column: 9)
!1606 = !DILocation(line: 129, column: 20, scope: !1605)
!1607 = !DILocation(line: 128, column: 34, scope: !1605)
!1608 = !DILocation(line: 128, column: 27, scope: !1605)
!1609 = distinct !{!1609, !1603, !1610, !1457, !1458}
!1610 = !DILocation(line: 129, column: 23, scope: !1586)
!1611 = !DILocation(line: 133, column: 27, scope: !1588)
!1612 = !DILocation(line: 0, scope: !1588)
!1613 = !DILocation(line: 134, column: 29, scope: !1588)
!1614 = !DILocation(line: 134, column: 37, scope: !1588)
!1615 = !DILocation(line: 134, column: 25, scope: !1588)
!1616 = !DILocation(line: 0, scope: !1591)
!1617 = !DILocation(line: 135, column: 9, scope: !1591)
!1618 = !DILocation(line: 136, column: 24, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1591, file: !59, line: 135, column: 9)
!1620 = !DILocation(line: 136, column: 31, scope: !1619)
!1621 = !DILocation(line: 136, column: 39, scope: !1619)
!1622 = !DILocation(line: 136, column: 45, scope: !1619)
!1623 = !DILocation(line: 136, column: 22, scope: !1619)
!1624 = !DILocation(line: 136, column: 20, scope: !1619)
!1625 = !DILocation(line: 135, column: 34, scope: !1619)
!1626 = !DILocation(line: 135, column: 27, scope: !1619)
!1627 = distinct !{!1627, !1617, !1628, !1457, !1458}
!1628 = !DILocation(line: 136, column: 57, scope: !1591)
!1629 = !DILocation(line: 138, column: 1, scope: !1576)
!1630 = distinct !DISubprogram(name: "dequant_8x8", scope: !59, file: !59, line: 103, type: !1281, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1641, !1643}
!1632 = !DILocalVariable(name: "dct", arg: 1, scope: !1630, file: !59, line: 103, type: !785)
!1633 = !DILocalVariable(name: "dequant_mf", arg: 2, scope: !1630, file: !59, line: 103, type: !432)
!1634 = !DILocalVariable(name: "i_qp", arg: 3, scope: !1630, file: !59, line: 103, type: !88)
!1635 = !DILocalVariable(name: "i_mf", scope: !1630, file: !59, line: 105, type: !1537)
!1636 = !DILocalVariable(name: "i_qbits", scope: !1630, file: !59, line: 106, type: !1537)
!1637 = !DILocalVariable(name: "i", scope: !1638, file: !59, line: 110, type: !88)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !59, line: 110, column: 9)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !59, line: 109, column: 5)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !59, line: 108, column: 9)
!1641 = !DILocalVariable(name: "f", scope: !1642, file: !59, line: 115, type: !1537)
!1642 = distinct !DILexicalBlock(scope: !1640, file: !59, line: 114, column: 5)
!1643 = !DILocalVariable(name: "i", scope: !1644, file: !59, line: 116, type: !88)
!1644 = distinct !DILexicalBlock(scope: !1642, file: !59, line: 116, column: 9)
!1645 = !DILocation(line: 0, scope: !1630)
!1646 = !DILocation(line: 105, column: 26, scope: !1630)
!1647 = !DILocation(line: 106, column: 29, scope: !1630)
!1648 = !DILocation(line: 106, column: 32, scope: !1630)
!1649 = !DILocation(line: 108, column: 17, scope: !1640)
!1650 = !DILocation(line: 108, column: 9, scope: !1630)
!1651 = !DILocation(line: 0, scope: !1638)
!1652 = !DILocation(line: 110, column: 9, scope: !1638)
!1653 = !DILocation(line: 111, column: 13, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1638, file: !59, line: 110, column: 9)
!1655 = !DILocation(line: 110, column: 34, scope: !1654)
!1656 = !DILocation(line: 110, column: 27, scope: !1654)
!1657 = distinct !{!1657, !1652, !1658, !1457, !1458}
!1658 = !DILocation(line: 111, column: 13, scope: !1638)
!1659 = !DILocation(line: 115, column: 29, scope: !1642)
!1660 = !DILocation(line: 115, column: 37, scope: !1642)
!1661 = !DILocation(line: 115, column: 25, scope: !1642)
!1662 = !DILocation(line: 0, scope: !1642)
!1663 = !DILocation(line: 0, scope: !1644)
!1664 = !DILocation(line: 116, column: 9, scope: !1644)
!1665 = !DILocation(line: 117, column: 13, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1644, file: !59, line: 116, column: 9)
!1667 = !DILocation(line: 116, column: 34, scope: !1666)
!1668 = !DILocation(line: 116, column: 27, scope: !1666)
!1669 = distinct !{!1669, !1664, !1670, !1457, !1458}
!1670 = !DILocation(line: 117, column: 13, scope: !1644)
!1671 = !DILocation(line: 119, column: 1, scope: !1630)
!1672 = distinct !DISubprogram(name: "x264_denoise_dct", scope: !59, file: !59, line: 140, type: !1290, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1680, !1683}
!1674 = !DILocalVariable(name: "dct", arg: 1, scope: !1672, file: !59, line: 140, type: !785)
!1675 = !DILocalVariable(name: "sum", arg: 2, scope: !1672, file: !59, line: 140, type: !1292)
!1676 = !DILocalVariable(name: "offset", arg: 3, scope: !1672, file: !59, line: 140, type: !448)
!1677 = !DILocalVariable(name: "size", arg: 4, scope: !1672, file: !59, line: 140, type: !88)
!1678 = !DILocalVariable(name: "i", scope: !1679, file: !59, line: 142, type: !88)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !59, line: 142, column: 5)
!1680 = !DILocalVariable(name: "level", scope: !1681, file: !59, line: 144, type: !88)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !59, line: 143, column: 5)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !59, line: 142, column: 5)
!1683 = !DILocalVariable(name: "sign", scope: !1681, file: !59, line: 145, type: !88)
!1684 = !DILocation(line: 0, scope: !1672)
!1685 = !DILocation(line: 0, scope: !1679)
!1686 = !DILocation(line: 142, column: 23, scope: !1682)
!1687 = !DILocation(line: 142, column: 5, scope: !1679)
!1688 = !DILocation(line: 151, column: 1, scope: !1672)
!1689 = !DILocation(line: 144, column: 21, scope: !1681)
!1690 = !DILocation(line: 0, scope: !1681)
!1691 = !DILocation(line: 145, column: 25, scope: !1681)
!1692 = !DILocation(line: 146, column: 23, scope: !1681)
!1693 = !DILocation(line: 146, column: 29, scope: !1681)
!1694 = !DILocation(line: 147, column: 9, scope: !1681)
!1695 = !DILocation(line: 147, column: 16, scope: !1681)
!1696 = !DILocation(line: 148, column: 18, scope: !1681)
!1697 = !DILocation(line: 148, column: 15, scope: !1681)
!1698 = !DILocation(line: 149, column: 23, scope: !1681)
!1699 = !DILocation(line: 149, column: 18, scope: !1681)
!1700 = !DILocation(line: 149, column: 38, scope: !1681)
!1701 = !DILocation(line: 149, column: 44, scope: !1681)
!1702 = !DILocation(line: 149, column: 16, scope: !1681)
!1703 = !DILocation(line: 142, column: 32, scope: !1682)
!1704 = distinct !{!1704, !1687, !1705, !1457, !1458}
!1705 = !DILocation(line: 150, column: 5, scope: !1679)
!1706 = distinct !DISubprogram(name: "x264_decimate_score15", scope: !59, file: !59, line: 204, type: !1295, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "dct", arg: 1, scope: !1706, file: !59, line: 204, type: !785)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 206, column: 45, scope: !1706)
!1711 = !DILocalVariable(name: "dct", arg: 1, scope: !1712, file: !59, line: 174, type: !785)
!1712 = distinct !DISubprogram(name: "x264_decimate_score_internal", scope: !59, file: !59, line: 174, type: !1713, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1715)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!88, !785, !88}
!1715 = !{!1711, !1716, !1717, !1718, !1719, !1720}
!1716 = !DILocalVariable(name: "i_max", arg: 2, scope: !1712, file: !59, line: 174, type: !88)
!1717 = !DILocalVariable(name: "ds_table", scope: !1712, file: !59, line: 176, type: !419)
!1718 = !DILocalVariable(name: "i_score", scope: !1712, file: !59, line: 177, type: !88)
!1719 = !DILocalVariable(name: "idx", scope: !1712, file: !59, line: 178, type: !88)
!1720 = !DILocalVariable(name: "i_run", scope: !1721, file: !59, line: 187, type: !88)
!1721 = distinct !DILexicalBlock(scope: !1712, file: !59, line: 186, column: 5)
!1722 = !DILocation(line: 0, scope: !1712, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 206, column: 12, scope: !1706)
!1724 = !DILocation(line: 181, column: 5, scope: !1712, inlinedAt: !1723)
!1725 = !DILocation(line: 181, column: 24, scope: !1712, inlinedAt: !1723)
!1726 = !{!1376, !1376, i64 0}
!1727 = !DILocation(line: 181, column: 43, scope: !1712, inlinedAt: !1723)
!1728 = !DILocation(line: 182, column: 13, scope: !1712, inlinedAt: !1723)
!1729 = !DILocation(line: 181, column: 16, scope: !1712, inlinedAt: !1723)
!1730 = !DILocation(line: 181, column: 21, scope: !1712, inlinedAt: !1723)
!1731 = distinct !{!1731, !1724, !1732, !1457, !1458}
!1732 = !DILocation(line: 182, column: 16, scope: !1712, inlinedAt: !1723)
!1733 = !DILocation(line: 183, column: 21, scope: !1734, inlinedAt: !1723)
!1734 = distinct !DILexicalBlock(scope: !1712, file: !59, line: 183, column: 9)
!1735 = !DILocation(line: 183, column: 30, scope: !1734, inlinedAt: !1723)
!1736 = !DILocation(line: 183, column: 9, scope: !1712, inlinedAt: !1723)
!1737 = !DILocation(line: 185, column: 16, scope: !1712, inlinedAt: !1723)
!1738 = !DILocation(line: 185, column: 5, scope: !1712, inlinedAt: !1723)
!1739 = !DILocation(line: 189, column: 24, scope: !1740, inlinedAt: !1723)
!1740 = distinct !DILexicalBlock(scope: !1721, file: !59, line: 189, column: 13)
!1741 = !DILocation(line: 189, column: 40, scope: !1740, inlinedAt: !1723)
!1742 = !DILocation(line: 189, column: 13, scope: !1721, inlinedAt: !1723)
!1743 = !DILocation(line: 0, scope: !1721, inlinedAt: !1723)
!1744 = !DILocation(line: 193, column: 20, scope: !1721, inlinedAt: !1723)
!1745 = !DILocation(line: 193, column: 25, scope: !1721, inlinedAt: !1723)
!1746 = !DILocation(line: 193, column: 28, scope: !1721, inlinedAt: !1723)
!1747 = !DILocation(line: 193, column: 37, scope: !1721, inlinedAt: !1723)
!1748 = !DILocation(line: 193, column: 9, scope: !1721, inlinedAt: !1723)
!1749 = !DILocation(line: 196, column: 18, scope: !1750, inlinedAt: !1723)
!1750 = distinct !DILexicalBlock(scope: !1721, file: !59, line: 194, column: 9)
!1751 = distinct !{!1751, !1748, !1752, !1457, !1458}
!1752 = !DILocation(line: 197, column: 9, scope: !1721, inlinedAt: !1723)
!1753 = !DILocation(line: 198, column: 20, scope: !1721, inlinedAt: !1723)
!1754 = !DILocation(line: 198, column: 17, scope: !1721, inlinedAt: !1723)
!1755 = distinct !{!1755, !1738, !1756, !1457, !1458}
!1756 = !DILocation(line: 199, column: 5, scope: !1712, inlinedAt: !1723)
!1757 = !DILocation(line: 206, column: 5, scope: !1706)
!1758 = distinct !DISubprogram(name: "x264_decimate_score16", scope: !59, file: !59, line: 208, type: !1295, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1759)
!1759 = !{!1760}
!1760 = !DILocalVariable(name: "dct", arg: 1, scope: !1758, file: !59, line: 208, type: !785)
!1761 = !DILocation(line: 0, scope: !1758)
!1762 = !DILocation(line: 0, scope: !1712, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 210, column: 12, scope: !1758)
!1764 = !DILocation(line: 181, column: 5, scope: !1712, inlinedAt: !1763)
!1765 = !DILocation(line: 181, column: 24, scope: !1712, inlinedAt: !1763)
!1766 = !DILocation(line: 181, column: 43, scope: !1712, inlinedAt: !1763)
!1767 = !DILocation(line: 182, column: 13, scope: !1712, inlinedAt: !1763)
!1768 = !DILocation(line: 181, column: 16, scope: !1712, inlinedAt: !1763)
!1769 = !DILocation(line: 181, column: 21, scope: !1712, inlinedAt: !1763)
!1770 = distinct !{!1770, !1764, !1771, !1457, !1458}
!1771 = !DILocation(line: 182, column: 16, scope: !1712, inlinedAt: !1763)
!1772 = !DILocation(line: 183, column: 21, scope: !1734, inlinedAt: !1763)
!1773 = !DILocation(line: 183, column: 30, scope: !1734, inlinedAt: !1763)
!1774 = !DILocation(line: 183, column: 9, scope: !1712, inlinedAt: !1763)
!1775 = !DILocation(line: 185, column: 16, scope: !1712, inlinedAt: !1763)
!1776 = !DILocation(line: 185, column: 5, scope: !1712, inlinedAt: !1763)
!1777 = !DILocation(line: 189, column: 24, scope: !1740, inlinedAt: !1763)
!1778 = !DILocation(line: 189, column: 40, scope: !1740, inlinedAt: !1763)
!1779 = !DILocation(line: 189, column: 13, scope: !1721, inlinedAt: !1763)
!1780 = !DILocation(line: 0, scope: !1721, inlinedAt: !1763)
!1781 = !DILocation(line: 193, column: 20, scope: !1721, inlinedAt: !1763)
!1782 = !DILocation(line: 193, column: 25, scope: !1721, inlinedAt: !1763)
!1783 = !DILocation(line: 193, column: 28, scope: !1721, inlinedAt: !1763)
!1784 = !DILocation(line: 193, column: 37, scope: !1721, inlinedAt: !1763)
!1785 = !DILocation(line: 193, column: 9, scope: !1721, inlinedAt: !1763)
!1786 = !DILocation(line: 196, column: 18, scope: !1750, inlinedAt: !1763)
!1787 = distinct !{!1787, !1785, !1788, !1457, !1458}
!1788 = !DILocation(line: 197, column: 9, scope: !1721, inlinedAt: !1763)
!1789 = !DILocation(line: 198, column: 20, scope: !1721, inlinedAt: !1763)
!1790 = !DILocation(line: 198, column: 17, scope: !1721, inlinedAt: !1763)
!1791 = distinct !{!1791, !1776, !1792, !1457, !1458}
!1792 = !DILocation(line: 199, column: 5, scope: !1712, inlinedAt: !1763)
!1793 = !DILocation(line: 210, column: 5, scope: !1758)
!1794 = distinct !DISubprogram(name: "x264_decimate_score64", scope: !59, file: !59, line: 212, type: !1295, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1795)
!1795 = !{!1796}
!1796 = !DILocalVariable(name: "dct", arg: 1, scope: !1794, file: !59, line: 212, type: !785)
!1797 = !DILocation(line: 0, scope: !1794)
!1798 = !DILocation(line: 0, scope: !1712, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 214, column: 12, scope: !1794)
!1800 = !DILocation(line: 181, column: 5, scope: !1712, inlinedAt: !1799)
!1801 = !DILocation(line: 181, column: 24, scope: !1712, inlinedAt: !1799)
!1802 = !DILocation(line: 181, column: 43, scope: !1712, inlinedAt: !1799)
!1803 = !DILocation(line: 182, column: 13, scope: !1712, inlinedAt: !1799)
!1804 = !DILocation(line: 181, column: 16, scope: !1712, inlinedAt: !1799)
!1805 = !DILocation(line: 181, column: 21, scope: !1712, inlinedAt: !1799)
!1806 = distinct !{!1806, !1800, !1807, !1457, !1458}
!1807 = !DILocation(line: 182, column: 16, scope: !1712, inlinedAt: !1799)
!1808 = !DILocation(line: 183, column: 21, scope: !1734, inlinedAt: !1799)
!1809 = !DILocation(line: 183, column: 30, scope: !1734, inlinedAt: !1799)
!1810 = !DILocation(line: 183, column: 9, scope: !1712, inlinedAt: !1799)
!1811 = !DILocation(line: 185, column: 16, scope: !1712, inlinedAt: !1799)
!1812 = !DILocation(line: 185, column: 5, scope: !1712, inlinedAt: !1799)
!1813 = !DILocation(line: 189, column: 24, scope: !1740, inlinedAt: !1799)
!1814 = !DILocation(line: 189, column: 40, scope: !1740, inlinedAt: !1799)
!1815 = !DILocation(line: 189, column: 13, scope: !1721, inlinedAt: !1799)
!1816 = !DILocation(line: 0, scope: !1721, inlinedAt: !1799)
!1817 = !DILocation(line: 193, column: 20, scope: !1721, inlinedAt: !1799)
!1818 = !DILocation(line: 193, column: 25, scope: !1721, inlinedAt: !1799)
!1819 = !DILocation(line: 193, column: 28, scope: !1721, inlinedAt: !1799)
!1820 = !DILocation(line: 193, column: 37, scope: !1721, inlinedAt: !1799)
!1821 = !DILocation(line: 193, column: 9, scope: !1721, inlinedAt: !1799)
!1822 = !DILocation(line: 196, column: 18, scope: !1750, inlinedAt: !1799)
!1823 = distinct !{!1823, !1821, !1824, !1457, !1458}
!1824 = !DILocation(line: 197, column: 9, scope: !1721, inlinedAt: !1799)
!1825 = !DILocation(line: 198, column: 20, scope: !1721, inlinedAt: !1799)
!1826 = !DILocation(line: 198, column: 17, scope: !1721, inlinedAt: !1799)
!1827 = distinct !{!1827, !1812, !1828, !1457, !1458}
!1828 = !DILocation(line: 199, column: 5, scope: !1712, inlinedAt: !1799)
!1829 = !DILocation(line: 214, column: 5, scope: !1794)
!1830 = distinct !DISubprogram(name: "x264_coeff_last4", scope: !59, file: !59, line: 228, type: !1295, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1831)
!1831 = !{!1832}
!1832 = !DILocalVariable(name: "l", arg: 1, scope: !1830, file: !59, line: 228, type: !785)
!1833 = !DILocation(line: 0, scope: !1830)
!1834 = !DILocalVariable(name: "l", arg: 1, scope: !1835, file: !59, line: 217, type: !785)
!1835 = distinct !DISubprogram(name: "x264_coeff_last_internal", scope: !59, file: !59, line: 217, type: !1713, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1836)
!1836 = !{!1834, !1837, !1838}
!1837 = !DILocalVariable(name: "i_count", arg: 2, scope: !1835, file: !59, line: 217, type: !88)
!1838 = !DILocalVariable(name: "i_last", scope: !1835, file: !59, line: 219, type: !88)
!1839 = !DILocation(line: 0, scope: !1835, inlinedAt: !1840)
!1840 = distinct !DILocation(line: 230, column: 12, scope: !1830)
!1841 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1840)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !59, line: 221, column: 13)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !59, line: 220, column: 5)
!1844 = distinct !DILexicalBlock(scope: !1835, file: !59, line: 220, column: 5)
!1845 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1840)
!1846 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1840)
!1847 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1840)
!1848 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1840)
!1849 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1840)
!1850 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1840)
!1851 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1840)
!1852 = distinct !{!1852, !1848, !1849, !1457, !1458}
!1853 = !DILocation(line: 230, column: 5, scope: !1830)
!1854 = distinct !DISubprogram(name: "x264_coeff_last15", scope: !59, file: !59, line: 232, type: !1295, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1855)
!1855 = !{!1856}
!1856 = !DILocalVariable(name: "l", arg: 1, scope: !1854, file: !59, line: 232, type: !785)
!1857 = !DILocation(line: 0, scope: !1854)
!1858 = !DILocation(line: 0, scope: !1835, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 234, column: 12, scope: !1854)
!1860 = !DILocation(line: 220, column: 5, scope: !1844, inlinedAt: !1859)
!1861 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1859)
!1862 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1859)
!1863 = !DILocation(line: 220, column: 50, scope: !1843, inlinedAt: !1859)
!1864 = !DILocation(line: 220, column: 37, scope: !1843, inlinedAt: !1859)
!1865 = distinct !{!1865, !1860, !1866, !1457, !1458}
!1866 = !DILocation(line: 222, column: 13, scope: !1844, inlinedAt: !1859)
!1867 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1859)
!1868 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1859)
!1869 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1859)
!1870 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1859)
!1871 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1859)
!1872 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1859)
!1873 = distinct !{!1873, !1867, !1870, !1457, !1458}
!1874 = !DILocation(line: 234, column: 5, scope: !1854)
!1875 = distinct !DISubprogram(name: "x264_coeff_last16", scope: !59, file: !59, line: 236, type: !1295, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1876)
!1876 = !{!1877}
!1877 = !DILocalVariable(name: "l", arg: 1, scope: !1875, file: !59, line: 236, type: !785)
!1878 = !DILocation(line: 0, scope: !1875)
!1879 = !DILocation(line: 0, scope: !1835, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 238, column: 12, scope: !1875)
!1881 = !DILocation(line: 220, column: 5, scope: !1844, inlinedAt: !1880)
!1882 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1880)
!1883 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1880)
!1884 = !DILocation(line: 220, column: 50, scope: !1843, inlinedAt: !1880)
!1885 = !DILocation(line: 220, column: 37, scope: !1843, inlinedAt: !1880)
!1886 = distinct !{!1886, !1881, !1887, !1457, !1458}
!1887 = !DILocation(line: 222, column: 13, scope: !1844, inlinedAt: !1880)
!1888 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1880)
!1889 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1880)
!1890 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1880)
!1891 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1880)
!1892 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1880)
!1893 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1880)
!1894 = distinct !{!1894, !1888, !1891, !1457, !1458}
!1895 = !DILocation(line: 238, column: 5, scope: !1875)
!1896 = distinct !DISubprogram(name: "x264_coeff_last64", scope: !59, file: !59, line: 240, type: !1295, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "l", arg: 1, scope: !1896, file: !59, line: 240, type: !785)
!1899 = !DILocation(line: 0, scope: !1896)
!1900 = !DILocation(line: 0, scope: !1835, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 242, column: 12, scope: !1896)
!1902 = !DILocation(line: 220, column: 5, scope: !1844, inlinedAt: !1901)
!1903 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1901)
!1904 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1901)
!1905 = !DILocation(line: 220, column: 50, scope: !1843, inlinedAt: !1901)
!1906 = !DILocation(line: 220, column: 37, scope: !1843, inlinedAt: !1901)
!1907 = distinct !{!1907, !1902, !1908, !1457, !1458}
!1908 = !DILocation(line: 222, column: 13, scope: !1844, inlinedAt: !1901)
!1909 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1901)
!1910 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1901)
!1911 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1901)
!1912 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1901)
!1913 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1901)
!1914 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1901)
!1915 = distinct !{!1915, !1909, !1912, !1457, !1458}
!1916 = !DILocation(line: 242, column: 5, scope: !1896)
!1917 = distinct !DISubprogram(name: "x264_coeff_level_run4", scope: !59, file: !59, line: 261, type: !1304, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1918)
!1918 = !{!1919, !1920, !1921, !1922, !1923}
!1919 = !DILocalVariable(name: "dct", arg: 1, scope: !1917, file: !59, line: 261, type: !785)
!1920 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1917, file: !59, line: 261, type: !1306)
!1921 = !DILocalVariable(name: "i_last", scope: !1917, file: !59, line: 261, type: !88)
!1922 = !DILocalVariable(name: "i_total", scope: !1917, file: !59, line: 261, type: !88)
!1923 = !DILocalVariable(name: "r", scope: !1924, file: !59, line: 261, type: !88)
!1924 = distinct !DILexicalBlock(scope: !1917, file: !59, line: 261, column: 1)
!1925 = !DILocation(line: 0, scope: !1917)
!1926 = !DILocation(line: 0, scope: !1830, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 261, column: 1, scope: !1917)
!1928 = !DILocation(line: 0, scope: !1835, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 230, column: 12, scope: !1830, inlinedAt: !1927)
!1930 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1929)
!1931 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1929)
!1932 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1929)
!1933 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1929)
!1934 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1929)
!1935 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1929)
!1936 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1929)
!1937 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1929)
!1938 = distinct !{!1938, !1934, !1935, !1457, !1458}
!1939 = !DILocation(line: 261, column: 1, scope: !1917)
!1940 = !{!1941, !1558, i64 0}
!1941 = !{!"", !1558, i64 0, !1376, i64 4, !1376, i64 36}
!1942 = !DILocation(line: 0, scope: !1924)
!1943 = !DILocation(line: 261, column: 1, scope: !1924)
!1944 = distinct !{!1944, !1943, !1943, !1457, !1458}
!1945 = distinct !DISubprogram(name: "x264_coeff_level_run15", scope: !59, file: !59, line: 262, type: !1304, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951}
!1947 = !DILocalVariable(name: "dct", arg: 1, scope: !1945, file: !59, line: 262, type: !785)
!1948 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1945, file: !59, line: 262, type: !1306)
!1949 = !DILocalVariable(name: "i_last", scope: !1945, file: !59, line: 262, type: !88)
!1950 = !DILocalVariable(name: "i_total", scope: !1945, file: !59, line: 262, type: !88)
!1951 = !DILocalVariable(name: "r", scope: !1952, file: !59, line: 262, type: !88)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !59, line: 262, column: 1)
!1953 = !DILocation(line: 0, scope: !1945)
!1954 = !DILocation(line: 0, scope: !1854, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 262, column: 1, scope: !1945)
!1956 = !DILocation(line: 0, scope: !1835, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 234, column: 12, scope: !1854, inlinedAt: !1955)
!1958 = !DILocation(line: 220, column: 5, scope: !1844, inlinedAt: !1957)
!1959 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1957)
!1960 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1957)
!1961 = !DILocation(line: 220, column: 50, scope: !1843, inlinedAt: !1957)
!1962 = !DILocation(line: 220, column: 37, scope: !1843, inlinedAt: !1957)
!1963 = distinct !{!1963, !1958, !1964, !1457, !1458}
!1964 = !DILocation(line: 222, column: 13, scope: !1844, inlinedAt: !1957)
!1965 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1957)
!1966 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1957)
!1967 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1957)
!1968 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1957)
!1969 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1957)
!1970 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1957)
!1971 = distinct !{!1971, !1965, !1968, !1457, !1458}
!1972 = !DILocation(line: 262, column: 1, scope: !1945)
!1973 = !DILocation(line: 0, scope: !1952)
!1974 = !DILocation(line: 262, column: 1, scope: !1952)
!1975 = distinct !{!1975, !1974, !1974, !1457, !1458}
!1976 = distinct !DISubprogram(name: "x264_coeff_level_run16", scope: !59, file: !59, line: 263, type: !1304, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982}
!1978 = !DILocalVariable(name: "dct", arg: 1, scope: !1976, file: !59, line: 263, type: !785)
!1979 = !DILocalVariable(name: "runlevel", arg: 2, scope: !1976, file: !59, line: 263, type: !1306)
!1980 = !DILocalVariable(name: "i_last", scope: !1976, file: !59, line: 263, type: !88)
!1981 = !DILocalVariable(name: "i_total", scope: !1976, file: !59, line: 263, type: !88)
!1982 = !DILocalVariable(name: "r", scope: !1983, file: !59, line: 263, type: !88)
!1983 = distinct !DILexicalBlock(scope: !1976, file: !59, line: 263, column: 1)
!1984 = !DILocation(line: 0, scope: !1976)
!1985 = !DILocation(line: 0, scope: !1875, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 263, column: 1, scope: !1976)
!1987 = !DILocation(line: 0, scope: !1835, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 238, column: 12, scope: !1875, inlinedAt: !1986)
!1989 = !DILocation(line: 220, column: 5, scope: !1844, inlinedAt: !1988)
!1990 = !DILocation(line: 221, column: 13, scope: !1842, inlinedAt: !1988)
!1991 = !DILocation(line: 221, column: 13, scope: !1843, inlinedAt: !1988)
!1992 = !DILocation(line: 220, column: 50, scope: !1843, inlinedAt: !1988)
!1993 = !DILocation(line: 220, column: 37, scope: !1843, inlinedAt: !1988)
!1994 = distinct !{!1994, !1989, !1995, !1457, !1458}
!1995 = !DILocation(line: 222, column: 13, scope: !1844, inlinedAt: !1988)
!1996 = !DILocation(line: 223, column: 5, scope: !1835, inlinedAt: !1988)
!1997 = !DILocation(line: 223, column: 27, scope: !1835, inlinedAt: !1988)
!1998 = !DILocation(line: 223, column: 37, scope: !1835, inlinedAt: !1988)
!1999 = !DILocation(line: 224, column: 15, scope: !1835, inlinedAt: !1988)
!2000 = !DILocation(line: 223, column: 19, scope: !1835, inlinedAt: !1988)
!2001 = !DILocation(line: 223, column: 24, scope: !1835, inlinedAt: !1988)
!2002 = distinct !{!2002, !1996, !1999, !1457, !1458}
!2003 = !DILocation(line: 263, column: 1, scope: !1976)
!2004 = !DILocation(line: 0, scope: !1983)
!2005 = !DILocation(line: 263, column: 1, scope: !1983)
!2006 = distinct !{!2006, !2005, !2005, !1457, !1458}
