; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/vlc.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }

@x264_coeff0_token = dso_local local_unnamed_addr constant [5 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 15, i8 4 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 1, i8 2 }], align 1, !dbg !0
@x264_coeff_token = dso_local local_unnamed_addr constant <{ [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], [16 x [4 x %struct.vlc_t]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> }> <{ [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 3, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 3, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 11 }, %struct.vlc_t { i8 6, i8 10 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 6, i8 11 }, %struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 4, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 5, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 4, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 14 }, %struct.vlc_t { i8 14, i8 14 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 4, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 13, i8 14 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 15 }, %struct.vlc_t { i8 14, i8 15 }, %struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 12, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 15 }, %struct.vlc_t { i8 10, i8 15 }, %struct.vlc_t { i8 13, i8 15 }, %struct.vlc_t { i8 8, i8 14 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 16 }, %struct.vlc_t { i8 1, i8 15 }, %struct.vlc_t { i8 9, i8 15 }, %struct.vlc_t { i8 12, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 16 }, %struct.vlc_t { i8 14, i8 16 }, %struct.vlc_t { i8 13, i8 16 }, %struct.vlc_t { i8 8, i8 15 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 16 }, %struct.vlc_t { i8 10, i8 16 }, %struct.vlc_t { i8 9, i8 16 }, %struct.vlc_t { i8 12, i8 16 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 16 }, %struct.vlc_t { i8 6, i8 16 }, %struct.vlc_t { i8 5, i8 16 }, %struct.vlc_t { i8 8, i8 16 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 7, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 5, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 8 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 4, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 8 }, %struct.vlc_t { i8 6, i8 7 }, %struct.vlc_t { i8 5, i8 7 }, %struct.vlc_t { i8 6, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 6, i8 8 }, %struct.vlc_t { i8 5, i8 8 }, %struct.vlc_t { i8 8, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 11 }, %struct.vlc_t { i8 6, i8 9 }, %struct.vlc_t { i8 5, i8 9 }, %struct.vlc_t { i8 4, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 11 }, %struct.vlc_t { i8 14, i8 11 }, %struct.vlc_t { i8 13, i8 11 }, %struct.vlc_t { i8 4, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 12 }, %struct.vlc_t { i8 10, i8 11 }, %struct.vlc_t { i8 9, i8 11 }, %struct.vlc_t { i8 4, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 12 }, %struct.vlc_t { i8 14, i8 12 }, %struct.vlc_t { i8 13, i8 12 }, %struct.vlc_t { i8 12, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 12 }, %struct.vlc_t { i8 10, i8 12 }, %struct.vlc_t { i8 9, i8 12 }, %struct.vlc_t { i8 8, i8 11 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 13 }, %struct.vlc_t { i8 14, i8 13 }, %struct.vlc_t { i8 13, i8 13 }, %struct.vlc_t { i8 12, i8 12 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 13 }, %struct.vlc_t { i8 10, i8 13 }, %struct.vlc_t { i8 9, i8 13 }, %struct.vlc_t { i8 12, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 13 }, %struct.vlc_t { i8 11, i8 14 }, %struct.vlc_t { i8 6, i8 13 }, %struct.vlc_t { i8 8, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 14 }, %struct.vlc_t { i8 8, i8 14 }, %struct.vlc_t { i8 10, i8 14 }, %struct.vlc_t { i8 1, i8 13 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 14 }, %struct.vlc_t { i8 6, i8 14 }, %struct.vlc_t { i8 5, i8 14 }, %struct.vlc_t { i8 4, i8 14 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 6 }, %struct.vlc_t { i8 14, i8 4 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 6 }, %struct.vlc_t { i8 15, i8 5 }, %struct.vlc_t { i8 13, i8 4 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 12, i8 5 }, %struct.vlc_t { i8 14, i8 5 }, %struct.vlc_t { i8 12, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 7 }, %struct.vlc_t { i8 10, i8 5 }, %struct.vlc_t { i8 11, i8 5 }, %struct.vlc_t { i8 11, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 7 }, %struct.vlc_t { i8 8, i8 5 }, %struct.vlc_t { i8 9, i8 5 }, %struct.vlc_t { i8 10, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 7 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 9, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 7 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 8, i8 4 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 8 }, %struct.vlc_t { i8 14, i8 7 }, %struct.vlc_t { i8 13, i8 7 }, %struct.vlc_t { i8 13, i8 5 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 8 }, %struct.vlc_t { i8 14, i8 8 }, %struct.vlc_t { i8 10, i8 7 }, %struct.vlc_t { i8 12, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 15, i8 9 }, %struct.vlc_t { i8 10, i8 8 }, %struct.vlc_t { i8 13, i8 8 }, %struct.vlc_t { i8 12, i8 7 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 11, i8 9 }, %struct.vlc_t { i8 14, i8 9 }, %struct.vlc_t { i8 9, i8 8 }, %struct.vlc_t { i8 12, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 9 }, %struct.vlc_t { i8 10, i8 9 }, %struct.vlc_t { i8 13, i8 9 }, %struct.vlc_t { i8 8, i8 8 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 13, i8 10 }, %struct.vlc_t { i8 7, i8 9 }, %struct.vlc_t { i8 9, i8 9 }, %struct.vlc_t { i8 12, i8 9 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 9, i8 10 }, %struct.vlc_t { i8 12, i8 10 }, %struct.vlc_t { i8 11, i8 10 }, %struct.vlc_t { i8 10, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 10 }, %struct.vlc_t { i8 8, i8 10 }, %struct.vlc_t { i8 7, i8 10 }, %struct.vlc_t { i8 6, i8 10 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 4, i8 10 }, %struct.vlc_t { i8 3, i8 10 }, %struct.vlc_t { i8 2, i8 10 }]], [16 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 5, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 8, i8 6 }, %struct.vlc_t { i8 9, i8 6 }, %struct.vlc_t { i8 10, i8 6 }, %struct.vlc_t { i8 11, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 12, i8 6 }, %struct.vlc_t { i8 13, i8 6 }, %struct.vlc_t { i8 14, i8 6 }, %struct.vlc_t { i8 15, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 16, i8 6 }, %struct.vlc_t { i8 17, i8 6 }, %struct.vlc_t { i8 18, i8 6 }, %struct.vlc_t { i8 19, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 20, i8 6 }, %struct.vlc_t { i8 21, i8 6 }, %struct.vlc_t { i8 22, i8 6 }, %struct.vlc_t { i8 23, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 24, i8 6 }, %struct.vlc_t { i8 25, i8 6 }, %struct.vlc_t { i8 26, i8 6 }, %struct.vlc_t { i8 27, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 28, i8 6 }, %struct.vlc_t { i8 29, i8 6 }, %struct.vlc_t { i8 30, i8 6 }, %struct.vlc_t { i8 31, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 32, i8 6 }, %struct.vlc_t { i8 33, i8 6 }, %struct.vlc_t { i8 34, i8 6 }, %struct.vlc_t { i8 35, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 36, i8 6 }, %struct.vlc_t { i8 37, i8 6 }, %struct.vlc_t { i8 38, i8 6 }, %struct.vlc_t { i8 39, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 40, i8 6 }, %struct.vlc_t { i8 41, i8 6 }, %struct.vlc_t { i8 42, i8 6 }, %struct.vlc_t { i8 43, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 44, i8 6 }, %struct.vlc_t { i8 45, i8 6 }, %struct.vlc_t { i8 46, i8 6 }, %struct.vlc_t { i8 47, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 48, i8 6 }, %struct.vlc_t { i8 49, i8 6 }, %struct.vlc_t { i8 50, i8 6 }, %struct.vlc_t { i8 51, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 52, i8 6 }, %struct.vlc_t { i8 53, i8 6 }, %struct.vlc_t { i8 54, i8 6 }, %struct.vlc_t { i8 55, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 56, i8 6 }, %struct.vlc_t { i8 57, i8 6 }, %struct.vlc_t { i8 58, i8 6 }, %struct.vlc_t { i8 59, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 60, i8 6 }, %struct.vlc_t { i8 61, i8 6 }, %struct.vlc_t { i8 62, i8 6 }, %struct.vlc_t { i8 63, i8 6 }]], <{ [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [4 x %struct.vlc_t], [12 x [4 x %struct.vlc_t]] }> <{ [4 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 6 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 4, i8 6 }, %struct.vlc_t { i8 6, i8 6 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 5, i8 6 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 0, i8 7 }], [12 x [4 x %struct.vlc_t]] zeroinitializer }> }>, align 16, !dbg !5
@x264_total_zeros = dso_local local_unnamed_addr constant <{ [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], [16 x %struct.vlc_t], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> }> <{ [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 3, i8 7 }, %struct.vlc_t { i8 2, i8 7 }, %struct.vlc_t { i8 3, i8 8 }, %struct.vlc_t { i8 2, i8 8 }, %struct.vlc_t { i8 3, i8 9 }, %struct.vlc_t { i8 2, i8 9 }, %struct.vlc_t { i8 1, i8 9 }], [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 3, i8 6 }, %struct.vlc_t { i8 2, i8 6 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 3, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 2, i8 5 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 5, i8 4 }, %struct.vlc_t { i8 4, i8 4 }, %struct.vlc_t { i8 3, i8 4 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], [16 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer], <{ [8 x %struct.vlc_t], [8 x %struct.vlc_t] }> <{ [8 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 0, i8 6 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 5 }], [8 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 0, i8 5 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 4 }, [9 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 3, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 4 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 1 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t { i8 1, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }> }>, align 16, !dbg !25
@x264_total_zeros_dc = dso_local local_unnamed_addr constant [3 x [4 x %struct.vlc_t]] [[4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, %struct.vlc_t zeroinitializer], [4 x %struct.vlc_t] [%struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, %struct.vlc_t zeroinitializer, %struct.vlc_t zeroinitializer]], align 16, !dbg !30
@x264_run_before = dso_local local_unnamed_addr constant <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }>, [16 x %struct.vlc_t] }> <{ <{ %struct.vlc_t, %struct.vlc_t, [14 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 0, i8 1 }, [14 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [13 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 1, i8 1 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [13 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [12 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 0, i8 2 }, [12 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [11 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 1, i8 2 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [11 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [10 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 2, i8 2 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 0, i8 3 }, [10 x %struct.vlc_t] zeroinitializer }>, <{ %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, %struct.vlc_t, [9 x %struct.vlc_t] }> <{ %struct.vlc_t { i8 3, i8 2 }, %struct.vlc_t { i8 0, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, [9 x %struct.vlc_t] zeroinitializer }>, [16 x %struct.vlc_t] [%struct.vlc_t { i8 7, i8 3 }, %struct.vlc_t { i8 6, i8 3 }, %struct.vlc_t { i8 5, i8 3 }, %struct.vlc_t { i8 4, i8 3 }, %struct.vlc_t { i8 3, i8 3 }, %struct.vlc_t { i8 2, i8 3 }, %struct.vlc_t { i8 1, i8 3 }, %struct.vlc_t { i8 1, i8 4 }, %struct.vlc_t { i8 1, i8 5 }, %struct.vlc_t { i8 1, i8 6 }, %struct.vlc_t { i8 1, i8 7 }, %struct.vlc_t { i8 1, i8 8 }, %struct.vlc_t { i8 1, i8 9 }, %struct.vlc_t { i8 1, i8 10 }, %struct.vlc_t { i8 1, i8 11 }, %struct.vlc_t zeroinitializer] }>, align 16, !dbg !35
@x264_level_token = dso_local local_unnamed_addr global [7 x [128 x %struct.vlc_large_t]] zeroinitializer, align 16, !dbg !40

; Function Attrs: nofree norecurse nosync nounwind writeonly uwtable
define dso_local void @x264_init_vlc_tables() local_unnamed_addr #0 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !67, metadata !DIExpression()), !dbg !85
  br label %for.cond1.preheader, !dbg !86

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.cleanup4 ]
  %indvars141 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !67, metadata !DIExpression()), !dbg !85
  %cmp66 = icmp eq i64 %indvars.iv, 0
  %spec.select133 = select i1 %cmp66, i32 1, i32 %indvars141
  %sub70 = add nsw i32 %spec.select133, -1
  %shl71 = shl i32 3, %sub70
  %cmp75 = icmp ult i32 %spec.select133, 6
  call void @llvm.dbg.value(metadata i16 -64, metadata !70, metadata !DIExpression()), !dbg !87
  %cmp35.not = icmp ne i64 %indvars.iv, 0
  %shl53.neg = shl i32 -15, %indvars141
  %0 = trunc i64 %indvars.iv to i8
  %conv43 = add i8 %0, 15
  %shl45 = shl nuw i32 1, %indvars141
  %sub47 = add nuw i32 %shl45, 65535
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !88
  %1 = trunc i64 %indvars.iv.next to i32
  br label %for.body5, !dbg !89

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  ret void, !dbg !90

for.cond.cleanup4:                                ; preds = %if.end65
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !67, metadata !DIExpression()), !dbg !85
  %exitcond142.not = icmp eq i64 %indvars.iv.next, 7, !dbg !91
  br i1 %exitcond142.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !86, !llvm.loop !92

for.body5:                                        ; preds = %for.cond1.preheader, %if.end65
  %indvars.iv137 = phi i64 [ -64, %for.cond1.preheader ], [ %indvars.iv.next138, %if.end65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv137, metadata !70, metadata !DIExpression()), !dbg !87
  %2 = trunc i64 %indvars.iv137 to i32, !dbg !96
  %shr = ashr i32 %2, 15, !dbg !96
  call void @llvm.dbg.value(metadata i32 %shr, metadata !77, metadata !DIExpression()), !dbg !97
  %xor = xor i32 %shr, %2, !dbg !98
  %sub = sub nsw i32 %xor, %shr, !dbg !99
  call void @llvm.dbg.value(metadata i32 %sub, metadata !80, metadata !DIExpression()), !dbg !97
  %mul = shl nsw i32 %sub, 1, !dbg !100
  %sub8 = sub nsw i32 %mul, %shr, !dbg !101
  %sub9 = add nsw i32 %sub8, -2, !dbg !102
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !81, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !82, metadata !DIExpression()), !dbg !97
  %3 = add nsw i64 %indvars.iv137, 64, !dbg !103
  %arrayidx12 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %3, !dbg !104
  call void @llvm.dbg.value(metadata ptr %arrayidx12, metadata !83, metadata !DIExpression()), !dbg !97
  %shr13 = ashr i32 %sub9, %indvars141, !dbg !105
  %cmp14 = icmp slt i32 %shr13, 14, !dbg !107
  br i1 %cmp14, label %if.then, label %if.else, !dbg !108

if.then:                                          ; preds = %for.body5
  %add18 = add i32 %shr13, %1, !dbg !109
  %conv19 = trunc i32 %add18 to i8, !dbg !111
  %i_size = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %3, i32 1, !dbg !112
  store i8 %conv19, ptr %i_size, align 2, !dbg !113, !tbaa !114
  %and = and i32 %sub9, %sub47, !dbg !119
  %add22 = add i32 %and, %shl45, !dbg !120
  %conv23 = trunc i32 %add22 to i16, !dbg !121
  br label %if.end65, !dbg !122

if.else:                                          ; preds = %for.body5
  %cmp26 = icmp slt i32 %sub8, 32
  %or.cond = select i1 %cmp66, i1 %cmp26, i1 false, !dbg !123
  br i1 %or.cond, label %if.then28, label %if.else34, !dbg !123

if.then28:                                        ; preds = %if.else
  %i_size29 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 0, i64 %3, i32 1, !dbg !125
  store i8 19, ptr %i_size29, align 2, !dbg !127, !tbaa !114
  %conv32 = trunc i32 %sub8 to i16, !dbg !128
  br label %if.end65, !dbg !129

if.else34:                                        ; preds = %if.else
  %cmp39 = icmp eq i32 %shr13, 14
  %or.cond132 = select i1 %cmp35.not, i1 %cmp39, i1 false, !dbg !130
  br i1 %or.cond132, label %if.then41, label %if.else52, !dbg !130

if.then41:                                        ; preds = %if.else34
  %i_size44 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %3, i32 1, !dbg !132
  store i8 %conv43, ptr %i_size44, align 2, !dbg !134, !tbaa !114
  %and48 = and i32 %sub9, %sub47, !dbg !135
  %add49 = add i32 %and48, %shl45, !dbg !136
  %conv50 = trunc i32 %add49 to i16, !dbg !137
  br label %if.end65, !dbg !138

if.else52:                                        ; preds = %if.else34
  %sub54 = add i32 %sub9, %shl53.neg, !dbg !139
  call void @llvm.dbg.value(metadata i32 %sub54, metadata !81, metadata !DIExpression()), !dbg !97
  %sub58 = add i32 %sub54, 65521
  %spec.select = select i1 %cmp66, i32 %sub58, i32 %sub54, !dbg !141
  call void @llvm.dbg.value(metadata i32 undef, metadata !81, metadata !DIExpression()), !dbg !97
  %i_size59 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %3, i32 1, !dbg !142
  store i8 28, ptr %i_size59, align 2, !dbg !143, !tbaa !114
  %4 = trunc i32 %spec.select to i16, !dbg !144
  %conv61 = add i16 %4, 4096, !dbg !144
  br label %if.end65

if.end65:                                         ; preds = %if.then28, %if.else52, %if.then41, %if.then
  %conv32.sink = phi i16 [ %conv32, %if.then28 ], [ %conv61, %if.else52 ], [ %conv50, %if.then41 ], [ %conv23, %if.then ]
  store i16 %conv32.sink, ptr %arrayidx12, align 4, !dbg !145, !tbaa !146
  call void @llvm.dbg.value(metadata i32 %spec.select133, metadata !82, metadata !DIExpression()), !dbg !97
  %cmp72 = icmp sgt i32 %sub, %shl71, !dbg !147
  %or.cond86 = select i1 %cmp72, i1 %cmp75, i1 false, !dbg !149
  %inc78 = zext i1 %or.cond86 to i32, !dbg !149
  %spec.select134 = add nuw nsw i32 %spec.select133, %inc78, !dbg !149
  call void @llvm.dbg.value(metadata i32 %spec.select134, metadata !82, metadata !DIExpression()), !dbg !97
  %conv80 = trunc i32 %spec.select134 to i8, !dbg !150
  %i_next81 = getelementptr inbounds [7 x [128 x %struct.vlc_large_t]], ptr @x264_level_token, i64 0, i64 %indvars.iv, i64 %3, i32 2, !dbg !151
  store i8 %conv80, ptr %i_next81, align 1, !dbg !152, !tbaa !153
  %indvars.iv.next138 = add nsw i64 %indvars.iv137, 1, !dbg !154
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next138, metadata !70, metadata !DIExpression()), !dbg !87
  %exitcond.not = icmp eq i64 %indvars.iv.next138, 64, !dbg !155
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !89, !llvm.loop !156
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_coeff0_token", scope: !2, file: !7, line: 23, type: !54, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/vlc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "c16b9c79daf3939ca9cb3aa6c11de3f6")
!4 = !{!0, !5, !25, !30, !35, !40}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "x264_coeff_token", scope: !2, file: !7, line: 32, type: !8, isLocal: false, isDefinition: true)
!7 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/vlc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c16b9c79daf3939ca9cb3aa6c11de3f6")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 5120, elements: !21)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "vlc_t", file: !11, line: 37, baseType: !12)
!11 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 33, size: 16, elements: !13)
!13 = !{!14, !20}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits", scope: !12, file: !11, line: 35, baseType: !15, size: 8)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !16, line: 24, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !18, line: 38, baseType: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !12, file: !11, line: 36, baseType: !15, size: 8, offset: 8)
!21 = !{!22, !23, !24}
!22 = !DISubrange(count: 5)
!23 = !DISubrange(count: 16)
!24 = !DISubrange(count: 4)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "x264_total_zeros", scope: !2, file: !7, line: 440, type: !27, isLocal: false, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3840, elements: !28)
!28 = !{!29, !23}
!29 = !DISubrange(count: 15)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "x264_total_zeros_dc", scope: !2, file: !7, line: 610, type: !32, isLocal: false, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !33)
!33 = !{!34, !24}
!34 = !DISubrange(count: 3)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x264_run_before", scope: !2, file: !7, line: 630, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1792, elements: !38)
!38 = !{!39, !23}
!39 = !DISubrange(count: 7)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "x264_level_token", scope: !2, file: !7, line: 690, type: !42, isLocal: false, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 28672, elements: !52)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "vlc_large_t", file: !11, line: 45, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 39, size: 32, elements: !45)
!45 = !{!46, !50, !51}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits", scope: !44, file: !11, line: 41, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !16, line: 25, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !18, line: 40, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !44, file: !11, line: 42, baseType: !15, size: 8, offset: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "i_next", scope: !44, file: !11, line: 44, baseType: !15, size: 8, offset: 24)
!52 = !{!39, !53}
!53 = !DISubrange(count: 128)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 80, elements: !55)
!55 = !{!22}
!56 = !{i32 7, !"Dwarf Version", i32 5}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 7, !"PIC Level", i32 2}
!60 = !{i32 7, !"PIE Level", i32 2}
!61 = !{i32 7, !"uwtable", i32 2}
!62 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!63 = distinct !DISubprogram(name: "x264_init_vlc_tables", scope: !7, file: !7, line: 692, type: !64, scopeLine: 693, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !{!67, !70, !77, !80, !81, !82, !83}
!67 = !DILocalVariable(name: "i_suffix", scope: !68, file: !7, line: 694, type: !69)
!68 = distinct !DILexicalBlock(scope: !63, file: !7, line: 694, column: 5)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DILocalVariable(name: "level", scope: !71, file: !7, line: 695, type: !73)
!71 = distinct !DILexicalBlock(scope: !72, file: !7, line: 695, column: 9)
!72 = distinct !DILexicalBlock(scope: !68, file: !7, line: 694, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !74, line: 25, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !18, line: 39, baseType: !76)
!76 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!77 = !DILocalVariable(name: "mask", scope: !78, file: !7, line: 697, type: !69)
!78 = distinct !DILexicalBlock(scope: !79, file: !7, line: 696, column: 9)
!79 = distinct !DILexicalBlock(scope: !71, file: !7, line: 695, column: 9)
!80 = !DILocalVariable(name: "abs_level", scope: !78, file: !7, line: 698, type: !69)
!81 = !DILocalVariable(name: "i_level_code", scope: !78, file: !7, line: 699, type: !69)
!82 = !DILocalVariable(name: "i_next", scope: !78, file: !7, line: 700, type: !69)
!83 = !DILocalVariable(name: "vlc", scope: !78, file: !7, line: 701, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!85 = !DILocation(line: 0, scope: !68)
!86 = !DILocation(line: 694, column: 5, scope: !68)
!87 = !DILocation(line: 0, scope: !71)
!88 = !DILocation(line: 694, column: 50, scope: !72)
!89 = !DILocation(line: 695, column: 9, scope: !71)
!90 = !DILocation(line: 732, column: 1, scope: !63)
!91 = !DILocation(line: 694, column: 37, scope: !72)
!92 = distinct !{!92, !86, !93, !94, !95}
!93 = !DILocation(line: 731, column: 9, scope: !68)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !DILocation(line: 697, column: 30, scope: !78)
!97 = !DILocation(line: 0, scope: !78)
!98 = !DILocation(line: 698, column: 35, scope: !78)
!99 = !DILocation(line: 698, column: 41, scope: !78)
!100 = !DILocation(line: 699, column: 41, scope: !78)
!101 = !DILocation(line: 699, column: 43, scope: !78)
!102 = !DILocation(line: 699, column: 48, scope: !78)
!103 = !DILocation(line: 701, column: 65, scope: !78)
!104 = !DILocation(line: 701, column: 33, scope: !78)
!105 = !DILocation(line: 703, column: 32, scope: !106)
!106 = distinct !DILexicalBlock(scope: !78, file: !7, line: 703, column: 17)
!107 = !DILocation(line: 703, column: 46, scope: !106)
!108 = !DILocation(line: 703, column: 17, scope: !78)
!109 = !DILocation(line: 705, column: 62, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !7, line: 704, column: 13)
!111 = !DILocation(line: 705, column: 31, scope: !110)
!112 = !DILocation(line: 705, column: 22, scope: !110)
!113 = !DILocation(line: 705, column: 29, scope: !110)
!114 = !{!115, !117, i64 2}
!115 = !{!"", !116, i64 0, !117, i64 2, !117, i64 3}
!116 = !{!"short", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !DILocation(line: 706, column: 61, scope: !110)
!120 = !DILocation(line: 706, column: 45, scope: !110)
!121 = !DILocation(line: 706, column: 31, scope: !110)
!122 = !DILocation(line: 707, column: 13, scope: !110)
!123 = !DILocation(line: 708, column: 36, scope: !124)
!124 = distinct !DILexicalBlock(scope: !106, file: !7, line: 708, column: 22)
!125 = !DILocation(line: 710, column: 22, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !7, line: 709, column: 13)
!127 = !DILocation(line: 710, column: 29, scope: !126)
!128 = !DILocation(line: 711, column: 31, scope: !126)
!129 = !DILocation(line: 712, column: 13, scope: !126)
!130 = !DILocation(line: 713, column: 35, scope: !131)
!131 = distinct !DILexicalBlock(scope: !124, file: !7, line: 713, column: 22)
!132 = !DILocation(line: 715, column: 22, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !7, line: 714, column: 13)
!134 = !DILocation(line: 715, column: 29, scope: !133)
!135 = !DILocation(line: 716, column: 61, scope: !133)
!136 = !DILocation(line: 716, column: 45, scope: !133)
!137 = !DILocation(line: 716, column: 31, scope: !133)
!138 = !DILocation(line: 717, column: 13, scope: !133)
!139 = !DILocation(line: 720, column: 30, scope: !140)
!140 = distinct !DILexicalBlock(scope: !131, file: !7, line: 719, column: 13)
!141 = !DILocation(line: 721, column: 21, scope: !140)
!142 = !DILocation(line: 723, column: 22, scope: !140)
!143 = !DILocation(line: 723, column: 29, scope: !140)
!144 = !DILocation(line: 724, column: 31, scope: !140)
!145 = !DILocation(line: 0, scope: !106)
!146 = !{!115, !116, i64 0}
!147 = !DILocation(line: 728, column: 27, scope: !148)
!148 = distinct !DILexicalBlock(scope: !78, file: !7, line: 728, column: 17)
!149 = !DILocation(line: 728, column: 47, scope: !148)
!150 = !DILocation(line: 730, column: 27, scope: !78)
!151 = !DILocation(line: 730, column: 18, scope: !78)
!152 = !DILocation(line: 730, column: 25, scope: !78)
!153 = !{!115, !117, i64 3}
!154 = !DILocation(line: 695, column: 84, scope: !79)
!155 = !DILocation(line: 695, column: 57, scope: !79)
!156 = distinct !{!156, !89, !157, !94, !95}
!157 = !DILocation(line: 731, column: 9, scope: !71)
