; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/color.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ColorMapInfo = type { ptr, i8, i8, i8, float, i64 }
%struct._ColorInfo = type { ptr, ptr, i32, %struct._MagickPixelPacket, i32, i32, ptr, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct._LongPixelPacket = type { i32, i32, i32, i32, i32 }

@color_semaphore = internal global ptr null, align 8, !dbg !0
@color_cache = internal unnamed_addr global ptr null, align 8, !dbg !886
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/color.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"UnrecognizedColor\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.*g\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%10lu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%.*g%%\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"  Searching image...  \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [80 x i8] c"Name                  Color                                         Compliance\0A\00", align 1
@.str.20 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"%-21.21s \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%-45.45s \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"SVG \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"X11 \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"XPM \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@BackgroundColor = external constant [0 x i8], align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"device-\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"icc-color\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"HCL\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"HSB\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"HWB\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"%08lX%08lX\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"colors.xml\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@ColorMap = internal unnamed_addr constant [678 x %struct._ColorMapInfo] [%struct._ColorMapInfo { ptr @.str.59, i8 0, i8 0, i8 0, float 0.000000e+00, i64 5 }, %struct._ColorMapInfo { ptr @.str.60, i8 0, i8 0, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.61, i8 -1, i8 0, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.62, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.63, i8 0, i8 -128, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.64, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.65, i8 0, i8 0, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.66, i8 -1, i8 -1, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.67, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.68, i8 -16, i8 -8, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.69, i8 -6, i8 -21, i8 -41, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.70, i8 -1, i8 -17, i8 -37, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.71, i8 -18, i8 -33, i8 -52, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.72, i8 -51, i8 -64, i8 -80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.73, i8 -117, i8 -125, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.74, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.75, i8 127, i8 -1, i8 -44, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.76, i8 127, i8 -1, i8 -44, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.77, i8 118, i8 -18, i8 -58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.78, i8 102, i8 -51, i8 -86, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.79, i8 69, i8 -117, i8 116, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.80, i8 -16, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.81, i8 -16, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.82, i8 -32, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.83, i8 -63, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.84, i8 -125, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.85, i8 -11, i8 -11, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.86, i8 -1, i8 -28, i8 -60, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.87, i8 -1, i8 -28, i8 -60, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.88, i8 -18, i8 -43, i8 -73, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.89, i8 -51, i8 -73, i8 -98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.90, i8 -117, i8 125, i8 107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.91, i8 -1, i8 -21, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.92, i8 0, i8 0, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.93, i8 0, i8 0, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.94, i8 0, i8 0, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.95, i8 0, i8 0, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.96, i8 -118, i8 43, i8 -30, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.97, i8 -91, i8 42, i8 42, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.98, i8 -1, i8 64, i8 64, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.99, i8 -18, i8 59, i8 59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.100, i8 -51, i8 51, i8 51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.101, i8 -117, i8 35, i8 35, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.102, i8 -34, i8 -72, i8 -121, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.103, i8 -1, i8 -45, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.104, i8 -18, i8 -59, i8 -111, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.105, i8 -51, i8 -86, i8 125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.106, i8 -117, i8 115, i8 85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.107, i8 95, i8 -98, i8 -96, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.108, i8 -104, i8 -11, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.109, i8 -114, i8 -27, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.110, i8 122, i8 -59, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.111, i8 83, i8 -122, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.112, i8 127, i8 -1, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.113, i8 127, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.114, i8 118, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.115, i8 102, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.116, i8 69, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.117, i8 -46, i8 105, i8 30, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.118, i8 -1, i8 127, i8 36, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.119, i8 -18, i8 118, i8 33, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.120, i8 -51, i8 102, i8 29, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.121, i8 -117, i8 69, i8 19, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.122, i8 -1, i8 127, i8 80, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.123, i8 -1, i8 114, i8 86, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.124, i8 -18, i8 106, i8 80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.125, i8 -51, i8 91, i8 69, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.126, i8 -117, i8 62, i8 47, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.127, i8 100, i8 -107, i8 -19, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.128, i8 -1, i8 -8, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.129, i8 -1, i8 -8, i8 -36, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.130, i8 -18, i8 -24, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.131, i8 -51, i8 -56, i8 -79, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.132, i8 -117, i8 -120, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.133, i8 -36, i8 20, i8 60, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.134, i8 0, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.135, i8 0, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.136, i8 0, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.137, i8 0, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.138, i8 0, i8 0, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.139, i8 0, i8 -117, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.140, i8 -72, i8 -122, i8 11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.141, i8 -1, i8 -71, i8 15, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.142, i8 -18, i8 -83, i8 14, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.143, i8 -51, i8 -107, i8 12, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.144, i8 -117, i8 101, i8 8, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.145, i8 -87, i8 -87, i8 -87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.146, i8 0, i8 100, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.147, i8 -87, i8 -87, i8 -87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.148, i8 -67, i8 -73, i8 107, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.149, i8 -117, i8 0, i8 -117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.150, i8 85, i8 107, i8 47, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.151, i8 -54, i8 -1, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.152, i8 -68, i8 -18, i8 104, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.153, i8 -94, i8 -51, i8 90, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.154, i8 110, i8 -117, i8 61, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.155, i8 -1, i8 -116, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.156, i8 -1, i8 127, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.157, i8 -18, i8 118, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.158, i8 -51, i8 102, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.159, i8 -117, i8 69, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.160, i8 -103, i8 50, i8 -52, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.161, i8 -65, i8 62, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.162, i8 -78, i8 58, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.163, i8 -102, i8 50, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.164, i8 104, i8 34, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.165, i8 -117, i8 0, i8 0, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.166, i8 -23, i8 -106, i8 122, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.167, i8 -113, i8 -68, i8 -113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.168, i8 -63, i8 -1, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.169, i8 -76, i8 -18, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.170, i8 -101, i8 -51, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.171, i8 105, i8 -117, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.172, i8 72, i8 61, i8 -117, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.173, i8 47, i8 79, i8 79, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.174, i8 -105, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.175, i8 -115, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.176, i8 121, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.177, i8 82, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.178, i8 47, i8 79, i8 79, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.179, i8 0, i8 -50, i8 -47, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.180, i8 -108, i8 0, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.181, i8 -1, i8 20, i8 -109, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.182, i8 -1, i8 20, i8 -109, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.183, i8 -18, i8 18, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.184, i8 -51, i8 16, i8 118, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.185, i8 -117, i8 10, i8 80, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.186, i8 0, i8 -65, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.187, i8 0, i8 -65, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.188, i8 0, i8 -78, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.189, i8 0, i8 -102, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.190, i8 0, i8 104, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.191, i8 105, i8 105, i8 105, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.192, i8 105, i8 105, i8 105, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.193, i8 30, i8 -112, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.194, i8 30, i8 -112, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.195, i8 28, i8 -122, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.196, i8 24, i8 116, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.197, i8 16, i8 78, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.198, i8 -78, i8 34, i8 34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.199, i8 -1, i8 48, i8 48, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.200, i8 -18, i8 44, i8 44, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.201, i8 -51, i8 38, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.202, i8 -117, i8 26, i8 26, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.203, i8 -1, i8 -6, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.204, i8 34, i8 -117, i8 34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.205, i8 -128, i8 -128, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.206, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.207, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.208, i8 -36, i8 -36, i8 -36, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.209, i8 -8, i8 -8, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.210, i8 -1, i8 -41, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.211, i8 -1, i8 -41, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.212, i8 -18, i8 -55, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.213, i8 -51, i8 -83, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.214, i8 -117, i8 117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.215, i8 -38, i8 -91, i8 32, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.216, i8 -1, i8 -63, i8 37, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.217, i8 -18, i8 -76, i8 34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.218, i8 -51, i8 -101, i8 29, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.219, i8 -117, i8 105, i8 20, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.29, i8 126, i8 126, i8 126, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.29, i8 -66, i8 -66, i8 -66, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.220, i8 0, i8 0, i8 0, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.221, i8 3, i8 3, i8 3, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.222, i8 26, i8 26, i8 26, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.223, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.223, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.224, i8 28, i8 28, i8 28, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.225, i8 31, i8 31, i8 31, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.226, i8 33, i8 33, i8 33, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.227, i8 36, i8 36, i8 36, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.228, i8 38, i8 38, i8 38, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.229, i8 41, i8 41, i8 41, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.230, i8 43, i8 43, i8 43, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.231, i8 46, i8 46, i8 46, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.232, i8 48, i8 48, i8 48, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.233, i8 5, i8 5, i8 5, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.234, i8 51, i8 51, i8 51, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.235, i8 54, i8 54, i8 54, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.236, i8 56, i8 56, i8 56, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.237, i8 59, i8 59, i8 59, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.238, i8 61, i8 61, i8 61, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.239, i8 64, i8 64, i8 64, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.240, i8 66, i8 66, i8 66, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.241, i8 69, i8 69, i8 69, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.242, i8 71, i8 71, i8 71, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.243, i8 74, i8 74, i8 74, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.244, i8 8, i8 8, i8 8, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.245, i8 77, i8 77, i8 77, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.246, i8 79, i8 79, i8 79, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.247, i8 82, i8 82, i8 82, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.248, i8 84, i8 84, i8 84, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.249, i8 87, i8 87, i8 87, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.250, i8 89, i8 89, i8 89, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.251, i8 92, i8 92, i8 92, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.252, i8 94, i8 94, i8 94, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.253, i8 97, i8 97, i8 97, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.254, i8 99, i8 99, i8 99, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.255, i8 10, i8 10, i8 10, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.256, i8 102, i8 102, i8 102, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.257, i8 105, i8 105, i8 105, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.258, i8 107, i8 107, i8 107, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.259, i8 110, i8 110, i8 110, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.260, i8 112, i8 112, i8 112, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.261, i8 115, i8 115, i8 115, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.262, i8 117, i8 117, i8 117, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.263, i8 120, i8 120, i8 120, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.264, i8 122, i8 122, i8 122, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.265, i8 125, i8 125, i8 125, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.266, i8 13, i8 13, i8 13, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.267, i8 127, i8 127, i8 127, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.268, i8 -126, i8 -126, i8 -126, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.269, i8 -123, i8 -123, i8 -123, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.270, i8 -121, i8 -121, i8 -121, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.271, i8 -118, i8 -118, i8 -118, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.272, i8 -116, i8 -116, i8 -116, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.273, i8 -113, i8 -113, i8 -113, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.274, i8 -111, i8 -111, i8 -111, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.275, i8 -108, i8 -108, i8 -108, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.276, i8 -106, i8 -106, i8 -106, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.277, i8 15, i8 15, i8 15, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.278, i8 -103, i8 -103, i8 -103, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.279, i8 -100, i8 -100, i8 -100, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.280, i8 -98, i8 -98, i8 -98, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.281, i8 -95, i8 -95, i8 -95, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.282, i8 -93, i8 -93, i8 -93, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.283, i8 -90, i8 -90, i8 -90, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.284, i8 -88, i8 -88, i8 -88, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.285, i8 -85, i8 -85, i8 -85, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.286, i8 -83, i8 -83, i8 -83, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.287, i8 -80, i8 -80, i8 -80, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.288, i8 18, i8 18, i8 18, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.289, i8 -77, i8 -77, i8 -77, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.290, i8 -75, i8 -75, i8 -75, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.291, i8 -72, i8 -72, i8 -72, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.292, i8 -70, i8 -70, i8 -70, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.293, i8 -67, i8 -67, i8 -67, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.294, i8 -65, i8 -65, i8 -65, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.295, i8 -62, i8 -62, i8 -62, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.296, i8 -60, i8 -60, i8 -60, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.297, i8 -57, i8 -57, i8 -57, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.298, i8 -55, i8 -55, i8 -55, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.299, i8 20, i8 20, i8 20, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.300, i8 -52, i8 -52, i8 -52, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.301, i8 -49, i8 -49, i8 -49, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.302, i8 -47, i8 -47, i8 -47, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.303, i8 -44, i8 -44, i8 -44, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.304, i8 -42, i8 -42, i8 -42, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.305, i8 -39, i8 -39, i8 -39, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.306, i8 -37, i8 -37, i8 -37, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.307, i8 -34, i8 -34, i8 -34, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.308, i8 -32, i8 -32, i8 -32, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.309, i8 -29, i8 -29, i8 -29, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.310, i8 23, i8 23, i8 23, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.311, i8 -27, i8 -27, i8 -27, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.312, i8 -24, i8 -24, i8 -24, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.313, i8 -21, i8 -21, i8 -21, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.314, i8 -19, i8 -19, i8 -19, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.315, i8 -16, i8 -16, i8 -16, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.316, i8 -14, i8 -14, i8 -14, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.317, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.318, i8 -9, i8 -9, i8 -9, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.319, i8 -6, i8 -6, i8 -6, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.320, i8 -4, i8 -4, i8 -4, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.63, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.321, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.322, i8 0, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.323, i8 0, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.324, i8 0, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.325, i8 -83, i8 -1, i8 47, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.326, i8 -66, i8 -66, i8 -66, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.327, i8 0, i8 0, i8 0, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.328, i8 3, i8 3, i8 3, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.329, i8 26, i8 26, i8 26, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.330, i8 -1, i8 -1, i8 -1, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.331, i8 28, i8 28, i8 28, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.332, i8 31, i8 31, i8 31, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.333, i8 33, i8 33, i8 33, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.334, i8 36, i8 36, i8 36, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.335, i8 38, i8 38, i8 38, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.336, i8 41, i8 41, i8 41, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.337, i8 43, i8 43, i8 43, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.338, i8 46, i8 46, i8 46, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.339, i8 48, i8 48, i8 48, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.340, i8 5, i8 5, i8 5, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.341, i8 51, i8 51, i8 51, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.342, i8 54, i8 54, i8 54, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.343, i8 56, i8 56, i8 56, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.344, i8 59, i8 59, i8 59, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.345, i8 61, i8 61, i8 61, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.346, i8 64, i8 64, i8 64, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.347, i8 66, i8 66, i8 66, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.348, i8 69, i8 69, i8 69, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.349, i8 71, i8 71, i8 71, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.350, i8 74, i8 74, i8 74, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.351, i8 8, i8 8, i8 8, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.352, i8 77, i8 77, i8 77, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.353, i8 79, i8 79, i8 79, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.354, i8 82, i8 82, i8 82, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.355, i8 84, i8 84, i8 84, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.356, i8 87, i8 87, i8 87, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.357, i8 89, i8 89, i8 89, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.358, i8 92, i8 92, i8 92, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.359, i8 94, i8 94, i8 94, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.360, i8 97, i8 97, i8 97, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.361, i8 99, i8 99, i8 99, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.362, i8 10, i8 10, i8 10, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.363, i8 102, i8 102, i8 102, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.364, i8 105, i8 105, i8 105, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.365, i8 107, i8 107, i8 107, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.366, i8 110, i8 110, i8 110, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.367, i8 112, i8 112, i8 112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.368, i8 115, i8 115, i8 115, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.369, i8 117, i8 117, i8 117, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.370, i8 120, i8 120, i8 120, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.371, i8 122, i8 122, i8 122, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.372, i8 125, i8 125, i8 125, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.373, i8 13, i8 13, i8 13, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.374, i8 127, i8 127, i8 127, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.375, i8 -126, i8 -126, i8 -126, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.376, i8 -123, i8 -123, i8 -123, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.377, i8 -121, i8 -121, i8 -121, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.378, i8 -118, i8 -118, i8 -118, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.379, i8 -116, i8 -116, i8 -116, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.380, i8 -113, i8 -113, i8 -113, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.381, i8 -111, i8 -111, i8 -111, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.382, i8 -108, i8 -108, i8 -108, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.383, i8 -106, i8 -106, i8 -106, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.384, i8 15, i8 15, i8 15, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.385, i8 -103, i8 -103, i8 -103, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.386, i8 -100, i8 -100, i8 -100, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.387, i8 -98, i8 -98, i8 -98, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.388, i8 -95, i8 -95, i8 -95, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.389, i8 -93, i8 -93, i8 -93, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.390, i8 -90, i8 -90, i8 -90, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.391, i8 -88, i8 -88, i8 -88, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.392, i8 -85, i8 -85, i8 -85, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.393, i8 -83, i8 -83, i8 -83, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.394, i8 -80, i8 -80, i8 -80, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.395, i8 18, i8 18, i8 18, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.396, i8 -77, i8 -77, i8 -77, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.397, i8 -75, i8 -75, i8 -75, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.398, i8 -72, i8 -72, i8 -72, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.399, i8 -70, i8 -70, i8 -70, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.400, i8 -67, i8 -67, i8 -67, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.401, i8 -65, i8 -65, i8 -65, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.402, i8 -62, i8 -62, i8 -62, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.403, i8 -60, i8 -60, i8 -60, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.404, i8 -57, i8 -57, i8 -57, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.405, i8 -55, i8 -55, i8 -55, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.406, i8 20, i8 20, i8 20, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.407, i8 -52, i8 -52, i8 -52, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.408, i8 -49, i8 -49, i8 -49, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.409, i8 -47, i8 -47, i8 -47, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.410, i8 -44, i8 -44, i8 -44, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.411, i8 -42, i8 -42, i8 -42, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.412, i8 -39, i8 -39, i8 -39, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.413, i8 -37, i8 -37, i8 -37, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.414, i8 -34, i8 -34, i8 -34, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.415, i8 -32, i8 -32, i8 -32, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.416, i8 -29, i8 -29, i8 -29, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.417, i8 23, i8 23, i8 23, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.418, i8 -27, i8 -27, i8 -27, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.419, i8 -24, i8 -24, i8 -24, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.420, i8 -21, i8 -21, i8 -21, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.421, i8 -19, i8 -19, i8 -19, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.422, i8 -16, i8 -16, i8 -16, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.423, i8 -14, i8 -14, i8 -14, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.424, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.425, i8 -9, i8 -9, i8 -9, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.426, i8 -6, i8 -6, i8 -6, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.427, i8 -4, i8 -4, i8 -4, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.428, i8 -16, i8 -1, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.429, i8 -16, i8 -1, i8 -16, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.430, i8 -32, i8 -18, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.431, i8 -63, i8 -51, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.432, i8 -125, i8 -117, i8 -125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.433, i8 -1, i8 105, i8 -76, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.434, i8 -1, i8 110, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.435, i8 -18, i8 106, i8 -89, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.436, i8 -51, i8 96, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.437, i8 -117, i8 58, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.438, i8 -51, i8 92, i8 92, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.439, i8 -1, i8 106, i8 106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.440, i8 -18, i8 99, i8 99, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.441, i8 -51, i8 85, i8 85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.442, i8 -117, i8 58, i8 58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.443, i8 75, i8 0, i8 -126, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.444, i8 -1, i8 -1, i8 -16, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.445, i8 -1, i8 -1, i8 -16, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.446, i8 -18, i8 -18, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.447, i8 -51, i8 -51, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.448, i8 -117, i8 -117, i8 -125, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.449, i8 -16, i8 -26, i8 -116, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.450, i8 -1, i8 -10, i8 -113, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.451, i8 -18, i8 -26, i8 -123, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.452, i8 -51, i8 -58, i8 115, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.453, i8 -117, i8 -122, i8 78, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.454, i8 -26, i8 -26, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.455, i8 -1, i8 -16, i8 -11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.456, i8 -1, i8 -16, i8 -11, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.457, i8 -18, i8 -32, i8 -27, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.458, i8 -51, i8 -63, i8 -59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.459, i8 -117, i8 -125, i8 -122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.460, i8 124, i8 -4, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.461, i8 -1, i8 -6, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.462, i8 -1, i8 -6, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.463, i8 -18, i8 -23, i8 -65, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.464, i8 -51, i8 -55, i8 -91, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.465, i8 -117, i8 -119, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.466, i8 -83, i8 -40, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.467, i8 -65, i8 -17, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.468, i8 -78, i8 -33, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.469, i8 -102, i8 -64, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.470, i8 104, i8 -125, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.471, i8 -16, i8 -128, i8 -128, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.472, i8 -32, i8 -1, i8 -1, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.473, i8 -32, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.474, i8 -47, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.475, i8 -76, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.476, i8 122, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.477, i8 -18, i8 -35, i8 -126, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.478, i8 -1, i8 -20, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.479, i8 -18, i8 -36, i8 -126, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.480, i8 -51, i8 -66, i8 112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.481, i8 -117, i8 -127, i8 76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.482, i8 -6, i8 -6, i8 -46, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.483, i8 -45, i8 -45, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.484, i8 -112, i8 -18, i8 -112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.485, i8 -45, i8 -45, i8 -45, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.486, i8 -1, i8 -74, i8 -63, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.487, i8 -1, i8 -82, i8 -71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.488, i8 -18, i8 -94, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.489, i8 -51, i8 -116, i8 -107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.490, i8 -117, i8 95, i8 101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.491, i8 -1, i8 -96, i8 122, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.492, i8 -1, i8 -96, i8 122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.493, i8 -18, i8 -107, i8 114, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.494, i8 -51, i8 -127, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.495, i8 -117, i8 87, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.496, i8 32, i8 -78, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.497, i8 -121, i8 -50, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.498, i8 -80, i8 -30, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.499, i8 -92, i8 -45, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.500, i8 -115, i8 -74, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.501, i8 96, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.502, i8 -124, i8 112, i8 -1, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.503, i8 119, i8 -120, i8 -103, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.504, i8 119, i8 -120, i8 -103, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.505, i8 -80, i8 -60, i8 -34, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.506, i8 -54, i8 -31, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.507, i8 -68, i8 -46, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.508, i8 -94, i8 -75, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.509, i8 110, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.510, i8 -1, i8 -1, i8 -32, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.511, i8 -1, i8 -1, i8 -32, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.512, i8 -18, i8 -18, i8 -47, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.513, i8 -51, i8 -51, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.514, i8 -117, i8 -117, i8 122, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.515, i8 0, i8 -1, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.516, i8 50, i8 -51, i8 50, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.517, i8 -6, i8 -16, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.518, i8 -1, i8 0, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.519, i8 -18, i8 0, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.520, i8 -51, i8 0, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.521, i8 -117, i8 0, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.522, i8 -128, i8 0, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.522, i8 -80, i8 48, i8 96, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.523, i8 -1, i8 52, i8 -77, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.524, i8 -18, i8 48, i8 -89, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.525, i8 -51, i8 41, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.526, i8 -117, i8 28, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.527, i8 102, i8 -51, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.528, i8 0, i8 0, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.529, i8 50, i8 -127, i8 75, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.530, i8 -47, i8 -63, i8 102, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.531, i8 -70, i8 85, i8 -45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.532, i8 -32, i8 102, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.533, i8 -47, i8 95, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.534, i8 -76, i8 82, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.535, i8 122, i8 55, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.536, i8 -109, i8 112, i8 -37, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.537, i8 -85, i8 -126, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.538, i8 -97, i8 121, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.539, i8 -119, i8 104, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.540, i8 93, i8 71, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.541, i8 60, i8 -77, i8 113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.542, i8 123, i8 104, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.543, i8 0, i8 -6, i8 -102, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.544, i8 72, i8 -47, i8 -52, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.545, i8 -57, i8 21, i8 -123, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.546, i8 25, i8 25, i8 112, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.547, i8 -11, i8 -1, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.548, i8 -1, i8 -28, i8 -31, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.549, i8 -1, i8 -28, i8 -31, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.550, i8 -18, i8 -43, i8 -46, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.551, i8 -51, i8 -73, i8 -75, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.552, i8 -117, i8 125, i8 123, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.553, i8 -1, i8 -28, i8 -75, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.554, i8 -1, i8 -34, i8 -83, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.555, i8 -1, i8 -34, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.556, i8 -18, i8 -49, i8 -95, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.557, i8 -51, i8 -77, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.558, i8 -117, i8 121, i8 94, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.559, i8 0, i8 0, i8 -128, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.560, i8 0, i8 0, i8 -128, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.561, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.562, i8 -3, i8 -11, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.563, i8 -128, i8 -128, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.564, i8 107, i8 -114, i8 35, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.565, i8 -64, i8 -1, i8 62, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.566, i8 -77, i8 -18, i8 58, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.567, i8 -102, i8 -51, i8 50, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.568, i8 105, i8 -117, i8 34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.569, i8 0, i8 0, i8 0, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.570, i8 -1, i8 -91, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.571, i8 -1, i8 -91, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.572, i8 -18, i8 -102, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.573, i8 -51, i8 -123, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.574, i8 -117, i8 90, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.575, i8 -1, i8 69, i8 0, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.576, i8 -1, i8 69, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.577, i8 -18, i8 64, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.578, i8 -51, i8 55, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.579, i8 -117, i8 37, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.580, i8 -38, i8 112, i8 -42, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.581, i8 -1, i8 -125, i8 -6, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.582, i8 -18, i8 122, i8 -23, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.583, i8 -51, i8 105, i8 -55, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.584, i8 -117, i8 71, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.585, i8 -18, i8 -24, i8 -86, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.586, i8 -104, i8 -5, i8 -104, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.587, i8 -102, i8 -1, i8 -102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.588, i8 -112, i8 -18, i8 -112, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.589, i8 124, i8 -51, i8 124, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.590, i8 84, i8 -117, i8 84, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.591, i8 -81, i8 -18, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.592, i8 -69, i8 -1, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.593, i8 -82, i8 -18, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.594, i8 -106, i8 -51, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.595, i8 102, i8 -117, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.596, i8 -37, i8 112, i8 -109, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.597, i8 -1, i8 -126, i8 -85, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.598, i8 -18, i8 121, i8 -97, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.599, i8 -51, i8 104, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.600, i8 -117, i8 71, i8 93, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.601, i8 -1, i8 -17, i8 -43, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.602, i8 -1, i8 -38, i8 -71, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.603, i8 -1, i8 -38, i8 -71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.604, i8 -18, i8 -53, i8 -83, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.605, i8 -51, i8 -81, i8 -107, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.606, i8 -117, i8 119, i8 101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.607, i8 -51, i8 -123, i8 63, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.608, i8 -1, i8 -64, i8 -53, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.609, i8 -1, i8 -75, i8 -59, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.610, i8 -18, i8 -87, i8 -72, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.611, i8 -51, i8 -111, i8 -98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.612, i8 -117, i8 99, i8 108, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.613, i8 -35, i8 -96, i8 -35, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.614, i8 -1, i8 -69, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.615, i8 -18, i8 -82, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.616, i8 -51, i8 -106, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.617, i8 -117, i8 102, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.618, i8 -80, i8 -32, i8 -26, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.619, i8 -128, i8 0, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.619, i8 -96, i8 32, i8 -16, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.620, i8 -101, i8 48, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.621, i8 -111, i8 44, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.622, i8 125, i8 38, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.623, i8 85, i8 26, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.624, i8 -1, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.625, i8 -18, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.626, i8 -51, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.627, i8 -117, i8 0, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.628, i8 -68, i8 -113, i8 -113, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.629, i8 -1, i8 -63, i8 -63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.630, i8 -18, i8 -76, i8 -76, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.631, i8 -51, i8 -101, i8 -101, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.632, i8 -117, i8 105, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.633, i8 65, i8 105, i8 -31, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.634, i8 72, i8 118, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.635, i8 67, i8 110, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.636, i8 58, i8 95, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.637, i8 39, i8 64, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.638, i8 -117, i8 69, i8 19, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.639, i8 -6, i8 -128, i8 114, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.640, i8 -1, i8 -116, i8 105, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.641, i8 -18, i8 -126, i8 98, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.642, i8 -51, i8 112, i8 84, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.643, i8 -117, i8 76, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.644, i8 -12, i8 -92, i8 96, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.645, i8 46, i8 -117, i8 87, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.646, i8 84, i8 -1, i8 -97, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.647, i8 78, i8 -18, i8 -108, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.648, i8 67, i8 -51, i8 -128, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.649, i8 46, i8 -117, i8 87, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.650, i8 -1, i8 -11, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.651, i8 -1, i8 -11, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.652, i8 -18, i8 -27, i8 -34, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.653, i8 -51, i8 -59, i8 -65, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.654, i8 -117, i8 -122, i8 -126, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.655, i8 -96, i8 82, i8 45, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.656, i8 -1, i8 -126, i8 71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.657, i8 -18, i8 121, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.658, i8 -51, i8 104, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.659, i8 -117, i8 71, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.660, i8 -64, i8 -64, i8 -64, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.661, i8 -121, i8 -50, i8 -21, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.662, i8 -121, i8 -50, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.663, i8 126, i8 -64, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.664, i8 108, i8 -90, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.665, i8 74, i8 112, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.666, i8 106, i8 90, i8 -51, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.667, i8 -125, i8 111, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.668, i8 122, i8 103, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.669, i8 105, i8 89, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.670, i8 71, i8 60, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.671, i8 112, i8 -128, i8 -112, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.672, i8 -58, i8 -30, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.673, i8 -71, i8 -45, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.674, i8 -97, i8 -74, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.675, i8 108, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.676, i8 112, i8 -128, i8 -112, float 1.000000e+00, i64 3 }, %struct._ColorMapInfo { ptr @.str.677, i8 -1, i8 -6, i8 -6, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.678, i8 -1, i8 -6, i8 -6, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.679, i8 -18, i8 -23, i8 -23, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.680, i8 -51, i8 -55, i8 -55, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.681, i8 -117, i8 -119, i8 -119, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.682, i8 0, i8 -1, i8 127, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.683, i8 0, i8 -1, i8 127, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.684, i8 0, i8 -18, i8 118, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.685, i8 0, i8 -51, i8 102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.686, i8 0, i8 -117, i8 69, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.687, i8 70, i8 -126, i8 -76, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.688, i8 99, i8 -72, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.689, i8 92, i8 -84, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.690, i8 79, i8 -108, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.691, i8 54, i8 100, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.692, i8 -46, i8 -76, i8 -116, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.693, i8 -1, i8 -91, i8 79, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.694, i8 -18, i8 -102, i8 73, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.695, i8 -51, i8 -123, i8 63, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.696, i8 -117, i8 90, i8 43, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.697, i8 0, i8 -128, i8 -128, float 1.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.698, i8 -40, i8 -65, i8 -40, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.699, i8 -1, i8 -31, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.700, i8 -18, i8 -46, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.701, i8 -51, i8 -75, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.702, i8 -117, i8 123, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.703, i8 -1, i8 99, i8 71, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.704, i8 -1, i8 99, i8 71, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.705, i8 -18, i8 92, i8 66, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.706, i8 -51, i8 79, i8 57, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.707, i8 -117, i8 54, i8 38, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.708, i8 0, i8 0, i8 0, float 0.000000e+00, i64 1 }, %struct._ColorMapInfo { ptr @.str.709, i8 64, i8 -32, i8 -48, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.710, i8 0, i8 -11, i8 -1, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.711, i8 0, i8 -27, i8 -18, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.712, i8 0, i8 -59, i8 -51, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.713, i8 0, i8 -122, i8 -117, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.714, i8 -18, i8 -126, i8 -18, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.715, i8 -48, i8 32, i8 -112, float 1.000000e+00, i64 6 }, %struct._ColorMapInfo { ptr @.str.716, i8 -1, i8 62, i8 -106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.717, i8 -18, i8 58, i8 -116, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.718, i8 -51, i8 50, i8 120, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.719, i8 -117, i8 34, i8 82, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.720, i8 -11, i8 -34, i8 -77, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.721, i8 -1, i8 -25, i8 -70, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.722, i8 -18, i8 -40, i8 -82, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.723, i8 -51, i8 -70, i8 -106, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.724, i8 -117, i8 126, i8 102, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.725, i8 -11, i8 -11, i8 -11, float 1.000000e+00, i64 7 }, %struct._ColorMapInfo { ptr @.str.726, i8 -1, i8 -1, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.727, i8 -18, i8 -18, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.728, i8 -51, i8 -51, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.729, i8 -117, i8 -117, i8 0, float 1.000000e+00, i64 2 }, %struct._ColorMapInfo { ptr @.str.730, i8 -102, i8 -51, i8 50, float 1.000000e+00, i64 7 }], align 16, !dbg !889
@.str.40 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Loading color file \22%s\22 ...\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.48 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"<color\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"compliance\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"*SVG*\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"*X11*\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"*XPM*\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"AliceBlue\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"AntiqueWhite\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"AntiqueWhite1\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"AntiqueWhite2\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"AntiqueWhite3\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"AntiqueWhite4\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"aqua\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"aquamarine\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"aquamarine1\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"aquamarine2\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"aquamarine3\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"aquamarine4\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"azure\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"azure1\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"azure2\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"azure3\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"azure4\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"beige\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"bisque\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"bisque1\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"bisque2\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"bisque3\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"bisque4\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"BlanchedAlmond\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"blue1\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"blue2\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"blue3\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"blue4\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"BlueViolet\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"brown\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"brown1\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"brown2\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"brown3\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"brown4\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"burlywood\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"burlywood1\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"burlywood2\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"burlywood3\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"burlywood4\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"CadetBlue\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"CadetBlue1\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"CadetBlue2\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"CadetBlue3\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"CadetBlue4\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"chartreuse\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"chartreuse1\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"chartreuse2\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"chartreuse3\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"chartreuse4\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"chocolate\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"chocolate1\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"chocolate2\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"chocolate3\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"chocolate4\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"coral\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"coral1\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"coral2\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"coral3\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"coral4\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"CornflowerBlue\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"cornsilk\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"cornsilk1\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"cornsilk2\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"cornsilk3\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"cornsilk4\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"crimson\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"cyan1\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"cyan2\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"cyan3\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"cyan4\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"DarkBlue\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"DarkCyan\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"DarkGoldenrod\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod1\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod2\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod3\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"DarkGoldenrod4\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"DarkGray\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"DarkGreen\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"DarkGrey\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"DarkKhaki\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"DarkMagenta\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"DarkOliveGreen\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen1\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen2\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen3\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"DarkOliveGreen4\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"DarkOrange\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"DarkOrange1\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"DarkOrange2\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"DarkOrange3\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"DarkOrange4\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"DarkOrchid\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"DarkOrchid1\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"DarkOrchid2\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"DarkOrchid3\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"DarkOrchid4\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"DarkRed\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"DarkSalmon\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"DarkSeaGreen\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen1\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen2\00", align 1
@.str.170 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen3\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"DarkSeaGreen4\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"DarkSlateBlue\00", align 1
@.str.173 = private unnamed_addr constant [14 x i8] c"DarkSlateGray\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"DarkSlateGray1\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"DarkSlateGray2\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"DarkSlateGray3\00", align 1
@.str.177 = private unnamed_addr constant [15 x i8] c"DarkSlateGray4\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"DarkSlateGrey\00", align 1
@.str.179 = private unnamed_addr constant [14 x i8] c"DarkTurquoise\00", align 1
@.str.180 = private unnamed_addr constant [11 x i8] c"DarkViolet\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"DeepPink\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"DeepPink1\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"DeepPink2\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"DeepPink3\00", align 1
@.str.185 = private unnamed_addr constant [10 x i8] c"DeepPink4\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"DeepSkyBlue\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue1\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue2\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue3\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"DeepSkyBlue4\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"DimGray\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"DimGrey\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"DodgerBlue\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"DodgerBlue1\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"DodgerBlue2\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"DodgerBlue3\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"DodgerBlue4\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"firebrick\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"firebrick1\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"firebrick2\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"firebrick3\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"firebrick4\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"FloralWhite\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"ForestGreen\00", align 1
@.str.205 = private unnamed_addr constant [8 x i8] c"fractal\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"fuchsia\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"gainsboro\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"GhostWhite\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"gold\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"gold1\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"gold2\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"gold3\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"gold4\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"goldenrod\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"goldenrod1\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"goldenrod2\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"goldenrod3\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"goldenrod4\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"gray0\00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"gray1\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"gray10\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"gray100\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"gray11\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"gray12\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"gray13\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"gray14\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"gray15\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"gray16\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"gray17\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"gray18\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"gray19\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"gray2\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"gray20\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"gray21\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"gray22\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"gray23\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"gray24\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"gray25\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"gray26\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"gray27\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"gray28\00", align 1
@.str.243 = private unnamed_addr constant [7 x i8] c"gray29\00", align 1
@.str.244 = private unnamed_addr constant [6 x i8] c"gray3\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"gray30\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"gray31\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"gray32\00", align 1
@.str.248 = private unnamed_addr constant [7 x i8] c"gray33\00", align 1
@.str.249 = private unnamed_addr constant [7 x i8] c"gray34\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"gray35\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"gray36\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"gray37\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"gray38\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c"gray39\00", align 1
@.str.255 = private unnamed_addr constant [6 x i8] c"gray4\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"gray40\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"gray41\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"gray42\00", align 1
@.str.259 = private unnamed_addr constant [7 x i8] c"gray43\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"gray44\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"gray45\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"gray46\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"gray47\00", align 1
@.str.264 = private unnamed_addr constant [7 x i8] c"gray48\00", align 1
@.str.265 = private unnamed_addr constant [7 x i8] c"gray49\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"gray5\00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"gray50\00", align 1
@.str.268 = private unnamed_addr constant [7 x i8] c"gray51\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"gray52\00", align 1
@.str.270 = private unnamed_addr constant [7 x i8] c"gray53\00", align 1
@.str.271 = private unnamed_addr constant [7 x i8] c"gray54\00", align 1
@.str.272 = private unnamed_addr constant [7 x i8] c"gray55\00", align 1
@.str.273 = private unnamed_addr constant [7 x i8] c"gray56\00", align 1
@.str.274 = private unnamed_addr constant [7 x i8] c"gray57\00", align 1
@.str.275 = private unnamed_addr constant [7 x i8] c"gray58\00", align 1
@.str.276 = private unnamed_addr constant [7 x i8] c"gray59\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"gray6\00", align 1
@.str.278 = private unnamed_addr constant [7 x i8] c"gray60\00", align 1
@.str.279 = private unnamed_addr constant [7 x i8] c"gray61\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c"gray62\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"gray63\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"gray64\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"gray65\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"gray66\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"gray67\00", align 1
@.str.286 = private unnamed_addr constant [7 x i8] c"gray68\00", align 1
@.str.287 = private unnamed_addr constant [7 x i8] c"gray69\00", align 1
@.str.288 = private unnamed_addr constant [6 x i8] c"gray7\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"gray70\00", align 1
@.str.290 = private unnamed_addr constant [7 x i8] c"gray71\00", align 1
@.str.291 = private unnamed_addr constant [7 x i8] c"gray72\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"gray73\00", align 1
@.str.293 = private unnamed_addr constant [7 x i8] c"gray74\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"gray75\00", align 1
@.str.295 = private unnamed_addr constant [7 x i8] c"gray76\00", align 1
@.str.296 = private unnamed_addr constant [7 x i8] c"gray77\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c"gray78\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"gray79\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"gray8\00", align 1
@.str.300 = private unnamed_addr constant [7 x i8] c"gray80\00", align 1
@.str.301 = private unnamed_addr constant [7 x i8] c"gray81\00", align 1
@.str.302 = private unnamed_addr constant [7 x i8] c"gray82\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"gray83\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"gray84\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"gray85\00", align 1
@.str.306 = private unnamed_addr constant [7 x i8] c"gray86\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"gray87\00", align 1
@.str.308 = private unnamed_addr constant [7 x i8] c"gray88\00", align 1
@.str.309 = private unnamed_addr constant [7 x i8] c"gray89\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"gray9\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"gray90\00", align 1
@.str.312 = private unnamed_addr constant [7 x i8] c"gray91\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"gray92\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"gray93\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"gray94\00", align 1
@.str.316 = private unnamed_addr constant [7 x i8] c"gray95\00", align 1
@.str.317 = private unnamed_addr constant [7 x i8] c"gray96\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"gray97\00", align 1
@.str.319 = private unnamed_addr constant [7 x i8] c"gray98\00", align 1
@.str.320 = private unnamed_addr constant [7 x i8] c"gray99\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"green1\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"green2\00", align 1
@.str.323 = private unnamed_addr constant [7 x i8] c"green3\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"green4\00", align 1
@.str.325 = private unnamed_addr constant [12 x i8] c"GreenYellow\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"grey\00", align 1
@.str.327 = private unnamed_addr constant [6 x i8] c"grey0\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"grey1\00", align 1
@.str.329 = private unnamed_addr constant [7 x i8] c"grey10\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"grey100\00", align 1
@.str.331 = private unnamed_addr constant [7 x i8] c"grey11\00", align 1
@.str.332 = private unnamed_addr constant [7 x i8] c"grey12\00", align 1
@.str.333 = private unnamed_addr constant [7 x i8] c"grey13\00", align 1
@.str.334 = private unnamed_addr constant [7 x i8] c"grey14\00", align 1
@.str.335 = private unnamed_addr constant [7 x i8] c"grey15\00", align 1
@.str.336 = private unnamed_addr constant [7 x i8] c"grey16\00", align 1
@.str.337 = private unnamed_addr constant [7 x i8] c"grey17\00", align 1
@.str.338 = private unnamed_addr constant [7 x i8] c"grey18\00", align 1
@.str.339 = private unnamed_addr constant [7 x i8] c"grey19\00", align 1
@.str.340 = private unnamed_addr constant [6 x i8] c"grey2\00", align 1
@.str.341 = private unnamed_addr constant [7 x i8] c"grey20\00", align 1
@.str.342 = private unnamed_addr constant [7 x i8] c"grey21\00", align 1
@.str.343 = private unnamed_addr constant [7 x i8] c"grey22\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"grey23\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c"grey24\00", align 1
@.str.346 = private unnamed_addr constant [7 x i8] c"grey25\00", align 1
@.str.347 = private unnamed_addr constant [7 x i8] c"grey26\00", align 1
@.str.348 = private unnamed_addr constant [7 x i8] c"grey27\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"grey28\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"grey29\00", align 1
@.str.351 = private unnamed_addr constant [6 x i8] c"grey3\00", align 1
@.str.352 = private unnamed_addr constant [7 x i8] c"grey30\00", align 1
@.str.353 = private unnamed_addr constant [7 x i8] c"grey31\00", align 1
@.str.354 = private unnamed_addr constant [7 x i8] c"grey32\00", align 1
@.str.355 = private unnamed_addr constant [7 x i8] c"grey33\00", align 1
@.str.356 = private unnamed_addr constant [7 x i8] c"grey34\00", align 1
@.str.357 = private unnamed_addr constant [7 x i8] c"grey35\00", align 1
@.str.358 = private unnamed_addr constant [7 x i8] c"grey36\00", align 1
@.str.359 = private unnamed_addr constant [7 x i8] c"grey37\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"grey38\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"grey39\00", align 1
@.str.362 = private unnamed_addr constant [6 x i8] c"grey4\00", align 1
@.str.363 = private unnamed_addr constant [7 x i8] c"grey40\00", align 1
@.str.364 = private unnamed_addr constant [7 x i8] c"grey41\00", align 1
@.str.365 = private unnamed_addr constant [7 x i8] c"grey42\00", align 1
@.str.366 = private unnamed_addr constant [7 x i8] c"grey43\00", align 1
@.str.367 = private unnamed_addr constant [7 x i8] c"grey44\00", align 1
@.str.368 = private unnamed_addr constant [7 x i8] c"grey45\00", align 1
@.str.369 = private unnamed_addr constant [7 x i8] c"grey46\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"grey47\00", align 1
@.str.371 = private unnamed_addr constant [7 x i8] c"grey48\00", align 1
@.str.372 = private unnamed_addr constant [7 x i8] c"grey49\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"grey5\00", align 1
@.str.374 = private unnamed_addr constant [7 x i8] c"grey50\00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c"grey51\00", align 1
@.str.376 = private unnamed_addr constant [7 x i8] c"grey52\00", align 1
@.str.377 = private unnamed_addr constant [7 x i8] c"grey53\00", align 1
@.str.378 = private unnamed_addr constant [7 x i8] c"grey54\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"grey55\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"grey56\00", align 1
@.str.381 = private unnamed_addr constant [7 x i8] c"grey57\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"grey58\00", align 1
@.str.383 = private unnamed_addr constant [7 x i8] c"grey59\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"grey6\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"grey60\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"grey61\00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"grey62\00", align 1
@.str.388 = private unnamed_addr constant [7 x i8] c"grey63\00", align 1
@.str.389 = private unnamed_addr constant [7 x i8] c"grey64\00", align 1
@.str.390 = private unnamed_addr constant [7 x i8] c"grey65\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"grey66\00", align 1
@.str.392 = private unnamed_addr constant [7 x i8] c"grey67\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"grey68\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"grey69\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"grey7\00", align 1
@.str.396 = private unnamed_addr constant [7 x i8] c"grey70\00", align 1
@.str.397 = private unnamed_addr constant [7 x i8] c"grey71\00", align 1
@.str.398 = private unnamed_addr constant [7 x i8] c"grey72\00", align 1
@.str.399 = private unnamed_addr constant [7 x i8] c"grey73\00", align 1
@.str.400 = private unnamed_addr constant [7 x i8] c"grey74\00", align 1
@.str.401 = private unnamed_addr constant [7 x i8] c"grey75\00", align 1
@.str.402 = private unnamed_addr constant [7 x i8] c"grey76\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"grey77\00", align 1
@.str.404 = private unnamed_addr constant [7 x i8] c"grey78\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"grey79\00", align 1
@.str.406 = private unnamed_addr constant [6 x i8] c"grey8\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"grey80\00", align 1
@.str.408 = private unnamed_addr constant [7 x i8] c"grey81\00", align 1
@.str.409 = private unnamed_addr constant [7 x i8] c"grey82\00", align 1
@.str.410 = private unnamed_addr constant [7 x i8] c"grey83\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"grey84\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"grey85\00", align 1
@.str.413 = private unnamed_addr constant [7 x i8] c"grey86\00", align 1
@.str.414 = private unnamed_addr constant [7 x i8] c"grey87\00", align 1
@.str.415 = private unnamed_addr constant [7 x i8] c"grey88\00", align 1
@.str.416 = private unnamed_addr constant [7 x i8] c"grey89\00", align 1
@.str.417 = private unnamed_addr constant [6 x i8] c"grey9\00", align 1
@.str.418 = private unnamed_addr constant [7 x i8] c"grey90\00", align 1
@.str.419 = private unnamed_addr constant [7 x i8] c"grey91\00", align 1
@.str.420 = private unnamed_addr constant [7 x i8] c"grey92\00", align 1
@.str.421 = private unnamed_addr constant [7 x i8] c"grey93\00", align 1
@.str.422 = private unnamed_addr constant [7 x i8] c"grey94\00", align 1
@.str.423 = private unnamed_addr constant [7 x i8] c"grey95\00", align 1
@.str.424 = private unnamed_addr constant [7 x i8] c"grey96\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"grey97\00", align 1
@.str.426 = private unnamed_addr constant [7 x i8] c"grey98\00", align 1
@.str.427 = private unnamed_addr constant [7 x i8] c"grey99\00", align 1
@.str.428 = private unnamed_addr constant [9 x i8] c"honeydew\00", align 1
@.str.429 = private unnamed_addr constant [10 x i8] c"honeydew1\00", align 1
@.str.430 = private unnamed_addr constant [10 x i8] c"honeydew2\00", align 1
@.str.431 = private unnamed_addr constant [10 x i8] c"honeydew3\00", align 1
@.str.432 = private unnamed_addr constant [10 x i8] c"honeydew4\00", align 1
@.str.433 = private unnamed_addr constant [8 x i8] c"HotPink\00", align 1
@.str.434 = private unnamed_addr constant [9 x i8] c"HotPink1\00", align 1
@.str.435 = private unnamed_addr constant [9 x i8] c"HotPink2\00", align 1
@.str.436 = private unnamed_addr constant [9 x i8] c"HotPink3\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"HotPink4\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"IndianRed\00", align 1
@.str.439 = private unnamed_addr constant [11 x i8] c"IndianRed1\00", align 1
@.str.440 = private unnamed_addr constant [11 x i8] c"IndianRed2\00", align 1
@.str.441 = private unnamed_addr constant [11 x i8] c"IndianRed3\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"IndianRed4\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"indigo\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"ivory\00", align 1
@.str.445 = private unnamed_addr constant [7 x i8] c"ivory1\00", align 1
@.str.446 = private unnamed_addr constant [7 x i8] c"ivory2\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"ivory3\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"ivory4\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"khaki\00", align 1
@.str.450 = private unnamed_addr constant [7 x i8] c"khaki1\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"khaki2\00", align 1
@.str.452 = private unnamed_addr constant [7 x i8] c"khaki3\00", align 1
@.str.453 = private unnamed_addr constant [7 x i8] c"khaki4\00", align 1
@.str.454 = private unnamed_addr constant [9 x i8] c"lavender\00", align 1
@.str.455 = private unnamed_addr constant [14 x i8] c"LavenderBlush\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"LavenderBlush1\00", align 1
@.str.457 = private unnamed_addr constant [15 x i8] c"LavenderBlush2\00", align 1
@.str.458 = private unnamed_addr constant [15 x i8] c"LavenderBlush3\00", align 1
@.str.459 = private unnamed_addr constant [15 x i8] c"LavenderBlush4\00", align 1
@.str.460 = private unnamed_addr constant [10 x i8] c"LawnGreen\00", align 1
@.str.461 = private unnamed_addr constant [13 x i8] c"LemonChiffon\00", align 1
@.str.462 = private unnamed_addr constant [14 x i8] c"LemonChiffon1\00", align 1
@.str.463 = private unnamed_addr constant [14 x i8] c"LemonChiffon2\00", align 1
@.str.464 = private unnamed_addr constant [14 x i8] c"LemonChiffon3\00", align 1
@.str.465 = private unnamed_addr constant [14 x i8] c"LemonChiffon4\00", align 1
@.str.466 = private unnamed_addr constant [10 x i8] c"LightBlue\00", align 1
@.str.467 = private unnamed_addr constant [11 x i8] c"LightBlue1\00", align 1
@.str.468 = private unnamed_addr constant [11 x i8] c"LightBlue2\00", align 1
@.str.469 = private unnamed_addr constant [11 x i8] c"LightBlue3\00", align 1
@.str.470 = private unnamed_addr constant [11 x i8] c"LightBlue4\00", align 1
@.str.471 = private unnamed_addr constant [11 x i8] c"LightCoral\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"LightCyan\00", align 1
@.str.473 = private unnamed_addr constant [11 x i8] c"LightCyan1\00", align 1
@.str.474 = private unnamed_addr constant [11 x i8] c"LightCyan2\00", align 1
@.str.475 = private unnamed_addr constant [11 x i8] c"LightCyan3\00", align 1
@.str.476 = private unnamed_addr constant [11 x i8] c"LightCyan4\00", align 1
@.str.477 = private unnamed_addr constant [15 x i8] c"LightGoldenrod\00", align 1
@.str.478 = private unnamed_addr constant [16 x i8] c"LightGoldenrod1\00", align 1
@.str.479 = private unnamed_addr constant [16 x i8] c"LightGoldenrod2\00", align 1
@.str.480 = private unnamed_addr constant [16 x i8] c"LightGoldenrod3\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"LightGoldenrod4\00", align 1
@.str.482 = private unnamed_addr constant [21 x i8] c"LightGoldenrodYellow\00", align 1
@.str.483 = private unnamed_addr constant [10 x i8] c"LightGray\00", align 1
@.str.484 = private unnamed_addr constant [11 x i8] c"LightGreen\00", align 1
@.str.485 = private unnamed_addr constant [10 x i8] c"LightGrey\00", align 1
@.str.486 = private unnamed_addr constant [10 x i8] c"LightPink\00", align 1
@.str.487 = private unnamed_addr constant [11 x i8] c"LightPink1\00", align 1
@.str.488 = private unnamed_addr constant [11 x i8] c"LightPink2\00", align 1
@.str.489 = private unnamed_addr constant [11 x i8] c"LightPink3\00", align 1
@.str.490 = private unnamed_addr constant [11 x i8] c"LightPink4\00", align 1
@.str.491 = private unnamed_addr constant [12 x i8] c"LightSalmon\00", align 1
@.str.492 = private unnamed_addr constant [13 x i8] c"LightSalmon1\00", align 1
@.str.493 = private unnamed_addr constant [13 x i8] c"LightSalmon2\00", align 1
@.str.494 = private unnamed_addr constant [13 x i8] c"LightSalmon3\00", align 1
@.str.495 = private unnamed_addr constant [13 x i8] c"LightSalmon4\00", align 1
@.str.496 = private unnamed_addr constant [14 x i8] c"LightSeaGreen\00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"LightSkyBlue\00", align 1
@.str.498 = private unnamed_addr constant [14 x i8] c"LightSkyBlue1\00", align 1
@.str.499 = private unnamed_addr constant [14 x i8] c"LightSkyBlue2\00", align 1
@.str.500 = private unnamed_addr constant [14 x i8] c"LightSkyBlue3\00", align 1
@.str.501 = private unnamed_addr constant [14 x i8] c"LightSkyBlue4\00", align 1
@.str.502 = private unnamed_addr constant [15 x i8] c"LightSlateBlue\00", align 1
@.str.503 = private unnamed_addr constant [15 x i8] c"LightSlateGray\00", align 1
@.str.504 = private unnamed_addr constant [15 x i8] c"LightSlateGrey\00", align 1
@.str.505 = private unnamed_addr constant [15 x i8] c"LightSteelBlue\00", align 1
@.str.506 = private unnamed_addr constant [16 x i8] c"LightSteelBlue1\00", align 1
@.str.507 = private unnamed_addr constant [16 x i8] c"LightSteelBlue2\00", align 1
@.str.508 = private unnamed_addr constant [16 x i8] c"LightSteelBlue3\00", align 1
@.str.509 = private unnamed_addr constant [16 x i8] c"LightSteelBlue4\00", align 1
@.str.510 = private unnamed_addr constant [12 x i8] c"LightYellow\00", align 1
@.str.511 = private unnamed_addr constant [13 x i8] c"LightYellow1\00", align 1
@.str.512 = private unnamed_addr constant [13 x i8] c"LightYellow2\00", align 1
@.str.513 = private unnamed_addr constant [13 x i8] c"LightYellow3\00", align 1
@.str.514 = private unnamed_addr constant [13 x i8] c"LightYellow4\00", align 1
@.str.515 = private unnamed_addr constant [5 x i8] c"lime\00", align 1
@.str.516 = private unnamed_addr constant [10 x i8] c"LimeGreen\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"linen\00", align 1
@.str.518 = private unnamed_addr constant [9 x i8] c"magenta1\00", align 1
@.str.519 = private unnamed_addr constant [9 x i8] c"magenta2\00", align 1
@.str.520 = private unnamed_addr constant [9 x i8] c"magenta3\00", align 1
@.str.521 = private unnamed_addr constant [9 x i8] c"magenta4\00", align 1
@.str.522 = private unnamed_addr constant [7 x i8] c"maroon\00", align 1
@.str.523 = private unnamed_addr constant [8 x i8] c"maroon1\00", align 1
@.str.524 = private unnamed_addr constant [8 x i8] c"maroon2\00", align 1
@.str.525 = private unnamed_addr constant [8 x i8] c"maroon3\00", align 1
@.str.526 = private unnamed_addr constant [8 x i8] c"maroon4\00", align 1
@.str.527 = private unnamed_addr constant [17 x i8] c"MediumAquamarine\00", align 1
@.str.528 = private unnamed_addr constant [11 x i8] c"MediumBlue\00", align 1
@.str.529 = private unnamed_addr constant [18 x i8] c"MediumForestGreen\00", align 1
@.str.530 = private unnamed_addr constant [16 x i8] c"MediumGoldenRod\00", align 1
@.str.531 = private unnamed_addr constant [13 x i8] c"MediumOrchid\00", align 1
@.str.532 = private unnamed_addr constant [14 x i8] c"MediumOrchid1\00", align 1
@.str.533 = private unnamed_addr constant [14 x i8] c"MediumOrchid2\00", align 1
@.str.534 = private unnamed_addr constant [14 x i8] c"MediumOrchid3\00", align 1
@.str.535 = private unnamed_addr constant [14 x i8] c"MediumOrchid4\00", align 1
@.str.536 = private unnamed_addr constant [13 x i8] c"MediumPurple\00", align 1
@.str.537 = private unnamed_addr constant [14 x i8] c"MediumPurple1\00", align 1
@.str.538 = private unnamed_addr constant [14 x i8] c"MediumPurple2\00", align 1
@.str.539 = private unnamed_addr constant [14 x i8] c"MediumPurple3\00", align 1
@.str.540 = private unnamed_addr constant [14 x i8] c"MediumPurple4\00", align 1
@.str.541 = private unnamed_addr constant [15 x i8] c"MediumSeaGreen\00", align 1
@.str.542 = private unnamed_addr constant [16 x i8] c"MediumSlateBlue\00", align 1
@.str.543 = private unnamed_addr constant [18 x i8] c"MediumSpringGreen\00", align 1
@.str.544 = private unnamed_addr constant [16 x i8] c"MediumTurquoise\00", align 1
@.str.545 = private unnamed_addr constant [16 x i8] c"MediumVioletRed\00", align 1
@.str.546 = private unnamed_addr constant [13 x i8] c"MidnightBlue\00", align 1
@.str.547 = private unnamed_addr constant [10 x i8] c"MintCream\00", align 1
@.str.548 = private unnamed_addr constant [10 x i8] c"MistyRose\00", align 1
@.str.549 = private unnamed_addr constant [11 x i8] c"MistyRose1\00", align 1
@.str.550 = private unnamed_addr constant [11 x i8] c"MistyRose2\00", align 1
@.str.551 = private unnamed_addr constant [11 x i8] c"MistyRose3\00", align 1
@.str.552 = private unnamed_addr constant [11 x i8] c"MistyRose4\00", align 1
@.str.553 = private unnamed_addr constant [9 x i8] c"moccasin\00", align 1
@.str.554 = private unnamed_addr constant [12 x i8] c"NavajoWhite\00", align 1
@.str.555 = private unnamed_addr constant [13 x i8] c"NavajoWhite1\00", align 1
@.str.556 = private unnamed_addr constant [13 x i8] c"NavajoWhite2\00", align 1
@.str.557 = private unnamed_addr constant [13 x i8] c"NavajoWhite3\00", align 1
@.str.558 = private unnamed_addr constant [13 x i8] c"NavajoWhite4\00", align 1
@.str.559 = private unnamed_addr constant [5 x i8] c"navy\00", align 1
@.str.560 = private unnamed_addr constant [9 x i8] c"NavyBlue\00", align 1
@.str.561 = private unnamed_addr constant [6 x i8] c"matte\00", align 1
@.str.562 = private unnamed_addr constant [8 x i8] c"OldLace\00", align 1
@.str.563 = private unnamed_addr constant [6 x i8] c"olive\00", align 1
@.str.564 = private unnamed_addr constant [10 x i8] c"OliveDrab\00", align 1
@.str.565 = private unnamed_addr constant [11 x i8] c"OliveDrab1\00", align 1
@.str.566 = private unnamed_addr constant [11 x i8] c"OliveDrab2\00", align 1
@.str.567 = private unnamed_addr constant [11 x i8] c"OliveDrab3\00", align 1
@.str.568 = private unnamed_addr constant [11 x i8] c"OliveDrab4\00", align 1
@.str.569 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.570 = private unnamed_addr constant [7 x i8] c"orange\00", align 1
@.str.571 = private unnamed_addr constant [8 x i8] c"orange1\00", align 1
@.str.572 = private unnamed_addr constant [8 x i8] c"orange2\00", align 1
@.str.573 = private unnamed_addr constant [8 x i8] c"orange3\00", align 1
@.str.574 = private unnamed_addr constant [8 x i8] c"orange4\00", align 1
@.str.575 = private unnamed_addr constant [10 x i8] c"OrangeRed\00", align 1
@.str.576 = private unnamed_addr constant [11 x i8] c"OrangeRed1\00", align 1
@.str.577 = private unnamed_addr constant [11 x i8] c"OrangeRed2\00", align 1
@.str.578 = private unnamed_addr constant [11 x i8] c"OrangeRed3\00", align 1
@.str.579 = private unnamed_addr constant [11 x i8] c"OrangeRed4\00", align 1
@.str.580 = private unnamed_addr constant [7 x i8] c"orchid\00", align 1
@.str.581 = private unnamed_addr constant [8 x i8] c"orchid1\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"orchid2\00", align 1
@.str.583 = private unnamed_addr constant [8 x i8] c"orchid3\00", align 1
@.str.584 = private unnamed_addr constant [8 x i8] c"orchid4\00", align 1
@.str.585 = private unnamed_addr constant [14 x i8] c"PaleGoldenrod\00", align 1
@.str.586 = private unnamed_addr constant [10 x i8] c"PaleGreen\00", align 1
@.str.587 = private unnamed_addr constant [11 x i8] c"PaleGreen1\00", align 1
@.str.588 = private unnamed_addr constant [11 x i8] c"PaleGreen2\00", align 1
@.str.589 = private unnamed_addr constant [11 x i8] c"PaleGreen3\00", align 1
@.str.590 = private unnamed_addr constant [11 x i8] c"PaleGreen4\00", align 1
@.str.591 = private unnamed_addr constant [14 x i8] c"PaleTurquoise\00", align 1
@.str.592 = private unnamed_addr constant [15 x i8] c"PaleTurquoise1\00", align 1
@.str.593 = private unnamed_addr constant [15 x i8] c"PaleTurquoise2\00", align 1
@.str.594 = private unnamed_addr constant [15 x i8] c"PaleTurquoise3\00", align 1
@.str.595 = private unnamed_addr constant [15 x i8] c"PaleTurquoise4\00", align 1
@.str.596 = private unnamed_addr constant [14 x i8] c"PaleVioletRed\00", align 1
@.str.597 = private unnamed_addr constant [15 x i8] c"PaleVioletRed1\00", align 1
@.str.598 = private unnamed_addr constant [15 x i8] c"PaleVioletRed2\00", align 1
@.str.599 = private unnamed_addr constant [15 x i8] c"PaleVioletRed3\00", align 1
@.str.600 = private unnamed_addr constant [15 x i8] c"PaleVioletRed4\00", align 1
@.str.601 = private unnamed_addr constant [11 x i8] c"PapayaWhip\00", align 1
@.str.602 = private unnamed_addr constant [10 x i8] c"PeachPuff\00", align 1
@.str.603 = private unnamed_addr constant [11 x i8] c"PeachPuff1\00", align 1
@.str.604 = private unnamed_addr constant [11 x i8] c"PeachPuff2\00", align 1
@.str.605 = private unnamed_addr constant [11 x i8] c"PeachPuff3\00", align 1
@.str.606 = private unnamed_addr constant [11 x i8] c"PeachPuff4\00", align 1
@.str.607 = private unnamed_addr constant [5 x i8] c"peru\00", align 1
@.str.608 = private unnamed_addr constant [5 x i8] c"pink\00", align 1
@.str.609 = private unnamed_addr constant [6 x i8] c"pink1\00", align 1
@.str.610 = private unnamed_addr constant [6 x i8] c"pink2\00", align 1
@.str.611 = private unnamed_addr constant [6 x i8] c"pink3\00", align 1
@.str.612 = private unnamed_addr constant [6 x i8] c"pink4\00", align 1
@.str.613 = private unnamed_addr constant [5 x i8] c"plum\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"plum1\00", align 1
@.str.615 = private unnamed_addr constant [6 x i8] c"plum2\00", align 1
@.str.616 = private unnamed_addr constant [6 x i8] c"plum3\00", align 1
@.str.617 = private unnamed_addr constant [6 x i8] c"plum4\00", align 1
@.str.618 = private unnamed_addr constant [11 x i8] c"PowderBlue\00", align 1
@.str.619 = private unnamed_addr constant [7 x i8] c"purple\00", align 1
@.str.620 = private unnamed_addr constant [8 x i8] c"purple1\00", align 1
@.str.621 = private unnamed_addr constant [8 x i8] c"purple2\00", align 1
@.str.622 = private unnamed_addr constant [8 x i8] c"purple3\00", align 1
@.str.623 = private unnamed_addr constant [8 x i8] c"purple4\00", align 1
@.str.624 = private unnamed_addr constant [5 x i8] c"red1\00", align 1
@.str.625 = private unnamed_addr constant [5 x i8] c"red2\00", align 1
@.str.626 = private unnamed_addr constant [5 x i8] c"red3\00", align 1
@.str.627 = private unnamed_addr constant [5 x i8] c"red4\00", align 1
@.str.628 = private unnamed_addr constant [10 x i8] c"RosyBrown\00", align 1
@.str.629 = private unnamed_addr constant [11 x i8] c"RosyBrown1\00", align 1
@.str.630 = private unnamed_addr constant [11 x i8] c"RosyBrown2\00", align 1
@.str.631 = private unnamed_addr constant [11 x i8] c"RosyBrown3\00", align 1
@.str.632 = private unnamed_addr constant [11 x i8] c"RosyBrown4\00", align 1
@.str.633 = private unnamed_addr constant [10 x i8] c"RoyalBlue\00", align 1
@.str.634 = private unnamed_addr constant [11 x i8] c"RoyalBlue1\00", align 1
@.str.635 = private unnamed_addr constant [11 x i8] c"RoyalBlue2\00", align 1
@.str.636 = private unnamed_addr constant [11 x i8] c"RoyalBlue3\00", align 1
@.str.637 = private unnamed_addr constant [11 x i8] c"RoyalBlue4\00", align 1
@.str.638 = private unnamed_addr constant [12 x i8] c"SaddleBrown\00", align 1
@.str.639 = private unnamed_addr constant [7 x i8] c"salmon\00", align 1
@.str.640 = private unnamed_addr constant [8 x i8] c"salmon1\00", align 1
@.str.641 = private unnamed_addr constant [8 x i8] c"salmon2\00", align 1
@.str.642 = private unnamed_addr constant [8 x i8] c"salmon3\00", align 1
@.str.643 = private unnamed_addr constant [8 x i8] c"salmon4\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"SandyBrown\00", align 1
@.str.645 = private unnamed_addr constant [9 x i8] c"SeaGreen\00", align 1
@.str.646 = private unnamed_addr constant [10 x i8] c"SeaGreen1\00", align 1
@.str.647 = private unnamed_addr constant [10 x i8] c"SeaGreen2\00", align 1
@.str.648 = private unnamed_addr constant [10 x i8] c"SeaGreen3\00", align 1
@.str.649 = private unnamed_addr constant [10 x i8] c"SeaGreen4\00", align 1
@.str.650 = private unnamed_addr constant [9 x i8] c"seashell\00", align 1
@.str.651 = private unnamed_addr constant [10 x i8] c"seashell1\00", align 1
@.str.652 = private unnamed_addr constant [10 x i8] c"seashell2\00", align 1
@.str.653 = private unnamed_addr constant [10 x i8] c"seashell3\00", align 1
@.str.654 = private unnamed_addr constant [10 x i8] c"seashell4\00", align 1
@.str.655 = private unnamed_addr constant [7 x i8] c"sienna\00", align 1
@.str.656 = private unnamed_addr constant [8 x i8] c"sienna1\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"sienna2\00", align 1
@.str.658 = private unnamed_addr constant [8 x i8] c"sienna3\00", align 1
@.str.659 = private unnamed_addr constant [8 x i8] c"sienna4\00", align 1
@.str.660 = private unnamed_addr constant [7 x i8] c"silver\00", align 1
@.str.661 = private unnamed_addr constant [8 x i8] c"SkyBlue\00", align 1
@.str.662 = private unnamed_addr constant [9 x i8] c"SkyBlue1\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c"SkyBlue2\00", align 1
@.str.664 = private unnamed_addr constant [9 x i8] c"SkyBlue3\00", align 1
@.str.665 = private unnamed_addr constant [9 x i8] c"SkyBlue4\00", align 1
@.str.666 = private unnamed_addr constant [10 x i8] c"SlateBlue\00", align 1
@.str.667 = private unnamed_addr constant [11 x i8] c"SlateBlue1\00", align 1
@.str.668 = private unnamed_addr constant [11 x i8] c"SlateBlue2\00", align 1
@.str.669 = private unnamed_addr constant [11 x i8] c"SlateBlue3\00", align 1
@.str.670 = private unnamed_addr constant [11 x i8] c"SlateBlue4\00", align 1
@.str.671 = private unnamed_addr constant [10 x i8] c"SlateGray\00", align 1
@.str.672 = private unnamed_addr constant [11 x i8] c"SlateGray1\00", align 1
@.str.673 = private unnamed_addr constant [11 x i8] c"SlateGray2\00", align 1
@.str.674 = private unnamed_addr constant [11 x i8] c"SlateGray3\00", align 1
@.str.675 = private unnamed_addr constant [11 x i8] c"SlateGray4\00", align 1
@.str.676 = private unnamed_addr constant [10 x i8] c"SlateGrey\00", align 1
@.str.677 = private unnamed_addr constant [5 x i8] c"snow\00", align 1
@.str.678 = private unnamed_addr constant [6 x i8] c"snow1\00", align 1
@.str.679 = private unnamed_addr constant [6 x i8] c"snow2\00", align 1
@.str.680 = private unnamed_addr constant [6 x i8] c"snow3\00", align 1
@.str.681 = private unnamed_addr constant [6 x i8] c"snow4\00", align 1
@.str.682 = private unnamed_addr constant [12 x i8] c"SpringGreen\00", align 1
@.str.683 = private unnamed_addr constant [13 x i8] c"SpringGreen1\00", align 1
@.str.684 = private unnamed_addr constant [13 x i8] c"SpringGreen2\00", align 1
@.str.685 = private unnamed_addr constant [13 x i8] c"SpringGreen3\00", align 1
@.str.686 = private unnamed_addr constant [13 x i8] c"SpringGreen4\00", align 1
@.str.687 = private unnamed_addr constant [10 x i8] c"SteelBlue\00", align 1
@.str.688 = private unnamed_addr constant [11 x i8] c"SteelBlue1\00", align 1
@.str.689 = private unnamed_addr constant [11 x i8] c"SteelBlue2\00", align 1
@.str.690 = private unnamed_addr constant [11 x i8] c"SteelBlue3\00", align 1
@.str.691 = private unnamed_addr constant [11 x i8] c"SteelBlue4\00", align 1
@.str.692 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str.693 = private unnamed_addr constant [5 x i8] c"tan1\00", align 1
@.str.694 = private unnamed_addr constant [5 x i8] c"tan2\00", align 1
@.str.695 = private unnamed_addr constant [5 x i8] c"tan3\00", align 1
@.str.696 = private unnamed_addr constant [5 x i8] c"tan4\00", align 1
@.str.697 = private unnamed_addr constant [5 x i8] c"teal\00", align 1
@.str.698 = private unnamed_addr constant [8 x i8] c"thistle\00", align 1
@.str.699 = private unnamed_addr constant [9 x i8] c"thistle1\00", align 1
@.str.700 = private unnamed_addr constant [9 x i8] c"thistle2\00", align 1
@.str.701 = private unnamed_addr constant [9 x i8] c"thistle3\00", align 1
@.str.702 = private unnamed_addr constant [9 x i8] c"thistle4\00", align 1
@.str.703 = private unnamed_addr constant [7 x i8] c"tomato\00", align 1
@.str.704 = private unnamed_addr constant [8 x i8] c"tomato1\00", align 1
@.str.705 = private unnamed_addr constant [8 x i8] c"tomato2\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c"tomato3\00", align 1
@.str.707 = private unnamed_addr constant [8 x i8] c"tomato4\00", align 1
@.str.708 = private unnamed_addr constant [12 x i8] c"transparent\00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"turquoise\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"turquoise1\00", align 1
@.str.711 = private unnamed_addr constant [11 x i8] c"turquoise2\00", align 1
@.str.712 = private unnamed_addr constant [11 x i8] c"turquoise3\00", align 1
@.str.713 = private unnamed_addr constant [11 x i8] c"turquoise4\00", align 1
@.str.714 = private unnamed_addr constant [7 x i8] c"violet\00", align 1
@.str.715 = private unnamed_addr constant [10 x i8] c"VioletRed\00", align 1
@.str.716 = private unnamed_addr constant [11 x i8] c"VioletRed1\00", align 1
@.str.717 = private unnamed_addr constant [11 x i8] c"VioletRed2\00", align 1
@.str.718 = private unnamed_addr constant [11 x i8] c"VioletRed3\00", align 1
@.str.719 = private unnamed_addr constant [11 x i8] c"VioletRed4\00", align 1
@.str.720 = private unnamed_addr constant [6 x i8] c"wheat\00", align 1
@.str.721 = private unnamed_addr constant [7 x i8] c"wheat1\00", align 1
@.str.722 = private unnamed_addr constant [7 x i8] c"wheat2\00", align 1
@.str.723 = private unnamed_addr constant [7 x i8] c"wheat3\00", align 1
@.str.724 = private unnamed_addr constant [7 x i8] c"wheat4\00", align 1
@.str.725 = private unnamed_addr constant [11 x i8] c"WhiteSmoke\00", align 1
@.str.726 = private unnamed_addr constant [8 x i8] c"yellow1\00", align 1
@.str.727 = private unnamed_addr constant [8 x i8] c"yellow2\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"yellow3\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"yellow4\00", align 1
@.str.730 = private unnamed_addr constant [12 x i8] c"YellowGreen\00", align 1
@.str.731 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @ColorComponentGenesis() local_unnamed_addr #0 !dbg !914 {
entry:
  %0 = load ptr, ptr @color_semaphore, align 8, !dbg !918, !tbaa !920
  %cmp = icmp eq ptr %0, null, !dbg !924
  br i1 %cmp, label %if.then, label %if.end, !dbg !925

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #16, !dbg !926
  store ptr %call, ptr @color_semaphore, align 8, !dbg !927, !tbaa !920
  br label %if.end, !dbg !928

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !929
}

declare !dbg !930 ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ColorComponentTerminus() local_unnamed_addr #0 !dbg !933 {
entry:
  %0 = load ptr, ptr @color_semaphore, align 8, !dbg !936, !tbaa !920
  %cmp = icmp eq ptr %0, null, !dbg !938
  br i1 %cmp, label %if.then, label %if.end, !dbg !939

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #16, !dbg !940
  %.pre = load ptr, ptr @color_semaphore, align 8, !dbg !941, !tbaa !920
  br label %if.end, !dbg !940

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !941
  tail call void @LockSemaphoreInfo(ptr noundef %1) #16, !dbg !942
  %2 = load ptr, ptr @color_cache, align 8, !dbg !943, !tbaa !920
  %cmp1.not = icmp eq ptr %2, null, !dbg !945
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !946

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %2, ptr noundef nonnull @DestroyColorElement) #16, !dbg !947
  store ptr %call, ptr @color_cache, align 8, !dbg !948, !tbaa !920
  br label %if.end3, !dbg !949

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @color_semaphore, align 8, !dbg !950, !tbaa !920
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #16, !dbg !951
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @color_semaphore) #16, !dbg !952
  ret void, !dbg !953
}

declare !dbg !954 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !958 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !961 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyColorElement(ptr noundef %color_info) #0 !dbg !967 {
entry:
  call void @llvm.dbg.value(metadata ptr %color_info, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %color_info, metadata !970, metadata !DIExpression()), !dbg !971
  %exempt = getelementptr inbounds %struct._ColorInfo, ptr %color_info, i64 0, i32 4, !dbg !972
  %0 = load i32, ptr %exempt, align 8, !dbg !972, !tbaa !974
  %cmp = icmp eq i32 %0, 0, !dbg !980
  br i1 %cmp, label %if.then, label %if.end11, !dbg !981

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %color_info, align 8, !dbg !982, !tbaa !985
  %cmp1.not = icmp eq ptr %1, null, !dbg !986
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !987

if.then2:                                         ; preds = %if.then
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #16, !dbg !988
  store ptr %call, ptr %color_info, align 8, !dbg !989, !tbaa !985
  br label %if.end, !dbg !990

if.end:                                           ; preds = %if.then2, %if.then
  %name = getelementptr inbounds %struct._ColorInfo, ptr %color_info, i64 0, i32 1, !dbg !991
  %2 = load ptr, ptr %name, align 8, !dbg !991, !tbaa !993
  %cmp5.not = icmp eq ptr %2, null, !dbg !994
  br i1 %cmp5.not, label %if.end11, label %if.then6, !dbg !995

if.then6:                                         ; preds = %if.end
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %2) #16, !dbg !996
  store ptr %call8, ptr %name, align 8, !dbg !997, !tbaa !993
  br label %if.end11, !dbg !998

if.end11:                                         ; preds = %if.end, %if.then6, %entry
  %call12 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %color_info) #16, !dbg !999
  call void @llvm.dbg.value(metadata ptr %call12, metadata !970, metadata !DIExpression()), !dbg !971
  ret ptr null, !dbg !1000
}

declare !dbg !1001 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !1002 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorCompliance(ptr noundef %name, i32 noundef %compliance, ptr noundef %exception) local_unnamed_addr #0 !dbg !1003 {
entry:
  %exception1.i = alloca %struct._ExceptionInfo, align 8
  %colorname = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %name, metadata !1009, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !1010, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1011, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %colorname) #16, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %colorname, metadata !1012, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1018, metadata !DIExpression()) #16, !dbg !1023
  %0 = load ptr, ptr @color_cache, align 8, !dbg !1026, !tbaa !920
  %cmp.i = icmp eq ptr %0, null, !dbg !1028
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !1029

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @color_semaphore, align 8, !dbg !1030, !tbaa !920
  %cmp1.i = icmp eq ptr %1, null, !dbg !1033
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !1034

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @color_semaphore) #16, !dbg !1035
  %.pre = load ptr, ptr @color_semaphore, align 8, !dbg !1036, !tbaa !920
  br label %if.end.i, !dbg !1035

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre, %if.then2.i ], [ %1, %if.then.i ], !dbg !1036
  tail call void @LockSemaphoreInfo(ptr noundef %2) #16, !dbg !1037
  %3 = load ptr, ptr @color_cache, align 8, !dbg !1038, !tbaa !920
  %cmp3.i = icmp eq ptr %3, null, !dbg !1040
  br i1 %cmp3.i, label %if.then4.i, label %IsColorCacheInstantiated.exit, !dbg !1041

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.38, metadata !1042, metadata !DIExpression()) #16, !dbg !1064
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1047, metadata !DIExpression()) #16, !dbg !1064
  %call.i65 = tail call ptr @NewLinkedList(i64 noundef 0) #16, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %call.i65, metadata !1049, metadata !DIExpression()) #16, !dbg !1064
  %cmp.i66 = icmp eq ptr %call.i65, null, !dbg !1067
  br i1 %cmp.i66, label %if.then.i67, label %if.end.i68, !dbg !1068

if.then.i67:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i) #16, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %exception1.i, metadata !1057, metadata !DIExpression()) #16, !dbg !1069
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i) #16, !dbg !1069
  %call2.i = tail call ptr @__errno_location() #17, !dbg !1069
  %4 = load i32, ptr %call2.i, align 4, !dbg !1069, !tbaa !1070
  %call3.i = call ptr @GetExceptionMessage(i32 noundef %4) #16, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call3.i, metadata !1054, metadata !DIExpression()) #16, !dbg !1072
  %call4.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 846, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %call3.i) #16, !dbg !1069
  %call5.i = call ptr @DestroyString(ptr noundef %call3.i) #16, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !1054, metadata !DIExpression()) #16, !dbg !1072
  call void @CatchException(ptr noundef nonnull %exception1.i) #16, !dbg !1069
  %call6.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i) #16, !dbg !1069
  call void @MagickCoreTerminus() #16, !dbg !1069
  call void @_exit(i32 noundef 1) #18, !dbg !1069
  unreachable, !dbg !1069

if.end.i68:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  %call7.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.38, ptr noundef %exception) #16, !dbg !1073
  call void @llvm.dbg.value(metadata ptr %call7.i, metadata !1050, metadata !DIExpression()) #16, !dbg !1064
  %call8.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i) #16, !dbg !1074
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1048, metadata !DIExpression()) #16, !dbg !1064
  %cmp9.not.i71 = icmp eq ptr %call8.i, null, !dbg !1075
  br i1 %cmp9.not.i71, label %while.end.i, label %while.body.i, !dbg !1076

while.body.i:                                     ; preds = %if.end.i68, %while.body.i
  %option.0.i73 = phi ptr [ %call13.i, %while.body.i ], [ %call8.i, %if.end.i68 ]
  %status.0.i72 = phi i32 [ %and.i, %while.body.i ], [ 1, %if.end.i68 ]
  call void @llvm.dbg.value(metadata ptr %option.0.i73, metadata !1048, metadata !DIExpression()) #16, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %status.0.i72, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  %call10.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.0.i73) #16, !dbg !1077
  %call11.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.0.i73) #16, !dbg !1079
  %call12.i = tail call fastcc i32 @LoadColorCache(ptr noundef nonnull %call.i65, ptr noundef %call10.i, ptr noundef %call11.i, i64 noundef 0, ptr noundef %exception) #16, !dbg !1080
  %and.i = and i32 %call12.i, %status.0.i72, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  %call13.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i) #16, !dbg !1082
  call void @llvm.dbg.value(metadata ptr %call13.i, metadata !1048, metadata !DIExpression()) #16, !dbg !1064
  %cmp9.not.i = icmp eq ptr %call13.i, null, !dbg !1075
  br i1 %cmp9.not.i, label %while.end.i, label %while.body.i, !dbg !1076, !llvm.loop !1083

while.end.i:                                      ; preds = %while.body.i, %if.end.i68
  %status.0.i.lcssa = phi i32 [ 1, %if.end.i68 ], [ %and.i, %while.body.i ], !dbg !1064
  %call14.i = tail call ptr @DestroyConfigureOptions(ptr noundef %call7.i) #16, !dbg !1087
  call void @llvm.dbg.value(metadata ptr %call14.i, metadata !1050, metadata !DIExpression()) #16, !dbg !1064
  call void @llvm.dbg.value(metadata i64 0, metadata !1053, metadata !DIExpression()) #16, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %status.0.i.lcssa, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  br label %for.body.i, !dbg !1088

for.body.i:                                       ; preds = %while.end.i, %cleanup.i
  %status.1.i75 = phi i32 [ %status.0.i.lcssa, %while.end.i ], [ %status.2.i, %cleanup.i ]
  %i.0.i74 = phi i64 [ 0, %while.end.i ], [ %inc.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata i32 %status.1.i75, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  call void @llvm.dbg.value(metadata i64 %i.0.i74, metadata !1053, metadata !DIExpression()) #16, !dbg !1064
  %add.ptr.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, !dbg !1089
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1062, metadata !DIExpression()) #16, !dbg !1090
  %call16.i = tail call ptr @AcquireMagickMemory(i64 noundef 112) #19, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !1058, metadata !DIExpression()) #16, !dbg !1090
  %cmp17.i = icmp eq ptr %call16.i, null, !dbg !1092
  br i1 %cmp17.i, label %cleanup.i.sink.split, label %if.end20.i, !dbg !1094

if.end20.i:                                       ; preds = %for.body.i
  %call21.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call16.i, i32 noundef 0, i64 noundef 112) #16, !dbg !1095
  store ptr @.str.40, ptr %call16.i, align 8, !dbg !1096, !tbaa !985
  %5 = load ptr, ptr %add.ptr.i, align 8, !dbg !1097, !tbaa !1098
  %name23.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 1, !dbg !1100
  store ptr %5, ptr %name23.i, align 8, !dbg !1101, !tbaa !993
  %color.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 3, !dbg !1102
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef nonnull %color.i) #16, !dbg !1103
  %red.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, i32 1, !dbg !1104
  %6 = load i8, ptr %red.i, align 8, !dbg !1104, !tbaa !1105
  call void @llvm.dbg.value(metadata i8 %6, metadata !1106, metadata !DIExpression()) #16, !dbg !1112
  %conv.i.i = zext i8 %6 to i16, !dbg !1114
  %mul.i.i = mul nuw i16 %conv.i.i, 257, !dbg !1115
  %conv.i = uitofp i16 %mul.i.i to float, !dbg !1116
  %red26.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 3, i32 5, !dbg !1117
  store float %conv.i, ptr %red26.i, align 8, !dbg !1118, !tbaa !1119
  %green.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, i32 2, !dbg !1120
  %7 = load i8, ptr %green.i, align 1, !dbg !1120, !tbaa !1121
  call void @llvm.dbg.value(metadata i8 %7, metadata !1106, metadata !DIExpression()) #16, !dbg !1122
  %conv.i1.i = zext i8 %7 to i16, !dbg !1124
  %mul.i2.i = mul nuw i16 %conv.i1.i, 257, !dbg !1125
  %conv28.i = uitofp i16 %mul.i2.i to float, !dbg !1126
  %green30.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 3, i32 6, !dbg !1127
  store float %conv28.i, ptr %green30.i, align 4, !dbg !1128, !tbaa !1129
  %blue.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, i32 3, !dbg !1130
  %8 = load i8, ptr %blue.i, align 2, !dbg !1130, !tbaa !1131
  call void @llvm.dbg.value(metadata i8 %8, metadata !1106, metadata !DIExpression()) #16, !dbg !1132
  %conv.i3.i = zext i8 %8 to i16, !dbg !1134
  %mul.i4.i = mul nuw i16 %conv.i3.i, 257, !dbg !1135
  %conv32.i = uitofp i16 %mul.i4.i to float, !dbg !1136
  %blue34.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 3, i32 7, !dbg !1137
  store float %conv32.i, ptr %blue34.i, align 8, !dbg !1138, !tbaa !1139
  %alpha.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, i32 4, !dbg !1140
  %9 = load float, ptr %alpha.i, align 4, !dbg !1140, !tbaa !1141
  %10 = tail call float @llvm.fmuladd.f32(float %9, float -6.553500e+04, float 6.553500e+04) #16, !dbg !1142
  %opacity.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 3, i32 8, !dbg !1143
  store float %10, ptr %opacity.i, align 4, !dbg !1144, !tbaa !1145
  %compliance.i = getelementptr inbounds %struct._ColorMapInfo, ptr @ColorMap, i64 %i.0.i74, i32 5, !dbg !1146
  %11 = load i64, ptr %compliance.i, align 8, !dbg !1146, !tbaa !1147
  %conv36.i = trunc i64 %11 to i32, !dbg !1148
  %compliance37.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 2, !dbg !1149
  store i32 %conv36.i, ptr %compliance37.i, align 8, !dbg !1150, !tbaa !1151
  %exempt.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 4, !dbg !1152
  store i32 1, ptr %exempt.i, align 8, !dbg !1153, !tbaa !974
  %signature.i = getelementptr inbounds %struct._ColorInfo, ptr %call16.i, i64 0, i32 8, !dbg !1154
  store i64 2880220587, ptr %signature.i, align 8, !dbg !1155, !tbaa !1156
  %call38.i = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %call.i65, ptr noundef nonnull %call16.i) #16, !dbg !1157
  %and39.i = and i32 %call38.i, %status.1.i75, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %and39.i, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  %cmp40.i = icmp eq i32 %and39.i, 0, !dbg !1159
  br i1 %cmp40.i, label %cleanup.i.sink.split, label %cleanup.i, !dbg !1161

cleanup.i.sink.split:                             ; preds = %if.end20.i, %for.body.i
  %name23.i.sink = phi ptr [ %add.ptr.i, %for.body.i ], [ %name23.i, %if.end20.i ]
  %.sink = phi i64 [ 872, %for.body.i ], [ 893, %if.end20.i ]
  %status.2.i.ph = phi i32 [ %status.1.i75, %for.body.i ], [ 0, %if.end20.i ]
  %12 = load ptr, ptr %name23.i.sink, align 8, !dbg !1090, !tbaa !920
  %call44.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %.sink, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %12) #16, !dbg !1090
  br label %cleanup.i, !dbg !1162

cleanup.i:                                        ; preds = %cleanup.i.sink.split, %if.end20.i
  %status.2.i = phi i32 [ %and39.i, %if.end20.i ], [ %status.2.i.ph, %cleanup.i.sink.split ], !dbg !1064
  call void @llvm.dbg.value(metadata i32 %status.2.i, metadata !1051, metadata !DIExpression()) #16, !dbg !1064
  %inc.i = add nuw nsw i64 %i.0.i74, 1, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1053, metadata !DIExpression()) #16, !dbg !1064
  %exitcond.not = icmp eq i64 %inc.i, 678, !dbg !1163
  br i1 %exitcond.not, label %AcquireColorCache.exit, label %for.body.i, !dbg !1088, !llvm.loop !1164

AcquireColorCache.exit:                           ; preds = %cleanup.i
  store ptr %call.i65, ptr @color_cache, align 8, !dbg !1166, !tbaa !920
  br label %IsColorCacheInstantiated.exit, !dbg !1167

IsColorCacheInstantiated.exit:                    ; preds = %if.end.i, %AcquireColorCache.exit
  %13 = load ptr, ptr @color_semaphore, align 8, !dbg !1168, !tbaa !920
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #16, !dbg !1169
  %.pre82 = load ptr, ptr @color_cache, align 8, !dbg !1170, !tbaa !920
  %cmp7.not.i.not = icmp eq ptr %.pre82, null, !dbg !1171
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !1172

if.end:                                           ; preds = %entry, %IsColorCacheInstantiated.exit
  store i8 0, ptr %colorname, align 16, !dbg !1173, !tbaa !1174
  %cmp1.not = icmp eq ptr %name, null, !dbg !1175
  br i1 %cmp1.not, label %for.end, label %if.end5, !dbg !1177

if.end5:                                          ; preds = %if.end
  %call4 = call i64 @CopyMagickString(ptr noundef nonnull %colorname, ptr noundef nonnull %name, i64 noundef 4096) #16, !dbg !1178
  %.pre83 = load i8, ptr %colorname, align 16, !dbg !1179, !tbaa !1174
  call void @llvm.dbg.value(metadata ptr %colorname, metadata !1014, metadata !DIExpression()), !dbg !1015
  %cmp7.not76 = icmp eq i8 %.pre83, 0, !dbg !1182
  br i1 %cmp7.not76, label %for.end, label %for.body.lr.ph, !dbg !1183

for.body.lr.ph:                                   ; preds = %if.end5
  %call9 = tail call ptr @__ctype_b_loc() #17, !dbg !1015
  br label %for.body, !dbg !1183

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %14 = phi i8 [ %.pre83, %for.body.lr.ph ], [ %19, %for.inc ]
  %q.077 = phi ptr [ %colorname, %for.body.lr.ph ], [ %incdec.ptr17, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %q.077, metadata !1014, metadata !DIExpression()), !dbg !1015
  %15 = load ptr, ptr %call9, align 8, !dbg !1184, !tbaa !920
  %16 = zext i8 %14 to i64
  %arrayidx = getelementptr inbounds i16, ptr %15, i64 %16, !dbg !1184
  %17 = load i16, ptr %arrayidx, align 2, !dbg !1184, !tbaa !1187
  %18 = and i16 %17, 8192, !dbg !1184
  %cmp12 = icmp eq i16 %18, 0, !dbg !1189
  br i1 %cmp12, label %for.inc, label %if.end15, !dbg !1190

if.end15:                                         ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %q.077, i64 1, !dbg !1191
  %call16 = call i64 @CopyMagickString(ptr noundef nonnull %q.077, ptr noundef nonnull %add.ptr, i64 noundef 4096) #16, !dbg !1192
  %incdec.ptr = getelementptr inbounds i8, ptr %q.077, i64 -1, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1014, metadata !DIExpression()), !dbg !1015
  br label %for.inc, !dbg !1194

for.inc:                                          ; preds = %for.body, %if.end15
  %q.1 = phi ptr [ %q.077, %for.body ], [ %incdec.ptr, %if.end15 ], !dbg !1195
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !1014, metadata !DIExpression()), !dbg !1015
  %incdec.ptr17 = getelementptr inbounds i8, ptr %q.1, i64 1, !dbg !1196
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !1014, metadata !DIExpression()), !dbg !1015
  %19 = load i8, ptr %incdec.ptr17, align 1, !dbg !1179, !tbaa !1174
  %cmp7.not = icmp eq i8 %19, 0, !dbg !1182
  br i1 %cmp7.not, label %for.end, label %for.body, !dbg !1183, !llvm.loop !1197

for.end:                                          ; preds = %for.inc, %if.end, %if.end5
  %20 = load ptr, ptr @color_semaphore, align 8, !dbg !1199, !tbaa !920
  call void @LockSemaphoreInfo(ptr noundef %20) #16, !dbg !1200
  %21 = load ptr, ptr @color_cache, align 8, !dbg !1201, !tbaa !920
  call void @ResetLinkedListIterator(ptr noundef %21) #16, !dbg !1202
  %22 = load ptr, ptr @color_cache, align 8, !dbg !1203, !tbaa !920
  %call18 = call ptr @GetNextValueInLinkedList(ptr noundef %22) #16, !dbg !1204
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1013, metadata !DIExpression()), !dbg !1015
  br i1 %cmp1.not, label %cleanup.sink.split, label %lor.lhs.false, !dbg !1205

lor.lhs.false:                                    ; preds = %for.end
  %call21 = call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str) #16, !dbg !1207
  %cmp22 = icmp eq i32 %call21, 0, !dbg !1208
  br i1 %cmp22, label %cleanup.sink.split, label %while.cond.preheader, !dbg !1209

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %call18, metadata !1013, metadata !DIExpression()), !dbg !1015
  %cond78 = icmp eq ptr %call18, null, !dbg !1210
  br i1 %cond78, label %if.then42, label %while.body, !dbg !1210

while.body:                                       ; preds = %while.cond.preheader, %if.end38
  %p.079 = phi ptr [ %call39, %if.end38 ], [ %call18, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.079, metadata !1013, metadata !DIExpression()), !dbg !1015
  %compliance28 = getelementptr inbounds %struct._ColorInfo, ptr %p.079, i64 0, i32 2, !dbg !1211
  %23 = load i32, ptr %compliance28, align 8, !dbg !1211, !tbaa !1151
  %and29 = and i32 %23, %compliance, !dbg !1214
  %cmp30.not = icmp eq i32 %and29, 0, !dbg !1215
  br i1 %cmp30.not, label %if.end38, label %land.lhs.true, !dbg !1216

land.lhs.true:                                    ; preds = %while.body
  %name33 = getelementptr inbounds %struct._ColorInfo, ptr %p.079, i64 0, i32 1, !dbg !1217
  %24 = load ptr, ptr %name33, align 8, !dbg !1217, !tbaa !993
  %call34 = call i32 @LocaleCompare(ptr noundef nonnull %colorname, ptr noundef %24) #16, !dbg !1218
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1219
  br i1 %cmp35, label %if.else, label %if.end38, !dbg !1220

if.end38:                                         ; preds = %land.lhs.true, %while.body
  %25 = load ptr, ptr @color_cache, align 8, !dbg !1221, !tbaa !920
  %call39 = call ptr @GetNextValueInLinkedList(ptr noundef %25) #16, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %call39, metadata !1013, metadata !DIExpression()), !dbg !1015
  %cond = icmp eq ptr %call39, null, !dbg !1210
  br i1 %cond, label %if.then42, label %while.body, !dbg !1210, !llvm.loop !1223

if.then42:                                        ; preds = %if.end38, %while.cond.preheader
  %call43 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1046, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name) #16, !dbg !1225
  br label %cleanup.sink.split, !dbg !1227

if.else:                                          ; preds = %land.lhs.true
  %26 = load ptr, ptr @color_cache, align 8, !dbg !1228, !tbaa !920
  %call44 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %26, ptr noundef nonnull %p.079) #16, !dbg !1229
  %call45 = call i32 @InsertValueInLinkedList(ptr noundef %26, i64 noundef 0, ptr noundef %call44) #16, !dbg !1230
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then42, %if.else, %for.end, %lor.lhs.false
  %retval.0.ph = phi ptr [ %call18, %lor.lhs.false ], [ %call18, %for.end ], [ %p.079, %if.else ], [ null, %if.then42 ]
  %27 = load ptr, ptr @color_semaphore, align 8, !dbg !1015, !tbaa !920
  call void @UnlockSemaphoreInfo(ptr noundef %27) #16, !dbg !1015
  br label %cleanup, !dbg !1231

cleanup:                                          ; preds = %cleanup.sink.split, %IsColorCacheInstantiated.exit
  %retval.0 = phi ptr [ null, %IsColorCacheInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %colorname) #16, !dbg !1231
  ret ptr %retval.0, !dbg !1231
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1232 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #4

declare !dbg !1236 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #1

declare !dbg !1239 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

declare !dbg !1242 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1245 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1249 i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1254 ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorInfo(ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !1257 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !1261, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1262, metadata !DIExpression()), !dbg !1263
  %call = tail call ptr @GetColorCompliance(ptr noundef %name, i32 noundef 2147483647, ptr noundef %exception), !dbg !1264
  ret ptr %call, !dbg !1265
}

; Function Attrs: nounwind uwtable
define dso_local void @ConcatenateColorComponent(ptr nocapture noundef readonly %pixel, i32 noundef %channel, i32 noundef %compliance, ptr noundef %tuple) local_unnamed_addr #0 !dbg !1266 {
entry:
  %component = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1274, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1275, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !1276, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %tuple, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %component) #16, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %component, metadata !1278, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1279, metadata !DIExpression()), !dbg !1280
  switch i32 %channel, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb3
    i32 8, label %sw.bb5
    i32 32, label %sw.bb7
  ], !dbg !1283

sw.bb:                                            ; preds = %entry
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !1284
  %0 = load float, ptr %red, align 8, !dbg !1284, !tbaa !1287
  %conv = fpext float %0 to double, !dbg !1288
  call void @llvm.dbg.value(metadata double %conv, metadata !1279, metadata !DIExpression()), !dbg !1280
  br label %sw.epilog, !dbg !1289

sw.bb1:                                           ; preds = %entry
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !1290
  %1 = load float, ptr %green, align 4, !dbg !1290, !tbaa !1292
  %conv2 = fpext float %1 to double, !dbg !1293
  call void @llvm.dbg.value(metadata double %conv2, metadata !1279, metadata !DIExpression()), !dbg !1280
  br label %sw.epilog, !dbg !1294

sw.bb3:                                           ; preds = %entry
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !1295
  %2 = load float, ptr %blue, align 8, !dbg !1295, !tbaa !1297
  %conv4 = fpext float %2 to double, !dbg !1298
  call void @llvm.dbg.value(metadata double %conv4, metadata !1279, metadata !DIExpression()), !dbg !1280
  br label %sw.epilog, !dbg !1299

sw.bb5:                                           ; preds = %entry
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1300
  %3 = load float, ptr %opacity, align 4, !dbg !1300, !tbaa !1302
  %sub = fsub float 6.553500e+04, %3, !dbg !1303
  %conv6 = fpext float %sub to double, !dbg !1304
  call void @llvm.dbg.value(metadata double %conv6, metadata !1279, metadata !DIExpression()), !dbg !1280
  br label %sw.epilog, !dbg !1305

sw.bb7:                                           ; preds = %entry
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !1306
  %4 = load float, ptr %index, align 8, !dbg !1306, !tbaa !1308
  %conv8 = fpext float %4 to double, !dbg !1309
  call void @llvm.dbg.value(metadata double %conv8, metadata !1279, metadata !DIExpression()), !dbg !1280
  br label %sw.epilog, !dbg !1310

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %color.0 = phi double [ 0.000000e+00, %entry ], [ %conv8, %sw.bb7 ], [ %conv6, %sw.bb5 ], [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ], !dbg !1280
  call void @llvm.dbg.value(metadata double %color.0, metadata !1279, metadata !DIExpression()), !dbg !1280
  switch i32 %compliance, label %if.then15 [
    i32 0, label %if.then
    i32 1, label %if.end49
  ], !dbg !1311

if.then:                                          ; preds = %sw.epilog
  %call = tail call i32 @GetMagickPrecision() #16, !dbg !1312
  %call10 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %call, double noundef %color.0) #16, !dbg !1315
  br label %cleanup, !dbg !1316

if.then15:                                        ; preds = %sw.epilog
  %depth = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 4, !dbg !1317
  %5 = load i64, ptr %depth, align 8, !dbg !1317, !tbaa !1321
  %cmp16 = icmp ugt i64 %5, 16, !dbg !1322
  br i1 %cmp16, label %if.then18, label %if.end27, !dbg !1323

if.then18:                                        ; preds = %if.then15
  %conv20 = fptrunc double %color.0 to float, !dbg !1324
  call void @llvm.dbg.value(metadata float %conv20, metadata !1326, metadata !DIExpression()), !dbg !1332
  %cmp.i = fcmp ugt float %conv20, 0.000000e+00, !dbg !1334
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1336

if.end.i:                                         ; preds = %if.then18
  %cmp1.i = fcmp ult float %conv20, 6.553500e+04, !dbg !1337
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1339

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %conv20, 5.000000e-01, !dbg !1340
  %conv.i = fptoui float %add.i to i16, !dbg !1341
  %phi.cast179 = zext i16 %conv.i to i64, !dbg !1342
  %phi.bo180 = mul nuw nsw i64 %phi.cast179, 65537, !dbg !1342
  br label %ClampToQuantum.exit, !dbg !1342

ClampToQuantum.exit:                              ; preds = %if.then18, %if.end.i, %if.end3.i
  %retval.0.i = phi i64 [ %phi.bo180, %if.end3.i ], [ 0, %if.then18 ], [ 4294967295, %if.end.i ]
  %call24 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.6, i64 noundef %retval.0.i) #16, !dbg !1343
  br label %cleanup, !dbg !1344

if.end27:                                         ; preds = %if.then15
  %cmp29 = icmp ugt i64 %5, 8, !dbg !1345
  %conv33 = fptrunc double %color.0 to float, !dbg !1347
  call void @llvm.dbg.value(metadata float %conv33, metadata !1326, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata float %conv33, metadata !1326, metadata !DIExpression()), !dbg !1351
  %cmp.i144 = fcmp ugt float %conv33, 0.000000e+00, !dbg !1347
  br i1 %cmp29, label %if.then31, label %if.end40, !dbg !1353

if.then31:                                        ; preds = %if.end27
  br i1 %cmp.i144, label %if.end.i146, label %ClampToQuantum.exit151, !dbg !1354

if.end.i146:                                      ; preds = %if.then31
  %cmp1.i145 = fcmp ult float %conv33, 6.553500e+04, !dbg !1355
  br i1 %cmp1.i145, label %if.end3.i149, label %ClampToQuantum.exit151, !dbg !1356

if.end3.i149:                                     ; preds = %if.end.i146
  %add.i147 = fadd float %conv33, 5.000000e-01, !dbg !1357
  %conv.i148 = fptoui float %add.i147 to i16, !dbg !1358
  %phi.cast178 = zext i16 %conv.i148 to i32, !dbg !1359
  br label %ClampToQuantum.exit151, !dbg !1359

ClampToQuantum.exit151:                           ; preds = %if.then31, %if.end.i146, %if.end3.i149
  %retval.0.i150 = phi i32 [ %phi.cast178, %if.end3.i149 ], [ 0, %if.then31 ], [ 65535, %if.end.i146 ]
  %call37 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i150) #16, !dbg !1360
  br label %cleanup, !dbg !1361

if.end40:                                         ; preds = %if.end27
  br i1 %cmp.i144, label %if.end.i154, label %ClampToQuantum.exit159, !dbg !1362

if.end.i154:                                      ; preds = %if.end40
  %cmp1.i153 = fcmp ult float %conv33, 6.553500e+04, !dbg !1363
  br i1 %cmp1.i153, label %if.end3.i157, label %ClampToQuantum.exit159, !dbg !1364

if.end3.i157:                                     ; preds = %if.end.i154
  %add.i155 = fadd float %conv33, 5.000000e-01, !dbg !1365
  %conv.i156 = fptoui float %add.i155 to i16, !dbg !1366
  %phi.cast176 = zext i16 %conv.i156 to i64, !dbg !1367
  %phi.bo177 = add nuw nsw i64 %phi.cast176, 128, !dbg !1367
  br label %ClampToQuantum.exit159, !dbg !1367

ClampToQuantum.exit159:                           ; preds = %if.end40, %if.end.i154, %if.end3.i157
  %retval.0.i158 = phi i64 [ %phi.bo177, %if.end3.i157 ], [ 128, %if.end40 ], [ 65663, %if.end.i154 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1374
  %shr.i = lshr i64 %retval.0.i158, 8, !dbg !1376
  %sub.i = sub nsw i64 %retval.0.i158, %shr.i, !dbg !1377
  %6 = trunc i64 %sub.i to i32, !dbg !1378
  %7 = lshr i32 %6, 8, !dbg !1378
  %conv45 = and i32 %7, 255, !dbg !1379
  %call46 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %conv45) #16, !dbg !1380
  br label %cleanup, !dbg !1381

if.end49:                                         ; preds = %sw.epilog
  %cmp50 = icmp eq i32 %channel, 8, !dbg !1382
  br i1 %cmp50, label %if.then52, label %if.end58, !dbg !1384

if.then52:                                        ; preds = %if.end49
  %call54 = tail call i32 @GetMagickPrecision() #16, !dbg !1385
  %mul = fmul double %color.0, 0x3EF0001000100010, !dbg !1387
  %call55 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %call54, double noundef %mul) #16, !dbg !1388
  br label %cleanup, !dbg !1389

if.end58:                                         ; preds = %if.end49
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !1390
  %8 = load i32, ptr %colorspace, align 4, !dbg !1390, !tbaa !1392
  switch i32 %8, label %if.end91 [
    i32 24, label %if.then84
    i32 32, label %if.then84
    i32 14, label %if.then84
    i32 30, label %if.then84
    i32 15, label %if.then84
    i32 31, label %if.then84
    i32 16, label %if.then84
  ], !dbg !1393

if.then84:                                        ; preds = %if.end58, %if.end58, %if.end58, %if.end58, %if.end58, %if.end58, %if.end58
  %call86 = tail call i32 @GetMagickPrecision() #16, !dbg !1394
  %mul87 = fmul double %color.0, 0x3F59001900190019, !dbg !1396
  %call88 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call86, double noundef %mul87) #16, !dbg !1397
  br label %cleanup, !dbg !1398

if.end91:                                         ; preds = %if.end58
  %depth92 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 4, !dbg !1399
  %9 = load i64, ptr %depth92, align 8, !dbg !1399, !tbaa !1321
  %cmp93 = icmp ugt i64 %9, 8, !dbg !1401
  br i1 %cmp93, label %if.then95, label %if.end102, !dbg !1402

if.then95:                                        ; preds = %if.end91
  %call97 = tail call i32 @GetMagickPrecision() #16, !dbg !1403
  %mul98 = fmul double %color.0, 0x3F59001900190019, !dbg !1405
  %call99 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %call97, double noundef %mul98) #16, !dbg !1406
  br label %cleanup, !dbg !1407

if.end102:                                        ; preds = %if.end91
  %conv104 = fptrunc double %color.0 to float, !dbg !1408
  call void @llvm.dbg.value(metadata float %conv104, metadata !1326, metadata !DIExpression()), !dbg !1409
  %cmp.i162 = fcmp ugt float %conv104, 0.000000e+00, !dbg !1411
  br i1 %cmp.i162, label %if.end.i164, label %ClampToQuantum.exit169, !dbg !1412

if.end.i164:                                      ; preds = %if.end102
  %cmp1.i163 = fcmp ult float %conv104, 6.553500e+04, !dbg !1413
  br i1 %cmp1.i163, label %if.end3.i167, label %ClampToQuantum.exit169, !dbg !1414

if.end3.i167:                                     ; preds = %if.end.i164
  %add.i165 = fadd float %conv104, 5.000000e-01, !dbg !1415
  %conv.i166 = fptoui float %add.i165 to i16, !dbg !1416
  %phi.cast = zext i16 %conv.i166 to i64, !dbg !1417
  %phi.bo = add nuw nsw i64 %phi.cast, 128, !dbg !1417
  br label %ClampToQuantum.exit169, !dbg !1417

ClampToQuantum.exit169:                           ; preds = %if.end102, %if.end.i164, %if.end3.i167
  %retval.0.i168 = phi i64 [ %phi.bo, %if.end3.i167 ], [ 128, %if.end102 ], [ 65663, %if.end.i164 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1418
  %shr.i172 = lshr i64 %retval.0.i168, 8, !dbg !1420
  %sub.i173 = sub nsw i64 %retval.0.i168, %shr.i172, !dbg !1421
  %10 = trunc i64 %sub.i173 to i32, !dbg !1422
  %11 = lshr i32 %10, 8, !dbg !1422
  %conv107 = and i32 %11, 255, !dbg !1423
  %call108 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %conv107) #16, !dbg !1424
  br label %cleanup, !dbg !1425

cleanup:                                          ; preds = %ClampToQuantum.exit169, %if.then95, %if.then84, %if.then52, %ClampToQuantum.exit159, %ClampToQuantum.exit151, %ClampToQuantum.exit, %if.then
  %call110 = call i64 @ConcatenateMagickString(ptr noundef %tuple, ptr noundef nonnull %component, i64 noundef 4096) #16, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %component) #16, !dbg !1425
  ret void, !dbg !1425
}

declare !dbg !1426 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !1432 i32 @GetMagickPrecision() local_unnamed_addr #1

declare !dbg !1436 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_colors, ptr noundef %exception) local_unnamed_addr #0 !dbg !1437 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1442, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %number_colors, metadata !1443, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1444, metadata !DIExpression()), !dbg !1448
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1284, ptr noundef nonnull @.str.11, ptr noundef %pattern) #16, !dbg !1449
  store i64 0, ptr %number_colors, align 8, !dbg !1450, !tbaa !1451
  call void @llvm.dbg.value(metadata ptr @.str, metadata !1261, metadata !DIExpression()) #16, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1262, metadata !DIExpression()) #16, !dbg !1452
  %call.i = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %exception) #16, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1446, metadata !DIExpression()), !dbg !1448
  %cmp = icmp eq ptr %call.i, null, !dbg !1455
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1457

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @color_cache, align 8, !dbg !1458, !tbaa !920
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #16, !dbg !1459
  %add = add i64 %call2, 1, !dbg !1460
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #20, !dbg !1461
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1445, metadata !DIExpression()), !dbg !1448
  %cmp4 = icmp eq ptr %call3, null, !dbg !1462
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !1464

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @color_semaphore, align 8, !dbg !1465, !tbaa !920
  tail call void @LockSemaphoreInfo(ptr noundef %1) #16, !dbg !1466
  %2 = load ptr, ptr @color_cache, align 8, !dbg !1467, !tbaa !920
  tail call void @ResetLinkedListIterator(ptr noundef %2) #16, !dbg !1468
  %3 = load ptr, ptr @color_cache, align 8, !dbg !1469, !tbaa !920
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #16, !dbg !1470
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 0, metadata !1447, metadata !DIExpression()), !dbg !1448
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !1471
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !1474

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !1447, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !1446, metadata !DIExpression()), !dbg !1448
  %stealth = getelementptr inbounds %struct._ColorInfo, ptr %p.032, i64 0, i32 5, !dbg !1475
  %4 = load i32, ptr %stealth, align 4, !dbg !1475, !tbaa !1478
  %cmp9 = icmp eq i32 %4, 0, !dbg !1479
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !1480

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._ColorInfo, ptr %p.032, i64 0, i32 1, !dbg !1481
  %5 = load ptr, ptr %name, align 8, !dbg !1481, !tbaa !993
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #16, !dbg !1482
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !1483
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !1484

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1447, metadata !DIExpression()), !dbg !1448
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !1486
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !1487, !tbaa !920
  br label %if.end13, !dbg !1486

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !1488
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1447, metadata !DIExpression()), !dbg !1448
  %6 = load ptr, ptr @color_cache, align 8, !dbg !1489, !tbaa !920
  %call14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #16, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1446, metadata !DIExpression()), !dbg !1448
  %cmp8.not = icmp eq ptr %call14, null, !dbg !1471
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !1474, !llvm.loop !1491

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !1488
  %7 = load ptr, ptr @color_semaphore, align 8, !dbg !1493, !tbaa !920
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #16, !dbg !1494
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @ColorInfoCompare) #16, !dbg !1495
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !1496
  store ptr null, ptr %arrayidx15, align 8, !dbg !1497, !tbaa !920
  store i64 %i.0.lcssa, ptr %number_colors, align 8, !dbg !1498, !tbaa !1451
  br label %cleanup, !dbg !1499

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !1448
  ret ptr %retval.0, !dbg !1500
}

declare !dbg !1501 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !1506 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1510 i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #1

declare !dbg !1515 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare !dbg !1520 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @ColorInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !1528 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !1530, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata ptr %y, metadata !1531, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata ptr %x, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata ptr %y, metadata !1533, metadata !DIExpression()), !dbg !1534
  %0 = load ptr, ptr %x, align 8, !dbg !1535, !tbaa !920
  %1 = load ptr, ptr %0, align 8, !dbg !1537, !tbaa !985
  %2 = load ptr, ptr %y, align 8, !dbg !1538, !tbaa !920
  %3 = load ptr, ptr %2, align 8, !dbg !1539, !tbaa !985
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #16, !dbg !1540
  %cmp = icmp eq i32 %call, 0, !dbg !1541
  %4 = load ptr, ptr %x, align 8, !dbg !1534, !tbaa !920
  br i1 %cmp, label %if.then, label %if.end, !dbg !1542

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._ColorInfo, ptr %4, i64 0, i32 1, !dbg !1543
  %5 = load ptr, ptr %y, align 8, !dbg !1544, !tbaa !920
  %name2 = getelementptr inbounds %struct._ColorInfo, ptr %5, i64 0, i32 1, !dbg !1545
  br label %cleanup, !dbg !1546

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %y, align 8, !dbg !1547, !tbaa !920
  br label %cleanup, !dbg !1548

cleanup:                                          ; preds = %if.end, %if.then
  %.sink13 = phi ptr [ %6, %if.end ], [ %name2, %if.then ]
  %.sink.in = phi ptr [ %4, %if.end ], [ %name, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !1534, !tbaa !920
  %7 = load ptr, ptr %.sink13, align 8, !dbg !1534, !tbaa !920
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #16, !dbg !1534
  ret i32 %call6, !dbg !1549
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetColorList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_colors, ptr noundef %exception) local_unnamed_addr #0 !dbg !1550 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !1554, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %number_colors, metadata !1555, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1556, metadata !DIExpression()), !dbg !1560
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1377, ptr noundef nonnull @.str.11, ptr noundef %pattern) #16, !dbg !1561
  store i64 0, ptr %number_colors, align 8, !dbg !1562, !tbaa !1451
  call void @llvm.dbg.value(metadata ptr @.str, metadata !1261, metadata !DIExpression()) #16, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1262, metadata !DIExpression()) #16, !dbg !1563
  %call.i = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %exception) #16, !dbg !1565
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1558, metadata !DIExpression()), !dbg !1560
  %cmp = icmp eq ptr %call.i, null, !dbg !1566
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1568

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @color_cache, align 8, !dbg !1569, !tbaa !920
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #16, !dbg !1570
  %add = add i64 %call2, 1, !dbg !1571
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #20, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1557, metadata !DIExpression()), !dbg !1560
  %cmp4 = icmp eq ptr %call3, null, !dbg !1573
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !1575

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @color_semaphore, align 8, !dbg !1576, !tbaa !920
  tail call void @LockSemaphoreInfo(ptr noundef %1) #16, !dbg !1577
  %2 = load ptr, ptr @color_cache, align 8, !dbg !1578, !tbaa !920
  tail call void @ResetLinkedListIterator(ptr noundef %2) #16, !dbg !1579
  %3 = load ptr, ptr @color_cache, align 8, !dbg !1580, !tbaa !920
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #16, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1558, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata i64 0, metadata !1559, metadata !DIExpression()), !dbg !1560
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !1582
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !1585

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !1558, metadata !DIExpression()), !dbg !1560
  %stealth = getelementptr inbounds %struct._ColorInfo, ptr %p.034, i64 0, i32 5, !dbg !1586
  %4 = load i32, ptr %stealth, align 4, !dbg !1586, !tbaa !1478
  %cmp9 = icmp eq i32 %4, 0, !dbg !1589
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !1590

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._ColorInfo, ptr %p.034, i64 0, i32 1, !dbg !1591
  %5 = load ptr, ptr %name, align 8, !dbg !1591, !tbaa !993
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #16, !dbg !1592
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !1593
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !1594

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !1595, !tbaa !993
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #16, !dbg !1596
  %inc = add nsw i64 %i.035, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1559, metadata !DIExpression()), !dbg !1560
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !1598
  store ptr %call14, ptr %arrayidx, align 8, !dbg !1599, !tbaa !920
  br label %if.end15, !dbg !1598

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !1600
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !1559, metadata !DIExpression()), !dbg !1560
  %7 = load ptr, ptr @color_cache, align 8, !dbg !1601, !tbaa !920
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #16, !dbg !1602
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1558, metadata !DIExpression()), !dbg !1560
  %cmp8.not = icmp eq ptr %call16, null, !dbg !1582
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !1585, !llvm.loop !1603

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !1600
  %8 = load ptr, ptr @color_semaphore, align 8, !dbg !1605, !tbaa !920
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #16, !dbg !1606
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @ColorCompare) #16, !dbg !1607
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !1608
  store ptr null, ptr %arrayidx17, align 8, !dbg !1609, !tbaa !920
  store i64 %i.0.lcssa, ptr %number_colors, align 8, !dbg !1610, !tbaa !1451
  br label %cleanup, !dbg !1611

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !1560
  ret ptr %retval.0, !dbg !1612
}

declare !dbg !1613 ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @ColorCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !1616 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !1618, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %y, metadata !1619, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %x, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata ptr %y, metadata !1621, metadata !DIExpression()), !dbg !1622
  %0 = load ptr, ptr %x, align 8, !dbg !1623, !tbaa !920
  %1 = load ptr, ptr %y, align 8, !dbg !1624, !tbaa !920
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #16, !dbg !1625
  ret i32 %call, !dbg !1626
}

; Function Attrs: nounwind uwtable
define dso_local void @GetColorTuple(ptr nocapture noundef readonly %pixel, i32 noundef %hex, ptr noundef %tuple) local_unnamed_addr #0 !dbg !1627 {
entry:
  %component.i = alloca [4096 x i8], align 16
  %color = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1631, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i32 %hex, metadata !1632, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata ptr %tuple, metadata !1633, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %color) #16, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %color, metadata !1634, metadata !DIExpression()), !dbg !1640
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1512, ptr noundef nonnull @.str.11, ptr noundef %tuple) #16, !dbg !1641
  store i8 0, ptr %tuple, align 1, !dbg !1642, !tbaa !1174
  %cmp.not = icmp eq i32 %hex, 0, !dbg !1643
  br i1 %cmp.not, label %if.end8, label %if.then, !dbg !1645

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.12, i64 noundef 4096) #16, !dbg !1646
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %pixel, i32 noundef 1, ptr noundef nonnull %tuple), !dbg !1648
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %pixel, i32 noundef 2, ptr noundef nonnull %tuple), !dbg !1649
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef %pixel, i32 noundef 4, ptr noundef nonnull %tuple), !dbg !1650
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !1651
  %0 = load i32, ptr %colorspace, align 4, !dbg !1651, !tbaa !1392
  %cmp2 = icmp eq i32 %0, 12, !dbg !1653
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1654

if.then3:                                         ; preds = %if.then
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef nonnull %pixel, i32 noundef 32, ptr noundef nonnull %tuple), !dbg !1655
  br label %if.end, !dbg !1655

if.end:                                           ; preds = %if.then3, %if.then
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2, !dbg !1656
  %1 = load i32, ptr %matte, align 8, !dbg !1656, !tbaa !1658
  %cmp4.not = icmp eq i32 %1, 0, !dbg !1659
  br i1 %cmp4.not, label %cleanup, label %land.lhs.true, !dbg !1660

land.lhs.true:                                    ; preds = %if.end
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1661
  %2 = load float, ptr %opacity, align 4, !dbg !1661, !tbaa !1302
  %cmp5 = fcmp une float %2, 0.000000e+00, !dbg !1662
  br i1 %cmp5, label %if.then6, label %cleanup, !dbg !1663

if.then6:                                         ; preds = %land.lhs.true
  tail call fastcc void @ConcatentateHexColorComponent(ptr noundef nonnull %pixel, i32 noundef 8, ptr noundef nonnull %tuple), !dbg !1664
  br label %cleanup, !dbg !1664

if.end8:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %color, ptr noundef nonnull align 8 dereferenceable(56) %pixel, i64 56, i1 false), !dbg !1665, !tbaa.struct !1666
  %depth = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 4, !dbg !1669
  %3 = load i64, ptr %depth, align 8, !dbg !1669, !tbaa !1321
  %cmp9 = icmp ugt i64 %3, 8, !dbg !1670
  br i1 %cmp9, label %if.then10, label %if.end8.if.end64_crit_edge, !dbg !1671

if.end8.if.end64_crit_edge:                       ; preds = %if.end8
  %colorspace65.phi.trans.insert = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1
  %.pre = load i32, ptr %colorspace65.phi.trans.insert, align 4, !dbg !1672, !tbaa !1392
  %matte69.phi.trans.insert = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2
  %.pre212 = load i32, ptr %matte69.phi.trans.insert, align 8, !dbg !1673, !tbaa !1658
  br label %if.end64, !dbg !1671

if.then10:                                        ; preds = %if.end8
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !1675
  %4 = load float, ptr %red, align 8, !dbg !1675, !tbaa !1287
  call void @llvm.dbg.value(metadata float %4, metadata !1326, metadata !DIExpression()), !dbg !1676
  %cmp.i = fcmp ugt float %4, 0.000000e+00, !dbg !1678
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !1679

if.end.i:                                         ; preds = %if.then10
  %cmp1.i = fcmp ult float %4, 6.553500e+04, !dbg !1680
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !1681

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %4, 5.000000e-01, !dbg !1682
  %conv.i = fptoui float %add.i to i16, !dbg !1683
  %phi.cast = zext i16 %conv.i to i64, !dbg !1684
  %phi.bo = add nuw nsw i64 %phi.cast, 128, !dbg !1684
  br label %ClampToQuantum.exit, !dbg !1684

ClampToQuantum.exit:                              ; preds = %if.then10, %if.end.i, %if.end3.i
  %retval.0.i = phi i64 [ %phi.bo, %if.end3.i ], [ 128, %if.then10 ], [ 65663, %if.end.i ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1685
  %shr.i = lshr i64 %retval.0.i, 8, !dbg !1687
  %sub.i = sub nsw i64 %retval.0.i, %shr.i, !dbg !1688
  %5 = trunc i64 %sub.i to i16, !dbg !1689
  %6 = lshr i16 %5, 8, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !1106, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1690
  %mul.i = mul nuw i16 %6, 257, !dbg !1692
  %conv = uitofp i16 %mul.i to float, !dbg !1693
  %cmp15 = fcmp oeq float %4, %conv, !dbg !1694
  call void @llvm.dbg.value(metadata i1 %cmp15, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !1696
  %7 = load float, ptr %green, align 4, !dbg !1696, !tbaa !1292
  call void @llvm.dbg.value(metadata float %7, metadata !1326, metadata !DIExpression()), !dbg !1697
  %cmp.i137 = fcmp ugt float %7, 0.000000e+00, !dbg !1699
  br i1 %cmp.i137, label %if.end.i139, label %ClampToQuantum.exit144, !dbg !1700

if.end.i139:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i138 = fcmp ult float %7, 6.553500e+04, !dbg !1701
  br i1 %cmp1.i138, label %if.end3.i142, label %ClampToQuantum.exit144, !dbg !1702

if.end3.i142:                                     ; preds = %if.end.i139
  %add.i140 = fadd float %7, 5.000000e-01, !dbg !1703
  %conv.i141 = fptoui float %add.i140 to i16, !dbg !1704
  %phi.cast204 = zext i16 %conv.i141 to i64, !dbg !1705
  %phi.bo205 = add nuw nsw i64 %phi.cast204, 128, !dbg !1705
  br label %ClampToQuantum.exit144, !dbg !1705

ClampToQuantum.exit144:                           ; preds = %ClampToQuantum.exit, %if.end.i139, %if.end3.i142
  %retval.0.i143 = phi i64 [ %phi.bo205, %if.end3.i142 ], [ 128, %ClampToQuantum.exit ], [ 65663, %if.end.i139 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1706
  %shr.i147 = lshr i64 %retval.0.i143, 8, !dbg !1708
  %sub.i148 = sub nsw i64 %retval.0.i143, %shr.i147, !dbg !1709
  %8 = trunc i64 %sub.i148 to i16, !dbg !1710
  %9 = lshr i16 %8, 8, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %sub.i148, metadata !1106, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1711
  %mul.i152 = mul nuw i16 %9, 257, !dbg !1713
  %conv21 = uitofp i16 %mul.i152 to float, !dbg !1714
  %cmp22 = fcmp oeq float %7, %conv21, !dbg !1715
  %and130 = and i1 %cmp15, %cmp22, !dbg !1716
  call void @llvm.dbg.value(metadata i1 %and130, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !1717
  %10 = load float, ptr %blue, align 8, !dbg !1717, !tbaa !1297
  call void @llvm.dbg.value(metadata float %10, metadata !1326, metadata !DIExpression()), !dbg !1718
  %cmp.i153 = fcmp ugt float %10, 0.000000e+00, !dbg !1720
  br i1 %cmp.i153, label %if.end.i155, label %ClampToQuantum.exit160, !dbg !1721

if.end.i155:                                      ; preds = %ClampToQuantum.exit144
  %cmp1.i154 = fcmp ult float %10, 6.553500e+04, !dbg !1722
  br i1 %cmp1.i154, label %if.end3.i158, label %ClampToQuantum.exit160, !dbg !1723

if.end3.i158:                                     ; preds = %if.end.i155
  %add.i156 = fadd float %10, 5.000000e-01, !dbg !1724
  %conv.i157 = fptoui float %add.i156 to i16, !dbg !1725
  %phi.cast206 = zext i16 %conv.i157 to i64, !dbg !1726
  %phi.bo207 = add nuw nsw i64 %phi.cast206, 128, !dbg !1726
  br label %ClampToQuantum.exit160, !dbg !1726

ClampToQuantum.exit160:                           ; preds = %ClampToQuantum.exit144, %if.end.i155, %if.end3.i158
  %retval.0.i159 = phi i64 [ %phi.bo207, %if.end3.i158 ], [ 128, %ClampToQuantum.exit144 ], [ 65663, %if.end.i155 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1727
  %shr.i163 = lshr i64 %retval.0.i159, 8, !dbg !1729
  %sub.i164 = sub nsw i64 %retval.0.i159, %shr.i163, !dbg !1730
  %11 = trunc i64 %sub.i164 to i16, !dbg !1731
  %12 = lshr i16 %11, 8, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %sub.i164, metadata !1106, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1732
  %mul.i168 = mul nuw i16 %12, 257, !dbg !1734
  %conv28 = uitofp i16 %mul.i168 to float, !dbg !1735
  %cmp29 = fcmp oeq float %10, %conv28, !dbg !1736
  %and31131 = and i1 %and130, %cmp29, !dbg !1737
  call void @llvm.dbg.value(metadata i1 %and31131, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  %colorspace32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1, !dbg !1738
  %13 = load i32, ptr %colorspace32, align 4, !dbg !1738, !tbaa !1392
  %cmp33.not = icmp eq i32 %13, 12, !dbg !1740
  br i1 %cmp33.not, label %if.end44, label %if.then35, !dbg !1741

if.then35:                                        ; preds = %ClampToQuantum.exit160
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 9, !dbg !1742
  %14 = load float, ptr %index, align 8, !dbg !1742, !tbaa !1308
  call void @llvm.dbg.value(metadata float %14, metadata !1326, metadata !DIExpression()), !dbg !1743
  %cmp.i169 = fcmp ugt float %14, 0.000000e+00, !dbg !1745
  br i1 %cmp.i169, label %if.end.i171, label %ClampToQuantum.exit176, !dbg !1746

if.end.i171:                                      ; preds = %if.then35
  %cmp1.i170 = fcmp ult float %14, 6.553500e+04, !dbg !1747
  br i1 %cmp1.i170, label %if.end3.i174, label %ClampToQuantum.exit176, !dbg !1748

if.end3.i174:                                     ; preds = %if.end.i171
  %add.i172 = fadd float %14, 5.000000e-01, !dbg !1749
  %conv.i173 = fptoui float %add.i172 to i16, !dbg !1750
  %phi.cast208 = zext i16 %conv.i173 to i64, !dbg !1751
  %phi.bo209 = add nuw nsw i64 %phi.cast208, 128, !dbg !1751
  br label %ClampToQuantum.exit176, !dbg !1751

ClampToQuantum.exit176:                           ; preds = %if.then35, %if.end.i171, %if.end3.i174
  %retval.0.i175 = phi i64 [ %phi.bo209, %if.end3.i174 ], [ 128, %if.then35 ], [ 65663, %if.end.i171 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1752
  %shr.i179 = lshr i64 %retval.0.i175, 8, !dbg !1754
  %sub.i180 = sub nsw i64 %retval.0.i175, %shr.i179, !dbg !1755
  %15 = trunc i64 %sub.i180 to i16, !dbg !1756
  %16 = lshr i16 %15, 8, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %sub.i180, metadata !1106, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1757
  %mul.i184 = mul nuw i16 %16, 257, !dbg !1759
  %conv40 = uitofp i16 %mul.i184 to float, !dbg !1760
  %cmp41 = fcmp oeq float %14, %conv40, !dbg !1761
  %and43132 = and i1 %and31131, %cmp41, !dbg !1762
  call void @llvm.dbg.value(metadata i1 %and43132, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  br label %if.end44, !dbg !1763

if.end44:                                         ; preds = %ClampToQuantum.exit176, %ClampToQuantum.exit160
  %status.0.in = phi i1 [ %and43132, %ClampToQuantum.exit176 ], [ %and31131, %ClampToQuantum.exit160 ]
  call void @llvm.dbg.value(metadata i1 %status.0.in, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  %matte45 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2, !dbg !1764
  %17 = load i32, ptr %matte45, align 8, !dbg !1764, !tbaa !1658
  %cmp46.not = icmp eq i32 %17, 0, !dbg !1766
  br i1 %cmp46.not, label %if.end58, label %if.then48, !dbg !1767

if.then48:                                        ; preds = %if.end44
  %opacity49 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !1768
  %18 = load float, ptr %opacity49, align 4, !dbg !1768, !tbaa !1302
  call void @llvm.dbg.value(metadata float %18, metadata !1326, metadata !DIExpression()), !dbg !1769
  %cmp.i185 = fcmp ugt float %18, 0.000000e+00, !dbg !1771
  br i1 %cmp.i185, label %if.end.i187, label %ClampToQuantum.exit192, !dbg !1772

if.end.i187:                                      ; preds = %if.then48
  %cmp1.i186 = fcmp ult float %18, 6.553500e+04, !dbg !1773
  br i1 %cmp1.i186, label %if.end3.i190, label %ClampToQuantum.exit192, !dbg !1774

if.end3.i190:                                     ; preds = %if.end.i187
  %add.i188 = fadd float %18, 5.000000e-01, !dbg !1775
  %conv.i189 = fptoui float %add.i188 to i16, !dbg !1776
  %phi.cast210 = zext i16 %conv.i189 to i64, !dbg !1777
  %phi.bo211 = add nuw nsw i64 %phi.cast210, 128, !dbg !1777
  br label %ClampToQuantum.exit192, !dbg !1777

ClampToQuantum.exit192:                           ; preds = %if.then48, %if.end.i187, %if.end3.i190
  %retval.0.i191 = phi i64 [ %phi.bo211, %if.end3.i190 ], [ 128, %if.then48 ], [ 65663, %if.end.i187 ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1778
  %shr.i195 = lshr i64 %retval.0.i191, 8, !dbg !1780
  %sub.i196 = sub nsw i64 %retval.0.i191, %shr.i195, !dbg !1781
  %19 = trunc i64 %sub.i196 to i16, !dbg !1782
  %20 = lshr i16 %19, 8, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %sub.i196, metadata !1106, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1783
  %mul.i200 = mul nuw i16 %20, 257, !dbg !1785
  %conv54 = uitofp i16 %mul.i200 to float, !dbg !1786
  %cmp55 = fcmp oeq float %18, %conv54, !dbg !1787
  %and57133 = and i1 %status.0.in, %cmp55, !dbg !1788
  call void @llvm.dbg.value(metadata i1 %and57133, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  call void @llvm.dbg.value(metadata i1 %status.0.in, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  br i1 %and57133, label %if.then61, label %if.end64, !dbg !1789

if.end58:                                         ; preds = %if.end44
  call void @llvm.dbg.value(metadata i1 %status.0.in, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1695
  br i1 %status.0.in, label %if.then61, label %if.end64, !dbg !1789

if.then61:                                        ; preds = %ClampToQuantum.exit192, %if.end58
  store i64 8, ptr %depth, align 8, !dbg !1790, !tbaa !1321
  br label %if.end64, !dbg !1792

if.end64:                                         ; preds = %if.end8.if.end64_crit_edge, %ClampToQuantum.exit192, %if.end58, %if.then61
  %21 = phi i32 [ %.pre212, %if.end8.if.end64_crit_edge ], [ 1, %ClampToQuantum.exit192 ], [ 0, %if.end58 ], [ %17, %if.then61 ], !dbg !1673
  %22 = phi i32 [ %.pre, %if.end8.if.end64_crit_edge ], [ %13, %ClampToQuantum.exit192 ], [ %13, %if.end58 ], [ %13, %if.then61 ], !dbg !1672
  %conv66 = zext i32 %22 to i64, !dbg !1793
  %call67 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %conv66) #16, !dbg !1794
  %call68 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef %call67, i64 noundef 4096) #16, !dbg !1795
  %cmp70.not = icmp eq i32 %21, 0, !dbg !1796
  br i1 %cmp70.not, label %if.end74, label %if.then72, !dbg !1797

if.then72:                                        ; preds = %if.end64
  %call73 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.13, i64 noundef 4096) #16, !dbg !1798
  br label %if.end74, !dbg !1799

if.end74:                                         ; preds = %if.then72, %if.end64
  %call75 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.14, i64 noundef 4096) #16, !dbg !1800
  %cmp77 = icmp eq i32 %22, 2, !dbg !1801
  call void @ConcatenateColorComponent(ptr noundef nonnull %color, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tuple), !dbg !1803
  br i1 %cmp77, label %if.end88, label %if.end82, !dbg !1804

if.end82:                                         ; preds = %if.end74
  %call80 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.15, i64 noundef 4096) #16, !dbg !1805
  call void @ConcatenateColorComponent(ptr noundef nonnull %color, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tuple), !dbg !1807
  %call81 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.15, i64 noundef 4096) #16, !dbg !1808
  call void @ConcatenateColorComponent(ptr noundef nonnull %color, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tuple), !dbg !1809
  %cmp84 = icmp eq i32 %22, 12, !dbg !1810
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !1812

if.then86:                                        ; preds = %if.end82
  %call87 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.15, i64 noundef 4096) #16, !dbg !1813
  call void @ConcatenateColorComponent(ptr noundef nonnull %color, i32 noundef 32, i32 noundef 1, ptr noundef nonnull %tuple), !dbg !1815
  br label %if.end88, !dbg !1816

if.end88:                                         ; preds = %if.end74, %if.then86, %if.end82
  br i1 %cmp70.not, label %if.end94, label %if.then92, !dbg !1817

if.then92:                                        ; preds = %if.end88
  %call93 = tail call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.15, i64 noundef 4096) #16, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %color, metadata !1274, metadata !DIExpression()) #16, !dbg !1821
  call void @llvm.dbg.value(metadata i32 8, metadata !1275, metadata !DIExpression()) #16, !dbg !1821
  call void @llvm.dbg.value(metadata i32 1, metadata !1276, metadata !DIExpression()) #16, !dbg !1821
  call void @llvm.dbg.value(metadata ptr %tuple, metadata !1277, metadata !DIExpression()) #16, !dbg !1821
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %component.i) #16, !dbg !1823
  call void @llvm.dbg.declare(metadata ptr %component.i, metadata !1278, metadata !DIExpression()) #16, !dbg !1824
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1279, metadata !DIExpression()) #16, !dbg !1821
  %opacity.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !1825
  %23 = load float, ptr %opacity.i, align 4, !dbg !1825, !tbaa !1302
  %sub.i201 = fsub float 6.553500e+04, %23, !dbg !1826
  %conv6.i = fpext float %sub.i201 to double, !dbg !1827
  call void @llvm.dbg.value(metadata double %conv6.i, metadata !1279, metadata !DIExpression()) #16, !dbg !1821
  %call54.i = tail call i32 @GetMagickPrecision() #16, !dbg !1828
  %mul.i202 = fmul double %conv6.i, 0x3EF0001000100010, !dbg !1829
  %call55.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component.i, i64 noundef 4096, ptr noundef nonnull @.str.5, i32 noundef %call54.i, double noundef %mul.i202) #16, !dbg !1830
  %call110.i = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull %component.i, i64 noundef 4096) #16, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %component.i) #16, !dbg !1831
  br label %if.end94, !dbg !1832

if.end94:                                         ; preds = %if.then92, %if.end88
  %call95 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple, ptr noundef nonnull @.str.16, i64 noundef 4096) #16, !dbg !1833
  call void @LocaleLower(ptr noundef nonnull %tuple) #16, !dbg !1834
  br label %cleanup, !dbg !1835

cleanup:                                          ; preds = %if.end, %land.lhs.true, %if.then6, %if.end94
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %color) #16, !dbg !1836
  ret void, !dbg !1836
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ConcatentateHexColorComponent(ptr nocapture noundef readonly %pixel, i32 noundef %channel, ptr noundef %tuple) unnamed_addr #0 !dbg !1837 {
entry:
  %component = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !1841, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i32 %channel, metadata !1842, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata ptr %tuple, metadata !1843, metadata !DIExpression()), !dbg !1846
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %component) #16, !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %component, metadata !1844, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1845, metadata !DIExpression()), !dbg !1846
  switch i32 %channel, label %sw.epilog.thread [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb2
    i32 8, label %sw.bb3
    i32 32, label %sw.bb4
  ], !dbg !1849

sw.bb:                                            ; preds = %entry
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !1850
  %0 = load float, ptr %red, align 8, !dbg !1850, !tbaa !1287
  call void @llvm.dbg.value(metadata float %0, metadata !1845, metadata !DIExpression()), !dbg !1846
  br label %sw.epilog, !dbg !1853

sw.bb1:                                           ; preds = %entry
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !1854
  %1 = load float, ptr %green, align 4, !dbg !1854, !tbaa !1292
  call void @llvm.dbg.value(metadata float %1, metadata !1845, metadata !DIExpression()), !dbg !1846
  br label %sw.epilog, !dbg !1856

sw.bb2:                                           ; preds = %entry
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !1857
  %2 = load float, ptr %blue, align 8, !dbg !1857, !tbaa !1297
  call void @llvm.dbg.value(metadata float %2, metadata !1845, metadata !DIExpression()), !dbg !1846
  br label %sw.epilog, !dbg !1859

sw.bb3:                                           ; preds = %entry
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !1860
  %3 = load float, ptr %opacity, align 4, !dbg !1860, !tbaa !1302
  %sub = fsub float 6.553500e+04, %3, !dbg !1862
  call void @llvm.dbg.value(metadata float %sub, metadata !1845, metadata !DIExpression()), !dbg !1846
  br label %sw.epilog, !dbg !1863

sw.bb4:                                           ; preds = %entry
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !1864
  %4 = load float, ptr %index, align 8, !dbg !1864, !tbaa !1308
  call void @llvm.dbg.value(metadata float %4, metadata !1845, metadata !DIExpression()), !dbg !1846
  br label %sw.epilog, !dbg !1866

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %color.0 = phi float [ %4, %sw.bb4 ], [ %sub, %sw.bb3 ], [ %2, %sw.bb2 ], [ %1, %sw.bb1 ], [ %0, %sw.bb ], !dbg !1846
  call void @llvm.dbg.value(metadata float %color.0, metadata !1845, metadata !DIExpression()), !dbg !1846
  %depth = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 4, !dbg !1867
  %5 = load i64, ptr %depth, align 8, !dbg !1867, !tbaa !1321
  %cmp = icmp ugt i64 %5, 32, !dbg !1869
  br i1 %cmp, label %if.then, label %if.end, !dbg !1870

sw.epilog.thread:                                 ; preds = %entry
  call void @llvm.dbg.value(metadata float %color.0, metadata !1845, metadata !DIExpression()), !dbg !1846
  %depth97 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 4, !dbg !1867
  %6 = load i64, ptr %depth97, align 8, !dbg !1867, !tbaa !1321
  %cmp98 = icmp ugt i64 %6, 32, !dbg !1869
  br i1 %cmp98, label %ClampToQuantum.exit65, label %if.end.thread, !dbg !1870

if.then:                                          ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata float %color.0, metadata !1326, metadata !DIExpression()), !dbg !1871
  %cmp.i = fcmp ugt float %color.0, 0.000000e+00, !dbg !1874
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit65, !dbg !1875

if.end.i:                                         ; preds = %if.then
  %cmp1.i = fcmp ult float %color.0, 6.553500e+04, !dbg !1876
  br i1 %cmp1.i, label %if.end3.i63, label %ClampToQuantum.exit65, !dbg !1877

if.end3.i63:                                      ; preds = %if.end.i
  %add.i = fadd float %color.0, 5.000000e-01, !dbg !1878
  %conv.i = fptoui float %add.i to i16, !dbg !1879
  %phi.cast134 = zext i16 %conv.i to i64, !dbg !1880
  %phi.bo135 = mul nuw nsw i64 %phi.cast134, 65537, !dbg !1880
  call void @llvm.dbg.value(metadata float %color.0, metadata !1326, metadata !DIExpression()), !dbg !1881
  %add.i61 = fadd float %color.0, 5.000000e-01, !dbg !1883
  %conv.i62 = fptoui float %add.i61 to i16, !dbg !1884
  %phi.cast131 = zext i16 %conv.i62 to i64, !dbg !1885
  %phi.bo132 = mul nuw nsw i64 %phi.cast131, 65537, !dbg !1885
  br label %ClampToQuantum.exit65, !dbg !1885

ClampToQuantum.exit65:                            ; preds = %if.end.i, %if.then, %sw.epilog.thread, %if.end3.i63
  %conv112.shrunk = phi i64 [ %phi.bo135, %if.end3.i63 ], [ 0, %sw.epilog.thread ], [ 0, %if.then ], [ 4294967295, %if.end.i ]
  %retval.0.i64 = phi i64 [ %phi.bo132, %if.end3.i63 ], [ 0, %sw.epilog.thread ], [ 0, %if.then ], [ 4294967295, %if.end.i ]
  %call9 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.34, i64 noundef %conv112.shrunk, i64 noundef %retval.0.i64) #16, !dbg !1886
  br label %cleanup, !dbg !1887

if.end:                                           ; preds = %sw.epilog
  %cmp13 = icmp ugt i64 %5, 16, !dbg !1888
  br i1 %cmp13, label %if.then15, label %if.end22, !dbg !1890

if.end.thread:                                    ; preds = %sw.epilog.thread
  %cmp13115 = icmp ugt i64 %6, 16, !dbg !1888
  br i1 %cmp13115, label %ClampToQuantum.exit75, label %if.end22.thread, !dbg !1890

if.then15:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata float %color.0, metadata !1326, metadata !DIExpression()), !dbg !1891
  %cmp.i68 = fcmp ugt float %color.0, 0.000000e+00, !dbg !1894
  br i1 %cmp.i68, label %if.end.i70, label %ClampToQuantum.exit75, !dbg !1895

if.end.i70:                                       ; preds = %if.then15
  %cmp1.i69 = fcmp ult float %color.0, 6.553500e+04, !dbg !1896
  br i1 %cmp1.i69, label %if.end3.i73, label %ClampToQuantum.exit75, !dbg !1897

if.end3.i73:                                      ; preds = %if.end.i70
  %add.i71 = fadd float %color.0, 5.000000e-01, !dbg !1898
  %conv.i72 = fptoui float %add.i71 to i16, !dbg !1899
  %phi.cast129 = zext i16 %conv.i72 to i32, !dbg !1900
  %phi.bo130 = mul nuw i32 %phi.cast129, 65537, !dbg !1900
  br label %ClampToQuantum.exit75, !dbg !1900

ClampToQuantum.exit75:                            ; preds = %if.end.thread, %if.then15, %if.end.i70, %if.end3.i73
  %retval.0.i74 = phi i32 [ %phi.bo130, %if.end3.i73 ], [ 0, %if.then15 ], [ -1, %if.end.i70 ], [ 0, %if.end.thread ]
  %call19 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i74) #16, !dbg !1901
  br label %cleanup, !dbg !1902

if.end22:                                         ; preds = %if.end
  %cmp24 = icmp ugt i64 %5, 8, !dbg !1903
  call void @llvm.dbg.value(metadata float %color.0, metadata !1326, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata float %color.0, metadata !1326, metadata !DIExpression()), !dbg !1908
  %cmp.i78 = fcmp ugt float %color.0, 0.000000e+00, !dbg !1846
  br i1 %cmp24, label %if.then26, label %if.end34, !dbg !1910

if.end22.thread:                                  ; preds = %if.end.thread
  %cmp24121 = icmp ugt i64 %6, 8, !dbg !1903
  br i1 %cmp24121, label %ClampToQuantum.exit85, label %ClampToQuantum.exit93, !dbg !1910

if.then26:                                        ; preds = %if.end22
  br i1 %cmp.i78, label %if.end.i80, label %ClampToQuantum.exit85, !dbg !1911

if.end.i80:                                       ; preds = %if.then26
  %cmp1.i79 = fcmp ult float %color.0, 6.553500e+04, !dbg !1912
  br i1 %cmp1.i79, label %if.end3.i83, label %ClampToQuantum.exit85, !dbg !1913

if.end3.i83:                                      ; preds = %if.end.i80
  %add.i81 = fadd float %color.0, 5.000000e-01, !dbg !1914
  %conv.i82 = fptoui float %add.i81 to i16, !dbg !1915
  %phi.cast128 = zext i16 %conv.i82 to i32, !dbg !1916
  br label %ClampToQuantum.exit85, !dbg !1916

ClampToQuantum.exit85:                            ; preds = %if.end22.thread, %if.then26, %if.end.i80, %if.end3.i83
  %retval.0.i84 = phi i32 [ %phi.cast128, %if.end3.i83 ], [ 0, %if.then26 ], [ 65535, %if.end.i80 ], [ 0, %if.end22.thread ]
  %call31 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.36, i32 noundef %retval.0.i84) #16, !dbg !1917
  br label %cleanup, !dbg !1918

if.end34:                                         ; preds = %if.end22
  br i1 %cmp.i78, label %if.end.i88, label %ClampToQuantum.exit93, !dbg !1919

if.end.i88:                                       ; preds = %if.end34
  %cmp1.i87 = fcmp ult float %color.0, 6.553500e+04, !dbg !1920
  br i1 %cmp1.i87, label %if.end3.i91, label %ClampToQuantum.exit93, !dbg !1921

if.end3.i91:                                      ; preds = %if.end.i88
  %add.i89 = fadd float %color.0, 5.000000e-01, !dbg !1922
  %conv.i90 = fptoui float %add.i89 to i16, !dbg !1923
  %phi.cast = zext i16 %conv.i90 to i64, !dbg !1924
  %phi.bo = add nuw nsw i64 %phi.cast, 128, !dbg !1924
  br label %ClampToQuantum.exit93, !dbg !1924

ClampToQuantum.exit93:                            ; preds = %if.end22.thread, %if.end34, %if.end.i88, %if.end3.i91
  %retval.0.i92 = phi i64 [ %phi.bo, %if.end3.i91 ], [ 128, %if.end34 ], [ 65663, %if.end.i88 ], [ 128, %if.end22.thread ]
  call void @llvm.dbg.value(metadata i16 undef, metadata !1368, metadata !DIExpression()), !dbg !1925
  %shr.i = lshr i64 %retval.0.i92, 8, !dbg !1927
  %sub.i = sub nsw i64 %retval.0.i92, %shr.i, !dbg !1928
  %7 = trunc i64 %sub.i to i32, !dbg !1929
  %8 = lshr i32 %7, 8, !dbg !1929
  %conv38 = and i32 %8, 255, !dbg !1930
  %call39 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %component, i64 noundef 4096, ptr noundef nonnull @.str.37, i32 noundef %conv38) #16, !dbg !1931
  br label %cleanup, !dbg !1932

cleanup:                                          ; preds = %ClampToQuantum.exit93, %ClampToQuantum.exit85, %ClampToQuantum.exit75, %ClampToQuantum.exit65
  %call41 = call i64 @ConcatenateMagickString(ptr noundef %tuple, ptr noundef nonnull %component, i64 noundef 4096) #16, !dbg !1846
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %component) #16, !dbg !1933
  ret void, !dbg !1933
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare !dbg !1934 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1939 void @LocaleLower(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local i32 @IsColorSimilar(ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %q) local_unnamed_addr #8 !dbg !1942 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !1950, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr %p, metadata !1951, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata ptr %q, metadata !1952, metadata !DIExpression()), !dbg !1957
  %fuzz1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 31, !dbg !1958
  %0 = load double, ptr %fuzz1, align 8, !dbg !1958, !tbaa !1960
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !1972
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %1 = load i32, ptr %matte, align 8, !dbg !1957, !tbaa !1973
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1974

land.lhs.true:                                    ; preds = %entry
  %cmp2 = icmp eq i32 %1, 0, !dbg !1975
  br i1 %cmp2, label %if.then, label %if.end.thread, !dbg !1976

if.end.thread:                                    ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !1984
  %cmp.i161164 = fcmp ogt double %0, 0x3FE6A09E667F3BCD, !dbg !1986
  %x..i165 = select i1 %cmp.i161164, double %0, double 0x3FE6A09E667F3BCD, !dbg !1984
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !1988
  %mul166 = fmul double %x..i165, %x..i165, !dbg !1990
  %conv167 = fptrunc double %mul166 to float, !dbg !1991
  call void @llvm.dbg.value(metadata float %conv, metadata !1953, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1955, metadata !DIExpression()), !dbg !1957
  br label %cond.end22, !dbg !1992

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %p, metadata !1993, metadata !DIExpression()) #16, !dbg !2003
  call void @llvm.dbg.value(metadata ptr %q, metadata !1999, metadata !DIExpression()) #16, !dbg !2003
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 2, !dbg !2005
  %2 = load i16, ptr %red1.i, align 2, !dbg !2005, !tbaa !2006
  %conv.i = uitofp i16 %2 to float, !dbg !2007
  call void @llvm.dbg.value(metadata float %conv.i, metadata !2002, metadata !DIExpression()) #16, !dbg !2003
  call void @llvm.dbg.value(metadata float undef, metadata !2001, metadata !DIExpression()) #16, !dbg !2003
  %3 = load i16, ptr %p, align 2, !dbg !2008, !tbaa !2009
  %conv5.i = uitofp i16 %3 to float, !dbg !2010
  call void @llvm.dbg.value(metadata float %conv5.i, metadata !2000, metadata !DIExpression()) #16, !dbg !2003
  %red6.i = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 2, !dbg !2011
  %4 = load i16, ptr %red6.i, align 2, !dbg !2011, !tbaa !2006
  %conv8.i = uitofp i16 %4 to float, !dbg !2013
  %sub.i = fsub float %conv.i, %conv8.i, !dbg !2014
  %5 = tail call float @llvm.fabs.f32(float %sub.i) #16, !dbg !2015
  %6 = fpext float %5 to double, !dbg !2015
  %cmp.i = fcmp olt double %6, 1.000000e-15, !dbg !2016
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i, !dbg !2017

land.lhs.true.i:                                  ; preds = %if.then
  %green2.i = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 1, !dbg !2018
  %7 = load i16, ptr %green2.i, align 2, !dbg !2018, !tbaa !2019
  %conv3.i = uitofp i16 %7 to float, !dbg !2020
  call void @llvm.dbg.value(metadata float %conv3.i, metadata !2001, metadata !DIExpression()) #16, !dbg !2003
  %green11.i = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 1, !dbg !2021
  %8 = load i16, ptr %green11.i, align 2, !dbg !2021, !tbaa !2019
  %conv13.i = uitofp i16 %8 to float, !dbg !2022
  %sub14.i = fsub float %conv3.i, %conv13.i, !dbg !2023
  %9 = tail call float @llvm.fabs.f32(float %sub14.i) #16, !dbg !2024
  %10 = fpext float %9 to double, !dbg !2024
  %cmp16.i = fcmp olt double %10, 1.000000e-15, !dbg !2025
  br i1 %cmp16.i, label %land.lhs.true18.i, label %if.end.i, !dbg !2026

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %11 = load i16, ptr %q, align 2, !dbg !2027, !tbaa !2009
  %conv21.i = uitofp i16 %11 to float, !dbg !2028
  %sub22.i = fsub float %conv5.i, %conv21.i, !dbg !2029
  %12 = tail call float @llvm.fabs.f32(float %sub22.i) #16, !dbg !2030
  %13 = fpext float %12 to double, !dbg !2030
  %cmp24.i = fcmp olt double %13, 1.000000e-15, !dbg !2031
  br i1 %cmp24.i, label %cleanup, label %if.end.i, !dbg !2032

if.end.i:                                         ; preds = %land.lhs.true18.i, %land.lhs.true.i, %if.then
  br label %cleanup, !dbg !2033

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !1984
  %cmp.i161 = fcmp ogt double %0, 0x3FE6A09E667F3BCD, !dbg !1986
  %x..i = select i1 %cmp.i161, double %0, double 0x3FE6A09E667F3BCD, !dbg !1984
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !1988
  %mul = fmul double %x..i, %x..i, !dbg !1990
  %conv = fptrunc double %mul to float, !dbg !1991
  call void @llvm.dbg.value(metadata float %conv, metadata !1953, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !1955, metadata !DIExpression()), !dbg !1957
  %cmp8.not = icmp eq i32 %1, 0, !dbg !2034
  br i1 %cmp8.not, label %if.end49, label %cond.end22, !dbg !1992

cond.end22:                                       ; preds = %if.end.thread, %if.end
  %conv169 = phi float [ %conv167, %if.end.thread ], [ %conv, %if.end ]
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 3, !dbg !2036
  %14 = load i16, ptr %opacity, align 2, !dbg !2036, !tbaa !2038
  %conv14 = zext i16 %14 to i32, !dbg !2036
  %opacity19 = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 3, !dbg !2039
  %15 = load i16, ptr %opacity19, align 2, !dbg !2039, !tbaa !2038
  %conv20 = zext i16 %15 to i32, !dbg !2040
  %sub = sub nsw i32 %conv14, %conv20, !dbg !2041
  %conv24 = sitofp i32 %sub to float, !dbg !2042
  call void @llvm.dbg.value(metadata float %conv24, metadata !1954, metadata !DIExpression()), !dbg !1957
  %mul25 = fmul float %conv24, %conv24, !dbg !2043
  call void @llvm.dbg.value(metadata float %mul25, metadata !1955, metadata !DIExpression()), !dbg !1957
  %cmp26 = fcmp ogt float %mul25, %conv169, !dbg !2044
  br i1 %cmp26, label %cleanup, label %if.end29, !dbg !2046

if.end29:                                         ; preds = %cond.end22
  %16 = xor i16 %14, -1, !dbg !2047
  %conv33 = uitofp i16 %16 to double, !dbg !2047
  %mul34 = fmul double %conv33, 0x3EF0001000100010, !dbg !2048
  %conv35 = fptrunc double %mul34 to float, !dbg !2049
  call void @llvm.dbg.value(metadata float %conv35, metadata !1956, metadata !DIExpression()), !dbg !1957
  %17 = xor i16 %15, -1, !dbg !2050
  %conv39 = uitofp i16 %17 to double, !dbg !2050
  %mul40 = fmul double %conv39, 0x3EF0001000100010, !dbg !2051
  %conv41 = fpext float %conv35 to double, !dbg !2052
  %mul42 = fmul double %mul40, %conv41, !dbg !2052
  %conv43 = fptrunc double %mul42 to float, !dbg !2052
  call void @llvm.dbg.value(metadata float %conv43, metadata !1956, metadata !DIExpression()), !dbg !1957
  %conv44 = fpext float %conv43 to double, !dbg !2053
  %cmp45 = fcmp ugt double %conv44, 1.000000e-15, !dbg !2055
  br i1 %cmp45, label %if.end49, label %cleanup, !dbg !2056

if.end49:                                         ; preds = %if.end29, %if.end
  %conv170 = phi float [ %conv169, %if.end29 ], [ %conv, %if.end ]
  %distance.0 = phi float [ %mul25, %if.end29 ], [ 0.000000e+00, %if.end ], !dbg !1957
  %scale.0 = phi float [ %conv43, %if.end29 ], [ 1.000000e+00, %if.end ], !dbg !1957
  call void @llvm.dbg.value(metadata float %scale.0, metadata !1956, metadata !DIExpression()), !dbg !1957
  call void @llvm.dbg.value(metadata float %distance.0, metadata !1955, metadata !DIExpression()), !dbg !1957
  %conv52 = fmul float %distance.0, 3.000000e+00, !dbg !2057
  call void @llvm.dbg.value(metadata float %conv52, metadata !1955, metadata !DIExpression()), !dbg !1957
  %conv55 = fmul float %conv170, 3.000000e+00, !dbg !2058
  call void @llvm.dbg.value(metadata float %conv55, metadata !1953, metadata !DIExpression()), !dbg !1957
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 2, !dbg !2059
  %18 = load i16, ptr %red, align 2, !dbg !2059, !tbaa !2006
  %conv56 = uitofp i16 %18 to float, !dbg !2060
  %red57 = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 2, !dbg !2061
  %19 = load i16, ptr %red57, align 2, !dbg !2061, !tbaa !2006
  %conv59 = uitofp i16 %19 to float, !dbg !2061
  %sub60 = fsub float %conv56, %conv59, !dbg !2062
  call void @llvm.dbg.value(metadata float %sub60, metadata !1954, metadata !DIExpression()), !dbg !1957
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !2063
  %20 = load i32, ptr %colorspace, align 4, !dbg !2063, !tbaa !2065
  switch i32 %20, label %if.end82 [
    i32 24, label %if.then74
    i32 14, label %if.then74
    i32 15, label %if.then74
    i32 16, label %if.then74
  ], !dbg !2066

if.then74:                                        ; preds = %if.end49, %if.end49, %if.end49, %if.end49
  %21 = tail call float @llvm.fabs.f32(float %sub60), !dbg !2067
  %cmp76 = fcmp ogt float %21, 3.276700e+04, !dbg !2070
  br i1 %cmp76, label %if.then78, label %if.end80, !dbg !2071

if.then78:                                        ; preds = %if.then74
  %sub79 = fadd float %sub60, -6.553500e+04, !dbg !2072
  call void @llvm.dbg.value(metadata float %sub79, metadata !1954, metadata !DIExpression()), !dbg !1957
  br label %if.end80, !dbg !2073

if.end80:                                         ; preds = %if.then78, %if.then74
  %pixel.0 = phi float [ %sub79, %if.then78 ], [ %sub60, %if.then74 ], !dbg !1957
  call void @llvm.dbg.value(metadata float %pixel.0, metadata !1954, metadata !DIExpression()), !dbg !1957
  %mul81 = fmul float %pixel.0, 2.000000e+00, !dbg !2074
  call void @llvm.dbg.value(metadata float %mul81, metadata !1954, metadata !DIExpression()), !dbg !1957
  br label %if.end82, !dbg !2075

if.end82:                                         ; preds = %if.end49, %if.end80
  %pixel.1 = phi float [ %mul81, %if.end80 ], [ %sub60, %if.end49 ], !dbg !1957
  call void @llvm.dbg.value(metadata float %pixel.1, metadata !1954, metadata !DIExpression()), !dbg !1957
  %mul83 = fmul float %scale.0, %pixel.1, !dbg !2076
  %22 = tail call float @llvm.fmuladd.f32(float %mul83, float %pixel.1, float %conv52), !dbg !2077
  call void @llvm.dbg.value(metadata float %22, metadata !1955, metadata !DIExpression()), !dbg !1957
  %cmp85 = fcmp ogt float %22, %conv55, !dbg !2078
  br i1 %cmp85, label %cleanup, label %if.end88, !dbg !2080

if.end88:                                         ; preds = %if.end82
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 1, !dbg !2081
  %23 = load i16, ptr %green, align 2, !dbg !2081, !tbaa !2019
  %conv89 = uitofp i16 %23 to float, !dbg !2082
  %green90 = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 1, !dbg !2083
  %24 = load i16, ptr %green90, align 2, !dbg !2083, !tbaa !2019
  %conv92 = uitofp i16 %24 to float, !dbg !2084
  %sub93 = fsub float %conv89, %conv92, !dbg !2085
  call void @llvm.dbg.value(metadata float %sub93, metadata !1954, metadata !DIExpression()), !dbg !1957
  %mul94 = fmul float %scale.0, %sub93, !dbg !2086
  %25 = tail call float @llvm.fmuladd.f32(float %mul94, float %sub93, float %22), !dbg !2087
  call void @llvm.dbg.value(metadata float %25, metadata !1955, metadata !DIExpression()), !dbg !1957
  %cmp96 = fcmp ogt float %25, %conv55, !dbg !2088
  br i1 %cmp96, label %cleanup, label %if.end99, !dbg !2090

if.end99:                                         ; preds = %if.end88
  %26 = load i16, ptr %p, align 2, !dbg !2091, !tbaa !2009
  %conv100 = uitofp i16 %26 to float, !dbg !2092
  %27 = load i16, ptr %q, align 2, !dbg !2093, !tbaa !2009
  %conv103 = uitofp i16 %27 to float, !dbg !2094
  %sub104 = fsub float %conv100, %conv103, !dbg !2095
  call void @llvm.dbg.value(metadata float %sub104, metadata !1954, metadata !DIExpression()), !dbg !1957
  %mul105 = fmul float %scale.0, %sub104, !dbg !2096
  %28 = tail call float @llvm.fmuladd.f32(float %mul105, float %sub104, float %25), !dbg !2097
  call void @llvm.dbg.value(metadata float %28, metadata !1955, metadata !DIExpression()), !dbg !1957
  %cmp107 = fcmp ule float %28, %conv55, !dbg !2098
  %. = zext i1 %cmp107 to i32, !dbg !1957
  br label %cleanup, !dbg !1957

cleanup:                                          ; preds = %if.end.i, %land.lhs.true18.i, %if.end99, %if.end88, %if.end82, %if.end29, %cond.end22
  %retval.0 = phi i32 [ 0, %cond.end22 ], [ 1, %if.end29 ], [ 0, %if.end82 ], [ 0, %if.end88 ], [ %., %if.end99 ], [ 0, %if.end.i ], [ 1, %land.lhs.true18.i ], !dbg !1957
  ret i32 %retval.0, !dbg !2100
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @IsImageSimilar(ptr noundef %image, ptr noundef %target_image, ptr nocapture noundef %x_offset, ptr nocapture noundef %y_offset, ptr noundef %exception) local_unnamed_addr #0 !dbg !2101 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %target = alloca %struct._MagickPixelPacket, align 8
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2106, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %target_image, metadata !2107, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %x_offset, metadata !2108, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %y_offset, metadata !2109, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2110, metadata !DIExpression()), !dbg !2134
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %target) #16, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %target, metadata !2118, metadata !DIExpression()), !dbg !2136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #16, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2119, metadata !DIExpression()), !dbg !2137
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2138
  %0 = load i32, ptr %debug, align 8, !dbg !2138, !tbaa !2140
  %cmp.not = icmp eq i32 %0, 0, !dbg !2141
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2142

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2143
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 1799, ptr noundef nonnull @.str.11, ptr noundef nonnull %filename) #16, !dbg !2144
  br label %if.end, !dbg !2145

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !2125, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 1, metadata !2117, metadata !DIExpression()), !dbg !2134
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #16, !dbg !2146
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %target) #16, !dbg !2147
  %call1 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #16, !dbg !2148
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2111, metadata !DIExpression()), !dbg !2134
  %call2 = call ptr @AcquireVirtualCacheView(ptr noundef %target_image, ptr noundef %exception) #16, !dbg !2149
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2116, metadata !DIExpression()), !dbg !2134
  %1 = load i64, ptr %y_offset, align 8, !dbg !2150, !tbaa !1451
  call void @llvm.dbg.value(metadata i64 %1, metadata !2127, metadata !DIExpression()), !dbg !2134
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 %1, metadata !2127, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2125, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 1, metadata !2117, metadata !DIExpression()), !dbg !2134
  %2 = load i64, ptr %rows, align 8, !dbg !2151, !tbaa !2152
  %cmp3155 = icmp slt i64 %1, %2, !dbg !2153
  br i1 %cmp3155, label %for.body.lr.ph, label %for.end53, !dbg !2154

for.body.lr.ph:                                   ; preds = %if.end
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %rows9 = getelementptr inbounds %struct._Image, ptr %target_image, i64 0, i32 8
  %columns13 = getelementptr inbounds %struct._Image, ptr %target_image, i64 0, i32 7
  %3 = getelementptr i8, ptr %image, i64 4
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %red1.i122 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 5
  %green3.i125 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 6
  %blue5.i127 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 7
  %opacity7.i130 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 8
  %index15.i135 = getelementptr inbounds %struct._MagickPixelPacket, ptr %target, i64 0, i32 9
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2154

for.body:                                         ; preds = %for.body.lr.ph, %for.inc51
  %y.0157 = phi i64 [ %1, %for.body.lr.ph ], [ %inc52, %for.inc51 ]
  %status.0156 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %for.inc51 ]
  call void @llvm.dbg.value(metadata i64 %y.0157, metadata !2127, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 %status.0156, metadata !2117, metadata !DIExpression()), !dbg !2134
  %cmp4 = icmp eq i64 %y.0157, 0, !dbg !2155
  br i1 %cmp4, label %cond.true, label %cond.end, !dbg !2157

cond.true:                                        ; preds = %for.body
  %4 = load i64, ptr %x_offset, align 8, !dbg !2158, !tbaa !1451
  br label %cond.end, !dbg !2157

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %for.body ], !dbg !2157
  call void @llvm.dbg.value(metadata i64 %cond, metadata !2125, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %cond, metadata !2125, metadata !DIExpression()), !dbg !2134
  %5 = load i64, ptr %columns, align 8, !dbg !2159, !tbaa !2161
  %cmp6148 = icmp slt i64 %cond, %5, !dbg !2162
  br i1 %cmp6148, label %for.cond8.preheader.lr.ph, label %for.end38, !dbg !2163

for.cond8.preheader.lr.ph:                        ; preds = %cond.end
  %6 = load i64, ptr %rows9, align 8, !dbg !2164, !tbaa !2152
  %7 = icmp sgt i64 %6, 0, !dbg !2168
  br i1 %7, label %for.cond8.preheader, label %for.cond8.preheader.lr.ph.split.us

for.cond8.preheader.lr.ph.split.us:               ; preds = %for.cond8.preheader.lr.ph
  %cmp33.us = icmp eq i64 %6, 0
  br i1 %cmp33.us, label %for.end38, label %for.end38.thread, !dbg !2169

for.end38.thread:                                 ; preds = %for.cond8.preheader.lr.ph.split.us
  %8 = add nsw i64 %cond, 1, !dbg !2163
  call void @llvm.dbg.value(metadata i32 undef, metadata !2126, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 undef, metadata !2125, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2134
  %smax = call i64 @llvm.smax.i64(i64 %5, i64 %8), !dbg !2163
  br label %if.end42, !dbg !2170

for.cond8.preheader:                              ; preds = %for.cond8.preheader.lr.ph, %for.inc36
  %9 = phi i64 [ %26, %for.inc36 ], [ %6, %for.cond8.preheader.lr.ph ]
  %x.1149 = phi i64 [ %inc37, %for.inc36 ], [ %cond, %for.cond8.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %x.1149, metadata !2125, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2126, metadata !DIExpression()), !dbg !2134
  %cmp10142 = icmp sgt i64 %9, 0, !dbg !2168
  br i1 %cmp10142, label %for.cond12.preheader.lr.ph, label %for.end31, !dbg !2171

for.cond12.preheader.lr.ph:                       ; preds = %for.cond8.preheader
  %10 = load i64, ptr %columns13, align 8, !dbg !2172, !tbaa !2161
  %11 = icmp sgt i64 %10, 0, !dbg !2176
  br i1 %11, label %for.cond12.preheader, label %for.end31

for.cond12.preheader:                             ; preds = %for.cond12.preheader.lr.ph, %for.inc29
  %12 = phi i64 [ %24, %for.inc29 ], [ %10, %for.cond12.preheader.lr.ph ]
  %j.0143 = phi i64 [ %inc30, %for.inc29 ], [ 0, %for.cond12.preheader.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %j.0143, metadata !2126, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 0, metadata !2124, metadata !DIExpression()), !dbg !2134
  %cmp14139 = icmp sgt i64 %12, 0, !dbg !2176
  br i1 %cmp14139, label %for.body15.lr.ph, label %for.end, !dbg !2177

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %add16 = add nsw i64 %j.0143, %y.0157
  br label %for.body15, !dbg !2177

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc
  %i.0140 = phi i64 [ 0, %for.body15.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.0140, metadata !2124, metadata !DIExpression()), !dbg !2134
  %add = add nsw i64 %i.0140, %x.1149, !dbg !2178
  %call17 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call1, i64 noundef %add, i64 noundef %add16, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2120, metadata !DIExpression()), !dbg !2134
  %call18 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call1) #16, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2122, metadata !DIExpression()), !dbg !2134
  %image.val119 = load i32, ptr %3, align 4, !dbg !2182, !tbaa !2065
  call void @llvm.dbg.value(metadata ptr undef, metadata !2183, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call17, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !2192, metadata !DIExpression()), !dbg !2193
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %call17, i64 0, i32 2, !dbg !2195
  %13 = load i16, ptr %red.i, align 2, !dbg !2195, !tbaa !2006
  %conv.i = uitofp i16 %13 to float, !dbg !2196
  store float %conv.i, ptr %red1.i, align 8, !dbg !2197, !tbaa !1287
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %call17, i64 0, i32 1, !dbg !2198
  %14 = load i16, ptr %green.i, align 2, !dbg !2198, !tbaa !2019
  %conv2.i = uitofp i16 %14 to float, !dbg !2199
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2200, !tbaa !1292
  %15 = load i16, ptr %call17, align 2, !dbg !2201, !tbaa !2009
  %conv4.i = uitofp i16 %15 to float, !dbg !2202
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2203, !tbaa !1297
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %call17, i64 0, i32 3, !dbg !2204
  %16 = load i16, ptr %opacity.i, align 2, !dbg !2204, !tbaa !2038
  %conv6.i = uitofp i16 %16 to float, !dbg !2205
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2206, !tbaa !1302
  %cmp.i = icmp eq i32 %image.val119, 12, !dbg !2207
  %cmp9.i = icmp ne ptr %call18, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !2209
  br i1 %or.cond.i, label %cond.end.i, label %SetMagickPixelPacket.exit, !dbg !2209

cond.end.i:                                       ; preds = %for.body15
  %17 = load i16, ptr %call18, align 2, !dbg !2210, !tbaa !1187
  %conv14.i = uitofp i16 %17 to float, !dbg !2211
  store float %conv14.i, ptr %index15.i, align 8, !dbg !2212, !tbaa !1308
  br label %SetMagickPixelPacket.exit, !dbg !2213

SetMagickPixelPacket.exit:                        ; preds = %for.body15, %cond.end.i
  %call19 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call2, i64 noundef %i.0140, i64 noundef %j.0143, i64 noundef 1, i64 noundef 1, ptr noundef %exception) #21, !dbg !2214
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2121, metadata !DIExpression()), !dbg !2134
  %call20 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call2) #16, !dbg !2215
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2123, metadata !DIExpression()), !dbg !2134
  %image.val = load i32, ptr %3, align 4, !dbg !2216, !tbaa !2065
  call void @llvm.dbg.value(metadata ptr undef, metadata !2183, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2190, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2191, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %target, metadata !2192, metadata !DIExpression()), !dbg !2217
  %red.i120 = getelementptr inbounds %struct._PixelPacket, ptr %call19, i64 0, i32 2, !dbg !2219
  %18 = load i16, ptr %red.i120, align 2, !dbg !2219, !tbaa !2006
  %conv.i121 = uitofp i16 %18 to float, !dbg !2220
  store float %conv.i121, ptr %red1.i122, align 8, !dbg !2221, !tbaa !1287
  %green.i123 = getelementptr inbounds %struct._PixelPacket, ptr %call19, i64 0, i32 1, !dbg !2222
  %19 = load i16, ptr %green.i123, align 2, !dbg !2222, !tbaa !2019
  %conv2.i124 = uitofp i16 %19 to float, !dbg !2223
  store float %conv2.i124, ptr %green3.i125, align 4, !dbg !2224, !tbaa !1292
  %20 = load i16, ptr %call19, align 2, !dbg !2225, !tbaa !2009
  %conv4.i126 = uitofp i16 %20 to float, !dbg !2226
  store float %conv4.i126, ptr %blue5.i127, align 8, !dbg !2227, !tbaa !1297
  %opacity.i128 = getelementptr inbounds %struct._PixelPacket, ptr %call19, i64 0, i32 3, !dbg !2228
  %21 = load i16, ptr %opacity.i128, align 2, !dbg !2228, !tbaa !2038
  %conv6.i129 = uitofp i16 %21 to float, !dbg !2229
  store float %conv6.i129, ptr %opacity7.i130, align 4, !dbg !2230, !tbaa !1302
  %cmp.i131 = icmp eq i32 %image.val, 12, !dbg !2231
  %cmp9.i132 = icmp ne ptr %call20, null
  %or.cond.i133 = and i1 %cmp9.i132, %cmp.i131, !dbg !2232
  br i1 %or.cond.i133, label %cond.end.i136, label %SetMagickPixelPacket.exit137, !dbg !2232

cond.end.i136:                                    ; preds = %SetMagickPixelPacket.exit
  %22 = load i16, ptr %call20, align 2, !dbg !2233, !tbaa !1187
  %conv14.i134 = uitofp i16 %22 to float, !dbg !2234
  store float %conv14.i134, ptr %index15.i135, align 8, !dbg !2235, !tbaa !1308
  br label %SetMagickPixelPacket.exit137, !dbg !2236

SetMagickPixelPacket.exit137:                     ; preds = %SetMagickPixelPacket.exit, %cond.end.i136
  %call21 = call i32 @IsMagickColorSimilar(ptr noundef nonnull %pixel, ptr noundef nonnull %target), !dbg !2237
  %cmp22 = icmp eq i32 %call21, 0, !dbg !2239
  br i1 %cmp22, label %SetMagickPixelPacket.exit137.for.end.loopexit_crit_edge, label %for.inc, !dbg !2240

SetMagickPixelPacket.exit137.for.end.loopexit_crit_edge: ; preds = %SetMagickPixelPacket.exit137
  %.pre.pre = load i64, ptr %columns13, align 8, !dbg !2241, !tbaa !2161
  br label %for.end, !dbg !2240

for.inc:                                          ; preds = %SetMagickPixelPacket.exit137
  %inc = add nuw nsw i64 %i.0140, 1, !dbg !2243
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2124, metadata !DIExpression()), !dbg !2134
  %23 = load i64, ptr %columns13, align 8, !dbg !2172, !tbaa !2161
  %cmp14 = icmp slt i64 %inc, %23, !dbg !2176
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !2177, !llvm.loop !2244

for.end:                                          ; preds = %for.inc, %SetMagickPixelPacket.exit137.for.end.loopexit_crit_edge, %for.cond12.preheader
  %24 = phi i64 [ %12, %for.cond12.preheader ], [ %.pre.pre, %SetMagickPixelPacket.exit137.for.end.loopexit_crit_edge ], [ %23, %for.inc ], !dbg !2241
  %i.0.lcssa = phi i64 [ 0, %for.cond12.preheader ], [ %i.0140, %SetMagickPixelPacket.exit137.for.end.loopexit_crit_edge ], [ %inc, %for.inc ], !dbg !2246
  %cmp26 = icmp slt i64 %i.0.lcssa, %24, !dbg !2247
  br i1 %cmp26, label %for.end.for.end31.loopexit_crit_edge, label %for.inc29, !dbg !2248

for.end.for.end31.loopexit_crit_edge:             ; preds = %for.end
  %.pre170.pre = load i64, ptr %rows9, align 8, !dbg !2249, !tbaa !2152
  br label %for.end31, !dbg !2248

for.inc29:                                        ; preds = %for.end
  %inc30 = add nuw nsw i64 %j.0143, 1, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %inc30, metadata !2126, metadata !DIExpression()), !dbg !2134
  %25 = load i64, ptr %rows9, align 8, !dbg !2164, !tbaa !2152
  %cmp10 = icmp slt i64 %inc30, %25, !dbg !2168
  br i1 %cmp10, label %for.cond12.preheader, label %for.end31, !dbg !2171, !llvm.loop !2252

for.end31:                                        ; preds = %for.inc29, %for.cond12.preheader.lr.ph, %for.end.for.end31.loopexit_crit_edge, %for.cond8.preheader
  %26 = phi i64 [ %9, %for.cond8.preheader ], [ %.pre170.pre, %for.end.for.end31.loopexit_crit_edge ], [ %9, %for.cond12.preheader.lr.ph ], [ %25, %for.inc29 ], !dbg !2249
  %j.0.lcssa = phi i64 [ 0, %for.cond8.preheader ], [ %j.0143, %for.end.for.end31.loopexit_crit_edge ], [ %9, %for.cond12.preheader.lr.ph ], [ %inc30, %for.inc29 ], !dbg !2255
  %cmp33 = icmp eq i64 %j.0.lcssa, %26, !dbg !2256
  br i1 %cmp33, label %for.end31.for.end38.loopexit_crit_edge, label %for.inc36, !dbg !2169

for.end31.for.end38.loopexit_crit_edge:           ; preds = %for.end31
  %.pre171.pre = load i64, ptr %columns, align 8, !dbg !2257, !tbaa !2161
  br label %for.end38, !dbg !2169

for.inc36:                                        ; preds = %for.end31
  %inc37 = add nsw i64 %x.1149, 1, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %inc37, metadata !2125, metadata !DIExpression()), !dbg !2134
  %27 = load i64, ptr %columns, align 8, !dbg !2159, !tbaa !2161
  %cmp6 = icmp slt i64 %inc37, %27, !dbg !2162
  br i1 %cmp6, label %for.cond8.preheader, label %for.end38, !dbg !2163, !llvm.loop !2260

for.end38:                                        ; preds = %for.inc36, %for.end31.for.end38.loopexit_crit_edge, %for.cond8.preheader.lr.ph.split.us, %cond.end
  %28 = phi i64 [ %5, %cond.end ], [ %5, %for.cond8.preheader.lr.ph.split.us ], [ %.pre171.pre, %for.end31.for.end38.loopexit_crit_edge ], [ %27, %for.inc36 ], !dbg !2257
  %x.1.lcssa = phi i64 [ %cond, %cond.end ], [ %cond, %for.cond8.preheader.lr.ph.split.us ], [ %x.1149, %for.end31.for.end38.loopexit_crit_edge ], [ %inc37, %for.inc36 ], !dbg !2262
  %cmp40 = icmp slt i64 %x.1.lcssa, %28, !dbg !2263
  br i1 %cmp40, label %for.end53, label %if.end42, !dbg !2170

if.end42:                                         ; preds = %for.end38.thread, %for.end38
  %x.1.lcssa177 = phi i64 [ %smax, %for.end38.thread ], [ %x.1.lcssa, %for.end38 ]
  %29 = load ptr, ptr %progress_monitor, align 8, !dbg !2264, !tbaa !2265
  %cmp43.not = icmp eq ptr %29, null, !dbg !2266
  br i1 %cmp43.not, label %for.inc51, label %SetImageProgress.exit, !dbg !2267

SetImageProgress.exit:                            ; preds = %if.end42
  %30 = load i64, ptr %rows, align 8, !dbg !2268, !tbaa !2152
  call void @llvm.dbg.value(metadata ptr %image, metadata !2269, metadata !DIExpression()) #16, !dbg !2279
  call void @llvm.dbg.value(metadata ptr @.str.17, metadata !2275, metadata !DIExpression()) #16, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %y.0157, metadata !2276, metadata !DIExpression()) #16, !dbg !2279
  call void @llvm.dbg.value(metadata i64 %30, metadata !2277, metadata !DIExpression()) #16, !dbg !2279
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #16, !dbg !2281
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2278, metadata !DIExpression()) #16, !dbg !2282
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.731, ptr noundef nonnull @.str.17, ptr noundef nonnull %filename.i) #16, !dbg !2283
  %31 = load ptr, ptr %progress_monitor, align 8, !dbg !2284, !tbaa !2265
  %32 = load ptr, ptr %client_data.i, align 8, !dbg !2285, !tbaa !2286
  %call4.i = call i32 %31(ptr noundef nonnull %message.i, i64 noundef %y.0157, i64 noundef %30, ptr noundef %32) #16, !dbg !2287
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #16, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2128, metadata !DIExpression()), !dbg !2289
  %cmp47 = icmp eq i32 %call4.i, 0, !dbg !2290
  %spec.select = select i1 %cmp47, i32 0, i32 %status.0156, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2117, metadata !DIExpression()), !dbg !2134
  br label %for.inc51, !dbg !2293

for.inc51:                                        ; preds = %if.end42, %SetImageProgress.exit
  %status.2 = phi i32 [ %spec.select, %SetImageProgress.exit ], [ %status.0156, %if.end42 ], !dbg !2134
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2117, metadata !DIExpression()), !dbg !2134
  %inc52 = add nsw i64 %y.0157, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %inc52, metadata !2127, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i64 %x.1.lcssa, metadata !2125, metadata !DIExpression()), !dbg !2134
  %33 = load i64, ptr %rows, align 8, !dbg !2151, !tbaa !2152
  %cmp3 = icmp slt i64 %inc52, %33, !dbg !2153
  br i1 %cmp3, label %for.body, label %for.end53, !dbg !2154, !llvm.loop !2295

for.end53:                                        ; preds = %for.inc51, %for.end38, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0156, %for.end38 ], [ %status.2, %for.inc51 ], !dbg !2134
  %y.0.lcssa = phi i64 [ %1, %if.end ], [ %y.0157, %for.end38 ], [ %inc52, %for.inc51 ], !dbg !2297
  %x.2 = phi i64 [ 0, %if.end ], [ %x.1.lcssa, %for.end38 ], [ %x.1.lcssa177, %for.inc51 ], !dbg !2134
  call void @llvm.dbg.value(metadata i64 %x.2, metadata !2125, metadata !DIExpression()), !dbg !2134
  %call54 = call ptr @DestroyCacheView(ptr noundef %call2) #16, !dbg !2298
  call void @llvm.dbg.value(metadata ptr %call54, metadata !2116, metadata !DIExpression()), !dbg !2134
  %call55 = call ptr @DestroyCacheView(ptr noundef %call1) #16, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %call55, metadata !2111, metadata !DIExpression()), !dbg !2134
  store i64 %x.2, ptr %x_offset, align 8, !dbg !2300, !tbaa !1451
  store i64 %y.0.lcssa, ptr %y_offset, align 8, !dbg !2301, !tbaa !1451
  %cmp56 = icmp eq i32 %status.0.lcssa, 0, !dbg !2302
  br i1 %cmp56, label %cleanup, label %if.end58, !dbg !2304

if.end58:                                         ; preds = %for.end53
  %34 = load i64, ptr %rows, align 8, !dbg !2305, !tbaa !2152
  %cmp60 = icmp slt i64 %y.0.lcssa, %34, !dbg !2306
  %cond61 = zext i1 %cmp60 to i32, !dbg !2307
  br label %cleanup, !dbg !2308

cleanup:                                          ; preds = %for.end53, %if.end58
  %retval.0 = phi i32 [ %cond61, %if.end58 ], [ 0, %for.end53 ], !dbg !2134
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #16, !dbg !2309
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %target) #16, !dbg !2309
  ret i32 %retval.0, !dbg !2309
}

declare !dbg !2310 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2313 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: hot
declare !dbg !2316 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

declare !dbg !2321 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define dso_local i32 @IsMagickColorSimilar(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %q) local_unnamed_addr #8 !dbg !2324 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !2328, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr %q, metadata !2329, metadata !DIExpression()), !dbg !2334
  %fuzz1 = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 3, !dbg !2335
  %0 = load double, ptr %fuzz1, align 8, !dbg !2335, !tbaa !2337
  %cmp = fcmp oeq double %0, 0.000000e+00, !dbg !2338
  %fuzz2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 3, !dbg !2334
  %1 = load double, ptr %fuzz2, align 8, !dbg !2334, !tbaa !2337
  %cmp3 = fcmp oeq double %1, 0.000000e+00, !dbg !2334
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2339

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp3, label %if.then, label %if.then6, !dbg !2340

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %p, metadata !2341, metadata !DIExpression()) #16, !dbg !2345
  call void @llvm.dbg.value(metadata ptr %q, metadata !2344, metadata !DIExpression()) #16, !dbg !2345
  %matte.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 2, !dbg !2347
  %2 = load i32, ptr %matte.i, align 8, !dbg !2347, !tbaa !1658
  %cmp.not.i = icmp eq i32 %2, 0, !dbg !2349
  %matte694.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 2, !dbg !2345
  %3 = load i32, ptr %matte694.i, align 8, !dbg !2345, !tbaa !1658
  %cmp7.not95.i = icmp eq i32 %3, 0, !dbg !2345
  br i1 %cmp.not.i, label %if.end.thread.i, label %land.lhs.true.i, !dbg !2350

land.lhs.true.i:                                  ; preds = %if.then
  %opacity.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 8, !dbg !2345
  %4 = load float, ptr %opacity.i, align 4, !dbg !2345, !tbaa !1302
  br i1 %cmp7.not95.i, label %land.lhs.true3.i, label %if.then28.i, !dbg !2351

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %5 = tail call float @llvm.fabs.f32(float %4) #16, !dbg !2352
  %6 = fpext float %5 to double, !dbg !2352
  %cmp4.i = fcmp ult double %6, 1.000000e-15, !dbg !2353
  br i1 %cmp4.i, label %if.end44.i, label %cleanup, !dbg !2354

if.end.thread.i:                                  ; preds = %if.then
  br i1 %cmp7.not95.i, label %if.end44.i, label %land.lhs.true13.i, !dbg !2355

land.lhs.true13.i:                                ; preds = %if.end.thread.i
  %opacity14.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 8, !dbg !2357
  %7 = load float, ptr %opacity14.i, align 4, !dbg !2357, !tbaa !1302
  %8 = tail call float @llvm.fabs.f32(float %7) #16, !dbg !2358
  %9 = fpext float %8 to double, !dbg !2358
  %cmp17.i = fcmp ult double %9, 1.000000e-15, !dbg !2359
  br i1 %cmp17.i, label %if.end44.i, label %cleanup, !dbg !2360

if.then28.i:                                      ; preds = %land.lhs.true.i
  %opacity30.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 8, !dbg !2361
  %10 = load float, ptr %opacity30.i, align 4, !dbg !2361, !tbaa !1302
  %sub31.i = fsub float %4, %10, !dbg !2365
  %11 = tail call float @llvm.fabs.f32(float %sub31.i) #16, !dbg !2366
  %12 = fpext float %11 to double, !dbg !2366
  %cmp33.i = fcmp ult double %12, 1.000000e-15, !dbg !2367
  br i1 %cmp33.i, label %if.end36.i, label %cleanup, !dbg !2368

if.end36.i:                                       ; preds = %if.then28.i
  %sub38.i = fadd float %4, -6.553500e+04, !dbg !2369
  %13 = tail call float @llvm.fabs.f32(float %sub38.i) #16, !dbg !2371
  %14 = fpext float %13 to double, !dbg !2371
  %cmp40.i = fcmp olt double %14, 1.000000e-15, !dbg !2372
  br i1 %cmp40.i, label %cleanup, label %if.end44.i, !dbg !2373

if.end44.i:                                       ; preds = %if.end36.i, %land.lhs.true13.i, %if.end.thread.i, %land.lhs.true3.i
  %red.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 5, !dbg !2374
  %15 = load float, ptr %red.i, align 8, !dbg !2374, !tbaa !1287
  %red45.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 5, !dbg !2376
  %16 = load float, ptr %red45.i, align 8, !dbg !2376, !tbaa !1287
  %sub46.i = fsub float %15, %16, !dbg !2377
  %17 = tail call float @llvm.fabs.f32(float %sub46.i) #16, !dbg !2378
  %18 = fpext float %17 to double, !dbg !2378
  %cmp48.i = fcmp ult double %18, 1.000000e-15, !dbg !2379
  br i1 %cmp48.i, label %if.end51.i, label %cleanup, !dbg !2380

if.end51.i:                                       ; preds = %if.end44.i
  %green.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 6, !dbg !2381
  %19 = load float, ptr %green.i, align 4, !dbg !2381, !tbaa !1292
  %green52.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 6, !dbg !2383
  %20 = load float, ptr %green52.i, align 4, !dbg !2383, !tbaa !1292
  %sub53.i = fsub float %19, %20, !dbg !2384
  %21 = tail call float @llvm.fabs.f32(float %sub53.i) #16, !dbg !2385
  %22 = fpext float %21 to double, !dbg !2385
  %cmp55.i = fcmp ult double %22, 1.000000e-15, !dbg !2386
  br i1 %cmp55.i, label %if.end58.i, label %cleanup, !dbg !2387

if.end58.i:                                       ; preds = %if.end51.i
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 7, !dbg !2388
  %23 = load float, ptr %blue.i, align 8, !dbg !2388, !tbaa !1297
  %blue59.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 7, !dbg !2390
  %24 = load float, ptr %blue59.i, align 8, !dbg !2390, !tbaa !1297
  %sub60.i = fsub float %23, %24, !dbg !2391
  %25 = tail call float @llvm.fabs.f32(float %sub60.i) #16, !dbg !2392
  %26 = fpext float %25 to double, !dbg !2392
  %cmp62.i = fcmp ult double %26, 1.000000e-15, !dbg !2393
  br i1 %cmp62.i, label %if.end65.i, label %cleanup, !dbg !2394

if.end65.i:                                       ; preds = %if.end58.i
  %colorspace.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 1, !dbg !2395
  %27 = load i32, ptr %colorspace.i, align 4, !dbg !2395, !tbaa !1392
  %cmp66.i = icmp eq i32 %27, 12, !dbg !2397
  br i1 %cmp66.i, label %land.lhs.true68.i, label %if.end75.i, !dbg !2398

land.lhs.true68.i:                                ; preds = %if.end65.i
  %index.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 9, !dbg !2399
  %28 = load float, ptr %index.i, align 8, !dbg !2399, !tbaa !1308
  %index69.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 9, !dbg !2400
  %29 = load float, ptr %index69.i, align 8, !dbg !2400, !tbaa !1308
  %sub70.i = fsub float %28, %29, !dbg !2401
  %30 = tail call float @llvm.fabs.f32(float %sub70.i) #16, !dbg !2402
  %31 = fpext float %30 to double, !dbg !2402
  %cmp72.i = fcmp ult double %31, 1.000000e-15, !dbg !2403
  br i1 %cmp72.i, label %if.end75.i, label %cleanup, !dbg !2404

if.end75.i:                                       ; preds = %land.lhs.true68.i, %if.end65.i
  br label %cleanup, !dbg !2405

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata double %1, metadata !1977, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2406
  %cmp.i = fcmp ogt double %1, 0x3FE6A09E667F3BCD, !dbg !2409
  %x..i = select i1 %cmp.i, double %1, double 0x3FE6A09E667F3BCD, !dbg !2406
  call void @llvm.dbg.value(metadata double %1, metadata !1977, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2410
  %mul = fmul double %x..i, %x..i, !dbg !2412
  call void @llvm.dbg.value(metadata float undef, metadata !2330, metadata !DIExpression()), !dbg !2334
  br label %if.end29, !dbg !2413

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2417
  %cmp.i235 = fcmp ogt double %0, 0x3FE6A09E667F3BCD, !dbg !2419
  %x..i236 = select i1 %cmp.i235, double %0, double 0x3FE6A09E667F3BCD, !dbg !2419
  br i1 %cmp3, label %if.then14, label %if.else21, !dbg !2420

if.then14:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata double %0, metadata !1977, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2421
  %mul19 = fmul double %x..i236, %x..i236, !dbg !2423
  call void @llvm.dbg.value(metadata float undef, metadata !2330, metadata !DIExpression()), !dbg !2334
  br label %if.end29, !dbg !2424

if.else21:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata double %1, metadata !1977, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2425
  %cmp.i241 = fcmp ogt double %1, 0x3FE6A09E667F3BCD, !dbg !2427
  %x..i242 = select i1 %cmp.i241, double %1, double 0x3FE6A09E667F3BCD, !dbg !2425
  %mul26 = fmul double %x..i236, %x..i242, !dbg !2428
  call void @llvm.dbg.value(metadata float undef, metadata !2330, metadata !DIExpression()), !dbg !2334
  br label %if.end29

if.end29:                                         ; preds = %if.then14, %if.else21, %if.then6
  %fuzz.0.in = phi double [ %mul, %if.then6 ], [ %mul19, %if.then14 ], [ %mul26, %if.else21 ]
  %fuzz.0 = fptrunc double %fuzz.0.in to float, !dbg !2429
  call void @llvm.dbg.value(metadata float %fuzz.0, metadata !2330, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2333, metadata !DIExpression()), !dbg !2334
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 2, !dbg !2430
  %32 = load i32, ptr %matte, align 8, !dbg !2430, !tbaa !1658
  %cmp30.not = icmp eq i32 %32, 0, !dbg !2432
  br i1 %cmp30.not, label %lor.lhs.false, label %cond.end, !dbg !2433

lor.lhs.false:                                    ; preds = %if.end29
  %matte32 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 2, !dbg !2434
  %33 = load i32, ptr %matte32, align 8, !dbg !2434, !tbaa !1658
  %cmp33.not = icmp eq i32 %33, 0, !dbg !2435
  br i1 %cmp33.not, label %if.end79, label %cond.end45, !dbg !2436

cond.end:                                         ; preds = %if.end29
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 8, !dbg !2437
  %34 = load float, ptr %opacity, align 4, !dbg !2437, !tbaa !1302
  %matte39.phi.trans.insert = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 2
  %.pre = load i32, ptr %matte39.phi.trans.insert, align 8, !dbg !2439, !tbaa !1658
  %cmp40.not = icmp eq i32 %.pre, 0, !dbg !2440
  br i1 %cmp40.not, label %cond.end45.thread, label %cond.end45.thread276, !dbg !2441

cond.end45:                                       ; preds = %lor.lhs.false
  %opacity43 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 8, !dbg !2442
  %35 = load float, ptr %opacity43, align 4, !dbg !2442, !tbaa !1302
  %sub = fsub float 0.000000e+00, %35, !dbg !2443
  call void @llvm.dbg.value(metadata float %sub, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul47 = fmul float %sub, %sub, !dbg !2444
  call void @llvm.dbg.value(metadata float %mul47, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp48 = fcmp ogt float %mul47, %fuzz.0, !dbg !2445
  br i1 %cmp48, label %cleanup, label %if.then65, !dbg !2447

cond.end45.thread276:                             ; preds = %cond.end
  %opacity43279 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 8, !dbg !2442
  %36 = load float, ptr %opacity43279, align 4, !dbg !2442, !tbaa !1302
  %sub280 = fsub float %34, %36, !dbg !2443
  call void @llvm.dbg.value(metadata float %sub, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul47281 = fmul float %sub280, %sub280, !dbg !2444
  call void @llvm.dbg.value(metadata float %mul47, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp48282 = fcmp ogt float %mul47281, %fuzz.0, !dbg !2445
  br i1 %cmp48282, label %cleanup, label %if.then55.thread293, !dbg !2447

if.then55.thread293:                              ; preds = %cond.end45.thread276
  %opacity56296 = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 8, !dbg !2448
  %37 = load float, ptr %opacity56296, align 4, !dbg !2448, !tbaa !1302
  %sub57297 = fsub float 6.553500e+04, %37, !dbg !2448
  %conv58298 = fpext float %sub57297 to double, !dbg !2448
  %mul59299 = fmul double %conv58298, 0x3EF0001000100010, !dbg !2450
  %conv60300 = fptrunc double %mul59299 to float, !dbg !2451
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !2332, metadata !DIExpression()), !dbg !2334
  %phi.cast = fpext float %conv60300 to double, !dbg !2452
  br label %if.then65, !dbg !2452

cond.end45.thread:                                ; preds = %cond.end
  call void @llvm.dbg.value(metadata float %sub, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul47263 = fmul float %34, %34, !dbg !2444
  call void @llvm.dbg.value(metadata float %mul47, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp48264 = fcmp ogt float %mul47263, %fuzz.0, !dbg !2445
  br i1 %cmp48264, label %cleanup, label %if.then55.thread, !dbg !2447

if.then55.thread:                                 ; preds = %cond.end45.thread
  %opacity56288 = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 8, !dbg !2448
  %38 = load float, ptr %opacity56288, align 4, !dbg !2448, !tbaa !1302
  %sub57289 = fsub float 6.553500e+04, %38, !dbg !2448
  %conv58290 = fpext float %sub57289 to double, !dbg !2448
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !2332, metadata !DIExpression()), !dbg !2334
  br label %if.end73, !dbg !2452

if.then65:                                        ; preds = %cond.end45, %if.then55.thread293
  %scale.0275 = phi double [ %phi.cast, %if.then55.thread293 ], [ 1.000000e+00, %cond.end45 ]
  %mul47266270273 = phi float [ %mul47281, %if.then55.thread293 ], [ %mul47, %cond.end45 ]
  %opacity66 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 8, !dbg !2453
  %39 = load float, ptr %opacity66, align 4, !dbg !2453, !tbaa !1302
  %sub67 = fsub float 6.553500e+04, %39, !dbg !2453
  %conv68 = fpext float %sub67 to double, !dbg !2453
  %mul69 = fmul double %conv68, 0x3EF0001000100010, !dbg !2455
  call void @llvm.dbg.value(metadata float undef, metadata !2332, metadata !DIExpression()), !dbg !2334
  br label %if.end73, !dbg !2456

if.end73:                                         ; preds = %if.then55.thread, %if.then65
  %.sink = phi double [ 0x3EF0001000100010, %if.then55.thread ], [ %scale.0275, %if.then65 ]
  %conv58290.sink = phi double [ %conv58290, %if.then55.thread ], [ %mul69, %if.then65 ]
  %mul47266270274 = phi float [ %mul47263, %if.then55.thread ], [ %mul47266270273, %if.then65 ]
  %mul59291 = fmul double %conv58290.sink, %.sink, !dbg !2457
  %conv60292 = fptrunc double %mul59291 to float, !dbg !2457
  call void @llvm.dbg.value(metadata float %conv60292, metadata !2332, metadata !DIExpression()), !dbg !2334
  %conv74 = fpext float %conv60292 to double, !dbg !2458
  %cmp75 = fcmp ugt double %conv74, 1.000000e-15, !dbg !2460
  br i1 %cmp75, label %if.end79, label %cleanup, !dbg !2461

if.end79:                                         ; preds = %if.end73, %lor.lhs.false
  %scale.2 = phi float [ %conv60292, %if.end73 ], [ 1.000000e+00, %lor.lhs.false ], !dbg !2334
  %distance.0 = phi float [ %mul47266270274, %if.end73 ], [ 0.000000e+00, %lor.lhs.false ], !dbg !2334
  call void @llvm.dbg.value(metadata float %distance.0, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float %scale.2, metadata !2332, metadata !DIExpression()), !dbg !2334
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 1, !dbg !2462
  %40 = load i32, ptr %colorspace, align 4, !dbg !2462, !tbaa !1392
  %cmp80 = icmp eq i32 %40, 12, !dbg !2464
  br i1 %cmp80, label %if.then82, label %if.end103, !dbg !2465

if.then82:                                        ; preds = %if.end79
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 9, !dbg !2466
  %41 = load float, ptr %index, align 8, !dbg !2466, !tbaa !1308
  %index83 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 9, !dbg !2468
  %42 = load float, ptr %index83, align 8, !dbg !2468, !tbaa !1308
  %sub84 = fsub float %41, %42, !dbg !2469
  call void @llvm.dbg.value(metadata float %sub84, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul85 = fmul float %sub84, %sub84, !dbg !2470
  %43 = tail call float @llvm.fmuladd.f32(float %mul85, float %scale.2, float %distance.0), !dbg !2471
  call void @llvm.dbg.value(metadata float %43, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp87 = fcmp ogt float %43, %fuzz.0, !dbg !2472
  br i1 %cmp87, label %cleanup, label %if.end103.thread, !dbg !2474

if.end103.thread:                                 ; preds = %if.then82
  %sub92 = fsub float 6.553500e+04, %41, !dbg !2475
  %conv93 = fpext float %sub92 to double, !dbg !2476
  %mul94 = fmul double %conv93, 0x3EF0001000100010, !dbg !2477
  %conv95 = fptrunc double %mul94 to float, !dbg !2478
  %mul96 = fmul float %scale.2, %conv95, !dbg !2479
  call void @llvm.dbg.value(metadata float %mul96, metadata !2332, metadata !DIExpression()), !dbg !2334
  %sub98 = fsub float 6.553500e+04, %42, !dbg !2480
  %conv99 = fpext float %sub98 to double, !dbg !2481
  %mul100 = fmul double %conv99, 0x3EF0001000100010, !dbg !2482
  %conv101 = fptrunc double %mul100 to float, !dbg !2483
  %mul102 = fmul float %mul96, %conv101, !dbg !2484
  call void @llvm.dbg.value(metadata float %scale.2, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float undef, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float undef, metadata !2330, metadata !DIExpression()), !dbg !2334
  %red247 = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 5, !dbg !2485
  %44 = load float, ptr %red247, align 8, !dbg !2485, !tbaa !1287
  %red110248 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 5, !dbg !2486
  %45 = load float, ptr %red110248, align 8, !dbg !2486, !tbaa !1287
  %sub111249 = fsub float %44, %45, !dbg !2487
  call void @llvm.dbg.value(metadata float %sub111, metadata !2331, metadata !DIExpression()), !dbg !2334
  br label %if.end135, !dbg !2488

if.end103:                                        ; preds = %if.end79
  call void @llvm.dbg.value(metadata float %scale.2, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float undef, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata float undef, metadata !2330, metadata !DIExpression()), !dbg !2334
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 5, !dbg !2485
  %46 = load float, ptr %red, align 8, !dbg !2485, !tbaa !1287
  %red110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 5, !dbg !2486
  %47 = load float, ptr %red110, align 8, !dbg !2486, !tbaa !1287
  %sub111 = fsub float %46, %47, !dbg !2487
  call void @llvm.dbg.value(metadata float %sub111, metadata !2331, metadata !DIExpression()), !dbg !2334
  switch i32 %40, label %if.end135 [
    i32 24, label %if.then127
    i32 14, label %if.then127
    i32 15, label %if.then127
    i32 16, label %if.then127
  ], !dbg !2488

if.then127:                                       ; preds = %if.end103, %if.end103, %if.end103, %if.end103
  %48 = tail call float @llvm.fabs.f32(float %sub111), !dbg !2490
  %cmp129 = fcmp ogt float %48, 3.276700e+04, !dbg !2493
  br i1 %cmp129, label %if.then131, label %if.end133, !dbg !2494

if.then131:                                       ; preds = %if.then127
  %sub132 = fadd float %sub111, -6.553500e+04, !dbg !2495
  call void @llvm.dbg.value(metadata float %sub132, metadata !2331, metadata !DIExpression()), !dbg !2334
  br label %if.end133, !dbg !2496

if.end133:                                        ; preds = %if.then131, %if.then127
  %pixel.0 = phi float [ %sub132, %if.then131 ], [ %sub111, %if.then127 ], !dbg !2334
  call void @llvm.dbg.value(metadata float %pixel.0, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul134 = fmul float %pixel.0, 2.000000e+00, !dbg !2497
  call void @llvm.dbg.value(metadata float %mul134, metadata !2331, metadata !DIExpression()), !dbg !2334
  br label %if.end135, !dbg !2498

if.end135:                                        ; preds = %if.end103.thread, %if.end103, %if.end133
  %conv106251.in = phi float [ %distance.0, %if.end133 ], [ %distance.0, %if.end103 ], [ %43, %if.end103.thread ]
  %scale.3250 = phi float [ %scale.2, %if.end133 ], [ %scale.2, %if.end103 ], [ %mul102, %if.end103.thread ]
  %pixel.1 = phi float [ %mul134, %if.end133 ], [ %sub111, %if.end103 ], [ %sub111249, %if.end103.thread ], !dbg !2334
  %conv106251 = fmul float %conv106251.in, 3.000000e+00, !dbg !2499
  %conv109252 = fmul float %fuzz.0, 3.000000e+00, !dbg !2500
  call void @llvm.dbg.value(metadata float %pixel.1, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul136 = fmul float %pixel.1, %pixel.1, !dbg !2501
  %49 = tail call float @llvm.fmuladd.f32(float %mul136, float %scale.3250, float %conv106251), !dbg !2502
  call void @llvm.dbg.value(metadata float %49, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp138 = fcmp ogt float %49, %conv109252, !dbg !2503
  br i1 %cmp138, label %cleanup, label %if.end141, !dbg !2505

if.end141:                                        ; preds = %if.end135
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 6, !dbg !2506
  %50 = load float, ptr %green, align 4, !dbg !2506, !tbaa !1292
  %green142 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 6, !dbg !2507
  %51 = load float, ptr %green142, align 4, !dbg !2507, !tbaa !1292
  %sub143 = fsub float %50, %51, !dbg !2508
  call void @llvm.dbg.value(metadata float %sub143, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul144 = fmul float %sub143, %sub143, !dbg !2509
  %52 = tail call float @llvm.fmuladd.f32(float %mul144, float %scale.3250, float %49), !dbg !2510
  call void @llvm.dbg.value(metadata float %52, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp146 = fcmp ogt float %52, %conv109252, !dbg !2511
  br i1 %cmp146, label %cleanup, label %if.end149, !dbg !2513

if.end149:                                        ; preds = %if.end141
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %p, i64 0, i32 7, !dbg !2514
  %53 = load float, ptr %blue, align 8, !dbg !2514, !tbaa !1297
  %blue150 = getelementptr inbounds %struct._MagickPixelPacket, ptr %q, i64 0, i32 7, !dbg !2515
  %54 = load float, ptr %blue150, align 8, !dbg !2515, !tbaa !1297
  %sub151 = fsub float %53, %54, !dbg !2516
  call void @llvm.dbg.value(metadata float %sub151, metadata !2331, metadata !DIExpression()), !dbg !2334
  %mul152 = fmul float %sub151, %sub151, !dbg !2517
  %55 = tail call float @llvm.fmuladd.f32(float %mul152, float %scale.3250, float %52), !dbg !2518
  call void @llvm.dbg.value(metadata float %55, metadata !2333, metadata !DIExpression()), !dbg !2334
  %cmp154 = fcmp ule float %55, %conv109252, !dbg !2519
  %. = zext i1 %cmp154 to i32, !dbg !2334
  br label %cleanup, !dbg !2334

cleanup:                                          ; preds = %cond.end45.thread276, %cond.end45.thread, %if.end75.i, %land.lhs.true68.i, %if.end58.i, %if.end51.i, %if.end44.i, %if.end36.i, %if.then28.i, %land.lhs.true13.i, %land.lhs.true3.i, %if.end149, %if.end141, %if.end135, %if.then82, %if.end73, %cond.end45
  %retval.0 = phi i32 [ 0, %cond.end45 ], [ 1, %if.end73 ], [ 0, %if.then82 ], [ 0, %if.end135 ], [ 0, %if.end141 ], [ %., %if.end149 ], [ 1, %if.end75.i ], [ 0, %land.lhs.true3.i ], [ 0, %land.lhs.true13.i ], [ 0, %if.then28.i ], [ 1, %if.end36.i ], [ 0, %if.end44.i ], [ 0, %if.end51.i ], [ 0, %if.end58.i ], [ 0, %land.lhs.true68.i ], [ 0, %cond.end45.thread ], [ 0, %cond.end45.thread276 ], !dbg !2334
  ret i32 %retval.0, !dbg !2521
}

declare !dbg !2522 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @IsOpacitySimilar(ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %q) local_unnamed_addr #10 !dbg !2525 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2527, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %p, metadata !2528, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %q, metadata !2529, metadata !DIExpression()), !dbg !2533
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2534
  %0 = load i32, ptr %matte, align 8, !dbg !2534, !tbaa !1973
  %cmp = icmp eq i32 %0, 0, !dbg !2536
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2537

if.end:                                           ; preds = %entry
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p, i64 0, i32 3, !dbg !2538
  %1 = load i16, ptr %opacity, align 2, !dbg !2538, !tbaa !2038
  %opacity1 = getelementptr inbounds %struct._PixelPacket, ptr %q, i64 0, i32 3, !dbg !2540
  %2 = load i16, ptr %opacity1, align 2, !dbg !2540, !tbaa !2038
  %cmp3 = icmp eq i16 %1, %2, !dbg !2541
  br i1 %cmp3, label %cleanup, label %if.end6, !dbg !2542

if.end6:                                          ; preds = %if.end
  %fuzz7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 31, !dbg !2543
  %3 = load double, ptr %fuzz7, align 8, !dbg !2543, !tbaa !1960
  call void @llvm.dbg.value(metadata double %3, metadata !1977, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2544
  %cmp.i = fcmp ogt double %3, 0x3FE6A09E667F3BCD, !dbg !2546
  %x..i = select i1 %cmp.i, double %3, double 0x3FE6A09E667F3BCD, !dbg !2544
  call void @llvm.dbg.value(metadata double %3, metadata !1977, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata double 0x3FE6A09E667F3BCD, metadata !1983, metadata !DIExpression()), !dbg !2547
  %mul = fmul double %x..i, %x..i, !dbg !2549
  %conv10 = fptrunc double %mul to float, !dbg !2550
  call void @llvm.dbg.value(metadata float %conv10, metadata !2530, metadata !DIExpression()), !dbg !2533
  %conv12 = uitofp i16 %1 to float, !dbg !2551
  %conv14 = uitofp i16 %2 to float, !dbg !2552
  %sub = fsub float %conv12, %conv14, !dbg !2553
  call void @llvm.dbg.value(metadata float %sub, metadata !2531, metadata !DIExpression()), !dbg !2533
  %mul15 = fmul float %sub, %sub, !dbg !2554
  call void @llvm.dbg.value(metadata float %mul15, metadata !2532, metadata !DIExpression()), !dbg !2533
  %cmp16 = fcmp ule float %mul15, %conv10, !dbg !2555
  %. = zext i1 %cmp16 to i32, !dbg !2533
  br label %cleanup, !dbg !2533

cleanup:                                          ; preds = %if.end6, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ %., %if.end6 ], !dbg !2533
  ret i32 %retval.0, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListColorInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !2558 {
entry:
  %tuple = alloca [4096 x i8], align 16
  %number_colors = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !2563, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2564, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tuple) #16, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %tuple, metadata !2565, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_colors) #16, !dbg !2573
  %cmp = icmp eq ptr %file, null, !dbg !2574
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2563, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %number_colors, metadata !2569, metadata !DIExpression(DW_OP_deref)), !dbg !2570
  %call = call ptr @GetColorInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %number_colors, ptr noundef %exception), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %call, metadata !2567, metadata !DIExpression()), !dbg !2570
  %cmp1 = icmp eq ptr %call, null, !dbg !2578
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !2580

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_colors, align 8, !tbaa !1451
  call void @llvm.dbg.value(metadata i64 0, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr null, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2570
  %cmp491 = icmp sgt i64 %1, 0, !dbg !2581
  br i1 %cmp491, label %for.body, label %for.end, !dbg !2584

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.093 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %path.092 = phi ptr [ %path.1, %for.inc ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.093, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %path.092, metadata !2566, metadata !DIExpression()), !dbg !2570
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.093, !dbg !2585
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2585, !tbaa !920
  %stealth = getelementptr inbounds %struct._ColorInfo, ptr %2, i64 0, i32 5, !dbg !2588
  %3 = load i32, ptr %stealth, align 4, !dbg !2588, !tbaa !1478
  %cmp5.not = icmp eq i32 %3, 0, !dbg !2589
  br i1 %cmp5.not, label %if.end7, label %for.inc, !dbg !2590

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.092, null, !dbg !2591
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !2593

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !2594, !tbaa !985
  %call11 = call i32 @LocaleCompare(ptr noundef nonnull %path.092, ptr noundef %4) #16, !dbg !2595
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !2596
  br i1 %cmp12.not, label %if.end24, label %lor.lhs.false.if.then13_crit_edge, !dbg !2597

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !2598, !tbaa !920
  br label %if.then13, !dbg !2597

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then13_crit_edge ], [ %2, %if.end7 ], !dbg !2598
  %6 = load ptr, ptr %5, align 8, !dbg !2601, !tbaa !985
  %cmp16.not = icmp eq ptr %6, null, !dbg !2602
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !2603

if.then17:                                        ; preds = %if.then13
  %call20 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.18, ptr noundef nonnull %6) #16, !dbg !2604
  br label %if.end21, !dbg !2605

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.19) #16, !dbg !2606
  %call23 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.20) #16, !dbg !2607
  br label %if.end24, !dbg !2608

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2609, !tbaa !920
  %8 = load ptr, ptr %7, align 8, !dbg !2610, !tbaa !985
  call void @llvm.dbg.value(metadata ptr %8, metadata !2566, metadata !DIExpression()), !dbg !2570
  %name = getelementptr inbounds %struct._ColorInfo, ptr %7, i64 0, i32 1, !dbg !2611
  %9 = load ptr, ptr %name, align 8, !dbg !2611, !tbaa !993
  %call28 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.21, ptr noundef %9) #16, !dbg !2612
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !2613, !tbaa !920
  %color = getelementptr inbounds %struct._ColorInfo, ptr %10, i64 0, i32 3, !dbg !2614
  call void @GetColorTuple(ptr noundef nonnull %color, i32 noundef 0, ptr noundef nonnull %tuple), !dbg !2615
  %call31 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.22, ptr noundef nonnull %tuple) #16, !dbg !2616
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !2617, !tbaa !920
  %compliance = getelementptr inbounds %struct._ColorInfo, ptr %11, i64 0, i32 2, !dbg !2619
  %12 = load i32, ptr %compliance, align 8, !dbg !2619, !tbaa !1151
  %and = and i32 %12, 1, !dbg !2620
  %cmp33.not = icmp eq i32 %and, 0, !dbg !2621
  br i1 %cmp33.not, label %if.end36, label %if.then34, !dbg !2622

if.then34:                                        ; preds = %if.end24
  %call35 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.23) #16, !dbg !2623
  %.pre94 = load ptr, ptr %arrayidx, align 8, !dbg !2624, !tbaa !920
  %compliance38.phi.trans.insert = getelementptr inbounds %struct._ColorInfo, ptr %.pre94, i64 0, i32 2
  %.pre95 = load i32, ptr %compliance38.phi.trans.insert, align 8, !dbg !2626, !tbaa !1151
  br label %if.end36, !dbg !2627

if.end36:                                         ; preds = %if.then34, %if.end24
  %13 = phi i32 [ %.pre95, %if.then34 ], [ %12, %if.end24 ], !dbg !2626
  %and39 = and i32 %13, 2, !dbg !2628
  %cmp40.not = icmp eq i32 %and39, 0, !dbg !2629
  br i1 %cmp40.not, label %if.end43, label %if.then41, !dbg !2630

if.then41:                                        ; preds = %if.end36
  %call42 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.24) #16, !dbg !2631
  %.pre96 = load ptr, ptr %arrayidx, align 8, !dbg !2632, !tbaa !920
  %compliance45.phi.trans.insert = getelementptr inbounds %struct._ColorInfo, ptr %.pre96, i64 0, i32 2
  %.pre97 = load i32, ptr %compliance45.phi.trans.insert, align 8, !dbg !2634, !tbaa !1151
  br label %if.end43, !dbg !2635

if.end43:                                         ; preds = %if.then41, %if.end36
  %14 = phi i32 [ %.pre97, %if.then41 ], [ %13, %if.end36 ], !dbg !2634
  %and46 = and i32 %14, 4, !dbg !2636
  %cmp47.not = icmp eq i32 %and46, 0, !dbg !2637
  br i1 %cmp47.not, label %if.end50, label %if.then48, !dbg !2638

if.then48:                                        ; preds = %if.end43
  %call49 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.25) #16, !dbg !2639
  br label %if.end50, !dbg !2640

if.end50:                                         ; preds = %if.then48, %if.end43
  %call51 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.26) #16, !dbg !2641
  br label %for.inc, !dbg !2642

for.inc:                                          ; preds = %for.body, %if.end50
  %path.1 = phi ptr [ %path.092, %for.body ], [ %8, %if.end50 ], !dbg !2570
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !2566, metadata !DIExpression()), !dbg !2570
  %inc = add nuw nsw i64 %i.093, 1, !dbg !2643
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %1, metadata !2569, metadata !DIExpression()), !dbg !2570
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !2581
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2584, !llvm.loop !2644

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call52 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #16, !dbg !2646
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2567, metadata !DIExpression()), !dbg !2570
  %call53 = call i32 @fflush(ptr noundef %spec.select), !dbg !2647
  br label %cleanup, !dbg !2648

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !2570
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_colors) #16, !dbg !2649
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tuple) #16, !dbg !2649
  ret i32 %retval.0, !dbg !2649
}

declare !dbg !2650 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !2653 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare !dbg !2654 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryColorCompliance(ptr noundef %name, i32 noundef %compliance, ptr nocapture noundef writeonly %color, ptr noundef %exception) local_unnamed_addr #0 !dbg !2657 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !2661, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !2662, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %color, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #16, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2666, metadata !DIExpression()), !dbg !2669
  %call = call i32 @QueryMagickColorCompliance(ptr noundef %name, i32 noundef %compliance, ptr noundef nonnull %pixel, ptr noundef %exception), !dbg !2670
  call void @llvm.dbg.value(metadata i32 %call, metadata !2665, metadata !DIExpression()), !dbg !2667
  %opacity = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !2671
  %0 = load float, ptr %opacity, align 4, !dbg !2671, !tbaa !1302
  call void @llvm.dbg.value(metadata float %0, metadata !1326, metadata !DIExpression()), !dbg !2672
  %cmp.i = fcmp ugt float %0, 0.000000e+00, !dbg !2674
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !2675

if.end.i:                                         ; preds = %entry
  %cmp1.i = fcmp ult float %0, 6.553500e+04, !dbg !2676
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !2677

if.end3.i:                                        ; preds = %if.end.i
  %add.i = fadd float %0, 5.000000e-01, !dbg !2678
  %conv.i = fptoui float %add.i to i16, !dbg !2679
  br label %ClampToQuantum.exit, !dbg !2680

ClampToQuantum.exit:                              ; preds = %entry, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i, %if.end3.i ], [ 0, %entry ], [ -1, %if.end.i ], !dbg !2672
  %opacity2 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 3, !dbg !2671
  store i16 %retval.0.i, ptr %opacity2, align 2, !dbg !2671, !tbaa !2038
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !2681
  %1 = load i32, ptr %colorspace, align 4, !dbg !2681, !tbaa !1392
  %cmp = icmp eq i32 %1, 12, !dbg !2683
  %red = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !2667
  %2 = load float, ptr %red, align 8, !dbg !2667, !tbaa !1287
  br i1 %cmp, label %if.then, label %if.end, !dbg !2684

if.then:                                          ; preds = %ClampToQuantum.exit
  %conv = fpext float %2 to double, !dbg !2685
  %mul = fmul double %conv, 0x3EF0001000100010, !dbg !2685
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !2685
  %3 = load float, ptr %index, align 8, !dbg !2685, !tbaa !1308
  %sub = fsub float 6.553500e+04, %3, !dbg !2685
  %conv3 = fpext float %sub to double, !dbg !2685
  %conv6 = fpext float %3 to double, !dbg !2685
  %4 = call double @llvm.fmuladd.f64(double %mul, double %conv3, double %conv6), !dbg !2685
  %conv7 = fptrunc double %4 to float, !dbg !2685
  %conv8 = fpext float %conv7 to double, !dbg !2685
  call void @llvm.dbg.value(metadata double 6.553500e+04, metadata !2687, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata double %conv8, metadata !2690, metadata !DIExpression()), !dbg !2691
  %cmp.i61 = fcmp ogt double %conv8, 6.553500e+04, !dbg !2693
  %x.y.i = select i1 %cmp.i61, double 6.553500e+04, double %conv8, !dbg !2691
  %sub10 = fsub double 6.553500e+04, %x.y.i, !dbg !2685
  %conv11 = fptrunc double %sub10 to float, !dbg !2685
  call void @llvm.dbg.value(metadata float %conv11, metadata !1326, metadata !DIExpression()), !dbg !2695
  %cmp.i62 = fcmp ugt float %conv11, 0.000000e+00, !dbg !2697
  br i1 %cmp.i62, label %if.end.i64, label %ClampToQuantum.exit69, !dbg !2698

if.end.i64:                                       ; preds = %if.then
  %cmp1.i63 = fcmp ult float %conv11, 6.553500e+04, !dbg !2699
  br i1 %cmp1.i63, label %if.end3.i67, label %ClampToQuantum.exit69, !dbg !2700

if.end3.i67:                                      ; preds = %if.end.i64
  %add.i65 = fadd float %conv11, 5.000000e-01, !dbg !2701
  %conv.i66 = fptoui float %add.i65 to i16, !dbg !2702
  br label %ClampToQuantum.exit69, !dbg !2703

ClampToQuantum.exit69:                            ; preds = %if.then, %if.end.i64, %if.end3.i67
  %retval.0.i68 = phi i16 [ %conv.i66, %if.end3.i67 ], [ 0, %if.then ], [ -1, %if.end.i64 ], !dbg !2695
  %red13 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !2685
  store i16 %retval.0.i68, ptr %red13, align 2, !dbg !2685, !tbaa !2006
  %green = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2704
  %5 = load float, ptr %green, align 4, !dbg !2704, !tbaa !1292
  %conv14 = fpext float %5 to double, !dbg !2704
  %mul15 = fmul double %conv14, 0x3EF0001000100010, !dbg !2704
  %6 = call double @llvm.fmuladd.f64(double %mul15, double %conv3, double %conv6), !dbg !2704
  %conv22 = fptrunc double %6 to float, !dbg !2704
  %conv23 = fpext float %conv22 to double, !dbg !2704
  call void @llvm.dbg.value(metadata double 6.553500e+04, metadata !2687, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata double %conv23, metadata !2690, metadata !DIExpression()), !dbg !2705
  %cmp.i70 = fcmp ogt double %conv23, 6.553500e+04, !dbg !2707
  %x.y.i71 = select i1 %cmp.i70, double 6.553500e+04, double %conv23, !dbg !2705
  %sub25 = fsub double 6.553500e+04, %x.y.i71, !dbg !2704
  %conv26 = fptrunc double %sub25 to float, !dbg !2704
  call void @llvm.dbg.value(metadata float %conv26, metadata !1326, metadata !DIExpression()), !dbg !2708
  %cmp.i72 = fcmp ugt float %conv26, 0.000000e+00, !dbg !2710
  br i1 %cmp.i72, label %if.end.i74, label %ClampToQuantum.exit79, !dbg !2711

if.end.i74:                                       ; preds = %ClampToQuantum.exit69
  %cmp1.i73 = fcmp ult float %conv26, 6.553500e+04, !dbg !2712
  br i1 %cmp1.i73, label %if.end3.i77, label %ClampToQuantum.exit79, !dbg !2713

if.end3.i77:                                      ; preds = %if.end.i74
  %add.i75 = fadd float %conv26, 5.000000e-01, !dbg !2714
  %conv.i76 = fptoui float %add.i75 to i16, !dbg !2715
  br label %ClampToQuantum.exit79, !dbg !2716

ClampToQuantum.exit79:                            ; preds = %ClampToQuantum.exit69, %if.end.i74, %if.end3.i77
  %retval.0.i78 = phi i16 [ %conv.i76, %if.end3.i77 ], [ 0, %ClampToQuantum.exit69 ], [ -1, %if.end.i74 ], !dbg !2708
  %green28 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !2704
  store i16 %retval.0.i78, ptr %green28, align 2, !dbg !2704, !tbaa !2019
  %blue = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2717
  %7 = load float, ptr %blue, align 8, !dbg !2717, !tbaa !1297
  %conv29 = fpext float %7 to double, !dbg !2717
  %mul30 = fmul double %conv29, 0x3EF0001000100010, !dbg !2717
  %8 = call double @llvm.fmuladd.f64(double %mul30, double %conv3, double %conv6), !dbg !2717
  %conv37 = fptrunc double %8 to float, !dbg !2717
  %conv38 = fpext float %conv37 to double, !dbg !2717
  call void @llvm.dbg.value(metadata double 6.553500e+04, metadata !2687, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata double %conv38, metadata !2690, metadata !DIExpression()), !dbg !2718
  %cmp.i80 = fcmp ogt double %conv38, 6.553500e+04, !dbg !2720
  %x.y.i81 = select i1 %cmp.i80, double 6.553500e+04, double %conv38, !dbg !2718
  %sub40 = fsub double 6.553500e+04, %x.y.i81, !dbg !2717
  %conv41 = fptrunc double %sub40 to float, !dbg !2717
  call void @llvm.dbg.value(metadata float %conv41, metadata !1326, metadata !DIExpression()), !dbg !2721
  %cmp.i82 = fcmp ugt float %conv41, 0.000000e+00, !dbg !2723
  br i1 %cmp.i82, label %if.end.i84, label %cleanup, !dbg !2724

if.end.i84:                                       ; preds = %ClampToQuantum.exit79
  %cmp1.i83 = fcmp ult float %conv41, 6.553500e+04, !dbg !2725
  br i1 %cmp1.i83, label %if.end3.i87, label %cleanup, !dbg !2726

if.end3.i87:                                      ; preds = %if.end.i84
  %add.i85 = fadd float %conv41, 5.000000e-01, !dbg !2727
  %conv.i86 = fptoui float %add.i85 to i16, !dbg !2728
  br label %cleanup, !dbg !2729

if.end:                                           ; preds = %ClampToQuantum.exit
  call void @llvm.dbg.value(metadata float %2, metadata !1326, metadata !DIExpression()), !dbg !2730
  %cmp.i90 = fcmp ugt float %2, 0.000000e+00, !dbg !2732
  br i1 %cmp.i90, label %if.end.i92, label %ClampToQuantum.exit97, !dbg !2733

if.end.i92:                                       ; preds = %if.end
  %cmp1.i91 = fcmp ult float %2, 6.553500e+04, !dbg !2734
  br i1 %cmp1.i91, label %if.end3.i95, label %ClampToQuantum.exit97, !dbg !2735

if.end3.i95:                                      ; preds = %if.end.i92
  %add.i93 = fadd float %2, 5.000000e-01, !dbg !2736
  %conv.i94 = fptoui float %add.i93 to i16, !dbg !2737
  br label %ClampToQuantum.exit97, !dbg !2738

ClampToQuantum.exit97:                            ; preds = %if.end, %if.end.i92, %if.end3.i95
  %retval.0.i96 = phi i16 [ %conv.i94, %if.end3.i95 ], [ 0, %if.end ], [ -1, %if.end.i92 ], !dbg !2730
  %red46 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !2739
  store i16 %retval.0.i96, ptr %red46, align 2, !dbg !2739, !tbaa !2006
  %green47 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2740
  %9 = load float, ptr %green47, align 4, !dbg !2740, !tbaa !1292
  call void @llvm.dbg.value(metadata float %9, metadata !1326, metadata !DIExpression()), !dbg !2741
  %cmp.i98 = fcmp ugt float %9, 0.000000e+00, !dbg !2743
  br i1 %cmp.i98, label %if.end.i100, label %ClampToQuantum.exit105, !dbg !2744

if.end.i100:                                      ; preds = %ClampToQuantum.exit97
  %cmp1.i99 = fcmp ult float %9, 6.553500e+04, !dbg !2745
  br i1 %cmp1.i99, label %if.end3.i103, label %ClampToQuantum.exit105, !dbg !2746

if.end3.i103:                                     ; preds = %if.end.i100
  %add.i101 = fadd float %9, 5.000000e-01, !dbg !2747
  %conv.i102 = fptoui float %add.i101 to i16, !dbg !2748
  br label %ClampToQuantum.exit105, !dbg !2749

ClampToQuantum.exit105:                           ; preds = %ClampToQuantum.exit97, %if.end.i100, %if.end3.i103
  %retval.0.i104 = phi i16 [ %conv.i102, %if.end3.i103 ], [ 0, %ClampToQuantum.exit97 ], [ -1, %if.end.i100 ], !dbg !2741
  %green49 = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !2740
  store i16 %retval.0.i104, ptr %green49, align 2, !dbg !2740, !tbaa !2019
  %blue50 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2750
  %10 = load float, ptr %blue50, align 8, !dbg !2750, !tbaa !1297
  call void @llvm.dbg.value(metadata float %10, metadata !1326, metadata !DIExpression()), !dbg !2751
  %cmp.i106 = fcmp ugt float %10, 0.000000e+00, !dbg !2753
  br i1 %cmp.i106, label %if.end.i108, label %cleanup, !dbg !2754

if.end.i108:                                      ; preds = %ClampToQuantum.exit105
  %cmp1.i107 = fcmp ult float %10, 6.553500e+04, !dbg !2755
  br i1 %cmp1.i107, label %if.end3.i111, label %cleanup, !dbg !2756

if.end3.i111:                                     ; preds = %if.end.i108
  %add.i109 = fadd float %10, 5.000000e-01, !dbg !2757
  %conv.i110 = fptoui float %add.i109 to i16, !dbg !2758
  br label %cleanup, !dbg !2759

cleanup:                                          ; preds = %if.end3.i111, %if.end.i108, %ClampToQuantum.exit105, %if.end3.i87, %if.end.i84, %ClampToQuantum.exit79
  %storemerge = phi i16 [ %conv.i86, %if.end3.i87 ], [ 0, %ClampToQuantum.exit79 ], [ -1, %if.end.i84 ], [ %conv.i110, %if.end3.i111 ], [ 0, %ClampToQuantum.exit105 ], [ -1, %if.end.i108 ], !dbg !2667
  store i16 %storemerge, ptr %color, align 2, !dbg !2667, !tbaa !2009
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #16, !dbg !2760
  ret i32 %call, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryMagickColorCompliance(ptr noundef %name, i32 noundef %compliance, ptr noundef %color, ptr noundef %exception) local_unnamed_addr #0 !dbg !2761 {
entry:
  %geometry_info = alloca %struct._GeometryInfo, align 8
  %pixel = alloca %struct._LongPixelPacket, align 4
  %colorspace205 = alloca [4096 x i8], align 16
  %colorname = alloca ptr, align 8
  %pixel435 = alloca %struct._PixelPacket, align 2
  call void @llvm.dbg.value(metadata ptr %name, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !2766, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %color, metadata !2767, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2768, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #16, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !2770, metadata !DIExpression()), !dbg !2816
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2547, ptr noundef nonnull @.str.11, ptr noundef %name) #16, !dbg !2817
  tail call void @GetMagickPixelPacket(ptr noundef null, ptr noundef %color) #16, !dbg !2818
  %cmp = icmp eq ptr %name, null, !dbg !2819
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2821

lor.lhs.false:                                    ; preds = %entry
  %0 = load i8, ptr %name, align 1, !dbg !2822, !tbaa !1174
  %cmp1 = icmp eq i8 %0, 0, !dbg !2823
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2824

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.dbg.value(metadata ptr @BackgroundColor, metadata !2765, metadata !DIExpression()), !dbg !2814
  br label %if.end, !dbg !2825

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %name.addr.0 = phi ptr [ @BackgroundColor, %if.then ], [ %name, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata ptr %name.addr.0, metadata !2765, metadata !DIExpression()), !dbg !2814
  %call3 = tail call ptr @__ctype_b_loc() #17, !dbg !2814
  %1 = load ptr, ptr %call3, align 8, !tbaa !920
  br label %while.cond, !dbg !2826

while.cond:                                       ; preds = %while.cond, %if.end
  %name.addr.1 = phi ptr [ %name.addr.0, %if.end ], [ %incdec.ptr, %while.cond ], !dbg !2814
  call void @llvm.dbg.value(metadata ptr %name.addr.1, metadata !2765, metadata !DIExpression()), !dbg !2814
  %2 = load i8, ptr %name.addr.1, align 1, !dbg !2827, !tbaa !1174
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %3, !dbg !2827
  %4 = load i16, ptr %arrayidx, align 2, !dbg !2827, !tbaa !1187
  %5 = and i16 %4, 8192, !dbg !2827
  %cmp6.not = icmp eq i16 %5, 0, !dbg !2828
  %incdec.ptr = getelementptr inbounds i8, ptr %name.addr.1, i64 1, !dbg !2829
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2765, metadata !DIExpression()), !dbg !2814
  br i1 %cmp6.not, label %while.end, label %while.cond, !dbg !2826, !llvm.loop !2830

while.end:                                        ; preds = %while.cond
  %cmp9 = icmp eq i8 %2, 35, !dbg !2831
  br i1 %cmp9, label %if.then11, label %if.end200, !dbg !2832

if.then11:                                        ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pixel) #16, !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2786, metadata !DIExpression()), !dbg !2834
  %call12 = call ptr @ResetMagickMemory(ptr noundef nonnull %pixel, i32 noundef 0, i64 noundef 20) #16, !dbg !2835
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 0, metadata !2798, metadata !DIExpression()), !dbg !2836
  %6 = load ptr, ptr %call3, align 8, !tbaa !920
  br label %for.cond, !dbg !2837

for.cond:                                         ; preds = %for.cond, %if.then11
  %n.0 = phi i64 [ 0, %if.then11 ], [ %inc, %for.cond ], !dbg !2839
  call void @llvm.dbg.value(metadata i64 %n.0, metadata !2798, metadata !DIExpression()), !dbg !2836
  %arrayidx15 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %n.0, !dbg !2840
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !2840, !tbaa !1174
  %8 = zext i8 %7 to i64
  %arrayidx18 = getelementptr inbounds i16, ptr %6, i64 %8, !dbg !2840
  %9 = load i16, ptr %arrayidx18, align 2, !dbg !2840, !tbaa !1187
  %10 = and i16 %9, 4096, !dbg !2840
  %cmp21.not = icmp eq i16 %10, 0, !dbg !2842
  %inc = add i64 %n.0, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2798, metadata !DIExpression()), !dbg !2836
  br i1 %cmp21.not, label %for.end, label %for.cond, !dbg !2844, !llvm.loop !2845

for.end:                                          ; preds = %for.cond
  %rem = urem i64 %n.0, 3, !dbg !2847
  %div = udiv i64 %n.0, 3
  %cmp23 = icmp eq i64 %rem, 0, !dbg !2849
  br i1 %cmp23, label %do.body.preheader, label %if.else84, !dbg !2850

do.body.preheader:                                ; preds = %for.end
  %green = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 1
  %blue = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 2
  %11 = icmp ult i64 %n.0, 3
  %.pre816 = load i32, ptr %green, align 4, !tbaa !2851
  %.pre817 = load i32, ptr %blue, align 4, !tbaa !2853
  br i1 %11, label %do.body.preheader.split, label %do.body.us, !dbg !2854

do.body.us:                                       ; preds = %do.body.preheader, %for.cond28.do.cond_crit_edge.us
  %12 = phi i32 [ %or.us, %for.cond28.do.cond_crit_edge.us ], [ %.pre817, %do.body.preheader ], !dbg !2858
  %13 = phi i32 [ %12, %for.cond28.do.cond_crit_edge.us ], [ %.pre816, %do.body.preheader ], !dbg !2859
  %name.addr.2.us = phi ptr [ %incdec.ptr32.us, %for.cond28.do.cond_crit_edge.us ], [ %incdec.ptr, %do.body.preheader ], !dbg !2860
  call void @llvm.dbg.value(metadata ptr %name.addr.2.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  store i32 %13, ptr %pixel, align 4, !dbg !2861, !tbaa !2862
  store i32 %12, ptr %green, align 4, !dbg !2863, !tbaa !2851
  store i32 0, ptr %blue, align 4, !dbg !2864, !tbaa !2853
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %name.addr.2.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  br label %for.body31.us, !dbg !2854

for.body31.us:                                    ; preds = %do.body.us, %for.inc73.us
  %14 = phi i32 [ 0, %do.body.us ], [ %or.us, %for.inc73.us ], !dbg !2865
  %i.0797.us.in = phi i64 [ %div, %do.body.us ], [ %i.0797.us, %for.inc73.us ]
  %name.addr.3796.us = phi ptr [ %name.addr.2.us, %do.body.us ], [ %incdec.ptr32.us, %for.inc73.us ]
  %i.0797.us = add nsw i64 %i.0797.us.in, -1
  call void @llvm.dbg.value(metadata ptr %name.addr.3796.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  %incdec.ptr32.us = getelementptr inbounds i8, ptr %name.addr.3796.us, i64 1, !dbg !2868
  call void @llvm.dbg.value(metadata ptr %incdec.ptr32.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  %15 = load i8, ptr %name.addr.3796.us, align 1, !dbg !2869, !tbaa !1174
  call void @llvm.dbg.value(metadata i8 %15, metadata !2783, metadata !DIExpression()), !dbg !2836
  %shl.us = shl i32 %14, 4, !dbg !2865
  %conv34.us = sext i8 %15 to i32, !dbg !2870
  %16 = add i8 %15, -48, !dbg !2872
  %17 = icmp ult i8 %16, 10, !dbg !2872
  br i1 %17, label %for.inc73.us, label %if.else.us, !dbg !2872

if.else.us:                                       ; preds = %for.body31.us
  %18 = add i8 %15, -65, !dbg !2873
  %19 = icmp ult i8 %18, 6, !dbg !2873
  br i1 %19, label %for.inc73.us, label %if.else56.us, !dbg !2873

if.else56.us:                                     ; preds = %if.else.us
  %20 = add i8 %15, -97, !dbg !2875
  %21 = icmp ult i8 %20, 6, !dbg !2875
  br i1 %21, label %for.inc73.us, label %cleanup, !dbg !2875

for.inc73.us:                                     ; preds = %for.body31.us, %if.else.us, %if.else56.us
  %.sink = phi i32 [ -87, %if.else56.us ], [ -55, %if.else.us ], [ -48, %for.body31.us ]
  %sub42.us = add nsw i32 %.sink, %conv34.us, !dbg !2877
  %or.us = or i32 %sub42.us, %shl.us, !dbg !2877
  store i32 %or.us, ptr %blue, align 4, !dbg !2877, !tbaa !2853
  call void @llvm.dbg.value(metadata i64 %i.0797.us, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  call void @llvm.dbg.value(metadata ptr %incdec.ptr32.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %i.0797.us, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  %cmp29.us = icmp sgt i64 %i.0797.us.in, 1, !dbg !2878
  br i1 %cmp29.us, label %for.body31.us, label %for.cond28.do.cond_crit_edge.us, !dbg !2854, !llvm.loop !2879

for.cond28.do.cond_crit_edge.us:                  ; preds = %for.inc73.us
  %22 = load i8, ptr %incdec.ptr32.us, align 1, !dbg !2881, !tbaa !1174
  %23 = zext i8 %22 to i64
  %arrayidx78.us = getelementptr inbounds i16, ptr %6, i64 %23, !dbg !2881
  %24 = load i16, ptr %arrayidx78.us, align 2, !dbg !2881, !tbaa !1187
  %25 = and i16 %24, 4096, !dbg !2881
  %cmp81.not.us = icmp eq i16 %25, 0, !dbg !2882
  br i1 %cmp81.not.us, label %do.end, label %do.body.us, !dbg !2883, !llvm.loop !2884

do.body.preheader.split:                          ; preds = %do.body.preheader
  %.pre813 = load i8, ptr %incdec.ptr, align 1, !dbg !2881, !tbaa !1174
  %.phi.trans.insert814 = zext i8 %.pre813 to i64
  %arrayidx78.phi.trans.insert = getelementptr inbounds i16, ptr %6, i64 %.phi.trans.insert814
  %.pre815 = load i16, ptr %arrayidx78.phi.trans.insert, align 2, !dbg !2881, !tbaa !1187
  %26 = and i16 %.pre815, 4096
  %cmp81.not = icmp eq i16 %26, 0
  br i1 %cmp81.not, label %do.end.split, label %do.body, !dbg !2883, !llvm.loop !2884

do.body:                                          ; preds = %do.body.preheader.split, %do.body
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  br label %do.body

do.end.split:                                     ; preds = %do.body.preheader.split
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  store i32 %.pre817, ptr %green, align 4, !dbg !2887, !tbaa !2851
  store i32 %.pre816, ptr %pixel, align 4, !dbg !2861, !tbaa !2862
  store i32 0, ptr %blue, align 4, !dbg !2887, !tbaa !2853
  br label %do.end, !dbg !2888

do.end:                                           ; preds = %for.cond28.do.cond_crit_edge.us, %do.end.split
  %27 = phi i32 [ 0, %do.end.split ], [ %or.us, %for.cond28.do.cond_crit_edge.us ]
  %28 = phi i32 [ %.pre817, %do.end.split ], [ %12, %for.cond28.do.cond_crit_edge.us ]
  %29 = phi i32 [ %.pre816, %do.end.split ], [ %13, %for.cond28.do.cond_crit_edge.us ]
  %mul = shl i64 %div, 2, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %mul, metadata !2797, metadata !DIExpression()), !dbg !2836
  br label %if.end164, !dbg !2889

if.else84:                                        ; preds = %for.end
  %rem85 = and i64 %n.0, 3, !dbg !2890
  %cmp86.not = icmp eq i64 %rem85, 0, !dbg !2893
  br i1 %cmp86.not, label %do.body91.preheader, label %if.then88, !dbg !2894

do.body91.preheader:                              ; preds = %if.else84
  %green92 = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 1
  %blue94 = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 2
  %opacity = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 3
  %div98704 = lshr i64 %n.0, 2
  %cmp101788.not = icmp ult i64 %n.0, 4
  %green92.promoted = load i32, ptr %green92, align 4, !tbaa !2851
  %blue94.promoted = load i32, ptr %blue94, align 4, !tbaa !2853
  %opacity.promoted = load i32, ptr %opacity, align 4, !tbaa !2895
  br i1 %cmp101788.not, label %do.body91.preheader.split, label %do.body91.us, !dbg !2896

do.body91.us:                                     ; preds = %do.body91.preheader, %for.cond100.do.cond152_crit_edge.us
  %30 = phi i32 [ %or118.us, %for.cond100.do.cond152_crit_edge.us ], [ %opacity.promoted, %do.body91.preheader ], !dbg !2899
  %31 = phi i32 [ %30, %for.cond100.do.cond152_crit_edge.us ], [ %blue94.promoted, %do.body91.preheader ], !dbg !2900
  %32 = phi i32 [ %31, %for.cond100.do.cond152_crit_edge.us ], [ %green92.promoted, %do.body91.preheader ], !dbg !2901
  %name.addr.4.us = phi ptr [ %incdec.ptr104.us, %for.cond100.do.cond152_crit_edge.us ], [ %incdec.ptr, %do.body91.preheader ], !dbg !2860
  call void @llvm.dbg.value(metadata ptr %name.addr.4.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  store i32 %32, ptr %pixel, align 4, !dbg !2902, !tbaa !2862
  store i32 %31, ptr %green92, align 4, !dbg !2903, !tbaa !2851
  store i32 %30, ptr %blue94, align 4, !dbg !2904, !tbaa !2853
  store i32 0, ptr %opacity, align 4, !dbg !2905, !tbaa !2895
  call void @llvm.dbg.value(metadata i64 %div98704, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  br label %for.body103.us, !dbg !2896

for.body103.us:                                   ; preds = %do.body91.us, %for.inc149.us
  %33 = phi i32 [ 0, %do.body91.us ], [ %or118.us, %for.inc149.us ], !dbg !2906
  %i.1790.us.in = phi i64 [ %div98704, %do.body91.us ], [ %i.1790.us, %for.inc149.us ]
  %name.addr.5789.us = phi ptr [ %name.addr.4.us, %do.body91.us ], [ %incdec.ptr104.us, %for.inc149.us ]
  %i.1790.us = add nsw i64 %i.1790.us.in, -1
  call void @llvm.dbg.value(metadata ptr %name.addr.5789.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  %incdec.ptr104.us = getelementptr inbounds i8, ptr %name.addr.5789.us, i64 1, !dbg !2909
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  %34 = load i8, ptr %name.addr.5789.us, align 1, !dbg !2910, !tbaa !1174
  call void @llvm.dbg.value(metadata i8 %34, metadata !2783, metadata !DIExpression()), !dbg !2836
  %shl106.us = shl i32 %33, 4, !dbg !2906
  %conv107.us = sext i8 %34 to i32, !dbg !2911
  %35 = add i8 %34, -48, !dbg !2913
  %36 = icmp ult i8 %35, 10, !dbg !2913
  br i1 %36, label %for.inc149.us, label %if.else119.us, !dbg !2913

if.else119.us:                                    ; preds = %for.body103.us
  %37 = add i8 %34, -65, !dbg !2914
  %38 = icmp ult i8 %37, 6, !dbg !2914
  br i1 %38, label %for.inc149.us, label %if.else132.us, !dbg !2914

if.else132.us:                                    ; preds = %if.else119.us
  %39 = add i8 %34, -97, !dbg !2916
  %40 = icmp ult i8 %39, 6, !dbg !2916
  br i1 %40, label %for.inc149.us, label %cleanup, !dbg !2916

for.inc149.us:                                    ; preds = %for.body103.us, %if.else119.us, %if.else132.us
  %.sink840 = phi i32 [ -87, %if.else132.us ], [ -55, %if.else119.us ], [ -48, %for.body103.us ]
  %sub116.us = add nsw i32 %.sink840, %conv107.us, !dbg !2918
  %or118.us = or i32 %sub116.us, %shl106.us, !dbg !2918
  store i32 %or118.us, ptr %opacity, align 4, !dbg !2918, !tbaa !2895
  call void @llvm.dbg.value(metadata ptr %incdec.ptr104.us, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %i.1790.us, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  %cmp101.us = icmp sgt i64 %i.1790.us.in, 1, !dbg !2919
  br i1 %cmp101.us, label %for.body103.us, label %for.cond100.do.cond152_crit_edge.us, !dbg !2896, !llvm.loop !2920

for.cond100.do.cond152_crit_edge.us:              ; preds = %for.inc149.us
  %41 = load i8, ptr %incdec.ptr104.us, align 1, !dbg !2922, !tbaa !1174
  %42 = zext i8 %41 to i64
  %arrayidx156.us = getelementptr inbounds i16, ptr %6, i64 %42, !dbg !2922
  %43 = load i16, ptr %arrayidx156.us, align 2, !dbg !2922, !tbaa !1187
  %44 = and i16 %43, 4096, !dbg !2922
  %cmp159.not.us = icmp eq i16 %44, 0, !dbg !2923
  br i1 %cmp159.not.us, label %do.end161, label %do.body91.us, !dbg !2924, !llvm.loop !2925

do.body91.preheader.split:                        ; preds = %do.body91.preheader
  %.pre811 = load i8, ptr %incdec.ptr, align 1, !dbg !2922, !tbaa !1174
  %.phi.trans.insert = zext i8 %.pre811 to i64
  %arrayidx156.phi.trans.insert = getelementptr inbounds i16, ptr %6, i64 %.phi.trans.insert
  %.pre812 = load i16, ptr %arrayidx156.phi.trans.insert, align 2, !dbg !2922, !tbaa !1187
  %45 = and i16 %.pre812, 4096
  %cmp159.not = icmp eq i16 %45, 0
  br i1 %cmp159.not, label %do.end161.split, label %do.body91, !dbg !2924, !llvm.loop !2925

if.then88:                                        ; preds = %if.else84
  %call89 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2604, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %incdec.ptr) #16, !dbg !2928
  br label %cleanup, !dbg !2930

do.body91:                                        ; preds = %do.body91.preheader.split, %do.body91
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div98704, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  br label %do.body91

do.end161.split:                                  ; preds = %do.body91.preheader.split
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %div98704, metadata !2781, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2814
  store i32 %blue94.promoted, ptr %green92, align 4, !dbg !2931, !tbaa !2851
  store i32 %green92.promoted, ptr %pixel, align 4, !dbg !2902, !tbaa !2862
  store i32 %opacity.promoted, ptr %blue94, align 4, !dbg !2931, !tbaa !2853
  store i32 0, ptr %opacity, align 4, !dbg !2931, !tbaa !2895
  br label %do.end161, !dbg !2932

do.end161:                                        ; preds = %for.cond100.do.cond152_crit_edge.us, %do.end161.split
  %46 = phi i32 [ %opacity.promoted, %do.end161.split ], [ %30, %for.cond100.do.cond152_crit_edge.us ]
  %47 = phi i32 [ %blue94.promoted, %do.end161.split ], [ %31, %for.cond100.do.cond152_crit_edge.us ]
  %48 = phi i32 [ %green92.promoted, %do.end161.split ], [ %32, %for.cond100.do.cond152_crit_edge.us ]
  %mul163 = and i64 %n.0, -4, !dbg !2932
  call void @llvm.dbg.value(metadata i64 %mul163, metadata !2797, metadata !DIExpression()), !dbg !2836
  br label %if.end164

if.end164:                                        ; preds = %do.end161, %do.end
  %49 = phi i32 [ %27, %do.end ], [ %46, %do.end161 ], !dbg !2933
  %50 = phi i32 [ %28, %do.end ], [ %47, %do.end161 ], !dbg !2934
  %51 = phi i32 [ %29, %do.end ], [ %48, %do.end161 ], !dbg !2935
  %depth.0 = phi i64 [ %mul, %do.end ], [ %mul163, %do.end161 ], !dbg !2936
  call void @llvm.dbg.value(metadata i64 %depth.0, metadata !2797, metadata !DIExpression()), !dbg !2836
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1, !dbg !2937
  store i32 13, ptr %colorspace, align 4, !dbg !2938, !tbaa !1392
  %depth165 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 4, !dbg !2939
  store i64 %depth.0, ptr %depth165, align 8, !dbg !2940, !tbaa !1321
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2, !dbg !2941
  store i32 0, ptr %matte, align 8, !dbg !2942, !tbaa !1658
  call void @llvm.dbg.value(metadata i64 %depth.0, metadata !2943, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 1, metadata !2948, metadata !DIExpression()), !dbg !2949
  %sub.i = add i64 %depth.0, -1, !dbg !2951
  %reass.add.i = shl i64 2, %sub.i, !dbg !2952
  %add.i = add i64 %reass.add.i, -1, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2795, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.value(metadata i32 %51, metadata !2953, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2959, metadata !DIExpression()), !dbg !2960
  %conv.i = uitofp i32 %51 to float, !dbg !2962
  %mul.i = fmul float %conv.i, 6.553500e+04, !dbg !2963
  %conv1.i = uitofp i64 %add.i to float, !dbg !2964
  %div.i = fdiv float %mul.i, %conv1.i, !dbg !2965
  %conv2.i = fpext float %div.i to double, !dbg !2966
  %add.i705 = fadd double %conv2.i, 5.000000e-01, !dbg !2967
  %conv3.i = fptoui double %add.i705 to i16, !dbg !2968
  %conv170 = uitofp i16 %conv3.i to float, !dbg !2969
  %red171 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !2970
  store float %conv170, ptr %red171, align 8, !dbg !2971, !tbaa !1287
  call void @llvm.dbg.value(metadata i32 %50, metadata !2953, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2959, metadata !DIExpression()), !dbg !2972
  %conv.i706 = uitofp i32 %50 to float, !dbg !2974
  %mul.i707 = fmul float %conv.i706, 6.553500e+04, !dbg !2975
  %div.i709 = fdiv float %mul.i707, %conv1.i, !dbg !2976
  %conv2.i710 = fpext float %div.i709 to double, !dbg !2977
  %add.i711 = fadd double %conv2.i710, 5.000000e-01, !dbg !2978
  %conv3.i712 = fptoui double %add.i711 to i16, !dbg !2979
  %conv175 = uitofp i16 %conv3.i712 to float, !dbg !2980
  %green176 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !2981
  store float %conv175, ptr %green176, align 4, !dbg !2982, !tbaa !1292
  call void @llvm.dbg.value(metadata i32 %49, metadata !2953, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2959, metadata !DIExpression()), !dbg !2983
  %conv.i713 = uitofp i32 %49 to float, !dbg !2985
  %mul.i714 = fmul float %conv.i713, 6.553500e+04, !dbg !2986
  %div.i716 = fdiv float %mul.i714, %conv1.i, !dbg !2987
  %conv2.i717 = fpext float %div.i716 to double, !dbg !2988
  %add.i718 = fadd double %conv2.i717, 5.000000e-01, !dbg !2989
  %conv3.i719 = fptoui double %add.i718 to i16, !dbg !2990
  %conv180 = uitofp i16 %conv3.i719 to float, !dbg !2991
  %blue181 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !2992
  store float %conv180, ptr %blue181, align 8, !dbg !2993, !tbaa !1297
  %opacity182 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !2994
  store float 0.000000e+00, ptr %opacity182, align 4, !dbg !2995, !tbaa !1302
  br i1 %cmp23, label %if.end195, label %if.then186, !dbg !2996

if.then186:                                       ; preds = %if.end164
  store i32 1, ptr %matte, align 8, !dbg !2997, !tbaa !1658
  %opacity188 = getelementptr inbounds %struct._LongPixelPacket, ptr %pixel, i64 0, i32 3, !dbg !3000
  %52 = load i32, ptr %opacity188, align 4, !dbg !3000, !tbaa !2895
  call void @llvm.dbg.value(metadata i32 %52, metadata !2953, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3001
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !2959, metadata !DIExpression()), !dbg !3001
  %conv.i720 = uitofp i32 %52 to float, !dbg !3003
  %mul.i721 = fmul float %conv.i720, 6.553500e+04, !dbg !3004
  %div.i723 = fdiv float %mul.i721, %conv1.i, !dbg !3005
  %conv2.i724 = fpext float %div.i723 to double, !dbg !3006
  %add.i725 = fadd double %conv2.i724, 5.000000e-01, !dbg !3007
  %conv3.i726 = fptoui double %add.i725 to i16, !dbg !3008
  %53 = xor i16 %conv3.i726, -1, !dbg !3009
  %conv193 = uitofp i16 %53 to float, !dbg !3010
  store float %conv193, ptr %opacity182, align 4, !dbg !3011, !tbaa !1302
  br label %if.end195, !dbg !3012

if.end195:                                        ; preds = %if.then186, %if.end164
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 9, !dbg !3013
  store float 0.000000e+00, ptr %index, align 8, !dbg !3014, !tbaa !1308
  br label %cleanup, !dbg !3015

cleanup:                                          ; preds = %if.else132.us, %if.else56.us, %if.end195, %if.then88
  %retval.0 = phi i32 [ 1, %if.end195 ], [ 0, %if.then88 ], [ 0, %if.else56.us ], [ 0, %if.else132.us ], !dbg !2836
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pixel) #16, !dbg !3016
  br label %cleanup554

if.end200:                                        ; preds = %while.end
  %call201 = tail call ptr @strchr(ptr noundef nonnull %name.addr.1, i32 noundef 40) #22, !dbg !3017
  %cmp202.not = icmp eq ptr %call201, null, !dbg !3018
  br i1 %cmp202.not, label %if.end528, label %if.then204, !dbg !3019

if.then204:                                       ; preds = %if.end200
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %colorspace205) #16, !dbg !3020
  call void @llvm.dbg.declare(metadata ptr %colorspace205, metadata !2799, metadata !DIExpression()), !dbg !3021
  %call206 = call i64 @CopyMagickString(ptr noundef nonnull %colorspace205, ptr noundef nonnull %name.addr.1, i64 noundef 4096) #16, !dbg !3022
  call void @llvm.dbg.value(metadata i64 0, metadata !2781, metadata !DIExpression()), !dbg !2814
  br label %for.cond207, !dbg !3023

for.cond207:                                      ; preds = %for.inc219, %if.then204
  %i.2 = phi i64 [ 0, %if.then204 ], [ %inc220, %for.inc219 ], !dbg !3025
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2781, metadata !DIExpression()), !dbg !2814
  %arrayidx208 = getelementptr inbounds [4096 x i8], ptr %colorspace205, i64 0, i64 %i.2, !dbg !3026
  %54 = load i8, ptr %arrayidx208, align 1, !dbg !3026, !tbaa !1174
  switch i8 %54, label %for.inc219 [
    i8 0, label %for.end221
    i8 40, label %for.end221
  ], !dbg !3028

for.inc219:                                       ; preds = %for.cond207
  %inc220 = add nuw nsw i64 %i.2, 1, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %inc220, metadata !2781, metadata !DIExpression()), !dbg !2814
  br label %for.cond207, !dbg !3030, !llvm.loop !3031

for.end221:                                       ; preds = %for.cond207, %for.cond207
  %arrayidx208.le = getelementptr inbounds [4096 x i8], ptr %colorspace205, i64 0, i64 %i.2, !dbg !3026
  %dec222 = add nsw i64 %i.2, -1, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %dec222, metadata !2781, metadata !DIExpression()), !dbg !2814
  store i8 0, ptr %arrayidx208.le, align 1, !dbg !3034, !tbaa !1174
  call void @llvm.dbg.value(metadata double 2.570000e+02, metadata !2769, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 0, metadata !2802, metadata !DIExpression()), !dbg !3035
  %call228 = call i32 @LocaleNCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.27, i64 noundef 7) #16, !dbg !3036
  %cmp229 = icmp eq i32 %call228, 0, !dbg !3038
  br i1 %cmp229, label %if.then231, label %if.end235, !dbg !3039

if.then231:                                       ; preds = %for.end221
  %add.ptr = getelementptr inbounds i8, ptr %colorspace205, i64 7, !dbg !3040
  %call234 = call i64 @CopyMagickString(ptr noundef nonnull %colorspace205, ptr noundef nonnull %add.ptr, i64 noundef 4096) #16, !dbg !3042
  call void @llvm.dbg.value(metadata double 6.553500e+04, metadata !2769, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 1, metadata !2802, metadata !DIExpression()), !dbg !3035
  br label %if.end235, !dbg !3043

if.end235:                                        ; preds = %if.then231, %for.end221
  %scale.0 = phi double [ 6.553500e+04, %if.then231 ], [ 2.570000e+02, %for.end221 ], !dbg !3035
  %icc_color.0 = phi i32 [ 1, %if.then231 ], [ 0, %for.end221 ], !dbg !3035
  call void @llvm.dbg.value(metadata i32 %icc_color.0, metadata !2802, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata double %scale.0, metadata !2769, metadata !DIExpression()), !dbg !2814
  %call237 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.28) #16, !dbg !3044
  %cmp238 = icmp eq i32 %call237, 0, !dbg !3045
  br i1 %cmp238, label %if.then240, label %if.end263, !dbg !3046

if.then240:                                       ; preds = %if.end235
  %add.ptr242 = getelementptr inbounds i8, ptr %name.addr.1, i64 %dec222, !dbg !3047
  %add.ptr243 = getelementptr inbounds i8, ptr %add.ptr242, i64 2, !dbg !3048
  %call244 = call i64 @CopyMagickString(ptr noundef nonnull %colorspace205, ptr noundef nonnull %add.ptr243, i64 noundef 4096) #16, !dbg !3049
  call void @llvm.dbg.value(metadata i64 0, metadata !2803, metadata !DIExpression()), !dbg !3050
  br label %for.cond245, !dbg !3051

for.cond245:                                      ; preds = %for.inc257, %if.then240
  %j.0 = phi i64 [ 0, %if.then240 ], [ %inc258, %for.inc257 ], !dbg !3053
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !2803, metadata !DIExpression()), !dbg !3050
  %arrayidx246 = getelementptr inbounds [4096 x i8], ptr %colorspace205, i64 0, i64 %j.0, !dbg !3054
  %55 = load i8, ptr %arrayidx246, align 1, !dbg !3054, !tbaa !1174
  switch i8 %55, label %for.inc257 [
    i8 0, label %for.end259
    i8 44, label %for.end259
  ], !dbg !3056

for.inc257:                                       ; preds = %for.cond245
  %inc258 = add nuw nsw i64 %j.0, 1, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %inc258, metadata !2803, metadata !DIExpression()), !dbg !3050
  br label %for.cond245, !dbg !3058, !llvm.loop !3059

for.end259:                                       ; preds = %for.cond245, %for.cond245
  %arrayidx246.le = getelementptr inbounds [4096 x i8], ptr %colorspace205, i64 0, i64 %j.0, !dbg !3054
  call void @llvm.dbg.value(metadata i64 %j.0, metadata !2803, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3050
  store i8 0, ptr %arrayidx246.le, align 1, !dbg !3061, !tbaa !1174
  %add = add nuw i64 %i.2, 1, !dbg !3062
  %add262 = add i64 %add, %j.0, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %add262, metadata !2781, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata double 6.553500e+04, metadata !2769, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i32 1, metadata !2802, metadata !DIExpression()), !dbg !3035
  br label %if.end263, !dbg !3064

if.end263:                                        ; preds = %for.end259, %if.end235
  %i.3 = phi i64 [ %add262, %for.end259 ], [ %dec222, %if.end235 ], !dbg !3035
  %scale.1 = phi double [ 6.553500e+04, %for.end259 ], [ %scale.0, %if.end235 ], !dbg !3035
  %icc_color.1 = phi i32 [ 1, %for.end259 ], [ %icc_color.0, %if.end235 ], !dbg !3035
  call void @llvm.dbg.value(metadata i32 %icc_color.1, metadata !2802, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata double %scale.1, metadata !2769, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !2781, metadata !DIExpression()), !dbg !2814
  call void @LocaleLower(ptr noundef nonnull %colorspace205) #16, !dbg !3065
  %matte265 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2, !dbg !3066
  store i32 0, ptr %matte265, align 8, !dbg !3067, !tbaa !1658
  %cmp266 = icmp sgt i64 %i.3, 0, !dbg !3068
  br i1 %cmp266, label %land.lhs.true268, label %if.end276, !dbg !3070

land.lhs.true268:                                 ; preds = %if.end263
  %arrayidx269 = getelementptr inbounds [4096 x i8], ptr %colorspace205, i64 0, i64 %i.3, !dbg !3071
  %56 = load i8, ptr %arrayidx269, align 1, !dbg !3071, !tbaa !1174
  %cmp271 = icmp eq i8 %56, 97, !dbg !3072
  br i1 %cmp271, label %if.then273, label %if.end276, !dbg !3073

if.then273:                                       ; preds = %land.lhs.true268
  store i8 0, ptr %arrayidx269, align 1, !dbg !3074, !tbaa !1174
  store i32 1, ptr %matte265, align 8, !dbg !3076, !tbaa !1658
  br label %if.end276, !dbg !3077

if.end276:                                        ; preds = %if.then273, %land.lhs.true268, %if.end263
  %call278 = call i64 @ParseCommandOption(i32 noundef 9, i32 noundef 0, ptr noundef nonnull %colorspace205) #16, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %call278, metadata !2782, metadata !DIExpression()), !dbg !2814
  %cmp279 = icmp slt i64 %call278, 0, !dbg !3079
  br i1 %cmp279, label %if.then281, label %if.end283, !dbg !3081

if.then281:                                       ; preds = %if.end276
  %call282 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2697, i32 noundef 310, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %name.addr.1) #16, !dbg !3082
  br label %cleanup526, !dbg !3084

if.end283:                                        ; preds = %if.end276
  %conv284 = trunc i64 %call278 to i32, !dbg !3085
  %colorspace285 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1, !dbg !3086
  store i32 %conv284, ptr %colorspace285, align 4, !dbg !3087, !tbaa !1392
  %cmp286 = icmp eq i32 %icc_color.1, 0, !dbg !3088
  %cmp290 = icmp eq i32 %conv284, 1
  %or.cond = select i1 %cmp286, i1 %cmp290, i1 false, !dbg !3090
  br i1 %or.cond, label %if.then292, label %if.end295, !dbg !3090

if.then292:                                       ; preds = %if.end283
  store i32 13, ptr %colorspace285, align 4, !dbg !3091, !tbaa !1392
  %depth294 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 4, !dbg !3093
  store i64 8, ptr %depth294, align 8, !dbg !3094, !tbaa !1321
  br label %if.end295, !dbg !3095

if.end295:                                        ; preds = %if.then292, %if.end283
  call void @SetGeometryInfo(ptr noundef nonnull %geometry_info) #16, !dbg !3096
  %add.ptr296 = getelementptr inbounds i8, ptr %name.addr.1, i64 %i.3, !dbg !3097
  %add.ptr297 = getelementptr inbounds i8, ptr %add.ptr296, i64 1, !dbg !3098
  %call298 = call i32 @ParseGeometry(ptr noundef nonnull %add.ptr297, ptr noundef nonnull %geometry_info) #16, !dbg !3099
  call void @llvm.dbg.value(metadata i32 %call298, metadata !2779, metadata !DIExpression()), !dbg !2814
  %cmp299 = icmp eq i32 %call298, 0, !dbg !3100
  br i1 %cmp299, label %if.then301, label %if.else311, !dbg !3101

if.then301:                                       ; preds = %if.end295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %colorname) #16, !dbg !3102
  %57 = load i32, ptr %colorspace285, align 4, !dbg !3103, !tbaa !1392
  call void @llvm.dbg.value(metadata i32 %57, metadata !2809, metadata !DIExpression()), !dbg !3104
  %call306 = call ptr @AcquireString(ptr noundef nonnull %add.ptr297) #16, !dbg !3105
  call void @llvm.dbg.value(metadata ptr %call306, metadata !2806, metadata !DIExpression()), !dbg !3104
  store ptr %call306, ptr %colorname, align 8, !dbg !3106, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %colorname, metadata !2806, metadata !DIExpression(DW_OP_deref)), !dbg !3104
  %call307 = call i32 @SubstituteString(ptr noundef nonnull %colorname, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #16, !dbg !3107
  %58 = load ptr, ptr %colorname, align 8, !dbg !3108, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %58, metadata !2806, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.value(metadata ptr %58, metadata !3109, metadata !DIExpression()) #16, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %color, metadata !3114, metadata !DIExpression()) #16, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3115, metadata !DIExpression()) #16, !dbg !3116
  %call.i = call i32 @QueryMagickColorCompliance(ptr noundef %58, i32 noundef 2147483647, ptr noundef nonnull %color, ptr noundef %exception) #16, !dbg !3118
  %59 = load ptr, ptr %colorname, align 8, !dbg !3119, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %59, metadata !2806, metadata !DIExpression()), !dbg !3104
  %call309 = call ptr @DestroyString(ptr noundef %59) #16, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %call309, metadata !2806, metadata !DIExpression()), !dbg !3104
  store i32 %57, ptr %colorspace285, align 4, !dbg !3121, !tbaa !1392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %colorname) #16, !dbg !3122
  br label %cleanup526, !dbg !3123

if.else311:                                       ; preds = %if.end295
  %and312 = and i32 %call298, 4096, !dbg !3124
  %cmp313.not = icmp eq i32 %and312, 0, !dbg !3126
  %spec.select = select i1 %cmp313.not, double %scale.1, double 0x40847ACCC0000000, !dbg !3127
  call void @llvm.dbg.value(metadata double %spec.select, metadata !2769, metadata !DIExpression()), !dbg !2814
  %and317 = and i32 %call298, 4, !dbg !3128
  %cmp318.not = icmp eq i32 %and317, 0, !dbg !3130
  br i1 %cmp318.not, label %if.end326, label %if.then320, !dbg !3131

if.then320:                                       ; preds = %if.else311
  %60 = load double, ptr %geometry_info, align 8, !dbg !3132, !tbaa !3133
  %mul321 = fmul double %spec.select, %60, !dbg !3135
  %conv322 = fptrunc double %mul321 to float, !dbg !3136
  call void @llvm.dbg.value(metadata float %conv322, metadata !1326, metadata !DIExpression()), !dbg !3137
  %cmp.i = fcmp ugt float %conv322, 0.000000e+00, !dbg !3139
  br i1 %cmp.i, label %if.end.i, label %ClampToQuantum.exit, !dbg !3140

if.end.i:                                         ; preds = %if.then320
  %cmp1.i = fcmp ult float %conv322, 6.553500e+04, !dbg !3141
  br i1 %cmp1.i, label %if.end3.i, label %ClampToQuantum.exit, !dbg !3142

if.end3.i:                                        ; preds = %if.end.i
  %add.i727 = fadd float %conv322, 5.000000e-01, !dbg !3143
  %conv.i728 = fptoui float %add.i727 to i16, !dbg !3144
  br label %ClampToQuantum.exit, !dbg !3145

ClampToQuantum.exit:                              ; preds = %if.then320, %if.end.i, %if.end3.i
  %retval.0.i = phi i16 [ %conv.i728, %if.end3.i ], [ 0, %if.then320 ], [ -1, %if.end.i ], !dbg !3137
  %conv324 = uitofp i16 %retval.0.i to float, !dbg !3146
  %red325 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !3147
  store float %conv324, ptr %red325, align 8, !dbg !3148, !tbaa !1287
  br label %if.end326, !dbg !3149

if.end326:                                        ; preds = %ClampToQuantum.exit, %if.else311
  %and327 = and i32 %call298, 8, !dbg !3150
  %cmp328.not = icmp eq i32 %and327, 0, !dbg !3152
  br i1 %cmp328.not, label %if.end336, label %if.then330, !dbg !3153

if.then330:                                       ; preds = %if.end326
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !3154
  %61 = load double, ptr %sigma, align 8, !dbg !3154, !tbaa !3155
  %mul331 = fmul double %spec.select, %61, !dbg !3156
  %conv332 = fptrunc double %mul331 to float, !dbg !3157
  call void @llvm.dbg.value(metadata float %conv332, metadata !1326, metadata !DIExpression()), !dbg !3158
  %cmp.i729 = fcmp ugt float %conv332, 0.000000e+00, !dbg !3160
  br i1 %cmp.i729, label %if.end.i731, label %ClampToQuantum.exit736, !dbg !3161

if.end.i731:                                      ; preds = %if.then330
  %cmp1.i730 = fcmp ult float %conv332, 6.553500e+04, !dbg !3162
  br i1 %cmp1.i730, label %if.end3.i734, label %ClampToQuantum.exit736, !dbg !3163

if.end3.i734:                                     ; preds = %if.end.i731
  %add.i732 = fadd float %conv332, 5.000000e-01, !dbg !3164
  %conv.i733 = fptoui float %add.i732 to i16, !dbg !3165
  br label %ClampToQuantum.exit736, !dbg !3166

ClampToQuantum.exit736:                           ; preds = %if.then330, %if.end.i731, %if.end3.i734
  %retval.0.i735 = phi i16 [ %conv.i733, %if.end3.i734 ], [ 0, %if.then330 ], [ -1, %if.end.i731 ], !dbg !3158
  %conv334 = uitofp i16 %retval.0.i735 to float, !dbg !3167
  %green335 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !3168
  store float %conv334, ptr %green335, align 4, !dbg !3169, !tbaa !1292
  br label %if.end336, !dbg !3170

if.end336:                                        ; preds = %ClampToQuantum.exit736, %if.end326
  %and337 = and i32 %call298, 1, !dbg !3171
  %cmp338.not = icmp eq i32 %and337, 0, !dbg !3173
  br i1 %cmp338.not, label %if.end346, label %if.then340, !dbg !3174

if.then340:                                       ; preds = %if.end336
  %xi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !3175
  %62 = load double, ptr %xi, align 8, !dbg !3175, !tbaa !3176
  %mul341 = fmul double %spec.select, %62, !dbg !3177
  %conv342 = fptrunc double %mul341 to float, !dbg !3178
  call void @llvm.dbg.value(metadata float %conv342, metadata !1326, metadata !DIExpression()), !dbg !3179
  %cmp.i737 = fcmp ugt float %conv342, 0.000000e+00, !dbg !3181
  br i1 %cmp.i737, label %if.end.i739, label %ClampToQuantum.exit744, !dbg !3182

if.end.i739:                                      ; preds = %if.then340
  %cmp1.i738 = fcmp ult float %conv342, 6.553500e+04, !dbg !3183
  br i1 %cmp1.i738, label %if.end3.i742, label %ClampToQuantum.exit744, !dbg !3184

if.end3.i742:                                     ; preds = %if.end.i739
  %add.i740 = fadd float %conv342, 5.000000e-01, !dbg !3185
  %conv.i741 = fptoui float %add.i740 to i16, !dbg !3186
  br label %ClampToQuantum.exit744, !dbg !3187

ClampToQuantum.exit744:                           ; preds = %if.then340, %if.end.i739, %if.end3.i742
  %retval.0.i743 = phi i16 [ %conv.i741, %if.end3.i742 ], [ 0, %if.then340 ], [ -1, %if.end.i739 ], !dbg !3179
  %conv344 = uitofp i16 %retval.0.i743 to float, !dbg !3188
  %blue345 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !3189
  store float %conv344, ptr %blue345, align 8, !dbg !3190, !tbaa !1297
  br label %if.end346, !dbg !3191

if.end346:                                        ; preds = %ClampToQuantum.exit744, %if.end336
  %opacity347 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !3192
  store float 0.000000e+00, ptr %opacity347, align 4, !dbg !3193, !tbaa !1302
  %and348 = and i32 %call298, 2, !dbg !3194
  %cmp349.not = icmp eq i32 %and348, 0, !dbg !3196
  br i1 %cmp349.not, label %if.end374, label %if.then351, !dbg !3197

if.then351:                                       ; preds = %if.end346
  %63 = load i32, ptr %colorspace285, align 4, !dbg !3198, !tbaa !1392
  %cmp353 = icmp eq i32 %63, 12, !dbg !3201
  br i1 %cmp353, label %if.then355, label %if.else361, !dbg !3202

if.then355:                                       ; preds = %if.then351
  %psi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3, !dbg !3203
  %64 = load double, ptr %psi, align 8, !dbg !3203, !tbaa !3204
  %mul356 = fmul double %spec.select, %64, !dbg !3205
  %conv357 = fptrunc double %mul356 to float, !dbg !3206
  call void @llvm.dbg.value(metadata float %conv357, metadata !1326, metadata !DIExpression()), !dbg !3207
  %cmp.i745 = fcmp ugt float %conv357, 0.000000e+00, !dbg !3209
  br i1 %cmp.i745, label %if.end.i747, label %ClampToQuantum.exit752, !dbg !3210

if.end.i747:                                      ; preds = %if.then355
  %cmp1.i746 = fcmp ult float %conv357, 6.553500e+04, !dbg !3211
  br i1 %cmp1.i746, label %if.end3.i750, label %ClampToQuantum.exit752, !dbg !3212

if.end3.i750:                                     ; preds = %if.end.i747
  %add.i748 = fadd float %conv357, 5.000000e-01, !dbg !3213
  %conv.i749 = fptoui float %add.i748 to i16, !dbg !3214
  %phi.cast779 = uitofp i16 %conv.i749 to float, !dbg !3215
  br label %ClampToQuantum.exit752, !dbg !3215

ClampToQuantum.exit752:                           ; preds = %if.then355, %if.end.i747, %if.end3.i750
  %retval.0.i751 = phi float [ %phi.cast779, %if.end3.i750 ], [ 0.000000e+00, %if.then355 ], [ 6.553500e+04, %if.end.i747 ]
  %index360 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 9, !dbg !3216
  store float %retval.0.i751, ptr %index360, align 8, !dbg !3217, !tbaa !1308
  br label %if.end374, !dbg !3218

if.else361:                                       ; preds = %if.then351
  %65 = load i32, ptr %matte265, align 8, !dbg !3219, !tbaa !1658
  %cmp363.not = icmp eq i32 %65, 0, !dbg !3221
  br i1 %cmp363.not, label %if.end374, label %if.then365, !dbg !3222

if.then365:                                       ; preds = %if.else361
  %psi366 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 3, !dbg !3223
  %66 = load double, ptr %psi366, align 8, !dbg !3223, !tbaa !3204
  %67 = call double @llvm.fmuladd.f64(double %66, double -6.553500e+04, double 6.553500e+04), !dbg !3224
  %conv368 = fptrunc double %67 to float, !dbg !3225
  call void @llvm.dbg.value(metadata float %conv368, metadata !1326, metadata !DIExpression()), !dbg !3226
  %cmp.i753 = fcmp ugt float %conv368, 0.000000e+00, !dbg !3228
  br i1 %cmp.i753, label %if.end.i755, label %ClampToQuantum.exit760, !dbg !3229

if.end.i755:                                      ; preds = %if.then365
  %cmp1.i754 = fcmp ult float %conv368, 6.553500e+04, !dbg !3230
  br i1 %cmp1.i754, label %if.end3.i758, label %ClampToQuantum.exit760, !dbg !3231

if.end3.i758:                                     ; preds = %if.end.i755
  %add.i756 = fadd float %conv368, 5.000000e-01, !dbg !3232
  %conv.i757 = fptoui float %add.i756 to i16, !dbg !3233
  %phi.cast = uitofp i16 %conv.i757 to float, !dbg !3234
  br label %ClampToQuantum.exit760, !dbg !3234

ClampToQuantum.exit760:                           ; preds = %if.then365, %if.end.i755, %if.end3.i758
  %retval.0.i759 = phi float [ %phi.cast, %if.end3.i758 ], [ 0.000000e+00, %if.then365 ], [ 6.553500e+04, %if.end.i755 ]
  store float %retval.0.i759, ptr %opacity347, align 4, !dbg !3235, !tbaa !1302
  br label %if.end374, !dbg !3236

if.end374:                                        ; preds = %ClampToQuantum.exit752, %ClampToQuantum.exit760, %if.else361, %if.end346
  %and375 = and i32 %call298, 16, !dbg !3237
  %cmp376.not = icmp eq i32 %and375, 0, !dbg !3239
  br i1 %cmp376.not, label %if.end388, label %land.lhs.true378, !dbg !3240

land.lhs.true378:                                 ; preds = %if.end374
  %68 = load i32, ptr %matte265, align 8, !dbg !3241, !tbaa !1658
  %cmp380.not = icmp eq i32 %68, 0, !dbg !3242
  br i1 %cmp380.not, label %if.end388, label %if.then382, !dbg !3243

if.then382:                                       ; preds = %land.lhs.true378
  %chi = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 4, !dbg !3244
  %69 = load double, ptr %chi, align 8, !dbg !3244, !tbaa !3245
  %70 = call double @llvm.fmuladd.f64(double %69, double -6.553500e+04, double 6.553500e+04), !dbg !3246
  %conv384 = fptrunc double %70 to float, !dbg !3247
  call void @llvm.dbg.value(metadata float %conv384, metadata !1326, metadata !DIExpression()), !dbg !3248
  %cmp.i761 = fcmp ugt float %conv384, 0.000000e+00, !dbg !3250
  br i1 %cmp.i761, label %if.end.i763, label %ClampToQuantum.exit768, !dbg !3251

if.end.i763:                                      ; preds = %if.then382
  %cmp1.i762 = fcmp ult float %conv384, 6.553500e+04, !dbg !3252
  br i1 %cmp1.i762, label %if.end3.i766, label %ClampToQuantum.exit768, !dbg !3253

if.end3.i766:                                     ; preds = %if.end.i763
  %add.i764 = fadd float %conv384, 5.000000e-01, !dbg !3254
  %conv.i765 = fptoui float %add.i764 to i16, !dbg !3255
  %phi.cast777 = uitofp i16 %conv.i765 to float, !dbg !3256
  br label %ClampToQuantum.exit768, !dbg !3256

ClampToQuantum.exit768:                           ; preds = %if.then382, %if.end.i763, %if.end3.i766
  %retval.0.i767 = phi float [ %phi.cast777, %if.end3.i766 ], [ 0.000000e+00, %if.then382 ], [ 6.553500e+04, %if.end.i763 ]
  store float %retval.0.i767, ptr %opacity347, align 4, !dbg !3257, !tbaa !1302
  br label %if.end388, !dbg !3258

if.end388:                                        ; preds = %ClampToQuantum.exit768, %land.lhs.true378, %if.end374
  %call390 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.29) #16, !dbg !3259
  %cmp391 = icmp eq i32 %call390, 0, !dbg !3261
  br i1 %cmp391, label %if.then393, label %if.end414, !dbg !3262

if.then393:                                       ; preds = %if.end388
  store i32 2, ptr %colorspace285, align 4, !dbg !3263, !tbaa !1392
  %red395 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !3265
  %71 = load float, ptr %red395, align 8, !dbg !3265, !tbaa !1287
  %green396 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !3266
  store float %71, ptr %green396, align 4, !dbg !3267, !tbaa !1292
  %blue398 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !3268
  store float %71, ptr %blue398, align 8, !dbg !3269, !tbaa !1297
  br i1 %cmp328.not, label %if.end414, label %land.lhs.true402, !dbg !3270

land.lhs.true402:                                 ; preds = %if.then393
  %72 = load i32, ptr %matte265, align 8, !dbg !3272, !tbaa !1658
  %cmp404.not = icmp eq i32 %72, 0, !dbg !3273
  br i1 %cmp404.not, label %if.end414, label %if.then406, !dbg !3274

if.then406:                                       ; preds = %land.lhs.true402
  %sigma407 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !3275
  %73 = load double, ptr %sigma407, align 8, !dbg !3275, !tbaa !3155
  %74 = call double @llvm.fmuladd.f64(double %73, double -6.553500e+04, double 6.553500e+04), !dbg !3276
  %conv409 = fptrunc double %74 to float, !dbg !3277
  call void @llvm.dbg.value(metadata float %conv409, metadata !1326, metadata !DIExpression()), !dbg !3278
  %cmp.i769 = fcmp ugt float %conv409, 0.000000e+00, !dbg !3280
  br i1 %cmp.i769, label %if.end.i771, label %ClampToQuantum.exit776, !dbg !3281

if.end.i771:                                      ; preds = %if.then406
  %cmp1.i770 = fcmp ult float %conv409, 6.553500e+04, !dbg !3282
  br i1 %cmp1.i770, label %if.end3.i774, label %ClampToQuantum.exit776, !dbg !3283

if.end3.i774:                                     ; preds = %if.end.i771
  %add.i772 = fadd float %conv409, 5.000000e-01, !dbg !3284
  %conv.i773 = fptoui float %add.i772 to i16, !dbg !3285
  %phi.cast778 = uitofp i16 %conv.i773 to float, !dbg !3286
  br label %ClampToQuantum.exit776, !dbg !3286

ClampToQuantum.exit776:                           ; preds = %if.then406, %if.end.i771, %if.end3.i774
  %retval.0.i775 = phi float [ %phi.cast778, %if.end3.i774 ], [ 0.000000e+00, %if.then406 ], [ 6.553500e+04, %if.end.i771 ]
  store float %retval.0.i775, ptr %opacity347, align 4, !dbg !3287, !tbaa !1302
  br label %if.end414, !dbg !3288

if.end414:                                        ; preds = %if.then393, %land.lhs.true402, %ClampToQuantum.exit776, %if.end388
  %call416 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.30) #16, !dbg !3289
  %cmp417 = icmp eq i32 %call416, 0, !dbg !3290
  br i1 %cmp417, label %if.then434, label %lor.lhs.false419, !dbg !3291

lor.lhs.false419:                                 ; preds = %if.end414
  %call421 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.31) #16, !dbg !3292
  %cmp422 = icmp eq i32 %call421, 0, !dbg !3293
  br i1 %cmp422, label %if.then434, label %lor.lhs.false424, !dbg !3294

lor.lhs.false424:                                 ; preds = %lor.lhs.false419
  %call426 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.32) #16, !dbg !3295
  %cmp427 = icmp eq i32 %call426, 0, !dbg !3296
  br i1 %cmp427, label %if.then434, label %lor.lhs.false429, !dbg !3297

lor.lhs.false429:                                 ; preds = %lor.lhs.false424
  %call431 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.33) #16, !dbg !3298
  %cmp432 = icmp eq i32 %call431, 0, !dbg !3299
  br i1 %cmp432, label %if.then434, label %cleanup526, !dbg !3300

if.then434:                                       ; preds = %lor.lhs.false429, %lor.lhs.false424, %lor.lhs.false419, %if.end414
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pixel435) #16, !dbg !3301
  call void @llvm.dbg.declare(metadata ptr %pixel435, metadata !2810, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata double undef, metadata !2769, metadata !DIExpression()), !dbg !2814
  %mul441 = select i1 %cmp313.not, double 1.000000e+00, double 3.600000e+00, !dbg !3303
  %75 = load double, ptr %geometry_info, align 8, !dbg !3304, !tbaa !3133
  %mul443 = fmul double %mul441, %75, !dbg !3304
  store double %mul443, ptr %geometry_info, align 8, !dbg !3304, !tbaa !3133
  call void @llvm.dbg.value(metadata double 0x3F70101010101010, metadata !2769, metadata !DIExpression()), !dbg !2814
  %spec.store.select565 = select i1 %cmp313.not, double 0x3F70101010101010, double 1.000000e-02, !dbg !3305
  call void @llvm.dbg.value(metadata double %spec.store.select565, metadata !2769, metadata !DIExpression()), !dbg !2814
  %sigma449 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !3306
  %76 = load double, ptr %sigma449, align 8, !dbg !3307, !tbaa !3155
  %mul450 = fmul double %spec.store.select565, %76, !dbg !3307
  store double %mul450, ptr %sigma449, align 8, !dbg !3307, !tbaa !3155
  %xi451 = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 2, !dbg !3308
  %77 = load double, ptr %xi451, align 8, !dbg !3309, !tbaa !3176
  %mul452 = fmul double %spec.store.select565, %77, !dbg !3309
  store double %mul452, ptr %xi451, align 8, !dbg !3309, !tbaa !3176
  %call454 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.30) #16, !dbg !3310
  %cmp455 = icmp eq i32 %call454, 0, !dbg !3312
  br i1 %cmp455, label %if.then457, label %if.else468, !dbg !3313

if.then457:                                       ; preds = %if.then434
  %78 = load double, ptr %geometry_info, align 8, !dbg !3314, !tbaa !3133
  %call459 = call double @fmod(double noundef %78, double noundef 3.600000e+02) #16, !dbg !3315
  %add460 = fadd double %call459, 3.600000e+02, !dbg !3316
  %call461 = call double @fmod(double noundef %add460, double noundef 3.600000e+02) #16, !dbg !3317
  %div462 = fdiv double %call461, 3.600000e+02, !dbg !3318
  %79 = load double, ptr %sigma449, align 8, !dbg !3319, !tbaa !3155
  %80 = load double, ptr %xi451, align 8, !dbg !3320, !tbaa !3176
  %red465 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 2, !dbg !3321
  %green466 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 1, !dbg !3322
  call void @ConvertHCLToRGB(double noundef %div462, double noundef %79, double noundef %80, ptr noundef nonnull %red465, ptr noundef nonnull %green466, ptr noundef nonnull %pixel435) #16, !dbg !3323
  br label %if.end513, !dbg !3323

if.else468:                                       ; preds = %if.then434
  %call470 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.31) #16, !dbg !3324
  %cmp471 = icmp eq i32 %call470, 0, !dbg !3326
  br i1 %cmp471, label %if.then473, label %if.else484, !dbg !3327

if.then473:                                       ; preds = %if.else468
  %81 = load double, ptr %geometry_info, align 8, !dbg !3328, !tbaa !3133
  %call475 = call double @fmod(double noundef %81, double noundef 3.600000e+02) #16, !dbg !3329
  %add476 = fadd double %call475, 3.600000e+02, !dbg !3330
  %call477 = call double @fmod(double noundef %add476, double noundef 3.600000e+02) #16, !dbg !3331
  %div478 = fdiv double %call477, 3.600000e+02, !dbg !3332
  %82 = load double, ptr %sigma449, align 8, !dbg !3333, !tbaa !3155
  %83 = load double, ptr %xi451, align 8, !dbg !3334, !tbaa !3176
  %red481 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 2, !dbg !3335
  %green482 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 1, !dbg !3336
  call void @ConvertHSBToRGB(double noundef %div478, double noundef %82, double noundef %83, ptr noundef nonnull %red481, ptr noundef nonnull %green482, ptr noundef nonnull %pixel435) #16, !dbg !3337
  br label %if.end513, !dbg !3337

if.else484:                                       ; preds = %if.else468
  %call486 = call i32 @LocaleCompare(ptr noundef nonnull %colorspace205, ptr noundef nonnull @.str.32) #16, !dbg !3338
  %cmp487 = icmp eq i32 %call486, 0, !dbg !3340
  %84 = load double, ptr %geometry_info, align 8, !dbg !3341, !tbaa !3133
  %call491 = call double @fmod(double noundef %84, double noundef 3.600000e+02) #16, !dbg !3341
  %add492 = fadd double %call491, 3.600000e+02, !dbg !3341
  %call493 = call double @fmod(double noundef %add492, double noundef 3.600000e+02) #16, !dbg !3341
  %div494 = fdiv double %call493, 3.600000e+02, !dbg !3341
  %85 = load double, ptr %sigma449, align 8, !dbg !3341, !tbaa !3155
  %86 = load double, ptr %xi451, align 8, !dbg !3341, !tbaa !3176
  %red497 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 2, !dbg !3341
  %green498 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 1, !dbg !3341
  br i1 %cmp487, label %if.then489, label %if.else500, !dbg !3342

if.then489:                                       ; preds = %if.else484
  call void @ConvertHSLToRGB(double noundef %div494, double noundef %85, double noundef %86, ptr noundef nonnull %red497, ptr noundef nonnull %green498, ptr noundef nonnull %pixel435) #16, !dbg !3343
  br label %if.end513, !dbg !3343

if.else500:                                       ; preds = %if.else484
  call void @ConvertHWBToRGB(double noundef %div494, double noundef %85, double noundef %86, ptr noundef nonnull %red497, ptr noundef nonnull %green498, ptr noundef nonnull %pixel435) #16, !dbg !3344
  br label %if.end513

if.end513:                                        ; preds = %if.then473, %if.else500, %if.then489, %if.then457
  store i32 13, ptr %colorspace285, align 4, !dbg !3345, !tbaa !1392
  %red515 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 2, !dbg !3346
  %87 = load i16, ptr %red515, align 2, !dbg !3346, !tbaa !2006
  %conv516 = uitofp i16 %87 to float, !dbg !3347
  %red517 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !3348
  store float %conv516, ptr %red517, align 8, !dbg !3349, !tbaa !1287
  %green518 = getelementptr inbounds %struct._PixelPacket, ptr %pixel435, i64 0, i32 1, !dbg !3350
  %88 = load i16, ptr %green518, align 2, !dbg !3350, !tbaa !2019
  %conv519 = uitofp i16 %88 to float, !dbg !3351
  %green520 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !3352
  store float %conv519, ptr %green520, align 4, !dbg !3353, !tbaa !1292
  %89 = load i16, ptr %pixel435, align 2, !dbg !3354, !tbaa !2009
  %conv522 = uitofp i16 %89 to float, !dbg !3355
  %blue523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !3356
  store float %conv522, ptr %blue523, align 8, !dbg !3357, !tbaa !1297
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pixel435) #16, !dbg !3358
  br label %cleanup526, !dbg !3359

cleanup526:                                       ; preds = %if.then301, %if.end513, %lor.lhs.false429, %if.then281
  %retval.1 = phi i32 [ 0, %if.then281 ], [ 1, %lor.lhs.false429 ], [ 1, %if.end513 ], [ 1, %if.then301 ], !dbg !3035
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %colorspace205) #16, !dbg !3360
  br label %cleanup554

if.end528:                                        ; preds = %if.end200
  %call529 = tail call ptr @GetColorCompliance(ptr noundef nonnull %name.addr.1, i32 noundef %compliance, ptr noundef %exception), !dbg !3361
  call void @llvm.dbg.value(metadata ptr %call529, metadata !2780, metadata !DIExpression()), !dbg !2814
  %cmp530 = icmp eq ptr %call529, null, !dbg !3362
  br i1 %cmp530, label %cleanup554, label %if.end533, !dbg !3364

if.end533:                                        ; preds = %if.end528
  %colorspace534 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 1, !dbg !3365
  store i32 13, ptr %colorspace534, align 4, !dbg !3366, !tbaa !1392
  %depth535 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 4, !dbg !3367
  store i64 8, ptr %depth535, align 8, !dbg !3368, !tbaa !1321
  %opacity537 = getelementptr inbounds %struct._ColorInfo, ptr %call529, i64 0, i32 3, i32 8, !dbg !3369
  %90 = load float, ptr %opacity537, align 4, !dbg !3369, !tbaa !1145
  %cmp538 = fcmp une float %90, 0.000000e+00, !dbg !3370
  %cond = zext i1 %cmp538 to i32, !dbg !3371
  %matte540 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 2, !dbg !3372
  store i32 %cond, ptr %matte540, align 8, !dbg !3373, !tbaa !1658
  %red542 = getelementptr inbounds %struct._ColorInfo, ptr %call529, i64 0, i32 3, i32 5, !dbg !3374
  %91 = load float, ptr %red542, align 8, !dbg !3374, !tbaa !1119
  %red543 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5, !dbg !3375
  store float %91, ptr %red543, align 8, !dbg !3376, !tbaa !1287
  %green545 = getelementptr inbounds %struct._ColorInfo, ptr %call529, i64 0, i32 3, i32 6, !dbg !3377
  %92 = load float, ptr %green545, align 4, !dbg !3377, !tbaa !1129
  %green546 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6, !dbg !3378
  store float %92, ptr %green546, align 4, !dbg !3379, !tbaa !1292
  %blue548 = getelementptr inbounds %struct._ColorInfo, ptr %call529, i64 0, i32 3, i32 7, !dbg !3380
  %93 = load float, ptr %blue548, align 8, !dbg !3380, !tbaa !1139
  %blue549 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7, !dbg !3381
  store float %93, ptr %blue549, align 8, !dbg !3382, !tbaa !1297
  %opacity552 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !3383
  store float %90, ptr %opacity552, align 4, !dbg !3384, !tbaa !1302
  %index553 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 9, !dbg !3385
  store float 0.000000e+00, ptr %index553, align 8, !dbg !3386, !tbaa !1308
  br label %cleanup554, !dbg !3387

cleanup554:                                       ; preds = %if.end528, %if.end533, %cleanup526, %cleanup
  %retval.2 = phi i32 [ %retval.0, %cleanup ], [ %retval.1, %cleanup526 ], [ 1, %if.end533 ], [ 0, %if.end528 ], !dbg !2814
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #16, !dbg !3388
  ret i32 %retval.2, !dbg !3388
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryColorDatabase(ptr noundef %name, ptr nocapture noundef writeonly %color, ptr noundef %exception) local_unnamed_addr #0 !dbg !3389 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !3393, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %color, metadata !3394, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3395, metadata !DIExpression()), !dbg !3396
  %call = tail call i32 @QueryColorCompliance(ptr noundef %name, i32 noundef 2147483647, ptr noundef %color, ptr noundef %exception), !dbg !3397
  ret i32 %call, !dbg !3398
}

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryColorname(ptr noundef %image, ptr nocapture noundef readonly %color, i32 noundef %compliance, ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !3399 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3403, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %color, metadata !3404, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !3405, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %name, metadata !3406, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3407, metadata !DIExpression()), !dbg !3409
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #16, !dbg !3410
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !3408, metadata !DIExpression()), !dbg !3411
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %pixel) #16, !dbg !3412
  call void @llvm.dbg.value(metadata ptr undef, metadata !2183, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %color, metadata !2190, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr null, metadata !2191, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !2192, metadata !DIExpression()), !dbg !3413
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 2, !dbg !3415
  %0 = load i16, ptr %red.i, align 2, !dbg !3415, !tbaa !2006
  %conv.i = uitofp i16 %0 to float, !dbg !3416
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !3417
  store float %conv.i, ptr %red1.i, align 8, !dbg !3418, !tbaa !1287
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 1, !dbg !3419
  %1 = load i16, ptr %green.i, align 2, !dbg !3419, !tbaa !2019
  %conv2.i = uitofp i16 %1 to float, !dbg !3420
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !3421
  store float %conv2.i, ptr %green3.i, align 4, !dbg !3422, !tbaa !1292
  %2 = load i16, ptr %color, align 2, !dbg !3423, !tbaa !2009
  %conv4.i = uitofp i16 %2 to float, !dbg !3424
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !3425
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !3426, !tbaa !1297
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %color, i64 0, i32 3, !dbg !3427
  %3 = load i16, ptr %opacity.i, align 2, !dbg !3427, !tbaa !2038
  %conv6.i = uitofp i16 %3 to float, !dbg !3428
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !3429
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !3430, !tbaa !1302
  %call = call i32 @QueryMagickColorname(ptr noundef %image, ptr noundef nonnull %pixel, i32 noundef %compliance, ptr noundef %name, ptr noundef %exception), !dbg !3431
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #16, !dbg !3432
  ret i32 %call, !dbg !3433
}

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryMagickColorname(ptr nocapture noundef readonly %image, ptr nocapture noundef readonly %color, i32 noundef %compliance, ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !3434 {
entry:
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !3438, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %color, metadata !3439, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %compliance, metadata !3440, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %name, metadata !3441, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3442, metadata !DIExpression()), !dbg !3446
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #16, !dbg !3447
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !3443, metadata !DIExpression()), !dbg !3448
  store i8 0, ptr %name, align 1, !dbg !3449, !tbaa !1174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %color, i64 56, i1 false), !dbg !3450, !tbaa.struct !1666
  %cmp = icmp eq i32 %compliance, 4, !dbg !3451
  br i1 %cmp, label %if.then, label %if.end, !dbg !3453

if.then:                                          ; preds = %entry
  %matte = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 2, !dbg !3454
  store i32 0, ptr %matte, align 8, !dbg !3456, !tbaa !1658
  %depth = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !3457
  %0 = load i64, ptr %depth, align 8, !dbg !3457, !tbaa !3458
  %conv = uitofp i64 %0 to double, !dbg !3459
  call void @llvm.dbg.value(metadata double %conv, metadata !2687, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata double 1.600000e+01, metadata !2690, metadata !DIExpression()), !dbg !3460
  %cmp.i = fcmp olt double %conv, 1.600000e+01, !dbg !3462
  %x.y.i = select i1 %cmp.i, double %conv, double 1.600000e+01, !dbg !3460
  %conv1 = fptoui double %x.y.i to i64, !dbg !3463
  %depth2 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 4, !dbg !3464
  store i64 %conv1, ptr %depth2, align 8, !dbg !3465, !tbaa !1321
  br label %if.end, !dbg !3466

if.end:                                           ; preds = %if.then, %entry
  %cmp3.not = icmp ne i32 %compliance, 1, !dbg !3467
  %cond = zext i1 %cmp3.not to i32, !dbg !3468
  call void @GetColorTuple(ptr noundef nonnull %pixel, i32 noundef %cond, ptr noundef nonnull %name), !dbg !3469
  %colorspace = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 1, !dbg !3470
  %1 = load i32, ptr %colorspace, align 4, !dbg !3470, !tbaa !1392
  switch i32 %1, label %cleanup [
    i32 13, label %if.end9
    i32 3, label %if.end9
  ], !dbg !3472

if.end9:                                          ; preds = %if.end, %if.end
  call void @llvm.dbg.value(metadata ptr @.str, metadata !1261, metadata !DIExpression()) #16, !dbg !3473
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1262, metadata !DIExpression()) #16, !dbg !3473
  %call.i = tail call ptr @GetColorCompliance(ptr noundef nonnull @.str, i32 noundef 2147483647, ptr noundef %exception) #16, !dbg !3475
  %2 = load ptr, ptr @color_cache, align 8, !dbg !3476, !tbaa !920
  tail call void @ResetLinkedListIterator(ptr noundef %2) #16, !dbg !3477
  %matte11 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !3478
  %3 = load i32, ptr %matte11, align 8, !dbg !3478, !tbaa !1973
  %cmp12.not = icmp eq i32 %3, 0, !dbg !3479
  br i1 %cmp12.not, label %cond.end, label %cond.true, !dbg !3480

cond.true:                                        ; preds = %if.end9
  %opacity14 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 8, !dbg !3481
  %4 = load float, ptr %opacity14, align 4, !dbg !3481, !tbaa !1302
  br label %cond.end, !dbg !3480

cond.end:                                         ; preds = %if.end9, %cond.true
  %cond15 = phi float [ %4, %cond.true ], [ 0.000000e+00, %if.end9 ], !dbg !3480
  call void @llvm.dbg.value(metadata float %cond15, metadata !3444, metadata !DIExpression()), !dbg !3446
  %5 = load ptr, ptr @color_cache, align 8, !dbg !3482, !tbaa !920
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %5) #16, !dbg !3483
  call void @llvm.dbg.value(metadata ptr %call16, metadata !3445, metadata !DIExpression()), !dbg !3446
  %cmp17.not64 = icmp eq ptr %call16, null, !dbg !3484
  br i1 %cmp17.not64, label %cleanup, label %while.body.lr.ph, !dbg !3485

while.body.lr.ph:                                 ; preds = %cond.end
  %red23 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 5
  %green28 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 6
  %blue33 = getelementptr inbounds %struct._MagickPixelPacket, ptr %color, i64 0, i32 7
  br label %while.body, !dbg !3485

while.body:                                       ; preds = %while.body.lr.ph, %if.end44
  %p.065 = phi ptr [ %call16, %while.body.lr.ph ], [ %call45, %if.end44 ]
  call void @llvm.dbg.value(metadata ptr %p.065, metadata !3445, metadata !DIExpression()), !dbg !3446
  %compliance19 = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 2, !dbg !3486
  %6 = load i32, ptr %compliance19, align 8, !dbg !3486, !tbaa !1151
  %and = and i32 %6, %compliance, !dbg !3489
  %cmp20.not = icmp eq i32 %and, 0, !dbg !3490
  br i1 %cmp20.not, label %if.end44, label %land.lhs.true, !dbg !3491

land.lhs.true:                                    ; preds = %while.body
  %red = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 3, i32 5, !dbg !3492
  %7 = load float, ptr %red, align 8, !dbg !3492, !tbaa !1119
  %8 = load float, ptr %red23, align 8, !dbg !3493, !tbaa !1287
  %cmp24 = fcmp oeq float %7, %8, !dbg !3494
  br i1 %cmp24, label %land.lhs.true26, label %if.end44, !dbg !3495

land.lhs.true26:                                  ; preds = %land.lhs.true
  %green = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 3, i32 6, !dbg !3496
  %9 = load float, ptr %green, align 4, !dbg !3496, !tbaa !1129
  %10 = load float, ptr %green28, align 4, !dbg !3497, !tbaa !1292
  %cmp29 = fcmp oeq float %9, %10, !dbg !3498
  br i1 %cmp29, label %land.lhs.true31, label %if.end44, !dbg !3499

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %blue = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 3, i32 7, !dbg !3500
  %11 = load float, ptr %blue, align 8, !dbg !3500, !tbaa !1139
  %12 = load float, ptr %blue33, align 8, !dbg !3501, !tbaa !1297
  %cmp34 = fcmp oeq float %11, %12, !dbg !3502
  br i1 %cmp34, label %land.lhs.true36, label %if.end44, !dbg !3503

land.lhs.true36:                                  ; preds = %land.lhs.true31
  %opacity38 = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 3, i32 8, !dbg !3504
  %13 = load float, ptr %opacity38, align 4, !dbg !3504, !tbaa !1145
  %cmp39 = fcmp oeq float %13, %cond15, !dbg !3505
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !3506

if.then41:                                        ; preds = %land.lhs.true36
  %name42 = getelementptr inbounds %struct._ColorInfo, ptr %p.065, i64 0, i32 1, !dbg !3507
  %14 = load ptr, ptr %name42, align 8, !dbg !3507, !tbaa !993
  %call43 = tail call i64 @CopyMagickString(ptr noundef nonnull %name, ptr noundef %14, i64 noundef 4096) #16, !dbg !3509
  br label %cleanup, !dbg !3510

if.end44:                                         ; preds = %land.lhs.true36, %land.lhs.true31, %land.lhs.true26, %land.lhs.true, %while.body
  %15 = load ptr, ptr @color_cache, align 8, !dbg !3511, !tbaa !920
  %call45 = tail call ptr @GetNextValueInLinkedList(ptr noundef %15) #16, !dbg !3512
  call void @llvm.dbg.value(metadata ptr %call45, metadata !3445, metadata !DIExpression()), !dbg !3446
  %cmp17.not = icmp eq ptr %call45, null, !dbg !3484
  br i1 %cmp17.not, label %cleanup, label %while.body, !dbg !3485, !llvm.loop !3513

cleanup:                                          ; preds = %if.end44, %cond.end, %if.end, %if.then41
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.then41 ], [ 1, %cond.end ], [ 1, %if.end44 ], !dbg !3446
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #16, !dbg !3515
  ret i32 %retval.0, !dbg !3515
}

declare !dbg !3516 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

declare !dbg !3519 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !3522 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3525 void @SetGeometryInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !3529 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3532 ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare !dbg !3533 i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @QueryMagickColor(ptr noundef %name, ptr noundef %color, ptr noundef %exception) local_unnamed_addr #0 !dbg !3110 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !3109, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %color, metadata !3114, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3115, metadata !DIExpression()), !dbg !3536
  %call = tail call i32 @QueryMagickColorCompliance(ptr noundef %name, i32 noundef 2147483647, ptr noundef %color, ptr noundef %exception), !dbg !3537
  ret i32 %call, !dbg !3538
}

declare !dbg !3539 ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare !dbg !3542 void @ConvertHCLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #13

declare !dbg !3547 void @ConvertHSBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3548 void @ConvertHSLToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3549 void @ConvertHWBToRGB(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3550 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #1

declare !dbg !3553 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !3556 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

declare !dbg !3560 void @CatchException(ptr noundef) local_unnamed_addr #1

declare !dbg !3561 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !3564 void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #14

declare !dbg !3565 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadColorCache(ptr noundef %color_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !3567 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception116 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %color_cache, metadata !3571, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3572, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %filename, metadata !3573, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i64 %depth, metadata !3574, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3575, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #16, !dbg !3605
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !3576, metadata !DIExpression()), !dbg !3606
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #16, !dbg !3607
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2176, ptr noundef nonnull @.str.41, ptr noundef %filename) #16, !dbg !3608
  %cmp = icmp eq ptr %xml, null, !dbg !3609
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3611

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !3580, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr null, metadata !3578, metadata !DIExpression()), !dbg !3604
  %call1 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #16, !dbg !3612
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3577, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3579, metadata !DIExpression()), !dbg !3604
  store ptr %xml, ptr %q, align 8, !dbg !3613, !tbaa !920
  call void @llvm.dbg.value(metadata i32 1, metadata !3580, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr null, metadata !3578, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %xml, metadata !3579, metadata !DIExpression()), !dbg !3604
  %0 = load i8, ptr %xml, align 1, !dbg !3614, !tbaa !1174
  %cmp2.not271 = icmp eq i8 %0, 0, !dbg !3615
  br i1 %cmp2.not271, label %for.end, label %for.body.lr.ph, !dbg !3616

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp69 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !3616

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %status.0273 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  %color_info.0272 = phi ptr [ null, %for.body.lr.ph ], [ %color_info.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata i32 %status.0273, metadata !3580, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %color_info.0272, metadata !3578, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #16, !dbg !3617
  %2 = load i8, ptr %call1, align 1, !dbg !3618, !tbaa !1174
  %cmp5 = icmp eq i8 %2, 0, !dbg !3620
  br i1 %cmp5, label %for.end, label %if.end8, !dbg !3621

if.end8:                                          ; preds = %for.body
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #16, !dbg !3622
  %call11 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.42, i64 noundef 9) #16, !dbg !3623
  %cmp12 = icmp eq i32 %call11, 0, !dbg !3625
  br i1 %cmp12, label %while.cond.preheader, label %if.end21, !dbg !3626

while.cond.preheader:                             ; preds = %if.end8
  %3 = load ptr, ptr %q, align 8, !dbg !3627, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3604
  %call15269 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.43, i64 noundef 2) #16, !dbg !3629
  %cmp16.not270 = icmp eq i32 %call15269, 0, !dbg !3630
  br i1 %cmp16.not270, label %for.cond.backedge, label %land.rhs, !dbg !3631

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !3632, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3604
  %5 = load i8, ptr %4, align 1, !dbg !3633, !tbaa !1174
  %cmp19.not = icmp eq i8 %5, 0, !dbg !3634
  br i1 %cmp19.not, label %for.cond.backedge, label %while.body, !dbg !3635

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #16, !dbg !3636
  %6 = load ptr, ptr %q, align 8, !dbg !3627, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %6, metadata !3579, metadata !DIExpression()), !dbg !3604
  %call15 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.43, i64 noundef 2) #16, !dbg !3629
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !3630
  br i1 %cmp16.not, label %for.cond.backedge, label %land.rhs, !dbg !3631, !llvm.loop !3637

for.cond.backedge:                                ; preds = %while.body36, %land.rhs31, %while.body, %land.rhs, %land.rhs51.us, %land.lhs.true.us, %while.cond44.us, %while.cond44, %land.lhs.true, %land.rhs51, %if.then154, %if.then161, %if.then189, %if.then198, %if.end156, %sw.bb184, %sw.bb193, %if.end147, %if.then135, %if.then139, %while.cond27.preheader, %while.cond.preheader, %if.end122, %if.end126, %if.end142
  %color_info.0.be = phi ptr [ %call112, %if.end122 ], [ null, %if.end126 ], [ %color_info.0272, %if.end142 ], [ %color_info.0272, %while.cond.preheader ], [ %color_info.0272, %while.cond27.preheader ], [ null, %if.then139 ], [ null, %if.then135 ], [ %color_info.0272, %if.end147 ], [ %color_info.0272, %sw.bb193 ], [ %color_info.0272, %sw.bb184 ], [ %color_info.0272, %if.end156 ], [ %color_info.0272, %if.then198 ], [ %color_info.0272, %if.then189 ], [ %color_info.0272, %if.then161 ], [ %color_info.0272, %if.then154 ], [ %color_info.0272, %land.rhs51 ], [ %color_info.0272, %land.lhs.true ], [ %color_info.0272, %while.cond44 ], [ %color_info.0272, %while.cond44.us ], [ %color_info.0272, %land.lhs.true.us ], [ %color_info.0272, %land.rhs51.us ], [ %color_info.0272, %land.rhs ], [ %color_info.0272, %while.body ], [ %color_info.0272, %land.rhs31 ], [ %color_info.0272, %while.body36 ]
  %status.0.be = phi i32 [ %status.0273, %if.end122 ], [ %status.0273, %if.end126 ], [ %status.0273, %if.end142 ], [ %status.0273, %while.cond.preheader ], [ %status.0273, %while.cond27.preheader ], [ 0, %if.then139 ], [ %call136, %if.then135 ], [ %status.0273, %if.end147 ], [ %status.0273, %sw.bb193 ], [ %status.0273, %sw.bb184 ], [ %status.0273, %if.end156 ], [ %status.0273, %if.then198 ], [ %status.0273, %if.then189 ], [ %status.0273, %if.then161 ], [ %status.0273, %if.then154 ], [ %status.1.ph.ph266, %land.rhs51 ], [ %status.1.ph.ph266, %land.lhs.true ], [ %status.1.ph.ph266, %while.cond44 ], [ %status.0273, %while.cond44.us ], [ %status.0273, %land.lhs.true.us ], [ %status.0273, %land.rhs51.us ], [ %status.0273, %land.rhs ], [ %status.0273, %while.body ], [ %status.0273, %land.rhs31 ], [ %status.0273, %while.body36 ]
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !3580, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata ptr %color_info.0.be, metadata !3578, metadata !DIExpression()), !dbg !3604
  %7 = load ptr, ptr %q, align 8, !dbg !3639, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %7, metadata !3579, metadata !DIExpression()), !dbg !3604
  %8 = load i8, ptr %7, align 1, !dbg !3614, !tbaa !1174
  %cmp2.not = icmp eq i8 %8, 0, !dbg !3615
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !3616, !llvm.loop !3640

if.end21:                                         ; preds = %if.end8
  %call23 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.44, i64 noundef 4) #16, !dbg !3642
  %cmp24 = icmp eq i32 %call23, 0, !dbg !3644
  br i1 %cmp24, label %while.cond27.preheader, label %if.end38, !dbg !3645

while.cond27.preheader:                           ; preds = %if.end21
  %9 = load ptr, ptr %q, align 8, !dbg !3646, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %9, metadata !3579, metadata !DIExpression()), !dbg !3604
  %call28267 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.45, i64 noundef 2) #16, !dbg !3648
  %cmp29.not268 = icmp eq i32 %call28267, 0, !dbg !3649
  br i1 %cmp29.not268, label %for.cond.backedge, label %land.rhs31, !dbg !3650

land.rhs31:                                       ; preds = %while.cond27.preheader, %while.body36
  %10 = load ptr, ptr %q, align 8, !dbg !3651, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %10, metadata !3579, metadata !DIExpression()), !dbg !3604
  %11 = load i8, ptr %10, align 1, !dbg !3652, !tbaa !1174
  %cmp33.not = icmp eq i8 %11, 0, !dbg !3653
  br i1 %cmp33.not, label %for.cond.backedge, label %while.body36, !dbg !3654

while.body36:                                     ; preds = %land.rhs31
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #16, !dbg !3655
  %12 = load ptr, ptr %q, align 8, !dbg !3646, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %12, metadata !3579, metadata !DIExpression()), !dbg !3604
  %call28 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.45, i64 noundef 2) #16, !dbg !3648
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !3649
  br i1 %cmp29.not, label %for.cond.backedge, label %land.rhs31, !dbg !3650, !llvm.loop !3656

if.end38:                                         ; preds = %if.end21
  %call40 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.46) #16, !dbg !3658
  %cmp41 = icmp eq i32 %call40, 0, !dbg !3659
  br i1 %cmp41, label %while.cond44thread-pre-split.preheader, label %if.end106, !dbg !3660

while.cond44thread-pre-split.preheader:           ; preds = %if.end38
  br i1 %cmp69, label %while.cond44thread-pre-split.us, label %while.cond44thread-pre-split.outer.split, !dbg !3661

while.cond44thread-pre-split.us:                  ; preds = %while.cond44thread-pre-split.preheader, %while.cond44thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !3662, !tbaa !1174
  br label %while.cond44.us, !dbg !3662

while.cond44.us:                                  ; preds = %while.body56.us, %while.cond44thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond44thread-pre-split.us ], [ %18, %while.body56.us ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %status.0273, metadata !3580, metadata !DIExpression()), !dbg !3604
  %cmp46.not.us = icmp eq i8 %13, 47, !dbg !3663
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !3664

land.lhs.true.us:                                 ; preds = %while.cond44.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !3665, !tbaa !1174
  %cmp49.not.us = icmp eq i8 %14, 62, !dbg !3666
  br i1 %cmp49.not.us, label %for.cond.backedge, label %land.rhs51.us, !dbg !3667

land.rhs51.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !3668, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %15, metadata !3579, metadata !DIExpression()), !dbg !3604
  %16 = load i8, ptr %15, align 1, !dbg !3669, !tbaa !1174
  %cmp53.not.us = icmp eq i8 %16, 0, !dbg !3670
  br i1 %cmp53.not.us, label %for.cond.backedge, label %while.body56.us, !dbg !3671

while.body56.us:                                  ; preds = %land.rhs51.us
  %call58.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #16, !dbg !3672
  %17 = load ptr, ptr %q, align 8, !dbg !3673, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3674
  %18 = load i8, ptr %call1, align 1, !dbg !3675, !tbaa !1174
  %cmp60.not.us = icmp eq i8 %18, 61, !dbg !3677
  br i1 %cmp60.not.us, label %if.end63.us, label %while.cond44.us, !dbg !3678, !llvm.loop !3679

if.end63.us:                                      ; preds = %while.body56.us
  %19 = load ptr, ptr %q, align 8, !dbg !3681, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3682
  %call65.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.47) #16, !dbg !3683
  %cmp66.us = icmp eq i32 %call65.us, 0, !dbg !3684
  br i1 %cmp66.us, label %if.then71.us, label %while.cond44thread-pre-split.us.backedge, !dbg !3685

if.then71.us:                                     ; preds = %if.end63.us
  %call72.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2225, i32 noundef 495, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.4, ptr noundef nonnull %call1) #16, !dbg !3686
  br label %while.cond44thread-pre-split.us.backedge, !dbg !3687

while.cond44thread-pre-split.us.backedge:         ; preds = %if.then71.us, %if.end63.us
  br label %while.cond44thread-pre-split.us, !dbg !3662, !llvm.loop !3679

while.cond44thread-pre-split.outer.split:         ; preds = %while.cond44thread-pre-split.preheader, %if.end102
  %status.1.ph.ph266 = phi i32 [ %status.2, %if.end102 ], [ %status.0273, %while.cond44thread-pre-split.preheader ]
  br label %while.cond44thread-pre-split, !dbg !3671

while.cond44thread-pre-split:                     ; preds = %if.end63, %while.cond44thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !3662, !tbaa !1174
  br label %while.cond44, !dbg !3662

while.cond44:                                     ; preds = %while.cond44thread-pre-split, %while.body56
  %20 = phi i8 [ %.pr, %while.cond44thread-pre-split ], [ %25, %while.body56 ], !dbg !3662
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph266, metadata !3580, metadata !DIExpression()), !dbg !3604
  %cmp46.not = icmp eq i8 %20, 47, !dbg !3663
  br i1 %cmp46.not, label %for.cond.backedge, label %land.lhs.true, !dbg !3664

land.lhs.true:                                    ; preds = %while.cond44
  %21 = load i8, ptr %add.ptr, align 1, !dbg !3665, !tbaa !1174
  %cmp49.not = icmp eq i8 %21, 62, !dbg !3666
  br i1 %cmp49.not, label %for.cond.backedge, label %land.rhs51, !dbg !3667

land.rhs51:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !3668, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %22, metadata !3579, metadata !DIExpression()), !dbg !3604
  %23 = load i8, ptr %22, align 1, !dbg !3669, !tbaa !1174
  %cmp53.not = icmp eq i8 %23, 0, !dbg !3670
  br i1 %cmp53.not, label %for.cond.backedge, label %while.body56, !dbg !3671

while.body56:                                     ; preds = %land.rhs51
  %call58 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #16, !dbg !3672
  %24 = load ptr, ptr %q, align 8, !dbg !3673, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3674
  %25 = load i8, ptr %call1, align 1, !dbg !3675, !tbaa !1174
  %cmp60.not = icmp eq i8 %25, 61, !dbg !3677
  br i1 %cmp60.not, label %if.end63, label %while.cond44, !dbg !3678, !llvm.loop !3679

if.end63:                                         ; preds = %while.body56
  %26 = load ptr, ptr %q, align 8, !dbg !3681, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3682
  %call65 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.47) #16, !dbg !3683
  %cmp66 = icmp eq i32 %call65, 0, !dbg !3684
  br i1 %cmp66, label %if.then68, label %while.cond44thread-pre-split, !dbg !3685, !llvm.loop !3679

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #16, !dbg !3688
  call void @llvm.dbg.declare(metadata ptr %path, metadata !3581, metadata !DIExpression()), !dbg !3689
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #16, !dbg !3690
  %27 = load i8, ptr %path, align 16, !dbg !3691, !tbaa !1174
  %cmp77.not = icmp eq i8 %27, 0, !dbg !3693
  br i1 %cmp77.not, label %if.end82, label %if.then79, !dbg !3694

if.then79:                                        ; preds = %if.then68
  %call81 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.49, i64 noundef 4096) #16, !dbg !3695
  br label %if.end82, !dbg !3696

if.end82:                                         ; preds = %if.then79, %if.then68
  %28 = load i8, ptr %call1, align 1, !dbg !3697, !tbaa !1174
  %cmp85 = icmp eq i8 %28, 47, !dbg !3699
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !3700

if.then87:                                        ; preds = %if.end82
  %call89 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #16, !dbg !3701
  br label %if.end93, !dbg !3702

if.else90:                                        ; preds = %if.end82
  %call92 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #16, !dbg !3703
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.then87
  %call95 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #16, !dbg !3704
  call void @llvm.dbg.value(metadata ptr %call95, metadata !3592, metadata !DIExpression()), !dbg !3705
  %cmp96.not = icmp eq ptr %call95, null, !dbg !3706
  br i1 %cmp96.not, label %if.end102, label %if.then98, !dbg !3708

if.then98:                                        ; preds = %if.end93
  %call100 = call fastcc i32 @LoadColorCache(ptr noundef %color_cache, ptr noundef nonnull %call95, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !3709
  %and = and i32 %call100, %status.1.ph.ph266, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %and, metadata !3580, metadata !DIExpression()), !dbg !3604
  %call101 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call95) #16, !dbg !3712
  call void @llvm.dbg.value(metadata ptr %call101, metadata !3592, metadata !DIExpression()), !dbg !3705
  br label %if.end102, !dbg !3713

if.end102:                                        ; preds = %if.then98, %if.end93
  %status.2 = phi i32 [ %and, %if.then98 ], [ %status.1.ph.ph266, %if.end93 ], !dbg !3604
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !3580, metadata !DIExpression()), !dbg !3604
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #16, !dbg !3714
  br label %while.cond44thread-pre-split.outer.split, !dbg !3661, !llvm.loop !3679

if.end106:                                        ; preds = %if.end38
  %call108 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.50) #16, !dbg !3715
  %cmp109 = icmp eq i32 %call108, 0, !dbg !3716
  br i1 %cmp109, label %if.then111, label %if.end126, !dbg !3717

if.then111:                                       ; preds = %if.end106
  %call112 = call ptr @AcquireMagickMemory(i64 noundef 112) #19, !dbg !3718
  call void @llvm.dbg.value(metadata ptr %call112, metadata !3578, metadata !DIExpression()), !dbg !3604
  %cmp113 = icmp eq ptr %call112, null, !dbg !3719
  br i1 %cmp113, label %if.then115, label %if.end122, !dbg !3720

if.then115:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception116) #16, !dbg !3721
  call void @llvm.dbg.declare(metadata ptr %exception116, metadata !3598, metadata !DIExpression()), !dbg !3721
  call void @GetExceptionInfo(ptr noundef nonnull %exception116) #16, !dbg !3721
  %call117 = tail call ptr @__errno_location() #17, !dbg !3721
  %29 = load i32, ptr %call117, align 4, !dbg !3721, !tbaa !1070
  %call118 = call ptr @GetExceptionMessage(i32 noundef %29) #16, !dbg !3721
  call void @llvm.dbg.value(metadata ptr %call118, metadata !3593, metadata !DIExpression()), !dbg !3722
  %call119 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception116, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2260, i32 noundef 700, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %call118) #16, !dbg !3721
  %call120 = call ptr @DestroyString(ptr noundef %call118) #16, !dbg !3721
  call void @llvm.dbg.value(metadata ptr %call120, metadata !3593, metadata !DIExpression()), !dbg !3722
  call void @CatchException(ptr noundef nonnull %exception116) #16, !dbg !3721
  %call121 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception116) #16, !dbg !3721
  call void @MagickCoreTerminus() #16, !dbg !3721
  call void @_exit(i32 noundef 1) #18, !dbg !3721
  unreachable, !dbg !3721

if.end122:                                        ; preds = %if.then111
  %call123 = call ptr @ResetMagickMemory(ptr noundef nonnull %call112, i32 noundef 0, i64 noundef 112) #16, !dbg !3723
  %call124 = call ptr @ConstantString(ptr noundef %filename) #16, !dbg !3724
  store ptr %call124, ptr %call112, align 8, !dbg !3725, !tbaa !985
  %exempt = getelementptr inbounds %struct._ColorInfo, ptr %call112, i64 0, i32 4, !dbg !3726
  store i32 0, ptr %exempt, align 8, !dbg !3727, !tbaa !974
  %signature = getelementptr inbounds %struct._ColorInfo, ptr %call112, i64 0, i32 8, !dbg !3728
  store i64 2880220587, ptr %signature, align 8, !dbg !3729, !tbaa !1156
  br label %for.cond.backedge, !dbg !3730

if.end126:                                        ; preds = %if.end106
  %cmp127 = icmp eq ptr %color_info.0272, null, !dbg !3731
  br i1 %cmp127, label %for.cond.backedge, label %if.end130, !dbg !3733

if.end130:                                        ; preds = %if.end126
  %call132 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.51) #16, !dbg !3734
  %cmp133 = icmp eq i32 %call132, 0, !dbg !3736
  br i1 %cmp133, label %if.then135, label %if.end142, !dbg !3737

if.then135:                                       ; preds = %if.end130
  %call136 = call i32 @AppendValueToLinkedList(ptr noundef %color_cache, ptr noundef nonnull %color_info.0272) #16, !dbg !3738
  call void @llvm.dbg.value(metadata i32 %call136, metadata !3580, metadata !DIExpression()), !dbg !3604
  %cmp137 = icmp eq i32 %call136, 0, !dbg !3740
  br i1 %cmp137, label %if.then139, label %for.cond.backedge, !dbg !3742

if.then139:                                       ; preds = %if.then135
  %name = getelementptr inbounds %struct._ColorInfo, ptr %color_info.0272, i64 0, i32 1, !dbg !3743
  %30 = load ptr, ptr %name, align 8, !dbg !3743, !tbaa !993
  %call140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 2273, i32 noundef 400, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.4, ptr noundef %30) #16, !dbg !3744
  br label %for.cond.backedge, !dbg !3745

if.end142:                                        ; preds = %if.end130
  %31 = load ptr, ptr %q, align 8, !dbg !3746, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %31, metadata !3579, metadata !DIExpression()), !dbg !3604
  call void @GetMagickToken(ptr noundef %31, ptr noundef null, ptr noundef nonnull %call1) #16, !dbg !3747
  %32 = load i8, ptr %call1, align 1, !dbg !3748, !tbaa !1174
  %cmp144.not = icmp eq i8 %32, 61, !dbg !3750
  br i1 %cmp144.not, label %if.end147, label %for.cond.backedge, !dbg !3751

if.end147:                                        ; preds = %if.end142
  %33 = load ptr, ptr %q, align 8, !dbg !3752, !tbaa !920
  call void @llvm.dbg.value(metadata ptr %q, metadata !3579, metadata !DIExpression(DW_OP_deref)), !dbg !3604
  call void @GetMagickToken(ptr noundef %33, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3753
  %34 = load ptr, ptr %q, align 8, !dbg !3754, !tbaa !920
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #16, !dbg !3755
  %35 = load i8, ptr %keyword, align 16, !dbg !3756, !tbaa !1174
  %conv149 = sext i8 %35 to i32, !dbg !3756
  switch i32 %conv149, label %for.cond.backedge [
    i32 67, label %sw.bb
    i32 99, label %sw.bb
    i32 78, label %sw.bb184
    i32 110, label %sw.bb184
    i32 83, label %sw.bb193
    i32 115, label %sw.bb193
  ], !dbg !3757

sw.bb:                                            ; preds = %if.end147, %if.end147
  %call151 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.52) #16, !dbg !3758
  %cmp152 = icmp eq i32 %call151, 0, !dbg !3760
  br i1 %cmp152, label %if.then154, label %if.end156, !dbg !3761

if.then154:                                       ; preds = %sw.bb
  %color = getelementptr inbounds %struct._ColorInfo, ptr %color_info.0272, i64 0, i32 3, !dbg !3762
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3109, metadata !DIExpression()) #16, !dbg !3764
  call void @llvm.dbg.value(metadata ptr %color, metadata !3114, metadata !DIExpression()) #16, !dbg !3764
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3115, metadata !DIExpression()) #16, !dbg !3764
  %call.i = call i32 @QueryMagickColorCompliance(ptr noundef nonnull %call1, i32 noundef 2147483647, ptr noundef nonnull %color, ptr noundef %exception) #16, !dbg !3766
  br label %for.cond.backedge, !dbg !3767

if.end156:                                        ; preds = %sw.bb
  %call158 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.53) #16, !dbg !3768
  %cmp159 = icmp eq i32 %call158, 0, !dbg !3769
  br i1 %cmp159, label %if.then161, label %for.cond.backedge, !dbg !3770

if.then161:                                       ; preds = %if.end156
  %compliance162 = getelementptr inbounds %struct._ColorInfo, ptr %color_info.0272, i64 0, i32 2, !dbg !3771
  %36 = load i32, ptr %compliance162, align 8, !dbg !3771, !tbaa !1151
  call void @llvm.dbg.value(metadata i64 undef, metadata !3599, metadata !DIExpression()), !dbg !3772
  %call164 = call i32 @GlobExpression(ptr noundef nonnull %call1, ptr noundef nonnull @.str.54, i32 noundef 1) #16, !dbg !3773
  %cmp165.not = icmp ne i32 %call164, 0, !dbg !3775
  %or = zext i1 %cmp165.not to i32, !dbg !3776
  %spec.select = or i32 %36, %or, !dbg !3776
  %call169 = call i32 @GlobExpression(ptr noundef nonnull %call1, ptr noundef nonnull @.str.55, i32 noundef 1) #16, !dbg !3777
  %cmp170.not = icmp eq i32 %call169, 0, !dbg !3779
  %or173 = or i32 %spec.select, 2
  %spec.select262 = select i1 %cmp170.not, i32 %spec.select, i32 %or173, !dbg !3780
  %call175 = call i32 @GlobExpression(ptr noundef nonnull %call1, ptr noundef nonnull @.str.56, i32 noundef 1) #16, !dbg !3781
  %cmp176.not = icmp eq i32 %call175, 0, !dbg !3783
  %or179 = or i32 %spec.select262, 4
  %spec.select261 = select i1 %cmp176.not, i32 %spec.select262, i32 %or179, !dbg !3784
  store i32 %spec.select261, ptr %compliance162, align 8, !dbg !3785, !tbaa !1151
  br label %for.cond.backedge

sw.bb184:                                         ; preds = %if.end147, %if.end147
  %call186 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.57) #16, !dbg !3786
  %cmp187 = icmp eq i32 %call186, 0, !dbg !3789
  br i1 %cmp187, label %if.then189, label %for.cond.backedge, !dbg !3790

if.then189:                                       ; preds = %sw.bb184
  %call190 = call ptr @ConstantString(ptr noundef nonnull %call1) #16, !dbg !3791
  %name191 = getelementptr inbounds %struct._ColorInfo, ptr %color_info.0272, i64 0, i32 1, !dbg !3793
  store ptr %call190, ptr %name191, align 8, !dbg !3794, !tbaa !993
  br label %for.cond.backedge, !dbg !3795

sw.bb193:                                         ; preds = %if.end147, %if.end147
  %call195 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.58) #16, !dbg !3796
  %cmp196 = icmp eq i32 %call195, 0, !dbg !3799
  br i1 %cmp196, label %if.then198, label %for.cond.backedge, !dbg !3800

if.then198:                                       ; preds = %sw.bb193
  %call199 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #16, !dbg !3801
  %stealth = getelementptr inbounds %struct._ColorInfo, ptr %color_info.0272, i64 0, i32 5, !dbg !3803
  store i32 %call199, ptr %stealth, align 4, !dbg !3804, !tbaa !1478
  br label %for.cond.backedge, !dbg !3805

for.end:                                          ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0.be, %for.cond.backedge ], [ %status.0273, %for.body ], !dbg !3604
  %call201 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #16, !dbg !3806
  call void @llvm.dbg.value(metadata ptr %call201, metadata !3577, metadata !DIExpression()), !dbg !3604
  br label %cleanup, !dbg !3807

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 0, %entry ], !dbg !3604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #16, !dbg !3808
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #16, !dbg !3808
  ret i32 %retval.0, !dbg !3808
}

declare !dbg !3809 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare !dbg !3812 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

declare !dbg !3815 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare !dbg !3818 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #15

declare !dbg !3821 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3824 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3827 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3831 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !3835 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { hot nounwind }
attributes #22 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!907, !908, !909, !910, !911, !912}
!llvm.ident = !{!913}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "color_semaphore", scope: !2, file: !888, line: 789, type: !558, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !557, globals: !885, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/color.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "93582e7902575721988efc4eab97ca2a")
!4 = !{!5, !11, !20, !25, !62, !135, !150, !172, !197, !273, !298, !310, !318, !323, !358, !368, !374, !389, !460, !468, !474, !491, !505, !517, !545}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 28, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DIEnumerator(name: "UndefinedCompliance", value: 0)
!15 = !DIEnumerator(name: "NoCompliance", value: 0)
!16 = !DIEnumerator(name: "SVGCompliance", value: 1)
!17 = !DIEnumerator(name: "X11Compliance", value: 2)
!18 = !DIEnumerator(name: "XPMCompliance", value: 4)
!19 = !DIEnumerator(name: "AllCompliance", value: 2147483647)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "UndefinedClass", value: 0)
!23 = !DIEnumerator(name: "DirectClass", value: 1)
!24 = !DIEnumerator(name: "PseudoClass", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 25, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!28 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!29 = !DIEnumerator(name: "RGBColorspace", value: 1)
!30 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!31 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!32 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!33 = !DIEnumerator(name: "LabColorspace", value: 5)
!34 = !DIEnumerator(name: "XYZColorspace", value: 6)
!35 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!36 = !DIEnumerator(name: "YCCColorspace", value: 8)
!37 = !DIEnumerator(name: "YIQColorspace", value: 9)
!38 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!39 = !DIEnumerator(name: "YUVColorspace", value: 11)
!40 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!41 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!42 = !DIEnumerator(name: "HSBColorspace", value: 14)
!43 = !DIEnumerator(name: "HSLColorspace", value: 15)
!44 = !DIEnumerator(name: "HWBColorspace", value: 16)
!45 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!46 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!47 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!48 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!49 = !DIEnumerator(name: "LogColorspace", value: 21)
!50 = !DIEnumerator(name: "CMYColorspace", value: 22)
!51 = !DIEnumerator(name: "LuvColorspace", value: 23)
!52 = !DIEnumerator(name: "HCLColorspace", value: 24)
!53 = !DIEnumerator(name: "LCHColorspace", value: 25)
!54 = !DIEnumerator(name: "LMSColorspace", value: 26)
!55 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!56 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!57 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!58 = !DIEnumerator(name: "HSIColorspace", value: 30)
!59 = !DIEnumerator(name: "HSVColorspace", value: 31)
!60 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!61 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 28, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!65 = !DIEnumerator(name: "UndefinedException", value: 0)
!66 = !DIEnumerator(name: "WarningException", value: 300)
!67 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!68 = !DIEnumerator(name: "TypeWarning", value: 305)
!69 = !DIEnumerator(name: "OptionWarning", value: 310)
!70 = !DIEnumerator(name: "DelegateWarning", value: 315)
!71 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!72 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!73 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!74 = !DIEnumerator(name: "BlobWarning", value: 335)
!75 = !DIEnumerator(name: "StreamWarning", value: 340)
!76 = !DIEnumerator(name: "CacheWarning", value: 345)
!77 = !DIEnumerator(name: "CoderWarning", value: 350)
!78 = !DIEnumerator(name: "FilterWarning", value: 352)
!79 = !DIEnumerator(name: "ModuleWarning", value: 355)
!80 = !DIEnumerator(name: "DrawWarning", value: 360)
!81 = !DIEnumerator(name: "ImageWarning", value: 365)
!82 = !DIEnumerator(name: "WandWarning", value: 370)
!83 = !DIEnumerator(name: "RandomWarning", value: 375)
!84 = !DIEnumerator(name: "XServerWarning", value: 380)
!85 = !DIEnumerator(name: "MonitorWarning", value: 385)
!86 = !DIEnumerator(name: "RegistryWarning", value: 390)
!87 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!88 = !DIEnumerator(name: "PolicyWarning", value: 399)
!89 = !DIEnumerator(name: "ErrorException", value: 400)
!90 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!91 = !DIEnumerator(name: "TypeError", value: 405)
!92 = !DIEnumerator(name: "OptionError", value: 410)
!93 = !DIEnumerator(name: "DelegateError", value: 415)
!94 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!95 = !DIEnumerator(name: "CorruptImageError", value: 425)
!96 = !DIEnumerator(name: "FileOpenError", value: 430)
!97 = !DIEnumerator(name: "BlobError", value: 435)
!98 = !DIEnumerator(name: "StreamError", value: 440)
!99 = !DIEnumerator(name: "CacheError", value: 445)
!100 = !DIEnumerator(name: "CoderError", value: 450)
!101 = !DIEnumerator(name: "FilterError", value: 452)
!102 = !DIEnumerator(name: "ModuleError", value: 455)
!103 = !DIEnumerator(name: "DrawError", value: 460)
!104 = !DIEnumerator(name: "ImageError", value: 465)
!105 = !DIEnumerator(name: "WandError", value: 470)
!106 = !DIEnumerator(name: "RandomError", value: 475)
!107 = !DIEnumerator(name: "XServerError", value: 480)
!108 = !DIEnumerator(name: "MonitorError", value: 485)
!109 = !DIEnumerator(name: "RegistryError", value: 490)
!110 = !DIEnumerator(name: "ConfigureError", value: 495)
!111 = !DIEnumerator(name: "PolicyError", value: 499)
!112 = !DIEnumerator(name: "FatalErrorException", value: 700)
!113 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!114 = !DIEnumerator(name: "TypeFatalError", value: 705)
!115 = !DIEnumerator(name: "OptionFatalError", value: 710)
!116 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!117 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!118 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!119 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!120 = !DIEnumerator(name: "BlobFatalError", value: 735)
!121 = !DIEnumerator(name: "StreamFatalError", value: 740)
!122 = !DIEnumerator(name: "CacheFatalError", value: 745)
!123 = !DIEnumerator(name: "CoderFatalError", value: 750)
!124 = !DIEnumerator(name: "FilterFatalError", value: 752)
!125 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!126 = !DIEnumerator(name: "DrawFatalError", value: 760)
!127 = !DIEnumerator(name: "ImageFatalError", value: 765)
!128 = !DIEnumerator(name: "WandFatalError", value: 770)
!129 = !DIEnumerator(name: "RandomFatalError", value: 775)
!130 = !DIEnumerator(name: "XServerFatalError", value: 780)
!131 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!132 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!133 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!134 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !136, line: 46, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!138 = !DIEnumerator(name: "_ISupper", value: 256)
!139 = !DIEnumerator(name: "_ISlower", value: 512)
!140 = !DIEnumerator(name: "_ISalpha", value: 1024)
!141 = !DIEnumerator(name: "_ISdigit", value: 2048)
!142 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!143 = !DIEnumerator(name: "_ISspace", value: 8192)
!144 = !DIEnumerator(name: "_ISprint", value: 16384)
!145 = !DIEnumerator(name: "_ISgraph", value: 32768)
!146 = !DIEnumerator(name: "_ISblank", value: 1)
!147 = !DIEnumerator(name: "_IScntrl", value: 2)
!148 = !DIEnumerator(name: "_ISpunct", value: 4)
!149 = !DIEnumerator(name: "_ISalnum", value: 8)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171}
!152 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!153 = !DIEnumerator(name: "RedChannel", value: 1)
!154 = !DIEnumerator(name: "GrayChannel", value: 1)
!155 = !DIEnumerator(name: "CyanChannel", value: 1)
!156 = !DIEnumerator(name: "GreenChannel", value: 2)
!157 = !DIEnumerator(name: "MagentaChannel", value: 2)
!158 = !DIEnumerator(name: "BlueChannel", value: 4)
!159 = !DIEnumerator(name: "YellowChannel", value: 4)
!160 = !DIEnumerator(name: "AlphaChannel", value: 8)
!161 = !DIEnumerator(name: "OpacityChannel", value: 8)
!162 = !DIEnumerator(name: "MatteChannel", value: 8)
!163 = !DIEnumerator(name: "BlackChannel", value: 32)
!164 = !DIEnumerator(name: "IndexChannel", value: 32)
!165 = !DIEnumerator(name: "CompositeChannels", value: 47)
!166 = !DIEnumerator(name: "AllChannels", value: 134217727)
!167 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!168 = !DIEnumerator(name: "RGBChannels", value: 128)
!169 = !DIEnumerator(name: "GrayChannels", value: 128)
!170 = !DIEnumerator(name: "SyncChannels", value: 256)
!171 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !173, line: 34, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!175 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!176 = !DIEnumerator(name: "NoEvents", value: 0)
!177 = !DIEnumerator(name: "TraceEvent", value: 1)
!178 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!179 = !DIEnumerator(name: "BlobEvent", value: 4)
!180 = !DIEnumerator(name: "CacheEvent", value: 8)
!181 = !DIEnumerator(name: "CoderEvent", value: 16)
!182 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!183 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!184 = !DIEnumerator(name: "DrawEvent", value: 128)
!185 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!186 = !DIEnumerator(name: "ImageEvent", value: 512)
!187 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!188 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!189 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!190 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!191 = !DIEnumerator(name: "TransformEvent", value: 16384)
!192 = !DIEnumerator(name: "UserEvent", value: 36864)
!193 = !DIEnumerator(name: "WandEvent", value: 65536)
!194 = !DIEnumerator(name: "X11Event", value: 131072)
!195 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!196 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 25, baseType: !199, size: 32, elements: !200)
!198 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!199 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!201 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!202 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!203 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!204 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!205 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!206 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!207 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!208 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!209 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!210 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!211 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!212 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!213 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!214 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!215 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!216 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!217 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!218 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!219 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!220 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!221 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!222 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!223 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!224 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!225 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!226 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!227 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!228 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!229 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!230 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!231 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!232 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!233 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!234 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!235 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!236 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!237 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!238 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!239 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!240 = !DIEnumerator(name: "MagickListOptions", value: 38)
!241 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!242 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!243 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!244 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!245 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!246 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!247 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!248 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!249 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!250 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!251 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!252 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!253 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!254 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!255 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!256 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!257 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!258 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!259 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!260 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!261 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!262 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!263 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!264 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!265 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!266 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!267 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!268 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!269 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!270 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!271 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!272 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!273 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !274, line: 25, baseType: !7, size: 32, elements: !275)
!274 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!276 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!277 = !DIEnumerator(name: "NoCompression", value: 1)
!278 = !DIEnumerator(name: "BZipCompression", value: 2)
!279 = !DIEnumerator(name: "DXT1Compression", value: 3)
!280 = !DIEnumerator(name: "DXT3Compression", value: 4)
!281 = !DIEnumerator(name: "DXT5Compression", value: 5)
!282 = !DIEnumerator(name: "FaxCompression", value: 6)
!283 = !DIEnumerator(name: "Group4Compression", value: 7)
!284 = !DIEnumerator(name: "JPEGCompression", value: 8)
!285 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!286 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!287 = !DIEnumerator(name: "LZWCompression", value: 11)
!288 = !DIEnumerator(name: "RLECompression", value: 12)
!289 = !DIEnumerator(name: "ZipCompression", value: 13)
!290 = !DIEnumerator(name: "ZipSCompression", value: 14)
!291 = !DIEnumerator(name: "PizCompression", value: 15)
!292 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!293 = !DIEnumerator(name: "B44Compression", value: 17)
!294 = !DIEnumerator(name: "B44ACompression", value: 18)
!295 = !DIEnumerator(name: "LZMACompression", value: 19)
!296 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!297 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 75, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309}
!301 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!302 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!303 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!304 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!305 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!306 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!307 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!308 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!309 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!310 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !311, line: 42, baseType: !7, size: 32, elements: !312)
!311 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!312 = !{!313, !314, !315, !316, !317}
!313 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!314 = !DIEnumerator(name: "SaturationIntent", value: 1)
!315 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!316 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!317 = !DIEnumerator(name: "RelativeIntent", value: 4)
!318 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 88, baseType: !7, size: 32, elements: !319)
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!321 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!322 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !324, line: 32, baseType: !7, size: 32, elements: !325)
!324 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!326 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!327 = !DIEnumerator(name: "PointFilter", value: 1)
!328 = !DIEnumerator(name: "BoxFilter", value: 2)
!329 = !DIEnumerator(name: "TriangleFilter", value: 3)
!330 = !DIEnumerator(name: "HermiteFilter", value: 4)
!331 = !DIEnumerator(name: "HanningFilter", value: 5)
!332 = !DIEnumerator(name: "HammingFilter", value: 6)
!333 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!334 = !DIEnumerator(name: "GaussianFilter", value: 8)
!335 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!336 = !DIEnumerator(name: "CubicFilter", value: 10)
!337 = !DIEnumerator(name: "CatromFilter", value: 11)
!338 = !DIEnumerator(name: "MitchellFilter", value: 12)
!339 = !DIEnumerator(name: "JincFilter", value: 13)
!340 = !DIEnumerator(name: "SincFilter", value: 14)
!341 = !DIEnumerator(name: "SincFastFilter", value: 15)
!342 = !DIEnumerator(name: "KaiserFilter", value: 16)
!343 = !DIEnumerator(name: "WelshFilter", value: 17)
!344 = !DIEnumerator(name: "ParzenFilter", value: 18)
!345 = !DIEnumerator(name: "BohmanFilter", value: 19)
!346 = !DIEnumerator(name: "BartlettFilter", value: 20)
!347 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!348 = !DIEnumerator(name: "LanczosFilter", value: 22)
!349 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!350 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!351 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!352 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!353 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!354 = !DIEnumerator(name: "CosineFilter", value: 28)
!355 = !DIEnumerator(name: "SplineFilter", value: 29)
!356 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!357 = !DIEnumerator(name: "SentinelFilter", value: 31)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 63, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367}
!360 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!361 = !DIEnumerator(name: "NoInterlace", value: 1)
!362 = !DIEnumerator(name: "LineInterlace", value: 2)
!363 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!364 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!365 = !DIEnumerator(name: "GIFInterlace", value: 5)
!366 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!367 = !DIEnumerator(name: "PNGInterlace", value: 7)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 30, baseType: !7, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!370 = !{!371, !372, !373}
!371 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!372 = !DIEnumerator(name: "LSBEndian", value: 1)
!373 = !DIEnumerator(name: "MSBEndian", value: 2)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !375, line: 77, baseType: !7, size: 32, elements: !376)
!375 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!377 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!378 = !DIEnumerator(name: "ForgetGravity", value: 0)
!379 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!380 = !DIEnumerator(name: "NorthGravity", value: 2)
!381 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!382 = !DIEnumerator(name: "WestGravity", value: 4)
!383 = !DIEnumerator(name: "CenterGravity", value: 5)
!384 = !DIEnumerator(name: "EastGravity", value: 6)
!385 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!386 = !DIEnumerator(name: "SouthGravity", value: 8)
!387 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!388 = !DIEnumerator(name: "StaticGravity", value: 10)
!389 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !390, line: 25, baseType: !7, size: 32, elements: !391)
!390 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459}
!392 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!393 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!394 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!395 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!396 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!397 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!398 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!399 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!400 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!401 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!402 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!403 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!404 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!405 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!406 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!407 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!408 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!409 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!410 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!411 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!412 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!413 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!414 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!415 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!416 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!417 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!418 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!419 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!420 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!421 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!422 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!423 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!424 = !DIEnumerator(name: "InCompositeOp", value: 32)
!425 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!426 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!427 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!428 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!429 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!430 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!431 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!432 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!433 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!434 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!435 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!436 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!437 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!438 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!439 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!440 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!441 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!442 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!443 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!444 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!445 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!446 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!447 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!448 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!449 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!450 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!451 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!452 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!453 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!454 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!455 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!456 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!457 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!458 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!459 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!460 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !461, line: 25, baseType: !7, size: 32, elements: !462)
!461 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!462 = !{!463, !464, !465, !466, !467}
!463 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!464 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!465 = !DIEnumerator(name: "NoneDispose", value: 1)
!466 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!467 = !DIEnumerator(name: "PreviousDispose", value: 3)
!468 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !469, line: 25, baseType: !7, size: 32, elements: !470)
!469 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!470 = !{!471, !472, !473}
!471 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!472 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!473 = !DIEnumerator(name: "RunningTimerState", value: 2)
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !475, line: 31, baseType: !7, size: 32, elements: !476)
!475 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!477 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!478 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!479 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!480 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!481 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!482 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!483 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!484 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!485 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!486 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!487 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!488 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!489 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!490 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!491 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 47, baseType: !7, size: 32, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!493 = !DIEnumerator(name: "UndefinedType", value: 0)
!494 = !DIEnumerator(name: "BilevelType", value: 1)
!495 = !DIEnumerator(name: "GrayscaleType", value: 2)
!496 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!497 = !DIEnumerator(name: "PaletteType", value: 4)
!498 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!499 = !DIEnumerator(name: "TrueColorType", value: 6)
!500 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!501 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!502 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!503 = !DIEnumerator(name: "OptimizeType", value: 10)
!504 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!505 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !475, line: 67, baseType: !7, size: 32, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!507 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!508 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!509 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!510 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!511 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!512 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!513 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!514 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!515 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!516 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!517 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !375, line: 25, baseType: !7, size: 32, elements: !518)
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544}
!519 = !DIEnumerator(name: "NoValue", value: 0)
!520 = !DIEnumerator(name: "XValue", value: 1)
!521 = !DIEnumerator(name: "XiValue", value: 1)
!522 = !DIEnumerator(name: "YValue", value: 2)
!523 = !DIEnumerator(name: "PsiValue", value: 2)
!524 = !DIEnumerator(name: "WidthValue", value: 4)
!525 = !DIEnumerator(name: "RhoValue", value: 4)
!526 = !DIEnumerator(name: "HeightValue", value: 8)
!527 = !DIEnumerator(name: "SigmaValue", value: 8)
!528 = !DIEnumerator(name: "ChiValue", value: 16)
!529 = !DIEnumerator(name: "XiNegative", value: 32)
!530 = !DIEnumerator(name: "XNegative", value: 32)
!531 = !DIEnumerator(name: "PsiNegative", value: 64)
!532 = !DIEnumerator(name: "YNegative", value: 64)
!533 = !DIEnumerator(name: "ChiNegative", value: 128)
!534 = !DIEnumerator(name: "PercentValue", value: 4096)
!535 = !DIEnumerator(name: "AspectValue", value: 8192)
!536 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!537 = !DIEnumerator(name: "LessValue", value: 16384)
!538 = !DIEnumerator(name: "GreaterValue", value: 32768)
!539 = !DIEnumerator(name: "MinimumValue", value: 65536)
!540 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!541 = !DIEnumerator(name: "AreaValue", value: 131072)
!542 = !DIEnumerator(name: "DecimalValue", value: 262144)
!543 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!544 = !DIEnumerator(name: "AllValues", value: 2147483647)
!545 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !546, line: 25, baseType: !7, size: 32, elements: !547)
!546 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556}
!548 = !DIEnumerator(name: "UndefinedPath", value: 0)
!549 = !DIEnumerator(name: "MagickPath", value: 1)
!550 = !DIEnumerator(name: "RootPath", value: 2)
!551 = !DIEnumerator(name: "HeadPath", value: 3)
!552 = !DIEnumerator(name: "TailPath", value: 4)
!553 = !DIEnumerator(name: "BasePath", value: 5)
!554 = !DIEnumerator(name: "ExtensionPath", value: 6)
!555 = !DIEnumerator(name: "SubimagePath", value: 7)
!556 = !DIEnumerator(name: "CanonicalPath", value: 8)
!557 = !{!558, !562, !563, !567, !607, !199, !609, !610, !611, !593, !612, !589, !613, !591, !614, !573, !595, !615, !620, !626, !631, !685, !687, !585, !7, !872, !873, !577, !883, !629}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !560, line: 26, baseType: !561)
!560 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !560, line: 25, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !565, line: 34, baseType: !566)
!565 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !565, line: 33, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorInfo", file: !12, line: 60, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ColorInfo", file: !12, line: 38, size: 896, elements: !571)
!571 = !{!572, !575, !576, !578, !601, !602, !603, !605, !606}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !570, file: !12, line: 41, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !12, line: 42, baseType: !573, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "compliance", scope: !570, file: !12, line: 45, baseType: !577, size: 32, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "ComplianceType", file: !12, line: 36, baseType: !11)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !570, file: !12, line: 48, baseType: !579, size: 448, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !475, line: 127, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !475, line: 104, size: 448, elements: !581)
!581 = !{!582, !584, !586, !588, !590, !594, !597, !598, !599, !600}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !580, file: !475, line: 107, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !20)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !580, file: !475, line: 110, baseType: !585, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !26, line: 61, baseType: !25)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !580, file: !475, line: 113, baseType: !587, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !580, file: !475, line: 116, baseType: !589, size: 64, offset: 128)
!589 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !580, file: !475, line: 119, baseType: !591, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !592, line: 46, baseType: !593)
!592 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!593 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !580, file: !475, line: 122, baseType: !595, size: 32, offset: 256)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !6, line: 78, baseType: !596)
!596 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !580, file: !475, line: 123, baseType: !595, size: 32, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !580, file: !475, line: 124, baseType: !595, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !580, file: !475, line: 125, baseType: !595, size: 32, offset: 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !580, file: !475, line: 126, baseType: !595, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !570, file: !12, line: 51, baseType: !587, size: 32, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !570, file: !12, line: 52, baseType: !587, size: 32, offset: 672)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !570, file: !12, line: 55, baseType: !604, size: 64, offset: 704)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !12, line: 56, baseType: !604, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !570, file: !12, line: 59, baseType: !591, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!609 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!610 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !610)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !616, line: 77, baseType: !617)
!616 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !618, line: 193, baseType: !619)
!618 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!619 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !621, line: 26, baseType: !622)
!621 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{!587, !607, !625, !628, !562}
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !627)
!627 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !630)
!630 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !634, line: 7, baseType: !635)
!634 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !636, line: 49, size: 1728, elements: !637)
!636 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !653, !655, !656, !657, !659, !660, !662, !666, !669, !671, !674, !677, !678, !679, !680, !681}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !635, file: !636, line: 51, baseType: !199, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !635, file: !636, line: 54, baseType: !573, size: 64, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !635, file: !636, line: 55, baseType: !573, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !635, file: !636, line: 56, baseType: !573, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !635, file: !636, line: 57, baseType: !573, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !635, file: !636, line: 58, baseType: !573, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !635, file: !636, line: 59, baseType: !573, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !635, file: !636, line: 60, baseType: !573, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !635, file: !636, line: 61, baseType: !573, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !635, file: !636, line: 64, baseType: !573, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !635, file: !636, line: 65, baseType: !573, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !635, file: !636, line: 66, baseType: !573, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !635, file: !636, line: 68, baseType: !651, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !636, line: 36, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !635, file: !636, line: 70, baseType: !654, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !635, file: !636, line: 72, baseType: !199, size: 32, offset: 896)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !635, file: !636, line: 73, baseType: !199, size: 32, offset: 928)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !635, file: !636, line: 74, baseType: !658, size: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !618, line: 152, baseType: !619)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !635, file: !636, line: 77, baseType: !610, size: 16, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !635, file: !636, line: 78, baseType: !661, size: 8, offset: 1040)
!661 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !635, file: !636, line: 79, baseType: !663, size: 8, offset: 1048)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 8, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 1)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !635, file: !636, line: 81, baseType: !667, size: 64, offset: 1088)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !636, line: 43, baseType: null)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !635, file: !636, line: 89, baseType: !670, size: 64, offset: 1152)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !618, line: 153, baseType: !619)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !635, file: !636, line: 91, baseType: !672, size: 64, offset: 1216)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !636, line: 37, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !635, file: !636, line: 92, baseType: !675, size: 64, offset: 1280)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !636, line: 38, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !635, file: !636, line: 93, baseType: !654, size: 64, offset: 1344)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !635, file: !636, line: 94, baseType: !562, size: 64, offset: 1408)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !635, file: !636, line: 95, baseType: !591, size: 64, offset: 1472)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !635, file: !636, line: 96, baseType: !199, size: 32, offset: 1536)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !635, file: !636, line: 98, baseType: !682, size: 160, offset: 1568)
!682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 160, elements: !683)
!683 = !{!684}
!684 = !DISubrange(count: 20)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !475, line: 129, baseType: !612)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !299, line: 150, size: 105920, elements: !690)
!690 = !{!691, !692, !693, !695, !696, !698, !699, !700, !701, !702, !703, !704, !713, !714, !715, !716, !717, !731, !733, !734, !736, !737, !738, !739, !740, !741, !742, !750, !751, !752, !753, !754, !755, !757, !759, !761, !763, !765, !767, !769, !770, !771, !772, !773, !774, !775, !782, !797, !798, !799, !800, !801, !805, !809, !813, !814, !815, !816, !817, !830, !831, !833, !834, !843, !844, !846, !847, !848, !849, !850, !851, !853, !854, !855, !856, !857, !858, !859, !861, !862, !863, !864, !865, !869, !871}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !689, file: !299, line: 153, baseType: !583, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !689, file: !299, line: 156, baseType: !585, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !689, file: !299, line: 159, baseType: !694, size: 32, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !274, line: 49, baseType: !273)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !689, file: !299, line: 162, baseType: !591, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !689, file: !299, line: 165, baseType: !697, size: 32, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !299, line: 86, baseType: !298)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !689, file: !299, line: 168, baseType: !587, size: 32, offset: 224)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !689, file: !299, line: 169, baseType: !587, size: 32, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !689, file: !299, line: 172, baseType: !591, size: 64, offset: 320)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !689, file: !299, line: 173, baseType: !591, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !689, file: !299, line: 174, baseType: !591, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !689, file: !299, line: 175, baseType: !591, size: 64, offset: 512)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !689, file: !299, line: 178, baseType: !705, size: 64, offset: 576)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !475, line: 148, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !475, line: 131, size: 64, elements: !708)
!708 = !{!709, !710, !711, !712}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !707, file: !475, line: 143, baseType: !612, size: 16)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !707, file: !475, line: 144, baseType: !612, size: 16, offset: 16)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !707, file: !475, line: 145, baseType: !612, size: 16, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !707, file: !475, line: 146, baseType: !612, size: 16, offset: 48)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !689, file: !299, line: 179, baseType: !706, size: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !689, file: !299, line: 180, baseType: !706, size: 64, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !689, file: !299, line: 181, baseType: !706, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !689, file: !299, line: 184, baseType: !589, size: 64, offset: 832)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !689, file: !299, line: 187, baseType: !718, size: 768, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !299, line: 128, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !299, line: 121, size: 768, elements: !720)
!720 = !{!721, !728, !729, !730}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !719, file: !299, line: 124, baseType: !722, size: 192)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !299, line: 101, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !299, line: 95, size: 192, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !723, file: !299, line: 98, baseType: !589, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !723, file: !299, line: 99, baseType: !589, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !723, file: !299, line: 100, baseType: !589, size: 64, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !719, file: !299, line: 125, baseType: !722, size: 192, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !719, file: !299, line: 126, baseType: !722, size: 192, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !719, file: !299, line: 127, baseType: !722, size: 192, offset: 576)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !689, file: !299, line: 190, baseType: !732, size: 32, offset: 1664)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !311, line: 49, baseType: !310)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !689, file: !299, line: 193, baseType: !562, size: 64, offset: 1728)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !689, file: !299, line: 196, baseType: !735, size: 32, offset: 1792)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !299, line: 93, baseType: !318)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !689, file: !299, line: 199, baseType: !573, size: 64, offset: 1856)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !689, file: !299, line: 200, baseType: !573, size: 64, offset: 1920)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !689, file: !299, line: 201, baseType: !573, size: 64, offset: 1984)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !689, file: !299, line: 204, baseType: !615, size: 64, offset: 2048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !689, file: !299, line: 207, baseType: !589, size: 64, offset: 2112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !689, file: !299, line: 208, baseType: !589, size: 64, offset: 2176)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !689, file: !299, line: 211, baseType: !743, size: 256, offset: 2240)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !375, line: 130, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !375, line: 121, size: 256, elements: !745)
!745 = !{!746, !747, !748, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !744, file: !375, line: 124, baseType: !591, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !744, file: !375, line: 125, baseType: !591, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !744, file: !375, line: 128, baseType: !615, size: 64, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !744, file: !375, line: 129, baseType: !615, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !689, file: !299, line: 212, baseType: !743, size: 256, offset: 2496)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !689, file: !299, line: 213, baseType: !743, size: 256, offset: 2752)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !689, file: !299, line: 216, baseType: !589, size: 64, offset: 3008)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !689, file: !299, line: 217, baseType: !589, size: 64, offset: 3072)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !689, file: !299, line: 218, baseType: !589, size: 64, offset: 3136)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !689, file: !299, line: 221, baseType: !756, size: 32, offset: 3200)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !324, line: 66, baseType: !323)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !689, file: !299, line: 224, baseType: !758, size: 32, offset: 3232)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !299, line: 73, baseType: !358)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !689, file: !299, line: 227, baseType: !760, size: 32, offset: 3264)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !369, line: 35, baseType: !368)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !689, file: !299, line: 230, baseType: !762, size: 32, offset: 3296)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !375, line: 91, baseType: !374)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !689, file: !299, line: 233, baseType: !764, size: 32, offset: 3328)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !390, line: 99, baseType: !389)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !689, file: !299, line: 236, baseType: !766, size: 32, offset: 3360)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !461, line: 32, baseType: !460)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !689, file: !299, line: 239, baseType: !768, size: 64, offset: 3392)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !689, file: !299, line: 242, baseType: !591, size: 64, offset: 3456)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !689, file: !299, line: 243, baseType: !591, size: 64, offset: 3520)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !689, file: !299, line: 246, baseType: !615, size: 64, offset: 3584)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !689, file: !299, line: 249, baseType: !591, size: 64, offset: 3648)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !689, file: !299, line: 250, baseType: !591, size: 64, offset: 3712)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !689, file: !299, line: 253, baseType: !615, size: 64, offset: 3776)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !689, file: !299, line: 256, baseType: !776, size: 192, offset: 3840)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !12, line: 68, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !12, line: 62, size: 192, elements: !778)
!778 = !{!779, !780, !781}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !777, file: !12, line: 65, baseType: !589, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !777, file: !12, line: 66, baseType: !589, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !777, file: !12, line: 67, baseType: !589, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !689, file: !299, line: 259, baseType: !783, size: 512, offset: 4032)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !469, line: 51, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !469, line: 40, size: 512, elements: !785)
!785 = !{!786, !793, !794, !796}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !784, file: !469, line: 43, baseType: !787, size: 192)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !469, line: 38, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !469, line: 32, size: 192, elements: !789)
!789 = !{!790, !791, !792}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !788, file: !469, line: 35, baseType: !589, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !788, file: !469, line: 36, baseType: !589, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !788, file: !469, line: 37, baseType: !589, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !784, file: !469, line: 44, baseType: !787, size: 192, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !784, file: !469, line: 47, baseType: !795, size: 32, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !469, line: 30, baseType: !468)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !784, file: !469, line: 50, baseType: !591, size: 64, offset: 448)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !689, file: !299, line: 262, baseType: !620, size: 64, offset: 4544)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !689, file: !299, line: 265, baseType: !562, size: 64, offset: 4608)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !689, file: !299, line: 266, baseType: !562, size: 64, offset: 4672)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !689, file: !299, line: 267, baseType: !562, size: 64, offset: 4736)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !689, file: !299, line: 270, baseType: !802, size: 64, offset: 4800)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !274, line: 52, baseType: !804)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !274, line: 51, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !689, file: !299, line: 273, baseType: !806, size: 64, offset: 4864)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !808)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !689, file: !299, line: 276, baseType: !810, size: 32768, offset: 4928)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 32768, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 4096)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !689, file: !299, line: 277, baseType: !810, size: 32768, offset: 37696)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !689, file: !299, line: 278, baseType: !810, size: 32768, offset: 70464)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !689, file: !299, line: 281, baseType: !591, size: 64, offset: 103232)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !689, file: !299, line: 282, baseType: !591, size: 64, offset: 103296)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !689, file: !299, line: 285, baseType: !818, size: 448, offset: 103360)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !63, line: 102, size: 448, elements: !820)
!820 = !{!821, !823, !824, !825, !826, !827, !828, !829}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !819, file: !63, line: 105, baseType: !822, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !63, line: 100, baseType: !62)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !819, file: !63, line: 108, baseType: !199, size: 32, offset: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !819, file: !63, line: 111, baseType: !573, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !819, file: !63, line: 112, baseType: !573, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !819, file: !63, line: 115, baseType: !562, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !819, file: !63, line: 118, baseType: !587, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !819, file: !63, line: 121, baseType: !558, size: 64, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !819, file: !63, line: 124, baseType: !591, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !689, file: !299, line: 288, baseType: !587, size: 32, offset: 103808)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !299, line: 291, baseType: !832, size: 64, offset: 103872)
!832 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !615)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !689, file: !299, line: 294, baseType: !558, size: 64, offset: 103936)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !689, file: !299, line: 297, baseType: !835, size: 256, offset: 104000)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !311, line: 40, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !311, line: 27, size: 256, elements: !837)
!837 = !{!838, !839, !840, !842}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !836, file: !311, line: 30, baseType: !573, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !836, file: !311, line: 33, baseType: !591, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !836, file: !311, line: 36, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !836, file: !311, line: 39, baseType: !591, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !689, file: !299, line: 298, baseType: !835, size: 256, offset: 104256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !689, file: !299, line: 299, baseType: !845, size: 64, offset: 104512)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !689, file: !299, line: 302, baseType: !591, size: 64, offset: 104576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !689, file: !299, line: 305, baseType: !591, size: 64, offset: 104640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !689, file: !299, line: 308, baseType: !768, size: 64, offset: 104704)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !689, file: !299, line: 309, baseType: !768, size: 64, offset: 104768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !689, file: !299, line: 310, baseType: !768, size: 64, offset: 104832)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !689, file: !299, line: 313, baseType: !852, size: 32, offset: 104896)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !475, line: 47, baseType: !474)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !689, file: !299, line: 316, baseType: !587, size: 32, offset: 104928)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !689, file: !299, line: 319, baseType: !706, size: 64, offset: 104960)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !689, file: !299, line: 322, baseType: !768, size: 64, offset: 105024)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !689, file: !299, line: 325, baseType: !743, size: 256, offset: 105088)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !689, file: !299, line: 328, baseType: !562, size: 64, offset: 105344)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !689, file: !299, line: 329, baseType: !562, size: 64, offset: 105408)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !299, line: 332, baseType: !860, size: 32, offset: 105472)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !299, line: 61, baseType: !491)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !689, file: !299, line: 335, baseType: !587, size: 32, offset: 105504)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !689, file: !299, line: 338, baseType: !629, size: 64, offset: 105536)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !689, file: !299, line: 341, baseType: !587, size: 32, offset: 105600)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !689, file: !299, line: 344, baseType: !591, size: 64, offset: 105664)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !689, file: !299, line: 347, baseType: !866, size: 64, offset: 105728)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !867, line: 7, baseType: !868)
!867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !618, line: 160, baseType: !619)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !689, file: !299, line: 350, baseType: !870, size: 32, offset: 105792)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !475, line: 79, baseType: !505)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !689, file: !299, line: 353, baseType: !591, size: 64, offset: 105856)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !876, line: 40, baseType: !877)
!876 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !876, line: 29, size: 32960, elements: !878)
!878 = !{!879, !880, !881, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !877, file: !876, line: 32, baseType: !810, size: 32768)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !877, file: !876, line: 35, baseType: !841, size: 64, offset: 32768)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !877, file: !876, line: 38, baseType: !591, size: 64, offset: 32832)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !877, file: !876, line: 39, baseType: !591, size: 64, offset: 32896)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!885 = !{!0, !886, !889}
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(name: "color_cache", scope: !2, file: !888, line: 786, type: !563, isLocal: true, isDefinition: true)
!888 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "93582e7902575721988efc4eab97ca2a")
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "ColorMap", scope: !2, file: !888, line: 100, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 130176, elements: !905)
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorMapInfo", file: !888, line: 94, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ColorMapInfo", file: !888, line: 79, size: 192, elements: !895)
!895 = !{!896, !897, !899, !900, !901, !903}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !894, file: !888, line: 82, baseType: !607, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !894, file: !888, line: 85, baseType: !898, size: 8, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !894, file: !888, line: 86, baseType: !898, size: 8, offset: 72)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !894, file: !888, line: 87, baseType: !898, size: 8, offset: 80)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !894, file: !888, line: 90, baseType: !902, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "compliance", scope: !894, file: !888, line: 93, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!905 = !{!906}
!906 = !DISubrange(count: 678)
!907 = !{i32 7, !"Dwarf Version", i32 5}
!908 = !{i32 2, !"Debug Info Version", i32 3}
!909 = !{i32 1, !"wchar_size", i32 4}
!910 = !{i32 7, !"PIC Level", i32 2}
!911 = !{i32 7, !"PIE Level", i32 2}
!912 = !{i32 7, !"uwtable", i32 2}
!913 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!914 = distinct !DISubprogram(name: "ColorComponentGenesis", scope: !888, file: !888, line: 917, type: !915, scopeLine: 918, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{!587}
!917 = !{}
!918 = !DILocation(line: 919, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !888, line: 919, column: 7)
!920 = !{!921, !921, i64 0}
!921 = !{!"any pointer", !922, i64 0}
!922 = !{!"omnipotent char", !923, i64 0}
!923 = !{!"Simple C/C++ TBAA"}
!924 = !DILocation(line: 919, column: 23, scope: !919)
!925 = !DILocation(line: 919, column: 7, scope: !914)
!926 = !DILocation(line: 920, column: 21, scope: !919)
!927 = !DILocation(line: 920, column: 20, scope: !919)
!928 = !DILocation(line: 920, column: 5, scope: !919)
!929 = !DILocation(line: 921, column: 3, scope: !914)
!930 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !560, file: !560, line: 32, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!931 = !DISubroutineType(types: !932)
!932 = !{!558}
!933 = distinct !DISubprogram(name: "ColorComponentTerminus", scope: !888, file: !888, line: 960, type: !934, scopeLine: 961, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!934 = !DISubroutineType(types: !935)
!935 = !{null}
!936 = !DILocation(line: 962, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !933, file: !888, line: 962, column: 7)
!938 = !DILocation(line: 962, column: 23, scope: !937)
!939 = !DILocation(line: 962, column: 7, scope: !933)
!940 = !DILocation(line: 963, column: 5, scope: !937)
!941 = !DILocation(line: 964, column: 21, scope: !933)
!942 = !DILocation(line: 964, column: 3, scope: !933)
!943 = !DILocation(line: 965, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !933, file: !888, line: 965, column: 7)
!945 = !DILocation(line: 965, column: 19, scope: !944)
!946 = !DILocation(line: 965, column: 7, scope: !933)
!947 = !DILocation(line: 966, column: 17, scope: !944)
!948 = !DILocation(line: 966, column: 16, scope: !944)
!949 = !DILocation(line: 966, column: 5, scope: !944)
!950 = !DILocation(line: 967, column: 23, scope: !933)
!951 = !DILocation(line: 967, column: 3, scope: !933)
!952 = !DILocation(line: 968, column: 3, scope: !933)
!953 = !DILocation(line: 969, column: 1, scope: !933)
!954 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !560, file: !560, line: 35, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!958 = !DISubprogram(name: "LockSemaphoreInfo", scope: !560, file: !560, line: 37, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !558}
!961 = !DISubprogram(name: "DestroyLinkedList", scope: !565, file: !565, line: 42, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!962 = !DISubroutineType(types: !963)
!963 = !{!563, !563, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!562, !562}
!967 = distinct !DISubprogram(name: "DestroyColorElement", scope: !888, file: !888, line: 943, type: !965, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !968)
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "color_info", arg: 1, scope: !967, file: !888, line: 943, type: !562)
!970 = !DILocalVariable(name: "p", scope: !967, file: !888, line: 946, type: !611)
!971 = !DILocation(line: 0, scope: !967)
!972 = !DILocation(line: 949, column: 10, scope: !973)
!973 = distinct !DILexicalBlock(scope: !967, file: !888, line: 949, column: 7)
!974 = !{!975, !922, i64 80}
!975 = !{!"_ColorInfo", !921, i64 0, !921, i64 8, !922, i64 16, !976, i64 24, !922, i64 80, !922, i64 84, !921, i64 88, !921, i64 96, !978, i64 104}
!976 = !{!"_MagickPixelPacket", !922, i64 0, !922, i64 4, !922, i64 8, !977, i64 16, !978, i64 24, !979, i64 32, !979, i64 36, !979, i64 40, !979, i64 44, !979, i64 48}
!977 = !{!"double", !922, i64 0}
!978 = !{!"long", !922, i64 0}
!979 = !{!"float", !922, i64 0}
!980 = !DILocation(line: 949, column: 18, scope: !973)
!981 = !DILocation(line: 949, column: 7, scope: !967)
!982 = !DILocation(line: 951, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !888, line: 951, column: 11)
!984 = distinct !DILexicalBlock(scope: !973, file: !888, line: 950, column: 5)
!985 = !{!975, !921, i64 0}
!986 = !DILocation(line: 951, column: 19, scope: !983)
!987 = !DILocation(line: 951, column: 11, scope: !984)
!988 = !DILocation(line: 952, column: 17, scope: !983)
!989 = !DILocation(line: 952, column: 16, scope: !983)
!990 = !DILocation(line: 952, column: 9, scope: !983)
!991 = !DILocation(line: 953, column: 14, scope: !992)
!992 = distinct !DILexicalBlock(scope: !984, file: !888, line: 953, column: 11)
!993 = !{!975, !921, i64 8}
!994 = !DILocation(line: 953, column: 19, scope: !992)
!995 = !DILocation(line: 953, column: 11, scope: !984)
!996 = !DILocation(line: 954, column: 17, scope: !992)
!997 = !DILocation(line: 954, column: 16, scope: !992)
!998 = !DILocation(line: 954, column: 9, scope: !992)
!999 = !DILocation(line: 956, column: 19, scope: !967)
!1000 = !DILocation(line: 957, column: 3, scope: !967)
!1001 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !560, file: !560, line: 39, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1002 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !560, file: !560, line: 36, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1003 = distinct !DISubprogram(name: "GetColorCompliance", scope: !888, file: !888, line: 999, type: !1004, scopeLine: 1001, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!567, !607, !1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!1008 = !{!1009, !1010, !1011, !1012, !1013, !1014}
!1009 = !DILocalVariable(name: "name", arg: 1, scope: !1003, file: !888, line: 999, type: !607)
!1010 = !DILocalVariable(name: "compliance", arg: 2, scope: !1003, file: !888, line: 1000, type: !1006)
!1011 = !DILocalVariable(name: "exception", arg: 3, scope: !1003, file: !888, line: 1000, type: !1007)
!1012 = !DILocalVariable(name: "colorname", scope: !1003, file: !888, line: 1003, type: !810)
!1013 = !DILocalVariable(name: "p", scope: !1003, file: !888, line: 1006, type: !567)
!1014 = !DILocalVariable(name: "q", scope: !1003, file: !888, line: 1009, type: !573)
!1015 = !DILocation(line: 0, scope: !1003)
!1016 = !DILocation(line: 1002, column: 3, scope: !1003)
!1017 = !DILocation(line: 1003, column: 5, scope: !1003)
!1018 = !DILocalVariable(name: "exception", arg: 1, scope: !1019, file: !888, line: 1607, type: !1007)
!1019 = distinct !DISubprogram(name: "IsColorCacheInstantiated", scope: !888, file: !888, line: 1607, type: !1020, scopeLine: 1608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!587, !1007}
!1022 = !{!1018}
!1023 = !DILocation(line: 0, scope: !1019, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 1012, column: 7, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1012, column: 7)
!1026 = !DILocation(line: 1609, column: 7, scope: !1027, inlinedAt: !1024)
!1027 = distinct !DILexicalBlock(scope: !1019, file: !888, line: 1609, column: 7)
!1028 = !DILocation(line: 1609, column: 19, scope: !1027, inlinedAt: !1024)
!1029 = !DILocation(line: 1609, column: 7, scope: !1019, inlinedAt: !1024)
!1030 = !DILocation(line: 1611, column: 11, scope: !1031, inlinedAt: !1024)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !888, line: 1611, column: 11)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !888, line: 1610, column: 5)
!1033 = !DILocation(line: 1611, column: 27, scope: !1031, inlinedAt: !1024)
!1034 = !DILocation(line: 1611, column: 11, scope: !1032, inlinedAt: !1024)
!1035 = !DILocation(line: 1612, column: 9, scope: !1031, inlinedAt: !1024)
!1036 = !DILocation(line: 1613, column: 25, scope: !1032, inlinedAt: !1024)
!1037 = !DILocation(line: 1613, column: 7, scope: !1032, inlinedAt: !1024)
!1038 = !DILocation(line: 1614, column: 11, scope: !1039, inlinedAt: !1024)
!1039 = distinct !DILexicalBlock(scope: !1032, file: !888, line: 1614, column: 11)
!1040 = !DILocation(line: 1614, column: 23, scope: !1039, inlinedAt: !1024)
!1041 = !DILocation(line: 1614, column: 11, scope: !1032, inlinedAt: !1024)
!1042 = !DILocalVariable(name: "filename", arg: 1, scope: !1043, file: !888, line: 825, type: !607)
!1043 = distinct !DISubprogram(name: "AcquireColorCache", scope: !888, file: !888, line: 825, type: !1044, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!563, !607, !1007}
!1046 = !{!1042, !1047, !1048, !1049, !1050, !1051, !1053, !1054, !1057, !1058, !1062}
!1047 = !DILocalVariable(name: "exception", arg: 2, scope: !1043, file: !888, line: 826, type: !1007)
!1048 = !DILocalVariable(name: "option", scope: !1043, file: !888, line: 829, type: !873)
!1049 = !DILocalVariable(name: "color_cache", scope: !1043, file: !888, line: 832, type: !563)
!1050 = !DILocalVariable(name: "options", scope: !1043, file: !888, line: 833, type: !563)
!1051 = !DILocalVariable(name: "status", scope: !1043, file: !888, line: 836, type: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!1053 = !DILocalVariable(name: "i", scope: !1043, file: !888, line: 839, type: !615)
!1054 = !DILocalVariable(name: "message", scope: !1055, file: !888, line: 846, type: !573)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !888, line: 846, column: 5)
!1056 = distinct !DILexicalBlock(scope: !1043, file: !888, line: 845, column: 7)
!1057 = !DILocalVariable(name: "exception", scope: !1055, file: !888, line: 846, type: !818)
!1058 = !DILocalVariable(name: "color_info", scope: !1059, file: !888, line: 863, type: !611)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !888, line: 861, column: 3)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !888, line: 860, column: 3)
!1061 = distinct !DILexicalBlock(scope: !1043, file: !888, line: 860, column: 3)
!1062 = !DILocalVariable(name: "p", scope: !1059, file: !888, line: 866, type: !1063)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!1064 = !DILocation(line: 0, scope: !1043, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 1615, column: 21, scope: !1039, inlinedAt: !1024)
!1066 = !DILocation(line: 844, column: 15, scope: !1043, inlinedAt: !1065)
!1067 = !DILocation(line: 845, column: 19, scope: !1056, inlinedAt: !1065)
!1068 = !DILocation(line: 845, column: 7, scope: !1043, inlinedAt: !1065)
!1069 = !DILocation(line: 846, column: 5, scope: !1055, inlinedAt: !1065)
!1070 = !{!1071, !1071, i64 0}
!1071 = !{!"int", !922, i64 0}
!1072 = !DILocation(line: 0, scope: !1055, inlinedAt: !1065)
!1073 = !DILocation(line: 848, column: 11, scope: !1043, inlinedAt: !1065)
!1074 = !DILocation(line: 849, column: 31, scope: !1043, inlinedAt: !1065)
!1075 = !DILocation(line: 850, column: 17, scope: !1043, inlinedAt: !1065)
!1076 = !DILocation(line: 850, column: 3, scope: !1043, inlinedAt: !1065)
!1077 = !DILocation(line: 853, column: 7, scope: !1078, inlinedAt: !1065)
!1078 = distinct !DILexicalBlock(scope: !1043, file: !888, line: 851, column: 3)
!1079 = !DILocation(line: 853, column: 34, scope: !1078, inlinedAt: !1065)
!1080 = !DILocation(line: 852, column: 13, scope: !1078, inlinedAt: !1065)
!1081 = !DILocation(line: 852, column: 11, scope: !1078, inlinedAt: !1065)
!1082 = !DILocation(line: 854, column: 33, scope: !1078, inlinedAt: !1065)
!1083 = distinct !{!1083, !1076, !1084, !1085, !1086}
!1084 = !DILocation(line: 855, column: 3, scope: !1043, inlinedAt: !1065)
!1085 = !{!"llvm.loop.mustprogress"}
!1086 = !{!"llvm.loop.unroll.disable"}
!1087 = !DILocation(line: 856, column: 11, scope: !1043, inlinedAt: !1065)
!1088 = !DILocation(line: 860, column: 3, scope: !1061, inlinedAt: !1065)
!1089 = !DILocation(line: 868, column: 15, scope: !1059, inlinedAt: !1065)
!1090 = !DILocation(line: 0, scope: !1059, inlinedAt: !1065)
!1091 = !DILocation(line: 869, column: 30, scope: !1059, inlinedAt: !1065)
!1092 = !DILocation(line: 870, column: 20, scope: !1093, inlinedAt: !1065)
!1093 = distinct !DILexicalBlock(scope: !1059, file: !888, line: 870, column: 9)
!1094 = !DILocation(line: 870, column: 9, scope: !1059, inlinedAt: !1065)
!1095 = !DILocation(line: 876, column: 12, scope: !1059, inlinedAt: !1065)
!1096 = !DILocation(line: 877, column: 21, scope: !1059, inlinedAt: !1065)
!1097 = !DILocation(line: 878, column: 34, scope: !1059, inlinedAt: !1065)
!1098 = !{!1099, !921, i64 0}
!1099 = !{!"_ColorMapInfo", !921, i64 0, !922, i64 8, !922, i64 9, !922, i64 10, !979, i64 12, !978, i64 16}
!1100 = !DILocation(line: 878, column: 17, scope: !1059, inlinedAt: !1065)
!1101 = !DILocation(line: 878, column: 21, scope: !1059, inlinedAt: !1065)
!1102 = !DILocation(line: 879, column: 54, scope: !1059, inlinedAt: !1065)
!1103 = !DILocation(line: 879, column: 5, scope: !1059, inlinedAt: !1065)
!1104 = !DILocation(line: 881, column: 7, scope: !1059, inlinedAt: !1065)
!1105 = !{!1099, !922, i64 8}
!1106 = !DILocalVariable(name: "value", arg: 1, scope: !1107, file: !1108, line: 363, type: !898)
!1107 = distinct !DISubprogram(name: "ScaleCharToQuantum", scope: !1108, file: !1108, line: 363, type: !1109, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1108 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f56ff413af29c367aaef7b4fe7af9628")
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!612, !898}
!1111 = !{!1106}
!1112 = !DILocation(line: 0, scope: !1107, inlinedAt: !1113)
!1113 = distinct !DILocation(line: 880, column: 44, scope: !1059, inlinedAt: !1065)
!1114 = !DILocation(line: 366, column: 26, scope: !1107, inlinedAt: !1113)
!1115 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1113)
!1116 = !DILocation(line: 880, column: 27, scope: !1059, inlinedAt: !1065)
!1117 = !DILocation(line: 880, column: 23, scope: !1059, inlinedAt: !1065)
!1118 = !DILocation(line: 880, column: 26, scope: !1059, inlinedAt: !1065)
!1119 = !{!975, !979, i64 56}
!1120 = !DILocation(line: 883, column: 7, scope: !1059, inlinedAt: !1065)
!1121 = !{!1099, !922, i64 9}
!1122 = !DILocation(line: 0, scope: !1107, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 882, column: 46, scope: !1059, inlinedAt: !1065)
!1124 = !DILocation(line: 366, column: 26, scope: !1107, inlinedAt: !1123)
!1125 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1123)
!1126 = !DILocation(line: 882, column: 29, scope: !1059, inlinedAt: !1065)
!1127 = !DILocation(line: 882, column: 23, scope: !1059, inlinedAt: !1065)
!1128 = !DILocation(line: 882, column: 28, scope: !1059, inlinedAt: !1065)
!1129 = !{!975, !979, i64 60}
!1130 = !DILocation(line: 885, column: 7, scope: !1059, inlinedAt: !1065)
!1131 = !{!1099, !922, i64 10}
!1132 = !DILocation(line: 0, scope: !1107, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 884, column: 45, scope: !1059, inlinedAt: !1065)
!1134 = !DILocation(line: 366, column: 26, scope: !1107, inlinedAt: !1133)
!1135 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1133)
!1136 = !DILocation(line: 884, column: 28, scope: !1059, inlinedAt: !1065)
!1137 = !DILocation(line: 884, column: 23, scope: !1059, inlinedAt: !1065)
!1138 = !DILocation(line: 884, column: 27, scope: !1059, inlinedAt: !1065)
!1139 = !{!975, !979, i64 64}
!1140 = !DILocation(line: 887, column: 10, scope: !1059, inlinedAt: !1065)
!1141 = !{!1099, !979, i64 12}
!1142 = !DILocation(line: 886, column: 61, scope: !1059, inlinedAt: !1065)
!1143 = !DILocation(line: 886, column: 23, scope: !1059, inlinedAt: !1065)
!1144 = !DILocation(line: 886, column: 30, scope: !1059, inlinedAt: !1065)
!1145 = !{!975, !979, i64 68}
!1146 = !DILocation(line: 888, column: 48, scope: !1059, inlinedAt: !1065)
!1147 = !{!1099, !978, i64 16}
!1148 = !DILocation(line: 888, column: 28, scope: !1059, inlinedAt: !1065)
!1149 = !DILocation(line: 888, column: 17, scope: !1059, inlinedAt: !1065)
!1150 = !DILocation(line: 888, column: 27, scope: !1059, inlinedAt: !1065)
!1151 = !{!975, !922, i64 16}
!1152 = !DILocation(line: 889, column: 17, scope: !1059, inlinedAt: !1065)
!1153 = !DILocation(line: 889, column: 23, scope: !1059, inlinedAt: !1065)
!1154 = !DILocation(line: 890, column: 17, scope: !1059, inlinedAt: !1065)
!1155 = !DILocation(line: 890, column: 26, scope: !1059, inlinedAt: !1065)
!1156 = !{!975, !978, i64 104}
!1157 = !DILocation(line: 891, column: 13, scope: !1059, inlinedAt: !1065)
!1158 = !DILocation(line: 891, column: 11, scope: !1059, inlinedAt: !1065)
!1159 = !DILocation(line: 892, column: 16, scope: !1160, inlinedAt: !1065)
!1160 = distinct !DILexicalBlock(scope: !1059, file: !888, line: 892, column: 9)
!1161 = !DILocation(line: 892, column: 9, scope: !1059, inlinedAt: !1065)
!1162 = !DILocation(line: 860, column: 66, scope: !1060, inlinedAt: !1065)
!1163 = !DILocation(line: 860, column: 15, scope: !1060, inlinedAt: !1065)
!1164 = distinct !{!1164, !1088, !1165, !1085, !1086}
!1165 = !DILocation(line: 895, column: 3, scope: !1061, inlinedAt: !1065)
!1166 = !DILocation(line: 1615, column: 20, scope: !1039, inlinedAt: !1024)
!1167 = !DILocation(line: 1615, column: 9, scope: !1039, inlinedAt: !1024)
!1168 = !DILocation(line: 1616, column: 27, scope: !1032, inlinedAt: !1024)
!1169 = !DILocation(line: 1616, column: 7, scope: !1032, inlinedAt: !1024)
!1170 = !DILocation(line: 1618, column: 10, scope: !1019, inlinedAt: !1024)
!1171 = !DILocation(line: 1618, column: 22, scope: !1019, inlinedAt: !1024)
!1172 = !DILocation(line: 1012, column: 7, scope: !1003)
!1173 = !DILocation(line: 1017, column: 13, scope: !1003)
!1174 = !{!922, !922, i64 0}
!1175 = !DILocation(line: 1018, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1018, column: 7)
!1177 = !DILocation(line: 1018, column: 7, scope: !1003)
!1178 = !DILocation(line: 1019, column: 12, scope: !1176)
!1179 = !DILocation(line: 1020, column: 21, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !888, line: 1020, column: 3)
!1181 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1020, column: 3)
!1182 = !DILocation(line: 1020, column: 24, scope: !1180)
!1183 = !DILocation(line: 1020, column: 3, scope: !1181)
!1184 = !DILocation(line: 1022, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !888, line: 1022, column: 9)
!1186 = distinct !DILexicalBlock(scope: !1180, file: !888, line: 1021, column: 3)
!1187 = !{!1188, !1188, i64 0}
!1188 = !{!"short", !922, i64 0}
!1189 = !DILocation(line: 1022, column: 45, scope: !1185)
!1190 = !DILocation(line: 1022, column: 9, scope: !1186)
!1191 = !DILocation(line: 1024, column: 32, scope: !1186)
!1192 = !DILocation(line: 1024, column: 12, scope: !1186)
!1193 = !DILocation(line: 1025, column: 6, scope: !1186)
!1194 = !DILocation(line: 1026, column: 3, scope: !1186)
!1195 = !DILocation(line: 0, scope: !1181)
!1196 = !DILocation(line: 1020, column: 34, scope: !1180)
!1197 = distinct !{!1197, !1183, !1198, !1085, !1086}
!1198 = !DILocation(line: 1026, column: 3, scope: !1181)
!1199 = !DILocation(line: 1030, column: 21, scope: !1003)
!1200 = !DILocation(line: 1030, column: 3, scope: !1003)
!1201 = !DILocation(line: 1031, column: 27, scope: !1003)
!1202 = !DILocation(line: 1031, column: 3, scope: !1003)
!1203 = !DILocation(line: 1032, column: 50, scope: !1003)
!1204 = !DILocation(line: 1032, column: 25, scope: !1003)
!1205 = !DILocation(line: 1033, column: 37, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1033, column: 7)
!1207 = !DILocation(line: 1033, column: 41, scope: !1206)
!1208 = !DILocation(line: 1033, column: 65, scope: !1206)
!1209 = !DILocation(line: 1033, column: 7, scope: !1003)
!1210 = !DILocation(line: 1038, column: 3, scope: !1003)
!1211 = !DILocation(line: 1040, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !888, line: 1040, column: 9)
!1213 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1039, column: 3)
!1214 = !DILocation(line: 1040, column: 25, scope: !1212)
!1215 = !DILocation(line: 1040, column: 39, scope: !1212)
!1216 = !DILocation(line: 1040, column: 45, scope: !1212)
!1217 = !DILocation(line: 1041, column: 37, scope: !1212)
!1218 = !DILocation(line: 1041, column: 10, scope: !1212)
!1219 = !DILocation(line: 1041, column: 43, scope: !1212)
!1220 = !DILocation(line: 1040, column: 9, scope: !1213)
!1221 = !DILocation(line: 1043, column: 52, scope: !1213)
!1222 = !DILocation(line: 1043, column: 27, scope: !1213)
!1223 = distinct !{!1223, !1210, !1224, !1085, !1086}
!1224 = !DILocation(line: 1044, column: 3, scope: !1003)
!1225 = !DILocation(line: 1046, column: 12, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1003, file: !888, line: 1045, column: 7)
!1227 = !DILocation(line: 1046, column: 5, scope: !1226)
!1228 = !DILocation(line: 1049, column: 36, scope: !1226)
!1229 = !DILocation(line: 1050, column: 7, scope: !1226)
!1230 = !DILocation(line: 1049, column: 12, scope: !1226)
!1231 = !DILocation(line: 1053, column: 1, scope: !1003)
!1232 = !DISubprogram(name: "CopyMagickString", scope: !876, file: !876, line: 78, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!591, !573, !607, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!1236 = !DISubprogram(name: "ResetLinkedListIterator", scope: !565, file: !565, line: 77, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{null, !563}
!1239 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !565, file: !565, line: 69, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!562, !563}
!1242 = !DISubprogram(name: "LocaleCompare", scope: !876, file: !876, line: 66, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!199, !607, !607}
!1245 = !DISubprogram(name: "ThrowMagickException", scope: !63, file: !63, line: 156, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!587, !1007, !607, !607, !1235, !1248, !607, !607, null}
!1248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!1249 = !DISubprogram(name: "InsertValueInLinkedList", scope: !565, file: !565, line: 49, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!587, !563, !1235, !1252}
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1254 = !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !565, file: !565, line: 72, type: !1255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!562, !563, !1252}
!1257 = distinct !DISubprogram(name: "GetColorInfo", scope: !888, file: !888, line: 1084, type: !1258, scopeLine: 1086, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1260)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!567, !607, !1007}
!1260 = !{!1261, !1262}
!1261 = !DILocalVariable(name: "name", arg: 1, scope: !1257, file: !888, line: 1084, type: !607)
!1262 = !DILocalVariable(name: "exception", arg: 2, scope: !1257, file: !888, line: 1085, type: !1007)
!1263 = !DILocation(line: 0, scope: !1257)
!1264 = !DILocation(line: 1087, column: 10, scope: !1257)
!1265 = !DILocation(line: 1087, column: 3, scope: !1257)
!1266 = distinct !DISubprogram(name: "ConcatenateColorComponent", scope: !888, file: !888, line: 1119, type: !1267, scopeLine: 1121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1273)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !1269, !1271, !1006, !573}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !150)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279}
!1274 = !DILocalVariable(name: "pixel", arg: 1, scope: !1266, file: !888, line: 1119, type: !1269)
!1275 = !DILocalVariable(name: "channel", arg: 2, scope: !1266, file: !888, line: 1120, type: !1271)
!1276 = !DILocalVariable(name: "compliance", arg: 3, scope: !1266, file: !888, line: 1120, type: !1006)
!1277 = !DILocalVariable(name: "tuple", arg: 4, scope: !1266, file: !888, line: 1120, type: !573)
!1278 = !DILocalVariable(name: "component", scope: !1266, file: !888, line: 1123, type: !810)
!1279 = !DILocalVariable(name: "color", scope: !1266, file: !888, line: 1126, type: !589)
!1280 = !DILocation(line: 0, scope: !1266)
!1281 = !DILocation(line: 1122, column: 3, scope: !1266)
!1282 = !DILocation(line: 1123, column: 5, scope: !1266)
!1283 = !DILocation(line: 1129, column: 3, scope: !1266)
!1284 = !DILocation(line: 1133, column: 20, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !888, line: 1132, column: 5)
!1286 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1130, column: 3)
!1287 = !{!976, !979, i64 32}
!1288 = !DILocation(line: 1133, column: 13, scope: !1285)
!1289 = !DILocation(line: 1134, column: 7, scope: !1285)
!1290 = !DILocation(line: 1138, column: 20, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1286, file: !888, line: 1137, column: 5)
!1292 = !{!976, !979, i64 36}
!1293 = !DILocation(line: 1138, column: 13, scope: !1291)
!1294 = !DILocation(line: 1139, column: 7, scope: !1291)
!1295 = !DILocation(line: 1143, column: 20, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1286, file: !888, line: 1142, column: 5)
!1297 = !{!976, !979, i64 40}
!1298 = !DILocation(line: 1143, column: 13, scope: !1296)
!1299 = !DILocation(line: 1144, column: 7, scope: !1296)
!1300 = !DILocation(line: 1148, column: 33, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1286, file: !888, line: 1147, column: 5)
!1302 = !{!976, !979, i64 44}
!1303 = !DILocation(line: 1148, column: 25, scope: !1301)
!1304 = !DILocation(line: 1148, column: 13, scope: !1301)
!1305 = !DILocation(line: 1149, column: 7, scope: !1301)
!1306 = !DILocation(line: 1153, column: 20, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1286, file: !888, line: 1152, column: 5)
!1308 = !{!976, !979, i64 48}
!1309 = !DILocation(line: 1153, column: 13, scope: !1307)
!1310 = !DILocation(line: 1154, column: 7, scope: !1307)
!1311 = !DILocation(line: 1159, column: 7, scope: !1266)
!1312 = !DILocation(line: 1162, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !888, line: 1160, column: 5)
!1314 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1159, column: 7)
!1315 = !DILocation(line: 1161, column: 14, scope: !1313)
!1316 = !DILocation(line: 1164, column: 7, scope: !1313)
!1317 = !DILocation(line: 1168, column: 18, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !888, line: 1168, column: 11)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !888, line: 1167, column: 5)
!1320 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1166, column: 7)
!1321 = !{!976, !978, i64 24}
!1322 = !DILocation(line: 1168, column: 24, scope: !1318)
!1323 = !DILocation(line: 1168, column: 11, scope: !1319)
!1324 = !DILocation(line: 1171, column: 63, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1318, file: !888, line: 1169, column: 9)
!1326 = !DILocalVariable(name: "value", arg: 1, scope: !1327, file: !369, line: 87, type: !1330)
!1327 = distinct !DISubprogram(name: "ClampToQuantum", scope: !369, file: !369, line: 87, type: !1328, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!612, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!1331 = !{!1326}
!1332 = !DILocation(line: 0, scope: !1327, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 1171, column: 48, scope: !1325)
!1334 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1333)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !369, line: 92, column: 7)
!1336 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1333)
!1337 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1333)
!1338 = distinct !DILexicalBlock(scope: !1327, file: !369, line: 94, column: 7)
!1339 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1333)
!1340 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1333)
!1341 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1333)
!1342 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1333)
!1343 = !DILocation(line: 1170, column: 18, scope: !1325)
!1344 = !DILocation(line: 1173, column: 11, scope: !1325)
!1345 = !DILocation(line: 1175, column: 24, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1319, file: !888, line: 1175, column: 11)
!1347 = !DILocation(line: 0, scope: !1319)
!1348 = !DILocation(line: 0, scope: !1327, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 1178, column: 33, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !888, line: 1176, column: 9)
!1351 = !DILocation(line: 0, scope: !1327, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 1183, column: 28, scope: !1319)
!1353 = !DILocation(line: 1175, column: 11, scope: !1319)
!1354 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1349)
!1355 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1349)
!1356 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1349)
!1357 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1349)
!1358 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1349)
!1359 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1349)
!1360 = !DILocation(line: 1177, column: 18, scope: !1350)
!1361 = !DILocation(line: 1180, column: 11, scope: !1350)
!1362 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1352)
!1363 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1352)
!1364 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1352)
!1365 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1352)
!1366 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1352)
!1367 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1352)
!1368 = !DILocalVariable(name: "quantum", arg: 1, scope: !1369, file: !369, line: 114, type: !1372)
!1369 = distinct !DISubprogram(name: "ScaleQuantumToChar", scope: !369, file: !369, line: 114, type: !1370, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1373)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{!609, !1372}
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!1373 = !{!1368}
!1374 = !DILocation(line: 0, scope: !1369, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 1183, column: 9, scope: !1319)
!1376 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1375)
!1377 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1375)
!1378 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1375)
!1379 = !DILocation(line: 1183, column: 9, scope: !1319)
!1380 = !DILocation(line: 1182, column: 14, scope: !1319)
!1381 = !DILocation(line: 1185, column: 7, scope: !1319)
!1382 = !DILocation(line: 1187, column: 15, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1187, column: 7)
!1384 = !DILocation(line: 1187, column: 7, scope: !1266)
!1385 = !DILocation(line: 1190, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !888, line: 1188, column: 5)
!1387 = !DILocation(line: 1190, column: 43, scope: !1386)
!1388 = !DILocation(line: 1189, column: 14, scope: !1386)
!1389 = !DILocation(line: 1192, column: 7, scope: !1386)
!1390 = !DILocation(line: 1194, column: 15, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1194, column: 7)
!1392 = !{!976, !922, i64 4}
!1393 = !DILocation(line: 1194, column: 44, scope: !1391)
!1394 = !DILocation(line: 1203, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !888, line: 1201, column: 5)
!1396 = !DILocation(line: 1203, column: 49, scope: !1395)
!1397 = !DILocation(line: 1202, column: 14, scope: !1395)
!1398 = !DILocation(line: 1205, column: 7, scope: !1395)
!1399 = !DILocation(line: 1207, column: 14, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1266, file: !888, line: 1207, column: 7)
!1401 = !DILocation(line: 1207, column: 20, scope: !1400)
!1402 = !DILocation(line: 1207, column: 7, scope: !1266)
!1403 = !DILocation(line: 1210, column: 9, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !888, line: 1208, column: 5)
!1405 = !DILocation(line: 1210, column: 49, scope: !1404)
!1406 = !DILocation(line: 1209, column: 14, scope: !1404)
!1407 = !DILocation(line: 1212, column: 7, scope: !1404)
!1408 = !DILocation(line: 1215, column: 39, scope: !1266)
!1409 = !DILocation(line: 0, scope: !1327, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 1215, column: 24, scope: !1266)
!1411 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1410)
!1412 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1410)
!1413 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1410)
!1414 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1410)
!1415 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1410)
!1416 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1410)
!1417 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1410)
!1418 = !DILocation(line: 0, scope: !1369, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 1215, column: 5, scope: !1266)
!1420 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1419)
!1421 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1419)
!1422 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1419)
!1423 = !DILocation(line: 1215, column: 5, scope: !1266)
!1424 = !DILocation(line: 1214, column: 10, scope: !1266)
!1425 = !DILocation(line: 1217, column: 1, scope: !1266)
!1426 = !DISubprogram(name: "FormatLocaleString", scope: !1427, file: !1427, line: 71, type: !1428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1427 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!615, !1430, !1235, !1431, null}
!1430 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !573)
!1431 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !607)
!1432 = !DISubprogram(name: "GetMagickPrecision", scope: !1433, file: !1433, line: 119, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1433 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!199}
!1436 = !DISubprogram(name: "ConcatenateMagickString", scope: !876, file: !876, line: 76, type: !1233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1437 = distinct !DISubprogram(name: "GetColorInfoList", scope: !888, file: !888, line: 1268, type: !1438, scopeLine: 1270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!613, !607, !1440, !1007}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1441 = !{!1442, !1443, !1444, !1445, !1446, !1447}
!1442 = !DILocalVariable(name: "pattern", arg: 1, scope: !1437, file: !888, line: 1268, type: !607)
!1443 = !DILocalVariable(name: "number_colors", arg: 2, scope: !1437, file: !888, line: 1269, type: !1440)
!1444 = !DILocalVariable(name: "exception", arg: 3, scope: !1437, file: !888, line: 1269, type: !1007)
!1445 = !DILocalVariable(name: "colors", scope: !1437, file: !888, line: 1272, type: !613)
!1446 = !DILocalVariable(name: "p", scope: !1437, file: !888, line: 1275, type: !567)
!1447 = !DILocalVariable(name: "i", scope: !1437, file: !888, line: 1278, type: !615)
!1448 = !DILocation(line: 0, scope: !1437)
!1449 = !DILocation(line: 1284, column: 10, scope: !1437)
!1450 = !DILocation(line: 1286, column: 17, scope: !1437)
!1451 = !{!978, !978, i64 0}
!1452 = !DILocation(line: 0, scope: !1257, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1287, column: 5, scope: !1437)
!1454 = !DILocation(line: 1087, column: 10, scope: !1257, inlinedAt: !1453)
!1455 = !DILocation(line: 1288, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1437, file: !888, line: 1288, column: 7)
!1457 = !DILocation(line: 1288, column: 7, scope: !1437)
!1458 = !DILocation(line: 1291, column: 37, scope: !1437)
!1459 = !DILocation(line: 1291, column: 5, scope: !1437)
!1460 = !DILocation(line: 1291, column: 49, scope: !1437)
!1461 = !DILocation(line: 1290, column: 31, scope: !1437)
!1462 = !DILocation(line: 1292, column: 14, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1437, file: !888, line: 1292, column: 7)
!1464 = !DILocation(line: 1292, column: 7, scope: !1437)
!1465 = !DILocation(line: 1297, column: 21, scope: !1437)
!1466 = !DILocation(line: 1297, column: 3, scope: !1437)
!1467 = !DILocation(line: 1298, column: 27, scope: !1437)
!1468 = !DILocation(line: 1298, column: 3, scope: !1437)
!1469 = !DILocation(line: 1299, column: 50, scope: !1437)
!1470 = !DILocation(line: 1299, column: 25, scope: !1437)
!1471 = !DILocation(line: 1300, column: 15, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !888, line: 1300, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1437, file: !888, line: 1300, column: 3)
!1474 = !DILocation(line: 1300, column: 3, scope: !1473)
!1475 = !DILocation(line: 1302, column: 13, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !888, line: 1302, column: 9)
!1477 = distinct !DILexicalBlock(scope: !1472, file: !888, line: 1301, column: 3)
!1478 = !{!975, !922, i64 84}
!1479 = !DILocation(line: 1302, column: 21, scope: !1476)
!1480 = !DILocation(line: 1302, column: 37, scope: !1476)
!1481 = !DILocation(line: 1303, column: 28, scope: !1476)
!1482 = !DILocation(line: 1303, column: 10, scope: !1476)
!1483 = !DILocation(line: 1303, column: 54, scope: !1476)
!1484 = !DILocation(line: 1302, column: 9, scope: !1477)
!1485 = !DILocation(line: 1304, column: 15, scope: !1476)
!1486 = !DILocation(line: 1304, column: 7, scope: !1476)
!1487 = !DILocation(line: 1304, column: 18, scope: !1476)
!1488 = !DILocation(line: 0, scope: !1473)
!1489 = !DILocation(line: 1305, column: 52, scope: !1477)
!1490 = !DILocation(line: 1305, column: 27, scope: !1477)
!1491 = distinct !{!1491, !1474, !1492, !1085, !1086}
!1492 = !DILocation(line: 1306, column: 3, scope: !1473)
!1493 = !DILocation(line: 1307, column: 23, scope: !1437)
!1494 = !DILocation(line: 1307, column: 3, scope: !1437)
!1495 = !DILocation(line: 1308, column: 3, scope: !1437)
!1496 = !DILocation(line: 1309, column: 3, scope: !1437)
!1497 = !DILocation(line: 1309, column: 12, scope: !1437)
!1498 = !DILocation(line: 1310, column: 17, scope: !1437)
!1499 = !DILocation(line: 1311, column: 3, scope: !1437)
!1500 = !DILocation(line: 1312, column: 1, scope: !1437)
!1501 = !DISubprogram(name: "LogMagickEvent", scope: !173, file: !173, line: 83, type: !1502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!587, !1504, !607, !607, !1235, !607, null}
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !173, line: 58, baseType: !172)
!1506 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1507, file: !1507, line: 42, type: !1508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1507 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!562, !1235, !1235}
!1510 = !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !565, file: !565, line: 58, type: !1511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!591, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!1515 = !DISubprogram(name: "GlobExpression", scope: !1516, file: !1516, line: 36, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1516 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!587, !607, !607, !1519}
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!1520 = !DISubprogram(name: "qsort", scope: !1521, file: !1521, line: 830, type: !1522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1521 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !562, !591, !591, !1524}
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1521, line: 808, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!199, !1252, !1252}
!1528 = distinct !DISubprogram(name: "ColorInfoCompare", scope: !888, file: !888, line: 1251, type: !1526, scopeLine: 1252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1529)
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DILocalVariable(name: "x", arg: 1, scope: !1528, file: !888, line: 1251, type: !1252)
!1531 = !DILocalVariable(name: "y", arg: 2, scope: !1528, file: !888, line: 1251, type: !1252)
!1532 = !DILocalVariable(name: "p", scope: !1528, file: !888, line: 1254, type: !613)
!1533 = !DILocalVariable(name: "q", scope: !1528, file: !888, line: 1255, type: !613)
!1534 = !DILocation(line: 0, scope: !1528)
!1535 = !DILocation(line: 1259, column: 22, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1528, file: !888, line: 1259, column: 7)
!1537 = !DILocation(line: 1259, column: 27, scope: !1536)
!1538 = !DILocation(line: 1259, column: 33, scope: !1536)
!1539 = !DILocation(line: 1259, column: 38, scope: !1536)
!1540 = !DILocation(line: 1259, column: 7, scope: !1536)
!1541 = !DILocation(line: 1259, column: 44, scope: !1536)
!1542 = !DILocation(line: 1259, column: 7, scope: !1528)
!1543 = !DILocation(line: 1260, column: 32, scope: !1536)
!1544 = !DILocation(line: 1260, column: 38, scope: !1536)
!1545 = !DILocation(line: 1260, column: 43, scope: !1536)
!1546 = !DILocation(line: 1260, column: 5, scope: !1536)
!1547 = !DILocation(line: 1261, column: 36, scope: !1528)
!1548 = !DILocation(line: 1261, column: 3, scope: !1528)
!1549 = !DILocation(line: 1262, column: 1, scope: !1528)
!1550 = distinct !DISubprogram(name: "GetColorList", scope: !888, file: !888, line: 1361, type: !1551, scopeLine: 1363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!614, !607, !1440, !1007}
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559}
!1554 = !DILocalVariable(name: "pattern", arg: 1, scope: !1550, file: !888, line: 1361, type: !607)
!1555 = !DILocalVariable(name: "number_colors", arg: 2, scope: !1550, file: !888, line: 1362, type: !1440)
!1556 = !DILocalVariable(name: "exception", arg: 3, scope: !1550, file: !888, line: 1362, type: !1007)
!1557 = !DILocalVariable(name: "colors", scope: !1550, file: !888, line: 1365, type: !614)
!1558 = !DILocalVariable(name: "p", scope: !1550, file: !888, line: 1368, type: !567)
!1559 = !DILocalVariable(name: "i", scope: !1550, file: !888, line: 1371, type: !615)
!1560 = !DILocation(line: 0, scope: !1550)
!1561 = !DILocation(line: 1377, column: 10, scope: !1550)
!1562 = !DILocation(line: 1379, column: 17, scope: !1550)
!1563 = !DILocation(line: 0, scope: !1257, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 1380, column: 5, scope: !1550)
!1565 = !DILocation(line: 1087, column: 10, scope: !1257, inlinedAt: !1564)
!1566 = !DILocation(line: 1381, column: 9, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1550, file: !888, line: 1381, column: 7)
!1568 = !DILocation(line: 1381, column: 7, scope: !1550)
!1569 = !DILocation(line: 1384, column: 37, scope: !1550)
!1570 = !DILocation(line: 1384, column: 5, scope: !1550)
!1571 = !DILocation(line: 1384, column: 49, scope: !1550)
!1572 = !DILocation(line: 1383, column: 20, scope: !1550)
!1573 = !DILocation(line: 1385, column: 14, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1550, file: !888, line: 1385, column: 7)
!1575 = !DILocation(line: 1385, column: 7, scope: !1550)
!1576 = !DILocation(line: 1390, column: 21, scope: !1550)
!1577 = !DILocation(line: 1390, column: 3, scope: !1550)
!1578 = !DILocation(line: 1391, column: 27, scope: !1550)
!1579 = !DILocation(line: 1391, column: 3, scope: !1550)
!1580 = !DILocation(line: 1392, column: 50, scope: !1550)
!1581 = !DILocation(line: 1392, column: 25, scope: !1550)
!1582 = !DILocation(line: 1393, column: 15, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !888, line: 1393, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1550, file: !888, line: 1393, column: 3)
!1585 = !DILocation(line: 1393, column: 3, scope: !1584)
!1586 = !DILocation(line: 1395, column: 13, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !888, line: 1395, column: 9)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !888, line: 1394, column: 3)
!1589 = !DILocation(line: 1395, column: 21, scope: !1587)
!1590 = !DILocation(line: 1395, column: 37, scope: !1587)
!1591 = !DILocation(line: 1396, column: 28, scope: !1587)
!1592 = !DILocation(line: 1396, column: 10, scope: !1587)
!1593 = !DILocation(line: 1396, column: 54, scope: !1587)
!1594 = !DILocation(line: 1395, column: 9, scope: !1588)
!1595 = !DILocation(line: 1397, column: 37, scope: !1587)
!1596 = !DILocation(line: 1397, column: 19, scope: !1587)
!1597 = !DILocation(line: 1397, column: 15, scope: !1587)
!1598 = !DILocation(line: 1397, column: 7, scope: !1587)
!1599 = !DILocation(line: 1397, column: 18, scope: !1587)
!1600 = !DILocation(line: 0, scope: !1584)
!1601 = !DILocation(line: 1398, column: 52, scope: !1588)
!1602 = !DILocation(line: 1398, column: 27, scope: !1588)
!1603 = distinct !{!1603, !1585, !1604, !1085, !1086}
!1604 = !DILocation(line: 1399, column: 3, scope: !1584)
!1605 = !DILocation(line: 1400, column: 23, scope: !1550)
!1606 = !DILocation(line: 1400, column: 3, scope: !1550)
!1607 = !DILocation(line: 1401, column: 3, scope: !1550)
!1608 = !DILocation(line: 1402, column: 3, scope: !1550)
!1609 = !DILocation(line: 1402, column: 12, scope: !1550)
!1610 = !DILocation(line: 1403, column: 17, scope: !1550)
!1611 = !DILocation(line: 1404, column: 3, scope: !1550)
!1612 = !DILocation(line: 1405, column: 1, scope: !1550)
!1613 = !DISubprogram(name: "ConstantString", scope: !876, file: !876, line: 45, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!573, !607}
!1616 = distinct !DISubprogram(name: "ColorCompare", scope: !888, file: !888, line: 1346, type: !1526, scopeLine: 1347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1617)
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DILocalVariable(name: "x", arg: 1, scope: !1616, file: !888, line: 1346, type: !1252)
!1619 = !DILocalVariable(name: "y", arg: 2, scope: !1616, file: !888, line: 1346, type: !1252)
!1620 = !DILocalVariable(name: "p", scope: !1616, file: !888, line: 1349, type: !872)
!1621 = !DILocalVariable(name: "q", scope: !1616, file: !888, line: 1350, type: !872)
!1622 = !DILocation(line: 0, scope: !1616)
!1623 = !DILocation(line: 1354, column: 24, scope: !1616)
!1624 = !DILocation(line: 1354, column: 27, scope: !1616)
!1625 = !DILocation(line: 1354, column: 10, scope: !1616)
!1626 = !DILocation(line: 1354, column: 3, scope: !1616)
!1627 = distinct !DISubprogram(name: "GetColorTuple", scope: !888, file: !888, line: 1504, type: !1628, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1269, !1519, !573}
!1630 = !{!1631, !1632, !1633, !1634, !1635}
!1631 = !DILocalVariable(name: "pixel", arg: 1, scope: !1627, file: !888, line: 1504, type: !1269)
!1632 = !DILocalVariable(name: "hex", arg: 2, scope: !1627, file: !888, line: 1505, type: !1519)
!1633 = !DILocalVariable(name: "tuple", arg: 3, scope: !1627, file: !888, line: 1505, type: !573)
!1634 = !DILocalVariable(name: "color", scope: !1627, file: !888, line: 1508, type: !579)
!1635 = !DILocalVariable(name: "status", scope: !1636, file: !888, line: 1539, type: !1052)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !888, line: 1534, column: 5)
!1637 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1533, column: 7)
!1638 = !DILocation(line: 0, scope: !1627)
!1639 = !DILocation(line: 1507, column: 3, scope: !1627)
!1640 = !DILocation(line: 1508, column: 5, scope: !1627)
!1641 = !DILocation(line: 1512, column: 10, scope: !1627)
!1642 = !DILocation(line: 1513, column: 9, scope: !1627)
!1643 = !DILocation(line: 1514, column: 11, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1514, column: 7)
!1645 = !DILocation(line: 1514, column: 7, scope: !1627)
!1646 = !DILocation(line: 1519, column: 14, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !888, line: 1515, column: 5)
!1648 = !DILocation(line: 1520, column: 7, scope: !1647)
!1649 = !DILocation(line: 1521, column: 7, scope: !1647)
!1650 = !DILocation(line: 1522, column: 7, scope: !1647)
!1651 = !DILocation(line: 1523, column: 18, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !888, line: 1523, column: 11)
!1653 = !DILocation(line: 1523, column: 29, scope: !1652)
!1654 = !DILocation(line: 1523, column: 11, scope: !1647)
!1655 = !DILocation(line: 1524, column: 9, scope: !1652)
!1656 = !DILocation(line: 1525, column: 19, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1647, file: !888, line: 1525, column: 11)
!1658 = !{!976, !922, i64 8}
!1659 = !DILocation(line: 1525, column: 25, scope: !1657)
!1660 = !DILocation(line: 1525, column: 41, scope: !1657)
!1661 = !DILocation(line: 1525, column: 52, scope: !1657)
!1662 = !DILocation(line: 1525, column: 60, scope: !1657)
!1663 = !DILocation(line: 1525, column: 11, scope: !1647)
!1664 = !DILocation(line: 1526, column: 9, scope: !1657)
!1665 = !DILocation(line: 1532, column: 10, scope: !1627)
!1666 = !{i64 0, i64 4, !1174, i64 4, i64 4, !1174, i64 8, i64 4, !1174, i64 16, i64 8, !1667, i64 24, i64 8, !1451, i64 32, i64 4, !1668, i64 36, i64 4, !1668, i64 40, i64 4, !1668, i64 44, i64 4, !1668, i64 48, i64 4, !1668}
!1667 = !{!977, !977, i64 0}
!1668 = !{!979, !979, i64 0}
!1669 = !DILocation(line: 1533, column: 13, scope: !1637)
!1670 = !DILocation(line: 1533, column: 19, scope: !1637)
!1671 = !DILocation(line: 1533, column: 7, scope: !1627)
!1672 = !DILocation(line: 1555, column: 45, scope: !1627)
!1673 = !DILocation(line: 1556, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1556, column: 7)
!1675 = !DILocation(line: 1544, column: 20, scope: !1636)
!1676 = !DILocation(line: 0, scope: !1327, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 1544, column: 27, scope: !1636)
!1678 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1677)
!1679 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1677)
!1680 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1677)
!1681 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1677)
!1682 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1677)
!1683 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1677)
!1684 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1677)
!1685 = !DILocation(line: 0, scope: !1369, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 1544, column: 27, scope: !1636)
!1687 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1686)
!1688 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1686)
!1689 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1686)
!1690 = !DILocation(line: 0, scope: !1107, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 1544, column: 27, scope: !1636)
!1692 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1691)
!1693 = !DILocation(line: 1544, column: 27, scope: !1636)
!1694 = !DILocation(line: 1544, column: 24, scope: !1636)
!1695 = !DILocation(line: 0, scope: !1636)
!1696 = !DILocation(line: 1545, column: 21, scope: !1636)
!1697 = !DILocation(line: 0, scope: !1327, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 1545, column: 30, scope: !1636)
!1699 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1698)
!1700 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1698)
!1701 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1698)
!1702 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1698)
!1703 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1698)
!1704 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1698)
!1705 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1698)
!1706 = !DILocation(line: 0, scope: !1369, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 1545, column: 30, scope: !1636)
!1708 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1707)
!1709 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1707)
!1710 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1707)
!1711 = !DILocation(line: 0, scope: !1107, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 1545, column: 30, scope: !1636)
!1713 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1712)
!1714 = !DILocation(line: 1545, column: 30, scope: !1636)
!1715 = !DILocation(line: 1545, column: 27, scope: !1636)
!1716 = !DILocation(line: 1545, column: 13, scope: !1636)
!1717 = !DILocation(line: 1546, column: 21, scope: !1636)
!1718 = !DILocation(line: 0, scope: !1327, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 1546, column: 29, scope: !1636)
!1720 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1719)
!1721 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1719)
!1722 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1719)
!1723 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1719)
!1724 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1719)
!1725 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1719)
!1726 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1719)
!1727 = !DILocation(line: 0, scope: !1369, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 1546, column: 29, scope: !1636)
!1729 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1728)
!1730 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1728)
!1731 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1728)
!1732 = !DILocation(line: 0, scope: !1107, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1546, column: 29, scope: !1636)
!1734 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1733)
!1735 = !DILocation(line: 1546, column: 29, scope: !1636)
!1736 = !DILocation(line: 1546, column: 26, scope: !1636)
!1737 = !DILocation(line: 1546, column: 13, scope: !1636)
!1738 = !DILocation(line: 1547, column: 17, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1636, file: !888, line: 1547, column: 11)
!1740 = !DILocation(line: 1547, column: 28, scope: !1739)
!1741 = !DILocation(line: 1547, column: 11, scope: !1636)
!1742 = !DILocation(line: 1548, column: 23, scope: !1739)
!1743 = !DILocation(line: 0, scope: !1327, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1548, column: 32, scope: !1739)
!1745 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1744)
!1746 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1744)
!1747 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1744)
!1748 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1744)
!1749 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1744)
!1750 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1744)
!1751 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1744)
!1752 = !DILocation(line: 0, scope: !1369, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 1548, column: 32, scope: !1739)
!1754 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1753)
!1755 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1753)
!1756 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1753)
!1757 = !DILocation(line: 0, scope: !1107, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 1548, column: 32, scope: !1739)
!1759 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1758)
!1760 = !DILocation(line: 1548, column: 32, scope: !1739)
!1761 = !DILocation(line: 1548, column: 29, scope: !1739)
!1762 = !DILocation(line: 1548, column: 15, scope: !1739)
!1763 = !DILocation(line: 1548, column: 9, scope: !1739)
!1764 = !DILocation(line: 1549, column: 17, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1636, file: !888, line: 1549, column: 11)
!1766 = !DILocation(line: 1549, column: 23, scope: !1765)
!1767 = !DILocation(line: 1549, column: 11, scope: !1636)
!1768 = !DILocation(line: 1550, column: 23, scope: !1765)
!1769 = !DILocation(line: 0, scope: !1327, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 1550, column: 34, scope: !1765)
!1771 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1770)
!1772 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1770)
!1773 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1770)
!1774 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1770)
!1775 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1770)
!1776 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1770)
!1777 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1770)
!1778 = !DILocation(line: 0, scope: !1369, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 1550, column: 34, scope: !1765)
!1780 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1779)
!1781 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1779)
!1782 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1779)
!1783 = !DILocation(line: 0, scope: !1107, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 1550, column: 34, scope: !1765)
!1785 = !DILocation(line: 366, column: 25, scope: !1107, inlinedAt: !1784)
!1786 = !DILocation(line: 1550, column: 34, scope: !1765)
!1787 = !DILocation(line: 1550, column: 31, scope: !1765)
!1788 = !DILocation(line: 1550, column: 15, scope: !1765)
!1789 = !DILocation(line: 1551, column: 11, scope: !1636)
!1790 = !DILocation(line: 1552, column: 20, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1636, file: !888, line: 1551, column: 11)
!1792 = !DILocation(line: 1552, column: 9, scope: !1791)
!1793 = !DILocation(line: 1555, column: 29, scope: !1627)
!1794 = !DILocation(line: 1554, column: 40, scope: !1627)
!1795 = !DILocation(line: 1554, column: 10, scope: !1627)
!1796 = !DILocation(line: 1556, column: 19, scope: !1674)
!1797 = !DILocation(line: 1556, column: 7, scope: !1627)
!1798 = !DILocation(line: 1557, column: 12, scope: !1674)
!1799 = !DILocation(line: 1557, column: 5, scope: !1674)
!1800 = !DILocation(line: 1558, column: 10, scope: !1627)
!1801 = !DILocation(line: 1559, column: 24, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1559, column: 7)
!1803 = !DILocation(line: 0, scope: !1802)
!1804 = !DILocation(line: 1559, column: 7, scope: !1627)
!1805 = !DILocation(line: 1564, column: 14, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1802, file: !888, line: 1562, column: 5)
!1807 = !DILocation(line: 1565, column: 7, scope: !1806)
!1808 = !DILocation(line: 1566, column: 14, scope: !1806)
!1809 = !DILocation(line: 1567, column: 7, scope: !1806)
!1810 = !DILocation(line: 1569, column: 24, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1569, column: 7)
!1812 = !DILocation(line: 1569, column: 7, scope: !1627)
!1813 = !DILocation(line: 1571, column: 14, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1811, file: !888, line: 1570, column: 5)
!1815 = !DILocation(line: 1572, column: 7, scope: !1814)
!1816 = !DILocation(line: 1573, column: 5, scope: !1814)
!1817 = !DILocation(line: 1574, column: 7, scope: !1627)
!1818 = !DILocation(line: 1576, column: 14, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !888, line: 1575, column: 5)
!1820 = distinct !DILexicalBlock(scope: !1627, file: !888, line: 1574, column: 7)
!1821 = !DILocation(line: 0, scope: !1266, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 1577, column: 7, scope: !1819)
!1823 = !DILocation(line: 1122, column: 3, scope: !1266, inlinedAt: !1822)
!1824 = !DILocation(line: 1123, column: 5, scope: !1266, inlinedAt: !1822)
!1825 = !DILocation(line: 1148, column: 33, scope: !1301, inlinedAt: !1822)
!1826 = !DILocation(line: 1148, column: 25, scope: !1301, inlinedAt: !1822)
!1827 = !DILocation(line: 1148, column: 13, scope: !1301, inlinedAt: !1822)
!1828 = !DILocation(line: 1190, column: 9, scope: !1386, inlinedAt: !1822)
!1829 = !DILocation(line: 1190, column: 43, scope: !1386, inlinedAt: !1822)
!1830 = !DILocation(line: 1189, column: 14, scope: !1386, inlinedAt: !1822)
!1831 = !DILocation(line: 1217, column: 1, scope: !1266, inlinedAt: !1822)
!1832 = !DILocation(line: 1578, column: 5, scope: !1819)
!1833 = !DILocation(line: 1579, column: 10, scope: !1627)
!1834 = !DILocation(line: 1580, column: 3, scope: !1627)
!1835 = !DILocation(line: 1581, column: 3, scope: !1627)
!1836 = !DILocation(line: 1582, column: 1, scope: !1627)
!1837 = distinct !DISubprogram(name: "ConcatentateHexColorComponent", scope: !888, file: !888, line: 1436, type: !1838, scopeLine: 1438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1840)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{null, !1269, !1271, !573}
!1840 = !{!1841, !1842, !1843, !1844, !1845}
!1841 = !DILocalVariable(name: "pixel", arg: 1, scope: !1837, file: !888, line: 1436, type: !1269)
!1842 = !DILocalVariable(name: "channel", arg: 2, scope: !1837, file: !888, line: 1437, type: !1271)
!1843 = !DILocalVariable(name: "tuple", arg: 3, scope: !1837, file: !888, line: 1437, type: !573)
!1844 = !DILocalVariable(name: "component", scope: !1837, file: !888, line: 1440, type: !810)
!1845 = !DILocalVariable(name: "color", scope: !1837, file: !888, line: 1443, type: !595)
!1846 = !DILocation(line: 0, scope: !1837)
!1847 = !DILocation(line: 1439, column: 3, scope: !1837)
!1848 = !DILocation(line: 1440, column: 5, scope: !1837)
!1849 = !DILocation(line: 1446, column: 3, scope: !1837)
!1850 = !DILocation(line: 1450, column: 20, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !888, line: 1449, column: 5)
!1852 = distinct !DILexicalBlock(scope: !1837, file: !888, line: 1447, column: 3)
!1853 = !DILocation(line: 1451, column: 7, scope: !1851)
!1854 = !DILocation(line: 1455, column: 20, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !888, line: 1454, column: 5)
!1856 = !DILocation(line: 1456, column: 7, scope: !1855)
!1857 = !DILocation(line: 1460, column: 20, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1852, file: !888, line: 1459, column: 5)
!1859 = !DILocation(line: 1461, column: 7, scope: !1858)
!1860 = !DILocation(line: 1465, column: 50, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1852, file: !888, line: 1464, column: 5)
!1862 = !DILocation(line: 1465, column: 42, scope: !1861)
!1863 = !DILocation(line: 1466, column: 7, scope: !1861)
!1864 = !DILocation(line: 1470, column: 20, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1852, file: !888, line: 1469, column: 5)
!1866 = !DILocation(line: 1471, column: 7, scope: !1865)
!1867 = !DILocation(line: 1476, column: 14, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1837, file: !888, line: 1476, column: 7)
!1869 = !DILocation(line: 1476, column: 20, scope: !1868)
!1870 = !DILocation(line: 1476, column: 7, scope: !1837)
!1871 = !DILocation(line: 0, scope: !1327, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 1479, column: 44, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !888, line: 1477, column: 5)
!1874 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1872)
!1875 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1872)
!1876 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1872)
!1877 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1872)
!1878 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1872)
!1879 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1872)
!1880 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1872)
!1881 = !DILocation(line: 0, scope: !1327, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 1480, column: 44, scope: !1873)
!1883 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1882)
!1884 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1882)
!1885 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1882)
!1886 = !DILocation(line: 1478, column: 14, scope: !1873)
!1887 = !DILocation(line: 1482, column: 7, scope: !1873)
!1888 = !DILocation(line: 1484, column: 20, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1837, file: !888, line: 1484, column: 7)
!1890 = !DILocation(line: 1484, column: 7, scope: !1837)
!1891 = !DILocation(line: 0, scope: !1327, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 1487, column: 43, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1889, file: !888, line: 1485, column: 5)
!1894 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !1892)
!1895 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1892)
!1896 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1892)
!1897 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1892)
!1898 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1892)
!1899 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1892)
!1900 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1892)
!1901 = !DILocation(line: 1486, column: 14, scope: !1893)
!1902 = !DILocation(line: 1489, column: 7, scope: !1893)
!1903 = !DILocation(line: 1491, column: 20, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1837, file: !888, line: 1491, column: 7)
!1905 = !DILocation(line: 0, scope: !1327, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 1494, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1904, file: !888, line: 1492, column: 5)
!1908 = !DILocation(line: 0, scope: !1327, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 1499, column: 24, scope: !1837)
!1910 = !DILocation(line: 1491, column: 7, scope: !1837)
!1911 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1906)
!1912 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1906)
!1913 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1906)
!1914 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1906)
!1915 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1906)
!1916 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1906)
!1917 = !DILocation(line: 1493, column: 14, scope: !1907)
!1918 = !DILocation(line: 1496, column: 7, scope: !1907)
!1919 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !1909)
!1920 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !1909)
!1921 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !1909)
!1922 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !1909)
!1923 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !1909)
!1924 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !1909)
!1925 = !DILocation(line: 0, scope: !1369, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 1499, column: 5, scope: !1837)
!1927 = !DILocation(line: 117, column: 61, scope: !1369, inlinedAt: !1926)
!1928 = !DILocation(line: 117, column: 43, scope: !1369, inlinedAt: !1926)
!1929 = !DILocation(line: 117, column: 10, scope: !1369, inlinedAt: !1926)
!1930 = !DILocation(line: 1499, column: 5, scope: !1837)
!1931 = !DILocation(line: 1498, column: 10, scope: !1837)
!1932 = !DILocation(line: 1501, column: 3, scope: !1837)
!1933 = !DILocation(line: 1502, column: 1, scope: !1837)
!1934 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !198, file: !198, line: 157, type: !1935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!607, !1937, !904}
!1937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1938)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !198, line: 99, baseType: !197)
!1939 = !DISubprogram(name: "LocaleLower", scope: !876, file: !876, line: 102, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !573}
!1942 = distinct !DISubprogram(name: "IsColorSimilar", scope: !888, file: !888, line: 1659, type: !1943, scopeLine: 1661, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!587, !1945, !1947, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1950 = !DILocalVariable(name: "image", arg: 1, scope: !1942, file: !888, line: 1659, type: !1945)
!1951 = !DILocalVariable(name: "p", arg: 2, scope: !1942, file: !888, line: 1660, type: !1947)
!1952 = !DILocalVariable(name: "q", arg: 3, scope: !1942, file: !888, line: 1660, type: !1947)
!1953 = !DILocalVariable(name: "fuzz", scope: !1942, file: !888, line: 1663, type: !595)
!1954 = !DILocalVariable(name: "pixel", scope: !1942, file: !888, line: 1664, type: !595)
!1955 = !DILocalVariable(name: "distance", scope: !1942, file: !888, line: 1667, type: !595)
!1956 = !DILocalVariable(name: "scale", scope: !1942, file: !888, line: 1668, type: !595)
!1957 = !DILocation(line: 0, scope: !1942)
!1958 = !DILocation(line: 1670, column: 15, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1670, column: 7)
!1960 = !{!1961, !977, i64 392}
!1961 = !{!"_Image", !922, i64 0, !922, i64 4, !922, i64 8, !978, i64 16, !922, i64 24, !922, i64 28, !922, i64 32, !978, i64 40, !978, i64 48, !978, i64 56, !978, i64 64, !921, i64 72, !1962, i64 80, !1962, i64 88, !1962, i64 96, !977, i64 104, !1963, i64 112, !922, i64 208, !921, i64 216, !922, i64 224, !921, i64 232, !921, i64 240, !921, i64 248, !978, i64 256, !977, i64 264, !977, i64 272, !1965, i64 280, !1965, i64 312, !1965, i64 344, !977, i64 376, !977, i64 384, !977, i64 392, !922, i64 400, !922, i64 404, !922, i64 408, !922, i64 412, !922, i64 416, !922, i64 420, !921, i64 424, !978, i64 432, !978, i64 440, !978, i64 448, !978, i64 456, !978, i64 464, !978, i64 472, !1966, i64 480, !1967, i64 504, !921, i64 568, !921, i64 576, !921, i64 584, !921, i64 592, !921, i64 600, !921, i64 608, !922, i64 616, !922, i64 4712, !922, i64 8808, !978, i64 12904, !978, i64 12912, !1969, i64 12920, !922, i64 12976, !978, i64 12984, !921, i64 12992, !1970, i64 13000, !1970, i64 13032, !921, i64 13064, !978, i64 13072, !978, i64 13080, !921, i64 13088, !921, i64 13096, !921, i64 13104, !922, i64 13112, !922, i64 13116, !1962, i64 13120, !921, i64 13128, !1965, i64 13136, !921, i64 13168, !921, i64 13176, !922, i64 13184, !922, i64 13188, !1971, i64 13192, !922, i64 13200, !978, i64 13208, !978, i64 13216, !922, i64 13224, !978, i64 13232}
!1962 = !{!"_PixelPacket", !1188, i64 0, !1188, i64 2, !1188, i64 4, !1188, i64 6}
!1963 = !{!"_ChromaticityInfo", !1964, i64 0, !1964, i64 24, !1964, i64 48, !1964, i64 72}
!1964 = !{!"_PrimaryInfo", !977, i64 0, !977, i64 8, !977, i64 16}
!1965 = !{!"_RectangleInfo", !978, i64 0, !978, i64 8, !978, i64 16, !978, i64 24}
!1966 = !{!"_ErrorInfo", !977, i64 0, !977, i64 8, !977, i64 16}
!1967 = !{!"_TimerInfo", !1968, i64 0, !1968, i64 24, !922, i64 48, !978, i64 56}
!1968 = !{!"_Timer", !977, i64 0, !977, i64 8, !977, i64 16}
!1969 = !{!"_ExceptionInfo", !922, i64 0, !1071, i64 4, !921, i64 8, !921, i64 16, !921, i64 24, !922, i64 32, !921, i64 40, !978, i64 48}
!1970 = !{!"_ProfileInfo", !921, i64 0, !978, i64 8, !921, i64 16, !978, i64 24}
!1971 = !{!"long long", !922, i64 0}
!1972 = !DILocation(line: 1670, column: 20, scope: !1959)
!1973 = !{!1961, !922, i64 32}
!1974 = !DILocation(line: 1670, column: 28, scope: !1959)
!1975 = !DILocation(line: 1670, column: 45, scope: !1959)
!1976 = !DILocation(line: 1670, column: 7, scope: !1942)
!1977 = !DILocalVariable(name: "x", arg: 1, scope: !1978, file: !888, line: 1652, type: !1981)
!1978 = distinct !DISubprogram(name: "MagickMax", scope: !888, file: !888, line: 1652, type: !1979, scopeLine: 1653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1982)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!589, !1981, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!1982 = !{!1977, !1983}
!1983 = !DILocalVariable(name: "y", arg: 2, scope: !1978, file: !888, line: 1652, type: !1981)
!1984 = !DILocation(line: 0, scope: !1978, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 1672, column: 8, scope: !1942)
!1986 = !DILocation(line: 1654, column: 9, scope: !1987, inlinedAt: !1985)
!1987 = distinct !DILexicalBlock(scope: !1978, file: !888, line: 1654, column: 7)
!1988 = !DILocation(line: 0, scope: !1978, inlinedAt: !1989)
!1989 = distinct !DILocation(line: 1672, column: 43, scope: !1942)
!1990 = !DILocation(line: 1672, column: 42, scope: !1942)
!1991 = !DILocation(line: 1672, column: 8, scope: !1942)
!1992 = !DILocation(line: 1675, column: 7, scope: !1942)
!1993 = !DILocalVariable(name: "p", arg: 1, scope: !1994, file: !1995, line: 30, type: !1947)
!1994 = distinct !DISubprogram(name: "IsColorEqual", scope: !1995, file: !1995, line: 30, type: !1996, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1998)
!1995 = !DIFile(filename: "apps/538.imagick_r/src/magick/color-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1d5db1c576095b1d3349b678b2a970e8")
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!587, !1947, !1947}
!1998 = !{!1993, !1999, !2000, !2001, !2002}
!1999 = !DILocalVariable(name: "q", arg: 2, scope: !1994, file: !1995, line: 31, type: !1947)
!2000 = !DILocalVariable(name: "blue", scope: !1994, file: !1995, line: 34, type: !595)
!2001 = !DILocalVariable(name: "green", scope: !1994, file: !1995, line: 35, type: !595)
!2002 = !DILocalVariable(name: "red", scope: !1994, file: !1995, line: 36, type: !595)
!2003 = !DILocation(line: 0, scope: !1994, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 1671, column: 12, scope: !1959)
!2005 = !DILocation(line: 38, column: 27, scope: !1994, inlinedAt: !2004)
!2006 = !{!1962, !1188, i64 4}
!2007 = !DILocation(line: 38, column: 7, scope: !1994, inlinedAt: !2004)
!2008 = !DILocation(line: 40, column: 28, scope: !1994, inlinedAt: !2004)
!2009 = !{!1962, !1188, i64 0}
!2010 = !DILocation(line: 40, column: 8, scope: !1994, inlinedAt: !2004)
!2011 = !DILocation(line: 41, column: 20, scope: !2012, inlinedAt: !2004)
!2012 = distinct !DILexicalBlock(scope: !1994, file: !1995, line: 41, column: 7)
!2013 = !DILocation(line: 41, column: 17, scope: !2012, inlinedAt: !2004)
!2014 = !DILocation(line: 41, column: 16, scope: !2012, inlinedAt: !2004)
!2015 = !DILocation(line: 41, column: 8, scope: !2012, inlinedAt: !2004)
!2016 = !DILocation(line: 41, column: 25, scope: !2012, inlinedAt: !2004)
!2017 = !DILocation(line: 41, column: 42, scope: !2012, inlinedAt: !2004)
!2018 = !DILocation(line: 39, column: 29, scope: !1994, inlinedAt: !2004)
!2019 = !{!1962, !1188, i64 2}
!2020 = !DILocation(line: 39, column: 9, scope: !1994, inlinedAt: !2004)
!2021 = !DILocation(line: 42, column: 22, scope: !2012, inlinedAt: !2004)
!2022 = !DILocation(line: 42, column: 19, scope: !2012, inlinedAt: !2004)
!2023 = !DILocation(line: 42, column: 18, scope: !2012, inlinedAt: !2004)
!2024 = !DILocation(line: 42, column: 8, scope: !2012, inlinedAt: !2004)
!2025 = !DILocation(line: 42, column: 29, scope: !2012, inlinedAt: !2004)
!2026 = !DILocation(line: 42, column: 46, scope: !2012, inlinedAt: !2004)
!2027 = !DILocation(line: 43, column: 21, scope: !2012, inlinedAt: !2004)
!2028 = !DILocation(line: 43, column: 18, scope: !2012, inlinedAt: !2004)
!2029 = !DILocation(line: 43, column: 17, scope: !2012, inlinedAt: !2004)
!2030 = !DILocation(line: 43, column: 8, scope: !2012, inlinedAt: !2004)
!2031 = !DILocation(line: 43, column: 27, scope: !2012, inlinedAt: !2004)
!2032 = !DILocation(line: 41, column: 7, scope: !1994, inlinedAt: !2004)
!2033 = !DILocation(line: 45, column: 3, scope: !1994, inlinedAt: !2004)
!2034 = !DILocation(line: 1675, column: 20, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1675, column: 7)
!2036 = !DILocation(line: 1680, column: 62, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2035, file: !888, line: 1676, column: 5)
!2038 = !{!1962, !1188, i64 6}
!2039 = !DILocation(line: 1681, column: 58, scope: !2037)
!2040 = !DILocation(line: 1681, column: 55, scope: !2037)
!2041 = !DILocation(line: 1681, column: 23, scope: !2037)
!2042 = !DILocation(line: 1680, column: 13, scope: !2037)
!2043 = !DILocation(line: 1683, column: 21, scope: !2037)
!2044 = !DILocation(line: 1684, column: 20, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2037, file: !888, line: 1684, column: 11)
!2046 = !DILocation(line: 1684, column: 11, scope: !2037)
!2047 = !DILocation(line: 1690, column: 27, scope: !2037)
!2048 = !DILocation(line: 1690, column: 26, scope: !2037)
!2049 = !DILocation(line: 1690, column: 13, scope: !2037)
!2050 = !DILocation(line: 1691, column: 28, scope: !2037)
!2051 = !DILocation(line: 1691, column: 27, scope: !2037)
!2052 = !DILocation(line: 1691, column: 12, scope: !2037)
!2053 = !DILocation(line: 1692, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2037, file: !888, line: 1692, column: 11)
!2055 = !DILocation(line: 1692, column: 17, scope: !2054)
!2056 = !DILocation(line: 1692, column: 11, scope: !2037)
!2057 = !DILocation(line: 1698, column: 11, scope: !1942)
!2058 = !DILocation(line: 1699, column: 7, scope: !1942)
!2059 = !DILocation(line: 1700, column: 26, scope: !1942)
!2060 = !DILocation(line: 1700, column: 9, scope: !1942)
!2061 = !DILocation(line: 1700, column: 41, scope: !1942)
!2062 = !DILocation(line: 1700, column: 40, scope: !1942)
!2063 = !DILocation(line: 1701, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1701, column: 7)
!2065 = !{!1961, !922, i64 4}
!2066 = !DILocation(line: 1701, column: 44, scope: !2064)
!2067 = !DILocation(line: 1710, column: 11, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !888, line: 1710, column: 11)
!2069 = distinct !DILexicalBlock(scope: !2064, file: !888, line: 1705, column: 5)
!2070 = !DILocation(line: 1710, column: 32, scope: !2068)
!2071 = !DILocation(line: 1710, column: 11, scope: !2069)
!2072 = !DILocation(line: 1711, column: 14, scope: !2068)
!2073 = !DILocation(line: 1711, column: 9, scope: !2068)
!2074 = !DILocation(line: 1712, column: 12, scope: !2069)
!2075 = !DILocation(line: 1713, column: 5, scope: !2069)
!2076 = !DILocation(line: 1714, column: 18, scope: !1942)
!2077 = !DILocation(line: 1714, column: 11, scope: !1942)
!2078 = !DILocation(line: 1715, column: 16, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1715, column: 7)
!2080 = !DILocation(line: 1715, column: 7, scope: !1942)
!2081 = !DILocation(line: 1717, column: 26, scope: !1942)
!2082 = !DILocation(line: 1717, column: 9, scope: !1942)
!2083 = !DILocation(line: 1717, column: 46, scope: !1942)
!2084 = !DILocation(line: 1717, column: 43, scope: !1942)
!2085 = !DILocation(line: 1717, column: 42, scope: !1942)
!2086 = !DILocation(line: 1718, column: 18, scope: !1942)
!2087 = !DILocation(line: 1718, column: 11, scope: !1942)
!2088 = !DILocation(line: 1719, column: 16, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1719, column: 7)
!2090 = !DILocation(line: 1719, column: 7, scope: !1942)
!2091 = !DILocation(line: 1721, column: 26, scope: !1942)
!2092 = !DILocation(line: 1721, column: 9, scope: !1942)
!2093 = !DILocation(line: 1721, column: 45, scope: !1942)
!2094 = !DILocation(line: 1721, column: 42, scope: !1942)
!2095 = !DILocation(line: 1721, column: 41, scope: !1942)
!2096 = !DILocation(line: 1722, column: 18, scope: !1942)
!2097 = !DILocation(line: 1722, column: 11, scope: !1942)
!2098 = !DILocation(line: 1723, column: 16, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1942, file: !888, line: 1723, column: 7)
!2100 = !DILocation(line: 1726, column: 1, scope: !1942)
!2101 = distinct !DISubprogram(name: "IsImageSimilar", scope: !888, file: !888, line: 1763, type: !2102, scopeLine: 1766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!587, !1945, !1945, !2104, !2104, !1007}
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2106 = !DILocalVariable(name: "image", arg: 1, scope: !2101, file: !888, line: 1763, type: !1945)
!2107 = !DILocalVariable(name: "target_image", arg: 2, scope: !2101, file: !888, line: 1764, type: !1945)
!2108 = !DILocalVariable(name: "x_offset", arg: 3, scope: !2101, file: !888, line: 1764, type: !2104)
!2109 = !DILocalVariable(name: "y_offset", arg: 4, scope: !2101, file: !888, line: 1764, type: !2104)
!2110 = !DILocalVariable(name: "exception", arg: 5, scope: !2101, file: !888, line: 1765, type: !1007)
!2111 = !DILocalVariable(name: "image_view", scope: !2101, file: !888, line: 1770, type: !2112)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !2114, line: 50, baseType: !2115)
!2114 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !475, line: 160, flags: DIFlagFwdDecl)
!2116 = !DILocalVariable(name: "target_view", scope: !2101, file: !888, line: 1771, type: !2112)
!2117 = !DILocalVariable(name: "status", scope: !2101, file: !888, line: 1774, type: !587)
!2118 = !DILocalVariable(name: "target", scope: !2101, file: !888, line: 1777, type: !579)
!2119 = !DILocalVariable(name: "pixel", scope: !2101, file: !888, line: 1778, type: !579)
!2120 = !DILocalVariable(name: "p", scope: !2101, file: !888, line: 1781, type: !1947)
!2121 = !DILocalVariable(name: "q", scope: !2101, file: !888, line: 1782, type: !1947)
!2122 = !DILocalVariable(name: "indexes", scope: !2101, file: !888, line: 1785, type: !883)
!2123 = !DILocalVariable(name: "target_indexes", scope: !2101, file: !888, line: 1786, type: !883)
!2124 = !DILocalVariable(name: "i", scope: !2101, file: !888, line: 1789, type: !615)
!2125 = !DILocalVariable(name: "x", scope: !2101, file: !888, line: 1790, type: !615)
!2126 = !DILocalVariable(name: "j", scope: !2101, file: !888, line: 1793, type: !615)
!2127 = !DILocalVariable(name: "y", scope: !2101, file: !888, line: 1794, type: !615)
!2128 = !DILocalVariable(name: "proceed", scope: !2129, file: !888, line: 1839, type: !587)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !888, line: 1837, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !888, line: 1836, column: 9)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !888, line: 1812, column: 3)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !888, line: 1811, column: 3)
!2133 = distinct !DILexicalBlock(scope: !2101, file: !888, line: 1811, column: 3)
!2134 = !DILocation(line: 0, scope: !2101)
!2135 = !DILocation(line: 1776, column: 3, scope: !2101)
!2136 = !DILocation(line: 1777, column: 5, scope: !2101)
!2137 = !DILocation(line: 1778, column: 5, scope: !2101)
!2138 = !DILocation(line: 1798, column: 14, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2101, file: !888, line: 1798, column: 7)
!2140 = !{!1961, !922, i64 12976}
!2141 = !DILocation(line: 1798, column: 20, scope: !2139)
!2142 = !DILocation(line: 1798, column: 7, scope: !2101)
!2143 = !DILocation(line: 1799, column: 68, scope: !2139)
!2144 = !DILocation(line: 1799, column: 12, scope: !2139)
!2145 = !DILocation(line: 1799, column: 5, scope: !2139)
!2146 = !DILocation(line: 1807, column: 3, scope: !2101)
!2147 = !DILocation(line: 1808, column: 3, scope: !2101)
!2148 = !DILocation(line: 1809, column: 14, scope: !2101)
!2149 = !DILocation(line: 1810, column: 15, scope: !2101)
!2150 = !DILocation(line: 1811, column: 11, scope: !2133)
!2151 = !DILocation(line: 1811, column: 44, scope: !2132)
!2152 = !{!1961, !978, i64 48}
!2153 = !DILocation(line: 1811, column: 25, scope: !2132)
!2154 = !DILocation(line: 1811, column: 3, scope: !2133)
!2155 = !DILocation(line: 1813, column: 14, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2131, file: !888, line: 1813, column: 5)
!2157 = !DILocation(line: 1813, column: 12, scope: !2156)
!2158 = !DILocation(line: 1813, column: 21, scope: !2156)
!2159 = !DILocation(line: 1813, column: 57, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !888, line: 1813, column: 5)
!2161 = !{!1961, !978, i64 40}
!2162 = !DILocation(line: 1813, column: 38, scope: !2160)
!2163 = !DILocation(line: 1813, column: 5, scope: !2156)
!2164 = !DILocation(line: 1815, column: 45, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !888, line: 1815, column: 7)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !888, line: 1815, column: 7)
!2167 = distinct !DILexicalBlock(scope: !2160, file: !888, line: 1814, column: 5)
!2168 = !DILocation(line: 1815, column: 19, scope: !2165)
!2169 = !DILocation(line: 1831, column: 11, scope: !2167)
!2170 = !DILocation(line: 1834, column: 9, scope: !2131)
!2171 = !DILocation(line: 1815, column: 7, scope: !2166)
!2172 = !DILocation(line: 1817, column: 47, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !888, line: 1817, column: 9)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !888, line: 1817, column: 9)
!2175 = distinct !DILexicalBlock(scope: !2165, file: !888, line: 1816, column: 7)
!2176 = !DILocation(line: 1817, column: 21, scope: !2173)
!2177 = !DILocation(line: 1817, column: 9, scope: !2174)
!2178 = !DILocation(line: 1819, column: 51, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2173, file: !888, line: 1818, column: 9)
!2180 = !DILocation(line: 1819, column: 13, scope: !2179)
!2181 = !DILocation(line: 1820, column: 19, scope: !2179)
!2182 = !DILocation(line: 1821, column: 11, scope: !2179)
!2183 = !DILocalVariable(name: "image", arg: 1, scope: !2184, file: !2185, line: 92, type: !1945)
!2184 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !2185, file: !2185, line: 92, type: !2186, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2189)
!2185 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1945, !1947, !883, !2188}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!2189 = !{!2183, !2190, !2191, !2192}
!2190 = !DILocalVariable(name: "color", arg: 2, scope: !2184, file: !2185, line: 93, type: !1947)
!2191 = !DILocalVariable(name: "index", arg: 3, scope: !2184, file: !2185, line: 93, type: !883)
!2192 = !DILocalVariable(name: "pixel", arg: 4, scope: !2184, file: !2185, line: 93, type: !2188)
!2193 = !DILocation(line: 0, scope: !2184, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 1821, column: 11, scope: !2179)
!2195 = !DILocation(line: 95, column: 31, scope: !2184, inlinedAt: !2194)
!2196 = !DILocation(line: 95, column: 14, scope: !2184, inlinedAt: !2194)
!2197 = !DILocation(line: 95, column: 13, scope: !2184, inlinedAt: !2194)
!2198 = !DILocation(line: 96, column: 33, scope: !2184, inlinedAt: !2194)
!2199 = !DILocation(line: 96, column: 16, scope: !2184, inlinedAt: !2194)
!2200 = !DILocation(line: 96, column: 15, scope: !2184, inlinedAt: !2194)
!2201 = !DILocation(line: 97, column: 32, scope: !2184, inlinedAt: !2194)
!2202 = !DILocation(line: 97, column: 15, scope: !2184, inlinedAt: !2194)
!2203 = !DILocation(line: 97, column: 14, scope: !2184, inlinedAt: !2194)
!2204 = !DILocation(line: 98, column: 35, scope: !2184, inlinedAt: !2194)
!2205 = !DILocation(line: 98, column: 18, scope: !2184, inlinedAt: !2194)
!2206 = !DILocation(line: 98, column: 17, scope: !2184, inlinedAt: !2194)
!2207 = !DILocation(line: 99, column: 26, scope: !2208, inlinedAt: !2194)
!2208 = distinct !DILexicalBlock(scope: !2184, file: !2185, line: 99, column: 7)
!2209 = !DILocation(line: 99, column: 45, scope: !2208, inlinedAt: !2194)
!2210 = !DILocation(line: 101, column: 35, scope: !2208, inlinedAt: !2194)
!2211 = !DILocation(line: 101, column: 18, scope: !2208, inlinedAt: !2194)
!2212 = !DILocation(line: 101, column: 17, scope: !2208, inlinedAt: !2194)
!2213 = !DILocation(line: 101, column: 5, scope: !2208, inlinedAt: !2194)
!2214 = !DILocation(line: 1822, column: 13, scope: !2179)
!2215 = !DILocation(line: 1823, column: 26, scope: !2179)
!2216 = !DILocation(line: 1824, column: 11, scope: !2179)
!2217 = !DILocation(line: 0, scope: !2184, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 1824, column: 11, scope: !2179)
!2219 = !DILocation(line: 95, column: 31, scope: !2184, inlinedAt: !2218)
!2220 = !DILocation(line: 95, column: 14, scope: !2184, inlinedAt: !2218)
!2221 = !DILocation(line: 95, column: 13, scope: !2184, inlinedAt: !2218)
!2222 = !DILocation(line: 96, column: 33, scope: !2184, inlinedAt: !2218)
!2223 = !DILocation(line: 96, column: 16, scope: !2184, inlinedAt: !2218)
!2224 = !DILocation(line: 96, column: 15, scope: !2184, inlinedAt: !2218)
!2225 = !DILocation(line: 97, column: 32, scope: !2184, inlinedAt: !2218)
!2226 = !DILocation(line: 97, column: 15, scope: !2184, inlinedAt: !2218)
!2227 = !DILocation(line: 97, column: 14, scope: !2184, inlinedAt: !2218)
!2228 = !DILocation(line: 98, column: 35, scope: !2184, inlinedAt: !2218)
!2229 = !DILocation(line: 98, column: 18, scope: !2184, inlinedAt: !2218)
!2230 = !DILocation(line: 98, column: 17, scope: !2184, inlinedAt: !2218)
!2231 = !DILocation(line: 99, column: 26, scope: !2208, inlinedAt: !2218)
!2232 = !DILocation(line: 99, column: 45, scope: !2208, inlinedAt: !2218)
!2233 = !DILocation(line: 101, column: 35, scope: !2208, inlinedAt: !2218)
!2234 = !DILocation(line: 101, column: 18, scope: !2208, inlinedAt: !2218)
!2235 = !DILocation(line: 101, column: 17, scope: !2208, inlinedAt: !2218)
!2236 = !DILocation(line: 101, column: 5, scope: !2208, inlinedAt: !2218)
!2237 = !DILocation(line: 1825, column: 15, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2179, file: !888, line: 1825, column: 15)
!2239 = !DILocation(line: 1825, column: 52, scope: !2238)
!2240 = !DILocation(line: 1825, column: 15, scope: !2179)
!2241 = !DILocation(line: 1828, column: 41, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2175, file: !888, line: 1828, column: 13)
!2243 = !DILocation(line: 1817, column: 57, scope: !2173)
!2244 = distinct !{!2244, !2177, !2245, !1085, !1086}
!2245 = !DILocation(line: 1827, column: 9, scope: !2174)
!2246 = !DILocation(line: 0, scope: !2174)
!2247 = !DILocation(line: 1828, column: 15, scope: !2242)
!2248 = !DILocation(line: 1828, column: 13, scope: !2175)
!2249 = !DILocation(line: 1831, column: 40, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2167, file: !888, line: 1831, column: 11)
!2251 = !DILocation(line: 1815, column: 52, scope: !2165)
!2252 = distinct !{!2252, !2171, !2253, !1085, !1086, !2254}
!2253 = !DILocation(line: 1830, column: 7, scope: !2166)
!2254 = !{!"llvm.loop.unswitch.partial.disable"}
!2255 = !DILocation(line: 0, scope: !2166)
!2256 = !DILocation(line: 1831, column: 13, scope: !2250)
!2257 = !DILocation(line: 1834, column: 30, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2131, file: !888, line: 1834, column: 9)
!2259 = !DILocation(line: 1813, column: 67, scope: !2160)
!2260 = distinct !{!2260, !2163, !2261, !1085, !1086, !2254}
!2261 = !DILocation(line: 1833, column: 5, scope: !2156)
!2262 = !DILocation(line: 0, scope: !2156)
!2263 = !DILocation(line: 1834, column: 11, scope: !2258)
!2264 = !DILocation(line: 1836, column: 16, scope: !2130)
!2265 = !{!1961, !921, i64 568}
!2266 = !DILocation(line: 1836, column: 33, scope: !2130)
!2267 = !DILocation(line: 1836, column: 9, scope: !2131)
!2268 = !DILocation(line: 1842, column: 18, scope: !2129)
!2269 = !DILocalVariable(name: "image", arg: 1, scope: !2270, file: !2271, line: 27, type: !1945)
!2270 = distinct !DISubprogram(name: "SetImageProgress", scope: !2271, file: !2271, line: 27, type: !2272, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2271 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!587, !1945, !607, !625, !628}
!2274 = !{!2269, !2275, !2276, !2277, !2278}
!2275 = !DILocalVariable(name: "tag", arg: 2, scope: !2270, file: !2271, line: 28, type: !607)
!2276 = !DILocalVariable(name: "offset", arg: 3, scope: !2270, file: !2271, line: 28, type: !625)
!2277 = !DILocalVariable(name: "extent", arg: 4, scope: !2270, file: !2271, line: 28, type: !628)
!2278 = !DILocalVariable(name: "message", scope: !2270, file: !2271, line: 31, type: !810)
!2279 = !DILocation(line: 0, scope: !2270, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1841, column: 17, scope: !2129)
!2281 = !DILocation(line: 30, column: 3, scope: !2270, inlinedAt: !2280)
!2282 = !DILocation(line: 31, column: 5, scope: !2270, inlinedAt: !2280)
!2283 = !DILocation(line: 35, column: 10, scope: !2270, inlinedAt: !2280)
!2284 = !DILocation(line: 36, column: 17, scope: !2270, inlinedAt: !2280)
!2285 = !DILocation(line: 36, column: 63, scope: !2270, inlinedAt: !2280)
!2286 = !{!1961, !921, i64 576}
!2287 = !DILocation(line: 36, column: 10, scope: !2270, inlinedAt: !2280)
!2288 = !DILocation(line: 37, column: 1, scope: !2270, inlinedAt: !2280)
!2289 = !DILocation(line: 0, scope: !2129)
!2290 = !DILocation(line: 1843, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2129, file: !888, line: 1843, column: 13)
!2292 = !DILocation(line: 1843, column: 13, scope: !2129)
!2293 = !DILocation(line: 1845, column: 7, scope: !2129)
!2294 = !DILocation(line: 1811, column: 51, scope: !2132)
!2295 = distinct !{!2295, !2154, !2296, !1085, !1086}
!2296 = !DILocation(line: 1846, column: 3, scope: !2133)
!2297 = !DILocation(line: 0, scope: !2133)
!2298 = !DILocation(line: 1847, column: 15, scope: !2101)
!2299 = !DILocation(line: 1848, column: 14, scope: !2101)
!2300 = !DILocation(line: 1849, column: 12, scope: !2101)
!2301 = !DILocation(line: 1850, column: 12, scope: !2101)
!2302 = !DILocation(line: 1851, column: 14, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2101, file: !888, line: 1851, column: 7)
!2304 = !DILocation(line: 1851, column: 7, scope: !2101)
!2305 = !DILocation(line: 1853, column: 31, scope: !2101)
!2306 = !DILocation(line: 1853, column: 12, scope: !2101)
!2307 = !DILocation(line: 1853, column: 10, scope: !2101)
!2308 = !DILocation(line: 1853, column: 3, scope: !2101)
!2309 = !DILocation(line: 1854, column: 1, scope: !2101)
!2310 = !DISubprogram(name: "GetMagickPixelPacket", scope: !475, file: !475, line: 185, type: !2311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{null, !1945, !2188}
!2313 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !2114, file: !2114, line: 55, type: !2314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!2112, !1945, !1007}
!2316 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !2114, file: !2114, line: 69, type: !2317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!1947, !2319, !904, !904, !1235, !1235, !1007}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2113)
!2321 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !2114, file: !2114, line: 66, type: !2322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!883, !2319}
!2324 = distinct !DISubprogram(name: "IsMagickColorSimilar", scope: !888, file: !888, line: 1901, type: !2325, scopeLine: 1903, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2327)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!587, !1269, !1269}
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333}
!2328 = !DILocalVariable(name: "p", arg: 1, scope: !2324, file: !888, line: 1901, type: !1269)
!2329 = !DILocalVariable(name: "q", arg: 2, scope: !2324, file: !888, line: 1902, type: !1269)
!2330 = !DILocalVariable(name: "fuzz", scope: !2324, file: !888, line: 1905, type: !595)
!2331 = !DILocalVariable(name: "pixel", scope: !2324, file: !888, line: 1906, type: !595)
!2332 = !DILocalVariable(name: "scale", scope: !2324, file: !888, line: 1909, type: !595)
!2333 = !DILocalVariable(name: "distance", scope: !2324, file: !888, line: 1910, type: !595)
!2334 = !DILocation(line: 0, scope: !2324)
!2335 = !DILocation(line: 1912, column: 11, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1912, column: 7)
!2337 = !{!976, !977, i64 16}
!2338 = !DILocation(line: 1912, column: 16, scope: !2336)
!2339 = !DILocation(line: 1912, column: 24, scope: !2336)
!2340 = !DILocation(line: 1912, column: 7, scope: !2324)
!2341 = !DILocalVariable(name: "p", arg: 1, scope: !2342, file: !1995, line: 48, type: !1269)
!2342 = distinct !DISubprogram(name: "IsMagickColorEqual", scope: !1995, file: !1995, line: 48, type: !2325, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2343)
!2343 = !{!2341, !2344}
!2344 = !DILocalVariable(name: "q", arg: 2, scope: !2342, file: !1995, line: 49, type: !1269)
!2345 = !DILocation(line: 0, scope: !2342, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 1913, column: 12, scope: !2336)
!2347 = !DILocation(line: 51, column: 11, scope: !2348, inlinedAt: !2346)
!2348 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 51, column: 7)
!2349 = !DILocation(line: 51, column: 17, scope: !2348, inlinedAt: !2346)
!2350 = !DILocation(line: 51, column: 33, scope: !2348, inlinedAt: !2346)
!2351 = !DILocation(line: 51, column: 62, scope: !2348, inlinedAt: !2346)
!2352 = !DILocation(line: 52, column: 8, scope: !2348, inlinedAt: !2346)
!2353 = !DILocation(line: 52, column: 39, scope: !2348, inlinedAt: !2346)
!2354 = !DILocation(line: 51, column: 7, scope: !2342, inlinedAt: !2346)
!2355 = !DILocation(line: 54, column: 33, scope: !2356, inlinedAt: !2346)
!2356 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 54, column: 7)
!2357 = !DILocation(line: 55, column: 16, scope: !2356, inlinedAt: !2346)
!2358 = !DILocation(line: 55, column: 8, scope: !2356, inlinedAt: !2346)
!2359 = !DILocation(line: 55, column: 40, scope: !2356, inlinedAt: !2346)
!2360 = !DILocation(line: 54, column: 7, scope: !2342, inlinedAt: !2346)
!2361 = !DILocation(line: 59, column: 30, scope: !2362, inlinedAt: !2346)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !1995, line: 59, column: 11)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !1995, line: 58, column: 5)
!2364 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 57, column: 7)
!2365 = !DILocation(line: 59, column: 26, scope: !2362, inlinedAt: !2346)
!2366 = !DILocation(line: 59, column: 11, scope: !2362, inlinedAt: !2346)
!2367 = !DILocation(line: 59, column: 39, scope: !2362, inlinedAt: !2346)
!2368 = !DILocation(line: 59, column: 11, scope: !2363, inlinedAt: !2346)
!2369 = !DILocation(line: 61, column: 26, scope: !2370, inlinedAt: !2346)
!2370 = distinct !DILexicalBlock(scope: !2363, file: !1995, line: 61, column: 11)
!2371 = !DILocation(line: 61, column: 11, scope: !2370, inlinedAt: !2346)
!2372 = !DILocation(line: 61, column: 47, scope: !2370, inlinedAt: !2346)
!2373 = !DILocation(line: 61, column: 11, scope: !2363, inlinedAt: !2346)
!2374 = !DILocation(line: 64, column: 15, scope: !2375, inlinedAt: !2346)
!2375 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 64, column: 7)
!2376 = !DILocation(line: 64, column: 22, scope: !2375, inlinedAt: !2346)
!2377 = !DILocation(line: 64, column: 18, scope: !2375, inlinedAt: !2346)
!2378 = !DILocation(line: 64, column: 7, scope: !2375, inlinedAt: !2346)
!2379 = !DILocation(line: 64, column: 27, scope: !2375, inlinedAt: !2346)
!2380 = !DILocation(line: 64, column: 7, scope: !2342, inlinedAt: !2346)
!2381 = !DILocation(line: 66, column: 15, scope: !2382, inlinedAt: !2346)
!2382 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 66, column: 7)
!2383 = !DILocation(line: 66, column: 24, scope: !2382, inlinedAt: !2346)
!2384 = !DILocation(line: 66, column: 20, scope: !2382, inlinedAt: !2346)
!2385 = !DILocation(line: 66, column: 7, scope: !2382, inlinedAt: !2346)
!2386 = !DILocation(line: 66, column: 31, scope: !2382, inlinedAt: !2346)
!2387 = !DILocation(line: 66, column: 7, scope: !2342, inlinedAt: !2346)
!2388 = !DILocation(line: 68, column: 15, scope: !2389, inlinedAt: !2346)
!2389 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 68, column: 7)
!2390 = !DILocation(line: 68, column: 23, scope: !2389, inlinedAt: !2346)
!2391 = !DILocation(line: 68, column: 19, scope: !2389, inlinedAt: !2346)
!2392 = !DILocation(line: 68, column: 7, scope: !2389, inlinedAt: !2346)
!2393 = !DILocation(line: 68, column: 29, scope: !2389, inlinedAt: !2346)
!2394 = !DILocation(line: 68, column: 7, scope: !2342, inlinedAt: !2346)
!2395 = !DILocation(line: 70, column: 11, scope: !2396, inlinedAt: !2346)
!2396 = distinct !DILexicalBlock(scope: !2342, file: !1995, line: 70, column: 7)
!2397 = !DILocation(line: 70, column: 22, scope: !2396, inlinedAt: !2346)
!2398 = !DILocation(line: 70, column: 41, scope: !2396, inlinedAt: !2346)
!2399 = !DILocation(line: 71, column: 16, scope: !2396, inlinedAt: !2346)
!2400 = !DILocation(line: 71, column: 25, scope: !2396, inlinedAt: !2346)
!2401 = !DILocation(line: 71, column: 21, scope: !2396, inlinedAt: !2346)
!2402 = !DILocation(line: 71, column: 8, scope: !2396, inlinedAt: !2346)
!2403 = !DILocation(line: 71, column: 32, scope: !2396, inlinedAt: !2346)
!2404 = !DILocation(line: 70, column: 7, scope: !2342, inlinedAt: !2346)
!2405 = !DILocation(line: 73, column: 3, scope: !2342, inlinedAt: !2346)
!2406 = !DILocation(line: 0, scope: !1978, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1915, column: 10, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1914, column: 7)
!2409 = !DILocation(line: 1654, column: 9, scope: !1987, inlinedAt: !2407)
!2410 = !DILocation(line: 0, scope: !1978, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1915, column: 41, scope: !2408)
!2412 = !DILocation(line: 1915, column: 40, scope: !2408)
!2413 = !DILocation(line: 1915, column: 5, scope: !2408)
!2414 = !DILocation(line: 0, scope: !1978, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1917, column: 10, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2408, file: !888, line: 1916, column: 12)
!2417 = !DILocation(line: 0, scope: !1978, inlinedAt: !2418)
!2418 = distinct !DILocation(line: 1919, column: 10, scope: !2416)
!2419 = !DILocation(line: 0, scope: !2416)
!2420 = !DILocation(line: 1916, column: 12, scope: !2408)
!2421 = !DILocation(line: 0, scope: !1978, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1917, column: 41, scope: !2416)
!2423 = !DILocation(line: 1917, column: 40, scope: !2416)
!2424 = !DILocation(line: 1917, column: 5, scope: !2416)
!2425 = !DILocation(line: 0, scope: !1978, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 1919, column: 41, scope: !2416)
!2427 = !DILocation(line: 1654, column: 9, scope: !1987, inlinedAt: !2426)
!2428 = !DILocation(line: 1919, column: 40, scope: !2416)
!2429 = !DILocation(line: 0, scope: !2408)
!2430 = !DILocation(line: 1922, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1922, column: 7)
!2432 = !DILocation(line: 1922, column: 17, scope: !2431)
!2433 = !DILocation(line: 1922, column: 33, scope: !2431)
!2434 = !DILocation(line: 1922, column: 40, scope: !2431)
!2435 = !DILocation(line: 1922, column: 46, scope: !2431)
!2436 = !DILocation(line: 1922, column: 7, scope: !2324)
!2437 = !DILocation(line: 1927, column: 40, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2431, file: !888, line: 1923, column: 5)
!2439 = !DILocation(line: 1928, column: 13, scope: !2438)
!2440 = !DILocation(line: 1928, column: 19, scope: !2438)
!2441 = !DILocation(line: 1928, column: 10, scope: !2438)
!2442 = !DILocation(line: 1928, column: 39, scope: !2438)
!2443 = !DILocation(line: 1927, column: 75, scope: !2438)
!2444 = !DILocation(line: 1929, column: 21, scope: !2438)
!2445 = !DILocation(line: 1930, column: 20, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !888, line: 1930, column: 11)
!2447 = !DILocation(line: 1930, column: 11, scope: !2438)
!2448 = !DILocation(line: 1937, column: 29, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2438, file: !888, line: 1936, column: 11)
!2450 = !DILocation(line: 1937, column: 28, scope: !2449)
!2451 = !DILocation(line: 1937, column: 15, scope: !2449)
!2452 = !DILocation(line: 1938, column: 11, scope: !2438)
!2453 = !DILocation(line: 1939, column: 30, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2438, file: !888, line: 1938, column: 11)
!2455 = !DILocation(line: 1939, column: 29, scope: !2454)
!2456 = !DILocation(line: 1939, column: 9, scope: !2454)
!2457 = !DILocation(line: 0, scope: !2438)
!2458 = !DILocation(line: 1940, column: 12, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2438, file: !888, line: 1940, column: 12)
!2460 = !DILocation(line: 1940, column: 18, scope: !2459)
!2461 = !DILocation(line: 1940, column: 12, scope: !2438)
!2462 = !DILocation(line: 1946, column: 10, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1946, column: 7)
!2464 = !DILocation(line: 1946, column: 21, scope: !2463)
!2465 = !DILocation(line: 1946, column: 7, scope: !2324)
!2466 = !DILocation(line: 1948, column: 16, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !888, line: 1947, column: 5)
!2468 = !DILocation(line: 1948, column: 25, scope: !2467)
!2469 = !DILocation(line: 1948, column: 21, scope: !2467)
!2470 = !DILocation(line: 1949, column: 22, scope: !2467)
!2471 = !DILocation(line: 1949, column: 15, scope: !2467)
!2472 = !DILocation(line: 1950, column: 20, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2467, file: !888, line: 1950, column: 11)
!2474 = !DILocation(line: 1950, column: 11, scope: !2467)
!2475 = !DILocation(line: 1952, column: 58, scope: !2467)
!2476 = !DILocation(line: 1952, column: 45, scope: !2467)
!2477 = !DILocation(line: 1952, column: 44, scope: !2467)
!2478 = !DILocation(line: 1952, column: 14, scope: !2467)
!2479 = !DILocation(line: 1952, column: 12, scope: !2467)
!2480 = !DILocation(line: 1953, column: 58, scope: !2467)
!2481 = !DILocation(line: 1953, column: 45, scope: !2467)
!2482 = !DILocation(line: 1953, column: 44, scope: !2467)
!2483 = !DILocation(line: 1953, column: 14, scope: !2467)
!2484 = !DILocation(line: 1953, column: 12, scope: !2467)
!2485 = !DILocation(line: 1960, column: 12, scope: !2324)
!2486 = !DILocation(line: 1960, column: 19, scope: !2324)
!2487 = !DILocation(line: 1960, column: 15, scope: !2324)
!2488 = !DILocation(line: 1961, column: 40, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1961, column: 7)
!2490 = !DILocation(line: 1969, column: 11, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !888, line: 1969, column: 11)
!2492 = distinct !DILexicalBlock(scope: !2489, file: !888, line: 1963, column: 5)
!2493 = !DILocation(line: 1969, column: 32, scope: !2491)
!2494 = !DILocation(line: 1969, column: 11, scope: !2492)
!2495 = !DILocation(line: 1970, column: 14, scope: !2491)
!2496 = !DILocation(line: 1970, column: 9, scope: !2491)
!2497 = !DILocation(line: 1971, column: 12, scope: !2492)
!2498 = !DILocation(line: 1972, column: 5, scope: !2492)
!2499 = !DILocation(line: 1958, column: 11, scope: !2324)
!2500 = !DILocation(line: 1959, column: 7, scope: !2324)
!2501 = !DILocation(line: 1973, column: 18, scope: !2324)
!2502 = !DILocation(line: 1973, column: 11, scope: !2324)
!2503 = !DILocation(line: 1974, column: 16, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1974, column: 7)
!2505 = !DILocation(line: 1974, column: 7, scope: !2324)
!2506 = !DILocation(line: 1976, column: 9, scope: !2324)
!2507 = !DILocation(line: 1976, column: 29, scope: !2324)
!2508 = !DILocation(line: 1976, column: 25, scope: !2324)
!2509 = !DILocation(line: 1977, column: 18, scope: !2324)
!2510 = !DILocation(line: 1977, column: 11, scope: !2324)
!2511 = !DILocation(line: 1978, column: 16, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1978, column: 7)
!2513 = !DILocation(line: 1978, column: 7, scope: !2324)
!2514 = !DILocation(line: 1980, column: 9, scope: !2324)
!2515 = !DILocation(line: 1980, column: 28, scope: !2324)
!2516 = !DILocation(line: 1980, column: 24, scope: !2324)
!2517 = !DILocation(line: 1981, column: 18, scope: !2324)
!2518 = !DILocation(line: 1981, column: 11, scope: !2324)
!2519 = !DILocation(line: 1982, column: 16, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2324, file: !888, line: 1982, column: 7)
!2521 = !DILocation(line: 1985, column: 1, scope: !2324)
!2522 = !DISubprogram(name: "DestroyCacheView", scope: !2114, file: !2114, line: 57, type: !2523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2112, !2112}
!2525 = distinct !DISubprogram(name: "IsOpacitySimilar", scope: !888, file: !888, line: 2017, type: !1943, scopeLine: 2019, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532}
!2527 = !DILocalVariable(name: "image", arg: 1, scope: !2525, file: !888, line: 2017, type: !1945)
!2528 = !DILocalVariable(name: "p", arg: 2, scope: !2525, file: !888, line: 2018, type: !1947)
!2529 = !DILocalVariable(name: "q", arg: 3, scope: !2525, file: !888, line: 2018, type: !1947)
!2530 = !DILocalVariable(name: "fuzz", scope: !2525, file: !888, line: 2021, type: !595)
!2531 = !DILocalVariable(name: "pixel", scope: !2525, file: !888, line: 2022, type: !595)
!2532 = !DILocalVariable(name: "distance", scope: !2525, file: !888, line: 2025, type: !595)
!2533 = !DILocation(line: 0, scope: !2525)
!2534 = !DILocation(line: 2027, column: 14, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2525, file: !888, line: 2027, column: 7)
!2536 = !DILocation(line: 2027, column: 20, scope: !2535)
!2537 = !DILocation(line: 2027, column: 7, scope: !2525)
!2538 = !DILocation(line: 2029, column: 7, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2525, file: !888, line: 2029, column: 7)
!2540 = !DILocation(line: 2029, column: 32, scope: !2539)
!2541 = !DILocation(line: 2029, column: 26, scope: !2539)
!2542 = !DILocation(line: 2029, column: 7, scope: !2525)
!2543 = !DILocation(line: 2031, column: 25, scope: !2525)
!2544 = !DILocation(line: 0, scope: !1978, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 2031, column: 8, scope: !2525)
!2546 = !DILocation(line: 1654, column: 9, scope: !1987, inlinedAt: !2545)
!2547 = !DILocation(line: 0, scope: !1978, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 2031, column: 43, scope: !2525)
!2549 = !DILocation(line: 2031, column: 42, scope: !2525)
!2550 = !DILocation(line: 2031, column: 8, scope: !2525)
!2551 = !DILocation(line: 2032, column: 9, scope: !2525)
!2552 = !DILocation(line: 2032, column: 45, scope: !2525)
!2553 = !DILocation(line: 2032, column: 44, scope: !2525)
!2554 = !DILocation(line: 2033, column: 17, scope: !2525)
!2555 = !DILocation(line: 2034, column: 16, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2525, file: !888, line: 2034, column: 7)
!2557 = !DILocation(line: 2037, column: 1, scope: !2525)
!2558 = distinct !DISubprogram(name: "ListColorInfo", scope: !888, file: !888, line: 2065, type: !2559, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!587, !2561, !1007}
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2563 = !DILocalVariable(name: "file", arg: 1, scope: !2558, file: !888, line: 2065, type: !2561)
!2564 = !DILocalVariable(name: "exception", arg: 2, scope: !2558, file: !888, line: 2066, type: !1007)
!2565 = !DILocalVariable(name: "tuple", scope: !2558, file: !888, line: 2069, type: !810)
!2566 = !DILocalVariable(name: "path", scope: !2558, file: !888, line: 2072, type: !607)
!2567 = !DILocalVariable(name: "color_info", scope: !2558, file: !888, line: 2075, type: !613)
!2568 = !DILocalVariable(name: "i", scope: !2558, file: !888, line: 2078, type: !615)
!2569 = !DILocalVariable(name: "number_colors", scope: !2558, file: !888, line: 2081, type: !591)
!2570 = !DILocation(line: 0, scope: !2558)
!2571 = !DILocation(line: 2068, column: 3, scope: !2558)
!2572 = !DILocation(line: 2069, column: 5, scope: !2558)
!2573 = !DILocation(line: 2080, column: 3, scope: !2558)
!2574 = !DILocation(line: 2086, column: 12, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2558, file: !888, line: 2086, column: 7)
!2576 = !DILocation(line: 2086, column: 7, scope: !2558)
!2577 = !DILocation(line: 2088, column: 14, scope: !2558)
!2578 = !DILocation(line: 2089, column: 18, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2558, file: !888, line: 2089, column: 7)
!2580 = !DILocation(line: 2089, column: 7, scope: !2558)
!2581 = !DILocation(line: 2092, column: 15, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !888, line: 2092, column: 3)
!2583 = distinct !DILexicalBlock(scope: !2558, file: !888, line: 2092, column: 3)
!2584 = !DILocation(line: 2092, column: 3, scope: !2583)
!2585 = !DILocation(line: 2094, column: 9, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !888, line: 2094, column: 9)
!2587 = distinct !DILexicalBlock(scope: !2582, file: !888, line: 2093, column: 3)
!2588 = !DILocation(line: 2094, column: 24, scope: !2586)
!2589 = !DILocation(line: 2094, column: 32, scope: !2586)
!2590 = !DILocation(line: 2094, column: 9, scope: !2587)
!2591 = !DILocation(line: 2096, column: 15, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !888, line: 2096, column: 9)
!2593 = !DILocation(line: 2096, column: 39, scope: !2592)
!2594 = !DILocation(line: 2097, column: 44, scope: !2592)
!2595 = !DILocation(line: 2097, column: 10, scope: !2592)
!2596 = !DILocation(line: 2097, column: 50, scope: !2592)
!2597 = !DILocation(line: 2096, column: 9, scope: !2587)
!2598 = !DILocation(line: 2099, column: 13, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !888, line: 2099, column: 13)
!2600 = distinct !DILexicalBlock(scope: !2592, file: !888, line: 2098, column: 7)
!2601 = !DILocation(line: 2099, column: 28, scope: !2599)
!2602 = !DILocation(line: 2099, column: 33, scope: !2599)
!2603 = !DILocation(line: 2099, column: 13, scope: !2600)
!2604 = !DILocation(line: 2100, column: 18, scope: !2599)
!2605 = !DILocation(line: 2100, column: 11, scope: !2599)
!2606 = !DILocation(line: 2101, column: 16, scope: !2600)
!2607 = !DILocation(line: 2104, column: 16, scope: !2600)
!2608 = !DILocation(line: 2107, column: 7, scope: !2600)
!2609 = !DILocation(line: 2108, column: 10, scope: !2587)
!2610 = !DILocation(line: 2108, column: 25, scope: !2587)
!2611 = !DILocation(line: 2109, column: 61, scope: !2587)
!2612 = !DILocation(line: 2109, column: 12, scope: !2587)
!2613 = !DILocation(line: 2110, column: 20, scope: !2587)
!2614 = !DILocation(line: 2110, column: 35, scope: !2587)
!2615 = !DILocation(line: 2110, column: 5, scope: !2587)
!2616 = !DILocation(line: 2111, column: 12, scope: !2587)
!2617 = !DILocation(line: 2112, column: 10, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2587, file: !888, line: 2112, column: 9)
!2619 = !DILocation(line: 2112, column: 25, scope: !2618)
!2620 = !DILocation(line: 2112, column: 36, scope: !2618)
!2621 = !DILocation(line: 2112, column: 53, scope: !2618)
!2622 = !DILocation(line: 2112, column: 9, scope: !2587)
!2623 = !DILocation(line: 2113, column: 14, scope: !2618)
!2624 = !DILocation(line: 2114, column: 10, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2587, file: !888, line: 2114, column: 9)
!2626 = !DILocation(line: 2114, column: 25, scope: !2625)
!2627 = !DILocation(line: 2113, column: 7, scope: !2618)
!2628 = !DILocation(line: 2114, column: 36, scope: !2625)
!2629 = !DILocation(line: 2114, column: 53, scope: !2625)
!2630 = !DILocation(line: 2114, column: 9, scope: !2587)
!2631 = !DILocation(line: 2115, column: 14, scope: !2625)
!2632 = !DILocation(line: 2116, column: 10, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2587, file: !888, line: 2116, column: 9)
!2634 = !DILocation(line: 2116, column: 25, scope: !2633)
!2635 = !DILocation(line: 2115, column: 7, scope: !2625)
!2636 = !DILocation(line: 2116, column: 36, scope: !2633)
!2637 = !DILocation(line: 2116, column: 53, scope: !2633)
!2638 = !DILocation(line: 2116, column: 9, scope: !2587)
!2639 = !DILocation(line: 2117, column: 14, scope: !2633)
!2640 = !DILocation(line: 2117, column: 7, scope: !2633)
!2641 = !DILocation(line: 2118, column: 12, scope: !2587)
!2642 = !DILocation(line: 2119, column: 3, scope: !2587)
!2643 = !DILocation(line: 2092, column: 43, scope: !2582)
!2644 = distinct !{!2644, !2584, !2645, !1085, !1086}
!2645 = !DILocation(line: 2119, column: 3, scope: !2583)
!2646 = !DILocation(line: 2120, column: 35, scope: !2558)
!2647 = !DILocation(line: 2121, column: 10, scope: !2558)
!2648 = !DILocation(line: 2122, column: 3, scope: !2558)
!2649 = !DILocation(line: 2123, column: 1, scope: !2558)
!2650 = !DISubprogram(name: "FormatLocaleFile", scope: !1427, file: !1427, line: 67, type: !2651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!615, !2561, !1431, null}
!2653 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1507, file: !1507, line: 51, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2654 = !DISubprogram(name: "fflush", scope: !616, file: !616, line: 218, type: !2655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!199, !2561}
!2657 = distinct !DISubprogram(name: "QueryColorCompliance", scope: !888, file: !888, line: 2379, type: !2658, scopeLine: 2381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!587, !607, !1006, !705, !1007}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2666}
!2661 = !DILocalVariable(name: "name", arg: 1, scope: !2657, file: !888, line: 2379, type: !607)
!2662 = !DILocalVariable(name: "compliance", arg: 2, scope: !2657, file: !888, line: 2380, type: !1006)
!2663 = !DILocalVariable(name: "color", arg: 3, scope: !2657, file: !888, line: 2380, type: !705)
!2664 = !DILocalVariable(name: "exception", arg: 4, scope: !2657, file: !888, line: 2380, type: !1007)
!2665 = !DILocalVariable(name: "status", scope: !2657, file: !888, line: 2383, type: !587)
!2666 = !DILocalVariable(name: "pixel", scope: !2657, file: !888, line: 2386, type: !579)
!2667 = !DILocation(line: 0, scope: !2657)
!2668 = !DILocation(line: 2385, column: 3, scope: !2657)
!2669 = !DILocation(line: 2386, column: 5, scope: !2657)
!2670 = !DILocation(line: 2388, column: 10, scope: !2657)
!2671 = !DILocation(line: 2389, column: 3, scope: !2657)
!2672 = !DILocation(line: 0, scope: !1327, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 2389, column: 3, scope: !2657)
!2674 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2673)
!2675 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2673)
!2676 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2673)
!2677 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2673)
!2678 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2673)
!2679 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2673)
!2680 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2673)
!2681 = !DILocation(line: 2390, column: 13, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2657, file: !888, line: 2390, column: 7)
!2683 = !DILocation(line: 2390, column: 24, scope: !2682)
!2684 = !DILocation(line: 2390, column: 7, scope: !2657)
!2685 = !DILocation(line: 2392, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !888, line: 2391, column: 5)
!2687 = !DILocalVariable(name: "x", arg: 1, scope: !2688, file: !888, line: 2372, type: !1981)
!2688 = distinct !DISubprogram(name: "MagickMin", scope: !888, file: !888, line: 2372, type: !1979, scopeLine: 2373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2689 = !{!2687, !2690}
!2690 = !DILocalVariable(name: "y", arg: 2, scope: !2688, file: !888, line: 2372, type: !1981)
!2691 = !DILocation(line: 0, scope: !2688, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 2392, column: 7, scope: !2686)
!2693 = !DILocation(line: 2374, column: 9, scope: !2694, inlinedAt: !2692)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !888, line: 2374, column: 7)
!2695 = !DILocation(line: 0, scope: !1327, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 2392, column: 7, scope: !2686)
!2697 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2696)
!2698 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2696)
!2699 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2696)
!2700 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2696)
!2701 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2696)
!2702 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2696)
!2703 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2696)
!2704 = !DILocation(line: 2395, column: 7, scope: !2686)
!2705 = !DILocation(line: 0, scope: !2688, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 2395, column: 7, scope: !2686)
!2707 = !DILocation(line: 2374, column: 9, scope: !2694, inlinedAt: !2706)
!2708 = !DILocation(line: 0, scope: !1327, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 2395, column: 7, scope: !2686)
!2710 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2709)
!2711 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2709)
!2712 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2709)
!2713 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2709)
!2714 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2709)
!2715 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2709)
!2716 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2709)
!2717 = !DILocation(line: 2398, column: 7, scope: !2686)
!2718 = !DILocation(line: 0, scope: !2688, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 2398, column: 7, scope: !2686)
!2720 = !DILocation(line: 2374, column: 9, scope: !2694, inlinedAt: !2719)
!2721 = !DILocation(line: 0, scope: !1327, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 2398, column: 7, scope: !2686)
!2723 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2722)
!2724 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2722)
!2725 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2722)
!2726 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2722)
!2727 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2722)
!2728 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2722)
!2729 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2722)
!2730 = !DILocation(line: 0, scope: !1327, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 2403, column: 3, scope: !2657)
!2732 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2731)
!2733 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2731)
!2734 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2731)
!2735 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2731)
!2736 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2731)
!2737 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2731)
!2738 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2731)
!2739 = !DILocation(line: 2403, column: 3, scope: !2657)
!2740 = !DILocation(line: 2404, column: 3, scope: !2657)
!2741 = !DILocation(line: 0, scope: !1327, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 2404, column: 3, scope: !2657)
!2743 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2742)
!2744 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2742)
!2745 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2742)
!2746 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2742)
!2747 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2742)
!2748 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2742)
!2749 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2742)
!2750 = !DILocation(line: 2405, column: 3, scope: !2657)
!2751 = !DILocation(line: 0, scope: !1327, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 2405, column: 3, scope: !2657)
!2753 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !2752)
!2754 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !2752)
!2755 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !2752)
!2756 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !2752)
!2757 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !2752)
!2758 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !2752)
!2759 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !2752)
!2760 = !DILocation(line: 2407, column: 1, scope: !2657)
!2761 = distinct !DISubprogram(name: "QueryMagickColorCompliance", scope: !888, file: !888, line: 2521, type: !2762, scopeLine: 2524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2764)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!587, !607, !1006, !2188, !1007}
!2764 = !{!2765, !2766, !2767, !2768, !2769, !2770, !2779, !2780, !2781, !2782, !2783, !2786, !2795, !2797, !2798, !2799, !2802, !2803, !2806, !2809, !2810}
!2765 = !DILocalVariable(name: "name", arg: 1, scope: !2761, file: !888, line: 2521, type: !607)
!2766 = !DILocalVariable(name: "compliance", arg: 2, scope: !2761, file: !888, line: 2522, type: !1006)
!2767 = !DILocalVariable(name: "color", arg: 3, scope: !2761, file: !888, line: 2522, type: !2188)
!2768 = !DILocalVariable(name: "exception", arg: 4, scope: !2761, file: !888, line: 2523, type: !1007)
!2769 = !DILocalVariable(name: "scale", scope: !2761, file: !888, line: 2526, type: !589)
!2770 = !DILocalVariable(name: "geometry_info", scope: !2761, file: !888, line: 2529, type: !2771)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !375, line: 112, baseType: !2772)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !375, line: 104, size: 320, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777, !2778}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !2772, file: !375, line: 107, baseType: !589, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !2772, file: !375, line: 108, baseType: !589, size: 64, offset: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !2772, file: !375, line: 109, baseType: !589, size: 64, offset: 128)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2772, file: !375, line: 110, baseType: !589, size: 64, offset: 192)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !2772, file: !375, line: 111, baseType: !589, size: 64, offset: 256)
!2779 = !DILocalVariable(name: "flags", scope: !2761, file: !888, line: 2532, type: !1052)
!2780 = !DILocalVariable(name: "p", scope: !2761, file: !888, line: 2535, type: !567)
!2781 = !DILocalVariable(name: "i", scope: !2761, file: !888, line: 2538, type: !615)
!2782 = !DILocalVariable(name: "type", scope: !2761, file: !888, line: 2541, type: !615)
!2783 = !DILocalVariable(name: "c", scope: !2784, file: !888, line: 2557, type: !574)
!2784 = distinct !DILexicalBlock(scope: !2785, file: !888, line: 2555, column: 5)
!2785 = distinct !DILexicalBlock(scope: !2761, file: !888, line: 2554, column: 7)
!2786 = !DILocalVariable(name: "pixel", scope: !2784, file: !888, line: 2560, type: !2787)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "LongPixelPacket", file: !475, line: 102, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LongPixelPacket", file: !475, line: 94, size: 160, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !2788, file: !475, line: 97, baseType: !7, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !2788, file: !475, line: 98, baseType: !7, size: 32, offset: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !2788, file: !475, line: 99, baseType: !7, size: 32, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !2788, file: !475, line: 100, baseType: !7, size: 32, offset: 96)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2788, file: !475, line: 101, baseType: !7, size: 32, offset: 128)
!2795 = !DILocalVariable(name: "range", scope: !2784, file: !888, line: 2563, type: !2796)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "QuantumAny", file: !6, line: 170, baseType: !629)
!2797 = !DILocalVariable(name: "depth", scope: !2784, file: !888, line: 2566, type: !591)
!2798 = !DILocalVariable(name: "n", scope: !2784, file: !888, line: 2567, type: !591)
!2799 = !DILocalVariable(name: "colorspace", scope: !2800, file: !888, line: 2652, type: !810)
!2800 = distinct !DILexicalBlock(scope: !2801, file: !888, line: 2650, column: 5)
!2801 = distinct !DILexicalBlock(scope: !2761, file: !888, line: 2649, column: 7)
!2802 = !DILocalVariable(name: "icc_color", scope: !2800, file: !888, line: 2655, type: !587)
!2803 = !DILocalVariable(name: "j", scope: !2804, file: !888, line: 2676, type: !615)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !888, line: 2674, column: 9)
!2805 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2673, column: 11)
!2806 = !DILocalVariable(name: "colorname", scope: !2807, file: !888, line: 2712, type: !573)
!2807 = distinct !DILexicalBlock(scope: !2808, file: !888, line: 2710, column: 9)
!2808 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2709, column: 11)
!2809 = !DILocalVariable(name: "colorspace", scope: !2807, file: !888, line: 2715, type: !585)
!2810 = !DILocalVariable(name: "pixel", scope: !2811, file: !888, line: 2765, type: !706)
!2811 = distinct !DILexicalBlock(scope: !2812, file: !888, line: 2763, column: 13)
!2812 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2759, column: 15)
!2813 = distinct !DILexicalBlock(scope: !2808, file: !888, line: 2725, column: 9)
!2814 = !DILocation(line: 0, scope: !2761)
!2815 = !DILocation(line: 2528, column: 3, scope: !2761)
!2816 = !DILocation(line: 2529, column: 5, scope: !2761)
!2817 = !DILocation(line: 2547, column: 10, scope: !2761)
!2818 = !DILocation(line: 2549, column: 3, scope: !2761)
!2819 = !DILocation(line: 2550, column: 13, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2761, file: !888, line: 2550, column: 7)
!2821 = !DILocation(line: 2550, column: 31, scope: !2820)
!2822 = !DILocation(line: 2550, column: 35, scope: !2820)
!2823 = !DILocation(line: 2550, column: 41, scope: !2820)
!2824 = !DILocation(line: 2550, column: 7, scope: !2761)
!2825 = !DILocation(line: 2551, column: 5, scope: !2820)
!2826 = !DILocation(line: 2552, column: 3, scope: !2761)
!2827 = !DILocation(line: 2552, column: 10, scope: !2761)
!2828 = !DILocation(line: 2552, column: 49, scope: !2761)
!2829 = !DILocation(line: 2553, column: 9, scope: !2761)
!2830 = distinct !{!2830, !2826, !2829, !1085, !1086}
!2831 = !DILocation(line: 2554, column: 13, scope: !2785)
!2832 = !DILocation(line: 2554, column: 7, scope: !2761)
!2833 = !DILocation(line: 2559, column: 7, scope: !2784)
!2834 = !DILocation(line: 2560, column: 9, scope: !2784)
!2835 = !DILocation(line: 2572, column: 14, scope: !2784)
!2836 = !DILocation(line: 0, scope: !2784)
!2837 = !DILocation(line: 2574, column: 12, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2784, file: !888, line: 2574, column: 7)
!2839 = !DILocation(line: 0, scope: !2838)
!2840 = !DILocation(line: 2574, column: 17, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2838, file: !888, line: 2574, column: 7)
!2842 = !DILocation(line: 2574, column: 59, scope: !2841)
!2843 = !DILocation(line: 2574, column: 66, scope: !2841)
!2844 = !DILocation(line: 2574, column: 7, scope: !2838)
!2845 = distinct !{!2845, !2844, !2846, !1085, !1086}
!2846 = !DILocation(line: 2574, column: 70, scope: !2838)
!2847 = !DILocation(line: 2575, column: 14, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2784, file: !888, line: 2575, column: 11)
!2849 = !DILocation(line: 2575, column: 19, scope: !2848)
!2850 = !DILocation(line: 2575, column: 11, scope: !2784)
!2851 = !{!2852, !1071, i64 4}
!2852 = !{!"_LongPixelPacket", !1071, i64 0, !1071, i64 4, !1071, i64 8, !1071, i64 12, !1071, i64 16}
!2853 = !{!2852, !1071, i64 8}
!2854 = !DILocation(line: 2582, column: 13, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !888, line: 2582, column: 13)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !888, line: 2578, column: 11)
!2857 = distinct !DILexicalBlock(scope: !2848, file: !888, line: 2576, column: 9)
!2858 = !DILocation(line: 2580, column: 31, scope: !2856)
!2859 = !DILocation(line: 2579, column: 29, scope: !2856)
!2860 = !DILocation(line: 2573, column: 11, scope: !2784)
!2861 = !DILocation(line: 2579, column: 22, scope: !2856)
!2862 = !{!2852, !1071, i64 0}
!2863 = !DILocation(line: 2580, column: 24, scope: !2856)
!2864 = !DILocation(line: 2581, column: 23, scope: !2856)
!2865 = !DILocation(line: 2585, column: 25, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !888, line: 2583, column: 13)
!2867 = distinct !DILexicalBlock(scope: !2855, file: !888, line: 2582, column: 13)
!2868 = !DILocation(line: 2584, column: 23, scope: !2866)
!2869 = !DILocation(line: 2584, column: 18, scope: !2866)
!2870 = !DILocation(line: 2586, column: 20, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !888, line: 2586, column: 19)
!2872 = !DILocation(line: 2586, column: 30, scope: !2871)
!2873 = !DILocation(line: 2589, column: 32, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !888, line: 2589, column: 21)
!2875 = !DILocation(line: 2592, column: 34, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2874, file: !888, line: 2592, column: 23)
!2877 = !DILocation(line: 0, scope: !2871)
!2878 = !DILocation(line: 2582, column: 41, scope: !2867)
!2879 = distinct !{!2879, !2854, !2880, !1085, !1086}
!2880 = !DILocation(line: 2596, column: 13, scope: !2855)
!2881 = !DILocation(line: 2597, column: 20, scope: !2857)
!2882 = !DILocation(line: 2597, column: 60, scope: !2857)
!2883 = !DILocation(line: 2597, column: 11, scope: !2856)
!2884 = distinct !{!2884, !2885, !2886, !1085, !1086}
!2885 = !DILocation(line: 2577, column: 11, scope: !2857)
!2886 = !DILocation(line: 2597, column: 64, scope: !2857)
!2887 = !DILocation(line: 0, scope: !2856)
!2888 = !DILocation(line: 2598, column: 18, scope: !2857)
!2889 = !DILocation(line: 2599, column: 9, scope: !2857)
!2890 = !DILocation(line: 2602, column: 18, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !888, line: 2602, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2848, file: !888, line: 2601, column: 9)
!2893 = !DILocation(line: 2602, column: 23, scope: !2891)
!2894 = !DILocation(line: 2602, column: 15, scope: !2892)
!2895 = !{!2852, !1071, i64 12}
!2896 = !DILocation(line: 2614, column: 13, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !888, line: 2614, column: 13)
!2898 = distinct !DILexicalBlock(scope: !2892, file: !888, line: 2609, column: 11)
!2899 = !DILocation(line: 2612, column: 30, scope: !2898)
!2900 = !DILocation(line: 2611, column: 31, scope: !2898)
!2901 = !DILocation(line: 2610, column: 29, scope: !2898)
!2902 = !DILocation(line: 2610, column: 22, scope: !2898)
!2903 = !DILocation(line: 2611, column: 24, scope: !2898)
!2904 = !DILocation(line: 2612, column: 23, scope: !2898)
!2905 = !DILocation(line: 2613, column: 26, scope: !2898)
!2906 = !DILocation(line: 2617, column: 28, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !888, line: 2615, column: 13)
!2908 = distinct !DILexicalBlock(scope: !2897, file: !888, line: 2614, column: 13)
!2909 = !DILocation(line: 2616, column: 23, scope: !2907)
!2910 = !DILocation(line: 2616, column: 18, scope: !2907)
!2911 = !DILocation(line: 2618, column: 20, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !888, line: 2618, column: 19)
!2913 = !DILocation(line: 2618, column: 30, scope: !2912)
!2914 = !DILocation(line: 2621, column: 32, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2912, file: !888, line: 2621, column: 21)
!2916 = !DILocation(line: 2624, column: 34, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2915, file: !888, line: 2624, column: 23)
!2918 = !DILocation(line: 0, scope: !2912)
!2919 = !DILocation(line: 2614, column: 41, scope: !2908)
!2920 = distinct !{!2920, !2896, !2921, !1085, !1086}
!2921 = !DILocation(line: 2628, column: 13, scope: !2897)
!2922 = !DILocation(line: 2629, column: 20, scope: !2892)
!2923 = !DILocation(line: 2629, column: 60, scope: !2892)
!2924 = !DILocation(line: 2629, column: 11, scope: !2898)
!2925 = distinct !{!2925, !2926, !2927, !1085, !1086}
!2926 = !DILocation(line: 2608, column: 11, scope: !2892)
!2927 = !DILocation(line: 2629, column: 74, scope: !2892)
!2928 = !DILocation(line: 2604, column: 22, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2891, file: !888, line: 2603, column: 13)
!2930 = !DILocation(line: 2606, column: 15, scope: !2929)
!2931 = !DILocation(line: 0, scope: !2898)
!2932 = !DILocation(line: 2630, column: 18, scope: !2892)
!2933 = !DILocation(line: 2638, column: 60, scope: !2784)
!2934 = !DILocation(line: 2637, column: 61, scope: !2784)
!2935 = !DILocation(line: 2636, column: 59, scope: !2784)
!2936 = !DILocation(line: 0, scope: !2848)
!2937 = !DILocation(line: 2632, column: 14, scope: !2784)
!2938 = !DILocation(line: 2632, column: 24, scope: !2784)
!2939 = !DILocation(line: 2633, column: 14, scope: !2784)
!2940 = !DILocation(line: 2633, column: 19, scope: !2784)
!2941 = !DILocation(line: 2634, column: 14, scope: !2784)
!2942 = !DILocation(line: 2634, column: 19, scope: !2784)
!2943 = !DILocalVariable(name: "depth", arg: 1, scope: !2944, file: !1108, line: 91, type: !1235)
!2944 = distinct !DISubprogram(name: "GetQuantumRange", scope: !1108, file: !1108, line: 91, type: !2945, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2947)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{!629, !1235}
!2947 = !{!2943, !2948}
!2948 = !DILocalVariable(name: "one", scope: !2944, file: !1108, line: 94, type: !629)
!2949 = !DILocation(line: 0, scope: !2944, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 2635, column: 13, scope: !2784)
!2951 = !DILocation(line: 97, column: 42, scope: !2944, inlinedAt: !2950)
!2952 = !DILocation(line: 97, column: 46, scope: !2944, inlinedAt: !2950)
!2953 = !DILocalVariable(name: "quantum", arg: 1, scope: !2954, file: !1108, line: 271, type: !2957)
!2954 = distinct !DISubprogram(name: "ScaleAnyToQuantum", scope: !1108, file: !1108, line: 271, type: !2955, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2958)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!612, !2957, !2957}
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2796)
!2958 = !{!2953, !2959}
!2959 = !DILocalVariable(name: "range", arg: 2, scope: !2954, file: !1108, line: 272, type: !2957)
!2960 = !DILocation(line: 0, scope: !2954, inlinedAt: !2961)
!2961 = distinct !DILocation(line: 2636, column: 35, scope: !2784)
!2962 = !DILocation(line: 275, column: 52, scope: !2954, inlinedAt: !2961)
!2963 = !DILocation(line: 275, column: 51, scope: !2954, inlinedAt: !2961)
!2964 = !DILocation(line: 275, column: 61, scope: !2954, inlinedAt: !2961)
!2965 = !DILocation(line: 275, column: 60, scope: !2954, inlinedAt: !2961)
!2966 = !DILocation(line: 275, column: 21, scope: !2954, inlinedAt: !2961)
!2967 = !DILocation(line: 275, column: 66, scope: !2954, inlinedAt: !2961)
!2968 = !DILocation(line: 275, column: 10, scope: !2954, inlinedAt: !2961)
!2969 = !DILocation(line: 2636, column: 18, scope: !2784)
!2970 = !DILocation(line: 2636, column: 14, scope: !2784)
!2971 = !DILocation(line: 2636, column: 17, scope: !2784)
!2972 = !DILocation(line: 0, scope: !2954, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 2637, column: 37, scope: !2784)
!2974 = !DILocation(line: 275, column: 52, scope: !2954, inlinedAt: !2973)
!2975 = !DILocation(line: 275, column: 51, scope: !2954, inlinedAt: !2973)
!2976 = !DILocation(line: 275, column: 60, scope: !2954, inlinedAt: !2973)
!2977 = !DILocation(line: 275, column: 21, scope: !2954, inlinedAt: !2973)
!2978 = !DILocation(line: 275, column: 66, scope: !2954, inlinedAt: !2973)
!2979 = !DILocation(line: 275, column: 10, scope: !2954, inlinedAt: !2973)
!2980 = !DILocation(line: 2637, column: 20, scope: !2784)
!2981 = !DILocation(line: 2637, column: 14, scope: !2784)
!2982 = !DILocation(line: 2637, column: 19, scope: !2784)
!2983 = !DILocation(line: 0, scope: !2954, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 2638, column: 36, scope: !2784)
!2985 = !DILocation(line: 275, column: 52, scope: !2954, inlinedAt: !2984)
!2986 = !DILocation(line: 275, column: 51, scope: !2954, inlinedAt: !2984)
!2987 = !DILocation(line: 275, column: 60, scope: !2954, inlinedAt: !2984)
!2988 = !DILocation(line: 275, column: 21, scope: !2954, inlinedAt: !2984)
!2989 = !DILocation(line: 275, column: 66, scope: !2954, inlinedAt: !2984)
!2990 = !DILocation(line: 275, column: 10, scope: !2954, inlinedAt: !2984)
!2991 = !DILocation(line: 2638, column: 19, scope: !2784)
!2992 = !DILocation(line: 2638, column: 14, scope: !2784)
!2993 = !DILocation(line: 2638, column: 18, scope: !2784)
!2994 = !DILocation(line: 2639, column: 14, scope: !2784)
!2995 = !DILocation(line: 2639, column: 21, scope: !2784)
!2996 = !DILocation(line: 2640, column: 11, scope: !2784)
!2997 = !DILocation(line: 2642, column: 23, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !888, line: 2641, column: 9)
!2999 = distinct !DILexicalBlock(scope: !2784, file: !888, line: 2640, column: 11)
!3000 = !DILocation(line: 2644, column: 19, scope: !2998)
!3001 = !DILocation(line: 0, scope: !2954, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 2643, column: 57, scope: !2998)
!3003 = !DILocation(line: 275, column: 52, scope: !2954, inlinedAt: !3002)
!3004 = !DILocation(line: 275, column: 51, scope: !2954, inlinedAt: !3002)
!3005 = !DILocation(line: 275, column: 60, scope: !2954, inlinedAt: !3002)
!3006 = !DILocation(line: 275, column: 21, scope: !2954, inlinedAt: !3002)
!3007 = !DILocation(line: 275, column: 66, scope: !2954, inlinedAt: !3002)
!3008 = !DILocation(line: 275, column: 10, scope: !2954, inlinedAt: !3002)
!3009 = !DILocation(line: 2643, column: 56, scope: !2998)
!3010 = !DILocation(line: 2643, column: 26, scope: !2998)
!3011 = !DILocation(line: 2643, column: 25, scope: !2998)
!3012 = !DILocation(line: 2645, column: 9, scope: !2998)
!3013 = !DILocation(line: 2646, column: 14, scope: !2784)
!3014 = !DILocation(line: 2646, column: 19, scope: !2784)
!3015 = !DILocation(line: 2647, column: 7, scope: !2784)
!3016 = !DILocation(line: 2648, column: 5, scope: !2785)
!3017 = !DILocation(line: 2649, column: 7, scope: !2801)
!3018 = !DILocation(line: 2649, column: 24, scope: !2801)
!3019 = !DILocation(line: 2649, column: 7, scope: !2761)
!3020 = !DILocation(line: 2651, column: 7, scope: !2800)
!3021 = !DILocation(line: 2652, column: 9, scope: !2800)
!3022 = !DILocation(line: 2660, column: 14, scope: !2800)
!3023 = !DILocation(line: 2661, column: 12, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2661, column: 7)
!3025 = !DILocation(line: 0, scope: !3024)
!3026 = !DILocation(line: 2661, column: 17, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3024, file: !888, line: 2661, column: 7)
!3028 = !DILocation(line: 2661, column: 7, scope: !3024)
!3029 = !DILocation(line: 2661, column: 41, scope: !3027)
!3030 = !DILocation(line: 2661, column: 7, scope: !3027)
!3031 = distinct !{!3031, !3028, !3032, !1085, !1086}
!3032 = !DILocation(line: 2663, column: 11, scope: !3024)
!3033 = !DILocation(line: 2664, column: 19, scope: !2800)
!3034 = !DILocation(line: 2664, column: 22, scope: !2800)
!3035 = !DILocation(line: 0, scope: !2800)
!3036 = !DILocation(line: 2667, column: 11, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2667, column: 11)
!3038 = !DILocation(line: 2667, column: 50, scope: !3037)
!3039 = !DILocation(line: 2667, column: 11, scope: !2800)
!3040 = !DILocation(line: 2669, column: 56, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !888, line: 2668, column: 9)
!3042 = !DILocation(line: 2669, column: 18, scope: !3041)
!3043 = !DILocation(line: 2672, column: 9, scope: !3041)
!3044 = !DILocation(line: 2673, column: 11, scope: !2805)
!3045 = !DILocation(line: 2673, column: 49, scope: !2805)
!3046 = !DILocation(line: 2673, column: 11, scope: !2800)
!3047 = !DILocation(line: 2678, column: 50, scope: !2804)
!3048 = !DILocation(line: 2678, column: 52, scope: !2804)
!3049 = !DILocation(line: 2678, column: 18, scope: !2804)
!3050 = !DILocation(line: 0, scope: !2804)
!3051 = !DILocation(line: 2679, column: 16, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !2804, file: !888, line: 2679, column: 11)
!3053 = !DILocation(line: 0, scope: !3052)
!3054 = !DILocation(line: 2679, column: 21, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3052, file: !888, line: 2679, column: 11)
!3056 = !DILocation(line: 2679, column: 11, scope: !3052)
!3057 = !DILocation(line: 2679, column: 45, scope: !3055)
!3058 = !DILocation(line: 2679, column: 11, scope: !3055)
!3059 = distinct !{!3059, !3056, !3060, !1085, !1086}
!3060 = !DILocation(line: 2681, column: 15, scope: !3052)
!3061 = !DILocation(line: 2682, column: 26, scope: !2804)
!3062 = !DILocation(line: 2683, column: 15, scope: !2804)
!3063 = !DILocation(line: 2683, column: 12, scope: !2804)
!3064 = !DILocation(line: 2686, column: 9, scope: !2804)
!3065 = !DILocation(line: 2687, column: 7, scope: !2800)
!3066 = !DILocation(line: 2688, column: 14, scope: !2800)
!3067 = !DILocation(line: 2688, column: 19, scope: !2800)
!3068 = !DILocation(line: 2689, column: 14, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2689, column: 11)
!3070 = !DILocation(line: 2689, column: 19, scope: !3069)
!3071 = !DILocation(line: 2689, column: 23, scope: !3069)
!3072 = !DILocation(line: 2689, column: 37, scope: !3069)
!3073 = !DILocation(line: 2689, column: 11, scope: !2800)
!3074 = !DILocation(line: 2691, column: 24, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3069, file: !888, line: 2690, column: 9)
!3076 = !DILocation(line: 2692, column: 23, scope: !3075)
!3077 = !DILocation(line: 2693, column: 9, scope: !3075)
!3078 = !DILocation(line: 2694, column: 12, scope: !2800)
!3079 = !DILocation(line: 2695, column: 16, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2695, column: 11)
!3081 = !DILocation(line: 2695, column: 11, scope: !2800)
!3082 = !DILocation(line: 2697, column: 18, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3080, file: !888, line: 2696, column: 9)
!3084 = !DILocation(line: 2699, column: 11, scope: !3083)
!3085 = !DILocation(line: 2701, column: 25, scope: !2800)
!3086 = !DILocation(line: 2701, column: 14, scope: !2800)
!3087 = !DILocation(line: 2701, column: 24, scope: !2800)
!3088 = !DILocation(line: 2702, column: 22, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2800, file: !888, line: 2702, column: 11)
!3090 = !DILocation(line: 2702, column: 38, scope: !3089)
!3091 = !DILocation(line: 2704, column: 28, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3089, file: !888, line: 2703, column: 9)
!3093 = !DILocation(line: 2705, column: 18, scope: !3092)
!3094 = !DILocation(line: 2705, column: 23, scope: !3092)
!3095 = !DILocation(line: 2706, column: 9, scope: !3092)
!3096 = !DILocation(line: 2707, column: 7, scope: !2800)
!3097 = !DILocation(line: 2708, column: 31, scope: !2800)
!3098 = !DILocation(line: 2708, column: 33, scope: !2800)
!3099 = !DILocation(line: 2708, column: 13, scope: !2800)
!3100 = !DILocation(line: 2709, column: 17, scope: !2808)
!3101 = !DILocation(line: 2709, column: 11, scope: !2800)
!3102 = !DILocation(line: 2711, column: 11, scope: !2807)
!3103 = !DILocation(line: 2717, column: 29, scope: !2807)
!3104 = !DILocation(line: 0, scope: !2807)
!3105 = !DILocation(line: 2718, column: 21, scope: !2807)
!3106 = !DILocation(line: 2718, column: 20, scope: !2807)
!3107 = !DILocation(line: 2719, column: 18, scope: !2807)
!3108 = !DILocation(line: 2720, column: 35, scope: !2807)
!3109 = !DILocalVariable(name: "name", arg: 1, scope: !3110, file: !888, line: 2848, type: !607)
!3110 = distinct !DISubprogram(name: "QueryMagickColor", scope: !888, file: !888, line: 2848, type: !3111, scopeLine: 2850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!587, !607, !2188, !1007}
!3113 = !{!3109, !3114, !3115}
!3114 = !DILocalVariable(name: "color", arg: 2, scope: !3110, file: !888, line: 2849, type: !2188)
!3115 = !DILocalVariable(name: "exception", arg: 3, scope: !3110, file: !888, line: 2849, type: !1007)
!3116 = !DILocation(line: 0, scope: !3110, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 2720, column: 18, scope: !2807)
!3118 = !DILocation(line: 2851, column: 10, scope: !3110, inlinedAt: !3117)
!3119 = !DILocation(line: 2721, column: 35, scope: !2807)
!3120 = !DILocation(line: 2721, column: 21, scope: !2807)
!3121 = !DILocation(line: 2722, column: 28, scope: !2807)
!3122 = !DILocation(line: 2723, column: 9, scope: !2808)
!3123 = !DILocation(line: 2723, column: 9, scope: !2807)
!3124 = !DILocation(line: 2726, column: 22, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2726, column: 15)
!3126 = !DILocation(line: 2726, column: 38, scope: !3125)
!3127 = !DILocation(line: 2726, column: 15, scope: !2813)
!3128 = !DILocation(line: 2728, column: 22, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2728, column: 15)
!3130 = !DILocation(line: 2728, column: 34, scope: !3129)
!3131 = !DILocation(line: 2728, column: 15, scope: !2813)
!3132 = !DILocation(line: 2729, column: 76, scope: !3129)
!3133 = !{!3134, !977, i64 0}
!3134 = !{!"_GeometryInfo", !977, i64 0, !977, i64 8, !977, i64 16, !977, i64 24, !977, i64 32}
!3135 = !DILocation(line: 2729, column: 61, scope: !3129)
!3136 = !DILocation(line: 2729, column: 56, scope: !3129)
!3137 = !DILocation(line: 0, scope: !1327, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 2729, column: 41, scope: !3129)
!3139 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3138)
!3140 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3138)
!3141 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3138)
!3142 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3138)
!3143 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3138)
!3144 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3138)
!3145 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3138)
!3146 = !DILocation(line: 2729, column: 24, scope: !3129)
!3147 = !DILocation(line: 2729, column: 20, scope: !3129)
!3148 = !DILocation(line: 2729, column: 23, scope: !3129)
!3149 = !DILocation(line: 2729, column: 13, scope: !3129)
!3150 = !DILocation(line: 2730, column: 22, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2730, column: 15)
!3152 = !DILocation(line: 2730, column: 36, scope: !3151)
!3153 = !DILocation(line: 2730, column: 15, scope: !2813)
!3154 = !DILocation(line: 2732, column: 29, scope: !3151)
!3155 = !{!3134, !977, i64 8}
!3156 = !DILocation(line: 2731, column: 63, scope: !3151)
!3157 = !DILocation(line: 2731, column: 58, scope: !3151)
!3158 = !DILocation(line: 0, scope: !1327, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 2731, column: 43, scope: !3151)
!3160 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3159)
!3161 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3159)
!3162 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3159)
!3163 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3159)
!3164 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3159)
!3165 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3159)
!3166 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3159)
!3167 = !DILocation(line: 2731, column: 26, scope: !3151)
!3168 = !DILocation(line: 2731, column: 20, scope: !3151)
!3169 = !DILocation(line: 2731, column: 25, scope: !3151)
!3170 = !DILocation(line: 2731, column: 13, scope: !3151)
!3171 = !DILocation(line: 2733, column: 22, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2733, column: 15)
!3173 = !DILocation(line: 2733, column: 33, scope: !3172)
!3174 = !DILocation(line: 2733, column: 15, scope: !2813)
!3175 = !DILocation(line: 2734, column: 77, scope: !3172)
!3176 = !{!3134, !977, i64 16}
!3177 = !DILocation(line: 2734, column: 62, scope: !3172)
!3178 = !DILocation(line: 2734, column: 57, scope: !3172)
!3179 = !DILocation(line: 0, scope: !1327, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 2734, column: 42, scope: !3172)
!3181 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3180)
!3182 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3180)
!3183 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3180)
!3184 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3180)
!3185 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3180)
!3186 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3180)
!3187 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3180)
!3188 = !DILocation(line: 2734, column: 25, scope: !3172)
!3189 = !DILocation(line: 2734, column: 20, scope: !3172)
!3190 = !DILocation(line: 2734, column: 24, scope: !3172)
!3191 = !DILocation(line: 2734, column: 13, scope: !3172)
!3192 = !DILocation(line: 2735, column: 18, scope: !2813)
!3193 = !DILocation(line: 2735, column: 25, scope: !2813)
!3194 = !DILocation(line: 2736, column: 22, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2736, column: 15)
!3196 = !DILocation(line: 2736, column: 34, scope: !3195)
!3197 = !DILocation(line: 2736, column: 15, scope: !2813)
!3198 = !DILocation(line: 2738, column: 26, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !888, line: 2738, column: 19)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !888, line: 2737, column: 13)
!3201 = !DILocation(line: 2738, column: 37, scope: !3199)
!3202 = !DILocation(line: 2738, column: 19, scope: !3200)
!3203 = !DILocation(line: 2740, column: 33, scope: !3199)
!3204 = !{!3134, !977, i64 24}
!3205 = !DILocation(line: 2739, column: 67, scope: !3199)
!3206 = !DILocation(line: 2739, column: 62, scope: !3199)
!3207 = !DILocation(line: 0, scope: !1327, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 2739, column: 47, scope: !3199)
!3209 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3208)
!3210 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3208)
!3211 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3208)
!3212 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3208)
!3213 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3208)
!3214 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3208)
!3215 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3208)
!3216 = !DILocation(line: 2739, column: 24, scope: !3199)
!3217 = !DILocation(line: 2739, column: 29, scope: !3199)
!3218 = !DILocation(line: 2739, column: 17, scope: !3199)
!3219 = !DILocation(line: 2742, column: 28, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3199, file: !888, line: 2742, column: 21)
!3221 = !DILocation(line: 2742, column: 34, scope: !3220)
!3222 = !DILocation(line: 2742, column: 21, scope: !3199)
!3223 = !DILocation(line: 2745, column: 35, scope: !3220)
!3224 = !DILocation(line: 2744, column: 51, scope: !3220)
!3225 = !DILocation(line: 2744, column: 21, scope: !3220)
!3226 = !DILocation(line: 0, scope: !1327, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 2743, column: 51, scope: !3220)
!3228 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3227)
!3229 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3227)
!3230 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3227)
!3231 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3227)
!3232 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3227)
!3233 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3227)
!3234 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3227)
!3235 = !DILocation(line: 2743, column: 33, scope: !3220)
!3236 = !DILocation(line: 2743, column: 19, scope: !3220)
!3237 = !DILocation(line: 2747, column: 23, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2747, column: 15)
!3239 = !DILocation(line: 2747, column: 35, scope: !3238)
!3240 = !DILocation(line: 2747, column: 41, scope: !3238)
!3241 = !DILocation(line: 2747, column: 52, scope: !3238)
!3242 = !DILocation(line: 2747, column: 58, scope: !3238)
!3243 = !DILocation(line: 2747, column: 15, scope: !2813)
!3244 = !DILocation(line: 2749, column: 56, scope: !3238)
!3245 = !{!3134, !977, i64 32}
!3246 = !DILocation(line: 2749, column: 28, scope: !3238)
!3247 = !DILocation(line: 2748, column: 60, scope: !3238)
!3248 = !DILocation(line: 0, scope: !1327, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 2748, column: 45, scope: !3238)
!3250 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3249)
!3251 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3249)
!3252 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3249)
!3253 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3249)
!3254 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3249)
!3255 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3249)
!3256 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3249)
!3257 = !DILocation(line: 2748, column: 27, scope: !3238)
!3258 = !DILocation(line: 2748, column: 13, scope: !3238)
!3259 = !DILocation(line: 2750, column: 15, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !2813, file: !888, line: 2750, column: 15)
!3261 = !DILocation(line: 2750, column: 48, scope: !3260)
!3262 = !DILocation(line: 2750, column: 15, scope: !2813)
!3263 = !DILocation(line: 2752, column: 32, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3260, file: !888, line: 2751, column: 13)
!3265 = !DILocation(line: 2753, column: 35, scope: !3264)
!3266 = !DILocation(line: 2753, column: 22, scope: !3264)
!3267 = !DILocation(line: 2753, column: 27, scope: !3264)
!3268 = !DILocation(line: 2754, column: 22, scope: !3264)
!3269 = !DILocation(line: 2754, column: 26, scope: !3264)
!3270 = !DILocation(line: 2755, column: 47, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3264, file: !888, line: 2755, column: 19)
!3272 = !DILocation(line: 2755, column: 58, scope: !3271)
!3273 = !DILocation(line: 2755, column: 64, scope: !3271)
!3274 = !DILocation(line: 2755, column: 19, scope: !3264)
!3275 = !DILocation(line: 2757, column: 60, scope: !3271)
!3276 = !DILocation(line: 2757, column: 32, scope: !3271)
!3277 = !DILocation(line: 2756, column: 64, scope: !3271)
!3278 = !DILocation(line: 0, scope: !1327, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 2756, column: 49, scope: !3271)
!3280 = !DILocation(line: 92, column: 13, scope: !1335, inlinedAt: !3279)
!3281 = !DILocation(line: 92, column: 7, scope: !1327, inlinedAt: !3279)
!3282 = !DILocation(line: 94, column: 13, scope: !1338, inlinedAt: !3279)
!3283 = !DILocation(line: 94, column: 7, scope: !1327, inlinedAt: !3279)
!3284 = !DILocation(line: 96, column: 26, scope: !1327, inlinedAt: !3279)
!3285 = !DILocation(line: 96, column: 10, scope: !1327, inlinedAt: !3279)
!3286 = !DILocation(line: 96, column: 3, scope: !1327, inlinedAt: !3279)
!3287 = !DILocation(line: 2756, column: 31, scope: !3271)
!3288 = !DILocation(line: 2756, column: 17, scope: !3271)
!3289 = !DILocation(line: 2759, column: 16, scope: !2812)
!3290 = !DILocation(line: 2759, column: 48, scope: !2812)
!3291 = !DILocation(line: 2759, column: 54, scope: !2812)
!3292 = !DILocation(line: 2760, column: 16, scope: !2812)
!3293 = !DILocation(line: 2760, column: 48, scope: !2812)
!3294 = !DILocation(line: 2760, column: 54, scope: !2812)
!3295 = !DILocation(line: 2761, column: 16, scope: !2812)
!3296 = !DILocation(line: 2761, column: 48, scope: !2812)
!3297 = !DILocation(line: 2761, column: 54, scope: !2812)
!3298 = !DILocation(line: 2762, column: 16, scope: !2812)
!3299 = !DILocation(line: 2762, column: 48, scope: !2812)
!3300 = !DILocation(line: 2759, column: 15, scope: !2813)
!3301 = !DILocation(line: 2764, column: 15, scope: !2811)
!3302 = !DILocation(line: 2765, column: 17, scope: !2811)
!3303 = !DILocation(line: 2770, column: 39, scope: !2811)
!3304 = !DILocation(line: 2770, column: 32, scope: !2811)
!3305 = !DILocation(line: 2772, column: 19, scope: !2811)
!3306 = !DILocation(line: 2774, column: 29, scope: !2811)
!3307 = !DILocation(line: 2774, column: 34, scope: !2811)
!3308 = !DILocation(line: 2775, column: 29, scope: !2811)
!3309 = !DILocation(line: 2775, column: 31, scope: !2811)
!3310 = !DILocation(line: 2776, column: 19, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !2811, file: !888, line: 2776, column: 19)
!3312 = !DILocation(line: 2776, column: 51, scope: !3311)
!3313 = !DILocation(line: 2776, column: 19, scope: !2811)
!3314 = !DILocation(line: 2777, column: 57, scope: !3311)
!3315 = !DILocation(line: 2777, column: 38, scope: !3311)
!3316 = !DILocation(line: 2777, column: 67, scope: !3311)
!3317 = !DILocation(line: 2777, column: 33, scope: !3311)
!3318 = !DILocation(line: 2777, column: 80, scope: !3311)
!3319 = !DILocation(line: 2778, column: 39, scope: !3311)
!3320 = !DILocation(line: 2778, column: 59, scope: !3311)
!3321 = !DILocation(line: 2778, column: 69, scope: !3311)
!3322 = !DILocation(line: 2779, column: 26, scope: !3311)
!3323 = !DILocation(line: 2777, column: 17, scope: !3311)
!3324 = !DILocation(line: 2781, column: 21, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3311, file: !888, line: 2781, column: 21)
!3326 = !DILocation(line: 2781, column: 53, scope: !3325)
!3327 = !DILocation(line: 2781, column: 21, scope: !3311)
!3328 = !DILocation(line: 2782, column: 59, scope: !3325)
!3329 = !DILocation(line: 2782, column: 40, scope: !3325)
!3330 = !DILocation(line: 2782, column: 69, scope: !3325)
!3331 = !DILocation(line: 2782, column: 35, scope: !3325)
!3332 = !DILocation(line: 2783, column: 27, scope: !3325)
!3333 = !DILocation(line: 2783, column: 48, scope: !3325)
!3334 = !DILocation(line: 2783, column: 68, scope: !3325)
!3335 = !DILocation(line: 2784, column: 28, scope: !3325)
!3336 = !DILocation(line: 2784, column: 39, scope: !3325)
!3337 = !DILocation(line: 2782, column: 19, scope: !3325)
!3338 = !DILocation(line: 2786, column: 23, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3325, file: !888, line: 2786, column: 23)
!3340 = !DILocation(line: 2786, column: 55, scope: !3339)
!3341 = !DILocation(line: 0, scope: !3339)
!3342 = !DILocation(line: 2786, column: 23, scope: !3325)
!3343 = !DILocation(line: 2787, column: 21, scope: !3339)
!3344 = !DILocation(line: 2791, column: 21, scope: !3339)
!3345 = !DILocation(line: 2794, column: 32, scope: !2811)
!3346 = !DILocation(line: 2795, column: 49, scope: !2811)
!3347 = !DILocation(line: 2795, column: 26, scope: !2811)
!3348 = !DILocation(line: 2795, column: 22, scope: !2811)
!3349 = !DILocation(line: 2795, column: 25, scope: !2811)
!3350 = !DILocation(line: 2796, column: 51, scope: !2811)
!3351 = !DILocation(line: 2796, column: 28, scope: !2811)
!3352 = !DILocation(line: 2796, column: 22, scope: !2811)
!3353 = !DILocation(line: 2796, column: 27, scope: !2811)
!3354 = !DILocation(line: 2797, column: 50, scope: !2811)
!3355 = !DILocation(line: 2797, column: 27, scope: !2811)
!3356 = !DILocation(line: 2797, column: 22, scope: !2811)
!3357 = !DILocation(line: 2797, column: 26, scope: !2811)
!3358 = !DILocation(line: 2798, column: 13, scope: !2812)
!3359 = !DILocation(line: 2798, column: 13, scope: !2811)
!3360 = !DILocation(line: 2801, column: 5, scope: !2801)
!3361 = !DILocation(line: 2805, column: 5, scope: !2761)
!3362 = !DILocation(line: 2806, column: 9, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !2761, file: !888, line: 2806, column: 7)
!3364 = !DILocation(line: 2806, column: 7, scope: !2761)
!3365 = !DILocation(line: 2808, column: 10, scope: !2761)
!3366 = !DILocation(line: 2808, column: 20, scope: !2761)
!3367 = !DILocation(line: 2809, column: 10, scope: !2761)
!3368 = !DILocation(line: 2809, column: 15, scope: !2761)
!3369 = !DILocation(line: 2810, column: 25, scope: !2761)
!3370 = !DILocation(line: 2810, column: 33, scope: !2761)
!3371 = !DILocation(line: 2810, column: 16, scope: !2761)
!3372 = !DILocation(line: 2810, column: 10, scope: !2761)
!3373 = !DILocation(line: 2810, column: 15, scope: !2761)
!3374 = !DILocation(line: 2811, column: 40, scope: !2761)
!3375 = !DILocation(line: 2811, column: 10, scope: !2761)
!3376 = !DILocation(line: 2811, column: 13, scope: !2761)
!3377 = !DILocation(line: 2812, column: 42, scope: !2761)
!3378 = !DILocation(line: 2812, column: 10, scope: !2761)
!3379 = !DILocation(line: 2812, column: 15, scope: !2761)
!3380 = !DILocation(line: 2813, column: 41, scope: !2761)
!3381 = !DILocation(line: 2813, column: 10, scope: !2761)
!3382 = !DILocation(line: 2813, column: 14, scope: !2761)
!3383 = !DILocation(line: 2814, column: 10, scope: !2761)
!3384 = !DILocation(line: 2814, column: 17, scope: !2761)
!3385 = !DILocation(line: 2815, column: 10, scope: !2761)
!3386 = !DILocation(line: 2815, column: 15, scope: !2761)
!3387 = !DILocation(line: 2816, column: 3, scope: !2761)
!3388 = !DILocation(line: 2817, column: 1, scope: !2761)
!3389 = distinct !DISubprogram(name: "QueryColorDatabase", scope: !888, file: !888, line: 2438, type: !3390, scopeLine: 2440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!587, !607, !705, !1007}
!3392 = !{!3393, !3394, !3395}
!3393 = !DILocalVariable(name: "name", arg: 1, scope: !3389, file: !888, line: 2438, type: !607)
!3394 = !DILocalVariable(name: "color", arg: 2, scope: !3389, file: !888, line: 2439, type: !705)
!3395 = !DILocalVariable(name: "exception", arg: 3, scope: !3389, file: !888, line: 2439, type: !1007)
!3396 = !DILocation(line: 0, scope: !3389)
!3397 = !DILocation(line: 2441, column: 10, scope: !3389)
!3398 = !DILocation(line: 2441, column: 3, scope: !3389)
!3399 = distinct !DISubprogram(name: "QueryColorname", scope: !888, file: !888, line: 2477, type: !3400, scopeLine: 2480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!587, !1945, !1947, !1006, !573, !1007}
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408}
!3403 = !DILocalVariable(name: "image", arg: 1, scope: !3399, file: !888, line: 2477, type: !1945)
!3404 = !DILocalVariable(name: "color", arg: 2, scope: !3399, file: !888, line: 2478, type: !1947)
!3405 = !DILocalVariable(name: "compliance", arg: 3, scope: !3399, file: !888, line: 2478, type: !1006)
!3406 = !DILocalVariable(name: "name", arg: 4, scope: !3399, file: !888, line: 2478, type: !573)
!3407 = !DILocalVariable(name: "exception", arg: 5, scope: !3399, file: !888, line: 2479, type: !1007)
!3408 = !DILocalVariable(name: "pixel", scope: !3399, file: !888, line: 2482, type: !579)
!3409 = !DILocation(line: 0, scope: !3399)
!3410 = !DILocation(line: 2481, column: 3, scope: !3399)
!3411 = !DILocation(line: 2482, column: 5, scope: !3399)
!3412 = !DILocation(line: 2484, column: 3, scope: !3399)
!3413 = !DILocation(line: 0, scope: !2184, inlinedAt: !3414)
!3414 = distinct !DILocation(line: 2485, column: 3, scope: !3399)
!3415 = !DILocation(line: 95, column: 31, scope: !2184, inlinedAt: !3414)
!3416 = !DILocation(line: 95, column: 14, scope: !2184, inlinedAt: !3414)
!3417 = !DILocation(line: 95, column: 10, scope: !2184, inlinedAt: !3414)
!3418 = !DILocation(line: 95, column: 13, scope: !2184, inlinedAt: !3414)
!3419 = !DILocation(line: 96, column: 33, scope: !2184, inlinedAt: !3414)
!3420 = !DILocation(line: 96, column: 16, scope: !2184, inlinedAt: !3414)
!3421 = !DILocation(line: 96, column: 10, scope: !2184, inlinedAt: !3414)
!3422 = !DILocation(line: 96, column: 15, scope: !2184, inlinedAt: !3414)
!3423 = !DILocation(line: 97, column: 32, scope: !2184, inlinedAt: !3414)
!3424 = !DILocation(line: 97, column: 15, scope: !2184, inlinedAt: !3414)
!3425 = !DILocation(line: 97, column: 10, scope: !2184, inlinedAt: !3414)
!3426 = !DILocation(line: 97, column: 14, scope: !2184, inlinedAt: !3414)
!3427 = !DILocation(line: 98, column: 35, scope: !2184, inlinedAt: !3414)
!3428 = !DILocation(line: 98, column: 18, scope: !2184, inlinedAt: !3414)
!3429 = !DILocation(line: 98, column: 10, scope: !2184, inlinedAt: !3414)
!3430 = !DILocation(line: 98, column: 17, scope: !2184, inlinedAt: !3414)
!3431 = !DILocation(line: 2486, column: 10, scope: !3399)
!3432 = !DILocation(line: 2487, column: 1, scope: !3399)
!3433 = !DILocation(line: 2486, column: 3, scope: !3399)
!3434 = distinct !DISubprogram(name: "QueryMagickColorname", scope: !888, file: !888, line: 2889, type: !3435, scopeLine: 2892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!587, !1945, !1269, !1006, !573, !1007}
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3438 = !DILocalVariable(name: "image", arg: 1, scope: !3434, file: !888, line: 2889, type: !1945)
!3439 = !DILocalVariable(name: "color", arg: 2, scope: !3434, file: !888, line: 2890, type: !1269)
!3440 = !DILocalVariable(name: "compliance", arg: 3, scope: !3434, file: !888, line: 2890, type: !1006)
!3441 = !DILocalVariable(name: "name", arg: 4, scope: !3434, file: !888, line: 2891, type: !573)
!3442 = !DILocalVariable(name: "exception", arg: 5, scope: !3434, file: !888, line: 2891, type: !1007)
!3443 = !DILocalVariable(name: "pixel", scope: !3434, file: !888, line: 2894, type: !579)
!3444 = !DILocalVariable(name: "opacity", scope: !3434, file: !888, line: 2897, type: !595)
!3445 = !DILocalVariable(name: "p", scope: !3434, file: !888, line: 2900, type: !567)
!3446 = !DILocation(line: 0, scope: !3434)
!3447 = !DILocation(line: 2893, column: 3, scope: !3434)
!3448 = !DILocation(line: 2894, column: 5, scope: !3434)
!3449 = !DILocation(line: 2902, column: 8, scope: !3434)
!3450 = !DILocation(line: 2903, column: 10, scope: !3434)
!3451 = !DILocation(line: 2904, column: 18, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3434, file: !888, line: 2904, column: 7)
!3453 = !DILocation(line: 2904, column: 7, scope: !3434)
!3454 = !DILocation(line: 2906, column: 13, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3452, file: !888, line: 2905, column: 5)
!3456 = !DILocation(line: 2906, column: 18, scope: !3455)
!3457 = !DILocation(line: 2907, column: 49, scope: !3455)
!3458 = !{!1961, !978, i64 56}
!3459 = !DILocation(line: 2907, column: 42, scope: !3455)
!3460 = !DILocation(line: 0, scope: !2688, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 2907, column: 28, scope: !3455)
!3462 = !DILocation(line: 2374, column: 9, scope: !2694, inlinedAt: !3461)
!3463 = !DILocation(line: 2907, column: 19, scope: !3455)
!3464 = !DILocation(line: 2907, column: 13, scope: !3455)
!3465 = !DILocation(line: 2907, column: 18, scope: !3455)
!3466 = !DILocation(line: 2908, column: 5, scope: !3455)
!3467 = !DILocation(line: 2909, column: 35, scope: !3434)
!3468 = !DILocation(line: 2909, column: 24, scope: !3434)
!3469 = !DILocation(line: 2909, column: 3, scope: !3434)
!3470 = !DILocation(line: 2911, column: 30, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3434, file: !888, line: 2911, column: 7)
!3472 = !DILocation(line: 2911, column: 7, scope: !3434)
!3473 = !DILocation(line: 0, scope: !1257, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 2913, column: 10, scope: !3434)
!3475 = !DILocation(line: 1087, column: 10, scope: !1257, inlinedAt: !3474)
!3476 = !DILocation(line: 2914, column: 27, scope: !3434)
!3477 = !DILocation(line: 2914, column: 3, scope: !3434)
!3478 = !DILocation(line: 2915, column: 18, scope: !3434)
!3479 = !DILocation(line: 2915, column: 24, scope: !3434)
!3480 = !DILocation(line: 2915, column: 11, scope: !3434)
!3481 = !DILocation(line: 2915, column: 48, scope: !3434)
!3482 = !DILocation(line: 2916, column: 50, scope: !3434)
!3483 = !DILocation(line: 2916, column: 25, scope: !3434)
!3484 = !DILocation(line: 2917, column: 12, scope: !3434)
!3485 = !DILocation(line: 2917, column: 3, scope: !3434)
!3486 = !DILocation(line: 2919, column: 14, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !888, line: 2919, column: 9)
!3488 = distinct !DILexicalBlock(scope: !3434, file: !888, line: 2918, column: 3)
!3489 = !DILocation(line: 2919, column: 25, scope: !3487)
!3490 = !DILocation(line: 2919, column: 39, scope: !3487)
!3491 = !DILocation(line: 2919, column: 45, scope: !3487)
!3492 = !DILocation(line: 2919, column: 59, scope: !3487)
!3493 = !DILocation(line: 2919, column: 73, scope: !3487)
!3494 = !DILocation(line: 2919, column: 63, scope: !3487)
!3495 = !DILocation(line: 2919, column: 79, scope: !3487)
!3496 = !DILocation(line: 2920, column: 20, scope: !3487)
!3497 = !DILocation(line: 2920, column: 36, scope: !3487)
!3498 = !DILocation(line: 2920, column: 26, scope: !3487)
!3499 = !DILocation(line: 2920, column: 43, scope: !3487)
!3500 = !DILocation(line: 2920, column: 56, scope: !3487)
!3501 = !DILocation(line: 2920, column: 71, scope: !3487)
!3502 = !DILocation(line: 2920, column: 61, scope: !3487)
!3503 = !DILocation(line: 2920, column: 77, scope: !3487)
!3504 = !DILocation(line: 2921, column: 20, scope: !3487)
!3505 = !DILocation(line: 2921, column: 28, scope: !3487)
!3506 = !DILocation(line: 2919, column: 9, scope: !3488)
!3507 = !DILocation(line: 2923, column: 41, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3487, file: !888, line: 2922, column: 7)
!3509 = !DILocation(line: 2923, column: 16, scope: !3508)
!3510 = !DILocation(line: 2924, column: 9, scope: !3508)
!3511 = !DILocation(line: 2926, column: 52, scope: !3488)
!3512 = !DILocation(line: 2926, column: 27, scope: !3488)
!3513 = distinct !{!3513, !3485, !3514, !1085, !1086}
!3514 = !DILocation(line: 2927, column: 3, scope: !3434)
!3515 = !DILocation(line: 2929, column: 1, scope: !3434)
!3516 = !DISubprogram(name: "ResetMagickMemory", scope: !1507, file: !1507, line: 52, type: !3517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!562, !562, !199, !1235}
!3519 = !DISubprogram(name: "LocaleNCompare", scope: !876, file: !876, line: 67, type: !3520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!199, !607, !607, !1235}
!3522 = !DISubprogram(name: "ParseCommandOption", scope: !198, file: !198, line: 172, type: !3523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!615, !1937, !1519, !607}
!3525 = !DISubprogram(name: "SetGeometryInfo", scope: !375, file: !375, line: 155, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!3529 = !DISubprogram(name: "ParseGeometry", scope: !375, file: !375, line: 143, type: !3530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!1052, !607, !3528}
!3532 = !DISubprogram(name: "AcquireString", scope: !876, file: !876, line: 43, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3533 = !DISubprogram(name: "SubstituteString", scope: !876, file: !876, line: 73, type: !3534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!587, !614, !607, !607}
!3536 = !DILocation(line: 0, scope: !3110)
!3537 = !DILocation(line: 2851, column: 10, scope: !3110)
!3538 = !DILocation(line: 2851, column: 3, scope: !3110)
!3539 = !DISubprogram(name: "DestroyString", scope: !876, file: !876, line: 46, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!573, !573}
!3542 = !DISubprogram(name: "ConvertHCLToRGB", scope: !3543, file: !3543, line: 39, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3543 = !DIFile(filename: "apps/538.imagick_r/src/magick/gem.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1c4d294250c916114ca6e5f5b31857f")
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !1981, !1981, !1981, !3546, !3546, !3546}
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!3547 = !DISubprogram(name: "ConvertHSBToRGB", scope: !3543, file: !3543, line: 43, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3548 = !DISubprogram(name: "ConvertHSLToRGB", scope: !3543, file: !3543, line: 47, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3549 = !DISubprogram(name: "ConvertHWBToRGB", scope: !3543, file: !3543, line: 51, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3550 = !DISubprogram(name: "NewLinkedList", scope: !565, file: !565, line: 43, type: !3551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!563, !1235}
!3553 = !DISubprogram(name: "GetExceptionInfo", scope: !63, file: !63, line: 166, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{null, !1007}
!3556 = !DISubprogram(name: "GetExceptionMessage", scope: !63, file: !63, line: 137, type: !3557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!573, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!3560 = !DISubprogram(name: "CatchException", scope: !63, file: !63, line: 164, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3561 = !DISubprogram(name: "DestroyExceptionInfo", scope: !63, file: !63, line: 148, type: !3562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!1007, !1007}
!3564 = !DISubprogram(name: "MagickCoreTerminus", scope: !1433, file: !1433, line: 147, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3565 = !DISubprogram(name: "GetConfigureOptions", scope: !3566, file: !3566, line: 60, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3566 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!3567 = distinct !DISubprogram(name: "LoadColorCache", scope: !888, file: !888, line: 2156, type: !3568, scopeLine: 2159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3570)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!587, !563, !607, !607, !1235, !1007}
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3592, !3593, !3598, !3599}
!3571 = !DILocalVariable(name: "color_cache", arg: 1, scope: !3567, file: !888, line: 2156, type: !563)
!3572 = !DILocalVariable(name: "xml", arg: 2, scope: !3567, file: !888, line: 2157, type: !607)
!3573 = !DILocalVariable(name: "filename", arg: 3, scope: !3567, file: !888, line: 2157, type: !607)
!3574 = !DILocalVariable(name: "depth", arg: 4, scope: !3567, file: !888, line: 2157, type: !1235)
!3575 = !DILocalVariable(name: "exception", arg: 5, scope: !3567, file: !888, line: 2158, type: !1007)
!3576 = !DILocalVariable(name: "keyword", scope: !3567, file: !888, line: 2161, type: !810)
!3577 = !DILocalVariable(name: "token", scope: !3567, file: !888, line: 2162, type: !573)
!3578 = !DILocalVariable(name: "color_info", scope: !3567, file: !888, line: 2165, type: !611)
!3579 = !DILocalVariable(name: "q", scope: !3567, file: !888, line: 2168, type: !607)
!3580 = !DILocalVariable(name: "status", scope: !3567, file: !888, line: 2171, type: !587)
!3581 = !DILocalVariable(name: "path", scope: !3582, file: !888, line: 2230, type: !810)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !888, line: 2228, column: 17)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !888, line: 2224, column: 19)
!3584 = distinct !DILexicalBlock(scope: !3585, file: !888, line: 2223, column: 13)
!3585 = distinct !DILexicalBlock(scope: !3586, file: !888, line: 2222, column: 15)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !888, line: 2216, column: 9)
!3587 = distinct !DILexicalBlock(scope: !3588, file: !888, line: 2211, column: 7)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2210, column: 9)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !888, line: 2184, column: 3)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !888, line: 2183, column: 3)
!3591 = distinct !DILexicalBlock(scope: !3567, file: !888, line: 2183, column: 3)
!3592 = !DILocalVariable(name: "xml", scope: !3582, file: !888, line: 2231, type: !573)
!3593 = !DILocalVariable(name: "message", scope: !3594, file: !888, line: 2260, type: !573)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !888, line: 2260, column: 11)
!3595 = distinct !DILexicalBlock(scope: !3596, file: !888, line: 2259, column: 13)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !888, line: 2254, column: 7)
!3597 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2253, column: 9)
!3598 = !DILocalVariable(name: "exception", scope: !3594, file: !888, line: 2260, type: !818)
!3599 = !DILocalVariable(name: "compliance", scope: !3600, file: !888, line: 2297, type: !615)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !888, line: 2295, column: 11)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !888, line: 2294, column: 13)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !888, line: 2288, column: 7)
!3603 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2285, column: 5)
!3604 = !DILocation(line: 0, scope: !3567)
!3605 = !DILocation(line: 2160, column: 3, scope: !3567)
!3606 = !DILocation(line: 2161, column: 5, scope: !3567)
!3607 = !DILocation(line: 2167, column: 3, scope: !3567)
!3608 = !DILocation(line: 2176, column: 10, scope: !3567)
!3609 = !DILocation(line: 2178, column: 11, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3567, file: !888, line: 2178, column: 7)
!3611 = !DILocation(line: 2178, column: 7, scope: !3567)
!3612 = !DILocation(line: 2182, column: 9, scope: !3567)
!3613 = !DILocation(line: 2183, column: 9, scope: !3591)
!3614 = !DILocation(line: 2183, column: 24, scope: !3590)
!3615 = !DILocation(line: 2183, column: 27, scope: !3590)
!3616 = !DILocation(line: 2183, column: 3, scope: !3591)
!3617 = !DILocation(line: 2188, column: 5, scope: !3589)
!3618 = !DILocation(line: 2189, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2189, column: 9)
!3620 = !DILocation(line: 2189, column: 16, scope: !3619)
!3621 = !DILocation(line: 2189, column: 9, scope: !3589)
!3622 = !DILocation(line: 2191, column: 12, scope: !3589)
!3623 = !DILocation(line: 2192, column: 9, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2192, column: 9)
!3625 = !DILocation(line: 2192, column: 47, scope: !3624)
!3626 = !DILocation(line: 2192, column: 9, scope: !3589)
!3627 = !DILocation(line: 2197, column: 32, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3624, file: !888, line: 2193, column: 7)
!3629 = !DILocation(line: 2197, column: 17, scope: !3628)
!3630 = !DILocation(line: 2197, column: 42, scope: !3628)
!3631 = !DILocation(line: 2197, column: 48, scope: !3628)
!3632 = !DILocation(line: 2197, column: 53, scope: !3628)
!3633 = !DILocation(line: 2197, column: 52, scope: !3628)
!3634 = !DILocation(line: 2197, column: 55, scope: !3628)
!3635 = !DILocation(line: 2197, column: 9, scope: !3628)
!3636 = !DILocation(line: 2198, column: 11, scope: !3628)
!3637 = distinct !{!3637, !3635, !3638, !1085, !1086}
!3638 = !DILocation(line: 2198, column: 36, scope: !3628)
!3639 = !DILocation(line: 2183, column: 25, scope: !3590)
!3640 = distinct !{!3640, !3616, !3641, !1085, !1086}
!3641 = !DILocation(line: 2334, column: 3, scope: !3591)
!3642 = !DILocation(line: 2201, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2201, column: 9)
!3644 = !DILocation(line: 2201, column: 42, scope: !3643)
!3645 = !DILocation(line: 2201, column: 9, scope: !3589)
!3646 = !DILocation(line: 2206, column: 32, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3643, file: !888, line: 2202, column: 7)
!3648 = !DILocation(line: 2206, column: 17, scope: !3647)
!3649 = !DILocation(line: 2206, column: 42, scope: !3647)
!3650 = !DILocation(line: 2206, column: 48, scope: !3647)
!3651 = !DILocation(line: 2206, column: 53, scope: !3647)
!3652 = !DILocation(line: 2206, column: 52, scope: !3647)
!3653 = !DILocation(line: 2206, column: 55, scope: !3647)
!3654 = !DILocation(line: 2206, column: 9, scope: !3647)
!3655 = !DILocation(line: 2207, column: 11, scope: !3647)
!3656 = distinct !{!3656, !3654, !3657, !1085, !1086}
!3657 = !DILocation(line: 2207, column: 36, scope: !3647)
!3658 = !DILocation(line: 2210, column: 9, scope: !3588)
!3659 = !DILocation(line: 2210, column: 43, scope: !3588)
!3660 = !DILocation(line: 2210, column: 9, scope: !3589)
!3661 = !DILocation(line: 2224, column: 19, scope: !3584)
!3662 = !DILocation(line: 2215, column: 18, scope: !3587)
!3663 = !DILocation(line: 2215, column: 25, scope: !3587)
!3664 = !DILocation(line: 2215, column: 33, scope: !3587)
!3665 = !DILocation(line: 2215, column: 37, scope: !3587)
!3666 = !DILocation(line: 2215, column: 48, scope: !3587)
!3667 = !DILocation(line: 2215, column: 57, scope: !3587)
!3668 = !DILocation(line: 2215, column: 62, scope: !3587)
!3669 = !DILocation(line: 2215, column: 61, scope: !3587)
!3670 = !DILocation(line: 2215, column: 64, scope: !3587)
!3671 = !DILocation(line: 2215, column: 9, scope: !3587)
!3672 = !DILocation(line: 2217, column: 18, scope: !3586)
!3673 = !DILocation(line: 2218, column: 26, scope: !3586)
!3674 = !DILocation(line: 2218, column: 11, scope: !3586)
!3675 = !DILocation(line: 2219, column: 15, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3586, file: !888, line: 2219, column: 15)
!3677 = !DILocation(line: 2219, column: 22, scope: !3676)
!3678 = !DILocation(line: 2219, column: 15, scope: !3586)
!3679 = distinct !{!3679, !3671, !3680, !1085, !1086}
!3680 = !DILocation(line: 2250, column: 9, scope: !3587)
!3681 = !DILocation(line: 2221, column: 26, scope: !3586)
!3682 = !DILocation(line: 2221, column: 11, scope: !3586)
!3683 = !DILocation(line: 2222, column: 15, scope: !3585)
!3684 = !DILocation(line: 2222, column: 45, scope: !3585)
!3685 = !DILocation(line: 2222, column: 15, scope: !3586)
!3686 = !DILocation(line: 2225, column: 24, scope: !3583)
!3687 = !DILocation(line: 2225, column: 17, scope: !3583)
!3688 = !DILocation(line: 2229, column: 19, scope: !3582)
!3689 = !DILocation(line: 2230, column: 21, scope: !3582)
!3690 = !DILocation(line: 2233, column: 19, scope: !3582)
!3691 = !DILocation(line: 2234, column: 23, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3582, file: !888, line: 2234, column: 23)
!3693 = !DILocation(line: 2234, column: 29, scope: !3692)
!3694 = !DILocation(line: 2234, column: 23, scope: !3582)
!3695 = !DILocation(line: 2235, column: 28, scope: !3692)
!3696 = !DILocation(line: 2235, column: 21, scope: !3692)
!3697 = !DILocation(line: 2237, column: 23, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3582, file: !888, line: 2237, column: 23)
!3699 = !DILocation(line: 2237, column: 30, scope: !3698)
!3700 = !DILocation(line: 2237, column: 23, scope: !3582)
!3701 = !DILocation(line: 2238, column: 28, scope: !3698)
!3702 = !DILocation(line: 2238, column: 21, scope: !3698)
!3703 = !DILocation(line: 2240, column: 28, scope: !3698)
!3704 = !DILocation(line: 2241, column: 23, scope: !3582)
!3705 = !DILocation(line: 0, scope: !3582)
!3706 = !DILocation(line: 2242, column: 27, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3582, file: !888, line: 2242, column: 23)
!3708 = !DILocation(line: 2242, column: 23, scope: !3582)
!3709 = !DILocation(line: 2244, column: 31, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3707, file: !888, line: 2243, column: 21)
!3711 = !DILocation(line: 2244, column: 29, scope: !3710)
!3712 = !DILocation(line: 2246, column: 36, scope: !3710)
!3713 = !DILocation(line: 2247, column: 21, scope: !3710)
!3714 = !DILocation(line: 2248, column: 17, scope: !3583)
!3715 = !DILocation(line: 2253, column: 9, scope: !3597)
!3716 = !DILocation(line: 2253, column: 41, scope: !3597)
!3717 = !DILocation(line: 2253, column: 9, scope: !3589)
!3718 = !DILocation(line: 2258, column: 34, scope: !3596)
!3719 = !DILocation(line: 2259, column: 24, scope: !3595)
!3720 = !DILocation(line: 2259, column: 13, scope: !3596)
!3721 = !DILocation(line: 2260, column: 11, scope: !3594)
!3722 = !DILocation(line: 0, scope: !3594)
!3723 = !DILocation(line: 2261, column: 16, scope: !3596)
!3724 = !DILocation(line: 2262, column: 26, scope: !3596)
!3725 = !DILocation(line: 2262, column: 25, scope: !3596)
!3726 = !DILocation(line: 2263, column: 21, scope: !3596)
!3727 = !DILocation(line: 2263, column: 27, scope: !3596)
!3728 = !DILocation(line: 2264, column: 21, scope: !3596)
!3729 = !DILocation(line: 2264, column: 30, scope: !3596)
!3730 = !DILocation(line: 2265, column: 9, scope: !3596)
!3731 = !DILocation(line: 2267, column: 20, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2267, column: 9)
!3733 = !DILocation(line: 2267, column: 9, scope: !3589)
!3734 = !DILocation(line: 2269, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2269, column: 9)
!3736 = !DILocation(line: 2269, column: 37, scope: !3735)
!3737 = !DILocation(line: 2269, column: 9, scope: !3589)
!3738 = !DILocation(line: 2271, column: 16, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3735, file: !888, line: 2270, column: 7)
!3740 = !DILocation(line: 2272, column: 20, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3739, file: !888, line: 2272, column: 13)
!3742 = !DILocation(line: 2272, column: 13, scope: !3739)
!3743 = !DILocation(line: 2275, column: 25, scope: !3741)
!3744 = !DILocation(line: 2273, column: 18, scope: !3741)
!3745 = !DILocation(line: 2273, column: 11, scope: !3741)
!3746 = !DILocation(line: 2279, column: 20, scope: !3589)
!3747 = !DILocation(line: 2279, column: 5, scope: !3589)
!3748 = !DILocation(line: 2280, column: 9, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3589, file: !888, line: 2280, column: 9)
!3750 = !DILocation(line: 2280, column: 16, scope: !3749)
!3751 = !DILocation(line: 2280, column: 9, scope: !3589)
!3752 = !DILocation(line: 2282, column: 20, scope: !3589)
!3753 = !DILocation(line: 2282, column: 5, scope: !3589)
!3754 = !DILocation(line: 2283, column: 20, scope: !3589)
!3755 = !DILocation(line: 2283, column: 5, scope: !3589)
!3756 = !DILocation(line: 2284, column: 13, scope: !3589)
!3757 = !DILocation(line: 2284, column: 5, scope: !3589)
!3758 = !DILocation(line: 2289, column: 13, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3602, file: !888, line: 2289, column: 13)
!3760 = !DILocation(line: 2289, column: 53, scope: !3759)
!3761 = !DILocation(line: 2289, column: 13, scope: !3602)
!3762 = !DILocation(line: 2291, column: 56, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3759, file: !888, line: 2290, column: 11)
!3764 = !DILocation(line: 0, scope: !3110, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 2291, column: 20, scope: !3763)
!3766 = !DILocation(line: 2851, column: 10, scope: !3110, inlinedAt: !3765)
!3767 = !DILocation(line: 2292, column: 13, scope: !3763)
!3768 = !DILocation(line: 2294, column: 13, scope: !3601)
!3769 = !DILocation(line: 2294, column: 58, scope: !3601)
!3770 = !DILocation(line: 2294, column: 13, scope: !3602)
!3771 = !DILocation(line: 2299, column: 36, scope: !3600)
!3772 = !DILocation(line: 0, scope: !3600)
!3773 = !DILocation(line: 2300, column: 17, scope: !3774)
!3774 = distinct !DILexicalBlock(scope: !3600, file: !888, line: 2300, column: 17)
!3775 = !DILocation(line: 2300, column: 58, scope: !3774)
!3776 = !DILocation(line: 2300, column: 17, scope: !3600)
!3777 = !DILocation(line: 2302, column: 17, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3600, file: !888, line: 2302, column: 17)
!3779 = !DILocation(line: 2302, column: 58, scope: !3778)
!3780 = !DILocation(line: 2302, column: 17, scope: !3600)
!3781 = !DILocation(line: 2304, column: 17, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3600, file: !888, line: 2304, column: 17)
!3783 = !DILocation(line: 2304, column: 58, scope: !3782)
!3784 = !DILocation(line: 2304, column: 17, scope: !3600)
!3785 = !DILocation(line: 2306, column: 35, scope: !3600)
!3786 = !DILocation(line: 2314, column: 13, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !888, line: 2314, column: 13)
!3788 = distinct !DILexicalBlock(scope: !3603, file: !888, line: 2313, column: 7)
!3789 = !DILocation(line: 2314, column: 52, scope: !3787)
!3790 = !DILocation(line: 2314, column: 13, scope: !3788)
!3791 = !DILocation(line: 2316, column: 30, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3787, file: !888, line: 2315, column: 11)
!3793 = !DILocation(line: 2316, column: 25, scope: !3792)
!3794 = !DILocation(line: 2316, column: 29, scope: !3792)
!3795 = !DILocation(line: 2317, column: 13, scope: !3792)
!3796 = !DILocation(line: 2324, column: 13, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !888, line: 2324, column: 13)
!3798 = distinct !DILexicalBlock(scope: !3603, file: !888, line: 2323, column: 7)
!3799 = !DILocation(line: 2324, column: 55, scope: !3797)
!3800 = !DILocation(line: 2324, column: 13, scope: !3798)
!3801 = !DILocation(line: 2326, column: 33, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3797, file: !888, line: 2325, column: 11)
!3803 = !DILocation(line: 2326, column: 25, scope: !3802)
!3804 = !DILocation(line: 2326, column: 32, scope: !3802)
!3805 = !DILocation(line: 2327, column: 13, scope: !3802)
!3806 = !DILocation(line: 2335, column: 18, scope: !3567)
!3807 = !DILocation(line: 2336, column: 3, scope: !3567)
!3808 = !DILocation(line: 2337, column: 1, scope: !3567)
!3809 = !DISubprogram(name: "GetStringInfoDatum", scope: !876, file: !876, line: 97, type: !3810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!841, !873}
!3812 = !DISubprogram(name: "GetStringInfoPath", scope: !876, file: !876, line: 58, type: !3813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!607, !873}
!3815 = !DISubprogram(name: "DestroyConfigureOptions", scope: !3566, file: !3566, line: 58, type: !3816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!563, !563}
!3818 = !DISubprogram(name: "AcquireMagickMemory", scope: !1507, file: !1507, line: 40, type: !3819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!562, !1235}
!3821 = !DISubprogram(name: "AppendValueToLinkedList", scope: !565, file: !565, line: 46, type: !3822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!587, !563, !1252}
!3824 = !DISubprogram(name: "GetMagickToken", scope: !1516, file: !1516, line: 45, type: !3825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{null, !607, !872, !573}
!3827 = !DISubprogram(name: "GetPathComponent", scope: !546, file: !546, line: 68, type: !3828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{null, !607, !3830, !573}
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !546, line: 36, baseType: !545)
!3831 = !DISubprogram(name: "FileToXML", scope: !3832, file: !3832, line: 26, type: !3833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3832 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!573, !607, !1235}
!3835 = !DISubprogram(name: "IsMagickTrue", scope: !1516, file: !1516, line: 38, type: !3836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !917)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!587, !607}
