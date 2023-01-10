; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/geometry.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._AffineMatrix = type { double, double, double, double, double, double }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@GetPageGeometry.PageSizes = internal unnamed_addr constant [76 x [2 x ptr]] [[2 x ptr] [ptr @.str.1, ptr @.str.2], [2 x ptr] [ptr @.str.3, ptr @.str.4], [2 x ptr] [ptr @.str.5, ptr @.str.6], [2 x ptr] [ptr @.str.7, ptr @.str.8], [2 x ptr] [ptr @.str.9, ptr @.str.10], [2 x ptr] [ptr @.str.11, ptr @.str.12], [2 x ptr] [ptr @.str.13, ptr @.str.14], [2 x ptr] [ptr @.str.15, ptr @.str.16], [2 x ptr] [ptr @.str.17, ptr @.str.18], [2 x ptr] [ptr @.str.19, ptr @.str.20], [2 x ptr] [ptr @.str.21, ptr @.str.22], [2 x ptr] [ptr @.str.23, ptr @.str.24], [2 x ptr] [ptr @.str.25, ptr @.str.26], [2 x ptr] [ptr @.str.27, ptr @.str.28], [2 x ptr] [ptr @.str.29, ptr @.str.30], [2 x ptr] [ptr @.str.31, ptr @.str.30], [2 x ptr] [ptr @.str.32, ptr @.str.33], [2 x ptr] [ptr @.str.34, ptr @.str.35], [2 x ptr] [ptr @.str.36, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.39], [2 x ptr] [ptr @.str.40, ptr @.str.41], [2 x ptr] [ptr @.str.42, ptr @.str.12], [2 x ptr] [ptr @.str.43, ptr @.str.44], [2 x ptr] [ptr @.str.45, ptr @.str.46], [2 x ptr] [ptr @.str.47, ptr @.str.48], [2 x ptr] [ptr @.str.49, ptr @.str.50], [2 x ptr] [ptr @.str.51, ptr @.str.52], [2 x ptr] [ptr @.str.53, ptr @.str.54], [2 x ptr] [ptr @.str.55, ptr @.str.56], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr @.str.59, ptr @.str.60], [2 x ptr] [ptr @.str.61, ptr @.str.62], [2 x ptr] [ptr @.str.63, ptr @.str.64], [2 x ptr] [ptr @.str.65, ptr @.str.66], [2 x ptr] [ptr @.str.67, ptr @.str.68], [2 x ptr] [ptr @.str.69, ptr @.str.70], [2 x ptr] [ptr @.str.71, ptr @.str.72], [2 x ptr] [ptr @.str.73, ptr @.str.74], [2 x ptr] [ptr @.str.75, ptr @.str.76], [2 x ptr] [ptr @.str.77, ptr @.str.78], [2 x ptr] [ptr @.str.79, ptr @.str.80], [2 x ptr] [ptr @.str.81, ptr @.str.82], [2 x ptr] [ptr @.str.83, ptr @.str.84], [2 x ptr] [ptr @.str.85, ptr @.str.86], [2 x ptr] [ptr @.str.87, ptr @.str.88], [2 x ptr] [ptr @.str.89, ptr @.str.90], [2 x ptr] [ptr @.str.91, ptr @.str.92], [2 x ptr] [ptr @.str.93, ptr @.str.92], [2 x ptr] [ptr @.str.94, ptr @.str.92], [2 x ptr] [ptr @.str.95, ptr @.str.96], [2 x ptr] [ptr @.str.97, ptr @.str.98], [2 x ptr] [ptr @.str.99, ptr @.str.100], [2 x ptr] [ptr @.str.101, ptr @.str.102], [2 x ptr] [ptr @.str.103, ptr @.str.104], [2 x ptr] [ptr @.str.105, ptr @.str.106], [2 x ptr] [ptr @.str.107, ptr @.str.108], [2 x ptr] [ptr @.str.109, ptr @.str.110], [2 x ptr] [ptr @.str.111, ptr @.str.112], [2 x ptr] [ptr @.str.113, ptr @.str.114], [2 x ptr] [ptr @.str.115, ptr @.str.116], [2 x ptr] [ptr @.str.117, ptr @.str.118], [2 x ptr] [ptr @.str.119, ptr @.str.120], [2 x ptr] [ptr @.str.121, ptr @.str.122], [2 x ptr] [ptr @.str.123, ptr @.str.124], [2 x ptr] [ptr @.str.125, ptr @.str.126], [2 x ptr] [ptr @.str.127, ptr @.str.128], [2 x ptr] [ptr @.str.129, ptr @.str.130], [2 x ptr] [ptr @.str.131, ptr @.str.132], [2 x ptr] [ptr @.str.133, ptr @.str.134], [2 x ptr] [ptr @.str.135, ptr @.str.136], [2 x ptr] [ptr @.str.137, ptr @.str.138], [2 x ptr] [ptr @.str.139, ptr @.str.138], [2 x ptr] [ptr @.str.140, ptr @.str.141], [2 x ptr] [ptr @.str.142, ptr @.str.96], [2 x ptr] [ptr @.str.143, ptr @.str.18], [2 x ptr] zeroinitializer], align 16, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"4x6\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"288x432\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5x7\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"360x504\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"7x9\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"504x648\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"8x10\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"576x720\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"9x11\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"648x792\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"9x12\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"648x864\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"10x13\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"720x936\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"10x14\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"720x1008\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"11x17\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"792x1224\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"a0\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"2384x3370\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"1684x2384\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"a10\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"73x105\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"1191x1684\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"842x1191\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"595x842\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"a4small\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"420x595\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"297x420\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"a7\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"210x297\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"a8\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"148x210\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"a9\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"105x148\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"archa\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"archb\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"864x1296\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"archC\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"1296x1728\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"archd\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"1728x2592\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"arche\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"2592x3456\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"b0\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"2920x4127\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"2064x2920\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"b10\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"91x127\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"1460x2064\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"1032x1460\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"b4\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"729x1032\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"b5\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"516x729\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"b6\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"363x516\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"b7\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"258x363\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"b8\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"181x258\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"b9\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"127x181\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"c0\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"2599x3676\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"c1\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"1837x2599\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"c2\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"1298x1837\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"c3\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"918x1296\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"c4\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"649x918\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"c5\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"459x649\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"c6\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"323x459\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"c7\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"230x323\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"executive\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"540x720\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"flsa\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"612x936\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"flse\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"folio\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"halfletter\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"396x612\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"isob0\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"2835x4008\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"isob1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"2004x2835\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"isob10\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"88x125\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"isob2\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"1417x2004\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"isob3\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"1001x1417\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"isob4\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"709x1001\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"isob5\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"499x709\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"isob6\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"354x499\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"isob7\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"249x354\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"isob8\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"176x249\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"isob9\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"125x176\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"jisb0\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"1030x1456\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"jisb1\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"728x1030\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"jisb2\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"515x728\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"jisb3\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"364x515\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"jisb4\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"257x364\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"jisb5\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"182x257\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"jisb6\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"128x182\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"ledger\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"1224x792\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"legal\00", align 1
@.str.136 = private unnamed_addr constant [9 x i8] c"612x1008\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"letter\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"612x792\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"lettersmall\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"quarto\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"610x780\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"tabloid\00", align 1
@.str.144 = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/geometry.c\00", align 1
@.str.145 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"0123456789-, \00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"InvalidArgument\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"'%s' : 'Indeterminate Matrix'\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"InvalidGeometry\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"...\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @GetGeometry(ptr noundef %geometry, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef %width, ptr nocapture noundef %height) local_unnamed_addr #0 !dbg !491 {
entry:
  %p = alloca ptr, align 8
  %pedantic_geometry = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !497, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %x, metadata !498, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %y, metadata !499, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %width, metadata !500, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %height, metadata !501, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9, !dbg !512
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %pedantic_geometry) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %pedantic_geometry, metadata !503, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #9, !dbg !512
  call void @llvm.dbg.value(metadata i32 0, metadata !510, metadata !DIExpression()), !dbg !511
  %cmp = icmp eq ptr %geometry, null, !dbg !514
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !516

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %geometry, align 1, !dbg !517, !tbaa !518
  %cmp1 = icmp eq i8 %0, 0, !dbg !521
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !522

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i64 @strlen(ptr noundef nonnull %geometry) #10, !dbg !523
  %cmp3 = icmp ugt i64 %call, 4094, !dbg !525
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !526

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @CopyMagickString(ptr noundef nonnull %pedantic_geometry, ptr noundef nonnull %geometry, i64 noundef 4096) #9, !dbg !527
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %pedantic_geometry, ptr %p, align 8, !dbg !528, !tbaa !530
  call void @llvm.dbg.value(metadata i32 0, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !502, metadata !DIExpression()), !dbg !511
  %1 = load i8, ptr %pedantic_geometry, align 16, !dbg !532, !tbaa !518
  %cmp10.not299301 = icmp eq i8 %1, 0, !dbg !534
  br i1 %cmp10.not299301, label %cleanup, label %for.body.lr.ph.lr.ph, !dbg !535

for.body.lr.ph.lr.ph:                             ; preds = %if.end6
  %call12 = tail call ptr @__ctype_b_loc() #11, !dbg !511
  br label %for.body.lr.ph, !dbg !535

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %sw.epilog
  %2 = phi i8 [ %1, %for.body.lr.ph.lr.ph ], [ %13, %sw.epilog ]
  %3 = phi ptr [ %pedantic_geometry, %for.body.lr.ph.lr.ph ], [ %12, %sw.epilog ]
  %flags.0.ph302 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %flags.1, %sw.epilog ]
  call void @llvm.dbg.value(metadata i32 %flags.0.ph302, metadata !510, metadata !DIExpression()), !dbg !511
  br label %for.body, !dbg !535

for.body:                                         ; preds = %for.body.lr.ph, %if.then17
  %4 = phi i8 [ %2, %for.body.lr.ph ], [ %11, %if.then17 ]
  %5 = phi ptr [ %3, %for.body.lr.ph ], [ %10, %if.then17 ]
  %6 = load ptr, ptr %call12, align 8, !dbg !536, !tbaa !530
  %7 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %7, !dbg !536
  %8 = load i16, ptr %arrayidx, align 2, !dbg !536, !tbaa !539
  %9 = and i16 %8, 8192, !dbg !536
  %cmp15.not = icmp eq i16 %9, 0, !dbg !541
  br i1 %cmp15.not, label %if.end19, label %if.then17, !dbg !542

if.then17:                                        ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1, !dbg !543
  %call18 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr, i64 noundef 4096) #9, !dbg !545
  call void @llvm.dbg.value(metadata i32 %flags.0.ph302, metadata !510, metadata !DIExpression()), !dbg !511
  %10 = load ptr, ptr %p, align 8, !dbg !546, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %10, metadata !502, metadata !DIExpression()), !dbg !511
  %11 = load i8, ptr %10, align 1, !dbg !532, !tbaa !518
  %cmp10.not = icmp eq i8 %11, 0, !dbg !534
  br i1 %cmp10.not, label %for.end, label %for.body, !dbg !535, !llvm.loop !547

if.end19:                                         ; preds = %for.body
  %conv9.le = sext i8 %4 to i32, !dbg !532
  call void @llvm.dbg.value(metadata i32 %conv9.le, metadata !509, metadata !DIExpression()), !dbg !511
  switch i32 %conv9.le, label %cleanup [
    i32 37, label %sw.bb
    i32 33, label %sw.bb23
    i32 60, label %sw.bb27
    i32 62, label %sw.bb31
    i32 94, label %sw.bb35
    i32 64, label %sw.bb39
    i32 40, label %sw.bb43
    i32 41, label %sw.bb43
    i32 120, label %sw.bb46
    i32 88, label %sw.bb46
    i32 45, label %sw.bb48
    i32 46, label %sw.bb48
    i32 44, label %sw.bb48
    i32 43, label %sw.bb48
    i32 48, label %sw.bb48
    i32 49, label %sw.bb48
    i32 50, label %sw.bb48
    i32 51, label %sw.bb48
    i32 52, label %sw.bb48
    i32 53, label %sw.bb48
    i32 54, label %sw.bb48
    i32 55, label %sw.bb48
    i32 56, label %sw.bb48
    i32 57, label %sw.bb48
    i32 69, label %sw.bb48
    i32 101, label %sw.bb48
  ], !dbg !551

sw.bb:                                            ; preds = %if.end19
  %or = or i32 %flags.0.ph302, 4096, !dbg !552
  call void @llvm.dbg.value(metadata i32 %or, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr21 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !555
  %call22 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr21, i64 noundef 4096) #9, !dbg !556
  br label %sw.epilog, !dbg !557

sw.bb23:                                          ; preds = %if.end19
  %or24 = or i32 %flags.0.ph302, 8192, !dbg !558
  call void @llvm.dbg.value(metadata i32 %or24, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr25 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !560
  %call26 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr25, i64 noundef 4096) #9, !dbg !561
  br label %sw.epilog, !dbg !562

sw.bb27:                                          ; preds = %if.end19
  %or28 = or i32 %flags.0.ph302, 16384, !dbg !563
  call void @llvm.dbg.value(metadata i32 %or28, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr29 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !565
  %call30 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr29, i64 noundef 4096) #9, !dbg !566
  br label %sw.epilog, !dbg !567

sw.bb31:                                          ; preds = %if.end19
  %or32 = or i32 %flags.0.ph302, 32768, !dbg !568
  call void @llvm.dbg.value(metadata i32 %or32, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr33 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !570
  %call34 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr33, i64 noundef 4096) #9, !dbg !571
  br label %sw.epilog, !dbg !572

sw.bb35:                                          ; preds = %if.end19
  %or36 = or i32 %flags.0.ph302, 65536, !dbg !573
  call void @llvm.dbg.value(metadata i32 %or36, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr37 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !575
  %call38 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr37, i64 noundef 4096) #9, !dbg !576
  br label %sw.epilog, !dbg !577

sw.bb39:                                          ; preds = %if.end19
  %or40 = or i32 %flags.0.ph302, 131072, !dbg !578
  call void @llvm.dbg.value(metadata i32 %or40, metadata !510, metadata !DIExpression()), !dbg !511
  %add.ptr41 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !580
  %call42 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr41, i64 noundef 4096) #9, !dbg !581
  br label %sw.epilog, !dbg !582

sw.bb43:                                          ; preds = %if.end19, %if.end19
  call void @llvm.dbg.value(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !511
  %add.ptr44 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !583
  %call45 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr44, i64 noundef 4096) #9, !dbg !585
  br label %sw.epilog, !dbg !586

sw.bb46:                                          ; preds = %if.end19, %if.end19
  %or47 = or i32 %flags.0.ph302, 524288, !dbg !587
  call void @llvm.dbg.value(metadata i32 %or47, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !511
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1, !dbg !589
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !589, !tbaa !530
  br label %sw.epilog, !dbg !590

sw.bb48:                                          ; preds = %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19
  call void @llvm.dbg.value(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !511
  %incdec.ptr49 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !591
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr49, ptr %p, align 8, !dbg !591, !tbaa !530
  br label %sw.epilog, !dbg !593

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb46, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb
  %flags.1 = phi i32 [ %flags.0.ph302, %sw.bb48 ], [ %or47, %sw.bb46 ], [ %flags.0.ph302, %sw.bb43 ], [ %or40, %sw.bb39 ], [ %or36, %sw.bb35 ], [ %or32, %sw.bb31 ], [ %or28, %sw.bb27 ], [ %or24, %sw.bb23 ], [ %or, %sw.bb ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !510, metadata !DIExpression()), !dbg !511
  %12 = load ptr, ptr %p, align 8, !dbg !546, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %12, metadata !502, metadata !DIExpression()), !dbg !511
  %13 = load i8, ptr %12, align 1, !dbg !532, !tbaa !518
  %cmp10.not299 = icmp eq i8 %13, 0, !dbg !534
  br i1 %cmp10.not299, label %for.end, label %for.body.lr.ph, !dbg !535, !llvm.loop !547

for.end:                                          ; preds = %sw.epilog, %if.then17
  %flags.0.ph.lcssa297.ph = phi i32 [ %flags.0.ph302, %if.then17 ], [ %flags.1, %sw.epilog ]
  %.pr = load i8, ptr %pedantic_geometry, align 16, !dbg !594, !tbaa !518
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %pedantic_geometry, ptr %p, align 8, !dbg !596, !tbaa !530
  %cmp52 = icmp eq i8 %.pr, 0, !dbg !597
  br i1 %cmp52, label %cleanup, label %if.end55, !dbg !598

if.end55:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !507, metadata !DIExpression()), !dbg !511
  store ptr %pedantic_geometry, ptr %q, align 8, !dbg !599, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !502, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %q, metadata !507, metadata !DIExpression(DW_OP_deref)), !dbg !511
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !600, metadata !DIExpression()) #9, !dbg !609
  call void @llvm.dbg.value(metadata ptr %q, metadata !608, metadata !DIExpression()) #9, !dbg !609
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %pedantic_geometry, ptr noundef nonnull %q) #9, !dbg !611
  call void @llvm.dbg.value(metadata double undef, metadata !508, metadata !DIExpression()), !dbg !511
  %14 = load ptr, ptr %p, align 8, !dbg !612, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %14, metadata !502, metadata !DIExpression()), !dbg !511
  %call57 = call i32 @LocaleNCompare(ptr noundef %14, ptr noundef nonnull @.str, i64 noundef 2) #9, !dbg !614
  %cmp58 = icmp eq i32 %call57, 0, !dbg !615
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !616

if.then60:                                        ; preds = %if.end55
  %15 = load ptr, ptr %p, align 8, !dbg !617, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %15, metadata !502, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %q, metadata !507, metadata !DIExpression(DW_OP_deref)), !dbg !511
  %call61 = call i64 @strtol(ptr noundef %15, ptr noundef nonnull %q, i32 noundef 10) #9, !dbg !618
  call void @llvm.dbg.value(metadata double undef, metadata !508, metadata !DIExpression()), !dbg !511
  br label %if.end63, !dbg !619

if.end63:                                         ; preds = %if.then60, %if.end55
  %16 = load ptr, ptr %p, align 8, !dbg !620, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %16, metadata !502, metadata !DIExpression()), !dbg !511
  %17 = load i8, ptr %16, align 1, !dbg !622, !tbaa !518
  switch i8 %17, label %if.then70 [
    i8 43, label %if.end101
    i8 45, label %if.end101
  ], !dbg !623

if.then70:                                        ; preds = %if.end63
  %18 = load ptr, ptr %q, align 8, !dbg !624, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %18, metadata !507, metadata !DIExpression()), !dbg !511
  %19 = load i8, ptr %18, align 1, !dbg !626, !tbaa !518
  call void @llvm.dbg.value(metadata i8 %19, metadata !509, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !511
  switch i8 %19, label %if.end101 [
    i8 -41, label %if.then86
    i8 120, label %if.then86
    i8 88, label %if.then86
    i8 0, label %if.then86
  ], !dbg !627

if.then86:                                        ; preds = %if.then70, %if.then70, %if.then70, %if.then70
  call void @llvm.dbg.value(metadata ptr %16, metadata !502, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %16, metadata !507, metadata !DIExpression()), !dbg !511
  store ptr %16, ptr %q, align 8, !dbg !629, !tbaa !530
  %call87 = call i32 @LocaleNCompare(ptr noundef nonnull %16, ptr noundef nonnull @.str, i64 noundef 2) #9, !dbg !631
  %cmp88 = icmp eq i32 %call87, 0, !dbg !633
  %20 = load ptr, ptr %p, align 8, !dbg !634, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !502, metadata !DIExpression(DW_OP_deref)), !dbg !511
  call void @llvm.dbg.value(metadata ptr %p, metadata !502, metadata !DIExpression(DW_OP_deref)), !dbg !511
  br i1 %cmp88, label %if.then90, label %if.else, !dbg !635

if.then90:                                        ; preds = %if.then86
  %call91 = call i64 @strtol(ptr noundef %20, ptr noundef nonnull %p, i32 noundef 10) #9, !dbg !636
  br label %if.end94, !dbg !637

if.else:                                          ; preds = %if.then86
  call void @llvm.dbg.value(metadata ptr %20, metadata !600, metadata !DIExpression()) #9, !dbg !638
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !638
  %call.i289 = call double @InterpretLocaleValue(ptr noundef %20, ptr noundef nonnull %p) #9, !dbg !640
  %add = fadd double %call.i289, 5.000000e-01, !dbg !641
  %21 = call double @llvm.floor.f64(double %add), !dbg !642
  %conv93 = fptoui double %21 to i64, !dbg !643
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then90
  %storemerge = phi i64 [ %conv93, %if.else ], [ %call91, %if.then90 ], !dbg !634
  store i64 %storemerge, ptr %width, align 8, !dbg !634, !tbaa !644
  %22 = load ptr, ptr %p, align 8, !dbg !646, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %22, metadata !502, metadata !DIExpression()), !dbg !511
  %23 = load ptr, ptr %q, align 8, !dbg !648, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %23, metadata !507, metadata !DIExpression()), !dbg !511
  %cmp95.not = icmp eq ptr %22, %23, !dbg !649
  %or98 = or i32 %flags.0.ph.lcssa297.ph, 4
  %spec.select = select i1 %cmp95.not, i32 %flags.0.ph.lcssa297.ph, i32 %or98, !dbg !650
  %.pre = load i8, ptr %22, align 1, !dbg !651, !tbaa !518
  br label %if.end101, !dbg !650

if.end101:                                        ; preds = %if.end94, %if.then70, %if.end63, %if.end63
  %24 = phi i8 [ %17, %if.end63 ], [ %17, %if.end63 ], [ %17, %if.then70 ], [ %.pre, %if.end94 ], !dbg !651
  %25 = phi ptr [ %16, %if.end63 ], [ %16, %if.end63 ], [ %16, %if.then70 ], [ %22, %if.end94 ], !dbg !653
  %flags.2 = phi i32 [ %flags.0.ph.lcssa297.ph, %if.end63 ], [ %flags.0.ph.lcssa297.ph, %if.end63 ], [ %flags.0.ph.lcssa297.ph, %if.then70 ], [ %spec.select, %if.end94 ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.2, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %25, metadata !502, metadata !DIExpression()), !dbg !511
  switch i8 %24, label %if.end141 [
    i8 88, label %if.then121
    i8 120, label %if.then121
    i8 -41, label %if.then121
  ], !dbg !654

if.then121:                                       ; preds = %if.end101, %if.end101, %if.end101
  call void @llvm.dbg.value(metadata ptr %25, metadata !502, metadata !DIExpression()), !dbg !511
  %incdec.ptr122 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !655
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr122, ptr %p, align 8, !dbg !655, !tbaa !530
  %26 = load i8, ptr %incdec.ptr122, align 1, !dbg !659, !tbaa !518
  switch i8 %26, label %if.then130 [
    i8 43, label %if.end141
    i8 45, label %if.end141
  ], !dbg !661

if.then130:                                       ; preds = %if.then121
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !507, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr122, ptr %q, align 8, !dbg !662, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !502, metadata !DIExpression(DW_OP_deref)), !dbg !511
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !600, metadata !DIExpression()) #9, !dbg !664
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !664
  %call.i290 = call double @InterpretLocaleValue(ptr noundef nonnull %incdec.ptr122, ptr noundef nonnull %p) #9, !dbg !666
  %add132 = fadd double %call.i290, 5.000000e-01, !dbg !667
  %27 = call double @llvm.floor.f64(double %add132), !dbg !668
  %conv133 = fptoui double %27 to i64, !dbg !669
  store i64 %conv133, ptr %height, align 8, !dbg !670, !tbaa !644
  %28 = load ptr, ptr %p, align 8, !dbg !671, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %28, metadata !502, metadata !DIExpression()), !dbg !511
  %29 = load ptr, ptr %q, align 8, !dbg !673, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %29, metadata !507, metadata !DIExpression()), !dbg !511
  %cmp134.not = icmp eq ptr %28, %29, !dbg !674
  %or137 = or i32 %flags.2, 8
  %spec.select285 = select i1 %cmp134.not, i32 %flags.2, i32 %or137, !dbg !675
  %.pre312 = load i8, ptr %28, align 1, !dbg !676, !tbaa !518
  br label %if.end141, !dbg !675

if.end141:                                        ; preds = %if.then130, %if.then121, %if.then121, %if.end101
  %30 = phi i8 [ %26, %if.then121 ], [ %24, %if.end101 ], [ %26, %if.then121 ], [ %.pre312, %if.then130 ], !dbg !676
  %31 = phi ptr [ %incdec.ptr122, %if.then121 ], [ %25, %if.end101 ], [ %incdec.ptr122, %if.then121 ], [ %28, %if.then130 ], !dbg !678
  %flags.3 = phi i32 [ %flags.2, %if.then121 ], [ %flags.2, %if.end101 ], [ %flags.2, %if.then121 ], [ %spec.select285, %if.then130 ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.3, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %31, metadata !502, metadata !DIExpression()), !dbg !511
  switch i8 %30, label %if.end175 [
    i8 43, label %while.cond.preheader
    i8 45, label %while.cond.preheader
  ], !dbg !679

while.cond.preheader:                             ; preds = %if.end141, %if.end141
  br label %while.cond, !dbg !680

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %32 = phi i8 [ %.pre313, %while.body ], [ %30, %while.cond.preheader ], !dbg !682
  %33 = phi ptr [ %incdec.ptr161, %while.body ], [ %31, %while.cond.preheader ], !dbg !683
  %flags.4 = phi i32 [ %spec.select286, %while.body ], [ %flags.3, %while.cond.preheader ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.4, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %33, metadata !502, metadata !DIExpression()), !dbg !511
  switch i8 %32, label %while.end [
    i8 43, label %while.body
    i8 45, label %while.body
  ], !dbg !684

while.body:                                       ; preds = %while.cond, %while.cond
  call void @llvm.dbg.value(metadata ptr %33, metadata !502, metadata !DIExpression()), !dbg !511
  %cmp157 = icmp eq i8 %32, 45, !dbg !685
  %xor = xor i32 %flags.4, 32
  %spec.select286 = select i1 %cmp157, i32 %xor, i32 %flags.4, !dbg !688
  call void @llvm.dbg.value(metadata i32 %spec.select286, metadata !510, metadata !DIExpression()), !dbg !511
  %incdec.ptr161 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !689
  call void @llvm.dbg.value(metadata ptr %incdec.ptr161, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr161, ptr %p, align 8, !dbg !689, !tbaa !530
  %.pre313 = load i8, ptr %incdec.ptr161, align 1, !dbg !682, !tbaa !518
  br label %while.cond, !dbg !680, !llvm.loop !690

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata ptr %33, metadata !507, metadata !DIExpression()), !dbg !511
  store ptr %33, ptr %q, align 8, !dbg !692, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !502, metadata !DIExpression(DW_OP_deref)), !dbg !511
  call void @llvm.dbg.value(metadata ptr %33, metadata !600, metadata !DIExpression()) #9, !dbg !693
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !693
  %call.i291 = call double @InterpretLocaleValue(ptr noundef nonnull %33, ptr noundef nonnull %p) #9, !dbg !695
  %sub = fadd double %call.i291, -5.000000e-01, !dbg !696
  %34 = call double @llvm.ceil.f64(double %sub), !dbg !697
  %conv163 = fptosi double %34 to i64, !dbg !698
  store i64 %conv163, ptr %x, align 8, !dbg !699, !tbaa !644
  %35 = load ptr, ptr %p, align 8, !dbg !700, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %35, metadata !502, metadata !DIExpression()), !dbg !511
  %36 = load ptr, ptr %q, align 8, !dbg !702, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %36, metadata !507, metadata !DIExpression()), !dbg !511
  %cmp164.not = icmp eq ptr %35, %36, !dbg !703
  br i1 %cmp164.not, label %if.end175, label %if.then166, !dbg !704

if.then166:                                       ; preds = %while.end
  %or167 = or i32 %flags.4, 1, !dbg !705
  call void @llvm.dbg.value(metadata i32 %flags.4, metadata !510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !511
  %and168 = and i32 %flags.4, 32, !dbg !707
  %cmp169.not = icmp eq i32 %and168, 0, !dbg !709
  br i1 %cmp169.not, label %if.end175, label %if.then171, !dbg !710

if.then171:                                       ; preds = %if.then166
  %sub172 = sub nsw i64 0, %conv163, !dbg !711
  store i64 %sub172, ptr %x, align 8, !dbg !712, !tbaa !644
  br label %if.end175, !dbg !713

if.end175:                                        ; preds = %if.end141, %while.end, %if.then171, %if.then166
  %37 = phi ptr [ %35, %if.then171 ], [ %35, %if.then166 ], [ %35, %while.end ], [ %31, %if.end141 ], !dbg !714
  %flags.6 = phi i32 [ %or167, %if.then171 ], [ %or167, %if.then166 ], [ %flags.4, %while.end ], [ %flags.3, %if.end141 ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.6, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %37, metadata !502, metadata !DIExpression()), !dbg !511
  %38 = load i8, ptr %37, align 1, !dbg !716, !tbaa !518
  switch i8 %38, label %if.end216 [
    i8 43, label %while.cond184.preheader
    i8 45, label %while.cond184.preheader
  ], !dbg !717

while.cond184.preheader:                          ; preds = %if.end175, %if.end175
  br label %while.cond184, !dbg !718

while.cond184:                                    ; preds = %while.cond184.preheader, %while.body193
  %39 = phi i8 [ %.pre314, %while.body193 ], [ %38, %while.cond184.preheader ], !dbg !720
  %40 = phi ptr [ %incdec.ptr200, %while.body193 ], [ %37, %while.cond184.preheader ], !dbg !721
  %flags.7 = phi i32 [ %spec.select287, %while.body193 ], [ %flags.6, %while.cond184.preheader ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.7, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr %40, metadata !502, metadata !DIExpression()), !dbg !511
  switch i8 %39, label %while.end201 [
    i8 43, label %while.body193
    i8 45, label %while.body193
  ], !dbg !722

while.body193:                                    ; preds = %while.cond184, %while.cond184
  call void @llvm.dbg.value(metadata ptr %40, metadata !502, metadata !DIExpression()), !dbg !511
  %cmp195 = icmp eq i8 %39, 45, !dbg !723
  %xor198 = xor i32 %flags.7, 64
  %spec.select287 = select i1 %cmp195, i32 %xor198, i32 %flags.7, !dbg !726
  call void @llvm.dbg.value(metadata i32 %spec.select287, metadata !510, metadata !DIExpression()), !dbg !511
  %incdec.ptr200 = getelementptr inbounds i8, ptr %40, i64 1, !dbg !727
  call void @llvm.dbg.value(metadata ptr %incdec.ptr200, metadata !502, metadata !DIExpression()), !dbg !511
  store ptr %incdec.ptr200, ptr %p, align 8, !dbg !727, !tbaa !530
  %.pre314 = load i8, ptr %incdec.ptr200, align 1, !dbg !720, !tbaa !518
  br label %while.cond184, !dbg !718, !llvm.loop !728

while.end201:                                     ; preds = %while.cond184
  call void @llvm.dbg.value(metadata ptr %40, metadata !507, metadata !DIExpression()), !dbg !511
  store ptr %40, ptr %q, align 8, !dbg !730, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !502, metadata !DIExpression(DW_OP_deref)), !dbg !511
  call void @llvm.dbg.value(metadata ptr %40, metadata !600, metadata !DIExpression()) #9, !dbg !731
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !731
  %call.i292 = call double @InterpretLocaleValue(ptr noundef nonnull %40, ptr noundef nonnull %p) #9, !dbg !733
  %sub203 = fadd double %call.i292, -5.000000e-01, !dbg !734
  %41 = call double @llvm.ceil.f64(double %sub203), !dbg !735
  %conv204 = fptosi double %41 to i64, !dbg !736
  store i64 %conv204, ptr %y, align 8, !dbg !737, !tbaa !644
  %42 = load ptr, ptr %p, align 8, !dbg !738, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %42, metadata !502, metadata !DIExpression()), !dbg !511
  %43 = load ptr, ptr %q, align 8, !dbg !740, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %43, metadata !507, metadata !DIExpression()), !dbg !511
  %cmp205.not = icmp eq ptr %42, %43, !dbg !741
  br i1 %cmp205.not, label %if.end216, label %if.then207, !dbg !742

if.then207:                                       ; preds = %while.end201
  %or208 = or i32 %flags.7, 2, !dbg !743
  call void @llvm.dbg.value(metadata i32 %flags.7, metadata !510, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !511
  %and209 = and i32 %flags.7, 64, !dbg !745
  %cmp210.not = icmp eq i32 %and209, 0, !dbg !747
  br i1 %cmp210.not, label %if.end216, label %if.then212, !dbg !748

if.then212:                                       ; preds = %if.then207
  %sub213 = sub nsw i64 0, %conv204, !dbg !749
  store i64 %sub213, ptr %y, align 8, !dbg !750, !tbaa !644
  br label %if.end216, !dbg !751

if.end216:                                        ; preds = %if.end175, %while.end201, %if.then212, %if.then207
  %flags.9 = phi i32 [ %or208, %if.then212 ], [ %or208, %if.then207 ], [ %flags.7, %while.end201 ], [ %flags.6, %if.end175 ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.9, metadata !510, metadata !DIExpression()), !dbg !511
  %and217 = and i32 %flags.9, 4096, !dbg !752
  %cmp218.not = icmp eq i32 %and217, 0, !dbg !754
  br i1 %cmp218.not, label %cleanup, label %if.then220, !dbg !755

if.then220:                                       ; preds = %if.end216
  %44 = and i32 %flags.9, 524296, !dbg !756
  %45 = icmp eq i32 %44, 0, !dbg !756
  br i1 %45, label %if.then228, label %if.end230, !dbg !756

if.then228:                                       ; preds = %if.then220
  %46 = load i64, ptr %width, align 8, !dbg !759, !tbaa !644
  store i64 %46, ptr %height, align 8, !dbg !761, !tbaa !644
  %or229 = or i32 %flags.9, 8, !dbg !762
  call void @llvm.dbg.value(metadata i32 %or229, metadata !510, metadata !DIExpression()), !dbg !511
  br label %if.end230, !dbg !763

if.end230:                                        ; preds = %if.then228, %if.then220
  %flags.10 = phi i32 [ %or229, %if.then228 ], [ %flags.9, %if.then220 ], !dbg !511
  call void @llvm.dbg.value(metadata i32 %flags.10, metadata !510, metadata !DIExpression()), !dbg !511
  %47 = and i32 %flags.10, 524292, !dbg !764
  %48 = icmp eq i32 %47, 524288, !dbg !764
  br i1 %48, label %if.then238, label %cleanup, !dbg !764

if.then238:                                       ; preds = %if.end230
  %49 = load i64, ptr %height, align 8, !dbg !766, !tbaa !644
  store i64 %49, ptr %width, align 8, !dbg !767, !tbaa !644
  br label %cleanup, !dbg !768

cleanup:                                          ; preds = %if.end19, %if.end6, %if.end216, %if.then238, %if.end230, %for.end, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ %flags.0.ph.lcssa297.ph, %for.end ], [ %flags.10, %if.then238 ], [ %flags.10, %if.end230 ], [ %flags.9, %if.end216 ], [ 0, %if.end6 ], [ %flags.0.ph302, %if.end19 ], !dbg !511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #9, !dbg !769
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %pedantic_geometry) #9, !dbg !769
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9, !dbg !769
  ret i32 %retval.0, !dbg !769
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare !dbg !770 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare !dbg !776 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPageGeometry(ptr noundef %page_geometry) local_unnamed_addr #0 !dbg !2 {
entry:
  %geometry = alloca %struct._RectangleInfo, align 8
  call void @llvm.dbg.value(metadata ptr %page_geometry, metadata !463, metadata !DIExpression()), !dbg !779
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 432, ptr noundef nonnull @.str.146, ptr noundef %page_geometry) #9, !dbg !780
  %call1 = tail call ptr @AcquireString(ptr noundef %page_geometry) #9, !dbg !781
  call void @llvm.dbg.value(metadata ptr %call1, metadata !464, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i64 0, metadata !465, metadata !DIExpression()), !dbg !779
  br label %for.body, !dbg !782

for.body:                                         ; preds = %entry, %for.inc
  %0 = phi ptr [ @.str.1, %entry ], [ %2, %for.inc ]
  %i.035 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !465, metadata !DIExpression()), !dbg !779
  %call6 = tail call i64 @strlen(ptr noundef nonnull %0) #10, !dbg !783
  %call7 = tail call i32 @LocaleNCompare(ptr noundef nonnull %0, ptr noundef %call1, i64 noundef %call6) #9, !dbg !784
  %cmp8 = icmp eq i32 %call7, 0, !dbg !785
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !786

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %geometry) #9, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %geometry, metadata !466, metadata !DIExpression()), !dbg !788
  %arrayidx10 = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %i.035, i64 1, !dbg !789
  %1 = load ptr, ptr %arrayidx10, align 8, !dbg !789, !tbaa !530
  %call11 = tail call i64 @CopyMagickString(ptr noundef %call1, ptr noundef %1, i64 noundef 4096) #9, !dbg !790
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10, !dbg !791
  %add.ptr = getelementptr inbounds i8, ptr %page_geometry, i64 %call14, !dbg !792
  %call15 = tail call i64 @ConcatenateMagickString(ptr noundef %call1, ptr noundef %add.ptr, i64 noundef 4096) #9, !dbg !793
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 2, !dbg !794
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 3, !dbg !795
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !796
  %call16 = call i32 @GetGeometry(ptr noundef %call1, ptr noundef nonnull %x, ptr noundef nonnull %y, ptr noundef nonnull %geometry, ptr noundef nonnull %height), !dbg !797
  call void @llvm.dbg.value(metadata i32 %call16, metadata !478, metadata !DIExpression()), !dbg !798
  %and = and i32 %call16, 32768, !dbg !799
  %cmp17 = icmp eq i32 %and, 0, !dbg !801
  br i1 %cmp17, label %if.then18, label %if.end, !dbg !802

if.then18:                                        ; preds = %if.then
  %call19 = tail call i64 @ConcatenateMagickString(ptr noundef %call1, ptr noundef nonnull @.str.147, i64 noundef 4096) #9, !dbg !803
  br label %if.end, !dbg !804

if.end:                                           ; preds = %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %geometry) #9, !dbg !805
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.035, 1, !dbg !806
  call void @llvm.dbg.value(metadata i64 %inc, metadata !465, metadata !DIExpression()), !dbg !779
  %arrayidx = getelementptr inbounds [76 x [2 x ptr]], ptr @GetPageGeometry.PageSizes, i64 0, i64 %inc, !dbg !807
  %2 = load ptr, ptr %arrayidx, align 16, !dbg !808, !tbaa !530
  %exitcond = icmp eq i64 %inc, 75, !dbg !809
  br i1 %exitcond, label %for.end, label %for.body, !dbg !782, !llvm.loop !810

for.end:                                          ; preds = %for.inc, %if.end
  ret ptr %call1, !dbg !812
}

declare !dbg !813 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !819 ptr @AcquireString(ptr noundef) local_unnamed_addr #4

declare !dbg !820 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @GravityAdjustGeometry(i64 noundef %width, i64 noundef %height, i32 noundef %gravity, ptr nocapture noundef %region) local_unnamed_addr #7 !dbg !821 {
entry:
  call void @llvm.dbg.value(metadata i64 %width, metadata !828, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i64 %height, metadata !829, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i32 %gravity, metadata !830, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr %region, metadata !831, metadata !DIExpression()), !dbg !832
  %height1 = getelementptr inbounds %struct._RectangleInfo, ptr %region, i64 0, i32 1, !dbg !833
  %0 = load i64, ptr %height1, align 8, !dbg !833, !tbaa !835
  %cmp = icmp eq i64 %0, 0, !dbg !837
  br i1 %cmp, label %if.then, label %if.end, !dbg !838

if.then:                                          ; preds = %entry
  store i64 %height, ptr %height1, align 8, !dbg !839, !tbaa !835
  br label %if.end, !dbg !840

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i64 [ %height, %if.then ], [ %0, %entry ]
  %2 = load i64, ptr %region, align 8, !dbg !841, !tbaa !843
  %cmp4 = icmp eq i64 %2, 0, !dbg !844
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !845

if.then5:                                         ; preds = %if.end
  store i64 %width, ptr %region, align 8, !dbg !846, !tbaa !843
  br label %if.end7, !dbg !847

if.end7:                                          ; preds = %if.then5, %if.end
  %3 = phi i64 [ %width, %if.then5 ], [ %2, %if.end ]
  switch i32 %gravity, label %sw.epilog31 [
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 9, label %sw.bb
    i32 2, label %sw.bb11
    i32 8, label %sw.bb11
    i32 5, label %sw.bb11
    i32 10, label %sw.bb11
    i32 7, label %sw.bb17
    i32 4, label %sw.bb22
  ], !dbg !848

sw.bb:                                            ; preds = %if.end7, %if.end7, %if.end7
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %region, i64 0, i32 2, !dbg !849
  %4 = load i64, ptr %x, align 8, !dbg !849, !tbaa !852
  %5 = add i64 %3, %4, !dbg !853
  %sub9 = sub i64 %width, %5, !dbg !853
  store i64 %sub9, ptr %x, align 8, !dbg !854, !tbaa !852
  br label %sw.epilog, !dbg !855

sw.bb11:                                          ; preds = %if.end7, %if.end7, %if.end7, %if.end7
  %div50 = lshr i64 %width, 1, !dbg !856
  %div1351 = lshr i64 %3, 1, !dbg !858
  %sub14 = sub nsw i64 %div50, %div1351, !dbg !859
  %x15 = getelementptr inbounds %struct._RectangleInfo, ptr %region, i64 0, i32 2, !dbg !860
  %6 = load i64, ptr %x15, align 8, !dbg !861, !tbaa !852
  %add = add nsw i64 %sub14, %6, !dbg !861
  store i64 %add, ptr %x15, align 8, !dbg !861, !tbaa !852
  br label %sw.epilog, !dbg !862

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  switch i32 %gravity, label %sw.epilog31 [
    i32 7, label %sw.bb17
    i32 8, label %sw.bb17
    i32 9, label %sw.bb17
    i32 6, label %sw.bb22
    i32 4, label %sw.bb22
    i32 5, label %sw.bb22
    i32 10, label %sw.bb22
  ], !dbg !863

sw.bb17:                                          ; preds = %if.end7, %sw.epilog, %sw.epilog, %sw.epilog
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %region, i64 0, i32 3, !dbg !864
  %7 = load i64, ptr %y, align 8, !dbg !864, !tbaa !867
  %8 = add i64 %1, %7, !dbg !868
  %sub20 = sub i64 %height, %8, !dbg !868
  store i64 %sub20, ptr %y, align 8, !dbg !869, !tbaa !867
  br label %sw.epilog31, !dbg !870

sw.bb22:                                          ; preds = %if.end7, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %div2352 = lshr i64 %height, 1, !dbg !871
  %div2553 = lshr i64 %1, 1, !dbg !873
  %sub26 = sub nsw i64 %div2352, %div2553, !dbg !874
  %y27 = getelementptr inbounds %struct._RectangleInfo, ptr %region, i64 0, i32 3, !dbg !875
  %9 = load i64, ptr %y27, align 8, !dbg !876, !tbaa !867
  %add28 = add nsw i64 %sub26, %9, !dbg !876
  store i64 %add28, ptr %y27, align 8, !dbg !876, !tbaa !867
  br label %sw.epilog31, !dbg !877

sw.epilog31:                                      ; preds = %if.end7, %sw.epilog, %sw.bb22, %sw.bb17
  ret void, !dbg !878
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsGeometry(ptr noundef %geometry) local_unnamed_addr #0 !dbg !879 {
entry:
  %geometry_info = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !883, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !884, metadata !DIExpression()), !dbg !896
  %cmp = icmp eq ptr %geometry, null, !dbg !897
  br i1 %cmp, label %cleanup, label %if.end, !dbg !899

if.end:                                           ; preds = %entry
  %call = call i32 @ParseGeometry(ptr noundef nonnull %geometry, ptr noundef nonnull %geometry_info), !dbg !900
  call void @llvm.dbg.value(metadata i32 %call, metadata !893, metadata !DIExpression()), !dbg !894
  %cmp1.not = icmp ne i32 %call, 0, !dbg !901
  %cond = zext i1 %cmp1.not to i32, !dbg !902
  br label %cleanup, !dbg !903

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry ], !dbg !894
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !904
  ret i32 %retval.0, !dbg !904
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseGeometry(ptr noundef %geometry, ptr nocapture noundef %geometry_info) local_unnamed_addr #0 !dbg !905 {
entry:
  %p = alloca ptr, align 8
  %pedantic_geometry = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !910, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %geometry_info, metadata !911, metadata !DIExpression()), !dbg !918
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9, !dbg !919
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %pedantic_geometry) #9, !dbg !919
  call void @llvm.dbg.declare(metadata ptr %pedantic_geometry, metadata !913, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #9, !dbg !919
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !918
  %cmp = icmp eq ptr %geometry, null, !dbg !921
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !923

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %geometry, align 1, !dbg !924, !tbaa !518
  %cmp1 = icmp eq i8 %0, 0, !dbg !925
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !926

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i64 @strlen(ptr noundef nonnull %geometry) #10, !dbg !927
  %cmp3 = icmp ugt i64 %call, 4094, !dbg !929
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !930

if.end6:                                          ; preds = %if.end
  %call7 = call i64 @CopyMagickString(ptr noundef nonnull %pedantic_geometry, ptr noundef nonnull %geometry, i64 noundef 4096) #9, !dbg !931
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %pedantic_geometry, ptr %p, align 8, !dbg !932, !tbaa !530
  call void @llvm.dbg.value(metadata i32 0, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !912, metadata !DIExpression()), !dbg !918
  %1 = load i8, ptr %pedantic_geometry, align 16, !dbg !934, !tbaa !518
  %cmp10.not555557 = icmp eq i8 %1, 0, !dbg !936
  br i1 %cmp10.not555557, label %cleanup, label %for.body.lr.ph.lr.ph, !dbg !937

for.body.lr.ph.lr.ph:                             ; preds = %if.end6
  %call12 = tail call ptr @__ctype_b_loc() #11, !dbg !918
  br label %for.body.lr.ph, !dbg !937

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %sw.epilog
  %2 = phi i8 [ %1, %for.body.lr.ph.lr.ph ], [ %13, %sw.epilog ]
  %3 = phi ptr [ %pedantic_geometry, %for.body.lr.ph.lr.ph ], [ %12, %sw.epilog ]
  %flags.0.ph558 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %flags.1, %sw.epilog ]
  call void @llvm.dbg.value(metadata i32 %flags.0.ph558, metadata !917, metadata !DIExpression()), !dbg !918
  br label %for.body, !dbg !937

for.body:                                         ; preds = %for.body.lr.ph, %if.then17
  %4 = phi i8 [ %2, %for.body.lr.ph ], [ %11, %if.then17 ]
  %5 = phi ptr [ %3, %for.body.lr.ph ], [ %10, %if.then17 ]
  %6 = load ptr, ptr %call12, align 8, !dbg !938, !tbaa !530
  %7 = zext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %7, !dbg !938
  %8 = load i16, ptr %arrayidx, align 2, !dbg !938, !tbaa !539
  %9 = and i16 %8, 8192, !dbg !938
  %cmp15.not = icmp eq i16 %9, 0, !dbg !941
  br i1 %cmp15.not, label %if.end19, label %if.then17, !dbg !942

if.then17:                                        ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 1, !dbg !943
  %call18 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr, i64 noundef 4096) #9, !dbg !945
  call void @llvm.dbg.value(metadata i32 %flags.0.ph558, metadata !917, metadata !DIExpression()), !dbg !918
  %10 = load ptr, ptr %p, align 8, !dbg !946, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %10, metadata !912, metadata !DIExpression()), !dbg !918
  %11 = load i8, ptr %10, align 1, !dbg !934, !tbaa !518
  %cmp10.not = icmp eq i8 %11, 0, !dbg !936
  br i1 %cmp10.not, label %for.end, label %for.body, !dbg !937, !llvm.loop !947

if.end19:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata i8 %4, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !918
  switch i8 %4, label %cleanup [
    i8 37, label %sw.bb
    i8 33, label %sw.bb23
    i8 60, label %sw.bb27
    i8 62, label %sw.bb31
    i8 94, label %sw.bb35
    i8 64, label %sw.bb39
    i8 40, label %sw.bb43
    i8 41, label %sw.bb43
    i8 120, label %sw.bb46
    i8 88, label %sw.bb46
    i8 45, label %sw.bb48
    i8 43, label %sw.bb48
    i8 44, label %sw.bb48
    i8 48, label %sw.bb48
    i8 49, label %sw.bb48
    i8 50, label %sw.bb48
    i8 51, label %sw.bb48
    i8 52, label %sw.bb48
    i8 53, label %sw.bb48
    i8 54, label %sw.bb48
    i8 55, label %sw.bb48
    i8 56, label %sw.bb48
    i8 57, label %sw.bb48
    i8 47, label %sw.bb48
    i8 58, label %sw.bb48
    i8 -41, label %sw.bb48
    i8 101, label %sw.bb48
    i8 69, label %sw.bb48
    i8 46, label %sw.bb50
  ], !dbg !949

sw.bb:                                            ; preds = %if.end19
  %or = or i32 %flags.0.ph558, 4096, !dbg !950
  call void @llvm.dbg.value(metadata i32 %or, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr21 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !953
  %call22 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr21, i64 noundef 4096) #9, !dbg !954
  br label %sw.epilog, !dbg !955

sw.bb23:                                          ; preds = %if.end19
  %or24 = or i32 %flags.0.ph558, 8192, !dbg !956
  call void @llvm.dbg.value(metadata i32 %or24, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr25 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !958
  %call26 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr25, i64 noundef 4096) #9, !dbg !959
  br label %sw.epilog, !dbg !960

sw.bb27:                                          ; preds = %if.end19
  %or28 = or i32 %flags.0.ph558, 16384, !dbg !961
  call void @llvm.dbg.value(metadata i32 %or28, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr29 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !963
  %call30 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr29, i64 noundef 4096) #9, !dbg !964
  br label %sw.epilog, !dbg !965

sw.bb31:                                          ; preds = %if.end19
  %or32 = or i32 %flags.0.ph558, 32768, !dbg !966
  call void @llvm.dbg.value(metadata i32 %or32, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr33 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !968
  %call34 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr33, i64 noundef 4096) #9, !dbg !969
  br label %sw.epilog, !dbg !970

sw.bb35:                                          ; preds = %if.end19
  %or36 = or i32 %flags.0.ph558, 65536, !dbg !971
  call void @llvm.dbg.value(metadata i32 %or36, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr37 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !973
  %call38 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr37, i64 noundef 4096) #9, !dbg !974
  br label %sw.epilog, !dbg !975

sw.bb39:                                          ; preds = %if.end19
  %or40 = or i32 %flags.0.ph558, 131072, !dbg !976
  call void @llvm.dbg.value(metadata i32 %or40, metadata !917, metadata !DIExpression()), !dbg !918
  %add.ptr41 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !978
  %call42 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr41, i64 noundef 4096) #9, !dbg !979
  br label %sw.epilog, !dbg !980

sw.bb43:                                          ; preds = %if.end19, %if.end19
  call void @llvm.dbg.value(metadata ptr %5, metadata !912, metadata !DIExpression()), !dbg !918
  %add.ptr44 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !981
  %call45 = call i64 @CopyMagickString(ptr noundef nonnull %5, ptr noundef nonnull %add.ptr44, i64 noundef 4096) #9, !dbg !983
  br label %sw.epilog, !dbg !984

sw.bb46:                                          ; preds = %if.end19, %if.end19
  %or47 = or i32 %flags.0.ph558, 524288, !dbg !985
  call void @llvm.dbg.value(metadata i32 %or47, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %5, metadata !912, metadata !DIExpression()), !dbg !918
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i64 1, !dbg !987
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !987, !tbaa !530
  br label %sw.epilog, !dbg !988

sw.bb48:                                          ; preds = %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19, %if.end19
  call void @llvm.dbg.value(metadata ptr %5, metadata !912, metadata !DIExpression()), !dbg !918
  %incdec.ptr49 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !989
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr49, ptr %p, align 8, !dbg !989, !tbaa !530
  br label %sw.epilog, !dbg !991

sw.bb50:                                          ; preds = %if.end19
  %incdec.ptr51 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !992
  call void @llvm.dbg.value(metadata ptr %incdec.ptr51, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr51, ptr %p, align 8, !dbg !992, !tbaa !530
  %or52 = or i32 %flags.0.ph558, 262144, !dbg !994
  call void @llvm.dbg.value(metadata i32 %or52, metadata !917, metadata !DIExpression()), !dbg !918
  br label %sw.epilog, !dbg !995

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb48, %sw.bb46, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb
  %flags.1 = phi i32 [ %or52, %sw.bb50 ], [ %flags.0.ph558, %sw.bb48 ], [ %or47, %sw.bb46 ], [ %flags.0.ph558, %sw.bb43 ], [ %or40, %sw.bb39 ], [ %or36, %sw.bb35 ], [ %or32, %sw.bb31 ], [ %or28, %sw.bb27 ], [ %or24, %sw.bb23 ], [ %or, %sw.bb ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !917, metadata !DIExpression()), !dbg !918
  %12 = load ptr, ptr %p, align 8, !dbg !946, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %12, metadata !912, metadata !DIExpression()), !dbg !918
  %13 = load i8, ptr %12, align 1, !dbg !934, !tbaa !518
  %cmp10.not555 = icmp eq i8 %13, 0, !dbg !936
  br i1 %cmp10.not555, label %for.end, label %for.body.lr.ph, !dbg !937, !llvm.loop !947

for.end:                                          ; preds = %sw.epilog, %if.then17
  %flags.0.ph.lcssa554.ph = phi i32 [ %flags.0.ph558, %if.then17 ], [ %flags.1, %sw.epilog ]
  %.pr = load i8, ptr %pedantic_geometry, align 16, !dbg !996, !tbaa !518
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %pedantic_geometry, ptr %p, align 8, !dbg !998, !tbaa !530
  %cmp55 = icmp eq i8 %.pr, 0, !dbg !999
  br i1 %cmp55, label %cleanup, label %if.end58, !dbg !1000

if.end58:                                         ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %pedantic_geometry, ptr %q, align 8, !dbg !1001, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %q, metadata !914, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %pedantic_geometry, metadata !600, metadata !DIExpression()) #9, !dbg !1002
  call void @llvm.dbg.value(metadata ptr %q, metadata !608, metadata !DIExpression()) #9, !dbg !1002
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %pedantic_geometry, ptr noundef nonnull %q) #9, !dbg !1004
  call void @llvm.dbg.value(metadata double undef, metadata !915, metadata !DIExpression()), !dbg !918
  %14 = load ptr, ptr %p, align 8, !dbg !1005, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %14, metadata !912, metadata !DIExpression()), !dbg !918
  %call60 = call i32 @LocaleNCompare(ptr noundef %14, ptr noundef nonnull @.str, i64 noundef 2) #9, !dbg !1007
  %cmp61 = icmp eq i32 %call60, 0, !dbg !1008
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !1009

if.then63:                                        ; preds = %if.end58
  %15 = load ptr, ptr %p, align 8, !dbg !1010, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %15, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %q, metadata !914, metadata !DIExpression(DW_OP_deref)), !dbg !918
  %call64 = call i64 @strtol(ptr noundef %15, ptr noundef nonnull %q, i32 noundef 10) #9, !dbg !1011
  call void @llvm.dbg.value(metadata double undef, metadata !915, metadata !DIExpression()), !dbg !918
  br label %if.end66, !dbg !1012

if.end66:                                         ; preds = %if.then63, %if.end58
  %16 = load ptr, ptr %q, align 8, !dbg !1013, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %16, metadata !914, metadata !DIExpression()), !dbg !918
  %17 = load i8, ptr %16, align 1, !dbg !1014, !tbaa !518
  call void @llvm.dbg.value(metadata i8 %17, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !918
  switch i8 %17, label %if.end66.if.end108_crit_edge [
    i8 -41, label %if.then94
    i8 120, label %if.then94
    i8 88, label %if.then94
    i8 44, label %if.then94
    i8 47, label %if.then94
    i8 58, label %if.then94
    i8 0, label %if.then94
  ], !dbg !1015

if.end66.if.end108_crit_edge:                     ; preds = %if.end66
  %.pre = load ptr, ptr %p, align 8, !dbg !1017, !tbaa !530
  br label %if.end108, !dbg !1015

if.then94:                                        ; preds = %if.end66, %if.end66, %if.end66, %if.end66, %if.end66, %if.end66, %if.end66
  %18 = load ptr, ptr %p, align 8, !dbg !1018, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %18, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %18, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %18, ptr %q, align 8, !dbg !1020, !tbaa !530
  %call95 = call i32 @LocaleNCompare(ptr noundef %18, ptr noundef nonnull @.str, i64 noundef 2) #9, !dbg !1021
  %cmp96 = icmp eq i32 %call95, 0, !dbg !1023
  %19 = load ptr, ptr %p, align 8, !dbg !1024, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  br i1 %cmp96, label %if.then98, label %if.else, !dbg !1025

if.then98:                                        ; preds = %if.then94
  %call99 = call i64 @strtol(ptr noundef %19, ptr noundef nonnull %p, i32 noundef 10) #9, !dbg !1026
  %conv100 = sitofp i64 %call99 to double, !dbg !1027
  call void @llvm.dbg.value(metadata double %conv100, metadata !915, metadata !DIExpression()), !dbg !918
  br label %if.end102, !dbg !1028

if.else:                                          ; preds = %if.then94
  call void @llvm.dbg.value(metadata ptr %19, metadata !600, metadata !DIExpression()) #9, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1029
  %call.i532 = call double @InterpretLocaleValue(ptr noundef %19, ptr noundef nonnull %p) #9, !dbg !1031
  call void @llvm.dbg.value(metadata double %call.i532, metadata !915, metadata !DIExpression()), !dbg !918
  br label %if.end102

if.end102:                                        ; preds = %if.else, %if.then98
  %value.0 = phi double [ %conv100, %if.then98 ], [ %call.i532, %if.else ], !dbg !1024
  call void @llvm.dbg.value(metadata double %value.0, metadata !915, metadata !DIExpression()), !dbg !918
  %20 = load ptr, ptr %p, align 8, !dbg !1032, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %20, metadata !912, metadata !DIExpression()), !dbg !918
  %21 = load ptr, ptr %q, align 8, !dbg !1034, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %21, metadata !914, metadata !DIExpression()), !dbg !918
  %cmp103.not = icmp eq ptr %20, %21, !dbg !1035
  br i1 %cmp103.not, label %if.end108, label %if.then105, !dbg !1036

if.then105:                                       ; preds = %if.end102
  %or106 = or i32 %flags.0.ph.lcssa554.ph, 4, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %or106, metadata !917, metadata !DIExpression()), !dbg !918
  store double %value.0, ptr %geometry_info, align 8, !dbg !1039, !tbaa !1040
  br label %if.end108, !dbg !1043

if.end108:                                        ; preds = %if.end66.if.end108_crit_edge, %if.end102, %if.then105
  %22 = phi ptr [ %20, %if.then105 ], [ %20, %if.end102 ], [ %.pre, %if.end66.if.end108_crit_edge ], !dbg !1017
  %flags.2 = phi i32 [ %or106, %if.then105 ], [ %flags.0.ph.lcssa554.ph, %if.end102 ], [ %flags.0.ph.lcssa554.ph, %if.end66.if.end108_crit_edge ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.2, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %22, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %22, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %22, ptr %q, align 8, !dbg !1044, !tbaa !530
  %23 = load i8, ptr %22, align 1, !dbg !1045, !tbaa !518
  call void @llvm.dbg.value(metadata i8 %23, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !918
  switch i8 %23, label %if.end108.if.end169_crit_edge [
    i8 -41, label %if.then132
    i8 120, label %if.then132
    i8 88, label %if.then132
    i8 44, label %if.then132
    i8 47, label %if.then132
    i8 58, label %if.then132
  ], !dbg !1046

if.end108.if.end169_crit_edge:                    ; preds = %if.end108
  %.pre586 = tail call ptr @__ctype_b_loc() #11, !dbg !918
  br label %if.end169, !dbg !1046

if.then132:                                       ; preds = %if.end108, %if.end108, %if.end108, %if.end108, %if.end108, %if.end108
  call void @llvm.dbg.value(metadata ptr %22, metadata !912, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !918
  %call134 = tail call ptr @__ctype_b_loc() #11, !dbg !918
  br label %while.cond, !dbg !1048

while.cond:                                       ; preds = %while.cond, %if.then132
  %.pn = phi ptr [ %22, %if.then132 ], [ %storemerge, %while.cond ]
  %storemerge = getelementptr inbounds i8, ptr %.pn, i64 1, !dbg !1050
  store ptr %storemerge, ptr %p, align 8, !dbg !1050, !tbaa !530
  %24 = load ptr, ptr %call134, align 8, !dbg !1051, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !912, metadata !DIExpression()), !dbg !918
  %25 = load i8, ptr %storemerge, align 1, !dbg !1051, !tbaa !518
  %26 = zext i8 %25 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %24, i64 %26, !dbg !1051
  %27 = load i16, ptr %arrayidx137, align 2, !dbg !1051, !tbaa !539
  %28 = and i16 %27, 8192, !dbg !1051
  %cmp140.not = icmp eq i16 %28, 0, !dbg !1052
  br i1 %cmp140.not, label %while.end, label %while.cond, !dbg !1048, !llvm.loop !1053

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata ptr %22, metadata !914, metadata !DIExpression()), !dbg !918
  %29 = load i8, ptr %22, align 1, !dbg !1055, !tbaa !518
  call void @llvm.dbg.value(metadata i8 %29, metadata !916, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !918
  switch i8 %29, label %if.then161 [
    i8 -41, label %lor.lhs.false153
    i8 120, label %lor.lhs.false153
    i8 88, label %lor.lhs.false153
  ], !dbg !1056

lor.lhs.false153:                                 ; preds = %while.end, %while.end, %while.end
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !912, metadata !DIExpression()), !dbg !918
  switch i8 %25, label %if.then161 [
    i8 43, label %if.end169
    i8 45, label %if.end169
  ], !dbg !1058

if.then161:                                       ; preds = %lor.lhs.false153, %while.end
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !912, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %storemerge, ptr %q, align 8, !dbg !1059, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %storemerge, metadata !600, metadata !DIExpression()) #9, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1061
  %call.i533 = call double @InterpretLocaleValue(ptr noundef nonnull %storemerge, ptr noundef nonnull %p) #9, !dbg !1063
  call void @llvm.dbg.value(metadata double %call.i533, metadata !915, metadata !DIExpression()), !dbg !918
  %30 = load ptr, ptr %p, align 8, !dbg !1064, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %30, metadata !912, metadata !DIExpression()), !dbg !918
  %31 = load ptr, ptr %q, align 8, !dbg !1066, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %31, metadata !914, metadata !DIExpression()), !dbg !918
  %cmp163.not = icmp eq ptr %30, %31, !dbg !1067
  br i1 %cmp163.not, label %if.end169, label %if.then165, !dbg !1068

if.then165:                                       ; preds = %if.then161
  %or166 = or i32 %flags.2, 8, !dbg !1069
  call void @llvm.dbg.value(metadata i32 %or166, metadata !917, metadata !DIExpression()), !dbg !918
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1071
  store double %call.i533, ptr %sigma, align 8, !dbg !1072, !tbaa !1073
  br label %if.end169, !dbg !1074

if.end169:                                        ; preds = %if.end108.if.end169_crit_edge, %lor.lhs.false153, %lor.lhs.false153, %if.then165, %if.then161
  %call171.pre-phi = phi ptr [ %.pre586, %if.end108.if.end169_crit_edge ], [ %call134, %lor.lhs.false153 ], [ %call134, %lor.lhs.false153 ], [ %call134, %if.then165 ], [ %call134, %if.then161 ], !dbg !918
  %32 = phi ptr [ %22, %if.end108.if.end169_crit_edge ], [ %storemerge, %lor.lhs.false153 ], [ %storemerge, %lor.lhs.false153 ], [ %30, %if.then165 ], [ %30, %if.then161 ], !dbg !1075
  %flags.3 = phi i32 [ %flags.2, %if.end108.if.end169_crit_edge ], [ %flags.2, %lor.lhs.false153 ], [ %flags.2, %lor.lhs.false153 ], [ %or166, %if.then165 ], [ %flags.2, %if.then161 ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.3, metadata !917, metadata !DIExpression()), !dbg !918
  %33 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1075, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %32, metadata !912, metadata !DIExpression()), !dbg !918
  %34 = load i8, ptr %32, align 1, !dbg !1075, !tbaa !518
  %35 = zext i8 %34 to i64
  %arrayidx174560 = getelementptr inbounds i16, ptr %33, i64 %35, !dbg !1075
  %36 = load i16, ptr %arrayidx174560, align 2, !dbg !1075, !tbaa !539
  %37 = and i16 %36, 8192, !dbg !1075
  %cmp177.not561 = icmp eq i16 %37, 0, !dbg !1076
  br i1 %cmp177.not561, label %while.end181, label %while.body179, !dbg !1077

while.body179:                                    ; preds = %if.end169, %while.body179
  %38 = phi ptr [ %incdec.ptr180, %while.body179 ], [ %32, %if.end169 ]
  %incdec.ptr180 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %incdec.ptr180, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr180, ptr %p, align 8, !dbg !1078, !tbaa !530
  %39 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1075, !tbaa !530
  %40 = load i8, ptr %incdec.ptr180, align 1, !dbg !1075, !tbaa !518
  %41 = zext i8 %40 to i64
  %arrayidx174 = getelementptr inbounds i16, ptr %39, i64 %41, !dbg !1075
  %42 = load i16, ptr %arrayidx174, align 2, !dbg !1075, !tbaa !539
  %43 = and i16 %42, 8192, !dbg !1075
  %cmp177.not = icmp eq i16 %43, 0, !dbg !1076
  br i1 %cmp177.not, label %while.end181, label %while.body179, !dbg !1077, !llvm.loop !1079

while.end181:                                     ; preds = %while.body179, %if.end169
  %.lcssa548 = phi ptr [ %32, %if.end169 ], [ %incdec.ptr180, %while.body179 ], !dbg !1075
  %.lcssa547 = phi i8 [ %34, %if.end169 ], [ %40, %while.body179 ], !dbg !1075
  switch i8 %.lcssa547, label %if.end396 [
    i8 44, label %if.then213
    i8 47, label %if.then213
    i8 58, label %if.then213
    i8 43, label %while.cond216.preheader
    i8 45, label %while.cond216.preheader
  ], !dbg !1080

if.then213:                                       ; preds = %while.end181, %while.end181, %while.end181
  call void @llvm.dbg.value(metadata ptr %.lcssa548, metadata !912, metadata !DIExpression()), !dbg !918
  %incdec.ptr214 = getelementptr inbounds i8, ptr %.lcssa548, i64 1, !dbg !1082
  call void @llvm.dbg.value(metadata ptr %incdec.ptr214, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr214, ptr %p, align 8, !dbg !1082, !tbaa !530
  br label %while.cond216.preheader, !dbg !1085

while.cond216.preheader:                          ; preds = %while.end181, %while.end181, %if.then213
  %.ph619 = phi ptr [ %incdec.ptr214, %if.then213 ], [ %.lcssa548, %while.end181 ], [ %.lcssa548, %while.end181 ]
  br label %while.cond216, !dbg !1086

while.cond216:                                    ; preds = %while.cond216.preheader, %while.body223
  %44 = phi ptr [ %incdec.ptr229, %while.body223 ], [ %.ph619, %while.cond216.preheader ], !dbg !1087
  %flags.4 = phi i32 [ %spec.select, %while.body223 ], [ %flags.3, %while.cond216.preheader ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.4, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %44, metadata !912, metadata !DIExpression()), !dbg !918
  %45 = load i8, ptr %44, align 1, !dbg !1088, !tbaa !518
  switch i8 %45, label %while.end230 [
    i8 43, label %while.body223
    i8 45, label %while.body223
  ], !dbg !1089

while.body223:                                    ; preds = %while.cond216, %while.cond216
  call void @llvm.dbg.value(metadata ptr %44, metadata !912, metadata !DIExpression()), !dbg !918
  %cmp225 = icmp eq i8 %45, 45, !dbg !1090
  %xor = xor i32 %flags.4, 32
  %spec.select = select i1 %cmp225, i32 %xor, i32 %flags.4, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !917, metadata !DIExpression()), !dbg !918
  %incdec.ptr229 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !1094
  call void @llvm.dbg.value(metadata ptr %incdec.ptr229, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr229, ptr %p, align 8, !dbg !1094, !tbaa !530
  br label %while.cond216, !dbg !1086, !llvm.loop !1095

while.end230:                                     ; preds = %while.cond216
  call void @llvm.dbg.value(metadata ptr %44, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %44, ptr %q, align 8, !dbg !1097, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %44, metadata !600, metadata !DIExpression()) #9, !dbg !1098
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1098
  %call.i534 = call double @InterpretLocaleValue(ptr noundef nonnull %44, ptr noundef nonnull %p) #9, !dbg !1100
  call void @llvm.dbg.value(metadata double %call.i534, metadata !915, metadata !DIExpression()), !dbg !918
  %46 = load ptr, ptr %p, align 8, !dbg !1101, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %46, metadata !912, metadata !DIExpression()), !dbg !918
  %47 = load ptr, ptr %q, align 8, !dbg !1103, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %47, metadata !914, metadata !DIExpression()), !dbg !918
  %cmp232.not = icmp eq ptr %46, %47, !dbg !1104
  br i1 %cmp232.not, label %if.end241, label %if.then234, !dbg !1105

if.then234:                                       ; preds = %while.end230
  %or235 = or i32 %flags.4, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %flags.4, metadata !917, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !918
  %and236 = and i32 %flags.4, 32, !dbg !1108
  %cmp237.not = icmp eq i32 %and236, 0, !dbg !1110
  %fneg = fneg double %call.i534
  %spec.select524 = select i1 %cmp237.not, double %call.i534, double %fneg, !dbg !1111
  call void @llvm.dbg.value(metadata double %spec.select524, metadata !915, metadata !DIExpression()), !dbg !918
  %xi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !1112
  store double %spec.select524, ptr %xi, align 8, !dbg !1113, !tbaa !1114
  br label %if.end241, !dbg !1115

if.end241:                                        ; preds = %if.then234, %while.end230
  %flags.6 = phi i32 [ %or235, %if.then234 ], [ %flags.4, %while.end230 ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.6, metadata !917, metadata !DIExpression()), !dbg !918
  %48 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1116, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %46, metadata !912, metadata !DIExpression()), !dbg !918
  %49 = load i8, ptr %46, align 1, !dbg !1116, !tbaa !518
  %50 = zext i8 %49 to i64
  %arrayidx246565 = getelementptr inbounds i16, ptr %48, i64 %50, !dbg !1116
  %51 = load i16, ptr %arrayidx246565, align 2, !dbg !1116, !tbaa !539
  %52 = and i16 %51, 8192, !dbg !1116
  %cmp249.not566 = icmp eq i16 %52, 0, !dbg !1117
  br i1 %cmp249.not566, label %while.end253, label %while.body251, !dbg !1118

while.body251:                                    ; preds = %if.end241, %while.body251
  %53 = phi ptr [ %incdec.ptr252, %while.body251 ], [ %46, %if.end241 ]
  %incdec.ptr252 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1119
  call void @llvm.dbg.value(metadata ptr %incdec.ptr252, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr252, ptr %p, align 8, !dbg !1119, !tbaa !530
  %54 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1116, !tbaa !530
  %55 = load i8, ptr %incdec.ptr252, align 1, !dbg !1116, !tbaa !518
  %56 = zext i8 %55 to i64
  %arrayidx246 = getelementptr inbounds i16, ptr %54, i64 %56, !dbg !1116
  %57 = load i16, ptr %arrayidx246, align 2, !dbg !1116, !tbaa !539
  %58 = and i16 %57, 8192, !dbg !1116
  %cmp249.not = icmp eq i16 %58, 0, !dbg !1117
  br i1 %cmp249.not, label %while.end253, label %while.body251, !dbg !1118, !llvm.loop !1120

while.end253:                                     ; preds = %while.body251, %if.end241
  %.lcssa545 = phi ptr [ %46, %if.end241 ], [ %incdec.ptr252, %while.body251 ], !dbg !1116
  %.lcssa544 = phi i8 [ %49, %if.end241 ], [ %55, %while.body251 ], !dbg !1116
  switch i8 %.lcssa544, label %if.end318 [
    i8 44, label %if.then285
    i8 47, label %if.then285
    i8 58, label %if.then285
    i8 43, label %while.cond288.preheader
    i8 45, label %while.cond288.preheader
  ], !dbg !1121

if.then285:                                       ; preds = %while.end253, %while.end253, %while.end253
  call void @llvm.dbg.value(metadata ptr %.lcssa545, metadata !912, metadata !DIExpression()), !dbg !918
  %incdec.ptr286 = getelementptr inbounds i8, ptr %.lcssa545, i64 1, !dbg !1123
  call void @llvm.dbg.value(metadata ptr %incdec.ptr286, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr286, ptr %p, align 8, !dbg !1123, !tbaa !530
  br label %while.cond288.preheader, !dbg !1126

while.cond288.preheader:                          ; preds = %while.end253, %while.end253, %if.then285
  %.ph616 = phi ptr [ %incdec.ptr286, %if.then285 ], [ %.lcssa545, %while.end253 ], [ %.lcssa545, %while.end253 ]
  br label %while.cond288, !dbg !1127

while.cond288:                                    ; preds = %while.cond288.preheader, %while.body297
  %59 = phi ptr [ %incdec.ptr304, %while.body297 ], [ %.ph616, %while.cond288.preheader ], !dbg !1128
  %flags.7 = phi i32 [ %spec.select525, %while.body297 ], [ %flags.6, %while.cond288.preheader ], !dbg !1129
  call void @llvm.dbg.value(metadata i32 %flags.7, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %59, metadata !912, metadata !DIExpression()), !dbg !918
  %60 = load i8, ptr %59, align 1, !dbg !1130, !tbaa !518
  switch i8 %60, label %while.end305 [
    i8 43, label %while.body297
    i8 45, label %while.body297
  ], !dbg !1131

while.body297:                                    ; preds = %while.cond288, %while.cond288
  call void @llvm.dbg.value(metadata ptr %59, metadata !912, metadata !DIExpression()), !dbg !918
  %cmp299 = icmp eq i8 %60, 45, !dbg !1132
  %xor302 = xor i32 %flags.7, 64
  %spec.select525 = select i1 %cmp299, i32 %xor302, i32 %flags.7, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %spec.select525, metadata !917, metadata !DIExpression()), !dbg !918
  %incdec.ptr304 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %incdec.ptr304, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr304, ptr %p, align 8, !dbg !1136, !tbaa !530
  br label %while.cond288, !dbg !1127, !llvm.loop !1137

while.end305:                                     ; preds = %while.cond288
  call void @llvm.dbg.value(metadata ptr %59, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %59, ptr %q, align 8, !dbg !1139, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %59, metadata !600, metadata !DIExpression()) #9, !dbg !1140
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1140
  %call.i535 = call double @InterpretLocaleValue(ptr noundef nonnull %59, ptr noundef nonnull %p) #9, !dbg !1142
  call void @llvm.dbg.value(metadata double %call.i535, metadata !915, metadata !DIExpression()), !dbg !918
  %61 = load ptr, ptr %p, align 8, !dbg !1143, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %61, metadata !912, metadata !DIExpression()), !dbg !918
  %62 = load ptr, ptr %q, align 8, !dbg !1145, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %62, metadata !914, metadata !DIExpression()), !dbg !918
  %cmp307.not = icmp eq ptr %61, %62, !dbg !1146
  br i1 %cmp307.not, label %if.end318, label %if.then309, !dbg !1147

if.then309:                                       ; preds = %while.end305
  %or310 = or i32 %flags.7, 2, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %flags.7, metadata !917, metadata !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value)), !dbg !918
  %and311 = and i32 %flags.7, 64, !dbg !1150
  %cmp312.not = icmp eq i32 %and311, 0, !dbg !1152
  %fneg315 = fneg double %call.i535
  %spec.select526 = select i1 %cmp312.not, double %call.i535, double %fneg315, !dbg !1153
  call void @llvm.dbg.value(metadata double %spec.select526, metadata !915, metadata !DIExpression()), !dbg !918
  %psi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3, !dbg !1154
  store double %spec.select526, ptr %psi, align 8, !dbg !1155, !tbaa !1156
  br label %if.end318, !dbg !1157

if.end318:                                        ; preds = %while.end253, %while.end305, %if.then309
  %63 = phi ptr [ %61, %if.then309 ], [ %61, %while.end305 ], [ %.lcssa545, %while.end253 ], !dbg !1158
  %flags.9 = phi i32 [ %or310, %if.then309 ], [ %flags.7, %while.end305 ], [ %flags.6, %while.end253 ], !dbg !1129
  call void @llvm.dbg.value(metadata i32 %flags.9, metadata !917, metadata !DIExpression()), !dbg !918
  %64 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1158, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %63, metadata !912, metadata !DIExpression()), !dbg !918
  %65 = load i8, ptr %63, align 1, !dbg !1158, !tbaa !518
  %66 = zext i8 %65 to i64
  %arrayidx323569 = getelementptr inbounds i16, ptr %64, i64 %66, !dbg !1158
  %67 = load i16, ptr %arrayidx323569, align 2, !dbg !1158, !tbaa !539
  %68 = and i16 %67, 8192, !dbg !1158
  %cmp326.not570 = icmp eq i16 %68, 0, !dbg !1159
  br i1 %cmp326.not570, label %while.end330, label %while.body328, !dbg !1160

while.body328:                                    ; preds = %if.end318, %while.body328
  %69 = phi ptr [ %incdec.ptr329, %while.body328 ], [ %63, %if.end318 ]
  %incdec.ptr329 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %incdec.ptr329, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr329, ptr %p, align 8, !dbg !1161, !tbaa !530
  %70 = load ptr, ptr %call171.pre-phi, align 8, !dbg !1158, !tbaa !530
  %71 = load i8, ptr %incdec.ptr329, align 1, !dbg !1158, !tbaa !518
  %72 = zext i8 %71 to i64
  %arrayidx323 = getelementptr inbounds i16, ptr %70, i64 %72, !dbg !1158
  %73 = load i16, ptr %arrayidx323, align 2, !dbg !1158, !tbaa !539
  %74 = and i16 %73, 8192, !dbg !1158
  %cmp326.not = icmp eq i16 %74, 0, !dbg !1159
  br i1 %cmp326.not, label %while.end330, label %while.body328, !dbg !1160, !llvm.loop !1162

while.end330:                                     ; preds = %while.body328, %if.end318
  %.lcssa542 = phi ptr [ %63, %if.end318 ], [ %incdec.ptr329, %while.body328 ], !dbg !1158
  %.lcssa541 = phi i8 [ %65, %if.end318 ], [ %71, %while.body328 ], !dbg !1158
  switch i8 %.lcssa541, label %if.end396 [
    i8 44, label %if.then362
    i8 47, label %if.then362
    i8 58, label %if.then362
    i8 43, label %while.cond365.preheader
    i8 45, label %while.cond365.preheader
  ], !dbg !1163

if.then362:                                       ; preds = %while.end330, %while.end330, %while.end330
  call void @llvm.dbg.value(metadata ptr %.lcssa542, metadata !912, metadata !DIExpression()), !dbg !918
  %incdec.ptr363 = getelementptr inbounds i8, ptr %.lcssa542, i64 1, !dbg !1165
  call void @llvm.dbg.value(metadata ptr %incdec.ptr363, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr363, ptr %p, align 8, !dbg !1165, !tbaa !530
  br label %while.cond365.preheader, !dbg !1168

while.cond365.preheader:                          ; preds = %while.end330, %while.end330, %if.then362
  %.ph = phi ptr [ %incdec.ptr363, %if.then362 ], [ %.lcssa542, %while.end330 ], [ %.lcssa542, %while.end330 ]
  br label %while.cond365, !dbg !1169

while.cond365:                                    ; preds = %while.cond365.preheader, %while.body374
  %75 = phi ptr [ %incdec.ptr381, %while.body374 ], [ %.ph, %while.cond365.preheader ], !dbg !1170
  %flags.10 = phi i32 [ %spec.select527, %while.body374 ], [ %flags.9, %while.cond365.preheader ], !dbg !1129
  call void @llvm.dbg.value(metadata i32 %flags.10, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata ptr %75, metadata !912, metadata !DIExpression()), !dbg !918
  %76 = load i8, ptr %75, align 1, !dbg !1171, !tbaa !518
  switch i8 %76, label %while.end382 [
    i8 43, label %while.body374
    i8 45, label %while.body374
  ], !dbg !1172

while.body374:                                    ; preds = %while.cond365, %while.cond365
  call void @llvm.dbg.value(metadata ptr %75, metadata !912, metadata !DIExpression()), !dbg !918
  %cmp376 = icmp eq i8 %76, 45, !dbg !1173
  %xor379 = xor i32 %flags.10, 128
  %spec.select527 = select i1 %cmp376, i32 %xor379, i32 %flags.10, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %spec.select527, metadata !917, metadata !DIExpression()), !dbg !918
  %incdec.ptr381 = getelementptr inbounds i8, ptr %75, i64 1, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %incdec.ptr381, metadata !912, metadata !DIExpression()), !dbg !918
  store ptr %incdec.ptr381, ptr %p, align 8, !dbg !1177, !tbaa !530
  br label %while.cond365, !dbg !1169, !llvm.loop !1178

while.end382:                                     ; preds = %while.cond365
  call void @llvm.dbg.value(metadata ptr %75, metadata !914, metadata !DIExpression()), !dbg !918
  store ptr %75, ptr %q, align 8, !dbg !1180, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !912, metadata !DIExpression(DW_OP_deref)), !dbg !918
  call void @llvm.dbg.value(metadata ptr %75, metadata !600, metadata !DIExpression()) #9, !dbg !1181
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1181
  %call.i536 = call double @InterpretLocaleValue(ptr noundef nonnull %75, ptr noundef nonnull %p) #9, !dbg !1183
  call void @llvm.dbg.value(metadata double %call.i536, metadata !915, metadata !DIExpression()), !dbg !918
  %77 = load ptr, ptr %p, align 8, !dbg !1184, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %77, metadata !912, metadata !DIExpression()), !dbg !918
  %78 = load ptr, ptr %q, align 8, !dbg !1186, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %78, metadata !914, metadata !DIExpression()), !dbg !918
  %cmp384.not = icmp eq ptr %77, %78, !dbg !1187
  br i1 %cmp384.not, label %if.end396, label %if.then386, !dbg !1188

if.then386:                                       ; preds = %while.end382
  %or387 = or i32 %flags.10, 16, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %flags.10, metadata !917, metadata !DIExpression(DW_OP_constu, 16, DW_OP_or, DW_OP_stack_value)), !dbg !918
  %and388 = and i32 %flags.10, 128, !dbg !1191
  %cmp389.not = icmp eq i32 %and388, 0, !dbg !1193
  %fneg392 = fneg double %call.i536
  %spec.select528 = select i1 %cmp389.not, double %call.i536, double %fneg392, !dbg !1194
  call void @llvm.dbg.value(metadata double %spec.select528, metadata !915, metadata !DIExpression()), !dbg !918
  %chi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 4, !dbg !1195
  store double %spec.select528, ptr %chi, align 8, !dbg !1196, !tbaa !1197
  br label %if.end396, !dbg !1198

if.end396:                                        ; preds = %while.end330, %while.end181, %if.then386, %while.end382
  %flags.12 = phi i32 [ %or387, %if.then386 ], [ %flags.10, %while.end382 ], [ %flags.3, %while.end181 ], [ %flags.9, %while.end330 ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.12, metadata !917, metadata !DIExpression()), !dbg !918
  %call398 = call ptr @strchr(ptr noundef nonnull %pedantic_geometry, i32 noundef 58) #10, !dbg !1199
  %cmp399.not = icmp eq ptr %call398, null, !dbg !1201
  br i1 %cmp399.not, label %if.end411, label %if.then401, !dbg !1202

if.then401:                                       ; preds = %if.end396
  %sigma402 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1203
  %79 = load double, ptr %sigma402, align 8, !dbg !1203, !tbaa !1073
  %80 = load double, ptr %geometry_info, align 8, !dbg !1205, !tbaa !1040
  %div = fdiv double %80, %79, !dbg !1205
  store double %div, ptr %geometry_info, align 8, !dbg !1205, !tbaa !1040
  store double 1.000000e+00, ptr %sigma402, align 8, !dbg !1206, !tbaa !1073
  %xi405 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !1207
  %81 = load double, ptr %xi405, align 8, !dbg !1207, !tbaa !1114
  %cmp406 = fcmp oeq double %81, 0.000000e+00, !dbg !1209
  br i1 %cmp406, label %if.then408, label %if.end411, !dbg !1210

if.then408:                                       ; preds = %if.then401
  store double 2.000000e+00, ptr %sigma402, align 8, !dbg !1211, !tbaa !1073
  br label %if.end411, !dbg !1212

if.end411:                                        ; preds = %if.then401, %if.then408, %if.end396
  %82 = and i32 %flags.12, 11, !dbg !1213
  %83 = icmp eq i32 %82, 1, !dbg !1213
  br i1 %83, label %if.then423, label %if.end429, !dbg !1213

if.then423:                                       ; preds = %if.end411
  %xi424 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !1215
  %84 = load double, ptr %xi424, align 8, !dbg !1215, !tbaa !1114
  %sigma425 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1217
  store double %84, ptr %sigma425, align 8, !dbg !1218, !tbaa !1073
  store double 0.000000e+00, ptr %xi424, align 8, !dbg !1219, !tbaa !1114
  call void @llvm.dbg.value(metadata i32 %flags.12, metadata !917, metadata !DIExpression(DW_OP_constu, 8, DW_OP_or, DW_OP_stack_value)), !dbg !918
  %or427 = and i32 %flags.12, -10, !dbg !1220
  %and428 = or i32 %or427, 8, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %and428, metadata !917, metadata !DIExpression()), !dbg !918
  br label %if.end429, !dbg !1221

if.end429:                                        ; preds = %if.then423, %if.end411
  %flags.13 = phi i32 [ %and428, %if.then423 ], [ %flags.12, %if.end411 ], !dbg !918
  call void @llvm.dbg.value(metadata i32 %flags.13, metadata !917, metadata !DIExpression()), !dbg !918
  %and430 = and i32 %flags.13, 4096, !dbg !1222
  %cmp431.not = icmp eq i32 %and430, 0, !dbg !1224
  br i1 %cmp431.not, label %cleanup, label %if.then433, !dbg !1225

if.then433:                                       ; preds = %if.end429
  %85 = and i32 %flags.13, 524296, !dbg !1226
  %86 = icmp eq i32 %85, 0, !dbg !1226
  br i1 %86, label %if.end444.thread, label %if.end444, !dbg !1226

if.end444.thread:                                 ; preds = %if.then433
  %87 = load double, ptr %geometry_info, align 8, !dbg !1229, !tbaa !1040
  %sigma443 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1230
  store double %87, ptr %sigma443, align 8, !dbg !1231, !tbaa !1073
  br label %cleanup, !dbg !1232

if.end444:                                        ; preds = %if.then433
  %88 = and i32 %flags.13, 524292, !dbg !1232
  %89 = icmp eq i32 %88, 524288, !dbg !1232
  br i1 %89, label %if.then452, label %cleanup, !dbg !1232

if.then452:                                       ; preds = %if.end444
  %sigma453 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1234
  %90 = load double, ptr %sigma453, align 8, !dbg !1234, !tbaa !1073
  store double %90, ptr %geometry_info, align 8, !dbg !1235, !tbaa !1040
  br label %cleanup, !dbg !1236

cleanup:                                          ; preds = %if.end19, %if.end6, %if.end444.thread, %if.end429, %if.then452, %if.end444, %for.end, %if.end, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ 0, %if.end ], [ %flags.0.ph.lcssa554.ph, %for.end ], [ %flags.13, %if.end444 ], [ %flags.13, %if.then452 ], [ %flags.13, %if.end429 ], [ %flags.13, %if.end444.thread ], [ 0, %if.end6 ], [ %flags.0.ph558, %if.end19 ], !dbg !918
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #9, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %pedantic_geometry) #9, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9, !dbg !1237
  ret i32 %retval.0, !dbg !1237
}

; Function Attrs: nounwind uwtable
define dso_local i32 @IsSceneGeometry(ptr noundef %geometry, i32 noundef %pedantic) local_unnamed_addr #0 !dbg !1238 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1243, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i32 %pedantic, metadata !1244, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9, !dbg !1248
  %cmp = icmp eq ptr %geometry, null, !dbg !1249
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1251

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1245, metadata !DIExpression()), !dbg !1247
  store ptr %geometry, ptr %p, align 8, !dbg !1252, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !1245, metadata !DIExpression(DW_OP_deref)), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !600, metadata !DIExpression()) #9, !dbg !1253
  call void @llvm.dbg.value(metadata ptr %p, metadata !608, metadata !DIExpression()) #9, !dbg !1253
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %geometry, ptr noundef nonnull %p) #9, !dbg !1255
  call void @llvm.dbg.value(metadata double undef, metadata !1246, metadata !DIExpression()), !dbg !1247
  %0 = load ptr, ptr %p, align 8, !dbg !1256, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %0, metadata !1245, metadata !DIExpression()), !dbg !1247
  %cmp1 = icmp eq ptr %0, %geometry, !dbg !1258
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1259

if.end3:                                          ; preds = %if.end
  %call4 = call i64 @strspn(ptr noundef nonnull %geometry, ptr noundef nonnull @.str.148) #10, !dbg !1260
  %call5 = call i64 @strlen(ptr noundef nonnull %geometry) #10, !dbg !1262
  %cmp6.not = icmp eq i64 %call4, %call5, !dbg !1263
  br i1 %cmp6.not, label %if.end8, label %cleanup, !dbg !1264

if.end8:                                          ; preds = %if.end3
  %cmp9.not = icmp eq i32 %pedantic, 0, !dbg !1265
  br i1 %cmp9.not, label %if.end13, label %land.lhs.true, !dbg !1267

land.lhs.true:                                    ; preds = %if.end8
  %call10 = call ptr @strchr(ptr noundef nonnull %geometry, i32 noundef 44) #10, !dbg !1268
  %cmp11.not = icmp eq ptr %call10, null, !dbg !1269
  br i1 %cmp11.not, label %if.end13, label %cleanup, !dbg !1270

if.end13:                                         ; preds = %land.lhs.true, %if.end8
  br label %cleanup, !dbg !1271

cleanup:                                          ; preds = %land.lhs.true, %if.end3, %if.end, %entry, %if.end13
  %retval.0 = phi i32 [ 1, %if.end13 ], [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end3 ], [ 0, %land.lhs.true ], !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9, !dbg !1272
  ret i32 %retval.0, !dbg !1272
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseAbsoluteGeometry(ptr noundef %geometry, ptr nocapture noundef %region_info) local_unnamed_addr #0 !dbg !1273 {
entry:
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1278, metadata !DIExpression()), !dbg !1280
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 2, !dbg !1281
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 3, !dbg !1282
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 1, !dbg !1283
  %call = tail call i32 @GetGeometry(ptr noundef %geometry, ptr noundef nonnull %x, ptr noundef nonnull %y, ptr noundef %region_info, ptr noundef nonnull %height), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %call, metadata !1279, metadata !DIExpression()), !dbg !1280
  ret i32 %call, !dbg !1285
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseAffineGeometry(ptr noundef %geometry, ptr noundef %affine_matrix, ptr noundef %exception) local_unnamed_addr #0 !dbg !1286 {
entry:
  %token = alloca [4096 x i8], align 16
  %p = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1317, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %affine_matrix, metadata !1318, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1319, metadata !DIExpression()), !dbg !1325
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %token) #9, !dbg !1326
  call void @llvm.dbg.declare(metadata ptr %token, metadata !1320, metadata !DIExpression()), !dbg !1327
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #9, !dbg !1328
  tail call void @GetAffineMatrix(ptr noundef %affine_matrix) #9, !dbg !1329
  call void @llvm.dbg.value(metadata i32 0, metadata !1323, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1321, metadata !DIExpression()), !dbg !1325
  store ptr %geometry, ptr %p, align 8, !dbg !1330, !tbaa !530
  call void @llvm.dbg.value(metadata i64 0, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 0, metadata !1323, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1321, metadata !DIExpression()), !dbg !1325
  %0 = load i8, ptr %geometry, align 1, !dbg !1331, !tbaa !518
  %cmp56.not = icmp eq i8 %0, 0, !dbg !1334
  br i1 %cmp56.not, label %for.end, label %for.body.lr.ph, !dbg !1335

for.body.lr.ph:                                   ; preds = %entry
  %ty = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 5
  %tx = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 4
  %sy = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 3
  %ry = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 2
  %rx = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 1
  br label %for.body, !dbg !1335

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %1 = phi ptr [ %geometry, %for.body.lr.ph ], [ %4, %for.inc ]
  %i.058 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %flags.057 = phi i32 [ 0, %for.body.lr.ph ], [ %flags.1, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.058, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %flags.057, metadata !1323, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %p, metadata !1321, metadata !DIExpression(DW_OP_deref)), !dbg !1325
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %p, ptr noundef nonnull %token) #9, !dbg !1336
  %2 = load i8, ptr %token, align 16, !dbg !1338, !tbaa !518
  %cmp6 = icmp eq i8 %2, 44, !dbg !1340
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1341

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %p, align 8, !dbg !1342, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %p, metadata !1321, metadata !DIExpression(DW_OP_deref)), !dbg !1325
  call void @GetMagickToken(ptr noundef %3, ptr noundef nonnull %p, ptr noundef nonnull %token) #9, !dbg !1343
  br label %if.end, !dbg !1343

if.end:                                           ; preds = %if.then, %for.body
  switch i64 %i.058, label %for.end [
    i64 0, label %sw.bb
    i64 1, label %sw.bb10
    i64 2, label %sw.bb13
    i64 3, label %sw.bb16
    i64 4, label %sw.bb19
    i64 5, label %sw.bb22
  ], !dbg !1344

sw.bb:                                            ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1345
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1345
  %call.i = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1349
  store double %call.i, ptr %affine_matrix, align 8, !dbg !1350, !tbaa !1351
  br label %for.inc, !dbg !1353

sw.bb10:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1354
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1354
  %call.i51 = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1357
  store double %call.i51, ptr %rx, align 8, !dbg !1358, !tbaa !1359
  br label %for.inc, !dbg !1360

sw.bb13:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1361
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1361
  %call.i52 = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1364
  store double %call.i52, ptr %ry, align 8, !dbg !1365, !tbaa !1366
  br label %for.inc, !dbg !1367

sw.bb16:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1368
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1368
  %call.i53 = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1371
  store double %call.i53, ptr %sy, align 8, !dbg !1372, !tbaa !1373
  br label %for.inc, !dbg !1374

sw.bb19:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1375
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1375
  %call.i54 = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1378
  store double %call.i54, ptr %tx, align 8, !dbg !1379, !tbaa !1380
  %or = or i32 %flags.057, 1, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %or, metadata !1323, metadata !DIExpression()), !dbg !1325
  br label %for.inc, !dbg !1382

sw.bb22:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %token, metadata !600, metadata !DIExpression()) #9, !dbg !1383
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()) #9, !dbg !1383
  %call.i55 = call double @InterpretLocaleValue(ptr noundef nonnull %token, ptr noundef null) #9, !dbg !1386
  store double %call.i55, ptr %ty, align 8, !dbg !1387, !tbaa !1388
  %or25 = or i32 %flags.057, 2, !dbg !1389
  call void @llvm.dbg.value(metadata i32 %or25, metadata !1323, metadata !DIExpression()), !dbg !1325
  br label %for.end, !dbg !1390

for.inc:                                          ; preds = %sw.bb, %sw.bb10, %sw.bb13, %sw.bb16, %sw.bb19
  %flags.1 = phi i32 [ %or, %sw.bb19 ], [ %flags.057, %sw.bb16 ], [ %flags.057, %sw.bb13 ], [ %flags.057, %sw.bb10 ], [ %flags.057, %sw.bb ], !dbg !1325
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !1323, metadata !DIExpression()), !dbg !1325
  %inc = add nuw nsw i64 %i.058, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1324, metadata !DIExpression()), !dbg !1325
  %4 = load ptr, ptr %p, align 8, !dbg !1392, !tbaa !530
  call void @llvm.dbg.value(metadata ptr %4, metadata !1321, metadata !DIExpression()), !dbg !1325
  %5 = load i8, ptr %4, align 1, !dbg !1331, !tbaa !518
  %cmp.not = icmp eq i8 %5, 0, !dbg !1334
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !1335, !llvm.loop !1393

for.end:                                          ; preds = %if.end, %for.inc, %sw.bb22, %entry
  %flags.0.lcssa = phi i32 [ 0, %entry ], [ %or25, %sw.bb22 ], [ %flags.057, %if.end ], [ %flags.1, %for.inc ], !dbg !1396
  %6 = load double, ptr %affine_matrix, align 8, !dbg !1397, !tbaa !1351
  %sy27 = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 3, !dbg !1398
  %7 = load double, ptr %sy27, align 8, !dbg !1398, !tbaa !1373
  %rx28 = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 1, !dbg !1399
  %8 = load double, ptr %rx28, align 8, !dbg !1399, !tbaa !1359
  %ry29 = getelementptr inbounds %struct._AffineMatrix, ptr %affine_matrix, i64 0, i32 2, !dbg !1400
  %9 = load double, ptr %ry29, align 8, !dbg !1400, !tbaa !1366
  %10 = fneg double %8, !dbg !1401
  %neg = fmul double %9, %10, !dbg !1401
  %11 = call double @llvm.fmuladd.f64(double %6, double %7, double %neg), !dbg !1401
  call void @llvm.dbg.value(metadata double %11, metadata !1322, metadata !DIExpression()), !dbg !1325
  %12 = call double @llvm.fabs.f64(double %11), !dbg !1402
  %cmp31 = fcmp olt double %12, 1.000000e-15, !dbg !1404
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !1405

if.then33:                                        ; preds = %for.end
  %call34 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 768, i32 noundef 410, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, ptr noundef nonnull %geometry) #9, !dbg !1406
  br label %if.end35, !dbg !1407

if.end35:                                         ; preds = %if.then33, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #9, !dbg !1408
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %token) #9, !dbg !1408
  ret i32 %flags.0.lcssa, !dbg !1409
}

declare !dbg !1410 void @GetAffineMatrix(ptr noundef) local_unnamed_addr #4

declare !dbg !1414 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare !dbg !1419 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseGravityGeometry(ptr noundef %image, ptr noundef %geometry, ptr noundef %region_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !1423 {
entry:
  %geometry_info = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1605, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1606, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1607, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1608, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %image, metadata !1623, metadata !DIExpression()) #9, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1628, metadata !DIExpression()) #9, !dbg !1629
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1631
  %0 = load i32, ptr %debug.i, align 8, !dbg !1631, !tbaa !1633
  %cmp.not.i = icmp eq i32 %0, 0, !dbg !1645
  br i1 %cmp.not.i, label %SetGeometry.exit, label %if.then.i, !dbg !1646

if.then.i:                                        ; preds = %entry
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1647
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %filename.i) #9, !dbg !1648
  br label %SetGeometry.exit, !dbg !1649

SetGeometry.exit:                                 ; preds = %entry, %if.then.i
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef %region_info, i32 noundef 0, i64 noundef 32) #9, !dbg !1650
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1651
  %1 = load i64, ptr %columns.i, align 8, !dbg !1651, !tbaa !1652
  store i64 %1, ptr %region_info, align 8, !dbg !1653, !tbaa !843
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1654
  %2 = load i64, ptr %rows.i, align 8, !dbg !1654, !tbaa !1655
  %height.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 1, !dbg !1656
  store i64 %2, ptr %height.i, align 8, !dbg !1657, !tbaa !835
  %page = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !1658
  %3 = load i64, ptr %page, align 8, !dbg !1660, !tbaa !1661
  %cmp.not = icmp eq i64 %3, 0, !dbg !1662
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1663

if.then:                                          ; preds = %SetGeometry.exit
  store i64 %3, ptr %region_info, align 8, !dbg !1664, !tbaa !843
  br label %if.end, !dbg !1665

if.end:                                           ; preds = %if.then, %SetGeometry.exit
  %height6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !1666
  %4 = load i64, ptr %height6, align 8, !dbg !1666, !tbaa !1668
  %cmp7.not = icmp eq i64 %4, 0, !dbg !1669
  br i1 %cmp7.not, label %if.end12, label %if.then8, !dbg !1670

if.then8:                                         ; preds = %if.end
  store i64 %4, ptr %height.i, align 8, !dbg !1671, !tbaa !835
  br label %if.end12, !dbg !1672

if.end12:                                         ; preds = %if.then8, %if.end
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1277, metadata !DIExpression()) #9, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1278, metadata !DIExpression()) #9, !dbg !1673
  %x.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 2, !dbg !1675
  %y.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 3, !dbg !1676
  %call.i112 = tail call i32 @GetGeometry(ptr noundef %geometry, ptr noundef nonnull %x.i, ptr noundef nonnull %y.i, ptr noundef nonnull %region_info, ptr noundef nonnull %height.i) #9, !dbg !1677
  call void @llvm.dbg.value(metadata i32 %call.i112, metadata !1279, metadata !DIExpression()) #9, !dbg !1673
  call void @llvm.dbg.value(metadata i32 %call.i112, metadata !1609, metadata !DIExpression()), !dbg !1622
  %cmp13 = icmp eq i32 %call.i112, 0, !dbg !1678
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !1680

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1157, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %geometry) #9, !dbg !1681
  br label %cleanup, !dbg !1683

if.end16:                                         ; preds = %if.end12
  %and = and i32 %call.i112, 4096, !dbg !1684
  %cmp17.not = icmp eq i32 %and, 0, !dbg !1685
  br i1 %cmp17.not, label %if.end44thread-pre-split, label %if.then18, !dbg !1686

if.then18:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !1687
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1612, metadata !DIExpression()), !dbg !1688
  %gravity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 35, !dbg !1689
  %5 = load i32, ptr %gravity, align 4, !dbg !1689, !tbaa !1691
  %cmp19.not = icmp eq i32 %5, 0, !dbg !1692
  %or = or i32 %call.i112, 3
  %spec.select = select i1 %cmp19.not, i32 %call.i112, i32 %or, !dbg !1693
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !1609, metadata !DIExpression()), !dbg !1622
  %call22 = call i32 @ParseGeometry(ptr noundef %geometry, ptr noundef nonnull %geometry_info), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1615, metadata !DIExpression()), !dbg !1695
  %6 = load double, ptr %geometry_info, align 8, !dbg !1696, !tbaa !1040
  call void @llvm.dbg.value(metadata double %6, metadata !1616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1695
  %and23 = and i32 %call22, 4, !dbg !1697
  %cmp24 = icmp eq i32 %and23, 0, !dbg !1699
  %spec.select110 = select i1 %cmp24, double 1.000000e+02, double %6, !dbg !1700
  call void @llvm.dbg.value(metadata double %spec.select110, metadata !1616, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1695
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1701
  %7 = load double, ptr %sigma, align 8, !dbg !1701, !tbaa !1073
  call void @llvm.dbg.value(metadata double %7, metadata !1616, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1695
  %and28 = and i32 %call22, 8, !dbg !1702
  %cmp29 = icmp eq i32 %and28, 0, !dbg !1704
  %spec.select109 = select i1 %cmp29, double %spec.select110, double %7, !dbg !1705
  call void @llvm.dbg.value(metadata double %spec.select109, metadata !1616, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1695
  %8 = load i64, ptr %columns.i, align 8, !dbg !1706, !tbaa !1652
  %conv = uitofp i64 %8 to double, !dbg !1707
  %mul = fmul double %spec.select110, %conv, !dbg !1708
  %div = fdiv double %mul, 1.000000e+02, !dbg !1709
  %add = fadd double %div, 5.000000e-01, !dbg !1710
  %9 = tail call double @llvm.floor.f64(double %add), !dbg !1711
  %conv35 = fptoui double %9 to i64, !dbg !1712
  store i64 %conv35, ptr %region_info, align 8, !dbg !1713, !tbaa !843
  %10 = load i64, ptr %rows.i, align 8, !dbg !1714, !tbaa !1655
  %conv38 = uitofp i64 %10 to double, !dbg !1715
  %mul39 = fmul double %spec.select109, %conv38, !dbg !1716
  %div40 = fdiv double %mul39, 1.000000e+02, !dbg !1717
  %add41 = fadd double %div40, 5.000000e-01, !dbg !1718
  %11 = tail call double @llvm.floor.f64(double %add41), !dbg !1719
  %conv42 = fptoui double %11 to i64, !dbg !1720
  store i64 %conv42, ptr %height.i, align 8, !dbg !1721, !tbaa !835
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !1722
  br label %if.end44, !dbg !1723

if.end44thread-pre-split:                         ; preds = %if.end16
  %.pr = load i64, ptr %height.i, align 8, !dbg !1724, !tbaa !835
  %.pre = load i64, ptr %region_info, align 8, !dbg !1725, !tbaa !843
  br label %if.end44, !dbg !1725

if.end44:                                         ; preds = %if.end44thread-pre-split, %if.then18
  %12 = phi i64 [ %.pre, %if.end44thread-pre-split ], [ %conv35, %if.then18 ], !dbg !1725
  %.pr116 = phi i64 [ %.pr, %if.end44thread-pre-split ], [ %conv42, %if.then18 ], !dbg !1724
  %flags.1 = phi i32 [ %call.i112, %if.end44thread-pre-split ], [ %spec.select, %if.then18 ], !dbg !1622
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !1609, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %12, metadata !1611, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i64 %.pr116, metadata !1610, metadata !DIExpression()), !dbg !1622
  %cmp47 = icmp eq i64 %12, 0, !dbg !1726
  br i1 %cmp47, label %if.then49, label %if.end55, !dbg !1728

if.then49:                                        ; preds = %if.end44
  %13 = load i64, ptr %page, align 8, !dbg !1729, !tbaa !1661
  %14 = load i64, ptr %columns.i, align 8, !dbg !1730, !tbaa !1652
  %or53 = or i64 %14, %13, !dbg !1731
  br label %if.end55, !dbg !1732

if.end55:                                         ; preds = %if.then49, %if.end44
  %15 = phi i64 [ %or53, %if.then49 ], [ %12, %if.end44 ]
  %cmp56 = icmp eq i64 %.pr116, 0, !dbg !1733
  br i1 %cmp56, label %if.end64, label %if.end64.thread, !dbg !1735

if.end64.thread:                                  ; preds = %if.end55
  %.pre122 = load i64, ptr %rows.i, align 8, !dbg !1736, !tbaa !1655
  call void @llvm.dbg.value(metadata i64 undef, metadata !828, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %17, metadata !829, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i32 undef, metadata !830, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !831, metadata !DIExpression()), !dbg !1737
  br label %if.end.i, !dbg !1739

if.end64:                                         ; preds = %if.end55
  %16 = load i64, ptr %height6, align 8, !dbg !1740, !tbaa !1668
  %17 = load i64, ptr %rows.i, align 8, !dbg !1741, !tbaa !1655
  %or62 = or i64 %17, %16, !dbg !1742
  call void @llvm.dbg.value(metadata i64 undef, metadata !828, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i64 %17, metadata !829, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i32 undef, metadata !830, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !831, metadata !DIExpression()), !dbg !1737
  %cmp.i = icmp eq i64 %or62, 0, !dbg !1743
  %spec.select125 = select i1 %cmp.i, i64 %17, i64 %or62, !dbg !1739
  br label %if.end.i, !dbg !1739

if.end.i:                                         ; preds = %if.end64, %if.end64.thread
  %18 = phi i64 [ %.pre122, %if.end64.thread ], [ %17, %if.end64 ]
  %19 = phi i64 [ %.pr116, %if.end64.thread ], [ %spec.select125, %if.end64 ]
  %20 = load i64, ptr %columns.i, align 8, !dbg !1744, !tbaa !1652
  %.in = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 35, !dbg !1745
  %21 = load i32, ptr %.in, align 4, !dbg !1745, !tbaa !1691
  %cmp4.i = icmp eq i64 %15, 0, !dbg !1746
  %spec.select126 = select i1 %cmp4.i, i64 %20, i64 %15, !dbg !1747
  switch i32 %21, label %GravityAdjustGeometry.exit [
    i32 3, label %sw.bb.i
    i32 6, label %sw.bb.i
    i32 9, label %sw.bb.i
    i32 2, label %sw.bb11.i
    i32 8, label %sw.bb11.i
    i32 5, label %sw.bb11.i
    i32 10, label %sw.bb11.i
    i32 7, label %sw.bb17.i
    i32 4, label %sw.bb22.i
  ], !dbg !1748

sw.bb.i:                                          ; preds = %if.end.i, %if.end.i, %if.end.i
  %22 = load i64, ptr %x.i, align 8, !dbg !1749, !tbaa !852
  %23 = add i64 %spec.select126, %22, !dbg !1750
  %sub9.i = sub i64 %20, %23, !dbg !1750
  br label %sw.epilog.i, !dbg !1751

sw.bb11.i:                                        ; preds = %if.end.i, %if.end.i, %if.end.i, %if.end.i
  %div50.i = lshr i64 %20, 1, !dbg !1752
  %div1351.i = lshr i64 %spec.select126, 1, !dbg !1753
  %sub14.i = sub nsw i64 %div50.i, %div1351.i, !dbg !1754
  %24 = load i64, ptr %x.i, align 8, !dbg !1755, !tbaa !852
  %add.i = add nsw i64 %sub14.i, %24, !dbg !1755
  br label %sw.epilog.i, !dbg !1756

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb.i
  %storemerge = phi i64 [ %add.i, %sw.bb11.i ], [ %sub9.i, %sw.bb.i ], !dbg !1757
  store i64 %storemerge, ptr %x.i, align 8, !dbg !1757, !tbaa !852
  switch i32 %21, label %GravityAdjustGeometry.exit [
    i32 7, label %sw.bb17.i
    i32 8, label %sw.bb17.i
    i32 9, label %sw.bb17.i
    i32 6, label %sw.bb22.i
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb22.i
    i32 10, label %sw.bb22.i
  ], !dbg !1758

sw.bb17.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i, %sw.epilog.i, %if.end.i
  %25 = load i64, ptr %y.i, align 8, !dbg !1759, !tbaa !867
  %26 = add i64 %19, %25, !dbg !1760
  %sub20.i = sub i64 %18, %26, !dbg !1760
  br label %GravityAdjustGeometry.exit.sink.split, !dbg !1761

sw.bb22.i:                                        ; preds = %sw.epilog.i, %sw.epilog.i, %sw.epilog.i, %sw.epilog.i, %if.end.i
  %div2352.i = lshr i64 %18, 1, !dbg !1762
  %div2553.i = lshr i64 %19, 1, !dbg !1763
  %sub26.i = sub nsw i64 %div2352.i, %div2553.i, !dbg !1764
  %27 = load i64, ptr %y.i, align 8, !dbg !1765, !tbaa !867
  %add28.i = add nsw i64 %sub26.i, %27, !dbg !1765
  br label %GravityAdjustGeometry.exit.sink.split, !dbg !1766

GravityAdjustGeometry.exit.sink.split:            ; preds = %sw.bb22.i, %sw.bb17.i
  %sub20.i.sink = phi i64 [ %sub20.i, %sw.bb17.i ], [ %add28.i, %sw.bb22.i ]
  store i64 %sub20.i.sink, ptr %y.i, align 8, !dbg !1767, !tbaa !867
  br label %GravityAdjustGeometry.exit, !dbg !1768

GravityAdjustGeometry.exit:                       ; preds = %GravityAdjustGeometry.exit.sink.split, %if.end.i, %sw.epilog.i
  store i64 %12, ptr %region_info, align 8, !dbg !1768, !tbaa !843
  store i64 %.pr116, ptr %height.i, align 8, !dbg !1769, !tbaa !835
  br label %cleanup, !dbg !1770

cleanup:                                          ; preds = %GravityAdjustGeometry.exit, %if.then14
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %flags.1, %GravityAdjustGeometry.exit ], !dbg !1622
  ret i32 %retval.0, !dbg !1771
}

; Function Attrs: nounwind uwtable
define dso_local void @SetGeometry(ptr noundef %image, ptr noundef %geometry) local_unnamed_addr #0 !dbg !1624 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1623, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1628, metadata !DIExpression()), !dbg !1772
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1773
  %0 = load i32, ptr %debug, align 8, !dbg !1773, !tbaa !1633
  %cmp.not = icmp eq i32 %0, 0, !dbg !1774
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1775

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1776
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %filename) #9, !dbg !1777
  br label %if.end, !dbg !1778

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef %geometry, i32 noundef 0, i64 noundef 32) #9, !dbg !1779
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1780
  %1 = load i64, ptr %columns, align 8, !dbg !1780, !tbaa !1652
  store i64 %1, ptr %geometry, align 8, !dbg !1781, !tbaa !843
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1782
  %2 = load i64, ptr %rows, align 8, !dbg !1782, !tbaa !1655
  %height = getelementptr inbounds %struct._RectangleInfo, ptr %geometry, i64 0, i32 1, !dbg !1783
  store i64 %2, ptr %height, align 8, !dbg !1784, !tbaa !835
  ret void, !dbg !1785
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseMetaGeometry(ptr noundef %geometry, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y, ptr nocapture noundef %width, ptr nocapture noundef %height) local_unnamed_addr #0 !dbg !1786 {
entry:
  %geometry_info = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1788, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %x, metadata !1789, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %y, metadata !1790, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %width, metadata !1791, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata ptr %height, metadata !1792, metadata !DIExpression()), !dbg !1809
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !1793, metadata !DIExpression()), !dbg !1811
  %cmp = icmp eq ptr %geometry, null, !dbg !1812
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1814

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %geometry, align 1, !dbg !1815, !tbaa !518
  %cmp1 = icmp eq i8 %0, 0, !dbg !1816
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !1817

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1275, ptr noundef nonnull @.str.146, ptr noundef nonnull %geometry) #9, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %geometry_info, metadata !1819, metadata !DIExpression()) #9, !dbg !1824
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1575, ptr noundef nonnull @.str.153) #9, !dbg !1826
  %call1.i = call ptr @ResetMagickMemory(ptr noundef nonnull %geometry_info, i32 noundef 0, i64 noundef 40) #9, !dbg !1827
  %1 = load i64, ptr %width, align 8, !dbg !1828, !tbaa !644
  call void @llvm.dbg.value(metadata i64 %1, metadata !1796, metadata !DIExpression()), !dbg !1809
  %2 = load i64, ptr %height, align 8, !dbg !1829, !tbaa !644
  call void @llvm.dbg.value(metadata i64 %2, metadata !1795, metadata !DIExpression()), !dbg !1809
  %call3 = call i32 @GetGeometry(ptr noundef nonnull %geometry, ptr noundef %x, ptr noundef %y, ptr noundef nonnull %width, ptr noundef nonnull %height), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1794, metadata !DIExpression()), !dbg !1809
  %and = and i32 %call3, 4096, !dbg !1831
  %cmp4.not = icmp eq i32 %and, 0, !dbg !1832
  br i1 %cmp4.not, label %if.end33, label %if.then6, !dbg !1833

if.then6:                                         ; preds = %if.end
  %call8 = call i32 @ParseGeometry(ptr noundef nonnull %geometry, ptr noundef nonnull %geometry_info), !dbg !1834
  call void @llvm.dbg.value(metadata i32 %call8, metadata !1797, metadata !DIExpression()), !dbg !1835
  %3 = load double, ptr %geometry_info, align 8, !dbg !1836, !tbaa !1040
  call void @llvm.dbg.value(metadata double %3, metadata !1800, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1835
  %and10 = and i32 %call8, 4, !dbg !1837
  %cmp11 = icmp eq i32 %and10, 0, !dbg !1839
  %spec.select = select i1 %cmp11, double 1.000000e+02, double %3, !dbg !1840
  call void @llvm.dbg.value(metadata double %spec.select, metadata !1800, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1835
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !1841
  %4 = load double, ptr %sigma, align 8, !dbg !1841, !tbaa !1073
  call void @llvm.dbg.value(metadata double %4, metadata !1800, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1835
  %and17 = and i32 %call8, 8, !dbg !1842
  %cmp18 = icmp eq i32 %and17, 0, !dbg !1844
  %spec.select323 = select i1 %cmp18, double %spec.select, double %4, !dbg !1845
  call void @llvm.dbg.value(metadata double %spec.select323, metadata !1800, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1835
  %conv25 = uitofp i64 %1 to double, !dbg !1846
  %mul = fmul double %spec.select, %conv25, !dbg !1847
  %div = fdiv double %mul, 1.000000e+02, !dbg !1848
  %add = fadd double %div, 5.000000e-01, !dbg !1849
  %5 = call double @llvm.floor.f64(double %add), !dbg !1850
  %conv26 = fptoui double %5 to i64, !dbg !1851
  store i64 %conv26, ptr %width, align 8, !dbg !1852, !tbaa !644
  %conv28 = uitofp i64 %2 to double, !dbg !1853
  %mul29 = fmul double %spec.select323, %conv28, !dbg !1854
  %div30 = fdiv double %mul29, 1.000000e+02, !dbg !1855
  %add31 = fadd double %div30, 5.000000e-01, !dbg !1856
  %6 = call double @llvm.floor.f64(double %add31), !dbg !1857
  %conv32 = fptoui double %6 to i64, !dbg !1858
  store i64 %conv32, ptr %height, align 8, !dbg !1859, !tbaa !644
  %7 = load i64, ptr %width, align 8, !dbg !1860, !tbaa !644
  call void @llvm.dbg.value(metadata i64 %7, metadata !1796, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %conv32, metadata !1795, metadata !DIExpression()), !dbg !1809
  br label %if.end33, !dbg !1861

if.end33:                                         ; preds = %if.then6, %if.end
  %former_width.0 = phi i64 [ %7, %if.then6 ], [ %1, %if.end ], !dbg !1809
  %former_height.0 = phi i64 [ %conv32, %if.then6 ], [ %2, %if.end ], !dbg !1809
  call void @llvm.dbg.value(metadata i64 %former_height.0, metadata !1795, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i64 %former_width.0, metadata !1796, metadata !DIExpression()), !dbg !1809
  %and34 = and i32 %call3, 8192, !dbg !1862
  %cmp35.not = icmp eq i32 %and34, 0, !dbg !1863
  br i1 %cmp35.not, label %lor.lhs.false37, label %if.then42, !dbg !1864

lor.lhs.false37:                                  ; preds = %if.end33
  %8 = load i64, ptr %width, align 8, !dbg !1865, !tbaa !644
  %cmp38 = icmp eq i64 %8, %former_width.0, !dbg !1866
  br i1 %cmp38, label %land.lhs.true, label %if.else, !dbg !1867

land.lhs.true:                                    ; preds = %lor.lhs.false37
  %9 = load i64, ptr %height, align 8, !dbg !1868, !tbaa !644
  %cmp40 = icmp eq i64 %9, %former_height.0, !dbg !1869
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !1870

if.then42:                                        ; preds = %land.lhs.true, %if.end33
  %and43 = and i32 %call3, 4, !dbg !1871
  %cmp44 = icmp eq i32 %and43, 0, !dbg !1874
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1875

if.then46:                                        ; preds = %if.then42
  store i64 %former_width.0, ptr %width, align 8, !dbg !1876, !tbaa !644
  br label %if.end47, !dbg !1877

if.end47:                                         ; preds = %if.then46, %if.then42
  %and48 = and i32 %call3, 8, !dbg !1878
  %cmp49 = icmp eq i32 %and48, 0, !dbg !1880
  br i1 %cmp49, label %if.end148.sink.split, label %if.end148, !dbg !1881

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false37
  %cmp53 = icmp eq i64 %former_width.0, 0, !dbg !1882
  %cmp56 = icmp eq i64 %former_height.0, 0
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp56, !dbg !1884
  br i1 %or.cond, label %if.end139, label %if.else59, !dbg !1884

if.else59:                                        ; preds = %if.else
  %10 = and i32 %call3, 12, !dbg !1885
  %.not = icmp eq i32 %10, 12, !dbg !1885
  br i1 %.not, label %if.then67, label %if.else97, !dbg !1885

if.then67:                                        ; preds = %if.else59
  %conv68 = uitofp i64 %8 to double, !dbg !1887
  %conv69 = uitofp i64 %former_width.0 to double, !dbg !1889
  %div70 = fdiv double %conv68, %conv69, !dbg !1890
  call void @llvm.dbg.value(metadata double %div70, metadata !1801, metadata !DIExpression()), !dbg !1891
  %and71 = and i32 %call3, 65536, !dbg !1892
  %cmp72 = icmp eq i32 %and71, 0, !dbg !1894
  %11 = load i64, ptr %height, align 8, !dbg !1895, !tbaa !644
  %conv75 = uitofp i64 %11 to double, !dbg !1895
  %conv76 = uitofp i64 %former_height.0 to double, !dbg !1895
  %div77 = fdiv double %conv75, %conv76, !dbg !1895
  br i1 %cmp72, label %if.then74, label %if.else85, !dbg !1896

if.then74:                                        ; preds = %if.then67
  %cmp78 = fcmp ogt double %div70, %div77, !dbg !1897
  br i1 %cmp78, label %if.then80, label %if.end139, !dbg !1900

if.then80:                                        ; preds = %if.then74
  call void @llvm.dbg.value(metadata double %div77, metadata !1801, metadata !DIExpression()), !dbg !1891
  br label %if.end139, !dbg !1901

if.else85:                                        ; preds = %if.then67
  %cmp89 = fcmp olt double %div70, %div77, !dbg !1902
  br i1 %cmp89, label %if.then91, label %if.end139, !dbg !1904

if.then91:                                        ; preds = %if.else85
  call void @llvm.dbg.value(metadata double %div77, metadata !1801, metadata !DIExpression()), !dbg !1891
  br label %if.end139, !dbg !1905

if.else97:                                        ; preds = %if.else59
  %and60 = and i32 %call3, 4, !dbg !1906
  %cmp61.not = icmp eq i32 %and60, 0, !dbg !1907
  br i1 %cmp61.not, label %if.else119, label %if.then101, !dbg !1908

if.then101:                                       ; preds = %if.else97
  %conv102 = uitofp i64 %8 to double, !dbg !1909
  %conv103 = uitofp i64 %former_width.0 to double, !dbg !1912
  %div104 = fdiv double %conv102, %conv103, !dbg !1913
  call void @llvm.dbg.value(metadata double %div104, metadata !1801, metadata !DIExpression()), !dbg !1891
  %and105 = and i32 %call3, 65536, !dbg !1914
  %cmp106.not = icmp eq i32 %and105, 0, !dbg !1916
  br i1 %cmp106.not, label %if.end139, label %land.lhs.true108, !dbg !1917

land.lhs.true108:                                 ; preds = %if.then101
  %conv110 = uitofp i64 %former_height.0 to double, !dbg !1918
  %div111 = fdiv double %conv102, %conv110, !dbg !1919
  %cmp112 = fcmp olt double %div104, %div111, !dbg !1920
  br i1 %cmp112, label %if.then114, label %if.end139, !dbg !1921

if.then114:                                       ; preds = %land.lhs.true108
  call void @llvm.dbg.value(metadata double %div111, metadata !1801, metadata !DIExpression()), !dbg !1891
  br label %if.end139, !dbg !1922

if.else119:                                       ; preds = %if.else97
  %12 = load i64, ptr %height, align 8, !dbg !1923, !tbaa !644
  %conv120 = uitofp i64 %12 to double, !dbg !1925
  %conv121 = uitofp i64 %former_height.0 to double, !dbg !1926
  %div122 = fdiv double %conv120, %conv121, !dbg !1927
  call void @llvm.dbg.value(metadata double %div122, metadata !1801, metadata !DIExpression()), !dbg !1891
  %and123 = and i32 %call3, 65536, !dbg !1928
  %cmp124.not = icmp eq i32 %and123, 0, !dbg !1930
  br i1 %cmp124.not, label %if.end139, label %land.lhs.true126, !dbg !1931

land.lhs.true126:                                 ; preds = %if.else119
  %conv128 = uitofp i64 %former_width.0 to double, !dbg !1932
  %div129 = fdiv double %conv120, %conv128, !dbg !1933
  %cmp130 = fcmp olt double %div122, %div129, !dbg !1934
  br i1 %cmp130, label %if.then132, label %if.end139, !dbg !1935

if.then132:                                       ; preds = %land.lhs.true126
  call void @llvm.dbg.value(metadata double %div129, metadata !1801, metadata !DIExpression()), !dbg !1891
  br label %if.end139, !dbg !1936

if.end139:                                        ; preds = %if.else, %if.else85, %if.then91, %if.then74, %if.then80, %if.else119, %land.lhs.true126, %if.then132, %if.then101, %land.lhs.true108, %if.then114
  %scale_factor.0 = phi double [ %div77, %if.then80 ], [ %div70, %if.then74 ], [ %div77, %if.then91 ], [ %div70, %if.else85 ], [ %div111, %if.then114 ], [ %div104, %land.lhs.true108 ], [ %div104, %if.then101 ], [ %div129, %if.then132 ], [ %div122, %land.lhs.true126 ], [ %div122, %if.else119 ], [ 1.000000e+00, %if.else ], !dbg !1937
  call void @llvm.dbg.value(metadata double %scale_factor.0, metadata !1801, metadata !DIExpression()), !dbg !1891
  %conv140 = uitofp i64 %former_width.0 to double, !dbg !1938
  %13 = call double @llvm.fmuladd.f64(double %scale_factor.0, double %conv140, double 5.000000e-01), !dbg !1939
  %14 = call double @llvm.floor.f64(double %13), !dbg !1940
  %conv142 = fptoui double %14 to i64, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %conv142, metadata !1942, metadata !DIExpression()) #9, !dbg !1948
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()) #9, !dbg !1948
  %15 = call i64 @llvm.umax.i64(i64 %conv142, i64 1) #9, !dbg !1948
  store i64 %15, ptr %width, align 8, !dbg !1950, !tbaa !644
  %conv144 = uitofp i64 %former_height.0 to double, !dbg !1951
  %16 = call double @llvm.fmuladd.f64(double %scale_factor.0, double %conv144, double 5.000000e-01), !dbg !1952
  %17 = call double @llvm.floor.f64(double %16), !dbg !1953
  %conv146 = fptoui double %17 to i64, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %conv146, metadata !1942, metadata !DIExpression()) #9, !dbg !1955
  call void @llvm.dbg.value(metadata i64 1, metadata !1947, metadata !DIExpression()) #9, !dbg !1955
  %18 = call i64 @llvm.umax.i64(i64 %conv146, i64 1) #9, !dbg !1955
  br label %if.end148.sink.split

if.end148.sink.split:                             ; preds = %if.end47, %if.end139
  %former_height.0.sink = phi i64 [ %18, %if.end139 ], [ %former_height.0, %if.end47 ]
  store i64 %former_height.0.sink, ptr %height, align 8, !dbg !1957, !tbaa !644
  br label %if.end148, !dbg !1958

if.end148:                                        ; preds = %if.end148.sink.split, %if.end47
  %and149 = and i32 %call3, 32768, !dbg !1958
  %cmp150.not = icmp eq i32 %and149, 0, !dbg !1960
  br i1 %cmp150.not, label %if.end161, label %if.then152, !dbg !1961

if.then152:                                       ; preds = %if.end148
  %19 = load i64, ptr %width, align 8, !dbg !1962, !tbaa !644
  %cmp153 = icmp ult i64 %former_width.0, %19, !dbg !1965
  br i1 %cmp153, label %if.then155, label %if.end156, !dbg !1966

if.then155:                                       ; preds = %if.then152
  store i64 %former_width.0, ptr %width, align 8, !dbg !1967, !tbaa !644
  br label %if.end156, !dbg !1968

if.end156:                                        ; preds = %if.then155, %if.then152
  %20 = load i64, ptr %height, align 8, !dbg !1969, !tbaa !644
  %cmp157 = icmp ult i64 %former_height.0, %20, !dbg !1971
  br i1 %cmp157, label %if.then159, label %if.end161, !dbg !1972

if.then159:                                       ; preds = %if.end156
  store i64 %former_height.0, ptr %height, align 8, !dbg !1973, !tbaa !644
  br label %if.end161, !dbg !1974

if.end161:                                        ; preds = %if.end156, %if.then159, %if.end148
  %and162 = and i32 %call3, 16384, !dbg !1975
  %cmp163.not = icmp eq i32 %and162, 0, !dbg !1977
  br i1 %cmp163.not, label %if.end174, label %if.then165, !dbg !1978

if.then165:                                       ; preds = %if.end161
  %21 = load i64, ptr %width, align 8, !dbg !1979, !tbaa !644
  %cmp166 = icmp ugt i64 %former_width.0, %21, !dbg !1982
  br i1 %cmp166, label %if.then168, label %if.end169, !dbg !1983

if.then168:                                       ; preds = %if.then165
  store i64 %former_width.0, ptr %width, align 8, !dbg !1984, !tbaa !644
  br label %if.end169, !dbg !1985

if.end169:                                        ; preds = %if.then168, %if.then165
  %22 = load i64, ptr %height, align 8, !dbg !1986, !tbaa !644
  %cmp170 = icmp ugt i64 %former_height.0, %22, !dbg !1988
  br i1 %cmp170, label %if.then172, label %if.end174, !dbg !1989

if.then172:                                       ; preds = %if.end169
  store i64 %former_height.0, ptr %height, align 8, !dbg !1990, !tbaa !644
  br label %if.end174, !dbg !1991

if.end174:                                        ; preds = %if.end169, %if.then172, %if.end161
  %and175 = and i32 %call3, 131072, !dbg !1992
  %cmp176.not = icmp eq i32 %and175, 0, !dbg !1993
  br i1 %cmp176.not, label %cleanup, label %if.then178, !dbg !1994

if.then178:                                       ; preds = %if.end174
  %call180 = call i32 @ParseGeometry(ptr noundef nonnull %geometry, ptr noundef nonnull %geometry_info), !dbg !1995
  %23 = load double, ptr %geometry_info, align 8, !dbg !1996, !tbaa !1040
  call void @llvm.dbg.value(metadata double %23, metadata !1804, metadata !DIExpression()), !dbg !1997
  %conv182 = uitofp i64 %former_width.0 to double, !dbg !1998
  %conv183 = uitofp i64 %former_height.0 to double, !dbg !1999
  %mul184 = fmul double %conv182, %conv183, !dbg !2000
  %call185 = call double @sqrt(double noundef %mul184) #9, !dbg !2001
  call void @llvm.dbg.value(metadata double %call185, metadata !1807, metadata !DIExpression()), !dbg !1997
  %call187 = call double @sqrt(double noundef %23) #9, !dbg !2002
  %div188 = fdiv double %call185, %call187, !dbg !2003
  %div189 = fdiv double %conv182, %div188, !dbg !2004
  call void @llvm.dbg.value(metadata double %div189, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1997
  %call192 = call double @sqrt(double noundef %23) #9, !dbg !2005
  call void @llvm.dbg.value(metadata double undef, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1997
  %24 = load i64, ptr %width, align 8, !dbg !2006, !tbaa !644
  %conv197 = uitofp i64 %24 to double, !dbg !2008
  %cmp198 = fcmp olt double %div189, %conv197, !dbg !2009
  br i1 %cmp198, label %if.then205, label %lor.lhs.false200, !dbg !2010

lor.lhs.false200:                                 ; preds = %if.then178
  %div193 = fdiv double %call185, %call192, !dbg !2011
  %div194 = fdiv double %conv183, %div193, !dbg !2012
  call void @llvm.dbg.value(metadata double %div194, metadata !1808, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1997
  %25 = load i64, ptr %height, align 8, !dbg !2013, !tbaa !644
  %conv202 = uitofp i64 %25 to double, !dbg !2014
  %cmp203 = fcmp olt double %div194, %conv202, !dbg !2015
  br i1 %cmp203, label %if.then205, label %cleanup, !dbg !2016

if.then205:                                       ; preds = %lor.lhs.false200, %if.then178
  %call207 = call double @sqrt(double noundef %23) #9, !dbg !2017
  %div208 = fdiv double %call185, %call207, !dbg !2019
  %div209 = fdiv double %conv182, %div208, !dbg !2020
  %conv210 = fptoui double %div209 to i64, !dbg !2021
  store i64 %conv210, ptr %width, align 8, !dbg !2022, !tbaa !644
  %call212 = call double @sqrt(double noundef %23) #9, !dbg !2023
  %div213 = fdiv double %call185, %call212, !dbg !2024
  %div214 = fdiv double %conv183, %div213, !dbg !2025
  %conv215 = fptoui double %div214 to i64, !dbg !2026
  store i64 %conv215, ptr %height, align 8, !dbg !2027, !tbaa !644
  br label %cleanup, !dbg !2028

cleanup:                                          ; preds = %if.end174, %if.then205, %lor.lhs.false200, %entry, %lor.lhs.false
  %retval.0 = phi i32 [ 0, %lor.lhs.false ], [ 0, %entry ], [ %call3, %lor.lhs.false200 ], [ %call3, %if.then205 ], [ %call3, %if.end174 ], !dbg !1809
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #9, !dbg !2029
  ret i32 %retval.0, !dbg !2029
}

; Function Attrs: nounwind uwtable
define dso_local void @SetGeometryInfo(ptr noundef %geometry_info) local_unnamed_addr #0 !dbg !1820 {
entry:
  call void @llvm.dbg.value(metadata ptr %geometry_info, metadata !1819, metadata !DIExpression()), !dbg !2030
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1575, ptr noundef nonnull @.str.153) #9, !dbg !2031
  %call1 = tail call ptr @ResetMagickMemory(ptr noundef %geometry_info, i32 noundef 0, i64 noundef 40) #9, !dbg !2032
  ret void, !dbg !2033
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @ParsePageGeometry(ptr noundef %image, ptr noundef %geometry, ptr noundef %region_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2036, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2037, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !2038, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2039, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %image, metadata !1623, metadata !DIExpression()) #9, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1628, metadata !DIExpression()) #9, !dbg !2042
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2044
  %0 = load i32, ptr %debug.i, align 8, !dbg !2044, !tbaa !1633
  %cmp.not.i = icmp eq i32 %0, 0, !dbg !2045
  br i1 %cmp.not.i, label %SetGeometry.exit, label %if.then.i, !dbg !2046

if.then.i:                                        ; preds = %entry
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2047
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %filename.i) #9, !dbg !2048
  br label %SetGeometry.exit, !dbg !2049

SetGeometry.exit:                                 ; preds = %entry, %if.then.i
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef %region_info, i32 noundef 0, i64 noundef 32) #9, !dbg !2050
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2051
  %1 = load i64, ptr %columns.i, align 8, !dbg !2051, !tbaa !1652
  store i64 %1, ptr %region_info, align 8, !dbg !2052, !tbaa !843
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2053
  %2 = load i64, ptr %rows.i, align 8, !dbg !2053, !tbaa !1655
  %height.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 1, !dbg !2054
  store i64 %2, ptr %height.i, align 8, !dbg !2055, !tbaa !835
  %page = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !2056
  %3 = load i64, ptr %page, align 8, !dbg !2058, !tbaa !1661
  %cmp.not = icmp eq i64 %3, 0, !dbg !2059
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2060

if.then:                                          ; preds = %SetGeometry.exit
  store i64 %3, ptr %region_info, align 8, !dbg !2061, !tbaa !843
  br label %if.end, !dbg !2062

if.end:                                           ; preds = %if.then, %SetGeometry.exit
  %height = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1, !dbg !2063
  %4 = load i64, ptr %height, align 8, !dbg !2063, !tbaa !1668
  %cmp5.not = icmp eq i64 %4, 0, !dbg !2065
  br i1 %cmp5.not, label %if.end10, label %if.then6, !dbg !2066

if.then6:                                         ; preds = %if.end
  store i64 %4, ptr %height.i, align 8, !dbg !2067, !tbaa !835
  br label %if.end10, !dbg !2068

if.end10:                                         ; preds = %if.then6, %if.end
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !1277, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1278, metadata !DIExpression()) #9, !dbg !2069
  %x.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 2, !dbg !2071
  %y.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 3, !dbg !2072
  %call.i79 = tail call i32 @GetGeometry(ptr noundef %geometry, ptr noundef nonnull %x.i, ptr noundef nonnull %y.i, ptr noundef nonnull %region_info, ptr noundef nonnull %height.i) #9, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %call.i79, metadata !1279, metadata !DIExpression()) #9, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %call.i79, metadata !2040, metadata !DIExpression()), !dbg !2041
  %cmp11 = icmp eq i32 %call.i79, 0, !dbg !2074
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !2076

if.then12:                                        ; preds = %if.end10
  %call13 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1444, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %geometry) #9, !dbg !2077
  br label %cleanup, !dbg !2079

if.end14:                                         ; preds = %if.end10
  %and = and i32 %call.i79, 4096, !dbg !2080
  %cmp15.not = icmp eq i32 %and, 0, !dbg !2082
  br i1 %cmp15.not, label %if.end19, label %if.then16, !dbg !2083

if.then16:                                        ; preds = %if.end14
  %5 = load i64, ptr %columns.i, align 8, !dbg !2084, !tbaa !1652
  store i64 %5, ptr %region_info, align 8, !dbg !2086, !tbaa !843
  %6 = load i64, ptr %rows.i, align 8, !dbg !2087, !tbaa !1655
  store i64 %6, ptr %height.i, align 8, !dbg !2088, !tbaa !835
  br label %if.end19, !dbg !2089

if.end19:                                         ; preds = %if.then16, %if.end14
  %call22 = tail call i32 @ParseMetaGeometry(ptr noundef %geometry, ptr noundef nonnull %x.i, ptr noundef nonnull %y.i, ptr noundef nonnull %region_info, ptr noundef nonnull %height.i), !dbg !2090
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2040, metadata !DIExpression()), !dbg !2041
  %and25 = and i32 %call22, 8
  %cmp26.not = icmp eq i32 %and25, 0
  %7 = and i32 %call22, 12, !dbg !2091
  %8 = icmp eq i32 %7, 0, !dbg !2091
  %9 = and i32 %call22, 528384
  %.not = icmp eq i32 %9, 524288
  %or.cond = or i1 %8, %.not, !dbg !2091
  br i1 %or.cond, label %cleanup, label %if.then32, !dbg !2091

if.then32:                                        ; preds = %if.end19
  %and23 = and i32 %call22, 4, !dbg !2093
  %cmp24.not = icmp eq i32 %and23, 0, !dbg !2094
  br i1 %cmp24.not, label %if.then35, label %if.end38, !dbg !2095

if.then35:                                        ; preds = %if.then32
  %10 = load i64, ptr %height.i, align 8, !dbg !2097, !tbaa !835
  store i64 %10, ptr %region_info, align 8, !dbg !2099, !tbaa !843
  br label %if.end38, !dbg !2100

if.end38:                                         ; preds = %if.then35, %if.then32
  br i1 %cmp26.not, label %if.then41, label %cleanup, !dbg !2101

if.then41:                                        ; preds = %if.end38
  %11 = load i64, ptr %region_info, align 8, !dbg !2102, !tbaa !843
  store i64 %11, ptr %height.i, align 8, !dbg !2104, !tbaa !835
  br label %cleanup, !dbg !2105

cleanup:                                          ; preds = %if.then41, %if.end38, %if.end19, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ %call22, %if.end19 ], [ %call22, %if.end38 ], [ %call22, %if.then41 ], !dbg !2041
  ret i32 %retval.0, !dbg !2106
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ParseRegionGeometry(ptr noundef %image, ptr noundef %geometry, ptr noundef %region_info, ptr noundef %exception) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2109, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %geometry, metadata !2110, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %image, metadata !1623, metadata !DIExpression()) #9, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %region_info, metadata !1628, metadata !DIExpression()) #9, !dbg !2115
  %debug.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2117
  %0 = load i32, ptr %debug.i, align 8, !dbg !2117, !tbaa !1633
  %cmp.not.i = icmp eq i32 %0, 0, !dbg !2118
  br i1 %cmp.not.i, label %SetGeometry.exit, label %if.then.i, !dbg !2119

if.then.i:                                        ; preds = %entry
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2120
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1543, ptr noundef nonnull @.str.146, ptr noundef nonnull %filename.i) #9, !dbg !2121
  br label %SetGeometry.exit, !dbg !2122

SetGeometry.exit:                                 ; preds = %entry, %if.then.i
  %call1.i = tail call ptr @ResetMagickMemory(ptr noundef %region_info, i32 noundef 0, i64 noundef 32) #9, !dbg !2123
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2124
  %1 = load i64, ptr %columns.i, align 8, !dbg !2124, !tbaa !1652
  store i64 %1, ptr %region_info, align 8, !dbg !2125, !tbaa !843
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2126
  %2 = load i64, ptr %rows.i, align 8, !dbg !2126, !tbaa !1655
  %height.i = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 1, !dbg !2127
  store i64 %2, ptr %height.i, align 8, !dbg !2128, !tbaa !835
  %x = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 2, !dbg !2129
  %y = getelementptr inbounds %struct._RectangleInfo, ptr %region_info, i64 0, i32 3, !dbg !2130
  %call = tail call i32 @ParseMetaGeometry(ptr noundef %geometry, ptr noundef nonnull %x, ptr noundef nonnull %y, ptr noundef nonnull %region_info, ptr noundef nonnull %height.i), !dbg !2131
  call void @llvm.dbg.value(metadata i32 %call, metadata !2113, metadata !DIExpression()), !dbg !2114
  %cmp = icmp eq i32 %call, 0, !dbg !2132
  br i1 %cmp, label %if.then, label %if.end, !dbg !2134

if.then:                                          ; preds = %SetGeometry.exit
  %call1 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i64 noundef 1509, i32 noundef 410, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef %geometry) #9, !dbg !2135
  br label %if.end, !dbg !2136

if.end:                                           ; preds = %if.then, %SetGeometry.exit
  ret i32 %call, !dbg !2137
}

declare !dbg !2138 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2142 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!484, !485, !486, !487, !488, !489}
!llvm.ident = !{!490}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "PageSizes", scope: !2, file: !3, line: 345, type: !480, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "GetPageGeometry", scope: !3, file: !3, line: 342, type: !4, scopeLine: 343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !462)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e5b106699e1b79d3de34a3aad83de07e")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !12, retainedTypes: !446, globals: !461, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/geometry.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "e5b106699e1b79d3de34a3aad83de07e")
!12 = !{!13, !43, !58, !83, !88, !102, !175, !180, !217, !242, !254, !262, !267, !302, !312, !318, !389, !397, !403, !420, !434}
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 25, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!17 = !DIEnumerator(name: "NoValue", value: 0)
!18 = !DIEnumerator(name: "XValue", value: 1)
!19 = !DIEnumerator(name: "XiValue", value: 1)
!20 = !DIEnumerator(name: "YValue", value: 2)
!21 = !DIEnumerator(name: "PsiValue", value: 2)
!22 = !DIEnumerator(name: "WidthValue", value: 4)
!23 = !DIEnumerator(name: "RhoValue", value: 4)
!24 = !DIEnumerator(name: "HeightValue", value: 8)
!25 = !DIEnumerator(name: "SigmaValue", value: 8)
!26 = !DIEnumerator(name: "ChiValue", value: 16)
!27 = !DIEnumerator(name: "XiNegative", value: 32)
!28 = !DIEnumerator(name: "XNegative", value: 32)
!29 = !DIEnumerator(name: "PsiNegative", value: 64)
!30 = !DIEnumerator(name: "YNegative", value: 64)
!31 = !DIEnumerator(name: "ChiNegative", value: 128)
!32 = !DIEnumerator(name: "PercentValue", value: 4096)
!33 = !DIEnumerator(name: "AspectValue", value: 8192)
!34 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!35 = !DIEnumerator(name: "LessValue", value: 16384)
!36 = !DIEnumerator(name: "GreaterValue", value: 32768)
!37 = !DIEnumerator(name: "MinimumValue", value: 65536)
!38 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!39 = !DIEnumerator(name: "AreaValue", value: 131072)
!40 = !DIEnumerator(name: "DecimalValue", value: 262144)
!41 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!42 = !DIEnumerator(name: "AllValues", value: 2147483647)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 46, baseType: !15, size: 32, elements: !45)
!44 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!46 = !DIEnumerator(name: "_ISupper", value: 256)
!47 = !DIEnumerator(name: "_ISlower", value: 512)
!48 = !DIEnumerator(name: "_ISalpha", value: 1024)
!49 = !DIEnumerator(name: "_ISdigit", value: 2048)
!50 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!51 = !DIEnumerator(name: "_ISspace", value: 8192)
!52 = !DIEnumerator(name: "_ISprint", value: 16384)
!53 = !DIEnumerator(name: "_ISgraph", value: 32768)
!54 = !DIEnumerator(name: "_ISblank", value: 1)
!55 = !DIEnumerator(name: "_IScntrl", value: 2)
!56 = !DIEnumerator(name: "_ISpunct", value: 4)
!57 = !DIEnumerator(name: "_ISalnum", value: 8)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 34, baseType: !15, size: 32, elements: !60)
!59 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!61 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!62 = !DIEnumerator(name: "NoEvents", value: 0)
!63 = !DIEnumerator(name: "TraceEvent", value: 1)
!64 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!65 = !DIEnumerator(name: "BlobEvent", value: 4)
!66 = !DIEnumerator(name: "CacheEvent", value: 8)
!67 = !DIEnumerator(name: "CoderEvent", value: 16)
!68 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!69 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!70 = !DIEnumerator(name: "DrawEvent", value: 128)
!71 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!72 = !DIEnumerator(name: "ImageEvent", value: 512)
!73 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!74 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!75 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!76 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!77 = !DIEnumerator(name: "TransformEvent", value: 16384)
!78 = !DIEnumerator(name: "UserEvent", value: 36864)
!79 = !DIEnumerator(name: "WandEvent", value: 65536)
!80 = !DIEnumerator(name: "X11Event", value: 131072)
!81 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!82 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 211, baseType: !15, size: 32, elements: !85)
!84 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!85 = !{!86, !87}
!86 = !DIEnumerator(name: "MagickFalse", value: 0)
!87 = !DIEnumerator(name: "MagickTrue", value: 1)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 77, baseType: !15, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!90 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!91 = !DIEnumerator(name: "ForgetGravity", value: 0)
!92 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!93 = !DIEnumerator(name: "NorthGravity", value: 2)
!94 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!95 = !DIEnumerator(name: "WestGravity", value: 4)
!96 = !DIEnumerator(name: "CenterGravity", value: 5)
!97 = !DIEnumerator(name: "EastGravity", value: 6)
!98 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!99 = !DIEnumerator(name: "SouthGravity", value: 8)
!100 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!101 = !DIEnumerator(name: "StaticGravity", value: 10)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 28, baseType: !15, size: 32, elements: !104)
!103 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!105 = !DIEnumerator(name: "UndefinedException", value: 0)
!106 = !DIEnumerator(name: "WarningException", value: 300)
!107 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!108 = !DIEnumerator(name: "TypeWarning", value: 305)
!109 = !DIEnumerator(name: "OptionWarning", value: 310)
!110 = !DIEnumerator(name: "DelegateWarning", value: 315)
!111 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!112 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!113 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!114 = !DIEnumerator(name: "BlobWarning", value: 335)
!115 = !DIEnumerator(name: "StreamWarning", value: 340)
!116 = !DIEnumerator(name: "CacheWarning", value: 345)
!117 = !DIEnumerator(name: "CoderWarning", value: 350)
!118 = !DIEnumerator(name: "FilterWarning", value: 352)
!119 = !DIEnumerator(name: "ModuleWarning", value: 355)
!120 = !DIEnumerator(name: "DrawWarning", value: 360)
!121 = !DIEnumerator(name: "ImageWarning", value: 365)
!122 = !DIEnumerator(name: "WandWarning", value: 370)
!123 = !DIEnumerator(name: "RandomWarning", value: 375)
!124 = !DIEnumerator(name: "XServerWarning", value: 380)
!125 = !DIEnumerator(name: "MonitorWarning", value: 385)
!126 = !DIEnumerator(name: "RegistryWarning", value: 390)
!127 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!128 = !DIEnumerator(name: "PolicyWarning", value: 399)
!129 = !DIEnumerator(name: "ErrorException", value: 400)
!130 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!131 = !DIEnumerator(name: "TypeError", value: 405)
!132 = !DIEnumerator(name: "OptionError", value: 410)
!133 = !DIEnumerator(name: "DelegateError", value: 415)
!134 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!135 = !DIEnumerator(name: "CorruptImageError", value: 425)
!136 = !DIEnumerator(name: "FileOpenError", value: 430)
!137 = !DIEnumerator(name: "BlobError", value: 435)
!138 = !DIEnumerator(name: "StreamError", value: 440)
!139 = !DIEnumerator(name: "CacheError", value: 445)
!140 = !DIEnumerator(name: "CoderError", value: 450)
!141 = !DIEnumerator(name: "FilterError", value: 452)
!142 = !DIEnumerator(name: "ModuleError", value: 455)
!143 = !DIEnumerator(name: "DrawError", value: 460)
!144 = !DIEnumerator(name: "ImageError", value: 465)
!145 = !DIEnumerator(name: "WandError", value: 470)
!146 = !DIEnumerator(name: "RandomError", value: 475)
!147 = !DIEnumerator(name: "XServerError", value: 480)
!148 = !DIEnumerator(name: "MonitorError", value: 485)
!149 = !DIEnumerator(name: "RegistryError", value: 490)
!150 = !DIEnumerator(name: "ConfigureError", value: 495)
!151 = !DIEnumerator(name: "PolicyError", value: 499)
!152 = !DIEnumerator(name: "FatalErrorException", value: 700)
!153 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!154 = !DIEnumerator(name: "TypeFatalError", value: 705)
!155 = !DIEnumerator(name: "OptionFatalError", value: 710)
!156 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!157 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!158 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!159 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!160 = !DIEnumerator(name: "BlobFatalError", value: 735)
!161 = !DIEnumerator(name: "StreamFatalError", value: 740)
!162 = !DIEnumerator(name: "CacheFatalError", value: 745)
!163 = !DIEnumerator(name: "CoderFatalError", value: 750)
!164 = !DIEnumerator(name: "FilterFatalError", value: 752)
!165 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!166 = !DIEnumerator(name: "DrawFatalError", value: 760)
!167 = !DIEnumerator(name: "ImageFatalError", value: 765)
!168 = !DIEnumerator(name: "WandFatalError", value: 770)
!169 = !DIEnumerator(name: "RandomFatalError", value: 775)
!170 = !DIEnumerator(name: "XServerFatalError", value: 780)
!171 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!172 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!173 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!174 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 204, baseType: !15, size: 32, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "UndefinedClass", value: 0)
!178 = !DIEnumerator(name: "DirectClass", value: 1)
!179 = !DIEnumerator(name: "PseudoClass", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 25, baseType: !15, size: 32, elements: !182)
!181 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!183 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!184 = !DIEnumerator(name: "RGBColorspace", value: 1)
!185 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!186 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!187 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!188 = !DIEnumerator(name: "LabColorspace", value: 5)
!189 = !DIEnumerator(name: "XYZColorspace", value: 6)
!190 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!191 = !DIEnumerator(name: "YCCColorspace", value: 8)
!192 = !DIEnumerator(name: "YIQColorspace", value: 9)
!193 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!194 = !DIEnumerator(name: "YUVColorspace", value: 11)
!195 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!196 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!197 = !DIEnumerator(name: "HSBColorspace", value: 14)
!198 = !DIEnumerator(name: "HSLColorspace", value: 15)
!199 = !DIEnumerator(name: "HWBColorspace", value: 16)
!200 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!201 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!202 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!203 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!204 = !DIEnumerator(name: "LogColorspace", value: 21)
!205 = !DIEnumerator(name: "CMYColorspace", value: 22)
!206 = !DIEnumerator(name: "LuvColorspace", value: 23)
!207 = !DIEnumerator(name: "HCLColorspace", value: 24)
!208 = !DIEnumerator(name: "LCHColorspace", value: 25)
!209 = !DIEnumerator(name: "LMSColorspace", value: 26)
!210 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!211 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!212 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!213 = !DIEnumerator(name: "HSIColorspace", value: 30)
!214 = !DIEnumerator(name: "HSVColorspace", value: 31)
!215 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!216 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 25, baseType: !15, size: 32, elements: !219)
!218 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!220 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!221 = !DIEnumerator(name: "NoCompression", value: 1)
!222 = !DIEnumerator(name: "BZipCompression", value: 2)
!223 = !DIEnumerator(name: "DXT1Compression", value: 3)
!224 = !DIEnumerator(name: "DXT3Compression", value: 4)
!225 = !DIEnumerator(name: "DXT5Compression", value: 5)
!226 = !DIEnumerator(name: "FaxCompression", value: 6)
!227 = !DIEnumerator(name: "Group4Compression", value: 7)
!228 = !DIEnumerator(name: "JPEGCompression", value: 8)
!229 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!230 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!231 = !DIEnumerator(name: "LZWCompression", value: 11)
!232 = !DIEnumerator(name: "RLECompression", value: 12)
!233 = !DIEnumerator(name: "ZipCompression", value: 13)
!234 = !DIEnumerator(name: "ZipSCompression", value: 14)
!235 = !DIEnumerator(name: "PizCompression", value: 15)
!236 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!237 = !DIEnumerator(name: "B44Compression", value: 17)
!238 = !DIEnumerator(name: "B44ACompression", value: 18)
!239 = !DIEnumerator(name: "LZMACompression", value: 19)
!240 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!241 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 75, baseType: !15, size: 32, elements: !244)
!243 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253}
!245 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!246 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!247 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!248 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!249 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!250 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!251 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!252 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!253 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !255, line: 42, baseType: !15, size: 32, elements: !256)
!255 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!256 = !{!257, !258, !259, !260, !261}
!257 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!258 = !DIEnumerator(name: "SaturationIntent", value: 1)
!259 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!260 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!261 = !DIEnumerator(name: "RelativeIntent", value: 4)
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 88, baseType: !15, size: 32, elements: !263)
!263 = !{!264, !265, !266}
!264 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!265 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!266 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!267 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !268, line: 32, baseType: !15, size: 32, elements: !269)
!268 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!270 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!271 = !DIEnumerator(name: "PointFilter", value: 1)
!272 = !DIEnumerator(name: "BoxFilter", value: 2)
!273 = !DIEnumerator(name: "TriangleFilter", value: 3)
!274 = !DIEnumerator(name: "HermiteFilter", value: 4)
!275 = !DIEnumerator(name: "HanningFilter", value: 5)
!276 = !DIEnumerator(name: "HammingFilter", value: 6)
!277 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!278 = !DIEnumerator(name: "GaussianFilter", value: 8)
!279 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!280 = !DIEnumerator(name: "CubicFilter", value: 10)
!281 = !DIEnumerator(name: "CatromFilter", value: 11)
!282 = !DIEnumerator(name: "MitchellFilter", value: 12)
!283 = !DIEnumerator(name: "JincFilter", value: 13)
!284 = !DIEnumerator(name: "SincFilter", value: 14)
!285 = !DIEnumerator(name: "SincFastFilter", value: 15)
!286 = !DIEnumerator(name: "KaiserFilter", value: 16)
!287 = !DIEnumerator(name: "WelshFilter", value: 17)
!288 = !DIEnumerator(name: "ParzenFilter", value: 18)
!289 = !DIEnumerator(name: "BohmanFilter", value: 19)
!290 = !DIEnumerator(name: "BartlettFilter", value: 20)
!291 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!292 = !DIEnumerator(name: "LanczosFilter", value: 22)
!293 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!294 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!295 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!296 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!297 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!298 = !DIEnumerator(name: "CosineFilter", value: 28)
!299 = !DIEnumerator(name: "SplineFilter", value: 29)
!300 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!301 = !DIEnumerator(name: "SentinelFilter", value: 31)
!302 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 63, baseType: !15, size: 32, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309, !310, !311}
!304 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!305 = !DIEnumerator(name: "NoInterlace", value: 1)
!306 = !DIEnumerator(name: "LineInterlace", value: 2)
!307 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!308 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!309 = !DIEnumerator(name: "GIFInterlace", value: 5)
!310 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!311 = !DIEnumerator(name: "PNGInterlace", value: 7)
!312 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !313, line: 30, baseType: !15, size: 32, elements: !314)
!313 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!314 = !{!315, !316, !317}
!315 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!316 = !DIEnumerator(name: "LSBEndian", value: 1)
!317 = !DIEnumerator(name: "MSBEndian", value: 2)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !319, line: 25, baseType: !15, size: 32, elements: !320)
!319 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!321 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!322 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!323 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!324 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!325 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!326 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!327 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!328 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!329 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!330 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!331 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!332 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!333 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!334 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!335 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!336 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!337 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!338 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!339 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!340 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!341 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!342 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!343 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!344 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!345 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!346 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!347 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!348 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!349 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!350 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!351 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!352 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!353 = !DIEnumerator(name: "InCompositeOp", value: 32)
!354 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!355 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!356 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!357 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!358 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!359 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!360 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!361 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!362 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!363 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!364 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!365 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!366 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!367 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!368 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!369 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!370 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!371 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!372 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!373 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!374 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!375 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!376 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!377 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!378 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!379 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!380 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!381 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!382 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!383 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!384 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!385 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!386 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!387 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!388 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !390, line: 25, baseType: !15, size: 32, elements: !391)
!390 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!391 = !{!392, !393, !394, !395, !396}
!392 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!393 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!394 = !DIEnumerator(name: "NoneDispose", value: 1)
!395 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!396 = !DIEnumerator(name: "PreviousDispose", value: 3)
!397 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !398, line: 25, baseType: !15, size: 32, elements: !399)
!398 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!399 = !{!400, !401, !402}
!400 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!401 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!402 = !DIEnumerator(name: "RunningTimerState", value: 2)
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !404, line: 31, baseType: !15, size: 32, elements: !405)
!404 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!405 = !{!406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!406 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!407 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!408 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!409 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!410 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!411 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!412 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!413 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!414 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!415 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!416 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!417 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!418 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!419 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !243, line: 47, baseType: !15, size: 32, elements: !421)
!421 = !{!422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!422 = !DIEnumerator(name: "UndefinedType", value: 0)
!423 = !DIEnumerator(name: "BilevelType", value: 1)
!424 = !DIEnumerator(name: "GrayscaleType", value: 2)
!425 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!426 = !DIEnumerator(name: "PaletteType", value: 4)
!427 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!428 = !DIEnumerator(name: "TrueColorType", value: 6)
!429 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!430 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!431 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!432 = !DIEnumerator(name: "OptimizeType", value: 10)
!433 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !404, line: 67, baseType: !15, size: 32, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!436 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!437 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!438 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!439 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!440 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!441 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!442 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!443 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!444 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!445 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!446 = !{!6, !447, !448, !449, !450, !451, !452, !455, !454, !8, !460}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!448 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!449 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!450 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!451 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !453, line: 46, baseType: !454)
!453 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!454 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !456, line: 77, baseType: !457)
!456 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !458, line: 193, baseType: !459)
!458 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!459 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!461 = !{!0}
!462 = !{!463, !464, !465, !466, !478}
!463 = !DILocalVariable(name: "page_geometry", arg: 1, scope: !2, file: !3, line: 342, type: !8)
!464 = !DILocalVariable(name: "page", scope: !2, file: !3, line: 426, type: !6)
!465 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 429, type: !455)
!466 = !DILocalVariable(name: "geometry", scope: !467, file: !3, line: 438, type: !471)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 436, column: 7)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 435, column: 9)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 434, column: 3)
!470 = distinct !DILexicalBlock(scope: !2, file: !3, line: 434, column: 3)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !14, line: 130, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !14, line: 121, size: 256, elements: !473)
!473 = !{!474, !475, !476, !477}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !472, file: !14, line: 124, baseType: !452, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !472, file: !14, line: 125, baseType: !452, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !472, file: !14, line: 128, baseType: !455, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !472, file: !14, line: 129, baseType: !455, size: 64, offset: 192)
!478 = !DILocalVariable(name: "flags", scope: !467, file: !3, line: 441, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !84, line: 147, baseType: !15)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 9728, elements: !481)
!481 = !{!482, !483}
!482 = !DISubrange(count: 76)
!483 = !DISubrange(count: 2)
!484 = !{i32 7, !"Dwarf Version", i32 5}
!485 = !{i32 2, !"Debug Info Version", i32 3}
!486 = !{i32 1, !"wchar_size", i32 4}
!487 = !{i32 7, !"PIC Level", i32 2}
!488 = !{i32 7, !"PIE Level", i32 2}
!489 = !{i32 7, !"uwtable", i32 2}
!490 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!491 = distinct !DISubprogram(name: "GetGeometry", scope: !3, file: !3, line: 95, type: !492, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !496)
!492 = !DISubroutineType(types: !493)
!493 = !{!479, !8, !494, !494, !495, !495}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!496 = !{!497, !498, !499, !500, !501, !502, !503, !507, !508, !509, !510}
!497 = !DILocalVariable(name: "geometry", arg: 1, scope: !491, file: !3, line: 95, type: !8)
!498 = !DILocalVariable(name: "x", arg: 2, scope: !491, file: !3, line: 95, type: !494)
!499 = !DILocalVariable(name: "y", arg: 3, scope: !491, file: !3, line: 96, type: !494)
!500 = !DILocalVariable(name: "width", arg: 4, scope: !491, file: !3, line: 96, type: !495)
!501 = !DILocalVariable(name: "height", arg: 5, scope: !491, file: !3, line: 96, type: !495)
!502 = !DILocalVariable(name: "p", scope: !491, file: !3, line: 99, type: !6)
!503 = !DILocalVariable(name: "pedantic_geometry", scope: !491, file: !3, line: 100, type: !504)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 4096)
!507 = !DILocalVariable(name: "q", scope: !491, file: !3, line: 101, type: !6)
!508 = !DILocalVariable(name: "value", scope: !491, file: !3, line: 104, type: !451)
!509 = !DILocalVariable(name: "c", scope: !491, file: !3, line: 107, type: !448)
!510 = !DILocalVariable(name: "flags", scope: !491, file: !3, line: 110, type: !479)
!511 = !DILocation(line: 0, scope: !491)
!512 = !DILocation(line: 98, column: 3, scope: !491)
!513 = !DILocation(line: 100, column: 5, scope: !491)
!514 = !DILocation(line: 116, column: 17, scope: !515)
!515 = distinct !DILexicalBlock(scope: !491, file: !3, line: 116, column: 7)
!516 = !DILocation(line: 116, column: 35, scope: !515)
!517 = !DILocation(line: 116, column: 39, scope: !515)
!518 = !{!519, !519, i64 0}
!519 = !{!"omnipotent char", !520, i64 0}
!520 = !{!"Simple C/C++ TBAA"}
!521 = !DILocation(line: 116, column: 49, scope: !515)
!522 = !DILocation(line: 116, column: 7, scope: !491)
!523 = !DILocation(line: 118, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !491, file: !3, line: 118, column: 7)
!525 = !DILocation(line: 118, column: 24, scope: !524)
!526 = !DILocation(line: 118, column: 7, scope: !491)
!527 = !DILocation(line: 120, column: 10, scope: !491)
!528 = !DILocation(line: 121, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !491, file: !3, line: 121, column: 3)
!530 = !{!531, !531, i64 0}
!531 = !{!"any pointer", !519, i64 0}
!532 = !DILocation(line: 121, column: 29, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !3, line: 121, column: 3)
!534 = !DILocation(line: 121, column: 32, scope: !533)
!535 = !DILocation(line: 121, column: 3, scope: !529)
!536 = !DILocation(line: 123, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !3, line: 123, column: 9)
!538 = distinct !DILexicalBlock(scope: !533, file: !3, line: 122, column: 3)
!539 = !{!540, !540, i64 0}
!540 = !{!"short", !519, i64 0}
!541 = !DILocation(line: 123, column: 45, scope: !537)
!542 = !DILocation(line: 123, column: 9, scope: !538)
!543 = !DILocation(line: 125, column: 36, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !3, line: 124, column: 7)
!545 = !DILocation(line: 125, column: 16, scope: !544)
!546 = !DILocation(line: 121, column: 30, scope: !533)
!547 = distinct !{!547, !535, !548, !549, !550}
!548 = !DILocation(line: 204, column: 3, scope: !529)
!549 = !{!"llvm.loop.mustprogress"}
!550 = !{!"llvm.loop.unroll.disable"}
!551 = !DILocation(line: 129, column: 5, scope: !538)
!552 = !DILocation(line: 133, column: 14, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 132, column: 7)
!554 = distinct !DILexicalBlock(scope: !538, file: !3, line: 130, column: 5)
!555 = !DILocation(line: 134, column: 36, scope: !553)
!556 = !DILocation(line: 134, column: 16, scope: !553)
!557 = !DILocation(line: 135, column: 9, scope: !553)
!558 = !DILocation(line: 139, column: 14, scope: !559)
!559 = distinct !DILexicalBlock(scope: !554, file: !3, line: 138, column: 7)
!560 = !DILocation(line: 140, column: 36, scope: !559)
!561 = !DILocation(line: 140, column: 16, scope: !559)
!562 = !DILocation(line: 141, column: 9, scope: !559)
!563 = !DILocation(line: 145, column: 14, scope: !564)
!564 = distinct !DILexicalBlock(scope: !554, file: !3, line: 144, column: 7)
!565 = !DILocation(line: 146, column: 36, scope: !564)
!566 = !DILocation(line: 146, column: 16, scope: !564)
!567 = !DILocation(line: 147, column: 9, scope: !564)
!568 = !DILocation(line: 151, column: 14, scope: !569)
!569 = distinct !DILexicalBlock(scope: !554, file: !3, line: 150, column: 7)
!570 = !DILocation(line: 152, column: 36, scope: !569)
!571 = !DILocation(line: 152, column: 16, scope: !569)
!572 = !DILocation(line: 153, column: 9, scope: !569)
!573 = !DILocation(line: 157, column: 14, scope: !574)
!574 = distinct !DILexicalBlock(scope: !554, file: !3, line: 156, column: 7)
!575 = !DILocation(line: 158, column: 36, scope: !574)
!576 = !DILocation(line: 158, column: 16, scope: !574)
!577 = !DILocation(line: 159, column: 9, scope: !574)
!578 = !DILocation(line: 163, column: 14, scope: !579)
!579 = distinct !DILexicalBlock(scope: !554, file: !3, line: 162, column: 7)
!580 = !DILocation(line: 164, column: 36, scope: !579)
!581 = !DILocation(line: 164, column: 16, scope: !579)
!582 = !DILocation(line: 165, column: 9, scope: !579)
!583 = !DILocation(line: 170, column: 36, scope: !584)
!584 = distinct !DILexicalBlock(scope: !554, file: !3, line: 169, column: 7)
!585 = !DILocation(line: 170, column: 16, scope: !584)
!586 = !DILocation(line: 171, column: 9, scope: !584)
!587 = !DILocation(line: 176, column: 14, scope: !588)
!588 = distinct !DILexicalBlock(scope: !554, file: !3, line: 175, column: 7)
!589 = !DILocation(line: 177, column: 10, scope: !588)
!590 = !DILocation(line: 178, column: 9, scope: !588)
!591 = !DILocation(line: 198, column: 10, scope: !592)
!592 = distinct !DILexicalBlock(scope: !554, file: !3, line: 197, column: 7)
!593 = !DILocation(line: 199, column: 9, scope: !592)
!594 = !DILocation(line: 209, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !491, file: !3, line: 209, column: 7)
!596 = !DILocation(line: 208, column: 4, scope: !491)
!597 = !DILocation(line: 209, column: 10, scope: !595)
!598 = !DILocation(line: 209, column: 7, scope: !491)
!599 = !DILocation(line: 211, column: 4, scope: !491)
!600 = !DILocalVariable(name: "string", arg: 1, scope: !601, file: !602, line: 42, type: !605)
!601 = distinct !DISubprogram(name: "StringToDouble", scope: !602, file: !602, line: 42, type: !603, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !607)
!602 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!603 = !DISubroutineType(types: !604)
!604 = !{!451, !605, !606}
!605 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!606 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !460)
!607 = !{!600, !608}
!608 = !DILocalVariable(name: "sentinal", arg: 2, scope: !601, file: !602, line: 43, type: !606)
!609 = !DILocation(line: 0, scope: !601, inlinedAt: !610)
!610 = distinct !DILocation(line: 212, column: 9, scope: !491)
!611 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !610)
!612 = !DILocation(line: 214, column: 22, scope: !613)
!613 = distinct !DILexicalBlock(scope: !491, file: !3, line: 214, column: 7)
!614 = !DILocation(line: 214, column: 7, scope: !613)
!615 = !DILocation(line: 214, column: 32, scope: !613)
!616 = !DILocation(line: 214, column: 7, scope: !491)
!617 = !DILocation(line: 215, column: 27, scope: !613)
!618 = !DILocation(line: 215, column: 20, scope: !613)
!619 = !DILocation(line: 215, column: 5, scope: !613)
!620 = !DILocation(line: 216, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !491, file: !3, line: 216, column: 7)
!622 = !DILocation(line: 216, column: 8, scope: !621)
!623 = !DILocation(line: 216, column: 19, scope: !621)
!624 = !DILocation(line: 218, column: 33, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 217, column: 5)
!626 = !DILocation(line: 218, column: 32, scope: !625)
!627 = !DILocation(line: 219, column: 22, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 219, column: 11)
!629 = !DILocation(line: 224, column: 12, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !3, line: 220, column: 9)
!631 = !DILocation(line: 225, column: 15, scope: !632)
!632 = distinct !DILexicalBlock(scope: !630, file: !3, line: 225, column: 15)
!633 = !DILocation(line: 225, column: 40, scope: !632)
!634 = !DILocation(line: 0, scope: !632)
!635 = !DILocation(line: 225, column: 15, scope: !630)
!636 = !DILocation(line: 226, column: 29, scope: !632)
!637 = !DILocation(line: 226, column: 13, scope: !632)
!638 = !DILocation(line: 0, scope: !601, inlinedAt: !639)
!639 = distinct !DILocation(line: 228, column: 35, scope: !632)
!640 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !639)
!641 = !DILocation(line: 228, column: 55, scope: !632)
!642 = !DILocation(line: 228, column: 29, scope: !632)
!643 = !DILocation(line: 228, column: 20, scope: !632)
!644 = !{!645, !645, i64 0}
!645 = !{!"long", !519, i64 0}
!646 = !DILocation(line: 229, column: 15, scope: !647)
!647 = distinct !DILexicalBlock(scope: !630, file: !3, line: 229, column: 15)
!648 = !DILocation(line: 229, column: 20, scope: !647)
!649 = !DILocation(line: 229, column: 17, scope: !647)
!650 = !DILocation(line: 229, column: 15, scope: !630)
!651 = !DILocation(line: 233, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !491, file: !3, line: 233, column: 7)
!653 = !DILocation(line: 233, column: 9, scope: !652)
!654 = !DILocation(line: 233, column: 19, scope: !652)
!655 = !DILocation(line: 238, column: 12, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 237, column: 9)
!657 = distinct !DILexicalBlock(scope: !658, file: !3, line: 236, column: 11)
!658 = distinct !DILexicalBlock(scope: !652, file: !3, line: 234, column: 5)
!659 = !DILocation(line: 239, column: 16, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !3, line: 239, column: 15)
!661 = !DILocation(line: 239, column: 27, scope: !660)
!662 = !DILocation(line: 244, column: 16, scope: !663)
!663 = distinct !DILexicalBlock(scope: !660, file: !3, line: 240, column: 13)
!664 = !DILocation(line: 0, scope: !601, inlinedAt: !665)
!665 = distinct !DILocation(line: 245, column: 38, scope: !663)
!666 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !665)
!667 = !DILocation(line: 245, column: 58, scope: !663)
!668 = !DILocation(line: 245, column: 32, scope: !663)
!669 = !DILocation(line: 245, column: 23, scope: !663)
!670 = !DILocation(line: 245, column: 22, scope: !663)
!671 = !DILocation(line: 246, column: 19, scope: !672)
!672 = distinct !DILexicalBlock(scope: !663, file: !3, line: 246, column: 19)
!673 = !DILocation(line: 246, column: 24, scope: !672)
!674 = !DILocation(line: 246, column: 21, scope: !672)
!675 = !DILocation(line: 246, column: 19, scope: !663)
!676 = !DILocation(line: 251, column: 8, scope: !677)
!677 = distinct !DILexicalBlock(scope: !491, file: !3, line: 251, column: 7)
!678 = !DILocation(line: 251, column: 9, scope: !677)
!679 = !DILocation(line: 251, column: 19, scope: !677)
!680 = !DILocation(line: 256, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !677, file: !3, line: 252, column: 5)
!682 = !DILocation(line: 256, column: 15, scope: !681)
!683 = !DILocation(line: 256, column: 16, scope: !681)
!684 = !DILocation(line: 256, column: 26, scope: !681)
!685 = !DILocation(line: 258, column: 16, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 258, column: 13)
!687 = distinct !DILexicalBlock(scope: !681, file: !3, line: 257, column: 7)
!688 = !DILocation(line: 258, column: 13, scope: !687)
!689 = !DILocation(line: 260, column: 10, scope: !687)
!690 = distinct !{!690, !680, !691, !549, !550}
!691 = !DILocation(line: 261, column: 7, scope: !681)
!692 = !DILocation(line: 262, column: 8, scope: !681)
!693 = !DILocation(line: 0, scope: !601, inlinedAt: !694)
!694 = distinct !DILocation(line: 263, column: 25, scope: !681)
!695 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !694)
!696 = !DILocation(line: 263, column: 45, scope: !681)
!697 = !DILocation(line: 263, column: 20, scope: !681)
!698 = !DILocation(line: 263, column: 10, scope: !681)
!699 = !DILocation(line: 263, column: 9, scope: !681)
!700 = !DILocation(line: 264, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !681, file: !3, line: 264, column: 11)
!702 = !DILocation(line: 264, column: 16, scope: !701)
!703 = !DILocation(line: 264, column: 13, scope: !701)
!704 = !DILocation(line: 264, column: 11, scope: !681)
!705 = !DILocation(line: 266, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !3, line: 265, column: 9)
!707 = !DILocation(line: 267, column: 22, scope: !708)
!708 = distinct !DILexicalBlock(scope: !706, file: !3, line: 267, column: 15)
!709 = !DILocation(line: 267, column: 35, scope: !708)
!710 = !DILocation(line: 267, column: 15, scope: !706)
!711 = !DILocation(line: 268, column: 17, scope: !708)
!712 = !DILocation(line: 268, column: 15, scope: !708)
!713 = !DILocation(line: 268, column: 13, scope: !708)
!714 = !DILocation(line: 271, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !491, file: !3, line: 271, column: 7)
!716 = !DILocation(line: 271, column: 8, scope: !715)
!717 = !DILocation(line: 271, column: 19, scope: !715)
!718 = !DILocation(line: 276, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !3, line: 272, column: 5)
!720 = !DILocation(line: 276, column: 15, scope: !719)
!721 = !DILocation(line: 276, column: 16, scope: !719)
!722 = !DILocation(line: 276, column: 26, scope: !719)
!723 = !DILocation(line: 278, column: 16, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 278, column: 13)
!725 = distinct !DILexicalBlock(scope: !719, file: !3, line: 277, column: 7)
!726 = !DILocation(line: 278, column: 13, scope: !725)
!727 = !DILocation(line: 280, column: 10, scope: !725)
!728 = distinct !{!728, !718, !729, !549, !550}
!729 = !DILocation(line: 281, column: 7, scope: !719)
!730 = !DILocation(line: 282, column: 8, scope: !719)
!731 = !DILocation(line: 0, scope: !601, inlinedAt: !732)
!732 = distinct !DILocation(line: 283, column: 25, scope: !719)
!733 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !732)
!734 = !DILocation(line: 283, column: 45, scope: !719)
!735 = !DILocation(line: 283, column: 20, scope: !719)
!736 = !DILocation(line: 283, column: 10, scope: !719)
!737 = !DILocation(line: 283, column: 9, scope: !719)
!738 = !DILocation(line: 284, column: 11, scope: !739)
!739 = distinct !DILexicalBlock(scope: !719, file: !3, line: 284, column: 11)
!740 = !DILocation(line: 284, column: 16, scope: !739)
!741 = !DILocation(line: 284, column: 13, scope: !739)
!742 = !DILocation(line: 284, column: 11, scope: !719)
!743 = !DILocation(line: 286, column: 16, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !3, line: 285, column: 9)
!745 = !DILocation(line: 287, column: 22, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !3, line: 287, column: 15)
!747 = !DILocation(line: 287, column: 35, scope: !746)
!748 = !DILocation(line: 287, column: 15, scope: !744)
!749 = !DILocation(line: 288, column: 17, scope: !746)
!750 = !DILocation(line: 288, column: 15, scope: !746)
!751 = !DILocation(line: 288, column: 13, scope: !746)
!752 = !DILocation(line: 291, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !491, file: !3, line: 291, column: 7)
!754 = !DILocation(line: 291, column: 30, scope: !753)
!755 = !DILocation(line: 291, column: 7, scope: !491)
!756 = !DILocation(line: 293, column: 43, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 293, column: 11)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 292, column: 5)
!759 = !DILocation(line: 295, column: 20, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !3, line: 294, column: 9)
!761 = !DILocation(line: 295, column: 18, scope: !760)
!762 = !DILocation(line: 296, column: 16, scope: !760)
!763 = !DILocation(line: 297, column: 9, scope: !760)
!764 = !DILocation(line: 298, column: 43, scope: !765)
!765 = distinct !DILexicalBlock(scope: !758, file: !3, line: 298, column: 11)
!766 = !DILocation(line: 299, column: 17, scope: !765)
!767 = !DILocation(line: 299, column: 15, scope: !765)
!768 = !DILocation(line: 299, column: 9, scope: !765)
!769 = !DILocation(line: 315, column: 1, scope: !491)
!770 = !DISubprogram(name: "CopyMagickString", scope: !771, file: !771, line: 78, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!771 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!772 = !DISubroutineType(types: !773)
!773 = !{!452, !6, !8, !774}
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!775 = !{}
!776 = !DISubprogram(name: "LocaleNCompare", scope: !771, file: !771, line: 67, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!777 = !DISubroutineType(types: !778)
!778 = !{!448, !8, !8, !774}
!779 = !DILocation(line: 0, scope: !2)
!780 = !DILocation(line: 432, column: 10, scope: !2)
!781 = !DILocation(line: 433, column: 8, scope: !2)
!782 = !DILocation(line: 434, column: 3, scope: !470)
!783 = !DILocation(line: 435, column: 45, scope: !468)
!784 = !DILocation(line: 435, column: 9, scope: !468)
!785 = !DILocation(line: 435, column: 70, scope: !468)
!786 = !DILocation(line: 435, column: 9, scope: !469)
!787 = !DILocation(line: 437, column: 9, scope: !467)
!788 = !DILocation(line: 438, column: 11, scope: !467)
!789 = !DILocation(line: 446, column: 38, scope: !467)
!790 = !DILocation(line: 446, column: 16, scope: !467)
!791 = !DILocation(line: 448, column: 11, scope: !467)
!792 = !DILocation(line: 447, column: 58, scope: !467)
!793 = !DILocation(line: 447, column: 16, scope: !467)
!794 = !DILocation(line: 449, column: 42, scope: !467)
!795 = !DILocation(line: 449, column: 54, scope: !467)
!796 = !DILocation(line: 450, column: 21, scope: !467)
!797 = !DILocation(line: 449, column: 15, scope: !467)
!798 = !DILocation(line: 0, scope: !467)
!799 = !DILocation(line: 451, column: 20, scope: !800)
!800 = distinct !DILexicalBlock(scope: !467, file: !3, line: 451, column: 13)
!801 = !DILocation(line: 451, column: 36, scope: !800)
!802 = !DILocation(line: 451, column: 13, scope: !467)
!803 = !DILocation(line: 452, column: 18, scope: !800)
!804 = !DILocation(line: 452, column: 11, scope: !800)
!805 = !DILocation(line: 454, column: 7, scope: !468)
!806 = !DILocation(line: 434, column: 46, scope: !469)
!807 = !DILocation(line: 434, column: 14, scope: !469)
!808 = !DILocation(line: 434, column: 13, scope: !469)
!809 = !DILocation(line: 434, column: 27, scope: !469)
!810 = distinct !{!810, !782, !811, !549, !550}
!811 = !DILocation(line: 454, column: 7, scope: !470)
!812 = !DILocation(line: 455, column: 3, scope: !2)
!813 = !DISubprogram(name: "LogMagickEvent", scope: !59, file: !59, line: 83, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!814 = !DISubroutineType(types: !815)
!815 = !{!816, !817, !8, !8, !774, !8, null}
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !84, line: 215, baseType: !83)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !59, line: 58, baseType: !58)
!819 = !DISubprogram(name: "AcquireString", scope: !771, file: !771, line: 43, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!820 = !DISubprogram(name: "ConcatenateMagickString", scope: !771, file: !771, line: 76, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!821 = distinct !DISubprogram(name: "GravityAdjustGeometry", scope: !3, file: !3, line: 488, type: !822, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !827)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !774, !774, !824, !826}
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !14, line: 91, baseType: !88)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!827 = !{!828, !829, !830, !831}
!828 = !DILocalVariable(name: "width", arg: 1, scope: !821, file: !3, line: 488, type: !774)
!829 = !DILocalVariable(name: "height", arg: 2, scope: !821, file: !3, line: 489, type: !774)
!830 = !DILocalVariable(name: "gravity", arg: 3, scope: !821, file: !3, line: 489, type: !824)
!831 = !DILocalVariable(name: "region", arg: 4, scope: !821, file: !3, line: 489, type: !826)
!832 = !DILocation(line: 0, scope: !821)
!833 = !DILocation(line: 491, column: 15, scope: !834)
!834 = distinct !DILexicalBlock(scope: !821, file: !3, line: 491, column: 7)
!835 = !{!836, !645, i64 8}
!836 = !{!"_RectangleInfo", !645, i64 0, !645, i64 8, !645, i64 16, !645, i64 24}
!837 = !DILocation(line: 491, column: 22, scope: !834)
!838 = !DILocation(line: 491, column: 7, scope: !821)
!839 = !DILocation(line: 492, column: 19, scope: !834)
!840 = !DILocation(line: 492, column: 5, scope: !834)
!841 = !DILocation(line: 493, column: 15, scope: !842)
!842 = distinct !DILexicalBlock(scope: !821, file: !3, line: 493, column: 7)
!843 = !{!836, !645, i64 0}
!844 = !DILocation(line: 493, column: 21, scope: !842)
!845 = !DILocation(line: 493, column: 7, scope: !821)
!846 = !DILocation(line: 494, column: 18, scope: !842)
!847 = !DILocation(line: 494, column: 5, scope: !842)
!848 = !DILocation(line: 495, column: 3, scope: !821)
!849 = !DILocation(line: 501, column: 56, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !3, line: 500, column: 5)
!851 = distinct !DILexicalBlock(scope: !821, file: !3, line: 496, column: 3)
!852 = !{!836, !645, i64 16}
!853 = !DILocation(line: 501, column: 47, scope: !850)
!854 = !DILocation(line: 501, column: 16, scope: !850)
!855 = !DILocation(line: 502, column: 7, scope: !850)
!856 = !DILocation(line: 509, column: 34, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !3, line: 508, column: 5)
!858 = !DILocation(line: 509, column: 50, scope: !857)
!859 = !DILocation(line: 509, column: 36, scope: !857)
!860 = !DILocation(line: 509, column: 15, scope: !857)
!861 = !DILocation(line: 509, column: 16, scope: !857)
!862 = !DILocation(line: 510, column: 7, scope: !857)
!863 = !DILocation(line: 519, column: 3, scope: !821)
!864 = !DILocation(line: 525, column: 58, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 524, column: 5)
!866 = distinct !DILexicalBlock(scope: !821, file: !3, line: 520, column: 3)
!867 = !{!836, !645, i64 24}
!868 = !DILocation(line: 525, column: 49, scope: !865)
!869 = !DILocation(line: 525, column: 16, scope: !865)
!870 = !DILocation(line: 526, column: 7, scope: !865)
!871 = !DILocation(line: 533, column: 35, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !3, line: 532, column: 5)
!873 = !DILocation(line: 533, column: 52, scope: !872)
!874 = !DILocation(line: 533, column: 37, scope: !872)
!875 = !DILocation(line: 533, column: 15, scope: !872)
!876 = !DILocation(line: 533, column: 16, scope: !872)
!877 = !DILocation(line: 534, column: 7, scope: !872)
!878 = !DILocation(line: 543, column: 3, scope: !821)
!879 = distinct !DISubprogram(name: "IsGeometry", scope: !3, file: !3, line: 569, type: !880, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{!816, !8}
!882 = !{!883, !884, !893}
!883 = !DILocalVariable(name: "geometry", arg: 1, scope: !879, file: !3, line: 569, type: !8)
!884 = !DILocalVariable(name: "geometry_info", scope: !879, file: !3, line: 572, type: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !14, line: 112, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !14, line: 104, size: 320, elements: !887)
!887 = !{!888, !889, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !886, file: !14, line: 107, baseType: !451, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !886, file: !14, line: 108, baseType: !451, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !886, file: !14, line: 109, baseType: !451, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !886, file: !14, line: 110, baseType: !451, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !886, file: !14, line: 111, baseType: !451, size: 64, offset: 256)
!893 = !DILocalVariable(name: "flags", scope: !879, file: !3, line: 575, type: !479)
!894 = !DILocation(line: 0, scope: !879)
!895 = !DILocation(line: 571, column: 3, scope: !879)
!896 = !DILocation(line: 572, column: 5, scope: !879)
!897 = !DILocation(line: 577, column: 16, scope: !898)
!898 = distinct !DILexicalBlock(scope: !879, file: !3, line: 577, column: 7)
!899 = !DILocation(line: 577, column: 7, scope: !879)
!900 = !DILocation(line: 579, column: 9, scope: !879)
!901 = !DILocation(line: 580, column: 16, scope: !879)
!902 = !DILocation(line: 580, column: 10, scope: !879)
!903 = !DILocation(line: 580, column: 3, scope: !879)
!904 = !DILocation(line: 581, column: 1, scope: !879)
!905 = distinct !DISubprogram(name: "ParseGeometry", scope: !3, file: !3, line: 812, type: !906, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !909)
!906 = !DISubroutineType(types: !907)
!907 = !{!479, !8, !908}
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917}
!910 = !DILocalVariable(name: "geometry", arg: 1, scope: !905, file: !3, line: 812, type: !8)
!911 = !DILocalVariable(name: "geometry_info", arg: 2, scope: !905, file: !3, line: 813, type: !908)
!912 = !DILocalVariable(name: "p", scope: !905, file: !3, line: 816, type: !6)
!913 = !DILocalVariable(name: "pedantic_geometry", scope: !905, file: !3, line: 817, type: !504)
!914 = !DILocalVariable(name: "q", scope: !905, file: !3, line: 818, type: !6)
!915 = !DILocalVariable(name: "value", scope: !905, file: !3, line: 821, type: !451)
!916 = !DILocalVariable(name: "c", scope: !905, file: !3, line: 824, type: !448)
!917 = !DILocalVariable(name: "flags", scope: !905, file: !3, line: 827, type: !479)
!918 = !DILocation(line: 0, scope: !905)
!919 = !DILocation(line: 815, column: 3, scope: !905)
!920 = !DILocation(line: 817, column: 5, scope: !905)
!921 = !DILocation(line: 834, column: 17, scope: !922)
!922 = distinct !DILexicalBlock(scope: !905, file: !3, line: 834, column: 7)
!923 = !DILocation(line: 834, column: 35, scope: !922)
!924 = !DILocation(line: 834, column: 39, scope: !922)
!925 = !DILocation(line: 834, column: 49, scope: !922)
!926 = !DILocation(line: 834, column: 7, scope: !905)
!927 = !DILocation(line: 836, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !905, file: !3, line: 836, column: 7)
!929 = !DILocation(line: 836, column: 24, scope: !928)
!930 = !DILocation(line: 836, column: 7, scope: !905)
!931 = !DILocation(line: 838, column: 10, scope: !905)
!932 = !DILocation(line: 839, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !905, file: !3, line: 839, column: 3)
!934 = !DILocation(line: 839, column: 29, scope: !935)
!935 = distinct !DILexicalBlock(scope: !933, file: !3, line: 839, column: 3)
!936 = !DILocation(line: 839, column: 32, scope: !935)
!937 = !DILocation(line: 839, column: 3, scope: !933)
!938 = !DILocation(line: 841, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 841, column: 9)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 840, column: 3)
!941 = !DILocation(line: 841, column: 45, scope: !939)
!942 = !DILocation(line: 841, column: 9, scope: !940)
!943 = !DILocation(line: 843, column: 36, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 842, column: 7)
!945 = !DILocation(line: 843, column: 16, scope: !944)
!946 = !DILocation(line: 839, column: 30, scope: !935)
!947 = distinct !{!947, !937, !948, !549, !550}
!948 = !DILocation(line: 929, column: 3, scope: !933)
!949 = !DILocation(line: 847, column: 5, scope: !940)
!950 = !DILocation(line: 851, column: 14, scope: !951)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 850, column: 7)
!952 = distinct !DILexicalBlock(scope: !940, file: !3, line: 848, column: 5)
!953 = !DILocation(line: 852, column: 36, scope: !951)
!954 = !DILocation(line: 852, column: 16, scope: !951)
!955 = !DILocation(line: 853, column: 9, scope: !951)
!956 = !DILocation(line: 857, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 856, column: 7)
!958 = !DILocation(line: 858, column: 36, scope: !957)
!959 = !DILocation(line: 858, column: 16, scope: !957)
!960 = !DILocation(line: 859, column: 9, scope: !957)
!961 = !DILocation(line: 863, column: 14, scope: !962)
!962 = distinct !DILexicalBlock(scope: !952, file: !3, line: 862, column: 7)
!963 = !DILocation(line: 864, column: 36, scope: !962)
!964 = !DILocation(line: 864, column: 16, scope: !962)
!965 = !DILocation(line: 865, column: 9, scope: !962)
!966 = !DILocation(line: 869, column: 14, scope: !967)
!967 = distinct !DILexicalBlock(scope: !952, file: !3, line: 868, column: 7)
!968 = !DILocation(line: 870, column: 36, scope: !967)
!969 = !DILocation(line: 870, column: 16, scope: !967)
!970 = !DILocation(line: 871, column: 9, scope: !967)
!971 = !DILocation(line: 875, column: 14, scope: !972)
!972 = distinct !DILexicalBlock(scope: !952, file: !3, line: 874, column: 7)
!973 = !DILocation(line: 876, column: 36, scope: !972)
!974 = !DILocation(line: 876, column: 16, scope: !972)
!975 = !DILocation(line: 877, column: 9, scope: !972)
!976 = !DILocation(line: 881, column: 14, scope: !977)
!977 = distinct !DILexicalBlock(scope: !952, file: !3, line: 880, column: 7)
!978 = !DILocation(line: 882, column: 36, scope: !977)
!979 = !DILocation(line: 882, column: 16, scope: !977)
!980 = !DILocation(line: 883, column: 9, scope: !977)
!981 = !DILocation(line: 888, column: 36, scope: !982)
!982 = distinct !DILexicalBlock(scope: !952, file: !3, line: 887, column: 7)
!983 = !DILocation(line: 888, column: 16, scope: !982)
!984 = !DILocation(line: 889, column: 9, scope: !982)
!985 = !DILocation(line: 894, column: 14, scope: !986)
!986 = distinct !DILexicalBlock(scope: !952, file: !3, line: 893, column: 7)
!987 = !DILocation(line: 895, column: 10, scope: !986)
!988 = !DILocation(line: 896, column: 9, scope: !986)
!989 = !DILocation(line: 917, column: 10, scope: !990)
!990 = distinct !DILexicalBlock(scope: !952, file: !3, line: 916, column: 7)
!991 = !DILocation(line: 918, column: 9, scope: !990)
!992 = !DILocation(line: 922, column: 10, scope: !993)
!993 = distinct !DILexicalBlock(scope: !952, file: !3, line: 921, column: 7)
!994 = !DILocation(line: 923, column: 14, scope: !993)
!995 = !DILocation(line: 924, column: 9, scope: !993)
!996 = !DILocation(line: 934, column: 7, scope: !997)
!997 = distinct !DILexicalBlock(scope: !905, file: !3, line: 934, column: 7)
!998 = !DILocation(line: 933, column: 4, scope: !905)
!999 = !DILocation(line: 934, column: 10, scope: !997)
!1000 = !DILocation(line: 934, column: 7, scope: !905)
!1001 = !DILocation(line: 936, column: 4, scope: !905)
!1002 = !DILocation(line: 0, scope: !601, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 937, column: 9, scope: !905)
!1004 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1003)
!1005 = !DILocation(line: 938, column: 22, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !905, file: !3, line: 938, column: 7)
!1007 = !DILocation(line: 938, column: 7, scope: !1006)
!1008 = !DILocation(line: 938, column: 32, scope: !1006)
!1009 = !DILocation(line: 938, column: 7, scope: !905)
!1010 = !DILocation(line: 939, column: 27, scope: !1006)
!1011 = !DILocation(line: 939, column: 20, scope: !1006)
!1012 = !DILocation(line: 939, column: 5, scope: !1006)
!1013 = !DILocation(line: 940, column: 29, scope: !905)
!1014 = !DILocation(line: 940, column: 28, scope: !905)
!1015 = !DILocation(line: 941, column: 18, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !905, file: !3, line: 941, column: 7)
!1017 = !DILocation(line: 958, column: 5, scope: !905)
!1018 = !DILocation(line: 947, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 943, column: 5)
!1020 = !DILocation(line: 947, column: 8, scope: !1019)
!1021 = !DILocation(line: 948, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 948, column: 11)
!1023 = !DILocation(line: 948, column: 36, scope: !1022)
!1024 = !DILocation(line: 0, scope: !1022)
!1025 = !DILocation(line: 948, column: 11, scope: !1019)
!1026 = !DILocation(line: 949, column: 24, scope: !1022)
!1027 = !DILocation(line: 949, column: 15, scope: !1022)
!1028 = !DILocation(line: 949, column: 9, scope: !1022)
!1029 = !DILocation(line: 0, scope: !601, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 951, column: 15, scope: !1022)
!1031 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1030)
!1032 = !DILocation(line: 952, column: 11, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 952, column: 11)
!1034 = !DILocation(line: 952, column: 16, scope: !1033)
!1035 = !DILocation(line: 952, column: 13, scope: !1033)
!1036 = !DILocation(line: 952, column: 11, scope: !1019)
!1037 = !DILocation(line: 954, column: 16, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 953, column: 9)
!1039 = !DILocation(line: 955, column: 29, scope: !1038)
!1040 = !{!1041, !1042, i64 0}
!1041 = !{!"_GeometryInfo", !1042, i64 0, !1042, i64 8, !1042, i64 16, !1042, i64 24, !1042, i64 32}
!1042 = !{!"double", !519, i64 0}
!1043 = !DILocation(line: 956, column: 9, scope: !1038)
!1044 = !DILocation(line: 958, column: 4, scope: !905)
!1045 = !DILocation(line: 959, column: 28, scope: !905)
!1046 = !DILocation(line: 960, column: 18, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !905, file: !3, line: 960, column: 7)
!1048 = !DILocation(line: 967, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 962, column: 5)
!1050 = !DILocation(line: 0, scope: !1049)
!1051 = !DILocation(line: 967, column: 14, scope: !1049)
!1052 = !DILocation(line: 967, column: 50, scope: !1049)
!1053 = distinct !{!1053, !1048, !1054, !549, !550}
!1054 = !DILocation(line: 968, column: 10, scope: !1049)
!1055 = !DILocation(line: 969, column: 32, scope: !1049)
!1056 = !DILocation(line: 970, column: 23, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 970, column: 11)
!1058 = !DILocation(line: 970, column: 70, scope: !1057)
!1059 = !DILocation(line: 973, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 972, column: 9)
!1061 = !DILocation(line: 0, scope: !601, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 974, column: 17, scope: !1060)
!1063 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1062)
!1064 = !DILocation(line: 975, column: 15, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 975, column: 15)
!1066 = !DILocation(line: 975, column: 20, scope: !1065)
!1067 = !DILocation(line: 975, column: 17, scope: !1065)
!1068 = !DILocation(line: 975, column: 15, scope: !1060)
!1069 = !DILocation(line: 977, column: 20, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 976, column: 13)
!1071 = !DILocation(line: 978, column: 30, scope: !1070)
!1072 = !DILocation(line: 978, column: 35, scope: !1070)
!1073 = !{!1041, !1042, i64 8}
!1074 = !DILocation(line: 979, column: 13, scope: !1070)
!1075 = !DILocation(line: 982, column: 10, scope: !905)
!1076 = !DILocation(line: 982, column: 46, scope: !905)
!1077 = !DILocation(line: 982, column: 3, scope: !905)
!1078 = !DILocation(line: 983, column: 6, scope: !905)
!1079 = distinct !{!1079, !1077, !1078, !549, !550}
!1080 = !DILocation(line: 984, column: 19, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !905, file: !3, line: 984, column: 7)
!1082 = !DILocation(line: 990, column: 10, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 989, column: 11)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 985, column: 5)
!1085 = !DILocation(line: 990, column: 9, scope: !1083)
!1086 = !DILocation(line: 991, column: 7, scope: !1084)
!1087 = !DILocation(line: 991, column: 16, scope: !1084)
!1088 = !DILocation(line: 991, column: 15, scope: !1084)
!1089 = !DILocation(line: 991, column: 26, scope: !1084)
!1090 = !DILocation(line: 993, column: 18, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 993, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 992, column: 9)
!1093 = !DILocation(line: 993, column: 15, scope: !1092)
!1094 = !DILocation(line: 995, column: 12, scope: !1092)
!1095 = distinct !{!1095, !1086, !1096, !549, !550}
!1096 = !DILocation(line: 996, column: 9, scope: !1084)
!1097 = !DILocation(line: 997, column: 8, scope: !1084)
!1098 = !DILocation(line: 0, scope: !601, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 998, column: 13, scope: !1084)
!1100 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1099)
!1101 = !DILocation(line: 999, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 999, column: 11)
!1103 = !DILocation(line: 999, column: 16, scope: !1102)
!1104 = !DILocation(line: 999, column: 13, scope: !1102)
!1105 = !DILocation(line: 999, column: 11, scope: !1084)
!1106 = !DILocation(line: 1001, column: 16, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 1000, column: 9)
!1108 = !DILocation(line: 1002, column: 21, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 1002, column: 15)
!1110 = !DILocation(line: 1002, column: 34, scope: !1109)
!1111 = !DILocation(line: 1002, column: 15, scope: !1107)
!1112 = !DILocation(line: 1004, column: 26, scope: !1107)
!1113 = !DILocation(line: 1004, column: 28, scope: !1107)
!1114 = !{!1041, !1042, i64 16}
!1115 = !DILocation(line: 1005, column: 9, scope: !1107)
!1116 = !DILocation(line: 1006, column: 14, scope: !1084)
!1117 = !DILocation(line: 1006, column: 50, scope: !1084)
!1118 = !DILocation(line: 1006, column: 7, scope: !1084)
!1119 = !DILocation(line: 1007, column: 10, scope: !1084)
!1120 = distinct !{!1120, !1118, !1119, !549, !550}
!1121 = !DILocation(line: 1008, column: 23, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1008, column: 11)
!1123 = !DILocation(line: 1015, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 1014, column: 15)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1010, column: 9)
!1126 = !DILocation(line: 1015, column: 13, scope: !1124)
!1127 = !DILocation(line: 1016, column: 11, scope: !1125)
!1128 = !DILocation(line: 1016, column: 20, scope: !1125)
!1129 = !DILocation(line: 0, scope: !1084)
!1130 = !DILocation(line: 1016, column: 19, scope: !1125)
!1131 = !DILocation(line: 1016, column: 30, scope: !1125)
!1132 = !DILocation(line: 1018, column: 20, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1018, column: 17)
!1134 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 1017, column: 11)
!1135 = !DILocation(line: 1018, column: 17, scope: !1134)
!1136 = !DILocation(line: 1020, column: 14, scope: !1134)
!1137 = distinct !{!1137, !1127, !1138, !549, !550}
!1138 = !DILocation(line: 1021, column: 11, scope: !1125)
!1139 = !DILocation(line: 1022, column: 12, scope: !1125)
!1140 = !DILocation(line: 0, scope: !601, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 1023, column: 17, scope: !1125)
!1142 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1141)
!1143 = !DILocation(line: 1024, column: 15, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 1024, column: 15)
!1145 = !DILocation(line: 1024, column: 20, scope: !1144)
!1146 = !DILocation(line: 1024, column: 17, scope: !1144)
!1147 = !DILocation(line: 1024, column: 15, scope: !1125)
!1148 = !DILocation(line: 1026, column: 20, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 1025, column: 13)
!1150 = !DILocation(line: 1027, column: 25, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1027, column: 19)
!1152 = !DILocation(line: 1027, column: 39, scope: !1151)
!1153 = !DILocation(line: 1027, column: 19, scope: !1149)
!1154 = !DILocation(line: 1029, column: 30, scope: !1149)
!1155 = !DILocation(line: 1029, column: 33, scope: !1149)
!1156 = !{!1041, !1042, i64 24}
!1157 = !DILocation(line: 1030, column: 13, scope: !1149)
!1158 = !DILocation(line: 1032, column: 14, scope: !1084)
!1159 = !DILocation(line: 1032, column: 50, scope: !1084)
!1160 = !DILocation(line: 1032, column: 7, scope: !1084)
!1161 = !DILocation(line: 1033, column: 10, scope: !1084)
!1162 = distinct !{!1162, !1160, !1161, !549, !550}
!1163 = !DILocation(line: 1034, column: 23, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1034, column: 11)
!1165 = !DILocation(line: 1041, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1040, column: 15)
!1167 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 1036, column: 9)
!1168 = !DILocation(line: 1041, column: 13, scope: !1166)
!1169 = !DILocation(line: 1042, column: 11, scope: !1167)
!1170 = !DILocation(line: 1042, column: 20, scope: !1167)
!1171 = !DILocation(line: 1042, column: 19, scope: !1167)
!1172 = !DILocation(line: 1042, column: 30, scope: !1167)
!1173 = !DILocation(line: 1044, column: 20, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 1044, column: 17)
!1175 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1043, column: 11)
!1176 = !DILocation(line: 1044, column: 17, scope: !1175)
!1177 = !DILocation(line: 1046, column: 14, scope: !1175)
!1178 = distinct !{!1178, !1169, !1179, !549, !550}
!1179 = !DILocation(line: 1047, column: 11, scope: !1167)
!1180 = !DILocation(line: 1048, column: 12, scope: !1167)
!1181 = !DILocation(line: 0, scope: !601, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 1049, column: 17, scope: !1167)
!1183 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1182)
!1184 = !DILocation(line: 1050, column: 15, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1050, column: 15)
!1186 = !DILocation(line: 1050, column: 20, scope: !1185)
!1187 = !DILocation(line: 1050, column: 17, scope: !1185)
!1188 = !DILocation(line: 1050, column: 15, scope: !1167)
!1189 = !DILocation(line: 1052, column: 20, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 1051, column: 13)
!1191 = !DILocation(line: 1053, column: 25, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 1053, column: 19)
!1193 = !DILocation(line: 1053, column: 39, scope: !1192)
!1194 = !DILocation(line: 1053, column: 19, scope: !1190)
!1195 = !DILocation(line: 1055, column: 30, scope: !1190)
!1196 = !DILocation(line: 1055, column: 33, scope: !1190)
!1197 = !{!1041, !1042, i64 32}
!1198 = !DILocation(line: 1056, column: 13, scope: !1190)
!1199 = !DILocation(line: 1059, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1059, column: 7)
!1201 = !DILocation(line: 1059, column: 37, scope: !1200)
!1202 = !DILocation(line: 1059, column: 7, scope: !905)
!1203 = !DILocation(line: 1064, column: 42, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 1060, column: 5)
!1205 = !DILocation(line: 1064, column: 25, scope: !1204)
!1206 = !DILocation(line: 1065, column: 27, scope: !1204)
!1207 = !DILocation(line: 1066, column: 26, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 1066, column: 11)
!1209 = !DILocation(line: 1066, column: 29, scope: !1208)
!1210 = !DILocation(line: 1066, column: 11, scope: !1204)
!1211 = !DILocation(line: 1067, column: 29, scope: !1208)
!1212 = !DILocation(line: 1067, column: 9, scope: !1208)
!1213 = !DILocation(line: 1069, column: 35, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1069, column: 7)
!1215 = !DILocation(line: 1075, column: 43, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 1071, column: 5)
!1217 = !DILocation(line: 1075, column: 22, scope: !1216)
!1218 = !DILocation(line: 1075, column: 27, scope: !1216)
!1219 = !DILocation(line: 1076, column: 24, scope: !1216)
!1220 = !DILocation(line: 1078, column: 12, scope: !1216)
!1221 = !DILocation(line: 1079, column: 5, scope: !1216)
!1222 = !DILocation(line: 1080, column: 14, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1080, column: 7)
!1224 = !DILocation(line: 1080, column: 30, scope: !1223)
!1225 = !DILocation(line: 1080, column: 7, scope: !905)
!1226 = !DILocation(line: 1082, column: 43, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 1082, column: 11)
!1228 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 1081, column: 5)
!1229 = !DILocation(line: 1083, column: 45, scope: !1227)
!1230 = !DILocation(line: 1083, column: 24, scope: !1227)
!1231 = !DILocation(line: 1083, column: 29, scope: !1227)
!1232 = !DILocation(line: 1084, column: 43, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 1084, column: 11)
!1234 = !DILocation(line: 1085, column: 43, scope: !1233)
!1235 = !DILocation(line: 1085, column: 27, scope: !1233)
!1236 = !DILocation(line: 1085, column: 9, scope: !1233)
!1237 = !DILocation(line: 1100, column: 1, scope: !905)
!1238 = distinct !DISubprogram(name: "IsSceneGeometry", scope: !3, file: !3, line: 610, type: !1239, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1242)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!816, !8, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !816)
!1242 = !{!1243, !1244, !1245, !1246}
!1243 = !DILocalVariable(name: "geometry", arg: 1, scope: !1238, file: !3, line: 610, type: !8)
!1244 = !DILocalVariable(name: "pedantic", arg: 2, scope: !1238, file: !3, line: 611, type: !1241)
!1245 = !DILocalVariable(name: "p", scope: !1238, file: !3, line: 614, type: !6)
!1246 = !DILocalVariable(name: "value", scope: !1238, file: !3, line: 617, type: !451)
!1247 = !DILocation(line: 0, scope: !1238)
!1248 = !DILocation(line: 613, column: 3, scope: !1238)
!1249 = !DILocation(line: 619, column: 16, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 619, column: 7)
!1251 = !DILocation(line: 619, column: 7, scope: !1238)
!1252 = !DILocation(line: 621, column: 4, scope: !1238)
!1253 = !DILocation(line: 0, scope: !601, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 622, column: 9, scope: !1238)
!1255 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1254)
!1256 = !DILocation(line: 624, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 624, column: 7)
!1258 = !DILocation(line: 624, column: 9, scope: !1257)
!1259 = !DILocation(line: 624, column: 7, scope: !1238)
!1260 = !DILocation(line: 626, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 626, column: 7)
!1262 = !DILocation(line: 626, column: 43, scope: !1261)
!1263 = !DILocation(line: 626, column: 40, scope: !1261)
!1264 = !DILocation(line: 626, column: 7, scope: !1238)
!1265 = !DILocation(line: 628, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 628, column: 7)
!1267 = !DILocation(line: 628, column: 33, scope: !1266)
!1268 = !DILocation(line: 628, column: 37, scope: !1266)
!1269 = !DILocation(line: 628, column: 58, scope: !1266)
!1270 = !DILocation(line: 628, column: 7, scope: !1238)
!1271 = !DILocation(line: 630, column: 3, scope: !1238)
!1272 = !DILocation(line: 631, column: 1, scope: !1238)
!1273 = distinct !DISubprogram(name: "ParseAbsoluteGeometry", scope: !3, file: !3, line: 662, type: !1274, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!479, !8, !826}
!1276 = !{!1277, !1278, !1279}
!1277 = !DILocalVariable(name: "geometry", arg: 1, scope: !1273, file: !3, line: 662, type: !8)
!1278 = !DILocalVariable(name: "region_info", arg: 2, scope: !1273, file: !3, line: 663, type: !826)
!1279 = !DILocalVariable(name: "flags", scope: !1273, file: !3, line: 666, type: !479)
!1280 = !DILocation(line: 0, scope: !1273)
!1281 = !DILocation(line: 668, column: 44, scope: !1273)
!1282 = !DILocation(line: 668, column: 60, scope: !1273)
!1283 = !DILocation(line: 669, column: 39, scope: !1273)
!1284 = !DILocation(line: 668, column: 9, scope: !1273)
!1285 = !DILocation(line: 670, column: 3, scope: !1273)
!1286 = distinct !DISubprogram(name: "ParseAffineGeometry", scope: !3, file: !3, line: 703, type: !1287, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1316)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!479, !8, !1289, !1299}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "AffineMatrix", file: !14, line: 102, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_AffineMatrix", file: !14, line: 93, size: 384, elements: !1292)
!1292 = !{!1293, !1294, !1295, !1296, !1297, !1298}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !1291, file: !14, line: 96, baseType: !451, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !1291, file: !14, line: 97, baseType: !451, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ry", scope: !1291, file: !14, line: 98, baseType: !451, size: 64, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !1291, file: !14, line: 99, baseType: !451, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !1291, file: !14, line: 100, baseType: !451, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ty", scope: !1291, file: !14, line: 101, baseType: !451, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !84, line: 219, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !103, line: 102, size: 448, elements: !1302)
!1302 = !{!1303, !1305, !1306, !1307, !1308, !1309, !1310, !1315}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1301, file: !103, line: 105, baseType: !1304, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !103, line: 100, baseType: !102)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !1301, file: !103, line: 108, baseType: !448, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1301, file: !103, line: 111, baseType: !6, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1301, file: !103, line: 112, baseType: !6, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !1301, file: !103, line: 115, baseType: !447, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !1301, file: !103, line: 118, baseType: !816, size: 32, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1301, file: !103, line: 121, baseType: !1311, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !1313, line: 26, baseType: !1314)
!1313 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !1313, line: 25, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1301, file: !103, line: 124, baseType: !452, size: 64, offset: 384)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1317 = !DILocalVariable(name: "geometry", arg: 1, scope: !1286, file: !3, line: 703, type: !8)
!1318 = !DILocalVariable(name: "affine_matrix", arg: 2, scope: !1286, file: !3, line: 704, type: !1289)
!1319 = !DILocalVariable(name: "exception", arg: 3, scope: !1286, file: !3, line: 704, type: !1299)
!1320 = !DILocalVariable(name: "token", scope: !1286, file: !3, line: 707, type: !504)
!1321 = !DILocalVariable(name: "p", scope: !1286, file: !3, line: 710, type: !8)
!1322 = !DILocalVariable(name: "determinant", scope: !1286, file: !3, line: 713, type: !451)
!1323 = !DILocalVariable(name: "flags", scope: !1286, file: !3, line: 716, type: !479)
!1324 = !DILocalVariable(name: "i", scope: !1286, file: !3, line: 719, type: !455)
!1325 = !DILocation(line: 0, scope: !1286)
!1326 = !DILocation(line: 706, column: 3, scope: !1286)
!1327 = !DILocation(line: 707, column: 5, scope: !1286)
!1328 = !DILocation(line: 709, column: 3, scope: !1286)
!1329 = !DILocation(line: 721, column: 3, scope: !1286)
!1330 = !DILocation(line: 723, column: 4, scope: !1286)
!1331 = !DILocation(line: 724, column: 14, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 724, column: 3)
!1333 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 724, column: 3)
!1334 = !DILocation(line: 724, column: 17, scope: !1332)
!1335 = !DILocation(line: 724, column: 26, scope: !1332)
!1336 = !DILocation(line: 726, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 725, column: 3)
!1338 = !DILocation(line: 727, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 727, column: 9)
!1340 = !DILocation(line: 727, column: 16, scope: !1339)
!1341 = !DILocation(line: 727, column: 9, scope: !1337)
!1342 = !DILocation(line: 728, column: 22, scope: !1339)
!1343 = !DILocation(line: 728, column: 7, scope: !1339)
!1344 = !DILocation(line: 729, column: 5, scope: !1337)
!1345 = !DILocation(line: 0, scope: !601, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 733, column: 27, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 732, column: 7)
!1348 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 730, column: 5)
!1349 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1346)
!1350 = !DILocation(line: 733, column: 26, scope: !1347)
!1351 = !{!1352, !1042, i64 0}
!1352 = !{!"_AffineMatrix", !1042, i64 0, !1042, i64 8, !1042, i64 16, !1042, i64 24, !1042, i64 32, !1042, i64 40}
!1353 = !DILocation(line: 734, column: 9, scope: !1347)
!1354 = !DILocation(line: 0, scope: !601, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 738, column: 27, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 737, column: 7)
!1357 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1355)
!1358 = !DILocation(line: 738, column: 26, scope: !1356)
!1359 = !{!1352, !1042, i64 8}
!1360 = !DILocation(line: 739, column: 9, scope: !1356)
!1361 = !DILocation(line: 0, scope: !601, inlinedAt: !1362)
!1362 = distinct !DILocation(line: 743, column: 27, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 742, column: 7)
!1364 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1362)
!1365 = !DILocation(line: 743, column: 26, scope: !1363)
!1366 = !{!1352, !1042, i64 16}
!1367 = !DILocation(line: 744, column: 9, scope: !1363)
!1368 = !DILocation(line: 0, scope: !601, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 748, column: 27, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 747, column: 7)
!1371 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1369)
!1372 = !DILocation(line: 748, column: 26, scope: !1370)
!1373 = !{!1352, !1042, i64 24}
!1374 = !DILocation(line: 749, column: 9, scope: !1370)
!1375 = !DILocation(line: 0, scope: !601, inlinedAt: !1376)
!1376 = distinct !DILocation(line: 753, column: 27, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 752, column: 7)
!1378 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1376)
!1379 = !DILocation(line: 753, column: 26, scope: !1377)
!1380 = !{!1352, !1042, i64 32}
!1381 = !DILocation(line: 754, column: 14, scope: !1377)
!1382 = !DILocation(line: 755, column: 9, scope: !1377)
!1383 = !DILocation(line: 0, scope: !601, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 759, column: 27, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 758, column: 7)
!1386 = !DILocation(line: 45, column: 10, scope: !601, inlinedAt: !1384)
!1387 = !DILocation(line: 759, column: 26, scope: !1385)
!1388 = !{!1352, !1042, i64 40}
!1389 = !DILocation(line: 760, column: 14, scope: !1385)
!1390 = !DILocation(line: 761, column: 9, scope: !1385)
!1391 = !DILocation(line: 724, column: 39, scope: !1332)
!1392 = !DILocation(line: 724, column: 15, scope: !1332)
!1393 = distinct !{!1393, !1394, !1395, !549, !550}
!1394 = !DILocation(line: 724, column: 3, scope: !1333)
!1395 = !DILocation(line: 764, column: 3, scope: !1333)
!1396 = !DILocation(line: 722, column: 8, scope: !1286)
!1397 = !DILocation(line: 765, column: 31, scope: !1286)
!1398 = !DILocation(line: 765, column: 49, scope: !1286)
!1399 = !DILocation(line: 765, column: 67, scope: !1286)
!1400 = !DILocation(line: 766, column: 20, scope: !1286)
!1401 = !DILocation(line: 765, column: 51, scope: !1286)
!1402 = !DILocation(line: 767, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 767, column: 7)
!1404 = !DILocation(line: 767, column: 25, scope: !1403)
!1405 = !DILocation(line: 767, column: 7, scope: !1286)
!1406 = !DILocation(line: 768, column: 12, scope: !1403)
!1407 = !DILocation(line: 768, column: 5, scope: !1403)
!1408 = !DILocation(line: 771, column: 1, scope: !1286)
!1409 = !DILocation(line: 770, column: 3, scope: !1286)
!1410 = !DISubprogram(name: "GetAffineMatrix", scope: !1411, file: !1411, line: 388, type: !1412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!1411 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1289}
!1414 = !DISubprogram(name: "GetMagickToken", scope: !1415, file: !1415, line: 45, type: !1416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!1415 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !8, !1418, !6}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!1419 = !DISubprogram(name: "ThrowMagickException", scope: !103, file: !103, line: 156, type: !1420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!816, !1299, !8, !8, !774, !1422, !8, !8, null}
!1422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1304)
!1423 = distinct !DISubprogram(name: "ParseGravityGeometry", scope: !3, file: !3, line: 1139, type: !1424, scopeLine: 1141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1604)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!479, !1426, !8, !826, !1299}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !84, line: 221, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !243, line: 150, size: 105920, elements: !1430)
!1430 = !{!1431, !1433, !1435, !1437, !1438, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1456, !1457, !1458, !1459, !1460, !1474, !1476, !1477, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1493, !1495, !1497, !1498, !1500, !1502, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1518, !1533, !1545, !1546, !1547, !1548, !1552, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1565, !1566, !1575, !1576, !1578, !1579, !1580, !1581, !1582, !1583, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1593, !1594, !1595, !1596, !1597, !1601, !1603}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !1429, file: !243, line: 153, baseType: !1432, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !84, line: 209, baseType: !175)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1429, file: !243, line: 156, baseType: !1434, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !181, line: 61, baseType: !180)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !1429, file: !243, line: 159, baseType: !1436, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !218, line: 49, baseType: !217)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !1429, file: !243, line: 162, baseType: !452, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !1429, file: !243, line: 165, baseType: !1439, size: 32, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !243, line: 86, baseType: !242)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !1429, file: !243, line: 168, baseType: !816, size: 32, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !1429, file: !243, line: 169, baseType: !816, size: 32, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !1429, file: !243, line: 172, baseType: !452, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !1429, file: !243, line: 173, baseType: !452, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1429, file: !243, line: 174, baseType: !452, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !1429, file: !243, line: 175, baseType: !452, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !1429, file: !243, line: 178, baseType: !1447, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !404, line: 148, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !404, line: 131, size: 64, elements: !1450)
!1450 = !{!1451, !1453, !1454, !1455}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1449, file: !404, line: 143, baseType: !1452, size: 16)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !84, line: 93, baseType: !450)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1449, file: !404, line: 144, baseType: !1452, size: 16, offset: 16)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1449, file: !404, line: 145, baseType: !1452, size: 16, offset: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !1449, file: !404, line: 146, baseType: !1452, size: 16, offset: 48)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !1429, file: !243, line: 179, baseType: !1448, size: 64, offset: 640)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !1429, file: !243, line: 180, baseType: !1448, size: 64, offset: 704)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !1429, file: !243, line: 181, baseType: !1448, size: 64, offset: 768)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !1429, file: !243, line: 184, baseType: !451, size: 64, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !1429, file: !243, line: 187, baseType: !1461, size: 768, offset: 896)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !243, line: 128, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !243, line: 121, size: 768, elements: !1463)
!1463 = !{!1464, !1471, !1472, !1473}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !1462, file: !243, line: 124, baseType: !1465, size: 192)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !243, line: 101, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !243, line: 95, size: 192, elements: !1467)
!1467 = !{!1468, !1469, !1470}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1466, file: !243, line: 98, baseType: !451, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1466, file: !243, line: 99, baseType: !451, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !1466, file: !243, line: 100, baseType: !451, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !1462, file: !243, line: 125, baseType: !1465, size: 192, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !1462, file: !243, line: 126, baseType: !1465, size: 192, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !1462, file: !243, line: 127, baseType: !1465, size: 192, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !1429, file: !243, line: 190, baseType: !1475, size: 32, offset: 1664)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !255, line: 49, baseType: !254)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !1429, file: !243, line: 193, baseType: !447, size: 64, offset: 1728)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1429, file: !243, line: 196, baseType: !1478, size: 32, offset: 1792)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !243, line: 93, baseType: !262)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !1429, file: !243, line: 199, baseType: !6, size: 64, offset: 1856)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !1429, file: !243, line: 200, baseType: !6, size: 64, offset: 1920)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !1429, file: !243, line: 201, baseType: !6, size: 64, offset: 1984)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1429, file: !243, line: 204, baseType: !455, size: 64, offset: 2048)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !1429, file: !243, line: 207, baseType: !451, size: 64, offset: 2112)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !1429, file: !243, line: 208, baseType: !451, size: 64, offset: 2176)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1429, file: !243, line: 211, baseType: !471, size: 256, offset: 2240)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !1429, file: !243, line: 212, baseType: !471, size: 256, offset: 2496)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !1429, file: !243, line: 213, baseType: !471, size: 256, offset: 2752)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !1429, file: !243, line: 216, baseType: !451, size: 64, offset: 3008)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !1429, file: !243, line: 217, baseType: !451, size: 64, offset: 3072)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1429, file: !243, line: 218, baseType: !451, size: 64, offset: 3136)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1429, file: !243, line: 221, baseType: !1492, size: 32, offset: 3200)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !268, line: 66, baseType: !267)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !1429, file: !243, line: 224, baseType: !1494, size: 32, offset: 3232)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !243, line: 73, baseType: !302)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !1429, file: !243, line: 227, baseType: !1496, size: 32, offset: 3264)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !313, line: 35, baseType: !312)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !1429, file: !243, line: 230, baseType: !825, size: 32, offset: 3296)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !1429, file: !243, line: 233, baseType: !1499, size: 32, offset: 3328)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !319, line: 99, baseType: !318)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !1429, file: !243, line: 236, baseType: !1501, size: 32, offset: 3360)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !390, line: 32, baseType: !389)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !1429, file: !243, line: 239, baseType: !1503, size: 64, offset: 3392)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !1429, file: !243, line: 242, baseType: !452, size: 64, offset: 3456)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !1429, file: !243, line: 243, baseType: !452, size: 64, offset: 3520)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !1429, file: !243, line: 246, baseType: !455, size: 64, offset: 3584)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !1429, file: !243, line: 249, baseType: !452, size: 64, offset: 3648)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !1429, file: !243, line: 250, baseType: !452, size: 64, offset: 3712)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !1429, file: !243, line: 253, baseType: !455, size: 64, offset: 3776)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1429, file: !243, line: 256, baseType: !1511, size: 192, offset: 3840)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !1512, line: 68, baseType: !1513)
!1512 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !1512, line: 62, size: 192, elements: !1514)
!1514 = !{!1515, !1516, !1517}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !1513, file: !1512, line: 65, baseType: !451, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !1513, file: !1512, line: 66, baseType: !451, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !1513, file: !1512, line: 67, baseType: !451, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1429, file: !243, line: 259, baseType: !1519, size: 512, offset: 4032)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !398, line: 51, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !398, line: 40, size: 512, elements: !1521)
!1521 = !{!1522, !1529, !1530, !1532}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1520, file: !398, line: 43, baseType: !1523, size: 192)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !398, line: 38, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !398, line: 32, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1524, file: !398, line: 35, baseType: !451, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1524, file: !398, line: 36, baseType: !451, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1524, file: !398, line: 37, baseType: !451, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !1520, file: !398, line: 44, baseType: !1523, size: 192, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1520, file: !398, line: 47, baseType: !1531, size: 32, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !398, line: 30, baseType: !397)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1520, file: !398, line: 50, baseType: !452, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !1429, file: !243, line: 262, baseType: !1534, size: 64, offset: 4544)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !1535, line: 26, baseType: !1536)
!1535 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!816, !8, !1539, !1542, !447}
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !84, line: 150, baseType: !1541)
!1541 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !84, line: 151, baseType: !1544)
!1544 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1429, file: !243, line: 265, baseType: !447, size: 64, offset: 4608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1429, file: !243, line: 266, baseType: !447, size: 64, offset: 4672)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1429, file: !243, line: 267, baseType: !447, size: 64, offset: 4736)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !1429, file: !243, line: 270, baseType: !1549, size: 64, offset: 4800)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !218, line: 52, baseType: !1551)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !218, line: 51, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1429, file: !243, line: 273, baseType: !1553, size: 64, offset: 4864)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !84, line: 217, baseType: !1555)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !84, line: 217, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1429, file: !243, line: 276, baseType: !504, size: 32768, offset: 4928)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !1429, file: !243, line: 277, baseType: !504, size: 32768, offset: 37696)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !1429, file: !243, line: 278, baseType: !504, size: 32768, offset: 70464)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !1429, file: !243, line: 281, baseType: !452, size: 64, offset: 103232)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !1429, file: !243, line: 282, baseType: !452, size: 64, offset: 103296)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !1429, file: !243, line: 285, baseType: !1300, size: 448, offset: 103360)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1429, file: !243, line: 288, baseType: !816, size: 32, offset: 103808)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1429, file: !243, line: 291, baseType: !1564, size: 64, offset: 103872)
!1564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !455)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1429, file: !243, line: 294, baseType: !1311, size: 64, offset: 103936)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !1429, file: !243, line: 297, baseType: !1567, size: 256, offset: 104000)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !255, line: 40, baseType: !1568)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !255, line: 27, size: 256, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1574}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1568, file: !255, line: 30, baseType: !6, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1568, file: !255, line: 33, baseType: !452, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1568, file: !255, line: 36, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1568, file: !255, line: 39, baseType: !452, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !1429, file: !243, line: 298, baseType: !1567, size: 256, offset: 104256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !1429, file: !243, line: 299, baseType: !1577, size: 64, offset: 104512)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !1429, file: !243, line: 302, baseType: !452, size: 64, offset: 104576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1429, file: !243, line: 305, baseType: !452, size: 64, offset: 104640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1429, file: !243, line: 308, baseType: !1503, size: 64, offset: 104704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1429, file: !243, line: 309, baseType: !1503, size: 64, offset: 104768)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1429, file: !243, line: 310, baseType: !1503, size: 64, offset: 104832)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !1429, file: !243, line: 313, baseType: !1584, size: 32, offset: 104896)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !404, line: 47, baseType: !403)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !1429, file: !243, line: 316, baseType: !816, size: 32, offset: 104928)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !1429, file: !243, line: 319, baseType: !1448, size: 64, offset: 104960)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1429, file: !243, line: 322, baseType: !1503, size: 64, offset: 105024)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !1429, file: !243, line: 325, baseType: !471, size: 256, offset: 105088)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1429, file: !243, line: 328, baseType: !447, size: 64, offset: 105344)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !1429, file: !243, line: 329, baseType: !447, size: 64, offset: 105408)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1429, file: !243, line: 332, baseType: !1592, size: 32, offset: 105472)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !243, line: 61, baseType: !420)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !1429, file: !243, line: 335, baseType: !816, size: 32, offset: 105504)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1429, file: !243, line: 338, baseType: !1543, size: 64, offset: 105536)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !1429, file: !243, line: 341, baseType: !816, size: 32, offset: 105600)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1429, file: !243, line: 344, baseType: !452, size: 64, offset: 105664)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1429, file: !243, line: 347, baseType: !1598, size: 64, offset: 105728)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1599, line: 7, baseType: !1600)
!1599 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !458, line: 160, baseType: !459)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !1429, file: !243, line: 350, baseType: !1602, size: 32, offset: 105792)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !404, line: 79, baseType: !434)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !1429, file: !243, line: 353, baseType: !452, size: 64, offset: 105856)
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1615, !1616}
!1605 = !DILocalVariable(name: "image", arg: 1, scope: !1423, file: !3, line: 1139, type: !1426)
!1606 = !DILocalVariable(name: "geometry", arg: 2, scope: !1423, file: !3, line: 1140, type: !8)
!1607 = !DILocalVariable(name: "region_info", arg: 3, scope: !1423, file: !3, line: 1140, type: !826)
!1608 = !DILocalVariable(name: "exception", arg: 4, scope: !1423, file: !3, line: 1140, type: !1299)
!1609 = !DILocalVariable(name: "flags", scope: !1423, file: !3, line: 1143, type: !479)
!1610 = !DILocalVariable(name: "height", scope: !1423, file: !3, line: 1146, type: !452)
!1611 = !DILocalVariable(name: "width", scope: !1423, file: !3, line: 1147, type: !452)
!1612 = !DILocalVariable(name: "geometry_info", scope: !1613, file: !3, line: 1164, type: !885)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1162, column: 5)
!1614 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1161, column: 7)
!1615 = !DILocalVariable(name: "status", scope: !1613, file: !3, line: 1167, type: !479)
!1616 = !DILocalVariable(name: "scale", scope: !1613, file: !3, line: 1170, type: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !1411, line: 142, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !1411, line: 137, size: 128, elements: !1619)
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1618, file: !1411, line: 140, baseType: !451, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1618, file: !1411, line: 141, baseType: !451, size: 64, offset: 64)
!1622 = !DILocation(line: 0, scope: !1423)
!1623 = !DILocalVariable(name: "image", arg: 1, scope: !1624, file: !3, line: 1538, type: !1426)
!1624 = distinct !DISubprogram(name: "SetGeometry", scope: !3, file: !3, line: 1538, type: !1625, scopeLine: 1539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1627)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1426, !826}
!1627 = !{!1623, !1628}
!1628 = !DILocalVariable(name: "geometry", arg: 2, scope: !1624, file: !3, line: 1538, type: !826)
!1629 = !DILocation(line: 0, scope: !1624, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 1149, column: 3, scope: !1423)
!1631 = !DILocation(line: 1542, column: 14, scope: !1632, inlinedAt: !1630)
!1632 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1542, column: 7)
!1633 = !{!1634, !519, i64 12976}
!1634 = !{!"_Image", !519, i64 0, !519, i64 4, !519, i64 8, !645, i64 16, !519, i64 24, !519, i64 28, !519, i64 32, !645, i64 40, !645, i64 48, !645, i64 56, !645, i64 64, !531, i64 72, !1635, i64 80, !1635, i64 88, !1635, i64 96, !1042, i64 104, !1636, i64 112, !519, i64 208, !531, i64 216, !519, i64 224, !531, i64 232, !531, i64 240, !531, i64 248, !645, i64 256, !1042, i64 264, !1042, i64 272, !836, i64 280, !836, i64 312, !836, i64 344, !1042, i64 376, !1042, i64 384, !1042, i64 392, !519, i64 400, !519, i64 404, !519, i64 408, !519, i64 412, !519, i64 416, !519, i64 420, !531, i64 424, !645, i64 432, !645, i64 440, !645, i64 448, !645, i64 456, !645, i64 464, !645, i64 472, !1638, i64 480, !1639, i64 504, !531, i64 568, !531, i64 576, !531, i64 584, !531, i64 592, !531, i64 600, !531, i64 608, !519, i64 616, !519, i64 4712, !519, i64 8808, !645, i64 12904, !645, i64 12912, !1641, i64 12920, !519, i64 12976, !645, i64 12984, !531, i64 12992, !1643, i64 13000, !1643, i64 13032, !531, i64 13064, !645, i64 13072, !645, i64 13080, !531, i64 13088, !531, i64 13096, !531, i64 13104, !519, i64 13112, !519, i64 13116, !1635, i64 13120, !531, i64 13128, !836, i64 13136, !531, i64 13168, !531, i64 13176, !519, i64 13184, !519, i64 13188, !1644, i64 13192, !519, i64 13200, !645, i64 13208, !645, i64 13216, !519, i64 13224, !645, i64 13232}
!1635 = !{!"_PixelPacket", !540, i64 0, !540, i64 2, !540, i64 4, !540, i64 6}
!1636 = !{!"_ChromaticityInfo", !1637, i64 0, !1637, i64 24, !1637, i64 48, !1637, i64 72}
!1637 = !{!"_PrimaryInfo", !1042, i64 0, !1042, i64 8, !1042, i64 16}
!1638 = !{!"_ErrorInfo", !1042, i64 0, !1042, i64 8, !1042, i64 16}
!1639 = !{!"_TimerInfo", !1640, i64 0, !1640, i64 24, !519, i64 48, !645, i64 56}
!1640 = !{!"_Timer", !1042, i64 0, !1042, i64 8, !1042, i64 16}
!1641 = !{!"_ExceptionInfo", !519, i64 0, !1642, i64 4, !531, i64 8, !531, i64 16, !531, i64 24, !519, i64 32, !531, i64 40, !645, i64 48}
!1642 = !{!"int", !519, i64 0}
!1643 = !{!"_ProfileInfo", !531, i64 0, !645, i64 8, !531, i64 16, !645, i64 24}
!1644 = !{!"long long", !519, i64 0}
!1645 = !DILocation(line: 1542, column: 20, scope: !1632, inlinedAt: !1630)
!1646 = !DILocation(line: 1542, column: 7, scope: !1624, inlinedAt: !1630)
!1647 = !DILocation(line: 1543, column: 68, scope: !1632, inlinedAt: !1630)
!1648 = !DILocation(line: 1543, column: 12, scope: !1632, inlinedAt: !1630)
!1649 = !DILocation(line: 1543, column: 5, scope: !1632, inlinedAt: !1630)
!1650 = !DILocation(line: 1545, column: 10, scope: !1624, inlinedAt: !1630)
!1651 = !DILocation(line: 1546, column: 26, scope: !1624, inlinedAt: !1630)
!1652 = !{!1634, !645, i64 40}
!1653 = !DILocation(line: 1546, column: 18, scope: !1624, inlinedAt: !1630)
!1654 = !DILocation(line: 1547, column: 27, scope: !1624, inlinedAt: !1630)
!1655 = !{!1634, !645, i64 48}
!1656 = !DILocation(line: 1547, column: 13, scope: !1624, inlinedAt: !1630)
!1657 = !DILocation(line: 1547, column: 19, scope: !1624, inlinedAt: !1630)
!1658 = !DILocation(line: 1150, column: 14, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1150, column: 7)
!1660 = !DILocation(line: 1150, column: 19, scope: !1659)
!1661 = !{!1634, !645, i64 280}
!1662 = !DILocation(line: 1150, column: 25, scope: !1659)
!1663 = !DILocation(line: 1150, column: 7, scope: !1423)
!1664 = !DILocation(line: 1151, column: 23, scope: !1659)
!1665 = !DILocation(line: 1151, column: 5, scope: !1659)
!1666 = !DILocation(line: 1152, column: 19, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1152, column: 7)
!1668 = !{!1634, !645, i64 288}
!1669 = !DILocation(line: 1152, column: 26, scope: !1667)
!1670 = !DILocation(line: 1152, column: 7, scope: !1423)
!1671 = !DILocation(line: 1153, column: 24, scope: !1667)
!1672 = !DILocation(line: 1153, column: 5, scope: !1667)
!1673 = !DILocation(line: 0, scope: !1273, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 1154, column: 9, scope: !1423)
!1675 = !DILocation(line: 668, column: 44, scope: !1273, inlinedAt: !1674)
!1676 = !DILocation(line: 668, column: 60, scope: !1273, inlinedAt: !1674)
!1677 = !DILocation(line: 668, column: 9, scope: !1273, inlinedAt: !1674)
!1678 = !DILocation(line: 1155, column: 13, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1155, column: 7)
!1680 = !DILocation(line: 1155, column: 7, scope: !1423)
!1681 = !DILocation(line: 1157, column: 14, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 1156, column: 5)
!1683 = !DILocation(line: 1159, column: 7, scope: !1682)
!1684 = !DILocation(line: 1161, column: 14, scope: !1614)
!1685 = !DILocation(line: 1161, column: 30, scope: !1614)
!1686 = !DILocation(line: 1161, column: 7, scope: !1423)
!1687 = !DILocation(line: 1163, column: 7, scope: !1613)
!1688 = !DILocation(line: 1164, column: 9, scope: !1613)
!1689 = !DILocation(line: 1175, column: 18, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1175, column: 11)
!1691 = !{!1634, !519, i64 412}
!1692 = !DILocation(line: 1175, column: 26, scope: !1690)
!1693 = !DILocation(line: 1175, column: 11, scope: !1613)
!1694 = !DILocation(line: 1177, column: 14, scope: !1613)
!1695 = !DILocation(line: 0, scope: !1613)
!1696 = !DILocation(line: 1178, column: 29, scope: !1613)
!1697 = !DILocation(line: 1179, column: 19, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1179, column: 11)
!1699 = !DILocation(line: 1179, column: 31, scope: !1698)
!1700 = !DILocation(line: 1179, column: 11, scope: !1613)
!1701 = !DILocation(line: 1181, column: 29, scope: !1613)
!1702 = !DILocation(line: 1182, column: 19, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1182, column: 11)
!1704 = !DILocation(line: 1182, column: 33, scope: !1703)
!1705 = !DILocation(line: 1182, column: 11, scope: !1613)
!1706 = !DILocation(line: 1184, column: 57, scope: !1613)
!1707 = !DILocation(line: 1184, column: 50, scope: !1613)
!1708 = !DILocation(line: 1184, column: 49, scope: !1613)
!1709 = !DILocation(line: 1184, column: 64, scope: !1613)
!1710 = !DILocation(line: 1184, column: 71, scope: !1613)
!1711 = !DILocation(line: 1184, column: 35, scope: !1613)
!1712 = !DILocation(line: 1184, column: 26, scope: !1613)
!1713 = !DILocation(line: 1184, column: 25, scope: !1613)
!1714 = !DILocation(line: 1185, column: 58, scope: !1613)
!1715 = !DILocation(line: 1185, column: 51, scope: !1613)
!1716 = !DILocation(line: 1185, column: 50, scope: !1613)
!1717 = !DILocation(line: 1185, column: 62, scope: !1613)
!1718 = !DILocation(line: 1185, column: 69, scope: !1613)
!1719 = !DILocation(line: 1185, column: 36, scope: !1613)
!1720 = !DILocation(line: 1185, column: 27, scope: !1613)
!1721 = !DILocation(line: 1185, column: 26, scope: !1613)
!1722 = !DILocation(line: 1186, column: 5, scope: !1614)
!1723 = !DILocation(line: 1186, column: 5, scope: !1613)
!1724 = !DILocation(line: 1191, column: 23, scope: !1423)
!1725 = !DILocation(line: 1190, column: 22, scope: !1423)
!1726 = !DILocation(line: 1192, column: 13, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1192, column: 7)
!1728 = !DILocation(line: 1192, column: 7, scope: !1423)
!1729 = !DILocation(line: 1193, column: 36, scope: !1727)
!1730 = !DILocation(line: 1193, column: 51, scope: !1727)
!1731 = !DILocation(line: 1193, column: 42, scope: !1727)
!1732 = !DILocation(line: 1193, column: 5, scope: !1727)
!1733 = !DILocation(line: 1194, column: 14, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1194, column: 7)
!1735 = !DILocation(line: 1194, column: 7, scope: !1423)
!1736 = !DILocation(line: 1196, column: 47, scope: !1423)
!1737 = !DILocation(line: 0, scope: !821, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 1196, column: 3, scope: !1423)
!1739 = !DILocation(line: 491, column: 7, scope: !821, inlinedAt: !1738)
!1740 = !DILocation(line: 1195, column: 37, scope: !1734)
!1741 = !DILocation(line: 1195, column: 53, scope: !1734)
!1742 = !DILocation(line: 1195, column: 44, scope: !1734)
!1743 = !DILocation(line: 491, column: 22, scope: !834, inlinedAt: !1738)
!1744 = !DILocation(line: 1196, column: 32, scope: !1423)
!1745 = !DILocation(line: 1196, column: 59, scope: !1423)
!1746 = !DILocation(line: 493, column: 21, scope: !842, inlinedAt: !1738)
!1747 = !DILocation(line: 493, column: 7, scope: !821, inlinedAt: !1738)
!1748 = !DILocation(line: 495, column: 3, scope: !821, inlinedAt: !1738)
!1749 = !DILocation(line: 501, column: 56, scope: !850, inlinedAt: !1738)
!1750 = !DILocation(line: 501, column: 47, scope: !850, inlinedAt: !1738)
!1751 = !DILocation(line: 502, column: 7, scope: !850, inlinedAt: !1738)
!1752 = !DILocation(line: 509, column: 34, scope: !857, inlinedAt: !1738)
!1753 = !DILocation(line: 509, column: 50, scope: !857, inlinedAt: !1738)
!1754 = !DILocation(line: 509, column: 36, scope: !857, inlinedAt: !1738)
!1755 = !DILocation(line: 509, column: 16, scope: !857, inlinedAt: !1738)
!1756 = !DILocation(line: 510, column: 7, scope: !857, inlinedAt: !1738)
!1757 = !DILocation(line: 0, scope: !851, inlinedAt: !1738)
!1758 = !DILocation(line: 519, column: 3, scope: !821, inlinedAt: !1738)
!1759 = !DILocation(line: 525, column: 58, scope: !865, inlinedAt: !1738)
!1760 = !DILocation(line: 525, column: 49, scope: !865, inlinedAt: !1738)
!1761 = !DILocation(line: 526, column: 7, scope: !865, inlinedAt: !1738)
!1762 = !DILocation(line: 533, column: 35, scope: !872, inlinedAt: !1738)
!1763 = !DILocation(line: 533, column: 52, scope: !872, inlinedAt: !1738)
!1764 = !DILocation(line: 533, column: 37, scope: !872, inlinedAt: !1738)
!1765 = !DILocation(line: 533, column: 16, scope: !872, inlinedAt: !1738)
!1766 = !DILocation(line: 534, column: 7, scope: !872, inlinedAt: !1738)
!1767 = !DILocation(line: 0, scope: !866, inlinedAt: !1738)
!1768 = !DILocation(line: 1197, column: 21, scope: !1423)
!1769 = !DILocation(line: 1198, column: 22, scope: !1423)
!1770 = !DILocation(line: 1199, column: 3, scope: !1423)
!1771 = !DILocation(line: 1200, column: 1, scope: !1423)
!1772 = !DILocation(line: 0, scope: !1624)
!1773 = !DILocation(line: 1542, column: 14, scope: !1632)
!1774 = !DILocation(line: 1542, column: 20, scope: !1632)
!1775 = !DILocation(line: 1542, column: 7, scope: !1624)
!1776 = !DILocation(line: 1543, column: 68, scope: !1632)
!1777 = !DILocation(line: 1543, column: 12, scope: !1632)
!1778 = !DILocation(line: 1543, column: 5, scope: !1632)
!1779 = !DILocation(line: 1545, column: 10, scope: !1624)
!1780 = !DILocation(line: 1546, column: 26, scope: !1624)
!1781 = !DILocation(line: 1546, column: 18, scope: !1624)
!1782 = !DILocation(line: 1547, column: 27, scope: !1624)
!1783 = !DILocation(line: 1547, column: 13, scope: !1624)
!1784 = !DILocation(line: 1547, column: 19, scope: !1624)
!1785 = !DILocation(line: 1548, column: 1, scope: !1624)
!1786 = distinct !DISubprogram(name: "ParseMetaGeometry", scope: !3, file: !3, line: 1253, type: !492, scopeLine: 1255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1800, !1801, !1804, !1807, !1808}
!1788 = !DILocalVariable(name: "geometry", arg: 1, scope: !1786, file: !3, line: 1253, type: !8)
!1789 = !DILocalVariable(name: "x", arg: 2, scope: !1786, file: !3, line: 1253, type: !494)
!1790 = !DILocalVariable(name: "y", arg: 3, scope: !1786, file: !3, line: 1254, type: !494)
!1791 = !DILocalVariable(name: "width", arg: 4, scope: !1786, file: !3, line: 1254, type: !495)
!1792 = !DILocalVariable(name: "height", arg: 5, scope: !1786, file: !3, line: 1254, type: !495)
!1793 = !DILocalVariable(name: "geometry_info", scope: !1786, file: !3, line: 1257, type: !885)
!1794 = !DILocalVariable(name: "flags", scope: !1786, file: !3, line: 1260, type: !479)
!1795 = !DILocalVariable(name: "former_height", scope: !1786, file: !3, line: 1263, type: !452)
!1796 = !DILocalVariable(name: "former_width", scope: !1786, file: !3, line: 1264, type: !452)
!1797 = !DILocalVariable(name: "flags", scope: !1798, file: !3, line: 1286, type: !479)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1284, column: 5)
!1799 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1283, column: 7)
!1800 = !DILocalVariable(name: "scale", scope: !1798, file: !3, line: 1289, type: !1617)
!1801 = !DILocalVariable(name: "scale_factor", scope: !1802, file: !3, line: 1317, type: !451)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1315, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1306, column: 7)
!1804 = !DILocalVariable(name: "area", scope: !1805, file: !3, line: 1372, type: !451)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 1370, column: 5)
!1806 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1369, column: 7)
!1807 = !DILocalVariable(name: "distance", scope: !1805, file: !3, line: 1373, type: !451)
!1808 = !DILocalVariable(name: "scale", scope: !1805, file: !3, line: 1376, type: !1617)
!1809 = !DILocation(line: 0, scope: !1786)
!1810 = !DILocation(line: 1256, column: 3, scope: !1786)
!1811 = !DILocation(line: 1257, column: 5, scope: !1786)
!1812 = !DILocation(line: 1273, column: 17, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1273, column: 7)
!1814 = !DILocation(line: 1273, column: 35, scope: !1813)
!1815 = !DILocation(line: 1273, column: 39, scope: !1813)
!1816 = !DILocation(line: 1273, column: 49, scope: !1813)
!1817 = !DILocation(line: 1273, column: 7, scope: !1786)
!1818 = !DILocation(line: 1275, column: 10, scope: !1786)
!1819 = !DILocalVariable(name: "geometry_info", arg: 1, scope: !1820, file: !3, line: 1572, type: !908)
!1820 = distinct !DISubprogram(name: "SetGeometryInfo", scope: !3, file: !3, line: 1572, type: !1821, scopeLine: 1573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1823)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !908}
!1823 = !{!1819}
!1824 = !DILocation(line: 0, scope: !1820, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 1279, column: 3, scope: !1786)
!1826 = !DILocation(line: 1575, column: 10, scope: !1820, inlinedAt: !1825)
!1827 = !DILocation(line: 1576, column: 10, scope: !1820, inlinedAt: !1825)
!1828 = !DILocation(line: 1280, column: 17, scope: !1786)
!1829 = !DILocation(line: 1281, column: 18, scope: !1786)
!1830 = !DILocation(line: 1282, column: 9, scope: !1786)
!1831 = !DILocation(line: 1283, column: 14, scope: !1799)
!1832 = !DILocation(line: 1283, column: 30, scope: !1799)
!1833 = !DILocation(line: 1283, column: 7, scope: !1786)
!1834 = !DILocation(line: 1294, column: 13, scope: !1798)
!1835 = !DILocation(line: 0, scope: !1798)
!1836 = !DILocation(line: 1295, column: 29, scope: !1798)
!1837 = !DILocation(line: 1296, column: 18, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1296, column: 11)
!1839 = !DILocation(line: 1296, column: 30, scope: !1838)
!1840 = !DILocation(line: 1296, column: 11, scope: !1798)
!1841 = !DILocation(line: 1298, column: 29, scope: !1798)
!1842 = !DILocation(line: 1299, column: 18, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 1299, column: 11)
!1844 = !DILocation(line: 1299, column: 32, scope: !1843)
!1845 = !DILocation(line: 1299, column: 11, scope: !1798)
!1846 = !DILocation(line: 1301, column: 37, scope: !1798)
!1847 = !DILocation(line: 1301, column: 36, scope: !1798)
!1848 = !DILocation(line: 1301, column: 49, scope: !1798)
!1849 = !DILocation(line: 1301, column: 55, scope: !1798)
!1850 = !DILocation(line: 1301, column: 23, scope: !1798)
!1851 = !DILocation(line: 1301, column: 14, scope: !1798)
!1852 = !DILocation(line: 1301, column: 13, scope: !1798)
!1853 = !DILocation(line: 1302, column: 38, scope: !1798)
!1854 = !DILocation(line: 1302, column: 37, scope: !1798)
!1855 = !DILocation(line: 1302, column: 51, scope: !1798)
!1856 = !DILocation(line: 1302, column: 57, scope: !1798)
!1857 = !DILocation(line: 1302, column: 24, scope: !1798)
!1858 = !DILocation(line: 1302, column: 15, scope: !1798)
!1859 = !DILocation(line: 1302, column: 14, scope: !1798)
!1860 = !DILocation(line: 1303, column: 21, scope: !1798)
!1861 = !DILocation(line: 1305, column: 5, scope: !1798)
!1862 = !DILocation(line: 1306, column: 15, scope: !1803)
!1863 = !DILocation(line: 1306, column: 30, scope: !1803)
!1864 = !DILocation(line: 1306, column: 36, scope: !1803)
!1865 = !DILocation(line: 1306, column: 41, scope: !1803)
!1866 = !DILocation(line: 1306, column: 48, scope: !1803)
!1867 = !DILocation(line: 1306, column: 65, scope: !1803)
!1868 = !DILocation(line: 1307, column: 8, scope: !1803)
!1869 = !DILocation(line: 1307, column: 16, scope: !1803)
!1870 = !DILocation(line: 1306, column: 7, scope: !1786)
!1871 = !DILocation(line: 1309, column: 18, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1309, column: 11)
!1873 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1308, column: 5)
!1874 = !DILocation(line: 1309, column: 30, scope: !1872)
!1875 = !DILocation(line: 1309, column: 11, scope: !1873)
!1876 = !DILocation(line: 1310, column: 15, scope: !1872)
!1877 = !DILocation(line: 1310, column: 9, scope: !1872)
!1878 = !DILocation(line: 1311, column: 18, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1311, column: 11)
!1880 = !DILocation(line: 1311, column: 32, scope: !1879)
!1881 = !DILocation(line: 1311, column: 11, scope: !1873)
!1882 = !DILocation(line: 1322, column: 25, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1322, column: 11)
!1884 = !DILocation(line: 1322, column: 31, scope: !1883)
!1885 = !DILocation(line: 1325, column: 39, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !3, line: 1325, column: 13)
!1887 = !DILocation(line: 1327, column: 26, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 1326, column: 11)
!1889 = !DILocation(line: 1327, column: 42, scope: !1888)
!1890 = !DILocation(line: 1327, column: 41, scope: !1888)
!1891 = !DILocation(line: 0, scope: !1802)
!1892 = !DILocation(line: 1328, column: 24, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1328, column: 17)
!1894 = !DILocation(line: 1328, column: 40, scope: !1893)
!1895 = !DILocation(line: 0, scope: !1893)
!1896 = !DILocation(line: 1328, column: 17, scope: !1888)
!1897 = !DILocation(line: 1330, column: 34, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !3, line: 1330, column: 21)
!1899 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 1329, column: 15)
!1900 = !DILocation(line: 1330, column: 21, scope: !1899)
!1901 = !DILocation(line: 1331, column: 19, scope: !1898)
!1902 = !DILocation(line: 1334, column: 32, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1893, file: !3, line: 1334, column: 19)
!1904 = !DILocation(line: 1334, column: 19, scope: !1893)
!1905 = !DILocation(line: 1335, column: 17, scope: !1903)
!1906 = !DILocation(line: 1325, column: 21, scope: !1886)
!1907 = !DILocation(line: 1325, column: 33, scope: !1886)
!1908 = !DILocation(line: 1338, column: 15, scope: !1886)
!1909 = !DILocation(line: 1340, column: 28, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1339, column: 13)
!1911 = distinct !DILexicalBlock(scope: !1886, file: !3, line: 1338, column: 15)
!1912 = !DILocation(line: 1340, column: 44, scope: !1910)
!1913 = !DILocation(line: 1340, column: 43, scope: !1910)
!1914 = !DILocation(line: 1341, column: 27, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 1341, column: 19)
!1916 = !DILocation(line: 1341, column: 43, scope: !1915)
!1917 = !DILocation(line: 1341, column: 49, scope: !1915)
!1918 = !DILocation(line: 1342, column: 52, scope: !1915)
!1919 = !DILocation(line: 1342, column: 51, scope: !1915)
!1920 = !DILocation(line: 1342, column: 33, scope: !1915)
!1921 = !DILocation(line: 1341, column: 19, scope: !1910)
!1922 = !DILocation(line: 1343, column: 17, scope: !1915)
!1923 = !DILocation(line: 1347, column: 37, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1911, file: !3, line: 1346, column: 13)
!1925 = !DILocation(line: 1347, column: 28, scope: !1924)
!1926 = !DILocation(line: 1347, column: 45, scope: !1924)
!1927 = !DILocation(line: 1347, column: 44, scope: !1924)
!1928 = !DILocation(line: 1348, column: 27, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 1348, column: 19)
!1930 = !DILocation(line: 1348, column: 43, scope: !1929)
!1931 = !DILocation(line: 1348, column: 49, scope: !1929)
!1932 = !DILocation(line: 1349, column: 53, scope: !1929)
!1933 = !DILocation(line: 1349, column: 52, scope: !1929)
!1934 = !DILocation(line: 1349, column: 33, scope: !1929)
!1935 = !DILocation(line: 1348, column: 19, scope: !1924)
!1936 = !DILocation(line: 1350, column: 17, scope: !1929)
!1937 = !DILocation(line: 0, scope: !1883)
!1938 = !DILocation(line: 1352, column: 52, scope: !1802)
!1939 = !DILocation(line: 1352, column: 64, scope: !1802)
!1940 = !DILocation(line: 1352, column: 33, scope: !1802)
!1941 = !DILocation(line: 1352, column: 24, scope: !1802)
!1942 = !DILocalVariable(name: "x", arg: 1, scope: !1943, file: !3, line: 1245, type: !774)
!1943 = distinct !DISubprogram(name: "MagickMax", scope: !3, file: !3, line: 1245, type: !1944, scopeLine: 1247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!452, !774, !774}
!1946 = !{!1942, !1947}
!1947 = !DILocalVariable(name: "y", arg: 2, scope: !1943, file: !3, line: 1246, type: !774)
!1948 = !DILocation(line: 0, scope: !1943, inlinedAt: !1949)
!1949 = distinct !DILocation(line: 1352, column: 14, scope: !1802)
!1950 = !DILocation(line: 1352, column: 13, scope: !1802)
!1951 = !DILocation(line: 1353, column: 53, scope: !1802)
!1952 = !DILocation(line: 1353, column: 66, scope: !1802)
!1953 = !DILocation(line: 1353, column: 34, scope: !1802)
!1954 = !DILocation(line: 1353, column: 25, scope: !1802)
!1955 = !DILocation(line: 0, scope: !1943, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 1353, column: 15, scope: !1802)
!1957 = !DILocation(line: 0, scope: !1803)
!1958 = !DILocation(line: 1355, column: 14, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1355, column: 7)
!1960 = !DILocation(line: 1355, column: 30, scope: !1959)
!1961 = !DILocation(line: 1355, column: 7, scope: !1786)
!1962 = !DILocation(line: 1357, column: 26, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1357, column: 11)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1356, column: 5)
!1965 = !DILocation(line: 1357, column: 24, scope: !1963)
!1966 = !DILocation(line: 1357, column: 11, scope: !1964)
!1967 = !DILocation(line: 1358, column: 15, scope: !1963)
!1968 = !DILocation(line: 1358, column: 9, scope: !1963)
!1969 = !DILocation(line: 1359, column: 27, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 1359, column: 11)
!1971 = !DILocation(line: 1359, column: 25, scope: !1970)
!1972 = !DILocation(line: 1359, column: 11, scope: !1964)
!1973 = !DILocation(line: 1360, column: 16, scope: !1970)
!1974 = !DILocation(line: 1360, column: 9, scope: !1970)
!1975 = !DILocation(line: 1362, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 1362, column: 7)
!1977 = !DILocation(line: 1362, column: 27, scope: !1976)
!1978 = !DILocation(line: 1362, column: 7, scope: !1786)
!1979 = !DILocation(line: 1364, column: 26, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 1364, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 1363, column: 5)
!1982 = !DILocation(line: 1364, column: 24, scope: !1980)
!1983 = !DILocation(line: 1364, column: 11, scope: !1981)
!1984 = !DILocation(line: 1365, column: 15, scope: !1980)
!1985 = !DILocation(line: 1365, column: 9, scope: !1980)
!1986 = !DILocation(line: 1366, column: 27, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 1366, column: 11)
!1988 = !DILocation(line: 1366, column: 25, scope: !1987)
!1989 = !DILocation(line: 1366, column: 11, scope: !1981)
!1990 = !DILocation(line: 1367, column: 16, scope: !1987)
!1991 = !DILocation(line: 1367, column: 9, scope: !1987)
!1992 = !DILocation(line: 1369, column: 14, scope: !1806)
!1993 = !DILocation(line: 1369, column: 27, scope: !1806)
!1994 = !DILocation(line: 1369, column: 7, scope: !1786)
!1995 = !DILocation(line: 1381, column: 14, scope: !1805)
!1996 = !DILocation(line: 1382, column: 26, scope: !1805)
!1997 = !DILocation(line: 0, scope: !1805)
!1998 = !DILocation(line: 1383, column: 21, scope: !1805)
!1999 = !DILocation(line: 1383, column: 43, scope: !1805)
!2000 = !DILocation(line: 1383, column: 42, scope: !1805)
!2001 = !DILocation(line: 1383, column: 16, scope: !1805)
!2002 = !DILocation(line: 1384, column: 38, scope: !1805)
!2003 = !DILocation(line: 1384, column: 37, scope: !1805)
!2004 = !DILocation(line: 1384, column: 27, scope: !1805)
!2005 = !DILocation(line: 1385, column: 39, scope: !1805)
!2006 = !DILocation(line: 1386, column: 31, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 1386, column: 11)
!2008 = !DILocation(line: 1386, column: 22, scope: !2007)
!2009 = !DILocation(line: 1386, column: 20, scope: !2007)
!2010 = !DILocation(line: 1386, column: 39, scope: !2007)
!2011 = !DILocation(line: 1385, column: 38, scope: !1805)
!2012 = !DILocation(line: 1385, column: 28, scope: !1805)
!2013 = !DILocation(line: 1386, column: 62, scope: !2007)
!2014 = !DILocation(line: 1386, column: 53, scope: !2007)
!2015 = !DILocation(line: 1386, column: 51, scope: !2007)
!2016 = !DILocation(line: 1386, column: 11, scope: !1805)
!2017 = !DILocation(line: 1388, column: 58, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 1387, column: 9)
!2019 = !DILocation(line: 1388, column: 57, scope: !2018)
!2020 = !DILocation(line: 1388, column: 47, scope: !2018)
!2021 = !DILocation(line: 1388, column: 18, scope: !2018)
!2022 = !DILocation(line: 1388, column: 17, scope: !2018)
!2023 = !DILocation(line: 1389, column: 60, scope: !2018)
!2024 = !DILocation(line: 1389, column: 59, scope: !2018)
!2025 = !DILocation(line: 1389, column: 49, scope: !2018)
!2026 = !DILocation(line: 1389, column: 19, scope: !2018)
!2027 = !DILocation(line: 1389, column: 18, scope: !2018)
!2028 = !DILocation(line: 1390, column: 9, scope: !2018)
!2029 = !DILocation(line: 1395, column: 1, scope: !1786)
!2030 = !DILocation(line: 0, scope: !1820)
!2031 = !DILocation(line: 1575, column: 10, scope: !1820)
!2032 = !DILocation(line: 1576, column: 10, scope: !1820)
!2033 = !DILocation(line: 1577, column: 1, scope: !1820)
!2034 = distinct !DISubprogram(name: "ParsePageGeometry", scope: !3, file: !3, line: 1430, type: !1424, scopeLine: 1432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2035)
!2035 = !{!2036, !2037, !2038, !2039, !2040}
!2036 = !DILocalVariable(name: "image", arg: 1, scope: !2034, file: !3, line: 1430, type: !1426)
!2037 = !DILocalVariable(name: "geometry", arg: 2, scope: !2034, file: !3, line: 1431, type: !8)
!2038 = !DILocalVariable(name: "region_info", arg: 3, scope: !2034, file: !3, line: 1431, type: !826)
!2039 = !DILocalVariable(name: "exception", arg: 4, scope: !2034, file: !3, line: 1431, type: !1299)
!2040 = !DILocalVariable(name: "flags", scope: !2034, file: !3, line: 1434, type: !479)
!2041 = !DILocation(line: 0, scope: !2034)
!2042 = !DILocation(line: 0, scope: !1624, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 1436, column: 3, scope: !2034)
!2044 = !DILocation(line: 1542, column: 14, scope: !1632, inlinedAt: !2043)
!2045 = !DILocation(line: 1542, column: 20, scope: !1632, inlinedAt: !2043)
!2046 = !DILocation(line: 1542, column: 7, scope: !1624, inlinedAt: !2043)
!2047 = !DILocation(line: 1543, column: 68, scope: !1632, inlinedAt: !2043)
!2048 = !DILocation(line: 1543, column: 12, scope: !1632, inlinedAt: !2043)
!2049 = !DILocation(line: 1543, column: 5, scope: !1632, inlinedAt: !2043)
!2050 = !DILocation(line: 1545, column: 10, scope: !1624, inlinedAt: !2043)
!2051 = !DILocation(line: 1546, column: 26, scope: !1624, inlinedAt: !2043)
!2052 = !DILocation(line: 1546, column: 18, scope: !1624, inlinedAt: !2043)
!2053 = !DILocation(line: 1547, column: 27, scope: !1624, inlinedAt: !2043)
!2054 = !DILocation(line: 1547, column: 13, scope: !1624, inlinedAt: !2043)
!2055 = !DILocation(line: 1547, column: 19, scope: !1624, inlinedAt: !2043)
!2056 = !DILocation(line: 1437, column: 14, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1437, column: 7)
!2058 = !DILocation(line: 1437, column: 19, scope: !2057)
!2059 = !DILocation(line: 1437, column: 25, scope: !2057)
!2060 = !DILocation(line: 1437, column: 7, scope: !2034)
!2061 = !DILocation(line: 1438, column: 23, scope: !2057)
!2062 = !DILocation(line: 1438, column: 5, scope: !2057)
!2063 = !DILocation(line: 1439, column: 19, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1439, column: 7)
!2065 = !DILocation(line: 1439, column: 26, scope: !2064)
!2066 = !DILocation(line: 1439, column: 7, scope: !2034)
!2067 = !DILocation(line: 1440, column: 24, scope: !2064)
!2068 = !DILocation(line: 1440, column: 5, scope: !2064)
!2069 = !DILocation(line: 0, scope: !1273, inlinedAt: !2070)
!2070 = distinct !DILocation(line: 1441, column: 9, scope: !2034)
!2071 = !DILocation(line: 668, column: 44, scope: !1273, inlinedAt: !2070)
!2072 = !DILocation(line: 668, column: 60, scope: !1273, inlinedAt: !2070)
!2073 = !DILocation(line: 668, column: 9, scope: !1273, inlinedAt: !2070)
!2074 = !DILocation(line: 1442, column: 13, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1442, column: 7)
!2076 = !DILocation(line: 1442, column: 7, scope: !2034)
!2077 = !DILocation(line: 1444, column: 14, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1443, column: 5)
!2079 = !DILocation(line: 1446, column: 7, scope: !2078)
!2080 = !DILocation(line: 1448, column: 14, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1448, column: 7)
!2082 = !DILocation(line: 1448, column: 30, scope: !2081)
!2083 = !DILocation(line: 1448, column: 7, scope: !2034)
!2084 = !DILocation(line: 1450, column: 33, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2081, file: !3, line: 1449, column: 5)
!2086 = !DILocation(line: 1450, column: 25, scope: !2085)
!2087 = !DILocation(line: 1451, column: 34, scope: !2085)
!2088 = !DILocation(line: 1451, column: 26, scope: !2085)
!2089 = !DILocation(line: 1452, column: 5, scope: !2085)
!2090 = !DILocation(line: 1453, column: 9, scope: !2034)
!2091 = !DILocation(line: 1455, column: 36, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 1455, column: 7)
!2093 = !DILocation(line: 1455, column: 16, scope: !2092)
!2094 = !DILocation(line: 1455, column: 30, scope: !2092)
!2095 = !DILocation(line: 1458, column: 11, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 1457, column: 5)
!2097 = !DILocation(line: 1459, column: 41, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1458, column: 11)
!2099 = !DILocation(line: 1459, column: 27, scope: !2098)
!2100 = !DILocation(line: 1459, column: 9, scope: !2098)
!2101 = !DILocation(line: 1460, column: 11, scope: !2096)
!2102 = !DILocation(line: 1461, column: 42, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1460, column: 11)
!2104 = !DILocation(line: 1461, column: 28, scope: !2103)
!2105 = !DILocation(line: 1461, column: 9, scope: !2103)
!2106 = !DILocation(line: 1464, column: 1, scope: !2034)
!2107 = distinct !DISubprogram(name: "ParseRegionGeometry", scope: !3, file: !3, line: 1499, type: !1424, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113}
!2109 = !DILocalVariable(name: "image", arg: 1, scope: !2107, file: !3, line: 1499, type: !1426)
!2110 = !DILocalVariable(name: "geometry", arg: 2, scope: !2107, file: !3, line: 1500, type: !8)
!2111 = !DILocalVariable(name: "region_info", arg: 3, scope: !2107, file: !3, line: 1500, type: !826)
!2112 = !DILocalVariable(name: "exception", arg: 4, scope: !2107, file: !3, line: 1500, type: !1299)
!2113 = !DILocalVariable(name: "flags", scope: !2107, file: !3, line: 1503, type: !479)
!2114 = !DILocation(line: 0, scope: !2107)
!2115 = !DILocation(line: 0, scope: !1624, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 1505, column: 3, scope: !2107)
!2117 = !DILocation(line: 1542, column: 14, scope: !1632, inlinedAt: !2116)
!2118 = !DILocation(line: 1542, column: 20, scope: !1632, inlinedAt: !2116)
!2119 = !DILocation(line: 1542, column: 7, scope: !1624, inlinedAt: !2116)
!2120 = !DILocation(line: 1543, column: 68, scope: !1632, inlinedAt: !2116)
!2121 = !DILocation(line: 1543, column: 12, scope: !1632, inlinedAt: !2116)
!2122 = !DILocation(line: 1543, column: 5, scope: !1632, inlinedAt: !2116)
!2123 = !DILocation(line: 1545, column: 10, scope: !1624, inlinedAt: !2116)
!2124 = !DILocation(line: 1546, column: 26, scope: !1624, inlinedAt: !2116)
!2125 = !DILocation(line: 1546, column: 18, scope: !1624, inlinedAt: !2116)
!2126 = !DILocation(line: 1547, column: 27, scope: !1624, inlinedAt: !2116)
!2127 = !DILocation(line: 1547, column: 13, scope: !1624, inlinedAt: !2116)
!2128 = !DILocation(line: 1547, column: 19, scope: !1624, inlinedAt: !2116)
!2129 = !DILocation(line: 1506, column: 50, scope: !2107)
!2130 = !DILocation(line: 1506, column: 66, scope: !2107)
!2131 = !DILocation(line: 1506, column: 9, scope: !2107)
!2132 = !DILocation(line: 1508, column: 13, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 1508, column: 7)
!2134 = !DILocation(line: 1508, column: 7, scope: !2107)
!2135 = !DILocation(line: 1509, column: 12, scope: !2133)
!2136 = !DILocation(line: 1509, column: 5, scope: !2133)
!2137 = !DILocation(line: 1511, column: 3, scope: !2107)
!2138 = !DISubprogram(name: "ResetMagickMemory", scope: !2139, file: !2139, line: 52, type: !2140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!2139 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!447, !447, !448, !774}
!2142 = !DISubprogram(name: "InterpretLocaleValue", scope: !2143, file: !2143, line: 56, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !775)
!2143 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
