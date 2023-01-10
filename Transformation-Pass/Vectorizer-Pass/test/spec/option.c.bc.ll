; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/option.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._OptionInfo = type { ptr, i64, i64, i32 }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/option.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@AlignOptions = internal constant [8 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.9, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.10, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.11, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.12, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.13, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.14, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !0
@AlphaOptions = internal constant [16 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.15, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.16, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.17, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.18, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.19, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.20, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.21, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.22, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.23, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.24, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.25, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.26, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.27, i64 8, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.28, i64 10, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !650
@BooleanOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.29, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.30, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.31, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.32, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !656
@CacheOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.33, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.34, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.35, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.36, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.37, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !661
@ChannelOptions = internal constant [34 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.38, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.39, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.40, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.41, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.42, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.43, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.44, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.45, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.46, i64 134217719, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.47, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.49, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.50, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.52, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.53, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.54, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.55, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.56, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.57, i64 4, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.58, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.59, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.60, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.61, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.62, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.63, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.64, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.66, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.67, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.68, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.69, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !666
@ClassOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.70, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.71, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !671
@ClipPathOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.72, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.73, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.74, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !676
@ColorspaceOptions = internal constant [36 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.75, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.76, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.77, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.78, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.79, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.80, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.81, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.82, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.83, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.84, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.85, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.86, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.87, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.88, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.89, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.91, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.92, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.93, i64 17, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.94, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.95, i64 19, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.96, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.97, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.98, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.99, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.28, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.100, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.101, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.102, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.103, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.104, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.105, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.106, i64 11, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !678
@CommandOptions = internal constant [590 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.107, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.108, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.109, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.110, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.111, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.112, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.113, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.114, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.115, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.116, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.117, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.118, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.119, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.120, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.121, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.122, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.123, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.124, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.125, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.126, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.127, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.128, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.129, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.130, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.131, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.132, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.133, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.134, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.135, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.136, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.137, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.138, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.139, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.140, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.141, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.142, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.143, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.144, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.145, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.146, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.147, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.148, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.149, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.150, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.151, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.152, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.153, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.154, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.155, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.156, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.157, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.158, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.159, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.160, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.161, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.162, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.163, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.164, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.165, i64 0, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.166, i64 1, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.167, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.168, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.169, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.170, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.171, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.172, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.173, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.174, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.175, i64 0, i64 514, i32 0 }, %struct._OptionInfo { ptr @.str.176, i64 1, i64 514, i32 0 }, %struct._OptionInfo { ptr @.str.177, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.178, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.179, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.180, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.181, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.182, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.183, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.184, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.185, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.186, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.187, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.188, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.189, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.190, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.191, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.192, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.193, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.194, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.195, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.196, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.197, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.198, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.199, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.200, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.201, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.202, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.203, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.204, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.205, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.206, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.207, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.208, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.209, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.210, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.211, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.212, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.213, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.214, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.215, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.216, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.217, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.218, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.219, i64 0, i64 1024, i32 1 }, %struct._OptionInfo { ptr @.str.220, i64 0, i64 1024, i32 1 }, %struct._OptionInfo { ptr @.str.221, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.222, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.223, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.224, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.225, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.226, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.227, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.228, i64 1, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.229, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.230, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.231, i64 0, i64 1041, i32 0 }, %struct._OptionInfo { ptr @.str.232, i64 1, i64 1041, i32 0 }, %struct._OptionInfo { ptr @.str.233, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.234, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.235, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.236, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.237, i64 1, i64 3, i32 0 }, %struct._OptionInfo { ptr @.str.238, i64 1, i64 3, i32 0 }, %struct._OptionInfo { ptr @.str.239, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.240, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.241, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.242, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.243, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.244, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.245, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.246, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.247, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.248, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.249, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.250, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.251, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.252, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.253, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.254, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.255, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.256, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.257, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.258, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.259, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.260, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.261, i64 0, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.262, i64 1, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.263, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.264, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.265, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.266, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.267, i64 0, i64 522, i32 0 }, %struct._OptionInfo { ptr @.str.268, i64 1, i64 522, i32 0 }, %struct._OptionInfo { ptr @.str.269, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.270, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.271, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.272, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.273, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.274, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.275, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.276, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.277, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.278, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.279, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.280, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.281, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.282, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.283, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.284, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.285, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.286, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.287, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.288, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.289, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.290, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.291, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.292, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.293, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.294, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.295, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.296, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.297, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.298, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.299, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.300, i64 1, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.301, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.302, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.303, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.304, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.305, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.306, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.307, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.308, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.309, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.310, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.311, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.312, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.313, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.314, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.315, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.316, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.317, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.318, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.319, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.320, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.321, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.322, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.323, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.324, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.325, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.326, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.327, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.328, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.329, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.330, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.331, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.332, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.333, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.334, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.335, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.336, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.337, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.338, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.339, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.340, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.341, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.342, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.343, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.344, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.345, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.346, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.347, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.348, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.349, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.350, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.351, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.352, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.353, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.354, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.355, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.356, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.357, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.358, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.359, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.360, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.361, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.362, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.363, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.364, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.365, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.366, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.367, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.368, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.369, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.370, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.371, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.372, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.373, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.374, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.375, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.376, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.377, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.378, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.379, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.380, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.381, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.382, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.383, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.384, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.385, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.386, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.387, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.388, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.389, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.390, i64 2, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.391, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.392, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.393, i64 0, i64 32772, i32 0 }, %struct._OptionInfo { ptr @.str.394, i64 1, i64 32772, i32 0 }, %struct._OptionInfo { ptr @.str.395, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.396, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.397, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.398, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.399, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.400, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.401, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.402, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.403, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.404, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.405, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.406, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.407, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.408, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.409, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.410, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.411, i64 0, i64 33026, i32 0 }, %struct._OptionInfo { ptr @.str.412, i64 0, i64 33026, i32 0 }, %struct._OptionInfo { ptr @.str.413, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.414, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.415, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.416, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.417, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.418, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.419, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.420, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.421, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.422, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.423, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.424, i64 0, i64 32771, i32 0 }, %struct._OptionInfo { ptr @.str.425, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.426, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.427, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.428, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.429, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.430, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.431, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.432, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.433, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.434, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.435, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.436, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.437, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.438, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.439, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.440, i64 0, i64 33281, i32 0 }, %struct._OptionInfo { ptr @.str.441, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.442, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.443, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.444, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.445, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.446, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.447, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.448, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.449, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.450, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.451, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.452, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.453, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.454, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.455, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.456, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.457, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.458, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.459, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.460, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.461, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.462, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.463, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.464, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.465, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.466, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.467, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.468, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.469, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.470, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.471, i64 0, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.472, i64 1, i64 32774, i32 0 }, %struct._OptionInfo { ptr @.str.473, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.474, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.475, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.476, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.477, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.478, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.479, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.480, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.481, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.482, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.483, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.484, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.485, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.486, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.487, i64 1, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.488, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.489, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.490, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.491, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.492, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.493, i64 0, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.494, i64 1, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.495, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.496, i64 0, i64 17, i32 0 }, %struct._OptionInfo { ptr @.str.497, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.498, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.499, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.500, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.501, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.502, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.503, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.504, i64 1, i64 33024, i32 0 }, %struct._OptionInfo { ptr @.str.505, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.506, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.507, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.508, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.509, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.510, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.511, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.512, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.513, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.514, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.515, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.516, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.517, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.518, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.519, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.520, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.521, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.522, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.523, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.524, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.525, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.526, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.527, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.528, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.529, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.530, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.531, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.532, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.533, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.534, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.535, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.536, i64 1, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.537, i64 1, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.538, i64 0, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.539, i64 0, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.540, i64 2, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.541, i64 2, i64 16384, i32 1 }, %struct._OptionInfo { ptr @.str.542, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.543, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.544, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.545, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.546, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.547, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.548, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.549, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.550, i64 0, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.551, i64 1, i64 16, i32 0 }, %struct._OptionInfo { ptr @.str.552, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.553, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.554, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.555, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.556, i64 0, i64 32769, i32 0 }, %struct._OptionInfo { ptr @.str.557, i64 0, i64 257, i32 0 }, %struct._OptionInfo { ptr @.str.558, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.559, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.560, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.561, i64 2, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.562, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.563, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.564, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.565, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.566, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.567, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.568, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.569, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.570, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.571, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.572, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.573, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.574, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.575, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.576, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.577, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.578, i64 0, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.579, i64 1, i64 16386, i32 0 }, %struct._OptionInfo { ptr @.str.580, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.581, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.582, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.583, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.584, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.585, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.586, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.587, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.588, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.589, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.590, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.591, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.592, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.593, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.594, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.595, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.596, i64 2, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.597, i64 2, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.598, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.599, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.600, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.601, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.602, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.603, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.604, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.605, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.606, i64 0, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.607, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.608, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.609, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.610, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.611, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.612, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.613, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.614, i64 0, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.615, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.616, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.617, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.618, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.619, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.620, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.621, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.622, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.623, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.624, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.625, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.626, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.627, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.628, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.629, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.630, i64 0, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.631, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.632, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.633, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.634, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.635, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.636, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.637, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.638, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.639, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.640, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.641, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.642, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.643, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.644, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.645, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.646, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.647, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.648, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.649, i64 1, i64 8, i32 0 }, %struct._OptionInfo { ptr @.str.650, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.651, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.652, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.653, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.654, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.655, i64 1, i64 6, i32 0 }, %struct._OptionInfo { ptr @.str.656, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.657, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.658, i64 0, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.659, i64 0, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.660, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.661, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.662, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.663, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.664, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.665, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.666, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.667, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.668, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.669, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.670, i64 0, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.671, i64 1, i64 1024, i32 0 }, %struct._OptionInfo { ptr @.str.672, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.673, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.674, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.675, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.676, i64 0, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.677, i64 1, i64 258, i32 0 }, %struct._OptionInfo { ptr @.str.678, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.679, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.680, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.681, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.682, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.683, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.684, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.685, i64 1, i64 4, i32 0 }, %struct._OptionInfo { ptr @.str.686, i64 0, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.687, i64 1, i64 2, i32 0 }, %struct._OptionInfo { ptr @.str.688, i64 1, i64 32768, i32 0 }, %struct._OptionInfo { ptr @.str.689, i64 1, i64 256, i32 0 }, %struct._OptionInfo { ptr @.str.690, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.691, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.692, i64 0, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.693, i64 1, i64 16384, i32 0 }, %struct._OptionInfo { ptr @.str.694, i64 1, i64 513, i32 0 }, %struct._OptionInfo { ptr @.str.695, i64 1, i64 513, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !683
@ComplexOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.696, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.697, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.698, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.699, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.701, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.702, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !688
@ComposeOptions = internal constant [73 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.703, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.704, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 57, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.706, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.707, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.708, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.709, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.710, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.711, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.712, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.713, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.714, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.715, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.17, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.716, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.717, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.718, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.719, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.720, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.721, i64 66, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.722, i64 55, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.723, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.724, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.725, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.726, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.727, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.728, i64 56, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.729, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.730, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.731, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.732, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.733, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.734, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.735, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.736, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.737, i64 67, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.738, i64 62, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.739, i64 61, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.740, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.741, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.742, i64 63, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.743, i64 36, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.744, i64 65, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.745, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.746, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.747, i64 52, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 38, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.749, i64 39, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.750, i64 41, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.751, i64 40, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.752, i64 58, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.753, i64 60, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.754, i64 42, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.755, i64 43, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.756, i64 44, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.757, i64 45, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.758, i64 46, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.759, i64 48, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.760, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.761, i64 49, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.762, i64 50, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.763, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.764, i64 59, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.765, i64 54, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.696, i64 2, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.698, i64 55, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.766, i64 36, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.702, i64 52, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.767, i64 53, i64 32768, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !693
@CompressOptions = internal constant [25 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.768, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.769, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.770, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.771, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.772, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.773, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.774, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.775, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.776, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.777, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.779, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.780, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.781, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.782, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.783, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.784, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.785, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.786, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.787, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.788, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.789, i64 14, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !698
@DataTypeOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.790, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.791, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.792, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.793, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !703
@LogEventOptions = internal constant [22 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.39, i64 2147483646, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.794, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.795, i64 262144, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.796, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.797, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.798, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.799, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.800, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.801, i64 128, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.802, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.803, i64 1024, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.804, i64 2048, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.805, i64 4096, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 8192, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.807, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.808, i64 16384, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.809, i64 36864, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.810, i64 65536, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.811, i64 131072, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !705
@DecorateOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.812, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.813, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.814, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !710
@DirectionOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.815, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.816, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !712
@DisposeOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.16, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.817, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.31, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.32, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.818, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.819, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !714
@DistortOptions = internal constant [21 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.820, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.821, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.822, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.823, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.824, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.825, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.826, i64 6, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.827, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.828, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.829, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.830, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.831, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.832, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.833, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.834, i64 12, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.835, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.836, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.837, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.838, i64 17, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !719
@DitherOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.839, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.840, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !724
@EndianOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.841, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.842, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !726
@EvaluateOptions = internal constant [36 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.843, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.696, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.844, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.845, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.846, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.847, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.698, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.848, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.849, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.850, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.851, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.852, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.853, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.854, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.855, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.856, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.857, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.858, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.700, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.859, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.860, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.861, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.862, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.25, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.863, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.864, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.702, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.865, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.866, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.867, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.868, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.765, i64 12, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !728
@FillRuleOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.869, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.870, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !730
@FilterOptions = internal constant [35 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.871, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.872, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.873, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.874, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.875, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.847, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.876, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.877, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.878, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.879, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.880, i64 5, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.881, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.882, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.883, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.884, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.885, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.886, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.887, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.888, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.889, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.890, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.891, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.893, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.894, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.895, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.896, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.897, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.898, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.899, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.900, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.901, i64 17, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.902, i64 13, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !732
@FunctionOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.829, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.903, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.904, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.905, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !737
@GravityOptions = internal constant [14 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.9, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.906, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.907, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.908, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.909, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.910, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.911, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.912, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.913, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.914, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.915, i64 10, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !739
@PixelIntensityOptions = internal constant [11 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.916, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.917, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.55, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.918, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.93, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.919, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.95, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.920, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.921, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !744
@IntentOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.922, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.923, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.924, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !749
@InterlaceOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.925, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.926, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.927, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.928, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.929, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !751
@InterpolateOptions = internal constant [17 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.916, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.930, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.931, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.932, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.16, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.933, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.826, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.704, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.875, i64 13, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.934, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.935, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.936, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.937, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.898, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 4, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !753
@KernelOptions = internal constant [40 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.939, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.877, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.940, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.941, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.942, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.943, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.944, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.945, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.946, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.947, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.948, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.949, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.950, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.951, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.952, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.953, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.33, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.954, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.754, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.955, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.956, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.957, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.958, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.959, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.960, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.961, i64 25, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.962, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.963, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.964, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.965, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.966, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.967, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.968, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.969, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.970, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.971, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.972, i64 36, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !758
@LayerOptions = internal constant [18 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.973, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.974, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.975, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.976, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.977, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.978, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.979, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.980, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.981, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.982, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.983, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.984, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.985, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.20, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.986, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.987, i64 16, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !763
@LineCapOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.988, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.989, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.952, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !768
@LineJoinOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.990, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.991, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.989, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !770
@ListOptions = internal constant [72 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.992, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.40, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.993, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.797, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.994, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.995, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.996, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.798, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.997, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.998, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.999, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1000, i64 69, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1001, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1002, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.799, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1003, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1004, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1005, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1006, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1007, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.977, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.728, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1008, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1009, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1010, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1011, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1012, i64 26, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1013, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1014, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1015, i64 30, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1016, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1017, i64 31, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1018, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1019, i64 33, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1020, i64 34, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1021, i64 35, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1022, i64 36, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1023, i64 37, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1024, i64 38, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.803, i64 39, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1025, i64 40, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.90, i64 41, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1026, i64 42, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1027, i64 43, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1028, i64 44, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1029, i64 45, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1030, i64 46, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1031, i64 48, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.804, i64 47, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1032, i64 49, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1033, i64 50, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1034, i64 51, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.805, i64 52, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1035, i64 53, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1036, i64 54, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1037, i64 55, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1038, i64 56, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1039, i64 57, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 59, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1040, i64 60, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1041, i64 61, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1042, i64 62, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1043, i64 63, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1044, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 65, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1045, i64 66, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1046, i64 58, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.8, i64 -1, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1047, i64 67, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1048, i64 68, i64 0, i32 0 }, %struct._OptionInfo { ptr null, i64 -1, i64 0, i32 0 }], align 16, !dbg !772
@MetricOptions = internal constant [12 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1049, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1050, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1051, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1052, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1053, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1054, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1055, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1056, i64 255, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1057, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1058, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !777
@MethodOptions = internal constant [7 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1059, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1060, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.755, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.27, i64 5, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !782
@ModeOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1061, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1062, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1063, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !787
@MorphologyOptions = internal constant [30 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1064, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1065, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1066, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1067, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1068, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1069, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1070, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1071, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1072, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1073, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1074, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1075, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1076, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1077, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1078, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1079, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1080, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1081, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1082, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1083, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1084, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1085, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1086, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1087, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1088, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1089, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1090, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1091, i64 21, i64 0, i32 1 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !789
@NoiseOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.877, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1092, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.944, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1093, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1094, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1095, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1096, i64 1, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !794
@OrientationOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1097, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1098, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1099, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1100, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1101, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1102, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1103, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1104, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !796
@PolicyDomainOptions = internal constant [8 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.798, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1006, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.938, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1105, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.806, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1106, i64 6, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !798
@PolicyRightsOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1107, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1108, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1109, i64 4, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !803
@PreviewOptions = internal constant [31 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1110, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.705, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.917, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1111, i64 28, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1112, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1113, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1114, i64 18, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1115, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1116, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.51, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1117, i64 25, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.778, i64 29, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1118, i64 27, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1119, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1120, i64 22, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1121, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1122, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1123, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.65, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1124, i64 23, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1125, i64 21, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1126, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1127, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1128, i64 20, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1129, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1130, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1131, i64 24, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.767, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1132, i64 26, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !805
@PrimitiveOptions = internal constant [17 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.830, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1133, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1134, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.997, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1135, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1136, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.925, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.59, i64 12, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1105, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.892, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1137, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1138, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.953, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1139, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1140, i64 13, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !810
@QuantumFormatOptions = internal constant [5 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1141, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1142, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1143, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr null, i64 1, i64 0, i32 0 }], align 16, !dbg !812
@ResolutionOptions = internal constant [4 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1144, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1145, i64 2, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !814
@ResourceOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1146, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.33, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1147, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.35, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.36, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1148, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1149, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !816
@SparseColorOptions = internal constant [7 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1150, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.826, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1151, i64 19, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.837, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1091, i64 18, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !818
@StatisticOptions = internal constant [10 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1152, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1153, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.855, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.856, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1154, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1030, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1155, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1156, i64 8, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !820
@StorageOptions = internal constant [9 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1157, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1158, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1159, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.934, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.791, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1160, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.792, i64 7, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !822
@StretchOptions = internal constant [12 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1161, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1162, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1163, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1164, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1165, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1166, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1167, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1168, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1169, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1170, i64 9, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !824
@StyleOptions = internal constant [6 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1161, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1171, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1166, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1172, i64 3, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !826
@TypeOptions = internal constant [18 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.1173, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1174, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1175, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1176, i64 9, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1116, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1177, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1178, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.978, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1179, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1180, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1181, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1182, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1183, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1184, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1185, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1186, i64 6, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !828
@ValidateOptions = internal constant [15 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.39, i64 2147483647, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.998, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1187, i64 2, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.984, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1188, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1189, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1190, i64 32, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1191, i64 64, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1192, i64 128, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1193, i64 256, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1194, i64 512, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1195, i64 1024, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 0, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !830
@VirtualPixelOptions = internal constant [19 x %struct._OptionInfo] [%struct._OptionInfo { ptr @.str.8, i64 0, i64 0, i32 1 }, %struct._OptionInfo { ptr @.str.16, i64 1, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.42, i64 10, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1196, i64 1, i64 32768, i32 1 }, %struct._OptionInfo { ptr @.str.1197, i64 17, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1008, i64 3, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1081, i64 4, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.48, i64 11, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1198, i64 13, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1199, i64 15, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1200, i64 5, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.748, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1095, i64 6, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1201, i64 7, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.28, i64 8, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1202, i64 14, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1203, i64 16, i64 0, i32 0 }, %struct._OptionInfo { ptr @.str.1204, i64 12, i64 0, i32 0 }, %struct._OptionInfo zeroinitializer], align 16, !dbg !835
@.str.8 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Center\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Middle\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Activate\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"Deactivate\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Extract\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Flatten\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Opaque\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Remove\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Disk\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"Distributed\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"Map\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Ping\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Luminance\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Luminosity\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Matte\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Opacity\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"Sync\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"DirectClass\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"PseudoClass\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"ObjectBoundingBox\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"UserSpace\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"UserSpaceOnUse\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"CIELab\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"CMY\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"HCL\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"HCLp\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"HSB\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"HSI\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"HSL\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"HSV\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"HWB\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"Lab\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"LCH\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"LCHab\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"LCHuv\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"LMS\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"Log\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"Luv\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"OHTA\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Rec601Luma\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"Rec601YCbCr\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"Rec709Luma\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"Rec709YCbCr\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"scRGB\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"XYZ\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"YDbDr\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"YCC\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"YIQ\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"YPbPr\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"YUV\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"+adjoin\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"-adjoin\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"+adaptive-blur\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"-adaptive-blur\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"+adaptive-resize\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"-adaptive-resize\00", align 1
@.str.113 = private unnamed_addr constant [18 x i8] c"+adaptive-sharpen\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"-adaptive-sharpen\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"+affine\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"-affine\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"+affinity\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"-affinity\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"+alpha\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"-alpha\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"+annotate\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"-annotate\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"+antialias\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"-antialias\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"+append\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"-append\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"+attenuate\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"-attenuate\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"+authenticate\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"-authenticate\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"+auto-gamma\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"-auto-gamma\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"+auto-level\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"-auto-level\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"+auto-orient\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"-auto-orient\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"+average\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"-average\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"+backdrop\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"-backdrop\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"+background\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"-background\00", align 1
@.str.143 = private unnamed_addr constant [7 x i8] c"+bench\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"-bench\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"+bias\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"-bias\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"+black-point-compensation\00", align 1
@.str.148 = private unnamed_addr constant [26 x i8] c"-black-point-compensation\00", align 1
@.str.149 = private unnamed_addr constant [17 x i8] c"+black-threshold\00", align 1
@.str.150 = private unnamed_addr constant [17 x i8] c"-black-threshold\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"+blend\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"-blend\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"+blue-primary\00", align 1
@.str.154 = private unnamed_addr constant [14 x i8] c"-blue-primary\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"+blue-shift\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"-blue-shift\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"+blur\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"-blur\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"+border\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"-border\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"+bordercolor\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"-bordercolor\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"+borderwidth\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"-borderwidth\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"+box\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"-box\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"+brightness-contrast\00", align 1
@.str.168 = private unnamed_addr constant [21 x i8] c"-brightness-contrast\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"+cache\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"-cache\00", align 1
@.str.171 = private unnamed_addr constant [7 x i8] c"+canny\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"-canny\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"+cdl\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"-cdl\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"+channel\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"-channel\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"+charcoal\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"-charcoal\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"+chop\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"-chop\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"+clamp\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"-clamp\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"+clip\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"-clip\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"+clip-mask\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"-clip-mask\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"+clip-path\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"-clip-path\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"+clone\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"-clone\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"+clut\00", align 1
@.str.192 = private unnamed_addr constant [6 x i8] c"-clut\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"+coalesce\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"-coalesce\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"+colorize\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"-colorize\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"+colormap\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"-colormap\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"+color-matrix\00", align 1
@.str.200 = private unnamed_addr constant [14 x i8] c"-color-matrix\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"+colors\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"-colors\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"+colorspace\00", align 1
@.str.204 = private unnamed_addr constant [12 x i8] c"-colorspace\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"+combine\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"-combine\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"+comment\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"-comment\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"+compare\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"-compare\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"+complex\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"-complex\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"+compose\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"-compose\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"+composite\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"-composite\00", align 1
@.str.217 = private unnamed_addr constant [10 x i8] c"+compress\00", align 1
@.str.218 = private unnamed_addr constant [10 x i8] c"-compress\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"+concurrent\00", align 1
@.str.220 = private unnamed_addr constant [12 x i8] c"-concurrent\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"+contrast\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"-contrast\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"+contrast-stretch\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"-contrast-stretch\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"+convolve\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"-convolve\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"+crop\00", align 1
@.str.228 = private unnamed_addr constant [6 x i8] c"-crop\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"+cycle\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"-cycle\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"+debug\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"-debug\00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"+decipher\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"-decipher\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"+deconstruct\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"-deconstruct\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"+define\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"-define\00", align 1
@.str.239 = private unnamed_addr constant [7 x i8] c"+delay\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"-delay\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"+delete\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"-delete\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"+density\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"-density\00", align 1
@.str.245 = private unnamed_addr constant [7 x i8] c"+depth\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"-depth\00", align 1
@.str.247 = private unnamed_addr constant [9 x i8] c"+descend\00", align 1
@.str.248 = private unnamed_addr constant [9 x i8] c"-descend\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"+deskew\00", align 1
@.str.250 = private unnamed_addr constant [8 x i8] c"-deskew\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c"+despeckle\00", align 1
@.str.252 = private unnamed_addr constant [11 x i8] c"-despeckle\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"+direction\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"-direction\00", align 1
@.str.255 = private unnamed_addr constant [10 x i8] c"+displace\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"-displace\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"+display\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"-display\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"+dispose\00", align 1
@.str.260 = private unnamed_addr constant [9 x i8] c"-dispose\00", align 1
@.str.261 = private unnamed_addr constant [25 x i8] c"+dissimilarity-threshold\00", align 1
@.str.262 = private unnamed_addr constant [25 x i8] c"-dissimilarity-threshold\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"+dissolve\00", align 1
@.str.264 = private unnamed_addr constant [10 x i8] c"-dissolve\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"+distort\00", align 1
@.str.266 = private unnamed_addr constant [9 x i8] c"-distort\00", align 1
@.str.267 = private unnamed_addr constant [8 x i8] c"+dither\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"-dither\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"+draw\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"-draw\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"+duplicate\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"-duplicate\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"+duration\00", align 1
@.str.274 = private unnamed_addr constant [10 x i8] c"-duration\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"+edge\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"-edge\00", align 1
@.str.277 = private unnamed_addr constant [8 x i8] c"+emboss\00", align 1
@.str.278 = private unnamed_addr constant [8 x i8] c"-emboss\00", align 1
@.str.279 = private unnamed_addr constant [10 x i8] c"+encipher\00", align 1
@.str.280 = private unnamed_addr constant [10 x i8] c"-encipher\00", align 1
@.str.281 = private unnamed_addr constant [10 x i8] c"+encoding\00", align 1
@.str.282 = private unnamed_addr constant [10 x i8] c"-encoding\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"+endian\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"-endian\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"+enhance\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"-enhance\00", align 1
@.str.287 = private unnamed_addr constant [10 x i8] c"+equalize\00", align 1
@.str.288 = private unnamed_addr constant [10 x i8] c"-equalize\00", align 1
@.str.289 = private unnamed_addr constant [10 x i8] c"+evaluate\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"-evaluate\00", align 1
@.str.291 = private unnamed_addr constant [19 x i8] c"+evaluate-sequence\00", align 1
@.str.292 = private unnamed_addr constant [19 x i8] c"-evaluate-sequence\00", align 1
@.str.293 = private unnamed_addr constant [8 x i8] c"+extent\00", align 1
@.str.294 = private unnamed_addr constant [8 x i8] c"-extent\00", align 1
@.str.295 = private unnamed_addr constant [9 x i8] c"+extract\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"-extract\00", align 1
@.str.297 = private unnamed_addr constant [8 x i8] c"+family\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"-family\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"+features\00", align 1
@.str.300 = private unnamed_addr constant [10 x i8] c"-features\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"+fft\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"-fft\00", align 1
@.str.303 = private unnamed_addr constant [6 x i8] c"+fill\00", align 1
@.str.304 = private unnamed_addr constant [6 x i8] c"-fill\00", align 1
@.str.305 = private unnamed_addr constant [8 x i8] c"+filter\00", align 1
@.str.306 = private unnamed_addr constant [8 x i8] c"-filter\00", align 1
@.str.307 = private unnamed_addr constant [9 x i8] c"+flatten\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"-flatten\00", align 1
@.str.309 = private unnamed_addr constant [6 x i8] c"+flip\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"-flip\00", align 1
@.str.311 = private unnamed_addr constant [6 x i8] c"+flop\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"-flop\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"+floodfill\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"-floodfill\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"+font\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"-font\00", align 1
@.str.317 = private unnamed_addr constant [12 x i8] c"+foreground\00", align 1
@.str.318 = private unnamed_addr constant [12 x i8] c"-foreground\00", align 1
@.str.319 = private unnamed_addr constant [8 x i8] c"+format\00", align 1
@.str.320 = private unnamed_addr constant [8 x i8] c"-format\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"+frame\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"-frame\00", align 1
@.str.323 = private unnamed_addr constant [6 x i8] c"+fuzz\00", align 1
@.str.324 = private unnamed_addr constant [6 x i8] c"-fuzz\00", align 1
@.str.325 = private unnamed_addr constant [4 x i8] c"+fx\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"-fx\00", align 1
@.str.327 = private unnamed_addr constant [7 x i8] c"+gamma\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"-gamma\00", align 1
@.str.329 = private unnamed_addr constant [10 x i8] c"+gaussian\00", align 1
@.str.330 = private unnamed_addr constant [10 x i8] c"-gaussian\00", align 1
@.str.331 = private unnamed_addr constant [15 x i8] c"+gaussian-blur\00", align 1
@.str.332 = private unnamed_addr constant [15 x i8] c"-gaussian-blur\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"+geometry\00", align 1
@.str.334 = private unnamed_addr constant [10 x i8] c"-geometry\00", align 1
@.str.335 = private unnamed_addr constant [9 x i8] c"+gravity\00", align 1
@.str.336 = private unnamed_addr constant [9 x i8] c"-gravity\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"+grayscale\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"-grayscale\00", align 1
@.str.339 = private unnamed_addr constant [15 x i8] c"+green-primary\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"-green-primary\00", align 1
@.str.341 = private unnamed_addr constant [11 x i8] c"+hald-clut\00", align 1
@.str.342 = private unnamed_addr constant [11 x i8] c"-hald-clut\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"+help\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.345 = private unnamed_addr constant [17 x i8] c"+highlight-color\00", align 1
@.str.346 = private unnamed_addr constant [17 x i8] c"-highlight-color\00", align 1
@.str.347 = private unnamed_addr constant [13 x i8] c"+hough-lines\00", align 1
@.str.348 = private unnamed_addr constant [13 x i8] c"-hough-lines\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"+iconGeometry\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"-iconGeometry\00", align 1
@.str.351 = private unnamed_addr constant [8 x i8] c"+iconic\00", align 1
@.str.352 = private unnamed_addr constant [8 x i8] c"-iconic\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"+identify\00", align 1
@.str.354 = private unnamed_addr constant [10 x i8] c"-identify\00", align 1
@.str.355 = private unnamed_addr constant [5 x i8] c"+ift\00", align 1
@.str.356 = private unnamed_addr constant [5 x i8] c"-ift\00", align 1
@.str.357 = private unnamed_addr constant [11 x i8] c"+immutable\00", align 1
@.str.358 = private unnamed_addr constant [11 x i8] c"-immutable\00", align 1
@.str.359 = private unnamed_addr constant [9 x i8] c"+implode\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"-implode\00", align 1
@.str.361 = private unnamed_addr constant [8 x i8] c"+insert\00", align 1
@.str.362 = private unnamed_addr constant [8 x i8] c"-insert\00", align 1
@.str.363 = private unnamed_addr constant [11 x i8] c"+intensity\00", align 1
@.str.364 = private unnamed_addr constant [11 x i8] c"-intensity\00", align 1
@.str.365 = private unnamed_addr constant [8 x i8] c"+intent\00", align 1
@.str.366 = private unnamed_addr constant [8 x i8] c"-intent\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"+interlace\00", align 1
@.str.368 = private unnamed_addr constant [11 x i8] c"-interlace\00", align 1
@.str.369 = private unnamed_addr constant [19 x i8] c"+interline-spacing\00", align 1
@.str.370 = private unnamed_addr constant [19 x i8] c"-interline-spacing\00", align 1
@.str.371 = private unnamed_addr constant [13 x i8] c"+interpolate\00", align 1
@.str.372 = private unnamed_addr constant [13 x i8] c"-interpolate\00", align 1
@.str.373 = private unnamed_addr constant [22 x i8] c"+interpolative-resize\00", align 1
@.str.374 = private unnamed_addr constant [22 x i8] c"-interpolative-resize\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"+interword-spacing\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"-interword-spacing\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"+kerning\00", align 1
@.str.378 = private unnamed_addr constant [9 x i8] c"-kerning\00", align 1
@.str.379 = private unnamed_addr constant [7 x i8] c"+label\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"-label\00", align 1
@.str.381 = private unnamed_addr constant [5 x i8] c"+lat\00", align 1
@.str.382 = private unnamed_addr constant [5 x i8] c"-lat\00", align 1
@.str.383 = private unnamed_addr constant [8 x i8] c"+layers\00", align 1
@.str.384 = private unnamed_addr constant [8 x i8] c"-layers\00", align 1
@.str.385 = private unnamed_addr constant [7 x i8] c"+level\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"-level\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"+level-colors\00", align 1
@.str.388 = private unnamed_addr constant [14 x i8] c"-level-colors\00", align 1
@.str.389 = private unnamed_addr constant [7 x i8] c"+limit\00", align 1
@.str.390 = private unnamed_addr constant [7 x i8] c"-limit\00", align 1
@.str.391 = private unnamed_addr constant [16 x i8] c"+linear-stretch\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"-linear-stretch\00", align 1
@.str.393 = private unnamed_addr constant [11 x i8] c"+linewidth\00", align 1
@.str.394 = private unnamed_addr constant [11 x i8] c"-linewidth\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"+liquid-rescale\00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c"-liquid-rescale\00", align 1
@.str.397 = private unnamed_addr constant [6 x i8] c"+list\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"-list\00", align 1
@.str.399 = private unnamed_addr constant [5 x i8] c"+log\00", align 1
@.str.400 = private unnamed_addr constant [5 x i8] c"-log\00", align 1
@.str.401 = private unnamed_addr constant [6 x i8] c"+loop\00", align 1
@.str.402 = private unnamed_addr constant [6 x i8] c"-loop\00", align 1
@.str.403 = private unnamed_addr constant [16 x i8] c"+lowlight-color\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"-lowlight-color\00", align 1
@.str.405 = private unnamed_addr constant [9 x i8] c"+magnify\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c"-magnify\00", align 1
@.str.407 = private unnamed_addr constant [5 x i8] c"+map\00", align 1
@.str.408 = private unnamed_addr constant [5 x i8] c"-map\00", align 1
@.str.409 = private unnamed_addr constant [6 x i8] c"+mask\00", align 1
@.str.410 = private unnamed_addr constant [6 x i8] c"-mask\00", align 1
@.str.411 = private unnamed_addr constant [7 x i8] c"+matte\00", align 1
@.str.412 = private unnamed_addr constant [7 x i8] c"-matte\00", align 1
@.str.413 = private unnamed_addr constant [12 x i8] c"+mattecolor\00", align 1
@.str.414 = private unnamed_addr constant [12 x i8] c"-mattecolor\00", align 1
@.str.415 = private unnamed_addr constant [9 x i8] c"+maximum\00", align 1
@.str.416 = private unnamed_addr constant [9 x i8] c"-maximum\00", align 1
@.str.417 = private unnamed_addr constant [12 x i8] c"+mean-shift\00", align 1
@.str.418 = private unnamed_addr constant [12 x i8] c"-mean-shift\00", align 1
@.str.419 = private unnamed_addr constant [8 x i8] c"+median\00", align 1
@.str.420 = private unnamed_addr constant [8 x i8] c"-median\00", align 1
@.str.421 = private unnamed_addr constant [8 x i8] c"+metric\00", align 1
@.str.422 = private unnamed_addr constant [8 x i8] c"-metric\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"+minimum\00", align 1
@.str.424 = private unnamed_addr constant [9 x i8] c"-minimum\00", align 1
@.str.425 = private unnamed_addr constant [6 x i8] c"+mode\00", align 1
@.str.426 = private unnamed_addr constant [6 x i8] c"-mode\00", align 1
@.str.427 = private unnamed_addr constant [10 x i8] c"+modulate\00", align 1
@.str.428 = private unnamed_addr constant [10 x i8] c"-modulate\00", align 1
@.str.429 = private unnamed_addr constant [9 x i8] c"+moments\00", align 1
@.str.430 = private unnamed_addr constant [9 x i8] c"-moments\00", align 1
@.str.431 = private unnamed_addr constant [9 x i8] c"+monitor\00", align 1
@.str.432 = private unnamed_addr constant [9 x i8] c"-monitor\00", align 1
@.str.433 = private unnamed_addr constant [12 x i8] c"+monochrome\00", align 1
@.str.434 = private unnamed_addr constant [12 x i8] c"-monochrome\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"+morph\00", align 1
@.str.436 = private unnamed_addr constant [7 x i8] c"-morph\00", align 1
@.str.437 = private unnamed_addr constant [12 x i8] c"+morphology\00", align 1
@.str.438 = private unnamed_addr constant [12 x i8] c"-morphology\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"+mosaic\00", align 1
@.str.440 = private unnamed_addr constant [8 x i8] c"-mosaic\00", align 1
@.str.441 = private unnamed_addr constant [13 x i8] c"+motion-blur\00", align 1
@.str.442 = private unnamed_addr constant [13 x i8] c"-motion-blur\00", align 1
@.str.443 = private unnamed_addr constant [6 x i8] c"+name\00", align 1
@.str.444 = private unnamed_addr constant [6 x i8] c"-name\00", align 1
@.str.445 = private unnamed_addr constant [8 x i8] c"+negate\00", align 1
@.str.446 = private unnamed_addr constant [8 x i8] c"-negate\00", align 1
@.str.447 = private unnamed_addr constant [7 x i8] c"+noise\00", align 1
@.str.448 = private unnamed_addr constant [7 x i8] c"-noise\00", align 1
@.str.449 = private unnamed_addr constant [6 x i8] c"+noop\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"-noop\00", align 1
@.str.451 = private unnamed_addr constant [11 x i8] c"+normalize\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"-normalize\00", align 1
@.str.453 = private unnamed_addr constant [8 x i8] c"+opaque\00", align 1
@.str.454 = private unnamed_addr constant [8 x i8] c"-opaque\00", align 1
@.str.455 = private unnamed_addr constant [16 x i8] c"+ordered-dither\00", align 1
@.str.456 = private unnamed_addr constant [16 x i8] c"-ordered-dither\00", align 1
@.str.457 = private unnamed_addr constant [8 x i8] c"+orient\00", align 1
@.str.458 = private unnamed_addr constant [8 x i8] c"-orient\00", align 1
@.str.459 = private unnamed_addr constant [8 x i8] c"+origin\00", align 1
@.str.460 = private unnamed_addr constant [8 x i8] c"-origin\00", align 1
@.str.461 = private unnamed_addr constant [6 x i8] c"+page\00", align 1
@.str.462 = private unnamed_addr constant [6 x i8] c"-page\00", align 1
@.str.463 = private unnamed_addr constant [7 x i8] c"+paint\00", align 1
@.str.464 = private unnamed_addr constant [7 x i8] c"-paint\00", align 1
@.str.465 = private unnamed_addr constant [6 x i8] c"+path\00", align 1
@.str.466 = private unnamed_addr constant [6 x i8] c"-path\00", align 1
@.str.467 = private unnamed_addr constant [7 x i8] c"+pause\00", align 1
@.str.468 = private unnamed_addr constant [7 x i8] c"-pause\00", align 1
@.str.469 = private unnamed_addr constant [12 x i8] c"+passphrase\00", align 1
@.str.470 = private unnamed_addr constant [12 x i8] c"-passphrase\00", align 1
@.str.471 = private unnamed_addr constant [5 x i8] c"+pen\00", align 1
@.str.472 = private unnamed_addr constant [5 x i8] c"-pen\00", align 1
@.str.473 = private unnamed_addr constant [6 x i8] c"+ping\00", align 1
@.str.474 = private unnamed_addr constant [6 x i8] c"-ping\00", align 1
@.str.475 = private unnamed_addr constant [6 x i8] c"+poly\00", align 1
@.str.476 = private unnamed_addr constant [6 x i8] c"-poly\00", align 1
@.str.477 = private unnamed_addr constant [11 x i8] c"+pointsize\00", align 1
@.str.478 = private unnamed_addr constant [11 x i8] c"-pointsize\00", align 1
@.str.479 = private unnamed_addr constant [10 x i8] c"+polaroid\00", align 1
@.str.480 = private unnamed_addr constant [10 x i8] c"-polaroid\00", align 1
@.str.481 = private unnamed_addr constant [11 x i8] c"+posterize\00", align 1
@.str.482 = private unnamed_addr constant [11 x i8] c"-posterize\00", align 1
@.str.483 = private unnamed_addr constant [9 x i8] c"+preview\00", align 1
@.str.484 = private unnamed_addr constant [9 x i8] c"-preview\00", align 1
@.str.485 = private unnamed_addr constant [7 x i8] c"+print\00", align 1
@.str.486 = private unnamed_addr constant [7 x i8] c"-print\00", align 1
@.str.487 = private unnamed_addr constant [9 x i8] c"+process\00", align 1
@.str.488 = private unnamed_addr constant [9 x i8] c"-process\00", align 1
@.str.489 = private unnamed_addr constant [9 x i8] c"+profile\00", align 1
@.str.490 = private unnamed_addr constant [9 x i8] c"-profile\00", align 1
@.str.491 = private unnamed_addr constant [9 x i8] c"+quality\00", align 1
@.str.492 = private unnamed_addr constant [9 x i8] c"-quality\00", align 1
@.str.493 = private unnamed_addr constant [10 x i8] c"+quantize\00", align 1
@.str.494 = private unnamed_addr constant [10 x i8] c"-quantize\00", align 1
@.str.495 = private unnamed_addr constant [7 x i8] c"+quiet\00", align 1
@.str.496 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.497 = private unnamed_addr constant [13 x i8] c"+radial-blur\00", align 1
@.str.498 = private unnamed_addr constant [13 x i8] c"-radial-blur\00", align 1
@.str.499 = private unnamed_addr constant [7 x i8] c"+raise\00", align 1
@.str.500 = private unnamed_addr constant [7 x i8] c"-raise\00", align 1
@.str.501 = private unnamed_addr constant [18 x i8] c"+random-threshold\00", align 1
@.str.502 = private unnamed_addr constant [18 x i8] c"-random-threshold\00", align 1
@.str.503 = private unnamed_addr constant [9 x i8] c"+recolor\00", align 1
@.str.504 = private unnamed_addr constant [9 x i8] c"-recolor\00", align 1
@.str.505 = private unnamed_addr constant [13 x i8] c"+red-primary\00", align 1
@.str.506 = private unnamed_addr constant [13 x i8] c"-red-primary\00", align 1
@.str.507 = private unnamed_addr constant [17 x i8] c"+regard-warnings\00", align 1
@.str.508 = private unnamed_addr constant [17 x i8] c"-regard-warnings\00", align 1
@.str.509 = private unnamed_addr constant [8 x i8] c"+region\00", align 1
@.str.510 = private unnamed_addr constant [8 x i8] c"-region\00", align 1
@.str.511 = private unnamed_addr constant [8 x i8] c"+remote\00", align 1
@.str.512 = private unnamed_addr constant [8 x i8] c"-remote\00", align 1
@.str.513 = private unnamed_addr constant [8 x i8] c"+render\00", align 1
@.str.514 = private unnamed_addr constant [8 x i8] c"-render\00", align 1
@.str.515 = private unnamed_addr constant [7 x i8] c"+remap\00", align 1
@.str.516 = private unnamed_addr constant [7 x i8] c"-remap\00", align 1
@.str.517 = private unnamed_addr constant [8 x i8] c"+repage\00", align 1
@.str.518 = private unnamed_addr constant [8 x i8] c"-repage\00", align 1
@.str.519 = private unnamed_addr constant [10 x i8] c"+resample\00", align 1
@.str.520 = private unnamed_addr constant [10 x i8] c"-resample\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"+resize\00", align 1
@.str.522 = private unnamed_addr constant [8 x i8] c"-resize\00", align 1
@.str.523 = private unnamed_addr constant [21 x i8] c"+respect-parenthesis\00", align 1
@.str.524 = private unnamed_addr constant [21 x i8] c"-respect-parenthesis\00", align 1
@.str.525 = private unnamed_addr constant [9 x i8] c"+reverse\00", align 1
@.str.526 = private unnamed_addr constant [9 x i8] c"-reverse\00", align 1
@.str.527 = private unnamed_addr constant [6 x i8] c"+roll\00", align 1
@.str.528 = private unnamed_addr constant [6 x i8] c"-roll\00", align 1
@.str.529 = private unnamed_addr constant [8 x i8] c"+rotate\00", align 1
@.str.530 = private unnamed_addr constant [8 x i8] c"-rotate\00", align 1
@.str.531 = private unnamed_addr constant [17 x i8] c"-rotational-blur\00", align 1
@.str.532 = private unnamed_addr constant [8 x i8] c"+sample\00", align 1
@.str.533 = private unnamed_addr constant [8 x i8] c"-sample\00", align 1
@.str.534 = private unnamed_addr constant [17 x i8] c"+sampling-factor\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"-sampling-factor\00", align 1
@.str.536 = private unnamed_addr constant [6 x i8] c"+sans\00", align 1
@.str.537 = private unnamed_addr constant [6 x i8] c"-sans\00", align 1
@.str.538 = private unnamed_addr constant [7 x i8] c"+sans0\00", align 1
@.str.539 = private unnamed_addr constant [7 x i8] c"-sans0\00", align 1
@.str.540 = private unnamed_addr constant [7 x i8] c"+sans2\00", align 1
@.str.541 = private unnamed_addr constant [7 x i8] c"-sans2\00", align 1
@.str.542 = private unnamed_addr constant [7 x i8] c"+scale\00", align 1
@.str.543 = private unnamed_addr constant [7 x i8] c"-scale\00", align 1
@.str.544 = private unnamed_addr constant [7 x i8] c"+scene\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"-scene\00", align 1
@.str.546 = private unnamed_addr constant [8 x i8] c"+scenes\00", align 1
@.str.547 = private unnamed_addr constant [8 x i8] c"-scenes\00", align 1
@.str.548 = private unnamed_addr constant [8 x i8] c"+screen\00", align 1
@.str.549 = private unnamed_addr constant [8 x i8] c"-screen\00", align 1
@.str.550 = private unnamed_addr constant [6 x i8] c"+seed\00", align 1
@.str.551 = private unnamed_addr constant [6 x i8] c"-seed\00", align 1
@.str.552 = private unnamed_addr constant [9 x i8] c"+segment\00", align 1
@.str.553 = private unnamed_addr constant [9 x i8] c"-segment\00", align 1
@.str.554 = private unnamed_addr constant [16 x i8] c"+selective-blur\00", align 1
@.str.555 = private unnamed_addr constant [16 x i8] c"-selective-blur\00", align 1
@.str.556 = private unnamed_addr constant [10 x i8] c"+separate\00", align 1
@.str.557 = private unnamed_addr constant [10 x i8] c"-separate\00", align 1
@.str.558 = private unnamed_addr constant [12 x i8] c"+sepia-tone\00", align 1
@.str.559 = private unnamed_addr constant [12 x i8] c"-sepia-tone\00", align 1
@.str.560 = private unnamed_addr constant [5 x i8] c"+set\00", align 1
@.str.561 = private unnamed_addr constant [5 x i8] c"-set\00", align 1
@.str.562 = private unnamed_addr constant [7 x i8] c"+shade\00", align 1
@.str.563 = private unnamed_addr constant [7 x i8] c"-shade\00", align 1
@.str.564 = private unnamed_addr constant [8 x i8] c"+shadow\00", align 1
@.str.565 = private unnamed_addr constant [8 x i8] c"-shadow\00", align 1
@.str.566 = private unnamed_addr constant [15 x i8] c"+shared-memory\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"-shared-memory\00", align 1
@.str.568 = private unnamed_addr constant [9 x i8] c"+sharpen\00", align 1
@.str.569 = private unnamed_addr constant [9 x i8] c"-sharpen\00", align 1
@.str.570 = private unnamed_addr constant [7 x i8] c"+shave\00", align 1
@.str.571 = private unnamed_addr constant [7 x i8] c"-shave\00", align 1
@.str.572 = private unnamed_addr constant [7 x i8] c"+shear\00", align 1
@.str.573 = private unnamed_addr constant [7 x i8] c"-shear\00", align 1
@.str.574 = private unnamed_addr constant [20 x i8] c"+sigmoidal-contrast\00", align 1
@.str.575 = private unnamed_addr constant [20 x i8] c"-sigmoidal-contrast\00", align 1
@.str.576 = private unnamed_addr constant [8 x i8] c"+silent\00", align 1
@.str.577 = private unnamed_addr constant [8 x i8] c"-silent\00", align 1
@.str.578 = private unnamed_addr constant [22 x i8] c"+similarity-threshold\00", align 1
@.str.579 = private unnamed_addr constant [22 x i8] c"-similarity-threshold\00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"+size\00", align 1
@.str.581 = private unnamed_addr constant [6 x i8] c"-size\00", align 1
@.str.582 = private unnamed_addr constant [8 x i8] c"+sketch\00", align 1
@.str.583 = private unnamed_addr constant [8 x i8] c"-sketch\00", align 1
@.str.584 = private unnamed_addr constant [7 x i8] c"+smush\00", align 1
@.str.585 = private unnamed_addr constant [7 x i8] c"-smush\00", align 1
@.str.586 = private unnamed_addr constant [7 x i8] c"+snaps\00", align 1
@.str.587 = private unnamed_addr constant [7 x i8] c"-snaps\00", align 1
@.str.588 = private unnamed_addr constant [10 x i8] c"+solarize\00", align 1
@.str.589 = private unnamed_addr constant [10 x i8] c"-solarize\00", align 1
@.str.590 = private unnamed_addr constant [14 x i8] c"+sparse-color\00", align 1
@.str.591 = private unnamed_addr constant [14 x i8] c"-sparse-color\00", align 1
@.str.592 = private unnamed_addr constant [8 x i8] c"+splice\00", align 1
@.str.593 = private unnamed_addr constant [8 x i8] c"-splice\00", align 1
@.str.594 = private unnamed_addr constant [8 x i8] c"+spread\00", align 1
@.str.595 = private unnamed_addr constant [8 x i8] c"-spread\00", align 1
@.str.596 = private unnamed_addr constant [11 x i8] c"+statistic\00", align 1
@.str.597 = private unnamed_addr constant [11 x i8] c"-statistic\00", align 1
@.str.598 = private unnamed_addr constant [9 x i8] c"+stegano\00", align 1
@.str.599 = private unnamed_addr constant [9 x i8] c"-stegano\00", align 1
@.str.600 = private unnamed_addr constant [8 x i8] c"+stereo\00", align 1
@.str.601 = private unnamed_addr constant [8 x i8] c"-stereo\00", align 1
@.str.602 = private unnamed_addr constant [9 x i8] c"+stretch\00", align 1
@.str.603 = private unnamed_addr constant [9 x i8] c"-stretch\00", align 1
@.str.604 = private unnamed_addr constant [7 x i8] c"+strip\00", align 1
@.str.605 = private unnamed_addr constant [7 x i8] c"-strip\00", align 1
@.str.606 = private unnamed_addr constant [8 x i8] c"+stroke\00", align 1
@.str.607 = private unnamed_addr constant [8 x i8] c"-stroke\00", align 1
@.str.608 = private unnamed_addr constant [13 x i8] c"+strokewidth\00", align 1
@.str.609 = private unnamed_addr constant [13 x i8] c"-strokewidth\00", align 1
@.str.610 = private unnamed_addr constant [7 x i8] c"+style\00", align 1
@.str.611 = private unnamed_addr constant [7 x i8] c"-style\00", align 1
@.str.612 = private unnamed_addr constant [17 x i8] c"+subimage-search\00", align 1
@.str.613 = private unnamed_addr constant [17 x i8] c"-subimage-search\00", align 1
@.str.614 = private unnamed_addr constant [6 x i8] c"+swap\00", align 1
@.str.615 = private unnamed_addr constant [6 x i8] c"-swap\00", align 1
@.str.616 = private unnamed_addr constant [7 x i8] c"+swirl\00", align 1
@.str.617 = private unnamed_addr constant [7 x i8] c"-swirl\00", align 1
@.str.618 = private unnamed_addr constant [13 x i8] c"+synchronize\00", align 1
@.str.619 = private unnamed_addr constant [13 x i8] c"-synchronize\00", align 1
@.str.620 = private unnamed_addr constant [7 x i8] c"+taint\00", align 1
@.str.621 = private unnamed_addr constant [7 x i8] c"-taint\00", align 1
@.str.622 = private unnamed_addr constant [11 x i8] c"+text-font\00", align 1
@.str.623 = private unnamed_addr constant [11 x i8] c"-text-font\00", align 1
@.str.624 = private unnamed_addr constant [9 x i8] c"+texture\00", align 1
@.str.625 = private unnamed_addr constant [9 x i8] c"-texture\00", align 1
@.str.626 = private unnamed_addr constant [11 x i8] c"+threshold\00", align 1
@.str.627 = private unnamed_addr constant [11 x i8] c"-threshold\00", align 1
@.str.628 = private unnamed_addr constant [11 x i8] c"+thumbnail\00", align 1
@.str.629 = private unnamed_addr constant [11 x i8] c"-thumbnail\00", align 1
@.str.630 = private unnamed_addr constant [6 x i8] c"+tile\00", align 1
@.str.631 = private unnamed_addr constant [6 x i8] c"-tile\00", align 1
@.str.632 = private unnamed_addr constant [13 x i8] c"+tile-offset\00", align 1
@.str.633 = private unnamed_addr constant [13 x i8] c"-tile-offset\00", align 1
@.str.634 = private unnamed_addr constant [6 x i8] c"+tint\00", align 1
@.str.635 = private unnamed_addr constant [6 x i8] c"-tint\00", align 1
@.str.636 = private unnamed_addr constant [7 x i8] c"+title\00", align 1
@.str.637 = private unnamed_addr constant [7 x i8] c"-title\00", align 1
@.str.638 = private unnamed_addr constant [11 x i8] c"+transform\00", align 1
@.str.639 = private unnamed_addr constant [11 x i8] c"-transform\00", align 1
@.str.640 = private unnamed_addr constant [13 x i8] c"+transparent\00", align 1
@.str.641 = private unnamed_addr constant [13 x i8] c"-transparent\00", align 1
@.str.642 = private unnamed_addr constant [19 x i8] c"+transparent-color\00", align 1
@.str.643 = private unnamed_addr constant [19 x i8] c"-transparent-color\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"+transpose\00", align 1
@.str.645 = private unnamed_addr constant [11 x i8] c"-transpose\00", align 1
@.str.646 = private unnamed_addr constant [12 x i8] c"+transverse\00", align 1
@.str.647 = private unnamed_addr constant [12 x i8] c"-transverse\00", align 1
@.str.648 = private unnamed_addr constant [11 x i8] c"+treedepth\00", align 1
@.str.649 = private unnamed_addr constant [11 x i8] c"-treedepth\00", align 1
@.str.650 = private unnamed_addr constant [6 x i8] c"+trim\00", align 1
@.str.651 = private unnamed_addr constant [6 x i8] c"-trim\00", align 1
@.str.652 = private unnamed_addr constant [6 x i8] c"+type\00", align 1
@.str.653 = private unnamed_addr constant [6 x i8] c"-type\00", align 1
@.str.654 = private unnamed_addr constant [12 x i8] c"+undercolor\00", align 1
@.str.655 = private unnamed_addr constant [12 x i8] c"-undercolor\00", align 1
@.str.656 = private unnamed_addr constant [8 x i8] c"+unique\00", align 1
@.str.657 = private unnamed_addr constant [8 x i8] c"-unique\00", align 1
@.str.658 = private unnamed_addr constant [15 x i8] c"+unique-colors\00", align 1
@.str.659 = private unnamed_addr constant [15 x i8] c"-unique-colors\00", align 1
@.str.660 = private unnamed_addr constant [7 x i8] c"+units\00", align 1
@.str.661 = private unnamed_addr constant [7 x i8] c"-units\00", align 1
@.str.662 = private unnamed_addr constant [9 x i8] c"+unsharp\00", align 1
@.str.663 = private unnamed_addr constant [9 x i8] c"-unsharp\00", align 1
@.str.664 = private unnamed_addr constant [8 x i8] c"+update\00", align 1
@.str.665 = private unnamed_addr constant [8 x i8] c"-update\00", align 1
@.str.666 = private unnamed_addr constant [12 x i8] c"+use-pixmap\00", align 1
@.str.667 = private unnamed_addr constant [12 x i8] c"-use-pixmap\00", align 1
@.str.668 = private unnamed_addr constant [9 x i8] c"+verbose\00", align 1
@.str.669 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.670 = private unnamed_addr constant [9 x i8] c"+version\00", align 1
@.str.671 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.672 = private unnamed_addr constant [6 x i8] c"+view\00", align 1
@.str.673 = private unnamed_addr constant [6 x i8] c"-view\00", align 1
@.str.674 = private unnamed_addr constant [10 x i8] c"+vignette\00", align 1
@.str.675 = private unnamed_addr constant [10 x i8] c"-vignette\00", align 1
@.str.676 = private unnamed_addr constant [15 x i8] c"+virtual-pixel\00", align 1
@.str.677 = private unnamed_addr constant [15 x i8] c"-virtual-pixel\00", align 1
@.str.678 = private unnamed_addr constant [8 x i8] c"+visual\00", align 1
@.str.679 = private unnamed_addr constant [8 x i8] c"-visual\00", align 1
@.str.680 = private unnamed_addr constant [11 x i8] c"+watermark\00", align 1
@.str.681 = private unnamed_addr constant [11 x i8] c"-watermark\00", align 1
@.str.682 = private unnamed_addr constant [6 x i8] c"+wave\00", align 1
@.str.683 = private unnamed_addr constant [6 x i8] c"-wave\00", align 1
@.str.684 = private unnamed_addr constant [8 x i8] c"+weight\00", align 1
@.str.685 = private unnamed_addr constant [8 x i8] c"-weight\00", align 1
@.str.686 = private unnamed_addr constant [13 x i8] c"+white-point\00", align 1
@.str.687 = private unnamed_addr constant [13 x i8] c"-white-point\00", align 1
@.str.688 = private unnamed_addr constant [17 x i8] c"+white-threshold\00", align 1
@.str.689 = private unnamed_addr constant [17 x i8] c"-white-threshold\00", align 1
@.str.690 = private unnamed_addr constant [8 x i8] c"+window\00", align 1
@.str.691 = private unnamed_addr constant [8 x i8] c"-window\00", align 1
@.str.692 = private unnamed_addr constant [14 x i8] c"+window-group\00", align 1
@.str.693 = private unnamed_addr constant [14 x i8] c"-window-group\00", align 1
@.str.694 = private unnamed_addr constant [7 x i8] c"+write\00", align 1
@.str.695 = private unnamed_addr constant [7 x i8] c"-write\00", align 1
@.str.696 = private unnamed_addr constant [4 x i8] c"Add\00", align 1
@.str.697 = private unnamed_addr constant [10 x i8] c"Conjugate\00", align 1
@.str.698 = private unnamed_addr constant [7 x i8] c"Divide\00", align 1
@.str.699 = private unnamed_addr constant [15 x i8] c"MagnitudePhase\00", align 1
@.str.700 = private unnamed_addr constant [9 x i8] c"Multiply\00", align 1
@.str.701 = private unnamed_addr constant [14 x i8] c"RealImaginary\00", align 1
@.str.702 = private unnamed_addr constant [9 x i8] c"Subtract\00", align 1
@.str.703 = private unnamed_addr constant [5 x i8] c"Atop\00", align 1
@.str.704 = private unnamed_addr constant [6 x i8] c"Blend\00", align 1
@.str.705 = private unnamed_addr constant [5 x i8] c"Blur\00", align 1
@.str.706 = private unnamed_addr constant [8 x i8] c"Bumpmap\00", align 1
@.str.707 = private unnamed_addr constant [11 x i8] c"ChangeMask\00", align 1
@.str.708 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.709 = private unnamed_addr constant [10 x i8] c"ColorBurn\00", align 1
@.str.710 = private unnamed_addr constant [11 x i8] c"ColorDodge\00", align 1
@.str.711 = private unnamed_addr constant [9 x i8] c"Colorize\00", align 1
@.str.712 = private unnamed_addr constant [10 x i8] c"CopyBlack\00", align 1
@.str.713 = private unnamed_addr constant [9 x i8] c"CopyBlue\00", align 1
@.str.714 = private unnamed_addr constant [9 x i8] c"CopyCyan\00", align 1
@.str.715 = private unnamed_addr constant [10 x i8] c"CopyGreen\00", align 1
@.str.716 = private unnamed_addr constant [12 x i8] c"CopyMagenta\00", align 1
@.str.717 = private unnamed_addr constant [12 x i8] c"CopyOpacity\00", align 1
@.str.718 = private unnamed_addr constant [8 x i8] c"CopyRed\00", align 1
@.str.719 = private unnamed_addr constant [11 x i8] c"CopyYellow\00", align 1
@.str.720 = private unnamed_addr constant [7 x i8] c"Darken\00", align 1
@.str.721 = private unnamed_addr constant [16 x i8] c"DarkenIntensity\00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"DivideDst\00", align 1
@.str.723 = private unnamed_addr constant [10 x i8] c"DivideSrc\00", align 1
@.str.724 = private unnamed_addr constant [4 x i8] c"Dst\00", align 1
@.str.725 = private unnamed_addr constant [11 x i8] c"Difference\00", align 1
@.str.726 = private unnamed_addr constant [9 x i8] c"Displace\00", align 1
@.str.727 = private unnamed_addr constant [9 x i8] c"Dissolve\00", align 1
@.str.728 = private unnamed_addr constant [8 x i8] c"Distort\00", align 1
@.str.729 = private unnamed_addr constant [8 x i8] c"DstAtop\00", align 1
@.str.730 = private unnamed_addr constant [6 x i8] c"DstIn\00", align 1
@.str.731 = private unnamed_addr constant [7 x i8] c"DstOut\00", align 1
@.str.732 = private unnamed_addr constant [8 x i8] c"DstOver\00", align 1
@.str.733 = private unnamed_addr constant [10 x i8] c"Exclusion\00", align 1
@.str.734 = private unnamed_addr constant [10 x i8] c"HardLight\00", align 1
@.str.735 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.736 = private unnamed_addr constant [8 x i8] c"Lighten\00", align 1
@.str.737 = private unnamed_addr constant [17 x i8] c"LightenIntensity\00", align 1
@.str.738 = private unnamed_addr constant [11 x i8] c"LinearBurn\00", align 1
@.str.739 = private unnamed_addr constant [12 x i8] c"LinearDodge\00", align 1
@.str.740 = private unnamed_addr constant [12 x i8] c"LinearLight\00", align 1
@.str.741 = private unnamed_addr constant [9 x i8] c"Luminize\00", align 1
@.str.742 = private unnamed_addr constant [12 x i8] c"Mathematics\00", align 1
@.str.743 = private unnamed_addr constant [9 x i8] c"MinusDst\00", align 1
@.str.744 = private unnamed_addr constant [9 x i8] c"MinusSrc\00", align 1
@.str.745 = private unnamed_addr constant [9 x i8] c"Modulate\00", align 1
@.str.746 = private unnamed_addr constant [11 x i8] c"ModulusAdd\00", align 1
@.str.747 = private unnamed_addr constant [16 x i8] c"ModulusSubtract\00", align 1
@.str.748 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.749 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.750 = private unnamed_addr constant [8 x i8] c"Overlay\00", align 1
@.str.751 = private unnamed_addr constant [5 x i8] c"Over\00", align 1
@.str.752 = private unnamed_addr constant [12 x i8] c"PegtopLight\00", align 1
@.str.753 = private unnamed_addr constant [9 x i8] c"PinLight\00", align 1
@.str.754 = private unnamed_addr constant [5 x i8] c"Plus\00", align 1
@.str.755 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.756 = private unnamed_addr constant [9 x i8] c"Saturate\00", align 1
@.str.757 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.758 = private unnamed_addr constant [10 x i8] c"SoftLight\00", align 1
@.str.759 = private unnamed_addr constant [4 x i8] c"Src\00", align 1
@.str.760 = private unnamed_addr constant [8 x i8] c"SrcAtop\00", align 1
@.str.761 = private unnamed_addr constant [6 x i8] c"SrcIn\00", align 1
@.str.762 = private unnamed_addr constant [7 x i8] c"SrcOut\00", align 1
@.str.763 = private unnamed_addr constant [8 x i8] c"SrcOver\00", align 1
@.str.764 = private unnamed_addr constant [11 x i8] c"VividLight\00", align 1
@.str.765 = private unnamed_addr constant [4 x i8] c"Xor\00", align 1
@.str.766 = private unnamed_addr constant [6 x i8] c"Minus\00", align 1
@.str.767 = private unnamed_addr constant [10 x i8] c"Threshold\00", align 1
@.str.768 = private unnamed_addr constant [4 x i8] c"B44\00", align 1
@.str.769 = private unnamed_addr constant [5 x i8] c"B44A\00", align 1
@.str.770 = private unnamed_addr constant [5 x i8] c"BZip\00", align 1
@.str.771 = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@.str.772 = private unnamed_addr constant [5 x i8] c"DXT3\00", align 1
@.str.773 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@.str.774 = private unnamed_addr constant [4 x i8] c"Fax\00", align 1
@.str.775 = private unnamed_addr constant [7 x i8] c"Group4\00", align 1
@.str.776 = private unnamed_addr constant [6 x i8] c"JBIG1\00", align 1
@.str.777 = private unnamed_addr constant [6 x i8] c"JBIG2\00", align 1
@.str.778 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.779 = private unnamed_addr constant [9 x i8] c"JPEG2000\00", align 1
@.str.780 = private unnamed_addr constant [9 x i8] c"Lossless\00", align 1
@.str.781 = private unnamed_addr constant [13 x i8] c"LosslessJPEG\00", align 1
@.str.782 = private unnamed_addr constant [5 x i8] c"LZMA\00", align 1
@.str.783 = private unnamed_addr constant [4 x i8] c"LZW\00", align 1
@.str.784 = private unnamed_addr constant [4 x i8] c"Piz\00", align 1
@.str.785 = private unnamed_addr constant [6 x i8] c"Pxr24\00", align 1
@.str.786 = private unnamed_addr constant [4 x i8] c"RLE\00", align 1
@.str.787 = private unnamed_addr constant [4 x i8] c"Zip\00", align 1
@.str.788 = private unnamed_addr constant [17 x i8] c"RunlengthEncoded\00", align 1
@.str.789 = private unnamed_addr constant [5 x i8] c"ZipS\00", align 1
@.str.790 = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.791 = private unnamed_addr constant [5 x i8] c"Long\00", align 1
@.str.792 = private unnamed_addr constant [6 x i8] c"Short\00", align 1
@.str.793 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.794 = private unnamed_addr constant [9 x i8] c"Annotate\00", align 1
@.str.795 = private unnamed_addr constant [11 x i8] c"Accelerate\00", align 1
@.str.796 = private unnamed_addr constant [5 x i8] c"Blob\00", align 1
@.str.797 = private unnamed_addr constant [6 x i8] c"Cache\00", align 1
@.str.798 = private unnamed_addr constant [6 x i8] c"Coder\00", align 1
@.str.799 = private unnamed_addr constant [10 x i8] c"Configure\00", align 1
@.str.800 = private unnamed_addr constant [10 x i8] c"Deprecate\00", align 1
@.str.801 = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@.str.802 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.803 = private unnamed_addr constant [7 x i8] c"Locale\00", align 1
@.str.804 = private unnamed_addr constant [7 x i8] c"Module\00", align 1
@.str.805 = private unnamed_addr constant [7 x i8] c"Policy\00", align 1
@.str.806 = private unnamed_addr constant [9 x i8] c"Resource\00", align 1
@.str.807 = private unnamed_addr constant [6 x i8] c"Trace\00", align 1
@.str.808 = private unnamed_addr constant [10 x i8] c"Transform\00", align 1
@.str.809 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.810 = private unnamed_addr constant [5 x i8] c"Wand\00", align 1
@.str.811 = private unnamed_addr constant [4 x i8] c"X11\00", align 1
@.str.812 = private unnamed_addr constant [12 x i8] c"LineThrough\00", align 1
@.str.813 = private unnamed_addr constant [9 x i8] c"Overline\00", align 1
@.str.814 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@.str.815 = private unnamed_addr constant [14 x i8] c"right-to-left\00", align 1
@.str.816 = private unnamed_addr constant [14 x i8] c"left-to-right\00", align 1
@.str.817 = private unnamed_addr constant [9 x i8] c"Previous\00", align 1
@.str.818 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.819 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.820 = private unnamed_addr constant [7 x i8] c"Affine\00", align 1
@.str.821 = private unnamed_addr constant [17 x i8] c"AffineProjection\00", align 1
@.str.822 = private unnamed_addr constant [21 x i8] c"ScaleRotateTranslate\00", align 1
@.str.823 = private unnamed_addr constant [4 x i8] c"SRT\00", align 1
@.str.824 = private unnamed_addr constant [12 x i8] c"Perspective\00", align 1
@.str.825 = private unnamed_addr constant [22 x i8] c"PerspectiveProjection\00", align 1
@.str.826 = private unnamed_addr constant [9 x i8] c"Bilinear\00", align 1
@.str.827 = private unnamed_addr constant [16 x i8] c"BilinearForward\00", align 1
@.str.828 = private unnamed_addr constant [16 x i8] c"BilinearReverse\00", align 1
@.str.829 = private unnamed_addr constant [11 x i8] c"Polynomial\00", align 1
@.str.830 = private unnamed_addr constant [4 x i8] c"Arc\00", align 1
@.str.831 = private unnamed_addr constant [6 x i8] c"Polar\00", align 1
@.str.832 = private unnamed_addr constant [8 x i8] c"DePolar\00", align 1
@.str.833 = private unnamed_addr constant [7 x i8] c"Barrel\00", align 1
@.str.834 = private unnamed_addr constant [15 x i8] c"Cylinder2Plane\00", align 1
@.str.835 = private unnamed_addr constant [15 x i8] c"Plane2Cylinder\00", align 1
@.str.836 = private unnamed_addr constant [14 x i8] c"BarrelInverse\00", align 1
@.str.837 = private unnamed_addr constant [9 x i8] c"Shepards\00", align 1
@.str.838 = private unnamed_addr constant [7 x i8] c"Resize\00", align 1
@.str.839 = private unnamed_addr constant [15 x i8] c"FloydSteinberg\00", align 1
@.str.840 = private unnamed_addr constant [10 x i8] c"Riemersma\00", align 1
@.str.841 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.842 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.843 = private unnamed_addr constant [4 x i8] c"Abs\00", align 1
@.str.844 = private unnamed_addr constant [11 x i8] c"AddModulus\00", align 1
@.str.845 = private unnamed_addr constant [4 x i8] c"And\00", align 1
@.str.846 = private unnamed_addr constant [4 x i8] c"Cos\00", align 1
@.str.847 = private unnamed_addr constant [7 x i8] c"Cosine\00", align 1
@.str.848 = private unnamed_addr constant [4 x i8] c"Exp\00", align 1
@.str.849 = private unnamed_addr constant [12 x i8] c"Exponential\00", align 1
@.str.850 = private unnamed_addr constant [14 x i8] c"GaussianNoise\00", align 1
@.str.851 = private unnamed_addr constant [13 x i8] c"ImpulseNoise\00", align 1
@.str.852 = private unnamed_addr constant [15 x i8] c"LaplacianNoise\00", align 1
@.str.853 = private unnamed_addr constant [10 x i8] c"LeftShift\00", align 1
@.str.854 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.855 = private unnamed_addr constant [5 x i8] c"Mean\00", align 1
@.str.856 = private unnamed_addr constant [7 x i8] c"Median\00", align 1
@.str.857 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.858 = private unnamed_addr constant [20 x i8] c"MultiplicativeNoise\00", align 1
@.str.859 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.860 = private unnamed_addr constant [13 x i8] c"PoissonNoise\00", align 1
@.str.861 = private unnamed_addr constant [4 x i8] c"Pow\00", align 1
@.str.862 = private unnamed_addr constant [11 x i8] c"RightShift\00", align 1
@.str.863 = private unnamed_addr constant [4 x i8] c"Sin\00", align 1
@.str.864 = private unnamed_addr constant [5 x i8] c"Sine\00", align 1
@.str.865 = private unnamed_addr constant [4 x i8] c"Sum\00", align 1
@.str.866 = private unnamed_addr constant [15 x i8] c"ThresholdBlack\00", align 1
@.str.867 = private unnamed_addr constant [15 x i8] c"ThresholdWhite\00", align 1
@.str.868 = private unnamed_addr constant [13 x i8] c"UniformNoise\00", align 1
@.str.869 = private unnamed_addr constant [8 x i8] c"Evenodd\00", align 1
@.str.870 = private unnamed_addr constant [8 x i8] c"NonZero\00", align 1
@.str.871 = private unnamed_addr constant [9 x i8] c"Bartlett\00", align 1
@.str.872 = private unnamed_addr constant [9 x i8] c"Blackman\00", align 1
@.str.873 = private unnamed_addr constant [7 x i8] c"Bohman\00", align 1
@.str.874 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.875 = private unnamed_addr constant [7 x i8] c"Catrom\00", align 1
@.str.876 = private unnamed_addr constant [6 x i8] c"Cubic\00", align 1
@.str.877 = private unnamed_addr constant [9 x i8] c"Gaussian\00", align 1
@.str.878 = private unnamed_addr constant [8 x i8] c"Hamming\00", align 1
@.str.879 = private unnamed_addr constant [5 x i8] c"Hann\00", align 1
@.str.880 = private unnamed_addr constant [8 x i8] c"Hanning\00", align 1
@.str.881 = private unnamed_addr constant [8 x i8] c"Hermite\00", align 1
@.str.882 = private unnamed_addr constant [5 x i8] c"Jinc\00", align 1
@.str.883 = private unnamed_addr constant [7 x i8] c"Kaiser\00", align 1
@.str.884 = private unnamed_addr constant [9 x i8] c"Lagrange\00", align 1
@.str.885 = private unnamed_addr constant [8 x i8] c"Lanczos\00", align 1
@.str.886 = private unnamed_addr constant [9 x i8] c"Lanczos2\00", align 1
@.str.887 = private unnamed_addr constant [14 x i8] c"Lanczos2Sharp\00", align 1
@.str.888 = private unnamed_addr constant [14 x i8] c"LanczosRadius\00", align 1
@.str.889 = private unnamed_addr constant [13 x i8] c"LanczosSharp\00", align 1
@.str.890 = private unnamed_addr constant [9 x i8] c"Mitchell\00", align 1
@.str.891 = private unnamed_addr constant [7 x i8] c"Parzen\00", align 1
@.str.892 = private unnamed_addr constant [6 x i8] c"Point\00", align 1
@.str.893 = private unnamed_addr constant [10 x i8] c"Quadratic\00", align 1
@.str.894 = private unnamed_addr constant [9 x i8] c"Robidoux\00", align 1
@.str.895 = private unnamed_addr constant [14 x i8] c"RobidouxSharp\00", align 1
@.str.896 = private unnamed_addr constant [5 x i8] c"Sinc\00", align 1
@.str.897 = private unnamed_addr constant [9 x i8] c"SincFast\00", align 1
@.str.898 = private unnamed_addr constant [7 x i8] c"Spline\00", align 1
@.str.899 = private unnamed_addr constant [9 x i8] c"Triangle\00", align 1
@.str.900 = private unnamed_addr constant [6 x i8] c"Welch\00", align 1
@.str.901 = private unnamed_addr constant [6 x i8] c"Welsh\00", align 1
@.str.902 = private unnamed_addr constant [7 x i8] c"Bessel\00", align 1
@.str.903 = private unnamed_addr constant [9 x i8] c"Sinusoid\00", align 1
@.str.904 = private unnamed_addr constant [7 x i8] c"ArcSin\00", align 1
@.str.905 = private unnamed_addr constant [7 x i8] c"ArcTan\00", align 1
@.str.906 = private unnamed_addr constant [5 x i8] c"East\00", align 1
@.str.907 = private unnamed_addr constant [7 x i8] c"Forget\00", align 1
@.str.908 = private unnamed_addr constant [10 x i8] c"NorthEast\00", align 1
@.str.909 = private unnamed_addr constant [6 x i8] c"North\00", align 1
@.str.910 = private unnamed_addr constant [10 x i8] c"NorthWest\00", align 1
@.str.911 = private unnamed_addr constant [10 x i8] c"SouthEast\00", align 1
@.str.912 = private unnamed_addr constant [6 x i8] c"South\00", align 1
@.str.913 = private unnamed_addr constant [10 x i8] c"SouthWest\00", align 1
@.str.914 = private unnamed_addr constant [5 x i8] c"West\00", align 1
@.str.915 = private unnamed_addr constant [7 x i8] c"Static\00", align 1
@.str.916 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.917 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.918 = private unnamed_addr constant [3 x i8] c"MS\00", align 1
@.str.919 = private unnamed_addr constant [16 x i8] c"Rec601Luminance\00", align 1
@.str.920 = private unnamed_addr constant [16 x i8] c"Rec709Luminance\00", align 1
@.str.921 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@.str.922 = private unnamed_addr constant [9 x i8] c"Absolute\00", align 1
@.str.923 = private unnamed_addr constant [11 x i8] c"Perceptual\00", align 1
@.str.924 = private unnamed_addr constant [9 x i8] c"Relative\00", align 1
@.str.925 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.926 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.927 = private unnamed_addr constant [10 x i8] c"Partition\00", align 1
@.str.928 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.929 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.930 = private unnamed_addr constant [9 x i8] c"Average4\00", align 1
@.str.931 = private unnamed_addr constant [9 x i8] c"Average9\00", align 1
@.str.932 = private unnamed_addr constant [10 x i8] c"Average16\00", align 1
@.str.933 = private unnamed_addr constant [8 x i8] c"Bicubic\00", align 1
@.str.934 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.935 = private unnamed_addr constant [5 x i8] c"Mesh\00", align 1
@.str.936 = private unnamed_addr constant [8 x i8] c"Nearest\00", align 1
@.str.937 = private unnamed_addr constant [16 x i8] c"NearestNeighbor\00", align 1
@.str.938 = private unnamed_addr constant [7 x i8] c"Filter\00", align 1
@.str.939 = private unnamed_addr constant [6 x i8] c"Unity\00", align 1
@.str.940 = private unnamed_addr constant [4 x i8] c"DoG\00", align 1
@.str.941 = private unnamed_addr constant [4 x i8] c"LoG\00", align 1
@.str.942 = private unnamed_addr constant [6 x i8] c"Comet\00", align 1
@.str.943 = private unnamed_addr constant [9 x i8] c"Binomial\00", align 1
@.str.944 = private unnamed_addr constant [10 x i8] c"Laplacian\00", align 1
@.str.945 = private unnamed_addr constant [6 x i8] c"Sobel\00", align 1
@.str.946 = private unnamed_addr constant [9 x i8] c"FreiChen\00", align 1
@.str.947 = private unnamed_addr constant [8 x i8] c"Roberts\00", align 1
@.str.948 = private unnamed_addr constant [8 x i8] c"Prewitt\00", align 1
@.str.949 = private unnamed_addr constant [8 x i8] c"Compass\00", align 1
@.str.950 = private unnamed_addr constant [7 x i8] c"Kirsch\00", align 1
@.str.951 = private unnamed_addr constant [8 x i8] c"Diamond\00", align 1
@.str.952 = private unnamed_addr constant [7 x i8] c"Square\00", align 1
@.str.953 = private unnamed_addr constant [10 x i8] c"Rectangle\00", align 1
@.str.954 = private unnamed_addr constant [8 x i8] c"Octagon\00", align 1
@.str.955 = private unnamed_addr constant [6 x i8] c"Cross\00", align 1
@.str.956 = private unnamed_addr constant [5 x i8] c"Ring\00", align 1
@.str.957 = private unnamed_addr constant [6 x i8] c"Peaks\00", align 1
@.str.958 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.959 = private unnamed_addr constant [8 x i8] c"Corners\00", align 1
@.str.960 = private unnamed_addr constant [10 x i8] c"Diagonals\00", align 1
@.str.961 = private unnamed_addr constant [14 x i8] c"ThinDiagonals\00", align 1
@.str.962 = private unnamed_addr constant [9 x i8] c"LineEnds\00", align 1
@.str.963 = private unnamed_addr constant [14 x i8] c"LineJunctions\00", align 1
@.str.964 = private unnamed_addr constant [7 x i8] c"Ridges\00", align 1
@.str.965 = private unnamed_addr constant [11 x i8] c"ConvexHull\00", align 1
@.str.966 = private unnamed_addr constant [7 x i8] c"ThinSe\00", align 1
@.str.967 = private unnamed_addr constant [9 x i8] c"Skeleton\00", align 1
@.str.968 = private unnamed_addr constant [10 x i8] c"Chebyshev\00", align 1
@.str.969 = private unnamed_addr constant [10 x i8] c"Manhattan\00", align 1
@.str.970 = private unnamed_addr constant [10 x i8] c"Octagonal\00", align 1
@.str.971 = private unnamed_addr constant [10 x i8] c"Euclidean\00", align 1
@.str.972 = private unnamed_addr constant [13 x i8] c"User Defined\00", align 1
@.str.973 = private unnamed_addr constant [9 x i8] c"Coalesce\00", align 1
@.str.974 = private unnamed_addr constant [11 x i8] c"CompareAny\00", align 1
@.str.975 = private unnamed_addr constant [13 x i8] c"CompareClear\00", align 1
@.str.976 = private unnamed_addr constant [15 x i8] c"CompareOverlay\00", align 1
@.str.977 = private unnamed_addr constant [8 x i8] c"Dispose\00", align 1
@.str.978 = private unnamed_addr constant [9 x i8] c"Optimize\00", align 1
@.str.979 = private unnamed_addr constant [14 x i8] c"OptimizeFrame\00", align 1
@.str.980 = private unnamed_addr constant [13 x i8] c"OptimizePlus\00", align 1
@.str.981 = private unnamed_addr constant [21 x i8] c"OptimizeTransparency\00", align 1
@.str.982 = private unnamed_addr constant [11 x i8] c"RemoveDups\00", align 1
@.str.983 = private unnamed_addr constant [11 x i8] c"RemoveZero\00", align 1
@.str.984 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.985 = private unnamed_addr constant [6 x i8] c"Merge\00", align 1
@.str.986 = private unnamed_addr constant [7 x i8] c"Mosaic\00", align 1
@.str.987 = private unnamed_addr constant [11 x i8] c"TrimBounds\00", align 1
@.str.988 = private unnamed_addr constant [5 x i8] c"Butt\00", align 1
@.str.989 = private unnamed_addr constant [6 x i8] c"Round\00", align 1
@.str.990 = private unnamed_addr constant [6 x i8] c"Bevel\00", align 1
@.str.991 = private unnamed_addr constant [6 x i8] c"Miter\00", align 1
@.str.992 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.993 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.994 = private unnamed_addr constant [8 x i8] c"Channel\00", align 1
@.str.995 = private unnamed_addr constant [6 x i8] c"Class\00", align 1
@.str.996 = private unnamed_addr constant [9 x i8] c"ClipPath\00", align 1
@.str.997 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.998 = private unnamed_addr constant [11 x i8] c"Colorspace\00", align 1
@.str.999 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.1000 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@.str.1001 = private unnamed_addr constant [8 x i8] c"Compose\00", align 1
@.str.1002 = private unnamed_addr constant [9 x i8] c"Compress\00", align 1
@.str.1003 = private unnamed_addr constant [9 x i8] c"DataType\00", align 1
@.str.1004 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.1005 = private unnamed_addr constant [11 x i8] c"Decoration\00", align 1
@.str.1006 = private unnamed_addr constant [9 x i8] c"Delegate\00", align 1
@.str.1007 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.1008 = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.1009 = private unnamed_addr constant [7 x i8] c"Endian\00", align 1
@.str.1010 = private unnamed_addr constant [9 x i8] c"Evaluate\00", align 1
@.str.1011 = private unnamed_addr constant [9 x i8] c"FillRule\00", align 1
@.str.1012 = private unnamed_addr constant [5 x i8] c"Font\00", align 1
@.str.1013 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.1014 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.1015 = private unnamed_addr constant [8 x i8] c"Gravity\00", align 1
@.str.1016 = private unnamed_addr constant [10 x i8] c"Intensity\00", align 1
@.str.1017 = private unnamed_addr constant [7 x i8] c"Intent\00", align 1
@.str.1018 = private unnamed_addr constant [10 x i8] c"Interlace\00", align 1
@.str.1019 = private unnamed_addr constant [12 x i8] c"Interpolate\00", align 1
@.str.1020 = private unnamed_addr constant [7 x i8] c"Kernel\00", align 1
@.str.1021 = private unnamed_addr constant [7 x i8] c"Layers\00", align 1
@.str.1022 = private unnamed_addr constant [8 x i8] c"LineCap\00", align 1
@.str.1023 = private unnamed_addr constant [9 x i8] c"LineJoin\00", align 1
@.str.1024 = private unnamed_addr constant [5 x i8] c"List\00", align 1
@.str.1025 = private unnamed_addr constant [9 x i8] c"LogEvent\00", align 1
@.str.1026 = private unnamed_addr constant [6 x i8] c"Magic\00", align 1
@.str.1027 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.1028 = private unnamed_addr constant [7 x i8] c"Metric\00", align 1
@.str.1029 = private unnamed_addr constant [5 x i8] c"Mime\00", align 1
@.str.1030 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@.str.1031 = private unnamed_addr constant [11 x i8] c"Morphology\00", align 1
@.str.1032 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.1033 = private unnamed_addr constant [12 x i8] c"Orientation\00", align 1
@.str.1034 = private unnamed_addr constant [15 x i8] c"PixelIntensity\00", align 1
@.str.1035 = private unnamed_addr constant [13 x i8] c"PolicyDomain\00", align 1
@.str.1036 = private unnamed_addr constant [13 x i8] c"PolicyRights\00", align 1
@.str.1037 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.1038 = private unnamed_addr constant [10 x i8] c"Primitive\00", align 1
@.str.1039 = private unnamed_addr constant [14 x i8] c"QuantumFormat\00", align 1
@.str.1040 = private unnamed_addr constant [12 x i8] c"SparseColor\00", align 1
@.str.1041 = private unnamed_addr constant [10 x i8] c"Statistic\00", align 1
@.str.1042 = private unnamed_addr constant [8 x i8] c"Storage\00", align 1
@.str.1043 = private unnamed_addr constant [8 x i8] c"Stretch\00", align 1
@.str.1044 = private unnamed_addr constant [6 x i8] c"Style\00", align 1
@.str.1045 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1046 = private unnamed_addr constant [6 x i8] c"Units\00", align 1
@.str.1047 = private unnamed_addr constant [9 x i8] c"Validate\00", align 1
@.str.1048 = private unnamed_addr constant [13 x i8] c"VirtualPixel\00", align 1
@.str.1049 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.1050 = private unnamed_addr constant [5 x i8] c"Fuzz\00", align 1
@.str.1051 = private unnamed_addr constant [4 x i8] c"MAE\00", align 1
@.str.1052 = private unnamed_addr constant [5 x i8] c"MEPP\00", align 1
@.str.1053 = private unnamed_addr constant [4 x i8] c"MSE\00", align 1
@.str.1054 = private unnamed_addr constant [4 x i8] c"NCC\00", align 1
@.str.1055 = private unnamed_addr constant [4 x i8] c"PAE\00", align 1
@.str.1056 = private unnamed_addr constant [6 x i8] c"PHASH\00", align 1
@.str.1057 = private unnamed_addr constant [5 x i8] c"PSNR\00", align 1
@.str.1058 = private unnamed_addr constant [5 x i8] c"RMSE\00", align 1
@.str.1059 = private unnamed_addr constant [13 x i8] c"FillToBorder\00", align 1
@.str.1060 = private unnamed_addr constant [10 x i8] c"Floodfill\00", align 1
@.str.1061 = private unnamed_addr constant [12 x i8] c"Concatenate\00", align 1
@.str.1062 = private unnamed_addr constant [6 x i8] c"Frame\00", align 1
@.str.1063 = private unnamed_addr constant [8 x i8] c"Unframe\00", align 1
@.str.1064 = private unnamed_addr constant [10 x i8] c"Correlate\00", align 1
@.str.1065 = private unnamed_addr constant [9 x i8] c"Convolve\00", align 1
@.str.1066 = private unnamed_addr constant [7 x i8] c"Dilate\00", align 1
@.str.1067 = private unnamed_addr constant [6 x i8] c"Erode\00", align 1
@.str.1068 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.1069 = private unnamed_addr constant [5 x i8] c"Open\00", align 1
@.str.1070 = private unnamed_addr constant [16 x i8] c"DilateIntensity\00", align 1
@.str.1071 = private unnamed_addr constant [15 x i8] c"ErodeIntensity\00", align 1
@.str.1072 = private unnamed_addr constant [15 x i8] c"CloseIntensity\00", align 1
@.str.1073 = private unnamed_addr constant [14 x i8] c"OpenIntensity\00", align 1
@.str.1074 = private unnamed_addr constant [8 x i8] c"DilateI\00", align 1
@.str.1075 = private unnamed_addr constant [7 x i8] c"ErodeI\00", align 1
@.str.1076 = private unnamed_addr constant [7 x i8] c"CloseI\00", align 1
@.str.1077 = private unnamed_addr constant [6 x i8] c"OpenI\00", align 1
@.str.1078 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.1079 = private unnamed_addr constant [8 x i8] c"EdgeOut\00", align 1
@.str.1080 = private unnamed_addr constant [7 x i8] c"EdgeIn\00", align 1
@.str.1081 = private unnamed_addr constant [5 x i8] c"Edge\00", align 1
@.str.1082 = private unnamed_addr constant [7 x i8] c"TopHat\00", align 1
@.str.1083 = private unnamed_addr constant [10 x i8] c"BottomHat\00", align 1
@.str.1084 = private unnamed_addr constant [4 x i8] c"Hmt\00", align 1
@.str.1085 = private unnamed_addr constant [9 x i8] c"HitNMiss\00", align 1
@.str.1086 = private unnamed_addr constant [11 x i8] c"HitAndMiss\00", align 1
@.str.1087 = private unnamed_addr constant [9 x i8] c"Thinning\00", align 1
@.str.1088 = private unnamed_addr constant [8 x i8] c"Thicken\00", align 1
@.str.1089 = private unnamed_addr constant [9 x i8] c"Distance\00", align 1
@.str.1090 = private unnamed_addr constant [18 x i8] c"IterativeDistance\00", align 1
@.str.1091 = private unnamed_addr constant [8 x i8] c"Voronoi\00", align 1
@.str.1092 = private unnamed_addr constant [8 x i8] c"Impulse\00", align 1
@.str.1093 = private unnamed_addr constant [15 x i8] c"Multiplicative\00", align 1
@.str.1094 = private unnamed_addr constant [8 x i8] c"Poisson\00", align 1
@.str.1095 = private unnamed_addr constant [7 x i8] c"Random\00", align 1
@.str.1096 = private unnamed_addr constant [8 x i8] c"Uniform\00", align 1
@.str.1097 = private unnamed_addr constant [8 x i8] c"TopLeft\00", align 1
@.str.1098 = private unnamed_addr constant [9 x i8] c"TopRight\00", align 1
@.str.1099 = private unnamed_addr constant [12 x i8] c"BottomRight\00", align 1
@.str.1100 = private unnamed_addr constant [11 x i8] c"BottomLeft\00", align 1
@.str.1101 = private unnamed_addr constant [8 x i8] c"LeftTop\00", align 1
@.str.1102 = private unnamed_addr constant [9 x i8] c"RightTop\00", align 1
@.str.1103 = private unnamed_addr constant [12 x i8] c"RightBottom\00", align 1
@.str.1104 = private unnamed_addr constant [11 x i8] c"LeftBottom\00", align 1
@.str.1105 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.1106 = private unnamed_addr constant [7 x i8] c"System\00", align 1
@.str.1107 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.1108 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@.str.1109 = private unnamed_addr constant [8 x i8] c"Execute\00", align 1
@.str.1110 = private unnamed_addr constant [9 x i8] c"AddNoise\00", align 1
@.str.1111 = private unnamed_addr constant [9 x i8] c"Charcoal\00", align 1
@.str.1112 = private unnamed_addr constant [10 x i8] c"Despeckle\00", align 1
@.str.1113 = private unnamed_addr constant [5 x i8] c"Dull\00", align 1
@.str.1114 = private unnamed_addr constant [11 x i8] c"EdgeDetect\00", align 1
@.str.1115 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.1116 = private unnamed_addr constant [10 x i8] c"Grayscale\00", align 1
@.str.1117 = private unnamed_addr constant [8 x i8] c"Implode\00", align 1
@.str.1118 = private unnamed_addr constant [9 x i8] c"OilPaint\00", align 1
@.str.1119 = private unnamed_addr constant [9 x i8] c"Quantize\00", align 1
@.str.1120 = private unnamed_addr constant [6 x i8] c"Raise\00", align 1
@.str.1121 = private unnamed_addr constant [12 x i8] c"ReduceNoise\00", align 1
@.str.1122 = private unnamed_addr constant [5 x i8] c"Roll\00", align 1
@.str.1123 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.1124 = private unnamed_addr constant [8 x i8] c"Segment\00", align 1
@.str.1125 = private unnamed_addr constant [6 x i8] c"Shade\00", align 1
@.str.1126 = private unnamed_addr constant [8 x i8] c"Sharpen\00", align 1
@.str.1127 = private unnamed_addr constant [6 x i8] c"Shear\00", align 1
@.str.1128 = private unnamed_addr constant [9 x i8] c"Solarize\00", align 1
@.str.1129 = private unnamed_addr constant [6 x i8] c"Spiff\00", align 1
@.str.1130 = private unnamed_addr constant [7 x i8] c"Spread\00", align 1
@.str.1131 = private unnamed_addr constant [6 x i8] c"Swirl\00", align 1
@.str.1132 = private unnamed_addr constant [5 x i8] c"Wave\00", align 1
@.str.1133 = private unnamed_addr constant [7 x i8] c"Bezier\00", align 1
@.str.1134 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.1135 = private unnamed_addr constant [8 x i8] c"Ellipse\00", align 1
@.str.1136 = private unnamed_addr constant [6 x i8] c"Image\00", align 1
@.str.1137 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.1138 = private unnamed_addr constant [9 x i8] c"Polyline\00", align 1
@.str.1139 = private unnamed_addr constant [15 x i8] c"RoundRectangle\00", align 1
@.str.1140 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.1141 = private unnamed_addr constant [14 x i8] c"FloatingPoint\00", align 1
@.str.1142 = private unnamed_addr constant [7 x i8] c"Signed\00", align 1
@.str.1143 = private unnamed_addr constant [9 x i8] c"Unsigned\00", align 1
@.str.1144 = private unnamed_addr constant [14 x i8] c"PixelsPerInch\00", align 1
@.str.1145 = private unnamed_addr constant [20 x i8] c"PixelsPerCentimeter\00", align 1
@.str.1146 = private unnamed_addr constant [5 x i8] c"Area\00", align 1
@.str.1147 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.1148 = private unnamed_addr constant [7 x i8] c"Thread\00", align 1
@.str.1149 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.1150 = private unnamed_addr constant [12 x i8] c"Barycentric\00", align 1
@.str.1151 = private unnamed_addr constant [8 x i8] c"Inverse\00", align 1
@.str.1152 = private unnamed_addr constant [9 x i8] c"Gradient\00", align 1
@.str.1153 = private unnamed_addr constant [8 x i8] c"Maximum\00", align 1
@.str.1154 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.1155 = private unnamed_addr constant [8 x i8] c"Nonpeak\00", align 1
@.str.1156 = private unnamed_addr constant [18 x i8] c"StandardDeviation\00", align 1
@.str.1157 = private unnamed_addr constant [5 x i8] c"Char\00", align 1
@.str.1158 = private unnamed_addr constant [7 x i8] c"Double\00", align 1
@.str.1159 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@.str.1160 = private unnamed_addr constant [8 x i8] c"Quantum\00", align 1
@.str.1161 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.1162 = private unnamed_addr constant [10 x i8] c"Condensed\00", align 1
@.str.1163 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.1164 = private unnamed_addr constant [15 x i8] c"ExtraCondensed\00", align 1
@.str.1165 = private unnamed_addr constant [14 x i8] c"ExtraExpanded\00", align 1
@.str.1166 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.1167 = private unnamed_addr constant [14 x i8] c"SemiCondensed\00", align 1
@.str.1168 = private unnamed_addr constant [13 x i8] c"SemiExpanded\00", align 1
@.str.1169 = private unnamed_addr constant [15 x i8] c"UltraCondensed\00", align 1
@.str.1170 = private unnamed_addr constant [14 x i8] c"UltraExpanded\00", align 1
@.str.1171 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.1172 = private unnamed_addr constant [8 x i8] c"Oblique\00", align 1
@.str.1173 = private unnamed_addr constant [8 x i8] c"Bilevel\00", align 1
@.str.1174 = private unnamed_addr constant [16 x i8] c"ColorSeparation\00", align 1
@.str.1175 = private unnamed_addr constant [21 x i8] c"ColorSeparationAlpha\00", align 1
@.str.1176 = private unnamed_addr constant [21 x i8] c"ColorSeparationMatte\00", align 1
@.str.1177 = private unnamed_addr constant [15 x i8] c"GrayscaleAlpha\00", align 1
@.str.1178 = private unnamed_addr constant [15 x i8] c"GrayscaleMatte\00", align 1
@.str.1179 = private unnamed_addr constant [8 x i8] c"Palette\00", align 1
@.str.1180 = private unnamed_addr constant [20 x i8] c"PaletteBilevelAlpha\00", align 1
@.str.1181 = private unnamed_addr constant [20 x i8] c"PaletteBilevelMatte\00", align 1
@.str.1182 = private unnamed_addr constant [13 x i8] c"PaletteAlpha\00", align 1
@.str.1183 = private unnamed_addr constant [13 x i8] c"PaletteMatte\00", align 1
@.str.1184 = private unnamed_addr constant [15 x i8] c"TrueColorAlpha\00", align 1
@.str.1185 = private unnamed_addr constant [15 x i8] c"TrueColorMatte\00", align 1
@.str.1186 = private unnamed_addr constant [10 x i8] c"TrueColor\00", align 1
@.str.1187 = private unnamed_addr constant [8 x i8] c"Compare\00", align 1
@.str.1188 = private unnamed_addr constant [8 x i8] c"Convert\00", align 1
@.str.1189 = private unnamed_addr constant [12 x i8] c"FormatsDisk\00", align 1
@.str.1190 = private unnamed_addr constant [11 x i8] c"FormatsMap\00", align 1
@.str.1191 = private unnamed_addr constant [14 x i8] c"FormatsMemory\00", align 1
@.str.1192 = private unnamed_addr constant [9 x i8] c"Identify\00", align 1
@.str.1193 = private unnamed_addr constant [13 x i8] c"ImportExport\00", align 1
@.str.1194 = private unnamed_addr constant [8 x i8] c"Montage\00", align 1
@.str.1195 = private unnamed_addr constant [7 x i8] c"Stream\00", align 1
@.str.1196 = private unnamed_addr constant [9 x i8] c"Constant\00", align 1
@.str.1197 = private unnamed_addr constant [12 x i8] c"CheckerTile\00", align 1
@.str.1198 = private unnamed_addr constant [15 x i8] c"HorizontalTile\00", align 1
@.str.1199 = private unnamed_addr constant [19 x i8] c"HorizontalTileEdge\00", align 1
@.str.1200 = private unnamed_addr constant [7 x i8] c"Mirror\00", align 1
@.str.1201 = private unnamed_addr constant [5 x i8] c"Tile\00", align 1
@.str.1202 = private unnamed_addr constant [13 x i8] c"VerticalTile\00", align 1
@.str.1203 = private unnamed_addr constant [17 x i8] c"VerticalTileEdge\00", align 1
@.str.1204 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@switch.table.GetOptionInfo = private unnamed_addr constant [71 x ptr] [ptr @AlignOptions, ptr @AlphaOptions, ptr @BooleanOptions, ptr @CacheOptions, ptr @ChannelOptions, ptr @ClassOptions, ptr @ClipPathOptions, ptr null, ptr null, ptr @ColorspaceOptions, ptr @CommandOptions, ptr @ComposeOptions, ptr @CompressOptions, ptr null, ptr @DataTypeOptions, ptr @LogEventOptions, ptr @DecorateOptions, ptr null, ptr @DirectionOptions, ptr @DisposeOptions, ptr @DistortOptions, ptr @DitherOptions, ptr @EndianOptions, ptr @EvaluateOptions, ptr @FillRuleOptions, ptr @FilterOptions, ptr null, ptr null, ptr null, ptr @FunctionOptions, ptr @GravityOptions, ptr @IntentOptions, ptr @InterlaceOptions, ptr @InterpolateOptions, ptr @KernelOptions, ptr @LayerOptions, ptr @LineCapOptions, ptr @LineJoinOptions, ptr @ListOptions, ptr null, ptr @LogEventOptions, ptr null, ptr null, ptr @MethodOptions, ptr @MetricOptions, ptr null, ptr @ModeOptions, ptr null, ptr @MorphologyOptions, ptr @NoiseOptions, ptr @OrientationOptions, ptr @PixelIntensityOptions, ptr null, ptr @PolicyDomainOptions, ptr @PolicyRightsOptions, ptr @PreviewOptions, ptr @PrimitiveOptions, ptr @QuantumFormatOptions, ptr @ResolutionOptions, ptr @ResourceOptions, ptr @SparseColorOptions, ptr @StatisticOptions, ptr @StorageOptions, ptr @StretchOptions, ptr @StyleOptions, ptr null, ptr @TypeOptions, ptr @ValidateOptions, ptr @VirtualPixelOptions, ptr @ComplexOptions, ptr @PixelIntensityOptions], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @CloneImageOptions(ptr noundef %image_info, ptr nocapture noundef readonly %clone_info) local_unnamed_addr #0 !dbg !847 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1137, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %clone_info, metadata !1138, metadata !DIExpression()), !dbg !1139
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1140
  %0 = load i32, ptr %debug, align 8, !dbg !1140, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1151
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1152

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1153
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1698, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1154
  br label %if.end, !dbg !1155

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %clone_info, i64 0, i32 40, !dbg !1156
  %1 = load ptr, ptr %options, align 8, !dbg !1156, !tbaa !1158
  %cmp1.not = icmp eq ptr %1, null, !dbg !1159
  br i1 %cmp1.not, label %if.end10, label %if.then2, !dbg !1160

if.then2:                                         ; preds = %if.end
  %options3 = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1161
  %2 = load ptr, ptr %options3, align 8, !dbg !1161, !tbaa !1158
  %cmp4.not = icmp eq ptr %2, null, !dbg !1164
  br i1 %cmp4.not, label %if.end6, label %if.then5, !dbg !1165

if.then5:                                         ; preds = %if.then2
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1166, metadata !DIExpression()) #11, !dbg !1171
  %3 = load i32, ptr %debug, align 8, !dbg !1173, !tbaa !1142
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1175
  br i1 %cmp.not.i, label %if.then2.i, label %if.end.i, !dbg !1176

if.end.i:                                         ; preds = %if.then5
  %filename.i = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1177
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1825, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #11, !dbg !1178
  %.pr = load ptr, ptr %options3, align 8, !dbg !1179, !tbaa !1158
  %cmp1.not.i = icmp eq ptr %.pr, null, !dbg !1181
  br i1 %cmp1.not.i, label %if.end6, label %if.then2.i, !dbg !1182

if.then2.i:                                       ; preds = %if.then5, %if.end.i
  %4 = phi ptr [ %.pr, %if.end.i ], [ %2, %if.then5 ]
  %call4.i = tail call ptr @DestroySplayTree(ptr noundef nonnull %4) #11, !dbg !1183
  store ptr %call4.i, ptr %options3, align 8, !dbg !1184, !tbaa !1158
  br label %if.end6, !dbg !1185

if.end6:                                          ; preds = %if.then2.i, %if.end.i, %if.then2
  %5 = load ptr, ptr %options, align 8, !dbg !1186, !tbaa !1158
  %call8 = tail call ptr @CloneSplayTree(ptr noundef %5, ptr noundef nonnull @ConstantString, ptr noundef nonnull @ConstantString) #11, !dbg !1187
  store ptr %call8, ptr %options3, align 8, !dbg !1188, !tbaa !1158
  br label %if.end10, !dbg !1189

if.end10:                                         ; preds = %if.end6, %if.end
  ret i32 1, !dbg !1190
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !1191 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DestroyImageOptions(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1167 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1166, metadata !DIExpression()), !dbg !1197
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1198
  %0 = load i32, ptr %debug, align 8, !dbg !1198, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1199
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1200

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1201
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1825, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1202
  br label %if.end, !dbg !1203

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1204
  %1 = load ptr, ptr %options, align 8, !dbg !1204, !tbaa !1158
  %cmp1.not = icmp eq ptr %1, null, !dbg !1205
  br i1 %cmp1.not, label %if.end6, label %if.then2, !dbg !1206

if.then2:                                         ; preds = %if.end
  %call4 = tail call ptr @DestroySplayTree(ptr noundef nonnull %1) #11, !dbg !1207
  store ptr %call4, ptr %options, align 8, !dbg !1208, !tbaa !1158
  br label %if.end6, !dbg !1209

if.end6:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !1210
}

declare !dbg !1211 ptr @CloneSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1214 ptr @ConstantString(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @DefineImageOption(ptr noundef %image_info, ptr noundef %option) local_unnamed_addr #0 !dbg !1218 {
entry:
  %key = alloca [4096 x i8], align 16
  %value = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1222, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %option, metadata !1223, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #11, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1224, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %value) #11, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1225, metadata !DIExpression()), !dbg !1230
  %call = call i64 @CopyMagickString(ptr noundef nonnull %key, ptr noundef %option, i64 noundef 4096) #11, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %key, metadata !1226, metadata !DIExpression()), !dbg !1227
  br label %for.cond, !dbg !1232

for.cond:                                         ; preds = %for.inc, %entry
  %p.0 = phi ptr [ %key, %entry ], [ %incdec.ptr, %for.inc ], !dbg !1234
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1226, metadata !DIExpression()), !dbg !1227
  %0 = load i8, ptr %p.0, align 1, !dbg !1235, !tbaa !1237
  switch i8 %0, label %for.inc [
    i8 0, label %for.end
    i8 61, label %for.end
  ], !dbg !1238

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1239
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1226, metadata !DIExpression()), !dbg !1227
  br label %for.cond, !dbg !1240, !llvm.loop !1241

for.end:                                          ; preds = %for.cond, %for.cond
  store i8 0, ptr %value, align 16, !dbg !1245, !tbaa !1237
  %cmp8 = icmp eq i8 %0, 61, !dbg !1246
  br i1 %cmp8, label %if.then10, label %if.end13, !dbg !1248

if.then10:                                        ; preds = %for.end
  %add.ptr = getelementptr inbounds i8, ptr %p.0, i64 1, !dbg !1249
  %call12 = call i64 @CopyMagickString(ptr noundef nonnull %value, ptr noundef nonnull %add.ptr, i64 noundef 4096) #11, !dbg !1250
  br label %if.end13, !dbg !1251

if.end13:                                         ; preds = %if.then10, %for.end
  store i8 0, ptr %p.0, align 1, !dbg !1252, !tbaa !1237
  %call16 = call i32 @SetImageOption(ptr noundef %image_info, ptr noundef nonnull %key, ptr noundef nonnull %value), !dbg !1253
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %value) #11, !dbg !1254
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #11, !dbg !1254
  ret i32 %call16, !dbg !1255
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !1256 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @SetImageOption(ptr noundef %image_info, ptr noundef %option, ptr noundef %value) local_unnamed_addr #0 !dbg !1259 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %option, metadata !1264, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %value, metadata !1265, metadata !DIExpression()), !dbg !1266
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1267
  %0 = load i32, ptr %debug, align 8, !dbg !1267, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1269
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1270

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1271
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2649, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1272
  br label %if.end, !dbg !1273

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call i32 @LocaleCompare(ptr noundef %option, ptr noundef nonnull @.str.7) #11, !dbg !1274
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1276
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !1277

if.then3:                                         ; preds = %if.end
  %size = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 6, !dbg !1278
  %call4 = tail call ptr @CloneString(ptr noundef nonnull %size, ptr noundef %value) #11, !dbg !1279
  br label %if.end5, !dbg !1280

if.end5:                                          ; preds = %if.then3, %if.end
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1281
  %1 = load ptr, ptr %options, align 8, !dbg !1281, !tbaa !1158
  %cmp6 = icmp eq ptr %1, null, !dbg !1283
  br i1 %cmp6, label %if.then7, label %if.end10, !dbg !1284

if.then7:                                         ; preds = %if.end5
  %call8 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @RelinquishMagickMemory) #11, !dbg !1285
  store ptr %call8, ptr %options, align 8, !dbg !1286, !tbaa !1158
  br label %if.end10, !dbg !1287

if.end10:                                         ; preds = %if.then7, %if.end5
  %2 = phi ptr [ %call8, %if.then7 ], [ %1, %if.end5 ]
  %cmp11 = icmp eq ptr %value, null, !dbg !1288
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !1290

if.then12:                                        ; preds = %if.end10
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1291, metadata !DIExpression()) #11, !dbg !1295
  call void @llvm.dbg.value(metadata ptr %option, metadata !1294, metadata !DIExpression()) #11, !dbg !1295
  %3 = load i32, ptr %debug, align 8, !dbg !1297, !tbaa !1142
  %cmp.not.i = icmp eq i32 %3, 0, !dbg !1299
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1300

if.then.i:                                        ; preds = %if.then12
  %filename.i = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1301
  %call.i = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #11, !dbg !1302
  %.pre = load ptr, ptr %options, align 8, !dbg !1303, !tbaa !1158
  br label %if.end.i, !dbg !1305

if.end.i:                                         ; preds = %if.then.i, %if.then12
  %4 = phi ptr [ %.pre, %if.then.i ], [ %2, %if.then12 ], !dbg !1303
  %cmp1.i = icmp eq ptr %4, null, !dbg !1306
  br i1 %cmp1.i, label %return, label %if.end3.i, !dbg !1307

if.end3.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %4, ptr noundef %option) #11, !dbg !1308
  br label %return, !dbg !1309

if.end14:                                         ; preds = %if.end10
  %call16 = tail call ptr @ConstantString(ptr noundef %option) #11, !dbg !1310
  %call17 = tail call ptr @ConstantString(ptr noundef nonnull %value) #11, !dbg !1311
  %call18 = tail call i32 @AddValueToSplayTree(ptr noundef %2, ptr noundef %call16, ptr noundef %call17) #11, !dbg !1312
  br label %return, !dbg !1313

return:                                           ; preds = %if.end3.i, %if.end.i, %if.end14
  %retval.0 = phi i32 [ %call18, %if.end14 ], [ %call5.i, %if.end3.i ], [ 0, %if.end.i ], !dbg !1266
  ret i32 %retval.0, !dbg !1314
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @DeleteImageOption(ptr noundef %image_info, ptr noundef %option) local_unnamed_addr #0 !dbg !1292 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1291, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata ptr %option, metadata !1294, metadata !DIExpression()), !dbg !1315
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1316
  %0 = load i32, ptr %debug, align 8, !dbg !1316, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1317
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1318

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1319
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1791, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1320
  br label %if.end, !dbg !1321

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1322
  %1 = load ptr, ptr %options, align 8, !dbg !1322, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1323
  br i1 %cmp1, label %return, label %if.end3, !dbg !1324

if.end3:                                          ; preds = %if.end
  %call5 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef nonnull %1, ptr noundef %option) #11, !dbg !1325
  br label %return, !dbg !1326

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi i32 [ %call5, %if.end3 ], [ 0, %if.end ], !dbg !1315
  ret i32 %retval.0, !dbg !1327
}

declare !dbg !1328 i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1331 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetImageOption(ptr noundef %image_info, ptr noundef %key) local_unnamed_addr #0 !dbg !1334 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1338, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr %key, metadata !1339, metadata !DIExpression()), !dbg !1341
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1342
  %0 = load i32, ptr %debug, align 8, !dbg !1342, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1344
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1345

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1346
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1865, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1347
  br label %if.end, !dbg !1348

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1349
  %1 = load ptr, ptr %options, align 8, !dbg !1349, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1351
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1352

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @GetValueFromSplayTree(ptr noundef nonnull %1, ptr noundef %key) #11, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1340, metadata !DIExpression()), !dbg !1341
  br label %cleanup, !dbg !1354

cleanup:                                          ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !1341
  ret ptr %retval.0, !dbg !1355
}

declare !dbg !1356 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @GetCommandOptionFlags(i32 noundef %option, i32 noundef %list, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !1359 {
entry:
  %token = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %option, metadata !1366, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i32 %list, metadata !1367, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %options, metadata !1368, metadata !DIExpression()), !dbg !1377
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %token) #11, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %token, metadata !1369, metadata !DIExpression()), !dbg !1379
  %call = tail call fastcc ptr @GetOptionInfo(i32 noundef %option), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %call, metadata !1370, metadata !DIExpression()), !dbg !1377
  %cmp = icmp eq ptr %call, null, !dbg !1381
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1383

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i32 44, metadata !1371, metadata !DIExpression()), !dbg !1377
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %options, i32 noundef 124) #12, !dbg !1384
  %cmp2.not = icmp eq ptr %call1, null, !dbg !1386
  %spec.store.select = select i1 %cmp2.not, i32 44, i32 124, !dbg !1387
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !1371, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %options, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !1376, metadata !DIExpression()), !dbg !1377
  %cmp5.not249 = icmp eq ptr %options, null, !dbg !1388
  br i1 %cmp5.not249, label %cleanup, label %while.cond.preheader.lr.ph, !dbg !1391

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %call6 = tail call ptr @__ctype_b_loc() #13, !dbg !1377
  %sub.ptr.rhs.cast = ptrtoint ptr %token to i64
  %add.ptr = getelementptr inbounds i8, ptr %token, i64 1
  %cmp150 = icmp eq i32 %list, 0
  br label %while.cond.preheader, !dbg !1391

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.inc154
  %option_types.0251 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %option_types.2, %for.inc154 ]
  %p.0250 = phi ptr [ %options, %while.cond.preheader.lr.ph ], [ %call155, %for.inc154 ]
  call void @llvm.dbg.value(metadata i64 %option_types.0251, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %p.0250, metadata !1374, metadata !DIExpression()), !dbg !1377
  %0 = load ptr, ptr %call6, align 8, !tbaa !1392
  br label %while.cond, !dbg !1393

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %p.1 = phi ptr [ %incdec.ptr, %while.cond ], [ %p.0250, %while.cond.preheader ], !dbg !1395
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1374, metadata !DIExpression()), !dbg !1377
  %1 = load i8, ptr %p.1, align 1, !dbg !1396, !tbaa !1237
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %2, !dbg !1396
  %3 = load i16, ptr %arrayidx, align 2, !dbg !1396, !tbaa !1397
  %4 = and i16 %3, 8192, !dbg !1396
  %cmp8.not = icmp eq i16 %4, 0, !dbg !1398
  %conv10 = sext i8 %1 to i32
  %cmp11 = icmp ne i32 %spec.store.select, %conv10
  %or.cond = select i1 %cmp8.not, i1 %cmp11, i1 false, !dbg !1399
  %cmp14.not = icmp eq i8 %1, 0
  %or.cond219 = select i1 %or.cond, i1 true, i1 %cmp14.not, !dbg !1399
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1374, metadata !DIExpression()), !dbg !1377
  br i1 %or.cond219, label %while.end, label %while.cond, !dbg !1399, !llvm.loop !1401

while.end:                                        ; preds = %while.cond
  %cmp17 = icmp eq i8 %1, 33, !dbg !1402
  call void @llvm.dbg.value(metadata i32 undef, metadata !1372, metadata !DIExpression()), !dbg !1377
  %spec.select.idx = zext i1 %cmp17 to i64, !dbg !1403
  %spec.select = getelementptr i8, ptr %p.1, i64 %spec.select.idx, !dbg !1403
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %token, metadata !1373, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %token, metadata !1373, metadata !DIExpression()), !dbg !1377
  %5 = load i8, ptr %spec.select, align 1, !dbg !1404, !tbaa !1237
  %6 = zext i8 %5 to i64
  %arrayidx28224 = getelementptr inbounds i16, ptr %0, i64 %6, !dbg !1404
  %7 = load i16, ptr %arrayidx28224, align 2, !dbg !1404, !tbaa !1397
  %8 = and i16 %7, 8192, !dbg !1404
  %cmp31225 = icmp ne i16 %8, 0, !dbg !1405
  %conv33226 = sext i8 %5 to i32
  %cmp34.not227 = icmp eq i32 %spec.store.select, %conv33226
  %or.cond213228 = select i1 %cmp31225, i1 true, i1 %cmp34.not227, !dbg !1406
  %cmp38.not229 = icmp eq i8 %5, 0
  %or.cond214230 = select i1 %or.cond213228, i1 true, i1 %cmp38.not229, !dbg !1406
  br i1 %or.cond214230, label %while.end49, label %if.end46, !dbg !1406

if.end46:                                         ; preds = %while.end, %if.end46
  %9 = phi i8 [ %11, %if.end46 ], [ %5, %while.end ]
  %p.3234 = phi ptr [ %incdec.ptr47, %if.end46 ], [ %spec.select, %while.end ]
  %q.0233 = phi ptr [ %incdec.ptr48, %if.end46 ], [ %token, %while.end ]
  call void @llvm.dbg.value(metadata ptr %p.3234, metadata !1374, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %q.0233, metadata !1373, metadata !DIExpression()), !dbg !1377
  %incdec.ptr47 = getelementptr inbounds i8, ptr %p.3234, i64 1, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %incdec.ptr47, metadata !1374, metadata !DIExpression()), !dbg !1377
  %incdec.ptr48 = getelementptr inbounds i8, ptr %q.0233, i64 1, !dbg !1409
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48, metadata !1373, metadata !DIExpression()), !dbg !1377
  store i8 %9, ptr %q.0233, align 1, !dbg !1410, !tbaa !1237
  %10 = load ptr, ptr %call6, align 8, !dbg !1404, !tbaa !1392
  %11 = load i8, ptr %incdec.ptr47, align 1, !dbg !1404, !tbaa !1237
  %12 = zext i8 %11 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %10, i64 %12, !dbg !1404
  %13 = load i16, ptr %arrayidx28, align 2, !dbg !1404, !tbaa !1397
  %14 = and i16 %13, 8192, !dbg !1404
  %cmp31 = icmp ne i16 %14, 0, !dbg !1405
  %conv33 = sext i8 %11 to i32
  %cmp34.not = icmp eq i32 %spec.store.select, %conv33
  %or.cond213 = select i1 %cmp31, i1 true, i1 %cmp34.not, !dbg !1406
  %cmp38.not = icmp eq i8 %11, 0
  %or.cond214 = select i1 %or.cond213, i1 true, i1 %cmp38.not, !dbg !1406
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp43 = icmp sgt i64 %sub.ptr.sub, 4094
  %or.cond215 = select i1 %or.cond214, i1 true, i1 %cmp43, !dbg !1406
  br i1 %or.cond215, label %while.end49, label %if.end46, !dbg !1406, !llvm.loop !1411

while.end49:                                      ; preds = %if.end46, %while.end
  %q.0.lcssa = phi ptr [ %token, %while.end ], [ %incdec.ptr48, %if.end46 ], !dbg !1414
  %p.3.lcssa = phi ptr [ %spec.select, %while.end ], [ %incdec.ptr47, %if.end46 ], !dbg !1414
  store i8 0, ptr %q.0.lcssa, align 1, !dbg !1415, !tbaa !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()), !dbg !1377
  %15 = load ptr, ptr %call, align 8, !dbg !1416, !tbaa !1419
  %cmp52.not236 = icmp eq ptr %15, null, !dbg !1421
  br i1 %cmp52.not236, label %land.lhs.true77, label %for.body54.preheader, !dbg !1422

for.body54.preheader:                             ; preds = %while.end49
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()), !dbg !1377
  %call58269 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %15) #11, !dbg !1423
  %cmp59270 = icmp eq i32 %call58269, 0, !dbg !1425
  br i1 %cmp59270, label %if.then61, label %for.inc, !dbg !1426

for.body54:                                       ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1375, metadata !DIExpression()), !dbg !1377
  %call58 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %18) #11, !dbg !1423
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1425
  br i1 %cmp59, label %if.then61, label %for.inc, !dbg !1426, !llvm.loop !1427

if.then61:                                        ; preds = %for.body54, %for.body54.preheader
  %arrayidx51238.lcssa = phi ptr [ %call, %for.body54.preheader ], [ %arrayidx51, %for.body54 ]
  %i.0237.lcssa = phi i64 [ 0, %for.body54.preheader ], [ %inc, %for.body54 ]
  %16 = load i8, ptr %token, align 16, !dbg !1429, !tbaa !1237
  %cmp64 = icmp eq i8 %16, 33, !dbg !1432
  %flags = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.0237.lcssa, i32 2, !dbg !1433
  %17 = load i64, ptr %flags, align 8, !dbg !1433, !tbaa !1434
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !1435

if.then66:                                        ; preds = %if.then61
  %neg = xor i64 %17, -1, !dbg !1436
  %and68 = and i64 %option_types.0251, %neg, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %and68, metadata !1376, metadata !DIExpression()), !dbg !1377
  br label %for.end, !dbg !1438

if.else:                                          ; preds = %if.then61
  %or = or i64 %17, %option_types.0251, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %or, metadata !1376, metadata !DIExpression()), !dbg !1377
  br label %for.end

for.inc:                                          ; preds = %for.body54.preheader, %for.body54
  %i.0237271 = phi i64 [ %inc, %for.body54 ], [ 0, %for.body54.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0237271, metadata !1375, metadata !DIExpression()), !dbg !1377
  %inc = add nuw nsw i64 %i.0237271, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1375, metadata !DIExpression()), !dbg !1377
  %arrayidx51 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc, !dbg !1441
  %18 = load ptr, ptr %arrayidx51, align 8, !dbg !1416, !tbaa !1419
  %cmp52.not = icmp eq ptr %18, null, !dbg !1421
  br i1 %cmp52.not, label %land.lhs.true77, label %for.body54, !dbg !1422, !llvm.loop !1427

for.end:                                          ; preds = %if.then66, %if.else
  %option_types.1.ph = phi i64 [ %or, %if.else ], [ %and68, %if.then66 ]
  %.pr = load ptr, ptr %arrayidx51238.lcssa, align 8, !dbg !1442, !tbaa !1419
  call void @llvm.dbg.value(metadata i64 %option_types.1.ph, metadata !1376, metadata !DIExpression()), !dbg !1377
  %cmp75 = icmp eq ptr %.pr, null, !dbg !1444
  br i1 %cmp75, label %land.lhs.true77, label %if.end143, !dbg !1445

land.lhs.true77:                                  ; preds = %for.inc, %while.end49, %for.end
  %i.0222 = phi i64 [ %i.0237.lcssa, %for.end ], [ 0, %while.end49 ], [ %inc, %for.inc ]
  %option_types.1218 = phi i64 [ %option_types.1.ph, %for.end ], [ %option_types.0251, %while.end49 ], [ %option_types.0251, %for.inc ]
  %call79 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 45) #12, !dbg !1446
  %cmp80.not = icmp eq ptr %call79, null, !dbg !1447
  br i1 %cmp80.not, label %lor.lhs.false82, label %while.body95, !dbg !1448

lor.lhs.false82:                                  ; preds = %land.lhs.true77
  %call85 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1449
  %cmp86.not = icmp eq ptr %call85, null, !dbg !1450
  br i1 %cmp86.not, label %if.end143, label %while.cond100.preheader, !dbg !1451

while.cond100.preheader:                          ; preds = %while.body95, %lor.lhs.false82
  %call103243 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call103243, metadata !1373, metadata !DIExpression()), !dbg !1377
  %cmp104.not244 = icmp eq ptr %call103243, null, !dbg !1454
  br i1 %cmp104.not244, label %for.cond112.preheader, label %while.body106, !dbg !1455

while.body95:                                     ; preds = %land.lhs.true77, %while.body95
  %call92242 = phi ptr [ %call92, %while.body95 ], [ %call79, %land.lhs.true77 ]
  %add.ptr96 = getelementptr inbounds i8, ptr %call92242, i64 1, !dbg !1456
  %call97 = call i64 @strlen(ptr noundef nonnull %call92242) #12, !dbg !1457
  %sub = sub i64 4096, %call97, !dbg !1458
  %call98 = call i64 @CopyMagickString(ptr noundef nonnull %call92242, ptr noundef nonnull %add.ptr96, i64 noundef %sub) #11, !dbg !1459
  %call92 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 45) #12, !dbg !1460
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1373, metadata !DIExpression()), !dbg !1377
  %cmp93.not = icmp eq ptr %call92, null, !dbg !1461
  br i1 %cmp93.not, label %while.cond100.preheader, label %while.body95, !dbg !1462, !llvm.loop !1463

for.cond112.preheader:                            ; preds = %while.body106, %while.cond100.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !1375, metadata !DIExpression()), !dbg !1377
  %19 = load ptr, ptr %call, align 8, !dbg !1465, !tbaa !1419
  %cmp115.not246 = icmp eq ptr %19, null, !dbg !1468
  br i1 %cmp115.not246, label %if.end143, label %for.body117, !dbg !1469

while.body106:                                    ; preds = %while.cond100.preheader, %while.body106
  %call103245 = phi ptr [ %call103, %while.body106 ], [ %call103243, %while.cond100.preheader ]
  %add.ptr107 = getelementptr inbounds i8, ptr %call103245, i64 1, !dbg !1470
  %call108 = call i64 @strlen(ptr noundef nonnull %call103245) #12, !dbg !1471
  %sub109 = sub i64 4096, %call108, !dbg !1472
  %call110 = call i64 @CopyMagickString(ptr noundef nonnull %call103245, ptr noundef nonnull %add.ptr107, i64 noundef %sub109) #11, !dbg !1473
  %call103 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call103, metadata !1373, metadata !DIExpression()), !dbg !1377
  %cmp104.not = icmp eq ptr %call103, null, !dbg !1454
  br i1 %cmp104.not, label %for.cond112.preheader, label %while.body106, !dbg !1455, !llvm.loop !1474

for.body117:                                      ; preds = %for.cond112.preheader, %for.inc140
  %20 = phi ptr [ %23, %for.inc140 ], [ %19, %for.cond112.preheader ]
  %i.1247 = phi i64 [ %inc141, %for.inc140 ], [ 0, %for.cond112.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1247, metadata !1375, metadata !DIExpression()), !dbg !1377
  %call121 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %20) #11, !dbg !1476
  %cmp122 = icmp eq i32 %call121, 0, !dbg !1478
  br i1 %cmp122, label %if.then124, label %for.inc140, !dbg !1479

if.then124:                                       ; preds = %for.body117
  %21 = load i8, ptr %token, align 16, !dbg !1480, !tbaa !1237
  %cmp127 = icmp eq i8 %21, 33, !dbg !1483
  %flags131 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.1247, i32 2, !dbg !1484
  %22 = load i64, ptr %flags131, align 8, !dbg !1484, !tbaa !1434
  br i1 %cmp127, label %if.then129, label %if.else134, !dbg !1485

if.then129:                                       ; preds = %if.then124
  %neg132 = xor i64 %22, -1, !dbg !1486
  %and133 = and i64 %option_types.1218, %neg132, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %and133, metadata !1376, metadata !DIExpression()), !dbg !1377
  br label %if.end143, !dbg !1488

if.else134:                                       ; preds = %if.then124
  %or137 = or i64 %22, %option_types.1218, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %or137, metadata !1376, metadata !DIExpression()), !dbg !1377
  br label %if.end143

for.inc140:                                       ; preds = %for.body117
  %inc141 = add nuw nsw i64 %i.1247, 1, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %inc141, metadata !1375, metadata !DIExpression()), !dbg !1377
  %arrayidx113 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc141, !dbg !1491
  %23 = load ptr, ptr %arrayidx113, align 8, !dbg !1465, !tbaa !1419
  %cmp115.not = icmp eq ptr %23, null, !dbg !1468
  br i1 %cmp115.not, label %if.end143, label %for.body117, !dbg !1469, !llvm.loop !1492

if.end143:                                        ; preds = %for.inc140, %for.cond112.preheader, %if.else134, %if.then129, %lor.lhs.false82, %for.end
  %i.2 = phi i64 [ %i.1247, %if.then129 ], [ %i.1247, %if.else134 ], [ %i.0222, %lor.lhs.false82 ], [ %i.0237.lcssa, %for.end ], [ 0, %for.cond112.preheader ], [ %inc141, %for.inc140 ], !dbg !1414
  %option_types.2 = phi i64 [ %and133, %if.then129 ], [ %or137, %if.else134 ], [ %option_types.1218, %lor.lhs.false82 ], [ %option_types.1.ph, %for.end ], [ %option_types.1218, %for.cond112.preheader ], [ %option_types.1218, %for.inc140 ], !dbg !1414
  call void @llvm.dbg.value(metadata i64 %option_types.2, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1375, metadata !DIExpression()), !dbg !1377
  %arrayidx144 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.2, !dbg !1494
  %24 = load ptr, ptr %arrayidx144, align 8, !dbg !1496, !tbaa !1419
  %cmp146 = icmp eq ptr %24, null, !dbg !1497
  %brmerge = or i1 %cmp146, %cmp150, !dbg !1498
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit262, label %for.inc154, !dbg !1498

for.inc154:                                       ; preds = %if.end143
  %call155 = call ptr @strchr(ptr noundef nonnull %p.3.lcssa, i32 noundef %spec.store.select) #12, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %option_types.2, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1374, metadata !DIExpression()), !dbg !1377
  %cmp5.not = icmp eq ptr %call155, null, !dbg !1388
  br i1 %cmp5.not, label %cleanup, label %while.cond.preheader, !dbg !1391, !llvm.loop !1500

cleanup.loopexit.split.loop.exit262:              ; preds = %if.end143
  %.mux.le = select i1 %cmp146, i64 -1, i64 %option_types.2, !dbg !1498
  br label %cleanup, !dbg !1502

cleanup:                                          ; preds = %for.inc154, %cleanup.loopexit.split.loop.exit262, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ 0, %if.end ], [ %.mux.le, %cleanup.loopexit.split.loop.exit262 ], [ %option_types.2, %for.inc154 ], !dbg !1377
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %token) #11, !dbg !1502
  ret i64 %retval.0, !dbg !1502
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal fastcc ptr @GetOptionInfo(i32 noundef %option) unnamed_addr #4 !dbg !1503 {
entry:
  call void @llvm.dbg.value(metadata i32 %option, metadata !1507, metadata !DIExpression()), !dbg !1508
  %0 = icmp ult i32 %option, 71, !dbg !1509
  br i1 %0, label %switch.lookup, label %return, !dbg !1509

switch.lookup:                                    ; preds = %entry
  %1 = sext i32 %option to i64, !dbg !1509
  %switch.gep = getelementptr inbounds [71 x ptr], ptr @switch.table.GetOptionInfo, i64 0, i64 %1, !dbg !1509
  %switch.load = load ptr, ptr %switch.gep, align 8, !dbg !1509
  br label %return, !dbg !1509

return:                                           ; preds = %entry, %switch.lookup
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry ], !dbg !1508
  ret ptr %retval.0, !dbg !1510
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare !dbg !1511 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCommandOptions(i32 noundef %value) local_unnamed_addr #0 !dbg !1514 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i32 %value, metadata !1518, metadata !DIExpression()), !dbg !1526
  %call = tail call fastcc ptr @GetOptionInfo(i32 noundef %value), !dbg !1527
  call void @llvm.dbg.value(metadata ptr %call, metadata !1520, metadata !DIExpression()), !dbg !1526
  %cmp = icmp eq ptr %call, null, !dbg !1528
  br i1 %cmp, label %cleanup, label %for.cond, !dbg !1530

for.cond:                                         ; preds = %entry, %for.cond
  %i.0 = phi i64 [ %inc, %for.cond ], [ 0, %entry ], !dbg !1531
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !1521, metadata !DIExpression()), !dbg !1526
  %arrayidx = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.0, !dbg !1533
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !1535, !tbaa !1419
  %cmp1.not = icmp eq ptr %0, null, !dbg !1536
  %inc = add nuw i64 %i.0, 1, !dbg !1537
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1521, metadata !DIExpression()), !dbg !1526
  br i1 %cmp1.not, label %for.end, label %for.cond, !dbg !1538, !llvm.loop !1539

for.end:                                          ; preds = %for.cond
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef %inc, i64 noundef 8) #14, !dbg !1541
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1519, metadata !DIExpression()), !dbg !1526
  %cmp3 = icmp eq ptr %call2, null, !dbg !1542
  br i1 %cmp3, label %if.then4, label %for.cond11.preheader, !dbg !1543

for.cond11.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 0, metadata !1521, metadata !DIExpression()), !dbg !1526
  %1 = load ptr, ptr %call, align 8, !dbg !1544, !tbaa !1419
  %cmp14.not40 = icmp eq ptr %1, null, !dbg !1547
  br i1 %cmp14.not40, label %for.end22, label %for.body15, !dbg !1548

if.then4:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !1525, metadata !DIExpression()), !dbg !1549
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !1549
  %call5 = tail call ptr @__errno_location() #13, !dbg !1549
  %2 = load i32, ptr %call5, align 4, !dbg !1549, !tbaa !1550
  %call6 = call ptr @GetExceptionMessage(i32 noundef %2) #11, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1522, metadata !DIExpression()), !dbg !1552
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2095, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call6) #11, !dbg !1549
  %call8 = call ptr @DestroyString(ptr noundef %call6) #11, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %call8, metadata !1522, metadata !DIExpression()), !dbg !1552
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !1549
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !1549
  call void @MagickCoreTerminus() #11, !dbg !1549
  call void @_exit(i32 noundef 1) #15, !dbg !1549
  unreachable, !dbg !1549

for.body15:                                       ; preds = %for.cond11.preheader, %for.body15
  %3 = phi ptr [ %4, %for.body15 ], [ %1, %for.cond11.preheader ]
  %i.141 = phi i64 [ %inc21, %for.body15 ], [ 0, %for.cond11.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.141, metadata !1521, metadata !DIExpression()), !dbg !1526
  %call18 = tail call ptr @AcquireString(ptr noundef nonnull %3) #11, !dbg !1553
  %arrayidx19 = getelementptr inbounds ptr, ptr %call2, i64 %i.141, !dbg !1554
  store ptr %call18, ptr %arrayidx19, align 8, !dbg !1555, !tbaa !1392
  %inc21 = add nuw nsw i64 %i.141, 1, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !1521, metadata !DIExpression()), !dbg !1526
  %arrayidx12 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc21, !dbg !1557
  %4 = load ptr, ptr %arrayidx12, align 8, !dbg !1544, !tbaa !1419
  %cmp14.not = icmp eq ptr %4, null, !dbg !1547
  br i1 %cmp14.not, label %for.end22, label %for.body15, !dbg !1548, !llvm.loop !1558

for.end22:                                        ; preds = %for.body15, %for.cond11.preheader
  %i.1.lcssa = phi i64 [ 0, %for.cond11.preheader ], [ %inc21, %for.body15 ], !dbg !1560
  %arrayidx23 = getelementptr inbounds ptr, ptr %call2, i64 %i.1.lcssa, !dbg !1561
  store ptr null, ptr %arrayidx23, align 8, !dbg !1562, !tbaa !1392
  br label %cleanup, !dbg !1563

cleanup:                                          ; preds = %entry, %for.end22
  %retval.0 = phi ptr [ %call2, %for.end22 ], [ null, %entry ], !dbg !1526
  ret ptr %retval.0, !dbg !1564
}

; Function Attrs: allocsize(0,1)
declare !dbg !1565 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !1569 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1573 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare !dbg !1577 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !1581 ptr @DestroyString(ptr noundef) local_unnamed_addr #2

declare !dbg !1584 void @CatchException(ptr noundef) local_unnamed_addr #2

declare !dbg !1585 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #2

declare !dbg !1588 void @MagickCoreTerminus() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !1592 ptr @AcquireString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetNextImageOption(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1593 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1597, metadata !DIExpression()), !dbg !1598
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1599
  %0 = load i32, ptr %debug, align 8, !dbg !1599, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1601
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1602

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1603
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2129, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1604
  br label %if.end, !dbg !1605

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1606
  %1 = load ptr, ptr %options, align 8, !dbg !1606, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1608
  br i1 %cmp1, label %return, label %if.end3, !dbg !1609

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @GetNextKeyInSplayTree(ptr noundef nonnull %1) #11, !dbg !1610
  br label %return, !dbg !1611

return:                                           ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !1598
  ret ptr %retval.0, !dbg !1612
}

declare !dbg !1613 ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define dso_local i32 @IsCommandOption(ptr nocapture noundef readonly %option) local_unnamed_addr #9 !dbg !1616 {
entry:
  call void @llvm.dbg.value(metadata ptr %option, metadata !1620, metadata !DIExpression()), !dbg !1621
  %0 = load i8, ptr %option, align 1, !dbg !1622, !tbaa !1237
  switch i8 %0, label %return [
    i8 45, label %if.end
    i8 43, label %if.end
  ], !dbg !1624

if.end:                                           ; preds = %entry, %entry
  %call = tail call i64 @strlen(ptr noundef nonnull %option) #12, !dbg !1625
  %cmp5 = icmp eq i64 %call, 1, !dbg !1627
  br i1 %cmp5, label %return, label %if.end8, !dbg !1628

if.end8:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, ptr %option, i64 1, !dbg !1629
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1620, metadata !DIExpression()), !dbg !1621
  %call9 = tail call ptr @__ctype_b_loc() #13, !dbg !1630
  %1 = load ptr, ptr %call9, align 8, !dbg !1630, !tbaa !1392
  %2 = load i8, ptr %incdec.ptr, align 1, !dbg !1630, !tbaa !1237
  %3 = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %3, !dbg !1630
  %4 = load i16, ptr %arrayidx, align 2, !dbg !1630, !tbaa !1397
  %5 = lshr i16 %4, 10, !dbg !1621
  %.lobit = and i16 %5, 1, !dbg !1621
  %6 = zext i16 %.lobit to i32, !dbg !1621
  br label %return, !dbg !1621

return:                                           ; preds = %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ %6, %if.end8 ], !dbg !1621
  ret i32 %retval.0, !dbg !1632
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local ptr @CommandOptionToMnemonic(i32 noundef %option, i64 noundef %type) local_unnamed_addr #10 !dbg !1633 {
entry:
  call void @llvm.dbg.value(metadata i32 %option, metadata !1638, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %type, metadata !1639, metadata !DIExpression()), !dbg !1642
  %call = tail call fastcc ptr @GetOptionInfo(i32 noundef %option), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %call, metadata !1640, metadata !DIExpression()), !dbg !1642
  %cmp = icmp eq ptr %call, null, !dbg !1644
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !1646

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1642
  %0 = load ptr, ptr %call, align 8, !dbg !1647, !tbaa !1419
  %cmp1.not23 = icmp eq ptr %0, null, !dbg !1650
  br i1 %cmp1.not23, label %cleanup, label %for.body.preheader, !dbg !1651

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression()), !dbg !1642
  %type326 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 0, i32 1, !dbg !1652
  %1 = load i64, ptr %type326, align 8, !dbg !1652, !tbaa !1654
  %cmp427 = icmp eq i64 %1, %type, !dbg !1655
  call void @llvm.dbg.value(metadata i64 0, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1642
  br i1 %cmp427, label %cleanup, label %for.cond, !dbg !1656

for.cond:                                         ; preds = %for.body.preheader, %for.body
  %i.02428 = phi i64 [ %inc, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.02428, metadata !1641, metadata !DIExpression()), !dbg !1642
  %inc = add nuw nsw i64 %i.02428, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1641, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i64 %i.02428, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1642
  %arrayidx = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc, !dbg !1658
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1647, !tbaa !1419
  %cmp1.not = icmp eq ptr %2, null, !dbg !1650
  br i1 %cmp1.not, label %cleanup, label %for.body, !dbg !1651, !llvm.loop !1659

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1641, metadata !DIExpression()), !dbg !1642
  %type3 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc, i32 1, !dbg !1652
  %3 = load i64, ptr %type3, align 8, !dbg !1652, !tbaa !1654
  %cmp4 = icmp eq i64 %3, %type, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1641, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1642
  br i1 %cmp4, label %cleanup, label %for.cond, !dbg !1656, !llvm.loop !1659

cleanup:                                          ; preds = %for.cond, %for.body, %for.body.preheader, %for.cond.preheader, %entry
  %retval.0 = phi ptr [ null, %entry ], [ @.str.5, %for.cond.preheader ], [ %0, %for.body.preheader ], [ %2, %for.body ], [ @.str.5, %for.cond ], !dbg !1642
  ret ptr %retval.0, !dbg !1661
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListCommandOptions(ptr noundef %file, i32 noundef %option, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !1662 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !1666, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i32 %option, metadata !1667, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1668, metadata !DIExpression()), !dbg !1671
  %cmp = icmp eq ptr %file, null, !dbg !1672
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1666, metadata !DIExpression()), !dbg !1671
  %call = tail call fastcc ptr @GetOptionInfo(i32 noundef %option), !dbg !1675
  call void @llvm.dbg.value(metadata ptr %call, metadata !1669, metadata !DIExpression()), !dbg !1671
  %cmp1 = icmp eq ptr %call, null, !dbg !1676
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !1678

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1670, metadata !DIExpression()), !dbg !1671
  %1 = load ptr, ptr %call, align 8, !dbg !1679, !tbaa !1419
  %cmp4.not20 = icmp eq ptr %1, null, !dbg !1682
  br i1 %cmp4.not20, label %cleanup, label %for.body, !dbg !1683

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %2 = phi ptr [ %4, %for.inc ], [ %1, %for.cond.preheader ]
  %i.021 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.021, metadata !1670, metadata !DIExpression()), !dbg !1671
  %stealth = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.021, i32 3, !dbg !1684
  %3 = load i32, ptr %stealth, align 8, !dbg !1684, !tbaa !1687
  %cmp6.not = icmp eq i32 %3, 0, !dbg !1688
  br i1 %cmp6.not, label %if.end8, label %for.inc, !dbg !1689

if.end8:                                          ; preds = %for.body
  %call11 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6, ptr noundef nonnull %2) #11, !dbg !1690
  br label %for.inc, !dbg !1691

for.inc:                                          ; preds = %for.body, %if.end8
  %inc = add nuw nsw i64 %i.021, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1670, metadata !DIExpression()), !dbg !1671
  %arrayidx = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc, !dbg !1693
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1679, !tbaa !1419
  %cmp4.not = icmp eq ptr %4, null, !dbg !1682
  br i1 %cmp4.not, label %cleanup, label %for.body, !dbg !1683, !llvm.loop !1694

cleanup:                                          ; preds = %for.inc, %for.cond.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %for.cond.preheader ], [ 1, %for.inc ], !dbg !1671
  ret i32 %retval.0, !dbg !1696
}

declare !dbg !1697 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @ParseChannelOption(ptr noundef %channels) local_unnamed_addr #0 !dbg !1702 {
entry:
  call void @llvm.dbg.value(metadata ptr %channels, metadata !1706, metadata !DIExpression()), !dbg !1715
  %call = tail call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef %channels), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %call, metadata !1708, metadata !DIExpression()), !dbg !1715
  %cmp = icmp sgt i64 %call, -1, !dbg !1717
  br i1 %cmp, label %cleanup29, label %for.cond.preheader, !dbg !1719

for.cond.preheader:                               ; preds = %entry
  %call1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %channels) #12, !dbg !1715
  call void @llvm.dbg.value(metadata i64 0, metadata !1708, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i64 0, metadata !1707, metadata !DIExpression()), !dbg !1715
  %cmp254 = icmp sgt i64 %call1, 0, !dbg !1720
  br i1 %cmp254, label %for.body, label %cleanup29, !dbg !1721

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %channel.056 = phi i64 [ %or, %for.inc ], [ 0, %for.cond.preheader ]
  %i.055 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %channel.056, metadata !1708, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i64 %i.055, metadata !1707, metadata !DIExpression()), !dbg !1715
  %arrayidx = getelementptr inbounds i8, ptr %channels, i64 %i.055, !dbg !1722
  %0 = load i8, ptr %arrayidx, align 1, !dbg !1722, !tbaa !1237
  %conv = sext i8 %0 to i32, !dbg !1722
  switch i32 %conv, label %cleanup29 [
    i32 65, label %for.inc
    i32 97, label %for.inc
    i32 66, label %sw.bb3
    i32 98, label %sw.bb3
    i32 67, label %sw.bb5
    i32 99, label %sw.bb5
    i32 103, label %sw.bb7
    i32 71, label %sw.bb7
    i32 73, label %sw.bb9
    i32 105, label %sw.bb9
    i32 75, label %sw.bb11
    i32 107, label %sw.bb11
    i32 77, label %sw.bb13
    i32 109, label %sw.bb13
    i32 111, label %for.inc
    i32 79, label %for.inc
    i32 82, label %sw.bb17
    i32 114, label %sw.bb17
    i32 89, label %sw.bb19
    i32 121, label %sw.bb19
    i32 44, label %sw.bb21
  ], !dbg !1723

sw.bb3:                                           ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1724

sw.bb5:                                           ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1726

sw.bb7:                                           ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1728

sw.bb9:                                           ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1730

sw.bb11:                                          ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1732

sw.bb13:                                          ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1734

sw.bb17:                                          ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1736

sw.bb19:                                          ; preds = %for.body, %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !1708, metadata !DIExpression()), !dbg !1715
  br label %for.inc, !dbg !1738

sw.bb21:                                          ; preds = %for.body
  %arrayidx.le = getelementptr inbounds i8, ptr %channels, i64 %i.055, !dbg !1722
  %add.ptr22 = getelementptr inbounds i8, ptr %arrayidx.le, i64 1, !dbg !1740
  %call23 = tail call i64 @ParseCommandOption(i32 noundef 4, i32 noundef 1, ptr noundef nonnull %add.ptr22), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %call23, metadata !1709, metadata !DIExpression()), !dbg !1742
  %cmp24 = icmp slt i64 %call23, 0, !dbg !1743
  %or28 = select i1 %cmp24, i64 0, i64 %channel.056, !dbg !1745
  %spec.select = or i64 %or28, %call23, !dbg !1745
  br label %cleanup29, !dbg !1745

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %sw.bb3, %sw.bb5, %sw.bb7, %sw.bb9, %sw.bb11, %sw.bb13, %sw.bb17, %sw.bb19
  %.sink = phi i64 [ 4, %sw.bb3 ], [ 1, %sw.bb5 ], [ 2, %sw.bb7 ], [ 32, %sw.bb9 ], [ 32, %sw.bb11 ], [ 2, %sw.bb13 ], [ 1, %sw.bb17 ], [ 4, %sw.bb19 ], [ 8, %for.body ], [ 8, %for.body ], [ 8, %for.body ], [ 8, %for.body ]
  %or = or i64 %channel.056, %.sink, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %or, metadata !1708, metadata !DIExpression()), !dbg !1715
  %inc = add nuw nsw i64 %i.055, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1707, metadata !DIExpression()), !dbg !1715
  %exitcond.not = icmp eq i64 %inc, %call1, !dbg !1720
  br i1 %exitcond.not, label %cleanup29, label %for.body, !dbg !1721, !llvm.loop !1748

cleanup29:                                        ; preds = %for.body, %for.inc, %for.cond.preheader, %sw.bb21, %entry
  %retval.1 = phi i64 [ %call, %entry ], [ %spec.select, %sw.bb21 ], [ 0, %for.cond.preheader ], [ -1, %for.body ], [ %or, %for.inc ], !dbg !1715
  ret i64 %retval.1, !dbg !1750
}

; Function Attrs: nounwind uwtable
define dso_local i64 @ParseCommandOption(i32 noundef %option, i32 noundef %list, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !1751 {
entry:
  %token = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %option, metadata !1753, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 %list, metadata !1754, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %options, metadata !1755, metadata !DIExpression()), !dbg !1764
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %token) #11, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %token, metadata !1756, metadata !DIExpression()), !dbg !1766
  %call = tail call fastcc ptr @GetOptionInfo(i32 noundef %option), !dbg !1767
  call void @llvm.dbg.value(metadata ptr %call, metadata !1757, metadata !DIExpression()), !dbg !1764
  %cmp = icmp eq ptr %call, null, !dbg !1768
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1770

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i32 44, metadata !1758, metadata !DIExpression()), !dbg !1764
  %call1 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %options, i32 noundef 124) #12, !dbg !1771
  %cmp2.not = icmp eq ptr %call1, null, !dbg !1773
  %spec.store.select = select i1 %cmp2.not, i32 44, i32 124, !dbg !1774
  call void @llvm.dbg.value(metadata i32 %spec.store.select, metadata !1758, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %options, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 0, metadata !1763, metadata !DIExpression()), !dbg !1764
  %cmp5.not249 = icmp eq ptr %options, null, !dbg !1775
  br i1 %cmp5.not249, label %cleanup, label %while.cond.preheader.lr.ph, !dbg !1778

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %call6 = tail call ptr @__ctype_b_loc() #13, !dbg !1764
  %sub.ptr.rhs.cast = ptrtoint ptr %token to i64
  %add.ptr = getelementptr inbounds i8, ptr %token, i64 1
  %cmp150 = icmp eq i32 %list, 0
  br label %while.cond.preheader, !dbg !1778

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.inc154
  %option_types.0251 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %option_types.2, %for.inc154 ]
  %p.0250 = phi ptr [ %options, %while.cond.preheader.lr.ph ], [ %call155, %for.inc154 ]
  call void @llvm.dbg.value(metadata i64 %option_types.0251, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %p.0250, metadata !1761, metadata !DIExpression()), !dbg !1764
  %0 = load ptr, ptr %call6, align 8, !tbaa !1392
  br label %while.cond, !dbg !1779

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %p.1 = phi ptr [ %incdec.ptr, %while.cond ], [ %p.0250, %while.cond.preheader ], !dbg !1781
  call void @llvm.dbg.value(metadata ptr %p.1, metadata !1761, metadata !DIExpression()), !dbg !1764
  %1 = load i8, ptr %p.1, align 1, !dbg !1782, !tbaa !1237
  %2 = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %2, !dbg !1782
  %3 = load i16, ptr %arrayidx, align 2, !dbg !1782, !tbaa !1397
  %4 = and i16 %3, 8192, !dbg !1782
  %cmp8.not = icmp eq i16 %4, 0, !dbg !1783
  %conv10 = sext i8 %1 to i32
  %cmp11 = icmp ne i32 %spec.store.select, %conv10
  %or.cond = select i1 %cmp8.not, i1 %cmp11, i1 false, !dbg !1784
  %cmp14.not = icmp eq i8 %1, 0
  %or.cond219 = select i1 %or.cond, i1 true, i1 %cmp14.not, !dbg !1784
  %incdec.ptr = getelementptr inbounds i8, ptr %p.1, i64 1, !dbg !1785
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1761, metadata !DIExpression()), !dbg !1764
  br i1 %or.cond219, label %while.end, label %while.cond, !dbg !1784, !llvm.loop !1786

while.end:                                        ; preds = %while.cond
  %cmp17 = icmp eq i8 %1, 33, !dbg !1787
  call void @llvm.dbg.value(metadata i32 undef, metadata !1759, metadata !DIExpression()), !dbg !1764
  %spec.select.idx = zext i1 %cmp17 to i64, !dbg !1788
  %spec.select = getelementptr i8, ptr %p.1, i64 %spec.select.idx, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %token, metadata !1760, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %token, metadata !1760, metadata !DIExpression()), !dbg !1764
  %5 = load i8, ptr %spec.select, align 1, !dbg !1789, !tbaa !1237
  %6 = zext i8 %5 to i64
  %arrayidx28224 = getelementptr inbounds i16, ptr %0, i64 %6, !dbg !1789
  %7 = load i16, ptr %arrayidx28224, align 2, !dbg !1789, !tbaa !1397
  %8 = and i16 %7, 8192, !dbg !1789
  %cmp31225 = icmp ne i16 %8, 0, !dbg !1790
  %conv33226 = sext i8 %5 to i32
  %cmp34.not227 = icmp eq i32 %spec.store.select, %conv33226
  %or.cond213228 = select i1 %cmp31225, i1 true, i1 %cmp34.not227, !dbg !1791
  %cmp38.not229 = icmp eq i8 %5, 0
  %or.cond214230 = select i1 %or.cond213228, i1 true, i1 %cmp38.not229, !dbg !1791
  br i1 %or.cond214230, label %while.end49, label %if.end46, !dbg !1791

if.end46:                                         ; preds = %while.end, %if.end46
  %9 = phi i8 [ %11, %if.end46 ], [ %5, %while.end ]
  %p.3234 = phi ptr [ %incdec.ptr47, %if.end46 ], [ %spec.select, %while.end ]
  %q.0233 = phi ptr [ %incdec.ptr48, %if.end46 ], [ %token, %while.end ]
  call void @llvm.dbg.value(metadata ptr %p.3234, metadata !1761, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %q.0233, metadata !1760, metadata !DIExpression()), !dbg !1764
  %incdec.ptr47 = getelementptr inbounds i8, ptr %p.3234, i64 1, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %incdec.ptr47, metadata !1761, metadata !DIExpression()), !dbg !1764
  %incdec.ptr48 = getelementptr inbounds i8, ptr %q.0233, i64 1, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %incdec.ptr48, metadata !1760, metadata !DIExpression()), !dbg !1764
  store i8 %9, ptr %q.0233, align 1, !dbg !1795, !tbaa !1237
  %10 = load ptr, ptr %call6, align 8, !dbg !1789, !tbaa !1392
  %11 = load i8, ptr %incdec.ptr47, align 1, !dbg !1789, !tbaa !1237
  %12 = zext i8 %11 to i64
  %arrayidx28 = getelementptr inbounds i16, ptr %10, i64 %12, !dbg !1789
  %13 = load i16, ptr %arrayidx28, align 2, !dbg !1789, !tbaa !1397
  %14 = and i16 %13, 8192, !dbg !1789
  %cmp31 = icmp ne i16 %14, 0, !dbg !1790
  %conv33 = sext i8 %11 to i32
  %cmp34.not = icmp eq i32 %spec.store.select, %conv33
  %or.cond213 = select i1 %cmp31, i1 true, i1 %cmp34.not, !dbg !1791
  %cmp38.not = icmp eq i8 %11, 0
  %or.cond214 = select i1 %or.cond213, i1 true, i1 %cmp38.not, !dbg !1791
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr48 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp43 = icmp sgt i64 %sub.ptr.sub, 4094
  %or.cond215 = select i1 %or.cond214, i1 true, i1 %cmp43, !dbg !1791
  br i1 %or.cond215, label %while.end49, label %if.end46, !dbg !1791, !llvm.loop !1796

while.end49:                                      ; preds = %if.end46, %while.end
  %q.0.lcssa = phi ptr [ %token, %while.end ], [ %incdec.ptr48, %if.end46 ], !dbg !1799
  %p.3.lcssa = phi ptr [ %spec.select, %while.end ], [ %incdec.ptr47, %if.end46 ], !dbg !1799
  store i8 0, ptr %q.0.lcssa, align 1, !dbg !1800, !tbaa !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1764
  %15 = load ptr, ptr %call, align 8, !dbg !1801, !tbaa !1419
  %cmp52.not236 = icmp eq ptr %15, null, !dbg !1804
  br i1 %cmp52.not236, label %land.lhs.true77, label %for.body54.preheader, !dbg !1805

for.body54.preheader:                             ; preds = %while.end49
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1764
  %call58269 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %15) #11, !dbg !1806
  %cmp59270 = icmp eq i32 %call58269, 0, !dbg !1808
  br i1 %cmp59270, label %if.then61, label %for.inc, !dbg !1809

for.body54:                                       ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1762, metadata !DIExpression()), !dbg !1764
  %call58 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %18) #11, !dbg !1806
  %cmp59 = icmp eq i32 %call58, 0, !dbg !1808
  br i1 %cmp59, label %if.then61, label %for.inc, !dbg !1809, !llvm.loop !1810

if.then61:                                        ; preds = %for.body54, %for.body54.preheader
  %arrayidx51238.lcssa = phi ptr [ %call, %for.body54.preheader ], [ %arrayidx51, %for.body54 ]
  %i.0237.lcssa = phi i64 [ 0, %for.body54.preheader ], [ %inc, %for.body54 ]
  %16 = load i8, ptr %token, align 16, !dbg !1812, !tbaa !1237
  %cmp64 = icmp eq i8 %16, 33, !dbg !1815
  %type = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.0237.lcssa, i32 1, !dbg !1816
  %17 = load i64, ptr %type, align 8, !dbg !1816, !tbaa !1654
  br i1 %cmp64, label %if.then66, label %if.else, !dbg !1817

if.then66:                                        ; preds = %if.then61
  %neg = xor i64 %17, -1, !dbg !1818
  %and68 = and i64 %option_types.0251, %neg, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %and68, metadata !1763, metadata !DIExpression()), !dbg !1764
  br label %for.end, !dbg !1820

if.else:                                          ; preds = %if.then61
  %or = or i64 %17, %option_types.0251, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %or, metadata !1763, metadata !DIExpression()), !dbg !1764
  br label %for.end

for.inc:                                          ; preds = %for.body54.preheader, %for.body54
  %i.0237271 = phi i64 [ %inc, %for.body54 ], [ 0, %for.body54.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0237271, metadata !1762, metadata !DIExpression()), !dbg !1764
  %inc = add nuw nsw i64 %i.0237271, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1762, metadata !DIExpression()), !dbg !1764
  %arrayidx51 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc, !dbg !1823
  %18 = load ptr, ptr %arrayidx51, align 8, !dbg !1801, !tbaa !1419
  %cmp52.not = icmp eq ptr %18, null, !dbg !1804
  br i1 %cmp52.not, label %land.lhs.true77, label %for.body54, !dbg !1805, !llvm.loop !1810

for.end:                                          ; preds = %if.then66, %if.else
  %option_types.1.ph = phi i64 [ %or, %if.else ], [ %and68, %if.then66 ]
  %.pr = load ptr, ptr %arrayidx51238.lcssa, align 8, !dbg !1824, !tbaa !1419
  call void @llvm.dbg.value(metadata i64 %option_types.1.ph, metadata !1763, metadata !DIExpression()), !dbg !1764
  %cmp75 = icmp eq ptr %.pr, null, !dbg !1826
  br i1 %cmp75, label %land.lhs.true77, label %if.end143, !dbg !1827

land.lhs.true77:                                  ; preds = %for.inc, %while.end49, %for.end
  %i.0222 = phi i64 [ %i.0237.lcssa, %for.end ], [ 0, %while.end49 ], [ %inc, %for.inc ]
  %option_types.1218 = phi i64 [ %option_types.1.ph, %for.end ], [ %option_types.0251, %while.end49 ], [ %option_types.0251, %for.inc ]
  %call79 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 45) #12, !dbg !1828
  %cmp80.not = icmp eq ptr %call79, null, !dbg !1829
  br i1 %cmp80.not, label %lor.lhs.false82, label %while.body95, !dbg !1830

lor.lhs.false82:                                  ; preds = %land.lhs.true77
  %call85 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1831
  %cmp86.not = icmp eq ptr %call85, null, !dbg !1832
  br i1 %cmp86.not, label %if.end143, label %while.cond100.preheader, !dbg !1833

while.cond100.preheader:                          ; preds = %while.body95, %lor.lhs.false82
  %call103243 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %call103243, metadata !1760, metadata !DIExpression()), !dbg !1764
  %cmp104.not244 = icmp eq ptr %call103243, null, !dbg !1836
  br i1 %cmp104.not244, label %for.cond112.preheader, label %while.body106, !dbg !1837

while.body95:                                     ; preds = %land.lhs.true77, %while.body95
  %call92242 = phi ptr [ %call92, %while.body95 ], [ %call79, %land.lhs.true77 ]
  %add.ptr96 = getelementptr inbounds i8, ptr %call92242, i64 1, !dbg !1838
  %call97 = call i64 @strlen(ptr noundef nonnull %call92242) #12, !dbg !1839
  %sub = sub i64 4096, %call97, !dbg !1840
  %call98 = call i64 @CopyMagickString(ptr noundef nonnull %call92242, ptr noundef nonnull %add.ptr96, i64 noundef %sub) #11, !dbg !1841
  %call92 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 45) #12, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %call92, metadata !1760, metadata !DIExpression()), !dbg !1764
  %cmp93.not = icmp eq ptr %call92, null, !dbg !1843
  br i1 %cmp93.not, label %while.cond100.preheader, label %while.body95, !dbg !1844, !llvm.loop !1845

for.cond112.preheader:                            ; preds = %while.body106, %while.cond100.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !1762, metadata !DIExpression()), !dbg !1764
  %19 = load ptr, ptr %call, align 8, !dbg !1847, !tbaa !1419
  %cmp115.not246 = icmp eq ptr %19, null, !dbg !1850
  br i1 %cmp115.not246, label %if.end143, label %for.body117, !dbg !1851

while.body106:                                    ; preds = %while.cond100.preheader, %while.body106
  %call103245 = phi ptr [ %call103, %while.body106 ], [ %call103243, %while.cond100.preheader ]
  %add.ptr107 = getelementptr inbounds i8, ptr %call103245, i64 1, !dbg !1852
  %call108 = call i64 @strlen(ptr noundef nonnull %call103245) #12, !dbg !1853
  %sub109 = sub i64 4096, %call108, !dbg !1854
  %call110 = call i64 @CopyMagickString(ptr noundef nonnull %call103245, ptr noundef nonnull %add.ptr107, i64 noundef %sub109) #11, !dbg !1855
  %call103 = call ptr @strchr(ptr noundef nonnull %add.ptr, i32 noundef 95) #12, !dbg !1834
  call void @llvm.dbg.value(metadata ptr %call103, metadata !1760, metadata !DIExpression()), !dbg !1764
  %cmp104.not = icmp eq ptr %call103, null, !dbg !1836
  br i1 %cmp104.not, label %for.cond112.preheader, label %while.body106, !dbg !1837, !llvm.loop !1856

for.body117:                                      ; preds = %for.cond112.preheader, %for.inc140
  %20 = phi ptr [ %23, %for.inc140 ], [ %19, %for.cond112.preheader ]
  %i.1247 = phi i64 [ %inc141, %for.inc140 ], [ 0, %for.cond112.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1247, metadata !1762, metadata !DIExpression()), !dbg !1764
  %call121 = call i32 @LocaleCompare(ptr noundef nonnull %token, ptr noundef nonnull %20) #11, !dbg !1858
  %cmp122 = icmp eq i32 %call121, 0, !dbg !1860
  br i1 %cmp122, label %if.then124, label %for.inc140, !dbg !1861

if.then124:                                       ; preds = %for.body117
  %21 = load i8, ptr %token, align 16, !dbg !1862, !tbaa !1237
  %cmp127 = icmp eq i8 %21, 33, !dbg !1865
  %type131 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.1247, i32 1, !dbg !1866
  %22 = load i64, ptr %type131, align 8, !dbg !1866, !tbaa !1654
  br i1 %cmp127, label %if.then129, label %if.else134, !dbg !1867

if.then129:                                       ; preds = %if.then124
  %neg132 = xor i64 %22, -1, !dbg !1868
  %and133 = and i64 %option_types.1218, %neg132, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %and133, metadata !1763, metadata !DIExpression()), !dbg !1764
  br label %if.end143, !dbg !1870

if.else134:                                       ; preds = %if.then124
  %or137 = or i64 %22, %option_types.1218, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %or137, metadata !1763, metadata !DIExpression()), !dbg !1764
  br label %if.end143

for.inc140:                                       ; preds = %for.body117
  %inc141 = add nuw nsw i64 %i.1247, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %inc141, metadata !1762, metadata !DIExpression()), !dbg !1764
  %arrayidx113 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %inc141, !dbg !1873
  %23 = load ptr, ptr %arrayidx113, align 8, !dbg !1847, !tbaa !1419
  %cmp115.not = icmp eq ptr %23, null, !dbg !1850
  br i1 %cmp115.not, label %if.end143, label %for.body117, !dbg !1851, !llvm.loop !1874

if.end143:                                        ; preds = %for.inc140, %for.cond112.preheader, %if.else134, %if.then129, %lor.lhs.false82, %for.end
  %i.2 = phi i64 [ %i.1247, %if.then129 ], [ %i.1247, %if.else134 ], [ %i.0222, %lor.lhs.false82 ], [ %i.0237.lcssa, %for.end ], [ 0, %for.cond112.preheader ], [ %inc141, %for.inc140 ], !dbg !1799
  %option_types.2 = phi i64 [ %and133, %if.then129 ], [ %or137, %if.else134 ], [ %option_types.1218, %lor.lhs.false82 ], [ %option_types.1.ph, %for.end ], [ %option_types.1218, %for.cond112.preheader ], [ %option_types.1218, %for.inc140 ], !dbg !1799
  call void @llvm.dbg.value(metadata i64 %option_types.2, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1762, metadata !DIExpression()), !dbg !1764
  %arrayidx144 = getelementptr inbounds %struct._OptionInfo, ptr %call, i64 %i.2, !dbg !1876
  %24 = load ptr, ptr %arrayidx144, align 8, !dbg !1878, !tbaa !1419
  %cmp146 = icmp eq ptr %24, null, !dbg !1879
  %brmerge = or i1 %cmp146, %cmp150, !dbg !1880
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit262, label %for.inc154, !dbg !1880

for.inc154:                                       ; preds = %if.end143
  %call155 = call ptr @strchr(ptr noundef nonnull %p.3.lcssa, i32 noundef %spec.store.select) #12, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %option_types.2, metadata !1763, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata ptr %call155, metadata !1761, metadata !DIExpression()), !dbg !1764
  %cmp5.not = icmp eq ptr %call155, null, !dbg !1775
  br i1 %cmp5.not, label %cleanup, label %while.cond.preheader, !dbg !1778, !llvm.loop !1882

cleanup.loopexit.split.loop.exit262:              ; preds = %if.end143
  %.mux.le = select i1 %cmp146, i64 -1, i64 %option_types.2, !dbg !1880
  br label %cleanup, !dbg !1884

cleanup:                                          ; preds = %for.inc154, %cleanup.loopexit.split.loop.exit262, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ 0, %if.end ], [ %.mux.le, %cleanup.loopexit.split.loop.exit262 ], [ %option_types.2, %for.inc154 ], !dbg !1764
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %token) #11, !dbg !1884
  ret i64 %retval.0, !dbg !1884
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RemoveImageOption(ptr noundef %image_info, ptr noundef %option) local_unnamed_addr #0 !dbg !1885 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1889, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata ptr %option, metadata !1890, metadata !DIExpression()), !dbg !1892
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1893
  %0 = load i32, ptr %debug, align 8, !dbg !1893, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1895
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1896

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1897
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2536, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1898
  br label %if.end, !dbg !1899

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1900
  %1 = load ptr, ptr %options, align 8, !dbg !1900, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1902
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !1903

if.end3:                                          ; preds = %if.end
  %call5 = tail call ptr @RemoveNodeFromSplayTree(ptr noundef nonnull %1, ptr noundef %option) #11, !dbg !1904
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1891, metadata !DIExpression()), !dbg !1892
  br label %cleanup, !dbg !1905

cleanup:                                          ; preds = %if.end, %if.end3
  %retval.0 = phi ptr [ %call5, %if.end3 ], [ null, %if.end ], !dbg !1892
  ret ptr %retval.0, !dbg !1906
}

declare !dbg !1907 ptr @RemoveNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageOptions(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1910 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1914, metadata !DIExpression()), !dbg !1915
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1916
  %0 = load i32, ptr %debug, align 8, !dbg !1916, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1918
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1919

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1920
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2573, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1921
  br label %if.end, !dbg !1922

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1923
  %1 = load ptr, ptr %options, align 8, !dbg !1923, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1925
  br i1 %cmp1, label %return, label %if.end3, !dbg !1926

if.end3:                                          ; preds = %if.end
  tail call void @ResetSplayTree(ptr noundef nonnull %1) #11, !dbg !1927
  br label %return, !dbg !1928

return:                                           ; preds = %if.end, %if.end3
  ret void, !dbg !1928
}

declare !dbg !1929 void @ResetSplayTree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ResetImageOptionIterator(ptr noundef %image_info) local_unnamed_addr #0 !dbg !1932 {
entry:
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1934, metadata !DIExpression()), !dbg !1935
  %debug = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 52, !dbg !1936
  %0 = load i32, ptr %debug, align 8, !dbg !1936, !tbaa !1142
  %cmp.not = icmp eq i32 %0, 0, !dbg !1938
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1939

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 51, !dbg !1940
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2609, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #11, !dbg !1941
  br label %if.end, !dbg !1942

if.end:                                           ; preds = %if.then, %entry
  %options = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 40, !dbg !1943
  %1 = load ptr, ptr %options, align 8, !dbg !1943, !tbaa !1158
  %cmp1 = icmp eq ptr %1, null, !dbg !1945
  br i1 %cmp1, label %return, label %if.end3, !dbg !1946

if.end3:                                          ; preds = %if.end
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %1) #11, !dbg !1947
  br label %return, !dbg !1948

return:                                           ; preds = %if.end, %if.end3
  ret void, !dbg !1948
}

declare !dbg !1949 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #2

declare !dbg !1950 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1953 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #2

declare ptr @RelinquishMagickMemory(ptr noundef) #2

declare !dbg !1959 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!840, !841, !842, !843, !844, !845}
!llvm.ident = !{!846}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "AlignOptions", scope: !2, file: !652, line: 83, type: !800, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !562, globals: !649, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/option.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "d1b02d8a7f2f006aac66efe5e47db142")
!4 = !{!5, !11, !36, !48, !58, !64, !69, !106, !120, !153, !175, !180, !188, !223, !238, !309, !317, !323, !396, !413, !425, !446, !471, !547}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 25, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!14 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!15 = !DIEnumerator(name: "NoCompression", value: 1)
!16 = !DIEnumerator(name: "BZipCompression", value: 2)
!17 = !DIEnumerator(name: "DXT1Compression", value: 3)
!18 = !DIEnumerator(name: "DXT3Compression", value: 4)
!19 = !DIEnumerator(name: "DXT5Compression", value: 5)
!20 = !DIEnumerator(name: "FaxCompression", value: 6)
!21 = !DIEnumerator(name: "Group4Compression", value: 7)
!22 = !DIEnumerator(name: "JPEGCompression", value: 8)
!23 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!24 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!25 = !DIEnumerator(name: "LZWCompression", value: 11)
!26 = !DIEnumerator(name: "RLECompression", value: 12)
!27 = !DIEnumerator(name: "ZipCompression", value: 13)
!28 = !DIEnumerator(name: "ZipSCompression", value: 14)
!29 = !DIEnumerator(name: "PizCompression", value: 15)
!30 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!31 = !DIEnumerator(name: "B44Compression", value: 17)
!32 = !DIEnumerator(name: "B44ACompression", value: 18)
!33 = !DIEnumerator(name: "LZMACompression", value: 19)
!34 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!35 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 75, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47}
!39 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!40 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!41 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!42 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!43 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!44 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!45 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!46 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!47 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 63, baseType: !7, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57}
!50 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!51 = !DIEnumerator(name: "NoInterlace", value: 1)
!52 = !DIEnumerator(name: "LineInterlace", value: 2)
!53 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!54 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!55 = !DIEnumerator(name: "GIFInterlace", value: 5)
!56 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!57 = !DIEnumerator(name: "PNGInterlace", value: 7)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 30, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!62 = !DIEnumerator(name: "LSBEndian", value: 1)
!63 = !DIEnumerator(name: "MSBEndian", value: 2)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 88, baseType: !7, size: 32, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!67 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!68 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !70, line: 25, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!72 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!73 = !DIEnumerator(name: "RGBColorspace", value: 1)
!74 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!75 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!76 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!77 = !DIEnumerator(name: "LabColorspace", value: 5)
!78 = !DIEnumerator(name: "XYZColorspace", value: 6)
!79 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!80 = !DIEnumerator(name: "YCCColorspace", value: 8)
!81 = !DIEnumerator(name: "YIQColorspace", value: 9)
!82 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!83 = !DIEnumerator(name: "YUVColorspace", value: 11)
!84 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!85 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!86 = !DIEnumerator(name: "HSBColorspace", value: 14)
!87 = !DIEnumerator(name: "HSLColorspace", value: 15)
!88 = !DIEnumerator(name: "HWBColorspace", value: 16)
!89 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!90 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!91 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!92 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!93 = !DIEnumerator(name: "LogColorspace", value: 21)
!94 = !DIEnumerator(name: "CMYColorspace", value: 22)
!95 = !DIEnumerator(name: "LuvColorspace", value: 23)
!96 = !DIEnumerator(name: "HCLColorspace", value: 24)
!97 = !DIEnumerator(name: "LCHColorspace", value: 25)
!98 = !DIEnumerator(name: "LMSColorspace", value: 26)
!99 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!100 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!101 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!102 = !DIEnumerator(name: "HSIColorspace", value: 30)
!103 = !DIEnumerator(name: "HSVColorspace", value: 31)
!104 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!105 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 47, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119}
!108 = !DIEnumerator(name: "UndefinedType", value: 0)
!109 = !DIEnumerator(name: "BilevelType", value: 1)
!110 = !DIEnumerator(name: "GrayscaleType", value: 2)
!111 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!112 = !DIEnumerator(name: "PaletteType", value: 4)
!113 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!114 = !DIEnumerator(name: "TrueColorType", value: 6)
!115 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!116 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!117 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!118 = !DIEnumerator(name: "OptimizeType", value: 10)
!119 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !121, line: 27, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!122 = !{!123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152}
!123 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!124 = !DIEnumerator(name: "RotatePreview", value: 1)
!125 = !DIEnumerator(name: "ShearPreview", value: 2)
!126 = !DIEnumerator(name: "RollPreview", value: 3)
!127 = !DIEnumerator(name: "HuePreview", value: 4)
!128 = !DIEnumerator(name: "SaturationPreview", value: 5)
!129 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!130 = !DIEnumerator(name: "GammaPreview", value: 7)
!131 = !DIEnumerator(name: "SpiffPreview", value: 8)
!132 = !DIEnumerator(name: "DullPreview", value: 9)
!133 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!134 = !DIEnumerator(name: "QuantizePreview", value: 11)
!135 = !DIEnumerator(name: "DespecklePreview", value: 12)
!136 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!137 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!138 = !DIEnumerator(name: "SharpenPreview", value: 15)
!139 = !DIEnumerator(name: "BlurPreview", value: 16)
!140 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!141 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!142 = !DIEnumerator(name: "SpreadPreview", value: 19)
!143 = !DIEnumerator(name: "SolarizePreview", value: 20)
!144 = !DIEnumerator(name: "ShadePreview", value: 21)
!145 = !DIEnumerator(name: "RaisePreview", value: 22)
!146 = !DIEnumerator(name: "SegmentPreview", value: 23)
!147 = !DIEnumerator(name: "SwirlPreview", value: 24)
!148 = !DIEnumerator(name: "ImplodePreview", value: 25)
!149 = !DIEnumerator(name: "WavePreview", value: 26)
!150 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!151 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!152 = !DIEnumerator(name: "JPEGPreview", value: 29)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !154)
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!155 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!156 = !DIEnumerator(name: "RedChannel", value: 1)
!157 = !DIEnumerator(name: "GrayChannel", value: 1)
!158 = !DIEnumerator(name: "CyanChannel", value: 1)
!159 = !DIEnumerator(name: "GreenChannel", value: 2)
!160 = !DIEnumerator(name: "MagentaChannel", value: 2)
!161 = !DIEnumerator(name: "BlueChannel", value: 4)
!162 = !DIEnumerator(name: "YellowChannel", value: 4)
!163 = !DIEnumerator(name: "AlphaChannel", value: 8)
!164 = !DIEnumerator(name: "OpacityChannel", value: 8)
!165 = !DIEnumerator(name: "MatteChannel", value: 8)
!166 = !DIEnumerator(name: "BlackChannel", value: 32)
!167 = !DIEnumerator(name: "IndexChannel", value: 32)
!168 = !DIEnumerator(name: "CompositeChannels", value: 47)
!169 = !DIEnumerator(name: "AllChannels", value: 134217727)
!170 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!171 = !DIEnumerator(name: "RGBChannels", value: 128)
!172 = !DIEnumerator(name: "GrayChannels", value: 128)
!173 = !DIEnumerator(name: "SyncChannels", value: 256)
!174 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIEnumerator(name: "UndefinedClass", value: 0)
!178 = !DIEnumerator(name: "DirectClass", value: 1)
!179 = !DIEnumerator(name: "PseudoClass", value: 2)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !181, line: 42, baseType: !7, size: 32, elements: !182)
!181 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!182 = !{!183, !184, !185, !186, !187}
!183 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!184 = !DIEnumerator(name: "SaturationIntent", value: 1)
!185 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!186 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!187 = !DIEnumerator(name: "RelativeIntent", value: 4)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 32, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222}
!191 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!192 = !DIEnumerator(name: "PointFilter", value: 1)
!193 = !DIEnumerator(name: "BoxFilter", value: 2)
!194 = !DIEnumerator(name: "TriangleFilter", value: 3)
!195 = !DIEnumerator(name: "HermiteFilter", value: 4)
!196 = !DIEnumerator(name: "HanningFilter", value: 5)
!197 = !DIEnumerator(name: "HammingFilter", value: 6)
!198 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!199 = !DIEnumerator(name: "GaussianFilter", value: 8)
!200 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!201 = !DIEnumerator(name: "CubicFilter", value: 10)
!202 = !DIEnumerator(name: "CatromFilter", value: 11)
!203 = !DIEnumerator(name: "MitchellFilter", value: 12)
!204 = !DIEnumerator(name: "JincFilter", value: 13)
!205 = !DIEnumerator(name: "SincFilter", value: 14)
!206 = !DIEnumerator(name: "SincFastFilter", value: 15)
!207 = !DIEnumerator(name: "KaiserFilter", value: 16)
!208 = !DIEnumerator(name: "WelshFilter", value: 17)
!209 = !DIEnumerator(name: "ParzenFilter", value: 18)
!210 = !DIEnumerator(name: "BohmanFilter", value: 19)
!211 = !DIEnumerator(name: "BartlettFilter", value: 20)
!212 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!213 = !DIEnumerator(name: "LanczosFilter", value: 22)
!214 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!215 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!216 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!217 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!218 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!219 = !DIEnumerator(name: "CosineFilter", value: 28)
!220 = !DIEnumerator(name: "SplineFilter", value: 29)
!221 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!222 = !DIEnumerator(name: "SentinelFilter", value: 31)
!223 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !224, line: 77, baseType: !7, size: 32, elements: !225)
!224 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!226 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!227 = !DIEnumerator(name: "ForgetGravity", value: 0)
!228 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!229 = !DIEnumerator(name: "NorthGravity", value: 2)
!230 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!231 = !DIEnumerator(name: "WestGravity", value: 4)
!232 = !DIEnumerator(name: "CenterGravity", value: 5)
!233 = !DIEnumerator(name: "EastGravity", value: 6)
!234 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!235 = !DIEnumerator(name: "SouthGravity", value: 8)
!236 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!237 = !DIEnumerator(name: "StaticGravity", value: 10)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 25, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308}
!241 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!242 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!243 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!244 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!245 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!246 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!247 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!248 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!249 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!250 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!251 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!252 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!253 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!254 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!255 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!256 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!257 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!258 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!259 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!260 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!261 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!262 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!263 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!264 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!265 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!266 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!267 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!268 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!269 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!270 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!271 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!272 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!273 = !DIEnumerator(name: "InCompositeOp", value: 32)
!274 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!275 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!276 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!277 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!278 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!279 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!280 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!281 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!282 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!283 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!284 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!285 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!286 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!287 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!288 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!289 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!290 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!291 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!292 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!293 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!294 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!295 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!296 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!297 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!298 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!299 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!300 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!301 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!302 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!303 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!304 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!305 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!306 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!307 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!308 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !310, line: 25, baseType: !7, size: 32, elements: !311)
!310 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!311 = !{!312, !313, !314, !315, !316}
!312 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!313 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!314 = !DIEnumerator(name: "NoneDispose", value: 1)
!315 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!316 = !DIEnumerator(name: "PreviousDispose", value: 3)
!317 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !318, line: 25, baseType: !7, size: 32, elements: !319)
!318 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!319 = !{!320, !321, !322}
!320 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!321 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!322 = !DIEnumerator(name: "RunningTimerState", value: 2)
!323 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !324, line: 28, baseType: !7, size: 32, elements: !325)
!324 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!326 = !DIEnumerator(name: "UndefinedException", value: 0)
!327 = !DIEnumerator(name: "WarningException", value: 300)
!328 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!329 = !DIEnumerator(name: "TypeWarning", value: 305)
!330 = !DIEnumerator(name: "OptionWarning", value: 310)
!331 = !DIEnumerator(name: "DelegateWarning", value: 315)
!332 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!333 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!334 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!335 = !DIEnumerator(name: "BlobWarning", value: 335)
!336 = !DIEnumerator(name: "StreamWarning", value: 340)
!337 = !DIEnumerator(name: "CacheWarning", value: 345)
!338 = !DIEnumerator(name: "CoderWarning", value: 350)
!339 = !DIEnumerator(name: "FilterWarning", value: 352)
!340 = !DIEnumerator(name: "ModuleWarning", value: 355)
!341 = !DIEnumerator(name: "DrawWarning", value: 360)
!342 = !DIEnumerator(name: "ImageWarning", value: 365)
!343 = !DIEnumerator(name: "WandWarning", value: 370)
!344 = !DIEnumerator(name: "RandomWarning", value: 375)
!345 = !DIEnumerator(name: "XServerWarning", value: 380)
!346 = !DIEnumerator(name: "MonitorWarning", value: 385)
!347 = !DIEnumerator(name: "RegistryWarning", value: 390)
!348 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!349 = !DIEnumerator(name: "PolicyWarning", value: 399)
!350 = !DIEnumerator(name: "ErrorException", value: 400)
!351 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!352 = !DIEnumerator(name: "TypeError", value: 405)
!353 = !DIEnumerator(name: "OptionError", value: 410)
!354 = !DIEnumerator(name: "DelegateError", value: 415)
!355 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!356 = !DIEnumerator(name: "CorruptImageError", value: 425)
!357 = !DIEnumerator(name: "FileOpenError", value: 430)
!358 = !DIEnumerator(name: "BlobError", value: 435)
!359 = !DIEnumerator(name: "StreamError", value: 440)
!360 = !DIEnumerator(name: "CacheError", value: 445)
!361 = !DIEnumerator(name: "CoderError", value: 450)
!362 = !DIEnumerator(name: "FilterError", value: 452)
!363 = !DIEnumerator(name: "ModuleError", value: 455)
!364 = !DIEnumerator(name: "DrawError", value: 460)
!365 = !DIEnumerator(name: "ImageError", value: 465)
!366 = !DIEnumerator(name: "WandError", value: 470)
!367 = !DIEnumerator(name: "RandomError", value: 475)
!368 = !DIEnumerator(name: "XServerError", value: 480)
!369 = !DIEnumerator(name: "MonitorError", value: 485)
!370 = !DIEnumerator(name: "RegistryError", value: 490)
!371 = !DIEnumerator(name: "ConfigureError", value: 495)
!372 = !DIEnumerator(name: "PolicyError", value: 499)
!373 = !DIEnumerator(name: "FatalErrorException", value: 700)
!374 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!375 = !DIEnumerator(name: "TypeFatalError", value: 705)
!376 = !DIEnumerator(name: "OptionFatalError", value: 710)
!377 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!378 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!379 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!380 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!381 = !DIEnumerator(name: "BlobFatalError", value: 735)
!382 = !DIEnumerator(name: "StreamFatalError", value: 740)
!383 = !DIEnumerator(name: "CacheFatalError", value: 745)
!384 = !DIEnumerator(name: "CoderFatalError", value: 750)
!385 = !DIEnumerator(name: "FilterFatalError", value: 752)
!386 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!387 = !DIEnumerator(name: "DrawFatalError", value: 760)
!388 = !DIEnumerator(name: "ImageFatalError", value: 765)
!389 = !DIEnumerator(name: "WandFatalError", value: 770)
!390 = !DIEnumerator(name: "RandomFatalError", value: 775)
!391 = !DIEnumerator(name: "XServerFatalError", value: 780)
!392 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!393 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!394 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!395 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!396 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 31, baseType: !7, size: 32, elements: !398)
!397 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!399 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!400 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!401 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!402 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!403 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!404 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!405 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!406 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!407 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!408 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!409 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!410 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!411 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!412 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !397, line: 67, baseType: !7, size: 32, elements: !414)
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!415 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!416 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!417 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!418 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!419 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!420 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!421 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!422 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!423 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!424 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !426, line: 27, baseType: !7, size: 32, elements: !427)
!426 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!428 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!429 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!430 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!431 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!432 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!433 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!434 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!435 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!436 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!437 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!438 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!439 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!440 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!441 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!442 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!443 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!444 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!445 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!446 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !447, line: 34, baseType: !7, size: 32, elements: !448)
!447 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!449 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!450 = !DIEnumerator(name: "NoEvents", value: 0)
!451 = !DIEnumerator(name: "TraceEvent", value: 1)
!452 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!453 = !DIEnumerator(name: "BlobEvent", value: 4)
!454 = !DIEnumerator(name: "CacheEvent", value: 8)
!455 = !DIEnumerator(name: "CoderEvent", value: 16)
!456 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!457 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!458 = !DIEnumerator(name: "DrawEvent", value: 128)
!459 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!460 = !DIEnumerator(name: "ImageEvent", value: 512)
!461 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!462 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!463 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!464 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!465 = !DIEnumerator(name: "TransformEvent", value: 16384)
!466 = !DIEnumerator(name: "UserEvent", value: 36864)
!467 = !DIEnumerator(name: "WandEvent", value: 65536)
!468 = !DIEnumerator(name: "X11Event", value: 131072)
!469 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!470 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!471 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !472, line: 25, baseType: !473, size: 32, elements: !474)
!472 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!473 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!474 = !{!475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!475 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!476 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!477 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!478 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!479 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!480 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!481 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!482 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!483 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!484 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!485 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!486 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!487 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!488 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!489 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!490 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!491 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!492 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!493 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!494 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!495 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!496 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!497 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!498 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!499 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!500 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!501 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!502 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!503 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!504 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!505 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!506 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!507 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!508 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!509 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!510 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!511 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!512 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!513 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!514 = !DIEnumerator(name: "MagickListOptions", value: 38)
!515 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!516 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!517 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!518 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!519 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!520 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!521 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!522 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!523 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!524 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!525 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!526 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!527 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!528 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!529 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!530 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!531 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!532 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!533 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!534 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!535 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!536 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!537 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!538 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!539 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!540 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!541 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!542 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!543 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!544 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!545 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!546 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!547 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 46, baseType: !7, size: 32, elements: !549)
!548 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561}
!550 = !DIEnumerator(name: "_ISupper", value: 256)
!551 = !DIEnumerator(name: "_ISlower", value: 512)
!552 = !DIEnumerator(name: "_ISalpha", value: 1024)
!553 = !DIEnumerator(name: "_ISdigit", value: 2048)
!554 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!555 = !DIEnumerator(name: "_ISspace", value: 8192)
!556 = !DIEnumerator(name: "_ISprint", value: 16384)
!557 = !DIEnumerator(name: "_ISgraph", value: 32768)
!558 = !DIEnumerator(name: "_ISblank", value: 1)
!559 = !DIEnumerator(name: "_IScntrl", value: 2)
!560 = !DIEnumerator(name: "_ISpunct", value: 4)
!561 = !DIEnumerator(name: "_ISalnum", value: 8)
!562 = !{!563, !564, !565, !569, !572, !575, !590, !473, !591, !592, !593, !594, !596, !582}
!563 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !567, line: 26, baseType: !568)
!567 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !567, line: 25, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!564, !564}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "OptionInfo", file: !472, line: 130, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_OptionInfo", file: !472, line: 119, size: 256, elements: !579)
!579 = !{!580, !581, !587, !588}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mnemonic", scope: !578, file: !472, line: 122, baseType: !572, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !578, file: !472, line: 125, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !583, line: 77, baseType: !584)
!583 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !585, line: 193, baseType: !586)
!585 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!586 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !472, line: 126, baseType: !582, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !578, file: !472, line: 129, baseType: !589, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!591 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!592 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !595, line: 46, baseType: !563)
!595 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !598, line: 7, baseType: !599)
!598 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !600, line: 49, size: 1728, elements: !601)
!600 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !617, !619, !620, !621, !623, !624, !626, !630, !633, !635, !638, !641, !642, !643, !644, !645}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !599, file: !600, line: 51, baseType: !473, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !599, file: !600, line: 54, baseType: !590, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !599, file: !600, line: 55, baseType: !590, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !599, file: !600, line: 56, baseType: !590, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !599, file: !600, line: 57, baseType: !590, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !599, file: !600, line: 58, baseType: !590, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !599, file: !600, line: 59, baseType: !590, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !599, file: !600, line: 60, baseType: !590, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !599, file: !600, line: 61, baseType: !590, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !599, file: !600, line: 64, baseType: !590, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !599, file: !600, line: 65, baseType: !590, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !599, file: !600, line: 66, baseType: !590, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !599, file: !600, line: 68, baseType: !615, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !600, line: 36, flags: DIFlagFwdDecl)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !599, file: !600, line: 70, baseType: !618, size: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !599, file: !600, line: 72, baseType: !473, size: 32, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !599, file: !600, line: 73, baseType: !473, size: 32, offset: 928)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !599, file: !600, line: 74, baseType: !622, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !585, line: 152, baseType: !586)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !599, file: !600, line: 77, baseType: !592, size: 16, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !599, file: !600, line: 78, baseType: !625, size: 8, offset: 1040)
!625 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !599, file: !600, line: 79, baseType: !627, size: 8, offset: 1048)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 8, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 1)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !599, file: !600, line: 81, baseType: !631, size: 64, offset: 1088)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !600, line: 43, baseType: null)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !599, file: !600, line: 89, baseType: !634, size: 64, offset: 1152)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !585, line: 153, baseType: !586)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !599, file: !600, line: 91, baseType: !636, size: 64, offset: 1216)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !600, line: 37, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !599, file: !600, line: 92, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !600, line: 38, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !599, file: !600, line: 93, baseType: !618, size: 64, offset: 1344)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !599, file: !600, line: 94, baseType: !564, size: 64, offset: 1408)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !599, file: !600, line: 95, baseType: !594, size: 64, offset: 1472)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !599, file: !600, line: 96, baseType: !473, size: 32, offset: 1536)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !599, file: !600, line: 98, baseType: !646, size: 160, offset: 1568)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 160, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 20)
!649 = !{!0, !650, !656, !661, !666, !671, !676, !678, !683, !688, !693, !698, !703, !705, !710, !712, !714, !719, !724, !726, !728, !730, !732, !737, !739, !744, !749, !751, !753, !758, !763, !768, !770, !772, !777, !782, !787, !789, !794, !796, !798, !803, !805, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !835}
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(name: "AlphaOptions", scope: !2, file: !652, line: 94, type: !653, isLocal: true, isDefinition: true)
!652 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1b02d8a7f2f006aac66efe5e47db142")
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4096, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 16)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "BooleanOptions", scope: !2, file: !652, line: 113, type: !658, isLocal: true, isDefinition: true)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 1280, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 5)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "CacheOptions", scope: !2, file: !652, line: 121, type: !663, isLocal: true, isDefinition: true)
!663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 1536, elements: !664)
!664 = !{!665}
!665 = !DISubrange(count: 6)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "ChannelOptions", scope: !2, file: !652, line: 130, type: !668, isLocal: true, isDefinition: true)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 8704, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 34)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(name: "ClassOptions", scope: !2, file: !652, line: 167, type: !673, isLocal: true, isDefinition: true)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 1024, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 4)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(name: "ClipPathOptions", scope: !2, file: !652, line: 174, type: !658, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(name: "ColorspaceOptions", scope: !2, file: !652, line: 879, type: !680, isLocal: true, isDefinition: true)
!680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 9216, elements: !681)
!681 = !{!682}
!682 = !DISubrange(count: 36)
!683 = !DIGlobalVariableExpression(var: !684, expr: !DIExpression())
!684 = distinct !DIGlobalVariable(name: "CommandOptions", scope: !2, file: !652, line: 182, type: !685, isLocal: true, isDefinition: true)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 151040, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 590)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "ComplexOptions", scope: !2, file: !652, line: 918, type: !690, isLocal: true, isDefinition: true)
!690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2304, elements: !691)
!691 = !{!692}
!692 = !DISubrange(count: 9)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(name: "ComposeOptions", scope: !2, file: !652, line: 775, type: !695, isLocal: true, isDefinition: true)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 18688, elements: !696)
!696 = !{!697}
!697 = !DISubrange(count: 73)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "CompressOptions", scope: !2, file: !652, line: 851, type: !700, isLocal: true, isDefinition: true)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 6400, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: 25)
!703 = !DIGlobalVariableExpression(var: !704, expr: !DIExpression())
!704 = distinct !DIGlobalVariable(name: "DataTypeOptions", scope: !2, file: !652, line: 930, type: !663, isLocal: true, isDefinition: true)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "LogEventOptions", scope: !2, file: !652, line: 1315, type: !707, isLocal: true, isDefinition: true)
!707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 5632, elements: !708)
!708 = !{!709}
!709 = !DISubrange(count: 22)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(name: "DecorateOptions", scope: !2, file: !652, line: 939, type: !663, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(name: "DirectionOptions", scope: !2, file: !652, line: 948, type: !673, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "DisposeOptions", scope: !2, file: !652, line: 955, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2560, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 10)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(name: "DistortOptions", scope: !2, file: !652, line: 968, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 5376, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 21)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(name: "DitherOptions", scope: !2, file: !652, line: 992, type: !658, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(name: "EndianOptions", scope: !2, file: !652, line: 1000, type: !673, isLocal: true, isDefinition: true)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "EvaluateOptions", scope: !2, file: !652, line: 1007, type: !680, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(name: "FillRuleOptions", scope: !2, file: !652, line: 1046, type: !673, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(name: "FilterOptions", scope: !2, file: !652, line: 1053, type: !734, isLocal: true, isDefinition: true)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 8960, elements: !735)
!735 = !{!736}
!736 = !DISubrange(count: 35)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(name: "FunctionOptions", scope: !2, file: !652, line: 1092, type: !663, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(name: "GravityOptions", scope: !2, file: !652, line: 1101, type: !741, isLocal: true, isDefinition: true)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 3584, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 14)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "PixelIntensityOptions", scope: !2, file: !652, line: 1513, type: !746, isLocal: true, isDefinition: true)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2816, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 11)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "IntentOptions", scope: !2, file: !652, line: 1118, type: !663, isLocal: true, isDefinition: true)
!751 = !DIGlobalVariableExpression(var: !752, expr: !DIExpression())
!752 = distinct !DIGlobalVariable(name: "InterlaceOptions", scope: !2, file: !652, line: 1127, type: !690, isLocal: true, isDefinition: true)
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(name: "InterpolateOptions", scope: !2, file: !652, line: 1139, type: !755, isLocal: true, isDefinition: true)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4352, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 17)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "KernelOptions", scope: !2, file: !652, line: 1160, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 10240, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 40)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(name: "LayerOptions", scope: !2, file: !652, line: 1203, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4608, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 18)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "LineCapOptions", scope: !2, file: !652, line: 1224, type: !658, isLocal: true, isDefinition: true)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "LineJoinOptions", scope: !2, file: !652, line: 1232, type: !658, isLocal: true, isDefinition: true)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "ListOptions", scope: !2, file: !652, line: 1240, type: !774, isLocal: true, isDefinition: true)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 18432, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 72)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(name: "MetricOptions", scope: !2, file: !652, line: 1340, type: !779, isLocal: true, isDefinition: true)
!779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 3072, elements: !780)
!780 = !{!781}
!781 = !DISubrange(count: 12)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "MethodOptions", scope: !2, file: !652, line: 1355, type: !784, isLocal: true, isDefinition: true)
!784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 1792, elements: !785)
!785 = !{!786}
!786 = !DISubrange(count: 7)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(name: "ModeOptions", scope: !2, file: !652, line: 1365, type: !658, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(name: "MorphologyOptions", scope: !2, file: !652, line: 1373, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 7680, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 30)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "NoiseOptions", scope: !2, file: !652, line: 1406, type: !690, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "OrientationOptions", scope: !2, file: !652, line: 1418, type: !716, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "PolicyDomainOptions", scope: !2, file: !652, line: 1431, type: !800, isLocal: true, isDefinition: true)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2048, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 8)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "PolicyRightsOptions", scope: !2, file: !652, line: 1442, type: !663, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "PreviewOptions", scope: !2, file: !652, line: 1451, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 7936, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 31)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "PrimitiveOptions", scope: !2, file: !652, line: 1485, type: !755, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "QuantumFormatOptions", scope: !2, file: !652, line: 1505, type: !658, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "ResolutionOptions", scope: !2, file: !652, line: 1527, type: !673, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "ResourceOptions", scope: !2, file: !652, line: 1534, type: !690, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "SparseColorOptions", scope: !2, file: !652, line: 1546, type: !784, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "StatisticOptions", scope: !2, file: !652, line: 1556, type: !716, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "StorageOptions", scope: !2, file: !652, line: 1569, type: !690, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "StretchOptions", scope: !2, file: !652, line: 1581, type: !779, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "StyleOptions", scope: !2, file: !652, line: 1596, type: !663, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "TypeOptions", scope: !2, file: !652, line: 1605, type: !765, isLocal: true, isDefinition: true)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "ValidateOptions", scope: !2, file: !652, line: 1626, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 3840, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 15)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "VirtualPixelOptions", scope: !2, file: !652, line: 1644, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 4864, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 19)
!840 = !{i32 7, !"Dwarf Version", i32 5}
!841 = !{i32 2, !"Debug Info Version", i32 3}
!842 = !{i32 1, !"wchar_size", i32 4}
!843 = !{i32 7, !"PIC Level", i32 2}
!844 = !{i32 7, !"PIE Level", i32 2}
!845 = !{i32 7, !"uwtable", i32 2}
!846 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!847 = distinct !DISubprogram(name: "CloneImageOptions", scope: !652, file: !652, line: 1692, type: !848, scopeLine: 1694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1136)
!848 = !DISubroutineType(types: !849)
!849 = !{!589, !850, !1134}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !37, line: 356, size: 134336, elements: !853)
!853 = !{!854, !856, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !871, !873, !875, !876, !877, !878, !879, !880, !881, !883, !884, !893, !894, !895, !896, !897, !898, !900, !902, !904, !905, !906, !907, !908, !909, !911, !1101, !1102, !1103, !1104, !1105, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1131, !1132, !1133}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !852, file: !37, line: 359, baseType: !855, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !12, line: 49, baseType: !11)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !852, file: !37, line: 362, baseType: !857, size: 32, offset: 32)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !37, line: 86, baseType: !36)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !852, file: !37, line: 365, baseType: !589, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !852, file: !37, line: 366, baseType: !589, size: 32, offset: 96)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !852, file: !37, line: 367, baseType: !589, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !852, file: !37, line: 368, baseType: !589, size: 32, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !852, file: !37, line: 371, baseType: !590, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !852, file: !37, line: 372, baseType: !590, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !852, file: !37, line: 373, baseType: !590, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !852, file: !37, line: 374, baseType: !590, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !852, file: !37, line: 377, baseType: !594, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !852, file: !37, line: 378, baseType: !594, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !852, file: !37, line: 379, baseType: !594, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !852, file: !37, line: 382, baseType: !870, size: 32, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !37, line: 73, baseType: !48)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !852, file: !37, line: 385, baseType: !872, size: 32, offset: 672)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !59, line: 35, baseType: !58)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !852, file: !37, line: 388, baseType: !874, size: 32, offset: 704)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !37, line: 93, baseType: !64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !852, file: !37, line: 391, baseType: !594, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !852, file: !37, line: 394, baseType: !590, size: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !852, file: !37, line: 395, baseType: !590, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !852, file: !37, line: 396, baseType: !590, size: 64, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !852, file: !37, line: 397, baseType: !590, size: 64, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !852, file: !37, line: 398, baseType: !590, size: 64, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !852, file: !37, line: 401, baseType: !882, size: 64, offset: 1152)
!882 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !852, file: !37, line: 402, baseType: !882, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !852, file: !37, line: 405, baseType: !885, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !397, line: 148, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !397, line: 131, size: 64, elements: !887)
!887 = !{!888, !890, !891, !892}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !886, file: !397, line: 143, baseType: !889, size: 16)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !592)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !886, file: !397, line: 144, baseType: !889, size: 16, offset: 16)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !886, file: !397, line: 145, baseType: !889, size: 16, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !886, file: !397, line: 146, baseType: !889, size: 16, offset: 48)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !852, file: !37, line: 406, baseType: !885, size: 64, offset: 1344)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !852, file: !37, line: 407, baseType: !885, size: 64, offset: 1408)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !852, file: !37, line: 410, baseType: !589, size: 32, offset: 1472)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !852, file: !37, line: 411, baseType: !589, size: 32, offset: 1504)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !852, file: !37, line: 414, baseType: !594, size: 64, offset: 1536)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !852, file: !37, line: 417, baseType: !899, size: 32, offset: 1600)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !70, line: 61, baseType: !69)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !37, line: 420, baseType: !901, size: 32, offset: 1632)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !37, line: 61, baseType: !106)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !852, file: !37, line: 423, baseType: !903, size: 32, offset: 1664)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !121, line: 59, baseType: !120)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !852, file: !37, line: 426, baseType: !582, size: 64, offset: 1728)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !852, file: !37, line: 429, baseType: !589, size: 32, offset: 1792)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !852, file: !37, line: 430, baseType: !589, size: 32, offset: 1824)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !852, file: !37, line: 433, baseType: !590, size: 64, offset: 1856)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !852, file: !37, line: 434, baseType: !590, size: 64, offset: 1920)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !852, file: !37, line: 437, baseType: !910, size: 32, offset: 1984)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !153)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !852, file: !37, line: 440, baseType: !912, size: 64, offset: 2048)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !914)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !37, line: 150, size: 105920, elements: !915)
!915 = !{!916, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !930, !931, !932, !933, !934, !948, !950, !951, !952, !953, !954, !955, !956, !957, !958, !966, !967, !968, !969, !970, !971, !973, !974, !975, !977, !979, !981, !983, !984, !985, !986, !987, !988, !989, !997, !1012, !1024, !1025, !1026, !1027, !1031, !1035, !1039, !1040, !1041, !1042, !1043, !1060, !1061, !1063, !1064, !1073, !1074, !1076, !1077, !1078, !1079, !1080, !1081, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1098, !1100}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !914, file: !37, line: 153, baseType: !917, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !175)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !914, file: !37, line: 156, baseType: !899, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !914, file: !37, line: 159, baseType: !855, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !914, file: !37, line: 162, baseType: !594, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !914, file: !37, line: 165, baseType: !857, size: 32, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !914, file: !37, line: 168, baseType: !589, size: 32, offset: 224)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !914, file: !37, line: 169, baseType: !589, size: 32, offset: 256)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !914, file: !37, line: 172, baseType: !594, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !914, file: !37, line: 173, baseType: !594, size: 64, offset: 384)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !914, file: !37, line: 174, baseType: !594, size: 64, offset: 448)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !914, file: !37, line: 175, baseType: !594, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !914, file: !37, line: 178, baseType: !929, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !914, file: !37, line: 179, baseType: !885, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !914, file: !37, line: 180, baseType: !885, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !914, file: !37, line: 181, baseType: !885, size: 64, offset: 768)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !914, file: !37, line: 184, baseType: !882, size: 64, offset: 832)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !914, file: !37, line: 187, baseType: !935, size: 768, offset: 896)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !37, line: 128, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !37, line: 121, size: 768, elements: !937)
!937 = !{!938, !945, !946, !947}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !936, file: !37, line: 124, baseType: !939, size: 192)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !37, line: 101, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !37, line: 95, size: 192, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !940, file: !37, line: 98, baseType: !882, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !940, file: !37, line: 99, baseType: !882, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !940, file: !37, line: 100, baseType: !882, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !936, file: !37, line: 125, baseType: !939, size: 192, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !936, file: !37, line: 126, baseType: !939, size: 192, offset: 384)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !936, file: !37, line: 127, baseType: !939, size: 192, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !914, file: !37, line: 190, baseType: !949, size: 32, offset: 1664)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !181, line: 49, baseType: !180)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !914, file: !37, line: 193, baseType: !564, size: 64, offset: 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !914, file: !37, line: 196, baseType: !874, size: 32, offset: 1792)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !914, file: !37, line: 199, baseType: !590, size: 64, offset: 1856)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !914, file: !37, line: 200, baseType: !590, size: 64, offset: 1920)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !914, file: !37, line: 201, baseType: !590, size: 64, offset: 1984)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !914, file: !37, line: 204, baseType: !582, size: 64, offset: 2048)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !914, file: !37, line: 207, baseType: !882, size: 64, offset: 2112)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !914, file: !37, line: 208, baseType: !882, size: 64, offset: 2176)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !914, file: !37, line: 211, baseType: !959, size: 256, offset: 2240)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !224, line: 130, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !224, line: 121, size: 256, elements: !961)
!961 = !{!962, !963, !964, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !960, file: !224, line: 124, baseType: !594, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !960, file: !224, line: 125, baseType: !594, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !960, file: !224, line: 128, baseType: !582, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !960, file: !224, line: 129, baseType: !582, size: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !914, file: !37, line: 212, baseType: !959, size: 256, offset: 2496)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !914, file: !37, line: 213, baseType: !959, size: 256, offset: 2752)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !914, file: !37, line: 216, baseType: !882, size: 64, offset: 3008)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !914, file: !37, line: 217, baseType: !882, size: 64, offset: 3072)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !914, file: !37, line: 218, baseType: !882, size: 64, offset: 3136)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !914, file: !37, line: 221, baseType: !972, size: 32, offset: 3200)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !189, line: 66, baseType: !188)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !914, file: !37, line: 224, baseType: !870, size: 32, offset: 3232)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !914, file: !37, line: 227, baseType: !872, size: 32, offset: 3264)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !914, file: !37, line: 230, baseType: !976, size: 32, offset: 3296)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !224, line: 91, baseType: !223)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !914, file: !37, line: 233, baseType: !978, size: 32, offset: 3328)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !239, line: 99, baseType: !238)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !914, file: !37, line: 236, baseType: !980, size: 32, offset: 3360)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !310, line: 32, baseType: !309)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !914, file: !37, line: 239, baseType: !982, size: 64, offset: 3392)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !914, file: !37, line: 242, baseType: !594, size: 64, offset: 3456)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !914, file: !37, line: 243, baseType: !594, size: 64, offset: 3520)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !914, file: !37, line: 246, baseType: !582, size: 64, offset: 3584)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !914, file: !37, line: 249, baseType: !594, size: 64, offset: 3648)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !914, file: !37, line: 250, baseType: !594, size: 64, offset: 3712)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !914, file: !37, line: 253, baseType: !582, size: 64, offset: 3776)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !914, file: !37, line: 256, baseType: !990, size: 192, offset: 3840)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !991, line: 68, baseType: !992)
!991 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !991, line: 62, size: 192, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !992, file: !991, line: 65, baseType: !882, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !992, file: !991, line: 66, baseType: !882, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !992, file: !991, line: 67, baseType: !882, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !914, file: !37, line: 259, baseType: !998, size: 512, offset: 4032)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !318, line: 51, baseType: !999)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !318, line: 40, size: 512, elements: !1000)
!1000 = !{!1001, !1008, !1009, !1011}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !999, file: !318, line: 43, baseType: !1002, size: 192)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !318, line: 38, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !318, line: 32, size: 192, elements: !1004)
!1004 = !{!1005, !1006, !1007}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1003, file: !318, line: 35, baseType: !882, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1003, file: !318, line: 36, baseType: !882, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1003, file: !318, line: 37, baseType: !882, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !999, file: !318, line: 44, baseType: !1002, size: 192, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !999, file: !318, line: 47, baseType: !1010, size: 32, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !318, line: 30, baseType: !317)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !999, file: !318, line: 50, baseType: !594, size: 64, offset: 448)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !914, file: !37, line: 262, baseType: !1013, size: 64, offset: 4544)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !1014, line: 26, baseType: !1015)
!1014 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!589, !572, !1018, !1021, !564}
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !1020)
!1020 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !1023)
!1023 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !914, file: !37, line: 265, baseType: !564, size: 64, offset: 4608)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !914, file: !37, line: 266, baseType: !564, size: 64, offset: 4672)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !914, file: !37, line: 267, baseType: !564, size: 64, offset: 4736)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !914, file: !37, line: 270, baseType: !1028, size: 64, offset: 4800)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !12, line: 52, baseType: !1030)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !12, line: 51, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !914, file: !37, line: 273, baseType: !1032, size: 64, offset: 4864)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !1034)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !914, file: !37, line: 276, baseType: !1036, size: 32768, offset: 4928)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 32768, elements: !1037)
!1037 = !{!1038}
!1038 = !DISubrange(count: 4096)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !914, file: !37, line: 277, baseType: !1036, size: 32768, offset: 37696)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !914, file: !37, line: 278, baseType: !1036, size: 32768, offset: 70464)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !914, file: !37, line: 281, baseType: !594, size: 64, offset: 103232)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !914, file: !37, line: 282, baseType: !594, size: 64, offset: 103296)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !914, file: !37, line: 285, baseType: !1044, size: 448, offset: 103360)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !324, line: 102, size: 448, elements: !1046)
!1046 = !{!1047, !1049, !1050, !1051, !1052, !1053, !1054, !1059}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !1045, file: !324, line: 105, baseType: !1048, size: 32)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !324, line: 100, baseType: !323)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !1045, file: !324, line: 108, baseType: !473, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !1045, file: !324, line: 111, baseType: !590, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1045, file: !324, line: 112, baseType: !590, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !1045, file: !324, line: 115, baseType: !564, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !1045, file: !324, line: 118, baseType: !589, size: 32, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !1045, file: !324, line: 121, baseType: !1055, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !1057, line: 26, baseType: !1058)
!1057 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !1057, line: 25, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1045, file: !324, line: 124, baseType: !594, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !914, file: !37, line: 288, baseType: !589, size: 32, offset: 103808)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !914, file: !37, line: 291, baseType: !1062, size: 64, offset: 103872)
!1062 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !582)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !914, file: !37, line: 294, baseType: !1055, size: 64, offset: 103936)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !914, file: !37, line: 297, baseType: !1065, size: 256, offset: 104000)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !181, line: 40, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !181, line: 27, size: 256, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1072}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1066, file: !181, line: 30, baseType: !590, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1066, file: !181, line: 33, baseType: !594, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1066, file: !181, line: 36, baseType: !1071, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1066, file: !181, line: 39, baseType: !594, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !914, file: !37, line: 298, baseType: !1065, size: 256, offset: 104256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !914, file: !37, line: 299, baseType: !1075, size: 64, offset: 104512)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !914, file: !37, line: 302, baseType: !594, size: 64, offset: 104576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !914, file: !37, line: 305, baseType: !594, size: 64, offset: 104640)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !914, file: !37, line: 308, baseType: !982, size: 64, offset: 104704)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !914, file: !37, line: 309, baseType: !982, size: 64, offset: 104768)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !914, file: !37, line: 310, baseType: !982, size: 64, offset: 104832)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !914, file: !37, line: 313, baseType: !1082, size: 32, offset: 104896)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !397, line: 47, baseType: !396)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !914, file: !37, line: 316, baseType: !589, size: 32, offset: 104928)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !914, file: !37, line: 319, baseType: !885, size: 64, offset: 104960)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !914, file: !37, line: 322, baseType: !982, size: 64, offset: 105024)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !914, file: !37, line: 325, baseType: !959, size: 256, offset: 105088)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !914, file: !37, line: 328, baseType: !564, size: 64, offset: 105344)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !914, file: !37, line: 329, baseType: !564, size: 64, offset: 105408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !914, file: !37, line: 332, baseType: !901, size: 32, offset: 105472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !914, file: !37, line: 335, baseType: !589, size: 32, offset: 105504)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !914, file: !37, line: 338, baseType: !1022, size: 64, offset: 105536)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !914, file: !37, line: 341, baseType: !589, size: 32, offset: 105600)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !914, file: !37, line: 344, baseType: !594, size: 64, offset: 105664)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !914, file: !37, line: 347, baseType: !1095, size: 64, offset: 105728)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1096, line: 7, baseType: !1097)
!1096 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !585, line: 160, baseType: !586)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !914, file: !37, line: 350, baseType: !1099, size: 32, offset: 105792)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !397, line: 79, baseType: !413)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !914, file: !37, line: 353, baseType: !594, size: 64, offset: 105856)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !852, file: !37, line: 443, baseType: !564, size: 64, offset: 2112)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !852, file: !37, line: 446, baseType: !1013, size: 64, offset: 2176)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !852, file: !37, line: 449, baseType: !564, size: 64, offset: 2240)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !852, file: !37, line: 450, baseType: !564, size: 64, offset: 2304)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !852, file: !37, line: 453, baseType: !1106, size: 64, offset: 2368)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !1107, line: 26, baseType: !1108)
!1107 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!594, !1111, !1113, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !852, file: !37, line: 456, baseType: !596, size: 64, offset: 2432)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !852, file: !37, line: 459, baseType: !564, size: 64, offset: 2496)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !852, file: !37, line: 462, baseType: !594, size: 64, offset: 2560)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !852, file: !37, line: 465, baseType: !1036, size: 32768, offset: 2624)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !852, file: !37, line: 466, baseType: !1036, size: 32768, offset: 35392)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !852, file: !37, line: 467, baseType: !1036, size: 32768, offset: 68160)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !852, file: !37, line: 468, baseType: !1036, size: 32768, offset: 100928)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !852, file: !37, line: 471, baseType: !589, size: 32, offset: 133696)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !852, file: !37, line: 474, baseType: !590, size: 64, offset: 133760)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !852, file: !37, line: 477, baseType: !594, size: 64, offset: 133824)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !852, file: !37, line: 478, baseType: !594, size: 64, offset: 133888)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !852, file: !37, line: 481, baseType: !885, size: 64, offset: 133952)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !852, file: !37, line: 484, baseType: !594, size: 64, offset: 134016)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !852, file: !37, line: 487, baseType: !1130, size: 32, offset: 134080)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !426, line: 47, baseType: !425)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !852, file: !37, line: 490, baseType: !885, size: 64, offset: 134112)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !852, file: !37, line: 493, baseType: !564, size: 64, offset: 134208)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !852, file: !37, line: 496, baseType: !589, size: 32, offset: 134272)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!1136 = !{!1137, !1138}
!1137 = !DILocalVariable(name: "image_info", arg: 1, scope: !847, file: !652, line: 1692, type: !850)
!1138 = !DILocalVariable(name: "clone_info", arg: 2, scope: !847, file: !652, line: 1693, type: !1134)
!1139 = !DILocation(line: 0, scope: !847)
!1140 = !DILocation(line: 1697, column: 19, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !847, file: !652, line: 1697, column: 7)
!1142 = !{!1143, !1144, i64 16712}
!1143 = !{!"_ImageInfo", !1144, i64 0, !1144, i64 4, !1144, i64 8, !1144, i64 12, !1144, i64 16, !1144, i64 20, !1146, i64 24, !1146, i64 32, !1146, i64 40, !1146, i64 48, !1147, i64 56, !1147, i64 64, !1147, i64 72, !1144, i64 80, !1144, i64 84, !1144, i64 88, !1147, i64 96, !1146, i64 104, !1146, i64 112, !1146, i64 120, !1146, i64 128, !1146, i64 136, !1148, i64 144, !1148, i64 152, !1149, i64 160, !1149, i64 168, !1149, i64 176, !1144, i64 184, !1144, i64 188, !1147, i64 192, !1144, i64 200, !1144, i64 204, !1144, i64 208, !1147, i64 216, !1144, i64 224, !1144, i64 228, !1146, i64 232, !1146, i64 240, !1144, i64 248, !1146, i64 256, !1146, i64 264, !1146, i64 272, !1146, i64 280, !1146, i64 288, !1146, i64 296, !1146, i64 304, !1146, i64 312, !1147, i64 320, !1144, i64 328, !1144, i64 4424, !1144, i64 8520, !1144, i64 12616, !1144, i64 16712, !1146, i64 16720, !1147, i64 16728, !1147, i64 16736, !1149, i64 16744, !1147, i64 16752, !1144, i64 16760, !1149, i64 16764, !1146, i64 16776, !1144, i64 16784}
!1144 = !{!"omnipotent char", !1145, i64 0}
!1145 = !{!"Simple C/C++ TBAA"}
!1146 = !{!"any pointer", !1144, i64 0}
!1147 = !{!"long", !1144, i64 0}
!1148 = !{!"double", !1144, i64 0}
!1149 = !{!"_PixelPacket", !1150, i64 0, !1150, i64 2, !1150, i64 4, !1150, i64 6}
!1150 = !{!"short", !1144, i64 0}
!1151 = !DILocation(line: 1697, column: 25, scope: !1141)
!1152 = !DILocation(line: 1697, column: 7, scope: !847)
!1153 = !DILocation(line: 1699, column: 19, scope: !1141)
!1154 = !DILocation(line: 1698, column: 12, scope: !1141)
!1155 = !DILocation(line: 1698, column: 5, scope: !1141)
!1156 = !DILocation(line: 1702, column: 19, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !847, file: !652, line: 1702, column: 7)
!1158 = !{!1143, !1146, i64 264}
!1159 = !DILocation(line: 1702, column: 27, scope: !1157)
!1160 = !DILocation(line: 1702, column: 7, scope: !847)
!1161 = !DILocation(line: 1704, column: 23, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !652, line: 1704, column: 11)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !652, line: 1703, column: 5)
!1164 = !DILocation(line: 1704, column: 31, scope: !1162)
!1165 = !DILocation(line: 1704, column: 11, scope: !1163)
!1166 = !DILocalVariable(name: "image_info", arg: 1, scope: !1167, file: !652, line: 1820, type: !850)
!1167 = distinct !DISubprogram(name: "DestroyImageOptions", scope: !652, file: !652, line: 1820, type: !1168, scopeLine: 1821, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1170)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !850}
!1170 = !{!1166}
!1171 = !DILocation(line: 0, scope: !1167, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 1705, column: 9, scope: !1162)
!1173 = !DILocation(line: 1824, column: 19, scope: !1174, inlinedAt: !1172)
!1174 = distinct !DILexicalBlock(scope: !1167, file: !652, line: 1824, column: 7)
!1175 = !DILocation(line: 1824, column: 25, scope: !1174, inlinedAt: !1172)
!1176 = !DILocation(line: 1824, column: 7, scope: !1167, inlinedAt: !1172)
!1177 = !DILocation(line: 1826, column: 19, scope: !1174, inlinedAt: !1172)
!1178 = !DILocation(line: 1825, column: 12, scope: !1174, inlinedAt: !1172)
!1179 = !DILocation(line: 1827, column: 19, scope: !1180, inlinedAt: !1172)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !652, line: 1827, column: 7)
!1181 = !DILocation(line: 1827, column: 27, scope: !1180, inlinedAt: !1172)
!1182 = !DILocation(line: 1827, column: 7, scope: !1167, inlinedAt: !1172)
!1183 = !DILocation(line: 1828, column: 25, scope: !1180, inlinedAt: !1172)
!1184 = !DILocation(line: 1828, column: 24, scope: !1180, inlinedAt: !1172)
!1185 = !DILocation(line: 1828, column: 5, scope: !1180, inlinedAt: !1172)
!1186 = !DILocation(line: 1706, column: 72, scope: !1163)
!1187 = !DILocation(line: 1706, column: 27, scope: !1163)
!1188 = !DILocation(line: 1706, column: 26, scope: !1163)
!1189 = !DILocation(line: 1708, column: 5, scope: !1163)
!1190 = !DILocation(line: 1709, column: 3, scope: !847)
!1191 = !DISubprogram(name: "LogMagickEvent", scope: !447, file: !447, line: 83, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!589, !1194, !572, !572, !1115, !572, null}
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !447, line: 58, baseType: !446)
!1196 = !{}
!1197 = !DILocation(line: 0, scope: !1167)
!1198 = !DILocation(line: 1824, column: 19, scope: !1174)
!1199 = !DILocation(line: 1824, column: 25, scope: !1174)
!1200 = !DILocation(line: 1824, column: 7, scope: !1167)
!1201 = !DILocation(line: 1826, column: 19, scope: !1174)
!1202 = !DILocation(line: 1825, column: 12, scope: !1174)
!1203 = !DILocation(line: 1825, column: 5, scope: !1174)
!1204 = !DILocation(line: 1827, column: 19, scope: !1180)
!1205 = !DILocation(line: 1827, column: 27, scope: !1180)
!1206 = !DILocation(line: 1827, column: 7, scope: !1167)
!1207 = !DILocation(line: 1828, column: 25, scope: !1180)
!1208 = !DILocation(line: 1828, column: 24, scope: !1180)
!1209 = !DILocation(line: 1828, column: 5, scope: !1180)
!1210 = !DILocation(line: 1829, column: 1, scope: !1167)
!1211 = !DISubprogram(name: "CloneSplayTree", scope: !567, file: !567, line: 43, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!565, !565, !569, !569}
!1214 = !DISubprogram(name: "ConstantString", scope: !1215, file: !1215, line: 45, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1215 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!590, !572}
!1218 = distinct !DISubprogram(name: "DefineImageOption", scope: !652, file: !652, line: 1737, type: !1219, scopeLine: 1739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!589, !850, !572}
!1221 = !{!1222, !1223, !1224, !1225, !1226}
!1222 = !DILocalVariable(name: "image_info", arg: 1, scope: !1218, file: !652, line: 1737, type: !850)
!1223 = !DILocalVariable(name: "option", arg: 2, scope: !1218, file: !652, line: 1738, type: !572)
!1224 = !DILocalVariable(name: "key", scope: !1218, file: !652, line: 1741, type: !1036)
!1225 = !DILocalVariable(name: "value", scope: !1218, file: !652, line: 1742, type: !1036)
!1226 = !DILocalVariable(name: "p", scope: !1218, file: !652, line: 1745, type: !590)
!1227 = !DILocation(line: 0, scope: !1218)
!1228 = !DILocation(line: 1740, column: 3, scope: !1218)
!1229 = !DILocation(line: 1741, column: 5, scope: !1218)
!1230 = !DILocation(line: 1742, column: 5, scope: !1218)
!1231 = !DILocation(line: 1749, column: 10, scope: !1218)
!1232 = !DILocation(line: 1750, column: 8, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1218, file: !652, line: 1750, column: 3)
!1234 = !DILocation(line: 0, scope: !1233)
!1235 = !DILocation(line: 1750, column: 15, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1233, file: !652, line: 1750, column: 3)
!1237 = !{!1144, !1144, i64 0}
!1238 = !DILocation(line: 1750, column: 3, scope: !1233)
!1239 = !DILocation(line: 1750, column: 28, scope: !1236)
!1240 = !DILocation(line: 1750, column: 3, scope: !1236)
!1241 = distinct !{!1241, !1238, !1242, !1243, !1244}
!1242 = !DILocation(line: 1752, column: 7, scope: !1233)
!1243 = !{!"llvm.loop.mustprogress"}
!1244 = !{!"llvm.loop.unroll.disable"}
!1245 = !DILocation(line: 1753, column: 9, scope: !1218)
!1246 = !DILocation(line: 1754, column: 10, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1218, file: !652, line: 1754, column: 7)
!1248 = !DILocation(line: 1754, column: 7, scope: !1218)
!1249 = !DILocation(line: 1755, column: 36, scope: !1247)
!1250 = !DILocation(line: 1755, column: 12, scope: !1247)
!1251 = !DILocation(line: 1755, column: 5, scope: !1247)
!1252 = !DILocation(line: 1756, column: 5, scope: !1218)
!1253 = !DILocation(line: 1757, column: 10, scope: !1218)
!1254 = !DILocation(line: 1758, column: 1, scope: !1218)
!1255 = !DILocation(line: 1757, column: 3, scope: !1218)
!1256 = !DISubprogram(name: "CopyMagickString", scope: !1215, file: !1215, line: 78, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!594, !590, !572, !1115}
!1259 = distinct !DISubprogram(name: "SetImageOption", scope: !652, file: !652, line: 2643, type: !1260, scopeLine: 2645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!589, !850, !572, !572}
!1262 = !{!1263, !1264, !1265}
!1263 = !DILocalVariable(name: "image_info", arg: 1, scope: !1259, file: !652, line: 2643, type: !850)
!1264 = !DILocalVariable(name: "option", arg: 2, scope: !1259, file: !652, line: 2644, type: !572)
!1265 = !DILocalVariable(name: "value", arg: 3, scope: !1259, file: !652, line: 2644, type: !572)
!1266 = !DILocation(line: 0, scope: !1259)
!1267 = !DILocation(line: 2648, column: 19, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !652, line: 2648, column: 7)
!1269 = !DILocation(line: 2648, column: 25, scope: !1268)
!1270 = !DILocation(line: 2648, column: 7, scope: !1259)
!1271 = !DILocation(line: 2650, column: 19, scope: !1268)
!1272 = !DILocation(line: 2649, column: 12, scope: !1268)
!1273 = !DILocation(line: 2649, column: 5, scope: !1268)
!1274 = !DILocation(line: 2654, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1259, file: !652, line: 2654, column: 7)
!1276 = !DILocation(line: 2654, column: 36, scope: !1275)
!1277 = !DILocation(line: 2654, column: 7, scope: !1259)
!1278 = !DILocation(line: 2655, column: 37, scope: !1275)
!1279 = !DILocation(line: 2655, column: 12, scope: !1275)
!1280 = !DILocation(line: 2655, column: 5, scope: !1275)
!1281 = !DILocation(line: 2659, column: 19, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1259, file: !652, line: 2659, column: 7)
!1283 = !DILocation(line: 2659, column: 27, scope: !1282)
!1284 = !DILocation(line: 2659, column: 7, scope: !1259)
!1285 = !DILocation(line: 2660, column: 25, scope: !1282)
!1286 = !DILocation(line: 2660, column: 24, scope: !1282)
!1287 = !DILocation(line: 2660, column: 5, scope: !1282)
!1288 = !DILocation(line: 2665, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1259, file: !652, line: 2665, column: 7)
!1290 = !DILocation(line: 2665, column: 7, scope: !1259)
!1291 = !DILocalVariable(name: "image_info", arg: 1, scope: !1292, file: !652, line: 1785, type: !850)
!1292 = distinct !DISubprogram(name: "DeleteImageOption", scope: !652, file: !652, line: 1785, type: !1219, scopeLine: 1787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1293)
!1293 = !{!1291, !1294}
!1294 = !DILocalVariable(name: "option", arg: 2, scope: !1292, file: !652, line: 1786, type: !572)
!1295 = !DILocation(line: 0, scope: !1292, inlinedAt: !1296)
!1296 = distinct !DILocation(line: 2666, column: 12, scope: !1289)
!1297 = !DILocation(line: 1790, column: 19, scope: !1298, inlinedAt: !1296)
!1298 = distinct !DILexicalBlock(scope: !1292, file: !652, line: 1790, column: 7)
!1299 = !DILocation(line: 1790, column: 25, scope: !1298, inlinedAt: !1296)
!1300 = !DILocation(line: 1790, column: 7, scope: !1292, inlinedAt: !1296)
!1301 = !DILocation(line: 1792, column: 19, scope: !1298, inlinedAt: !1296)
!1302 = !DILocation(line: 1791, column: 12, scope: !1298, inlinedAt: !1296)
!1303 = !DILocation(line: 1793, column: 19, scope: !1304, inlinedAt: !1296)
!1304 = distinct !DILexicalBlock(scope: !1292, file: !652, line: 1793, column: 7)
!1305 = !DILocation(line: 1791, column: 5, scope: !1298, inlinedAt: !1296)
!1306 = !DILocation(line: 1793, column: 27, scope: !1304, inlinedAt: !1296)
!1307 = !DILocation(line: 1793, column: 7, scope: !1292, inlinedAt: !1296)
!1308 = !DILocation(line: 1795, column: 10, scope: !1292, inlinedAt: !1296)
!1309 = !DILocation(line: 1795, column: 3, scope: !1292, inlinedAt: !1296)
!1310 = !DILocation(line: 2671, column: 5, scope: !1259)
!1311 = !DILocation(line: 2671, column: 28, scope: !1259)
!1312 = !DILocation(line: 2670, column: 10, scope: !1259)
!1313 = !DILocation(line: 2670, column: 3, scope: !1259)
!1314 = !DILocation(line: 2672, column: 1, scope: !1259)
!1315 = !DILocation(line: 0, scope: !1292)
!1316 = !DILocation(line: 1790, column: 19, scope: !1298)
!1317 = !DILocation(line: 1790, column: 25, scope: !1298)
!1318 = !DILocation(line: 1790, column: 7, scope: !1292)
!1319 = !DILocation(line: 1792, column: 19, scope: !1298)
!1320 = !DILocation(line: 1791, column: 12, scope: !1298)
!1321 = !DILocation(line: 1791, column: 5, scope: !1298)
!1322 = !DILocation(line: 1793, column: 19, scope: !1304)
!1323 = !DILocation(line: 1793, column: 27, scope: !1304)
!1324 = !DILocation(line: 1793, column: 7, scope: !1292)
!1325 = !DILocation(line: 1795, column: 10, scope: !1292)
!1326 = !DILocation(line: 1795, column: 3, scope: !1292)
!1327 = !DILocation(line: 1796, column: 1, scope: !1292)
!1328 = !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !567, file: !567, line: 31, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!589, !565, !1113}
!1331 = !DISubprogram(name: "DestroySplayTree", scope: !567, file: !567, line: 44, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!565, !565}
!1334 = distinct !DISubprogram(name: "GetImageOption", scope: !652, file: !652, line: 1856, type: !1335, scopeLine: 1858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!572, !1134, !572}
!1337 = !{!1338, !1339, !1340}
!1338 = !DILocalVariable(name: "image_info", arg: 1, scope: !1334, file: !652, line: 1856, type: !1134)
!1339 = !DILocalVariable(name: "key", arg: 2, scope: !1334, file: !652, line: 1857, type: !572)
!1340 = !DILocalVariable(name: "option", scope: !1334, file: !652, line: 1860, type: !572)
!1341 = !DILocation(line: 0, scope: !1334)
!1342 = !DILocation(line: 1864, column: 19, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1334, file: !652, line: 1864, column: 7)
!1344 = !DILocation(line: 1864, column: 25, scope: !1343)
!1345 = !DILocation(line: 1864, column: 7, scope: !1334)
!1346 = !DILocation(line: 1866, column: 19, scope: !1343)
!1347 = !DILocation(line: 1865, column: 12, scope: !1343)
!1348 = !DILocation(line: 1865, column: 5, scope: !1343)
!1349 = !DILocation(line: 1867, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1334, file: !652, line: 1867, column: 7)
!1351 = !DILocation(line: 1867, column: 27, scope: !1350)
!1352 = !DILocation(line: 1867, column: 7, scope: !1334)
!1353 = !DILocation(line: 1869, column: 25, scope: !1334)
!1354 = !DILocation(line: 1871, column: 3, scope: !1334)
!1355 = !DILocation(line: 1872, column: 1, scope: !1334)
!1356 = !DISubprogram(name: "GetValueFromSplayTree", scope: !567, file: !567, line: 36, type: !1357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!1113, !565, !1113}
!1359 = distinct !DISubprogram(name: "GetCommandOptionFlags", scope: !652, file: !652, line: 1970, type: !1360, scopeLine: 1972, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1365)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!582, !1362, !1364, !572}
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !472, line: 99, baseType: !471)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376}
!1366 = !DILocalVariable(name: "option", arg: 1, scope: !1359, file: !652, line: 1970, type: !1362)
!1367 = !DILocalVariable(name: "list", arg: 2, scope: !1359, file: !652, line: 1971, type: !1364)
!1368 = !DILocalVariable(name: "options", arg: 3, scope: !1359, file: !652, line: 1971, type: !572)
!1369 = !DILocalVariable(name: "token", scope: !1359, file: !652, line: 1974, type: !1036)
!1370 = !DILocalVariable(name: "option_info", scope: !1359, file: !652, line: 1977, type: !575)
!1371 = !DILocalVariable(name: "sentinel", scope: !1359, file: !652, line: 1980, type: !473)
!1372 = !DILocalVariable(name: "negate", scope: !1359, file: !652, line: 1983, type: !589)
!1373 = !DILocalVariable(name: "q", scope: !1359, file: !652, line: 1986, type: !590)
!1374 = !DILocalVariable(name: "p", scope: !1359, file: !652, line: 1989, type: !572)
!1375 = !DILocalVariable(name: "i", scope: !1359, file: !652, line: 1992, type: !582)
!1376 = !DILocalVariable(name: "option_types", scope: !1359, file: !652, line: 1995, type: !582)
!1377 = !DILocation(line: 0, scope: !1359)
!1378 = !DILocation(line: 1973, column: 3, scope: !1359)
!1379 = !DILocation(line: 1974, column: 5, scope: !1359)
!1380 = !DILocation(line: 1997, column: 15, scope: !1359)
!1381 = !DILocation(line: 1998, column: 19, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1359, file: !652, line: 1998, column: 7)
!1383 = !DILocation(line: 1998, column: 7, scope: !1359)
!1384 = !DILocation(line: 2002, column: 7, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1359, file: !652, line: 2002, column: 7)
!1386 = !DILocation(line: 2002, column: 27, scope: !1385)
!1387 = !DILocation(line: 2002, column: 7, scope: !1359)
!1388 = !DILocation(line: 2004, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !652, line: 2004, column: 3)
!1390 = distinct !DILexicalBlock(scope: !1359, file: !652, line: 2004, column: 3)
!1391 = !DILocation(line: 2004, column: 3, scope: !1390)
!1392 = !{!1146, !1146, i64 0}
!1393 = !DILocation(line: 2006, column: 5, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !652, line: 2005, column: 3)
!1395 = !DILocation(line: 0, scope: !1390)
!1396 = !DILocation(line: 2006, column: 14, scope: !1394)
!1397 = !{!1150, !1150, i64 0}
!1398 = !DILocation(line: 2006, column: 50, scope: !1394)
!1399 = !DILocation(line: 2006, column: 56, scope: !1394)
!1400 = !DILocation(line: 2008, column: 8, scope: !1394)
!1401 = distinct !{!1401, !1393, !1400, !1243, !1244}
!1402 = !DILocation(line: 2009, column: 16, scope: !1394)
!1403 = !DILocation(line: 2010, column: 9, scope: !1394)
!1404 = !DILocation(line: 2013, column: 14, scope: !1394)
!1405 = !DILocation(line: 2013, column: 50, scope: !1394)
!1406 = !DILocation(line: 2013, column: 56, scope: !1394)
!1407 = !DILocation(line: 2018, column: 15, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1394, file: !652, line: 2015, column: 5)
!1409 = !DILocation(line: 2018, column: 9, scope: !1408)
!1410 = !DILocation(line: 2018, column: 11, scope: !1408)
!1411 = distinct !{!1411, !1412, !1413, !1243, !1244}
!1412 = !DILocation(line: 2013, column: 5, scope: !1394)
!1413 = !DILocation(line: 2019, column: 5, scope: !1394)
!1414 = !DILocation(line: 0, scope: !1394)
!1415 = !DILocation(line: 2020, column: 7, scope: !1394)
!1416 = !DILocation(line: 2021, column: 30, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !652, line: 2021, column: 5)
!1418 = distinct !DILexicalBlock(scope: !1394, file: !652, line: 2021, column: 5)
!1419 = !{!1420, !1146, i64 0}
!1420 = !{!"_OptionInfo", !1146, i64 0, !1147, i64 8, !1147, i64 16, !1144, i64 24}
!1421 = !DILocation(line: 2021, column: 39, scope: !1417)
!1422 = !DILocation(line: 2021, column: 5, scope: !1418)
!1423 = !DILocation(line: 2022, column: 11, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1417, file: !652, line: 2022, column: 11)
!1425 = !DILocation(line: 2022, column: 56, scope: !1424)
!1426 = !DILocation(line: 2022, column: 11, scope: !1417)
!1427 = distinct !{!1427, !1422, !1428, !1243, !1244}
!1428 = !DILocation(line: 2029, column: 9, scope: !1418)
!1429 = !DILocation(line: 2024, column: 15, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1431, file: !652, line: 2024, column: 15)
!1431 = distinct !DILexicalBlock(scope: !1424, file: !652, line: 2023, column: 9)
!1432 = !DILocation(line: 2024, column: 22, scope: !1430)
!1433 = !DILocation(line: 0, scope: !1430)
!1434 = !{!1420, !1147, i64 16}
!1435 = !DILocation(line: 2024, column: 15, scope: !1431)
!1436 = !DILocation(line: 2025, column: 40, scope: !1430)
!1437 = !DILocation(line: 2025, column: 39, scope: !1430)
!1438 = !DILocation(line: 2025, column: 13, scope: !1430)
!1439 = !DILocation(line: 2027, column: 39, scope: !1430)
!1440 = !DILocation(line: 2021, column: 58, scope: !1417)
!1441 = !DILocation(line: 2021, column: 15, scope: !1417)
!1442 = !DILocation(line: 2030, column: 25, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1394, file: !652, line: 2030, column: 9)
!1444 = !DILocation(line: 2030, column: 34, scope: !1443)
!1445 = !DILocation(line: 2030, column: 52, scope: !1443)
!1446 = !DILocation(line: 2031, column: 11, scope: !1443)
!1447 = !DILocation(line: 2031, column: 31, scope: !1443)
!1448 = !DILocation(line: 2031, column: 49, scope: !1443)
!1449 = !DILocation(line: 2032, column: 11, scope: !1443)
!1450 = !DILocation(line: 2032, column: 31, scope: !1443)
!1451 = !DILocation(line: 2030, column: 9, scope: !1394)
!1452 = !DILocation(line: 2036, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1443, file: !652, line: 2033, column: 7)
!1454 = !DILocation(line: 2036, column: 40, scope: !1453)
!1455 = !DILocation(line: 2036, column: 9, scope: !1453)
!1456 = !DILocation(line: 2035, column: 38, scope: !1453)
!1457 = !DILocation(line: 2035, column: 55, scope: !1453)
!1458 = !DILocation(line: 2035, column: 54, scope: !1453)
!1459 = !DILocation(line: 2035, column: 18, scope: !1453)
!1460 = !DILocation(line: 2034, column: 19, scope: !1453)
!1461 = !DILocation(line: 2034, column: 40, scope: !1453)
!1462 = !DILocation(line: 2034, column: 9, scope: !1453)
!1463 = distinct !{!1463, !1462, !1464, !1243, !1244}
!1464 = !DILocation(line: 2035, column: 64, scope: !1453)
!1465 = !DILocation(line: 2038, column: 34, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !652, line: 2038, column: 9)
!1467 = distinct !DILexicalBlock(scope: !1453, file: !652, line: 2038, column: 9)
!1468 = !DILocation(line: 2038, column: 43, scope: !1466)
!1469 = !DILocation(line: 2038, column: 9, scope: !1467)
!1470 = !DILocation(line: 2037, column: 38, scope: !1453)
!1471 = !DILocation(line: 2037, column: 55, scope: !1453)
!1472 = !DILocation(line: 2037, column: 54, scope: !1453)
!1473 = !DILocation(line: 2037, column: 18, scope: !1453)
!1474 = distinct !{!1474, !1455, !1475, !1243, !1244}
!1475 = !DILocation(line: 2037, column: 64, scope: !1453)
!1476 = !DILocation(line: 2039, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1466, file: !652, line: 2039, column: 15)
!1478 = !DILocation(line: 2039, column: 60, scope: !1477)
!1479 = !DILocation(line: 2039, column: 15, scope: !1466)
!1480 = !DILocation(line: 2041, column: 19, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !652, line: 2041, column: 19)
!1482 = distinct !DILexicalBlock(scope: !1477, file: !652, line: 2040, column: 13)
!1483 = !DILocation(line: 2041, column: 26, scope: !1481)
!1484 = !DILocation(line: 0, scope: !1481)
!1485 = !DILocation(line: 2041, column: 19, scope: !1482)
!1486 = !DILocation(line: 2042, column: 44, scope: !1481)
!1487 = !DILocation(line: 2042, column: 43, scope: !1481)
!1488 = !DILocation(line: 2042, column: 17, scope: !1481)
!1489 = !DILocation(line: 2044, column: 43, scope: !1481)
!1490 = !DILocation(line: 2038, column: 62, scope: !1466)
!1491 = !DILocation(line: 2038, column: 19, scope: !1466)
!1492 = distinct !{!1492, !1469, !1493, !1243, !1244}
!1493 = !DILocation(line: 2046, column: 13, scope: !1467)
!1494 = !DILocation(line: 2048, column: 9, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1394, file: !652, line: 2048, column: 9)
!1496 = !DILocation(line: 2048, column: 24, scope: !1495)
!1497 = !DILocation(line: 2048, column: 33, scope: !1495)
!1498 = !DILocation(line: 2048, column: 9, scope: !1394)
!1499 = !DILocation(line: 2004, column: 41, scope: !1389)
!1500 = distinct !{!1500, !1391, !1501, !1243, !1244}
!1501 = !DILocation(line: 2052, column: 3, scope: !1390)
!1502 = !DILocation(line: 2054, column: 1, scope: !1359)
!1503 = distinct !DISubprogram(name: "GetOptionInfo", scope: !652, file: !652, line: 1904, type: !1504, scopeLine: 1905, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1506)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!575, !1362}
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "option", arg: 1, scope: !1503, file: !652, line: 1904, type: !1362)
!1508 = !DILocation(line: 0, scope: !1503)
!1509 = !DILocation(line: 1906, column: 3, scope: !1503)
!1510 = !DILocation(line: 1968, column: 1, scope: !1503)
!1511 = !DISubprogram(name: "LocaleCompare", scope: !1215, file: !1215, line: 66, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!473, !572, !572}
!1514 = distinct !DISubprogram(name: "GetCommandOptions", scope: !652, file: !652, line: 2078, type: !1515, scopeLine: 2079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!593, !1362}
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1525}
!1518 = !DILocalVariable(name: "value", arg: 1, scope: !1514, file: !652, line: 2078, type: !1362)
!1519 = !DILocalVariable(name: "values", scope: !1514, file: !652, line: 2081, type: !593)
!1520 = !DILocalVariable(name: "option_info", scope: !1514, file: !652, line: 2084, type: !575)
!1521 = !DILocalVariable(name: "i", scope: !1514, file: !652, line: 2087, type: !582)
!1522 = !DILocalVariable(name: "message", scope: !1523, file: !652, line: 2095, type: !590)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !652, line: 2095, column: 5)
!1524 = distinct !DILexicalBlock(scope: !1514, file: !652, line: 2094, column: 7)
!1525 = !DILocalVariable(name: "exception", scope: !1523, file: !652, line: 2095, type: !1044)
!1526 = !DILocation(line: 0, scope: !1514)
!1527 = !DILocation(line: 2089, column: 15, scope: !1514)
!1528 = !DILocation(line: 2090, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1514, file: !652, line: 2090, column: 7)
!1530 = !DILocation(line: 2090, column: 7, scope: !1514)
!1531 = !DILocation(line: 0, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1514, file: !652, line: 2092, column: 3)
!1533 = !DILocation(line: 2092, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1532, file: !652, line: 2092, column: 3)
!1535 = !DILocation(line: 2092, column: 28, scope: !1534)
!1536 = !DILocation(line: 2092, column: 37, scope: !1534)
!1537 = !DILocation(line: 2092, column: 62, scope: !1534)
!1538 = !DILocation(line: 2092, column: 3, scope: !1532)
!1539 = distinct !{!1539, !1538, !1540, !1243, !1244}
!1540 = !DILocation(line: 2092, column: 66, scope: !1532)
!1541 = !DILocation(line: 2093, column: 20, scope: !1514)
!1542 = !DILocation(line: 2094, column: 14, scope: !1524)
!1543 = !DILocation(line: 2094, column: 7, scope: !1514)
!1544 = !DILocation(line: 2096, column: 28, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !652, line: 2096, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1514, file: !652, line: 2096, column: 3)
!1547 = !DILocation(line: 2096, column: 37, scope: !1545)
!1548 = !DILocation(line: 2096, column: 3, scope: !1546)
!1549 = !DILocation(line: 2095, column: 5, scope: !1523)
!1550 = !{!1551, !1551, i64 0}
!1551 = !{!"int", !1144, i64 0}
!1552 = !DILocation(line: 0, scope: !1523)
!1553 = !DILocation(line: 2097, column: 15, scope: !1545)
!1554 = !DILocation(line: 2097, column: 5, scope: !1545)
!1555 = !DILocation(line: 2097, column: 14, scope: !1545)
!1556 = !DILocation(line: 2096, column: 62, scope: !1545)
!1557 = !DILocation(line: 2096, column: 13, scope: !1545)
!1558 = distinct !{!1558, !1548, !1559, !1243, !1244}
!1559 = !DILocation(line: 2097, column: 52, scope: !1546)
!1560 = !DILocation(line: 0, scope: !1546)
!1561 = !DILocation(line: 2098, column: 3, scope: !1514)
!1562 = !DILocation(line: 2098, column: 12, scope: !1514)
!1563 = !DILocation(line: 2099, column: 3, scope: !1514)
!1564 = !DILocation(line: 2100, column: 1, scope: !1514)
!1565 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1566, file: !1566, line: 42, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1566 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!564, !1115, !1115}
!1569 = !DISubprogram(name: "GetExceptionInfo", scope: !324, file: !324, line: 166, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1573 = !DISubprogram(name: "GetExceptionMessage", scope: !324, file: !324, line: 137, type: !1574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!590, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1577 = !DISubprogram(name: "ThrowMagickException", scope: !324, file: !324, line: 156, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!589, !1572, !572, !572, !1115, !1580, !572, !572, null}
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1581 = !DISubprogram(name: "DestroyString", scope: !1215, file: !1215, line: 46, type: !1582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!590, !590}
!1584 = !DISubprogram(name: "CatchException", scope: !324, file: !324, line: 164, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1585 = !DISubprogram(name: "DestroyExceptionInfo", scope: !324, file: !324, line: 148, type: !1586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!1572, !1572}
!1588 = !DISubprogram(name: "MagickCoreTerminus", scope: !1589, file: !1589, line: 147, type: !1590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1589 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null}
!1592 = !DISubprogram(name: "AcquireString", scope: !1215, file: !1215, line: 43, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1593 = distinct !DISubprogram(name: "GetNextImageOption", scope: !652, file: !652, line: 2124, type: !1594, scopeLine: 2125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1596)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!590, !1134}
!1596 = !{!1597}
!1597 = !DILocalVariable(name: "image_info", arg: 1, scope: !1593, file: !652, line: 2124, type: !1134)
!1598 = !DILocation(line: 0, scope: !1593)
!1599 = !DILocation(line: 2128, column: 19, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !652, line: 2128, column: 7)
!1601 = !DILocation(line: 2128, column: 25, scope: !1600)
!1602 = !DILocation(line: 2128, column: 7, scope: !1593)
!1603 = !DILocation(line: 2130, column: 19, scope: !1600)
!1604 = !DILocation(line: 2129, column: 12, scope: !1600)
!1605 = !DILocation(line: 2129, column: 5, scope: !1600)
!1606 = !DILocation(line: 2131, column: 19, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1593, file: !652, line: 2131, column: 7)
!1608 = !DILocation(line: 2131, column: 27, scope: !1607)
!1609 = !DILocation(line: 2131, column: 7, scope: !1593)
!1610 = !DILocation(line: 2133, column: 19, scope: !1593)
!1611 = !DILocation(line: 2133, column: 3, scope: !1593)
!1612 = !DILocation(line: 2134, column: 1, scope: !1593)
!1613 = !DISubprogram(name: "GetNextKeyInSplayTree", scope: !567, file: !567, line: 34, type: !1614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!1113, !565}
!1616 = distinct !DISubprogram(name: "IsCommandOption", scope: !652, file: !652, line: 2159, type: !1617, scopeLine: 2160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!589, !572}
!1619 = !{!1620}
!1620 = !DILocalVariable(name: "option", arg: 1, scope: !1616, file: !652, line: 2159, type: !572)
!1621 = !DILocation(line: 0, scope: !1616)
!1622 = !DILocation(line: 2162, column: 8, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !652, line: 2162, column: 7)
!1624 = !DILocation(line: 2162, column: 24, scope: !1623)
!1625 = !DILocation(line: 2164, column: 7, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1616, file: !652, line: 2164, column: 7)
!1627 = !DILocation(line: 2164, column: 22, scope: !1626)
!1628 = !DILocation(line: 2164, column: 7, scope: !1616)
!1629 = !DILocation(line: 2166, column: 9, scope: !1616)
!1630 = !DILocation(line: 2167, column: 7, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1616, file: !652, line: 2167, column: 7)
!1632 = !DILocation(line: 2170, column: 1, scope: !1616)
!1633 = distinct !DISubprogram(name: "CommandOptionToMnemonic", scope: !652, file: !652, line: 2197, type: !1634, scopeLine: 2199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1637)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!572, !1362, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!1637 = !{!1638, !1639, !1640, !1641}
!1638 = !DILocalVariable(name: "option", arg: 1, scope: !1633, file: !652, line: 2197, type: !1362)
!1639 = !DILocalVariable(name: "type", arg: 2, scope: !1633, file: !652, line: 2198, type: !1636)
!1640 = !DILocalVariable(name: "option_info", scope: !1633, file: !652, line: 2201, type: !575)
!1641 = !DILocalVariable(name: "i", scope: !1633, file: !652, line: 2204, type: !582)
!1642 = !DILocation(line: 0, scope: !1633)
!1643 = !DILocation(line: 2206, column: 15, scope: !1633)
!1644 = !DILocation(line: 2207, column: 19, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1633, file: !652, line: 2207, column: 7)
!1646 = !DILocation(line: 2207, column: 7, scope: !1633)
!1647 = !DILocation(line: 2209, column: 28, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !652, line: 2209, column: 3)
!1649 = distinct !DILexicalBlock(scope: !1633, file: !652, line: 2209, column: 3)
!1650 = !DILocation(line: 2209, column: 37, scope: !1648)
!1651 = !DILocation(line: 2209, column: 3, scope: !1649)
!1652 = !DILocation(line: 2210, column: 32, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !652, line: 2210, column: 9)
!1654 = !{!1420, !1147, i64 8}
!1655 = !DILocation(line: 2210, column: 14, scope: !1653)
!1656 = !DILocation(line: 2210, column: 9, scope: !1648)
!1657 = !DILocation(line: 2209, column: 62, scope: !1648)
!1658 = !DILocation(line: 2209, column: 13, scope: !1648)
!1659 = distinct !{!1659, !1651, !1660, !1243, !1244}
!1660 = !DILocation(line: 2211, column: 7, scope: !1649)
!1661 = !DILocation(line: 2215, column: 1, scope: !1633)
!1662 = distinct !DISubprogram(name: "ListCommandOptions", scope: !652, file: !652, line: 2244, type: !1663, scopeLine: 2246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1665)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!589, !596, !1362, !1572}
!1665 = !{!1666, !1667, !1668, !1669, !1670}
!1666 = !DILocalVariable(name: "file", arg: 1, scope: !1662, file: !652, line: 2244, type: !596)
!1667 = !DILocalVariable(name: "option", arg: 2, scope: !1662, file: !652, line: 2245, type: !1362)
!1668 = !DILocalVariable(name: "exception", arg: 3, scope: !1662, file: !652, line: 2245, type: !1572)
!1669 = !DILocalVariable(name: "option_info", scope: !1662, file: !652, line: 2248, type: !575)
!1670 = !DILocalVariable(name: "i", scope: !1662, file: !652, line: 2251, type: !582)
!1671 = !DILocation(line: 0, scope: !1662)
!1672 = !DILocation(line: 2255, column: 12, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !652, line: 2255, column: 7)
!1674 = !DILocation(line: 2255, column: 7, scope: !1662)
!1675 = !DILocation(line: 2257, column: 15, scope: !1662)
!1676 = !DILocation(line: 2258, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1662, file: !652, line: 2258, column: 7)
!1678 = !DILocation(line: 2258, column: 7, scope: !1662)
!1679 = !DILocation(line: 2260, column: 28, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !652, line: 2260, column: 3)
!1681 = distinct !DILexicalBlock(scope: !1662, file: !652, line: 2260, column: 3)
!1682 = !DILocation(line: 2260, column: 37, scope: !1680)
!1683 = !DILocation(line: 2260, column: 3, scope: !1681)
!1684 = !DILocation(line: 2262, column: 24, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !652, line: 2262, column: 9)
!1686 = distinct !DILexicalBlock(scope: !1680, file: !652, line: 2261, column: 3)
!1687 = !{!1420, !1144, i64 24}
!1688 = !DILocation(line: 2262, column: 32, scope: !1685)
!1689 = !DILocation(line: 2262, column: 9, scope: !1686)
!1690 = !DILocation(line: 2264, column: 12, scope: !1686)
!1691 = !DILocation(line: 2265, column: 3, scope: !1686)
!1692 = !DILocation(line: 2260, column: 56, scope: !1680)
!1693 = !DILocation(line: 2260, column: 13, scope: !1680)
!1694 = distinct !{!1694, !1683, !1695, !1243, !1244}
!1695 = !DILocation(line: 2265, column: 3, scope: !1681)
!1696 = !DILocation(line: 2267, column: 1, scope: !1662)
!1697 = !DISubprogram(name: "FormatLocaleFile", scope: !1698, file: !1698, line: 67, type: !1699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1698 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!582, !596, !1701, null}
!1701 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !572)
!1702 = distinct !DISubprogram(name: "ParseChannelOption", scope: !652, file: !652, line: 2292, type: !1703, scopeLine: 2293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!582, !572}
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DILocalVariable(name: "channels", arg: 1, scope: !1702, file: !652, line: 2292, type: !572)
!1707 = !DILocalVariable(name: "i", scope: !1702, file: !652, line: 2295, type: !582)
!1708 = !DILocalVariable(name: "channel", scope: !1702, file: !652, line: 2298, type: !582)
!1709 = !DILocalVariable(name: "type", scope: !1710, file: !652, line: 2371, type: !582)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2369, column: 7)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !652, line: 2307, column: 5)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !652, line: 2305, column: 3)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !652, line: 2304, column: 3)
!1714 = distinct !DILexicalBlock(scope: !1702, file: !652, line: 2304, column: 3)
!1715 = !DILocation(line: 0, scope: !1702)
!1716 = !DILocation(line: 2300, column: 11, scope: !1702)
!1717 = !DILocation(line: 2301, column: 15, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1702, file: !652, line: 2301, column: 7)
!1719 = !DILocation(line: 2301, column: 7, scope: !1702)
!1720 = !DILocation(line: 2304, column: 15, scope: !1713)
!1721 = !DILocation(line: 2304, column: 3, scope: !1714)
!1722 = !DILocation(line: 2306, column: 13, scope: !1712)
!1723 = !DILocation(line: 2306, column: 5, scope: !1712)
!1724 = !DILocation(line: 2318, column: 9, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2316, column: 7)
!1726 = !DILocation(line: 2324, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2322, column: 7)
!1728 = !DILocation(line: 2330, column: 9, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2328, column: 7)
!1730 = !DILocation(line: 2336, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2334, column: 7)
!1732 = !DILocation(line: 2342, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2340, column: 7)
!1734 = !DILocation(line: 2348, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2346, column: 7)
!1736 = !DILocation(line: 2360, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2358, column: 7)
!1738 = !DILocation(line: 2366, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1711, file: !652, line: 2364, column: 7)
!1740 = !DILocation(line: 2376, column: 75, scope: !1710)
!1741 = !DILocation(line: 2376, column: 14, scope: !1710)
!1742 = !DILocation(line: 0, scope: !1710)
!1743 = !DILocation(line: 2377, column: 18, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1710, file: !652, line: 2377, column: 13)
!1745 = !DILocation(line: 2377, column: 13, scope: !1710)
!1746 = !DILocation(line: 0, scope: !1711)
!1747 = !DILocation(line: 2304, column: 46, scope: !1713)
!1748 = distinct !{!1748, !1721, !1749, !1243, !1244}
!1749 = !DILocation(line: 2385, column: 3, scope: !1714)
!1750 = !DILocation(line: 2387, column: 1, scope: !1702)
!1751 = distinct !DISubprogram(name: "ParseCommandOption", scope: !652, file: !652, line: 2418, type: !1360, scopeLine: 2420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1752)
!1752 = !{!1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763}
!1753 = !DILocalVariable(name: "option", arg: 1, scope: !1751, file: !652, line: 2418, type: !1362)
!1754 = !DILocalVariable(name: "list", arg: 2, scope: !1751, file: !652, line: 2419, type: !1364)
!1755 = !DILocalVariable(name: "options", arg: 3, scope: !1751, file: !652, line: 2419, type: !572)
!1756 = !DILocalVariable(name: "token", scope: !1751, file: !652, line: 2422, type: !1036)
!1757 = !DILocalVariable(name: "option_info", scope: !1751, file: !652, line: 2425, type: !575)
!1758 = !DILocalVariable(name: "sentinel", scope: !1751, file: !652, line: 2428, type: !473)
!1759 = !DILocalVariable(name: "negate", scope: !1751, file: !652, line: 2431, type: !589)
!1760 = !DILocalVariable(name: "q", scope: !1751, file: !652, line: 2434, type: !590)
!1761 = !DILocalVariable(name: "p", scope: !1751, file: !652, line: 2437, type: !572)
!1762 = !DILocalVariable(name: "i", scope: !1751, file: !652, line: 2440, type: !582)
!1763 = !DILocalVariable(name: "option_types", scope: !1751, file: !652, line: 2443, type: !582)
!1764 = !DILocation(line: 0, scope: !1751)
!1765 = !DILocation(line: 2421, column: 3, scope: !1751)
!1766 = !DILocation(line: 2422, column: 5, scope: !1751)
!1767 = !DILocation(line: 2445, column: 15, scope: !1751)
!1768 = !DILocation(line: 2446, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1751, file: !652, line: 2446, column: 7)
!1770 = !DILocation(line: 2446, column: 7, scope: !1751)
!1771 = !DILocation(line: 2450, column: 7, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1751, file: !652, line: 2450, column: 7)
!1773 = !DILocation(line: 2450, column: 27, scope: !1772)
!1774 = !DILocation(line: 2450, column: 7, scope: !1751)
!1775 = !DILocation(line: 2452, column: 21, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !652, line: 2452, column: 3)
!1777 = distinct !DILexicalBlock(scope: !1751, file: !652, line: 2452, column: 3)
!1778 = !DILocation(line: 2452, column: 3, scope: !1777)
!1779 = !DILocation(line: 2454, column: 5, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !652, line: 2453, column: 3)
!1781 = !DILocation(line: 0, scope: !1777)
!1782 = !DILocation(line: 2454, column: 14, scope: !1780)
!1783 = !DILocation(line: 2454, column: 50, scope: !1780)
!1784 = !DILocation(line: 2454, column: 56, scope: !1780)
!1785 = !DILocation(line: 2456, column: 8, scope: !1780)
!1786 = distinct !{!1786, !1779, !1785, !1243, !1244}
!1787 = !DILocation(line: 2457, column: 16, scope: !1780)
!1788 = !DILocation(line: 2458, column: 9, scope: !1780)
!1789 = !DILocation(line: 2461, column: 14, scope: !1780)
!1790 = !DILocation(line: 2461, column: 50, scope: !1780)
!1791 = !DILocation(line: 2461, column: 56, scope: !1780)
!1792 = !DILocation(line: 2466, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1780, file: !652, line: 2463, column: 5)
!1794 = !DILocation(line: 2466, column: 9, scope: !1793)
!1795 = !DILocation(line: 2466, column: 11, scope: !1793)
!1796 = distinct !{!1796, !1797, !1798, !1243, !1244}
!1797 = !DILocation(line: 2461, column: 5, scope: !1780)
!1798 = !DILocation(line: 2467, column: 5, scope: !1780)
!1799 = !DILocation(line: 0, scope: !1780)
!1800 = !DILocation(line: 2468, column: 7, scope: !1780)
!1801 = !DILocation(line: 2469, column: 30, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !652, line: 2469, column: 5)
!1803 = distinct !DILexicalBlock(scope: !1780, file: !652, line: 2469, column: 5)
!1804 = !DILocation(line: 2469, column: 39, scope: !1802)
!1805 = !DILocation(line: 2469, column: 5, scope: !1803)
!1806 = !DILocation(line: 2470, column: 11, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !652, line: 2470, column: 11)
!1808 = !DILocation(line: 2470, column: 56, scope: !1807)
!1809 = !DILocation(line: 2470, column: 11, scope: !1802)
!1810 = distinct !{!1810, !1805, !1811, !1243, !1244}
!1811 = !DILocation(line: 2477, column: 9, scope: !1803)
!1812 = !DILocation(line: 2472, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !652, line: 2472, column: 15)
!1814 = distinct !DILexicalBlock(scope: !1807, file: !652, line: 2471, column: 9)
!1815 = !DILocation(line: 2472, column: 22, scope: !1813)
!1816 = !DILocation(line: 0, scope: !1813)
!1817 = !DILocation(line: 2472, column: 15, scope: !1814)
!1818 = !DILocation(line: 2473, column: 40, scope: !1813)
!1819 = !DILocation(line: 2473, column: 39, scope: !1813)
!1820 = !DILocation(line: 2473, column: 13, scope: !1813)
!1821 = !DILocation(line: 2475, column: 39, scope: !1813)
!1822 = !DILocation(line: 2469, column: 58, scope: !1802)
!1823 = !DILocation(line: 2469, column: 15, scope: !1802)
!1824 = !DILocation(line: 2478, column: 25, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1780, file: !652, line: 2478, column: 9)
!1826 = !DILocation(line: 2478, column: 34, scope: !1825)
!1827 = !DILocation(line: 2478, column: 52, scope: !1825)
!1828 = !DILocation(line: 2479, column: 11, scope: !1825)
!1829 = !DILocation(line: 2479, column: 31, scope: !1825)
!1830 = !DILocation(line: 2479, column: 49, scope: !1825)
!1831 = !DILocation(line: 2480, column: 11, scope: !1825)
!1832 = !DILocation(line: 2480, column: 31, scope: !1825)
!1833 = !DILocation(line: 2478, column: 9, scope: !1780)
!1834 = !DILocation(line: 2484, column: 19, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1825, file: !652, line: 2481, column: 7)
!1836 = !DILocation(line: 2484, column: 40, scope: !1835)
!1837 = !DILocation(line: 2484, column: 9, scope: !1835)
!1838 = !DILocation(line: 2483, column: 38, scope: !1835)
!1839 = !DILocation(line: 2483, column: 55, scope: !1835)
!1840 = !DILocation(line: 2483, column: 54, scope: !1835)
!1841 = !DILocation(line: 2483, column: 18, scope: !1835)
!1842 = !DILocation(line: 2482, column: 19, scope: !1835)
!1843 = !DILocation(line: 2482, column: 40, scope: !1835)
!1844 = !DILocation(line: 2482, column: 9, scope: !1835)
!1845 = distinct !{!1845, !1844, !1846, !1243, !1244}
!1846 = !DILocation(line: 2483, column: 64, scope: !1835)
!1847 = !DILocation(line: 2486, column: 34, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !652, line: 2486, column: 9)
!1849 = distinct !DILexicalBlock(scope: !1835, file: !652, line: 2486, column: 9)
!1850 = !DILocation(line: 2486, column: 43, scope: !1848)
!1851 = !DILocation(line: 2486, column: 9, scope: !1849)
!1852 = !DILocation(line: 2485, column: 38, scope: !1835)
!1853 = !DILocation(line: 2485, column: 55, scope: !1835)
!1854 = !DILocation(line: 2485, column: 54, scope: !1835)
!1855 = !DILocation(line: 2485, column: 18, scope: !1835)
!1856 = distinct !{!1856, !1837, !1857, !1243, !1244}
!1857 = !DILocation(line: 2485, column: 64, scope: !1835)
!1858 = !DILocation(line: 2487, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !652, line: 2487, column: 15)
!1860 = !DILocation(line: 2487, column: 60, scope: !1859)
!1861 = !DILocation(line: 2487, column: 15, scope: !1848)
!1862 = !DILocation(line: 2489, column: 19, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !652, line: 2489, column: 19)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !652, line: 2488, column: 13)
!1865 = !DILocation(line: 2489, column: 26, scope: !1863)
!1866 = !DILocation(line: 0, scope: !1863)
!1867 = !DILocation(line: 2489, column: 19, scope: !1864)
!1868 = !DILocation(line: 2490, column: 44, scope: !1863)
!1869 = !DILocation(line: 2490, column: 43, scope: !1863)
!1870 = !DILocation(line: 2490, column: 17, scope: !1863)
!1871 = !DILocation(line: 2492, column: 43, scope: !1863)
!1872 = !DILocation(line: 2486, column: 62, scope: !1848)
!1873 = !DILocation(line: 2486, column: 19, scope: !1848)
!1874 = distinct !{!1874, !1851, !1875, !1243, !1244}
!1875 = !DILocation(line: 2494, column: 13, scope: !1849)
!1876 = !DILocation(line: 2496, column: 9, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1780, file: !652, line: 2496, column: 9)
!1878 = !DILocation(line: 2496, column: 24, scope: !1877)
!1879 = !DILocation(line: 2496, column: 33, scope: !1877)
!1880 = !DILocation(line: 2496, column: 9, scope: !1780)
!1881 = !DILocation(line: 2452, column: 41, scope: !1776)
!1882 = distinct !{!1882, !1778, !1883, !1243, !1244}
!1883 = !DILocation(line: 2500, column: 3, scope: !1777)
!1884 = !DILocation(line: 2502, column: 1, scope: !1751)
!1885 = distinct !DISubprogram(name: "RemoveImageOption", scope: !652, file: !652, line: 2528, type: !1886, scopeLine: 2529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!590, !850, !572}
!1888 = !{!1889, !1890, !1891}
!1889 = !DILocalVariable(name: "image_info", arg: 1, scope: !1885, file: !652, line: 2528, type: !850)
!1890 = !DILocalVariable(name: "option", arg: 2, scope: !1885, file: !652, line: 2528, type: !572)
!1891 = !DILocalVariable(name: "value", scope: !1885, file: !652, line: 2531, type: !590)
!1892 = !DILocation(line: 0, scope: !1885)
!1893 = !DILocation(line: 2535, column: 19, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1885, file: !652, line: 2535, column: 7)
!1895 = !DILocation(line: 2535, column: 25, scope: !1894)
!1896 = !DILocation(line: 2535, column: 7, scope: !1885)
!1897 = !DILocation(line: 2537, column: 19, scope: !1894)
!1898 = !DILocation(line: 2536, column: 12, scope: !1894)
!1899 = !DILocation(line: 2536, column: 5, scope: !1894)
!1900 = !DILocation(line: 2538, column: 19, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1885, file: !652, line: 2538, column: 7)
!1902 = !DILocation(line: 2538, column: 27, scope: !1901)
!1903 = !DILocation(line: 2538, column: 7, scope: !1885)
!1904 = !DILocation(line: 2540, column: 18, scope: !1885)
!1905 = !DILocation(line: 2542, column: 3, scope: !1885)
!1906 = !DILocation(line: 2543, column: 1, scope: !1885)
!1907 = !DISubprogram(name: "RemoveNodeFromSplayTree", scope: !567, file: !567, line: 53, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!564, !565, !1113}
!1910 = distinct !DISubprogram(name: "ResetImageOptions", scope: !652, file: !652, line: 2568, type: !1911, scopeLine: 2569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1134}
!1913 = !{!1914}
!1914 = !DILocalVariable(name: "image_info", arg: 1, scope: !1910, file: !652, line: 2568, type: !1134)
!1915 = !DILocation(line: 0, scope: !1910)
!1916 = !DILocation(line: 2572, column: 19, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1910, file: !652, line: 2572, column: 7)
!1918 = !DILocation(line: 2572, column: 25, scope: !1917)
!1919 = !DILocation(line: 2572, column: 7, scope: !1910)
!1920 = !DILocation(line: 2574, column: 19, scope: !1917)
!1921 = !DILocation(line: 2573, column: 12, scope: !1917)
!1922 = !DILocation(line: 2573, column: 5, scope: !1917)
!1923 = !DILocation(line: 2575, column: 19, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1910, file: !652, line: 2575, column: 7)
!1925 = !DILocation(line: 2575, column: 27, scope: !1924)
!1926 = !DILocation(line: 2575, column: 7, scope: !1910)
!1927 = !DILocation(line: 2577, column: 3, scope: !1910)
!1928 = !DILocation(line: 2578, column: 1, scope: !1910)
!1929 = !DISubprogram(name: "ResetSplayTree", scope: !567, file: !567, line: 54, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !565}
!1932 = distinct !DISubprogram(name: "ResetImageOptionIterator", scope: !652, file: !652, line: 2604, type: !1911, scopeLine: 2605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1933)
!1933 = !{!1934}
!1934 = !DILocalVariable(name: "image_info", arg: 1, scope: !1932, file: !652, line: 2604, type: !1134)
!1935 = !DILocation(line: 0, scope: !1932)
!1936 = !DILocation(line: 2608, column: 19, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !652, line: 2608, column: 7)
!1938 = !DILocation(line: 2608, column: 25, scope: !1937)
!1939 = !DILocation(line: 2608, column: 7, scope: !1932)
!1940 = !DILocation(line: 2610, column: 19, scope: !1937)
!1941 = !DILocation(line: 2609, column: 12, scope: !1937)
!1942 = !DILocation(line: 2609, column: 5, scope: !1937)
!1943 = !DILocation(line: 2611, column: 19, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1932, file: !652, line: 2611, column: 7)
!1945 = !DILocation(line: 2611, column: 27, scope: !1944)
!1946 = !DILocation(line: 2611, column: 7, scope: !1932)
!1947 = !DILocation(line: 2613, column: 3, scope: !1932)
!1948 = !DILocation(line: 2614, column: 1, scope: !1932)
!1949 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !567, file: !567, line: 55, type: !1930, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1950 = !DISubprogram(name: "CloneString", scope: !1215, file: !1215, line: 44, type: !1951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!590, !593, !572}
!1953 = !DISubprogram(name: "NewSplayTree", scope: !567, file: !567, line: 45, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!565, !1956, !569, !569}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!473, !1113, !1113}
!1959 = !DISubprogram(name: "AddValueToSplayTree", scope: !567, file: !567, line: 29, type: !1960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1196)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!589, !565, !1113, !1113}
