; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/encoder/lookahead.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_lookahead_t = type { i8, i8, i8, i32, i32, ptr, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t }
%struct.x264_synch_frame_list_t = type { ptr, i32, i32, i32, i32, i32 }
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

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_lookahead_init(ptr nocapture noundef readonly %h, i32 noundef %i_slicetype_length) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1331, metadata !DIExpression()), !dbg !1338
  call void @llvm.dbg.value(metadata i32 %i_slicetype_length, metadata !1332, metadata !DIExpression()), !dbg !1338
  %call = tail call ptr @x264_malloc(i32 noundef 120) #6, !dbg !1339
  call void @llvm.dbg.value(metadata ptr %call, metadata !1333, metadata !DIExpression()), !dbg !1338
  %tobool.not = icmp eq ptr %call, null, !dbg !1342
  br i1 %tobool.not, label %fail, label %do.end, !dbg !1339

do.end:                                           ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %call, i8 0, i64 120, i1 false), !dbg !1344
  call void @llvm.dbg.value(metadata i32 0, metadata !1334, metadata !DIExpression()), !dbg !1345
  %i_threads = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 1
  %0 = load i32, ptr %i_threads, align 4, !tbaa !1346
  call void @llvm.dbg.value(metadata i32 0, metadata !1334, metadata !DIExpression()), !dbg !1345
  %cmp78 = icmp sgt i32 %0, 0, !dbg !1376
  br i1 %cmp78, label %for.body.preheader, label %for.cond.cleanup, !dbg !1378

for.body.preheader:                               ; preds = %do.end
  %wide.trip.count = zext i32 %0 to i64, !dbg !1376
  br label %for.body, !dbg !1378

for.cond.cleanup:                                 ; preds = %for.body, %do.end
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 13, !dbg !1379
  %1 = load i32, ptr %i_keyint_max, align 4, !dbg !1379, !tbaa !1380
  %sub = sub nsw i32 0, %1, !dbg !1381
  %i_last_keyframe = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 3, !dbg !1382
  store i32 %sub, ptr %i_last_keyframe, align 4, !dbg !1383, !tbaa !1384
  %b_mb_tree = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 16, !dbg !1387
  %2 = load i32, ptr %b_mb_tree, align 8, !dbg !1387, !tbaa !1388
  %tobool6.not = icmp eq i32 %2, 0, !dbg !1389
  br i1 %tobool6.not, label %lor.lhs.false, label %land.rhs, !dbg !1390

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1334, metadata !DIExpression()), !dbg !1345
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %indvars.iv, !dbg !1391
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1391, !tbaa !1392
  %lookahead = getelementptr inbounds %struct.x264_t, ptr %3, i64 0, i32 75, !dbg !1393
  store ptr %call, ptr %lookahead, align 16, !dbg !1394, !tbaa !1395
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1334, metadata !DIExpression()), !dbg !1345
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1376
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1378, !llvm.loop !1397

lor.lhs.false:                                    ; preds = %for.cond.cleanup
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 10, !dbg !1401
  %4 = load i32, ptr %i_vbv_buffer_size, align 8, !dbg !1401, !tbaa !1402
  %tobool9.not = icmp eq i32 %4, 0, !dbg !1403
  br i1 %tobool9.not, label %land.end, label %land.lhs.true, !dbg !1404

land.lhs.true:                                    ; preds = %lor.lhs.false
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 17, !dbg !1405
  %5 = load i32, ptr %i_lookahead, align 4, !dbg !1405, !tbaa !1406
  %tobool12.not = icmp eq i32 %5, 0, !dbg !1407
  br i1 %tobool12.not, label %land.end, label %land.rhs, !dbg !1408

land.rhs:                                         ; preds = %land.lhs.true, %for.cond.cleanup
  %b_stat_read = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 20, !dbg !1409
  %6 = load i32, ptr %b_stat_read, align 8, !dbg !1409, !tbaa !1410
  %tobool15.not = icmp eq i32 %6, 0, !dbg !1411
  %phi.cast = zext i1 %tobool15.not to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false
  %7 = phi i8 [ 0, %land.lhs.true ], [ 0, %lor.lhs.false ], [ %phi.cast, %land.rhs ]
  %b_analyse_keyframe = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 2, !dbg !1412
  store i8 %7, ptr %b_analyse_keyframe, align 2, !dbg !1413, !tbaa !1414
  %i_slicetype_length16 = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 4, !dbg !1415
  store i32 %i_slicetype_length, ptr %i_slicetype_length16, align 8, !dbg !1416, !tbaa !1417
  %ifbuf = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 6, !dbg !1418
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 4, !dbg !1420
  %8 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1420, !tbaa !1421
  %add = add nsw i32 %8, 3, !dbg !1422
  %call18 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ifbuf, i32 noundef %add) #6, !dbg !1423
  %tobool19.not = icmp eq i32 %call18, 0, !dbg !1423
  br i1 %tobool19.not, label %lor.lhs.false20, label %fail, !dbg !1424

lor.lhs.false20:                                  ; preds = %land.end
  %next = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 7, !dbg !1425
  %i_delay = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, i32 9, !dbg !1426
  %9 = load i32, ptr %i_delay, align 4, !dbg !1426, !tbaa !1427
  %add21 = add nsw i32 %9, 3, !dbg !1428
  %call22 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %next, i32 noundef %add21) #6, !dbg !1429
  %tobool23.not = icmp eq i32 %call22, 0, !dbg !1429
  br i1 %tobool23.not, label %lor.lhs.false24, label %fail, !dbg !1430

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %ofbuf = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 8, !dbg !1431
  %10 = load i32, ptr %i_delay, align 4, !dbg !1432, !tbaa !1427
  %add27 = add nsw i32 %10, 3, !dbg !1433
  %call28 = tail call i32 @x264_synch_frame_list_init(ptr noundef nonnull %ofbuf, i32 noundef %add27) #6, !dbg !1434
  %tobool29.not = icmp eq i32 %call28, 0, !dbg !1434
  br i1 %tobool29.not, label %if.end31, label %fail, !dbg !1435

if.end31:                                         ; preds = %lor.lhs.false24
  %11 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1436, !tbaa !1421
  %tobool34.not = icmp eq i32 %11, 0, !dbg !1438
  br i1 %tobool34.not, label %cleanup, label %if.end36, !dbg !1439

if.end36:                                         ; preds = %if.end31
  %12 = load i32, ptr %i_threads, align 4, !dbg !1440, !tbaa !1346
  %idxprom40 = sext i32 %12 to i64, !dbg !1441
  %arrayidx41 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %idxprom40, !dbg !1441
  %13 = load ptr, ptr %arrayidx41, align 8, !dbg !1441, !tbaa !1392
  call void @llvm.dbg.value(metadata ptr %13, metadata !1336, metadata !DIExpression()), !dbg !1338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %13, ptr noundef nonnull align 16 dereferenceable(33344) %h, i64 33344, i1 false), !dbg !1442, !tbaa.struct !1443
  %call42 = tail call i32 @x264_macroblock_cache_allocate(ptr noundef %13) #6, !dbg !1449
  %tobool43.not = icmp eq i32 %call42, 0, !dbg !1449
  br i1 %tobool43.not, label %if.end45, label %fail, !dbg !1451

if.end45:                                         ; preds = %if.end36
  %call46 = tail call i32 @x264_macroblock_thread_allocate(ptr noundef nonnull %13, i32 noundef 1) #6, !dbg !1452
  %cmp47 = icmp slt i32 %call46, 0, !dbg !1454
  br i1 %cmp47, label %fail, label %if.end50, !dbg !1455

if.end50:                                         ; preds = %if.end45
  %b_thread_active = getelementptr inbounds %struct.x264_lookahead_t, ptr %call, i64 0, i32 1, !dbg !1456
  store i8 1, ptr %b_thread_active, align 1, !dbg !1457, !tbaa !1458
  br label %cleanup, !dbg !1459

fail:                                             ; preds = %if.end45, %if.end36, %land.end, %lor.lhs.false20, %lor.lhs.false24, %entry
  call void @llvm.dbg.label(metadata !1337), !dbg !1460
  tail call void @x264_free(ptr noundef %call) #6, !dbg !1461
  br label %cleanup, !dbg !1462

cleanup:                                          ; preds = %if.end31, %fail, %if.end50
  %retval.0 = phi i32 [ -1, %fail ], [ 0, %if.end50 ], [ 0, %if.end31 ], !dbg !1338
  ret i32 %retval.0, !dbg !1463
}

declare !dbg !1464 ptr @x264_malloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare !dbg !1468 i32 @x264_synch_frame_list_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !1472 i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #1

declare !dbg !1476 i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare !dbg !1477 void @x264_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_delete(ptr noundef %h) local_unnamed_addr #0 !dbg !1478 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1482, metadata !DIExpression()), !dbg !1483
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 4, !dbg !1484
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1484, !tbaa !1421
  %tobool.not = icmp eq i32 %0, 0, !dbg !1486
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1487

if.then:                                          ; preds = %entry
  %lookahead = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75, !dbg !1488
  %1 = load ptr, ptr %lookahead, align 16, !dbg !1488, !tbaa !1395
  store volatile i8 1, ptr %1, align 8, !dbg !1490, !tbaa !1491
  %i_threads = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 1, !dbg !1492
  %2 = load i32, ptr %i_threads, align 4, !dbg !1492, !tbaa !1346
  %idxprom = sext i32 %2 to i64, !dbg !1493
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %idxprom, !dbg !1493
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !1493, !tbaa !1392
  tail call void @x264_macroblock_cache_free(ptr noundef %3) #6, !dbg !1494
  %4 = load i32, ptr %i_threads, align 4, !dbg !1495, !tbaa !1346
  %idxprom5 = sext i32 %4 to i64, !dbg !1496
  %arrayidx6 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %idxprom5, !dbg !1496
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !1496, !tbaa !1392
  tail call void @x264_macroblock_thread_free(ptr noundef %5, i32 noundef 1) #6, !dbg !1497
  %6 = load i32, ptr %i_threads, align 4, !dbg !1498, !tbaa !1346
  %idxprom10 = sext i32 %6 to i64, !dbg !1499
  %arrayidx11 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 1, i64 %idxprom10, !dbg !1499
  %7 = load ptr, ptr %arrayidx11, align 8, !dbg !1499, !tbaa !1392
  tail call void @x264_free(ptr noundef %7) #6, !dbg !1500
  br label %if.end, !dbg !1501

if.end:                                           ; preds = %if.then, %entry
  %lookahead12 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75, !dbg !1502
  %8 = load ptr, ptr %lookahead12, align 16, !dbg !1502, !tbaa !1395
  %ifbuf = getelementptr inbounds %struct.x264_lookahead_t, ptr %8, i64 0, i32 6, !dbg !1503
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ifbuf) #6, !dbg !1504
  %9 = load ptr, ptr %lookahead12, align 16, !dbg !1505, !tbaa !1395
  %next = getelementptr inbounds %struct.x264_lookahead_t, ptr %9, i64 0, i32 7, !dbg !1506
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %next) #6, !dbg !1507
  %10 = load ptr, ptr %lookahead12, align 16, !dbg !1508, !tbaa !1395
  %last_nonb = getelementptr inbounds %struct.x264_lookahead_t, ptr %10, i64 0, i32 5, !dbg !1510
  %11 = load ptr, ptr %last_nonb, align 8, !dbg !1510, !tbaa !1511
  %tobool15.not = icmp eq ptr %11, null, !dbg !1512
  br i1 %tobool15.not, label %if.end19, label %if.then16, !dbg !1513

if.then16:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %11) #6, !dbg !1514
  %.pre = load ptr, ptr %lookahead12, align 16, !dbg !1515, !tbaa !1395
  br label %if.end19, !dbg !1514

if.end19:                                         ; preds = %if.then16, %if.end
  %12 = phi ptr [ %.pre, %if.then16 ], [ %10, %if.end ], !dbg !1515
  %ofbuf = getelementptr inbounds %struct.x264_lookahead_t, ptr %12, i64 0, i32 8, !dbg !1516
  tail call void @x264_synch_frame_list_delete(ptr noundef nonnull %ofbuf) #6, !dbg !1517
  %13 = load ptr, ptr %lookahead12, align 16, !dbg !1518, !tbaa !1395
  tail call void @x264_free(ptr noundef %13) #6, !dbg !1519
  ret void, !dbg !1520
}

declare !dbg !1521 void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #1

declare !dbg !1522 void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1525 void @x264_synch_frame_list_delete(ptr noundef) local_unnamed_addr #1

declare !dbg !1528 void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_put_frame(ptr nocapture noundef readonly %h, ptr noundef %frame) local_unnamed_addr #0 !dbg !1531 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1533, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata ptr %frame, metadata !1534, metadata !DIExpression()), !dbg !1535
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 4, !dbg !1536
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1536, !tbaa !1421
  %tobool.not = icmp eq i32 %0, 0, !dbg !1538
  %lookahead1 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75, !dbg !1539
  %1 = load ptr, ptr %lookahead1, align 16, !dbg !1539, !tbaa !1395
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !1540

if.then:                                          ; preds = %entry
  %ifbuf = getelementptr inbounds %struct.x264_lookahead_t, ptr %1, i64 0, i32 6, !dbg !1541
  br label %if.end, !dbg !1542

if.else:                                          ; preds = %entry
  %next = getelementptr inbounds %struct.x264_lookahead_t, ptr %1, i64 0, i32 7, !dbg !1543
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next.sink = phi ptr [ %next, %if.else ], [ %ifbuf, %if.then ]
  tail call void @x264_synch_frame_list_push(ptr noundef nonnull %next.sink, ptr noundef %frame) #6, !dbg !1539
  ret void, !dbg !1544
}

declare !dbg !1545 void @x264_synch_frame_list_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @x264_lookahead_is_empty(ptr nocapture noundef readonly %h) local_unnamed_addr #5 !dbg !1548 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1550, metadata !DIExpression()), !dbg !1552
  %lookahead = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75, !dbg !1553
  %0 = load ptr, ptr %lookahead, align 16, !dbg !1553, !tbaa !1395
  %i_size = getelementptr inbounds %struct.x264_lookahead_t, ptr %0, i64 0, i32 7, i32 2, !dbg !1554
  %1 = load i32, ptr %i_size, align 4, !dbg !1554, !tbaa !1555
  %tobool.not = icmp eq i32 %1, 0, !dbg !1556
  br i1 %tobool.not, label %land.rhs, label %land.end, !dbg !1557

land.rhs:                                         ; preds = %entry
  %i_size2 = getelementptr inbounds %struct.x264_lookahead_t, ptr %0, i64 0, i32 8, i32 2, !dbg !1558
  %2 = load i32, ptr %i_size2, align 4, !dbg !1558, !tbaa !1559
  %tobool3.not = icmp eq i32 %2, 0, !dbg !1560
  %phi.cast = zext i1 %tobool3.not to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !1551, metadata !DIExpression()), !dbg !1552
  ret i32 %3, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_lookahead_get_frames(ptr noundef %h) local_unnamed_addr #0 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1564, metadata !DIExpression()), !dbg !1565
  %i_sync_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 4, !dbg !1566
  %0 = load i32, ptr %i_sync_lookahead, align 16, !dbg !1566, !tbaa !1421
  %tobool.not = icmp eq i32 %0, 0, !dbg !1568
  br i1 %tobool.not, label %if.else, label %while.cond.preheader, !dbg !1569

while.cond.preheader:                             ; preds = %entry
  %lookahead = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75
  %1 = load ptr, ptr %lookahead, align 16, !tbaa !1395
  %i_size = getelementptr inbounds %struct.x264_lookahead_t, ptr %1, i64 0, i32 8, i32 2
  %2 = load i32, ptr %i_size, align 4, !tbaa !1559
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %while.cond.preheader.split, label %if.end.i, !dbg !1570

while.cond.preheader.split:                       ; preds = %while.cond.preheader
  %b_thread_active = getelementptr inbounds %struct.x264_lookahead_t, ptr %1, i64 0, i32 1
  %3 = load i8, ptr %b_thread_active, align 1, !tbaa !1458
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end34, label %while.cond, !dbg !1572, !llvm.loop !1573

while.cond:                                       ; preds = %while.cond.preheader.split, %while.cond
  br label %while.cond

if.end.i:                                         ; preds = %while.cond.preheader
  call void @llvm.dbg.value(metadata ptr %h, metadata !1575, metadata !DIExpression()) #6, !dbg !1579
  %ofbuf.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %1, i64 0, i32 8, !dbg !1581
  %4 = load ptr, ptr %ofbuf.i, align 8, !dbg !1583, !tbaa !1584
  %5 = load ptr, ptr %4, align 8, !dbg !1585, !tbaa !1392
  %i_bframes.i = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 19, !dbg !1586
  %6 = load i8, ptr %i_bframes.i, align 2, !dbg !1586, !tbaa !1587
  call void @llvm.dbg.value(metadata i8 %6, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1579
  %frames.i = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43
  call void @llvm.dbg.value(metadata i8 %6, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %6, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1579
  call void @llvm.dbg.value(metadata i8 %6, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1579
  %7 = load ptr, ptr %frames.i, align 16, !dbg !1590, !tbaa !1592
  %call.i85 = tail call ptr @x264_frame_shift(ptr noundef nonnull %4) #6, !dbg !1593
  tail call void @x264_frame_push(ptr noundef %7, ptr noundef %call.i85) #6, !dbg !1594
  %8 = load ptr, ptr %lookahead, align 16, !dbg !1595, !tbaa !1395
  %i_size9.i86 = getelementptr inbounds %struct.x264_lookahead_t, ptr %8, i64 0, i32 8, i32 2, !dbg !1596
  %9 = load i32, ptr %i_size9.i86, align 4, !dbg !1597, !tbaa !1559
  %dec10.i87 = add nsw i32 %9, -1, !dbg !1597
  store i32 %dec10.i87, ptr %i_size9.i86, align 4, !dbg !1597, !tbaa !1559
  call void @llvm.dbg.value(metadata i8 %6, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1579
  %tobool3.not.i88 = icmp eq i8 %6, 0, !dbg !1598
  br i1 %tobool3.not.i88, label %if.end34, label %while.body.while.body_crit_edge.i.preheader, !dbg !1598, !llvm.loop !1599

while.body.while.body_crit_edge.i.preheader:      ; preds = %if.end.i
  %conv.i = zext i8 %6 to i32, !dbg !1585
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !1578, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1579
  br label %while.body.while.body_crit_edge.i, !dbg !1598

while.body.while.body_crit_edge.i:                ; preds = %while.body.while.body_crit_edge.i.preheader, %while.body.while.body_crit_edge.i
  %10 = phi ptr [ %12, %while.body.while.body_crit_edge.i ], [ %8, %while.body.while.body_crit_edge.i.preheader ]
  %dec.i89 = phi i32 [ %dec.i, %while.body.while.body_crit_edge.i ], [ %conv.i, %while.body.while.body_crit_edge.i.preheader ]
  %ofbuf5.phi.trans.insert.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %10, i64 0, i32 8
  %.pre.i = load ptr, ptr %ofbuf5.phi.trans.insert.i, align 8, !dbg !1601, !tbaa !1584
  call void @llvm.dbg.value(metadata i32 %dec.i89, metadata !1578, metadata !DIExpression()) #6, !dbg !1579
  %dec.i = add nsw i32 %dec.i89, -1, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1578, metadata !DIExpression()) #6, !dbg !1579
  %11 = load ptr, ptr %frames.i, align 16, !dbg !1590, !tbaa !1592
  %call.i = tail call ptr @x264_frame_shift(ptr noundef %.pre.i) #6, !dbg !1593
  tail call void @x264_frame_push(ptr noundef %11, ptr noundef %call.i) #6, !dbg !1594
  %12 = load ptr, ptr %lookahead, align 16, !dbg !1595, !tbaa !1395
  %i_size9.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %12, i64 0, i32 8, i32 2, !dbg !1596
  %13 = load i32, ptr %i_size9.i, align 4, !dbg !1597, !tbaa !1559
  %dec10.i = add nsw i32 %13, -1, !dbg !1597
  store i32 %dec10.i, ptr %i_size9.i, align 4, !dbg !1597, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1578, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1579
  %tobool3.not.i = icmp eq i32 %dec.i, 0, !dbg !1598
  br i1 %tobool3.not.i, label %if.end34, label %while.body.while.body_crit_edge.i, !dbg !1598, !llvm.loop !1599

if.else:                                          ; preds = %entry
  %frames = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 43, !dbg !1603
  %14 = load ptr, ptr %frames, align 16, !dbg !1606, !tbaa !1592
  %15 = load ptr, ptr %14, align 8, !dbg !1607, !tbaa !1392
  %tobool4.not = icmp eq ptr %15, null, !dbg !1607
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end34, !dbg !1608

lor.lhs.false:                                    ; preds = %if.else
  %lookahead5 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 75, !dbg !1609
  %16 = load ptr, ptr %lookahead5, align 16, !dbg !1609, !tbaa !1395
  %i_size6 = getelementptr inbounds %struct.x264_lookahead_t, ptr %16, i64 0, i32 7, i32 2, !dbg !1610
  %17 = load i32, ptr %i_size6, align 4, !dbg !1610, !tbaa !1555
  %tobool7.not = icmp eq i32 %17, 0, !dbg !1611
  br i1 %tobool7.not, label %if.end34, label %if.end, !dbg !1612

if.end:                                           ; preds = %lor.lhs.false
  tail call void @x264_slicetype_decide(ptr noundef nonnull %h) #6, !dbg !1613
  %18 = load ptr, ptr %lookahead5, align 16, !dbg !1614, !tbaa !1395
  %next10 = getelementptr inbounds %struct.x264_lookahead_t, ptr %18, i64 0, i32 7, !dbg !1615
  %19 = load ptr, ptr %next10, align 8, !dbg !1616, !tbaa !1617
  %20 = load ptr, ptr %19, align 8, !dbg !1618, !tbaa !1392
  call void @llvm.dbg.value(metadata ptr %h, metadata !1619, metadata !DIExpression()) #6, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %20, metadata !1622, metadata !DIExpression()) #6, !dbg !1623
  %last_nonb.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %18, i64 0, i32 5, !dbg !1625
  %21 = load ptr, ptr %last_nonb.i, align 8, !dbg !1625, !tbaa !1511
  %tobool.not.i52 = icmp eq ptr %21, null, !dbg !1627
  br i1 %tobool.not.i52, label %x264_lookahead_update_last_nonb.exit, label %if.then.i, !dbg !1628

if.then.i:                                        ; preds = %if.end
  tail call void @x264_frame_push_unused(ptr noundef nonnull %h, ptr noundef nonnull %21) #6, !dbg !1629
  %.pre.i53 = load ptr, ptr %lookahead5, align 16, !dbg !1630, !tbaa !1395
  %next15.phi.trans.insert = getelementptr inbounds %struct.x264_lookahead_t, ptr %.pre.i53, i64 0, i32 7
  %.pre = load ptr, ptr %next15.phi.trans.insert, align 8, !dbg !1631, !tbaa !1617
  br label %x264_lookahead_update_last_nonb.exit, !dbg !1629

x264_lookahead_update_last_nonb.exit:             ; preds = %if.end, %if.then.i
  %22 = phi ptr [ %.pre, %if.then.i ], [ %19, %if.end ], !dbg !1631
  %23 = phi ptr [ %.pre.i53, %if.then.i ], [ %18, %if.end ], !dbg !1632
  %last_nonb4.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 5, !dbg !1633
  store ptr %20, ptr %last_nonb4.i, align 8, !dbg !1634, !tbaa !1511
  %i_reference_count.i = getelementptr inbounds %struct.x264_frame, ptr %20, i64 0, i32 78, !dbg !1635
  %24 = load i32, ptr %i_reference_count.i, align 16, !dbg !1636, !tbaa !1637
  %inc.i = add nsw i32 %24, 1, !dbg !1636
  store i32 %inc.i, ptr %i_reference_count.i, align 16, !dbg !1636, !tbaa !1637
  %ofbuf13 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 8, !dbg !1638
  %next15 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 7, !dbg !1639
  %25 = load ptr, ptr %22, align 8, !dbg !1640, !tbaa !1392
  %i_bframes = getelementptr inbounds %struct.x264_frame, ptr %25, i64 0, i32 19, !dbg !1641
  %26 = load i8, ptr %i_bframes, align 2, !dbg !1641, !tbaa !1587
  %conv20 = zext i8 %26 to i32, !dbg !1640
  %add = add nuw nsw i32 %conv20, 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %ofbuf13, metadata !1643, metadata !DIExpression()) #6, !dbg !1651
  call void @llvm.dbg.value(metadata ptr %next15, metadata !1648, metadata !DIExpression()) #6, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %add, metadata !1649, metadata !DIExpression()) #6, !dbg !1651
  call void @llvm.dbg.value(metadata i32 %add, metadata !1650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1651
  %i_size.i55 = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 8, i32 2
  %i_size2.i = getelementptr inbounds %struct.x264_lookahead_t, ptr %23, i64 0, i32 7, i32 2
  br label %while.body.i60, !dbg !1653

while.body.i60:                                   ; preds = %while.body.i60, %x264_lookahead_update_last_nonb.exit
  %i.09.i = phi i32 [ %add, %x264_lookahead_update_last_nonb.exit ], [ %dec.i56, %while.body.i60 ]
  call void @llvm.dbg.value(metadata i32 %i.09.i, metadata !1650, metadata !DIExpression()) #6, !dbg !1651
  %dec.i56 = add nsw i32 %i.09.i, -1, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %dec.i56, metadata !1650, metadata !DIExpression()) #6, !dbg !1651
  %27 = load ptr, ptr %next15, align 8, !dbg !1655, !tbaa !1657
  %call.i57 = tail call ptr @x264_frame_shift(ptr noundef %27) #6, !dbg !1658
  %28 = load ptr, ptr %ofbuf13, align 8, !dbg !1659, !tbaa !1657
  %29 = load i32, ptr %i_size.i55, align 4, !dbg !1660, !tbaa !1661
  %inc.i58 = add nsw i32 %29, 1, !dbg !1660
  store i32 %inc.i58, ptr %i_size.i55, align 4, !dbg !1660, !tbaa !1661
  %idxprom.i = sext i32 %29 to i64, !dbg !1662
  %arrayidx.i = getelementptr inbounds ptr, ptr %28, i64 %idxprom.i, !dbg !1662
  store ptr %call.i57, ptr %arrayidx.i, align 8, !dbg !1663, !tbaa !1392
  %30 = load i32, ptr %i_size2.i, align 4, !dbg !1664, !tbaa !1661
  %dec3.i = add nsw i32 %30, -1, !dbg !1664
  store i32 %dec3.i, ptr %i_size2.i, align 4, !dbg !1664, !tbaa !1661
  call void @llvm.dbg.value(metadata i32 %dec.i56, metadata !1650, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1651
  %tobool.not.i59 = icmp eq i32 %dec.i56, 0, !dbg !1653
  br i1 %tobool.not.i59, label %x264_lookahead_shift.exit, label %while.body.i60, !dbg !1653, !llvm.loop !1665

x264_lookahead_shift.exit:                        ; preds = %while.body.i60
  %31 = load ptr, ptr %lookahead5, align 16, !dbg !1667, !tbaa !1395
  %b_analyse_keyframe = getelementptr inbounds %struct.x264_lookahead_t, ptr %31, i64 0, i32 2, !dbg !1669
  %32 = load i8, ptr %b_analyse_keyframe, align 2, !dbg !1669, !tbaa !1414
  %tobool23.not = icmp eq i8 %32, 0, !dbg !1670
  br i1 %tobool23.not, label %if.end33, label %land.lhs.true, !dbg !1671

land.lhs.true:                                    ; preds = %x264_lookahead_shift.exit
  %last_nonb = getelementptr inbounds %struct.x264_lookahead_t, ptr %31, i64 0, i32 5, !dbg !1672
  %33 = load ptr, ptr %last_nonb, align 8, !dbg !1672, !tbaa !1511
  %i_type = getelementptr inbounds %struct.x264_frame, ptr %33, i64 0, i32 1, !dbg !1672
  %34 = load i32, ptr %i_type, align 4, !dbg !1672, !tbaa !1673
  %.off = add i32 %34, -1, !dbg !1672
  %switch = icmp ult i32 %.off, 2, !dbg !1672
  br i1 %switch, label %if.then32, label %if.end33, !dbg !1672

if.then32:                                        ; preds = %land.lhs.true
  tail call void @x264_slicetype_analyse(ptr noundef nonnull %h, i32 noundef 1) #6, !dbg !1674
  %.pre97 = load ptr, ptr %lookahead5, align 16, !dbg !1675, !tbaa !1395
  br label %if.end33, !dbg !1674

if.end33:                                         ; preds = %land.lhs.true, %if.then32, %x264_lookahead_shift.exit
  %35 = phi ptr [ %31, %land.lhs.true ], [ %.pre97, %if.then32 ], [ %31, %x264_lookahead_shift.exit ], !dbg !1675
  call void @llvm.dbg.value(metadata ptr %h, metadata !1575, metadata !DIExpression()) #6, !dbg !1677
  %i_size.i62 = getelementptr inbounds %struct.x264_lookahead_t, ptr %35, i64 0, i32 8, i32 2, !dbg !1678
  %36 = load i32, ptr %i_size.i62, align 4, !dbg !1678, !tbaa !1559
  %tobool.not.i63 = icmp eq i32 %36, 0, !dbg !1679
  br i1 %tobool.not.i63, label %if.end34, label %if.end.i69, !dbg !1680

if.end.i69:                                       ; preds = %if.end33
  %ofbuf.i64 = getelementptr inbounds %struct.x264_lookahead_t, ptr %35, i64 0, i32 8, !dbg !1681
  %37 = load ptr, ptr %ofbuf.i64, align 8, !dbg !1682, !tbaa !1584
  %38 = load ptr, ptr %37, align 8, !dbg !1683, !tbaa !1392
  %i_bframes.i65 = getelementptr inbounds %struct.x264_frame, ptr %38, i64 0, i32 19, !dbg !1684
  %39 = load i8, ptr %i_bframes.i65, align 2, !dbg !1684, !tbaa !1587
  call void @llvm.dbg.value(metadata i8 %39, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1677
  call void @llvm.dbg.value(metadata i8 %39, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1677
  call void @llvm.dbg.value(metadata i8 %39, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1677
  %40 = load ptr, ptr %frames, align 16, !dbg !1685, !tbaa !1592
  %call.i7290 = tail call ptr @x264_frame_shift(ptr noundef nonnull %37) #6, !dbg !1686
  tail call void @x264_frame_push(ptr noundef %40, ptr noundef %call.i7290) #6, !dbg !1687
  %41 = load ptr, ptr %lookahead5, align 16, !dbg !1688, !tbaa !1395
  %i_size9.i7391 = getelementptr inbounds %struct.x264_lookahead_t, ptr %41, i64 0, i32 8, i32 2, !dbg !1689
  %42 = load i32, ptr %i_size9.i7391, align 4, !dbg !1690, !tbaa !1559
  %dec10.i7492 = add nsw i32 %42, -1, !dbg !1690
  store i32 %dec10.i7492, ptr %i_size9.i7391, align 4, !dbg !1690, !tbaa !1559
  call void @llvm.dbg.value(metadata i8 %39, metadata !1578, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1677
  %tobool3.not.i7593 = icmp eq i8 %39, 0, !dbg !1691
  br i1 %tobool3.not.i7593, label %if.end34, label %while.body.while.body_crit_edge.i79.preheader, !dbg !1691, !llvm.loop !1692

while.body.while.body_crit_edge.i79.preheader:    ; preds = %if.end.i69
  %conv.i66 = zext i8 %39 to i32, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %conv.i66, metadata !1578, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1677
  br label %while.body.while.body_crit_edge.i79, !dbg !1691

while.body.while.body_crit_edge.i79:              ; preds = %while.body.while.body_crit_edge.i79.preheader, %while.body.while.body_crit_edge.i79
  %43 = phi ptr [ %45, %while.body.while.body_crit_edge.i79 ], [ %41, %while.body.while.body_crit_edge.i79.preheader ]
  %dec.i7194 = phi i32 [ %dec.i71, %while.body.while.body_crit_edge.i79 ], [ %conv.i66, %while.body.while.body_crit_edge.i79.preheader ]
  %ofbuf5.phi.trans.insert.i77 = getelementptr inbounds %struct.x264_lookahead_t, ptr %43, i64 0, i32 8
  %.pre.i78 = load ptr, ptr %ofbuf5.phi.trans.insert.i77, align 8, !dbg !1694, !tbaa !1584
  call void @llvm.dbg.value(metadata i32 %dec.i7194, metadata !1578, metadata !DIExpression()) #6, !dbg !1677
  %dec.i71 = add nsw i32 %dec.i7194, -1, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %dec.i71, metadata !1578, metadata !DIExpression()) #6, !dbg !1677
  %44 = load ptr, ptr %frames, align 16, !dbg !1685, !tbaa !1592
  %call.i72 = tail call ptr @x264_frame_shift(ptr noundef %.pre.i78) #6, !dbg !1686
  tail call void @x264_frame_push(ptr noundef %44, ptr noundef %call.i72) #6, !dbg !1687
  %45 = load ptr, ptr %lookahead5, align 16, !dbg !1688, !tbaa !1395
  %i_size9.i73 = getelementptr inbounds %struct.x264_lookahead_t, ptr %45, i64 0, i32 8, i32 2, !dbg !1689
  %46 = load i32, ptr %i_size9.i73, align 4, !dbg !1690, !tbaa !1559
  %dec10.i74 = add nsw i32 %46, -1, !dbg !1690
  store i32 %dec10.i74, ptr %i_size9.i73, align 4, !dbg !1690, !tbaa !1559
  call void @llvm.dbg.value(metadata i32 %dec.i71, metadata !1578, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1677
  %tobool3.not.i75 = icmp eq i32 %dec.i71, 0, !dbg !1691
  br i1 %tobool3.not.i75, label %if.end34, label %while.body.while.body_crit_edge.i79, !dbg !1691, !llvm.loop !1692

if.end34:                                         ; preds = %while.body.while.body_crit_edge.i, %while.body.while.body_crit_edge.i79, %while.cond.preheader.split, %if.end.i, %if.end.i69, %if.end33, %if.else, %lor.lhs.false
  ret void, !dbg !1696
}

declare !dbg !1697 void @x264_slicetype_decide(ptr noundef) local_unnamed_addr #1

declare !dbg !1699 void @x264_slicetype_analyse(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !1700 void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1703 ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/encoder/lookahead.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "27b33612dfe1b8e274f9789e59678140")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "x264_lookahead_init", scope: !10, file: !10, line: 127, type: !11, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1330)
!10 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/lookahead.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27b33612dfe1b8e274f9789e59678140")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !16, line: 46, baseType: !17)
!16 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !18, line: 381, size: 266752, elements: !19)
!18 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!19 = !{!20, !199, !203, !204, !205, !206, !207, !208, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !344, !346, !374, !376, !377, !378, !384, !388, !389, !390, !397, !401, !402, !403, !408, !411, !412, !491, !508, !672, !673, !674, !675, !679, !680, !681, !682, !683, !684, !685, !700, !894, !898, !959, !962, !964, !966, !967, !970, !975, !984, !985, !993, !995, !1000, !1076, !1162, !1206, !1228, !1277, !1306}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !17, file: !18, line: 384, baseType: !21, size: 5632)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !16, line: 376, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !16, line: 176, size: 5632, elements: !23)
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !68, !77, !78, !79, !80, !84, !85, !100, !101, !102, !103, !104, !135, !177, !178, !179, !180, !181, !182, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !22, file: !16, line: 179, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !22, file: !16, line: 180, baseType: !13, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !22, file: !16, line: 181, baseType: !13, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !22, file: !16, line: 182, baseType: !13, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !22, file: !16, line: 183, baseType: !13, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !22, file: !16, line: 186, baseType: !13, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !22, file: !16, line: 187, baseType: !13, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !22, file: !16, line: 188, baseType: !13, size: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !22, file: !16, line: 189, baseType: !13, size: 32, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !22, file: !16, line: 190, baseType: !13, size: 32, offset: 288)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !22, file: !16, line: 198, baseType: !13, size: 32, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !22, file: !16, line: 215, baseType: !37, size: 288, offset: 352)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 200, size: 288, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !37, file: !16, line: 203, baseType: !13, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !37, file: !16, line: 204, baseType: !13, size: 32, offset: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !37, file: !16, line: 206, baseType: !13, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !37, file: !16, line: 209, baseType: !13, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !37, file: !16, line: 210, baseType: !13, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !37, file: !16, line: 211, baseType: !13, size: 32, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !37, file: !16, line: 212, baseType: !13, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !37, file: !16, line: 213, baseType: !13, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !37, file: !16, line: 214, baseType: !13, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !22, file: !16, line: 218, baseType: !13, size: 32, offset: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !22, file: !16, line: 219, baseType: !13, size: 32, offset: 672)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !22, file: !16, line: 220, baseType: !13, size: 32, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !22, file: !16, line: 221, baseType: !13, size: 32, offset: 736)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !22, file: !16, line: 222, baseType: !13, size: 32, offset: 768)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !22, file: !16, line: 224, baseType: !13, size: 32, offset: 800)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !22, file: !16, line: 225, baseType: !13, size: 32, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !22, file: !16, line: 226, baseType: !13, size: 32, offset: 864)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !22, file: !16, line: 227, baseType: !13, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !22, file: !16, line: 229, baseType: !13, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !22, file: !16, line: 230, baseType: !13, size: 32, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !22, file: !16, line: 231, baseType: !13, size: 32, offset: 992)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !22, file: !16, line: 233, baseType: !13, size: 32, offset: 1024)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !22, file: !16, line: 234, baseType: !13, size: 32, offset: 1056)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !22, file: !16, line: 236, baseType: !13, size: 32, offset: 1088)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !22, file: !16, line: 237, baseType: !13, size: 32, offset: 1120)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !22, file: !16, line: 239, baseType: !13, size: 32, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !22, file: !16, line: 240, baseType: !66, size: 64, offset: 1216)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !22, file: !16, line: 241, baseType: !69, size: 128, offset: 1280)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !75)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !71, line: 24, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !73, line: 38, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !{!76}
!76 = !DISubrange(count: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !22, file: !16, line: 242, baseType: !69, size: 128, offset: 1408)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !22, file: !16, line: 243, baseType: !69, size: 128, offset: 1536)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !22, file: !16, line: 244, baseType: !69, size: 128, offset: 1664)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !22, file: !16, line: 245, baseType: !81, size: 512, offset: 1792)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 512, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !22, file: !16, line: 246, baseType: !81, size: 512, offset: 2304)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !22, file: !16, line: 249, baseType: !86, size: 64, offset: 2816)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !89, !13, !90, !92}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !94)
!94 = !{!95, !97, !98, !99}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !93, file: !96, baseType: !25, size: 32)
!96 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/lookahead.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !93, file: !96, baseType: !25, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !93, file: !96, baseType: !89, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !93, file: !96, baseType: !89, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !22, file: !16, line: 250, baseType: !89, size: 64, offset: 2880)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !22, file: !16, line: 251, baseType: !13, size: 32, offset: 2944)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !22, file: !16, line: 252, baseType: !13, size: 32, offset: 2976)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !22, file: !16, line: 253, baseType: !66, size: 64, offset: 3008)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !22, file: !16, line: 287, baseType: !105, size: 800, offset: 3072)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 256, size: 800, elements: !106)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !127, !128, !129, !133, !134}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !105, file: !16, line: 258, baseType: !25, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !105, file: !16, line: 259, baseType: !25, size: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !105, file: !16, line: 261, baseType: !13, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !105, file: !16, line: 262, baseType: !13, size: 32, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !105, file: !16, line: 263, baseType: !13, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !105, file: !16, line: 264, baseType: !13, size: 32, offset: 160)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !105, file: !16, line: 265, baseType: !13, size: 32, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !105, file: !16, line: 267, baseType: !13, size: 32, offset: 224)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !105, file: !16, line: 268, baseType: !13, size: 32, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !105, file: !16, line: 269, baseType: !13, size: 32, offset: 288)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !105, file: !16, line: 270, baseType: !13, size: 32, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !105, file: !16, line: 271, baseType: !13, size: 32, offset: 352)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !105, file: !16, line: 272, baseType: !13, size: 32, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !105, file: !16, line: 273, baseType: !13, size: 32, offset: 416)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !105, file: !16, line: 274, baseType: !13, size: 32, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !105, file: !16, line: 275, baseType: !13, size: 32, offset: 480)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !105, file: !16, line: 276, baseType: !13, size: 32, offset: 512)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !105, file: !16, line: 277, baseType: !13, size: 32, offset: 544)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !105, file: !16, line: 278, baseType: !126, size: 32, offset: 576)
!126 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !105, file: !16, line: 279, baseType: !126, size: 32, offset: 608)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !105, file: !16, line: 280, baseType: !13, size: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !105, file: !16, line: 283, baseType: !130, size: 64, offset: 672)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 2)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !105, file: !16, line: 285, baseType: !13, size: 32, offset: 736)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !105, file: !16, line: 286, baseType: !13, size: 32, offset: 768)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !22, file: !16, line: 327, baseType: !136, size: 1152, offset: 3904)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !22, file: !16, line: 290, size: 1152, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !175, !176}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !136, file: !16, line: 292, baseType: !13, size: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !136, file: !16, line: 294, baseType: !13, size: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !136, file: !16, line: 295, baseType: !13, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !136, file: !16, line: 296, baseType: !13, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !136, file: !16, line: 297, baseType: !13, size: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !136, file: !16, line: 299, baseType: !13, size: 32, offset: 160)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !136, file: !16, line: 300, baseType: !126, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !136, file: !16, line: 301, baseType: !126, size: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !136, file: !16, line: 302, baseType: !126, size: 32, offset: 256)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !136, file: !16, line: 303, baseType: !13, size: 32, offset: 288)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !136, file: !16, line: 304, baseType: !13, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !136, file: !16, line: 305, baseType: !126, size: 32, offset: 352)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !136, file: !16, line: 306, baseType: !126, size: 32, offset: 384)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !136, file: !16, line: 307, baseType: !126, size: 32, offset: 416)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !136, file: !16, line: 309, baseType: !13, size: 32, offset: 448)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !136, file: !16, line: 310, baseType: !126, size: 32, offset: 480)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !136, file: !16, line: 311, baseType: !13, size: 32, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !136, file: !16, line: 312, baseType: !13, size: 32, offset: 544)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !136, file: !16, line: 315, baseType: !13, size: 32, offset: 576)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !136, file: !16, line: 316, baseType: !66, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !136, file: !16, line: 317, baseType: !13, size: 32, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !136, file: !16, line: 318, baseType: !66, size: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !136, file: !16, line: 321, baseType: !126, size: 32, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !136, file: !16, line: 322, baseType: !126, size: 32, offset: 864)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !136, file: !16, line: 323, baseType: !126, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !136, file: !16, line: 324, baseType: !164, size: 64, offset: 960)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !16, line: 174, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 167, size: 256, elements: !167)
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !166, file: !16, line: 169, baseType: !13, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !166, file: !16, line: 169, baseType: !13, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !166, file: !16, line: 170, baseType: !13, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !166, file: !16, line: 171, baseType: !13, size: 32, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !166, file: !16, line: 172, baseType: !126, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !166, file: !16, line: 173, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !136, file: !16, line: 325, baseType: !13, size: 32, offset: 1024)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !136, file: !16, line: 326, baseType: !66, size: 64, offset: 1088)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !22, file: !16, line: 330, baseType: !13, size: 32, offset: 5056)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !22, file: !16, line: 331, baseType: !13, size: 32, offset: 5088)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !22, file: !16, line: 332, baseType: !13, size: 32, offset: 5120)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !22, file: !16, line: 334, baseType: !13, size: 32, offset: 5152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !22, file: !16, line: 335, baseType: !13, size: 32, offset: 5184)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !22, file: !16, line: 336, baseType: !183, size: 32, offset: 5216)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 26, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 42, baseType: !25)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !22, file: !16, line: 337, baseType: !183, size: 32, offset: 5248)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !22, file: !16, line: 338, baseType: !183, size: 32, offset: 5280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !22, file: !16, line: 339, baseType: !183, size: 32, offset: 5312)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !22, file: !16, line: 340, baseType: !13, size: 32, offset: 5344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !22, file: !16, line: 344, baseType: !13, size: 32, offset: 5376)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !22, file: !16, line: 356, baseType: !13, size: 32, offset: 5408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !22, file: !16, line: 364, baseType: !13, size: 32, offset: 5440)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !22, file: !16, line: 367, baseType: !13, size: 32, offset: 5472)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !22, file: !16, line: 368, baseType: !13, size: 32, offset: 5504)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !22, file: !16, line: 369, baseType: !13, size: 32, offset: 5536)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !22, file: !16, line: 375, baseType: !196, size: 64, offset: 5568)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !89}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !17, file: !18, line: 386, baseType: !200, size: 8256, offset: 5632)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8256, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 129)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !17, file: !18, line: 387, baseType: !13, size: 32, offset: 13888)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !17, file: !18, line: 388, baseType: !13, size: 32, offset: 13920)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !17, file: !18, line: 389, baseType: !13, size: 32, offset: 13952)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !17, file: !18, line: 390, baseType: !13, size: 32, offset: 13984)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !17, file: !18, line: 391, baseType: !13, size: 32, offset: 14016)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !17, file: !18, line: 402, baseType: !209, size: 576, offset: 14080)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 394, size: 576, elements: !210)
!210 = !{!211, !212, !213, !223, !224, !225}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !209, file: !18, line: 396, baseType: !13, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !209, file: !18, line: 397, baseType: !13, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !209, file: !18, line: 398, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !16, line: 604, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 593, size: 192, elements: !217)
!217 = !{!218, !219, !220, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !216, file: !16, line: 595, baseType: !13, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !216, file: !16, line: 596, baseType: !13, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !216, file: !16, line: 599, baseType: !13, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !216, file: !16, line: 603, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !209, file: !18, line: 399, baseType: !13, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !209, file: !18, line: 400, baseType: !222, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !209, file: !18, line: 401, baseType: !226, size: 320, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !227, line: 56, baseType: !228)
!227 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !227, line: 47, size: 320, elements: !229)
!229 = !{!230, !231, !232, !233, !237, !238}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !228, file: !227, line: 49, baseType: !222, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !228, file: !227, line: 50, baseType: !222, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !228, file: !227, line: 51, baseType: !222, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !228, file: !227, line: 53, baseType: !234, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !235, line: 87, baseType: !236)
!235 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!236 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !228, file: !227, line: 54, baseType: !13, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !228, file: !227, line: 55, baseType: !13, size: 32, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !17, file: !18, line: 404, baseType: !222, size: 64, offset: 14656)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !17, file: !18, line: 405, baseType: !13, size: 32, offset: 14720)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !17, file: !18, line: 410, baseType: !13, size: 32, offset: 14752)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !17, file: !18, line: 411, baseType: !13, size: 32, offset: 14784)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !17, file: !18, line: 413, baseType: !13, size: 32, offset: 14816)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !17, file: !18, line: 415, baseType: !13, size: 32, offset: 14848)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !17, file: !18, line: 416, baseType: !13, size: 32, offset: 14880)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !17, file: !18, line: 418, baseType: !13, size: 32, offset: 14912)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !17, file: !18, line: 419, baseType: !13, size: 32, offset: 14944)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !17, file: !18, line: 420, baseType: !13, size: 32, offset: 14976)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !17, file: !18, line: 421, baseType: !13, size: 32, offset: 15008)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !17, file: !18, line: 422, baseType: !13, size: 32, offset: 15040)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !17, file: !18, line: 424, baseType: !13, size: 32, offset: 15072)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !17, file: !18, line: 425, baseType: !13, size: 32, offset: 15104)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !17, file: !18, line: 427, baseType: !13, size: 32, offset: 15136)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !17, file: !18, line: 430, baseType: !255, size: 10400, offset: 15168)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 10400, elements: !342)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !257, line: 154, baseType: !258)
!257 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 52, size: 10400, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !277, !278, !279, !280, !281, !282, !283, !284, !285, !292, !293, !341}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !258, file: !257, line: 54, baseType: !13, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !258, file: !257, line: 56, baseType: !13, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !258, file: !257, line: 57, baseType: !13, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !258, file: !257, line: 59, baseType: !13, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !258, file: !257, line: 60, baseType: !13, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !258, file: !257, line: 61, baseType: !13, size: 32, offset: 160)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !258, file: !257, line: 63, baseType: !13, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !258, file: !257, line: 65, baseType: !13, size: 32, offset: 224)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !258, file: !257, line: 67, baseType: !13, size: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !258, file: !257, line: 69, baseType: !13, size: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !258, file: !257, line: 70, baseType: !13, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !258, file: !257, line: 71, baseType: !13, size: 32, offset: 352)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !258, file: !257, line: 72, baseType: !13, size: 32, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !258, file: !257, line: 73, baseType: !274, size: 8192, offset: 416)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8192, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !258, file: !257, line: 75, baseType: !13, size: 32, offset: 8608)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !258, file: !257, line: 76, baseType: !13, size: 32, offset: 8640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !258, file: !257, line: 77, baseType: !13, size: 32, offset: 8672)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !258, file: !257, line: 78, baseType: !13, size: 32, offset: 8704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !258, file: !257, line: 79, baseType: !13, size: 32, offset: 8736)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !258, file: !257, line: 80, baseType: !13, size: 32, offset: 8768)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !258, file: !257, line: 81, baseType: !13, size: 32, offset: 8800)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !258, file: !257, line: 83, baseType: !13, size: 32, offset: 8832)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !258, file: !257, line: 90, baseType: !286, size: 128, offset: 8864)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !257, line: 84, size: 128, elements: !287)
!287 = !{!288, !289, !290, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !286, file: !257, line: 86, baseType: !13, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !286, file: !257, line: 87, baseType: !13, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !286, file: !257, line: 88, baseType: !13, size: 32, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !286, file: !257, line: 89, baseType: !13, size: 32, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !258, file: !257, line: 92, baseType: !13, size: 32, offset: 8992)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !258, file: !257, line: 150, baseType: !294, size: 1344, offset: 9024)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !257, line: 93, size: 1344, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !332, !333, !334, !335, !336, !337, !338, !339, !340}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !294, file: !257, line: 95, baseType: !13, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !294, file: !257, line: 96, baseType: !13, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !294, file: !257, line: 97, baseType: !13, size: 32, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !294, file: !257, line: 99, baseType: !13, size: 32, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !294, file: !257, line: 100, baseType: !13, size: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !294, file: !257, line: 102, baseType: !13, size: 32, offset: 160)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !294, file: !257, line: 103, baseType: !13, size: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !294, file: !257, line: 104, baseType: !13, size: 32, offset: 224)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !294, file: !257, line: 105, baseType: !13, size: 32, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !294, file: !257, line: 106, baseType: !13, size: 32, offset: 288)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !294, file: !257, line: 107, baseType: !13, size: 32, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !294, file: !257, line: 108, baseType: !13, size: 32, offset: 352)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !294, file: !257, line: 110, baseType: !13, size: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !294, file: !257, line: 111, baseType: !13, size: 32, offset: 416)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !294, file: !257, line: 112, baseType: !13, size: 32, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !294, file: !257, line: 114, baseType: !13, size: 32, offset: 480)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !294, file: !257, line: 115, baseType: !183, size: 32, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !294, file: !257, line: 116, baseType: !183, size: 32, offset: 544)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !294, file: !257, line: 117, baseType: !13, size: 32, offset: 576)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !294, file: !257, line: 119, baseType: !13, size: 32, offset: 608)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !294, file: !257, line: 120, baseType: !13, size: 32, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !294, file: !257, line: 137, baseType: !318, size: 384, offset: 672)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !257, line: 122, size: 384, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !318, file: !257, line: 124, baseType: !13, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !318, file: !257, line: 125, baseType: !13, size: 32, offset: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !318, file: !257, line: 126, baseType: !13, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !318, file: !257, line: 127, baseType: !13, size: 32, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !318, file: !257, line: 128, baseType: !13, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !318, file: !257, line: 129, baseType: !13, size: 32, offset: 160)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !318, file: !257, line: 130, baseType: !13, size: 32, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !318, file: !257, line: 131, baseType: !13, size: 32, offset: 224)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !318, file: !257, line: 133, baseType: !13, size: 32, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !318, file: !257, line: 134, baseType: !13, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !318, file: !257, line: 135, baseType: !13, size: 32, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !318, file: !257, line: 136, baseType: !13, size: 32, offset: 352)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !294, file: !257, line: 139, baseType: !13, size: 32, offset: 1056)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !294, file: !257, line: 140, baseType: !13, size: 32, offset: 1088)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !294, file: !257, line: 141, baseType: !13, size: 32, offset: 1120)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !294, file: !257, line: 142, baseType: !13, size: 32, offset: 1152)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !294, file: !257, line: 143, baseType: !13, size: 32, offset: 1184)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !294, file: !257, line: 144, baseType: !13, size: 32, offset: 1216)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !294, file: !257, line: 145, baseType: !13, size: 32, offset: 1248)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !294, file: !257, line: 146, baseType: !13, size: 32, offset: 1280)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !294, file: !257, line: 147, baseType: !13, size: 32, offset: 1312)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !258, file: !257, line: 152, baseType: !13, size: 32, offset: 10368)
!342 = !{!343}
!343 = !DISubrange(count: 1)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !17, file: !18, line: 431, baseType: !345, size: 64, offset: 25600)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !17, file: !18, line: 432, baseType: !347, size: 960, offset: 25664)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 960, elements: !342)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !257, line: 186, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 156, size: 960, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !349, file: !257, line: 158, baseType: !13, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !349, file: !257, line: 159, baseType: !13, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !349, file: !257, line: 161, baseType: !13, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !349, file: !257, line: 163, baseType: !13, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !349, file: !257, line: 164, baseType: !13, size: 32, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !349, file: !257, line: 166, baseType: !13, size: 32, offset: 160)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !349, file: !257, line: 167, baseType: !13, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !349, file: !257, line: 169, baseType: !13, size: 32, offset: 224)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !349, file: !257, line: 170, baseType: !13, size: 32, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !349, file: !257, line: 172, baseType: !13, size: 32, offset: 288)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !349, file: !257, line: 173, baseType: !13, size: 32, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !349, file: !257, line: 175, baseType: !13, size: 32, offset: 352)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !349, file: !257, line: 177, baseType: !13, size: 32, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !349, file: !257, line: 178, baseType: !13, size: 32, offset: 416)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !349, file: !257, line: 179, baseType: !13, size: 32, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !349, file: !257, line: 181, baseType: !13, size: 32, offset: 480)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !349, file: !257, line: 183, baseType: !13, size: 32, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !349, file: !257, line: 184, baseType: !369, size: 384, offset: 576)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !372)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!372 = !{!373}
!373 = !DISubrange(count: 6)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !17, file: !18, line: 433, baseType: !375, size: 64, offset: 26624)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !17, file: !18, line: 434, baseType: !13, size: 32, offset: 26688)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !17, file: !18, line: 437, baseType: !13, size: 32, offset: 26720)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !17, file: !18, line: 440, baseType: !379, size: 256, offset: 26752)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 256, elements: !382)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 512, elements: !75)
!382 = !{!383}
!383 = !DISubrange(count: 4)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !17, file: !18, line: 441, baseType: !385, size: 128, offset: 27008)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !131)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !82)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !17, file: !18, line: 443, baseType: !379, size: 256, offset: 27136)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !17, file: !18, line: 444, baseType: !385, size: 128, offset: 27392)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !17, file: !18, line: 446, baseType: !391, size: 256, offset: 27520)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 256, elements: !382)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 256, elements: !75)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !71, line: 25, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !73, line: 40, baseType: !396)
!396 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !17, file: !18, line: 447, baseType: !398, size: 128, offset: 27776)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !131)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 1024, elements: !82)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !17, file: !18, line: 448, baseType: !391, size: 256, offset: 27904)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !17, file: !18, line: 449, baseType: !398, size: 128, offset: 28160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !17, file: !18, line: 454, baseType: !404, size: 5888, offset: 28288)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 5888, elements: !406)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!406 = !{!407}
!407 = !DISubrange(count: 92)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !17, file: !18, line: 455, baseType: !409, size: 23552, offset: 34176)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 23552, elements: !410)
!410 = !{!407, !383}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !17, file: !18, line: 457, baseType: !370, size: 64, offset: 57728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !17, file: !18, line: 460, baseType: !413, size: 53376, offset: 57856)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !18, line: 364, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 302, size: 53376, elements: !415)
!415 = !{!416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !444, !475, !476, !477, !483, !484, !485, !486, !487, !488, !489, !490}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !414, file: !18, line: 304, baseType: !345, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !414, file: !18, line: 305, baseType: !375, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !414, file: !18, line: 307, baseType: !13, size: 32, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !414, file: !18, line: 308, baseType: !13, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !414, file: !18, line: 309, baseType: !13, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !414, file: !18, line: 311, baseType: !13, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !414, file: !18, line: 313, baseType: !13, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !414, file: !18, line: 315, baseType: !13, size: 32, offset: 288)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !414, file: !18, line: 316, baseType: !13, size: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !414, file: !18, line: 317, baseType: !13, size: 32, offset: 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !414, file: !18, line: 319, baseType: !13, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !414, file: !18, line: 321, baseType: !13, size: 32, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !414, file: !18, line: 322, baseType: !13, size: 32, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !414, file: !18, line: 324, baseType: !130, size: 64, offset: 480)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !414, file: !18, line: 325, baseType: !13, size: 32, offset: 544)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !414, file: !18, line: 327, baseType: !13, size: 32, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !414, file: !18, line: 329, baseType: !13, size: 32, offset: 608)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !414, file: !18, line: 330, baseType: !13, size: 32, offset: 640)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !414, file: !18, line: 331, baseType: !13, size: 32, offset: 672)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !414, file: !18, line: 333, baseType: !13, size: 32, offset: 704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !414, file: !18, line: 334, baseType: !13, size: 32, offset: 736)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !414, file: !18, line: 339, baseType: !438, size: 2048, offset: 768)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !443)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !18, line: 335, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !439, file: !18, line: 337, baseType: !13, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !439, file: !18, line: 338, baseType: !13, size: 32, offset: 32)
!443 = !{!132, !76}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !414, file: !18, line: 342, baseType: !445, size: 49152, align: 128, offset: 2816)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 49152, align: 128, elements: !472)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !447, line: 36, baseType: !448, align: 128)
!447 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !447, line: 26, size: 512, elements: !449)
!449 = !{!450, !458, !459, !462, !463, !464}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !448, file: !447, line: 30, baseType: !451, size: 128, align: 128)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !456)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !453, line: 25, baseType: !454)
!453 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !73, line: 39, baseType: !455)
!455 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!456 = !{!457}
!457 = !DISubrange(count: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !448, file: !447, line: 31, baseType: !451, size: 128, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !448, file: !447, line: 32, baseType: !460, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !453, line: 26, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !73, line: 41, baseType: !13)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !448, file: !447, line: 33, baseType: !460, size: 32, offset: 288)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !448, file: !447, line: 34, baseType: !460, size: 32, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !448, file: !447, line: 35, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !447, line: 25, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !222, !13, !222, !13, !470, !13}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!472 = !{!473, !474}
!473 = !DISubrange(count: 32)
!474 = !DISubrange(count: 3)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !414, file: !18, line: 344, baseType: !13, size: 32, offset: 51968)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !414, file: !18, line: 345, baseType: !13, size: 32, offset: 52000)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !414, file: !18, line: 350, baseType: !478, size: 1024, offset: 52032)
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !479, size: 1024, elements: !75)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !18, line: 346, size: 64, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !479, file: !18, line: 348, baseType: !13, size: 32)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !479, file: !18, line: 349, baseType: !13, size: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !414, file: !18, line: 352, baseType: !13, size: 32, offset: 53056)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !414, file: !18, line: 354, baseType: !13, size: 32, offset: 53088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !414, file: !18, line: 355, baseType: !13, size: 32, offset: 53120)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !414, file: !18, line: 356, baseType: !13, size: 32, offset: 53152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !414, file: !18, line: 357, baseType: !13, size: 32, offset: 53184)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !414, file: !18, line: 360, baseType: !13, size: 32, offset: 53216)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !414, file: !18, line: 361, baseType: !13, size: 32, offset: 53248)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !414, file: !18, line: 362, baseType: !13, size: 32, offset: 53280)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !17, file: !18, line: 463, baseType: !492, size: 4096, offset: 111232)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !493, line: 46, baseType: !494)
!493 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 27, size: 4096, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502, !503, !504}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !494, file: !493, line: 30, baseType: !13, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !494, file: !493, line: 31, baseType: !13, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !494, file: !493, line: 34, baseType: !13, size: 32, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !494, file: !493, line: 35, baseType: !13, size: 32, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !494, file: !493, line: 37, baseType: !222, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !494, file: !493, line: 38, baseType: !222, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !494, file: !493, line: 39, baseType: !222, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !494, file: !493, line: 42, baseType: !13, size: 32, align: 128, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !494, file: !493, line: 45, baseType: !505, size: 3680, offset: 416)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3680, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 460)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !17, file: !18, line: 494, baseType: !509, size: 2112, offset: 115328)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 465, size: 2112, elements: !510)
!510 = !{!511, !652, !654, !655, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !668, !669, !670, !671}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !509, file: !18, line: 468, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !515, line: 146, baseType: !516)
!515 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !515, line: 31, size: 125056, elements: !517)
!517 = !{!518, !519, !520, !521, !524, !525, !526, !527, !528, !529, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !548, !549, !550, !551, !552, !553, !555, !557, !558, !559, !560, !561, !564, !566, !567, !569, !574, !575, !579, !580, !584, !588, !591, !593, !594, !596, !597, !599, !600, !601, !604, !606, !607, !608, !610, !611, !612, !613, !614, !615, !616, !617, !619, !620, !624, !633, !637, !639, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !516, file: !515, line: 34, baseType: !13, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !516, file: !515, line: 35, baseType: !13, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !516, file: !515, line: 36, baseType: !13, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !516, file: !515, line: 37, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !453, line: 27, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !73, line: 44, baseType: !236)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !516, file: !515, line: 38, baseType: !522, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !516, file: !515, line: 39, baseType: !13, size: 32, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !516, file: !515, line: 40, baseType: !13, size: 32, offset: 288)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !516, file: !515, line: 41, baseType: !13, size: 32, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !516, file: !515, line: 42, baseType: !13, size: 32, offset: 352)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !516, file: !515, line: 43, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !516, file: !515, line: 45, baseType: !13, size: 32, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !516, file: !515, line: 46, baseType: !13, size: 32, offset: 480)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !516, file: !515, line: 47, baseType: !13, size: 32, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !516, file: !515, line: 48, baseType: !13, size: 32, offset: 544)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !516, file: !515, line: 49, baseType: !13, size: 32, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !516, file: !515, line: 50, baseType: !13, size: 32, offset: 608)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !516, file: !515, line: 51, baseType: !13, size: 32, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !516, file: !515, line: 52, baseType: !70, size: 8, offset: 672)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !516, file: !515, line: 53, baseType: !70, size: 8, offset: 680)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !516, file: !515, line: 54, baseType: !70, size: 8, offset: 688)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !516, file: !515, line: 55, baseType: !126, size: 32, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !516, file: !515, line: 56, baseType: !126, size: 32, offset: 736)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !516, file: !515, line: 57, baseType: !13, size: 32, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !516, file: !515, line: 60, baseType: !13, size: 32, offset: 800)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !516, file: !515, line: 61, baseType: !546, size: 96, offset: 832)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !547)
!547 = !{!474}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !516, file: !515, line: 62, baseType: !546, size: 96, offset: 928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !516, file: !515, line: 63, baseType: !546, size: 96, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !516, file: !515, line: 64, baseType: !13, size: 32, offset: 1120)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !516, file: !515, line: 65, baseType: !13, size: 32, offset: 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !516, file: !515, line: 66, baseType: !13, size: 32, offset: 1184)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !516, file: !515, line: 67, baseType: !554, size: 192, offset: 1216)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 192, elements: !547)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !516, file: !515, line: 68, baseType: !556, size: 256, offset: 1408)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 256, elements: !382)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !516, file: !515, line: 69, baseType: !556, size: 256, offset: 1664)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !516, file: !515, line: 70, baseType: !405, size: 64, offset: 1920)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !516, file: !515, line: 74, baseType: !556, size: 256, offset: 1984)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !516, file: !515, line: 75, baseType: !556, size: 256, offset: 2240)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !516, file: !515, line: 77, baseType: !562, size: 24576, align: 128, offset: 2560)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 24576, align: 128, elements: !563)
!563 = !{!76, !474}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !516, file: !515, line: 78, baseType: !565, size: 1024, offset: 27136)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1024, elements: !75)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !516, file: !515, line: 79, baseType: !13, size: 32, offset: 28160)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !516, file: !515, line: 80, baseType: !568, size: 64, offset: 28224)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !516, file: !515, line: 83, baseType: !570, size: 64, offset: 28288)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !453, line: 24, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !73, line: 37, baseType: !573)
!573 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !516, file: !515, line: 84, baseType: !222, size: 64, offset: 28352)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !516, file: !515, line: 85, baseType: !576, size: 128, offset: 28416)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 128, elements: !131)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 32, elements: !131)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !516, file: !515, line: 86, baseType: !577, size: 64, offset: 28544)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !516, file: !515, line: 87, baseType: !581, size: 2176, offset: 28608)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 2176, elements: !582)
!582 = !{!132, !583}
!583 = !DISubrange(count: 17)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !516, file: !515, line: 92, baseType: !585, size: 20736, offset: 30784)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 20736, elements: !586)
!586 = !{!587, !587}
!587 = !DISubrange(count: 18)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !516, file: !515, line: 96, baseType: !589, size: 2176, offset: 51520)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 2176, elements: !582)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !516, file: !515, line: 97, baseType: !592, size: 128, offset: 53696)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !570, size: 128, elements: !131)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !516, file: !515, line: 98, baseType: !130, size: 64, offset: 53824)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !516, file: !515, line: 99, baseType: !595, size: 1024, offset: 53888)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1024, elements: !443)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !516, file: !515, line: 100, baseType: !578, size: 32, offset: 54912)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !516, file: !515, line: 105, baseType: !598, size: 10368, offset: 54944)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 10368, elements: !586)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !516, file: !515, line: 106, baseType: !598, size: 10368, offset: 65312)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !516, file: !515, line: 107, baseType: !13, size: 32, offset: 75680)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !516, file: !515, line: 108, baseType: !602, size: 576, offset: 75712)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 576, elements: !603)
!603 = !{!587}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !516, file: !515, line: 109, baseType: !605, size: 20736, offset: 76288)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 20736, elements: !586)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !516, file: !515, line: 110, baseType: !590, size: 64, offset: 97024)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !516, file: !515, line: 111, baseType: !590, size: 64, offset: 97088)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !516, file: !515, line: 112, baseType: !609, size: 64, offset: 97152)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !516, file: !515, line: 113, baseType: !609, size: 64, offset: 97216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !516, file: !515, line: 114, baseType: !609, size: 64, offset: 97280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !516, file: !515, line: 115, baseType: !13, size: 32, offset: 97344)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !516, file: !515, line: 116, baseType: !405, size: 64, offset: 97408)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !516, file: !515, line: 117, baseType: !405, size: 64, offset: 97472)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !516, file: !515, line: 118, baseType: !405, size: 64, offset: 97536)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !516, file: !515, line: 119, baseType: !13, size: 32, offset: 97600)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !516, file: !515, line: 120, baseType: !618, size: 576, offset: 97632)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 576, elements: !603)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !516, file: !515, line: 121, baseType: !183, size: 32, offset: 98208)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !516, file: !515, line: 122, baseType: !621, size: 64, offset: 98240)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 27, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 45, baseType: !623)
!623 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !516, file: !515, line: 125, baseType: !625, size: 256, offset: 98304)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !16, line: 503, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 496, size: 256, elements: !627)
!627 = !{!628, !630, !631, !632}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !626, file: !16, line: 498, baseType: !629, size: 64)
!629 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !626, file: !16, line: 499, baseType: !629, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !626, file: !16, line: 500, baseType: !629, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !626, file: !16, line: 502, baseType: !629, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !516, file: !515, line: 128, baseType: !634, size: 2008, offset: 98560)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2008, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 251)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !516, file: !515, line: 129, baseType: !638, size: 8032, offset: 100576)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8032, elements: !635)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !516, file: !515, line: 130, baseType: !640, size: 16064, offset: 108608)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 16064, elements: !635)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !516, file: !515, line: 131, baseType: !13, size: 32, offset: 124672)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !516, file: !515, line: 132, baseType: !13, size: 32, offset: 124704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !516, file: !515, line: 135, baseType: !13, size: 32, offset: 124736)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !516, file: !515, line: 136, baseType: !13, size: 32, offset: 124768)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !516, file: !515, line: 137, baseType: !13, size: 32, offset: 124800)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !516, file: !515, line: 138, baseType: !13, size: 32, offset: 124832)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !516, file: !515, line: 139, baseType: !13, size: 32, offset: 124864)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !516, file: !515, line: 142, baseType: !126, size: 32, offset: 124896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !516, file: !515, line: 143, baseType: !13, size: 32, offset: 124928)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !516, file: !515, line: 144, baseType: !13, size: 32, offset: 124960)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !516, file: !515, line: 145, baseType: !13, size: 32, offset: 124992)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !509, file: !18, line: 470, baseType: !653, size: 128, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 128, elements: !131)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !509, file: !18, line: 473, baseType: !512, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !509, file: !18, line: 476, baseType: !656, size: 1152, offset: 256)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1152, elements: !603)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !509, file: !18, line: 478, baseType: !13, size: 32, offset: 1408)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !509, file: !18, line: 480, baseType: !13, size: 32, offset: 1440)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !509, file: !18, line: 482, baseType: !13, size: 32, offset: 1472)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !509, file: !18, line: 483, baseType: !13, size: 32, offset: 1504)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !509, file: !18, line: 484, baseType: !13, size: 32, offset: 1536)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !509, file: !18, line: 485, baseType: !13, size: 32, offset: 1568)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !509, file: !18, line: 486, baseType: !13, size: 32, offset: 1600)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !509, file: !18, line: 487, baseType: !522, size: 64, offset: 1664)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !509, file: !18, line: 488, baseType: !522, size: 64, offset: 1728)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !509, file: !18, line: 489, baseType: !667, size: 128, offset: 1792)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 128, elements: !131)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !509, file: !18, line: 490, baseType: !522, size: 64, offset: 1920)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !509, file: !18, line: 491, baseType: !522, size: 64, offset: 1984)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !509, file: !18, line: 492, baseType: !13, size: 32, offset: 2048)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !509, file: !18, line: 493, baseType: !13, size: 32, offset: 2080)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !17, file: !18, line: 497, baseType: !513, size: 64, offset: 117440)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !17, file: !18, line: 500, baseType: !513, size: 64, offset: 117504)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !17, file: !18, line: 503, baseType: !13, size: 32, offset: 117568)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !17, file: !18, line: 504, baseType: !676, size: 1216, offset: 117632)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 1216, elements: !677)
!677 = !{!678}
!678 = !DISubrange(count: 19)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !17, file: !18, line: 505, baseType: !13, size: 32, offset: 118848)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !17, file: !18, line: 506, baseType: !676, size: 1216, offset: 118912)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !17, file: !18, line: 507, baseType: !130, size: 64, offset: 120128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !17, file: !18, line: 510, baseType: !13, size: 32, offset: 120192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !17, file: !18, line: 511, baseType: !13, size: 32, offset: 120224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !17, file: !18, line: 512, baseType: !522, size: 64, offset: 120256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !17, file: !18, line: 522, baseType: !686, size: 10624, offset: 120320)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 515, size: 10624, elements: !687)
!687 = !{!688, !690, !693, !696}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !686, file: !18, line: 517, baseType: !689, size: 256, align: 128)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !75)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !686, file: !18, line: 518, baseType: !691, size: 128, align: 128, offset: 256)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 128, elements: !692)
!692 = !{!132, !383}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !686, file: !18, line: 520, baseType: !694, size: 4096, align: 128, offset: 384)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 4096, elements: !695)
!695 = !{!383, !83}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !686, file: !18, line: 521, baseType: !697, size: 6144, align: 128, offset: 4480)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 6144, elements: !698)
!698 = !{!699, !76}
!699 = !DISubrange(count: 24)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !17, file: !18, line: 732, baseType: !701, size: 82688, offset: 130944)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 525, size: 82688, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !730, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !748, !751, !755, !756, !757, !762, !763, !766, !767, !768, !769, !770, !771, !772, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !832, !863, !864, !865, !866, !867, !868, !869, !870, !871, !874, !875, !876, !879, !882, !884, !887, !889, !890}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !701, file: !18, line: 527, baseType: !13, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !701, file: !18, line: 530, baseType: !13, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !701, file: !18, line: 531, baseType: !13, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !701, file: !18, line: 532, baseType: !13, size: 32, offset: 96)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !701, file: !18, line: 535, baseType: !13, size: 32, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !701, file: !18, line: 536, baseType: !13, size: 32, offset: 160)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !701, file: !18, line: 537, baseType: !13, size: 32, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !701, file: !18, line: 538, baseType: !13, size: 32, offset: 224)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !701, file: !18, line: 539, baseType: !13, size: 32, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !701, file: !18, line: 542, baseType: !13, size: 32, offset: 288)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !701, file: !18, line: 543, baseType: !13, size: 32, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !701, file: !18, line: 544, baseType: !13, size: 32, offset: 352)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !701, file: !18, line: 545, baseType: !13, size: 32, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !701, file: !18, line: 546, baseType: !13, size: 32, offset: 416)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !701, file: !18, line: 547, baseType: !13, size: 32, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !701, file: !18, line: 548, baseType: !13, size: 32, offset: 480)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !701, file: !18, line: 549, baseType: !13, size: 32, offset: 512)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !701, file: !18, line: 551, baseType: !13, size: 32, offset: 544)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !701, file: !18, line: 554, baseType: !130, size: 64, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !701, file: !18, line: 555, baseType: !130, size: 64, offset: 640)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !701, file: !18, line: 558, baseType: !130, size: 64, offset: 704)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !701, file: !18, line: 559, baseType: !130, size: 64, offset: 768)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !701, file: !18, line: 561, baseType: !130, size: 64, offset: 832)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !701, file: !18, line: 562, baseType: !130, size: 64, offset: 896)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !701, file: !18, line: 565, baseType: !25, size: 32, offset: 960)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !701, file: !18, line: 566, baseType: !729, size: 128, offset: 992)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 128, elements: !382)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !701, file: !18, line: 567, baseType: !731, size: 512, offset: 1120)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 512, elements: !75)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !701, file: !18, line: 568, baseType: !25, size: 32, offset: 1632)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !701, file: !18, line: 569, baseType: !25, size: 32, offset: 1664)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !701, file: !18, line: 570, baseType: !13, size: 32, offset: 1696)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !701, file: !18, line: 571, baseType: !13, size: 32, offset: 1728)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !701, file: !18, line: 572, baseType: !13, size: 32, offset: 1760)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !701, file: !18, line: 573, baseType: !13, size: 32, offset: 1792)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !701, file: !18, line: 574, baseType: !13, size: 32, offset: 1824)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !701, file: !18, line: 575, baseType: !13, size: 32, offset: 1856)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !701, file: !18, line: 576, baseType: !13, size: 32, offset: 1888)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !701, file: !18, line: 577, baseType: !13, size: 32, offset: 1920)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !701, file: !18, line: 578, baseType: !13, size: 32, offset: 1952)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !18, line: 585, baseType: !570, size: 64, offset: 1984)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !701, file: !18, line: 586, baseType: !222, size: 64, offset: 2048)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !701, file: !18, line: 587, baseType: !570, size: 64, offset: 2112)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !701, file: !18, line: 588, baseType: !747, size: 64, offset: 2176)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !701, file: !18, line: 589, baseType: !749, size: 64, offset: 2240)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !456)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !701, file: !18, line: 591, baseType: !752, size: 64, offset: 2304)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !754)
!754 = !{!699}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !701, file: !18, line: 592, baseType: !570, size: 64, offset: 2368)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !701, file: !18, line: 593, baseType: !576, size: 128, offset: 2432)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !701, file: !18, line: 594, baseType: !758, size: 128, offset: 2560)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 128, elements: !131)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !761)
!761 = !{!457, !132}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !701, file: !18, line: 595, baseType: !592, size: 128, offset: 2688)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !701, file: !18, line: 596, baseType: !764, size: 4096, offset: 2816)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !577, size: 4096, elements: !765)
!765 = !{!132, !473}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !701, file: !18, line: 597, baseType: !570, size: 64, offset: 6912)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !701, file: !18, line: 598, baseType: !570, size: 64, offset: 6976)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !701, file: !18, line: 599, baseType: !405, size: 64, offset: 7040)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !701, file: !18, line: 603, baseType: !565, size: 1024, offset: 7104)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !701, file: !18, line: 606, baseType: !13, size: 32, offset: 8128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !701, file: !18, line: 607, baseType: !13, size: 32, offset: 8160)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !701, file: !18, line: 608, baseType: !773, size: 32, align: 32, offset: 8192)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32, elements: !382)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !701, file: !18, line: 609, baseType: !13, size: 32, offset: 8224)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !701, file: !18, line: 611, baseType: !13, size: 32, offset: 8256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !701, file: !18, line: 612, baseType: !13, size: 32, offset: 8288)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !701, file: !18, line: 614, baseType: !13, size: 32, offset: 8320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !701, file: !18, line: 615, baseType: !13, size: 32, offset: 8352)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !701, file: !18, line: 621, baseType: !13, size: 32, offset: 8384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !701, file: !18, line: 624, baseType: !13, size: 32, offset: 8416)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !701, file: !18, line: 626, baseType: !13, size: 32, offset: 8448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !701, file: !18, line: 627, baseType: !13, size: 32, offset: 8480)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !701, file: !18, line: 671, baseType: !784, size: 60672, offset: 8576)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !18, line: 629, size: 60672, elements: !785)
!785 = !{!786, !790, !794, !796, !797, !800, !804, !806, !807, !808, !809, !810, !813, !817, !820, !821, !822, !823, !824, !827, !829, !831}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !784, file: !18, line: 634, baseType: !787, size: 3072, align: 128)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 3072, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !784, file: !18, line: 635, baseType: !791, size: 6912, align: 128, offset: 3072)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 6912, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 864)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !784, file: !18, line: 638, baseType: !795, size: 2048, align: 128, offset: 9984)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 2048, elements: !275)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !784, file: !18, line: 639, baseType: !795, size: 2048, align: 128, offset: 12032)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !784, file: !18, line: 640, baseType: !798, size: 3072, align: 128, offset: 14080)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 3072, elements: !799)
!799 = !{!474, !83}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !784, file: !18, line: 641, baseType: !801, size: 3840, align: 128, offset: 17152)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 3840, elements: !802)
!802 = !{!803, !76}
!803 = !DISubrange(count: 15)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !784, file: !18, line: 642, baseType: !805, size: 128, offset: 20992)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !382)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !784, file: !18, line: 643, baseType: !805, size: 128, offset: 21120)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !784, file: !18, line: 644, baseType: !13, size: 32, offset: 21248)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !784, file: !18, line: 645, baseType: !13, size: 32, offset: 21280)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !784, file: !18, line: 648, baseType: !694, size: 4096, align: 128, offset: 21376)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !784, file: !18, line: 649, baseType: !811, size: 4096, align: 128, offset: 25472)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 4096, elements: !812)
!812 = !{!76, !76}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !784, file: !18, line: 652, baseType: !814, size: 576, align: 128, offset: 29568)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 576, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 9)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !784, file: !18, line: 653, baseType: !818, size: 1024, align: 128, offset: 30208)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, elements: !819)
!819 = !{!473}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !784, file: !18, line: 656, baseType: !554, size: 192, offset: 31232)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !784, file: !18, line: 658, baseType: !554, size: 192, offset: 31424)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !784, file: !18, line: 661, baseType: !554, size: 192, offset: 31616)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !784, file: !18, line: 664, baseType: !130, size: 64, offset: 31808)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !784, file: !18, line: 665, baseType: !825, size: 24576, offset: 31872)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 24576, elements: !826)
!826 = !{!132, !473, !373}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !784, file: !18, line: 666, baseType: !828, size: 2048, offset: 56448)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2048, elements: !819)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !784, file: !18, line: 667, baseType: !830, size: 2048, offset: 58496)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 2048, elements: !443)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !784, file: !18, line: 670, baseType: !546, size: 96, offset: 60544)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !701, file: !18, line: 704, baseType: !833, size: 6144, offset: 69248)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !701, file: !18, line: 674, size: 6144, elements: !834)
!834 = !{!835, !839, !843, !846, !849, !851, !852, !855, !857, !858, !859, !860, !861, !862}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !833, file: !18, line: 677, baseType: !836, size: 320, align: 64)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 320, elements: !837)
!837 = !{!838}
!838 = !DISubrange(count: 40)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !833, file: !18, line: 680, baseType: !840, size: 384, align: 128, offset: 384)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 384, elements: !841)
!841 = !{!842}
!842 = !DISubrange(count: 48)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !833, file: !18, line: 683, baseType: !844, size: 640, align: 32, offset: 768)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 640, elements: !845)
!845 = !{!132, !838}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !833, file: !18, line: 686, baseType: !847, size: 2560, align: 128, offset: 1408)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 2560, elements: !848)
!848 = !{!132, !838, !132}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !833, file: !18, line: 687, baseType: !850, size: 1280, align: 64, offset: 3968)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1280, elements: !848)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !833, file: !18, line: 690, baseType: !836, size: 320, align: 32, offset: 5248)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !833, file: !18, line: 692, baseType: !853, size: 256, align: 32, offset: 5568)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 256, elements: !854)
!854 = !{!132, !383, !132}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !833, file: !18, line: 693, baseType: !856, size: 64, align: 32, offset: 5824)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 64, elements: !692)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !833, file: !18, line: 694, baseType: !13, size: 32, offset: 5888)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !833, file: !18, line: 695, baseType: !578, size: 32, align: 32, offset: 5920)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !833, file: !18, line: 698, baseType: !13, size: 32, offset: 5952)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !833, file: !18, line: 699, baseType: !13, size: 32, offset: 5984)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !833, file: !18, line: 702, baseType: !13, size: 32, offset: 6016)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !833, file: !18, line: 703, baseType: !13, size: 32, offset: 6048)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !701, file: !18, line: 707, baseType: !13, size: 32, offset: 75392)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !701, file: !18, line: 708, baseType: !13, size: 32, offset: 75424)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !701, file: !18, line: 709, baseType: !13, size: 32, offset: 75456)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !701, file: !18, line: 710, baseType: !13, size: 32, offset: 75488)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !701, file: !18, line: 711, baseType: !13, size: 32, offset: 75520)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !701, file: !18, line: 712, baseType: !13, size: 32, offset: 75552)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !701, file: !18, line: 713, baseType: !13, size: 32, offset: 75584)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !701, file: !18, line: 714, baseType: !13, size: 32, offset: 75616)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !701, file: !18, line: 717, baseType: !872, size: 128, offset: 75648)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !873)
!873 = !{!132, !132}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !701, file: !18, line: 718, baseType: !13, size: 32, offset: 75776)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !701, file: !18, line: 719, baseType: !13, size: 32, offset: 75808)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !701, file: !18, line: 722, baseType: !877, size: 4096, offset: 75840)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 4096, elements: !878)
!878 = !{!132, !473, !383}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !701, file: !18, line: 723, baseType: !880, size: 64, offset: 79936)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 64, elements: !382)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !701, file: !18, line: 724, baseType: !883, size: 2048, offset: 80000)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 2048, elements: !878)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !701, file: !18, line: 725, baseType: !885, size: 64, offset: 82048)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 32, elements: !382)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !701, file: !18, line: 728, baseType: !888, size: 144, offset: 82112)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 144, elements: !603)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !701, file: !18, line: 729, baseType: !13, size: 32, offset: 82272)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !701, file: !18, line: 730, baseType: !891, size: 272, offset: 82304)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !571, size: 272, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 34)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !17, file: !18, line: 735, baseType: !895, size: 64, offset: 213632)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !18, line: 379, baseType: !897)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !18, line: 379, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !17, file: !18, line: 793, baseType: !899, size: 29504, offset: 213696)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !17, file: !18, line: 738, size: 29504, elements: !900)
!900 = !{!901, !928, !932, !934, !936, !937, !938, !939, !940, !941, !942, !943, !946, !948, !949, !952, !954, !956, !957, !958}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !899, file: !18, line: 764, baseType: !902, size: 5632)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !18, line: 741, size: 5632, elements: !903)
!903 = !{!904, !905, !906, !907, !909, !910, !911, !912, !913, !915, !918, !920, !924, !925, !927}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !902, file: !18, line: 744, baseType: !13, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !902, file: !18, line: 746, baseType: !13, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !902, file: !18, line: 748, baseType: !13, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !902, file: !18, line: 750, baseType: !908, size: 608, offset: 96)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 608, elements: !677)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !902, file: !18, line: 751, baseType: !13, size: 32, offset: 704)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !902, file: !18, line: 752, baseType: !13, size: 32, offset: 736)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !902, file: !18, line: 753, baseType: !13, size: 32, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !902, file: !18, line: 754, baseType: !130, size: 64, offset: 800)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !902, file: !18, line: 755, baseType: !914, size: 2048, offset: 864)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 2048, elements: !765)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !902, file: !18, line: 756, baseType: !916, size: 544, offset: 2912)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 544, elements: !917)
!917 = !{!583}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !902, file: !18, line: 757, baseType: !919, size: 192, offset: 3456)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !372)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !902, file: !18, line: 758, baseType: !921, size: 1664, offset: 3648)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1664, elements: !922)
!922 = !{!383, !923}
!923 = !DISubrange(count: 13)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !902, file: !18, line: 760, baseType: !130, size: 64, offset: 5312)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !902, file: !18, line: 762, baseType: !926, size: 192, offset: 5376)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 192, elements: !547)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !902, file: !18, line: 763, baseType: !629, size: 64, offset: 5568)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !899, file: !18, line: 769, baseType: !929, size: 160, offset: 5632)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 5)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !899, file: !18, line: 770, baseType: !933, size: 320, offset: 5824)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 320, elements: !930)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !899, file: !18, line: 771, baseType: !935, size: 320, offset: 6144)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 320, elements: !930)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !899, file: !18, line: 772, baseType: !916, size: 544, offset: 6464)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !899, file: !18, line: 774, baseType: !933, size: 320, offset: 7040)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !899, file: !18, line: 775, baseType: !935, size: 320, offset: 7360)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !899, file: !18, line: 776, baseType: !935, size: 320, offset: 7680)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !899, file: !18, line: 777, baseType: !935, size: 320, offset: 8000)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !899, file: !18, line: 778, baseType: !935, size: 320, offset: 8320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !899, file: !18, line: 779, baseType: !935, size: 320, offset: 8640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !899, file: !18, line: 781, baseType: !944, size: 6080, offset: 8960)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 6080, elements: !945)
!945 = !{!931, !678}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !899, file: !18, line: 782, baseType: !947, size: 2176, offset: 15040)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 2176, elements: !582)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !899, file: !18, line: 783, baseType: !667, size: 128, offset: 17216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !899, file: !18, line: 784, baseType: !950, size: 8192, offset: 17344)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 8192, elements: !951)
!951 = !{!132, !132, !473}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !899, file: !18, line: 785, baseType: !953, size: 384, offset: 25536)
!953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 384, elements: !372)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !899, file: !18, line: 786, baseType: !955, size: 3328, offset: 25920)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 3328, elements: !922)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !899, file: !18, line: 788, baseType: !130, size: 64, offset: 29248)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !899, file: !18, line: 789, baseType: !130, size: 64, offset: 29312)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !899, file: !18, line: 791, baseType: !546, size: 96, offset: 29376)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !17, file: !18, line: 795, baseType: !960, size: 4096, align: 128, offset: 243200)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 4096, elements: !961)
!961 = !{!132, !83}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !17, file: !18, line: 796, baseType: !963, size: 2048, align: 128, offset: 247296)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 2048, elements: !961)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !17, file: !18, line: 797, baseType: !965, size: 64, offset: 249344)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 64, elements: !131)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !17, file: !18, line: 800, baseType: !89, size: 64, offset: 249408)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !17, file: !18, line: 801, baseType: !968, size: 384, offset: 249472)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 384, elements: !969)
!969 = !{!132, !474}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !17, file: !18, line: 802, baseType: !971, size: 128, offset: 249856)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 128, elements: !131)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !974)
!974 = !{!132, !383, !383}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !17, file: !18, line: 805, baseType: !976, size: 448, offset: 249984)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 448, elements: !982)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !978, line: 27, baseType: !979)
!978 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null, !222}
!982 = !{!983}
!983 = !DISubrange(count: 7)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !17, file: !18, line: 806, baseType: !976, size: 448, offset: 250432)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !17, file: !18, line: 807, baseType: !986, size: 768, offset: 250880)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, size: 768, elements: !991)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !978, line: 28, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !222, !222}
!991 = !{!992}
!992 = !DISubrange(count: 12)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !17, file: !18, line: 808, baseType: !994, size: 768, offset: 251648)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 768, elements: !991)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !17, file: !18, line: 809, baseType: !996, size: 64, offset: 252416)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !978, line: 29, baseType: !997)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !222, !222, !13, !13}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !17, file: !18, line: 811, baseType: !1001, size: 8448, offset: 252480)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1002, line: 110, baseType: !1003)
!1002 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1002, line: 63, size: 8448, elements: !1004)
!1004 = !{!1005, !1011, !1012, !1013, !1014, !1016, !1017, !1018, !1019, !1025, !1031, !1032, !1036, !1041, !1042, !1048, !1052, !1053, !1054, !1055, !1056, !1061, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1003, file: !1002, line: 65, baseType: !1006, size: 448)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 448, elements: !982)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1002, line: 26, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!13, !222, !13, !222, !13}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1003, file: !1002, line: 66, baseType: !1006, size: 448, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1003, file: !1002, line: 67, baseType: !1006, size: 448, offset: 896)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1003, file: !1002, line: 68, baseType: !1006, size: 448, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1003, file: !1002, line: 69, baseType: !1015, size: 256, offset: 1792)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1007, size: 256, elements: !382)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1003, file: !1002, line: 70, baseType: !1006, size: 448, offset: 2048)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1003, file: !1002, line: 71, baseType: !1006, size: 448, offset: 2496)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1003, file: !1002, line: 72, baseType: !1006, size: 448, offset: 2944)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1003, file: !1002, line: 73, baseType: !1020, size: 448, offset: 3392)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 448, elements: !982)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1002, line: 27, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !222, !222, !222, !222, !13, !590}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1003, file: !1002, line: 74, baseType: !1026, size: 448, offset: 3840)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 448, elements: !982)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1002, line: 28, baseType: !1028)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !222, !222, !222, !222, !222, !13, !590}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1003, file: !1002, line: 75, baseType: !1006, size: 448, offset: 4288)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1003, file: !1002, line: 76, baseType: !1033, size: 64, offset: 4736)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!13, !222, !13, !222, !13, !590}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1003, file: !1002, line: 78, baseType: !1037, size: 256, offset: 4800)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1038, size: 256, elements: !382)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!621, !222, !13}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1003, file: !1002, line: 79, baseType: !1037, size: 256, offset: 5056)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1003, file: !1002, line: 81, baseType: !1043, size: 64, offset: 5312)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !370, !13, !370, !13, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 128, elements: !382)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1003, file: !1002, line: 83, baseType: !1049, size: 64, offset: 5376)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!126, !1046, !1046, !13}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1003, file: !1002, line: 86, baseType: !1020, size: 448, offset: 5440)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1003, file: !1002, line: 87, baseType: !1026, size: 448, offset: 5888)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1003, file: !1002, line: 88, baseType: !1020, size: 448, offset: 6336)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1003, file: !1002, line: 89, baseType: !1026, size: 448, offset: 6784)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1003, file: !1002, line: 93, baseType: !1057, size: 448, offset: 7232)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 448, elements: !982)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!13, !590, !405, !13, !405, !747, !13, !13}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1003, file: !1002, line: 98, baseType: !1062, size: 64, offset: 7680)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{null, !222, !222, !590}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1003, file: !1002, line: 99, baseType: !1062, size: 64, offset: 7744)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1003, file: !1002, line: 100, baseType: !1062, size: 64, offset: 7808)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1003, file: !1002, line: 101, baseType: !1062, size: 64, offset: 7872)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1003, file: !1002, line: 102, baseType: !1062, size: 64, offset: 7936)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1003, file: !1002, line: 103, baseType: !1062, size: 64, offset: 8000)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1003, file: !1002, line: 104, baseType: !1062, size: 64, offset: 8064)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1003, file: !1002, line: 105, baseType: !1062, size: 64, offset: 8128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1003, file: !1002, line: 106, baseType: !1062, size: 64, offset: 8192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1003, file: !1002, line: 107, baseType: !1062, size: 64, offset: 8256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1003, file: !1002, line: 108, baseType: !1062, size: 64, offset: 8320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1003, file: !1002, line: 109, baseType: !1062, size: 64, offset: 8384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !17, file: !18, line: 812, baseType: !1077, size: 2368, offset: 260928)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !447, line: 111, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 58, size: 2368, elements: !1079)
!1079 = !{!1080, !1087, !1091, !1095, !1102, !1107, !1108, !1112, !1116, !1117, !1121, !1129, !1133, !1137, !1138, !1142, !1146, !1150, !1151, !1152, !1153, !1158}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1078, file: !447, line: 60, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !222, !13, !1084, !13, !13, !13, !13, !13, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1078, file: !447, line: 65, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!222, !222, !590, !1084, !13, !13, !13, !13, !13, !1085}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1078, file: !447, line: 71, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !222, !13, !222, !13, !13, !13, !13, !13}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1078, file: !447, line: 75, baseType: !1096, size: 640, offset: 192)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 640, elements: !1100)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !222, !13, !222, !13, !222, !13, !13}
!1100 = !{!1101}
!1101 = !DISubrange(count: 10)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1078, file: !447, line: 78, baseType: !1103, size: 448, offset: 832)
!1103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1104, size: 448, elements: !982)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !222, !13, !222, !13, !13}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1078, file: !447, line: 79, baseType: !1104, size: 64, offset: 1280)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1078, file: !447, line: 81, baseType: !1109, size: 64, offset: 1344)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{null, !222, !13, !222, !13, !13, !13}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1078, file: !447, line: 84, baseType: !1113, size: 64, offset: 1408)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !222, !222, !222, !222, !13, !13, !13, !747}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1078, file: !447, line: 88, baseType: !1104, size: 64, offset: 1472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1078, file: !447, line: 91, baseType: !1118, size: 64, offset: 1536)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !222, !13, !13}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1078, file: !447, line: 93, baseType: !1122, size: 64, offset: 1600)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!89, !89, !1125, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1128, line: 46, baseType: !623)
!1128 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1078, file: !447, line: 94, baseType: !1130, size: 64, offset: 1664)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !89, !13}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1078, file: !447, line: 97, baseType: !1134, size: 64, offset: 1728)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !405, !222, !13}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1078, file: !447, line: 98, baseType: !1134, size: 64, offset: 1792)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1078, file: !447, line: 99, baseType: !1139, size: 64, offset: 1856)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !405, !405, !13}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1078, file: !447, line: 100, baseType: !1143, size: 64, offset: 1920)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !405, !13}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1078, file: !447, line: 102, baseType: !1147, size: 64, offset: 1984)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{null, !222, !222, !222, !222, !222, !13, !13, !13, !13}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1078, file: !447, line: 104, baseType: !465, size: 64, offset: 2048)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1078, file: !447, line: 105, baseType: !465, size: 64, offset: 2112)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1078, file: !447, line: 106, baseType: !465, size: 64, offset: 2176)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1078, file: !447, line: 107, baseType: !1154, size: 64, offset: 2240)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !14, !1157}
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1078, file: !447, line: 109, baseType: !1159, size: 64, offset: 2304)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{null, !590, !405, !405, !405, !405, !13}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !17, file: !18, line: 813, baseType: !1163, size: 960, offset: 263296)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1164, line: 115, baseType: !1165)
!1164 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 89, size: 960, elements: !1166)
!1166 = !{!1167, !1171, !1175, !1180, !1181, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1197, !1201, !1205}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1165, file: !1164, line: 94, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !747, !222, !222}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1165, file: !1164, line: 95, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !222, !747}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1165, file: !1164, line: 97, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179, !222, !222}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1165, file: !1164, line: 98, baseType: !1168, size: 64, offset: 192)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1165, file: !1164, line: 99, baseType: !1182, size: 64, offset: 256)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !222, !1179}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1165, file: !1164, line: 100, baseType: !1172, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1165, file: !1164, line: 102, baseType: !1176, size: 64, offset: 384)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1165, file: !1164, line: 103, baseType: !1182, size: 64, offset: 448)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1165, file: !1164, line: 104, baseType: !1172, size: 64, offset: 512)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1165, file: !1164, line: 106, baseType: !1168, size: 64, offset: 576)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1165, file: !1164, line: 107, baseType: !1172, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1165, file: !1164, line: 109, baseType: !1192, size: 64, offset: 704)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{null, !1195, !222, !222}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1024, elements: !82)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1165, file: !1164, line: 110, baseType: !1198, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !222, !1195}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1165, file: !1164, line: 112, baseType: !1202, size: 64, offset: 832)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{null, !747}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1165, file: !1164, line: 113, baseType: !1202, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !17, file: !18, line: 814, baseType: !1207, size: 384, offset: 264256)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1164, line: 126, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1164, line: 117, size: 384, elements: !1209)
!1209 = !{!1210, !1214, !1215, !1219, !1220, !1224}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1208, file: !1164, line: 119, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !747, !747}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1208, file: !1164, line: 120, baseType: !1211, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1208, file: !1164, line: 121, baseType: !1216, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!13, !747, !370, !222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1208, file: !1164, line: 122, baseType: !1216, size: 64, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1208, file: !1164, line: 123, baseType: !1221, size: 64, offset: 256)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!13, !747, !370, !222, !747}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1208, file: !1164, line: 124, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !747, !747, !222}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !17, file: !18, line: 815, baseType: !1229, size: 1408, offset: 264640)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1230, line: 44, baseType: !1231)
!1230 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1230, line: 26, size: 1408, elements: !1232)
!1232 = !{!1233, !1237, !1238, !1242, !1243, !1247, !1251, !1252, !1257, !1261, !1262, !1263, !1265}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1231, file: !1230, line: 28, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!13, !747, !405, !405}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1231, file: !1230, line: 29, baseType: !1234, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1231, file: !1230, line: 30, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!13, !747, !13, !13}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1231, file: !1230, line: 31, baseType: !1239, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1231, file: !1230, line: 33, baseType: !1244, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !747, !386, !13}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1231, file: !1230, line: 34, baseType: !1248, size: 64, offset: 320)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{null, !747, !380, !13}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1231, file: !1230, line: 35, baseType: !1248, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1231, file: !1230, line: 37, baseType: !1253, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !747, !1256, !405, !13}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1231, file: !1230, line: 39, baseType: !1258, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!13, !747}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1231, file: !1230, line: 40, baseType: !1258, size: 64, offset: 576)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1231, file: !1230, line: 41, baseType: !1258, size: 64, offset: 640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1231, file: !1230, line: 42, baseType: !1264, size: 384, offset: 704)
!1264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1258, size: 384, elements: !372)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1231, file: !1230, line: 43, baseType: !1266, size: 320, offset: 1088)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1267, size: 320, elements: !930)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!13, !747, !1270}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !227, line: 63, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 58, size: 416, elements: !1273)
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1272, file: !227, line: 60, baseType: !13, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1272, file: !227, line: 61, baseType: !689, size: 256, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1272, file: !227, line: 62, baseType: !69, size: 128, offset: 288)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !17, file: !18, line: 816, baseType: !1278, size: 576, offset: 266048)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !515, line: 170, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 161, size: 576, elements: !1280)
!1280 = !{!1281, !1287, !1288, !1294, !1295}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1279, file: !515, line: 163, baseType: !1282, size: 128)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 128, elements: !131)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !515, line: 159, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !222, !13, !13, !13, !570}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1279, file: !515, line: 164, baseType: !1282, size: 128, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1279, file: !515, line: 165, baseType: !1289, size: 128, offset: 256)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !131)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !515, line: 160, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !222, !13, !13, !13}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1279, file: !515, line: 166, baseType: !1289, size: 128, offset: 384)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1279, file: !515, line: 167, baseType: !1296, size: 64, offset: 512)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !222, !1299, !1300, !1303, !13, !13}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1280, elements: !1302)
!1302 = !{!838, !132}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, elements: !1305)
!1305 = !{!383, !383}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !17, file: !18, line: 821, baseType: !1307, size: 64, offset: 266624)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !18, line: 377, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !18, line: 366, size: 960, elements: !1310)
!1310 = !{!1311, !1313, !1314, !1315, !1316, !1317, !1318, !1328, !1329}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1309, file: !18, line: 368, baseType: !1312, size: 8)
!1312 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !70)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1309, file: !18, line: 369, baseType: !70, size: 8, offset: 8)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1309, file: !18, line: 370, baseType: !70, size: 8, offset: 16)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1309, file: !18, line: 371, baseType: !13, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1309, file: !18, line: 372, baseType: !13, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1309, file: !18, line: 373, baseType: !513, size: 64, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1309, file: !18, line: 374, baseType: !1319, size: 256, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !515, line: 157, baseType: !1320)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !515, line: 149, size: 256, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326, !1327}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1320, file: !515, line: 151, baseType: !512, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1320, file: !515, line: 152, baseType: !13, size: 32, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1320, file: !515, line: 153, baseType: !13, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1320, file: !515, line: 154, baseType: !13, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1320, file: !515, line: 155, baseType: !13, size: 32, offset: 160)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1320, file: !515, line: 156, baseType: !13, size: 32, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1309, file: !18, line: 375, baseType: !1319, size: 256, offset: 448)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1309, file: !18, line: 376, baseType: !1319, size: 256, offset: 704)
!1330 = !{!1331, !1332, !1333, !1334, !1336, !1337}
!1331 = !DILocalVariable(name: "h", arg: 1, scope: !9, file: !10, line: 127, type: !14)
!1332 = !DILocalVariable(name: "i_slicetype_length", arg: 2, scope: !9, file: !10, line: 127, type: !13)
!1333 = !DILocalVariable(name: "look", scope: !9, file: !10, line: 129, type: !1307)
!1334 = !DILocalVariable(name: "i", scope: !1335, file: !10, line: 131, type: !13)
!1335 = distinct !DILexicalBlock(scope: !9, file: !10, line: 131, column: 5)
!1336 = !DILocalVariable(name: "look_h", scope: !9, file: !10, line: 148, type: !14)
!1337 = !DILabel(scope: !9, name: "fail", file: !10, line: 161)
!1338 = !DILocation(line: 0, scope: !9)
!1339 = !DILocation(line: 130, column: 5, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !10, line: 130, column: 5)
!1341 = distinct !DILexicalBlock(scope: !9, file: !10, line: 130, column: 5)
!1342 = !DILocation(line: 130, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !10, line: 130, column: 5)
!1344 = !DILocation(line: 130, column: 5, scope: !1341)
!1345 = !DILocation(line: 0, scope: !1335)
!1346 = !{!1347, !1349, i64 4}
!1347 = !{!"x264_t", !1348, i64 0, !1350, i64 704, !1349, i64 1736, !1349, i64 1740, !1349, i64 1744, !1349, i64 1748, !1349, i64 1752, !1357, i64 1760, !1353, i64 1832, !1349, i64 1840, !1349, i64 1844, !1349, i64 1848, !1349, i64 1852, !1349, i64 1856, !1349, i64 1860, !1349, i64 1864, !1349, i64 1868, !1349, i64 1872, !1349, i64 1876, !1349, i64 1880, !1349, i64 1884, !1349, i64 1888, !1349, i64 1892, !1350, i64 1896, !1353, i64 3200, !1350, i64 3208, !1353, i64 3328, !1349, i64 3336, !1349, i64 3340, !1350, i64 3344, !1350, i64 3376, !1350, i64 3392, !1350, i64 3424, !1350, i64 3440, !1350, i64 3472, !1350, i64 3488, !1350, i64 3520, !1350, i64 3536, !1350, i64 4272, !1353, i64 7216, !1360, i64 7232, !1361, i64 13904, !1362, i64 14416, !1353, i64 14680, !1353, i64 14688, !1349, i64 14696, !1350, i64 14704, !1349, i64 14856, !1350, i64 14864, !1350, i64 15016, !1349, i64 15024, !1349, i64 15028, !1359, i64 15032, !1363, i64 15040, !1364, i64 16368, !1353, i64 26704, !1367, i64 26712, !1350, i64 30400, !1350, i64 30912, !1350, i64 31168, !1353, i64 31176, !1350, i64 31184, !1350, i64 31232, !1350, i64 31248, !1350, i64 31304, !1350, i64 31360, !1350, i64 31456, !1353, i64 31552, !1370, i64 31560, !1371, i64 32616, !1372, i64 32912, !1373, i64 33032, !1374, i64 33080, !1375, i64 33256, !1353, i64 33328}
!1348 = !{!"x264_param_t", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1349, i64 24, !1349, i64 28, !1349, i64 32, !1349, i64 36, !1349, i64 40, !1352, i64 44, !1349, i64 80, !1349, i64 84, !1349, i64 88, !1349, i64 92, !1349, i64 96, !1349, i64 100, !1349, i64 104, !1349, i64 108, !1349, i64 112, !1349, i64 116, !1349, i64 120, !1349, i64 124, !1349, i64 128, !1349, i64 132, !1349, i64 136, !1349, i64 140, !1349, i64 144, !1353, i64 152, !1350, i64 160, !1350, i64 176, !1350, i64 192, !1350, i64 208, !1350, i64 224, !1350, i64 288, !1353, i64 352, !1353, i64 360, !1349, i64 368, !1349, i64 372, !1353, i64 376, !1354, i64 384, !1356, i64 488, !1349, i64 632, !1349, i64 636, !1349, i64 640, !1349, i64 644, !1349, i64 648, !1349, i64 652, !1349, i64 656, !1349, i64 660, !1349, i64 664, !1349, i64 668, !1349, i64 672, !1349, i64 676, !1349, i64 680, !1349, i64 684, !1349, i64 688, !1349, i64 692, !1353, i64 696}
!1349 = !{!"int", !1350, i64 0}
!1350 = !{!"omnipotent char", !1351, i64 0}
!1351 = !{!"Simple C/C++ TBAA"}
!1352 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1349, i64 24, !1349, i64 28, !1349, i64 32}
!1353 = !{!"any pointer", !1350, i64 0}
!1354 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1349, i64 24, !1349, i64 28, !1349, i64 32, !1349, i64 36, !1349, i64 40, !1349, i64 44, !1349, i64 48, !1349, i64 52, !1349, i64 56, !1349, i64 60, !1349, i64 64, !1349, i64 68, !1355, i64 72, !1355, i64 76, !1349, i64 80, !1350, i64 84, !1349, i64 92, !1349, i64 96}
!1355 = !{!"float", !1350, i64 0}
!1356 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1355, i64 24, !1355, i64 28, !1355, i64 32, !1349, i64 36, !1349, i64 40, !1355, i64 44, !1355, i64 48, !1355, i64 52, !1349, i64 56, !1355, i64 60, !1349, i64 64, !1349, i64 68, !1349, i64 72, !1353, i64 80, !1349, i64 88, !1353, i64 96, !1355, i64 104, !1355, i64 108, !1355, i64 112, !1353, i64 120, !1349, i64 128, !1353, i64 136}
!1357 = !{!"", !1349, i64 0, !1349, i64 4, !1353, i64 8, !1349, i64 16, !1353, i64 24, !1358, i64 32}
!1358 = !{!"bs_s", !1353, i64 0, !1353, i64 8, !1353, i64 16, !1359, i64 24, !1349, i64 32, !1349, i64 36}
!1359 = !{!"long", !1350, i64 0}
!1360 = !{!"", !1353, i64 0, !1353, i64 8, !1349, i64 16, !1349, i64 20, !1349, i64 24, !1349, i64 28, !1349, i64 32, !1349, i64 36, !1349, i64 40, !1349, i64 44, !1349, i64 48, !1349, i64 52, !1349, i64 56, !1350, i64 60, !1349, i64 68, !1349, i64 72, !1349, i64 76, !1349, i64 80, !1349, i64 84, !1349, i64 88, !1349, i64 92, !1350, i64 96, !1350, i64 352, !1349, i64 6496, !1349, i64 6500, !1350, i64 6504, !1349, i64 6632, !1349, i64 6636, !1349, i64 6640, !1349, i64 6644, !1349, i64 6648, !1349, i64 6652, !1349, i64 6656, !1349, i64 6660}
!1361 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1353, i64 16, !1353, i64 24, !1353, i64 32, !1349, i64 48, !1350, i64 52}
!1362 = !{!"", !1353, i64 0, !1350, i64 8, !1353, i64 24, !1350, i64 32, !1349, i64 176, !1349, i64 180, !1349, i64 184, !1349, i64 188, !1349, i64 192, !1349, i64 196, !1349, i64 200, !1359, i64 208, !1359, i64 216, !1350, i64 224, !1359, i64 240, !1359, i64 248, !1349, i64 256, !1349, i64 260}
!1363 = !{!"", !1350, i64 0, !1350, i64 32, !1350, i64 48, !1350, i64 560}
!1364 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1349, i64 24, !1349, i64 28, !1349, i64 32, !1349, i64 36, !1349, i64 40, !1349, i64 44, !1349, i64 48, !1349, i64 52, !1349, i64 56, !1349, i64 60, !1349, i64 64, !1349, i64 68, !1350, i64 72, !1350, i64 80, !1350, i64 88, !1350, i64 96, !1350, i64 104, !1350, i64 112, !1349, i64 120, !1350, i64 124, !1350, i64 140, !1349, i64 204, !1349, i64 208, !1349, i64 212, !1349, i64 216, !1349, i64 220, !1349, i64 224, !1349, i64 228, !1349, i64 232, !1349, i64 236, !1349, i64 240, !1349, i64 244, !1353, i64 248, !1353, i64 256, !1353, i64 264, !1353, i64 272, !1353, i64 280, !1353, i64 288, !1353, i64 296, !1350, i64 304, !1350, i64 320, !1350, i64 336, !1350, i64 352, !1353, i64 864, !1353, i64 872, !1353, i64 880, !1350, i64 888, !1349, i64 1016, !1349, i64 1020, !1350, i64 1024, !1349, i64 1028, !1349, i64 1032, !1349, i64 1036, !1349, i64 1040, !1349, i64 1044, !1349, i64 1048, !1349, i64 1052, !1349, i64 1056, !1349, i64 1060, !1365, i64 1072, !1366, i64 8656, !1349, i64 9424, !1349, i64 9428, !1349, i64 9432, !1349, i64 9436, !1349, i64 9440, !1349, i64 9444, !1349, i64 9448, !1349, i64 9452, !1350, i64 9456, !1349, i64 9472, !1349, i64 9476, !1350, i64 9480, !1353, i64 9992, !1350, i64 10000, !1353, i64 10256, !1350, i64 10264, !1349, i64 10284, !1350, i64 10288}
!1365 = !{!"", !1350, i64 0, !1350, i64 384, !1350, i64 1248, !1350, i64 1504, !1350, i64 1760, !1350, i64 2144, !1350, i64 2624, !1350, i64 2640, !1349, i64 2656, !1349, i64 2660, !1350, i64 2672, !1350, i64 3184, !1350, i64 3696, !1350, i64 3776, !1350, i64 3904, !1350, i64 3928, !1350, i64 3952, !1350, i64 3976, !1350, i64 3984, !1350, i64 7056, !1350, i64 7312, !1350, i64 7568}
!1366 = !{!"", !1350, i64 0, !1350, i64 48, !1350, i64 96, !1350, i64 176, !1350, i64 496, !1350, i64 656, !1350, i64 696, !1350, i64 728, !1349, i64 736, !1350, i64 740, !1349, i64 744, !1349, i64 748, !1349, i64 752, !1349, i64 756}
!1367 = !{!"", !1368, i64 0, !1350, i64 704, !1350, i64 728, !1350, i64 768, !1350, i64 808, !1350, i64 880, !1350, i64 920, !1350, i64 960, !1350, i64 1000, !1350, i64 1040, !1350, i64 1080, !1350, i64 1120, !1350, i64 1880, !1350, i64 2152, !1350, i64 2168, !1350, i64 3192, !1350, i64 3240, !1350, i64 3656, !1350, i64 3664, !1350, i64 3672}
!1368 = !{!"", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1350, i64 12, !1349, i64 88, !1349, i64 92, !1349, i64 96, !1350, i64 100, !1350, i64 108, !1350, i64 364, !1350, i64 432, !1350, i64 456, !1350, i64 664, !1350, i64 672, !1369, i64 696}
!1369 = !{!"double", !1350, i64 0}
!1370 = !{!"", !1350, i64 0, !1350, i64 56, !1350, i64 112, !1350, i64 168, !1350, i64 224, !1350, i64 256, !1350, i64 312, !1350, i64 368, !1350, i64 424, !1350, i64 480, !1350, i64 536, !1353, i64 592, !1350, i64 600, !1350, i64 632, !1353, i64 664, !1353, i64 672, !1350, i64 680, !1350, i64 736, !1350, i64 792, !1350, i64 848, !1350, i64 904, !1353, i64 960, !1353, i64 968, !1353, i64 976, !1353, i64 984, !1353, i64 992, !1353, i64 1000, !1353, i64 1008, !1353, i64 1016, !1353, i64 1024, !1353, i64 1032, !1353, i64 1040, !1353, i64 1048}
!1371 = !{!"", !1353, i64 0, !1353, i64 8, !1353, i64 16, !1350, i64 24, !1350, i64 104, !1353, i64 160, !1353, i64 168, !1353, i64 176, !1353, i64 184, !1353, i64 192, !1353, i64 200, !1353, i64 208, !1353, i64 216, !1353, i64 224, !1353, i64 232, !1353, i64 240, !1353, i64 248, !1353, i64 256, !1353, i64 264, !1353, i64 272, !1353, i64 280, !1353, i64 288}
!1372 = !{!"", !1353, i64 0, !1353, i64 8, !1353, i64 16, !1353, i64 24, !1353, i64 32, !1353, i64 40, !1353, i64 48, !1353, i64 56, !1353, i64 64, !1353, i64 72, !1353, i64 80, !1353, i64 88, !1353, i64 96, !1353, i64 104, !1353, i64 112}
!1373 = !{!"", !1353, i64 0, !1353, i64 8, !1353, i64 16, !1353, i64 24, !1353, i64 32, !1353, i64 40}
!1374 = !{!"", !1353, i64 0, !1353, i64 8, !1353, i64 16, !1353, i64 24, !1353, i64 32, !1353, i64 40, !1353, i64 48, !1353, i64 56, !1353, i64 64, !1353, i64 72, !1353, i64 80, !1350, i64 88, !1350, i64 136}
!1375 = !{!"", !1350, i64 0, !1350, i64 16, !1350, i64 32, !1350, i64 48, !1353, i64 64}
!1376 = !DILocation(line: 131, column: 23, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1335, file: !10, line: 131, column: 5)
!1378 = !DILocation(line: 131, column: 5, scope: !1335)
!1379 = !DILocation(line: 134, column: 40, scope: !9)
!1380 = !{!1347, !1349, i64 84}
!1381 = !DILocation(line: 134, column: 29, scope: !9)
!1382 = !DILocation(line: 134, column: 11, scope: !9)
!1383 = !DILocation(line: 134, column: 27, scope: !9)
!1384 = !{!1385, !1349, i64 4}
!1385 = !{!"x264_lookahead_t", !1350, i64 0, !1350, i64 1, !1350, i64 2, !1349, i64 4, !1349, i64 8, !1353, i64 16, !1386, i64 24, !1386, i64 56, !1386, i64 88}
!1386 = !{!"", !1353, i64 0, !1349, i64 8, !1349, i64 12, !1349, i64 16, !1349, i64 20, !1349, i64 24}
!1387 = !DILocation(line: 135, column: 45, scope: !9)
!1388 = !{!1347, !1349, i64 552}
!1389 = !DILocation(line: 135, column: 33, scope: !9)
!1390 = !DILocation(line: 135, column: 55, scope: !9)
!1391 = !DILocation(line: 132, column: 9, scope: !1377)
!1392 = !{!1353, !1353, i64 0}
!1393 = !DILocation(line: 132, column: 23, scope: !1377)
!1394 = !DILocation(line: 132, column: 33, scope: !1377)
!1395 = !{!1347, !1353, i64 33328}
!1396 = !DILocation(line: 131, column: 46, scope: !1377)
!1397 = distinct !{!1397, !1378, !1398, !1399, !1400}
!1398 = !DILocation(line: 132, column: 35, scope: !1335)
!1399 = !{!"llvm.loop.mustprogress"}
!1400 = !{!"llvm.loop.unroll.disable"}
!1401 = !DILocation(line: 135, column: 71, scope: !9)
!1402 = !{!1347, !1349, i64 528}
!1403 = !DILocation(line: 135, column: 59, scope: !9)
!1404 = !DILocation(line: 135, column: 89, scope: !9)
!1405 = !DILocation(line: 135, column: 104, scope: !9)
!1406 = !{!1347, !1349, i64 556}
!1407 = !DILocation(line: 135, column: 92, scope: !9)
!1408 = !DILocation(line: 136, column: 32, scope: !9)
!1409 = !DILocation(line: 136, column: 48, scope: !9)
!1410 = !{!1347, !1349, i64 576}
!1411 = !DILocation(line: 136, column: 35, scope: !9)
!1412 = !DILocation(line: 135, column: 11, scope: !9)
!1413 = !DILocation(line: 135, column: 30, scope: !9)
!1414 = !{!1385, !1350, i64 2}
!1415 = !DILocation(line: 137, column: 11, scope: !9)
!1416 = !DILocation(line: 137, column: 30, scope: !9)
!1417 = !{!1385, !1349, i64 8}
!1418 = !DILocation(line: 140, column: 44, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !9, file: !10, line: 140, column: 9)
!1420 = !DILocation(line: 140, column: 60, scope: !1419)
!1421 = !{!1347, !1349, i64 16}
!1422 = !DILocation(line: 140, column: 76, scope: !1419)
!1423 = !DILocation(line: 140, column: 9, scope: !1419)
!1424 = !DILocation(line: 140, column: 81, scope: !1419)
!1425 = !DILocation(line: 141, column: 44, scope: !1419)
!1426 = !DILocation(line: 141, column: 60, scope: !1419)
!1427 = !{!1347, !1349, i64 14612}
!1428 = !DILocation(line: 141, column: 67, scope: !1419)
!1429 = !DILocation(line: 141, column: 9, scope: !1419)
!1430 = !DILocation(line: 141, column: 72, scope: !1419)
!1431 = !DILocation(line: 142, column: 44, scope: !1419)
!1432 = !DILocation(line: 142, column: 61, scope: !1419)
!1433 = !DILocation(line: 142, column: 68, scope: !1419)
!1434 = !DILocation(line: 142, column: 9, scope: !1419)
!1435 = !DILocation(line: 140, column: 9, scope: !9)
!1436 = !DILocation(line: 145, column: 19, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !9, file: !10, line: 145, column: 9)
!1438 = !DILocation(line: 145, column: 10, scope: !1437)
!1439 = !DILocation(line: 145, column: 9, scope: !9)
!1440 = !DILocation(line: 148, column: 41, scope: !9)
!1441 = !DILocation(line: 148, column: 22, scope: !9)
!1442 = !DILocation(line: 149, column: 15, scope: !9)
!1443 = !{i64 0, i64 4, !1444, i64 4, i64 4, !1444, i64 8, i64 4, !1444, i64 12, i64 4, !1444, i64 16, i64 4, !1444, i64 20, i64 4, !1444, i64 24, i64 4, !1444, i64 28, i64 4, !1444, i64 32, i64 4, !1444, i64 36, i64 4, !1444, i64 40, i64 4, !1444, i64 44, i64 4, !1444, i64 48, i64 4, !1444, i64 52, i64 4, !1444, i64 56, i64 4, !1444, i64 60, i64 4, !1444, i64 64, i64 4, !1444, i64 68, i64 4, !1444, i64 72, i64 4, !1444, i64 76, i64 4, !1444, i64 80, i64 4, !1444, i64 84, i64 4, !1444, i64 88, i64 4, !1444, i64 92, i64 4, !1444, i64 96, i64 4, !1444, i64 100, i64 4, !1444, i64 104, i64 4, !1444, i64 108, i64 4, !1444, i64 112, i64 4, !1444, i64 116, i64 4, !1444, i64 120, i64 4, !1444, i64 124, i64 4, !1444, i64 128, i64 4, !1444, i64 132, i64 4, !1444, i64 136, i64 4, !1444, i64 140, i64 4, !1444, i64 144, i64 4, !1444, i64 152, i64 8, !1392, i64 160, i64 16, !1445, i64 176, i64 16, !1445, i64 192, i64 16, !1445, i64 208, i64 16, !1445, i64 224, i64 64, !1445, i64 288, i64 64, !1445, i64 352, i64 8, !1392, i64 360, i64 8, !1392, i64 368, i64 4, !1444, i64 372, i64 4, !1444, i64 376, i64 8, !1392, i64 384, i64 4, !1444, i64 388, i64 4, !1444, i64 392, i64 4, !1444, i64 396, i64 4, !1444, i64 400, i64 4, !1444, i64 404, i64 4, !1444, i64 408, i64 4, !1444, i64 412, i64 4, !1444, i64 416, i64 4, !1444, i64 420, i64 4, !1444, i64 424, i64 4, !1444, i64 428, i64 4, !1444, i64 432, i64 4, !1444, i64 436, i64 4, !1444, i64 440, i64 4, !1444, i64 444, i64 4, !1444, i64 448, i64 4, !1444, i64 452, i64 4, !1444, i64 456, i64 4, !1446, i64 460, i64 4, !1446, i64 464, i64 4, !1444, i64 468, i64 8, !1445, i64 476, i64 4, !1444, i64 480, i64 4, !1444, i64 488, i64 4, !1444, i64 492, i64 4, !1444, i64 496, i64 4, !1444, i64 500, i64 4, !1444, i64 504, i64 4, !1444, i64 508, i64 4, !1444, i64 512, i64 4, !1446, i64 516, i64 4, !1446, i64 520, i64 4, !1446, i64 524, i64 4, !1444, i64 528, i64 4, !1444, i64 532, i64 4, !1446, i64 536, i64 4, !1446, i64 540, i64 4, !1446, i64 544, i64 4, !1444, i64 548, i64 4, !1446, i64 552, i64 4, !1444, i64 556, i64 4, !1444, i64 560, i64 4, !1444, i64 568, i64 8, !1392, i64 576, i64 4, !1444, i64 584, i64 8, !1392, i64 592, i64 4, !1446, i64 596, i64 4, !1446, i64 600, i64 4, !1446, i64 608, i64 8, !1392, i64 616, i64 4, !1444, i64 624, i64 8, !1392, i64 632, i64 4, !1444, i64 636, i64 4, !1444, i64 640, i64 4, !1444, i64 644, i64 4, !1444, i64 648, i64 4, !1444, i64 652, i64 4, !1444, i64 656, i64 4, !1444, i64 660, i64 4, !1444, i64 664, i64 4, !1444, i64 668, i64 4, !1444, i64 672, i64 4, !1444, i64 676, i64 4, !1444, i64 680, i64 4, !1444, i64 684, i64 4, !1444, i64 688, i64 4, !1444, i64 692, i64 4, !1444, i64 696, i64 8, !1392, i64 704, i64 1032, !1445, i64 1736, i64 4, !1444, i64 1740, i64 4, !1444, i64 1744, i64 4, !1444, i64 1748, i64 4, !1444, i64 1752, i64 4, !1444, i64 1760, i64 4, !1444, i64 1764, i64 4, !1444, i64 1768, i64 8, !1392, i64 1776, i64 4, !1444, i64 1784, i64 8, !1392, i64 1792, i64 8, !1392, i64 1800, i64 8, !1392, i64 1808, i64 8, !1392, i64 1816, i64 8, !1447, i64 1824, i64 4, !1444, i64 1828, i64 4, !1444, i64 1832, i64 8, !1392, i64 1840, i64 4, !1444, i64 1844, i64 4, !1444, i64 1848, i64 4, !1444, i64 1852, i64 4, !1444, i64 1856, i64 4, !1444, i64 1860, i64 4, !1444, i64 1864, i64 4, !1444, i64 1868, i64 4, !1444, i64 1872, i64 4, !1444, i64 1876, i64 4, !1444, i64 1880, i64 4, !1444, i64 1884, i64 4, !1444, i64 1888, i64 4, !1444, i64 1892, i64 4, !1444, i64 1896, i64 1300, !1445, i64 3200, i64 8, !1392, i64 3208, i64 120, !1445, i64 3328, i64 8, !1392, i64 3336, i64 4, !1444, i64 3340, i64 4, !1444, i64 3344, i64 32, !1445, i64 3376, i64 16, !1445, i64 3392, i64 32, !1445, i64 3424, i64 16, !1445, i64 3440, i64 32, !1445, i64 3472, i64 16, !1445, i64 3488, i64 32, !1445, i64 3520, i64 16, !1445, i64 3536, i64 736, !1445, i64 4272, i64 2944, !1445, i64 7216, i64 8, !1392, i64 7232, i64 8, !1392, i64 7240, i64 8, !1392, i64 7248, i64 4, !1444, i64 7252, i64 4, !1444, i64 7256, i64 4, !1444, i64 7260, i64 4, !1444, i64 7264, i64 4, !1444, i64 7268, i64 4, !1444, i64 7272, i64 4, !1444, i64 7276, i64 4, !1444, i64 7280, i64 4, !1444, i64 7284, i64 4, !1444, i64 7288, i64 4, !1444, i64 7292, i64 8, !1445, i64 7300, i64 4, !1444, i64 7304, i64 4, !1444, i64 7308, i64 4, !1444, i64 7312, i64 4, !1444, i64 7316, i64 4, !1444, i64 7320, i64 4, !1444, i64 7324, i64 4, !1444, i64 7328, i64 256, !1445, i64 7584, i64 6144, !1445, i64 13728, i64 4, !1444, i64 13732, i64 4, !1444, i64 13736, i64 128, !1445, i64 13864, i64 4, !1444, i64 13868, i64 4, !1444, i64 13872, i64 4, !1444, i64 13876, i64 4, !1444, i64 13880, i64 4, !1444, i64 13884, i64 4, !1444, i64 13888, i64 4, !1444, i64 13892, i64 4, !1444, i64 13904, i64 4, !1444, i64 13908, i64 4, !1444, i64 13912, i64 4, !1444, i64 13916, i64 4, !1444, i64 13920, i64 8, !1392, i64 13928, i64 8, !1392, i64 13936, i64 8, !1392, i64 13952, i64 4, !1444, i64 13956, i64 460, !1445, i64 14416, i64 8, !1392, i64 14424, i64 16, !1445, i64 14440, i64 8, !1392, i64 14448, i64 144, !1445, i64 14592, i64 4, !1444, i64 14596, i64 4, !1444, i64 14600, i64 4, !1444, i64 14604, i64 4, !1444, i64 14608, i64 4, !1444, i64 14612, i64 4, !1444, i64 14616, i64 4, !1444, i64 14624, i64 8, !1447, i64 14632, i64 8, !1447, i64 14640, i64 16, !1445, i64 14656, i64 8, !1447, i64 14664, i64 8, !1447, i64 14672, i64 4, !1444, i64 14676, i64 4, !1444, i64 14680, i64 8, !1392, i64 14688, i64 8, !1392, i64 14696, i64 4, !1444, i64 14704, i64 152, !1445, i64 14856, i64 4, !1444, i64 14864, i64 152, !1445, i64 15016, i64 8, !1445, i64 15024, i64 4, !1444, i64 15028, i64 4, !1444, i64 15032, i64 8, !1447, i64 15040, i64 32, !1445, i64 15072, i64 16, !1445, i64 15088, i64 512, !1445, i64 15600, i64 768, !1445, i64 16368, i64 4, !1444, i64 16372, i64 4, !1444, i64 16376, i64 4, !1444, i64 16380, i64 4, !1444, i64 16384, i64 4, !1444, i64 16388, i64 4, !1444, i64 16392, i64 4, !1444, i64 16396, i64 4, !1444, i64 16400, i64 4, !1444, i64 16404, i64 4, !1444, i64 16408, i64 4, !1444, i64 16412, i64 4, !1444, i64 16416, i64 4, !1444, i64 16420, i64 4, !1444, i64 16424, i64 4, !1444, i64 16428, i64 4, !1444, i64 16432, i64 4, !1444, i64 16436, i64 4, !1444, i64 16440, i64 8, !1445, i64 16448, i64 8, !1445, i64 16456, i64 8, !1445, i64 16464, i64 8, !1445, i64 16472, i64 8, !1445, i64 16480, i64 8, !1445, i64 16488, i64 4, !1444, i64 16492, i64 16, !1445, i64 16508, i64 64, !1445, i64 16572, i64 4, !1444, i64 16576, i64 4, !1444, i64 16580, i64 4, !1444, i64 16584, i64 4, !1444, i64 16588, i64 4, !1444, i64 16592, i64 4, !1444, i64 16596, i64 4, !1444, i64 16600, i64 4, !1444, i64 16604, i64 4, !1444, i64 16608, i64 4, !1444, i64 16612, i64 4, !1444, i64 16616, i64 8, !1392, i64 16624, i64 8, !1392, i64 16632, i64 8, !1392, i64 16640, i64 8, !1392, i64 16648, i64 8, !1392, i64 16656, i64 8, !1392, i64 16664, i64 8, !1392, i64 16672, i64 16, !1445, i64 16688, i64 16, !1445, i64 16704, i64 16, !1445, i64 16720, i64 512, !1445, i64 17232, i64 8, !1392, i64 17240, i64 8, !1392, i64 17248, i64 8, !1392, i64 17256, i64 128, !1445, i64 17384, i64 4, !1444, i64 17388, i64 4, !1444, i64 17392, i64 4, !1445, i64 17396, i64 4, !1444, i64 17400, i64 4, !1444, i64 17404, i64 4, !1444, i64 17408, i64 4, !1444, i64 17412, i64 4, !1444, i64 17416, i64 4, !1444, i64 17420, i64 4, !1444, i64 17424, i64 4, !1444, i64 17428, i64 4, !1444, i64 17440, i64 384, !1445, i64 17824, i64 864, !1445, i64 18688, i64 256, !1445, i64 18944, i64 256, !1445, i64 19200, i64 384, !1445, i64 19584, i64 480, !1445, i64 20064, i64 16, !1445, i64 20080, i64 16, !1445, i64 20096, i64 4, !1444, i64 20100, i64 4, !1444, i64 20112, i64 512, !1445, i64 20624, i64 512, !1445, i64 21136, i64 72, !1445, i64 21216, i64 128, !1445, i64 21344, i64 24, !1445, i64 21368, i64 24, !1445, i64 21392, i64 24, !1445, i64 21416, i64 8, !1445, i64 21424, i64 3072, !1445, i64 24496, i64 256, !1445, i64 24752, i64 256, !1445, i64 25008, i64 12, !1445, i64 25024, i64 40, !1445, i64 25072, i64 48, !1445, i64 25120, i64 80, !1445, i64 25200, i64 320, !1445, i64 25520, i64 160, !1445, i64 25680, i64 40, !1445, i64 25720, i64 32, !1445, i64 25752, i64 8, !1445, i64 25760, i64 4, !1444, i64 25764, i64 4, !1445, i64 25768, i64 4, !1444, i64 25772, i64 4, !1444, i64 25776, i64 4, !1444, i64 25780, i64 4, !1444, i64 25792, i64 4, !1444, i64 25796, i64 4, !1444, i64 25800, i64 4, !1444, i64 25804, i64 4, !1444, i64 25808, i64 4, !1444, i64 25812, i64 4, !1444, i64 25816, i64 4, !1444, i64 25820, i64 4, !1444, i64 25824, i64 16, !1445, i64 25840, i64 4, !1444, i64 25844, i64 4, !1444, i64 25848, i64 512, !1445, i64 26360, i64 8, !1392, i64 26368, i64 256, !1445, i64 26624, i64 8, !1392, i64 26632, i64 18, !1445, i64 26652, i64 4, !1444, i64 26656, i64 34, !1445, i64 26704, i64 8, !1392, i64 26712, i64 4, !1444, i64 26716, i64 4, !1444, i64 26720, i64 4, !1444, i64 26724, i64 76, !1445, i64 26800, i64 4, !1444, i64 26804, i64 4, !1444, i64 26808, i64 4, !1444, i64 26812, i64 8, !1445, i64 26820, i64 256, !1445, i64 27076, i64 68, !1445, i64 27144, i64 24, !1445, i64 27168, i64 208, !1445, i64 27376, i64 8, !1445, i64 27384, i64 24, !1445, i64 27408, i64 8, !1448, i64 27416, i64 20, !1445, i64 27440, i64 40, !1445, i64 27480, i64 40, !1445, i64 27520, i64 68, !1445, i64 27592, i64 40, !1445, i64 27632, i64 40, !1445, i64 27672, i64 40, !1445, i64 27712, i64 40, !1445, i64 27752, i64 40, !1445, i64 27792, i64 40, !1445, i64 27832, i64 760, !1445, i64 28592, i64 272, !1445, i64 28864, i64 16, !1445, i64 28880, i64 1024, !1445, i64 29904, i64 48, !1445, i64 29952, i64 416, !1445, i64 30368, i64 8, !1445, i64 30376, i64 8, !1445, i64 30384, i64 12, !1445, i64 30400, i64 512, !1445, i64 30912, i64 256, !1445, i64 31168, i64 8, !1445, i64 31176, i64 8, !1392, i64 31184, i64 48, !1445, i64 31232, i64 16, !1445, i64 31248, i64 56, !1445, i64 31304, i64 56, !1445, i64 31360, i64 96, !1445, i64 31456, i64 96, !1445, i64 31552, i64 8, !1392, i64 31560, i64 56, !1445, i64 31616, i64 56, !1445, i64 31672, i64 56, !1445, i64 31728, i64 56, !1445, i64 31784, i64 32, !1445, i64 31816, i64 56, !1445, i64 31872, i64 56, !1445, i64 31928, i64 56, !1445, i64 31984, i64 56, !1445, i64 32040, i64 56, !1445, i64 32096, i64 56, !1445, i64 32152, i64 8, !1392, i64 32160, i64 32, !1445, i64 32192, i64 32, !1445, i64 32224, i64 8, !1392, i64 32232, i64 8, !1392, i64 32240, i64 56, !1445, i64 32296, i64 56, !1445, i64 32352, i64 56, !1445, i64 32408, i64 56, !1445, i64 32464, i64 56, !1445, i64 32520, i64 8, !1392, i64 32528, i64 8, !1392, i64 32536, i64 8, !1392, i64 32544, i64 8, !1392, i64 32552, i64 8, !1392, i64 32560, i64 8, !1392, i64 32568, i64 8, !1392, i64 32576, i64 8, !1392, i64 32584, i64 8, !1392, i64 32592, i64 8, !1392, i64 32600, i64 8, !1392, i64 32608, i64 8, !1392, i64 32616, i64 8, !1392, i64 32624, i64 8, !1392, i64 32632, i64 8, !1392, i64 32640, i64 80, !1445, i64 32720, i64 56, !1445, i64 32776, i64 8, !1392, i64 32784, i64 8, !1392, i64 32792, i64 8, !1392, i64 32800, i64 8, !1392, i64 32808, i64 8, !1392, i64 32816, i64 8, !1392, i64 32824, i64 8, !1392, i64 32832, i64 8, !1392, i64 32840, i64 8, !1392, i64 32848, i64 8, !1392, i64 32856, i64 8, !1392, i64 32864, i64 8, !1392, i64 32872, i64 8, !1392, i64 32880, i64 8, !1392, i64 32888, i64 8, !1392, i64 32896, i64 8, !1392, i64 32904, i64 8, !1392, i64 32912, i64 8, !1392, i64 32920, i64 8, !1392, i64 32928, i64 8, !1392, i64 32936, i64 8, !1392, i64 32944, i64 8, !1392, i64 32952, i64 8, !1392, i64 32960, i64 8, !1392, i64 32968, i64 8, !1392, i64 32976, i64 8, !1392, i64 32984, i64 8, !1392, i64 32992, i64 8, !1392, i64 33000, i64 8, !1392, i64 33008, i64 8, !1392, i64 33016, i64 8, !1392, i64 33024, i64 8, !1392, i64 33032, i64 8, !1392, i64 33040, i64 8, !1392, i64 33048, i64 8, !1392, i64 33056, i64 8, !1392, i64 33064, i64 8, !1392, i64 33072, i64 8, !1392, i64 33080, i64 8, !1392, i64 33088, i64 8, !1392, i64 33096, i64 8, !1392, i64 33104, i64 8, !1392, i64 33112, i64 8, !1392, i64 33120, i64 8, !1392, i64 33128, i64 8, !1392, i64 33136, i64 8, !1392, i64 33144, i64 8, !1392, i64 33152, i64 8, !1392, i64 33160, i64 8, !1392, i64 33168, i64 48, !1445, i64 33216, i64 40, !1445, i64 33256, i64 16, !1445, i64 33272, i64 16, !1445, i64 33288, i64 16, !1445, i64 33304, i64 16, !1445, i64 33320, i64 8, !1392, i64 33328, i64 8, !1392}
!1444 = !{!1349, !1349, i64 0}
!1445 = !{!1350, !1350, i64 0}
!1446 = !{!1355, !1355, i64 0}
!1447 = !{!1359, !1359, i64 0}
!1448 = !{!1369, !1369, i64 0}
!1449 = !DILocation(line: 150, column: 9, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !9, file: !10, line: 150, column: 9)
!1451 = !DILocation(line: 150, column: 9, scope: !9)
!1452 = !DILocation(line: 153, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !9, file: !10, line: 153, column: 9)
!1454 = !DILocation(line: 153, column: 54, scope: !1453)
!1455 = !DILocation(line: 153, column: 9, scope: !9)
!1456 = !DILocation(line: 158, column: 11, scope: !9)
!1457 = !DILocation(line: 158, column: 27, scope: !9)
!1458 = !{!1385, !1350, i64 1}
!1459 = !DILocation(line: 160, column: 5, scope: !9)
!1460 = !DILocation(line: 161, column: 1, scope: !9)
!1461 = !DILocation(line: 162, column: 5, scope: !9)
!1462 = !DILocation(line: 163, column: 5, scope: !9)
!1463 = !DILocation(line: 164, column: 1, scope: !9)
!1464 = !DISubprogram(name: "x264_malloc", scope: !18, file: !18, line: 174, type: !1465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!89, !13}
!1467 = !{}
!1468 = !DISubprogram(name: "x264_synch_frame_list_init", scope: !515, file: !515, line: 205, type: !1469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!13, !1471, !13}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1472 = !DISubprogram(name: "x264_macroblock_cache_allocate", scope: !1473, file: !1473, line: 269, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1473 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!13, !14}
!1476 = !DISubprogram(name: "x264_macroblock_thread_allocate", scope: !1473, file: !1473, line: 273, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1477 = !DISubprogram(name: "x264_free", scope: !18, file: !18, line: 175, type: !197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1478 = distinct !DISubprogram(name: "x264_lookahead_delete", scope: !10, file: !10, line: 166, type: !1479, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !14}
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "h", arg: 1, scope: !1478, file: !10, line: 166, type: !14)
!1483 = !DILocation(line: 0, scope: !1478)
!1484 = !DILocation(line: 168, column: 18, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1478, file: !10, line: 168, column: 9)
!1486 = !DILocation(line: 168, column: 9, scope: !1485)
!1487 = !DILocation(line: 168, column: 9, scope: !1478)
!1488 = !DILocation(line: 171, column: 12, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !10, line: 169, column: 5)
!1490 = !DILocation(line: 171, column: 37, scope: !1489)
!1491 = !{!1385, !1350, i64 0}
!1492 = !DILocation(line: 175, column: 56, scope: !1489)
!1493 = !DILocation(line: 175, column: 37, scope: !1489)
!1494 = !DILocation(line: 175, column: 9, scope: !1489)
!1495 = !DILocation(line: 176, column: 57, scope: !1489)
!1496 = !DILocation(line: 176, column: 38, scope: !1489)
!1497 = !DILocation(line: 176, column: 9, scope: !1489)
!1498 = !DILocation(line: 177, column: 39, scope: !1489)
!1499 = !DILocation(line: 177, column: 20, scope: !1489)
!1500 = !DILocation(line: 177, column: 9, scope: !1489)
!1501 = !DILocation(line: 178, column: 5, scope: !1489)
!1502 = !DILocation(line: 179, column: 39, scope: !1478)
!1503 = !DILocation(line: 179, column: 50, scope: !1478)
!1504 = !DILocation(line: 179, column: 5, scope: !1478)
!1505 = !DILocation(line: 180, column: 39, scope: !1478)
!1506 = !DILocation(line: 180, column: 50, scope: !1478)
!1507 = !DILocation(line: 180, column: 5, scope: !1478)
!1508 = !DILocation(line: 181, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1478, file: !10, line: 181, column: 9)
!1510 = !DILocation(line: 181, column: 23, scope: !1509)
!1511 = !{!1385, !1353, i64 16}
!1512 = !DILocation(line: 181, column: 9, scope: !1509)
!1513 = !DILocation(line: 181, column: 9, scope: !1478)
!1514 = !DILocation(line: 182, column: 9, scope: !1509)
!1515 = !DILocation(line: 183, column: 39, scope: !1478)
!1516 = !DILocation(line: 183, column: 50, scope: !1478)
!1517 = !DILocation(line: 183, column: 5, scope: !1478)
!1518 = !DILocation(line: 184, column: 19, scope: !1478)
!1519 = !DILocation(line: 184, column: 5, scope: !1478)
!1520 = !DILocation(line: 185, column: 1, scope: !1478)
!1521 = !DISubprogram(name: "x264_macroblock_cache_free", scope: !1473, file: !1473, line: 270, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1522 = !DISubprogram(name: "x264_macroblock_thread_free", scope: !1473, file: !1473, line: 274, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !14, !13}
!1525 = !DISubprogram(name: "x264_synch_frame_list_delete", scope: !515, file: !515, line: 206, type: !1526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{null, !1471}
!1528 = !DISubprogram(name: "x264_frame_push_unused", scope: !515, file: !515, line: 196, type: !1529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !14, !513}
!1531 = distinct !DISubprogram(name: "x264_lookahead_put_frame", scope: !10, file: !10, line: 187, type: !1529, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1532)
!1532 = !{!1533, !1534}
!1533 = !DILocalVariable(name: "h", arg: 1, scope: !1531, file: !10, line: 187, type: !14)
!1534 = !DILocalVariable(name: "frame", arg: 2, scope: !1531, file: !10, line: 187, type: !513)
!1535 = !DILocation(line: 0, scope: !1531)
!1536 = !DILocation(line: 189, column: 18, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !10, line: 189, column: 9)
!1538 = !DILocation(line: 189, column: 9, scope: !1537)
!1539 = !DILocation(line: 0, scope: !1537)
!1540 = !DILocation(line: 189, column: 9, scope: !1531)
!1541 = !DILocation(line: 190, column: 52, scope: !1537)
!1542 = !DILocation(line: 190, column: 9, scope: !1537)
!1543 = !DILocation(line: 192, column: 52, scope: !1537)
!1544 = !DILocation(line: 193, column: 1, scope: !1531)
!1545 = !DISubprogram(name: "x264_synch_frame_list_push", scope: !515, file: !515, line: 207, type: !1546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1471, !513}
!1548 = distinct !DISubprogram(name: "x264_lookahead_is_empty", scope: !10, file: !10, line: 195, type: !1474, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1549)
!1549 = !{!1550, !1551}
!1550 = !DILocalVariable(name: "h", arg: 1, scope: !1548, file: !10, line: 195, type: !14)
!1551 = !DILocalVariable(name: "b_empty", scope: !1548, file: !10, line: 199, type: !13)
!1552 = !DILocation(line: 0, scope: !1548)
!1553 = !DILocation(line: 199, column: 23, scope: !1548)
!1554 = !DILocation(line: 199, column: 39, scope: !1548)
!1555 = !{!1385, !1349, i64 68}
!1556 = !DILocation(line: 199, column: 20, scope: !1548)
!1557 = !DILocation(line: 199, column: 46, scope: !1548)
!1558 = !DILocation(line: 199, column: 70, scope: !1548)
!1559 = !{!1385, !1349, i64 100}
!1560 = !DILocation(line: 199, column: 49, scope: !1548)
!1561 = !DILocation(line: 202, column: 5, scope: !1548)
!1562 = distinct !DISubprogram(name: "x264_lookahead_get_frames", scope: !10, file: !10, line: 218, type: !1479, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1563)
!1563 = !{!1564}
!1564 = !DILocalVariable(name: "h", arg: 1, scope: !1562, file: !10, line: 218, type: !14)
!1565 = !DILocation(line: 0, scope: !1562)
!1566 = !DILocation(line: 220, column: 18, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !10, line: 220, column: 9)
!1568 = !DILocation(line: 220, column: 9, scope: !1567)
!1569 = !DILocation(line: 220, column: 9, scope: !1562)
!1570 = !DILocation(line: 223, column: 44, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !10, line: 221, column: 5)
!1572 = !DILocation(line: 223, column: 9, scope: !1571)
!1573 = distinct !{!1573, !1572, !1574, !1399, !1400}
!1574 = !DILocation(line: 224, column: 95, scope: !1571)
!1575 = !DILocalVariable(name: "h", arg: 1, scope: !1576, file: !10, line: 205, type: !14)
!1576 = distinct !DISubprogram(name: "x264_lookahead_encoder_shift", scope: !10, file: !10, line: 205, type: !1479, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1577)
!1577 = !{!1575, !1578}
!1578 = !DILocalVariable(name: "i_frames", scope: !1576, file: !10, line: 209, type: !13)
!1579 = !DILocation(line: 0, scope: !1576, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 225, column: 9, scope: !1571)
!1581 = !DILocation(line: 207, column: 24, scope: !1582, inlinedAt: !1580)
!1582 = distinct !DILexicalBlock(scope: !1576, file: !10, line: 207, column: 9)
!1583 = !DILocation(line: 209, column: 40, scope: !1576, inlinedAt: !1580)
!1584 = !{!1385, !1353, i64 88}
!1585 = !DILocation(line: 209, column: 20, scope: !1576, inlinedAt: !1580)
!1586 = !DILocation(line: 209, column: 49, scope: !1576, inlinedAt: !1580)
!1587 = !{!1588, !1350, i64 86}
!1588 = !{!"x264_frame", !1349, i64 0, !1349, i64 4, !1349, i64 8, !1359, i64 16, !1359, i64 24, !1349, i64 32, !1349, i64 36, !1349, i64 40, !1349, i64 44, !1353, i64 48, !1349, i64 56, !1349, i64 60, !1349, i64 64, !1349, i64 68, !1349, i64 72, !1349, i64 76, !1349, i64 80, !1350, i64 84, !1350, i64 85, !1350, i64 86, !1355, i64 88, !1355, i64 92, !1349, i64 96, !1349, i64 100, !1350, i64 104, !1350, i64 116, !1350, i64 128, !1349, i64 140, !1349, i64 144, !1349, i64 148, !1350, i64 152, !1350, i64 176, !1350, i64 208, !1353, i64 240, !1350, i64 248, !1350, i64 280, !1350, i64 320, !1350, i64 3392, !1349, i64 3520, !1353, i64 3528, !1353, i64 3536, !1353, i64 3544, !1350, i64 3552, !1353, i64 3568, !1350, i64 3576, !1350, i64 3848, !1350, i64 6440, !1350, i64 6712, !1350, i64 6728, !1350, i64 6736, !1350, i64 6864, !1350, i64 6868, !1350, i64 8164, !1349, i64 9460, !1350, i64 9464, !1350, i64 9536, !1353, i64 12128, !1353, i64 12136, !1353, i64 12144, !1353, i64 12152, !1353, i64 12160, !1349, i64 12168, !1353, i64 12176, !1353, i64 12184, !1353, i64 12192, !1349, i64 12200, !1350, i64 12204, !1349, i64 12276, !1359, i64 12280, !1589, i64 12288, !1350, i64 12320, !1350, i64 12572, !1350, i64 13576, !1349, i64 15584, !1349, i64 15588, !1349, i64 15592, !1349, i64 15596, !1349, i64 15600, !1349, i64 15604, !1349, i64 15608, !1355, i64 15612, !1349, i64 15616, !1349, i64 15620, !1349, i64 15624}
!1589 = !{!"", !1369, i64 0, !1369, i64 8, !1369, i64 16, !1369, i64 24}
!1590 = !DILocation(line: 212, column: 36, scope: !1591, inlinedAt: !1580)
!1591 = distinct !DILexicalBlock(scope: !1576, file: !10, line: 211, column: 5)
!1592 = !{!1347, !1353, i64 14416}
!1593 = !DILocation(line: 212, column: 45, scope: !1591, inlinedAt: !1580)
!1594 = !DILocation(line: 212, column: 9, scope: !1591, inlinedAt: !1580)
!1595 = !DILocation(line: 213, column: 12, scope: !1591, inlinedAt: !1580)
!1596 = !DILocation(line: 213, column: 29, scope: !1591, inlinedAt: !1580)
!1597 = !DILocation(line: 213, column: 35, scope: !1591, inlinedAt: !1580)
!1598 = !DILocation(line: 210, column: 5, scope: !1576, inlinedAt: !1580)
!1599 = distinct !{!1599, !1598, !1600, !1399, !1400}
!1600 = !DILocation(line: 214, column: 5, scope: !1576, inlinedAt: !1580)
!1601 = !DILocation(line: 212, column: 83, scope: !1591, inlinedAt: !1580)
!1602 = !DILocation(line: 210, column: 20, scope: !1576, inlinedAt: !1580)
!1603 = !DILocation(line: 231, column: 16, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !10, line: 231, column: 13)
!1605 = distinct !DILexicalBlock(scope: !1567, file: !10, line: 229, column: 5)
!1606 = !DILocation(line: 231, column: 23, scope: !1604)
!1607 = !DILocation(line: 231, column: 13, scope: !1604)
!1608 = !DILocation(line: 231, column: 34, scope: !1604)
!1609 = !DILocation(line: 231, column: 41, scope: !1604)
!1610 = !DILocation(line: 231, column: 57, scope: !1604)
!1611 = !DILocation(line: 231, column: 38, scope: !1604)
!1612 = !DILocation(line: 231, column: 13, scope: !1605)
!1613 = !DILocation(line: 234, column: 9, scope: !1605)
!1614 = !DILocation(line: 235, column: 48, scope: !1605)
!1615 = !DILocation(line: 235, column: 59, scope: !1605)
!1616 = !DILocation(line: 235, column: 64, scope: !1605)
!1617 = !{!1385, !1353, i64 56}
!1618 = !DILocation(line: 235, column: 45, scope: !1605)
!1619 = !DILocalVariable(name: "h", arg: 1, scope: !1620, file: !10, line: 57, type: !14)
!1620 = distinct !DISubprogram(name: "x264_lookahead_update_last_nonb", scope: !10, file: !10, line: 57, type: !1529, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1621)
!1621 = !{!1619, !1622}
!1622 = !DILocalVariable(name: "new_nonb", arg: 2, scope: !1620, file: !10, line: 57, type: !513)
!1623 = !DILocation(line: 0, scope: !1620, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 235, column: 9, scope: !1605)
!1625 = !DILocation(line: 59, column: 23, scope: !1626, inlinedAt: !1624)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !10, line: 59, column: 9)
!1627 = !DILocation(line: 59, column: 9, scope: !1626, inlinedAt: !1624)
!1628 = !DILocation(line: 59, column: 9, scope: !1620, inlinedAt: !1624)
!1629 = !DILocation(line: 60, column: 9, scope: !1626, inlinedAt: !1624)
!1630 = !DILocation(line: 61, column: 8, scope: !1620, inlinedAt: !1624)
!1631 = !DILocation(line: 236, column: 93, scope: !1605)
!1632 = !DILocation(line: 236, column: 35, scope: !1605)
!1633 = !DILocation(line: 61, column: 19, scope: !1620, inlinedAt: !1624)
!1634 = !DILocation(line: 61, column: 29, scope: !1620, inlinedAt: !1624)
!1635 = !DILocation(line: 62, column: 15, scope: !1620, inlinedAt: !1624)
!1636 = !DILocation(line: 62, column: 32, scope: !1620, inlinedAt: !1624)
!1637 = !{!1588, !1349, i64 15600}
!1638 = !DILocation(line: 236, column: 46, scope: !1605)
!1639 = !DILocation(line: 236, column: 68, scope: !1605)
!1640 = !DILocation(line: 236, column: 74, scope: !1605)
!1641 = !DILocation(line: 236, column: 102, scope: !1605)
!1642 = !DILocation(line: 236, column: 112, scope: !1605)
!1643 = !DILocalVariable(name: "dst", arg: 1, scope: !1644, file: !10, line: 40, type: !1471)
!1644 = distinct !DISubprogram(name: "x264_lookahead_shift", scope: !10, file: !10, line: 40, type: !1645, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{null, !1471, !1471, !13}
!1647 = !{!1643, !1648, !1649, !1650}
!1648 = !DILocalVariable(name: "src", arg: 2, scope: !1644, file: !10, line: 40, type: !1471)
!1649 = !DILocalVariable(name: "count", arg: 3, scope: !1644, file: !10, line: 40, type: !13)
!1650 = !DILocalVariable(name: "i", scope: !1644, file: !10, line: 42, type: !13)
!1651 = !DILocation(line: 0, scope: !1644, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 236, column: 9, scope: !1605)
!1653 = !DILocation(line: 43, column: 5, scope: !1644, inlinedAt: !1652)
!1654 = !DILocation(line: 43, column: 13, scope: !1644, inlinedAt: !1652)
!1655 = !DILocation(line: 47, column: 61, scope: !1656, inlinedAt: !1652)
!1656 = distinct !DILexicalBlock(scope: !1644, file: !10, line: 44, column: 5)
!1657 = !{!1386, !1353, i64 0}
!1658 = !DILocation(line: 47, column: 38, scope: !1656, inlinedAt: !1652)
!1659 = !DILocation(line: 47, column: 14, scope: !1656, inlinedAt: !1652)
!1660 = !DILocation(line: 47, column: 31, scope: !1656, inlinedAt: !1652)
!1661 = !{!1386, !1349, i64 12}
!1662 = !DILocation(line: 47, column: 9, scope: !1656, inlinedAt: !1652)
!1663 = !DILocation(line: 47, column: 36, scope: !1656, inlinedAt: !1652)
!1664 = !DILocation(line: 48, column: 20, scope: !1656, inlinedAt: !1652)
!1665 = distinct !{!1665, !1653, !1666, !1399, !1400}
!1666 = !DILocation(line: 49, column: 5, scope: !1644, inlinedAt: !1652)
!1667 = !DILocation(line: 239, column: 16, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1605, file: !10, line: 239, column: 13)
!1669 = !DILocation(line: 239, column: 27, scope: !1668)
!1670 = !DILocation(line: 239, column: 13, scope: !1668)
!1671 = !DILocation(line: 239, column: 46, scope: !1668)
!1672 = !DILocation(line: 239, column: 49, scope: !1668)
!1673 = !{!1588, !1349, i64 4}
!1674 = !DILocation(line: 240, column: 13, scope: !1668)
!1675 = !DILocation(line: 207, column: 13, scope: !1582, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 242, column: 9, scope: !1605)
!1677 = !DILocation(line: 0, scope: !1576, inlinedAt: !1676)
!1678 = !DILocation(line: 207, column: 30, scope: !1582, inlinedAt: !1676)
!1679 = !DILocation(line: 207, column: 10, scope: !1582, inlinedAt: !1676)
!1680 = !DILocation(line: 207, column: 9, scope: !1576, inlinedAt: !1676)
!1681 = !DILocation(line: 207, column: 24, scope: !1582, inlinedAt: !1676)
!1682 = !DILocation(line: 209, column: 40, scope: !1576, inlinedAt: !1676)
!1683 = !DILocation(line: 209, column: 20, scope: !1576, inlinedAt: !1676)
!1684 = !DILocation(line: 209, column: 49, scope: !1576, inlinedAt: !1676)
!1685 = !DILocation(line: 212, column: 36, scope: !1591, inlinedAt: !1676)
!1686 = !DILocation(line: 212, column: 45, scope: !1591, inlinedAt: !1676)
!1687 = !DILocation(line: 212, column: 9, scope: !1591, inlinedAt: !1676)
!1688 = !DILocation(line: 213, column: 12, scope: !1591, inlinedAt: !1676)
!1689 = !DILocation(line: 213, column: 29, scope: !1591, inlinedAt: !1676)
!1690 = !DILocation(line: 213, column: 35, scope: !1591, inlinedAt: !1676)
!1691 = !DILocation(line: 210, column: 5, scope: !1576, inlinedAt: !1676)
!1692 = distinct !{!1692, !1691, !1693, !1399, !1400}
!1693 = !DILocation(line: 214, column: 5, scope: !1576, inlinedAt: !1676)
!1694 = !DILocation(line: 212, column: 83, scope: !1591, inlinedAt: !1676)
!1695 = !DILocation(line: 210, column: 20, scope: !1576, inlinedAt: !1676)
!1696 = !DILocation(line: 244, column: 1, scope: !1562)
!1697 = !DISubprogram(name: "x264_slicetype_decide", scope: !1698, file: !1698, line: 31, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1698 = !DIFile(filename: "apps/525.x264_r/src/x264_src/encoder/analyse.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcc4e1839a8c83d6cd319084cb483d0b")
!1699 = !DISubprogram(name: "x264_slicetype_analyse", scope: !1698, file: !1698, line: 33, type: !1523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1700 = !DISubprogram(name: "x264_frame_push", scope: !515, file: !515, line: 192, type: !1701, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{null, !512, !513}
!1703 = !DISubprogram(name: "x264_frame_shift", scope: !515, file: !515, line: 195, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1467)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!513, !512}
