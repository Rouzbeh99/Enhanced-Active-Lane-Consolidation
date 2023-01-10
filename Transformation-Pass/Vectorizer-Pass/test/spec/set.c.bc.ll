; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/set.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

@dequant4_scale = internal unnamed_addr constant [6 x [3 x i8]] [[3 x i8] c"\0A\0D\10", [3 x i8] c"\0B\0E\12", [3 x i8] c"\0D\10\14", [3 x i8] c"\0E\12\17", [3 x i8] c"\10\14\19", [3 x i8] c"\12\17\1D"], align 16, !dbg !0
@quant4_scale = internal unnamed_addr constant [6 x [3 x i16]] [[3 x i16] [i16 13107, i16 8066, i16 5243], [3 x i16] [i16 11916, i16 7490, i16 4660], [3 x i16] [i16 10082, i16 6554, i16 4194], [3 x i16] [i16 9362, i16 5825, i16 3647], [3 x i16] [i16 8192, i16 5243, i16 3355], [3 x i16] [i16 7282, i16 4559, i16 2893]], align 16, !dbg !16
@quant8_scan = internal unnamed_addr constant [16 x i8] c"\00\03\04\03\03\01\05\01\04\05\02\05\03\01\05\01", align 16, !dbg !29
@dequant8_scale = internal unnamed_addr constant [6 x [6 x i8]] [[6 x i8] c"\14\12 \13\19\18", [6 x i8] c"\16\13#\15\1C\1A", [6 x i8] c"\1A\17*\18!\1F", [6 x i8] c"\1C\19-\1A#!", [6 x i8] c" \1C3\1E(&", [6 x i8] c"$ :\22.+"], align 16, !dbg !38
@quant8_scale = internal unnamed_addr constant [6 x [6 x i16]] [[6 x i16] [i16 13107, i16 11428, i16 20972, i16 12222, i16 16777, i16 15481], [6 x i16] [i16 11916, i16 10826, i16 19174, i16 11058, i16 14980, i16 14290], [6 x i16] [i16 10082, i16 8943, i16 15978, i16 9675, i16 12710, i16 11985], [6 x i16] [i16 9362, i16 8228, i16 14913, i16 8931, i16 11984, i16 11259], [6 x i16] [i16 8192, i16 7346, i16 13159, i16 7740, i16 10486, i16 9777], [6 x i16] [i16 7282, i16 6428, i16 11570, i16 6830, i16 9118, i16 8640]], align 16, !dbg !42
@.str = private unnamed_addr constant [64 x i8] c"Quantization overflow.  Your CQM is incompatible with QP < %d,\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"but min QP is set to %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"but min chroma QP is implied to be %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"can't open file '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"INTRA4X4_LUMA\00", align 1
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16, !dbg !45
@.str.6 = private unnamed_addr constant [16 x i8] c"INTRA4X4_CHROMA\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"INTER4X4_LUMA\00", align 1
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16, !dbg !47
@.str.8 = private unnamed_addr constant [16 x i8] c"INTER4X4_CHROMA\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"INTRA8X8_LUMA\00", align 1
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16, !dbg !49
@.str.10 = private unnamed_addr constant [14 x i8] c"INTER8X8_LUMA\00", align 1
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16, !dbg !54
@.str.11 = private unnamed_addr constant [4 x i8] c"INT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \09\0A,\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"bad coefficient in list '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"not enough coefficients in list '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_init(ptr noundef %h) local_unnamed_addr #0 !dbg !64 {
entry:
  %def_quant4 = alloca [6 x [16 x i32]], align 16
  %def_quant8 = alloca [6 x [64 x i32]], align 16
  %def_dequant4 = alloca [6 x [16 x i32]], align 16
  %def_dequant8 = alloca [6 x [64 x i32]], align 16
  %quant4_mf = alloca [4 x [6 x [16 x i32]]], align 16
  %quant8_mf = alloca [2 x [6 x [64 x i32]]], align 16
  %deadzone = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %h, metadata !1367, metadata !DIExpression()), !dbg !1444
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_quant4) #9, !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %def_quant4, metadata !1368, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_quant8) #9, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %def_quant8, metadata !1371, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %def_dequant4) #9, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %def_dequant4, metadata !1374, metadata !DIExpression()), !dbg !1450
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %def_dequant8) #9, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %def_dequant8, metadata !1375, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.start.p0(i64 1536, ptr nonnull %quant4_mf) #9, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %quant4_mf, metadata !1376, metadata !DIExpression()), !dbg !1454
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %quant8_mf) #9, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %quant8_mf, metadata !1379, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %deadzone) #9, !dbg !1457
  call void @llvm.dbg.declare(metadata ptr %deadzone, metadata !1382, metadata !DIExpression()), !dbg !1458
  %i_luma_deadzone = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 21, !dbg !1459
  %arrayidx = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 21, i64 1, !dbg !1460
  %0 = load i32, ptr %arrayidx, align 4, !dbg !1460, !tbaa !1461
  %sub = sub nsw i32 32, %0, !dbg !1465
  store i32 %sub, ptr %deadzone, align 16, !dbg !1466, !tbaa !1461
  %arrayinit.element = getelementptr inbounds i32, ptr %deadzone, i64 1, !dbg !1466
  %1 = load i32, ptr %i_luma_deadzone, align 4, !dbg !1467, !tbaa !1461
  %sub5 = sub nsw i32 32, %1, !dbg !1468
  store i32 %sub5, ptr %arrayinit.element, align 4, !dbg !1466, !tbaa !1461
  %arrayinit.element6 = getelementptr inbounds i32, ptr %deadzone, i64 2, !dbg !1466
  store i32 21, ptr %arrayinit.element6, align 8, !dbg !1466, !tbaa !1461
  %arrayinit.element7 = getelementptr inbounds i32, ptr %deadzone, i64 3, !dbg !1466
  store i32 11, ptr %arrayinit.element7, align 4, !dbg !1466, !tbaa !1461
  call void @llvm.dbg.value(metadata i32 -1, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 -1, metadata !1384, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 0, metadata !1385, metadata !DIExpression()), !dbg !1469
  %pps = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 26
  br label %for.cond8.preheader, !dbg !1470

for.cond8.preheader:                              ; preds = %entry, %for.inc143
  %indvars.iv1205 = phi i64 [ 0, %entry ], [ %indvars.iv.next1206, %for.inc143 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1205, metadata !1385, metadata !DIExpression()), !dbg !1469
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1471
  %cmp91156.not = icmp eq i64 %indvars.iv1205, 0, !dbg !1472
  br i1 %cmp91156.not, label %do.body, label %for.body10.lr.ph, !dbg !1475

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %2 = load ptr, ptr %pps, align 16, !tbaa !1476
  %arrayidx11 = getelementptr inbounds %struct.x264_pps_t, ptr %2, i64 0, i32 17, i64 %indvars.iv1205
  %3 = load ptr, ptr %arrayidx11, align 8, !tbaa !1503
  br label %for.body10, !dbg !1475

for.cond149.preheader:                            ; preds = %for.inc143
  call void @llvm.dbg.value(metadata i32 0, metadata !1392, metadata !DIExpression()), !dbg !1504
  %quant8_mf183 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34
  %arrayidx188 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 1
  %dequant8_mf = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 30
  %arrayidx193 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 30, i64 1
  %unquant8_mf = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32
  %arrayidx198 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32, i64 1
  %cmp260 = icmp eq i32 %1, %0
  %quant8_bias = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36
  %arrayidx289 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 1
  br label %for.cond157.preheader, !dbg !1505

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1391, metadata !DIExpression()), !dbg !1471
  %arrayidx16 = getelementptr inbounds %struct.x264_pps_t, ptr %2, i64 0, i32 17, i64 %indvars.iv, !dbg !1506
  %4 = load ptr, ptr %arrayidx16, align 8, !dbg !1506, !tbaa !1503
  %bcmp1141 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %3, ptr noundef nonnull dereferenceable(16) %4, i64 16), !dbg !1506
  %tobool.not = icmp eq i32 %bcmp1141, 0, !dbg !1506
  br i1 %tobool.not, label %if.then19, label %for.inc, !dbg !1472

for.inc:                                          ; preds = %for.body10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1391, metadata !DIExpression()), !dbg !1471
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv1205, !dbg !1472
  br i1 %exitcond.not, label %do.body, label %for.body10, !dbg !1475, !llvm.loop !1508

if.then19:                                        ; preds = %for.body10
  %idxprom15.le = and i64 %indvars.iv, 4294967295, !dbg !1506
  %arrayidx22 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %idxprom15.le, !dbg !1511
  %5 = load ptr, ptr %arrayidx22, align 8, !dbg !1511, !tbaa !1503
  %arrayidx25 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv1205, !dbg !1511
  store ptr %5, ptr %arrayidx25, align 8, !dbg !1511, !tbaa !1503
  %arrayidx27 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 29, i64 %idxprom15.le, !dbg !1511
  %6 = load ptr, ptr %arrayidx27, align 8, !dbg !1511, !tbaa !1503
  %arrayidx30 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 29, i64 %indvars.iv1205, !dbg !1511
  store ptr %6, ptr %arrayidx30, align 8, !dbg !1511, !tbaa !1503
  %arrayidx32 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %idxprom15.le, !dbg !1511
  %7 = load ptr, ptr %arrayidx32, align 8, !dbg !1511, !tbaa !1503
  %arrayidx35 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %indvars.iv1205, !dbg !1511
  store ptr %7, ptr %arrayidx35, align 8, !dbg !1511, !tbaa !1503
  br label %if.end84, !dbg !1511

do.body:                                          ; preds = %for.inc, %for.cond8.preheader
  %call40 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1514
  %arrayidx43 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv1205, !dbg !1514
  store ptr %call40, ptr %arrayidx43, align 8, !dbg !1514, !tbaa !1503
  %tobool47.not = icmp eq ptr %call40, null, !dbg !1517
  br i1 %tobool47.not, label %fail, label %do.body50, !dbg !1514

do.body50:                                        ; preds = %do.body
  %call55 = tail call ptr @x264_malloc(i32 noundef 384) #9, !dbg !1519
  %arrayidx58 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 29, i64 %indvars.iv1205, !dbg !1519
  store ptr %call55, ptr %arrayidx58, align 8, !dbg !1519, !tbaa !1503
  %tobool62.not = icmp eq ptr %call55, null, !dbg !1521
  br i1 %tobool62.not, label %fail, label %do.body67, !dbg !1519

do.body67:                                        ; preds = %do.body50
  %call72 = tail call ptr @x264_malloc(i32 noundef 3328) #9, !dbg !1523
  %arrayidx75 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %indvars.iv1205, !dbg !1523
  store ptr %call72, ptr %arrayidx75, align 8, !dbg !1523, !tbaa !1503
  %tobool79.not = icmp eq ptr %call72, null, !dbg !1525
  br i1 %tobool79.not, label %fail, label %if.end84, !dbg !1523

if.end84:                                         ; preds = %do.body67, %if.then19
  call void @llvm.dbg.value(metadata i32 0, metadata !1391, metadata !DIExpression()), !dbg !1471
  br i1 %cmp91156.not, label %do.body123, label %for.body88.lr.ph, !dbg !1527

for.body88.lr.ph:                                 ; preds = %if.end84
  %arrayidx92 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1205
  %8 = load i32, ptr %arrayidx92, align 4, !tbaa !1461
  br label %for.body88, !dbg !1527

for.body88:                                       ; preds = %for.body88.lr.ph, %for.inc111
  %indvars.iv1200 = phi i64 [ 0, %for.body88.lr.ph ], [ %indvars.iv.next1201, %for.inc111 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1200, metadata !1391, metadata !DIExpression()), !dbg !1471
  %arrayidx90 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1200, !dbg !1529
  %9 = load i32, ptr %arrayidx90, align 4, !dbg !1529, !tbaa !1461
  %cmp93 = icmp eq i32 %9, %8, !dbg !1529
  br i1 %cmp93, label %land.lhs.true, label %for.inc111, !dbg !1529

land.lhs.true:                                    ; preds = %for.body88
  %10 = load ptr, ptr %pps, align 16, !dbg !1529, !tbaa !1476
  %arrayidx99 = getelementptr inbounds %struct.x264_pps_t, ptr %10, i64 0, i32 17, i64 %indvars.iv1205, !dbg !1529
  %11 = load ptr, ptr %arrayidx99, align 8, !dbg !1529, !tbaa !1503
  %arrayidx104 = getelementptr inbounds %struct.x264_pps_t, ptr %10, i64 0, i32 17, i64 %indvars.iv1200, !dbg !1529
  %12 = load ptr, ptr %arrayidx104, align 8, !dbg !1529, !tbaa !1503
  %bcmp1140 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %11, ptr noundef nonnull dereferenceable(16) %12, i64 16), !dbg !1529
  %tobool108.not = icmp eq i32 %bcmp1140, 0, !dbg !1529
  br i1 %tobool108.not, label %if.then116, label %for.inc111, !dbg !1532

for.inc111:                                       ; preds = %for.body88, %land.lhs.true
  %indvars.iv.next1201 = add nuw nsw i64 %indvars.iv1200, 1, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1201, metadata !1391, metadata !DIExpression()), !dbg !1471
  %exitcond1204.not = icmp eq i64 %indvars.iv.next1201, %indvars.iv1205, !dbg !1532
  br i1 %exitcond1204.not, label %do.body123, label %for.body88, !dbg !1527, !llvm.loop !1533

if.then116:                                       ; preds = %land.lhs.true
  %idxprom89.le = and i64 %indvars.iv1200, 4294967295, !dbg !1529
  %arrayidx118 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %idxprom89.le, !dbg !1534
  %13 = load ptr, ptr %arrayidx118, align 8, !dbg !1534, !tbaa !1503
  %arrayidx121 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv1205, !dbg !1534
  store ptr %13, ptr %arrayidx121, align 8, !dbg !1534, !tbaa !1503
  br label %for.inc143, !dbg !1534

do.body123:                                       ; preds = %for.inc111, %if.end84
  %call128 = tail call ptr @x264_malloc(i32 noundef 1664) #9, !dbg !1536
  %arrayidx131 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv1205, !dbg !1536
  store ptr %call128, ptr %arrayidx131, align 8, !dbg !1536, !tbaa !1503
  %tobool135.not = icmp eq ptr %call128, null, !dbg !1538
  br i1 %tobool135.not, label %fail, label %for.inc143, !dbg !1536

for.inc143:                                       ; preds = %do.body123, %if.then116
  %indvars.iv.next1206 = add nuw nsw i64 %indvars.iv1205, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1206, metadata !1385, metadata !DIExpression()), !dbg !1469
  %exitcond1208.not = icmp eq i64 %indvars.iv.next1206, 4, !dbg !1540
  br i1 %exitcond1208.not, label %for.cond149.preheader, label %for.cond8.preheader, !dbg !1470, !llvm.loop !1541

for.cond157.preheader:                            ; preds = %for.inc314, %for.cond149.preheader
  %indvars.iv1209 = phi i64 [ 0, %for.cond149.preheader ], [ %indvars.iv.next1210, %for.inc314 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1209, metadata !1392, metadata !DIExpression()), !dbg !1504
  br label %for.cond157, !dbg !1542

for.cond157:                                      ; preds = %for.cond157.preheader, %for.body160
  %j156.0 = phi i64 [ 1, %for.body160 ], [ 0, %for.cond157.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1398, metadata !DIExpression()), !dbg !1544
  %cmp158 = icmp ult i64 %j156.0, %indvars.iv1209, !dbg !1545
  br i1 %cmp158, label %for.body160, label %do.body200, !dbg !1542

for.body160:                                      ; preds = %for.cond157
  %14 = load ptr, ptr %pps, align 16, !dbg !1547, !tbaa !1476
  %arrayidx165 = getelementptr inbounds %struct.x264_pps_t, ptr %14, i64 0, i32 17, i64 5, !dbg !1547
  %15 = load ptr, ptr %arrayidx165, align 8, !dbg !1547, !tbaa !1503
  %arrayidx170 = getelementptr inbounds %struct.x264_pps_t, ptr %14, i64 0, i32 17, i64 4, !dbg !1547
  %16 = load ptr, ptr %arrayidx170, align 8, !dbg !1547, !tbaa !1503
  %bcmp1139 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %15, ptr noundef nonnull dereferenceable(64) %16, i64 64), !dbg !1547
  %tobool174.not = icmp eq i32 %bcmp1139, 0, !dbg !1547
  br i1 %tobool174.not, label %if.end251.thread, label %for.cond157, !dbg !1545, !llvm.loop !1549

if.end251.thread:                                 ; preds = %for.body160
  %17 = load ptr, ptr %quant8_mf183, align 8, !dbg !1550, !tbaa !1503
  store ptr %17, ptr %arrayidx188, align 8, !dbg !1550, !tbaa !1503
  %18 = load ptr, ptr %dequant8_mf, align 8, !dbg !1550, !tbaa !1503
  store ptr %18, ptr %arrayidx193, align 8, !dbg !1550, !tbaa !1503
  %19 = load ptr, ptr %unquant8_mf, align 8, !dbg !1550, !tbaa !1503
  store ptr %19, ptr %arrayidx198, align 8, !dbg !1550, !tbaa !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1398, metadata !DIExpression()), !dbg !1544
  br label %for.body255.lr.ph, !dbg !1553

do.body200:                                       ; preds = %for.cond157
  %call205 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1555
  %arrayidx208 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 %indvars.iv1209, !dbg !1555
  store ptr %call205, ptr %arrayidx208, align 8, !dbg !1555, !tbaa !1503
  %tobool212.not = icmp eq ptr %call205, null, !dbg !1558
  br i1 %tobool212.not, label %fail, label %do.body217, !dbg !1555

do.body217:                                       ; preds = %do.body200
  %call222 = tail call ptr @x264_malloc(i32 noundef 1536) #9, !dbg !1560
  %arrayidx225 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 30, i64 %indvars.iv1209, !dbg !1560
  store ptr %call222, ptr %arrayidx225, align 8, !dbg !1560, !tbaa !1503
  %tobool229.not = icmp eq ptr %call222, null, !dbg !1562
  br i1 %tobool229.not, label %fail, label %do.body234, !dbg !1560

do.body234:                                       ; preds = %do.body217
  %call239 = tail call ptr @x264_malloc(i32 noundef 13312) #9, !dbg !1564
  %arrayidx242 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32, i64 %indvars.iv1209, !dbg !1564
  store ptr %call239, ptr %arrayidx242, align 8, !dbg !1564, !tbaa !1503
  %tobool246.not = icmp eq ptr %call239, null, !dbg !1566
  br i1 %tobool246.not, label %fail, label %if.end251, !dbg !1564

if.end251:                                        ; preds = %do.body234
  call void @llvm.dbg.value(metadata i32 0, metadata !1398, metadata !DIExpression()), !dbg !1544
  %cmp2531164.not = icmp eq i64 %indvars.iv1209, 0, !dbg !1568
  br i1 %cmp2531164.not, label %do.body291, label %for.body255.lr.ph, !dbg !1553

for.body255.lr.ph:                                ; preds = %if.end251.thread, %if.end251
  %cmp253.not = icmp eq i64 %indvars.iv1209, 1
  br i1 %cmp260, label %for.body255.lr.ph.split.us, label %for.body255.lr.ph.split, !dbg !1570

for.body255.lr.ph.split.us:                       ; preds = %for.body255.lr.ph
  %20 = load ptr, ptr %pps, align 16, !tbaa !1476
  %arrayidx267.us = getelementptr inbounds %struct.x264_pps_t, ptr %20, i64 0, i32 17, i64 5
  %21 = load ptr, ptr %arrayidx267.us, align 8, !tbaa !1503
  %arrayidx272.us = getelementptr inbounds %struct.x264_pps_t, ptr %20, i64 0, i32 17, i64 4
  %22 = load ptr, ptr %arrayidx272.us, align 8, !tbaa !1503
  %bcmp.us = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %21, ptr noundef nonnull dereferenceable(64) %22, i64 64), !dbg !1444
  %tobool276.not.us = icmp eq i32 %bcmp.us, 0
  br i1 %tobool276.not.us, label %if.then284.split.us, label %for.body255.lr.ph.split.us.split, !dbg !1568

for.body255.lr.ph.split.us.split:                 ; preds = %for.body255.lr.ph.split.us
  br i1 %cmp253.not, label %do.body291, label %for.body255.us, !dbg !1553, !llvm.loop !1572

for.body255.us:                                   ; preds = %for.body255.lr.ph.split.us.split, %for.body255.us
  call void @llvm.dbg.value(metadata i32 1, metadata !1398, metadata !DIExpression()), !dbg !1544
  br label %for.body255.us

if.then284.split.us:                              ; preds = %for.body255.lr.ph.split.us
  %23 = load ptr, ptr %quant8_bias, align 8, !dbg !1573, !tbaa !1503
  store ptr %23, ptr %arrayidx289, align 8, !dbg !1573, !tbaa !1503
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1210, metadata !1392, metadata !DIExpression()), !dbg !1504
  br label %for.cond325.preheader.preheader, !dbg !1505

for.body255.lr.ph.split:                          ; preds = %for.body255.lr.ph
  br i1 %cmp253.not, label %do.body291, label %for.body255, !dbg !1553, !llvm.loop !1572

for.body255:                                      ; preds = %for.body255.lr.ph.split, %for.body255
  call void @llvm.dbg.value(metadata i32 1, metadata !1398, metadata !DIExpression()), !dbg !1544
  br label %for.body255

do.body291:                                       ; preds = %for.body255.lr.ph.split.us.split, %for.body255.lr.ph.split, %if.end251
  %cmp2531164.not1280 = phi i1 [ false, %for.body255.lr.ph.split.us.split ], [ false, %for.body255.lr.ph.split ], [ true, %if.end251 ]
  %call296 = tail call ptr @x264_malloc(i32 noundef 6656) #9, !dbg !1575
  %arrayidx299 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 %indvars.iv1209, !dbg !1575
  store ptr %call296, ptr %arrayidx299, align 8, !dbg !1575, !tbaa !1503
  %tobool303.not = icmp eq ptr %call296, null, !dbg !1577
  br i1 %tobool303.not, label %fail, label %for.inc314, !dbg !1575

for.inc314:                                       ; preds = %do.body291
  %indvars.iv.next1210 = add nuw nsw i64 %indvars.iv1209, 1, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1210, metadata !1392, metadata !DIExpression()), !dbg !1504
  br i1 %cmp2531164.not1280, label %for.cond157.preheader, label %for.cond325.preheader.preheader, !dbg !1505, !llvm.loop !1580

for.cond325.preheader.preheader:                  ; preds = %for.inc314, %if.then284.split.us
  br label %for.cond325.preheader, !dbg !1581

for.cond325.preheader:                            ; preds = %for.cond325.preheader.preheader, %for.cond.cleanup359
  %indvars.iv1220 = phi i64 [ %indvars.iv.next1221, %for.cond.cleanup359 ], [ 0, %for.cond325.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1220, metadata !1399, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 0, metadata !1401, metadata !DIExpression()), !dbg !1583
  br label %for.body329, !dbg !1584

for.cond395.preheader:                            ; preds = %for.cond.cleanup359
  %24 = load ptr, ptr %pps, align 16, !tbaa !1476
  call void @llvm.dbg.value(metadata i32 0, metadata !1413, metadata !DIExpression()), !dbg !1585
  br label %for.cond400.preheader, !dbg !1586

for.body329:                                      ; preds = %for.cond325.preheader, %for.body329
  %indvars.iv1212 = phi i64 [ 0, %for.cond325.preheader ], [ %indvars.iv.next1213, %for.body329 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1212, metadata !1401, metadata !DIExpression()), !dbg !1583
  %and = and i64 %indvars.iv1212, 1, !dbg !1587
  %25 = lshr i64 %indvars.iv1212, 2, !dbg !1588
  %and331 = and i64 %25, 1, !dbg !1589
  %add332 = add nuw nsw i64 %and331, %and, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %add332, metadata !1405, metadata !DIExpression()), !dbg !1591
  %arrayidx336 = getelementptr inbounds [6 x [3 x i8]], ptr @dequant4_scale, i64 0, i64 %indvars.iv1220, i64 %add332, !dbg !1592
  %26 = load i8, ptr %arrayidx336, align 1, !dbg !1592, !tbaa !1593
  %conv337 = zext i8 %26 to i32, !dbg !1592
  %arrayidx341 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1220, i64 %indvars.iv1212, !dbg !1594
  store i32 %conv337, ptr %arrayidx341, align 4, !dbg !1595, !tbaa !1461
  %arrayidx345 = getelementptr inbounds [6 x [3 x i16]], ptr @quant4_scale, i64 0, i64 %indvars.iv1220, i64 %add332, !dbg !1596
  %27 = load i16, ptr %arrayidx345, align 2, !dbg !1596, !tbaa !1597
  %conv346 = zext i16 %27 to i32, !dbg !1596
  %arrayidx350 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1220, i64 %indvars.iv1212, !dbg !1599
  store i32 %conv346, ptr %arrayidx350, align 4, !dbg !1600, !tbaa !1461
  %indvars.iv.next1213 = add nuw nsw i64 %indvars.iv1212, 1, !dbg !1601
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1213, metadata !1401, metadata !DIExpression()), !dbg !1583
  %exitcond1215.not = icmp eq i64 %indvars.iv.next1213, 16, !dbg !1602
  br i1 %exitcond1215.not, label %for.body360, label %for.body329, !dbg !1584, !llvm.loop !1603

for.cond.cleanup359:                              ; preds = %for.body360
  %indvars.iv.next1221 = add nuw nsw i64 %indvars.iv1220, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1221, metadata !1399, metadata !DIExpression()), !dbg !1582
  %exitcond1223.not = icmp eq i64 %indvars.iv.next1221, 6, !dbg !1606
  br i1 %exitcond1223.not, label %for.cond395.preheader, label %for.cond325.preheader, !dbg !1581, !llvm.loop !1607

for.body360:                                      ; preds = %for.body329, %for.body360
  %indvars.iv1216 = phi i64 [ %indvars.iv.next1217, %for.body360 ], [ 0, %for.body329 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1216, metadata !1408, metadata !DIExpression()), !dbg !1609
  %28 = lshr i64 %indvars.iv1216, 1, !dbg !1610
  %and363 = and i64 %28, 12, !dbg !1611
  %and364 = and i64 %indvars.iv1216, 3, !dbg !1612
  %or = or i64 %and363, %and364, !dbg !1613
  %arrayidx366 = getelementptr inbounds [16 x i8], ptr @quant8_scan, i64 0, i64 %or, !dbg !1614
  %29 = load i8, ptr %arrayidx366, align 1, !dbg !1614, !tbaa !1593
  call void @llvm.dbg.value(metadata i8 %29, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1615
  %30 = zext i8 %29 to i64
  %arrayidx371 = getelementptr inbounds [6 x [6 x i8]], ptr @dequant8_scale, i64 0, i64 %indvars.iv1220, i64 %30, !dbg !1616
  %31 = load i8, ptr %arrayidx371, align 1, !dbg !1616, !tbaa !1593
  %conv372 = zext i8 %31 to i32, !dbg !1616
  %arrayidx376 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1220, i64 %indvars.iv1216, !dbg !1617
  store i32 %conv372, ptr %arrayidx376, align 4, !dbg !1618, !tbaa !1461
  %arrayidx380 = getelementptr inbounds [6 x [6 x i16]], ptr @quant8_scale, i64 0, i64 %indvars.iv1220, i64 %30, !dbg !1619
  %32 = load i16, ptr %arrayidx380, align 2, !dbg !1619, !tbaa !1597
  %conv381 = zext i16 %32 to i32, !dbg !1619
  %arrayidx385 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1220, i64 %indvars.iv1216, !dbg !1620
  store i32 %conv381, ptr %arrayidx385, align 4, !dbg !1621, !tbaa !1461
  %indvars.iv.next1217 = add nuw nsw i64 %indvars.iv1216, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1217, metadata !1408, metadata !DIExpression()), !dbg !1609
  %exitcond1219.not = icmp eq i64 %indvars.iv.next1217, 64, !dbg !1623
  br i1 %exitcond1219.not, label %for.cond.cleanup359, label %for.body360, !dbg !1624, !llvm.loop !1625

for.cond400.preheader:                            ; preds = %for.cond395.preheader, %for.cond.cleanup469
  %indvars.iv1240 = phi i64 [ 0, %for.cond395.preheader ], [ %indvars.iv.next1241, %for.cond.cleanup469 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1240, metadata !1413, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata i32 0, metadata !1415, metadata !DIExpression()), !dbg !1627
  br label %for.cond406.preheader, !dbg !1628

for.cond540.preheader:                            ; preds = %for.cond.cleanup469
  %b_transform_8x8 = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 41, i32 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1427, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 -1, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 -1, metadata !1384, metadata !DIExpression()), !dbg !1444
  br label %for.cond547.preheader, !dbg !1630

for.cond406.preheader:                            ; preds = %for.cond400.preheader, %for.cond.cleanup409
  %indvars.iv1228 = phi i64 [ 0, %for.cond400.preheader ], [ %indvars.iv.next1229, %for.cond.cleanup409 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1228, metadata !1415, metadata !DIExpression()), !dbg !1627
  %arrayidx418 = getelementptr inbounds %struct.x264_pps_t, ptr %24, i64 0, i32 17, i64 %indvars.iv1228
  %33 = load ptr, ptr %arrayidx418, align 8, !tbaa !1503
  %arrayidx425 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 29, i64 %indvars.iv1228
  %34 = load ptr, ptr %arrayidx425, align 8, !tbaa !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1419, metadata !DIExpression()), !dbg !1631
  br label %for.body410, !dbg !1632

for.cond.cleanup409:                              ; preds = %for.body410
  %indvars.iv.next1229 = add nuw nsw i64 %indvars.iv1228, 1, !dbg !1633
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1229, metadata !1415, metadata !DIExpression()), !dbg !1627
  %exitcond1231.not = icmp eq i64 %indvars.iv.next1229, 4, !dbg !1634
  br i1 %exitcond1231.not, label %for.cond472.preheader, label %for.cond406.preheader, !dbg !1628, !llvm.loop !1635

for.body410:                                      ; preds = %for.cond406.preheader, %for.body410
  %indvars.iv1224 = phi i64 [ 0, %for.cond406.preheader ], [ %indvars.iv.next1225, %for.body410 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1224, metadata !1419, metadata !DIExpression()), !dbg !1631
  %arrayidx414 = getelementptr inbounds [6 x [16 x i32]], ptr %def_dequant4, i64 0, i64 %indvars.iv1240, i64 %indvars.iv1224, !dbg !1637
  %35 = load i32, ptr %arrayidx414, align 4, !dbg !1637, !tbaa !1461
  %arrayidx420 = getelementptr inbounds i8, ptr %33, i64 %indvars.iv1224, !dbg !1640
  %36 = load i8, ptr %arrayidx420, align 1, !dbg !1640, !tbaa !1593
  %conv421 = zext i8 %36 to i32, !dbg !1640
  %mul422 = mul nsw i32 %35, %conv421, !dbg !1641
  %arrayidx429 = getelementptr inbounds [16 x i32], ptr %34, i64 %indvars.iv1240, i64 %indvars.iv1224, !dbg !1642
  store i32 %mul422, ptr %arrayidx429, align 4, !dbg !1643, !tbaa !1461
  %arrayidx433 = getelementptr inbounds [6 x [16 x i32]], ptr %def_quant4, i64 0, i64 %indvars.iv1240, i64 %indvars.iv1224, !dbg !1644
  %37 = load i32, ptr %arrayidx433, align 4, !dbg !1644, !tbaa !1461
  %mul434 = shl nsw i32 %37, 4, !dbg !1644
  %38 = load i8, ptr %arrayidx420, align 1, !dbg !1644, !tbaa !1593
  %conv441 = zext i8 %38 to i32, !dbg !1644
  %39 = lshr i32 %conv441, 1, !dbg !1644
  %add443 = add nsw i32 %39, %mul434, !dbg !1644
  %div = sdiv i32 %add443, %conv441, !dbg !1644
  %arrayidx456 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1228, i64 %indvars.iv1240, i64 %indvars.iv1224, !dbg !1645
  store i32 %div, ptr %arrayidx456, align 4, !dbg !1646, !tbaa !1461
  %indvars.iv.next1225 = add nuw nsw i64 %indvars.iv1224, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1225, metadata !1419, metadata !DIExpression()), !dbg !1631
  %exitcond1227.not = icmp eq i64 %indvars.iv.next1225, 16, !dbg !1648
  br i1 %exitcond1227.not, label %for.cond.cleanup409, label %for.body410, !dbg !1632, !llvm.loop !1649

for.cond472.preheader:                            ; preds = %for.cond.cleanup409, %for.cond.cleanup475
  %cmp467 = phi i1 [ false, %for.cond.cleanup475 ], [ true, %for.cond.cleanup409 ]
  %indvars.iv1236 = phi i64 [ 1, %for.cond.cleanup475 ], [ 0, %for.cond.cleanup409 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1236, metadata !1422, metadata !DIExpression()), !dbg !1651
  %40 = or i64 %indvars.iv1236, 4
  %arrayidx485 = getelementptr inbounds %struct.x264_pps_t, ptr %24, i64 0, i32 17, i64 %40
  %41 = load ptr, ptr %arrayidx485, align 8, !tbaa !1503
  %arrayidx492 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 30, i64 %indvars.iv1236
  %42 = load ptr, ptr %arrayidx492, align 8, !tbaa !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1424, metadata !DIExpression()), !dbg !1652
  br label %for.body476, !dbg !1653

for.cond.cleanup469:                              ; preds = %for.cond.cleanup475
  %indvars.iv.next1241 = add nuw nsw i64 %indvars.iv1240, 1, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1241, metadata !1413, metadata !DIExpression()), !dbg !1585
  %exitcond1243.not = icmp eq i64 %indvars.iv.next1241, 6, !dbg !1655
  br i1 %exitcond1243.not, label %for.cond540.preheader, label %for.cond400.preheader, !dbg !1586, !llvm.loop !1656

for.cond.cleanup475:                              ; preds = %for.body476
  call void @llvm.dbg.value(metadata i64 %indvars.iv1236, metadata !1422, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1651
  br i1 %cmp467, label %for.cond472.preheader, label %for.cond.cleanup469, !dbg !1658, !llvm.loop !1659

for.body476:                                      ; preds = %for.cond472.preheader, %for.body476
  %indvars.iv1232 = phi i64 [ 0, %for.cond472.preheader ], [ %indvars.iv.next1233, %for.body476 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1232, metadata !1424, metadata !DIExpression()), !dbg !1652
  %arrayidx480 = getelementptr inbounds [6 x [64 x i32]], ptr %def_dequant8, i64 0, i64 %indvars.iv1240, i64 %indvars.iv1232, !dbg !1661
  %43 = load i32, ptr %arrayidx480, align 4, !dbg !1661, !tbaa !1461
  %arrayidx487 = getelementptr inbounds i8, ptr %41, i64 %indvars.iv1232, !dbg !1664
  %44 = load i8, ptr %arrayidx487, align 1, !dbg !1664, !tbaa !1593
  %conv488 = zext i8 %44 to i32, !dbg !1664
  %mul489 = mul nsw i32 %43, %conv488, !dbg !1665
  %arrayidx496 = getelementptr inbounds [64 x i32], ptr %42, i64 %indvars.iv1240, i64 %indvars.iv1232, !dbg !1666
  store i32 %mul489, ptr %arrayidx496, align 4, !dbg !1667, !tbaa !1461
  %arrayidx500 = getelementptr inbounds [6 x [64 x i32]], ptr %def_quant8, i64 0, i64 %indvars.iv1240, i64 %indvars.iv1232, !dbg !1668
  %45 = load i32, ptr %arrayidx500, align 4, !dbg !1668, !tbaa !1461
  %mul501 = shl nsw i32 %45, 4, !dbg !1668
  %46 = load i8, ptr %arrayidx487, align 1, !dbg !1668, !tbaa !1593
  %conv509 = zext i8 %46 to i32, !dbg !1668
  %47 = lshr i32 %conv509, 1, !dbg !1668
  %add511 = add nsw i32 %47, %mul501, !dbg !1668
  %div520 = sdiv i32 %add511, %conv509, !dbg !1668
  %arrayidx526 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 %indvars.iv1236, i64 %indvars.iv1240, i64 %indvars.iv1232, !dbg !1669
  store i32 %div520, ptr %arrayidx526, align 4, !dbg !1670, !tbaa !1461
  %indvars.iv.next1233 = add nuw nsw i64 %indvars.iv1232, 1, !dbg !1671
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1233, metadata !1424, metadata !DIExpression()), !dbg !1652
  %exitcond1235.not = icmp eq i64 %indvars.iv.next1233, 64, !dbg !1672
  br i1 %exitcond1235.not, label %for.cond.cleanup475, label %for.body476, !dbg !1653, !llvm.loop !1673

for.cond547.preheader:                            ; preds = %for.cond540.preheader, %if.end795
  %indvars.iv1274 = phi i64 [ 0, %for.cond540.preheader ], [ %indvars.iv.next1275, %if.end795 ]
  %max_qp_err.01190 = phi i32 [ -1, %for.cond540.preheader ], [ %max_qp_err.7, %if.end795 ]
  %max_chroma_qp_err.01189 = phi i32 [ -1, %for.cond540.preheader ], [ %.us-phi1182, %if.end795 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1274, metadata !1427, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %max_qp_err.01190, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %max_chroma_qp_err.01189, metadata !1384, metadata !DIExpression()), !dbg !1444
  %48 = trunc i64 %indvars.iv1274 to i32
  %div558 = udiv i32 %48, 6
  %add560 = add nuw nsw i32 %div558, 23
  %sh_prom = zext i32 %add560 to i64
  %shl = shl nuw i64 1, %sh_prom
  %rem = urem i32 %48, 6
  %idxprom563 = zext i32 %rem to i64
  %cmp579 = icmp ult i64 %indvars.iv1274, 12
  %sub578 = add nsw i32 %div558, -1
  %sub601 = add nsw i32 %div558, -2
  %shl602 = shl nuw i32 1, %sub601
  %sub590 = sub nsw i32 1, %div558
  call void @llvm.dbg.value(metadata i32 0, metadata !1432, metadata !DIExpression()), !dbg !1675
  br i1 %cmp579, label %for.cond553.preheader.us, label %for.cond553.preheader, !dbg !1676

for.cond553.preheader.us:                         ; preds = %for.cond547.preheader, %for.cond.cleanup556.split.us.us
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %for.cond.cleanup556.split.us.us ], [ 0, %for.cond547.preheader ]
  %max_qp_err.11180.us = phi i32 [ %spec.select.us.us, %for.cond.cleanup556.split.us.us ], [ %max_qp_err.01190, %for.cond547.preheader ]
  %max_chroma_qp_err.11179.us = phi i32 [ %spec.select1148.us.us, %for.cond.cleanup556.split.us.us ], [ %max_chroma_qp_err.01189, %for.cond547.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1256, metadata !1432, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %max_qp_err.11180.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %max_chroma_qp_err.11179.us, metadata !1384, metadata !DIExpression()), !dbg !1444
  %arrayidx572.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %indvars.iv1256
  %49 = load ptr, ptr %arrayidx572.us, align 8, !tbaa !1503
  %arrayidx610.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv1256
  %50 = load ptr, ptr %arrayidx610.us, align 8, !tbaa !1503
  %arrayidx616.us = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1256
  %51 = load i32, ptr %arrayidx616.us, align 4, !tbaa !1461
  %shl617.us = shl i32 %51, 10
  %arrayidx638.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv1256
  %52 = load ptr, ptr %arrayidx638.us, align 8, !tbaa !1503
  %53 = icmp ult i64 %indvars.iv1256, 2
  %54 = and i64 %indvars.iv1256, 2147483646
  %55 = icmp eq i64 %54, 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1434, metadata !DIExpression()), !dbg !1679
  br label %for.body557.us.us, !dbg !1680

for.body557.us.us:                                ; preds = %for.body557.us.us, %for.cond553.preheader.us
  %indvars.iv1252 = phi i64 [ %indvars.iv.next1253, %for.body557.us.us ], [ 0, %for.cond553.preheader.us ]
  %max_qp_err.21176.us.us = phi i32 [ %spec.select.us.us, %for.body557.us.us ], [ %max_qp_err.11180.us, %for.cond553.preheader.us ]
  %max_chroma_qp_err.21175.us.us = phi i32 [ %spec.select1148.us.us, %for.body557.us.us ], [ %max_chroma_qp_err.11179.us, %for.cond553.preheader.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1252, metadata !1434, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %max_qp_err.21176.us.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %max_chroma_qp_err.21175.us.us, metadata !1384, metadata !DIExpression()), !dbg !1444
  %arrayidx566.us.us = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1256, i64 %idxprom563, i64 %indvars.iv1252, !dbg !1681
  %56 = load i32, ptr %arrayidx566.us.us, align 4, !dbg !1681, !tbaa !1461
  %conv567.us.us = sext i32 %56 to i64, !dbg !1681
  %div568.us.us = udiv i64 %shl, %conv567.us.us, !dbg !1682
  %conv569.us.us = trunc i64 %div568.us.us to i32, !dbg !1683
  %arrayidx576.us.us = getelementptr inbounds [16 x i32], ptr %49, i64 %indvars.iv1274, i64 %indvars.iv1252, !dbg !1684
  store i32 %conv569.us.us, ptr %arrayidx576.us.us, align 4, !dbg !1685, !tbaa !1461
  %shl591.us.us = shl i32 %56, %sub590, !dbg !1676
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression()), !dbg !1686
  %conv607.us.us = trunc i32 %shl591.us.us to i16, !dbg !1687
  %arrayidx614.us.us = getelementptr inbounds [16 x i16], ptr %50, i64 %indvars.iv1274, i64 %indvars.iv1252, !dbg !1688
  store i16 %conv607.us.us, ptr %arrayidx614.us.us, align 2, !dbg !1689, !tbaa !1597
  %shr618.us.us = ashr i32 %shl591.us.us, 1, !dbg !1690
  %add619.us.us = add nsw i32 %shl617.us, %shr618.us.us, !dbg !1690
  %div620.us.us = sdiv i32 %add619.us.us, %shl591.us.us, !dbg !1690
  %div621.us.us = sdiv i32 32768, %shl591.us.us, !dbg !1690
  %57 = tail call i32 @llvm.smin.i32(i32 %div620.us.us, i32 %div621.us.us), !dbg !1690
  %conv635.us.us = trunc i32 %57 to i16, !dbg !1690
  %arrayidx642.us.us = getelementptr inbounds [16 x i16], ptr %52, i64 %indvars.iv1274, i64 %indvars.iv1252, !dbg !1691
  store i16 %conv635.us.us, ptr %arrayidx642.us.us, align 2, !dbg !1692, !tbaa !1597
  %cmp643.us.us = icmp sgt i32 %shl591.us.us, 65535, !dbg !1693
  %58 = sext i32 %max_qp_err.21176.us.us to i64
  %cmp646.us.us = icmp sgt i64 %indvars.iv1274, %58
  %or.cond.us.us = select i1 %cmp643.us.us, i1 %cmp646.us.us, i1 false, !dbg !1695
  %or.cond1142.us.us = select i1 %or.cond.us.us, i1 %53, i1 false, !dbg !1695
  %spec.select.us.us = select i1 %or.cond1142.us.us, i32 %48, i32 %max_qp_err.21176.us.us, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %spec.select.us.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  %59 = sext i32 %max_chroma_qp_err.21175.us.us to i64
  %cmp658.us.us = icmp sgt i64 %indvars.iv1274, %59
  %or.cond1143.us.us = select i1 %cmp643.us.us, i1 %cmp658.us.us, i1 false, !dbg !1696
  %or.cond1145.us.us = select i1 %or.cond1143.us.us, i1 %55, i1 false, !dbg !1696
  %spec.select1148.us.us = select i1 %or.cond1145.us.us, i32 %48, i32 %max_chroma_qp_err.21175.us.us, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %spec.select1148.us.us, metadata !1384, metadata !DIExpression()), !dbg !1444
  %indvars.iv.next1253 = add nuw nsw i64 %indvars.iv1252, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1253, metadata !1434, metadata !DIExpression()), !dbg !1679
  %exitcond1255.not = icmp eq i64 %indvars.iv.next1253, 16, !dbg !1699
  br i1 %exitcond1255.not, label %for.cond.cleanup556.split.us.us, label %for.body557.us.us, !dbg !1680, !llvm.loop !1700

for.cond.cleanup556.split.us.us:                  ; preds = %for.body557.us.us
  %indvars.iv.next1257 = add nuw nsw i64 %indvars.iv1256, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1257, metadata !1432, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 undef, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 undef, metadata !1384, metadata !DIExpression()), !dbg !1444
  %exitcond1259.not = icmp eq i64 %indvars.iv.next1257, 4, !dbg !1703
  br i1 %exitcond1259.not, label %for.cond.cleanup550, label %for.cond553.preheader.us, !dbg !1704, !llvm.loop !1705

for.cond.cleanup543:                              ; preds = %if.end795
  %b_lossless = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 55, i32 73, !dbg !1707
  %60 = load i32, ptr %b_lossless, align 4, !dbg !1707, !tbaa !1709
  %tobool800.not = icmp eq i32 %60, 0, !dbg !1710
  br i1 %tobool800.not, label %land.lhs.true801, label %cleanup833, !dbg !1711

for.cond553.preheader:                            ; preds = %for.cond547.preheader, %for.cond.cleanup556.split
  %indvars.iv1248 = phi i64 [ %indvars.iv.next1249, %for.cond.cleanup556.split ], [ 0, %for.cond547.preheader ]
  %max_qp_err.11180 = phi i32 [ %spec.select, %for.cond.cleanup556.split ], [ %max_qp_err.01190, %for.cond547.preheader ]
  %max_chroma_qp_err.11179 = phi i32 [ %spec.select1148, %for.cond.cleanup556.split ], [ %max_chroma_qp_err.01189, %for.cond547.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1248, metadata !1432, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %max_qp_err.11180, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %max_chroma_qp_err.11179, metadata !1384, metadata !DIExpression()), !dbg !1444
  %arrayidx572 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %indvars.iv1248
  %61 = load ptr, ptr %arrayidx572, align 8, !tbaa !1503
  %arrayidx610 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv1248
  %62 = load ptr, ptr %arrayidx610, align 8, !tbaa !1503
  %arrayidx616 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1248
  %63 = load i32, ptr %arrayidx616, align 4, !tbaa !1461
  %shl617 = shl i32 %63, 10
  %arrayidx638 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv1248
  %64 = load ptr, ptr %arrayidx638, align 8, !tbaa !1503
  %65 = icmp ult i64 %indvars.iv1248, 2
  %66 = and i64 %indvars.iv1248, 2147483646
  %67 = icmp eq i64 %66, 2
  call void @llvm.dbg.value(metadata i32 0, metadata !1434, metadata !DIExpression()), !dbg !1679
  br label %for.body557, !dbg !1680

for.cond.cleanup550:                              ; preds = %for.cond.cleanup556.split, %for.cond.cleanup556.split.us.us
  %.us-phi1182 = phi i32 [ %spec.select1148.us.us, %for.cond.cleanup556.split.us.us ], [ %spec.select1148, %for.cond.cleanup556.split ]
  %.us-phi1183 = phi i32 [ %spec.select.us.us, %for.cond.cleanup556.split.us.us ], [ %spec.select, %for.cond.cleanup556.split ]
  %68 = load i32, ptr %b_transform_8x8, align 8, !dbg !1712, !tbaa !1713
  %tobool678.not = icmp eq i32 %68, 0, !dbg !1714
  br i1 %tobool678.not, label %if.end795, label %for.cond681.preheader, !dbg !1715

for.cond681.preheader:                            ; preds = %for.cond.cleanup550
  %add694 = add nuw nsw i32 %div558, 24
  %sh_prom695 = zext i32 %add694 to i64
  %shl696 = shl nuw i64 1, %sh_prom695
  %69 = icmp ult i64 %indvars.iv1274, 6
  %shl738 = shl nuw i32 1, %sub578
  %sub726 = sub nsw i32 0, %div558
  call void @llvm.dbg.value(metadata i32 0, metadata !1437, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %.us-phi1183, metadata !1383, metadata !DIExpression()), !dbg !1444
  br i1 %69, label %for.cond687.preheader.us, label %for.cond687.preheader, !dbg !1717

for.cond687.preheader.us:                         ; preds = %for.cond681.preheader, %for.cond.cleanup690.split.us.us
  %cmp682.us = phi i1 [ false, %for.cond.cleanup690.split.us.us ], [ true, %for.cond681.preheader ]
  %indvars.iv1271 = phi i64 [ 1, %for.cond.cleanup690.split.us.us ], [ 0, %for.cond681.preheader ]
  %max_qp_err.41186.us = phi i32 [ %spec.select1147.us.us, %for.cond.cleanup690.split.us.us ], [ %.us-phi1183, %for.cond681.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1271, metadata !1437, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %max_qp_err.41186.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  %arrayidx709.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32, i64 %indvars.iv1271
  %70 = load ptr, ptr %arrayidx709.us, align 8, !tbaa !1503
  %arrayidx747.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 %indvars.iv1271
  %71 = load ptr, ptr %arrayidx747.us, align 8, !tbaa !1503
  %arrayidx753.us = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1271
  %72 = load i32, ptr %arrayidx753.us, align 4, !tbaa !1461
  %shl754.us = shl i32 %72, 10
  %arrayidx775.us = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 %indvars.iv1271
  %73 = load ptr, ptr %arrayidx775.us, align 8, !tbaa !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1720
  br label %for.body691.us.us, !dbg !1721

for.body691.us.us:                                ; preds = %for.body691.us.us, %for.cond687.preheader.us
  %indvars.iv1267 = phi i64 [ %indvars.iv.next1268, %for.body691.us.us ], [ 0, %for.cond687.preheader.us ]
  %max_qp_err.51184.us.us = phi i32 [ %spec.select1147.us.us, %for.body691.us.us ], [ %max_qp_err.41186.us, %for.cond687.preheader.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1267, metadata !1440, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %max_qp_err.51184.us.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  %arrayidx703.us.us = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 %indvars.iv1271, i64 %idxprom563, i64 %indvars.iv1267, !dbg !1722
  %74 = load i32, ptr %arrayidx703.us.us, align 4, !dbg !1722, !tbaa !1461
  %conv704.us.us = sext i32 %74 to i64, !dbg !1722
  %div705.us.us = udiv i64 %shl696, %conv704.us.us, !dbg !1723
  %conv706.us.us = trunc i64 %div705.us.us to i32, !dbg !1724
  %arrayidx713.us.us = getelementptr inbounds [64 x i32], ptr %70, i64 %indvars.iv1274, i64 %indvars.iv1267, !dbg !1725
  store i32 %conv706.us.us, ptr %arrayidx713.us.us, align 4, !dbg !1726, !tbaa !1461
  %shl727.us.us = shl nuw nsw i32 %74, %sub726, !dbg !1717
  call void @llvm.dbg.value(metadata i32 undef, metadata !1429, metadata !DIExpression()), !dbg !1686
  %conv744.us.us = trunc i32 %shl727.us.us to i16, !dbg !1727
  %arrayidx751.us.us = getelementptr inbounds [64 x i16], ptr %71, i64 %indvars.iv1274, i64 %indvars.iv1267, !dbg !1728
  store i16 %conv744.us.us, ptr %arrayidx751.us.us, align 2, !dbg !1729, !tbaa !1597
  %shr755.us.us = ashr i32 %shl727.us.us, 1, !dbg !1730
  %add756.us.us = add nsw i32 %shl754.us, %shr755.us.us, !dbg !1730
  %div757.us.us = sdiv i32 %add756.us.us, %shl727.us.us, !dbg !1730
  %div758.us.us = sdiv i32 32768, %shl727.us.us, !dbg !1730
  %75 = tail call i32 @llvm.smin.i32(i32 %div757.us.us, i32 %div758.us.us), !dbg !1730
  %conv772.us.us = trunc i32 %75 to i16, !dbg !1730
  %arrayidx779.us.us = getelementptr inbounds [64 x i16], ptr %73, i64 %indvars.iv1274, i64 %indvars.iv1267, !dbg !1731
  store i16 %conv772.us.us, ptr %arrayidx779.us.us, align 2, !dbg !1732, !tbaa !1597
  %cmp780.us.us = icmp sgt i32 %shl727.us.us, 65535, !dbg !1733
  %76 = sext i32 %max_qp_err.51184.us.us to i64
  %cmp783.us.us = icmp sgt i64 %indvars.iv1274, %76
  %or.cond1146.us.us = select i1 %cmp780.us.us, i1 %cmp783.us.us, i1 false, !dbg !1735
  %spec.select1147.us.us = select i1 %or.cond1146.us.us, i32 %48, i32 %max_qp_err.51184.us.us, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %spec.select1147.us.us, metadata !1383, metadata !DIExpression()), !dbg !1444
  %indvars.iv.next1268 = add nuw nsw i64 %indvars.iv1267, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1268, metadata !1440, metadata !DIExpression()), !dbg !1720
  %exitcond1270.not = icmp eq i64 %indvars.iv.next1268, 64, !dbg !1737
  br i1 %exitcond1270.not, label %for.cond.cleanup690.split.us.us, label %for.body691.us.us, !dbg !1721, !llvm.loop !1738

for.cond.cleanup690.split.us.us:                  ; preds = %for.body691.us.us
  call void @llvm.dbg.value(metadata i64 %indvars.iv1271, metadata !1437, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1716
  call void @llvm.dbg.value(metadata i32 undef, metadata !1383, metadata !DIExpression()), !dbg !1444
  br i1 %cmp682.us, label %for.cond687.preheader.us, label %if.end795, !dbg !1740, !llvm.loop !1741

for.cond.cleanup556.split:                        ; preds = %for.body557
  %indvars.iv.next1249 = add nuw nsw i64 %indvars.iv1248, 1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1249, metadata !1432, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %spec.select1148, metadata !1384, metadata !DIExpression()), !dbg !1444
  %exitcond1251.not = icmp eq i64 %indvars.iv.next1249, 4, !dbg !1703
  br i1 %exitcond1251.not, label %for.cond.cleanup550, label %for.cond553.preheader, !dbg !1704, !llvm.loop !1705

for.body557:                                      ; preds = %for.cond553.preheader, %for.body557
  %indvars.iv1244 = phi i64 [ 0, %for.cond553.preheader ], [ %indvars.iv.next1245, %for.body557 ]
  %max_qp_err.21176 = phi i32 [ %max_qp_err.11180, %for.cond553.preheader ], [ %spec.select, %for.body557 ]
  %max_chroma_qp_err.21175 = phi i32 [ %max_chroma_qp_err.11179, %for.cond553.preheader ], [ %spec.select1148, %for.body557 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1244, metadata !1434, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %max_qp_err.21176, metadata !1383, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i32 %max_chroma_qp_err.21175, metadata !1384, metadata !DIExpression()), !dbg !1444
  %arrayidx566 = getelementptr inbounds [4 x [6 x [16 x i32]]], ptr %quant4_mf, i64 0, i64 %indvars.iv1248, i64 %idxprom563, i64 %indvars.iv1244, !dbg !1681
  %77 = load i32, ptr %arrayidx566, align 4, !dbg !1681, !tbaa !1461
  %conv567 = sext i32 %77 to i64, !dbg !1681
  %div568 = udiv i64 %shl, %conv567, !dbg !1682
  %conv569 = trunc i64 %div568 to i32, !dbg !1683
  %arrayidx576 = getelementptr inbounds [16 x i32], ptr %61, i64 %indvars.iv1274, i64 %indvars.iv1244, !dbg !1684
  store i32 %conv569, ptr %arrayidx576, align 4, !dbg !1685, !tbaa !1461
  %add603 = add nsw i32 %77, %shl602, !dbg !1676
  %shr606 = ashr i32 %add603, %sub578, !dbg !1676
  call void @llvm.dbg.value(metadata i32 %shr606, metadata !1429, metadata !DIExpression()), !dbg !1686
  %conv607 = trunc i32 %shr606 to i16, !dbg !1687
  %arrayidx614 = getelementptr inbounds [16 x i16], ptr %62, i64 %indvars.iv1274, i64 %indvars.iv1244, !dbg !1688
  store i16 %conv607, ptr %arrayidx614, align 2, !dbg !1689, !tbaa !1597
  %shr618 = ashr i32 %shr606, 1, !dbg !1690
  %add619 = add nsw i32 %shl617, %shr618, !dbg !1690
  %div620 = sdiv i32 %add619, %shr606, !dbg !1690
  %div621 = sdiv i32 32768, %shr606, !dbg !1690
  %78 = tail call i32 @llvm.smin.i32(i32 %div620, i32 %div621), !dbg !1690
  %conv635 = trunc i32 %78 to i16, !dbg !1690
  %arrayidx642 = getelementptr inbounds [16 x i16], ptr %64, i64 %indvars.iv1274, i64 %indvars.iv1244, !dbg !1691
  store i16 %conv635, ptr %arrayidx642, align 2, !dbg !1692, !tbaa !1597
  %cmp643 = icmp sgt i32 %shr606, 65535, !dbg !1693
  %79 = sext i32 %max_qp_err.21176 to i64
  %cmp646 = icmp sgt i64 %indvars.iv1274, %79
  %or.cond = select i1 %cmp643, i1 %cmp646, i1 false, !dbg !1695
  %or.cond1142 = select i1 %or.cond, i1 %65, i1 false, !dbg !1695
  %spec.select = select i1 %or.cond1142, i32 %48, i32 %max_qp_err.21176, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1383, metadata !DIExpression()), !dbg !1444
  %80 = sext i32 %max_chroma_qp_err.21175 to i64
  %cmp658 = icmp sgt i64 %indvars.iv1274, %80
  %or.cond1143 = select i1 %cmp643, i1 %cmp658, i1 false, !dbg !1696
  %or.cond1145 = select i1 %or.cond1143, i1 %67, i1 false, !dbg !1696
  %spec.select1148 = select i1 %or.cond1145, i32 %48, i32 %max_chroma_qp_err.21175, !dbg !1696
  call void @llvm.dbg.value(metadata i32 %spec.select1148, metadata !1384, metadata !DIExpression()), !dbg !1444
  %indvars.iv.next1245 = add nuw nsw i64 %indvars.iv1244, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1245, metadata !1434, metadata !DIExpression()), !dbg !1679
  %exitcond1247.not = icmp eq i64 %indvars.iv.next1245, 16, !dbg !1699
  br i1 %exitcond1247.not, label %for.cond.cleanup556.split, label %for.body557, !dbg !1680, !llvm.loop !1700

for.cond687.preheader:                            ; preds = %for.cond681.preheader, %for.cond.cleanup690.split
  %cmp682 = phi i1 [ false, %for.cond.cleanup690.split ], [ true, %for.cond681.preheader ]
  %indvars.iv1264 = phi i64 [ 1, %for.cond.cleanup690.split ], [ 0, %for.cond681.preheader ]
  %max_qp_err.41186 = phi i32 [ %spec.select1147, %for.cond.cleanup690.split ], [ %.us-phi1183, %for.cond681.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1264, metadata !1437, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %max_qp_err.41186, metadata !1383, metadata !DIExpression()), !dbg !1444
  %arrayidx709 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32, i64 %indvars.iv1264
  %81 = load ptr, ptr %arrayidx709, align 8, !tbaa !1503
  %arrayidx747 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 %indvars.iv1264
  %82 = load ptr, ptr %arrayidx747, align 8, !tbaa !1503
  %arrayidx753 = getelementptr inbounds [4 x i32], ptr %deadzone, i64 0, i64 %indvars.iv1264
  %83 = load i32, ptr %arrayidx753, align 4, !tbaa !1461
  %shl754 = shl i32 %83, 10
  %arrayidx775 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 %indvars.iv1264
  %84 = load ptr, ptr %arrayidx775, align 8, !tbaa !1503
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1720
  br label %for.body691, !dbg !1721

for.cond.cleanup690.split:                        ; preds = %for.body691
  call void @llvm.dbg.value(metadata i64 %indvars.iv1264, metadata !1437, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1716
  call void @llvm.dbg.value(metadata i32 %spec.select1147, metadata !1383, metadata !DIExpression()), !dbg !1444
  br i1 %cmp682, label %for.cond687.preheader, label %if.end795, !dbg !1740, !llvm.loop !1741

for.body691:                                      ; preds = %for.cond687.preheader, %for.body691
  %indvars.iv1260 = phi i64 [ 0, %for.cond687.preheader ], [ %indvars.iv.next1261, %for.body691 ]
  %max_qp_err.51184 = phi i32 [ %max_qp_err.41186, %for.cond687.preheader ], [ %spec.select1147, %for.body691 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1260, metadata !1440, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 %max_qp_err.51184, metadata !1383, metadata !DIExpression()), !dbg !1444
  %arrayidx703 = getelementptr inbounds [2 x [6 x [64 x i32]]], ptr %quant8_mf, i64 0, i64 %indvars.iv1264, i64 %idxprom563, i64 %indvars.iv1260, !dbg !1722
  %85 = load i32, ptr %arrayidx703, align 4, !dbg !1722, !tbaa !1461
  %conv704 = sext i32 %85 to i64, !dbg !1722
  %div705 = udiv i64 %shl696, %conv704, !dbg !1723
  %conv706 = trunc i64 %div705 to i32, !dbg !1724
  %arrayidx713 = getelementptr inbounds [64 x i32], ptr %81, i64 %indvars.iv1274, i64 %indvars.iv1260, !dbg !1725
  store i32 %conv706, ptr %arrayidx713, align 4, !dbg !1726, !tbaa !1461
  %add739 = add nsw i32 %85, %shl738, !dbg !1717
  %shr741 = ashr i32 %add739, %div558, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %shr741, metadata !1429, metadata !DIExpression()), !dbg !1686
  %conv744 = trunc i32 %shr741 to i16, !dbg !1727
  %arrayidx751 = getelementptr inbounds [64 x i16], ptr %82, i64 %indvars.iv1274, i64 %indvars.iv1260, !dbg !1728
  store i16 %conv744, ptr %arrayidx751, align 2, !dbg !1729, !tbaa !1597
  %shr755 = ashr i32 %shr741, 1, !dbg !1730
  %add756 = add nsw i32 %shl754, %shr755, !dbg !1730
  %div757 = sdiv i32 %add756, %shr741, !dbg !1730
  %div758 = sdiv i32 32768, %shr741, !dbg !1730
  %86 = tail call i32 @llvm.smin.i32(i32 %div757, i32 %div758), !dbg !1730
  %conv772 = trunc i32 %86 to i16, !dbg !1730
  %arrayidx779 = getelementptr inbounds [64 x i16], ptr %84, i64 %indvars.iv1274, i64 %indvars.iv1260, !dbg !1731
  store i16 %conv772, ptr %arrayidx779, align 2, !dbg !1732, !tbaa !1597
  %cmp780 = icmp sgt i32 %shr741, 65535, !dbg !1733
  %87 = sext i32 %max_qp_err.51184 to i64
  %cmp783 = icmp sgt i64 %indvars.iv1274, %87
  %or.cond1146 = select i1 %cmp780, i1 %cmp783, i1 false, !dbg !1735
  %spec.select1147 = select i1 %or.cond1146, i32 %48, i32 %max_qp_err.51184, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %spec.select1147, metadata !1383, metadata !DIExpression()), !dbg !1444
  %indvars.iv.next1261 = add nuw nsw i64 %indvars.iv1260, 1, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1261, metadata !1440, metadata !DIExpression()), !dbg !1720
  %exitcond1263.not = icmp eq i64 %indvars.iv.next1261, 64, !dbg !1737
  br i1 %exitcond1263.not, label %for.cond.cleanup690.split, label %for.body691, !dbg !1721, !llvm.loop !1738

if.end795:                                        ; preds = %for.cond.cleanup690.split, %for.cond.cleanup690.split.us.us, %for.cond.cleanup550
  %max_qp_err.7 = phi i32 [ %.us-phi1183, %for.cond.cleanup550 ], [ %spec.select1147.us.us, %for.cond.cleanup690.split.us.us ], [ %spec.select1147, %for.cond.cleanup690.split ], !dbg !1743
  call void @llvm.dbg.value(metadata i32 %max_qp_err.7, metadata !1383, metadata !DIExpression()), !dbg !1444
  %indvars.iv.next1275 = add nuw nsw i64 %indvars.iv1274, 1, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1275, metadata !1427, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %.us-phi1182, metadata !1384, metadata !DIExpression()), !dbg !1444
  %exitcond1277.not = icmp eq i64 %indvars.iv.next1275, 52, !dbg !1745
  br i1 %exitcond1277.not, label %for.cond.cleanup543, label %for.cond547.preheader, !dbg !1630, !llvm.loop !1746

land.lhs.true801:                                 ; preds = %for.cond.cleanup543
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 42, i32 2, !dbg !1748
  %88 = load i32, ptr %i_qp_min, align 8, !dbg !1748, !tbaa !1749
  %cmp803.not = icmp slt i32 %max_qp_err.7, %88, !dbg !1750
  br i1 %cmp803.not, label %land.lhs.true814, label %if.then805, !dbg !1751

if.then805:                                       ; preds = %land.lhs.true801
  %add806 = add nsw i32 %max_qp_err.7, 1, !dbg !1752
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add806) #9, !dbg !1754
  %89 = load i32, ptr %i_qp_min, align 8, !dbg !1755, !tbaa !1749
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %89) #9, !dbg !1756
  br label %cleanup833, !dbg !1757

land.lhs.true814:                                 ; preds = %land.lhs.true801
  %chroma_qp_table = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 39, !dbg !1758
  %90 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1758, !tbaa !1760
  %idxprom818 = sext i32 %88 to i64, !dbg !1761
  %arrayidx819 = getelementptr inbounds i8, ptr %90, i64 %idxprom818, !dbg !1761
  %91 = load i8, ptr %arrayidx819, align 1, !dbg !1761, !tbaa !1593
  %conv820 = zext i8 %91 to i32, !dbg !1761
  %cmp821.not = icmp slt i32 %.us-phi1182, %conv820, !dbg !1762
  br i1 %cmp821.not, label %cleanup833, label %if.then823, !dbg !1763

if.then823:                                       ; preds = %land.lhs.true814
  %add824 = add nsw i32 %.us-phi1182, 1, !dbg !1764
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %add824) #9, !dbg !1766
  %92 = load ptr, ptr %chroma_qp_table, align 16, !dbg !1767, !tbaa !1760
  %93 = load i32, ptr %i_qp_min, align 8, !dbg !1768, !tbaa !1749
  %idxprom829 = sext i32 %93 to i64, !dbg !1769
  %arrayidx830 = getelementptr inbounds i8, ptr %92, i64 %idxprom829, !dbg !1769
  %94 = load i8, ptr %arrayidx830, align 1, !dbg !1769, !tbaa !1593
  %conv831 = zext i8 %94 to i32, !dbg !1769
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %conv831) #9, !dbg !1770
  br label %cleanup833, !dbg !1771

fail:                                             ; preds = %do.body, %do.body50, %do.body67, %do.body123, %do.body200, %do.body217, %do.body234, %do.body291
  call void @llvm.dbg.label(metadata !1443), !dbg !1772
  tail call void @x264_cqm_delete(ptr noundef nonnull %h), !dbg !1773
  br label %cleanup833, !dbg !1774

cleanup833:                                       ; preds = %for.cond.cleanup543, %land.lhs.true814, %fail, %if.then823, %if.then805
  %retval.0 = phi i32 [ -1, %fail ], [ -1, %if.then823 ], [ -1, %if.then805 ], [ 0, %land.lhs.true814 ], [ 0, %for.cond.cleanup543 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %deadzone) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %quant8_mf) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %quant4_mf) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_dequant8) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_dequant4) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 1536, ptr nonnull %def_quant8) #9, !dbg !1775
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %def_quant4) #9, !dbg !1775
  ret i32 %retval.0, !dbg !1775
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1776 ptr @x264_malloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1780 void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @x264_cqm_delete(ptr nocapture noundef readonly %h) local_unnamed_addr #0 !dbg !1783 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1787, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 0, metadata !1788, metadata !DIExpression()), !dbg !1799
  br label %for.cond1.preheader, !dbg !1800

for.cond1.preheader:                              ; preds = %entry, %if.end37
  %indvars.iv163 = phi i64 [ 0, %entry ], [ %indvars.iv.next164, %if.end37 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv163, metadata !1788, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()), !dbg !1801
  %cmp2145.not = icmp eq i64 %indvars.iv163, 0, !dbg !1802
  br i1 %cmp2145.not, label %for.end, label %for.body3.lr.ph, !dbg !1805

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv163, !dbg !1806
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !1503
  br label %for.body3, !dbg !1805

for.cond42.preheader:                             ; preds = %if.end37
  %quant8_mf = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34
  %arrayidx51 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 1
  call void @llvm.dbg.value(metadata i32 0, metadata !1793, metadata !DIExpression()), !dbg !1808
  %quant8_bias = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36
  %arrayidx75 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 1
  br label %for.cond47.preheader, !dbg !1809

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1790, metadata !DIExpression()), !dbg !1801
  %arrayidx6 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv, !dbg !1806
  %1 = load ptr, ptr %arrayidx6, align 8, !dbg !1806, !tbaa !1503
  %cmp7 = icmp eq ptr %0, %1, !dbg !1806
  br i1 %cmp7, label %for.end, label %for.inc, !dbg !1802

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1790, metadata !DIExpression()), !dbg !1801
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv163, !dbg !1802
  br i1 %exitcond.not, label %for.end, label %for.body3, !dbg !1805, !llvm.loop !1810

for.end:                                          ; preds = %for.inc, %for.body3, %for.cond1.preheader
  %j.0.lcssa = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv, %for.body3 ], [ %indvars.iv163, %for.inc ], !dbg !1811
  %2 = and i64 %j.0.lcssa, 4294967295, !dbg !1812
  %cmp8 = icmp eq i64 %2, %indvars.iv163, !dbg !1812
  br i1 %cmp8, label %if.then9, label %if.end17, !dbg !1814

if.then9:                                         ; preds = %for.end
  %arrayidx12 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 33, i64 %indvars.iv163, !dbg !1815
  %3 = load ptr, ptr %arrayidx12, align 8, !dbg !1815, !tbaa !1503
  tail call void @x264_free(ptr noundef %3) #9, !dbg !1815
  %arrayidx14 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 29, i64 %indvars.iv163, !dbg !1815
  %4 = load ptr, ptr %arrayidx14, align 8, !dbg !1815, !tbaa !1503
  tail call void @x264_free(ptr noundef %4) #9, !dbg !1815
  %arrayidx16 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 31, i64 %indvars.iv163, !dbg !1815
  %5 = load ptr, ptr %arrayidx16, align 8, !dbg !1815, !tbaa !1503
  tail call void @x264_free(ptr noundef %5) #9, !dbg !1815
  br label %if.end17, !dbg !1815

if.end17:                                         ; preds = %if.then9, %for.end
  call void @llvm.dbg.value(metadata i32 0, metadata !1790, metadata !DIExpression()), !dbg !1801
  br i1 %cmp2145.not, label %for.end31, label %for.body20.lr.ph, !dbg !1817

for.body20.lr.ph:                                 ; preds = %if.end17
  %arrayidx22 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv163, !dbg !1819
  %6 = load ptr, ptr %arrayidx22, align 8, !tbaa !1503
  br label %for.body20, !dbg !1817

for.body20:                                       ; preds = %for.body20.lr.ph, %for.inc29
  %indvars.iv158 = phi i64 [ 0, %for.body20.lr.ph ], [ %indvars.iv.next159, %for.inc29 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv158, metadata !1790, metadata !DIExpression()), !dbg !1801
  %arrayidx25 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv158, !dbg !1819
  %7 = load ptr, ptr %arrayidx25, align 8, !dbg !1819, !tbaa !1503
  %cmp26 = icmp eq ptr %6, %7, !dbg !1819
  br i1 %cmp26, label %for.end31, label %for.inc29, !dbg !1822

for.inc29:                                        ; preds = %for.body20
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next159, metadata !1790, metadata !DIExpression()), !dbg !1801
  %exitcond162.not = icmp eq i64 %indvars.iv.next159, %indvars.iv163, !dbg !1822
  br i1 %exitcond162.not, label %for.end31, label %for.body20, !dbg !1817, !llvm.loop !1823

for.end31:                                        ; preds = %for.inc29, %for.body20, %if.end17
  %j.1.lcssa = phi i64 [ 0, %if.end17 ], [ %indvars.iv158, %for.body20 ], [ %indvars.iv163, %for.inc29 ], !dbg !1824
  %8 = and i64 %j.1.lcssa, 4294967295, !dbg !1825
  %cmp32 = icmp eq i64 %8, %indvars.iv163, !dbg !1825
  br i1 %cmp32, label %if.then33, label %if.end37, !dbg !1814

if.then33:                                        ; preds = %for.end31
  %arrayidx36 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 35, i64 %indvars.iv163, !dbg !1825
  %9 = load ptr, ptr %arrayidx36, align 8, !dbg !1825, !tbaa !1503
  tail call void @x264_free(ptr noundef %9) #9, !dbg !1825
  br label %if.end37, !dbg !1825

if.end37:                                         ; preds = %if.then33, %for.end31
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next164, metadata !1788, metadata !DIExpression()), !dbg !1799
  %exitcond166.not = icmp eq i64 %indvars.iv.next164, 4, !dbg !1827
  br i1 %exitcond166.not, label %for.cond42.preheader, label %for.cond1.preheader, !dbg !1800, !llvm.loop !1828

for.cond47.preheader:                             ; preds = %for.cond42.preheader, %if.end90
  %cmp43 = phi i1 [ true, %for.cond42.preheader ], [ false, %if.end90 ]
  %indvars.iv167 = phi i64 [ 0, %for.cond42.preheader ], [ 1, %if.end90 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv167, metadata !1793, metadata !DIExpression()), !dbg !1808
  br label %for.cond47, !dbg !1829

for.cond.cleanup44:                               ; preds = %if.end90
  ret void, !dbg !1831

for.cond47:                                       ; preds = %for.cond47.preheader, %for.body49
  %j46.0 = phi i64 [ 1, %for.body49 ], [ 0, %for.cond47.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1795, metadata !DIExpression()), !dbg !1832
  %cmp48 = icmp ult i64 %j46.0, %indvars.iv167, !dbg !1833
  br i1 %cmp48, label %for.body49, label %for.end60, !dbg !1829

for.body49:                                       ; preds = %for.cond47
  %10 = load ptr, ptr %arrayidx51, align 8, !dbg !1835, !tbaa !1503
  %11 = load ptr, ptr %quant8_mf, align 8, !dbg !1835, !tbaa !1503
  %cmp55 = icmp eq ptr %10, %11, !dbg !1835
  br i1 %cmp55, label %for.end60, label %for.cond47, !dbg !1833, !llvm.loop !1837

for.end60:                                        ; preds = %for.body49, %for.cond47
  %cmp61 = icmp eq i64 %j46.0, %indvars.iv167, !dbg !1838
  br i1 %cmp61, label %if.then62, label %for.cond71.preheader, !dbg !1840

if.then62:                                        ; preds = %for.end60
  %arrayidx65 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 34, i64 %indvars.iv167, !dbg !1841
  %12 = load ptr, ptr %arrayidx65, align 8, !dbg !1841, !tbaa !1503
  tail call void @x264_free(ptr noundef %12) #9, !dbg !1841
  %arrayidx67 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 30, i64 %indvars.iv167, !dbg !1841
  %13 = load ptr, ptr %arrayidx67, align 8, !dbg !1841, !tbaa !1503
  tail call void @x264_free(ptr noundef %13) #9, !dbg !1841
  %arrayidx69 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 32, i64 %indvars.iv167, !dbg !1841
  %14 = load ptr, ptr %arrayidx69, align 8, !dbg !1841, !tbaa !1503
  tail call void @x264_free(ptr noundef %14) #9, !dbg !1841
  br label %for.cond71.preheader, !dbg !1841

for.cond71.preheader:                             ; preds = %if.then62, %for.end60
  br label %for.cond71, !dbg !1843

for.cond71:                                       ; preds = %for.cond71.preheader, %for.body73
  %j46.1 = phi i64 [ 1, %for.body73 ], [ 0, %for.cond71.preheader ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1795, metadata !DIExpression()), !dbg !1832
  %cmp72 = icmp ult i64 %j46.1, %indvars.iv167, !dbg !1845
  br i1 %cmp72, label %for.body73, label %for.end84, !dbg !1843

for.body73:                                       ; preds = %for.cond71
  %15 = load ptr, ptr %arrayidx75, align 8, !dbg !1847, !tbaa !1503
  %16 = load ptr, ptr %quant8_bias, align 8, !dbg !1847, !tbaa !1503
  %cmp79 = icmp eq ptr %15, %16, !dbg !1847
  br i1 %cmp79, label %for.end84, label %for.cond71, !dbg !1845, !llvm.loop !1849

for.end84:                                        ; preds = %for.body73, %for.cond71
  %cmp85 = icmp eq i64 %j46.1, %indvars.iv167, !dbg !1850
  br i1 %cmp85, label %if.then86, label %if.end90, !dbg !1840

if.then86:                                        ; preds = %for.end84
  %arrayidx89 = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 36, i64 %indvars.iv167, !dbg !1850
  %17 = load ptr, ptr %arrayidx89, align 8, !dbg !1850, !tbaa !1503
  tail call void @x264_free(ptr noundef %17) #9, !dbg !1850
  br label %if.end90, !dbg !1850

if.end90:                                         ; preds = %if.then86, %for.end84
  call void @llvm.dbg.value(metadata i64 %indvars.iv167, metadata !1793, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1808
  br i1 %cmp43, label %for.cond47.preheader, label %for.cond.cleanup44, !dbg !1809, !llvm.loop !1852
}

declare !dbg !1853 void @x264_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_cqm_parse_file(ptr noundef %h, ptr noundef %filename) local_unnamed_addr #0 !dbg !1854 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1858, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1859, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i32 0, metadata !1861, metadata !DIExpression()), !dbg !1863
  %i_cqm_preset = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 28, !dbg !1864
  store i32 2, ptr %i_cqm_preset, align 16, !dbg !1865, !tbaa !1866
  %call = tail call ptr @x264_slurp_file(ptr noundef %filename) #9, !dbg !1867
  call void @llvm.dbg.value(metadata ptr %call, metadata !1862, metadata !DIExpression()), !dbg !1863
  %tobool.not = icmp eq ptr %call, null, !dbg !1868
  br i1 %tobool.not, label %if.then, label %while.cond.preheader, !dbg !1870

while.cond.preheader:                             ; preds = %entry
  %call156 = tail call ptr @strchr(ptr noundef nonnull %call, i32 noundef 35) #10, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %call156, metadata !1860, metadata !DIExpression()), !dbg !1863
  %cmp.not57 = icmp eq ptr %call156, null, !dbg !1872
  br i1 %cmp.not57, label %while.end, label %while.body, !dbg !1873

if.then:                                          ; preds = %entry
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %h, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %filename) #9, !dbg !1874
  br label %cleanup, !dbg !1876

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %call158 = phi ptr [ %call1, %while.body ], [ %call156, %while.cond.preheader ]
  %call2 = tail call i64 @strcspn(ptr noundef nonnull %call158, ptr noundef nonnull @.str.4) #10, !dbg !1877
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %call158, i8 32, i64 %call2, i1 false), !dbg !1878
  %call1 = tail call ptr @strchr(ptr noundef nonnull %call, i32 noundef 35) #10, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1860, metadata !DIExpression()), !dbg !1863
  %cmp.not = icmp eq ptr %call1, null, !dbg !1872
  br i1 %cmp.not, label %while.end, label %while.body, !dbg !1873, !llvm.loop !1879

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %cqm_4iy = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 30, !dbg !1881
  %call4 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %cqm_4iy, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16), !dbg !1882
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1861, metadata !DIExpression()), !dbg !1863
  %cqm_4ic = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 31, !dbg !1883
  %call7 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.6, ptr noundef nonnull %cqm_4ic, ptr noundef nonnull @x264_cqm_jvt4i, i32 noundef 16), !dbg !1884
  %or8 = or i32 %call7, %call4, !dbg !1885
  call void @llvm.dbg.value(metadata i32 %or8, metadata !1861, metadata !DIExpression()), !dbg !1863
  %cqm_4py = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 32, !dbg !1886
  %call11 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %cqm_4py, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16), !dbg !1887
  %or12 = or i32 %or8, %call11, !dbg !1888
  call void @llvm.dbg.value(metadata i32 %or12, metadata !1861, metadata !DIExpression()), !dbg !1863
  %cqm_4pc = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 33, !dbg !1889
  %call15 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %cqm_4pc, ptr noundef nonnull @x264_cqm_jvt4p, i32 noundef 16), !dbg !1890
  %or16 = or i32 %or12, %call15, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %or16, metadata !1861, metadata !DIExpression()), !dbg !1863
  %cqm_8iy = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 34, !dbg !1892
  %call19 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.9, ptr noundef nonnull %cqm_8iy, ptr noundef nonnull @x264_cqm_jvt8i, i32 noundef 64), !dbg !1893
  %or20 = or i32 %or16, %call19, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %or20, metadata !1861, metadata !DIExpression()), !dbg !1863
  %cqm_8py = getelementptr inbounds %struct.x264_param_t, ptr %h, i64 0, i32 35, !dbg !1895
  %call23 = tail call fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %cqm_8py, ptr noundef nonnull @x264_cqm_jvt8p, i32 noundef 64), !dbg !1896
  %or24 = or i32 %or20, %call23, !dbg !1897
  call void @llvm.dbg.value(metadata i32 %or24, metadata !1861, metadata !DIExpression()), !dbg !1863
  tail call void @x264_free(ptr noundef nonnull %call) #9, !dbg !1898
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %or24, %while.end ], [ -1, %if.then ], !dbg !1863
  ret i32 %retval.0, !dbg !1900
}

declare !dbg !1901 ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_cqm_parse_jmlist(ptr noundef %h, ptr noundef readonly %buf, ptr noundef %name, ptr nocapture noundef writeonly %cqm, ptr nocapture noundef readonly %jvt, i32 noundef %length) unnamed_addr #0 !dbg !1904 {
entry:
  %coef = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %h, metadata !1908, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %buf, metadata !1909, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %name, metadata !1910, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %cqm, metadata !1911, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %jvt, metadata !1912, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 %length, metadata !1913, metadata !DIExpression()), !dbg !1921
  %call = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %buf, ptr noundef nonnull dereferenceable(1) %name) #10, !dbg !1922
  call void @llvm.dbg.value(metadata ptr %call, metadata !1915, metadata !DIExpression()), !dbg !1921
  %tobool.not = icmp eq ptr %call, null, !dbg !1923
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1925

if.then:                                          ; preds = %entry
  %0 = zext i32 %length to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %cqm, i8 16, i64 %0, i1 false), !dbg !1926
  br label %cleanup43, !dbg !1928

if.end:                                           ; preds = %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #10, !dbg !1929
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call1, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1915, metadata !DIExpression()), !dbg !1921
  %1 = load i8, ptr %add.ptr, align 1, !dbg !1931, !tbaa !1593
  %.off = add i8 %1, -85, !dbg !1933
  %switch = icmp ult i8 %.off, 2, !dbg !1933
  %spec.select.idx = zext i1 %switch to i64, !dbg !1933
  %spec.select = getelementptr i8, ptr %add.ptr, i64 %spec.select.idx, !dbg !1933
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1915, metadata !DIExpression()), !dbg !1921
  %call9 = tail call ptr @strstr(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.11) #10, !dbg !1934
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1916, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 0, metadata !1914, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1915, metadata !DIExpression()), !dbg !1921
  %cmp1076 = icmp sgt i32 %length, 0, !dbg !1935
  br i1 %cmp1076, label %land.lhs.true.preheader, label %for.end, !dbg !1936

land.lhs.true.preheader:                          ; preds = %if.end
  %wide.trip.count = zext i32 %length to i64, !dbg !1935
  br label %land.lhs.true, !dbg !1937

land.lhs.true:                                    ; preds = %land.lhs.true.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %land.lhs.true.preheader ], [ %indvars.iv.next, %for.inc ]
  %p.178 = phi ptr [ %spec.select, %land.lhs.true.preheader ], [ %call14, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %p.178, metadata !1915, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1914, metadata !DIExpression()), !dbg !1921
  %call12 = call ptr @strpbrk(ptr noundef %p.178, ptr noundef nonnull @.str.12) #10, !dbg !1938
  call void @llvm.dbg.value(metadata ptr %call12, metadata !1915, metadata !DIExpression()), !dbg !1921
  %tobool13.not = icmp eq ptr %call12, null, !dbg !1939
  br i1 %tobool13.not, label %for.end.loopexit.split.loop.exit85, label %land.rhs, !dbg !1940

land.rhs:                                         ; preds = %land.lhs.true
  %call14 = call ptr @strpbrk(ptr noundef nonnull %call12, ptr noundef nonnull @.str.13) #10, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1915, metadata !DIExpression()), !dbg !1921
  %tobool15.not = icmp eq ptr %call14, null, !dbg !1940
  br i1 %tobool15.not, label %for.end.loopexit.split.loop.exit88, label %for.body, !dbg !1937

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coef) #9, !dbg !1942
  call void @llvm.dbg.value(metadata i32 -1, metadata !1917, metadata !DIExpression()), !dbg !1943
  store i32 -1, ptr %coef, align 4, !dbg !1944, !tbaa !1461
  call void @llvm.dbg.value(metadata ptr %coef, metadata !1917, metadata !DIExpression(DW_OP_deref)), !dbg !1943
  %call16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %call14, ptr noundef nonnull @.str.14, ptr noundef nonnull %coef) #9, !dbg !1945
  %cmp17 = icmp eq i64 %indvars.iv, 0, !dbg !1946
  %2 = load i32, ptr %coef, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !1917, metadata !DIExpression()), !dbg !1943
  %cmp20 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp17, i1 %cmp20, i1 false, !dbg !1948
  br i1 %or.cond, label %if.then22, label %if.end24, !dbg !1948

if.then22:                                        ; preds = %for.body
  %conv23 = sext i32 %length to i64, !dbg !1949
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cqm, ptr align 1 %jvt, i64 %conv23, i1 false), !dbg !1951
  br label %cleanup.thread, !dbg !1952

if.end24:                                         ; preds = %for.body
  %3 = add i32 %2, -256, !dbg !1953
  %4 = icmp ult i32 %3, -255, !dbg !1953
  br i1 %4, label %if.then30, label %for.inc, !dbg !1953

if.then30:                                        ; preds = %if.end24
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %name) #9, !dbg !1955
  br label %cleanup.thread, !dbg !1957

cleanup.thread:                                   ; preds = %if.then30, %if.then22
  %retval.1.ph = phi i32 [ 0, %if.then22 ], [ -1, %if.then30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9, !dbg !1958
  br label %cleanup43

for.inc:                                          ; preds = %if.end24
  %conv32 = trunc i32 %2 to i8, !dbg !1959
  %arrayidx = getelementptr inbounds i8, ptr %cqm, i64 %indvars.iv, !dbg !1960
  store i8 %conv32, ptr %arrayidx, align 1, !dbg !1961, !tbaa !1593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coef) #9, !dbg !1958
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1962
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1915, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1914, metadata !DIExpression()), !dbg !1921
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !1935
  br i1 %exitcond.not, label %for.end, label %land.lhs.true, !dbg !1936, !llvm.loop !1963

for.end.loopexit.split.loop.exit85:               ; preds = %land.lhs.true
  %5 = trunc i64 %indvars.iv to i32, !dbg !1940
  br label %for.end, !dbg !1965

for.end.loopexit.split.loop.exit88:               ; preds = %land.rhs
  %6 = trunc i64 %indvars.iv to i32, !dbg !1940
  br label %for.end, !dbg !1965

for.end:                                          ; preds = %for.inc, %for.end.loopexit.split.loop.exit85, %for.end.loopexit.split.loop.exit88, %if.end
  %i.0.lcssa = phi i32 [ 0, %if.end ], [ %5, %for.end.loopexit.split.loop.exit85 ], [ %6, %for.end.loopexit.split.loop.exit88 ], [ %length, %for.inc ], !dbg !1967
  %p.2 = phi ptr [ %spec.select, %if.end ], [ null, %for.end.loopexit.split.loop.exit85 ], [ null, %for.end.loopexit.split.loop.exit88 ], [ %call14, %for.inc ], !dbg !1921
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !1915, metadata !DIExpression()), !dbg !1921
  %tobool33.not = icmp eq ptr %call9, null, !dbg !1965
  %cmp35 = icmp ule ptr %p.2, %call9
  %or.cond70 = select i1 %tobool33.not, i1 true, i1 %cmp35, !dbg !1968
  %cmp38.not = icmp eq i32 %i.0.lcssa, %length
  %or.cond71 = select i1 %or.cond70, i1 %cmp38.not, i1 false, !dbg !1968
  br i1 %or.cond71, label %cleanup43, label %if.then40, !dbg !1968

if.then40:                                        ; preds = %for.end
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %h, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %name) #9, !dbg !1969
  br label %cleanup43, !dbg !1971

cleanup43:                                        ; preds = %cleanup.thread, %if.then40, %for.end, %if.then
  %retval.3 = phi i32 [ 0, %if.then ], [ -1, %if.then40 ], [ 0, %for.end ], [ %retval.1.ph, %cleanup.thread ], !dbg !1921
  ret i32 %retval.3, !dbg !1972
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dequant4_scale", scope: !2, file: !18, line: 26, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/set.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "ded33432ae52d5d9fe6b2433f07446f2")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cqm4_e", file: !6, line: 39, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "CQM_4IY", value: 0)
!10 = !DIEnumerator(name: "CQM_4PY", value: 1)
!11 = !DIEnumerator(name: "CQM_4IC", value: 2)
!12 = !DIEnumerator(name: "CQM_4PC", value: 3)
!13 = !{!14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !{!0, !16, !29, !38, !42, !45, !47, !49, !54}
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "quant4_scale", scope: !2, file: !18, line: 35, type: !19, isLocal: true, isDefinition: true)
!18 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ded33432ae52d5d9fe6b2433f07446f2")
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 288, elements: !26)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !22, line: 25, baseType: !23)
!22 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !24, line: 40, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !{!27, !28}
!27 = !DISubrange(count: 6)
!28 = !DISubrange(count: 3)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "quant8_scan", scope: !2, file: !18, line: 45, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !36)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !22, line: 24, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !24, line: 38, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !{!37}
!37 = !DISubrange(count: 16)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "dequant8_scale", scope: !2, file: !18, line: 49, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 288, elements: !41)
!41 = !{!27, !27}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "quant8_scale", scope: !2, file: !18, line: 58, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 576, elements: !41)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4i", scope: !2, file: !6, line: 189, type: !31, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "x264_cqm_jvt4p", scope: !2, file: !6, line: 196, type: !31, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8i", scope: !2, file: !6, line: 203, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 512, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 64)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "x264_cqm_jvt8p", scope: !2, file: !6, line: 214, type: !51, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 144, elements: !26)
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 7, !"PIC Level", i32 2}
!61 = !{i32 7, !"PIE Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!64 = distinct !DISubprogram(name: "x264_cqm_init", scope: !18, file: !18, line: 68, type: !65, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !68}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !72, line: 381, size: 266752, elements: !73)
!72 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!73 = !{!74, !242, !246, !247, !248, !249, !250, !251, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !386, !388, !414, !416, !417, !418, !424, !428, !429, !430, !434, !438, !439, !440, !445, !448, !449, !527, !544, !708, !709, !710, !711, !715, !716, !717, !718, !719, !720, !721, !736, !930, !934, !995, !998, !1000, !1002, !1003, !1006, !1011, !1020, !1021, !1029, !1031, !1036, !1112, !1198, !1242, !1264, !1313, !1342}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !71, file: !72, line: 384, baseType: !75, size: 5632)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !70, line: 376, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !70, line: 176, size: 5632, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !121, !123, !124, !125, !126, !128, !129, !143, !144, !145, !146, !147, !178, !220, !221, !222, !223, !224, !225, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !76, file: !70, line: 179, baseType: !7, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !76, file: !70, line: 180, baseType: !67, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !76, file: !70, line: 181, baseType: !67, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !76, file: !70, line: 182, baseType: !67, size: 32, offset: 96)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !76, file: !70, line: 183, baseType: !67, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !76, file: !70, line: 186, baseType: !67, size: 32, offset: 160)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !76, file: !70, line: 187, baseType: !67, size: 32, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !76, file: !70, line: 188, baseType: !67, size: 32, offset: 224)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !76, file: !70, line: 189, baseType: !67, size: 32, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !76, file: !70, line: 190, baseType: !67, size: 32, offset: 288)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !76, file: !70, line: 198, baseType: !67, size: 32, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !76, file: !70, line: 215, baseType: !90, size: 288, offset: 352)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !70, line: 200, size: 288, elements: !91)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !90, file: !70, line: 203, baseType: !67, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !90, file: !70, line: 204, baseType: !67, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !90, file: !70, line: 206, baseType: !67, size: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !90, file: !70, line: 209, baseType: !67, size: 32, offset: 96)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !90, file: !70, line: 210, baseType: !67, size: 32, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !90, file: !70, line: 211, baseType: !67, size: 32, offset: 160)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !90, file: !70, line: 212, baseType: !67, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !90, file: !70, line: 213, baseType: !67, size: 32, offset: 224)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !90, file: !70, line: 214, baseType: !67, size: 32, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !76, file: !70, line: 218, baseType: !67, size: 32, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !76, file: !70, line: 219, baseType: !67, size: 32, offset: 672)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !76, file: !70, line: 220, baseType: !67, size: 32, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !76, file: !70, line: 221, baseType: !67, size: 32, offset: 736)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !76, file: !70, line: 222, baseType: !67, size: 32, offset: 768)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !76, file: !70, line: 224, baseType: !67, size: 32, offset: 800)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !76, file: !70, line: 225, baseType: !67, size: 32, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !76, file: !70, line: 226, baseType: !67, size: 32, offset: 864)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !76, file: !70, line: 227, baseType: !67, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !76, file: !70, line: 229, baseType: !67, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !76, file: !70, line: 230, baseType: !67, size: 32, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !76, file: !70, line: 231, baseType: !67, size: 32, offset: 992)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !76, file: !70, line: 233, baseType: !67, size: 32, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !76, file: !70, line: 234, baseType: !67, size: 32, offset: 1056)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !76, file: !70, line: 236, baseType: !67, size: 32, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !76, file: !70, line: 237, baseType: !67, size: 32, offset: 1120)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !76, file: !70, line: 239, baseType: !67, size: 32, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !76, file: !70, line: 240, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !76, file: !70, line: 241, baseType: !122, size: 128, offset: 1280)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !36)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !76, file: !70, line: 242, baseType: !122, size: 128, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !76, file: !70, line: 243, baseType: !122, size: 128, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !76, file: !70, line: 244, baseType: !122, size: 128, offset: 1664)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !76, file: !70, line: 245, baseType: !127, size: 512, offset: 1792)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 512, elements: !52)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !76, file: !70, line: 246, baseType: !127, size: 512, offset: 2304)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !76, file: !70, line: 249, baseType: !130, size: 64, offset: 2816)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !14, !67, !133, !135}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !137)
!137 = !{!138, !140, !141, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !136, file: !139, baseType: !7, size: 32)
!139 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !136, file: !139, baseType: !7, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !136, file: !139, baseType: !14, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !136, file: !139, baseType: !14, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !76, file: !70, line: 250, baseType: !14, size: 64, offset: 2880)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !76, file: !70, line: 251, baseType: !67, size: 32, offset: 2944)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !76, file: !70, line: 252, baseType: !67, size: 32, offset: 2976)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !76, file: !70, line: 253, baseType: !119, size: 64, offset: 3008)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !76, file: !70, line: 287, baseType: !148, size: 800, offset: 3072)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !70, line: 256, size: 800, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !170, !171, !172, !176, !177}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !148, file: !70, line: 258, baseType: !7, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !148, file: !70, line: 259, baseType: !7, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !148, file: !70, line: 261, baseType: !67, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !148, file: !70, line: 262, baseType: !67, size: 32, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !148, file: !70, line: 263, baseType: !67, size: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !148, file: !70, line: 264, baseType: !67, size: 32, offset: 160)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !148, file: !70, line: 265, baseType: !67, size: 32, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !148, file: !70, line: 267, baseType: !67, size: 32, offset: 224)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !148, file: !70, line: 268, baseType: !67, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !148, file: !70, line: 269, baseType: !67, size: 32, offset: 288)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !148, file: !70, line: 270, baseType: !67, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !148, file: !70, line: 271, baseType: !67, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !148, file: !70, line: 272, baseType: !67, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !148, file: !70, line: 273, baseType: !67, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !148, file: !70, line: 274, baseType: !67, size: 32, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !148, file: !70, line: 275, baseType: !67, size: 32, offset: 480)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !148, file: !70, line: 276, baseType: !67, size: 32, offset: 512)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !148, file: !70, line: 277, baseType: !67, size: 32, offset: 544)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !148, file: !70, line: 278, baseType: !169, size: 32, offset: 576)
!169 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !148, file: !70, line: 279, baseType: !169, size: 32, offset: 608)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !148, file: !70, line: 280, baseType: !67, size: 32, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !148, file: !70, line: 283, baseType: !173, size: 64, offset: 672)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 2)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !148, file: !70, line: 285, baseType: !67, size: 32, offset: 736)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !148, file: !70, line: 286, baseType: !67, size: 32, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !76, file: !70, line: 327, baseType: !179, size: 1152, offset: 3904)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !76, file: !70, line: 290, size: 1152, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !218, !219}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !179, file: !70, line: 292, baseType: !67, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !179, file: !70, line: 294, baseType: !67, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !179, file: !70, line: 295, baseType: !67, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !179, file: !70, line: 296, baseType: !67, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !179, file: !70, line: 297, baseType: !67, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !179, file: !70, line: 299, baseType: !67, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !179, file: !70, line: 300, baseType: !169, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !179, file: !70, line: 301, baseType: !169, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !179, file: !70, line: 302, baseType: !169, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !179, file: !70, line: 303, baseType: !67, size: 32, offset: 288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !179, file: !70, line: 304, baseType: !67, size: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !179, file: !70, line: 305, baseType: !169, size: 32, offset: 352)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !179, file: !70, line: 306, baseType: !169, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !179, file: !70, line: 307, baseType: !169, size: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !179, file: !70, line: 309, baseType: !67, size: 32, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !179, file: !70, line: 310, baseType: !169, size: 32, offset: 480)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !179, file: !70, line: 311, baseType: !67, size: 32, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !179, file: !70, line: 312, baseType: !67, size: 32, offset: 544)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !179, file: !70, line: 315, baseType: !67, size: 32, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !179, file: !70, line: 316, baseType: !119, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !179, file: !70, line: 317, baseType: !67, size: 32, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !179, file: !70, line: 318, baseType: !119, size: 64, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !179, file: !70, line: 321, baseType: !169, size: 32, offset: 832)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !179, file: !70, line: 322, baseType: !169, size: 32, offset: 864)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !179, file: !70, line: 323, baseType: !169, size: 32, offset: 896)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !179, file: !70, line: 324, baseType: !207, size: 64, offset: 960)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !70, line: 174, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 167, size: 256, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !209, file: !70, line: 169, baseType: !67, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !209, file: !70, line: 169, baseType: !67, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !209, file: !70, line: 170, baseType: !67, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !209, file: !70, line: 171, baseType: !67, size: 32, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !209, file: !70, line: 172, baseType: !169, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !209, file: !70, line: 173, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !179, file: !70, line: 325, baseType: !67, size: 32, offset: 1024)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !179, file: !70, line: 326, baseType: !119, size: 64, offset: 1088)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !76, file: !70, line: 330, baseType: !67, size: 32, offset: 5056)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !76, file: !70, line: 331, baseType: !67, size: 32, offset: 5088)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !76, file: !70, line: 332, baseType: !67, size: 32, offset: 5120)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !76, file: !70, line: 334, baseType: !67, size: 32, offset: 5152)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !76, file: !70, line: 335, baseType: !67, size: 32, offset: 5184)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !76, file: !70, line: 336, baseType: !226, size: 32, offset: 5216)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 26, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !24, line: 42, baseType: !7)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !76, file: !70, line: 337, baseType: !226, size: 32, offset: 5248)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !76, file: !70, line: 338, baseType: !226, size: 32, offset: 5280)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !76, file: !70, line: 339, baseType: !226, size: 32, offset: 5312)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !76, file: !70, line: 340, baseType: !67, size: 32, offset: 5344)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !76, file: !70, line: 344, baseType: !67, size: 32, offset: 5376)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !76, file: !70, line: 356, baseType: !67, size: 32, offset: 5408)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !76, file: !70, line: 364, baseType: !67, size: 32, offset: 5440)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !76, file: !70, line: 367, baseType: !67, size: 32, offset: 5472)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !76, file: !70, line: 368, baseType: !67, size: 32, offset: 5504)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !76, file: !70, line: 369, baseType: !67, size: 32, offset: 5536)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !76, file: !70, line: 375, baseType: !239, size: 64, offset: 5568)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !14}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !71, file: !72, line: 386, baseType: !243, size: 8256, offset: 5632)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 8256, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 129)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !71, file: !72, line: 387, baseType: !67, size: 32, offset: 13888)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !71, file: !72, line: 388, baseType: !67, size: 32, offset: 13920)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !71, file: !72, line: 389, baseType: !67, size: 32, offset: 13952)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !71, file: !72, line: 390, baseType: !67, size: 32, offset: 13984)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !71, file: !72, line: 391, baseType: !67, size: 32, offset: 14016)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !71, file: !72, line: 402, baseType: !252, size: 576, offset: 14080)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !72, line: 394, size: 576, elements: !253)
!253 = !{!254, !255, !256, !266, !267, !268}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !252, file: !72, line: 396, baseType: !67, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !252, file: !72, line: 397, baseType: !67, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !252, file: !72, line: 398, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !70, line: 604, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 593, size: 192, elements: !260)
!260 = !{!261, !262, !263, !264}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !259, file: !70, line: 595, baseType: !67, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !259, file: !70, line: 596, baseType: !67, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !259, file: !70, line: 599, baseType: !67, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !259, file: !70, line: 603, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !252, file: !72, line: 399, baseType: !67, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !252, file: !72, line: 400, baseType: !265, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !252, file: !72, line: 401, baseType: !269, size: 320, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !270, line: 56, baseType: !271)
!270 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !270, line: 47, size: 320, elements: !272)
!272 = !{!273, !274, !275, !276, !280, !281}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !271, file: !270, line: 49, baseType: !265, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !271, file: !270, line: 50, baseType: !265, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !271, file: !270, line: 51, baseType: !265, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !271, file: !270, line: 53, baseType: !277, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !278, line: 87, baseType: !279)
!278 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!279 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !271, file: !270, line: 54, baseType: !67, size: 32, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !271, file: !270, line: 55, baseType: !67, size: 32, offset: 288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !71, file: !72, line: 404, baseType: !265, size: 64, offset: 14656)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !71, file: !72, line: 405, baseType: !67, size: 32, offset: 14720)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !71, file: !72, line: 410, baseType: !67, size: 32, offset: 14752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !71, file: !72, line: 411, baseType: !67, size: 32, offset: 14784)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !71, file: !72, line: 413, baseType: !67, size: 32, offset: 14816)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !71, file: !72, line: 415, baseType: !67, size: 32, offset: 14848)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !71, file: !72, line: 416, baseType: !67, size: 32, offset: 14880)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !71, file: !72, line: 418, baseType: !67, size: 32, offset: 14912)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !71, file: !72, line: 419, baseType: !67, size: 32, offset: 14944)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !71, file: !72, line: 420, baseType: !67, size: 32, offset: 14976)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !71, file: !72, line: 421, baseType: !67, size: 32, offset: 15008)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !71, file: !72, line: 422, baseType: !67, size: 32, offset: 15040)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !71, file: !72, line: 424, baseType: !67, size: 32, offset: 15072)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !71, file: !72, line: 425, baseType: !67, size: 32, offset: 15104)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !71, file: !72, line: 427, baseType: !67, size: 32, offset: 15136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !71, file: !72, line: 430, baseType: !298, size: 10400, offset: 15168)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 10400, elements: !384)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !6, line: 154, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 52, size: 10400, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !319, !320, !321, !322, !323, !324, !325, !326, !327, !334, !335, !383}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !300, file: !6, line: 54, baseType: !67, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !300, file: !6, line: 56, baseType: !67, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !300, file: !6, line: 57, baseType: !67, size: 32, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !300, file: !6, line: 59, baseType: !67, size: 32, offset: 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !300, file: !6, line: 60, baseType: !67, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !300, file: !6, line: 61, baseType: !67, size: 32, offset: 160)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !300, file: !6, line: 63, baseType: !67, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !300, file: !6, line: 65, baseType: !67, size: 32, offset: 224)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !300, file: !6, line: 67, baseType: !67, size: 32, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !300, file: !6, line: 69, baseType: !67, size: 32, offset: 288)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !300, file: !6, line: 70, baseType: !67, size: 32, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !300, file: !6, line: 71, baseType: !67, size: 32, offset: 352)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !300, file: !6, line: 72, baseType: !67, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !300, file: !6, line: 73, baseType: !316, size: 8192, offset: 416)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8192, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !300, file: !6, line: 75, baseType: !67, size: 32, offset: 8608)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !300, file: !6, line: 76, baseType: !67, size: 32, offset: 8640)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !300, file: !6, line: 77, baseType: !67, size: 32, offset: 8672)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !300, file: !6, line: 78, baseType: !67, size: 32, offset: 8704)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !300, file: !6, line: 79, baseType: !67, size: 32, offset: 8736)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !300, file: !6, line: 80, baseType: !67, size: 32, offset: 8768)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !300, file: !6, line: 81, baseType: !67, size: 32, offset: 8800)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !300, file: !6, line: 83, baseType: !67, size: 32, offset: 8832)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !300, file: !6, line: 90, baseType: !328, size: 128, offset: 8864)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !6, line: 84, size: 128, elements: !329)
!329 = !{!330, !331, !332, !333}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !328, file: !6, line: 86, baseType: !67, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !328, file: !6, line: 87, baseType: !67, size: 32, offset: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !328, file: !6, line: 88, baseType: !67, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !328, file: !6, line: 89, baseType: !67, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !300, file: !6, line: 92, baseType: !67, size: 32, offset: 8992)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !300, file: !6, line: 150, baseType: !336, size: 1344, offset: 9024)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !6, line: 93, size: 1344, elements: !337)
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !336, file: !6, line: 95, baseType: !67, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !336, file: !6, line: 96, baseType: !67, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !336, file: !6, line: 97, baseType: !67, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !336, file: !6, line: 99, baseType: !67, size: 32, offset: 96)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !336, file: !6, line: 100, baseType: !67, size: 32, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !336, file: !6, line: 102, baseType: !67, size: 32, offset: 160)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !336, file: !6, line: 103, baseType: !67, size: 32, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !336, file: !6, line: 104, baseType: !67, size: 32, offset: 224)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !336, file: !6, line: 105, baseType: !67, size: 32, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !336, file: !6, line: 106, baseType: !67, size: 32, offset: 288)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !336, file: !6, line: 107, baseType: !67, size: 32, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !336, file: !6, line: 108, baseType: !67, size: 32, offset: 352)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !336, file: !6, line: 110, baseType: !67, size: 32, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !336, file: !6, line: 111, baseType: !67, size: 32, offset: 416)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !336, file: !6, line: 112, baseType: !67, size: 32, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !336, file: !6, line: 114, baseType: !67, size: 32, offset: 480)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !336, file: !6, line: 115, baseType: !226, size: 32, offset: 512)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !336, file: !6, line: 116, baseType: !226, size: 32, offset: 544)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !336, file: !6, line: 117, baseType: !67, size: 32, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !336, file: !6, line: 119, baseType: !67, size: 32, offset: 608)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !336, file: !6, line: 120, baseType: !67, size: 32, offset: 640)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !336, file: !6, line: 137, baseType: !360, size: 384, offset: 672)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !6, line: 122, size: 384, elements: !361)
!361 = !{!362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !360, file: !6, line: 124, baseType: !67, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !360, file: !6, line: 125, baseType: !67, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !360, file: !6, line: 126, baseType: !67, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !360, file: !6, line: 127, baseType: !67, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !360, file: !6, line: 128, baseType: !67, size: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !360, file: !6, line: 129, baseType: !67, size: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !360, file: !6, line: 130, baseType: !67, size: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !360, file: !6, line: 131, baseType: !67, size: 32, offset: 224)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !360, file: !6, line: 133, baseType: !67, size: 32, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !360, file: !6, line: 134, baseType: !67, size: 32, offset: 288)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !360, file: !6, line: 135, baseType: !67, size: 32, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !360, file: !6, line: 136, baseType: !67, size: 32, offset: 352)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !336, file: !6, line: 139, baseType: !67, size: 32, offset: 1056)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !336, file: !6, line: 140, baseType: !67, size: 32, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !336, file: !6, line: 141, baseType: !67, size: 32, offset: 1120)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !336, file: !6, line: 142, baseType: !67, size: 32, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !336, file: !6, line: 143, baseType: !67, size: 32, offset: 1184)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !336, file: !6, line: 144, baseType: !67, size: 32, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !336, file: !6, line: 145, baseType: !67, size: 32, offset: 1248)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !336, file: !6, line: 146, baseType: !67, size: 32, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !336, file: !6, line: 147, baseType: !67, size: 32, offset: 1312)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !300, file: !6, line: 152, baseType: !67, size: 32, offset: 10368)
!384 = !{!385}
!385 = !DISubrange(count: 1)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !71, file: !72, line: 431, baseType: !387, size: 64, offset: 25600)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !71, file: !72, line: 432, baseType: !389, size: 960, offset: 25664)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 960, elements: !384)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !6, line: 186, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 156, size: 960, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !391, file: !6, line: 158, baseType: !67, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !391, file: !6, line: 159, baseType: !67, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !391, file: !6, line: 161, baseType: !67, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !391, file: !6, line: 163, baseType: !67, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !391, file: !6, line: 164, baseType: !67, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !391, file: !6, line: 166, baseType: !67, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !391, file: !6, line: 167, baseType: !67, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !391, file: !6, line: 169, baseType: !67, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !391, file: !6, line: 170, baseType: !67, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !391, file: !6, line: 172, baseType: !67, size: 32, offset: 288)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !391, file: !6, line: 173, baseType: !67, size: 32, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !391, file: !6, line: 175, baseType: !67, size: 32, offset: 352)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !391, file: !6, line: 177, baseType: !67, size: 32, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !391, file: !6, line: 178, baseType: !67, size: 32, offset: 416)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !391, file: !6, line: 179, baseType: !67, size: 32, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !391, file: !6, line: 181, baseType: !67, size: 32, offset: 480)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !391, file: !6, line: 183, baseType: !67, size: 32, offset: 512)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !391, file: !6, line: 184, baseType: !411, size: 384, offset: 576)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !413)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!413 = !{!27}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !71, file: !72, line: 433, baseType: !415, size: 64, offset: 26624)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !71, file: !72, line: 434, baseType: !67, size: 32, offset: 26688)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !71, file: !72, line: 437, baseType: !67, size: 32, offset: 26720)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !71, file: !72, line: 440, baseType: !419, size: 256, offset: 26752)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !422)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 512, elements: !36)
!422 = !{!423}
!423 = !DISubrange(count: 4)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !71, file: !72, line: 441, baseType: !425, size: 128, offset: 27008)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 128, elements: !174)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, elements: !52)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !71, file: !72, line: 443, baseType: !419, size: 256, offset: 27136)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !71, file: !72, line: 444, baseType: !425, size: 128, offset: 27392)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !71, file: !72, line: 446, baseType: !431, size: 256, offset: 27520)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !422)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !36)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !71, file: !72, line: 447, baseType: !435, size: 128, offset: 27776)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 128, elements: !174)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !52)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !71, file: !72, line: 448, baseType: !431, size: 256, offset: 27904)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !71, file: !72, line: 449, baseType: !435, size: 128, offset: 28160)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !71, file: !72, line: 454, baseType: !441, size: 5888, offset: 28288)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 5888, elements: !443)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!443 = !{!444}
!444 = !DISubrange(count: 92)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !71, file: !72, line: 455, baseType: !446, size: 23552, offset: 34176)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 23552, elements: !447)
!447 = !{!444, !423}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !71, file: !72, line: 457, baseType: !412, size: 64, offset: 57728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !71, file: !72, line: 460, baseType: !450, size: 53376, offset: 57856)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !72, line: 364, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 302, size: 53376, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !481, !511, !512, !513, !519, !520, !521, !522, !523, !524, !525, !526}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !451, file: !72, line: 304, baseType: !387, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !451, file: !72, line: 305, baseType: !415, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !451, file: !72, line: 307, baseType: !67, size: 32, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !451, file: !72, line: 308, baseType: !67, size: 32, offset: 160)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !451, file: !72, line: 309, baseType: !67, size: 32, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !451, file: !72, line: 311, baseType: !67, size: 32, offset: 224)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !451, file: !72, line: 313, baseType: !67, size: 32, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !451, file: !72, line: 315, baseType: !67, size: 32, offset: 288)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !451, file: !72, line: 316, baseType: !67, size: 32, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !451, file: !72, line: 317, baseType: !67, size: 32, offset: 352)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !451, file: !72, line: 319, baseType: !67, size: 32, offset: 384)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !451, file: !72, line: 321, baseType: !67, size: 32, offset: 416)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !451, file: !72, line: 322, baseType: !67, size: 32, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !451, file: !72, line: 324, baseType: !173, size: 64, offset: 480)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !451, file: !72, line: 325, baseType: !67, size: 32, offset: 544)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !451, file: !72, line: 327, baseType: !67, size: 32, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !451, file: !72, line: 329, baseType: !67, size: 32, offset: 608)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !451, file: !72, line: 330, baseType: !67, size: 32, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !451, file: !72, line: 331, baseType: !67, size: 32, offset: 672)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !451, file: !72, line: 333, baseType: !67, size: 32, offset: 704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !451, file: !72, line: 334, baseType: !67, size: 32, offset: 736)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !451, file: !72, line: 339, baseType: !475, size: 2048, offset: 768)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 2048, elements: !480)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !72, line: 335, size: 64, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !476, file: !72, line: 337, baseType: !67, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !476, file: !72, line: 338, baseType: !67, size: 32, offset: 32)
!480 = !{!175, !37}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !451, file: !72, line: 342, baseType: !482, size: 49152, align: 128, offset: 2816)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 49152, align: 128, elements: !509)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !484, line: 36, baseType: !485, align: 128)
!484 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !484, line: 26, size: 512, elements: !486)
!486 = !{!487, !495, !496, !499, !500, !501}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !485, file: !484, line: 30, baseType: !488, size: 128, align: 128)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 128, elements: !493)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !490, line: 25, baseType: !491)
!490 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !24, line: 39, baseType: !492)
!492 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!493 = !{!494}
!494 = !DISubrange(count: 8)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !485, file: !484, line: 31, baseType: !488, size: 128, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !485, file: !484, line: 32, baseType: !497, size: 32, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !490, line: 26, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !24, line: 41, baseType: !67)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !485, file: !484, line: 33, baseType: !497, size: 32, offset: 288)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !485, file: !484, line: 34, baseType: !497, size: 32, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !485, file: !484, line: 35, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !484, line: 25, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !265, !67, !265, !67, !507, !67}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!509 = !{!510, !28}
!510 = !DISubrange(count: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !451, file: !72, line: 344, baseType: !67, size: 32, offset: 51968)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !451, file: !72, line: 345, baseType: !67, size: 32, offset: 52000)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !451, file: !72, line: 350, baseType: !514, size: 1024, offset: 52032)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 1024, elements: !36)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !451, file: !72, line: 346, size: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !515, file: !72, line: 348, baseType: !67, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !515, file: !72, line: 349, baseType: !67, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !451, file: !72, line: 352, baseType: !67, size: 32, offset: 53056)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !451, file: !72, line: 354, baseType: !67, size: 32, offset: 53088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !451, file: !72, line: 355, baseType: !67, size: 32, offset: 53120)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !451, file: !72, line: 356, baseType: !67, size: 32, offset: 53152)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !451, file: !72, line: 357, baseType: !67, size: 32, offset: 53184)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !451, file: !72, line: 360, baseType: !67, size: 32, offset: 53216)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !451, file: !72, line: 361, baseType: !67, size: 32, offset: 53248)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !451, file: !72, line: 362, baseType: !67, size: 32, offset: 53280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !71, file: !72, line: 463, baseType: !528, size: 4096, offset: 111232)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !529, line: 46, baseType: !530)
!529 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !529, line: 27, size: 4096, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !530, file: !529, line: 30, baseType: !67, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !530, file: !529, line: 31, baseType: !67, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !530, file: !529, line: 34, baseType: !67, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !530, file: !529, line: 35, baseType: !67, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !530, file: !529, line: 37, baseType: !265, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !530, file: !529, line: 38, baseType: !265, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !530, file: !529, line: 39, baseType: !265, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !530, file: !529, line: 42, baseType: !67, size: 32, align: 128, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !530, file: !529, line: 45, baseType: !541, size: 3680, offset: 416)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3680, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 460)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !71, file: !72, line: 494, baseType: !545, size: 2112, offset: 115328)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !72, line: 465, size: 2112, elements: !546)
!546 = !{!547, !688, !690, !691, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !704, !705, !706, !707}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !545, file: !72, line: 468, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !551, line: 146, baseType: !552)
!551 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !551, line: 31, size: 125056, elements: !553)
!553 = !{!554, !555, !556, !557, !560, !561, !562, !563, !564, !565, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !584, !585, !586, !587, !588, !589, !591, !593, !594, !595, !596, !597, !600, !602, !603, !605, !610, !611, !615, !616, !620, !624, !627, !629, !630, !632, !633, !635, !636, !637, !640, !642, !643, !644, !646, !647, !648, !649, !650, !651, !652, !653, !655, !656, !660, !669, !673, !675, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !552, file: !551, line: 34, baseType: !67, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !552, file: !551, line: 35, baseType: !67, size: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !552, file: !551, line: 36, baseType: !67, size: 32, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !552, file: !551, line: 37, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !490, line: 27, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !24, line: 44, baseType: !279)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !552, file: !551, line: 38, baseType: !558, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !552, file: !551, line: 39, baseType: !67, size: 32, offset: 256)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !552, file: !551, line: 40, baseType: !67, size: 32, offset: 288)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !552, file: !551, line: 41, baseType: !67, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !552, file: !551, line: 42, baseType: !67, size: 32, offset: 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !552, file: !551, line: 43, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !552, file: !551, line: 45, baseType: !67, size: 32, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !552, file: !551, line: 46, baseType: !67, size: 32, offset: 480)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !552, file: !551, line: 47, baseType: !67, size: 32, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !552, file: !551, line: 48, baseType: !67, size: 32, offset: 544)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !552, file: !551, line: 49, baseType: !67, size: 32, offset: 576)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !552, file: !551, line: 50, baseType: !67, size: 32, offset: 608)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !552, file: !551, line: 51, baseType: !67, size: 32, offset: 640)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !552, file: !551, line: 52, baseType: !33, size: 8, offset: 672)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !552, file: !551, line: 53, baseType: !33, size: 8, offset: 680)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !552, file: !551, line: 54, baseType: !33, size: 8, offset: 688)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !552, file: !551, line: 55, baseType: !169, size: 32, offset: 704)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !552, file: !551, line: 56, baseType: !169, size: 32, offset: 736)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !552, file: !551, line: 57, baseType: !67, size: 32, offset: 768)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !552, file: !551, line: 60, baseType: !67, size: 32, offset: 800)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !552, file: !551, line: 61, baseType: !582, size: 96, offset: 832)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 96, elements: !583)
!583 = !{!28}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !552, file: !551, line: 62, baseType: !582, size: 96, offset: 928)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !552, file: !551, line: 63, baseType: !582, size: 96, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !552, file: !551, line: 64, baseType: !67, size: 32, offset: 1120)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !552, file: !551, line: 65, baseType: !67, size: 32, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !552, file: !551, line: 66, baseType: !67, size: 32, offset: 1184)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !552, file: !551, line: 67, baseType: !590, size: 192, offset: 1216)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 192, elements: !583)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !552, file: !551, line: 68, baseType: !592, size: 256, offset: 1408)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !422)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !552, file: !551, line: 69, baseType: !592, size: 256, offset: 1664)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !552, file: !551, line: 70, baseType: !442, size: 64, offset: 1920)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !552, file: !551, line: 74, baseType: !592, size: 256, offset: 1984)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !552, file: !551, line: 75, baseType: !592, size: 256, offset: 2240)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !552, file: !551, line: 77, baseType: !598, size: 24576, align: 128, offset: 2560)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 24576, align: 128, elements: !599)
!599 = !{!37, !28}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !552, file: !551, line: 78, baseType: !601, size: 1024, offset: 27136)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !36)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !552, file: !551, line: 79, baseType: !67, size: 32, offset: 28160)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !552, file: !551, line: 80, baseType: !604, size: 64, offset: 28224)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !552, file: !551, line: 83, baseType: !606, size: 64, offset: 28288)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !490, line: 24, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !24, line: 37, baseType: !609)
!609 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !552, file: !551, line: 84, baseType: !265, size: 64, offset: 28352)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !552, file: !551, line: 85, baseType: !612, size: 128, offset: 28416)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 128, elements: !174)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 32, elements: !174)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !552, file: !551, line: 86, baseType: !613, size: 64, offset: 28544)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !552, file: !551, line: 87, baseType: !617, size: 2176, offset: 28608)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 2176, elements: !618)
!618 = !{!175, !619}
!619 = !DISubrange(count: 17)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !552, file: !551, line: 92, baseType: !621, size: 20736, offset: 30784)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 20736, elements: !622)
!622 = !{!623, !623}
!623 = !DISubrange(count: 18)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !552, file: !551, line: 96, baseType: !625, size: 2176, offset: 51520)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 2176, elements: !618)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !552, file: !551, line: 97, baseType: !628, size: 128, offset: 53696)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 128, elements: !174)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !552, file: !551, line: 98, baseType: !173, size: 64, offset: 53824)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !552, file: !551, line: 99, baseType: !631, size: 1024, offset: 53888)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !480)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !552, file: !551, line: 100, baseType: !614, size: 32, offset: 54912)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !552, file: !551, line: 105, baseType: !634, size: 10368, offset: 54944)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 10368, elements: !622)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !552, file: !551, line: 106, baseType: !634, size: 10368, offset: 65312)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !552, file: !551, line: 107, baseType: !67, size: 32, offset: 75680)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !552, file: !551, line: 108, baseType: !638, size: 576, offset: 75712)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 576, elements: !639)
!639 = !{!623}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !552, file: !551, line: 109, baseType: !641, size: 20736, offset: 76288)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 20736, elements: !622)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !552, file: !551, line: 110, baseType: !626, size: 64, offset: 97024)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !552, file: !551, line: 111, baseType: !626, size: 64, offset: 97088)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !552, file: !551, line: 112, baseType: !645, size: 64, offset: 97152)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !552, file: !551, line: 113, baseType: !645, size: 64, offset: 97216)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !552, file: !551, line: 114, baseType: !645, size: 64, offset: 97280)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !552, file: !551, line: 115, baseType: !67, size: 32, offset: 97344)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !552, file: !551, line: 116, baseType: !442, size: 64, offset: 97408)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !552, file: !551, line: 117, baseType: !442, size: 64, offset: 97472)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !552, file: !551, line: 118, baseType: !442, size: 64, offset: 97536)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !552, file: !551, line: 119, baseType: !67, size: 32, offset: 97600)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !552, file: !551, line: 120, baseType: !654, size: 576, offset: 97632)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 576, elements: !639)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !552, file: !551, line: 121, baseType: !226, size: 32, offset: 98208)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !552, file: !551, line: 122, baseType: !657, size: 64, offset: 98240)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !22, line: 27, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !24, line: 45, baseType: !659)
!659 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !552, file: !551, line: 125, baseType: !661, size: 256, offset: 98304)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !70, line: 503, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 496, size: 256, elements: !663)
!663 = !{!664, !666, !667, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !662, file: !70, line: 498, baseType: !665, size: 64)
!665 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !662, file: !70, line: 499, baseType: !665, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !662, file: !70, line: 500, baseType: !665, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !662, file: !70, line: 502, baseType: !665, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !552, file: !551, line: 128, baseType: !670, size: 2008, offset: 98560)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2008, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: 251)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !552, file: !551, line: 129, baseType: !674, size: 8032, offset: 100576)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 8032, elements: !671)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !552, file: !551, line: 130, baseType: !676, size: 16064, offset: 108608)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 16064, elements: !671)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !552, file: !551, line: 131, baseType: !67, size: 32, offset: 124672)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !552, file: !551, line: 132, baseType: !67, size: 32, offset: 124704)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !552, file: !551, line: 135, baseType: !67, size: 32, offset: 124736)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !552, file: !551, line: 136, baseType: !67, size: 32, offset: 124768)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !552, file: !551, line: 137, baseType: !67, size: 32, offset: 124800)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !552, file: !551, line: 138, baseType: !67, size: 32, offset: 124832)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !552, file: !551, line: 139, baseType: !67, size: 32, offset: 124864)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !552, file: !551, line: 142, baseType: !169, size: 32, offset: 124896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !552, file: !551, line: 143, baseType: !67, size: 32, offset: 124928)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !552, file: !551, line: 144, baseType: !67, size: 32, offset: 124960)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !552, file: !551, line: 145, baseType: !67, size: 32, offset: 124992)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !545, file: !72, line: 470, baseType: !689, size: 128, offset: 64)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 128, elements: !174)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !545, file: !72, line: 473, baseType: !548, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !545, file: !72, line: 476, baseType: !692, size: 1152, offset: 256)
!692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1152, elements: !639)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !545, file: !72, line: 478, baseType: !67, size: 32, offset: 1408)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !545, file: !72, line: 480, baseType: !67, size: 32, offset: 1440)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !545, file: !72, line: 482, baseType: !67, size: 32, offset: 1472)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !545, file: !72, line: 483, baseType: !67, size: 32, offset: 1504)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !545, file: !72, line: 484, baseType: !67, size: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !545, file: !72, line: 485, baseType: !67, size: 32, offset: 1568)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !545, file: !72, line: 486, baseType: !67, size: 32, offset: 1600)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !545, file: !72, line: 487, baseType: !558, size: 64, offset: 1664)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !545, file: !72, line: 488, baseType: !558, size: 64, offset: 1728)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !545, file: !72, line: 489, baseType: !703, size: 128, offset: 1792)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 128, elements: !174)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !545, file: !72, line: 490, baseType: !558, size: 64, offset: 1920)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !545, file: !72, line: 491, baseType: !558, size: 64, offset: 1984)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !545, file: !72, line: 492, baseType: !67, size: 32, offset: 2048)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !545, file: !72, line: 493, baseType: !67, size: 32, offset: 2080)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !71, file: !72, line: 497, baseType: !549, size: 64, offset: 117440)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !71, file: !72, line: 500, baseType: !549, size: 64, offset: 117504)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !71, file: !72, line: 503, baseType: !67, size: 32, offset: 117568)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !71, file: !72, line: 504, baseType: !712, size: 1216, offset: 117632)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 1216, elements: !713)
!713 = !{!714}
!714 = !DISubrange(count: 19)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !71, file: !72, line: 505, baseType: !67, size: 32, offset: 118848)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !71, file: !72, line: 506, baseType: !712, size: 1216, offset: 118912)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !71, file: !72, line: 507, baseType: !173, size: 64, offset: 120128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !71, file: !72, line: 510, baseType: !67, size: 32, offset: 120192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !71, file: !72, line: 511, baseType: !67, size: 32, offset: 120224)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !71, file: !72, line: 512, baseType: !558, size: 64, offset: 120256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !71, file: !72, line: 522, baseType: !722, size: 10624, offset: 120320)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !72, line: 515, size: 10624, elements: !723)
!723 = !{!724, !726, !729, !732}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !722, file: !72, line: 517, baseType: !725, size: 256, align: 128)
!725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 256, elements: !36)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !722, file: !72, line: 518, baseType: !727, size: 128, align: 128, offset: 256)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 128, elements: !728)
!728 = !{!175, !423}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !722, file: !72, line: 520, baseType: !730, size: 4096, align: 128, offset: 384)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 4096, elements: !731)
!731 = !{!423, !53}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !722, file: !72, line: 521, baseType: !733, size: 6144, align: 128, offset: 4480)
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 6144, elements: !734)
!734 = !{!735, !37}
!735 = !DISubrange(count: 24)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !71, file: !72, line: 732, baseType: !737, size: 82688, offset: 130944)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !72, line: 525, size: 82688, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !766, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !784, !787, !791, !792, !793, !798, !799, !802, !803, !804, !805, !806, !807, !808, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !868, !899, !900, !901, !902, !903, !904, !905, !906, !907, !910, !911, !912, !915, !918, !920, !923, !925, !926}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !737, file: !72, line: 527, baseType: !67, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !737, file: !72, line: 530, baseType: !67, size: 32, offset: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !737, file: !72, line: 531, baseType: !67, size: 32, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !737, file: !72, line: 532, baseType: !67, size: 32, offset: 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !737, file: !72, line: 535, baseType: !67, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !737, file: !72, line: 536, baseType: !67, size: 32, offset: 160)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !737, file: !72, line: 537, baseType: !67, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !737, file: !72, line: 538, baseType: !67, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !737, file: !72, line: 539, baseType: !67, size: 32, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !737, file: !72, line: 542, baseType: !67, size: 32, offset: 288)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !737, file: !72, line: 543, baseType: !67, size: 32, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !737, file: !72, line: 544, baseType: !67, size: 32, offset: 352)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !737, file: !72, line: 545, baseType: !67, size: 32, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !737, file: !72, line: 546, baseType: !67, size: 32, offset: 416)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !737, file: !72, line: 547, baseType: !67, size: 32, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !737, file: !72, line: 548, baseType: !67, size: 32, offset: 480)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !737, file: !72, line: 549, baseType: !67, size: 32, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !737, file: !72, line: 551, baseType: !67, size: 32, offset: 544)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !737, file: !72, line: 554, baseType: !173, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !737, file: !72, line: 555, baseType: !173, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !737, file: !72, line: 558, baseType: !173, size: 64, offset: 704)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !737, file: !72, line: 559, baseType: !173, size: 64, offset: 768)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !737, file: !72, line: 561, baseType: !173, size: 64, offset: 832)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !737, file: !72, line: 562, baseType: !173, size: 64, offset: 896)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !737, file: !72, line: 565, baseType: !7, size: 32, offset: 960)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !737, file: !72, line: 566, baseType: !765, size: 128, offset: 992)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !422)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !737, file: !72, line: 567, baseType: !767, size: 512, offset: 1120)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !36)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !737, file: !72, line: 568, baseType: !7, size: 32, offset: 1632)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !737, file: !72, line: 569, baseType: !7, size: 32, offset: 1664)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !737, file: !72, line: 570, baseType: !67, size: 32, offset: 1696)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !737, file: !72, line: 571, baseType: !67, size: 32, offset: 1728)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !737, file: !72, line: 572, baseType: !67, size: 32, offset: 1760)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !737, file: !72, line: 573, baseType: !67, size: 32, offset: 1792)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !737, file: !72, line: 574, baseType: !67, size: 32, offset: 1824)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !737, file: !72, line: 575, baseType: !67, size: 32, offset: 1856)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !737, file: !72, line: 576, baseType: !67, size: 32, offset: 1888)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !737, file: !72, line: 577, baseType: !67, size: 32, offset: 1920)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !737, file: !72, line: 578, baseType: !67, size: 32, offset: 1952)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !72, line: 585, baseType: !606, size: 64, offset: 1984)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !737, file: !72, line: 586, baseType: !265, size: 64, offset: 2048)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !737, file: !72, line: 587, baseType: !606, size: 64, offset: 2112)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !737, file: !72, line: 588, baseType: !783, size: 64, offset: 2176)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !737, file: !72, line: 589, baseType: !785, size: 64, offset: 2240)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !493)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !737, file: !72, line: 591, baseType: !788, size: 64, offset: 2304)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 192, elements: !790)
!790 = !{!735}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !737, file: !72, line: 592, baseType: !606, size: 64, offset: 2368)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !737, file: !72, line: 593, baseType: !612, size: 128, offset: 2432)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !737, file: !72, line: 594, baseType: !794, size: 128, offset: 2560)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 128, elements: !174)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !797)
!797 = !{!494, !175}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !737, file: !72, line: 595, baseType: !628, size: 128, offset: 2688)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !737, file: !72, line: 596, baseType: !800, size: 4096, offset: 2816)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 4096, elements: !801)
!801 = !{!175, !510}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !737, file: !72, line: 597, baseType: !606, size: 64, offset: 6912)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !737, file: !72, line: 598, baseType: !606, size: 64, offset: 6976)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !737, file: !72, line: 599, baseType: !442, size: 64, offset: 7040)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !737, file: !72, line: 603, baseType: !601, size: 1024, offset: 7104)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !737, file: !72, line: 606, baseType: !67, size: 32, offset: 8128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !737, file: !72, line: 607, baseType: !67, size: 32, offset: 8160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !737, file: !72, line: 608, baseType: !809, size: 32, align: 32, offset: 8192)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !422)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !737, file: !72, line: 609, baseType: !67, size: 32, offset: 8224)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !737, file: !72, line: 611, baseType: !67, size: 32, offset: 8256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !737, file: !72, line: 612, baseType: !67, size: 32, offset: 8288)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !737, file: !72, line: 614, baseType: !67, size: 32, offset: 8320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !737, file: !72, line: 615, baseType: !67, size: 32, offset: 8352)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !737, file: !72, line: 621, baseType: !67, size: 32, offset: 8384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !737, file: !72, line: 624, baseType: !67, size: 32, offset: 8416)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !737, file: !72, line: 626, baseType: !67, size: 32, offset: 8448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !737, file: !72, line: 627, baseType: !67, size: 32, offset: 8480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !737, file: !72, line: 671, baseType: !820, size: 60672, offset: 8576)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !72, line: 629, size: 60672, elements: !821)
!821 = !{!822, !826, !830, !832, !833, !836, !840, !842, !843, !844, !845, !846, !849, !853, !856, !857, !858, !859, !860, !863, !865, !867}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !820, file: !72, line: 634, baseType: !823, size: 3072, align: 128)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 3072, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !820, file: !72, line: 635, baseType: !827, size: 6912, align: 128, offset: 3072)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 6912, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 864)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !820, file: !72, line: 638, baseType: !831, size: 2048, align: 128, offset: 9984)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !317)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !820, file: !72, line: 639, baseType: !831, size: 2048, align: 128, offset: 12032)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !820, file: !72, line: 640, baseType: !834, size: 3072, align: 128, offset: 14080)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 3072, elements: !835)
!835 = !{!28, !53}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !820, file: !72, line: 641, baseType: !837, size: 3840, align: 128, offset: 17152)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 3840, elements: !838)
!838 = !{!839, !37}
!839 = !DISubrange(count: 15)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !820, file: !72, line: 642, baseType: !841, size: 128, offset: 20992)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !422)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !820, file: !72, line: 643, baseType: !841, size: 128, offset: 21120)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !820, file: !72, line: 644, baseType: !67, size: 32, offset: 21248)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !820, file: !72, line: 645, baseType: !67, size: 32, offset: 21280)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !820, file: !72, line: 648, baseType: !730, size: 4096, align: 128, offset: 21376)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !820, file: !72, line: 649, baseType: !847, size: 4096, align: 128, offset: 25472)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 4096, elements: !848)
!848 = !{!37, !37}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !820, file: !72, line: 652, baseType: !850, size: 576, align: 128, offset: 29568)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 576, elements: !851)
!851 = !{!852}
!852 = !DISubrange(count: 9)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !820, file: !72, line: 653, baseType: !854, size: 1024, align: 128, offset: 30208)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1024, elements: !855)
!855 = !{!510}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !820, file: !72, line: 656, baseType: !590, size: 192, offset: 31232)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !820, file: !72, line: 658, baseType: !590, size: 192, offset: 31424)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !820, file: !72, line: 661, baseType: !590, size: 192, offset: 31616)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !820, file: !72, line: 664, baseType: !173, size: 64, offset: 31808)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !820, file: !72, line: 665, baseType: !861, size: 24576, offset: 31872)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 24576, elements: !862)
!862 = !{!175, !510, !27}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !820, file: !72, line: 666, baseType: !864, size: 2048, offset: 56448)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !855)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !820, file: !72, line: 667, baseType: !866, size: 2048, offset: 58496)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 2048, elements: !480)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !820, file: !72, line: 670, baseType: !582, size: 96, offset: 60544)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !737, file: !72, line: 704, baseType: !869, size: 6144, offset: 69248)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !737, file: !72, line: 674, size: 6144, elements: !870)
!870 = !{!871, !875, !879, !882, !885, !887, !888, !891, !893, !894, !895, !896, !897, !898}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !869, file: !72, line: 677, baseType: !872, size: 320, align: 64)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 320, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 40)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !869, file: !72, line: 680, baseType: !876, size: 384, align: 128, offset: 384)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 384, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 48)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !869, file: !72, line: 683, baseType: !880, size: 640, align: 32, offset: 768)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 640, elements: !881)
!881 = !{!175, !874}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !869, file: !72, line: 686, baseType: !883, size: 2560, align: 128, offset: 1408)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 2560, elements: !884)
!884 = !{!175, !874, !175}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !869, file: !72, line: 687, baseType: !886, size: 1280, align: 64, offset: 3968)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !884)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !869, file: !72, line: 690, baseType: !872, size: 320, align: 32, offset: 5248)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !869, file: !72, line: 692, baseType: !889, size: 256, align: 32, offset: 5568)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 256, elements: !890)
!890 = !{!175, !423, !175}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !869, file: !72, line: 693, baseType: !892, size: 64, align: 32, offset: 5824)
!892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !728)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !869, file: !72, line: 694, baseType: !67, size: 32, offset: 5888)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !869, file: !72, line: 695, baseType: !614, size: 32, align: 32, offset: 5920)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !869, file: !72, line: 698, baseType: !67, size: 32, offset: 5952)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !869, file: !72, line: 699, baseType: !67, size: 32, offset: 5984)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !869, file: !72, line: 702, baseType: !67, size: 32, offset: 6016)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !869, file: !72, line: 703, baseType: !67, size: 32, offset: 6048)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !737, file: !72, line: 707, baseType: !67, size: 32, offset: 75392)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !737, file: !72, line: 708, baseType: !67, size: 32, offset: 75424)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !737, file: !72, line: 709, baseType: !67, size: 32, offset: 75456)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !737, file: !72, line: 710, baseType: !67, size: 32, offset: 75488)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !737, file: !72, line: 711, baseType: !67, size: 32, offset: 75520)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !737, file: !72, line: 712, baseType: !67, size: 32, offset: 75552)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !737, file: !72, line: 713, baseType: !67, size: 32, offset: 75584)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !737, file: !72, line: 714, baseType: !67, size: 32, offset: 75616)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !737, file: !72, line: 717, baseType: !908, size: 128, offset: 75648)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !909)
!909 = !{!175, !175}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !737, file: !72, line: 718, baseType: !67, size: 32, offset: 75776)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !737, file: !72, line: 719, baseType: !67, size: 32, offset: 75808)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !737, file: !72, line: 722, baseType: !913, size: 4096, offset: 75840)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 4096, elements: !914)
!914 = !{!175, !510, !423}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !737, file: !72, line: 723, baseType: !916, size: 64, offset: 79936)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 64, elements: !422)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !737, file: !72, line: 724, baseType: !919, size: 2048, offset: 80000)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 2048, elements: !914)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !737, file: !72, line: 725, baseType: !921, size: 64, offset: 82048)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 32, elements: !422)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !737, file: !72, line: 728, baseType: !924, size: 144, offset: 82112)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 144, elements: !639)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !737, file: !72, line: 729, baseType: !67, size: 32, offset: 82272)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !737, file: !72, line: 730, baseType: !927, size: 272, offset: 82304)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 272, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 34)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !71, file: !72, line: 735, baseType: !931, size: 64, offset: 213632)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !72, line: 379, baseType: !933)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !72, line: 379, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !71, file: !72, line: 793, baseType: !935, size: 29504, offset: 213696)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !72, line: 738, size: 29504, elements: !936)
!936 = !{!937, !964, !968, !970, !972, !973, !974, !975, !976, !977, !978, !979, !982, !984, !985, !988, !990, !992, !993, !994}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !935, file: !72, line: 764, baseType: !938, size: 5632)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !935, file: !72, line: 741, size: 5632, elements: !939)
!939 = !{!940, !941, !942, !943, !945, !946, !947, !948, !949, !951, !954, !956, !960, !961, !963}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !938, file: !72, line: 744, baseType: !67, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !938, file: !72, line: 746, baseType: !67, size: 32, offset: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !938, file: !72, line: 748, baseType: !67, size: 32, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !938, file: !72, line: 750, baseType: !944, size: 608, offset: 96)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 608, elements: !713)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !938, file: !72, line: 751, baseType: !67, size: 32, offset: 704)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !938, file: !72, line: 752, baseType: !67, size: 32, offset: 736)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !938, file: !72, line: 753, baseType: !67, size: 32, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !938, file: !72, line: 754, baseType: !173, size: 64, offset: 800)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !938, file: !72, line: 755, baseType: !950, size: 2048, offset: 864)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 2048, elements: !801)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !938, file: !72, line: 756, baseType: !952, size: 544, offset: 2912)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 544, elements: !953)
!953 = !{!619}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !938, file: !72, line: 757, baseType: !955, size: 192, offset: 3456)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !413)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !938, file: !72, line: 758, baseType: !957, size: 1664, offset: 3648)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1664, elements: !958)
!958 = !{!423, !959}
!959 = !DISubrange(count: 13)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !938, file: !72, line: 760, baseType: !173, size: 64, offset: 5312)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !938, file: !72, line: 762, baseType: !962, size: 192, offset: 5376)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 192, elements: !583)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !938, file: !72, line: 763, baseType: !665, size: 64, offset: 5568)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !935, file: !72, line: 769, baseType: !965, size: 160, offset: 5632)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 160, elements: !966)
!966 = !{!967}
!967 = !DISubrange(count: 5)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !935, file: !72, line: 770, baseType: !969, size: 320, offset: 5824)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 320, elements: !966)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !935, file: !72, line: 771, baseType: !971, size: 320, offset: 6144)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 320, elements: !966)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !935, file: !72, line: 772, baseType: !952, size: 544, offset: 6464)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !935, file: !72, line: 774, baseType: !969, size: 320, offset: 7040)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !935, file: !72, line: 775, baseType: !971, size: 320, offset: 7360)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !935, file: !72, line: 776, baseType: !971, size: 320, offset: 7680)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !935, file: !72, line: 777, baseType: !971, size: 320, offset: 8000)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !935, file: !72, line: 778, baseType: !971, size: 320, offset: 8320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !935, file: !72, line: 779, baseType: !971, size: 320, offset: 8640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !935, file: !72, line: 781, baseType: !980, size: 6080, offset: 8960)
!980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 6080, elements: !981)
!981 = !{!967, !714}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !935, file: !72, line: 782, baseType: !983, size: 2176, offset: 15040)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 2176, elements: !618)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !935, file: !72, line: 783, baseType: !703, size: 128, offset: 17216)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !935, file: !72, line: 784, baseType: !986, size: 8192, offset: 17344)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 8192, elements: !987)
!987 = !{!175, !175, !510}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !935, file: !72, line: 785, baseType: !989, size: 384, offset: 25536)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 384, elements: !413)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !935, file: !72, line: 786, baseType: !991, size: 3328, offset: 25920)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 3328, elements: !958)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !935, file: !72, line: 788, baseType: !173, size: 64, offset: 29248)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !935, file: !72, line: 789, baseType: !173, size: 64, offset: 29312)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !935, file: !72, line: 791, baseType: !582, size: 96, offset: 29376)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !71, file: !72, line: 795, baseType: !996, size: 4096, align: 128, offset: 243200)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4096, elements: !997)
!997 = !{!175, !53}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !71, file: !72, line: 796, baseType: !999, size: 2048, align: 128, offset: 247296)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !997)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !71, file: !72, line: 797, baseType: !1001, size: 64, offset: 249344)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 64, elements: !174)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !71, file: !72, line: 800, baseType: !14, size: 64, offset: 249408)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !71, file: !72, line: 801, baseType: !1004, size: 384, offset: 249472)
!1004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !1005)
!1005 = !{!175, !28}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !71, file: !72, line: 802, baseType: !1007, size: 128, offset: 249856)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 128, elements: !174)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !1010)
!1010 = !{!175, !423, !423}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !71, file: !72, line: 805, baseType: !1012, size: 448, offset: 249984)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 448, elements: !1018)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1014, line: 27, baseType: !1015)
!1014 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !265}
!1018 = !{!1019}
!1019 = !DISubrange(count: 7)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !71, file: !72, line: 806, baseType: !1012, size: 448, offset: 250432)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !71, file: !72, line: 807, baseType: !1022, size: 768, offset: 250880)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1023, size: 768, elements: !1027)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1014, line: 28, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !265, !265}
!1027 = !{!1028}
!1028 = !DISubrange(count: 12)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !71, file: !72, line: 808, baseType: !1030, size: 768, offset: 251648)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 768, elements: !1027)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !71, file: !72, line: 809, baseType: !1032, size: 64, offset: 252416)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1014, line: 29, baseType: !1033)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !265, !265, !67, !67}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !71, file: !72, line: 811, baseType: !1037, size: 8448, offset: 252480)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1038, line: 110, baseType: !1039)
!1038 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1038, line: 63, size: 8448, elements: !1040)
!1040 = !{!1041, !1047, !1048, !1049, !1050, !1052, !1053, !1054, !1055, !1061, !1067, !1068, !1072, !1077, !1078, !1084, !1088, !1089, !1090, !1091, !1092, !1097, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1039, file: !1038, line: 65, baseType: !1042, size: 448)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 448, elements: !1018)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1038, line: 26, baseType: !1044)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!67, !265, !67, !265, !67}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1039, file: !1038, line: 66, baseType: !1042, size: 448, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1039, file: !1038, line: 67, baseType: !1042, size: 448, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1039, file: !1038, line: 68, baseType: !1042, size: 448, offset: 1344)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1039, file: !1038, line: 69, baseType: !1051, size: 256, offset: 1792)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 256, elements: !422)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1039, file: !1038, line: 70, baseType: !1042, size: 448, offset: 2048)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1039, file: !1038, line: 71, baseType: !1042, size: 448, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1039, file: !1038, line: 72, baseType: !1042, size: 448, offset: 2944)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1039, file: !1038, line: 73, baseType: !1056, size: 448, offset: 3392)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 448, elements: !1018)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1038, line: 27, baseType: !1058)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !265, !265, !265, !265, !67, !626}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1039, file: !1038, line: 74, baseType: !1062, size: 448, offset: 3840)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 448, elements: !1018)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1038, line: 28, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !265, !265, !265, !265, !265, !67, !626}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1039, file: !1038, line: 75, baseType: !1042, size: 448, offset: 4288)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1039, file: !1038, line: 76, baseType: !1069, size: 64, offset: 4736)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!67, !265, !67, !265, !67, !626}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1039, file: !1038, line: 78, baseType: !1073, size: 256, offset: 4800)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 256, elements: !422)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!657, !265, !67}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1039, file: !1038, line: 79, baseType: !1073, size: 256, offset: 5056)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1039, file: !1038, line: 81, baseType: !1079, size: 64, offset: 5312)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !412, !67, !412, !67, !1082}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !422)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1039, file: !1038, line: 83, baseType: !1085, size: 64, offset: 5376)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!169, !1082, !1082, !67}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1039, file: !1038, line: 86, baseType: !1056, size: 448, offset: 5440)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1039, file: !1038, line: 87, baseType: !1062, size: 448, offset: 5888)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1039, file: !1038, line: 88, baseType: !1056, size: 448, offset: 6336)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1039, file: !1038, line: 89, baseType: !1062, size: 448, offset: 6784)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1039, file: !1038, line: 93, baseType: !1093, size: 448, offset: 7232)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 448, elements: !1018)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!67, !626, !442, !67, !442, !783, !67, !67}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1039, file: !1038, line: 98, baseType: !1098, size: 64, offset: 7680)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !265, !265, !626}
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
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !71, file: !72, line: 812, baseType: !1113, size: 2368, offset: 260928)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !484, line: 111, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !484, line: 58, size: 2368, elements: !1115)
!1115 = !{!1116, !1123, !1127, !1131, !1138, !1143, !1144, !1148, !1152, !1153, !1157, !1165, !1169, !1173, !1174, !1178, !1182, !1186, !1187, !1188, !1189, !1194}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1114, file: !484, line: 60, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !265, !67, !1120, !67, !67, !67, !67, !67, !1121}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1114, file: !484, line: 65, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!265, !265, !626, !1120, !67, !67, !67, !67, !67, !1121}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1114, file: !484, line: 71, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{null, !265, !67, !265, !67, !67, !67, !67, !67}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1114, file: !484, line: 75, baseType: !1132, size: 640, offset: 192)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1133, size: 640, elements: !1136)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null, !265, !67, !265, !67, !265, !67, !67}
!1136 = !{!1137}
!1137 = !DISubrange(count: 10)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1114, file: !484, line: 78, baseType: !1139, size: 448, offset: 832)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 448, elements: !1018)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !265, !67, !265, !67, !67}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1114, file: !484, line: 79, baseType: !1140, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1114, file: !484, line: 81, baseType: !1145, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !265, !67, !265, !67, !67, !67}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1114, file: !484, line: 84, baseType: !1149, size: 64, offset: 1408)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !265, !265, !265, !265, !67, !67, !67, !783}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1114, file: !484, line: 88, baseType: !1140, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1114, file: !484, line: 91, baseType: !1154, size: 64, offset: 1536)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{null, !265, !67, !67}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1114, file: !484, line: 93, baseType: !1158, size: 64, offset: 1600)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!14, !14, !1161, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1164, line: 46, baseType: !659)
!1164 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1114, file: !484, line: 94, baseType: !1166, size: 64, offset: 1664)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null, !14, !67}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1114, file: !484, line: 97, baseType: !1170, size: 64, offset: 1728)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !442, !265, !67}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1114, file: !484, line: 98, baseType: !1170, size: 64, offset: 1792)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1114, file: !484, line: 99, baseType: !1175, size: 64, offset: 1856)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !442, !442, !67}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1114, file: !484, line: 100, baseType: !1179, size: 64, offset: 1920)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !442, !67}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1114, file: !484, line: 102, baseType: !1183, size: 64, offset: 1984)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{null, !265, !265, !265, !265, !265, !67, !67, !67, !67}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1114, file: !484, line: 104, baseType: !502, size: 64, offset: 2048)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1114, file: !484, line: 105, baseType: !502, size: 64, offset: 2112)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1114, file: !484, line: 106, baseType: !502, size: 64, offset: 2176)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1114, file: !484, line: 107, baseType: !1190, size: 64, offset: 2240)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !68, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1114, file: !484, line: 109, baseType: !1195, size: 64, offset: 2304)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !626, !442, !442, !442, !442, !67}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !71, file: !72, line: 813, baseType: !1199, size: 960, offset: 263296)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1200, line: 115, baseType: !1201)
!1200 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 89, size: 960, elements: !1202)
!1202 = !{!1203, !1207, !1211, !1216, !1217, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1233, !1237, !1241}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1201, file: !1200, line: 94, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{null, !783, !265, !265}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1201, file: !1200, line: 95, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{null, !265, !783}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1201, file: !1200, line: 97, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1215, !265, !265}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1201, file: !1200, line: 98, baseType: !1204, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1201, file: !1200, line: 99, baseType: !1218, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !265, !1215}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1201, file: !1200, line: 100, baseType: !1208, size: 64, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1201, file: !1200, line: 102, baseType: !1212, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1201, file: !1200, line: 103, baseType: !1218, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1201, file: !1200, line: 104, baseType: !1208, size: 64, offset: 512)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1201, file: !1200, line: 106, baseType: !1204, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1201, file: !1200, line: 107, baseType: !1208, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1201, file: !1200, line: 109, baseType: !1228, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !1231, !265, !265}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1024, elements: !52)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1201, file: !1200, line: 110, baseType: !1234, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !265, !1231}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1201, file: !1200, line: 112, baseType: !1238, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{null, !783}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1201, file: !1200, line: 113, baseType: !1238, size: 64, offset: 896)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !71, file: !72, line: 814, baseType: !1243, size: 384, offset: 264256)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1200, line: 126, baseType: !1244)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 117, size: 384, elements: !1245)
!1245 = !{!1246, !1250, !1251, !1255, !1256, !1260}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1244, file: !1200, line: 119, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null, !783, !783}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1244, file: !1200, line: 120, baseType: !1247, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1244, file: !1200, line: 121, baseType: !1252, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!67, !783, !412, !265}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1244, file: !1200, line: 122, baseType: !1252, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1244, file: !1200, line: 123, baseType: !1257, size: 64, offset: 256)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!67, !783, !412, !265, !783}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1244, file: !1200, line: 124, baseType: !1261, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{null, !783, !783, !265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !71, file: !72, line: 815, baseType: !1265, size: 1408, offset: 264640)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1266, line: 44, baseType: !1267)
!1266 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1266, line: 26, size: 1408, elements: !1268)
!1268 = !{!1269, !1273, !1274, !1278, !1279, !1283, !1287, !1288, !1293, !1297, !1298, !1299, !1301}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1267, file: !1266, line: 28, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!67, !783, !442, !442}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1267, file: !1266, line: 29, baseType: !1270, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1267, file: !1266, line: 30, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!67, !783, !67, !67}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1267, file: !1266, line: 31, baseType: !1275, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1267, file: !1266, line: 33, baseType: !1280, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !783, !426, !67}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1267, file: !1266, line: 34, baseType: !1284, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !783, !420, !67}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1267, file: !1266, line: 35, baseType: !1284, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1267, file: !1266, line: 37, baseType: !1289, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !783, !1292, !442, !67}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1267, file: !1266, line: 39, baseType: !1294, size: 64, offset: 512)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!67, !783}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1267, file: !1266, line: 40, baseType: !1294, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1267, file: !1266, line: 41, baseType: !1294, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1267, file: !1266, line: 42, baseType: !1300, size: 384, offset: 704)
!1300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 384, elements: !413)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1267, file: !1266, line: 43, baseType: !1302, size: 320, offset: 1088)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1303, size: 320, elements: !966)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!67, !783, !1306}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !270, line: 63, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 58, size: 416, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1308, file: !270, line: 60, baseType: !67, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1308, file: !270, line: 61, baseType: !725, size: 256, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1308, file: !270, line: 62, baseType: !122, size: 128, offset: 288)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !71, file: !72, line: 816, baseType: !1314, size: 576, offset: 266048)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !551, line: 170, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 161, size: 576, elements: !1316)
!1316 = !{!1317, !1323, !1324, !1330, !1331}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1315, file: !551, line: 163, baseType: !1318, size: 128)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 128, elements: !174)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !551, line: 159, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !265, !67, !67, !67, !606}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1315, file: !551, line: 164, baseType: !1318, size: 128, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1315, file: !551, line: 165, baseType: !1325, size: 128, offset: 256)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 128, elements: !174)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !551, line: 160, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !265, !67, !67, !67}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1315, file: !551, line: 166, baseType: !1325, size: 128, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1315, file: !551, line: 167, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !265, !1335, !1336, !1339, !67, !67}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 1280, elements: !1338)
!1338 = !{!874, !175}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !1341)
!1341 = !{!423, !423}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !71, file: !72, line: 821, baseType: !1343, size: 64, offset: 266624)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !72, line: 377, baseType: !1345)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !72, line: 366, size: 960, elements: !1346)
!1346 = !{!1347, !1349, !1350, !1351, !1352, !1353, !1354, !1364, !1365}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1345, file: !72, line: 368, baseType: !1348, size: 8)
!1348 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1345, file: !72, line: 369, baseType: !33, size: 8, offset: 8)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1345, file: !72, line: 370, baseType: !33, size: 8, offset: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1345, file: !72, line: 371, baseType: !67, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1345, file: !72, line: 372, baseType: !67, size: 32, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1345, file: !72, line: 373, baseType: !549, size: 64, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1345, file: !72, line: 374, baseType: !1355, size: 256, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !551, line: 157, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 149, size: 256, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1356, file: !551, line: 151, baseType: !548, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1356, file: !551, line: 152, baseType: !67, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1356, file: !551, line: 153, baseType: !67, size: 32, offset: 96)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1356, file: !551, line: 154, baseType: !67, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1356, file: !551, line: 155, baseType: !67, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1356, file: !551, line: 156, baseType: !67, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1345, file: !72, line: 375, baseType: !1355, size: 256, offset: 448)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1345, file: !72, line: 376, baseType: !1355, size: 256, offset: 704)
!1366 = !{!1367, !1368, !1371, !1374, !1375, !1376, !1379, !1382, !1383, !1384, !1385, !1387, !1390, !1391, !1392, !1394, !1397, !1398, !1399, !1401, !1405, !1408, !1410, !1413, !1415, !1419, !1422, !1424, !1427, !1429, !1432, !1434, !1437, !1440, !1443}
!1367 = !DILocalVariable(name: "h", arg: 1, scope: !64, file: !18, line: 68, type: !68)
!1368 = !DILocalVariable(name: "def_quant4", scope: !64, file: !18, line: 70, type: !1369)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 3072, elements: !1370)
!1370 = !{!27, !37}
!1371 = !DILocalVariable(name: "def_quant8", scope: !64, file: !18, line: 71, type: !1372)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 12288, elements: !1373)
!1373 = !{!27, !53}
!1374 = !DILocalVariable(name: "def_dequant4", scope: !64, file: !18, line: 72, type: !1369)
!1375 = !DILocalVariable(name: "def_dequant8", scope: !64, file: !18, line: 73, type: !1372)
!1376 = !DILocalVariable(name: "quant4_mf", scope: !64, file: !18, line: 74, type: !1377)
!1377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 12288, elements: !1378)
!1378 = !{!423, !27, !37}
!1379 = !DILocalVariable(name: "quant8_mf", scope: !64, file: !18, line: 75, type: !1380)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 24576, elements: !1381)
!1381 = !{!175, !27, !53}
!1382 = !DILocalVariable(name: "deadzone", scope: !64, file: !18, line: 76, type: !1083)
!1383 = !DILocalVariable(name: "max_qp_err", scope: !64, file: !18, line: 79, type: !67)
!1384 = !DILocalVariable(name: "max_chroma_qp_err", scope: !64, file: !18, line: 80, type: !67)
!1385 = !DILocalVariable(name: "i", scope: !1386, file: !18, line: 113, type: !67)
!1386 = distinct !DILexicalBlock(scope: !64, file: !18, line: 113, column: 5)
!1387 = !DILocalVariable(name: "size", scope: !1388, file: !18, line: 113, type: !67)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !18, line: 113, column: 5)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !18, line: 113, column: 5)
!1390 = !DILocalVariable(name: "start", scope: !1388, file: !18, line: 113, type: !67)
!1391 = !DILocalVariable(name: "j", scope: !1388, file: !18, line: 113, type: !67)
!1392 = !DILocalVariable(name: "i", scope: !1393, file: !18, line: 114, type: !67)
!1393 = distinct !DILexicalBlock(scope: !64, file: !18, line: 114, column: 5)
!1394 = !DILocalVariable(name: "size", scope: !1395, file: !18, line: 114, type: !67)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !18, line: 114, column: 5)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !18, line: 114, column: 5)
!1397 = !DILocalVariable(name: "start", scope: !1395, file: !18, line: 114, type: !67)
!1398 = !DILocalVariable(name: "j", scope: !1395, file: !18, line: 114, type: !67)
!1399 = !DILocalVariable(name: "q", scope: !1400, file: !18, line: 116, type: !67)
!1400 = distinct !DILexicalBlock(scope: !64, file: !18, line: 116, column: 5)
!1401 = !DILocalVariable(name: "i", scope: !1402, file: !18, line: 118, type: !67)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !18, line: 118, column: 9)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !18, line: 117, column: 5)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !18, line: 116, column: 5)
!1405 = !DILocalVariable(name: "j", scope: !1406, file: !18, line: 120, type: !67)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !18, line: 119, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !18, line: 118, column: 9)
!1408 = !DILocalVariable(name: "i", scope: !1409, file: !18, line: 124, type: !67)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !18, line: 124, column: 9)
!1410 = !DILocalVariable(name: "j", scope: !1411, file: !18, line: 126, type: !67)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !18, line: 125, column: 9)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !18, line: 124, column: 9)
!1413 = !DILocalVariable(name: "q", scope: !1414, file: !18, line: 132, type: !67)
!1414 = distinct !DILexicalBlock(scope: !64, file: !18, line: 132, column: 5)
!1415 = !DILocalVariable(name: "i_list", scope: !1416, file: !18, line: 134, type: !67)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !18, line: 134, column: 9)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !18, line: 133, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !18, line: 132, column: 5)
!1419 = !DILocalVariable(name: "i", scope: !1420, file: !18, line: 135, type: !67)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !18, line: 135, column: 13)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !18, line: 134, column: 9)
!1422 = !DILocalVariable(name: "i_list", scope: !1423, file: !18, line: 140, type: !67)
!1423 = distinct !DILexicalBlock(scope: !1417, file: !18, line: 140, column: 9)
!1424 = !DILocalVariable(name: "i", scope: !1425, file: !18, line: 141, type: !67)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !18, line: 141, column: 13)
!1426 = distinct !DILexicalBlock(scope: !1423, file: !18, line: 140, column: 9)
!1427 = !DILocalVariable(name: "q", scope: !1428, file: !18, line: 147, type: !67)
!1428 = distinct !DILexicalBlock(scope: !64, file: !18, line: 147, column: 5)
!1429 = !DILocalVariable(name: "j", scope: !1430, file: !18, line: 149, type: !67)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !18, line: 148, column: 5)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !18, line: 147, column: 5)
!1432 = !DILocalVariable(name: "i_list", scope: !1433, file: !18, line: 150, type: !67)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !18, line: 150, column: 9)
!1434 = !DILocalVariable(name: "i", scope: !1435, file: !18, line: 151, type: !67)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !18, line: 151, column: 13)
!1436 = distinct !DILexicalBlock(scope: !1433, file: !18, line: 150, column: 9)
!1437 = !DILocalVariable(name: "i_list", scope: !1438, file: !18, line: 163, type: !67)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !18, line: 163, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1430, file: !18, line: 162, column: 13)
!1440 = !DILocalVariable(name: "i", scope: !1441, file: !18, line: 164, type: !67)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !18, line: 164, column: 17)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !18, line: 163, column: 13)
!1443 = !DILabel(scope: !64, name: "fail", file: !18, line: 187)
!1444 = !DILocation(line: 0, scope: !64)
!1445 = !DILocation(line: 70, column: 5, scope: !64)
!1446 = !DILocation(line: 70, column: 9, scope: !64)
!1447 = !DILocation(line: 71, column: 5, scope: !64)
!1448 = !DILocation(line: 71, column: 9, scope: !64)
!1449 = !DILocation(line: 72, column: 5, scope: !64)
!1450 = !DILocation(line: 72, column: 9, scope: !64)
!1451 = !DILocation(line: 73, column: 5, scope: !64)
!1452 = !DILocation(line: 73, column: 9, scope: !64)
!1453 = !DILocation(line: 74, column: 5, scope: !64)
!1454 = !DILocation(line: 74, column: 9, scope: !64)
!1455 = !DILocation(line: 75, column: 5, scope: !64)
!1456 = !DILocation(line: 75, column: 9, scope: !64)
!1457 = !DILocation(line: 76, column: 5, scope: !64)
!1458 = !DILocation(line: 76, column: 9, scope: !64)
!1459 = !DILocation(line: 76, column: 47, scope: !64)
!1460 = !DILocation(line: 76, column: 30, scope: !64)
!1461 = !{!1462, !1462, i64 0}
!1462 = !{!"int", !1463, i64 0}
!1463 = !{!"omnipotent char", !1464, i64 0}
!1464 = !{!"Simple C/C++ TBAA"}
!1465 = !DILocation(line: 76, column: 28, scope: !64)
!1466 = !DILocation(line: 76, column: 23, scope: !64)
!1467 = !DILocation(line: 77, column: 30, scope: !64)
!1468 = !DILocation(line: 77, column: 28, scope: !64)
!1469 = !DILocation(line: 0, scope: !1386)
!1470 = !DILocation(line: 113, column: 5, scope: !1386)
!1471 = !DILocation(line: 0, scope: !1388)
!1472 = !DILocation(line: 113, column: 5, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !18, line: 113, column: 5)
!1474 = distinct !DILexicalBlock(scope: !1388, file: !18, line: 113, column: 5)
!1475 = !DILocation(line: 113, column: 5, scope: !1474)
!1476 = !{!1477, !1480, i64 3328}
!1477 = !{!"x264_t", !1478, i64 0, !1463, i64 704, !1462, i64 1736, !1462, i64 1740, !1462, i64 1744, !1462, i64 1748, !1462, i64 1752, !1484, i64 1760, !1480, i64 1832, !1462, i64 1840, !1462, i64 1844, !1462, i64 1848, !1462, i64 1852, !1462, i64 1856, !1462, i64 1860, !1462, i64 1864, !1462, i64 1868, !1462, i64 1872, !1462, i64 1876, !1462, i64 1880, !1462, i64 1884, !1462, i64 1888, !1462, i64 1892, !1463, i64 1896, !1480, i64 3200, !1463, i64 3208, !1480, i64 3328, !1462, i64 3336, !1462, i64 3340, !1463, i64 3344, !1463, i64 3376, !1463, i64 3392, !1463, i64 3424, !1463, i64 3440, !1463, i64 3472, !1463, i64 3488, !1463, i64 3520, !1463, i64 3536, !1463, i64 4272, !1480, i64 7216, !1487, i64 7232, !1488, i64 13904, !1489, i64 14416, !1480, i64 14680, !1480, i64 14688, !1462, i64 14696, !1463, i64 14704, !1462, i64 14856, !1463, i64 14864, !1463, i64 15016, !1462, i64 15024, !1462, i64 15028, !1486, i64 15032, !1490, i64 15040, !1491, i64 16368, !1480, i64 26704, !1494, i64 26712, !1463, i64 30400, !1463, i64 30912, !1463, i64 31168, !1480, i64 31176, !1463, i64 31184, !1463, i64 31232, !1463, i64 31248, !1463, i64 31304, !1463, i64 31360, !1463, i64 31456, !1480, i64 31552, !1497, i64 31560, !1498, i64 32616, !1499, i64 32912, !1500, i64 33032, !1501, i64 33080, !1502, i64 33256, !1480, i64 33328}
!1478 = !{!"x264_param_t", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1462, i64 16, !1462, i64 20, !1462, i64 24, !1462, i64 28, !1462, i64 32, !1462, i64 36, !1462, i64 40, !1479, i64 44, !1462, i64 80, !1462, i64 84, !1462, i64 88, !1462, i64 92, !1462, i64 96, !1462, i64 100, !1462, i64 104, !1462, i64 108, !1462, i64 112, !1462, i64 116, !1462, i64 120, !1462, i64 124, !1462, i64 128, !1462, i64 132, !1462, i64 136, !1462, i64 140, !1462, i64 144, !1480, i64 152, !1463, i64 160, !1463, i64 176, !1463, i64 192, !1463, i64 208, !1463, i64 224, !1463, i64 288, !1480, i64 352, !1480, i64 360, !1462, i64 368, !1462, i64 372, !1480, i64 376, !1481, i64 384, !1483, i64 488, !1462, i64 632, !1462, i64 636, !1462, i64 640, !1462, i64 644, !1462, i64 648, !1462, i64 652, !1462, i64 656, !1462, i64 660, !1462, i64 664, !1462, i64 668, !1462, i64 672, !1462, i64 676, !1462, i64 680, !1462, i64 684, !1462, i64 688, !1462, i64 692, !1480, i64 696}
!1479 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1462, i64 16, !1462, i64 20, !1462, i64 24, !1462, i64 28, !1462, i64 32}
!1480 = !{!"any pointer", !1463, i64 0}
!1481 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1462, i64 16, !1462, i64 20, !1462, i64 24, !1462, i64 28, !1462, i64 32, !1462, i64 36, !1462, i64 40, !1462, i64 44, !1462, i64 48, !1462, i64 52, !1462, i64 56, !1462, i64 60, !1462, i64 64, !1462, i64 68, !1482, i64 72, !1482, i64 76, !1462, i64 80, !1463, i64 84, !1462, i64 92, !1462, i64 96}
!1482 = !{!"float", !1463, i64 0}
!1483 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1462, i64 16, !1462, i64 20, !1482, i64 24, !1482, i64 28, !1482, i64 32, !1462, i64 36, !1462, i64 40, !1482, i64 44, !1482, i64 48, !1482, i64 52, !1462, i64 56, !1482, i64 60, !1462, i64 64, !1462, i64 68, !1462, i64 72, !1480, i64 80, !1462, i64 88, !1480, i64 96, !1482, i64 104, !1482, i64 108, !1482, i64 112, !1480, i64 120, !1462, i64 128, !1480, i64 136}
!1484 = !{!"", !1462, i64 0, !1462, i64 4, !1480, i64 8, !1462, i64 16, !1480, i64 24, !1485, i64 32}
!1485 = !{!"bs_s", !1480, i64 0, !1480, i64 8, !1480, i64 16, !1486, i64 24, !1462, i64 32, !1462, i64 36}
!1486 = !{!"long", !1463, i64 0}
!1487 = !{!"", !1480, i64 0, !1480, i64 8, !1462, i64 16, !1462, i64 20, !1462, i64 24, !1462, i64 28, !1462, i64 32, !1462, i64 36, !1462, i64 40, !1462, i64 44, !1462, i64 48, !1462, i64 52, !1462, i64 56, !1463, i64 60, !1462, i64 68, !1462, i64 72, !1462, i64 76, !1462, i64 80, !1462, i64 84, !1462, i64 88, !1462, i64 92, !1463, i64 96, !1463, i64 352, !1462, i64 6496, !1462, i64 6500, !1463, i64 6504, !1462, i64 6632, !1462, i64 6636, !1462, i64 6640, !1462, i64 6644, !1462, i64 6648, !1462, i64 6652, !1462, i64 6656, !1462, i64 6660}
!1488 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1480, i64 16, !1480, i64 24, !1480, i64 32, !1462, i64 48, !1463, i64 52}
!1489 = !{!"", !1480, i64 0, !1463, i64 8, !1480, i64 24, !1463, i64 32, !1462, i64 176, !1462, i64 180, !1462, i64 184, !1462, i64 188, !1462, i64 192, !1462, i64 196, !1462, i64 200, !1486, i64 208, !1486, i64 216, !1463, i64 224, !1486, i64 240, !1486, i64 248, !1462, i64 256, !1462, i64 260}
!1490 = !{!"", !1463, i64 0, !1463, i64 32, !1463, i64 48, !1463, i64 560}
!1491 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1462, i64 12, !1462, i64 16, !1462, i64 20, !1462, i64 24, !1462, i64 28, !1462, i64 32, !1462, i64 36, !1462, i64 40, !1462, i64 44, !1462, i64 48, !1462, i64 52, !1462, i64 56, !1462, i64 60, !1462, i64 64, !1462, i64 68, !1463, i64 72, !1463, i64 80, !1463, i64 88, !1463, i64 96, !1463, i64 104, !1463, i64 112, !1462, i64 120, !1463, i64 124, !1463, i64 140, !1462, i64 204, !1462, i64 208, !1462, i64 212, !1462, i64 216, !1462, i64 220, !1462, i64 224, !1462, i64 228, !1462, i64 232, !1462, i64 236, !1462, i64 240, !1462, i64 244, !1480, i64 248, !1480, i64 256, !1480, i64 264, !1480, i64 272, !1480, i64 280, !1480, i64 288, !1480, i64 296, !1463, i64 304, !1463, i64 320, !1463, i64 336, !1463, i64 352, !1480, i64 864, !1480, i64 872, !1480, i64 880, !1463, i64 888, !1462, i64 1016, !1462, i64 1020, !1463, i64 1024, !1462, i64 1028, !1462, i64 1032, !1462, i64 1036, !1462, i64 1040, !1462, i64 1044, !1462, i64 1048, !1462, i64 1052, !1462, i64 1056, !1462, i64 1060, !1492, i64 1072, !1493, i64 8656, !1462, i64 9424, !1462, i64 9428, !1462, i64 9432, !1462, i64 9436, !1462, i64 9440, !1462, i64 9444, !1462, i64 9448, !1462, i64 9452, !1463, i64 9456, !1462, i64 9472, !1462, i64 9476, !1463, i64 9480, !1480, i64 9992, !1463, i64 10000, !1480, i64 10256, !1463, i64 10264, !1462, i64 10284, !1463, i64 10288}
!1492 = !{!"", !1463, i64 0, !1463, i64 384, !1463, i64 1248, !1463, i64 1504, !1463, i64 1760, !1463, i64 2144, !1463, i64 2624, !1463, i64 2640, !1462, i64 2656, !1462, i64 2660, !1463, i64 2672, !1463, i64 3184, !1463, i64 3696, !1463, i64 3776, !1463, i64 3904, !1463, i64 3928, !1463, i64 3952, !1463, i64 3976, !1463, i64 3984, !1463, i64 7056, !1463, i64 7312, !1463, i64 7568}
!1493 = !{!"", !1463, i64 0, !1463, i64 48, !1463, i64 96, !1463, i64 176, !1463, i64 496, !1463, i64 656, !1463, i64 696, !1463, i64 728, !1462, i64 736, !1463, i64 740, !1462, i64 744, !1462, i64 748, !1462, i64 752, !1462, i64 756}
!1494 = !{!"", !1495, i64 0, !1463, i64 704, !1463, i64 728, !1463, i64 768, !1463, i64 808, !1463, i64 880, !1463, i64 920, !1463, i64 960, !1463, i64 1000, !1463, i64 1040, !1463, i64 1080, !1463, i64 1120, !1463, i64 1880, !1463, i64 2152, !1463, i64 2168, !1463, i64 3192, !1463, i64 3240, !1463, i64 3656, !1463, i64 3664, !1463, i64 3672}
!1495 = !{!"", !1462, i64 0, !1462, i64 4, !1462, i64 8, !1463, i64 12, !1462, i64 88, !1462, i64 92, !1462, i64 96, !1463, i64 100, !1463, i64 108, !1463, i64 364, !1463, i64 432, !1463, i64 456, !1463, i64 664, !1463, i64 672, !1496, i64 696}
!1496 = !{!"double", !1463, i64 0}
!1497 = !{!"", !1463, i64 0, !1463, i64 56, !1463, i64 112, !1463, i64 168, !1463, i64 224, !1463, i64 256, !1463, i64 312, !1463, i64 368, !1463, i64 424, !1463, i64 480, !1463, i64 536, !1480, i64 592, !1463, i64 600, !1463, i64 632, !1480, i64 664, !1480, i64 672, !1463, i64 680, !1463, i64 736, !1463, i64 792, !1463, i64 848, !1463, i64 904, !1480, i64 960, !1480, i64 968, !1480, i64 976, !1480, i64 984, !1480, i64 992, !1480, i64 1000, !1480, i64 1008, !1480, i64 1016, !1480, i64 1024, !1480, i64 1032, !1480, i64 1040, !1480, i64 1048}
!1498 = !{!"", !1480, i64 0, !1480, i64 8, !1480, i64 16, !1463, i64 24, !1463, i64 104, !1480, i64 160, !1480, i64 168, !1480, i64 176, !1480, i64 184, !1480, i64 192, !1480, i64 200, !1480, i64 208, !1480, i64 216, !1480, i64 224, !1480, i64 232, !1480, i64 240, !1480, i64 248, !1480, i64 256, !1480, i64 264, !1480, i64 272, !1480, i64 280, !1480, i64 288}
!1499 = !{!"", !1480, i64 0, !1480, i64 8, !1480, i64 16, !1480, i64 24, !1480, i64 32, !1480, i64 40, !1480, i64 48, !1480, i64 56, !1480, i64 64, !1480, i64 72, !1480, i64 80, !1480, i64 88, !1480, i64 96, !1480, i64 104, !1480, i64 112}
!1500 = !{!"", !1480, i64 0, !1480, i64 8, !1480, i64 16, !1480, i64 24, !1480, i64 32, !1480, i64 40}
!1501 = !{!"", !1480, i64 0, !1480, i64 8, !1480, i64 16, !1480, i64 24, !1480, i64 32, !1480, i64 40, !1480, i64 48, !1480, i64 56, !1480, i64 64, !1480, i64 72, !1480, i64 80, !1463, i64 88, !1463, i64 136}
!1502 = !{!"", !1463, i64 0, !1463, i64 16, !1463, i64 32, !1463, i64 48, !1480, i64 64}
!1503 = !{!1480, !1480, i64 0}
!1504 = !DILocation(line: 0, scope: !1393)
!1505 = !DILocation(line: 114, column: 5, scope: !1393)
!1506 = !DILocation(line: 113, column: 5, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1473, file: !18, line: 113, column: 5)
!1508 = distinct !{!1508, !1475, !1475, !1509, !1510}
!1509 = !{!"llvm.loop.mustprogress"}
!1510 = !{!"llvm.loop.unroll.disable"}
!1511 = !DILocation(line: 113, column: 5, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !18, line: 113, column: 5)
!1513 = distinct !DILexicalBlock(scope: !1388, file: !18, line: 113, column: 5)
!1514 = !DILocation(line: 113, column: 5, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !18, line: 113, column: 5)
!1516 = distinct !DILexicalBlock(scope: !1513, file: !18, line: 113, column: 5)
!1517 = !DILocation(line: 113, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !18, line: 113, column: 5)
!1519 = !DILocation(line: 113, column: 5, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !18, line: 113, column: 5)
!1521 = !DILocation(line: 113, column: 5, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !18, line: 113, column: 5)
!1523 = !DILocation(line: 113, column: 5, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !18, line: 113, column: 5)
!1525 = !DILocation(line: 113, column: 5, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !18, line: 113, column: 5)
!1527 = !DILocation(line: 113, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1388, file: !18, line: 113, column: 5)
!1529 = !DILocation(line: 113, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !18, line: 113, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1528, file: !18, line: 113, column: 5)
!1532 = !DILocation(line: 113, column: 5, scope: !1531)
!1533 = distinct !{!1533, !1527, !1527, !1509, !1510}
!1534 = !DILocation(line: 113, column: 5, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1388, file: !18, line: 113, column: 5)
!1536 = !DILocation(line: 113, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !18, line: 113, column: 5)
!1538 = !DILocation(line: 113, column: 5, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !18, line: 113, column: 5)
!1540 = !DILocation(line: 113, column: 5, scope: !1389)
!1541 = distinct !{!1541, !1470, !1470, !1509, !1510}
!1542 = !DILocation(line: 114, column: 5, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1395, file: !18, line: 114, column: 5)
!1544 = !DILocation(line: 0, scope: !1395)
!1545 = !DILocation(line: 114, column: 5, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1543, file: !18, line: 114, column: 5)
!1547 = !DILocation(line: 114, column: 5, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1546, file: !18, line: 114, column: 5)
!1549 = distinct !{!1549, !1542, !1542, !1509, !1510}
!1550 = !DILocation(line: 114, column: 5, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !18, line: 114, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1395, file: !18, line: 114, column: 5)
!1553 = !DILocation(line: 114, column: 5, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1395, file: !18, line: 114, column: 5)
!1555 = !DILocation(line: 114, column: 5, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !18, line: 114, column: 5)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !18, line: 114, column: 5)
!1558 = !DILocation(line: 114, column: 5, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1556, file: !18, line: 114, column: 5)
!1560 = !DILocation(line: 114, column: 5, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !18, line: 114, column: 5)
!1562 = !DILocation(line: 114, column: 5, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1561, file: !18, line: 114, column: 5)
!1564 = !DILocation(line: 114, column: 5, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1557, file: !18, line: 114, column: 5)
!1566 = !DILocation(line: 114, column: 5, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1565, file: !18, line: 114, column: 5)
!1568 = !DILocation(line: 114, column: 5, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1554, file: !18, line: 114, column: 5)
!1570 = !DILocation(line: 114, column: 5, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1569, file: !18, line: 114, column: 5)
!1572 = distinct !{!1572, !1553, !1553, !1509, !1510}
!1573 = !DILocation(line: 114, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1395, file: !18, line: 114, column: 5)
!1575 = !DILocation(line: 114, column: 5, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !18, line: 114, column: 5)
!1577 = !DILocation(line: 114, column: 5, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1576, file: !18, line: 114, column: 5)
!1579 = !DILocation(line: 114, column: 5, scope: !1396)
!1580 = distinct !{!1580, !1505, !1505, !1509, !1510}
!1581 = !DILocation(line: 116, column: 5, scope: !1400)
!1582 = !DILocation(line: 0, scope: !1400)
!1583 = !DILocation(line: 0, scope: !1402)
!1584 = !DILocation(line: 118, column: 9, scope: !1402)
!1585 = !DILocation(line: 0, scope: !1414)
!1586 = !DILocation(line: 132, column: 5, scope: !1414)
!1587 = !DILocation(line: 120, column: 23, scope: !1406)
!1588 = !DILocation(line: 120, column: 32, scope: !1406)
!1589 = !DILocation(line: 120, column: 36, scope: !1406)
!1590 = !DILocation(line: 120, column: 27, scope: !1406)
!1591 = !DILocation(line: 0, scope: !1406)
!1592 = !DILocation(line: 121, column: 34, scope: !1406)
!1593 = !{!1463, !1463, i64 0}
!1594 = !DILocation(line: 121, column: 13, scope: !1406)
!1595 = !DILocation(line: 121, column: 32, scope: !1406)
!1596 = !DILocation(line: 122, column: 36, scope: !1406)
!1597 = !{!1598, !1598, i64 0}
!1598 = !{!"short", !1463, i64 0}
!1599 = !DILocation(line: 122, column: 13, scope: !1406)
!1600 = !DILocation(line: 122, column: 32, scope: !1406)
!1601 = !DILocation(line: 118, column: 34, scope: !1407)
!1602 = !DILocation(line: 118, column: 27, scope: !1407)
!1603 = distinct !{!1603, !1584, !1604, !1509, !1510}
!1604 = !DILocation(line: 123, column: 9, scope: !1402)
!1605 = !DILocation(line: 116, column: 29, scope: !1404)
!1606 = !DILocation(line: 116, column: 23, scope: !1404)
!1607 = distinct !{!1607, !1581, !1608, !1509, !1510}
!1608 = !DILocation(line: 130, column: 5, scope: !1400)
!1609 = !DILocation(line: 0, scope: !1409)
!1610 = !DILocation(line: 126, column: 36, scope: !1411)
!1611 = !DILocation(line: 126, column: 40, scope: !1411)
!1612 = !DILocation(line: 126, column: 49, scope: !1411)
!1613 = !DILocation(line: 126, column: 45, scope: !1411)
!1614 = !DILocation(line: 126, column: 21, scope: !1411)
!1615 = !DILocation(line: 0, scope: !1411)
!1616 = !DILocation(line: 127, column: 34, scope: !1411)
!1617 = !DILocation(line: 127, column: 13, scope: !1411)
!1618 = !DILocation(line: 127, column: 32, scope: !1411)
!1619 = !DILocation(line: 128, column: 36, scope: !1411)
!1620 = !DILocation(line: 128, column: 13, scope: !1411)
!1621 = !DILocation(line: 128, column: 32, scope: !1411)
!1622 = !DILocation(line: 124, column: 34, scope: !1412)
!1623 = !DILocation(line: 124, column: 27, scope: !1412)
!1624 = !DILocation(line: 124, column: 9, scope: !1409)
!1625 = distinct !{!1625, !1624, !1626, !1509, !1510}
!1626 = !DILocation(line: 129, column: 9, scope: !1409)
!1627 = !DILocation(line: 0, scope: !1416)
!1628 = !DILocation(line: 134, column: 9, scope: !1416)
!1629 = !DILocation(line: 0, scope: !1428)
!1630 = !DILocation(line: 147, column: 5, scope: !1428)
!1631 = !DILocation(line: 0, scope: !1420)
!1632 = !DILocation(line: 135, column: 13, scope: !1420)
!1633 = !DILocation(line: 134, column: 48, scope: !1421)
!1634 = !DILocation(line: 134, column: 37, scope: !1421)
!1635 = distinct !{!1635, !1628, !1636, !1509, !1510}
!1636 = !DILocation(line: 139, column: 13, scope: !1416)
!1637 = !DILocation(line: 137, column: 48, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !18, line: 136, column: 13)
!1639 = distinct !DILexicalBlock(scope: !1420, file: !18, line: 135, column: 13)
!1640 = !DILocation(line: 137, column: 69, scope: !1638)
!1641 = !DILocation(line: 137, column: 67, scope: !1638)
!1642 = !DILocation(line: 137, column: 17, scope: !1638)
!1643 = !DILocation(line: 137, column: 46, scope: !1638)
!1644 = !DILocation(line: 138, column: 48, scope: !1638)
!1645 = !DILocation(line: 138, column: 22, scope: !1638)
!1646 = !DILocation(line: 138, column: 46, scope: !1638)
!1647 = !DILocation(line: 135, column: 38, scope: !1639)
!1648 = !DILocation(line: 135, column: 31, scope: !1639)
!1649 = distinct !{!1649, !1632, !1650, !1509, !1510}
!1650 = !DILocation(line: 139, column: 13, scope: !1420)
!1651 = !DILocation(line: 0, scope: !1423)
!1652 = !DILocation(line: 0, scope: !1425)
!1653 = !DILocation(line: 141, column: 13, scope: !1425)
!1654 = !DILocation(line: 132, column: 29, scope: !1418)
!1655 = !DILocation(line: 132, column: 23, scope: !1418)
!1656 = distinct !{!1656, !1586, !1657, !1509, !1510}
!1657 = !DILocation(line: 146, column: 5, scope: !1414)
!1658 = !DILocation(line: 140, column: 9, scope: !1423)
!1659 = distinct !{!1659, !1658, !1660, !1509, !1510}
!1660 = !DILocation(line: 145, column: 13, scope: !1423)
!1661 = !DILocation(line: 143, column: 48, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !18, line: 142, column: 13)
!1663 = distinct !DILexicalBlock(scope: !1425, file: !18, line: 141, column: 13)
!1664 = !DILocation(line: 143, column: 69, scope: !1662)
!1665 = !DILocation(line: 143, column: 67, scope: !1662)
!1666 = !DILocation(line: 143, column: 17, scope: !1662)
!1667 = !DILocation(line: 143, column: 46, scope: !1662)
!1668 = !DILocation(line: 144, column: 48, scope: !1662)
!1669 = !DILocation(line: 144, column: 22, scope: !1662)
!1670 = !DILocation(line: 144, column: 46, scope: !1662)
!1671 = !DILocation(line: 141, column: 38, scope: !1663)
!1672 = !DILocation(line: 141, column: 31, scope: !1663)
!1673 = distinct !{!1673, !1653, !1674, !1509, !1510}
!1674 = !DILocation(line: 145, column: 13, scope: !1425)
!1675 = !DILocation(line: 0, scope: !1433)
!1676 = !DILocation(line: 154, column: 50, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !18, line: 152, column: 13)
!1678 = distinct !DILexicalBlock(scope: !1435, file: !18, line: 151, column: 13)
!1679 = !DILocation(line: 0, scope: !1435)
!1680 = !DILocation(line: 151, column: 13, scope: !1435)
!1681 = !DILocation(line: 153, column: 75, scope: !1677)
!1682 = !DILocation(line: 153, column: 73, scope: !1677)
!1683 = !DILocation(line: 153, column: 48, scope: !1677)
!1684 = !DILocation(line: 153, column: 17, scope: !1677)
!1685 = !DILocation(line: 153, column: 46, scope: !1677)
!1686 = !DILocation(line: 0, scope: !1430)
!1687 = !DILocation(line: 154, column: 46, scope: !1677)
!1688 = !DILocation(line: 154, column: 17, scope: !1677)
!1689 = !DILocation(line: 154, column: 44, scope: !1677)
!1690 = !DILocation(line: 156, column: 48, scope: !1677)
!1691 = !DILocation(line: 156, column: 17, scope: !1677)
!1692 = !DILocation(line: 156, column: 46, scope: !1677)
!1693 = !DILocation(line: 157, column: 23, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1677, file: !18, line: 157, column: 21)
!1695 = !DILocation(line: 157, column: 32, scope: !1694)
!1696 = !DILocation(line: 159, column: 32, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1677, file: !18, line: 159, column: 21)
!1698 = !DILocation(line: 151, column: 38, scope: !1678)
!1699 = !DILocation(line: 151, column: 31, scope: !1678)
!1700 = distinct !{!1700, !1680, !1701, !1509, !1510}
!1701 = !DILocation(line: 161, column: 13, scope: !1435)
!1702 = !DILocation(line: 150, column: 48, scope: !1436)
!1703 = !DILocation(line: 150, column: 37, scope: !1436)
!1704 = !DILocation(line: 150, column: 9, scope: !1433)
!1705 = distinct !{!1705, !1704, !1706, !1509, !1510}
!1706 = !DILocation(line: 161, column: 13, scope: !1433)
!1707 = !DILocation(line: 174, column: 16, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !64, file: !18, line: 174, column: 9)
!1709 = !{!1477, !1462, i64 25812}
!1710 = !DILocation(line: 174, column: 10, scope: !1708)
!1711 = !DILocation(line: 174, column: 27, scope: !1708)
!1712 = !DILocation(line: 162, column: 30, scope: !1439)
!1713 = !{!1477, !1462, i64 392}
!1714 = !DILocation(line: 162, column: 13, scope: !1439)
!1715 = !DILocation(line: 162, column: 13, scope: !1430)
!1716 = !DILocation(line: 0, scope: !1438)
!1717 = !DILocation(line: 167, column: 54, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !18, line: 165, column: 17)
!1719 = distinct !DILexicalBlock(scope: !1441, file: !18, line: 164, column: 17)
!1720 = !DILocation(line: 0, scope: !1441)
!1721 = !DILocation(line: 164, column: 17, scope: !1441)
!1722 = !DILocation(line: 166, column: 79, scope: !1718)
!1723 = !DILocation(line: 166, column: 77, scope: !1718)
!1724 = !DILocation(line: 166, column: 52, scope: !1718)
!1725 = !DILocation(line: 166, column: 21, scope: !1718)
!1726 = !DILocation(line: 166, column: 50, scope: !1718)
!1727 = !DILocation(line: 167, column: 50, scope: !1718)
!1728 = !DILocation(line: 167, column: 21, scope: !1718)
!1729 = !DILocation(line: 167, column: 48, scope: !1718)
!1730 = !DILocation(line: 168, column: 52, scope: !1718)
!1731 = !DILocation(line: 168, column: 21, scope: !1718)
!1732 = !DILocation(line: 168, column: 50, scope: !1718)
!1733 = !DILocation(line: 169, column: 27, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1718, file: !18, line: 169, column: 25)
!1735 = !DILocation(line: 169, column: 36, scope: !1734)
!1736 = !DILocation(line: 164, column: 42, scope: !1719)
!1737 = !DILocation(line: 164, column: 35, scope: !1719)
!1738 = distinct !{!1738, !1721, !1739, !1509, !1510}
!1739 = !DILocation(line: 171, column: 17, scope: !1441)
!1740 = !DILocation(line: 163, column: 13, scope: !1438)
!1741 = distinct !{!1741, !1740, !1742, !1509, !1510}
!1742 = !DILocation(line: 171, column: 17, scope: !1438)
!1743 = !DILocation(line: 79, column: 9, scope: !64)
!1744 = !DILocation(line: 147, column: 30, scope: !1431)
!1745 = !DILocation(line: 147, column: 23, scope: !1431)
!1746 = distinct !{!1746, !1630, !1747, !1509, !1510}
!1747 = !DILocation(line: 172, column: 5, scope: !1428)
!1748 = !DILocation(line: 174, column: 56, scope: !1708)
!1749 = !{!1477, !1462, i64 496}
!1750 = !DILocation(line: 174, column: 41, scope: !1708)
!1751 = !DILocation(line: 174, column: 9, scope: !64)
!1752 = !DILocation(line: 176, column: 116, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1708, file: !18, line: 175, column: 5)
!1754 = !DILocation(line: 176, column: 9, scope: !1753)
!1755 = !DILocation(line: 177, column: 80, scope: !1753)
!1756 = !DILocation(line: 177, column: 9, scope: !1753)
!1757 = !DILocation(line: 178, column: 9, scope: !1753)
!1758 = !DILocation(line: 180, column: 54, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !64, file: !18, line: 180, column: 9)
!1760 = !{!1477, !1480, i64 7216}
!1761 = !DILocation(line: 180, column: 51, scope: !1759)
!1762 = !DILocation(line: 180, column: 48, scope: !1759)
!1763 = !DILocation(line: 180, column: 9, scope: !64)
!1764 = !DILocation(line: 182, column: 123, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1759, file: !18, line: 181, column: 5)
!1766 = !DILocation(line: 182, column: 9, scope: !1765)
!1767 = !DILocation(line: 183, column: 85, scope: !1765)
!1768 = !DILocation(line: 183, column: 113, scope: !1765)
!1769 = !DILocation(line: 183, column: 82, scope: !1765)
!1770 = !DILocation(line: 183, column: 9, scope: !1765)
!1771 = !DILocation(line: 184, column: 9, scope: !1765)
!1772 = !DILocation(line: 187, column: 1, scope: !64)
!1773 = !DILocation(line: 188, column: 5, scope: !64)
!1774 = !DILocation(line: 189, column: 5, scope: !64)
!1775 = !DILocation(line: 190, column: 1, scope: !64)
!1776 = !DISubprogram(name: "x264_malloc", scope: !72, file: !72, line: 174, type: !1777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1779)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!14, !67}
!1779 = !{}
!1780 = !DISubprogram(name: "x264_log", scope: !72, file: !72, line: 190, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1779)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !68, !67, !133, null}
!1783 = distinct !DISubprogram(name: "x264_cqm_delete", scope: !18, file: !18, line: 212, type: !1784, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !68}
!1786 = !{!1787, !1788, !1790, !1793, !1795}
!1787 = !DILocalVariable(name: "h", arg: 1, scope: !1783, file: !18, line: 212, type: !68)
!1788 = !DILocalVariable(name: "i", scope: !1789, file: !18, line: 214, type: !67)
!1789 = distinct !DILexicalBlock(scope: !1783, file: !18, line: 214, column: 5)
!1790 = !DILocalVariable(name: "j", scope: !1791, file: !18, line: 214, type: !67)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !18, line: 214, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1789, file: !18, line: 214, column: 5)
!1793 = !DILocalVariable(name: "i", scope: !1794, file: !18, line: 215, type: !67)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !18, line: 215, column: 5)
!1795 = !DILocalVariable(name: "j", scope: !1796, file: !18, line: 215, type: !67)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !18, line: 215, column: 5)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !18, line: 215, column: 5)
!1798 = !DILocation(line: 0, scope: !1783)
!1799 = !DILocation(line: 0, scope: !1789)
!1800 = !DILocation(line: 214, column: 5, scope: !1789)
!1801 = !DILocation(line: 0, scope: !1791)
!1802 = !DILocation(line: 214, column: 5, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !18, line: 214, column: 5)
!1804 = distinct !DILexicalBlock(scope: !1791, file: !18, line: 214, column: 5)
!1805 = !DILocation(line: 214, column: 5, scope: !1804)
!1806 = !DILocation(line: 214, column: 5, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !18, line: 214, column: 5)
!1808 = !DILocation(line: 0, scope: !1794)
!1809 = !DILocation(line: 215, column: 5, scope: !1794)
!1810 = distinct !{!1810, !1805, !1805, !1509, !1510}
!1811 = !DILocation(line: 0, scope: !1804)
!1812 = !DILocation(line: 214, column: 5, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1791, file: !18, line: 214, column: 5)
!1814 = !DILocation(line: 214, column: 5, scope: !1791)
!1815 = !DILocation(line: 214, column: 5, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !18, line: 214, column: 5)
!1817 = !DILocation(line: 214, column: 5, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1791, file: !18, line: 214, column: 5)
!1819 = !DILocation(line: 214, column: 5, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !18, line: 214, column: 5)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !18, line: 214, column: 5)
!1822 = !DILocation(line: 214, column: 5, scope: !1821)
!1823 = distinct !{!1823, !1817, !1817, !1509, !1510}
!1824 = !DILocation(line: 0, scope: !1818)
!1825 = !DILocation(line: 214, column: 5, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1791, file: !18, line: 214, column: 5)
!1827 = !DILocation(line: 214, column: 5, scope: !1792)
!1828 = distinct !{!1828, !1800, !1800, !1509, !1510}
!1829 = !DILocation(line: 215, column: 5, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1796, file: !18, line: 215, column: 5)
!1831 = !DILocation(line: 216, column: 1, scope: !1783)
!1832 = !DILocation(line: 0, scope: !1796)
!1833 = !DILocation(line: 215, column: 5, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1830, file: !18, line: 215, column: 5)
!1835 = !DILocation(line: 215, column: 5, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1834, file: !18, line: 215, column: 5)
!1837 = distinct !{!1837, !1829, !1829, !1509, !1510}
!1838 = !DILocation(line: 215, column: 5, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1796, file: !18, line: 215, column: 5)
!1840 = !DILocation(line: 215, column: 5, scope: !1796)
!1841 = !DILocation(line: 215, column: 5, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !18, line: 215, column: 5)
!1843 = !DILocation(line: 215, column: 5, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1796, file: !18, line: 215, column: 5)
!1845 = !DILocation(line: 215, column: 5, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1844, file: !18, line: 215, column: 5)
!1847 = !DILocation(line: 215, column: 5, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1846, file: !18, line: 215, column: 5)
!1849 = distinct !{!1849, !1843, !1843, !1509, !1510}
!1850 = !DILocation(line: 215, column: 5, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1796, file: !18, line: 215, column: 5)
!1852 = distinct !{!1852, !1809, !1809, !1509, !1510}
!1853 = !DISubprogram(name: "x264_free", scope: !72, file: !72, line: 175, type: !240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1779)
!1854 = distinct !DISubprogram(name: "x264_cqm_parse_file", scope: !18, file: !18, line: 262, type: !1855, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1857)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!67, !68, !133}
!1857 = !{!1858, !1859, !1860, !1861, !1862}
!1858 = !DILocalVariable(name: "h", arg: 1, scope: !1854, file: !18, line: 262, type: !68)
!1859 = !DILocalVariable(name: "filename", arg: 2, scope: !1854, file: !18, line: 262, type: !133)
!1860 = !DILocalVariable(name: "p", scope: !1854, file: !18, line: 264, type: !119)
!1861 = !DILocalVariable(name: "b_error", scope: !1854, file: !18, line: 265, type: !67)
!1862 = !DILocalVariable(name: "buf", scope: !1854, file: !18, line: 269, type: !119)
!1863 = !DILocation(line: 0, scope: !1854)
!1864 = !DILocation(line: 267, column: 14, scope: !1854)
!1865 = !DILocation(line: 267, column: 27, scope: !1854)
!1866 = !{!1477, !1462, i64 144}
!1867 = !DILocation(line: 269, column: 17, scope: !1854)
!1868 = !DILocation(line: 270, column: 10, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1854, file: !18, line: 270, column: 9)
!1870 = !DILocation(line: 270, column: 9, scope: !1854)
!1871 = !DILocation(line: 276, column: 17, scope: !1854)
!1872 = !DILocation(line: 276, column: 37, scope: !1854)
!1873 = !DILocation(line: 276, column: 5, scope: !1854)
!1874 = !DILocation(line: 272, column: 9, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1869, file: !18, line: 271, column: 5)
!1876 = !DILocation(line: 273, column: 9, scope: !1875)
!1877 = !DILocation(line: 277, column: 25, scope: !1854)
!1878 = !DILocation(line: 277, column: 9, scope: !1854)
!1879 = distinct !{!1879, !1873, !1880, !1509, !1510}
!1880 = !DILocation(line: 277, column: 44, scope: !1854)
!1881 = !DILocation(line: 279, column: 75, scope: !1854)
!1882 = !DILocation(line: 279, column: 16, scope: !1854)
!1883 = !DILocation(line: 280, column: 75, scope: !1854)
!1884 = !DILocation(line: 280, column: 16, scope: !1854)
!1885 = !DILocation(line: 280, column: 13, scope: !1854)
!1886 = !DILocation(line: 281, column: 75, scope: !1854)
!1887 = !DILocation(line: 281, column: 16, scope: !1854)
!1888 = !DILocation(line: 281, column: 13, scope: !1854)
!1889 = !DILocation(line: 282, column: 75, scope: !1854)
!1890 = !DILocation(line: 282, column: 16, scope: !1854)
!1891 = !DILocation(line: 282, column: 13, scope: !1854)
!1892 = !DILocation(line: 283, column: 75, scope: !1854)
!1893 = !DILocation(line: 283, column: 16, scope: !1854)
!1894 = !DILocation(line: 283, column: 13, scope: !1854)
!1895 = !DILocation(line: 284, column: 75, scope: !1854)
!1896 = !DILocation(line: 284, column: 16, scope: !1854)
!1897 = !DILocation(line: 284, column: 13, scope: !1854)
!1898 = !DILocation(line: 286, column: 5, scope: !1854)
!1899 = !DILocation(line: 287, column: 5, scope: !1854)
!1900 = !DILocation(line: 288, column: 1, scope: !1854)
!1901 = !DISubprogram(name: "x264_slurp_file", scope: !72, file: !72, line: 178, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1779)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!119, !133}
!1904 = distinct !DISubprogram(name: "x264_cqm_parse_jmlist", scope: !18, file: !18, line: 218, type: !1905, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!67, !68, !133, !133, !265, !412, !67}
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1908 = !DILocalVariable(name: "h", arg: 1, scope: !1904, file: !18, line: 218, type: !68)
!1909 = !DILocalVariable(name: "buf", arg: 2, scope: !1904, file: !18, line: 218, type: !133)
!1910 = !DILocalVariable(name: "name", arg: 3, scope: !1904, file: !18, line: 218, type: !133)
!1911 = !DILocalVariable(name: "cqm", arg: 4, scope: !1904, file: !18, line: 219, type: !265)
!1912 = !DILocalVariable(name: "jvt", arg: 5, scope: !1904, file: !18, line: 219, type: !412)
!1913 = !DILocalVariable(name: "length", arg: 6, scope: !1904, file: !18, line: 219, type: !67)
!1914 = !DILocalVariable(name: "i", scope: !1904, file: !18, line: 221, type: !67)
!1915 = !DILocalVariable(name: "p", scope: !1904, file: !18, line: 223, type: !119)
!1916 = !DILocalVariable(name: "nextvar", scope: !1904, file: !18, line: 234, type: !119)
!1917 = !DILocalVariable(name: "coef", scope: !1918, file: !18, line: 238, type: !67)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !18, line: 237, column: 5)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !18, line: 236, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1904, file: !18, line: 236, column: 5)
!1921 = !DILocation(line: 0, scope: !1904)
!1922 = !DILocation(line: 223, column: 15, scope: !1904)
!1923 = !DILocation(line: 224, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1904, file: !18, line: 224, column: 9)
!1925 = !DILocation(line: 224, column: 9, scope: !1904)
!1926 = !DILocation(line: 226, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1924, file: !18, line: 225, column: 5)
!1928 = !DILocation(line: 227, column: 9, scope: !1927)
!1929 = !DILocation(line: 230, column: 10, scope: !1904)
!1930 = !DILocation(line: 230, column: 7, scope: !1904)
!1931 = !DILocation(line: 231, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1904, file: !18, line: 231, column: 9)
!1933 = !DILocation(line: 231, column: 19, scope: !1932)
!1934 = !DILocation(line: 234, column: 21, scope: !1904)
!1935 = !DILocation(line: 236, column: 19, scope: !1919)
!1936 = !DILocation(line: 236, column: 28, scope: !1919)
!1937 = !DILocation(line: 236, column: 5, scope: !1920)
!1938 = !DILocation(line: 236, column: 36, scope: !1919)
!1939 = !DILocation(line: 236, column: 34, scope: !1919)
!1940 = !DILocation(line: 236, column: 60, scope: !1919)
!1941 = !DILocation(line: 236, column: 68, scope: !1919)
!1942 = !DILocation(line: 238, column: 9, scope: !1918)
!1943 = !DILocation(line: 0, scope: !1918)
!1944 = !DILocation(line: 238, column: 13, scope: !1918)
!1945 = !DILocation(line: 239, column: 9, scope: !1918)
!1946 = !DILocation(line: 240, column: 15, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1918, file: !18, line: 240, column: 13)
!1948 = !DILocation(line: 240, column: 20, scope: !1947)
!1949 = !DILocation(line: 242, column: 31, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1947, file: !18, line: 241, column: 9)
!1951 = !DILocation(line: 242, column: 13, scope: !1950)
!1952 = !DILocation(line: 243, column: 13, scope: !1950)
!1953 = !DILocation(line: 245, column: 22, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1918, file: !18, line: 245, column: 13)
!1955 = !DILocation(line: 247, column: 13, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1954, file: !18, line: 246, column: 9)
!1957 = !DILocation(line: 248, column: 13, scope: !1956)
!1958 = !DILocation(line: 251, column: 5, scope: !1919)
!1959 = !DILocation(line: 250, column: 18, scope: !1918)
!1960 = !DILocation(line: 250, column: 9, scope: !1918)
!1961 = !DILocation(line: 250, column: 16, scope: !1918)
!1962 = !DILocation(line: 236, column: 98, scope: !1919)
!1963 = distinct !{!1963, !1937, !1964, !1509, !1510}
!1964 = !DILocation(line: 251, column: 5, scope: !1920)
!1965 = !DILocation(line: 253, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1904, file: !18, line: 253, column: 9)
!1967 = !DILocation(line: 0, scope: !1920)
!1968 = !DILocation(line: 253, column: 18, scope: !1966)
!1969 = !DILocation(line: 255, column: 9, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !18, line: 254, column: 5)
!1971 = !DILocation(line: 256, column: 9, scope: !1970)
!1972 = !DILocation(line: 260, column: 1, scope: !1904)
