; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/magic.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._MagicMapInfo = type { ptr, i64, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MagicInfo = type { ptr, ptr, ptr, ptr, i64, i64, i32, i32, ptr, ptr, i64 }

@magic_semaphore = internal global ptr null, align 8, !dbg !0
@magic_cache = internal unnamed_addr global ptr null, align 8, !dbg !257
@.str = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magic.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Name      Offset Target\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%6ld \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"magic.xml\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@MagicMap = internal unnamed_addr constant [113 x %struct._MagicMapInfo] [%struct._MagicMapInfo { ptr @.str.33, i64 0, ptr @.str.34, i64 9 }, %struct._MagicMapInfo { ptr @.str.35, i64 0, ptr @.str.36, i64 5 }, %struct._MagicMapInfo { ptr @.str.37, i64 0, ptr @.str.37, i64 4 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.39, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.40, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.41, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.42, i64 2 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.43, i64 2 }, %struct._MagicMapInfo { ptr @.str.44, i64 0, ptr @.str.44, i64 4 }, %struct._MagicMapInfo { ptr @.str.38, i64 0, ptr @.str.45, i64 2 }, %struct._MagicMapInfo { ptr @.str.46, i64 21, ptr @.str.47, i64 21 }, %struct._MagicMapInfo { ptr @.str.46, i64 0, ptr @.str.48, i64 9 }, %struct._MagicMapInfo { ptr @.str.46, i64 9, ptr @.str.48, i64 9 }, %struct._MagicMapInfo { ptr @.str.46, i64 8, ptr @.str.49, i64 8 }, %struct._MagicMapInfo { ptr @.str.50, i64 0, ptr @.str.51, i64 5 }, %struct._MagicMapInfo { ptr @.str.52, i64 0, ptr @.str.53, i64 4 }, %struct._MagicMapInfo { ptr @.str.54, i64 0, ptr @.str.55, i64 14 }, %struct._MagicMapInfo { ptr @.str.56, i64 128, ptr @.str.57, i64 4 }, %struct._MagicMapInfo { ptr @.str.58, i64 0, ptr @.str.59, i64 4 }, %struct._MagicMapInfo { ptr @.str.60, i64 0, ptr @.str.61, i64 2 }, %struct._MagicMapInfo { ptr @.str.62, i64 0, ptr @.str.63, i64 4 }, %struct._MagicMapInfo { ptr @.str.64, i64 0, ptr @.str.65, i64 8 }, %struct._MagicMapInfo { ptr @.str.66, i64 0, ptr @.str.67, i64 7 }, %struct._MagicMapInfo { ptr @.str.68, i64 0, ptr @.str.69, i64 4 }, %struct._MagicMapInfo { ptr @.str.68, i64 0, ptr @.str.70, i64 4 }, %struct._MagicMapInfo { ptr @.str.71, i64 40, ptr @.str.72, i64 8 }, %struct._MagicMapInfo { ptr @.str.73, i64 0, ptr @.str.74, i64 4 }, %struct._MagicMapInfo { ptr @.str.75, i64 0, ptr @.str.76, i64 4 }, %struct._MagicMapInfo { ptr @.str.77, i64 0, ptr @.str.78, i64 4 }, %struct._MagicMapInfo { ptr @.str.79, i64 0, ptr @.str.80, i64 4 }, %struct._MagicMapInfo { ptr @.str.81, i64 0, ptr @.str.82, i64 3 }, %struct._MagicMapInfo { ptr @.str.81, i64 0, ptr @.str.83, i64 6 }, %struct._MagicMapInfo { ptr @.str.84, i64 0, ptr @.str.85, i64 4 }, %struct._MagicMapInfo { ptr @.str.86, i64 0, ptr @.str.87, i64 4 }, %struct._MagicMapInfo { ptr @.str.88, i64 0, ptr @.str.89, i64 24 }, %struct._MagicMapInfo { ptr @.str.90, i64 1, ptr @.str.90, i64 3 }, %struct._MagicMapInfo { ptr @.str.91, i64 0, ptr @.str.92, i64 10 }, %struct._MagicMapInfo { ptr @.str.91, i64 0, ptr @.str.93, i64 6 }, %struct._MagicMapInfo { ptr @.str.94, i64 0, ptr @.str.95, i64 3 }, %struct._MagicMapInfo { ptr @.str.96, i64 1, ptr @.str.96, i64 4 }, %struct._MagicMapInfo { ptr @.str.96, i64 1, ptr @.str.97, i64 4 }, %struct._MagicMapInfo { ptr @.str.98, i64 8, ptr @.str.98, i64 4 }, %struct._MagicMapInfo { ptr @.str.99, i64 0, ptr @.str.100, i64 28 }, %struct._MagicMapInfo { ptr @.str.101, i64 0, ptr @.str.102, i64 14 }, %struct._MagicMapInfo { ptr @.str.103, i64 0, ptr @.str.104, i64 2 }, %struct._MagicMapInfo { ptr @.str.105, i64 0, ptr @.str.106, i64 8 }, %struct._MagicMapInfo { ptr @.str.107, i64 0, ptr @.str.108, i64 3 }, %struct._MagicMapInfo { ptr @.str.109, i64 0, ptr @.str.110, i64 4 }, %struct._MagicMapInfo { ptr @.str.111, i64 0, ptr @.str.112, i64 4 }, %struct._MagicMapInfo { ptr @.str.113, i64 4, ptr @.str.114, i64 12 }, %struct._MagicMapInfo { ptr @.str.115, i64 0, ptr @.str.116, i64 20 }, %struct._MagicMapInfo { ptr @.str.117, i64 0, ptr @.str.118, i64 14 }, %struct._MagicMapInfo { ptr @.str.117, i64 0, ptr @.str.119, i64 14 }, %struct._MagicMapInfo { ptr @.str.120, i64 0, ptr @.str.121, i64 8 }, %struct._MagicMapInfo { ptr @.str.122, i64 0, ptr @.str.123, i64 14 }, %struct._MagicMapInfo { ptr @.str.124, i64 0, ptr @.str.125, i64 4 }, %struct._MagicMapInfo { ptr @.str.126, i64 0, ptr @.str.127, i64 4 }, %struct._MagicMapInfo { ptr @.str.128, i64 0, ptr @.str.129, i64 20 }, %struct._MagicMapInfo { ptr @.str.130, i64 0, ptr @.str.131, i64 8 }, %struct._MagicMapInfo { ptr @.str.132, i64 2048, ptr @.str.133, i64 4 }, %struct._MagicMapInfo { ptr @.str.134, i64 0, ptr @.str.135, i64 3 }, %struct._MagicMapInfo { ptr @.str.136, i64 0, ptr @.str.137, i64 2 }, %struct._MagicMapInfo { ptr @.str.136, i64 0, ptr @.str.138, i64 2 }, %struct._MagicMapInfo { ptr @.str.139, i64 60, ptr @.str.140, i64 8 }, %struct._MagicMapInfo { ptr @.str.141, i64 0, ptr @.str.142, i64 5 }, %struct._MagicMapInfo { ptr @.str.143, i64 0, ptr @.str.144, i64 4 }, %struct._MagicMapInfo { ptr @.str.145, i64 0, ptr @.str.146, i64 18 }, %struct._MagicMapInfo { ptr @.str.147, i64 6, ptr @.str.146, i64 18 }, %struct._MagicMapInfo { ptr @.str.148, i64 0, ptr @.str.149, i64 5 }, %struct._MagicMapInfo { ptr @.str.44, i64 522, ptr @.str.150, i64 6 }, %struct._MagicMapInfo { ptr @.str.151, i64 0, ptr @.str.152, i64 8 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.154, i64 2 }, %struct._MagicMapInfo { ptr @.str.155, i64 0, ptr @.str.156, i64 2 }, %struct._MagicMapInfo { ptr @.str.157, i64 0, ptr @.str.158, i64 2 }, %struct._MagicMapInfo { ptr @.str.153, i64 0, ptr @.str.159, i64 2 }, %struct._MagicMapInfo { ptr @.str.155, i64 0, ptr @.str.160, i64 2 }, %struct._MagicMapInfo { ptr @.str.157, i64 0, ptr @.str.161, i64 2 }, %struct._MagicMapInfo { ptr @.str.162, i64 0, ptr @.str.163, i64 2 }, %struct._MagicMapInfo { ptr @.str.164, i64 0, ptr @.str.165, i64 2 }, %struct._MagicMapInfo { ptr @.str.164, i64 0, ptr @.str.166, i64 2 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.168, i64 2 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.169, i64 3 }, %struct._MagicMapInfo { ptr @.str.167, i64 0, ptr @.str.74, i64 4 }, %struct._MagicMapInfo { ptr @.str.170, i64 0, ptr @.str.171, i64 4 }, %struct._MagicMapInfo { ptr @.str.172, i64 0, ptr @.str.173, i64 4 }, %struct._MagicMapInfo { ptr @.str.174, i64 0, ptr @.str.175, i64 5 }, %struct._MagicMapInfo { ptr @.str.176, i64 0, ptr @.str.177, i64 16 }, %struct._MagicMapInfo { ptr @.str.178, i64 0, ptr @.str.179, i64 2 }, %struct._MagicMapInfo { ptr @.str.180, i64 0, ptr @.str.181, i64 2 }, %struct._MagicMapInfo { ptr @.str.182, i64 0, ptr @.str.183, i64 5 }, %struct._MagicMapInfo { ptr @.str.184, i64 0, ptr @.str.185, i64 2 }, %struct._MagicMapInfo { ptr @.str.186, i64 0, ptr @.str.187, i64 4 }, %struct._MagicMapInfo { ptr @.str.188, i64 1, ptr @.str.189, i64 4 }, %struct._MagicMapInfo { ptr @.str.188, i64 1, ptr @.str.190, i64 4 }, %struct._MagicMapInfo { ptr @.str.191, i64 0, ptr @.str.192, i64 4 }, %struct._MagicMapInfo { ptr @.str.191, i64 0, ptr @.str.193, i64 4 }, %struct._MagicMapInfo { ptr @.str.194, i64 0, ptr @.str.195, i64 8 }, %struct._MagicMapInfo { ptr @.str.194, i64 0, ptr @.str.196, i64 8 }, %struct._MagicMapInfo { ptr @.str.197, i64 0, ptr @.str.198, i64 5 }, %struct._MagicMapInfo { ptr @.str.199, i64 0, ptr @.str.200, i64 32 }, %struct._MagicMapInfo { ptr @.str.201, i64 0, ptr @.str.202, i64 7 }, %struct._MagicMapInfo { ptr @.str.201, i64 0, ptr @.str.203, i64 6 }, %struct._MagicMapInfo { ptr @.str.204, i64 0, ptr @.str.205, i64 2 }, %struct._MagicMapInfo { ptr @.str.206, i64 8, ptr @.str.206, i64 4 }, %struct._MagicMapInfo { ptr @.str.207, i64 0, ptr @.str.208, i64 4 }, %struct._MagicMapInfo { ptr @.str.207, i64 0, ptr @.str.209, i64 4 }, %struct._MagicMapInfo { ptr @.str.210, i64 0, ptr @.str.211, i64 4 }, %struct._MagicMapInfo { ptr @.str.212, i64 0, ptr @.str.213, i64 7 }, %struct._MagicMapInfo { ptr @.str.214, i64 0, ptr @.str.215, i64 8 }, %struct._MagicMapInfo { ptr @.str.216, i64 0, ptr @.str.217, i64 4 }, %struct._MagicMapInfo { ptr @.str.218, i64 1, ptr @.str.219, i64 7 }, %struct._MagicMapInfo { ptr @.str.220, i64 4, ptr @.str.221, i64 3 }, %struct._MagicMapInfo { ptr @.str.220, i64 5, ptr @.str.222, i64 3 }], align 16, !dbg !260
@.str.16 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"Loading magic configure file \22%s\22 ...\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"<magic\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"8BIMWTEXT\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"8\00B\00I\00M\00#\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"8BIMTEXT\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"8BIM#\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"BA\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"CP\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"IC\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"PICT\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"PI\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"CALS\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"version: MIL-STD-1840\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"srcdocid:\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"rorient:\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"CGM\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"BEGMF\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"CIN\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"\80*_\D7\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"CRW\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"II\1A\00\00\00HEAPCCDR\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"DCM\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"DICM\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"DCX\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\B1h\DE:\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"DIB\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"(\00\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"DDS\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"DDS \00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"DJVU\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"AT&TFORM\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"digraph\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"DPX\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"SDPX\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"XPDS\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"EMF\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c" EMF\00\00\01\00\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"EPT\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"\C5\D0\D3\C6\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"EXR\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"v/1\01\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"DFAX\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"FIG\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"#FIG\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"IT0\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"SIMPLE\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"FPX\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"\D0\CF\11\E0\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"GIF8\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"GPLT\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"#!/usr/local/bin/gnuplot\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"HDF\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"HDR\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.93 = private unnamed_addr constant [7 x i8] c"#?RGBE\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"HPGL\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"IN;\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"ILBM\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"IPTCWTEXT\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"2\00#\000\00=\00\22\00&\00#\000\00;\00&\00#\002\00;\00\22\00\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"IPTCTEXT\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"2#0=\22&#0;&#2;\22\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"IPTC\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"\1C\02\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"\8BJNG\0D\0A\1A\0A\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"J2K\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"\FFO\FFQ\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"JPC\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"\0D\0A\87\0A\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"JP2\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"\00\00\00\0CjP  \0D\0A\87\0A\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"MAT\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"MATLAB 5.0 MAT-file,\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"MIFF\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"Id=ImageMagick\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"id=ImageMagick\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"MNG\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"\8AMNG\0D\0A\1A\0A\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"MPC\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"id=MagickCache\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"\00\00\01\B3\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"\00MRM\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"MVG\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"push graphic-context\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"ORF\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"IIRO\08\00\00\00\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"PCD\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"PCD_\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"PCL\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"\1BE\1B\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"\0A\02\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"\0A\05\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"PDB\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"vIMGView\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"PES\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"#PES\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"PFA\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"%!PS-AdobeFont-1.0\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"PFB\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"PGX\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"(G\10M&\00", align 1
@.str.150 = private unnamed_addr constant [7 x i8] c"\00\11\02\FF\0C\00\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"P1\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"P2\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"P3\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"P4\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"PAM\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"PFM\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"PF\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"Pf\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"%!\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"\04%!\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"PSB\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"8BPB\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"PSD\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"8BPS\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"PWP\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"SFW95\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"RAF\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"FUJIFILMCCD-RAW \00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"R\CC\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"SCT\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"SFW\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"SFW94\00", align 1
@.str.184 = private unnamed_addr constant [4 x i8] c"SGI\00", align 1
@.str.185 = private unnamed_addr constant [3 x i8] c"\01\DA\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"Y\A6j\95\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"?XML\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"?xml\00", align 1
@.str.191 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"MM\00*\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"II*\00\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"TIFF64\00", align 1
@.str.195 = private unnamed_addr constant [9 x i8] c"MM\00+\00\08\00\00\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"II+\00\08\00\00\00\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"TTF\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"\00\01\00\00\00\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.200 = private unnamed_addr constant [33 x i8] c"# ImageMagick pixel enumeration:\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"VICAR\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"LBLSIZE\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"NJPL1I\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"VIFF\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"\AB\01\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"WMF\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"\D7\CD\C6\9A\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"\01\00\09\00\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"WPG\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"\FFWPC\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"XBM\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"#define\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"XCF\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"gimp xcf\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"XEF\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"FOVb\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"XPM\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"* XPM *\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"XWD\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"\07\00\00\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"\00\00\07\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicInfo(ptr noundef readonly %magic, i64 noundef %length, ptr noundef %exception) local_unnamed_addr #0 !dbg !282 {
entry:
  %path.i.i = alloca [4096 x i8], align 16
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %magic, metadata !299, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i64 %length, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %exception, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata ptr %exception, metadata !304, metadata !DIExpression()) #13, !dbg !309
  %0 = load ptr, ptr @magic_cache, align 8, !dbg !312, !tbaa !314
  %cmp.i = icmp eq ptr %0, null, !dbg !318
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !319

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @magic_semaphore, align 8, !dbg !320, !tbaa !314
  %cmp1.i = icmp eq ptr %1, null, !dbg !323
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !324

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #13, !dbg !325
  %.pre.i = load ptr, ptr @magic_semaphore, align 8, !dbg !326, !tbaa !314
  br label %if.end.i, !dbg !325

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !326
  tail call void @LockSemaphoreInfo(ptr noundef %2) #13, !dbg !327
  %3 = load ptr, ptr @magic_cache, align 8, !dbg !328, !tbaa !314
  %cmp3.i = icmp eq ptr %3, null, !dbg !330
  br i1 %cmp3.i, label %if.then4.i, label %IsMagicCacheInstantiated.exit, !dbg !331

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !332, metadata !DIExpression()) #13, !dbg !355
  call void @llvm.dbg.value(metadata ptr %exception, metadata !337, metadata !DIExpression()) #13, !dbg !355
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path.i.i) #13, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %path.i.i, metadata !338, metadata !DIExpression()) #13, !dbg !358
  %call.i.i = tail call ptr @NewLinkedList(i64 noundef 0) #13, !dbg !359
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !340, metadata !DIExpression()) #13, !dbg !355
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !360
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !361

if.then.i.i:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #13, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !348, metadata !DIExpression()) #13, !dbg !362
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #13, !dbg !362
  %call2.i.i = tail call ptr @__errno_location() #14, !dbg !362
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !362, !tbaa !363
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #13, !dbg !362
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !345, metadata !DIExpression()) #13, !dbg !365
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 265, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %call3.i.i) #13, !dbg !362
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #13, !dbg !362
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !345, metadata !DIExpression()) #13, !dbg !365
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #13, !dbg !362
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #13, !dbg !362
  call void @MagickCoreTerminus() #13, !dbg !362
  call void @_exit(i32 noundef 1) #15, !dbg !362
  unreachable, !dbg !362

if.end.i.i:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()) #13, !dbg !355
  store i8 0, ptr %path.i.i, align 16, !dbg !366, !tbaa !367
  %call7.i.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.13, ptr noundef %exception) #13, !dbg !368
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !341, metadata !DIExpression()) #13, !dbg !355
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #13, !dbg !369
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !339, metadata !DIExpression()) #13, !dbg !355
  %cmp9.not1.i.i = icmp eq ptr %call8.i.i, null, !dbg !370
  br i1 %cmp9.not1.i.i, label %for.body.i.i.preheader, label %while.body.i.i, !dbg !371

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.03.i.i = phi ptr [ %call16.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  %status.02.i.i = phi i32 [ %and.i.i, %while.body.i.i ], [ 1, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.03.i.i, metadata !339, metadata !DIExpression()) #13, !dbg !355
  call void @llvm.dbg.value(metadata i32 %status.02.i.i, metadata !342, metadata !DIExpression()) #13, !dbg !355
  %call11.i.i = call ptr @GetStringInfoPath(ptr noundef nonnull %option.03.i.i) #13, !dbg !372
  %call12.i.i = call i64 @CopyMagickString(ptr noundef nonnull %path.i.i, ptr noundef %call11.i.i, i64 noundef 4096) #13, !dbg !374
  %call13.i.i = call ptr @GetStringInfoDatum(ptr noundef nonnull %option.03.i.i) #13, !dbg !375
  %call14.i.i = call ptr @GetStringInfoPath(ptr noundef nonnull %option.03.i.i) #13, !dbg !376
  %call15.i.i = call fastcc i32 @LoadMagicCache(ptr noundef nonnull %call.i.i, ptr noundef %call13.i.i, ptr noundef %call14.i.i, i64 noundef 0, ptr noundef %exception) #13, !dbg !377
  %and.i.i = and i32 %call15.i.i, %status.02.i.i, !dbg !378
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !342, metadata !DIExpression()) #13, !dbg !355
  %call16.i.i = call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #13, !dbg !379
  call void @llvm.dbg.value(metadata ptr %call16.i.i, metadata !339, metadata !DIExpression()) #13, !dbg !355
  %cmp9.not.i.i = icmp eq ptr %call16.i.i, null, !dbg !370
  br i1 %cmp9.not.i.i, label %for.body.i.i.preheader, label %while.body.i.i, !dbg !371, !llvm.loop !380

for.body.i.i.preheader:                           ; preds = %while.body.i.i, %if.end.i.i
  %status.16.i.i.ph = phi i32 [ 1, %if.end.i.i ], [ %and.i.i, %while.body.i.i ]
  br label %for.body.i.i, !dbg !384

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %cleanup.i.i
  %status.16.i.i = phi i32 [ %status.2.i.i, %cleanup.i.i ], [ %status.16.i.i.ph, %for.body.i.i.preheader ]
  %i.04.i.i = phi i64 [ %inc.i.i, %cleanup.i.i ], [ 0, %for.body.i.i.preheader ]
  call void @llvm.dbg.value(metadata i32 %status.16.i.i, metadata !342, metadata !DIExpression()) #13, !dbg !355
  call void @llvm.dbg.value(metadata i64 %i.04.i.i, metadata !344, metadata !DIExpression()) #13, !dbg !355
  %add.ptr.i.i = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %i.04.i.i, !dbg !385
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i, metadata !353, metadata !DIExpression()) #13, !dbg !386
  %call18.i.i = call ptr @AcquireMagickMemory(i64 noundef 80) #16, !dbg !387
  call void @llvm.dbg.value(metadata ptr %call18.i.i, metadata !349, metadata !DIExpression()) #13, !dbg !386
  %cmp19.i.i = icmp eq ptr %call18.i.i, null, !dbg !388
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end22.i.i, !dbg !390

if.then20.i.i:                                    ; preds = %for.body.i.i
  %5 = load ptr, ptr %add.ptr.i.i, align 16, !dbg !391, !tbaa !393
  %call21.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 295, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %5) #13, !dbg !397
  br label %cleanup.i.i, !dbg !398

if.end22.i.i:                                     ; preds = %for.body.i.i
  %call23.i.i = call ptr @ResetMagickMemory(ptr noundef nonnull %call18.i.i, i32 noundef 0, i64 noundef 80) #13, !dbg !399
  store ptr @.str.16, ptr %call18.i.i, align 8, !dbg !400, !tbaa !401
  %6 = load ptr, ptr %add.ptr.i.i, align 16, !dbg !403, !tbaa !393
  %name26.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 1, !dbg !404
  store ptr %6, ptr %name26.i.i, align 8, !dbg !405, !tbaa !406
  %offset.i.i = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %i.04.i.i, i32 1, !dbg !407
  %7 = load i64, ptr %offset.i.i, align 8, !dbg !407, !tbaa !408
  %offset27.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 5, !dbg !409
  store i64 %7, ptr %offset27.i.i, align 8, !dbg !410, !tbaa !411
  %magic.i.i = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %i.04.i.i, i32 2, !dbg !412
  %8 = load ptr, ptr %magic.i.i, align 16, !dbg !412, !tbaa !413
  %target.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 2, !dbg !414
  store ptr %8, ptr %target.i.i, align 8, !dbg !415, !tbaa !416
  %magic29.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 3, !dbg !417
  store ptr %8, ptr %magic29.i.i, align 8, !dbg !418, !tbaa !419
  %length.i.i = getelementptr inbounds %struct._MagicMapInfo, ptr @MagicMap, i64 %i.04.i.i, i32 3, !dbg !420
  %9 = load i64, ptr %length.i.i, align 8, !dbg !420, !tbaa !421
  %length30.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 4, !dbg !422
  store i64 %9, ptr %length30.i.i, align 8, !dbg !423, !tbaa !424
  %exempt.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 6, !dbg !425
  store i32 1, ptr %exempt.i.i, align 8, !dbg !426, !tbaa !427
  %signature.i.i = getelementptr inbounds %struct._MagicInfo, ptr %call18.i.i, i64 0, i32 10, !dbg !428
  store i64 2880220587, ptr %signature.i.i, align 8, !dbg !429, !tbaa !430
  %call31.i.i = call i32 @AppendValueToLinkedList(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call18.i.i) #13, !dbg !431
  %and32.i.i = and i32 %call31.i.i, %status.16.i.i, !dbg !432
  call void @llvm.dbg.value(metadata i32 %and32.i.i, metadata !342, metadata !DIExpression()) #13, !dbg !355
  %cmp33.i.i = icmp eq i32 %and32.i.i, 0, !dbg !433
  br i1 %cmp33.i.i, label %if.then34.i.i, label %cleanup.i.i, !dbg !435

if.then34.i.i:                                    ; preds = %if.end22.i.i
  %10 = load ptr, ptr %name26.i.i, align 8, !dbg !436, !tbaa !406
  %call36.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 310, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %10) #13, !dbg !437
  br label %cleanup.i.i, !dbg !438

cleanup.i.i:                                      ; preds = %if.then34.i.i, %if.end22.i.i, %if.then20.i.i
  %status.2.i.i = phi i32 [ %status.16.i.i, %if.then20.i.i ], [ 0, %if.then34.i.i ], [ %and32.i.i, %if.end22.i.i ], !dbg !355
  call void @llvm.dbg.value(metadata i32 %status.2.i.i, metadata !342, metadata !DIExpression()) #13, !dbg !355
  %inc.i.i = add nuw nsw i64 %i.04.i.i, 1, !dbg !439
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !344, metadata !DIExpression()) #13, !dbg !355
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 113, !dbg !440
  br i1 %exitcond.not.i.i, label %AcquireMagicCache.exit.i, label %for.body.i.i, !dbg !384, !llvm.loop !441

AcquireMagicCache.exit.i:                         ; preds = %cleanup.i.i
  %call39.i.i = call ptr @DestroyConfigureOptions(ptr noundef %call7.i.i) #13, !dbg !443
  call void @llvm.dbg.value(metadata ptr %call39.i.i, metadata !341, metadata !DIExpression()) #13, !dbg !355
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path.i.i) #13, !dbg !444
  store ptr %call.i.i, ptr @magic_cache, align 8, !dbg !445, !tbaa !314
  br label %IsMagicCacheInstantiated.exit, !dbg !446

IsMagicCacheInstantiated.exit:                    ; preds = %if.end.i, %AcquireMagicCache.exit.i
  %11 = load ptr, ptr @magic_semaphore, align 8, !dbg !447, !tbaa !314
  call void @UnlockSemaphoreInfo(ptr noundef %11) #13, !dbg !448
  %.pre8.i = load ptr, ptr @magic_cache, align 8, !dbg !449, !tbaa !314
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !450
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !451

if.end:                                           ; preds = %entry, %IsMagicCacheInstantiated.exit
  %12 = load ptr, ptr @magic_semaphore, align 8, !dbg !452, !tbaa !314
  call void @LockSemaphoreInfo(ptr noundef %12) #13, !dbg !453
  %13 = load ptr, ptr @magic_cache, align 8, !dbg !454, !tbaa !314
  call void @ResetLinkedListIterator(ptr noundef %13) #13, !dbg !455
  %14 = load ptr, ptr @magic_cache, align 8, !dbg !456, !tbaa !314
  %call1 = call ptr @GetNextValueInLinkedList(ptr noundef %14) #13, !dbg !457
  call void @llvm.dbg.value(metadata ptr %call1, metadata !302, metadata !DIExpression()), !dbg !303
  %cmp2 = icmp eq ptr %magic, null, !dbg !458
  br i1 %cmp2, label %cleanup.sink.split, label %while.cond.preheader, !dbg !460

while.cond.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %call1, metadata !302, metadata !DIExpression()), !dbg !303
  %cmp5.not36 = icmp eq ptr %call1, null, !dbg !461
  br i1 %cmp5.not36, label %cleanup.sink.split, label %while.body, !dbg !462

while.body:                                       ; preds = %while.cond.preheader, %if.end14
  %p.037 = phi ptr [ %call15, %if.end14 ], [ %call1, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.037, metadata !302, metadata !DIExpression()), !dbg !303
  %offset = getelementptr inbounds %struct._MagicInfo, ptr %p.037, i64 0, i32 5, !dbg !463
  %15 = load i64, ptr %offset, align 8, !dbg !463, !tbaa !411
  %length6 = getelementptr inbounds %struct._MagicInfo, ptr %p.037, i64 0, i32 4, !dbg !466
  %16 = load i64, ptr %length6, align 8, !dbg !466, !tbaa !424
  %add = add i64 %16, %15, !dbg !467
  %cmp7.not = icmp ugt i64 %add, %length, !dbg !468
  br i1 %cmp7.not, label %if.end14, label %land.lhs.true, !dbg !469

land.lhs.true:                                    ; preds = %while.body
  %add.ptr = getelementptr inbounds i8, ptr %magic, i64 %15, !dbg !470
  %magic9 = getelementptr inbounds %struct._MagicInfo, ptr %p.037, i64 0, i32 3, !dbg !471
  %17 = load ptr, ptr %magic9, align 8, !dbg !471, !tbaa !419
  %bcmp = call i32 @bcmp(ptr nonnull %add.ptr, ptr %17, i64 %16), !dbg !472
  %cmp12 = icmp eq i32 %bcmp, 0, !dbg !473
  br i1 %cmp12, label %if.then17, label %if.end14, !dbg !474

if.end14:                                         ; preds = %land.lhs.true, %while.body
  %18 = load ptr, ptr @magic_cache, align 8, !dbg !475, !tbaa !314
  %call15 = call ptr @GetNextValueInLinkedList(ptr noundef %18) #13, !dbg !476
  call void @llvm.dbg.value(metadata ptr %call15, metadata !302, metadata !DIExpression()), !dbg !303
  %cmp5.not = icmp eq ptr %call15, null, !dbg !461
  br i1 %cmp5.not, label %cleanup.sink.split, label %while.body, !dbg !462, !llvm.loop !477

if.then17:                                        ; preds = %land.lhs.true
  %19 = load ptr, ptr @magic_cache, align 8, !dbg !479, !tbaa !314
  %call18 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %19, ptr noundef nonnull %p.037) #13, !dbg !481
  %call19 = call i32 @InsertValueInLinkedList(ptr noundef %19, i64 noundef 0, ptr noundef %call18) #13, !dbg !482
  br label %cleanup.sink.split, !dbg !483

cleanup.sink.split:                               ; preds = %if.end14, %if.then17, %while.cond.preheader, %if.end
  %retval.0.ph = phi ptr [ %call1, %if.end ], [ %p.037, %if.then17 ], [ null, %while.cond.preheader ], [ null, %if.end14 ]
  %20 = load ptr, ptr @magic_semaphore, align 8, !dbg !303, !tbaa !314
  call void @UnlockSemaphoreInfo(ptr noundef %20) #13, !dbg !303
  br label %cleanup, !dbg !484

cleanup:                                          ; preds = %cleanup.sink.split, %IsMagicCacheInstantiated.exit
  %retval.0 = phi ptr [ null, %IsMagicCacheInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !303
  ret ptr %retval.0, !dbg !484
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !485 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !489 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !492 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !495 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !496 i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !501 ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_aliases, ptr noundef %exception) local_unnamed_addr #0 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !509, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !510, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %exception, metadata !511, metadata !DIExpression()), !dbg !515
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 447, ptr noundef nonnull @.str.2, ptr noundef %pattern) #13, !dbg !516
  store i64 0, ptr %number_aliases, align 8, !dbg !517, !tbaa !518
  %call1 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %exception), !dbg !519
  call void @llvm.dbg.value(metadata ptr %call1, metadata !513, metadata !DIExpression()), !dbg !515
  %cmp = icmp eq ptr %call1, null, !dbg !520
  br i1 %cmp, label %cleanup, label %if.end, !dbg !522

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @magic_cache, align 8, !dbg !523, !tbaa !314
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #13, !dbg !524
  %add = add i64 %call2, 1, !dbg !525
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #17, !dbg !526
  call void @llvm.dbg.value(metadata ptr %call3, metadata !512, metadata !DIExpression()), !dbg !515
  %cmp4 = icmp eq ptr %call3, null, !dbg !527
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !529

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @magic_semaphore, align 8, !dbg !530, !tbaa !314
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !531
  %2 = load ptr, ptr @magic_cache, align 8, !dbg !532, !tbaa !314
  tail call void @ResetLinkedListIterator(ptr noundef %2) #13, !dbg !533
  %3 = load ptr, ptr @magic_cache, align 8, !dbg !534, !tbaa !314
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #13, !dbg !535
  call void @llvm.dbg.value(metadata ptr %call7, metadata !513, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata i64 0, metadata !514, metadata !DIExpression()), !dbg !515
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !536
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !539

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !513, metadata !DIExpression()), !dbg !515
  %stealth = getelementptr inbounds %struct._MagicInfo, ptr %p.032, i64 0, i32 7, !dbg !540
  %4 = load i32, ptr %stealth, align 4, !dbg !540, !tbaa !543
  %cmp9 = icmp eq i32 %4, 0, !dbg !544
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !545

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._MagicInfo, ptr %p.032, i64 0, i32 1, !dbg !546
  %5 = load ptr, ptr %name, align 8, !dbg !546, !tbaa !406
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #13, !dbg !547
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !548
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !549

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !550
  call void @llvm.dbg.value(metadata i64 %inc, metadata !514, metadata !DIExpression()), !dbg !515
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !551
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !552, !tbaa !314
  br label %if.end13, !dbg !551

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !553
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !514, metadata !DIExpression()), !dbg !515
  %6 = load ptr, ptr @magic_cache, align 8, !dbg !554, !tbaa !314
  %call14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #13, !dbg !555
  call void @llvm.dbg.value(metadata ptr %call14, metadata !513, metadata !DIExpression()), !dbg !515
  %cmp8.not = icmp eq ptr %call14, null, !dbg !536
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !539, !llvm.loop !556

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !553
  %7 = load ptr, ptr @magic_semaphore, align 8, !dbg !558, !tbaa !314
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #13, !dbg !559
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MagicInfoCompare) #13, !dbg !560
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !561
  store ptr null, ptr %arrayidx15, align 8, !dbg !562, !tbaa !314
  store i64 %i.0.lcssa, ptr %number_aliases, align 8, !dbg !563, !tbaa !518
  br label %cleanup, !dbg !564

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !515
  ret ptr %retval.0, !dbg !565
}

declare !dbg !566 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !571 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !575 i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !580 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !585 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @MagicInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !593 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !595, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %y, metadata !596, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %x, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata ptr %y, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load ptr, ptr %x, align 8, !dbg !600, !tbaa !314
  %1 = load ptr, ptr %0, align 8, !dbg !602, !tbaa !401
  %2 = load ptr, ptr %y, align 8, !dbg !603, !tbaa !314
  %3 = load ptr, ptr %2, align 8, !dbg !604, !tbaa !401
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #13, !dbg !605
  %cmp = icmp eq i32 %call, 0, !dbg !606
  %4 = load ptr, ptr %x, align 8, !dbg !599, !tbaa !314
  br i1 %cmp, label %if.then, label %if.end, !dbg !607

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._MagicInfo, ptr %4, i64 0, i32 1, !dbg !608
  %5 = load ptr, ptr %y, align 8, !dbg !609, !tbaa !314
  %name2 = getelementptr inbounds %struct._MagicInfo, ptr %5, i64 0, i32 1, !dbg !610
  br label %cleanup, !dbg !611

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %y, align 8, !dbg !612, !tbaa !314
  br label %cleanup, !dbg !613

cleanup:                                          ; preds = %if.end, %if.then
  %.sink13 = phi ptr [ %6, %if.end ], [ %name2, %if.then ]
  %.sink.in = phi ptr [ %4, %if.end ], [ %name, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !599, !tbaa !314
  %7 = load ptr, ptr %.sink13, align 8, !dbg !599, !tbaa !314
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #13, !dbg !599
  ret i32 %call6, !dbg !614
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_aliases, ptr noundef %exception) local_unnamed_addr #0 !dbg !615 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !619, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !620, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr %exception, metadata !621, metadata !DIExpression()), !dbg !625
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 542, ptr noundef nonnull @.str.2, ptr noundef %pattern) #13, !dbg !626
  store i64 0, ptr %number_aliases, align 8, !dbg !627, !tbaa !518
  %call1 = tail call ptr @GetMagicInfo(ptr noundef null, i64 noundef 0, ptr noundef %exception), !dbg !628
  call void @llvm.dbg.value(metadata ptr %call1, metadata !623, metadata !DIExpression()), !dbg !625
  %cmp = icmp eq ptr %call1, null, !dbg !629
  br i1 %cmp, label %cleanup, label %if.end, !dbg !631

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @magic_cache, align 8, !dbg !632, !tbaa !314
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #13, !dbg !633
  %add = add i64 %call2, 1, !dbg !634
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #17, !dbg !635
  call void @llvm.dbg.value(metadata ptr %call3, metadata !622, metadata !DIExpression()), !dbg !625
  %cmp4 = icmp eq ptr %call3, null, !dbg !636
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !638

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @magic_semaphore, align 8, !dbg !639, !tbaa !314
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !640
  %2 = load ptr, ptr @magic_cache, align 8, !dbg !641, !tbaa !314
  tail call void @ResetLinkedListIterator(ptr noundef %2) #13, !dbg !642
  %3 = load ptr, ptr @magic_cache, align 8, !dbg !643, !tbaa !314
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #13, !dbg !644
  call void @llvm.dbg.value(metadata ptr %call7, metadata !623, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 0, metadata !624, metadata !DIExpression()), !dbg !625
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !645
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !648

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !623, metadata !DIExpression()), !dbg !625
  %stealth = getelementptr inbounds %struct._MagicInfo, ptr %p.034, i64 0, i32 7, !dbg !649
  %4 = load i32, ptr %stealth, align 4, !dbg !649, !tbaa !543
  %cmp9 = icmp eq i32 %4, 0, !dbg !652
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !653

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._MagicInfo, ptr %p.034, i64 0, i32 1, !dbg !654
  %5 = load ptr, ptr %name, align 8, !dbg !654, !tbaa !406
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #13, !dbg !655
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !656
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !657

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !658, !tbaa !406
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #13, !dbg !659
  %inc = add nsw i64 %i.035, 1, !dbg !660
  call void @llvm.dbg.value(metadata i64 %inc, metadata !624, metadata !DIExpression()), !dbg !625
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !661
  store ptr %call14, ptr %arrayidx, align 8, !dbg !662, !tbaa !314
  br label %if.end15, !dbg !661

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !663
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !624, metadata !DIExpression()), !dbg !625
  %7 = load ptr, ptr @magic_cache, align 8, !dbg !664, !tbaa !314
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #13, !dbg !665
  call void @llvm.dbg.value(metadata ptr %call16, metadata !623, metadata !DIExpression()), !dbg !625
  %cmp8.not = icmp eq ptr %call16, null, !dbg !645
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !648, !llvm.loop !666

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !663
  %8 = load ptr, ptr @magic_semaphore, align 8, !dbg !668, !tbaa !314
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #13, !dbg !669
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @MagicCompare) #13, !dbg !670
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !671
  store ptr null, ptr %arrayidx17, align 8, !dbg !672, !tbaa !314
  store i64 %i.0.lcssa, ptr %number_aliases, align 8, !dbg !673, !tbaa !518
  br label %cleanup, !dbg !674

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !625
  ret ptr %retval.0, !dbg !675
}

declare !dbg !676 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @MagicCompare(ptr noundef %x, ptr noundef %y) #0 !dbg !679 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !681, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata ptr %y, metadata !682, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata ptr %x, metadata !683, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata ptr %y, metadata !684, metadata !DIExpression()), !dbg !685
  %call = tail call i32 @LocaleCompare(ptr noundef %x, ptr noundef %y) #13, !dbg !686
  ret i32 %call, !dbg !687
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetMagicName(ptr nocapture noundef readonly %magic_info) local_unnamed_addr #0 !dbg !688 {
entry:
  call void @llvm.dbg.value(metadata ptr %magic_info, metadata !692, metadata !DIExpression()), !dbg !693
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 593, ptr noundef nonnull @.str.3) #13, !dbg !694
  %name = getelementptr inbounds %struct._MagicInfo, ptr %magic_info, i64 0, i32 1, !dbg !695
  %0 = load ptr, ptr %name, align 8, !dbg !695, !tbaa !406
  ret ptr %0, !dbg !696
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListMagicInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !697 {
entry:
  %number_aliases = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !702, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %exception, metadata !703, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_aliases) #13, !dbg !716
  %cmp = icmp eq ptr %file, null, !dbg !717
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !719
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !702, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %number_aliases, metadata !707, metadata !DIExpression(DW_OP_deref)), !dbg !715
  %call = call ptr @GetMagicInfoList(ptr noundef nonnull @.str.4, ptr noundef nonnull %number_aliases, ptr noundef %exception), !dbg !720
  call void @llvm.dbg.value(metadata ptr %call, metadata !705, metadata !DIExpression()), !dbg !715
  %cmp1 = icmp eq ptr %call, null, !dbg !721
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !723

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_aliases, align 8, !tbaa !518
  call void @llvm.dbg.value(metadata i64 0, metadata !706, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr null, metadata !704, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i64 %1, metadata !707, metadata !DIExpression()), !dbg !715
  %cmp4136 = icmp sgt i64 %1, 0, !dbg !724
  br i1 %cmp4136, label %for.body, label %for.end77, !dbg !725

for.body:                                         ; preds = %for.cond.preheader, %for.inc75
  %i.0138 = phi i64 [ %inc76, %for.inc75 ], [ 0, %for.cond.preheader ]
  %path.0137 = phi ptr [ %path.1, %for.inc75 ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0138, metadata !706, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata ptr %path.0137, metadata !704, metadata !DIExpression()), !dbg !715
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0138, !dbg !726
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !726, !tbaa !314
  %stealth = getelementptr inbounds %struct._MagicInfo, ptr %2, i64 0, i32 7, !dbg !728
  %3 = load i32, ptr %stealth, align 4, !dbg !728, !tbaa !543
  %cmp5.not = icmp eq i32 %3, 0, !dbg !729
  br i1 %cmp5.not, label %if.end7, label %for.inc75, !dbg !730

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.0137, null, !dbg !731
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !733

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !734, !tbaa !401
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %path.0137, ptr noundef %4) #13, !dbg !735
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !736
  br i1 %cmp12.not, label %if.end24, label %lor.lhs.false.if.then13_crit_edge, !dbg !737

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !738, !tbaa !314
  br label %if.then13, !dbg !737

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then13_crit_edge ], [ %2, %if.end7 ], !dbg !738
  %6 = load ptr, ptr %5, align 8, !dbg !741, !tbaa !401
  %cmp16.not = icmp eq ptr %6, null, !dbg !742
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !743

if.then17:                                        ; preds = %if.then13
  %call20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #13, !dbg !744
  br label %if.end21, !dbg !745

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6) #13, !dbg !746
  %call23 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.7) #13, !dbg !747
  br label %if.end24, !dbg !748

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !749, !tbaa !314
  %8 = load ptr, ptr %7, align 8, !dbg !750, !tbaa !401
  call void @llvm.dbg.value(metadata ptr %8, metadata !704, metadata !DIExpression()), !dbg !715
  %name = getelementptr inbounds %struct._MagicInfo, ptr %7, i64 0, i32 1, !dbg !751
  %9 = load ptr, ptr %name, align 8, !dbg !751, !tbaa !406
  %call28 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.2, ptr noundef %9) #13, !dbg !752
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !753, !tbaa !314
  %name30 = getelementptr inbounds %struct._MagicInfo, ptr %10, i64 0, i32 1, !dbg !755
  %11 = load ptr, ptr %name30, align 8, !dbg !755, !tbaa !406
  %call31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #18, !dbg !756
  call void @llvm.dbg.value(metadata i64 %call31, metadata !708, metadata !DIExpression()), !dbg !715
  %cmp33128 = icmp slt i64 %call31, 10, !dbg !757
  br i1 %cmp33128, label %for.body34, label %for.end, !dbg !759

for.body34:                                       ; preds = %if.end24, %for.body34
  %j.0129 = phi i64 [ %inc, %for.body34 ], [ %call31, %if.end24 ]
  call void @llvm.dbg.value(metadata i64 %j.0129, metadata !708, metadata !DIExpression()), !dbg !715
  %call35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8) #13, !dbg !760
  %inc = add i64 %j.0129, 1, !dbg !761
  call void @llvm.dbg.value(metadata i64 %inc, metadata !708, metadata !DIExpression()), !dbg !715
  %exitcond.not = icmp eq i64 %inc, 10, !dbg !757
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body34, !dbg !759, !llvm.loop !762

for.end.loopexit:                                 ; preds = %for.body34
  %.pre140 = load ptr, ptr %arrayidx, align 8, !dbg !764, !tbaa !314
  br label %for.end, !dbg !764

for.end:                                          ; preds = %for.end.loopexit, %if.end24
  %12 = phi ptr [ %.pre140, %for.end.loopexit ], [ %10, %if.end24 ], !dbg !764
  %offset = getelementptr inbounds %struct._MagicInfo, ptr %12, i64 0, i32 5, !dbg !765
  %13 = load i64, ptr %offset, align 8, !dbg !765, !tbaa !411
  %call37 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9, i64 noundef %13) #13, !dbg !766
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !767, !tbaa !314
  %target = getelementptr inbounds %struct._MagicInfo, ptr %14, i64 0, i32 2, !dbg !768
  %15 = load ptr, ptr %target, align 8, !dbg !768, !tbaa !416
  %cmp39.not = icmp eq ptr %15, null, !dbg !769
  br i1 %cmp39.not, label %if.end73, label %for.cond42.preheader, !dbg !770

for.cond42.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !709, metadata !DIExpression()), !dbg !771
  %16 = load i8, ptr %15, align 1, !dbg !772, !tbaa !367
  %cmp46.not133 = icmp eq i8 %16, 0, !dbg !775
  br i1 %cmp46.not133, label %if.end73, label %for.body48.lr.ph, !dbg !776

for.body48.lr.ph:                                 ; preds = %for.cond42.preheader
  %call49 = tail call ptr @__ctype_b_loc() #14, !dbg !715
  br label %for.body48, !dbg !776

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc70
  %17 = phi i8 [ %16, %for.body48.lr.ph ], [ %24, %for.inc70 ]
  %j41.0134 = phi i64 [ 0, %for.body48.lr.ph ], [ %inc71, %for.inc70 ]
  call void @llvm.dbg.value(metadata i64 %j41.0134, metadata !709, metadata !DIExpression()), !dbg !771
  %18 = load ptr, ptr %call49, align 8, !dbg !777, !tbaa !314
  %19 = zext i8 %17 to i64
  %arrayidx54 = getelementptr inbounds i16, ptr %18, i64 %19, !dbg !777
  %20 = load i16, ptr %arrayidx54, align 2, !dbg !777, !tbaa !779
  %21 = and i16 %20, 16384, !dbg !777
  %cmp56.not = icmp eq i16 %21, 0, !dbg !781
  br i1 %cmp56.not, label %if.else, label %if.then58, !dbg !782

if.then58:                                        ; preds = %for.body48
  %conv135 = sext i8 %17 to i32, !dbg !772
  %call63 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.10, i32 noundef %conv135) #13, !dbg !783
  br label %for.inc70, !dbg !784

if.else:                                          ; preds = %for.body48
  %conv53 = zext i8 %17 to i32, !dbg !777
  %call68 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.11, i32 noundef %conv53) #13, !dbg !785
  br label %for.inc70

for.inc70:                                        ; preds = %if.then58, %if.else
  %inc71 = add nuw nsw i64 %j41.0134, 1, !dbg !786
  call void @llvm.dbg.value(metadata i64 %inc71, metadata !709, metadata !DIExpression()), !dbg !771
  %22 = load ptr, ptr %arrayidx, align 8, !dbg !772, !tbaa !314
  %target44 = getelementptr inbounds %struct._MagicInfo, ptr %22, i64 0, i32 2, !dbg !787
  %23 = load ptr, ptr %target44, align 8, !dbg !787, !tbaa !416
  %arrayidx45 = getelementptr inbounds i8, ptr %23, i64 %inc71, !dbg !772
  %24 = load i8, ptr %arrayidx45, align 1, !dbg !772, !tbaa !367
  %cmp46.not = icmp eq i8 %24, 0, !dbg !775
  br i1 %cmp46.not, label %if.end73, label %for.body48, !dbg !776, !llvm.loop !788

if.end73:                                         ; preds = %for.inc70, %for.cond42.preheader, %for.end
  %call74 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.12) #13, !dbg !790
  br label %for.inc75, !dbg !791

for.inc75:                                        ; preds = %for.body, %if.end73
  %path.1 = phi ptr [ %path.0137, %for.body ], [ %8, %if.end73 ], !dbg !715
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !704, metadata !DIExpression()), !dbg !715
  %inc76 = add nuw nsw i64 %i.0138, 1, !dbg !792
  call void @llvm.dbg.value(metadata i64 %inc76, metadata !706, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i64 %1, metadata !707, metadata !DIExpression()), !dbg !715
  %exitcond139.not = icmp eq i64 %inc76, %1, !dbg !724
  br i1 %exitcond139.not, label %for.end77, label %for.body, !dbg !725, !llvm.loop !793

for.end77:                                        ; preds = %for.inc75, %for.cond.preheader
  %call78 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !795
  %call79 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #13, !dbg !796
  call void @llvm.dbg.value(metadata ptr %call79, metadata !705, metadata !DIExpression()), !dbg !715
  br label %cleanup, !dbg !797

cleanup:                                          ; preds = %entry, %for.end77
  %retval.0 = phi i32 [ 1, %for.end77 ], [ 0, %entry ], !dbg !715
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_aliases) #13, !dbg !798
  ret i32 %retval.0, !dbg !798
}

declare !dbg !799 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !802 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !807 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !810 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @MagicComponentGenesis() local_unnamed_addr #0 !dbg !813 {
entry:
  %0 = load ptr, ptr @magic_semaphore, align 8, !dbg !816, !tbaa !314
  %cmp = icmp eq ptr %0, null, !dbg !818
  br i1 %cmp, label %if.then, label %if.end, !dbg !819

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #13, !dbg !820
  store ptr %call, ptr @magic_semaphore, align 8, !dbg !821, !tbaa !314
  br label %if.end, !dbg !822

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !823
}

declare !dbg !824 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @MagicComponentTerminus() local_unnamed_addr #0 !dbg !827 {
entry:
  %0 = load ptr, ptr @magic_semaphore, align 8, !dbg !830, !tbaa !314
  %cmp = icmp eq ptr %0, null, !dbg !832
  br i1 %cmp, label %if.then, label %if.end, !dbg !833

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @magic_semaphore) #13, !dbg !834
  %.pre = load ptr, ptr @magic_semaphore, align 8, !dbg !835, !tbaa !314
  br label %if.end, !dbg !834

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !835
  tail call void @LockSemaphoreInfo(ptr noundef %1) #13, !dbg !836
  %2 = load ptr, ptr @magic_cache, align 8, !dbg !837, !tbaa !314
  %cmp1.not = icmp eq ptr %2, null, !dbg !839
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !840

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %2, ptr noundef nonnull @DestroyMagicElement) #13, !dbg !841
  store ptr %call, ptr @magic_cache, align 8, !dbg !842, !tbaa !314
  br label %if.end3, !dbg !843

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @magic_semaphore, align 8, !dbg !844, !tbaa !314
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #13, !dbg !845
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @magic_semaphore) #13, !dbg !846
  ret void, !dbg !847
}

declare !dbg !848 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !852 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyMagicElement(ptr noundef %magic_info) #0 !dbg !856 {
entry:
  call void @llvm.dbg.value(metadata ptr %magic_info, metadata !858, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %magic_info, metadata !859, metadata !DIExpression()), !dbg !860
  %exempt = getelementptr inbounds %struct._MagicInfo, ptr %magic_info, i64 0, i32 6, !dbg !861
  %0 = load i32, ptr %exempt, align 8, !dbg !861, !tbaa !427
  %cmp = icmp eq i32 %0, 0, !dbg !863
  br i1 %cmp, label %if.then, label %if.end23, !dbg !864

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %magic_info, align 8, !dbg !865, !tbaa !401
  %cmp1.not = icmp eq ptr %1, null, !dbg !868
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !869

if.then2:                                         ; preds = %if.then
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #13, !dbg !870
  store ptr %call, ptr %magic_info, align 8, !dbg !871, !tbaa !401
  br label %if.end, !dbg !872

if.end:                                           ; preds = %if.then2, %if.then
  %name = getelementptr inbounds %struct._MagicInfo, ptr %magic_info, i64 0, i32 1, !dbg !873
  %2 = load ptr, ptr %name, align 8, !dbg !873, !tbaa !406
  %cmp5.not = icmp eq ptr %2, null, !dbg !875
  br i1 %cmp5.not, label %if.end10, label %if.then6, !dbg !876

if.then6:                                         ; preds = %if.end
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %2) #13, !dbg !877
  store ptr %call8, ptr %name, align 8, !dbg !878, !tbaa !406
  br label %if.end10, !dbg !879

if.end10:                                         ; preds = %if.then6, %if.end
  %target = getelementptr inbounds %struct._MagicInfo, ptr %magic_info, i64 0, i32 2, !dbg !880
  %3 = load ptr, ptr %target, align 8, !dbg !880, !tbaa !416
  %cmp11.not = icmp eq ptr %3, null, !dbg !882
  br i1 %cmp11.not, label %if.end16, label %if.then12, !dbg !883

if.then12:                                        ; preds = %if.end10
  %call14 = tail call ptr @DestroyString(ptr noundef nonnull %3) #13, !dbg !884
  store ptr %call14, ptr %target, align 8, !dbg !885, !tbaa !416
  br label %if.end16, !dbg !886

if.end16:                                         ; preds = %if.then12, %if.end10
  %magic = getelementptr inbounds %struct._MagicInfo, ptr %magic_info, i64 0, i32 3, !dbg !887
  %4 = load ptr, ptr %magic, align 8, !dbg !887, !tbaa !419
  %cmp17.not = icmp eq ptr %4, null, !dbg !889
  br i1 %cmp17.not, label %if.end23, label %if.then18, !dbg !890

if.then18:                                        ; preds = %if.end16
  %call20 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %4) #13, !dbg !891
  store ptr %call20, ptr %magic, align 8, !dbg !892, !tbaa !419
  br label %if.end23, !dbg !893

if.end23:                                         ; preds = %if.end16, %if.then18, %entry
  %call24 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %magic_info) #13, !dbg !894
  call void @llvm.dbg.value(metadata ptr %call24, metadata !859, metadata !DIExpression()), !dbg !860
  ret ptr null, !dbg !895
}

declare !dbg !896 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !897 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #3

declare !dbg !900 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !903 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !907 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !911 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !914 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !915 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !918 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

declare !dbg !920 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !922 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !925 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadMagicCache(ptr noundef %magic_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !928 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception116 = alloca %struct._ExceptionInfo, align 8
  %end = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %magic_cache, metadata !932, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %xml, metadata !933, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %filename, metadata !934, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %depth, metadata !935, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %exception, metadata !936, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #13, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !937, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #13, !dbg !978
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 774, ptr noundef nonnull @.str.17, ptr noundef %filename) #13, !dbg !979
  %cmp = icmp eq ptr %xml, null, !dbg !980
  br i1 %cmp, label %cleanup, label %if.end, !dbg !982

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !940, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr null, metadata !941, metadata !DIExpression()), !dbg !975
  %call1 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #13, !dbg !983
  call void @llvm.dbg.value(metadata ptr %call1, metadata !938, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %xml, metadata !939, metadata !DIExpression()), !dbg !975
  store ptr %xml, ptr %q, align 8, !dbg !984, !tbaa !314
  call void @llvm.dbg.value(metadata ptr null, metadata !941, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 1, metadata !940, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %xml, metadata !939, metadata !DIExpression()), !dbg !975
  %0 = load i8, ptr %xml, align 1, !dbg !985, !tbaa !367
  %cmp2.not334 = icmp eq i8 %0, 0, !dbg !986
  br i1 %cmp2.not334, label %for.end239, label %for.body.lr.ph, !dbg !987

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp69 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !987

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %magic_info.0336 = phi ptr [ null, %for.body.lr.ph ], [ %magic_info.0.be, %for.cond.backedge ]
  %status.0335 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata ptr %magic_info.0336, metadata !941, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 %status.0335, metadata !940, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #13, !dbg !988
  %2 = load i8, ptr %call1, align 1, !dbg !989, !tbaa !367
  %cmp5 = icmp eq i8 %2, 0, !dbg !991
  br i1 %cmp5, label %for.end239, label %if.end8, !dbg !992

if.end8:                                          ; preds = %for.body
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #13, !dbg !993
  %call11 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.18, i64 noundef 9) #13, !dbg !994
  %cmp12 = icmp eq i32 %call11, 0, !dbg !996
  br i1 %cmp12, label %while.cond.preheader, label %if.end21, !dbg !997

while.cond.preheader:                             ; preds = %if.end8
  %3 = load ptr, ptr %q, align 8, !dbg !998, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %3, metadata !939, metadata !DIExpression()), !dbg !975
  %call15332 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.19, i64 noundef 2) #13, !dbg !1000
  %cmp16.not333 = icmp eq i32 %call15332, 0, !dbg !1001
  br i1 %cmp16.not333, label %for.cond.backedge, label %land.rhs, !dbg !1002

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !1003, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %4, metadata !939, metadata !DIExpression()), !dbg !975
  %5 = load i8, ptr %4, align 1, !dbg !1004, !tbaa !367
  %cmp19.not = icmp eq i8 %5, 0, !dbg !1005
  br i1 %cmp19.not, label %for.cond.backedge, label %while.body, !dbg !1006

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #13, !dbg !1007
  %6 = load ptr, ptr %q, align 8, !dbg !998, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %6, metadata !939, metadata !DIExpression()), !dbg !975
  %call15 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.19, i64 noundef 2) #13, !dbg !1000
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !1001
  br i1 %cmp16.not, label %for.cond.backedge, label %land.rhs, !dbg !1002, !llvm.loop !1008

for.cond.backedge:                                ; preds = %for.cond186, %while.body36, %land.rhs31, %while.body, %land.rhs, %land.rhs51.us, %land.lhs.true.us, %while.cond44.us, %while.cond44, %land.lhs.true, %land.rhs51, %if.then154, %if.then163, %if.then171, %sw.bb, %sw.bb158, %sw.bb166, %sw.bb174, %if.end147, %if.then135, %if.then139, %while.cond27.preheader, %while.cond.preheader, %if.end122, %if.end126, %if.end142
  %status.0.be = phi i32 [ %status.0335, %if.end122 ], [ %status.0335, %if.end126 ], [ %status.0335, %if.end142 ], [ %status.0335, %while.cond.preheader ], [ %status.0335, %while.cond27.preheader ], [ 0, %if.then139 ], [ %call136, %if.then135 ], [ %status.0335, %if.end147 ], [ %status.0335, %sw.bb174 ], [ %status.0335, %sw.bb166 ], [ %status.0335, %sw.bb158 ], [ %status.0335, %sw.bb ], [ %status.0335, %if.then171 ], [ %status.0335, %if.then163 ], [ %status.0335, %if.then154 ], [ %status.1.ph.ph329, %land.rhs51 ], [ %status.1.ph.ph329, %land.lhs.true ], [ %status.1.ph.ph329, %while.cond44 ], [ %status.0335, %while.cond44.us ], [ %status.0335, %land.lhs.true.us ], [ %status.0335, %land.rhs51.us ], [ %status.0335, %land.rhs ], [ %status.0335, %while.body ], [ %status.0335, %land.rhs31 ], [ %status.0335, %while.body36 ], [ %status.0335, %for.cond186 ]
  %magic_info.0.be = phi ptr [ %call112, %if.end122 ], [ null, %if.end126 ], [ %magic_info.0336, %if.end142 ], [ %magic_info.0336, %while.cond.preheader ], [ %magic_info.0336, %while.cond27.preheader ], [ null, %if.then139 ], [ null, %if.then135 ], [ %magic_info.0336, %if.end147 ], [ %magic_info.0336, %sw.bb174 ], [ %magic_info.0336, %sw.bb166 ], [ %magic_info.0336, %sw.bb158 ], [ %magic_info.0336, %sw.bb ], [ %magic_info.0336, %if.then171 ], [ %magic_info.0336, %if.then163 ], [ %magic_info.0336, %if.then154 ], [ %magic_info.0336, %land.rhs51 ], [ %magic_info.0336, %land.lhs.true ], [ %magic_info.0336, %while.cond44 ], [ %magic_info.0336, %while.cond44.us ], [ %magic_info.0336, %land.lhs.true.us ], [ %magic_info.0336, %land.rhs51.us ], [ %magic_info.0336, %land.rhs ], [ %magic_info.0336, %while.body ], [ %magic_info.0336, %land.rhs31 ], [ %magic_info.0336, %while.body36 ], [ %magic_info.0336, %for.cond186 ]
  call void @llvm.dbg.value(metadata ptr %magic_info.0.be, metadata !941, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !940, metadata !DIExpression()), !dbg !975
  %7 = load ptr, ptr %q, align 8, !dbg !1010, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %7, metadata !939, metadata !DIExpression()), !dbg !975
  %8 = load i8, ptr %7, align 1, !dbg !985, !tbaa !367
  %cmp2.not = icmp eq i8 %8, 0, !dbg !986
  br i1 %cmp2.not, label %for.end239, label %for.body, !dbg !987, !llvm.loop !1011

if.end21:                                         ; preds = %if.end8
  %call23 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.20, i64 noundef 4) #13, !dbg !1013
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1015
  br i1 %cmp24, label %while.cond27.preheader, label %if.end38, !dbg !1016

while.cond27.preheader:                           ; preds = %if.end21
  %9 = load ptr, ptr %q, align 8, !dbg !1017, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %9, metadata !939, metadata !DIExpression()), !dbg !975
  %call28330 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.21, i64 noundef 2) #13, !dbg !1019
  %cmp29.not331 = icmp eq i32 %call28330, 0, !dbg !1020
  br i1 %cmp29.not331, label %for.cond.backedge, label %land.rhs31, !dbg !1021

land.rhs31:                                       ; preds = %while.cond27.preheader, %while.body36
  %10 = load ptr, ptr %q, align 8, !dbg !1022, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %10, metadata !939, metadata !DIExpression()), !dbg !975
  %11 = load i8, ptr %10, align 1, !dbg !1023, !tbaa !367
  %cmp33.not = icmp eq i8 %11, 0, !dbg !1024
  br i1 %cmp33.not, label %for.cond.backedge, label %while.body36, !dbg !1025

while.body36:                                     ; preds = %land.rhs31
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #13, !dbg !1026
  %12 = load ptr, ptr %q, align 8, !dbg !1017, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %12, metadata !939, metadata !DIExpression()), !dbg !975
  %call28 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.21, i64 noundef 2) #13, !dbg !1019
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !1020
  br i1 %cmp29.not, label %for.cond.backedge, label %land.rhs31, !dbg !1021, !llvm.loop !1027

if.end38:                                         ; preds = %if.end21
  %call40 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.22) #13, !dbg !1029
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1030
  br i1 %cmp41, label %while.cond44thread-pre-split.preheader, label %if.end106, !dbg !1031

while.cond44thread-pre-split.preheader:           ; preds = %if.end38
  br i1 %cmp69, label %while.cond44thread-pre-split.us, label %while.cond44thread-pre-split.outer.split, !dbg !1032

while.cond44thread-pre-split.us:                  ; preds = %while.cond44thread-pre-split.preheader, %while.cond44thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !1033, !tbaa !367
  br label %while.cond44.us, !dbg !1033

while.cond44.us:                                  ; preds = %while.body56.us, %while.cond44thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond44thread-pre-split.us ], [ %18, %while.body56.us ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %status.0335, metadata !940, metadata !DIExpression()), !dbg !975
  %cmp46.not.us = icmp eq i8 %13, 47, !dbg !1034
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !1035

land.lhs.true.us:                                 ; preds = %while.cond44.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !1036, !tbaa !367
  %cmp49.not.us = icmp eq i8 %14, 62, !dbg !1037
  br i1 %cmp49.not.us, label %for.cond.backedge, label %land.rhs51.us, !dbg !1038

land.rhs51.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !1039, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %15, metadata !939, metadata !DIExpression()), !dbg !975
  %16 = load i8, ptr %15, align 1, !dbg !1040, !tbaa !367
  %cmp53.not.us = icmp eq i8 %16, 0, !dbg !1041
  br i1 %cmp53.not.us, label %for.cond.backedge, label %while.body56.us, !dbg !1042

while.body56.us:                                  ; preds = %land.rhs51.us
  %call58.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #13, !dbg !1043
  %17 = load ptr, ptr %q, align 8, !dbg !1044, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1045
  %18 = load i8, ptr %call1, align 1, !dbg !1046, !tbaa !367
  %cmp60.not.us = icmp eq i8 %18, 61, !dbg !1048
  br i1 %cmp60.not.us, label %if.end63.us, label %while.cond44.us, !dbg !1049, !llvm.loop !1050

if.end63.us:                                      ; preds = %while.body56.us
  %19 = load ptr, ptr %q, align 8, !dbg !1052, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1053
  %call65.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.23) #13, !dbg !1054
  %cmp66.us = icmp eq i32 %call65.us, 0, !dbg !1055
  br i1 %cmp66.us, label %if.then71.us, label %while.cond44thread-pre-split.us.backedge, !dbg !1056

if.then71.us:                                     ; preds = %if.end63.us
  %call72.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 823, i32 noundef 495, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.15, ptr noundef nonnull %call1) #13, !dbg !1057
  br label %while.cond44thread-pre-split.us.backedge, !dbg !1058

while.cond44thread-pre-split.us.backedge:         ; preds = %if.then71.us, %if.end63.us
  br label %while.cond44thread-pre-split.us, !dbg !1033, !llvm.loop !1050

while.cond44thread-pre-split.outer.split:         ; preds = %while.cond44thread-pre-split.preheader, %if.end102
  %status.1.ph.ph329 = phi i32 [ %status.2, %if.end102 ], [ %status.0335, %while.cond44thread-pre-split.preheader ]
  br label %while.cond44thread-pre-split, !dbg !1042

while.cond44thread-pre-split:                     ; preds = %if.end63, %while.cond44thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !1033, !tbaa !367
  br label %while.cond44, !dbg !1033

while.cond44:                                     ; preds = %while.cond44thread-pre-split, %while.body56
  %20 = phi i8 [ %.pr, %while.cond44thread-pre-split ], [ %25, %while.body56 ], !dbg !1033
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph329, metadata !940, metadata !DIExpression()), !dbg !975
  %cmp46.not = icmp eq i8 %20, 47, !dbg !1034
  br i1 %cmp46.not, label %for.cond.backedge, label %land.lhs.true, !dbg !1035

land.lhs.true:                                    ; preds = %while.cond44
  %21 = load i8, ptr %add.ptr, align 1, !dbg !1036, !tbaa !367
  %cmp49.not = icmp eq i8 %21, 62, !dbg !1037
  br i1 %cmp49.not, label %for.cond.backedge, label %land.rhs51, !dbg !1038

land.rhs51:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !1039, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %22, metadata !939, metadata !DIExpression()), !dbg !975
  %23 = load i8, ptr %22, align 1, !dbg !1040, !tbaa !367
  %cmp53.not = icmp eq i8 %23, 0, !dbg !1041
  br i1 %cmp53.not, label %for.cond.backedge, label %while.body56, !dbg !1042

while.body56:                                     ; preds = %land.rhs51
  %call58 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #13, !dbg !1043
  %24 = load ptr, ptr %q, align 8, !dbg !1044, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1045
  %25 = load i8, ptr %call1, align 1, !dbg !1046, !tbaa !367
  %cmp60.not = icmp eq i8 %25, 61, !dbg !1048
  br i1 %cmp60.not, label %if.end63, label %while.cond44, !dbg !1049, !llvm.loop !1050

if.end63:                                         ; preds = %while.body56
  %26 = load ptr, ptr %q, align 8, !dbg !1052, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1053
  %call65 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.23) #13, !dbg !1054
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1055
  br i1 %cmp66, label %if.then68, label %while.cond44thread-pre-split, !dbg !1056, !llvm.loop !1050

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #13, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %path, metadata !942, metadata !DIExpression()), !dbg !1060
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #13, !dbg !1061
  %27 = load i8, ptr %path, align 16, !dbg !1062, !tbaa !367
  %cmp77.not = icmp eq i8 %27, 0, !dbg !1064
  br i1 %cmp77.not, label %if.end82, label %if.then79, !dbg !1065

if.then79:                                        ; preds = %if.then68
  %call81 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.25, i64 noundef 4096) #13, !dbg !1066
  br label %if.end82, !dbg !1067

if.end82:                                         ; preds = %if.then79, %if.then68
  %28 = load i8, ptr %call1, align 1, !dbg !1068, !tbaa !367
  %cmp85 = icmp eq i8 %28, 47, !dbg !1070
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !1071

if.then87:                                        ; preds = %if.end82
  %call89 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #13, !dbg !1072
  br label %if.end93, !dbg !1073

if.else90:                                        ; preds = %if.end82
  %call92 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #13, !dbg !1074
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.then87
  %call95 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #13, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %call95, metadata !953, metadata !DIExpression()), !dbg !1076
  %cmp96.not = icmp eq ptr %call95, null, !dbg !1077
  br i1 %cmp96.not, label %if.end102, label %if.then98, !dbg !1079

if.then98:                                        ; preds = %if.end93
  %call100 = call fastcc i32 @LoadMagicCache(ptr noundef %magic_cache, ptr noundef nonnull %call95, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !1080
  %and = and i32 %call100, %status.1.ph.ph329, !dbg !1082
  call void @llvm.dbg.value(metadata i32 %and, metadata !940, metadata !DIExpression()), !dbg !975
  %call101 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call95) #13, !dbg !1083
  call void @llvm.dbg.value(metadata ptr %call101, metadata !953, metadata !DIExpression()), !dbg !1076
  br label %if.end102, !dbg !1084

if.end102:                                        ; preds = %if.then98, %if.end93
  %status.2 = phi i32 [ %and, %if.then98 ], [ %status.1.ph.ph329, %if.end93 ], !dbg !975
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !940, metadata !DIExpression()), !dbg !975
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #13, !dbg !1085
  br label %while.cond44thread-pre-split.outer.split, !dbg !1032, !llvm.loop !1050

if.end106:                                        ; preds = %if.end38
  %call108 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.26) #13, !dbg !1086
  %cmp109 = icmp eq i32 %call108, 0, !dbg !1087
  br i1 %cmp109, label %if.then111, label %if.end126, !dbg !1088

if.then111:                                       ; preds = %if.end106
  %call112 = call ptr @AcquireMagickMemory(i64 noundef 80) #16, !dbg !1089
  call void @llvm.dbg.value(metadata ptr %call112, metadata !941, metadata !DIExpression()), !dbg !975
  %cmp113 = icmp eq ptr %call112, null, !dbg !1090
  br i1 %cmp113, label %if.then115, label %if.end122, !dbg !1091

if.then115:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception116) #13, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %exception116, metadata !959, metadata !DIExpression()), !dbg !1092
  call void @GetExceptionInfo(ptr noundef nonnull %exception116) #13, !dbg !1092
  %call117 = tail call ptr @__errno_location() #14, !dbg !1092
  %29 = load i32, ptr %call117, align 4, !dbg !1092, !tbaa !363
  %call118 = call ptr @GetExceptionMessage(i32 noundef %29) #13, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %call118, metadata !954, metadata !DIExpression()), !dbg !1093
  %call119 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception116, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 858, i32 noundef 700, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %call118) #13, !dbg !1092
  %call120 = call ptr @DestroyString(ptr noundef %call118) #13, !dbg !1092
  call void @llvm.dbg.value(metadata ptr %call120, metadata !954, metadata !DIExpression()), !dbg !1093
  call void @CatchException(ptr noundef nonnull %exception116) #13, !dbg !1092
  %call121 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception116) #13, !dbg !1092
  call void @MagickCoreTerminus() #13, !dbg !1092
  call void @_exit(i32 noundef 1) #15, !dbg !1092
  unreachable, !dbg !1092

if.end122:                                        ; preds = %if.then111
  %call123 = call ptr @ResetMagickMemory(ptr noundef nonnull %call112, i32 noundef 0, i64 noundef 80) #13, !dbg !1094
  %call124 = call ptr @ConstantString(ptr noundef %filename) #13, !dbg !1095
  store ptr %call124, ptr %call112, align 8, !dbg !1096, !tbaa !401
  %exempt = getelementptr inbounds %struct._MagicInfo, ptr %call112, i64 0, i32 6, !dbg !1097
  store i32 0, ptr %exempt, align 8, !dbg !1098, !tbaa !427
  %signature = getelementptr inbounds %struct._MagicInfo, ptr %call112, i64 0, i32 10, !dbg !1099
  store i64 2880220587, ptr %signature, align 8, !dbg !1100, !tbaa !430
  br label %for.cond.backedge, !dbg !1101

if.end126:                                        ; preds = %if.end106
  %cmp127 = icmp eq ptr %magic_info.0336, null, !dbg !1102
  br i1 %cmp127, label %for.cond.backedge, label %if.end130, !dbg !1104

if.end130:                                        ; preds = %if.end126
  %call132 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.27) #13, !dbg !1105
  %cmp133 = icmp eq i32 %call132, 0, !dbg !1107
  br i1 %cmp133, label %if.then135, label %if.end142, !dbg !1108

if.then135:                                       ; preds = %if.end130
  %call136 = call i32 @AppendValueToLinkedList(ptr noundef %magic_cache, ptr noundef nonnull %magic_info.0336) #13, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %call136, metadata !940, metadata !DIExpression()), !dbg !975
  %cmp137 = icmp eq i32 %call136, 0, !dbg !1111
  br i1 %cmp137, label %if.then139, label %for.cond.backedge, !dbg !1113

if.then139:                                       ; preds = %if.then135
  %name = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 1, !dbg !1114
  %30 = load ptr, ptr %name, align 8, !dbg !1114, !tbaa !406
  %call140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 871, i32 noundef 400, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %30) #13, !dbg !1115
  br label %for.cond.backedge, !dbg !1116

if.end142:                                        ; preds = %if.end130
  %31 = load ptr, ptr %q, align 8, !dbg !1117, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %31, metadata !939, metadata !DIExpression()), !dbg !975
  call void @GetMagickToken(ptr noundef %31, ptr noundef null, ptr noundef nonnull %call1) #13, !dbg !1118
  %32 = load i8, ptr %call1, align 1, !dbg !1119, !tbaa !367
  %cmp144.not = icmp eq i8 %32, 61, !dbg !1121
  br i1 %cmp144.not, label %if.end147, label %for.cond.backedge, !dbg !1122

if.end147:                                        ; preds = %if.end142
  %33 = load ptr, ptr %q, align 8, !dbg !1123, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %q, metadata !939, metadata !DIExpression(DW_OP_deref)), !dbg !975
  call void @GetMagickToken(ptr noundef %33, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1124
  %34 = load ptr, ptr %q, align 8, !dbg !1125, !tbaa !314
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #13, !dbg !1126
  %35 = load i8, ptr %keyword, align 16, !dbg !1127, !tbaa !367
  %conv149 = sext i8 %35 to i32, !dbg !1127
  switch i32 %conv149, label %for.cond.backedge [
    i32 78, label %sw.bb
    i32 110, label %sw.bb
    i32 79, label %sw.bb158
    i32 111, label %sw.bb158
    i32 83, label %sw.bb166
    i32 115, label %sw.bb166
    i32 84, label %sw.bb174
    i32 116, label %sw.bb174
  ], !dbg !1128

sw.bb:                                            ; preds = %if.end147, %if.end147
  %call151 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.28) #13, !dbg !1129
  %cmp152 = icmp eq i32 %call151, 0, !dbg !1132
  br i1 %cmp152, label %if.then154, label %for.cond.backedge, !dbg !1133

if.then154:                                       ; preds = %sw.bb
  %call155 = call ptr @ConstantString(ptr noundef nonnull %call1) #13, !dbg !1134
  %name156 = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 1, !dbg !1136
  store ptr %call155, ptr %name156, align 8, !dbg !1137, !tbaa !406
  br label %for.cond.backedge, !dbg !1138

sw.bb158:                                         ; preds = %if.end147, %if.end147
  %call160 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.29) #13, !dbg !1139
  %cmp161 = icmp eq i32 %call160, 0, !dbg !1142
  br i1 %cmp161, label %if.then163, label %for.cond.backedge, !dbg !1143

if.then163:                                       ; preds = %sw.bb158
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1144, metadata !DIExpression()) #13, !dbg !1150
  %call.i = call i64 @strtol(ptr nocapture noundef nonnull %call1, ptr noundef null, i32 noundef 10) #13, !dbg !1153
  %offset = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 5, !dbg !1154
  store i64 %call.i, ptr %offset, align 8, !dbg !1155, !tbaa !411
  br label %for.cond.backedge, !dbg !1156

sw.bb166:                                         ; preds = %if.end147, %if.end147
  %call168 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.30) #13, !dbg !1157
  %cmp169 = icmp eq i32 %call168, 0, !dbg !1160
  br i1 %cmp169, label %if.then171, label %for.cond.backedge, !dbg !1161

if.then171:                                       ; preds = %sw.bb166
  %call172 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #13, !dbg !1162
  %stealth = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 7, !dbg !1164
  store i32 %call172, ptr %stealth, align 4, !dbg !1165, !tbaa !543
  br label %for.cond.backedge, !dbg !1166

sw.bb174:                                         ; preds = %if.end147, %if.end147
  %call176 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.31) #13, !dbg !1167
  %cmp177 = icmp eq i32 %call176, 0, !dbg !1168
  br i1 %cmp177, label %if.then179, label %for.cond.backedge, !dbg !1169

if.then179:                                       ; preds = %sw.bb174
  %call181 = call i64 @strlen(ptr noundef nonnull %call1) #18, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %call181, metadata !966, metadata !DIExpression()), !dbg !1171
  %call182 = call ptr @ConstantString(ptr noundef nonnull %call1) #13, !dbg !1172
  %target = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 2, !dbg !1173
  store ptr %call182, ptr %target, align 8, !dbg !1174, !tbaa !416
  %call183 = call ptr @ConstantString(ptr noundef nonnull %call1) #13, !dbg !1175
  %magic = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 3, !dbg !1176
  store ptr %call183, ptr %magic, align 8, !dbg !1177, !tbaa !419
  call void @llvm.dbg.value(metadata ptr %call183, metadata !965, metadata !DIExpression()), !dbg !1171
  %36 = load ptr, ptr %target, align 8, !dbg !1178, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %36, metadata !960, metadata !DIExpression()), !dbg !1171
  %length206 = getelementptr inbounds %struct._MagicInfo, ptr %magic_info.0336, i64 0, i32 4
  br label %for.cond186, !dbg !1179

for.cond186:                                      ; preds = %for.cond186.backedge, %if.then179
  %p.0 = phi ptr [ %36, %if.then179 ], [ %p.0.be, %for.cond186.backedge ], !dbg !1180
  %q180.0 = phi ptr [ %call183, %if.then179 ], [ %q180.0.be, %for.cond186.backedge ], !dbg !1171
  call void @llvm.dbg.value(metadata ptr %q180.0, metadata !965, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !960, metadata !DIExpression()), !dbg !1171
  %37 = load i8, ptr %p.0, align 1, !dbg !1181, !tbaa !367
  switch i8 %37, label %if.else221 [
    i8 0, label %for.cond.backedge
    i8 92, label %if.then194
  ], !dbg !1182

if.then194:                                       ; preds = %for.cond186
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1183
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !960, metadata !DIExpression()), !dbg !1171
  %call195 = tail call ptr @__ctype_b_loc() #14, !dbg !1184
  %38 = load ptr, ptr %call195, align 8, !dbg !1184, !tbaa !314
  %39 = load i8, ptr %incdec.ptr, align 1, !dbg !1184, !tbaa !367
  %40 = zext i8 %39 to i64
  %arrayidx = getelementptr inbounds i16, ptr %38, i64 %40, !dbg !1184
  %41 = load i16, ptr %arrayidx, align 2, !dbg !1184, !tbaa !779
  %42 = and i16 %41, 2048, !dbg !1184
  %cmp199.not = icmp eq i16 %42, 0, !dbg !1185
  br i1 %cmp199.not, label %if.end207, label %if.then201, !dbg !1186

if.then201:                                       ; preds = %if.then194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %end) #13, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %end, metadata !967, metadata !DIExpression(DW_OP_deref)), !dbg !1188
  %call202 = call i64 @strtol(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %end, i32 noundef 8) #13, !dbg !1189
  %conv203 = trunc i64 %call202 to i8, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %q180.0, metadata !965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1171
  store i8 %conv203, ptr %q180.0, align 1, !dbg !1191, !tbaa !367
  %43 = load ptr, ptr %end, align 8, !dbg !1192, !tbaa !314
  call void @llvm.dbg.value(metadata ptr %43, metadata !967, metadata !DIExpression()), !dbg !1188
  %sub.ptr.lhs.cast = ptrtoint ptr %43 to i64, !dbg !1193
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i64, !dbg !1193
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1193
  %add.ptr205 = getelementptr inbounds i8, ptr %incdec.ptr, i64 %sub.ptr.sub, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %add.ptr205, metadata !960, metadata !DIExpression()), !dbg !1171
  %44 = load i64, ptr %length206, align 8, !dbg !1195, !tbaa !424
  %inc = add i64 %44, 1, !dbg !1195
  store i64 %inc, ptr %length206, align 8, !dbg !1195, !tbaa !424
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %end) #13, !dbg !1196
  br label %for.cond186.backedge

for.cond186.backedge:                             ; preds = %if.then201, %sw.epilog, %if.end231
  %p.0.be = phi ptr [ %add.ptr205, %if.then201 ], [ %incdec.ptr217, %sw.epilog ], [ %incdec.ptr232, %if.end231 ]
  %q180.0.be = getelementptr inbounds i8, ptr %q180.0, i64 1, !dbg !1197
  br label %for.cond186, !dbg !1171, !llvm.loop !1198

if.end207:                                        ; preds = %if.then194
  %conv208 = sext i8 %39 to i32, !dbg !1200
  switch i32 %conv208, label %sw.default [
    i32 98, label %sw.epilog
    i32 102, label %sw.bb210
    i32 110, label %sw.bb211
    i32 114, label %sw.bb212
    i32 116, label %sw.bb213
    i32 118, label %sw.bb214
    i32 97, label %sw.bb215
    i32 63, label %sw.bb216
  ], !dbg !1201

sw.bb210:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1202

sw.bb211:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1204

sw.bb212:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1205

sw.bb213:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1206

sw.bb214:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1207

sw.bb215:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1208

sw.bb216:                                         ; preds = %if.end207
  br label %sw.epilog, !dbg !1209

sw.default:                                       ; preds = %if.end207
  br label %sw.epilog, !dbg !1210

sw.epilog:                                        ; preds = %if.end207, %sw.default, %sw.bb216, %sw.bb215, %sw.bb214, %sw.bb213, %sw.bb212, %sw.bb211, %sw.bb210
  %.sink = phi i8 [ %39, %sw.default ], [ 63, %sw.bb216 ], [ 97, %sw.bb215 ], [ 11, %sw.bb214 ], [ 9, %sw.bb213 ], [ 13, %sw.bb212 ], [ 10, %sw.bb211 ], [ 12, %sw.bb210 ], [ 8, %if.end207 ]
  store i8 %.sink, ptr %q180.0, align 1, !dbg !1211, !tbaa !367
  %incdec.ptr217 = getelementptr inbounds i8, ptr %p.0, i64 2, !dbg !1212
  call void @llvm.dbg.value(metadata ptr %incdec.ptr217, metadata !960, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata ptr %q180.0, metadata !965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1171
  %45 = load i64, ptr %length206, align 8, !dbg !1213, !tbaa !424
  %inc220 = add i64 %45, 1, !dbg !1213
  store i64 %inc220, ptr %length206, align 8, !dbg !1213, !tbaa !424
  br label %for.cond186.backedge, !dbg !1214

if.else221:                                       ; preds = %for.cond186
  %call222 = call i32 @LocaleNCompare(ptr noundef nonnull %p.0, ptr noundef nonnull @.str.32, i64 noundef 5) #13, !dbg !1215
  %cmp223 = icmp eq i32 %call222, 0, !dbg !1217
  br i1 %cmp223, label %if.then225, label %if.end231, !dbg !1218

if.then225:                                       ; preds = %if.else221
  %add.ptr226 = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1219
  %add.ptr227 = getelementptr inbounds i8, ptr %p.0, i64 5, !dbg !1220
  %46 = load i64, ptr %length206, align 8, !dbg !1221, !tbaa !424
  %sub = sub i64 %call181, %46, !dbg !1222
  %call229 = call i64 @CopyMagickString(ptr noundef nonnull %add.ptr226, ptr noundef nonnull %add.ptr227, i64 noundef %sub) #13, !dbg !1223
  br label %if.end231, !dbg !1224

if.end231:                                        ; preds = %if.else221, %if.then225
  %incdec.ptr232 = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %incdec.ptr232, metadata !960, metadata !DIExpression()), !dbg !1171
  %47 = load i8, ptr %p.0, align 1, !dbg !1226, !tbaa !367
  call void @llvm.dbg.value(metadata ptr %q180.0, metadata !965, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1171
  store i8 %47, ptr %q180.0, align 1, !dbg !1227, !tbaa !367
  %48 = load i64, ptr %length206, align 8, !dbg !1228, !tbaa !424
  %inc235 = add i64 %48, 1, !dbg !1228
  store i64 %inc235, ptr %length206, align 8, !dbg !1228, !tbaa !424
  br label %for.cond186.backedge, !dbg !1229

for.end239:                                       ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0335, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !975
  %call240 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #13, !dbg !1230
  call void @llvm.dbg.value(metadata ptr %call240, metadata !938, metadata !DIExpression()), !dbg !975
  br label %cleanup, !dbg !1231

cleanup:                                          ; preds = %entry, %for.end239
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end239 ], [ 0, %entry ], !dbg !975
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #13, !dbg !1232
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #13, !dbg !1232
  ret i32 %retval.0, !dbg !1232
}

declare !dbg !1233 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1236 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

declare !dbg !1239 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1242 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1245 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #3

declare !dbg !1248 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !1249 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1252 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1255 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1259 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1260 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1264 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "magic_semaphore", scope: !2, file: !259, line: 208, type: !234, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !256, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/magic.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "c018a8e4521ba6e6f4555bcce8f31797")
!4 = !{!5, !11, !84, !109, !124}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 28, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!14 = !DIEnumerator(name: "UndefinedException", value: 0)
!15 = !DIEnumerator(name: "WarningException", value: 300)
!16 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!17 = !DIEnumerator(name: "TypeWarning", value: 305)
!18 = !DIEnumerator(name: "OptionWarning", value: 310)
!19 = !DIEnumerator(name: "DelegateWarning", value: 315)
!20 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!21 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!22 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!23 = !DIEnumerator(name: "BlobWarning", value: 335)
!24 = !DIEnumerator(name: "StreamWarning", value: 340)
!25 = !DIEnumerator(name: "CacheWarning", value: 345)
!26 = !DIEnumerator(name: "CoderWarning", value: 350)
!27 = !DIEnumerator(name: "FilterWarning", value: 352)
!28 = !DIEnumerator(name: "ModuleWarning", value: 355)
!29 = !DIEnumerator(name: "DrawWarning", value: 360)
!30 = !DIEnumerator(name: "ImageWarning", value: 365)
!31 = !DIEnumerator(name: "WandWarning", value: 370)
!32 = !DIEnumerator(name: "RandomWarning", value: 375)
!33 = !DIEnumerator(name: "XServerWarning", value: 380)
!34 = !DIEnumerator(name: "MonitorWarning", value: 385)
!35 = !DIEnumerator(name: "RegistryWarning", value: 390)
!36 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!37 = !DIEnumerator(name: "PolicyWarning", value: 399)
!38 = !DIEnumerator(name: "ErrorException", value: 400)
!39 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!40 = !DIEnumerator(name: "TypeError", value: 405)
!41 = !DIEnumerator(name: "OptionError", value: 410)
!42 = !DIEnumerator(name: "DelegateError", value: 415)
!43 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!44 = !DIEnumerator(name: "CorruptImageError", value: 425)
!45 = !DIEnumerator(name: "FileOpenError", value: 430)
!46 = !DIEnumerator(name: "BlobError", value: 435)
!47 = !DIEnumerator(name: "StreamError", value: 440)
!48 = !DIEnumerator(name: "CacheError", value: 445)
!49 = !DIEnumerator(name: "CoderError", value: 450)
!50 = !DIEnumerator(name: "FilterError", value: 452)
!51 = !DIEnumerator(name: "ModuleError", value: 455)
!52 = !DIEnumerator(name: "DrawError", value: 460)
!53 = !DIEnumerator(name: "ImageError", value: 465)
!54 = !DIEnumerator(name: "WandError", value: 470)
!55 = !DIEnumerator(name: "RandomError", value: 475)
!56 = !DIEnumerator(name: "XServerError", value: 480)
!57 = !DIEnumerator(name: "MonitorError", value: 485)
!58 = !DIEnumerator(name: "RegistryError", value: 490)
!59 = !DIEnumerator(name: "ConfigureError", value: 495)
!60 = !DIEnumerator(name: "PolicyError", value: 499)
!61 = !DIEnumerator(name: "FatalErrorException", value: 700)
!62 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!63 = !DIEnumerator(name: "TypeFatalError", value: 705)
!64 = !DIEnumerator(name: "OptionFatalError", value: 710)
!65 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!66 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!67 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!68 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!69 = !DIEnumerator(name: "BlobFatalError", value: 735)
!70 = !DIEnumerator(name: "StreamFatalError", value: 740)
!71 = !DIEnumerator(name: "CacheFatalError", value: 745)
!72 = !DIEnumerator(name: "CoderFatalError", value: 750)
!73 = !DIEnumerator(name: "FilterFatalError", value: 752)
!74 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!75 = !DIEnumerator(name: "DrawFatalError", value: 760)
!76 = !DIEnumerator(name: "ImageFatalError", value: 765)
!77 = !DIEnumerator(name: "WandFatalError", value: 770)
!78 = !DIEnumerator(name: "RandomFatalError", value: 775)
!79 = !DIEnumerator(name: "XServerFatalError", value: 780)
!80 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!81 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!82 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!83 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 34, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!87 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!88 = !DIEnumerator(name: "NoEvents", value: 0)
!89 = !DIEnumerator(name: "TraceEvent", value: 1)
!90 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!91 = !DIEnumerator(name: "BlobEvent", value: 4)
!92 = !DIEnumerator(name: "CacheEvent", value: 8)
!93 = !DIEnumerator(name: "CoderEvent", value: 16)
!94 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!95 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!96 = !DIEnumerator(name: "DrawEvent", value: 128)
!97 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!98 = !DIEnumerator(name: "ImageEvent", value: 512)
!99 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!100 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!101 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!102 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!103 = !DIEnumerator(name: "TransformEvent", value: 16384)
!104 = !DIEnumerator(name: "UserEvent", value: 36864)
!105 = !DIEnumerator(name: "WandEvent", value: 65536)
!106 = !DIEnumerator(name: "X11Event", value: 131072)
!107 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!108 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 46, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DIEnumerator(name: "_ISupper", value: 256)
!113 = !DIEnumerator(name: "_ISlower", value: 512)
!114 = !DIEnumerator(name: "_ISalpha", value: 1024)
!115 = !DIEnumerator(name: "_ISdigit", value: 2048)
!116 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!117 = !DIEnumerator(name: "_ISspace", value: 8192)
!118 = !DIEnumerator(name: "_ISprint", value: 16384)
!119 = !DIEnumerator(name: "_ISgraph", value: 32768)
!120 = !DIEnumerator(name: "_ISblank", value: 1)
!121 = !DIEnumerator(name: "_IScntrl", value: 2)
!122 = !DIEnumerator(name: "_ISpunct", value: 4)
!123 = !DIEnumerator(name: "_ISalnum", value: 8)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 25, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135}
!127 = !DIEnumerator(name: "UndefinedPath", value: 0)
!128 = !DIEnumerator(name: "MagickPath", value: 1)
!129 = !DIEnumerator(name: "RootPath", value: 2)
!130 = !DIEnumerator(name: "HeadPath", value: 3)
!131 = !DIEnumerator(name: "TailPath", value: 4)
!132 = !DIEnumerator(name: "BasePath", value: 5)
!133 = !DIEnumerator(name: "ExtensionPath", value: 6)
!134 = !DIEnumerator(name: "SubimagePath", value: 7)
!135 = !DIEnumerator(name: "CanonicalPath", value: 8)
!136 = !{!137, !165, !166, !152, !154, !168, !169, !170, !144, !171, !229, !231, !201, !179, !150, !203, !7, !234, !238, !242, !149, !255, !156}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagicInfo", file: !140, line: 51, baseType: !141)
!140 = !DIFile(filename: "apps/538.imagick_r/src/magick/magic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d9fc918f002155e81e1a13ea7935e933")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagicInfo", file: !140, line: 25, size: 640, elements: !142)
!142 = !{!143, !146, !147, !148, !151, !155, !158, !160, !161, !163, !164}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !141, file: !140, line: 28, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !140, line: 29, baseType: !144, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !141, file: !140, line: 30, baseType: !144, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !141, file: !140, line: 33, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !141, file: !140, line: 36, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 46, baseType: !154)
!153 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!154 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !141, file: !140, line: 39, baseType: !156, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !157)
!157 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !141, file: !140, line: 42, baseType: !159, size: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !141, file: !140, line: 43, baseType: !159, size: 32, offset: 416)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !141, file: !140, line: 46, baseType: !162, size: 64, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !140, line: 47, baseType: !162, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !141, file: !140, line: 50, baseType: !152, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !174, line: 7, baseType: !175)
!174 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !176, line: 49, size: 1728, elements: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!177 = !{!178, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !194, !196, !197, !198, !202, !204, !206, !210, !213, !215, !218, !221, !222, !223, !224, !225}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !175, file: !176, line: 51, baseType: !179, size: 32)
!179 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !175, file: !176, line: 54, baseType: !144, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !175, file: !176, line: 55, baseType: !144, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !175, file: !176, line: 56, baseType: !144, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !175, file: !176, line: 57, baseType: !144, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !175, file: !176, line: 58, baseType: !144, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !175, file: !176, line: 59, baseType: !144, size: 64, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !175, file: !176, line: 60, baseType: !144, size: 64, offset: 448)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !175, file: !176, line: 61, baseType: !144, size: 64, offset: 512)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !175, file: !176, line: 64, baseType: !144, size: 64, offset: 576)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !175, file: !176, line: 65, baseType: !144, size: 64, offset: 640)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !175, file: !176, line: 66, baseType: !144, size: 64, offset: 704)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !175, file: !176, line: 68, baseType: !192, size: 64, offset: 768)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !176, line: 36, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !175, file: !176, line: 70, baseType: !195, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !175, file: !176, line: 72, baseType: !179, size: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !175, file: !176, line: 73, baseType: !179, size: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !175, file: !176, line: 74, baseType: !199, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !200, line: 152, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!201 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !175, file: !176, line: 77, baseType: !203, size: 16, offset: 1024)
!203 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !175, file: !176, line: 78, baseType: !205, size: 8, offset: 1040)
!205 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !175, file: !176, line: 79, baseType: !207, size: 8, offset: 1048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 8, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !175, file: !176, line: 81, baseType: !211, size: 64, offset: 1088)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !176, line: 43, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !175, file: !176, line: 89, baseType: !214, size: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !200, line: 153, baseType: !201)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !175, file: !176, line: 91, baseType: !216, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !176, line: 37, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !175, file: !176, line: 92, baseType: !219, size: 64, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !176, line: 38, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !175, file: !176, line: 93, baseType: !195, size: 64, offset: 1344)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !175, file: !176, line: 94, baseType: !165, size: 64, offset: 1408)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !175, file: !176, line: 95, baseType: !152, size: 64, offset: 1472)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !175, file: !176, line: 96, baseType: !179, size: 32, offset: 1536)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !175, file: !176, line: 98, baseType: !226, size: 160, offset: 1568)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 160, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 20)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !232, line: 77, baseType: !233)
!232 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !200, line: 193, baseType: !201)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !236, line: 26, baseType: !237)
!236 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !236, line: 25, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !240, line: 34, baseType: !241)
!240 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !240, line: 33, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !245, line: 40, baseType: !246)
!245 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !245, line: 29, size: 32960, elements: !247)
!247 = !{!248, !252, !253, !254}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !246, file: !245, line: 32, baseType: !249, size: 32768)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 32768, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 4096)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !246, file: !245, line: 35, baseType: !149, size: 64, offset: 32768)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !246, file: !245, line: 38, baseType: !152, size: 64, offset: 32832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !246, file: !245, line: 39, baseType: !152, size: 64, offset: 32896)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!256 = !{!0, !257, !260}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "magic_cache", scope: !2, file: !259, line: 205, type: !238, isLocal: true, isDefinition: true)
!259 = !DIFile(filename: "apps/538.imagick_r/src/magick/magic.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c018a8e4521ba6e6f4555bcce8f31797")
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "MagicMap", scope: !2, file: !259, line: 87, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 28928, elements: !273)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagicMapInfo", file: !259, line: 81, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagicMapInfo", file: !259, line: 68, size: 256, elements: !266)
!266 = !{!267, !268, !270, !271}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !259, line: 71, baseType: !229, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !265, file: !259, line: 74, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !265, file: !259, line: 77, baseType: !166, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !265, file: !259, line: 80, baseType: !272, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!273 = !{!274}
!274 = !DISubrange(count: 113)
!275 = !{i32 7, !"Dwarf Version", i32 5}
!276 = !{i32 2, !"Debug Info Version", i32 3}
!277 = !{i32 1, !"wchar_size", i32 4}
!278 = !{i32 7, !"PIC Level", i32 2}
!279 = !{i32 7, !"PIE Level", i32 2}
!280 = !{i32 7, !"uwtable", i32 2}
!281 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!282 = distinct !DISubprogram(name: "GetMagicInfo", scope: !259, file: !259, line: 346, type: !283, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!283 = !DISubroutineType(types: !284)
!284 = !{!137, !166, !272, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !12, line: 102, size: 448, elements: !288)
!288 = !{!289, !291, !292, !293, !294, !295, !296, !297}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !287, file: !12, line: 105, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !12, line: 100, baseType: !11)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !287, file: !12, line: 108, baseType: !179, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !287, file: !12, line: 111, baseType: !144, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !287, file: !12, line: 112, baseType: !144, size: 64, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !287, file: !12, line: 115, baseType: !165, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !287, file: !12, line: 118, baseType: !159, size: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !287, file: !12, line: 121, baseType: !234, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !287, file: !12, line: 124, baseType: !152, size: 64, offset: 384)
!298 = !{!299, !300, !301, !302}
!299 = !DILocalVariable(name: "magic", arg: 1, scope: !282, file: !259, line: 346, type: !166)
!300 = !DILocalVariable(name: "length", arg: 2, scope: !282, file: !259, line: 347, type: !272)
!301 = !DILocalVariable(name: "exception", arg: 3, scope: !282, file: !259, line: 347, type: !285)
!302 = !DILocalVariable(name: "p", scope: !282, file: !259, line: 350, type: !137)
!303 = !DILocation(line: 0, scope: !282)
!304 = !DILocalVariable(name: "exception", arg: 1, scope: !305, file: !259, line: 622, type: !285)
!305 = distinct !DISubprogram(name: "IsMagicCacheInstantiated", scope: !259, file: !259, line: 622, type: !306, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!159, !285}
!308 = !{!304}
!309 = !DILocation(line: 0, scope: !305, inlinedAt: !310)
!310 = distinct !DILocation(line: 353, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !282, file: !259, line: 353, column: 7)
!312 = !DILocation(line: 624, column: 7, scope: !313, inlinedAt: !310)
!313 = distinct !DILexicalBlock(scope: !305, file: !259, line: 624, column: 7)
!314 = !{!315, !315, i64 0}
!315 = !{!"any pointer", !316, i64 0}
!316 = !{!"omnipotent char", !317, i64 0}
!317 = !{!"Simple C/C++ TBAA"}
!318 = !DILocation(line: 624, column: 19, scope: !313, inlinedAt: !310)
!319 = !DILocation(line: 624, column: 7, scope: !305, inlinedAt: !310)
!320 = !DILocation(line: 626, column: 11, scope: !321, inlinedAt: !310)
!321 = distinct !DILexicalBlock(scope: !322, file: !259, line: 626, column: 11)
!322 = distinct !DILexicalBlock(scope: !313, file: !259, line: 625, column: 5)
!323 = !DILocation(line: 626, column: 27, scope: !321, inlinedAt: !310)
!324 = !DILocation(line: 626, column: 11, scope: !322, inlinedAt: !310)
!325 = !DILocation(line: 627, column: 9, scope: !321, inlinedAt: !310)
!326 = !DILocation(line: 628, column: 25, scope: !322, inlinedAt: !310)
!327 = !DILocation(line: 628, column: 7, scope: !322, inlinedAt: !310)
!328 = !DILocation(line: 629, column: 11, scope: !329, inlinedAt: !310)
!329 = distinct !DILexicalBlock(scope: !322, file: !259, line: 629, column: 11)
!330 = !DILocation(line: 629, column: 23, scope: !329, inlinedAt: !310)
!331 = !DILocation(line: 629, column: 11, scope: !322, inlinedAt: !310)
!332 = !DILocalVariable(name: "filename", arg: 1, scope: !333, file: !259, line: 244, type: !229)
!333 = distinct !DISubprogram(name: "AcquireMagicCache", scope: !259, file: !259, line: 244, type: !334, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!238, !229, !285}
!336 = !{!332, !337, !338, !339, !340, !341, !342, !344, !345, !348, !349, !353}
!337 = !DILocalVariable(name: "exception", arg: 2, scope: !333, file: !259, line: 245, type: !285)
!338 = !DILocalVariable(name: "path", scope: !333, file: !259, line: 248, type: !249)
!339 = !DILocalVariable(name: "option", scope: !333, file: !259, line: 251, type: !242)
!340 = !DILocalVariable(name: "magic_cache", scope: !333, file: !259, line: 254, type: !238)
!341 = !DILocalVariable(name: "options", scope: !333, file: !259, line: 255, type: !238)
!342 = !DILocalVariable(name: "status", scope: !333, file: !259, line: 258, type: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!344 = !DILocalVariable(name: "i", scope: !333, file: !259, line: 261, type: !231)
!345 = !DILocalVariable(name: "message", scope: !346, file: !259, line: 265, type: !144)
!346 = distinct !DILexicalBlock(scope: !347, file: !259, line: 265, column: 5)
!347 = distinct !DILexicalBlock(scope: !333, file: !259, line: 264, column: 7)
!348 = !DILocalVariable(name: "exception", scope: !346, file: !259, line: 265, type: !286)
!349 = !DILocalVariable(name: "magic_info", scope: !350, file: !259, line: 286, type: !169)
!350 = distinct !DILexicalBlock(scope: !351, file: !259, line: 284, column: 3)
!351 = distinct !DILexicalBlock(scope: !352, file: !259, line: 283, column: 3)
!352 = distinct !DILexicalBlock(scope: !333, file: !259, line: 283, column: 3)
!353 = !DILocalVariable(name: "p", scope: !350, file: !259, line: 289, type: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!355 = !DILocation(line: 0, scope: !333, inlinedAt: !356)
!356 = distinct !DILocation(line: 630, column: 21, scope: !329, inlinedAt: !310)
!357 = !DILocation(line: 247, column: 3, scope: !333, inlinedAt: !356)
!358 = !DILocation(line: 248, column: 5, scope: !333, inlinedAt: !356)
!359 = !DILocation(line: 263, column: 15, scope: !333, inlinedAt: !356)
!360 = !DILocation(line: 264, column: 19, scope: !347, inlinedAt: !356)
!361 = !DILocation(line: 264, column: 7, scope: !333, inlinedAt: !356)
!362 = !DILocation(line: 265, column: 5, scope: !346, inlinedAt: !356)
!363 = !{!364, !364, i64 0}
!364 = !{!"int", !316, i64 0}
!365 = !DILocation(line: 0, scope: !346, inlinedAt: !356)
!366 = !DILocation(line: 270, column: 8, scope: !333, inlinedAt: !356)
!367 = !{!316, !316, i64 0}
!368 = !DILocation(line: 271, column: 11, scope: !333, inlinedAt: !356)
!369 = !DILocation(line: 272, column: 31, scope: !333, inlinedAt: !356)
!370 = !DILocation(line: 273, column: 17, scope: !333, inlinedAt: !356)
!371 = !DILocation(line: 273, column: 3, scope: !333, inlinedAt: !356)
!372 = !DILocation(line: 275, column: 34, scope: !373, inlinedAt: !356)
!373 = distinct !DILexicalBlock(scope: !333, file: !259, line: 274, column: 3)
!374 = !DILocation(line: 275, column: 12, scope: !373, inlinedAt: !356)
!375 = !DILocation(line: 277, column: 7, scope: !373, inlinedAt: !356)
!376 = !DILocation(line: 277, column: 34, scope: !373, inlinedAt: !356)
!377 = !DILocation(line: 276, column: 13, scope: !373, inlinedAt: !356)
!378 = !DILocation(line: 276, column: 11, scope: !373, inlinedAt: !356)
!379 = !DILocation(line: 278, column: 33, scope: !373, inlinedAt: !356)
!380 = distinct !{!380, !371, !381, !382, !383}
!381 = !DILocation(line: 279, column: 3, scope: !333, inlinedAt: !356)
!382 = !{!"llvm.loop.mustprogress"}
!383 = !{!"llvm.loop.unroll.disable"}
!384 = !DILocation(line: 283, column: 3, scope: !352, inlinedAt: !356)
!385 = !DILocation(line: 291, column: 15, scope: !350, inlinedAt: !356)
!386 = !DILocation(line: 0, scope: !350, inlinedAt: !356)
!387 = !DILocation(line: 292, column: 30, scope: !350, inlinedAt: !356)
!388 = !DILocation(line: 293, column: 20, scope: !389, inlinedAt: !356)
!389 = distinct !DILexicalBlock(scope: !350, file: !259, line: 293, column: 9)
!390 = !DILocation(line: 293, column: 9, scope: !350, inlinedAt: !356)
!391 = !DILocation(line: 296, column: 65, scope: !392, inlinedAt: !356)
!392 = distinct !DILexicalBlock(scope: !389, file: !259, line: 294, column: 7)
!393 = !{!394, !315, i64 0}
!394 = !{!"_MagicMapInfo", !315, i64 0, !395, i64 8, !315, i64 16, !396, i64 24}
!395 = !{!"long long", !316, i64 0}
!396 = !{!"long", !316, i64 0}
!397 = !DILocation(line: 295, column: 16, scope: !392, inlinedAt: !356)
!398 = !DILocation(line: 297, column: 9, scope: !392, inlinedAt: !356)
!399 = !DILocation(line: 299, column: 12, scope: !350, inlinedAt: !356)
!400 = !DILocation(line: 300, column: 21, scope: !350, inlinedAt: !356)
!401 = !{!402, !315, i64 0}
!402 = !{!"_MagicInfo", !315, i64 0, !315, i64 8, !315, i64 16, !315, i64 24, !396, i64 32, !395, i64 40, !316, i64 48, !316, i64 52, !315, i64 56, !315, i64 64, !396, i64 72}
!403 = !DILocation(line: 301, column: 34, scope: !350, inlinedAt: !356)
!404 = !DILocation(line: 301, column: 17, scope: !350, inlinedAt: !356)
!405 = !DILocation(line: 301, column: 21, scope: !350, inlinedAt: !356)
!406 = !{!402, !315, i64 8}
!407 = !DILocation(line: 302, column: 27, scope: !350, inlinedAt: !356)
!408 = !{!394, !395, i64 8}
!409 = !DILocation(line: 302, column: 17, scope: !350, inlinedAt: !356)
!410 = !DILocation(line: 302, column: 23, scope: !350, inlinedAt: !356)
!411 = !{!402, !395, i64 40}
!412 = !DILocation(line: 303, column: 36, scope: !350, inlinedAt: !356)
!413 = !{!394, !315, i64 16}
!414 = !DILocation(line: 303, column: 17, scope: !350, inlinedAt: !356)
!415 = !DILocation(line: 303, column: 23, scope: !350, inlinedAt: !356)
!416 = !{!402, !315, i64 16}
!417 = !DILocation(line: 304, column: 17, scope: !350, inlinedAt: !356)
!418 = !DILocation(line: 304, column: 22, scope: !350, inlinedAt: !356)
!419 = !{!402, !315, i64 24}
!420 = !DILocation(line: 305, column: 27, scope: !350, inlinedAt: !356)
!421 = !{!394, !396, i64 24}
!422 = !DILocation(line: 305, column: 17, scope: !350, inlinedAt: !356)
!423 = !DILocation(line: 305, column: 23, scope: !350, inlinedAt: !356)
!424 = !{!402, !396, i64 32}
!425 = !DILocation(line: 306, column: 17, scope: !350, inlinedAt: !356)
!426 = !DILocation(line: 306, column: 23, scope: !350, inlinedAt: !356)
!427 = !{!402, !316, i64 48}
!428 = !DILocation(line: 307, column: 17, scope: !350, inlinedAt: !356)
!429 = !DILocation(line: 307, column: 26, scope: !350, inlinedAt: !356)
!430 = !{!402, !396, i64 72}
!431 = !DILocation(line: 308, column: 13, scope: !350, inlinedAt: !356)
!432 = !DILocation(line: 308, column: 11, scope: !350, inlinedAt: !356)
!433 = !DILocation(line: 309, column: 16, scope: !434, inlinedAt: !356)
!434 = distinct !DILexicalBlock(scope: !350, file: !259, line: 309, column: 9)
!435 = !DILocation(line: 309, column: 9, scope: !350, inlinedAt: !356)
!436 = !DILocation(line: 311, column: 72, scope: !434, inlinedAt: !356)
!437 = !DILocation(line: 310, column: 14, scope: !434, inlinedAt: !356)
!438 = !DILocation(line: 310, column: 7, scope: !434, inlinedAt: !356)
!439 = !DILocation(line: 283, column: 66, scope: !351, inlinedAt: !356)
!440 = !DILocation(line: 283, column: 15, scope: !351, inlinedAt: !356)
!441 = distinct !{!441, !384, !442, !382, !383}
!442 = !DILocation(line: 312, column: 3, scope: !352, inlinedAt: !356)
!443 = !DILocation(line: 313, column: 11, scope: !333, inlinedAt: !356)
!444 = !DILocation(line: 315, column: 1, scope: !333, inlinedAt: !356)
!445 = !DILocation(line: 630, column: 20, scope: !329, inlinedAt: !310)
!446 = !DILocation(line: 630, column: 9, scope: !329, inlinedAt: !310)
!447 = !DILocation(line: 631, column: 27, scope: !322, inlinedAt: !310)
!448 = !DILocation(line: 631, column: 7, scope: !322, inlinedAt: !310)
!449 = !DILocation(line: 633, column: 10, scope: !305, inlinedAt: !310)
!450 = !DILocation(line: 633, column: 22, scope: !305, inlinedAt: !310)
!451 = !DILocation(line: 353, column: 7, scope: !282)
!452 = !DILocation(line: 358, column: 21, scope: !282)
!453 = !DILocation(line: 358, column: 3, scope: !282)
!454 = !DILocation(line: 359, column: 27, scope: !282)
!455 = !DILocation(line: 359, column: 3, scope: !282)
!456 = !DILocation(line: 360, column: 50, scope: !282)
!457 = !DILocation(line: 360, column: 25, scope: !282)
!458 = !DILocation(line: 361, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !282, file: !259, line: 361, column: 7)
!460 = !DILocation(line: 361, column: 7, scope: !282)
!461 = !DILocation(line: 366, column: 12, scope: !282)
!462 = !DILocation(line: 366, column: 3, scope: !282)
!463 = !DILocation(line: 369, column: 23, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !259, line: 369, column: 9)
!465 = distinct !DILexicalBlock(scope: !282, file: !259, line: 367, column: 3)
!466 = !DILocation(line: 369, column: 33, scope: !464)
!467 = !DILocation(line: 369, column: 29, scope: !464)
!468 = !DILocation(line: 369, column: 41, scope: !464)
!469 = !DILocation(line: 369, column: 52, scope: !464)
!470 = !DILocation(line: 370, column: 22, scope: !464)
!471 = !DILocation(line: 370, column: 36, scope: !464)
!472 = !DILocation(line: 370, column: 10, scope: !464)
!473 = !DILocation(line: 370, column: 53, scope: !464)
!474 = !DILocation(line: 369, column: 9, scope: !465)
!475 = !DILocation(line: 372, column: 52, scope: !465)
!476 = !DILocation(line: 372, column: 27, scope: !465)
!477 = distinct !{!477, !462, !478, !382, !383}
!478 = !DILocation(line: 373, column: 3, scope: !282)
!479 = !DILocation(line: 375, column: 36, scope: !480)
!480 = distinct !DILexicalBlock(scope: !282, file: !259, line: 374, column: 7)
!481 = !DILocation(line: 376, column: 7, scope: !480)
!482 = !DILocation(line: 375, column: 12, scope: !480)
!483 = !DILocation(line: 375, column: 5, scope: !480)
!484 = !DILocation(line: 379, column: 1, scope: !282)
!485 = !DISubprogram(name: "LockSemaphoreInfo", scope: !236, file: !236, line: 37, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !234}
!488 = !{}
!489 = !DISubprogram(name: "ResetLinkedListIterator", scope: !240, file: !240, line: 77, type: !490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !238}
!492 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !240, file: !240, line: 69, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!493 = !DISubroutineType(types: !494)
!494 = !{!165, !238}
!495 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !236, file: !236, line: 39, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!496 = !DISubprogram(name: "InsertValueInLinkedList", scope: !240, file: !240, line: 49, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!497 = !DISubroutineType(types: !498)
!498 = !{!159, !238, !272, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!501 = !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !240, file: !240, line: 72, type: !502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!502 = !DISubroutineType(types: !503)
!503 = !{!165, !238, !499}
!504 = distinct !DISubprogram(name: "GetMagicInfoList", scope: !259, file: !259, line: 431, type: !505, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !508)
!505 = !DISubroutineType(types: !506)
!506 = !{!168, !229, !507, !285}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!508 = !{!509, !510, !511, !512, !513, !514}
!509 = !DILocalVariable(name: "pattern", arg: 1, scope: !504, file: !259, line: 431, type: !229)
!510 = !DILocalVariable(name: "number_aliases", arg: 2, scope: !504, file: !259, line: 432, type: !507)
!511 = !DILocalVariable(name: "exception", arg: 3, scope: !504, file: !259, line: 432, type: !285)
!512 = !DILocalVariable(name: "aliases", scope: !504, file: !259, line: 435, type: !168)
!513 = !DILocalVariable(name: "p", scope: !504, file: !259, line: 438, type: !137)
!514 = !DILocalVariable(name: "i", scope: !504, file: !259, line: 441, type: !231)
!515 = !DILocation(line: 0, scope: !504)
!516 = !DILocation(line: 447, column: 10, scope: !504)
!517 = !DILocation(line: 449, column: 18, scope: !504)
!518 = !{!396, !396, i64 0}
!519 = !DILocation(line: 450, column: 5, scope: !504)
!520 = !DILocation(line: 451, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !504, file: !259, line: 451, column: 7)
!522 = !DILocation(line: 451, column: 7, scope: !504)
!523 = !DILocation(line: 454, column: 37, scope: !504)
!524 = !DILocation(line: 454, column: 5, scope: !504)
!525 = !DILocation(line: 454, column: 49, scope: !504)
!526 = !DILocation(line: 453, column: 32, scope: !504)
!527 = !DILocation(line: 455, column: 15, scope: !528)
!528 = distinct !DILexicalBlock(scope: !504, file: !259, line: 455, column: 7)
!529 = !DILocation(line: 455, column: 7, scope: !504)
!530 = !DILocation(line: 460, column: 21, scope: !504)
!531 = !DILocation(line: 460, column: 3, scope: !504)
!532 = !DILocation(line: 461, column: 27, scope: !504)
!533 = !DILocation(line: 461, column: 3, scope: !504)
!534 = !DILocation(line: 462, column: 50, scope: !504)
!535 = !DILocation(line: 462, column: 25, scope: !504)
!536 = !DILocation(line: 463, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !259, line: 463, column: 3)
!538 = distinct !DILexicalBlock(scope: !504, file: !259, line: 463, column: 3)
!539 = !DILocation(line: 463, column: 3, scope: !538)
!540 = !DILocation(line: 465, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !259, line: 465, column: 9)
!542 = distinct !DILexicalBlock(scope: !537, file: !259, line: 464, column: 3)
!543 = !{!402, !316, i64 52}
!544 = !DILocation(line: 465, column: 21, scope: !541)
!545 = !DILocation(line: 465, column: 37, scope: !541)
!546 = !DILocation(line: 466, column: 28, scope: !541)
!547 = !DILocation(line: 466, column: 10, scope: !541)
!548 = !DILocation(line: 466, column: 54, scope: !541)
!549 = !DILocation(line: 465, column: 9, scope: !542)
!550 = !DILocation(line: 467, column: 16, scope: !541)
!551 = !DILocation(line: 467, column: 7, scope: !541)
!552 = !DILocation(line: 467, column: 19, scope: !541)
!553 = !DILocation(line: 0, scope: !538)
!554 = !DILocation(line: 468, column: 52, scope: !542)
!555 = !DILocation(line: 468, column: 27, scope: !542)
!556 = distinct !{!556, !539, !557, !382, !383}
!557 = !DILocation(line: 469, column: 3, scope: !538)
!558 = !DILocation(line: 470, column: 23, scope: !504)
!559 = !DILocation(line: 470, column: 3, scope: !504)
!560 = !DILocation(line: 471, column: 3, scope: !504)
!561 = !DILocation(line: 472, column: 3, scope: !504)
!562 = !DILocation(line: 472, column: 13, scope: !504)
!563 = !DILocation(line: 473, column: 18, scope: !504)
!564 = !DILocation(line: 474, column: 3, scope: !504)
!565 = !DILocation(line: 475, column: 1, scope: !504)
!566 = !DISubprogram(name: "LogMagickEvent", scope: !85, file: !85, line: 83, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!567 = !DISubroutineType(types: !568)
!568 = !{!159, !569, !229, !229, !272, !229, null}
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !85, line: 58, baseType: !84)
!571 = !DISubprogram(name: "AcquireQuantumMemory", scope: !572, file: !572, line: 42, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!572 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!573 = !DISubroutineType(types: !574)
!574 = !{!165, !272, !272}
!575 = !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !240, file: !240, line: 58, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!576 = !DISubroutineType(types: !577)
!577 = !{!152, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!580 = !DISubprogram(name: "GlobExpression", scope: !581, file: !581, line: 36, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!581 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!582 = !DISubroutineType(types: !583)
!583 = !{!159, !229, !229, !584}
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!585 = !DISubprogram(name: "qsort", scope: !586, file: !586, line: 830, type: !587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!586 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!587 = !DISubroutineType(types: !588)
!588 = !{null, !165, !152, !152, !589}
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !586, line: 808, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!179, !499, !499}
!593 = distinct !DISubprogram(name: "MagicInfoCompare", scope: !259, file: !259, line: 414, type: !591, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !594)
!594 = !{!595, !596, !597, !598}
!595 = !DILocalVariable(name: "x", arg: 1, scope: !593, file: !259, line: 414, type: !499)
!596 = !DILocalVariable(name: "y", arg: 2, scope: !593, file: !259, line: 414, type: !499)
!597 = !DILocalVariable(name: "p", scope: !593, file: !259, line: 417, type: !168)
!598 = !DILocalVariable(name: "q", scope: !593, file: !259, line: 418, type: !168)
!599 = !DILocation(line: 0, scope: !593)
!600 = !DILocation(line: 422, column: 22, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !259, line: 422, column: 7)
!602 = !DILocation(line: 422, column: 27, scope: !601)
!603 = !DILocation(line: 422, column: 33, scope: !601)
!604 = !DILocation(line: 422, column: 38, scope: !601)
!605 = !DILocation(line: 422, column: 7, scope: !601)
!606 = !DILocation(line: 422, column: 44, scope: !601)
!607 = !DILocation(line: 422, column: 7, scope: !593)
!608 = !DILocation(line: 423, column: 32, scope: !601)
!609 = !DILocation(line: 423, column: 38, scope: !601)
!610 = !DILocation(line: 423, column: 43, scope: !601)
!611 = !DILocation(line: 423, column: 5, scope: !601)
!612 = !DILocation(line: 424, column: 36, scope: !593)
!613 = !DILocation(line: 424, column: 3, scope: !593)
!614 = !DILocation(line: 425, column: 1, scope: !593)
!615 = distinct !DISubprogram(name: "GetMagicList", scope: !259, file: !259, line: 526, type: !616, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!170, !229, !507, !285}
!618 = !{!619, !620, !621, !622, !623, !624}
!619 = !DILocalVariable(name: "pattern", arg: 1, scope: !615, file: !259, line: 526, type: !229)
!620 = !DILocalVariable(name: "number_aliases", arg: 2, scope: !615, file: !259, line: 526, type: !507)
!621 = !DILocalVariable(name: "exception", arg: 3, scope: !615, file: !259, line: 527, type: !285)
!622 = !DILocalVariable(name: "aliases", scope: !615, file: !259, line: 530, type: !170)
!623 = !DILocalVariable(name: "p", scope: !615, file: !259, line: 533, type: !137)
!624 = !DILocalVariable(name: "i", scope: !615, file: !259, line: 536, type: !231)
!625 = !DILocation(line: 0, scope: !615)
!626 = !DILocation(line: 542, column: 10, scope: !615)
!627 = !DILocation(line: 544, column: 18, scope: !615)
!628 = !DILocation(line: 545, column: 5, scope: !615)
!629 = !DILocation(line: 546, column: 9, scope: !630)
!630 = distinct !DILexicalBlock(scope: !615, file: !259, line: 546, column: 7)
!631 = !DILocation(line: 546, column: 7, scope: !615)
!632 = !DILocation(line: 549, column: 37, scope: !615)
!633 = !DILocation(line: 549, column: 5, scope: !615)
!634 = !DILocation(line: 549, column: 49, scope: !615)
!635 = !DILocation(line: 548, column: 21, scope: !615)
!636 = !DILocation(line: 550, column: 15, scope: !637)
!637 = distinct !DILexicalBlock(scope: !615, file: !259, line: 550, column: 7)
!638 = !DILocation(line: 550, column: 7, scope: !615)
!639 = !DILocation(line: 552, column: 21, scope: !615)
!640 = !DILocation(line: 552, column: 3, scope: !615)
!641 = !DILocation(line: 553, column: 27, scope: !615)
!642 = !DILocation(line: 553, column: 3, scope: !615)
!643 = !DILocation(line: 554, column: 50, scope: !615)
!644 = !DILocation(line: 554, column: 25, scope: !615)
!645 = !DILocation(line: 555, column: 15, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !259, line: 555, column: 3)
!647 = distinct !DILexicalBlock(scope: !615, file: !259, line: 555, column: 3)
!648 = !DILocation(line: 555, column: 3, scope: !647)
!649 = !DILocation(line: 557, column: 13, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !259, line: 557, column: 9)
!651 = distinct !DILexicalBlock(scope: !646, file: !259, line: 556, column: 3)
!652 = !DILocation(line: 557, column: 21, scope: !650)
!653 = !DILocation(line: 557, column: 37, scope: !650)
!654 = !DILocation(line: 558, column: 28, scope: !650)
!655 = !DILocation(line: 558, column: 10, scope: !650)
!656 = !DILocation(line: 558, column: 54, scope: !650)
!657 = !DILocation(line: 557, column: 9, scope: !651)
!658 = !DILocation(line: 559, column: 38, scope: !650)
!659 = !DILocation(line: 559, column: 20, scope: !650)
!660 = !DILocation(line: 559, column: 16, scope: !650)
!661 = !DILocation(line: 559, column: 7, scope: !650)
!662 = !DILocation(line: 559, column: 19, scope: !650)
!663 = !DILocation(line: 0, scope: !647)
!664 = !DILocation(line: 560, column: 52, scope: !651)
!665 = !DILocation(line: 560, column: 27, scope: !651)
!666 = distinct !{!666, !648, !667, !382, !383}
!667 = !DILocation(line: 561, column: 3, scope: !647)
!668 = !DILocation(line: 562, column: 23, scope: !615)
!669 = !DILocation(line: 562, column: 3, scope: !615)
!670 = !DILocation(line: 563, column: 3, scope: !615)
!671 = !DILocation(line: 564, column: 3, scope: !615)
!672 = !DILocation(line: 564, column: 13, scope: !615)
!673 = !DILocation(line: 565, column: 18, scope: !615)
!674 = !DILocation(line: 566, column: 3, scope: !615)
!675 = !DILocation(line: 567, column: 1, scope: !615)
!676 = !DISubprogram(name: "ConstantString", scope: !245, file: !245, line: 45, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!677 = !DISubroutineType(types: !678)
!678 = !{!144, !229}
!679 = distinct !DISubprogram(name: "MagicCompare", scope: !259, file: !259, line: 511, type: !591, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "x", arg: 1, scope: !679, file: !259, line: 511, type: !499)
!682 = !DILocalVariable(name: "y", arg: 2, scope: !679, file: !259, line: 511, type: !499)
!683 = !DILocalVariable(name: "p", scope: !679, file: !259, line: 514, type: !229)
!684 = !DILocalVariable(name: "q", scope: !679, file: !259, line: 515, type: !229)
!685 = !DILocation(line: 0, scope: !679)
!686 = !DILocation(line: 519, column: 10, scope: !679)
!687 = !DILocation(line: 519, column: 3, scope: !679)
!688 = distinct !DISubprogram(name: "GetMagicName", scope: !259, file: !259, line: 591, type: !689, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!229, !137}
!691 = !{!692}
!692 = !DILocalVariable(name: "magic_info", arg: 1, scope: !688, file: !259, line: 591, type: !137)
!693 = !DILocation(line: 0, scope: !688)
!694 = !DILocation(line: 593, column: 10, scope: !688)
!695 = !DILocation(line: 596, column: 22, scope: !688)
!696 = !DILocation(line: 596, column: 3, scope: !688)
!697 = distinct !DISubprogram(name: "ListMagicInfo", scope: !259, file: !259, line: 660, type: !698, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!698 = !DISubroutineType(types: !699)
!699 = !{!159, !700, !285}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709}
!702 = !DILocalVariable(name: "file", arg: 1, scope: !697, file: !259, line: 660, type: !700)
!703 = !DILocalVariable(name: "exception", arg: 2, scope: !697, file: !259, line: 661, type: !285)
!704 = !DILocalVariable(name: "path", scope: !697, file: !259, line: 664, type: !229)
!705 = !DILocalVariable(name: "magic_info", scope: !697, file: !259, line: 667, type: !168)
!706 = !DILocalVariable(name: "i", scope: !697, file: !259, line: 670, type: !231)
!707 = !DILocalVariable(name: "number_aliases", scope: !697, file: !259, line: 673, type: !152)
!708 = !DILocalVariable(name: "j", scope: !697, file: !259, line: 676, type: !231)
!709 = !DILocalVariable(name: "j", scope: !710, file: !259, line: 707, type: !231)
!710 = distinct !DILexicalBlock(scope: !711, file: !259, line: 705, column: 7)
!711 = distinct !DILexicalBlock(scope: !712, file: !259, line: 704, column: 9)
!712 = distinct !DILexicalBlock(scope: !713, file: !259, line: 686, column: 3)
!713 = distinct !DILexicalBlock(scope: !714, file: !259, line: 685, column: 3)
!714 = distinct !DILexicalBlock(scope: !697, file: !259, line: 685, column: 3)
!715 = !DILocation(line: 0, scope: !697)
!716 = !DILocation(line: 672, column: 3, scope: !697)
!717 = !DILocation(line: 678, column: 12, scope: !718)
!718 = distinct !DILexicalBlock(scope: !697, file: !259, line: 678, column: 7)
!719 = !DILocation(line: 678, column: 7, scope: !697)
!720 = !DILocation(line: 680, column: 14, scope: !697)
!721 = !DILocation(line: 681, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !697, file: !259, line: 681, column: 7)
!723 = !DILocation(line: 681, column: 7, scope: !697)
!724 = !DILocation(line: 685, column: 15, scope: !713)
!725 = !DILocation(line: 685, column: 3, scope: !714)
!726 = !DILocation(line: 687, column: 9, scope: !727)
!727 = distinct !DILexicalBlock(scope: !712, file: !259, line: 687, column: 9)
!728 = !DILocation(line: 687, column: 24, scope: !727)
!729 = !DILocation(line: 687, column: 32, scope: !727)
!730 = !DILocation(line: 687, column: 9, scope: !712)
!731 = !DILocation(line: 689, column: 15, scope: !732)
!732 = distinct !DILexicalBlock(scope: !712, file: !259, line: 689, column: 9)
!733 = !DILocation(line: 689, column: 39, scope: !732)
!734 = !DILocation(line: 690, column: 44, scope: !732)
!735 = !DILocation(line: 690, column: 10, scope: !732)
!736 = !DILocation(line: 690, column: 50, scope: !732)
!737 = !DILocation(line: 689, column: 9, scope: !712)
!738 = !DILocation(line: 692, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !259, line: 692, column: 13)
!740 = distinct !DILexicalBlock(scope: !732, file: !259, line: 691, column: 7)
!741 = !DILocation(line: 692, column: 28, scope: !739)
!742 = !DILocation(line: 692, column: 33, scope: !739)
!743 = !DILocation(line: 692, column: 13, scope: !740)
!744 = !DILocation(line: 693, column: 18, scope: !739)
!745 = !DILocation(line: 693, column: 11, scope: !739)
!746 = !DILocation(line: 694, column: 16, scope: !740)
!747 = !DILocation(line: 695, column: 16, scope: !740)
!748 = !DILocation(line: 698, column: 7, scope: !740)
!749 = !DILocation(line: 699, column: 10, scope: !712)
!750 = !DILocation(line: 699, column: 25, scope: !712)
!751 = !DILocation(line: 700, column: 54, scope: !712)
!752 = !DILocation(line: 700, column: 12, scope: !712)
!753 = !DILocation(line: 701, column: 29, scope: !754)
!754 = distinct !DILexicalBlock(scope: !712, file: !259, line: 701, column: 5)
!755 = !DILocation(line: 701, column: 44, scope: !754)
!756 = !DILocation(line: 701, column: 22, scope: !754)
!757 = !DILocation(line: 701, column: 53, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !259, line: 701, column: 5)
!759 = !DILocation(line: 701, column: 5, scope: !754)
!760 = !DILocation(line: 702, column: 14, scope: !758)
!761 = !DILocation(line: 701, column: 60, scope: !758)
!762 = distinct !{!762, !759, !763, !382, !383}
!763 = !DILocation(line: 702, column: 39, scope: !754)
!764 = !DILocation(line: 703, column: 49, scope: !712)
!765 = !DILocation(line: 703, column: 64, scope: !712)
!766 = !DILocation(line: 703, column: 12, scope: !712)
!767 = !DILocation(line: 704, column: 9, scope: !711)
!768 = !DILocation(line: 704, column: 24, scope: !711)
!769 = !DILocation(line: 704, column: 31, scope: !711)
!770 = !DILocation(line: 704, column: 9, scope: !712)
!771 = !DILocation(line: 0, scope: !710)
!772 = !DILocation(line: 709, column: 19, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !259, line: 709, column: 9)
!774 = distinct !DILexicalBlock(scope: !710, file: !259, line: 709, column: 9)
!775 = !DILocation(line: 709, column: 44, scope: !773)
!776 = !DILocation(line: 709, column: 9, scope: !774)
!777 = !DILocation(line: 710, column: 15, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !259, line: 710, column: 15)
!779 = !{!780, !780, i64 0}
!780 = !{!"short", !316, i64 0}
!781 = !DILocation(line: 710, column: 73, scope: !778)
!782 = !DILocation(line: 710, column: 15, scope: !773)
!783 = !DILocation(line: 711, column: 20, scope: !778)
!784 = !DILocation(line: 711, column: 13, scope: !778)
!785 = !DILocation(line: 713, column: 20, scope: !778)
!786 = !DILocation(line: 709, column: 54, scope: !773)
!787 = !DILocation(line: 709, column: 34, scope: !773)
!788 = distinct !{!788, !776, !789, !382, !383}
!789 = !DILocation(line: 714, column: 57, scope: !774)
!790 = !DILocation(line: 716, column: 12, scope: !712)
!791 = !DILocation(line: 717, column: 3, scope: !712)
!792 = !DILocation(line: 685, column: 44, scope: !713)
!793 = distinct !{!793, !725, !794, !382, !383}
!794 = !DILocation(line: 717, column: 3, scope: !714)
!795 = !DILocation(line: 718, column: 10, scope: !697)
!796 = !DILocation(line: 719, column: 35, scope: !697)
!797 = !DILocation(line: 720, column: 3, scope: !697)
!798 = !DILocation(line: 721, column: 1, scope: !697)
!799 = !DISubprogram(name: "LocaleCompare", scope: !245, file: !245, line: 66, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!800 = !DISubroutineType(types: !801)
!801 = !{!179, !229, !229}
!802 = !DISubprogram(name: "FormatLocaleFile", scope: !803, file: !803, line: 67, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!803 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!804 = !DISubroutineType(types: !805)
!805 = !{!231, !700, !806, null}
!806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!807 = !DISubprogram(name: "fflush", scope: !232, file: !232, line: 218, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!808 = !DISubroutineType(types: !809)
!809 = !{!179, !700}
!810 = !DISubprogram(name: "RelinquishMagickMemory", scope: !572, file: !572, line: 51, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!811 = !DISubroutineType(types: !812)
!812 = !{!165, !165}
!813 = distinct !DISubprogram(name: "MagicComponentGenesis", scope: !259, file: !259, line: 1000, type: !814, scopeLine: 1001, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!814 = !DISubroutineType(types: !815)
!815 = !{!159}
!816 = !DILocation(line: 1002, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !259, line: 1002, column: 7)
!818 = !DILocation(line: 1002, column: 23, scope: !817)
!819 = !DILocation(line: 1002, column: 7, scope: !813)
!820 = !DILocation(line: 1003, column: 21, scope: !817)
!821 = !DILocation(line: 1003, column: 20, scope: !817)
!822 = !DILocation(line: 1003, column: 5, scope: !817)
!823 = !DILocation(line: 1004, column: 3, scope: !813)
!824 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !236, file: !236, line: 32, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!825 = !DISubroutineType(types: !826)
!826 = !{!234}
!827 = distinct !DISubprogram(name: "MagicComponentTerminus", scope: !259, file: !259, line: 1047, type: !828, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!828 = !DISubroutineType(types: !829)
!829 = !{null}
!830 = !DILocation(line: 1049, column: 7, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !259, line: 1049, column: 7)
!832 = !DILocation(line: 1049, column: 23, scope: !831)
!833 = !DILocation(line: 1049, column: 7, scope: !827)
!834 = !DILocation(line: 1050, column: 5, scope: !831)
!835 = !DILocation(line: 1051, column: 21, scope: !827)
!836 = !DILocation(line: 1051, column: 3, scope: !827)
!837 = !DILocation(line: 1052, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !827, file: !259, line: 1052, column: 7)
!839 = !DILocation(line: 1052, column: 19, scope: !838)
!840 = !DILocation(line: 1052, column: 7, scope: !827)
!841 = !DILocation(line: 1053, column: 17, scope: !838)
!842 = !DILocation(line: 1053, column: 16, scope: !838)
!843 = !DILocation(line: 1053, column: 5, scope: !838)
!844 = !DILocation(line: 1054, column: 23, scope: !827)
!845 = !DILocation(line: 1054, column: 3, scope: !827)
!846 = !DILocation(line: 1055, column: 3, scope: !827)
!847 = !DILocation(line: 1056, column: 1, scope: !827)
!848 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !236, file: !236, line: 35, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !851}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!852 = !DISubprogram(name: "DestroyLinkedList", scope: !240, file: !240, line: 42, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!853 = !DISubroutineType(types: !854)
!854 = !{!238, !238, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!856 = distinct !DISubprogram(name: "DestroyMagicElement", scope: !259, file: !259, line: 1026, type: !811, scopeLine: 1027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !857)
!857 = !{!858, !859}
!858 = !DILocalVariable(name: "magic_info", arg: 1, scope: !856, file: !259, line: 1026, type: !165)
!859 = !DILocalVariable(name: "p", scope: !856, file: !259, line: 1029, type: !169)
!860 = !DILocation(line: 0, scope: !856)
!861 = !DILocation(line: 1032, column: 10, scope: !862)
!862 = distinct !DILexicalBlock(scope: !856, file: !259, line: 1032, column: 7)
!863 = !DILocation(line: 1032, column: 17, scope: !862)
!864 = !DILocation(line: 1032, column: 7, scope: !856)
!865 = !DILocation(line: 1034, column: 14, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !259, line: 1034, column: 11)
!867 = distinct !DILexicalBlock(scope: !862, file: !259, line: 1033, column: 5)
!868 = !DILocation(line: 1034, column: 19, scope: !866)
!869 = !DILocation(line: 1034, column: 11, scope: !867)
!870 = !DILocation(line: 1035, column: 17, scope: !866)
!871 = !DILocation(line: 1035, column: 16, scope: !866)
!872 = !DILocation(line: 1035, column: 9, scope: !866)
!873 = !DILocation(line: 1036, column: 14, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !259, line: 1036, column: 11)
!875 = !DILocation(line: 1036, column: 19, scope: !874)
!876 = !DILocation(line: 1036, column: 11, scope: !867)
!877 = !DILocation(line: 1037, column: 17, scope: !874)
!878 = !DILocation(line: 1037, column: 16, scope: !874)
!879 = !DILocation(line: 1037, column: 9, scope: !874)
!880 = !DILocation(line: 1038, column: 14, scope: !881)
!881 = distinct !DILexicalBlock(scope: !867, file: !259, line: 1038, column: 11)
!882 = !DILocation(line: 1038, column: 21, scope: !881)
!883 = !DILocation(line: 1038, column: 11, scope: !867)
!884 = !DILocation(line: 1039, column: 19, scope: !881)
!885 = !DILocation(line: 1039, column: 18, scope: !881)
!886 = !DILocation(line: 1039, column: 9, scope: !881)
!887 = !DILocation(line: 1040, column: 14, scope: !888)
!888 = distinct !DILexicalBlock(scope: !867, file: !259, line: 1040, column: 11)
!889 = !DILocation(line: 1040, column: 20, scope: !888)
!890 = !DILocation(line: 1040, column: 11, scope: !867)
!891 = !DILocation(line: 1041, column: 36, scope: !888)
!892 = !DILocation(line: 1041, column: 17, scope: !888)
!893 = !DILocation(line: 1041, column: 9, scope: !888)
!894 = !DILocation(line: 1043, column: 19, scope: !856)
!895 = !DILocation(line: 1044, column: 3, scope: !856)
!896 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !236, file: !236, line: 36, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!897 = !DISubprogram(name: "NewLinkedList", scope: !240, file: !240, line: 43, type: !898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!898 = !DISubroutineType(types: !899)
!899 = !{!238, !272}
!900 = !DISubprogram(name: "GetExceptionInfo", scope: !12, file: !12, line: 166, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !285}
!903 = !DISubprogram(name: "GetExceptionMessage", scope: !12, file: !12, line: 137, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!904 = !DISubroutineType(types: !905)
!905 = !{!144, !906}
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!907 = !DISubprogram(name: "ThrowMagickException", scope: !12, file: !12, line: 156, type: !908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!908 = !DISubroutineType(types: !909)
!909 = !{!159, !285, !229, !229, !272, !910, !229, !229, null}
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!911 = !DISubprogram(name: "DestroyString", scope: !245, file: !245, line: 46, type: !912, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!912 = !DISubroutineType(types: !913)
!913 = !{!144, !144}
!914 = !DISubprogram(name: "CatchException", scope: !12, file: !12, line: 164, type: !901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!915 = !DISubprogram(name: "DestroyExceptionInfo", scope: !12, file: !12, line: 148, type: !916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!916 = !DISubroutineType(types: !917)
!917 = !{!285, !285}
!918 = !DISubprogram(name: "MagickCoreTerminus", scope: !919, file: !919, line: 147, type: !828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!919 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!920 = !DISubprogram(name: "GetConfigureOptions", scope: !921, file: !921, line: 60, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!921 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!922 = !DISubprogram(name: "CopyMagickString", scope: !245, file: !245, line: 78, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!923 = !DISubroutineType(types: !924)
!924 = !{!152, !144, !229, !272}
!925 = !DISubprogram(name: "GetStringInfoPath", scope: !245, file: !245, line: 58, type: !926, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!926 = !DISubroutineType(types: !927)
!927 = !{!229, !242}
!928 = distinct !DISubprogram(name: "LoadMagicCache", scope: !259, file: !259, line: 754, type: !929, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{!159, !238, !229, !229, !272, !285}
!931 = !{!932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !953, !954, !959, !960, !965, !966, !967}
!932 = !DILocalVariable(name: "magic_cache", arg: 1, scope: !928, file: !259, line: 754, type: !238)
!933 = !DILocalVariable(name: "xml", arg: 2, scope: !928, file: !259, line: 755, type: !229)
!934 = !DILocalVariable(name: "filename", arg: 3, scope: !928, file: !259, line: 755, type: !229)
!935 = !DILocalVariable(name: "depth", arg: 4, scope: !928, file: !259, line: 755, type: !272)
!936 = !DILocalVariable(name: "exception", arg: 5, scope: !928, file: !259, line: 756, type: !285)
!937 = !DILocalVariable(name: "keyword", scope: !928, file: !259, line: 759, type: !249)
!938 = !DILocalVariable(name: "token", scope: !928, file: !259, line: 760, type: !144)
!939 = !DILocalVariable(name: "q", scope: !928, file: !259, line: 763, type: !229)
!940 = !DILocalVariable(name: "status", scope: !928, file: !259, line: 766, type: !159)
!941 = !DILocalVariable(name: "magic_info", scope: !928, file: !259, line: 769, type: !169)
!942 = !DILocalVariable(name: "path", scope: !943, file: !259, line: 828, type: !249)
!943 = distinct !DILexicalBlock(scope: !944, file: !259, line: 826, column: 17)
!944 = distinct !DILexicalBlock(scope: !945, file: !259, line: 822, column: 19)
!945 = distinct !DILexicalBlock(scope: !946, file: !259, line: 821, column: 13)
!946 = distinct !DILexicalBlock(scope: !947, file: !259, line: 820, column: 15)
!947 = distinct !DILexicalBlock(scope: !948, file: !259, line: 814, column: 9)
!948 = distinct !DILexicalBlock(scope: !949, file: !259, line: 809, column: 7)
!949 = distinct !DILexicalBlock(scope: !950, file: !259, line: 808, column: 9)
!950 = distinct !DILexicalBlock(scope: !951, file: !259, line: 782, column: 3)
!951 = distinct !DILexicalBlock(scope: !952, file: !259, line: 781, column: 3)
!952 = distinct !DILexicalBlock(scope: !928, file: !259, line: 781, column: 3)
!953 = !DILocalVariable(name: "xml", scope: !943, file: !259, line: 829, type: !144)
!954 = !DILocalVariable(name: "message", scope: !955, file: !259, line: 858, type: !144)
!955 = distinct !DILexicalBlock(scope: !956, file: !259, line: 858, column: 11)
!956 = distinct !DILexicalBlock(scope: !957, file: !259, line: 857, column: 13)
!957 = distinct !DILexicalBlock(scope: !958, file: !259, line: 852, column: 7)
!958 = distinct !DILexicalBlock(scope: !950, file: !259, line: 851, column: 9)
!959 = !DILocalVariable(name: "exception", scope: !955, file: !259, line: 858, type: !286)
!960 = !DILocalVariable(name: "p", scope: !961, file: !259, line: 920, type: !144)
!961 = distinct !DILexicalBlock(scope: !962, file: !259, line: 918, column: 11)
!962 = distinct !DILexicalBlock(scope: !963, file: !259, line: 917, column: 13)
!963 = distinct !DILexicalBlock(scope: !964, file: !259, line: 916, column: 7)
!964 = distinct !DILexicalBlock(scope: !950, file: !259, line: 883, column: 5)
!965 = !DILocalVariable(name: "q", scope: !961, file: !259, line: 923, type: !149)
!966 = !DILocalVariable(name: "length", scope: !961, file: !259, line: 926, type: !152)
!967 = !DILocalVariable(name: "end", scope: !968, file: !259, line: 940, type: !144)
!968 = distinct !DILexicalBlock(scope: !969, file: !259, line: 938, column: 21)
!969 = distinct !DILexicalBlock(scope: !970, file: !259, line: 937, column: 23)
!970 = distinct !DILexicalBlock(scope: !971, file: !259, line: 935, column: 17)
!971 = distinct !DILexicalBlock(scope: !972, file: !259, line: 934, column: 19)
!972 = distinct !DILexicalBlock(scope: !973, file: !259, line: 933, column: 13)
!973 = distinct !DILexicalBlock(scope: !974, file: !259, line: 932, column: 13)
!974 = distinct !DILexicalBlock(scope: !961, file: !259, line: 932, column: 13)
!975 = !DILocation(line: 0, scope: !928)
!976 = !DILocation(line: 758, column: 3, scope: !928)
!977 = !DILocation(line: 759, column: 5, scope: !928)
!978 = !DILocation(line: 762, column: 3, scope: !928)
!979 = !DILocation(line: 774, column: 10, scope: !928)
!980 = !DILocation(line: 776, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !928, file: !259, line: 776, column: 7)
!982 = !DILocation(line: 776, column: 7, scope: !928)
!983 = !DILocation(line: 780, column: 9, scope: !928)
!984 = !DILocation(line: 781, column: 9, scope: !952)
!985 = !DILocation(line: 781, column: 24, scope: !951)
!986 = !DILocation(line: 781, column: 27, scope: !951)
!987 = !DILocation(line: 781, column: 3, scope: !952)
!988 = !DILocation(line: 786, column: 5, scope: !950)
!989 = !DILocation(line: 787, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !950, file: !259, line: 787, column: 9)
!991 = !DILocation(line: 787, column: 16, scope: !990)
!992 = !DILocation(line: 787, column: 9, scope: !950)
!993 = !DILocation(line: 789, column: 12, scope: !950)
!994 = !DILocation(line: 790, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !950, file: !259, line: 790, column: 9)
!996 = !DILocation(line: 790, column: 47, scope: !995)
!997 = !DILocation(line: 790, column: 9, scope: !950)
!998 = !DILocation(line: 795, column: 32, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !259, line: 791, column: 7)
!1000 = !DILocation(line: 795, column: 17, scope: !999)
!1001 = !DILocation(line: 795, column: 42, scope: !999)
!1002 = !DILocation(line: 795, column: 48, scope: !999)
!1003 = !DILocation(line: 795, column: 53, scope: !999)
!1004 = !DILocation(line: 795, column: 52, scope: !999)
!1005 = !DILocation(line: 795, column: 55, scope: !999)
!1006 = !DILocation(line: 795, column: 9, scope: !999)
!1007 = !DILocation(line: 796, column: 11, scope: !999)
!1008 = distinct !{!1008, !1006, !1009, !382, !383}
!1009 = !DILocation(line: 796, column: 36, scope: !999)
!1010 = !DILocation(line: 781, column: 25, scope: !951)
!1011 = distinct !{!1011, !987, !1012, !382, !383}
!1012 = !DILocation(line: 977, column: 3, scope: !952)
!1013 = !DILocation(line: 799, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !950, file: !259, line: 799, column: 9)
!1015 = !DILocation(line: 799, column: 42, scope: !1014)
!1016 = !DILocation(line: 799, column: 9, scope: !950)
!1017 = !DILocation(line: 804, column: 32, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1014, file: !259, line: 800, column: 7)
!1019 = !DILocation(line: 804, column: 17, scope: !1018)
!1020 = !DILocation(line: 804, column: 42, scope: !1018)
!1021 = !DILocation(line: 804, column: 48, scope: !1018)
!1022 = !DILocation(line: 804, column: 53, scope: !1018)
!1023 = !DILocation(line: 804, column: 52, scope: !1018)
!1024 = !DILocation(line: 804, column: 55, scope: !1018)
!1025 = !DILocation(line: 804, column: 9, scope: !1018)
!1026 = !DILocation(line: 805, column: 11, scope: !1018)
!1027 = distinct !{!1027, !1025, !1028, !382, !383}
!1028 = !DILocation(line: 805, column: 36, scope: !1018)
!1029 = !DILocation(line: 808, column: 9, scope: !949)
!1030 = !DILocation(line: 808, column: 43, scope: !949)
!1031 = !DILocation(line: 808, column: 9, scope: !950)
!1032 = !DILocation(line: 822, column: 19, scope: !945)
!1033 = !DILocation(line: 813, column: 18, scope: !948)
!1034 = !DILocation(line: 813, column: 25, scope: !948)
!1035 = !DILocation(line: 813, column: 33, scope: !948)
!1036 = !DILocation(line: 813, column: 37, scope: !948)
!1037 = !DILocation(line: 813, column: 48, scope: !948)
!1038 = !DILocation(line: 813, column: 57, scope: !948)
!1039 = !DILocation(line: 813, column: 62, scope: !948)
!1040 = !DILocation(line: 813, column: 61, scope: !948)
!1041 = !DILocation(line: 813, column: 64, scope: !948)
!1042 = !DILocation(line: 813, column: 9, scope: !948)
!1043 = !DILocation(line: 815, column: 18, scope: !947)
!1044 = !DILocation(line: 816, column: 26, scope: !947)
!1045 = !DILocation(line: 816, column: 11, scope: !947)
!1046 = !DILocation(line: 817, column: 15, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !947, file: !259, line: 817, column: 15)
!1048 = !DILocation(line: 817, column: 22, scope: !1047)
!1049 = !DILocation(line: 817, column: 15, scope: !947)
!1050 = distinct !{!1050, !1042, !1051, !382, !383}
!1051 = !DILocation(line: 848, column: 9, scope: !948)
!1052 = !DILocation(line: 819, column: 26, scope: !947)
!1053 = !DILocation(line: 819, column: 11, scope: !947)
!1054 = !DILocation(line: 820, column: 15, scope: !946)
!1055 = !DILocation(line: 820, column: 45, scope: !946)
!1056 = !DILocation(line: 820, column: 15, scope: !947)
!1057 = !DILocation(line: 823, column: 24, scope: !944)
!1058 = !DILocation(line: 823, column: 17, scope: !944)
!1059 = !DILocation(line: 827, column: 19, scope: !943)
!1060 = !DILocation(line: 828, column: 21, scope: !943)
!1061 = !DILocation(line: 831, column: 19, scope: !943)
!1062 = !DILocation(line: 832, column: 23, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !943, file: !259, line: 832, column: 23)
!1064 = !DILocation(line: 832, column: 29, scope: !1063)
!1065 = !DILocation(line: 832, column: 23, scope: !943)
!1066 = !DILocation(line: 833, column: 28, scope: !1063)
!1067 = !DILocation(line: 833, column: 21, scope: !1063)
!1068 = !DILocation(line: 835, column: 23, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !943, file: !259, line: 835, column: 23)
!1070 = !DILocation(line: 835, column: 30, scope: !1069)
!1071 = !DILocation(line: 835, column: 23, scope: !943)
!1072 = !DILocation(line: 836, column: 28, scope: !1069)
!1073 = !DILocation(line: 836, column: 21, scope: !1069)
!1074 = !DILocation(line: 838, column: 28, scope: !1069)
!1075 = !DILocation(line: 839, column: 23, scope: !943)
!1076 = !DILocation(line: 0, scope: !943)
!1077 = !DILocation(line: 840, column: 27, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !943, file: !259, line: 840, column: 23)
!1079 = !DILocation(line: 840, column: 23, scope: !943)
!1080 = !DILocation(line: 842, column: 31, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !259, line: 841, column: 21)
!1082 = !DILocation(line: 842, column: 29, scope: !1081)
!1083 = !DILocation(line: 844, column: 36, scope: !1081)
!1084 = !DILocation(line: 845, column: 21, scope: !1081)
!1085 = !DILocation(line: 846, column: 17, scope: !944)
!1086 = !DILocation(line: 851, column: 9, scope: !958)
!1087 = !DILocation(line: 851, column: 41, scope: !958)
!1088 = !DILocation(line: 851, column: 9, scope: !950)
!1089 = !DILocation(line: 856, column: 34, scope: !957)
!1090 = !DILocation(line: 857, column: 24, scope: !956)
!1091 = !DILocation(line: 857, column: 13, scope: !957)
!1092 = !DILocation(line: 858, column: 11, scope: !955)
!1093 = !DILocation(line: 0, scope: !955)
!1094 = !DILocation(line: 859, column: 16, scope: !957)
!1095 = !DILocation(line: 860, column: 26, scope: !957)
!1096 = !DILocation(line: 860, column: 25, scope: !957)
!1097 = !DILocation(line: 861, column: 21, scope: !957)
!1098 = !DILocation(line: 861, column: 27, scope: !957)
!1099 = !DILocation(line: 862, column: 21, scope: !957)
!1100 = !DILocation(line: 862, column: 30, scope: !957)
!1101 = !DILocation(line: 863, column: 9, scope: !957)
!1102 = !DILocation(line: 865, column: 20, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !950, file: !259, line: 865, column: 9)
!1104 = !DILocation(line: 865, column: 9, scope: !950)
!1105 = !DILocation(line: 867, column: 9, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !950, file: !259, line: 867, column: 9)
!1107 = !DILocation(line: 867, column: 37, scope: !1106)
!1108 = !DILocation(line: 867, column: 9, scope: !950)
!1109 = !DILocation(line: 869, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !259, line: 868, column: 7)
!1111 = !DILocation(line: 870, column: 20, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1110, file: !259, line: 870, column: 13)
!1113 = !DILocation(line: 870, column: 13, scope: !1110)
!1114 = !DILocation(line: 873, column: 25, scope: !1112)
!1115 = !DILocation(line: 871, column: 18, scope: !1112)
!1116 = !DILocation(line: 871, column: 11, scope: !1112)
!1117 = !DILocation(line: 877, column: 20, scope: !950)
!1118 = !DILocation(line: 877, column: 5, scope: !950)
!1119 = !DILocation(line: 878, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !950, file: !259, line: 878, column: 9)
!1121 = !DILocation(line: 878, column: 16, scope: !1120)
!1122 = !DILocation(line: 878, column: 9, scope: !950)
!1123 = !DILocation(line: 880, column: 20, scope: !950)
!1124 = !DILocation(line: 880, column: 5, scope: !950)
!1125 = !DILocation(line: 881, column: 20, scope: !950)
!1126 = !DILocation(line: 881, column: 5, scope: !950)
!1127 = !DILocation(line: 882, column: 13, scope: !950)
!1128 = !DILocation(line: 882, column: 5, scope: !950)
!1129 = !DILocation(line: 887, column: 13, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !259, line: 887, column: 13)
!1131 = distinct !DILexicalBlock(scope: !964, file: !259, line: 886, column: 7)
!1132 = !DILocation(line: 887, column: 52, scope: !1130)
!1133 = !DILocation(line: 887, column: 13, scope: !1131)
!1134 = !DILocation(line: 889, column: 30, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !259, line: 888, column: 11)
!1136 = !DILocation(line: 889, column: 25, scope: !1135)
!1137 = !DILocation(line: 889, column: 29, scope: !1135)
!1138 = !DILocation(line: 890, column: 13, scope: !1135)
!1139 = !DILocation(line: 897, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !259, line: 897, column: 13)
!1141 = distinct !DILexicalBlock(scope: !964, file: !259, line: 896, column: 7)
!1142 = !DILocation(line: 897, column: 54, scope: !1140)
!1143 = !DILocation(line: 897, column: 13, scope: !1141)
!1144 = !DILocalVariable(name: "value", arg: 1, scope: !1145, file: !1146, line: 68, type: !806)
!1145 = distinct !DISubprogram(name: "StringToLong", scope: !1146, file: !1146, line: 68, type: !1147, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1149)
!1146 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!201, !806}
!1149 = !{!1144}
!1150 = !DILocation(line: 0, scope: !1145, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 899, column: 51, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1140, file: !259, line: 898, column: 11)
!1153 = !DILocation(line: 70, column: 10, scope: !1145, inlinedAt: !1151)
!1154 = !DILocation(line: 899, column: 25, scope: !1152)
!1155 = !DILocation(line: 899, column: 31, scope: !1152)
!1156 = !DILocation(line: 900, column: 13, scope: !1152)
!1157 = !DILocation(line: 907, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !259, line: 907, column: 13)
!1159 = distinct !DILexicalBlock(scope: !964, file: !259, line: 906, column: 7)
!1160 = !DILocation(line: 907, column: 55, scope: !1158)
!1161 = !DILocation(line: 907, column: 13, scope: !1159)
!1162 = !DILocation(line: 909, column: 33, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1158, file: !259, line: 908, column: 11)
!1164 = !DILocation(line: 909, column: 25, scope: !1163)
!1165 = !DILocation(line: 909, column: 32, scope: !1163)
!1166 = !DILocation(line: 910, column: 13, scope: !1163)
!1167 = !DILocation(line: 917, column: 13, scope: !962)
!1168 = !DILocation(line: 917, column: 54, scope: !962)
!1169 = !DILocation(line: 917, column: 13, scope: !963)
!1170 = !DILocation(line: 928, column: 20, scope: !961)
!1171 = !DILocation(line: 0, scope: !961)
!1172 = !DILocation(line: 929, column: 32, scope: !961)
!1173 = !DILocation(line: 929, column: 25, scope: !961)
!1174 = !DILocation(line: 929, column: 31, scope: !961)
!1175 = !DILocation(line: 930, column: 49, scope: !961)
!1176 = !DILocation(line: 930, column: 25, scope: !961)
!1177 = !DILocation(line: 930, column: 30, scope: !961)
!1178 = !DILocation(line: 932, column: 32, scope: !974)
!1179 = !DILocation(line: 932, column: 18, scope: !974)
!1180 = !DILocation(line: 0, scope: !974)
!1181 = !DILocation(line: 932, column: 40, scope: !973)
!1182 = !DILocation(line: 932, column: 13, scope: !974)
!1183 = !DILocation(line: 936, column: 20, scope: !970)
!1184 = !DILocation(line: 937, column: 23, scope: !969)
!1185 = !DILocation(line: 937, column: 59, scope: !969)
!1186 = !DILocation(line: 937, column: 23, scope: !970)
!1187 = !DILocation(line: 939, column: 23, scope: !968)
!1188 = !DILocation(line: 0, scope: !968)
!1189 = !DILocation(line: 942, column: 44, scope: !968)
!1190 = !DILocation(line: 942, column: 28, scope: !968)
!1191 = !DILocation(line: 942, column: 27, scope: !968)
!1192 = !DILocation(line: 943, column: 27, scope: !968)
!1193 = !DILocation(line: 943, column: 30, scope: !968)
!1194 = !DILocation(line: 943, column: 24, scope: !968)
!1195 = !DILocation(line: 944, column: 41, scope: !968)
!1196 = !DILocation(line: 946, column: 21, scope: !969)
!1197 = !DILocation(line: 0, scope: !972)
!1198 = distinct !{!1198, !1182, !1199, !382, !383}
!1199 = !DILocation(line: 969, column: 13, scope: !974)
!1200 = !DILocation(line: 947, column: 27, scope: !970)
!1201 = !DILocation(line: 947, column: 19, scope: !970)
!1202 = !DILocation(line: 950, column: 40, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !970, file: !259, line: 948, column: 19)
!1204 = !DILocation(line: 951, column: 40, scope: !1203)
!1205 = !DILocation(line: 952, column: 40, scope: !1203)
!1206 = !DILocation(line: 953, column: 40, scope: !1203)
!1207 = !DILocation(line: 954, column: 40, scope: !1203)
!1208 = !DILocation(line: 955, column: 39, scope: !1203)
!1209 = !DILocation(line: 956, column: 40, scope: !1203)
!1210 = !DILocation(line: 957, column: 55, scope: !1203)
!1211 = !DILocation(line: 0, scope: !1203)
!1212 = !DILocation(line: 959, column: 20, scope: !970)
!1213 = !DILocation(line: 961, column: 37, scope: !970)
!1214 = !DILocation(line: 962, column: 19, scope: !970)
!1215 = !DILocation(line: 965, column: 21, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !971, file: !259, line: 965, column: 21)
!1217 = !DILocation(line: 965, column: 49, scope: !1216)
!1218 = !DILocation(line: 965, column: 21, scope: !971)
!1219 = !DILocation(line: 966, column: 44, scope: !1216)
!1220 = !DILocation(line: 966, column: 48, scope: !1216)
!1221 = !DILocation(line: 966, column: 70, scope: !1216)
!1222 = !DILocation(line: 966, column: 57, scope: !1216)
!1223 = !DILocation(line: 966, column: 26, scope: !1216)
!1224 = !DILocation(line: 966, column: 19, scope: !1216)
!1225 = !DILocation(line: 967, column: 39, scope: !972)
!1226 = !DILocation(line: 967, column: 37, scope: !972)
!1227 = !DILocation(line: 967, column: 19, scope: !972)
!1228 = !DILocation(line: 968, column: 33, scope: !972)
!1229 = !DILocation(line: 932, column: 13, scope: !973)
!1230 = !DILocation(line: 978, column: 18, scope: !928)
!1231 = !DILocation(line: 979, column: 3, scope: !928)
!1232 = !DILocation(line: 980, column: 1, scope: !928)
!1233 = !DISubprogram(name: "GetStringInfoDatum", scope: !245, file: !245, line: 97, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!149, !242}
!1236 = !DISubprogram(name: "AcquireMagickMemory", scope: !572, file: !572, line: 40, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!165, !272}
!1239 = !DISubprogram(name: "ResetMagickMemory", scope: !572, file: !572, line: 52, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!165, !165, !179, !272}
!1242 = !DISubprogram(name: "AppendValueToLinkedList", scope: !240, file: !240, line: 46, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!159, !238, !499}
!1245 = !DISubprogram(name: "DestroyConfigureOptions", scope: !921, file: !921, line: 58, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!238, !238}
!1248 = !DISubprogram(name: "AcquireString", scope: !245, file: !245, line: 43, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1249 = !DISubprogram(name: "GetMagickToken", scope: !581, file: !581, line: 45, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !229, !255, !144}
!1252 = !DISubprogram(name: "LocaleNCompare", scope: !245, file: !245, line: 67, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!179, !229, !229, !272}
!1255 = !DISubprogram(name: "GetPathComponent", scope: !125, file: !125, line: 68, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !229, !1258, !144}
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !125, line: 36, baseType: !124)
!1259 = !DISubprogram(name: "ConcatenateMagickString", scope: !245, file: !245, line: 76, type: !923, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1260 = !DISubprogram(name: "FileToXML", scope: !1261, file: !1261, line: 26, type: !1262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1261 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!144, !229, !272}
!1264 = !DISubprogram(name: "IsMagickTrue", scope: !581, file: !581, line: 38, type: !1265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !488)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!159, !229}
