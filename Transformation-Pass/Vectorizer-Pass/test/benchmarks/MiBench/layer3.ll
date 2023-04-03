; ModuleID = 'mpglib/layer3.c'
source_filename = "mpglib/layer3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bandInfoStruct = type { [23 x i16], [22 x i16], [14 x i16], [13 x i16] }
%struct.newhuff = type { i32, ptr }
%struct.III_sideinfo = type { i32, i32, [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_s] }
%struct.gr_info_s = type { i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, [3 x ptr], ptr }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }

@bandInfo = dso_local local_unnamed_addr global [9 x %struct.bandInfoStruct] [%struct.bandInfoStruct { [23 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 30, i16 36, i16 44, i16 52, i16 62, i16 74, i16 90, i16 110, i16 134, i16 162, i16 196, i16 238, i16 288, i16 342, i16 418, i16 576], [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 6, i16 6, i16 8, i16 8, i16 10, i16 12, i16 16, i16 20, i16 24, i16 28, i16 34, i16 42, i16 50, i16 54, i16 76, i16 158], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 48, i16 66, i16 90, i16 120, i16 156, i16 198, i16 252, i16 318, i16 408, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 18, i16 22, i16 30, i16 56] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 30, i16 36, i16 42, i16 50, i16 60, i16 72, i16 88, i16 106, i16 128, i16 156, i16 190, i16 230, i16 276, i16 330, i16 384, i16 576], [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 16, i16 18, i16 22, i16 28, i16 34, i16 40, i16 46, i16 54, i16 54, i16 192], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 48, i16 66, i16 84, i16 114, i16 150, i16 192, i16 240, i16 300, i16 378, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 4, i16 6, i16 6, i16 10, i16 12, i16 14, i16 16, i16 20, i16 26, i16 66] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 82, i16 102, i16 126, i16 156, i16 194, i16 240, i16 296, i16 364, i16 448, i16 550, i16 576], [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 6, i16 6, i16 8, i16 10, i16 12, i16 16, i16 20, i16 24, i16 30, i16 38, i16 46, i16 56, i16 68, i16 84, i16 102, i16 26], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 48, i16 66, i16 90, i16 126, i16 174, i16 234, i16 312, i16 414, i16 540, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 4, i16 6, i16 8, i16 12, i16 16, i16 20, i16 26, i16 34, i16 42, i16 12] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 6, i16 12, i16 18, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 80, i16 96, i16 116, i16 140, i16 168, i16 200, i16 238, i16 284, i16 336, i16 396, i16 464, i16 522, i16 576], [22 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 20, i16 24, i16 28, i16 32, i16 38, i16 46, i16 52, i16 60, i16 68, i16 58, i16 54], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 54, i16 72, i16 96, i16 126, i16 168, i16 222, i16 300, i16 396, i16 522, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 6, i16 6, i16 8, i16 10, i16 14, i16 18, i16 26, i16 32, i16 42, i16 18] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 6, i16 12, i16 18, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 80, i16 96, i16 114, i16 136, i16 162, i16 194, i16 232, i16 278, i16 332, i16 394, i16 464, i16 540, i16 576], [22 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 18, i16 22, i16 26, i16 32, i16 38, i16 46, i16 52, i16 64, i16 70, i16 76, i16 36], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 54, i16 78, i16 108, i16 144, i16 186, i16 240, i16 312, i16 408, i16 540, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 18, i16 24, i16 32, i16 44, i16 12] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 6, i16 12, i16 18, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 80, i16 96, i16 116, i16 140, i16 168, i16 200, i16 238, i16 284, i16 336, i16 396, i16 464, i16 522, i16 576], [22 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 20, i16 24, i16 28, i16 32, i16 38, i16 46, i16 52, i16 60, i16 68, i16 58, i16 54], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 54, i16 78, i16 108, i16 144, i16 186, i16 240, i16 312, i16 402, i16 522, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 18, i16 24, i16 30, i16 40, i16 18] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 6, i16 12, i16 18, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 80, i16 96, i16 116, i16 140, i16 168, i16 200, i16 238, i16 284, i16 336, i16 396, i16 464, i16 522, i16 576], [22 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 20, i16 24, i16 28, i16 32, i16 38, i16 46, i16 52, i16 60, i16 68, i16 58, i16 54], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 54, i16 78, i16 108, i16 144, i16 186, i16 240, i16 312, i16 402, i16 522, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 18, i16 24, i16 30, i16 40, i16 18] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 6, i16 12, i16 18, i16 24, i16 30, i16 36, i16 44, i16 54, i16 66, i16 80, i16 96, i16 116, i16 140, i16 168, i16 200, i16 238, i16 284, i16 336, i16 396, i16 464, i16 522, i16 576], [22 x i16] [i16 6, i16 6, i16 6, i16 6, i16 6, i16 6, i16 8, i16 10, i16 12, i16 14, i16 16, i16 20, i16 24, i16 28, i16 32, i16 38, i16 46, i16 52, i16 60, i16 68, i16 58, i16 54], [14 x i16] [i16 0, i16 12, i16 24, i16 36, i16 54, i16 78, i16 108, i16 144, i16 186, i16 240, i16 312, i16 402, i16 522, i16 576], [13 x i16] [i16 4, i16 4, i16 4, i16 6, i16 8, i16 10, i16 12, i16 14, i16 18, i16 24, i16 30, i16 40, i16 18] }, %struct.bandInfoStruct { [23 x i16] [i16 0, i16 12, i16 24, i16 36, i16 48, i16 60, i16 72, i16 88, i16 108, i16 132, i16 160, i16 192, i16 232, i16 280, i16 336, i16 400, i16 476, i16 566, i16 568, i16 570, i16 572, i16 574, i16 576], [22 x i16] [i16 12, i16 12, i16 12, i16 12, i16 12, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 40, i16 48, i16 56, i16 64, i16 76, i16 90, i16 2, i16 2, i16 2, i16 2, i16 2], [14 x i16] [i16 0, i16 24, i16 48, i16 72, i16 108, i16 156, i16 216, i16 288, i16 372, i16 480, i16 486, i16 492, i16 498, i16 576], [13 x i16] [i16 8, i16 8, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 36, i16 2, i16 2, i16 2, i16 26] }], align 16
@gainpow2 = internal global [378 x double] zeroinitializer, align 16
@ispow = internal unnamed_addr global [8207 x double] zeroinitializer, align 16
@init_layer3.Ci = internal unnamed_addr constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 16
@aa_cs = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@aa_ca = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@win = internal global [4 x [36 x double]] zeroinitializer, align 16
@COS9 = internal unnamed_addr global [9 x double] zeroinitializer, align 16
@tfcos36 = internal unnamed_addr global [9 x double] zeroinitializer, align 16
@tfcos12 = internal unnamed_addr global [3 x double] zeroinitializer, align 16
@COS6_1 = internal unnamed_addr global double 0.000000e+00, align 8
@COS6_2 = internal unnamed_addr global double 0.000000e+00, align 8
@init_layer3.len = internal unnamed_addr constant [4 x i32] [i32 36, i32 36, i32 12, i32 36], align 16
@win1 = internal global [4 x [36 x double]] zeroinitializer, align 16
@tan1_1 = internal unnamed_addr global [16 x double] zeroinitializer, align 16
@tan2_1 = internal unnamed_addr global [16 x double] zeroinitializer, align 16
@tan1_2 = internal unnamed_addr global [16 x double] zeroinitializer, align 16
@tan2_2 = internal unnamed_addr global [16 x double] zeroinitializer, align 16
@pow1_1 = internal unnamed_addr global [2 x [16 x double]] zeroinitializer, align 16
@pow2_1 = internal unnamed_addr global [2 x [16 x double]] zeroinitializer, align 16
@pow1_2 = internal unnamed_addr global [2 x [16 x double]] zeroinitializer, align 16
@pow2_2 = internal unnamed_addr global [2 x [16 x double]] zeroinitializer, align 16
@mapbuf0 = internal global [9 x [152 x i32]] zeroinitializer, align 16
@map = internal unnamed_addr global [9 x [3 x ptr]] zeroinitializer, align 16
@mapend = internal unnamed_addr global [9 x [3 x ptr]] zeroinitializer, align 16
@mapbuf1 = internal global [9 x [156 x i32]] zeroinitializer, align 16
@mapbuf2 = internal global [9 x [44 x i32]] zeroinitializer, align 16
@longLimit = dso_local local_unnamed_addr global [9 x [23 x i32]] zeroinitializer, align 16
@shortLimit = dso_local local_unnamed_addr global [9 x [14 x i32]] zeroinitializer, align 16
@i_slen2 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@n_slen2 = internal unnamed_addr global [512 x i32] zeroinitializer, align 16
@do_layer3.hybridIn = internal global [2 x [32 x [18 x double]]] zeroinitializer, align 16
@do_layer3.hybridOut = internal global [2 x [18 x [32 x double]]] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"big_values too large!\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Blocktype == 0 and window-switching == 1 not allowed.\0A\00", align 1
@wordpointer = external local_unnamed_addr global ptr, align 8
@bitindex = external local_unnamed_addr global i32, align 4
@III_get_scale_factors_2.stab = internal unnamed_addr constant [3 x [6 x [4 x i8]]] [[6 x [4 x i8]] [[4 x i8] c"\06\05\05\05", [4 x i8] c"\06\05\07\03", [4 x i8] c"\0B\0A\00\00", [4 x i8] c"\07\07\07\00", [4 x i8] c"\06\06\06\03", [4 x i8] c"\08\08\05\00"], [6 x [4 x i8]] [[4 x i8] c"\09\09\09\09", [4 x i8] c"\09\09\0C\06", [4 x i8] c"\12\12\00\00", [4 x i8] c"\0C\0C\0C\00", [4 x i8] c"\0C\09\09\06", [4 x i8] c"\0F\0C\09\00"], [6 x [4 x i8]] [[4 x i8] c"\06\09\09\09", [4 x i8] c"\06\09\0C\06", [4 x i8] c"\0F\12\00\00", [4 x i8] c"\06\0F\0C\00", [4 x i8] c"\06\0C\09\06", [4 x i8] c"\06\12\09\00"]], align 16
@III_get_scale_factors_1.slen = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\00\00\00\03\01\01\01\02\02\02\03\03\03\04\04", [16 x i8] c"\00\01\02\03\00\01\02\03\01\02\03\01\02\03\02\03"], align 16
@ht = internal unnamed_addr constant [32 x %struct.newhuff] [%struct.newhuff { i32 0, ptr @tab0 }, %struct.newhuff { i32 0, ptr @tab1 }, %struct.newhuff { i32 0, ptr @tab2 }, %struct.newhuff { i32 0, ptr @tab3 }, %struct.newhuff { i32 0, ptr @tab0 }, %struct.newhuff { i32 0, ptr @tab5 }, %struct.newhuff { i32 0, ptr @tab6 }, %struct.newhuff { i32 0, ptr @tab7 }, %struct.newhuff { i32 0, ptr @tab8 }, %struct.newhuff { i32 0, ptr @tab9 }, %struct.newhuff { i32 0, ptr @tab10 }, %struct.newhuff { i32 0, ptr @tab11 }, %struct.newhuff { i32 0, ptr @tab12 }, %struct.newhuff { i32 0, ptr @tab13 }, %struct.newhuff { i32 0, ptr @tab0 }, %struct.newhuff { i32 0, ptr @tab15 }, %struct.newhuff { i32 1, ptr @tab16 }, %struct.newhuff { i32 2, ptr @tab16 }, %struct.newhuff { i32 3, ptr @tab16 }, %struct.newhuff { i32 4, ptr @tab16 }, %struct.newhuff { i32 6, ptr @tab16 }, %struct.newhuff { i32 8, ptr @tab16 }, %struct.newhuff { i32 10, ptr @tab16 }, %struct.newhuff { i32 13, ptr @tab16 }, %struct.newhuff { i32 4, ptr @tab24 }, %struct.newhuff { i32 5, ptr @tab24 }, %struct.newhuff { i32 6, ptr @tab24 }, %struct.newhuff { i32 7, ptr @tab24 }, %struct.newhuff { i32 8, ptr @tab24 }, %struct.newhuff { i32 9, ptr @tab24 }, %struct.newhuff { i32 11, ptr @tab24 }, %struct.newhuff { i32 13, ptr @tab24 }], align 16
@htc = internal unnamed_addr constant [2 x %struct.newhuff] [%struct.newhuff { i32 0, ptr @tab_c0 }, %struct.newhuff { i32 0, ptr @tab_c1 }], align 16
@pretab1 = internal unnamed_addr constant [22 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2, i32 0], align 16
@pretab2 = internal unnamed_addr constant [22 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"mpg123: Can't rewind stream by %d bits!\0A\00", align 1
@tab0 = internal global [1 x i16] zeroinitializer, align 2
@tab1 = internal global [7 x i16] [i16 -5, i16 -3, i16 -1, i16 17, i16 1, i16 16, i16 0], align 2
@tab2 = internal global [17 x i16] [i16 -15, i16 -11, i16 -9, i16 -5, i16 -3, i16 -1, i16 34, i16 2, i16 18, i16 -1, i16 33, i16 32, i16 17, i16 -1, i16 1, i16 16, i16 0], align 16
@tab3 = internal global [17 x i16] [i16 -13, i16 -11, i16 -9, i16 -5, i16 -3, i16 -1, i16 34, i16 2, i16 18, i16 -1, i16 33, i16 32, i16 16, i16 17, i16 -1, i16 1, i16 0], align 16
@tab5 = internal global [31 x i16] [i16 -29, i16 -25, i16 -23, i16 -15, i16 -7, i16 -5, i16 -3, i16 -1, i16 51, i16 35, i16 50, i16 49, i16 -3, i16 -1, i16 19, i16 3, i16 -1, i16 48, i16 34, i16 -3, i16 -1, i16 18, i16 33, i16 -1, i16 2, i16 32, i16 17, i16 -1, i16 1, i16 16, i16 0], align 16
@tab6 = internal global [31 x i16] [i16 -25, i16 -19, i16 -13, i16 -9, i16 -5, i16 -3, i16 -1, i16 51, i16 3, i16 35, i16 -1, i16 50, i16 48, i16 -1, i16 19, i16 49, i16 -3, i16 -1, i16 34, i16 2, i16 18, i16 -3, i16 -1, i16 33, i16 32, i16 1, i16 -1, i16 17, i16 -1, i16 16, i16 0], align 16
@tab7 = internal global [71 x i16] [i16 -69, i16 -65, i16 -57, i16 -39, i16 -29, i16 -17, i16 -11, i16 -7, i16 -3, i16 -1, i16 85, i16 69, i16 -1, i16 84, i16 83, i16 -1, i16 53, i16 68, i16 -3, i16 -1, i16 37, i16 82, i16 21, i16 -5, i16 -1, i16 81, i16 -1, i16 5, i16 52, i16 -1, i16 80, i16 -1, i16 67, i16 51, i16 -5, i16 -3, i16 -1, i16 36, i16 66, i16 20, i16 -1, i16 65, i16 64, i16 -11, i16 -7, i16 -3, i16 -1, i16 4, i16 35, i16 -1, i16 50, i16 3, i16 -1, i16 19, i16 49, i16 -3, i16 -1, i16 48, i16 34, i16 18, i16 -5, i16 -1, i16 33, i16 -1, i16 2, i16 32, i16 17, i16 -1, i16 1, i16 16, i16 0], align 16
@tab8 = internal global [71 x i16] [i16 -65, i16 -63, i16 -59, i16 -45, i16 -31, i16 -19, i16 -13, i16 -7, i16 -5, i16 -3, i16 -1, i16 85, i16 84, i16 69, i16 83, i16 -3, i16 -1, i16 53, i16 68, i16 37, i16 -3, i16 -1, i16 82, i16 5, i16 21, i16 -5, i16 -1, i16 81, i16 -1, i16 52, i16 67, i16 -3, i16 -1, i16 80, i16 51, i16 36, i16 -5, i16 -3, i16 -1, i16 66, i16 20, i16 65, i16 -3, i16 -1, i16 4, i16 64, i16 -1, i16 35, i16 50, i16 -9, i16 -7, i16 -3, i16 -1, i16 19, i16 49, i16 -1, i16 3, i16 48, i16 34, i16 -1, i16 2, i16 32, i16 -1, i16 18, i16 33, i16 17, i16 -3, i16 -1, i16 1, i16 16, i16 0], align 16
@tab9 = internal global [71 x i16] [i16 -63, i16 -53, i16 -41, i16 -29, i16 -19, i16 -11, i16 -5, i16 -3, i16 -1, i16 85, i16 69, i16 53, i16 -1, i16 83, i16 -1, i16 84, i16 5, i16 -3, i16 -1, i16 68, i16 37, i16 -1, i16 82, i16 21, i16 -3, i16 -1, i16 81, i16 52, i16 -1, i16 67, i16 -1, i16 80, i16 4, i16 -7, i16 -3, i16 -1, i16 36, i16 66, i16 -1, i16 51, i16 64, i16 -1, i16 20, i16 65, i16 -5, i16 -3, i16 -1, i16 35, i16 50, i16 19, i16 -1, i16 49, i16 -1, i16 3, i16 48, i16 -5, i16 -3, i16 -1, i16 34, i16 2, i16 18, i16 -1, i16 33, i16 32, i16 -3, i16 -1, i16 17, i16 1, i16 -1, i16 16, i16 0], align 16
@tab10 = internal global [127 x i16] [i16 -125, i16 -121, i16 -111, i16 -83, i16 -55, i16 -35, i16 -21, i16 -13, i16 -7, i16 -3, i16 -1, i16 119, i16 103, i16 -1, i16 118, i16 87, i16 -3, i16 -1, i16 117, i16 102, i16 71, i16 -3, i16 -1, i16 116, i16 86, i16 -1, i16 101, i16 55, i16 -9, i16 -3, i16 -1, i16 115, i16 70, i16 -3, i16 -1, i16 85, i16 84, i16 99, i16 -1, i16 39, i16 114, i16 -11, i16 -5, i16 -3, i16 -1, i16 100, i16 7, i16 112, i16 -1, i16 98, i16 -1, i16 69, i16 53, i16 -5, i16 -1, i16 6, i16 -1, i16 83, i16 68, i16 23, i16 -17, i16 -5, i16 -1, i16 113, i16 -1, i16 54, i16 38, i16 -5, i16 -3, i16 -1, i16 37, i16 82, i16 21, i16 -1, i16 81, i16 -1, i16 52, i16 67, i16 -3, i16 -1, i16 22, i16 97, i16 -1, i16 96, i16 -1, i16 5, i16 80, i16 -19, i16 -11, i16 -7, i16 -3, i16 -1, i16 36, i16 66, i16 -1, i16 51, i16 4, i16 -1, i16 20, i16 65, i16 -3, i16 -1, i16 64, i16 35, i16 -1, i16 50, i16 3, i16 -3, i16 -1, i16 19, i16 49, i16 -1, i16 48, i16 34, i16 -7, i16 -3, i16 -1, i16 18, i16 33, i16 -1, i16 2, i16 32, i16 17, i16 -1, i16 1, i16 16, i16 0], align 16
@tab11 = internal global [127 x i16] [i16 -121, i16 -113, i16 -89, i16 -59, i16 -43, i16 -27, i16 -17, i16 -7, i16 -3, i16 -1, i16 119, i16 103, i16 -1, i16 118, i16 117, i16 -3, i16 -1, i16 102, i16 71, i16 -1, i16 116, i16 -1, i16 87, i16 85, i16 -5, i16 -3, i16 -1, i16 86, i16 101, i16 55, i16 -1, i16 115, i16 70, i16 -9, i16 -7, i16 -3, i16 -1, i16 69, i16 84, i16 -1, i16 53, i16 83, i16 39, i16 -1, i16 114, i16 -1, i16 100, i16 7, i16 -5, i16 -1, i16 113, i16 -1, i16 23, i16 112, i16 -3, i16 -1, i16 54, i16 99, i16 -1, i16 96, i16 -1, i16 68, i16 37, i16 -13, i16 -7, i16 -5, i16 -3, i16 -1, i16 82, i16 5, i16 21, i16 98, i16 -3, i16 -1, i16 38, i16 6, i16 22, i16 -5, i16 -1, i16 97, i16 -1, i16 81, i16 52, i16 -5, i16 -1, i16 80, i16 -1, i16 67, i16 51, i16 -1, i16 36, i16 66, i16 -15, i16 -11, i16 -7, i16 -3, i16 -1, i16 20, i16 65, i16 -1, i16 4, i16 64, i16 -1, i16 35, i16 50, i16 -1, i16 19, i16 49, i16 -5, i16 -3, i16 -1, i16 3, i16 48, i16 34, i16 33, i16 -5, i16 -1, i16 18, i16 -1, i16 2, i16 32, i16 17, i16 -3, i16 -1, i16 1, i16 16, i16 0], align 16
@tab12 = internal global [127 x i16] [i16 -115, i16 -99, i16 -73, i16 -45, i16 -27, i16 -17, i16 -9, i16 -5, i16 -3, i16 -1, i16 119, i16 103, i16 118, i16 -1, i16 87, i16 117, i16 -3, i16 -1, i16 102, i16 71, i16 -1, i16 116, i16 101, i16 -3, i16 -1, i16 86, i16 55, i16 -3, i16 -1, i16 115, i16 85, i16 39, i16 -7, i16 -3, i16 -1, i16 114, i16 70, i16 -1, i16 100, i16 23, i16 -5, i16 -1, i16 113, i16 -1, i16 7, i16 112, i16 -1, i16 54, i16 99, i16 -13, i16 -9, i16 -3, i16 -1, i16 69, i16 84, i16 -1, i16 68, i16 -1, i16 6, i16 5, i16 -1, i16 38, i16 98, i16 -5, i16 -1, i16 97, i16 -1, i16 22, i16 96, i16 -3, i16 -1, i16 53, i16 83, i16 -1, i16 37, i16 82, i16 -17, i16 -7, i16 -3, i16 -1, i16 21, i16 81, i16 -1, i16 52, i16 67, i16 -5, i16 -3, i16 -1, i16 80, i16 4, i16 36, i16 -1, i16 66, i16 20, i16 -3, i16 -1, i16 51, i16 65, i16 -1, i16 35, i16 50, i16 -11, i16 -7, i16 -5, i16 -3, i16 -1, i16 64, i16 3, i16 48, i16 19, i16 -1, i16 49, i16 34, i16 -1, i16 18, i16 33, i16 -7, i16 -5, i16 -3, i16 -1, i16 2, i16 32, i16 0, i16 17, i16 -1, i16 1, i16 16], align 16
@tab13 = internal global [511 x i16] [i16 -509, i16 -503, i16 -475, i16 -405, i16 -333, i16 -265, i16 -205, i16 -153, i16 -115, i16 -83, i16 -53, i16 -35, i16 -21, i16 -13, i16 -9, i16 -7, i16 -5, i16 -3, i16 -1, i16 254, i16 252, i16 253, i16 237, i16 255, i16 -1, i16 239, i16 223, i16 -3, i16 -1, i16 238, i16 207, i16 -1, i16 222, i16 191, i16 -9, i16 -3, i16 -1, i16 251, i16 206, i16 -1, i16 220, i16 -1, i16 175, i16 233, i16 -1, i16 236, i16 221, i16 -9, i16 -5, i16 -3, i16 -1, i16 250, i16 205, i16 190, i16 -1, i16 235, i16 159, i16 -3, i16 -1, i16 249, i16 234, i16 -1, i16 189, i16 219, i16 -17, i16 -9, i16 -3, i16 -1, i16 143, i16 248, i16 -1, i16 204, i16 -1, i16 174, i16 158, i16 -5, i16 -1, i16 142, i16 -1, i16 127, i16 126, i16 247, i16 -5, i16 -1, i16 218, i16 -1, i16 173, i16 188, i16 -3, i16 -1, i16 203, i16 246, i16 111, i16 -15, i16 -7, i16 -3, i16 -1, i16 232, i16 95, i16 -1, i16 157, i16 217, i16 -3, i16 -1, i16 245, i16 231, i16 -1, i16 172, i16 187, i16 -9, i16 -3, i16 -1, i16 79, i16 244, i16 -3, i16 -1, i16 202, i16 230, i16 243, i16 -1, i16 63, i16 -1, i16 141, i16 216, i16 -21, i16 -9, i16 -3, i16 -1, i16 47, i16 242, i16 -3, i16 -1, i16 110, i16 156, i16 15, i16 -5, i16 -3, i16 -1, i16 201, i16 94, i16 171, i16 -3, i16 -1, i16 125, i16 215, i16 78, i16 -11, i16 -5, i16 -3, i16 -1, i16 200, i16 214, i16 62, i16 -1, i16 185, i16 -1, i16 155, i16 170, i16 -1, i16 31, i16 241, i16 -23, i16 -13, i16 -5, i16 -1, i16 240, i16 -1, i16 186, i16 229, i16 -3, i16 -1, i16 228, i16 140, i16 -1, i16 109, i16 227, i16 -5, i16 -1, i16 226, i16 -1, i16 46, i16 14, i16 -1, i16 30, i16 225, i16 -15, i16 -7, i16 -3, i16 -1, i16 224, i16 93, i16 -1, i16 213, i16 124, i16 -3, i16 -1, i16 199, i16 77, i16 -1, i16 139, i16 184, i16 -7, i16 -3, i16 -1, i16 212, i16 154, i16 -1, i16 169, i16 108, i16 -1, i16 198, i16 61, i16 -37, i16 -21, i16 -9, i16 -5, i16 -3, i16 -1, i16 211, i16 123, i16 45, i16 -1, i16 210, i16 29, i16 -5, i16 -1, i16 183, i16 -1, i16 92, i16 197, i16 -3, i16 -1, i16 153, i16 122, i16 195, i16 -7, i16 -5, i16 -3, i16 -1, i16 167, i16 151, i16 75, i16 209, i16 -3, i16 -1, i16 13, i16 208, i16 -1, i16 138, i16 168, i16 -11, i16 -7, i16 -3, i16 -1, i16 76, i16 196, i16 -1, i16 107, i16 182, i16 -1, i16 60, i16 44, i16 -3, i16 -1, i16 194, i16 91, i16 -3, i16 -1, i16 181, i16 137, i16 28, i16 -43, i16 -23, i16 -11, i16 -5, i16 -1, i16 193, i16 -1, i16 152, i16 12, i16 -1, i16 192, i16 -1, i16 180, i16 106, i16 -5, i16 -3, i16 -1, i16 166, i16 121, i16 59, i16 -1, i16 179, i16 -1, i16 136, i16 90, i16 -11, i16 -5, i16 -1, i16 43, i16 -1, i16 165, i16 105, i16 -1, i16 164, i16 -1, i16 120, i16 135, i16 -5, i16 -1, i16 148, i16 -1, i16 119, i16 118, i16 178, i16 -11, i16 -3, i16 -1, i16 27, i16 177, i16 -3, i16 -1, i16 11, i16 176, i16 -1, i16 150, i16 74, i16 -7, i16 -3, i16 -1, i16 58, i16 163, i16 -1, i16 89, i16 149, i16 -1, i16 42, i16 162, i16 -47, i16 -23, i16 -9, i16 -3, i16 -1, i16 26, i16 161, i16 -3, i16 -1, i16 10, i16 104, i16 160, i16 -5, i16 -3, i16 -1, i16 134, i16 73, i16 147, i16 -3, i16 -1, i16 57, i16 88, i16 -1, i16 133, i16 103, i16 -9, i16 -3, i16 -1, i16 41, i16 146, i16 -3, i16 -1, i16 87, i16 117, i16 56, i16 -5, i16 -1, i16 131, i16 -1, i16 102, i16 71, i16 -3, i16 -1, i16 116, i16 86, i16 -1, i16 101, i16 115, i16 -11, i16 -3, i16 -1, i16 25, i16 145, i16 -3, i16 -1, i16 9, i16 144, i16 -1, i16 72, i16 132, i16 -7, i16 -5, i16 -1, i16 114, i16 -1, i16 70, i16 100, i16 40, i16 -1, i16 130, i16 24, i16 -41, i16 -27, i16 -11, i16 -5, i16 -3, i16 -1, i16 55, i16 39, i16 23, i16 -1, i16 113, i16 -1, i16 85, i16 7, i16 -7, i16 -3, i16 -1, i16 112, i16 54, i16 -1, i16 99, i16 69, i16 -3, i16 -1, i16 84, i16 38, i16 -1, i16 98, i16 53, i16 -5, i16 -1, i16 129, i16 -1, i16 8, i16 128, i16 -3, i16 -1, i16 22, i16 97, i16 -1, i16 6, i16 96, i16 -13, i16 -9, i16 -5, i16 -3, i16 -1, i16 83, i16 68, i16 37, i16 -1, i16 82, i16 5, i16 -1, i16 21, i16 81, i16 -7, i16 -3, i16 -1, i16 52, i16 67, i16 -1, i16 80, i16 36, i16 -3, i16 -1, i16 66, i16 51, i16 20, i16 -19, i16 -11, i16 -5, i16 -1, i16 65, i16 -1, i16 4, i16 64, i16 -3, i16 -1, i16 35, i16 50, i16 19, i16 -3, i16 -1, i16 49, i16 3, i16 -1, i16 48, i16 34, i16 -3, i16 -1, i16 18, i16 33, i16 -1, i16 2, i16 32, i16 -3, i16 -1, i16 17, i16 1, i16 16, i16 0], align 16
@tab15 = internal global [511 x i16] [i16 -495, i16 -445, i16 -355, i16 -263, i16 -183, i16 -115, i16 -77, i16 -43, i16 -27, i16 -13, i16 -7, i16 -3, i16 -1, i16 255, i16 239, i16 -1, i16 254, i16 223, i16 -1, i16 238, i16 -1, i16 253, i16 207, i16 -7, i16 -3, i16 -1, i16 252, i16 222, i16 -1, i16 237, i16 191, i16 -1, i16 251, i16 -1, i16 206, i16 236, i16 -7, i16 -3, i16 -1, i16 221, i16 175, i16 -1, i16 250, i16 190, i16 -3, i16 -1, i16 235, i16 205, i16 -1, i16 220, i16 159, i16 -15, i16 -7, i16 -3, i16 -1, i16 249, i16 234, i16 -1, i16 189, i16 219, i16 -3, i16 -1, i16 143, i16 248, i16 -1, i16 204, i16 158, i16 -7, i16 -3, i16 -1, i16 233, i16 127, i16 -1, i16 247, i16 173, i16 -3, i16 -1, i16 218, i16 188, i16 -1, i16 111, i16 -1, i16 174, i16 15, i16 -19, i16 -11, i16 -3, i16 -1, i16 203, i16 246, i16 -3, i16 -1, i16 142, i16 232, i16 -1, i16 95, i16 157, i16 -3, i16 -1, i16 245, i16 126, i16 -1, i16 231, i16 172, i16 -9, i16 -3, i16 -1, i16 202, i16 187, i16 -3, i16 -1, i16 217, i16 141, i16 79, i16 -3, i16 -1, i16 244, i16 63, i16 -1, i16 243, i16 216, i16 -33, i16 -17, i16 -9, i16 -3, i16 -1, i16 230, i16 47, i16 -1, i16 242, i16 -1, i16 110, i16 240, i16 -3, i16 -1, i16 31, i16 241, i16 -1, i16 156, i16 201, i16 -7, i16 -3, i16 -1, i16 94, i16 171, i16 -1, i16 186, i16 229, i16 -3, i16 -1, i16 125, i16 215, i16 -1, i16 78, i16 228, i16 -15, i16 -7, i16 -3, i16 -1, i16 140, i16 200, i16 -1, i16 62, i16 109, i16 -3, i16 -1, i16 214, i16 227, i16 -1, i16 155, i16 185, i16 -7, i16 -3, i16 -1, i16 46, i16 170, i16 -1, i16 226, i16 30, i16 -5, i16 -1, i16 225, i16 -1, i16 14, i16 224, i16 -1, i16 93, i16 213, i16 -45, i16 -25, i16 -13, i16 -7, i16 -3, i16 -1, i16 124, i16 199, i16 -1, i16 77, i16 139, i16 -1, i16 212, i16 -1, i16 184, i16 154, i16 -7, i16 -3, i16 -1, i16 169, i16 108, i16 -1, i16 198, i16 61, i16 -1, i16 211, i16 210, i16 -9, i16 -5, i16 -3, i16 -1, i16 45, i16 13, i16 29, i16 -1, i16 123, i16 183, i16 -5, i16 -1, i16 209, i16 -1, i16 92, i16 208, i16 -1, i16 197, i16 138, i16 -17, i16 -7, i16 -3, i16 -1, i16 168, i16 76, i16 -1, i16 196, i16 107, i16 -5, i16 -1, i16 182, i16 -1, i16 153, i16 12, i16 -1, i16 60, i16 195, i16 -9, i16 -3, i16 -1, i16 122, i16 167, i16 -1, i16 166, i16 -1, i16 192, i16 11, i16 -1, i16 194, i16 -1, i16 44, i16 91, i16 -55, i16 -29, i16 -15, i16 -7, i16 -3, i16 -1, i16 181, i16 28, i16 -1, i16 137, i16 152, i16 -3, i16 -1, i16 193, i16 75, i16 -1, i16 180, i16 106, i16 -5, i16 -3, i16 -1, i16 59, i16 121, i16 179, i16 -3, i16 -1, i16 151, i16 136, i16 -1, i16 43, i16 90, i16 -11, i16 -5, i16 -1, i16 178, i16 -1, i16 165, i16 27, i16 -1, i16 177, i16 -1, i16 176, i16 105, i16 -7, i16 -3, i16 -1, i16 150, i16 74, i16 -1, i16 164, i16 120, i16 -3, i16 -1, i16 135, i16 58, i16 163, i16 -17, i16 -7, i16 -3, i16 -1, i16 89, i16 149, i16 -1, i16 42, i16 162, i16 -3, i16 -1, i16 26, i16 161, i16 -3, i16 -1, i16 10, i16 160, i16 104, i16 -7, i16 -3, i16 -1, i16 134, i16 73, i16 -1, i16 148, i16 57, i16 -5, i16 -1, i16 147, i16 -1, i16 119, i16 9, i16 -1, i16 88, i16 133, i16 -53, i16 -29, i16 -13, i16 -7, i16 -3, i16 -1, i16 41, i16 103, i16 -1, i16 118, i16 146, i16 -1, i16 145, i16 -1, i16 25, i16 144, i16 -7, i16 -3, i16 -1, i16 72, i16 132, i16 -1, i16 87, i16 117, i16 -3, i16 -1, i16 56, i16 131, i16 -1, i16 102, i16 71, i16 -7, i16 -3, i16 -1, i16 40, i16 130, i16 -1, i16 24, i16 129, i16 -7, i16 -3, i16 -1, i16 116, i16 8, i16 -1, i16 128, i16 86, i16 -3, i16 -1, i16 101, i16 55, i16 -1, i16 115, i16 70, i16 -17, i16 -7, i16 -3, i16 -1, i16 39, i16 114, i16 -1, i16 100, i16 23, i16 -3, i16 -1, i16 85, i16 113, i16 -3, i16 -1, i16 7, i16 112, i16 54, i16 -7, i16 -3, i16 -1, i16 99, i16 69, i16 -1, i16 84, i16 38, i16 -3, i16 -1, i16 98, i16 22, i16 -3, i16 -1, i16 6, i16 96, i16 53, i16 -33, i16 -19, i16 -9, i16 -5, i16 -1, i16 97, i16 -1, i16 83, i16 68, i16 -1, i16 37, i16 82, i16 -3, i16 -1, i16 21, i16 81, i16 -3, i16 -1, i16 5, i16 80, i16 52, i16 -7, i16 -3, i16 -1, i16 67, i16 36, i16 -1, i16 66, i16 51, i16 -1, i16 65, i16 -1, i16 20, i16 4, i16 -9, i16 -3, i16 -1, i16 35, i16 50, i16 -3, i16 -1, i16 64, i16 3, i16 19, i16 -3, i16 -1, i16 49, i16 48, i16 34, i16 -9, i16 -7, i16 -3, i16 -1, i16 18, i16 33, i16 -1, i16 2, i16 32, i16 17, i16 -3, i16 -1, i16 1, i16 16, i16 0], align 16
@tab16 = internal global [511 x i16] [i16 -509, i16 -503, i16 -461, i16 -323, i16 -103, i16 -37, i16 -27, i16 -15, i16 -7, i16 -3, i16 -1, i16 239, i16 254, i16 -1, i16 223, i16 253, i16 -3, i16 -1, i16 207, i16 252, i16 -1, i16 191, i16 251, i16 -5, i16 -1, i16 175, i16 -1, i16 250, i16 159, i16 -3, i16 -1, i16 249, i16 248, i16 143, i16 -7, i16 -3, i16 -1, i16 127, i16 247, i16 -1, i16 111, i16 246, i16 255, i16 -9, i16 -5, i16 -3, i16 -1, i16 95, i16 245, i16 79, i16 -1, i16 244, i16 243, i16 -53, i16 -1, i16 240, i16 -1, i16 63, i16 -29, i16 -19, i16 -13, i16 -7, i16 -5, i16 -1, i16 206, i16 -1, i16 236, i16 221, i16 222, i16 -1, i16 233, i16 -1, i16 234, i16 217, i16 -1, i16 238, i16 -1, i16 237, i16 235, i16 -3, i16 -1, i16 190, i16 205, i16 -3, i16 -1, i16 220, i16 219, i16 174, i16 -11, i16 -5, i16 -1, i16 204, i16 -1, i16 173, i16 218, i16 -3, i16 -1, i16 126, i16 172, i16 202, i16 -5, i16 -3, i16 -1, i16 201, i16 125, i16 94, i16 189, i16 242, i16 -93, i16 -5, i16 -3, i16 -1, i16 47, i16 15, i16 31, i16 -1, i16 241, i16 -49, i16 -25, i16 -13, i16 -5, i16 -1, i16 158, i16 -1, i16 188, i16 203, i16 -3, i16 -1, i16 142, i16 232, i16 -1, i16 157, i16 231, i16 -7, i16 -3, i16 -1, i16 187, i16 141, i16 -1, i16 216, i16 110, i16 -1, i16 230, i16 156, i16 -13, i16 -7, i16 -3, i16 -1, i16 171, i16 186, i16 -1, i16 229, i16 215, i16 -1, i16 78, i16 -1, i16 228, i16 140, i16 -3, i16 -1, i16 200, i16 62, i16 -1, i16 109, i16 -1, i16 214, i16 155, i16 -19, i16 -11, i16 -5, i16 -3, i16 -1, i16 185, i16 170, i16 225, i16 -1, i16 212, i16 -1, i16 184, i16 169, i16 -5, i16 -1, i16 123, i16 -1, i16 183, i16 208, i16 227, i16 -7, i16 -3, i16 -1, i16 14, i16 224, i16 -1, i16 93, i16 213, i16 -3, i16 -1, i16 124, i16 199, i16 -1, i16 77, i16 139, i16 -75, i16 -45, i16 -27, i16 -13, i16 -7, i16 -3, i16 -1, i16 154, i16 108, i16 -1, i16 198, i16 61, i16 -3, i16 -1, i16 92, i16 197, i16 13, i16 -7, i16 -3, i16 -1, i16 138, i16 168, i16 -1, i16 153, i16 76, i16 -3, i16 -1, i16 182, i16 122, i16 60, i16 -11, i16 -5, i16 -3, i16 -1, i16 91, i16 137, i16 28, i16 -1, i16 192, i16 -1, i16 152, i16 121, i16 -1, i16 226, i16 -1, i16 46, i16 30, i16 -15, i16 -7, i16 -3, i16 -1, i16 211, i16 45, i16 -1, i16 210, i16 209, i16 -5, i16 -1, i16 59, i16 -1, i16 151, i16 136, i16 29, i16 -7, i16 -3, i16 -1, i16 196, i16 107, i16 -1, i16 195, i16 167, i16 -1, i16 44, i16 -1, i16 194, i16 181, i16 -23, i16 -13, i16 -7, i16 -3, i16 -1, i16 193, i16 12, i16 -1, i16 75, i16 180, i16 -3, i16 -1, i16 106, i16 166, i16 179, i16 -5, i16 -3, i16 -1, i16 90, i16 165, i16 43, i16 -1, i16 178, i16 27, i16 -13, i16 -5, i16 -1, i16 177, i16 -1, i16 11, i16 176, i16 -3, i16 -1, i16 105, i16 150, i16 -1, i16 74, i16 164, i16 -5, i16 -3, i16 -1, i16 120, i16 135, i16 163, i16 -3, i16 -1, i16 58, i16 89, i16 42, i16 -97, i16 -57, i16 -33, i16 -19, i16 -11, i16 -5, i16 -3, i16 -1, i16 149, i16 104, i16 161, i16 -3, i16 -1, i16 134, i16 119, i16 148, i16 -5, i16 -3, i16 -1, i16 73, i16 87, i16 103, i16 162, i16 -5, i16 -1, i16 26, i16 -1, i16 10, i16 160, i16 -3, i16 -1, i16 57, i16 147, i16 -1, i16 88, i16 133, i16 -9, i16 -3, i16 -1, i16 41, i16 146, i16 -3, i16 -1, i16 118, i16 9, i16 25, i16 -5, i16 -1, i16 145, i16 -1, i16 144, i16 72, i16 -3, i16 -1, i16 132, i16 117, i16 -1, i16 56, i16 131, i16 -21, i16 -11, i16 -5, i16 -3, i16 -1, i16 102, i16 40, i16 130, i16 -3, i16 -1, i16 71, i16 116, i16 24, i16 -3, i16 -1, i16 129, i16 128, i16 -3, i16 -1, i16 8, i16 86, i16 55, i16 -9, i16 -5, i16 -1, i16 115, i16 -1, i16 101, i16 70, i16 -1, i16 39, i16 114, i16 -5, i16 -3, i16 -1, i16 100, i16 85, i16 7, i16 23, i16 -23, i16 -13, i16 -5, i16 -1, i16 113, i16 -1, i16 112, i16 54, i16 -3, i16 -1, i16 99, i16 69, i16 -1, i16 84, i16 38, i16 -3, i16 -1, i16 98, i16 22, i16 -1, i16 97, i16 -1, i16 6, i16 96, i16 -9, i16 -5, i16 -1, i16 83, i16 -1, i16 53, i16 68, i16 -1, i16 37, i16 82, i16 -1, i16 81, i16 -1, i16 21, i16 5, i16 -33, i16 -23, i16 -13, i16 -7, i16 -3, i16 -1, i16 52, i16 67, i16 -1, i16 80, i16 36, i16 -3, i16 -1, i16 66, i16 51, i16 20, i16 -5, i16 -1, i16 65, i16 -1, i16 4, i16 64, i16 -1, i16 35, i16 50, i16 -3, i16 -1, i16 19, i16 49, i16 -3, i16 -1, i16 3, i16 48, i16 34, i16 -3, i16 -1, i16 18, i16 33, i16 -1, i16 2, i16 32, i16 -3, i16 -1, i16 17, i16 1, i16 16, i16 0], align 16
@tab24 = internal global [511 x i16] [i16 -451, i16 -117, i16 -43, i16 -25, i16 -15, i16 -7, i16 -3, i16 -1, i16 239, i16 254, i16 -1, i16 223, i16 253, i16 -3, i16 -1, i16 207, i16 252, i16 -1, i16 191, i16 251, i16 -5, i16 -1, i16 250, i16 -1, i16 175, i16 159, i16 -1, i16 249, i16 248, i16 -9, i16 -5, i16 -3, i16 -1, i16 143, i16 127, i16 247, i16 -1, i16 111, i16 246, i16 -3, i16 -1, i16 95, i16 245, i16 -1, i16 79, i16 244, i16 -71, i16 -7, i16 -3, i16 -1, i16 63, i16 243, i16 -1, i16 47, i16 242, i16 -5, i16 -1, i16 241, i16 -1, i16 31, i16 240, i16 -25, i16 -9, i16 -1, i16 15, i16 -3, i16 -1, i16 238, i16 222, i16 -1, i16 237, i16 206, i16 -7, i16 -3, i16 -1, i16 236, i16 221, i16 -1, i16 190, i16 235, i16 -3, i16 -1, i16 205, i16 220, i16 -1, i16 174, i16 234, i16 -15, i16 -7, i16 -3, i16 -1, i16 189, i16 219, i16 -1, i16 204, i16 158, i16 -3, i16 -1, i16 233, i16 173, i16 -1, i16 218, i16 188, i16 -7, i16 -3, i16 -1, i16 203, i16 142, i16 -1, i16 232, i16 157, i16 -3, i16 -1, i16 217, i16 126, i16 -1, i16 231, i16 172, i16 255, i16 -235, i16 -143, i16 -77, i16 -45, i16 -25, i16 -15, i16 -7, i16 -3, i16 -1, i16 202, i16 187, i16 -1, i16 141, i16 216, i16 -5, i16 -3, i16 -1, i16 14, i16 224, i16 13, i16 230, i16 -5, i16 -3, i16 -1, i16 110, i16 156, i16 201, i16 -1, i16 94, i16 186, i16 -9, i16 -5, i16 -1, i16 229, i16 -1, i16 171, i16 125, i16 -1, i16 215, i16 228, i16 -3, i16 -1, i16 140, i16 200, i16 -3, i16 -1, i16 78, i16 46, i16 62, i16 -15, i16 -7, i16 -3, i16 -1, i16 109, i16 214, i16 -1, i16 227, i16 155, i16 -3, i16 -1, i16 185, i16 170, i16 -1, i16 226, i16 30, i16 -7, i16 -3, i16 -1, i16 225, i16 93, i16 -1, i16 213, i16 124, i16 -3, i16 -1, i16 199, i16 77, i16 -1, i16 139, i16 184, i16 -31, i16 -15, i16 -7, i16 -3, i16 -1, i16 212, i16 154, i16 -1, i16 169, i16 108, i16 -3, i16 -1, i16 198, i16 61, i16 -1, i16 211, i16 45, i16 -7, i16 -3, i16 -1, i16 210, i16 29, i16 -1, i16 123, i16 183, i16 -3, i16 -1, i16 209, i16 92, i16 -1, i16 197, i16 138, i16 -17, i16 -7, i16 -3, i16 -1, i16 168, i16 153, i16 -1, i16 76, i16 196, i16 -3, i16 -1, i16 107, i16 182, i16 -3, i16 -1, i16 208, i16 12, i16 60, i16 -7, i16 -3, i16 -1, i16 195, i16 122, i16 -1, i16 167, i16 44, i16 -3, i16 -1, i16 194, i16 91, i16 -1, i16 181, i16 28, i16 -57, i16 -35, i16 -19, i16 -7, i16 -3, i16 -1, i16 137, i16 152, i16 -1, i16 193, i16 75, i16 -5, i16 -3, i16 -1, i16 192, i16 11, i16 59, i16 -3, i16 -1, i16 176, i16 10, i16 26, i16 -5, i16 -1, i16 180, i16 -1, i16 106, i16 166, i16 -3, i16 -1, i16 121, i16 151, i16 -3, i16 -1, i16 160, i16 9, i16 144, i16 -9, i16 -3, i16 -1, i16 179, i16 136, i16 -3, i16 -1, i16 43, i16 90, i16 178, i16 -7, i16 -3, i16 -1, i16 165, i16 27, i16 -1, i16 177, i16 105, i16 -1, i16 150, i16 164, i16 -17, i16 -9, i16 -5, i16 -3, i16 -1, i16 74, i16 120, i16 135, i16 -1, i16 58, i16 163, i16 -3, i16 -1, i16 89, i16 149, i16 -1, i16 42, i16 162, i16 -7, i16 -3, i16 -1, i16 161, i16 104, i16 -1, i16 134, i16 119, i16 -3, i16 -1, i16 73, i16 148, i16 -1, i16 57, i16 147, i16 -63, i16 -31, i16 -15, i16 -7, i16 -3, i16 -1, i16 88, i16 133, i16 -1, i16 41, i16 103, i16 -3, i16 -1, i16 118, i16 146, i16 -1, i16 25, i16 145, i16 -7, i16 -3, i16 -1, i16 72, i16 132, i16 -1, i16 87, i16 117, i16 -3, i16 -1, i16 56, i16 131, i16 -1, i16 102, i16 40, i16 -17, i16 -7, i16 -3, i16 -1, i16 130, i16 24, i16 -1, i16 71, i16 116, i16 -5, i16 -1, i16 129, i16 -1, i16 8, i16 128, i16 -1, i16 86, i16 101, i16 -7, i16 -5, i16 -1, i16 23, i16 -1, i16 7, i16 112, i16 115, i16 -3, i16 -1, i16 55, i16 39, i16 114, i16 -15, i16 -7, i16 -3, i16 -1, i16 70, i16 100, i16 -1, i16 85, i16 113, i16 -3, i16 -1, i16 54, i16 99, i16 -1, i16 69, i16 84, i16 -7, i16 -3, i16 -1, i16 38, i16 98, i16 -1, i16 22, i16 97, i16 -5, i16 -3, i16 -1, i16 6, i16 96, i16 53, i16 -1, i16 83, i16 68, i16 -51, i16 -37, i16 -23, i16 -15, i16 -9, i16 -3, i16 -1, i16 37, i16 82, i16 -1, i16 21, i16 -1, i16 5, i16 80, i16 -1, i16 81, i16 -1, i16 52, i16 67, i16 -3, i16 -1, i16 36, i16 66, i16 -1, i16 51, i16 20, i16 -9, i16 -5, i16 -1, i16 65, i16 -1, i16 4, i16 64, i16 -1, i16 35, i16 50, i16 -1, i16 19, i16 49, i16 -7, i16 -5, i16 -3, i16 -1, i16 3, i16 48, i16 34, i16 18, i16 -1, i16 33, i16 -1, i16 2, i16 32, i16 -3, i16 -1, i16 17, i16 1, i16 -1, i16 16, i16 0], align 16
@tab_c0 = internal global [31 x i16] [i16 -29, i16 -21, i16 -13, i16 -7, i16 -3, i16 -1, i16 11, i16 15, i16 -1, i16 13, i16 14, i16 -3, i16 -1, i16 7, i16 5, i16 9, i16 -3, i16 -1, i16 6, i16 3, i16 -1, i16 10, i16 12, i16 -3, i16 -1, i16 2, i16 1, i16 -1, i16 4, i16 8, i16 0], align 16
@tab_c1 = internal global [31 x i16] [i16 -15, i16 -7, i16 -3, i16 -1, i16 15, i16 14, i16 -1, i16 13, i16 12, i16 -3, i16 -1, i16 11, i16 10, i16 -1, i16 9, i16 8, i16 -7, i16 -3, i16 -1, i16 7, i16 6, i16 -1, i16 5, i16 4, i16 -3, i16 -1, i16 3, i16 2, i16 -1, i16 1, i16 0], align 16
@gmp = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @init_layer3(i32 noundef %down_sample_sblimit) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ -256, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32
  %1 = add i32 %0, 210
  %conv = sitofp i32 %1 to double
  %mul = fmul fast double %conv, -2.500000e-01
  %exp2937 = tail call fast double @llvm.exp2.f64(double %mul)
  %2 = add nsw i64 %indvars.iv, 256
  %arrayidx = getelementptr inbounds [378 x double], ptr @gainpow2, i64 0, i64 %2
  store double %exp2937, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 122
  br i1 %exitcond.not, label %for.body5, label %for.body, !llvm.loop !9

for.body5:                                        ; preds = %for.body, %for.body5
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %for.body5 ], [ 0, %for.body ]
  %3 = trunc i64 %indvars.iv997 to i32
  %conv6 = sitofp i32 %3 to double
  %4 = tail call fast double @llvm.pow.f64(double %conv6, double 0x3FF5555555555555)
  %arrayidx8 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %indvars.iv997
  store double %4, ptr %arrayidx8, align 8, !tbaa !5
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1
  %exitcond1000.not = icmp eq i64 %indvars.iv.next998, 8207
  br i1 %exitcond1000.not, label %for.body15, label %for.body5, !llvm.loop !12

for.body15:                                       ; preds = %for.body5, %for.body15
  %indvars.iv1001 = phi i64 [ %indvars.iv.next1002, %for.body15 ], [ 0, %for.body5 ]
  %arrayidx17 = getelementptr inbounds [8 x double], ptr @init_layer3.Ci, i64 0, i64 %indvars.iv1001
  %5 = load double, ptr %arrayidx17, align 8, !tbaa !5
  %mul20 = fmul fast double %5, %5
  %add21 = fadd fast double %mul20, 1.000000e+00
  %6 = tail call fast double @llvm.sqrt.f64(double %add21)
  %div = fdiv fast double 1.000000e+00, %6
  %arrayidx23 = getelementptr inbounds [8 x double], ptr @aa_cs, i64 0, i64 %indvars.iv1001
  store double %div, ptr %arrayidx23, align 8, !tbaa !5
  %div26 = fdiv fast double %5, %6
  %arrayidx28 = getelementptr inbounds [8 x double], ptr @aa_ca, i64 0, i64 %indvars.iv1001
  store double %div26, ptr %arrayidx28, align 8, !tbaa !5
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 1
  %exitcond1004.not = icmp eq i64 %indvars.iv.next1002, 8
  br i1 %exitcond1004.not, label %for.body35, label %for.body15, !llvm.loop !13

for.body35:                                       ; preds = %for.body15, %for.body35
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %for.body35 ], [ 0, %for.body15 ]
  %7 = shl nuw nsw i64 %indvars.iv1005, 1
  %8 = trunc i64 %7 to i32
  %9 = or i32 %8, 1
  %conv39 = sitofp i32 %9 to double
  %mul40 = fmul fast double %conv39, 0x3FA657184AE74487
  %10 = tail call fast double @llvm.sin.f64(double %mul40)
  %mul41 = fmul fast double %10, 5.000000e-01
  %11 = trunc i64 %7 to i32
  %12 = add i32 %11, 19
  %conv45 = sitofp i32 %12 to double
  %div47 = fmul fast double %conv45, 0x3FA657184AE74487
  %13 = tail call fast double @llvm.cos.f64(double %div47)
  %div48 = fdiv fast double %mul41, %13
  %arrayidx50 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %indvars.iv1005
  store double %div48, ptr %arrayidx50, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %indvars.iv1005
  store double %div48, ptr %arrayidx52, align 8, !tbaa !5
  %14 = add nuw nsw i64 %indvars.iv1005, 18
  %15 = shl nuw nsw i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = or i32 %16, 1
  %conv56 = sitofp i32 %17 to double
  %mul57 = fmul fast double %conv56, 0x3FA657184AE74487
  %18 = tail call fast double @llvm.sin.f64(double %mul57)
  %mul58 = fmul fast double %18, 5.000000e-01
  %19 = trunc i64 %15 to i32
  %20 = add i32 %19, 19
  %conv62 = sitofp i32 %20 to double
  %div64 = fmul fast double %conv62, 0x3FA657184AE74487
  %21 = tail call fast double @llvm.cos.f64(double %div64)
  %div65 = fdiv fast double %mul58, %21
  %arrayidx68 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %14
  store double %div65, ptr %arrayidx68, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %14
  store double %div65, ptr %arrayidx71, align 8, !tbaa !5
  %indvars.iv.next1006 = add nuw nsw i64 %indvars.iv1005, 1
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1006, 18
  br i1 %exitcond1015.not, label %for.body78, label %for.body35, !llvm.loop !14

for.body78:                                       ; preds = %for.body35, %for.body78
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %for.body78 ], [ 0, %for.body35 ]
  %22 = add nuw nsw i64 %indvars.iv1016, 18
  %.tr = trunc i64 %22 to i32
  %23 = shl i32 %.tr, 1
  %24 = add i32 %23, 19
  %conv82 = sitofp i32 %24 to double
  %div84 = fmul fast double %conv82, 0x3FA657184AE74487
  %25 = tail call fast double @llvm.cos.f64(double %div84)
  %div85 = fdiv fast double 5.000000e-01, %25
  %arrayidx88 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %22
  store double %div85, ptr %arrayidx88, align 8, !tbaa !5
  %26 = add nuw nsw i64 %indvars.iv1016, 12
  %.tr1195 = trunc i64 %26 to i32
  %27 = shl i32 %.tr1195, 1
  %28 = add i32 %27, 19
  %conv92 = sitofp i32 %28 to double
  %div94 = fmul fast double %conv92, 0x3FA657184AE74487
  %29 = tail call fast double @llvm.cos.f64(double %div94)
  %div95 = fdiv fast double 5.000000e-01, %29
  %arrayidx98 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %26
  store double %div95, ptr %arrayidx98, align 8, !tbaa !5
  %30 = shl nuw nsw i64 %indvars.iv1016, 1
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, 13
  %conv101 = sitofp i32 %32 to double
  %mul102 = fmul fast double %conv101, 0x3FC0C152382D7365
  %33 = tail call fast double @llvm.sin.f64(double %mul102)
  %mul103 = fmul fast double %33, 5.000000e-01
  %34 = add nuw nsw i64 %indvars.iv1016, 24
  %.tr1196 = trunc i64 %34 to i32
  %35 = shl i32 %.tr1196, 1
  %36 = add i32 %35, 19
  %conv107 = sitofp i32 %36 to double
  %div109 = fmul fast double %conv107, 0x3FA657184AE74487
  %37 = tail call fast double @llvm.cos.f64(double %div109)
  %div110 = fdiv fast double %mul103, %37
  %arrayidx113 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %34
  store double %div110, ptr %arrayidx113, align 8, !tbaa !5
  %arrayidx115 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %indvars.iv1016
  store double 0.000000e+00, ptr %arrayidx115, align 8, !tbaa !5
  %38 = add nuw nsw i64 %indvars.iv1016, 30
  %arrayidx118 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %38
  store double 0.000000e+00, ptr %arrayidx118, align 8, !tbaa !5
  %39 = trunc i64 %30 to i32
  %40 = or i32 %39, 1
  %conv121 = sitofp i32 %40 to double
  %mul122 = fmul fast double %conv121, 0x3FC0C152382D7365
  %41 = tail call fast double @llvm.sin.f64(double %mul122)
  %mul123 = fmul fast double %41, 5.000000e-01
  %42 = add nuw nsw i64 %indvars.iv1016, 6
  %.tr1197 = trunc i64 %42 to i32
  %43 = shl i32 %.tr1197, 1
  %44 = add i32 %43, 19
  %conv127 = sitofp i32 %44 to double
  %div129 = fmul fast double %conv127, 0x3FA657184AE74487
  %45 = tail call fast double @llvm.cos.f64(double %div129)
  %div130 = fdiv fast double %mul123, %45
  %arrayidx133 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %42
  store double %div130, ptr %arrayidx133, align 8, !tbaa !5
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %exitcond1035.not = icmp eq i64 %indvars.iv.next1017, 6
  br i1 %exitcond1035.not, label %for.body140, label %for.body78, !llvm.loop !15

for.body140:                                      ; preds = %for.body78, %for.body140
  %indvars.iv1036 = phi i64 [ %indvars.iv.next1037, %for.body140 ], [ 0, %for.body78 ]
  %46 = trunc i64 %indvars.iv1036 to i32
  %conv141 = sitofp i32 %46 to double
  %mul142 = fmul fast double %conv141, 0x3FC657184AE74487
  %47 = tail call fast double @llvm.cos.f64(double %mul142)
  %arrayidx144 = getelementptr inbounds [9 x double], ptr @COS9, i64 0, i64 %indvars.iv1036
  store double %47, ptr %arrayidx144, align 8, !tbaa !5
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1
  %exitcond1039.not = icmp eq i64 %indvars.iv.next1037, 9
  br i1 %exitcond1039.not, label %for.body151, label %for.body140, !llvm.loop !16

for.body151:                                      ; preds = %for.body140, %for.body151
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %for.body151 ], [ 0, %for.body140 ]
  %indvars.iv1040.tr = trunc i64 %indvars.iv1040 to i32
  %48 = shl i32 %indvars.iv1040.tr, 1
  %49 = or i32 %48, 1
  %conv154 = sitofp i32 %49 to double
  %div156 = fmul fast double %conv154, 0x3FB657184AE74487
  %50 = tail call fast double @llvm.cos.f64(double %div156)
  %div157 = fdiv fast double 5.000000e-01, %50
  %arrayidx159 = getelementptr inbounds [9 x double], ptr @tfcos36, i64 0, i64 %indvars.iv1040
  store double %div157, ptr %arrayidx159, align 8, !tbaa !5
  %indvars.iv.next1041 = add nuw nsw i64 %indvars.iv1040, 1
  %exitcond1045.not = icmp eq i64 %indvars.iv.next1041, 9
  br i1 %exitcond1045.not, label %for.body166, label %for.body151, !llvm.loop !17

for.body166:                                      ; preds = %for.body151, %for.body166
  %indvars.iv1046 = phi i64 [ %indvars.iv.next1047, %for.body166 ], [ 0, %for.body151 ]
  %indvars.iv1046.tr = trunc i64 %indvars.iv1046 to i32
  %51 = shl i32 %indvars.iv1046.tr, 1
  %52 = or i32 %51, 1
  %conv169 = sitofp i32 %52 to double
  %div171 = fmul fast double %conv169, 0x3FD0C152382D7365
  %53 = tail call fast double @llvm.cos.f64(double %div171)
  %div172 = fdiv fast double 5.000000e-01, %53
  %arrayidx174 = getelementptr inbounds [3 x double], ptr @tfcos12, i64 0, i64 %indvars.iv1046
  store double %div172, ptr %arrayidx174, align 8, !tbaa !5
  %indvars.iv.next1047 = add nuw nsw i64 %indvars.iv1046, 1
  %exitcond1051.not = icmp eq i64 %indvars.iv.next1047, 3
  br i1 %exitcond1051.not, label %for.end177, label %for.body166, !llvm.loop !18

for.end177:                                       ; preds = %for.body166
  store double 0x3FEBB67AE8584CAB, ptr @COS6_1, align 8, !tbaa !5
  store double 0x3FE0000000000001, ptr @COS6_2, align 8, !tbaa !5
  br label %for.body181

for.body181:                                      ; preds = %for.end177, %for.body181
  %indvars.iv1052 = phi i64 [ 0, %for.end177 ], [ %indvars.iv.next1053, %for.body181 ]
  %54 = shl nuw nsw i64 %indvars.iv1052, 1
  %55 = trunc i64 %54 to i32
  %56 = or i32 %55, 1
  %conv184 = sitofp i32 %56 to double
  %mul185 = fmul fast double %conv184, 0x3FC0C152382D7365
  %57 = tail call fast double @llvm.sin.f64(double %mul185)
  %mul186 = fmul fast double %57, 5.000000e-01
  %58 = trunc i64 %54 to i32
  %59 = add i32 %58, 7
  %conv189 = sitofp i32 %59 to double
  %div191 = fmul fast double %conv189, 0x3FC0C152382D7365
  %60 = tail call fast double @llvm.cos.f64(double %div191)
  %div192 = fdiv fast double %mul186, %60
  %arrayidx194 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %indvars.iv1052
  store double %div192, ptr %arrayidx194, align 8, !tbaa !5
  %indvars.iv.next1053 = add nuw nsw i64 %indvars.iv1052, 1
  %exitcond1058.not = icmp eq i64 %indvars.iv.next1053, 12
  br i1 %exitcond1058.not, label %for.body225.preheader, label %for.body181, !llvm.loop !19

for.body225.preheader:                            ; preds = %for.body181, %for.inc254
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %for.inc254 ], [ 0, %for.body181 ]
  %arrayidx222 = getelementptr inbounds [4 x i32], ptr @init_layer3.len, i64 0, i64 %indvars.iv1065
  %61 = load i32, ptr %arrayidx222, align 4, !tbaa !20
  %62 = sext i32 %61 to i64
  br label %for.body225

for.body242.preheader:                            ; preds = %for.body225
  %63 = sext i32 %61 to i64
  br label %for.body242

for.body225:                                      ; preds = %for.body225.preheader, %for.body225
  %indvars.iv1059 = phi i64 [ 0, %for.body225.preheader ], [ %indvars.iv.next1060, %for.body225 ]
  %arrayidx229 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %indvars.iv1065, i64 %indvars.iv1059
  %64 = load double, ptr %arrayidx229, align 16, !tbaa !5
  %arrayidx233 = getelementptr inbounds [4 x [36 x double]], ptr @win1, i64 0, i64 %indvars.iv1065, i64 %indvars.iv1059
  store double %64, ptr %arrayidx233, align 16, !tbaa !5
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 2
  %cmp223 = icmp slt i64 %indvars.iv.next1060, %62
  br i1 %cmp223, label %for.body225, label %for.body242.preheader, !llvm.loop !22

for.body242:                                      ; preds = %for.body242.preheader, %for.body242
  %indvars.iv1062 = phi i64 [ 1, %for.body242.preheader ], [ %indvars.iv.next1063, %for.body242 ]
  %arrayidx246 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %indvars.iv1065, i64 %indvars.iv1062
  %65 = load double, ptr %arrayidx246, align 8, !tbaa !5
  %fneg = fneg fast double %65
  %arrayidx250 = getelementptr inbounds [4 x [36 x double]], ptr @win1, i64 0, i64 %indvars.iv1065, i64 %indvars.iv1062
  store double %fneg, ptr %arrayidx250, align 8, !tbaa !5
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 2
  %cmp240 = icmp slt i64 %indvars.iv.next1063, %63
  br i1 %cmp240, label %for.body242, label %for.inc254, !llvm.loop !23

for.inc254:                                       ; preds = %for.body242
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1
  %exitcond1068.not = icmp eq i64 %indvars.iv.next1066, 4
  br i1 %exitcond1068.not, label %for.body260, label %for.body225.preheader, !llvm.loop !24

for.body260:                                      ; preds = %for.inc254, %for.end317
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %for.end317 ], [ 0, %for.inc254 ]
  %66 = trunc i64 %indvars.iv1075 to i32
  %conv261 = sitofp i32 %66 to double
  %div263 = fmul fast double %conv261, 0x3FD0C152382D7365
  %call = tail call fast double @tan(double noundef %div263) #14
  %add264 = fadd fast double %call, 1.000000e+00
  %div265 = fdiv fast double %call, %add264
  %arrayidx267 = getelementptr inbounds [16 x double], ptr @tan1_1, i64 0, i64 %indvars.iv1075
  store double %div265, ptr %arrayidx267, align 8, !tbaa !5
  %div269 = fdiv fast double 1.000000e+00, %add264
  %arrayidx271 = getelementptr inbounds [16 x double], ptr @tan2_1, i64 0, i64 %indvars.iv1075
  store double %div269, ptr %arrayidx271, align 8, !tbaa !5
  %mul272 = fmul fast double %call, 0x3FF6A09E667F3BCD
  %div274 = fdiv fast double %mul272, %add264
  %arrayidx276 = getelementptr inbounds [16 x double], ptr @tan1_2, i64 0, i64 %indvars.iv1075
  store double %div274, ptr %arrayidx276, align 8, !tbaa !5
  %div278 = fdiv fast double 0x3FF6A09E667F3BCD, %add264
  %arrayidx280 = getelementptr inbounds [16 x double], ptr @tan2_2, i64 0, i64 %indvars.iv1075
  store double %div278, ptr %arrayidx280, align 8, !tbaa !5
  %cmp288.not = icmp eq i64 %indvars.iv1075, 0
  %and = and i32 %66, 1
  %tobool.not = icmp eq i32 %and, 0
  %67 = fmul fast double %conv261, 5.000000e-01
  %mul293 = fadd fast double %67, 5.000000e-01
  br i1 %cmp288.not, label %for.body284.us, label %for.body284

for.body284.us:                                   ; preds = %for.body260
  store double 1.000000e+00, ptr @pow1_1, align 16, !tbaa !5
  store double 1.000000e+00, ptr @pow2_1, align 16, !tbaa !5
  store double 0x3FF6A09E667F3BCD, ptr @pow1_2, align 16, !tbaa !5
  store double 0x3FF6A09E667F3BCD, ptr @pow2_2, align 16, !tbaa !5
  store double 1.000000e+00, ptr getelementptr inbounds ([2 x [16 x double]], ptr @pow1_1, i64 0, i64 1, i64 0), align 16, !tbaa !5
  store double 1.000000e+00, ptr getelementptr inbounds ([2 x [16 x double]], ptr @pow2_1, i64 0, i64 1, i64 0), align 16, !tbaa !5
  store double 0x3FF6A09E667F3BCD, ptr getelementptr inbounds ([2 x [16 x double]], ptr @pow1_2, i64 0, i64 1, i64 0), align 16, !tbaa !5
  store double 0x3FF6A09E667F3BCD, ptr getelementptr inbounds ([2 x [16 x double]], ptr @pow2_2, i64 0, i64 1, i64 0), align 16, !tbaa !5
  br label %for.end317

for.body284:                                      ; preds = %for.body260, %if.end296
  %cmp282 = phi i1 [ false, %if.end296 ], [ true, %for.body260 ]
  %indvars.iv1069 = phi i64 [ 1, %if.end296 ], [ 0, %for.body260 ]
  %68 = trunc i64 %indvars.iv1069 to i32
  %conv285 = sitofp i32 %68 to double
  %69 = fmul fast double %conv285, 2.500000e-01
  %70 = fsub fast double -2.500000e-01, %69
  %exp2 = tail call fast double @llvm.exp2.f64(double %70)
  br i1 %tobool.not, label %if.else, label %if.then290

if.then290:                                       ; preds = %for.body284
  %71 = tail call fast double @llvm.pow.f64(double %exp2, double %mul293)
  br label %if.end296

if.else:                                          ; preds = %for.body284
  %72 = tail call fast double @llvm.pow.f64(double %exp2, double %67)
  br label %if.end296

if.end296:                                        ; preds = %if.then290, %if.else
  %p2.0 = phi double [ 1.000000e+00, %if.then290 ], [ %72, %if.else ]
  %p1.0 = phi double [ %71, %if.then290 ], [ 1.000000e+00, %if.else ]
  %arrayidx300 = getelementptr inbounds [2 x [16 x double]], ptr @pow1_1, i64 0, i64 %indvars.iv1069, i64 %indvars.iv1075
  store double %p1.0, ptr %arrayidx300, align 8, !tbaa !5
  %arrayidx304 = getelementptr inbounds [2 x [16 x double]], ptr @pow2_1, i64 0, i64 %indvars.iv1069, i64 %indvars.iv1075
  store double %p2.0, ptr %arrayidx304, align 8, !tbaa !5
  %mul305 = fmul fast double %p1.0, 0x3FF6A09E667F3BCD
  %arrayidx309 = getelementptr inbounds [2 x [16 x double]], ptr @pow1_2, i64 0, i64 %indvars.iv1069, i64 %indvars.iv1075
  store double %mul305, ptr %arrayidx309, align 8, !tbaa !5
  %mul310 = fmul fast double %p2.0, 0x3FF6A09E667F3BCD
  %arrayidx314 = getelementptr inbounds [2 x [16 x double]], ptr @pow2_2, i64 0, i64 %indvars.iv1069, i64 %indvars.iv1075
  store double %mul310, ptr %arrayidx314, align 8, !tbaa !5
  br i1 %cmp282, label %for.body284, label %for.end317, !llvm.loop !25

for.end317:                                       ; preds = %if.end296, %for.body284.us
  %indvars.iv.next1076 = add nuw nsw i64 %indvars.iv1075, 1
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1076, 16
  br i1 %exitcond1078.not, label %for.body324, label %for.body260, !llvm.loop !26

for.body324:                                      ; preds = %for.end317, %for.end432
  %indvars.iv1085 = phi i64 [ %indvars.iv.next1086, %for.end432 ], [ 0, %for.end317 ]
  %arrayidx328 = getelementptr inbounds [9 x [152 x i32]], ptr @mapbuf0, i64 0, i64 %indvars.iv1085
  %arrayidx330 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %indvars.iv1085
  store ptr %arrayidx328, ptr %arrayidx330, align 8, !tbaa !27
  %longDiff = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %indvars.iv1085, i32 1
  br label %for.body336

for.body336:                                      ; preds = %for.body324, %for.body336
  %i.12958 = phi i32 [ 0, %for.body324 ], [ %add345, %for.body336 ]
  %mp.0957 = phi ptr [ %arrayidx328, %for.body324 ], [ %incdec.ptr340, %for.body336 ]
  %bdf.0956 = phi ptr [ %longDiff, %for.body324 ], [ %incdec.ptr343, %for.body336 ]
  %cb.0955 = phi i32 [ 0, %for.body324 ], [ %inc342, %for.body336 ]
  %73 = load i16, ptr %bdf.0956, align 2, !tbaa !29
  %74 = ashr i16 %73, 1
  %shr = sext i16 %74 to i32
  %incdec.ptr = getelementptr inbounds i32, ptr %mp.0957, i64 1
  store i32 %shr, ptr %mp.0957, align 4, !tbaa !20
  %incdec.ptr338 = getelementptr inbounds i32, ptr %mp.0957, i64 2
  store i32 %i.12958, ptr %incdec.ptr, align 4, !tbaa !20
  %incdec.ptr339 = getelementptr inbounds i32, ptr %mp.0957, i64 3
  store i32 3, ptr %incdec.ptr338, align 4, !tbaa !20
  %incdec.ptr340 = getelementptr inbounds i32, ptr %mp.0957, i64 4
  store i32 %cb.0955, ptr %incdec.ptr339, align 4, !tbaa !20
  %inc342 = add nuw nsw i32 %cb.0955, 1
  %incdec.ptr343 = getelementptr inbounds i16, ptr %bdf.0956, i64 1
  %conv344 = sext i16 %73 to i32
  %add345 = add nsw i32 %i.12958, %conv344
  %exitcond1079.not = icmp eq i32 %inc342, 8
  br i1 %exitcond1079.not, label %for.end346, label %for.body336, !llvm.loop !31

for.end346:                                       ; preds = %for.body336
  %shortDiff = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %indvars.iv1085, i32 3
  %add.ptr = getelementptr inbounds i16, ptr %shortDiff, i64 3
  br label %for.body351

for.body351:                                      ; preds = %for.end346, %for.end367
  %i.13964 = phi i32 [ %add345, %for.end346 ], [ %add369, %for.end367 ]
  %mp.1963 = phi ptr [ %incdec.ptr340, %for.end346 ], [ %incdec.ptr364, %for.end367 ]
  %bdf.1962 = phi ptr [ %add.ptr, %for.end346 ], [ %incdec.ptr353, %for.end367 ]
  %cb.1961 = phi i32 [ 3, %for.end346 ], [ %inc371, %for.end367 ]
  %75 = load i16, ptr %bdf.1962, align 2, !tbaa !29
  %76 = ashr i16 %75, 1
  %shr355 = sext i16 %76 to i32
  br label %for.body359

for.body359:                                      ; preds = %for.body351, %for.body359
  %mp.2960 = phi ptr [ %mp.1963, %for.body351 ], [ %incdec.ptr364, %for.body359 ]
  %lwin.0959 = phi i32 [ 0, %for.body351 ], [ %inc366, %for.body359 ]
  %incdec.ptr360 = getelementptr inbounds i32, ptr %mp.2960, i64 1
  store i32 %shr355, ptr %mp.2960, align 4, !tbaa !20
  %add361 = add nsw i32 %lwin.0959, %i.13964
  %incdec.ptr362 = getelementptr inbounds i32, ptr %mp.2960, i64 2
  store i32 %add361, ptr %incdec.ptr360, align 4, !tbaa !20
  %incdec.ptr363 = getelementptr inbounds i32, ptr %mp.2960, i64 3
  store i32 %lwin.0959, ptr %incdec.ptr362, align 4, !tbaa !20
  %incdec.ptr364 = getelementptr inbounds i32, ptr %mp.2960, i64 4
  store i32 %cb.1961, ptr %incdec.ptr363, align 4, !tbaa !20
  %inc366 = add nuw nsw i32 %lwin.0959, 1
  %exitcond1080.not = icmp eq i32 %inc366, 3
  br i1 %exitcond1080.not, label %for.end367, label %for.body359, !llvm.loop !32

for.end367:                                       ; preds = %for.body359
  %incdec.ptr353 = getelementptr inbounds i16, ptr %bdf.1962, i64 1
  %mul368 = mul nsw i32 %shr355, 6
  %add369 = add nsw i32 %mul368, %i.13964
  %inc371 = add nuw nsw i32 %cb.1961, 1
  %exitcond1081.not = icmp eq i32 %inc371, 13
  br i1 %exitcond1081.not, label %for.end372, label %for.body351, !llvm.loop !33

for.end372:                                       ; preds = %for.end367
  %arrayidx374 = getelementptr inbounds [9 x [3 x ptr]], ptr @mapend, i64 0, i64 %indvars.iv1085
  store ptr %incdec.ptr364, ptr %arrayidx374, align 8, !tbaa !27
  %arrayidx377 = getelementptr inbounds [9 x [156 x i32]], ptr @mapbuf1, i64 0, i64 %indvars.iv1085
  %arrayidx381 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %indvars.iv1085, i64 1
  store ptr %arrayidx377, ptr %arrayidx381, align 8, !tbaa !27
  br label %for.body388

for.body388:                                      ; preds = %for.end372, %for.end404
  %i.14970 = phi i32 [ 0, %for.end372 ], [ %add406, %for.end404 ]
  %mp.3969 = phi ptr [ %arrayidx377, %for.end372 ], [ %incdec.ptr401, %for.end404 ]
  %bdf.2968 = phi ptr [ %shortDiff, %for.end372 ], [ %incdec.ptr390, %for.end404 ]
  %cb.2967 = phi i32 [ 0, %for.end372 ], [ %inc408, %for.end404 ]
  %77 = load i16, ptr %bdf.2968, align 2, !tbaa !29
  %78 = ashr i16 %77, 1
  %shr392 = sext i16 %78 to i32
  br label %for.body396

for.body396:                                      ; preds = %for.body388, %for.body396
  %mp.4966 = phi ptr [ %mp.3969, %for.body388 ], [ %incdec.ptr401, %for.body396 ]
  %lwin.1965 = phi i32 [ 0, %for.body388 ], [ %inc403, %for.body396 ]
  %incdec.ptr397 = getelementptr inbounds i32, ptr %mp.4966, i64 1
  store i32 %shr392, ptr %mp.4966, align 4, !tbaa !20
  %add398 = add nsw i32 %lwin.1965, %i.14970
  %incdec.ptr399 = getelementptr inbounds i32, ptr %mp.4966, i64 2
  store i32 %add398, ptr %incdec.ptr397, align 4, !tbaa !20
  %incdec.ptr400 = getelementptr inbounds i32, ptr %mp.4966, i64 3
  store i32 %lwin.1965, ptr %incdec.ptr399, align 4, !tbaa !20
  %incdec.ptr401 = getelementptr inbounds i32, ptr %mp.4966, i64 4
  store i32 %cb.2967, ptr %incdec.ptr400, align 4, !tbaa !20
  %inc403 = add nuw nsw i32 %lwin.1965, 1
  %exitcond1082.not = icmp eq i32 %inc403, 3
  br i1 %exitcond1082.not, label %for.end404, label %for.body396, !llvm.loop !34

for.end404:                                       ; preds = %for.body396
  %incdec.ptr390 = getelementptr inbounds i16, ptr %bdf.2968, i64 1
  %mul405 = mul nsw i32 %shr392, 6
  %add406 = add nsw i32 %mul405, %i.14970
  %inc408 = add nuw nsw i32 %cb.2967, 1
  %exitcond1083.not = icmp eq i32 %inc408, 13
  br i1 %exitcond1083.not, label %for.end409, label %for.body388, !llvm.loop !35

for.end409:                                       ; preds = %for.end404
  %arrayidx412 = getelementptr inbounds [9 x [3 x ptr]], ptr @mapend, i64 0, i64 %indvars.iv1085, i64 1
  store ptr %incdec.ptr401, ptr %arrayidx412, align 8, !tbaa !27
  %arrayidx414 = getelementptr inbounds [9 x [44 x i32]], ptr @mapbuf2, i64 0, i64 %indvars.iv1085
  %arrayidx418 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %indvars.iv1085, i64 2
  store ptr %arrayidx414, ptr %arrayidx418, align 8, !tbaa !27
  br label %for.body424

for.body424:                                      ; preds = %for.end409, %for.body424
  %mp.5973 = phi ptr [ %arrayidx414, %for.end409 ], [ %incdec.ptr429, %for.body424 ]
  %bdf.3972 = phi ptr [ %longDiff, %for.end409 ], [ %incdec.ptr425, %for.body424 ]
  %cb.3971 = phi i32 [ 0, %for.end409 ], [ %inc431, %for.body424 ]
  %incdec.ptr425 = getelementptr inbounds i16, ptr %bdf.3972, i64 1
  %79 = load i16, ptr %bdf.3972, align 2, !tbaa !29
  %80 = ashr i16 %79, 1
  %shr427 = sext i16 %80 to i32
  %incdec.ptr428 = getelementptr inbounds i32, ptr %mp.5973, i64 1
  store i32 %shr427, ptr %mp.5973, align 4, !tbaa !20
  %incdec.ptr429 = getelementptr inbounds i32, ptr %mp.5973, i64 2
  store i32 %cb.3971, ptr %incdec.ptr428, align 4, !tbaa !20
  %inc431 = add nuw nsw i32 %cb.3971, 1
  %exitcond1084.not = icmp eq i32 %inc431, 22
  br i1 %exitcond1084.not, label %for.end432, label %for.body424, !llvm.loop !36

for.end432:                                       ; preds = %for.body424
  %arrayidx435 = getelementptr inbounds [9 x [3 x ptr]], ptr @mapend, i64 0, i64 %indvars.iv1085, i64 2
  store ptr %incdec.ptr429, ptr %arrayidx435, align 8, !tbaa !27
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 1
  %exitcond1088.not = icmp eq i64 %indvars.iv.next1086, 9
  br i1 %exitcond1088.not, label %for.cond443.preheader, label %for.body324, !llvm.loop !37

for.cond443.preheader:                            ; preds = %for.end432, %for.inc505
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %for.inc505 ], [ 0, %for.end432 ]
  %arrayidx448 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %indvars.iv1097
  br label %for.body446

for.body446:                                      ; preds = %for.cond443.preheader, %for.body446
  %indvars.iv1089 = phi i64 [ 0, %for.cond443.preheader ], [ %indvars.iv.next1090, %for.body446 ]
  %arrayidx450 = getelementptr inbounds [23 x i16], ptr %arrayidx448, i64 0, i64 %indvars.iv1089
  %81 = load i16, ptr %arrayidx450, align 2, !tbaa !29
  %conv451 = sext i16 %81 to i32
  %add452 = add nsw i32 %conv451, 7
  %div453 = sdiv i32 %add452, 18
  %add454 = add nsw i32 %div453, 1
  %arrayidx458 = getelementptr inbounds [9 x [23 x i32]], ptr @longLimit, i64 0, i64 %indvars.iv1097, i64 %indvars.iv1089
  %cmp463.not = icmp slt i32 %div453, %down_sample_sblimit
  %spec.select = select i1 %cmp463.not, i32 %add454, i32 %down_sample_sblimit
  store i32 %spec.select, ptr %arrayidx458, align 4, !tbaa !20
  %indvars.iv.next1090 = add nuw nsw i64 %indvars.iv1089, 1
  %exitcond1092.not = icmp eq i64 %indvars.iv.next1090, 23
  br i1 %exitcond1092.not, label %for.body477, label %for.body446, !llvm.loop !38

for.body477:                                      ; preds = %for.body446, %for.body477
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %for.body477 ], [ 0, %for.body446 ]
  %arrayidx481 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %indvars.iv1097, i32 2, i64 %indvars.iv1093
  %82 = load i16, ptr %arrayidx481, align 2, !tbaa !29
  %conv482 = sext i16 %82 to i32
  %sub483 = add nsw i32 %conv482, -1
  %div484 = sdiv i32 %sub483, 18
  %add485 = add nsw i32 %div484, 1
  %arrayidx489 = getelementptr inbounds [9 x [14 x i32]], ptr @shortLimit, i64 0, i64 %indvars.iv1097, i64 %indvars.iv1093
  %cmp494.not = icmp slt i32 %div484, %down_sample_sblimit
  %spec.select938 = select i1 %cmp494.not, i32 %add485, i32 %down_sample_sblimit
  store i32 %spec.select938, ptr %arrayidx489, align 4, !tbaa !20
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1
  %exitcond1096.not = icmp eq i64 %indvars.iv.next1094, 14
  br i1 %exitcond1096.not, label %for.inc505, label %for.body477, !llvm.loop !39

for.inc505:                                       ; preds = %for.body477
  %indvars.iv.next1098 = add nuw nsw i64 %indvars.iv1097, 1
  %exitcond1100.not = icmp eq i64 %indvars.iv.next1098, 9
  br i1 %exitcond1100.not, label %for.cond512.preheader, label %for.cond443.preheader, !llvm.loop !40

for.cond512.preheader:                            ; preds = %for.inc505, %for.inc535
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %for.inc535 ], [ 0, %for.inc505 ]
  %83 = mul nuw nsw i64 %indvars.iv1114, 36
  %84 = trunc i64 %indvars.iv1114 to i32
  br label %for.cond516.preheader

for.cond516.preheader:                            ; preds = %for.cond512.preheader, %for.inc532
  %indvars.iv1107 = phi i64 [ 0, %for.cond512.preheader ], [ %indvars.iv.next1108, %for.inc532 ]
  %85 = mul nuw nsw i64 %indvars.iv1107, 6
  %86 = add nuw nsw i64 %85, %83
  %indvars.iv1107.tr = trunc i64 %indvars.iv1107 to i32
  %87 = shl i32 %indvars.iv1107.tr, 3
  %or = or i32 %87, %84
  br label %for.body519

for.body519:                                      ; preds = %for.cond516.preheader, %for.body519
  %indvars.iv1101 = phi i64 [ 0, %for.cond516.preheader ], [ %indvars.iv.next1102, %for.body519 ]
  %88 = add nuw nsw i64 %86, %indvars.iv1101
  %indvars.iv1101.tr = trunc i64 %indvars.iv1101 to i32
  %89 = shl i32 %indvars.iv1101.tr, 6
  %or525 = or i32 %or, %89
  %or526 = or i32 %or525, 12288
  %arrayidx528 = getelementptr inbounds [256 x i32], ptr @i_slen2, i64 0, i64 %88
  store i32 %or526, ptr %arrayidx528, align 4, !tbaa !20
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 1
  %exitcond1106.not = icmp eq i64 %indvars.iv.next1102, 6
  br i1 %exitcond1106.not, label %for.inc532, label %for.body519, !llvm.loop !41

for.inc532:                                       ; preds = %for.body519
  %indvars.iv.next1108 = add nuw nsw i64 %indvars.iv1107, 1
  %exitcond1113.not = icmp eq i64 %indvars.iv.next1108, 6
  br i1 %exitcond1113.not, label %for.inc535, label %for.cond516.preheader, !llvm.loop !42

for.inc535:                                       ; preds = %for.inc532
  %indvars.iv.next1115 = add nuw nsw i64 %indvars.iv1114, 1
  %exitcond1118.not = icmp eq i64 %indvars.iv.next1115, 5
  br i1 %exitcond1118.not, label %for.cond542.preheader, label %for.cond512.preheader, !llvm.loop !43

for.cond542.preheader:                            ; preds = %for.inc535, %for.inc569
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %for.inc569 ], [ 0, %for.inc535 ]
  %90 = shl nsw i64 %indvars.iv1132, 4
  %91 = add nuw nsw i64 %90, 180
  %92 = trunc i64 %indvars.iv1132 to i32
  br label %for.cond546.preheader

for.cond546.preheader:                            ; preds = %for.cond542.preheader, %for.inc566
  %indvars.iv1125 = phi i64 [ 0, %for.cond542.preheader ], [ %indvars.iv.next1126, %for.inc566 ]
  %93 = shl nsw i64 %indvars.iv1125, 2
  %indvars.iv1125.tr = trunc i64 %indvars.iv1125 to i32
  %94 = shl i32 %indvars.iv1125.tr, 3
  %or556 = or i32 %94, %92
  %95 = add nuw nsw i64 %91, %93
  br label %for.body549

for.body549:                                      ; preds = %for.cond546.preheader, %for.body549
  %indvars.iv1119 = phi i64 [ 0, %for.cond546.preheader ], [ %indvars.iv.next1120, %for.body549 ]
  %indvars.iv1119.tr = trunc i64 %indvars.iv1119 to i32
  %96 = shl i32 %indvars.iv1119.tr, 6
  %or558 = or i32 %or556, %96
  %or559 = or i32 %or558, 16384
  %97 = add nuw nsw i64 %95, %indvars.iv1119
  %arrayidx562 = getelementptr inbounds [256 x i32], ptr @i_slen2, i64 0, i64 %97
  store i32 %or559, ptr %arrayidx562, align 4, !tbaa !20
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 1
  %exitcond1124.not = icmp eq i64 %indvars.iv.next1120, 4
  br i1 %exitcond1124.not, label %for.inc566, label %for.body549, !llvm.loop !44

for.inc566:                                       ; preds = %for.body549
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1
  %exitcond1131.not = icmp eq i64 %indvars.iv.next1126, 4
  br i1 %exitcond1131.not, label %for.inc569, label %for.cond546.preheader, !llvm.loop !45

for.inc569:                                       ; preds = %for.inc566
  %indvars.iv.next1133 = add nuw nsw i64 %indvars.iv1132, 1
  %exitcond1137.not = icmp eq i64 %indvars.iv.next1133, 4
  br i1 %exitcond1137.not, label %for.cond576.preheader, label %for.cond542.preheader, !llvm.loop !46

for.cond576.preheader:                            ; preds = %for.inc569, %for.inc599
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %for.inc599 ], [ 0, %for.inc569 ]
  %98 = mul nuw nsw i64 %indvars.iv1146, 3
  %99 = trunc i64 %indvars.iv1146 to i32
  br label %for.body579

for.body579:                                      ; preds = %for.cond576.preheader, %for.body579
  %indvars.iv1138 = phi i64 [ 0, %for.cond576.preheader ], [ %indvars.iv.next1139, %for.body579 ]
  %100 = add nuw nsw i64 %indvars.iv1138, %98
  %indvars.iv1138.tr = trunc i64 %indvars.iv1138 to i32
  %101 = shl i32 %indvars.iv1138.tr, 3
  %or584 = or i32 %101, %99
  %or585 = or i32 %or584, 20480
  %102 = add nuw nsw i64 %100, 244
  %arrayidx588 = getelementptr inbounds [256 x i32], ptr @i_slen2, i64 0, i64 %102
  store i32 %or585, ptr %arrayidx588, align 4, !tbaa !20
  %or592 = or i32 %or584, 40960
  %103 = add nuw nsw i64 %100, 500
  %arrayidx595 = getelementptr inbounds [512 x i32], ptr @n_slen2, i64 0, i64 %103
  store i32 %or592, ptr %arrayidx595, align 4, !tbaa !20
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 1
  %exitcond1145.not = icmp eq i64 %indvars.iv.next1139, 3
  br i1 %exitcond1145.not, label %for.inc599, label %for.body579, !llvm.loop !47

for.inc599:                                       ; preds = %for.body579
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 1
  %exitcond1150.not = icmp eq i64 %indvars.iv.next1147, 4
  br i1 %exitcond1150.not, label %for.cond606.preheader, label %for.cond576.preheader, !llvm.loop !48

for.cond606.preheader:                            ; preds = %for.inc599, %for.inc643
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %for.inc643 ], [ 0, %for.inc599 ]
  %104 = mul nuw nsw i64 %indvars.iv1171, 80
  %105 = trunc i64 %indvars.iv1171 to i32
  br label %for.cond610.preheader

for.cond610.preheader:                            ; preds = %for.cond606.preheader, %for.inc640
  %indvars.iv1164 = phi i64 [ 0, %for.cond606.preheader ], [ %indvars.iv.next1165, %for.inc640 ]
  %106 = shl nsw i64 %indvars.iv1164, 4
  %107 = add nuw nsw i64 %106, %104
  %indvars.iv1164.tr = trunc i64 %indvars.iv1164 to i32
  %108 = shl i32 %indvars.iv1164.tr, 3
  %or626 = or i32 %108, %105
  br label %for.cond614.preheader

for.cond614.preheader:                            ; preds = %for.cond610.preheader, %for.inc637
  %indvars.iv1157 = phi i64 [ 0, %for.cond610.preheader ], [ %indvars.iv.next1158, %for.inc637 ]
  %109 = shl nsw i64 %indvars.iv1157, 2
  %110 = add nuw nsw i64 %107, %109
  %indvars.iv1157.tr = trunc i64 %indvars.iv1157 to i32
  %111 = shl i32 %indvars.iv1157.tr, 6
  %or628 = or i32 %or626, %111
  br label %for.body617

for.body617:                                      ; preds = %for.cond614.preheader, %for.body617
  %indvars.iv1151 = phi i64 [ 0, %for.cond614.preheader ], [ %indvars.iv.next1152, %for.body617 ]
  %112 = add nuw nsw i64 %110, %indvars.iv1151
  %indvars.iv1151.tr = trunc i64 %indvars.iv1151 to i32
  %113 = shl i32 %indvars.iv1151.tr, 9
  %or630 = or i32 %or628, %113
  %arrayidx633 = getelementptr inbounds [512 x i32], ptr @n_slen2, i64 0, i64 %112
  store i32 %or630, ptr %arrayidx633, align 4, !tbaa !20
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1
  %exitcond1156.not = icmp eq i64 %indvars.iv.next1152, 4
  br i1 %exitcond1156.not, label %for.inc637, label %for.body617, !llvm.loop !49

for.inc637:                                       ; preds = %for.body617
  %indvars.iv.next1158 = add nuw nsw i64 %indvars.iv1157, 1
  %exitcond1163.not = icmp eq i64 %indvars.iv.next1158, 4
  br i1 %exitcond1163.not, label %for.inc640, label %for.cond614.preheader, !llvm.loop !50

for.inc640:                                       ; preds = %for.inc637
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1
  %exitcond1170.not = icmp eq i64 %indvars.iv.next1165, 5
  br i1 %exitcond1170.not, label %for.inc643, label %for.cond610.preheader, !llvm.loop !51

for.inc643:                                       ; preds = %for.inc640
  %indvars.iv.next1172 = add nuw nsw i64 %indvars.iv1171, 1
  %exitcond1175.not = icmp eq i64 %indvars.iv.next1172, 5
  br i1 %exitcond1175.not, label %for.cond650.preheader, label %for.cond606.preheader, !llvm.loop !52

for.cond650.preheader:                            ; preds = %for.inc643, %for.inc677
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %for.inc677 ], [ 0, %for.inc643 ]
  %114 = mul nuw nsw i64 %indvars.iv1189, 20
  %115 = add nuw nsw i64 %114, 400
  %116 = trunc i64 %indvars.iv1189 to i32
  br label %for.cond654.preheader

for.cond654.preheader:                            ; preds = %for.cond650.preheader, %for.inc674
  %indvars.iv1182 = phi i64 [ 0, %for.cond650.preheader ], [ %indvars.iv.next1183, %for.inc674 ]
  %117 = shl nsw i64 %indvars.iv1182, 2
  %indvars.iv1182.tr = trunc i64 %indvars.iv1182 to i32
  %118 = shl i32 %indvars.iv1182.tr, 3
  %or664 = or i32 %118, %116
  %119 = add nuw nsw i64 %115, %117
  br label %for.body657

for.body657:                                      ; preds = %for.cond654.preheader, %for.body657
  %indvars.iv1176 = phi i64 [ 0, %for.cond654.preheader ], [ %indvars.iv.next1177, %for.body657 ]
  %indvars.iv1176.tr = trunc i64 %indvars.iv1176 to i32
  %120 = shl i32 %indvars.iv1176.tr, 6
  %or666 = or i32 %or664, %120
  %or667 = or i32 %or666, 4096
  %121 = add nuw nsw i64 %119, %indvars.iv1176
  %arrayidx670 = getelementptr inbounds [512 x i32], ptr @n_slen2, i64 0, i64 %121
  store i32 %or667, ptr %arrayidx670, align 4, !tbaa !20
  %indvars.iv.next1177 = add nuw nsw i64 %indvars.iv1176, 1
  %exitcond1181.not = icmp eq i64 %indvars.iv.next1177, 4
  br i1 %exitcond1181.not, label %for.inc674, label %for.body657, !llvm.loop !53

for.inc674:                                       ; preds = %for.body657
  %indvars.iv.next1183 = add nuw nsw i64 %indvars.iv1182, 1
  %exitcond1188.not = icmp eq i64 %indvars.iv.next1183, 5
  br i1 %exitcond1188.not, label %for.inc677, label %for.cond654.preheader, !llvm.loop !54

for.inc677:                                       ; preds = %for.inc674
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1
  %exitcond1194.not = icmp eq i64 %indvars.iv.next1190, 5
  br i1 %exitcond1194.not, label %for.end679, label %for.cond650.preheader, !llvm.loop !55

for.end679:                                       ; preds = %for.inc677
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_layer3(ptr nocapture noundef readonly %fr, ptr noundef %pcm_sample, ptr noundef %pcm_point) local_unnamed_addr #4 {
entry:
  %scalefacs = alloca [2 x [39 x i32]], align 16
  %sideinfo = alloca %struct.III_sideinfo, align 8
  %p1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 312, ptr nonnull %scalefacs) #15
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %sideinfo) #15
  %0 = load i32, ptr %fr, align 4, !tbaa !56
  %sampling_frequency = getelementptr inbounds %struct.frame, ptr %fr, i64 0, i32 9
  %1 = load i32, ptr %sampling_frequency, align 4, !tbaa !58
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.end7, label %if.else

if.else:                                          ; preds = %entry
  %single2 = getelementptr inbounds %struct.frame, ptr %fr, i64 0, i32 2
  %2 = load i32, ptr %single2, align 4, !tbaa !59
  %cmp4 = icmp sgt i32 %2, -1
  %. = select i1 %cmp4, i64 1, i64 2
  br label %if.end7

if.end7:                                          ; preds = %if.else, %entry
  %single.0 = phi i32 [ 0, %entry ], [ %2, %if.else ]
  %stereo13.0 = phi i64 [ 1, %entry ], [ %., %if.else ]
  %mode = getelementptr inbounds %struct.frame, ptr %fr, i64 0, i32 12
  %3 = load i32, ptr %mode, align 4, !tbaa !60
  %cmp8 = icmp eq i32 %3, 1
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %mode_ext = getelementptr inbounds %struct.frame, ptr %fr, i64 0, i32 13
  %4 = load i32, ptr %mode_ext, align 4, !tbaa !61
  %and = and i32 %4, 2
  %and11 = and i32 %4, 1
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %ms_stereo.0 = phi i32 [ %and, %if.then9 ], [ 0, %if.end7 ]
  %i_stereo.0 = phi i32 [ %and11, %if.then9 ], [ 0, %if.end7 ]
  %lsf = getelementptr inbounds %struct.frame, ptr %fr, i64 0, i32 3
  %5 = load i32, ptr %lsf, align 4, !tbaa !62
  %tobool.not = icmp eq i32 %5, 0
  %conv16 = sext i32 %1 to i64
  br i1 %tobool.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.end13
  call fastcc void @III_get_side_info_2(ptr noundef nonnull %sideinfo, i32 noundef %0, i32 noundef %ms_stereo.0, i64 noundef %conv16, i32 noundef %single.0)
  br label %if.end17

if.else15:                                        ; preds = %if.end13
  call fastcc void @III_get_side_info_1(ptr noundef nonnull %sideinfo, i32 noundef %0, i32 noundef %ms_stereo.0, i64 noundef %conv16, i32 noundef %single.0)
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then14
  %granules.0 = phi i64 [ 1, %if.then14 ], [ 2, %if.else15 ]
  %6 = load i32, ptr %sideinfo, align 8, !tbaa !63
  %conv18 = zext i32 %6 to i64
  %call = call i32 @set_pointer(i64 noundef %conv18) #15
  %cmp19 = icmp eq i32 %call, -1
  br i1 %cmp19, label %cleanup215, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end17
  %ch25 = getelementptr inbounds %struct.III_sideinfo, ptr %sideinfo, i64 0, i32 2
  %cmp48 = icmp eq i32 %0, 2
  %arrayidx53 = getelementptr inbounds %struct.III_sideinfo, ptr %sideinfo, i64 0, i32 2, i64 1
  %arrayidx61 = getelementptr inbounds [2 x [39 x i32]], ptr %scalefacs, i64 0, i64 1
  %tobool78 = icmp ne i32 %ms_stereo.0, 0
  %tobool93 = icmp ne i32 %i_stereo.0, 0
  %or.cond = select i1 %tobool78, i1 true, i1 %tobool93
  %cmp102 = icmp eq i32 %single.0, 3
  %or.cond229 = select i1 %or.cond, i1 true, i1 %cmp102
  %cmp189 = icmp sgt i32 %single.0, -1
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc212
  %indvars.iv346 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next347, %for.inc212 ]
  %clip.0326 = phi i32 [ 0, %for.cond.preheader ], [ %.us-phi, %for.inc212 ]
  %arrayidx27 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %ch25, i64 0, i64 %indvars.iv346
  %7 = load i32, ptr %lsf, align 4, !tbaa !62
  %tobool29.not = icmp eq i32 %7, 0
  br i1 %tobool29.not, label %if.else34, label %if.then30

if.then30:                                        ; preds = %for.body
  %call32 = call fastcc i32 @III_get_scale_factors_2(ptr noundef nonnull %scalefacs, ptr noundef nonnull %arrayidx27, i32 noundef 0)
  br label %if.end39

if.else34:                                        ; preds = %for.body
  %call37 = call fastcc i32 @III_get_scale_factors_1(ptr noundef nonnull %scalefacs, ptr noundef nonnull %arrayidx27)
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %if.then30
  %part2bits.0.in = phi i32 [ %call32, %if.then30 ], [ %call37, %if.else34 ]
  %call43 = call fastcc i32 @III_dequantize_sample(ptr noundef nonnull @do_layer3.hybridIn, ptr noundef nonnull %scalefacs, ptr noundef nonnull %arrayidx27, i32 noundef %1, i32 noundef %part2bits.0.in)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %cleanup.cont, label %cleanup215

cleanup.cont:                                     ; preds = %if.end39
  br i1 %cmp48, label %if.then50, label %for.body165.preheader

for.body165.preheader:                            ; preds = %for.body136, %if.end130, %for.cond132.preheader, %for.cond146.preheader, %for.body151.preheader, %cleanup.cont
  br label %for.body165

if.then50:                                        ; preds = %cleanup.cont
  %arrayidx56 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx53, i64 0, i64 %indvars.iv346
  %8 = load i32, ptr %lsf, align 4, !tbaa !62
  %tobool59.not = icmp eq i32 %8, 0
  br i1 %tobool59.not, label %if.else65, label %if.then60

if.then60:                                        ; preds = %if.then50
  %call63 = call fastcc i32 @III_get_scale_factors_2(ptr noundef nonnull %arrayidx61, ptr noundef nonnull %arrayidx56, i32 noundef %i_stereo.0)
  br label %if.end70

if.else65:                                        ; preds = %if.then50
  %call68 = call fastcc i32 @III_get_scale_factors_1(ptr noundef nonnull %arrayidx61, ptr noundef nonnull %arrayidx56)
  br label %if.end70

if.end70:                                         ; preds = %if.else65, %if.then60
  %part2bits57.0.in = phi i32 [ %call63, %if.then60 ], [ %call68, %if.else65 ]
  %call74 = call fastcc i32 @III_dequantize_sample(ptr noundef getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1), ptr noundef nonnull %arrayidx61, ptr noundef nonnull %arrayidx56, i32 noundef %1, i32 noundef %part2bits57.0.in)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %cleanup215

if.end77:                                         ; preds = %if.end70
  br i1 %tobool78, label %for.body83, label %if.end92

for.body83:                                       ; preds = %if.end77, %for.body83
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body83 ], [ 0, %if.end77 ]
  %arrayidx85 = getelementptr inbounds double, ptr @do_layer3.hybridIn, i64 %indvars.iv
  %9 = load double, ptr %arrayidx85, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds double, ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1), i64 %indvars.iv
  %10 = load double, ptr %arrayidx87, align 8, !tbaa !5
  %sub = fsub fast double %9, %10
  store double %sub, ptr %arrayidx87, align 8, !tbaa !5
  %add = fadd fast double %10, %9
  store double %add, ptr %arrayidx85, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %if.end92, label %for.body83, !llvm.loop !65

if.end92:                                         ; preds = %for.body83, %if.end77
  br i1 %tobool93, label %if.end98.thread, label %if.end98

if.end98.thread:                                  ; preds = %if.end92
  %11 = load i32, ptr %lsf, align 4, !tbaa !62
  call fastcc void @III_i_stereo(ptr noundef nonnull %arrayidx61, ptr noundef nonnull %arrayidx56, i32 noundef %1, i32 noundef %ms_stereo.0, i32 noundef %11)
  br label %if.then104

if.end98:                                         ; preds = %if.end92
  br i1 %or.cond229, label %if.then104, label %if.end130

if.then104:                                       ; preds = %if.end98.thread, %if.end98
  %maxb = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx53, i64 0, i64 %indvars.iv346, i32 10
  %12 = load i32, ptr %maxb, align 8, !tbaa !66
  %maxb110 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %ch25, i64 0, i64 %indvars.iv346, i32 10
  %13 = load i32, ptr %maxb110, align 8, !tbaa !66
  %cmp111 = icmp ugt i32 %12, %13
  br i1 %cmp111, label %if.then113, label %if.else121

if.then113:                                       ; preds = %if.then104
  store i32 %12, ptr %maxb110, align 8, !tbaa !66
  br label %if.end130

if.else121:                                       ; preds = %if.then104
  store i32 %13, ptr %maxb, align 8, !tbaa !66
  br label %if.end130

if.end130:                                        ; preds = %if.then113, %if.else121, %if.end98
  switch i32 %single.0, label %for.body165.preheader [
    i32 3, label %for.cond132.preheader
    i32 1, label %for.cond146.preheader
  ]

for.cond146.preheader:                            ; preds = %if.end130
  %maxb147 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx53, i64 0, i64 %indvars.iv346, i32 10
  %14 = load i32, ptr %maxb147, align 8, !tbaa !66
  %mul148 = mul i32 %14, 18
  %cmp149314.not = icmp eq i32 %mul148, 0
  br i1 %cmp149314.not, label %for.body165.preheader, label %for.body151.preheader

for.body151.preheader:                            ; preds = %for.cond146.preheader
  %15 = zext i32 %mul148 to i64
  %16 = shl nuw nsw i64 %15, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @do_layer3.hybridIn, ptr align 16 getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 %16, i1 false), !tbaa !5
  br label %for.body165.preheader

for.cond132.preheader:                            ; preds = %if.end130
  %maxb133 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx53, i64 0, i64 %indvars.iv346, i32 10
  %17 = load i32, ptr %maxb133, align 8, !tbaa !66
  %mul = mul i32 %17, 18
  %cmp134318.not = icmp eq i32 %mul, 0
  br i1 %cmp134318.not, label %for.body165.preheader, label %for.body136

for.body136:                                      ; preds = %for.cond132.preheader, %for.body136
  %in1.0321 = phi ptr [ %incdec.ptr, %for.body136 ], [ getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1), %for.cond132.preheader ]
  %in0.0320 = phi ptr [ %incdec.ptr140, %for.body136 ], [ @do_layer3.hybridIn, %for.cond132.preheader ]
  %i131.0319 = phi i32 [ %inc139, %for.body136 ], [ 0, %for.cond132.preheader ]
  %18 = load double, ptr %in0.0320, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds double, ptr %in1.0321, i64 1
  %19 = load double, ptr %in1.0321, align 8, !tbaa !5
  %add137 = fadd fast double %19, %18
  store double %add137, ptr %in0.0320, align 8, !tbaa !5
  %inc139 = add nuw nsw i32 %i131.0319, 1
  %incdec.ptr140 = getelementptr inbounds double, ptr %in0.0320, i64 1
  %exitcond333.not = icmp eq i32 %inc139, %mul
  br i1 %exitcond333.not, label %for.body165.preheader, label %for.body136, !llvm.loop !68

for.cond185.preheader:                            ; preds = %for.body165
  br i1 %cmp189, label %for.body188.us, label %for.body188

for.body188.us:                                   ; preds = %for.cond185.preheader, %for.body188.us
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %for.body188.us ], [ 0, %for.cond185.preheader ]
  %clip.1323.us = phi i32 [ %add196.us, %for.body188.us ], [ %clip.0326, %for.cond185.preheader ]
  %arrayidx193.us = getelementptr inbounds [18 x [32 x double]], ptr @do_layer3.hybridOut, i64 0, i64 %indvars.iv342
  %call195.us = call i32 @synth_1to1_mono(ptr noundef nonnull %arrayidx193.us, ptr noundef %pcm_sample, ptr noundef %pcm_point) #15
  %add196.us = add nsw i32 %call195.us, %clip.1323.us
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, 18
  br i1 %exitcond345.not, label %for.inc212, label %for.body188.us, !llvm.loop !69

for.body165:                                      ; preds = %for.body165.preheader, %for.body165
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %for.body165 ], [ 0, %for.body165.preheader ]
  %arrayidx169 = getelementptr inbounds %struct.III_sideinfo, ptr %sideinfo, i64 0, i32 2, i64 %indvars.iv334
  %arrayidx172 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx169, i64 0, i64 %indvars.iv346
  %arrayidx174 = getelementptr inbounds [2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv334
  call fastcc void @III_antialias(ptr noundef nonnull %arrayidx174, ptr noundef nonnull %arrayidx172)
  %arrayidx180 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr @do_layer3.hybridOut, i64 0, i64 %indvars.iv334
  %20 = trunc i64 %indvars.iv334 to i32
  call fastcc void @III_hybrid(ptr noundef nonnull %arrayidx174, ptr noundef nonnull %arrayidx180, i32 noundef %20, ptr noundef nonnull %arrayidx172)
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, %stereo13.0
  br i1 %exitcond337.not, label %for.cond185.preheader, label %for.body165, !llvm.loop !70

for.body188:                                      ; preds = %for.cond185.preheader, %for.body188
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %for.body188 ], [ 0, %for.cond185.preheader ]
  %clip.1323 = phi i32 [ %add207, %for.body188 ], [ %clip.0326, %for.cond185.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p1) #15
  %21 = load i32, ptr %pcm_point, align 4, !tbaa !20
  store i32 %21, ptr %p1, align 4, !tbaa !20
  %arrayidx199 = getelementptr inbounds [18 x [32 x double]], ptr @do_layer3.hybridOut, i64 0, i64 %indvars.iv338
  %call201 = call i32 @synth_1to1(ptr noundef nonnull %arrayidx199, i32 noundef 0, ptr noundef %pcm_sample, ptr noundef nonnull %p1) #15
  %add202 = add nsw i32 %call201, %clip.1323
  %arrayidx204 = getelementptr inbounds [2 x [18 x [32 x double]]], ptr @do_layer3.hybridOut, i64 0, i64 1, i64 %indvars.iv338
  %call206 = call i32 @synth_1to1(ptr noundef nonnull %arrayidx204, i32 noundef 1, ptr noundef %pcm_sample, ptr noundef nonnull %pcm_point) #15
  %add207 = add nsw i32 %add202, %call206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p1) #15
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1
  %exitcond341.not = icmp eq i64 %indvars.iv.next339, 18
  br i1 %exitcond341.not, label %for.inc212, label %for.body188, !llvm.loop !69

for.inc212:                                       ; preds = %for.body188, %for.body188.us
  %.us-phi = phi i32 [ %add196.us, %for.body188.us ], [ %add207, %for.body188 ]
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %granules.0
  br i1 %exitcond350.not, label %cleanup215, label %for.body, !llvm.loop !71

cleanup215:                                       ; preds = %if.end70, %for.inc212, %if.end39, %if.end17
  %retval.4 = phi i32 [ 0, %if.end17 ], [ %clip.0326, %if.end39 ], [ %.us-phi, %for.inc212 ], [ %clip.0326, %if.end70 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %sideinfo) #15
  call void @llvm.lifetime.end.p0(i64 312, ptr nonnull %scalefacs) #15
  ret i32 %retval.4
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @III_get_side_info_2(ptr noundef %si, i32 noundef %stereo, i32 noundef %ms_stereo, i64 noundef %sfreq, i32 noundef %single) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %single, 3
  %cond = select i1 %cmp, i64 4, i64 0
  %call = tail call i32 @getbits(i32 noundef 8) #15
  store i32 %call, ptr %si, align 8, !tbaa !63
  %cmp1 = icmp eq i32 %stereo, 1
  br i1 %cmp1, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %call2 = tail call fastcc i32 @get1bit()
  %0 = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 1
  store i32 %call2, ptr %0, align 4
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @getbits_fast(i32 noundef 2) #15
  %1 = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 1
  store i32 %call3, ptr %1, align 4
  %cmp5138 = icmp sgt i32 %stereo, 0
  br i1 %cmp5138, label %for.body.lr.ph, label %for.end96

for.body.lr.ph:                                   ; preds = %if.end.thread, %if.end
  %tobool.not = icmp eq i32 %ms_stereo, 0
  %spec.select.idx = select i1 %tobool.not, i64 0, i64 2
  %cmp54 = icmp eq i64 %sfreq, 8
  %arrayidx75 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %sfreq
  %wide.trip.count = zext i32 %stereo to i64
  %add.ptr = getelementptr inbounds double, ptr getelementptr inbounds ([378 x double], ptr @gainpow2, i64 0, i64 256), i64 %cond
  %add.ptr18 = getelementptr inbounds double, ptr %add.ptr, i64 %spec.select.idx
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end91
  %indvars.iv145 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next146, %if.end91 ]
  %arrayidx = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 2, i64 %indvars.iv145
  %call8 = tail call i32 @getbits(i32 noundef 12) #15
  %part2_3_length = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 1
  store i32 %call8, ptr %part2_3_length, align 4, !tbaa !72
  %call9 = tail call i32 @getbits_fast(i32 noundef 9) #15
  %big_values = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 2
  store i32 %call9, ptr %big_values, align 8, !tbaa !73
  %cmp11 = icmp ugt i32 %call9, 288
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !27
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %2) #16
  store i32 288, ptr %big_values, align 8, !tbaa !73
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.body
  %call16 = tail call i32 @getbits_fast(i32 noundef 8) #15
  %idx.ext = zext i32 %call16 to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %pow2gain = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 17
  %spec.select = getelementptr double, ptr %add.ptr18, i64 %idx.neg
  store ptr %spec.select, ptr %pow2gain, align 8, !tbaa !74
  %call23 = tail call i32 @getbits(i32 noundef 9) #15
  %scalefac_compress = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 3
  store i32 %call23, ptr %scalefac_compress, align 4, !tbaa !75
  %call24 = tail call fastcc i32 @get1bit()
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.body65, label %if.then26

if.then26:                                        ; preds = %if.end15
  %call27 = tail call i32 @getbits_fast(i32 noundef 2) #15
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 4
  store i32 %call27, ptr %block_type, align 8, !tbaa !76
  %call28 = tail call fastcc i32 @get1bit()
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 5
  store i32 %call28, ptr %mixed_block_flag, align 4, !tbaa !77
  %call29 = tail call i32 @getbits_fast(i32 noundef 5) #15
  %table_select = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 6
  store i32 %call29, ptr %table_select, align 8, !tbaa !20
  %call31 = tail call i32 @getbits_fast(i32 noundef 5) #15
  %arrayidx33 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 6, i64 1
  store i32 %call31, ptr %arrayidx33, align 4, !tbaa !20
  %arrayidx35 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 6, i64 2
  store i32 0, ptr %arrayidx35, align 8, !tbaa !20
  br label %for.body38

for.body38:                                       ; preds = %if.then26, %for.body38
  %indvars.iv = phi i64 [ 0, %if.then26 ], [ %indvars.iv.next, %for.body38 ]
  %call39 = tail call i32 @getbits_fast(i32 noundef 3) #15
  %shl = shl i32 %call39, 3
  %4 = load ptr, ptr %pow2gain, align 8, !tbaa !74
  %idx.ext41 = zext i32 %shl to i64
  %add.ptr42 = getelementptr inbounds double, ptr %4, i64 %idx.ext41
  %arrayidx44 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 16, i64 %indvars.iv
  store ptr %add.ptr42, ptr %arrayidx44, align 8, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.end, label %for.body38, !llvm.loop !78

for.end:                                          ; preds = %for.body38
  %5 = load i32, ptr %block_type, align 8, !tbaa !76
  switch i32 %5, label %if.else53 [
    i32 0, label %if.then47
    i32 2, label %if.then52
  ]

if.then47:                                        ; preds = %for.end
  %6 = load ptr, ptr @stderr, align 8, !tbaa !27
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %6) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

if.then52:                                        ; preds = %for.end
  %region1start = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 11
  store i32 18, ptr %region1start, align 4, !tbaa !79
  br label %if.end60

if.else53:                                        ; preds = %for.end
  %region1start56 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 11
  br i1 %cmp54, label %if.then55, label %if.else57

if.then55:                                        ; preds = %if.else53
  store i32 54, ptr %region1start56, align 4, !tbaa !79
  br label %if.end60

if.else57:                                        ; preds = %if.else53
  store i32 27, ptr %region1start56, align 4, !tbaa !79
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.else57, %if.then52
  %region2start = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 12
  store i32 288, ptr %region2start, align 8, !tbaa !80
  br label %if.end91

for.body65:                                       ; preds = %if.end15, %for.body65
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %for.body65 ], [ 0, %if.end15 ]
  %call66 = tail call i32 @getbits_fast(i32 noundef 5) #15
  %arrayidx69 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 6, i64 %indvars.iv141
  store i32 %call66, ptr %arrayidx69, align 4, !tbaa !20
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next142, 3
  br i1 %exitcond144.not, label %for.end72, label %for.body65, !llvm.loop !81

for.end72:                                        ; preds = %for.body65
  %call73 = tail call i32 @getbits_fast(i32 noundef 4) #15
  %call74 = tail call i32 @getbits_fast(i32 noundef 3) #15
  %add = add nsw i32 %call73, 1
  %idxprom76 = sext i32 %add to i64
  %arrayidx77 = getelementptr inbounds [23 x i16], ptr %arrayidx75, i64 0, i64 %idxprom76
  %8 = load i16, ptr %arrayidx77, align 2, !tbaa !29
  %9 = ashr i16 %8, 1
  %shr = sext i16 %9 to i32
  %region1start78 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 11
  store i32 %shr, ptr %region1start78, align 4, !tbaa !79
  %add82 = add i32 %call74, 1
  %add83 = add i32 %add82, %add
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds [23 x i16], ptr %arrayidx75, i64 0, i64 %idxprom84
  %10 = load i16, ptr %arrayidx85, align 2, !tbaa !29
  %11 = ashr i16 %10, 1
  %shr87 = sext i16 %11 to i32
  %region2start88 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 12
  store i32 %shr87, ptr %region2start88, align 8, !tbaa !80
  %block_type89 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 4
  store i32 0, ptr %block_type89, align 8, !tbaa !76
  %mixed_block_flag90 = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 5
  store i32 0, ptr %mixed_block_flag90, align 4, !tbaa !77
  br label %if.end91

if.end91:                                         ; preds = %for.end72, %if.end60
  %call92 = tail call fastcc i32 @get1bit()
  %scalefac_scale = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 14
  store i32 %call92, ptr %scalefac_scale, align 8, !tbaa !82
  %call93 = tail call fastcc i32 @get1bit()
  %count1table_select = getelementptr inbounds %struct.gr_info_s, ptr %arrayidx, i64 0, i32 15
  store i32 %call93, ptr %count1table_select, align 4, !tbaa !83
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond148.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count
  br i1 %exitcond148.not, label %for.end96, label %for.body, !llvm.loop !84

for.end96:                                        ; preds = %if.end91, %if.end
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @III_get_side_info_1(ptr nocapture noundef %si, i32 noundef %stereo, i32 noundef %ms_stereo, i64 noundef %sfreq, i32 noundef %single) unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %single, 3
  %cond = select i1 %cmp, i64 4, i64 0
  %call = tail call i32 @getbits(i32 noundef 9) #15
  store i32 %call, ptr %si, align 8, !tbaa !63
  %cmp1 = icmp eq i32 %stereo, 1
  br i1 %cmp1, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  %call2 = tail call i32 @getbits_fast(i32 noundef 5) #15
  %0 = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 1
  store i32 %call2, ptr %0, align 4
  br label %for.body.preheader

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @getbits_fast(i32 noundef 3) #15
  %1 = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 1
  store i32 %call3, ptr %1, align 4
  %cmp5158 = icmp sgt i32 %stereo, 0
  br i1 %cmp5158, label %for.body.preheader, label %for.end112

for.body.preheader:                               ; preds = %if.end.thread, %if.end
  %wide.trip.count = zext i32 %stereo to i64
  br label %for.body

for.cond16.preheader:                             ; preds = %for.body
  %tobool.not = icmp eq i32 %ms_stereo, 0
  %spec.select.idx = select i1 %tobool.not, i64 0, i64 2
  %arrayidx87 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %sfreq
  %wide.trip.count179 = zext i32 %stereo to i64
  %add.ptr.us = getelementptr inbounds double, ptr getelementptr inbounds ([378 x double], ptr @gainpow2, i64 0, i64 256), i64 %cond
  %add.ptr38.us = getelementptr inbounds double, ptr %add.ptr.us, i64 %spec.select.idx
  br label %for.cond19.preheader.us

for.cond19.preheader.us:                          ; preds = %for.cond16.preheader, %for.cond19.for.inc110_crit_edge.us
  %cmp17.us = phi i1 [ true, %for.cond16.preheader ], [ false, %for.cond19.for.inc110_crit_edge.us ]
  %indvars.iv181 = phi i64 [ 0, %for.cond16.preheader ], [ 1, %for.cond19.for.inc110_crit_edge.us ]
  br label %for.body21.us

for.body21.us:                                    ; preds = %for.cond19.preheader.us, %if.end103.us
  %indvars.iv176 = phi i64 [ 0, %for.cond19.preheader.us ], [ %indvars.iv.next177, %if.end103.us ]
  %arrayidx24.us = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 2, i64 %indvars.iv176
  %call28.us = tail call i32 @getbits(i32 noundef 12) #15
  %part2_3_length.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 1
  store i32 %call28.us, ptr %part2_3_length.us, align 4, !tbaa !72
  %call29.us = tail call i32 @getbits_fast(i32 noundef 9) #15
  %big_values.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 2
  store i32 %call29.us, ptr %big_values.us, align 8, !tbaa !73
  %cmp31.us = icmp ugt i32 %call29.us, 288
  br i1 %cmp31.us, label %if.then32.us, label %if.end35.us

if.then32.us:                                     ; preds = %for.body21.us
  %2 = load ptr, ptr @stderr, align 8, !tbaa !27
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %2) #16
  store i32 288, ptr %big_values.us, align 8, !tbaa !73
  br label %if.end35.us

if.end35.us:                                      ; preds = %if.then32.us, %for.body21.us
  %call36.us = tail call i32 @getbits_fast(i32 noundef 8) #15
  %idx.ext.us = zext i32 %call36.us to i64
  %idx.neg.us = sub nsw i64 0, %idx.ext.us
  %pow2gain.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 17
  %spec.select.us = getelementptr double, ptr %add.ptr38.us, i64 %idx.neg.us
  store ptr %spec.select.us, ptr %pow2gain.us, align 8, !tbaa !74
  %call43.us = tail call i32 @getbits_fast(i32 noundef 4) #15
  %scalefac_compress.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 3
  store i32 %call43.us, ptr %scalefac_compress.us, align 4, !tbaa !75
  %call44.us = tail call fastcc i32 @get1bit()
  %tobool45.not.us = icmp eq i32 %call44.us, 0
  br i1 %tobool45.not.us, label %for.body77.us, label %if.then46.us

if.then46.us:                                     ; preds = %if.end35.us
  %call47.us = tail call i32 @getbits_fast(i32 noundef 2) #15
  %block_type.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 4
  store i32 %call47.us, ptr %block_type.us, align 8, !tbaa !76
  %call48.us = tail call fastcc i32 @get1bit()
  %mixed_block_flag.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 5
  store i32 %call48.us, ptr %mixed_block_flag.us, align 4, !tbaa !77
  %call49.us = tail call i32 @getbits_fast(i32 noundef 5) #15
  %table_select.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 6
  store i32 %call49.us, ptr %table_select.us, align 8, !tbaa !20
  %call51.us = tail call i32 @getbits_fast(i32 noundef 5) #15
  %arrayidx53.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 6, i64 1
  store i32 %call51.us, ptr %arrayidx53.us, align 4, !tbaa !20
  %arrayidx55.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 6, i64 2
  store i32 0, ptr %arrayidx55.us, align 8, !tbaa !20
  br label %for.body58.us

for.end67.us:                                     ; preds = %for.body58.us
  %4 = load i32, ptr %block_type.us, align 8, !tbaa !76
  %cmp69.us = icmp eq i32 %4, 0
  br i1 %cmp69.us, label %if.then70, label %if.end72.us

if.end72.us:                                      ; preds = %for.end67.us
  %region1start.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 11
  store i32 18, ptr %region1start.us, align 4, !tbaa !79
  %region2start.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 12
  store i32 288, ptr %region2start.us, align 8, !tbaa !80
  br label %if.end103.us

for.body58.us:                                    ; preds = %for.body58.us, %if.then46.us
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %for.body58.us ], [ 0, %if.then46.us ]
  %call59.us = tail call i32 @getbits_fast(i32 noundef 3) #15
  %shl.us = shl i32 %call59.us, 3
  %5 = load ptr, ptr %pow2gain.us, align 8, !tbaa !74
  %idx.ext61.us = zext i32 %shl.us to i64
  %add.ptr62.us = getelementptr inbounds double, ptr %5, i64 %idx.ext61.us
  %arrayidx64.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 16, i64 %indvars.iv168
  store ptr %add.ptr62.us, ptr %arrayidx64.us, align 8, !tbaa !27
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1
  %exitcond171.not = icmp eq i64 %indvars.iv.next169, 3
  br i1 %exitcond171.not, label %for.end67.us, label %for.body58.us, !llvm.loop !85

for.end84.us:                                     ; preds = %for.body77.us
  %call85.us = tail call i32 @getbits_fast(i32 noundef 4) #15
  %call86.us = tail call i32 @getbits_fast(i32 noundef 3) #15
  %add.us = add nsw i32 %call85.us, 1
  %idxprom88.us = sext i32 %add.us to i64
  %arrayidx89.us = getelementptr inbounds [23 x i16], ptr %arrayidx87, i64 0, i64 %idxprom88.us
  %6 = load i16, ptr %arrayidx89.us, align 2, !tbaa !29
  %7 = ashr i16 %6, 1
  %shr.us = sext i16 %7 to i32
  %region1start90.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 11
  store i32 %shr.us, ptr %region1start90.us, align 4, !tbaa !79
  %add94.us = add i32 %call86.us, 1
  %add95.us = add i32 %add94.us, %add.us
  %idxprom96.us = sext i32 %add95.us to i64
  %arrayidx97.us = getelementptr inbounds [23 x i16], ptr %arrayidx87, i64 0, i64 %idxprom96.us
  %8 = load i16, ptr %arrayidx97.us, align 2, !tbaa !29
  %9 = ashr i16 %8, 1
  %shr99.us = sext i16 %9 to i32
  %region2start100.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 12
  store i32 %shr99.us, ptr %region2start100.us, align 8, !tbaa !80
  %block_type101.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 4
  store i32 0, ptr %block_type101.us, align 8, !tbaa !76
  %mixed_block_flag102.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 5
  store i32 0, ptr %mixed_block_flag102.us, align 4, !tbaa !77
  br label %if.end103.us

if.end103.us:                                     ; preds = %for.end84.us, %if.end72.us
  %call104.us = tail call fastcc i32 @get1bit()
  %preflag.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 13
  store i32 %call104.us, ptr %preflag.us, align 4, !tbaa !86
  %call105.us = tail call fastcc i32 @get1bit()
  %scalefac_scale.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 14
  store i32 %call105.us, ptr %scalefac_scale.us, align 8, !tbaa !82
  %call106.us = tail call fastcc i32 @get1bit()
  %count1table_select.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 15
  store i32 %call106.us, ptr %count1table_select.us, align 4, !tbaa !83
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %for.cond19.for.inc110_crit_edge.us, label %for.body21.us, !llvm.loop !87

for.body77.us:                                    ; preds = %if.end35.us, %for.body77.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %for.body77.us ], [ 0, %if.end35.us ]
  %call78.us = tail call i32 @getbits_fast(i32 noundef 5) #15
  %arrayidx81.us = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx24.us, i64 0, i64 %indvars.iv181, i32 6, i64 %indvars.iv172
  store i32 %call78.us, ptr %arrayidx81.us, align 4, !tbaa !20
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1
  %exitcond175.not = icmp eq i64 %indvars.iv.next173, 3
  br i1 %exitcond175.not, label %for.end84.us, label %for.body77.us, !llvm.loop !88

for.cond19.for.inc110_crit_edge.us:               ; preds = %if.end103.us
  br i1 %cmp17.us, label %for.cond19.preheader.us, label %for.end112, !llvm.loop !89

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds %struct.III_sideinfo, ptr %si, i64 0, i32 2, i64 %indvars.iv
  store i32 -1, ptr %arrayidx, align 8, !tbaa !90
  %call9 = tail call i32 @getbits_fast(i32 noundef 4) #15
  %arrayidx14 = getelementptr inbounds [2 x %struct.gr_info_s], ptr %arrayidx, i64 0, i64 1
  store i32 %call9, ptr %arrayidx14, align 8, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body, !llvm.loop !91

if.then70:                                        ; preds = %for.end67.us
  %10 = load ptr, ptr @stderr, align 8, !tbaa !27
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 54, i64 1, ptr %10) #16
  tail call void @exit(i32 noundef 1) #17
  unreachable

for.end112:                                       ; preds = %for.cond19.for.inc110_crit_edge.us, %if.end
  ret void
}

declare i32 @set_pointer(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @III_get_scale_factors_2(ptr nocapture noundef writeonly %scf, ptr nocapture noundef %gr_info, i32 noundef %i_stereo) unnamed_addr #4 {
entry:
  %tobool.not = icmp eq i32 %i_stereo, 0
  %scalefac_compress1 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 3
  %0 = load i32, ptr %scalefac_compress1, align 4, !tbaa !75
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 1
  %idxprom = zext i32 %shr to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @i_slen2, i64 0, i64 %idxprom
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom2 = zext i32 %0 to i64
  %arrayidx3 = getelementptr inbounds [512 x i32], ptr @n_slen2, i64 0, i64 %idxprom2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %slen.0.in = phi ptr [ %arrayidx, %if.then ], [ %arrayidx3, %if.else ]
  %slen.0 = load i32, ptr %slen.0.in, align 4, !tbaa !20
  %shr4 = lshr i32 %slen.0, 15
  %and = and i32 %shr4, 1
  %preflag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 13
  store i32 %and, ptr %preflag, align 4, !tbaa !86
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %1 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %2 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool6.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool6.not, i64 1, i64 2
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %n.0 = phi i64 [ 0, %if.end ], [ %spec.select, %if.then5 ]
  %shr13 = lshr i32 %slen.0, 12
  %and14 = and i32 %shr13, 7
  %idxprom15 = zext i32 %and14 to i64
  %arrayidx16 = getelementptr inbounds [3 x [6 x [4 x i8]]], ptr @III_get_scale_factors_2.stab, i64 0, i64 %n.0, i64 %idxprom15
  br label %for.body

for.body:                                         ; preds = %if.end10, %if.end44
  %indvars.iv = phi i64 [ 0, %if.end10 ], [ %indvars.iv.next, %if.end44 ]
  %scf.addr.096 = phi ptr [ %scf, %if.end10 ], [ %scf.addr.3, %if.end44 ]
  %numbits.095 = phi i32 [ 0, %if.end10 ], [ %numbits.1, %if.end44 ]
  %slen.194 = phi i32 [ %slen.0, %if.end10 ], [ %shr19, %if.end44 ]
  %and18 = and i32 %slen.194, 7
  %shr19 = lshr i32 %slen.194, 3
  %tobool20.not = icmp eq i32 %and18, 0
  %arrayidx35 = getelementptr inbounds i8, ptr %arrayidx16, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx35, align 1, !tbaa !92
  br i1 %tobool20.not, label %for.cond33.preheader, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.body
  %conv = zext i8 %3 to i32
  %cmp2584.not = icmp eq i8 %3, 0
  br i1 %cmp2584.not, label %for.end, label %for.body27

for.cond33.preheader:                             ; preds = %for.body
  %cmp3788.not = icmp eq i8 %3, 0
  br i1 %cmp3788.not, label %if.end44, label %for.body39.preheader

for.body39.preheader:                             ; preds = %for.cond33.preheader
  %conv36 = zext i8 %3 to i64
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scf.addr.096, i8 0, i64 %5, i1 false), !tbaa !20
  %6 = shl nuw nsw i64 %conv36, 2
  %7 = add nuw nsw i64 %6, 17179869180
  %8 = and i64 %7, 17179869180
  %uglygep = getelementptr i8, ptr %scf.addr.096, i64 4
  %uglygep99 = getelementptr i8, ptr %uglygep, i64 %8
  br label %if.end44

for.body27:                                       ; preds = %for.cond22.preheader, %for.body27
  %scf.addr.186 = phi ptr [ %incdec.ptr, %for.body27 ], [ %scf.addr.096, %for.cond22.preheader ]
  %j.085 = phi i32 [ %inc28, %for.body27 ], [ 0, %for.cond22.preheader ]
  %call = tail call i32 @getbits_fast(i32 noundef %and18) #15
  %incdec.ptr = getelementptr inbounds i32, ptr %scf.addr.186, i64 1
  store i32 %call, ptr %scf.addr.186, align 4, !tbaa !20
  %inc28 = add nuw nsw i32 %j.085, 1
  %exitcond.not = icmp eq i32 %inc28, %conv
  br i1 %exitcond.not, label %for.end, label %for.body27, !llvm.loop !93

for.end:                                          ; preds = %for.body27, %for.cond22.preheader
  %scf.addr.1.lcssa = phi ptr [ %scf.addr.096, %for.cond22.preheader ], [ %incdec.ptr, %for.body27 ]
  %mul = mul nuw nsw i32 %and18, %conv
  %add = add nsw i32 %mul, %numbits.095
  br label %if.end44

if.end44:                                         ; preds = %for.body39.preheader, %for.cond33.preheader, %for.end
  %numbits.1 = phi i32 [ %add, %for.end ], [ %numbits.095, %for.cond33.preheader ], [ %numbits.095, %for.body39.preheader ]
  %scf.addr.3 = phi ptr [ %scf.addr.1.lcssa, %for.end ], [ %scf.addr.096, %for.cond33.preheader ], [ %uglygep99, %for.body39.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond101.not, label %for.end47, label %for.body, !llvm.loop !94

for.end47:                                        ; preds = %if.end44
  %9 = shl nuw nsw i64 %n.0, 3
  %10 = or i64 %9, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scf.addr.3, i8 0, i64 %10, i1 false), !tbaa !20
  ret i32 %numbits.1
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @III_get_scale_factors_1(ptr nocapture noundef writeonly %scf, ptr nocapture noundef readonly %gr_info) unnamed_addr #4 {
entry:
  %scalefac_compress = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 3
  %0 = load i32, ptr %scalefac_compress, align 4, !tbaa !75
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @III_get_scale_factors_1.slen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !92
  %conv = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds [2 x [16 x i8]], ptr @III_get_scale_factors_1.slen, i64 0, i64 1, i64 %idxprom
  %2 = load i8, ptr %arrayidx3, align 1, !tbaa !92
  %conv4 = zext i8 %2 to i32
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %3 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add nuw nsw i32 %conv4, %conv
  %mul = mul nuw nsw i32 %add, 18
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %4 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %scf.addr.0192 = phi ptr [ %incdec.ptr, %for.body ], [ %scf, %if.then ]
  %i.0191 = phi i32 [ %dec, %for.body ], [ 8, %if.then ]
  %call = tail call i32 @getbits_fast(i32 noundef %conv) #15
  %incdec.ptr = getelementptr inbounds i32, ptr %scf.addr.0192, i64 1
  store i32 %call, ptr %scf.addr.0192, align 4, !tbaa !20
  %dec = add nsw i32 %i.0191, -1
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %for.end, label %for.body, !llvm.loop !95

for.end:                                          ; preds = %for.body
  %sub = sub nsw i32 %mul, %conv
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %numbits.0 = phi i32 [ %sub, %for.end ], [ %mul, %if.then ]
  %i.1 = phi i32 [ 9, %for.end ], [ 18, %if.then ]
  %scf.addr.1 = phi ptr [ %incdec.ptr, %for.end ], [ %scf, %if.then ]
  br label %for.body10

for.body10:                                       ; preds = %if.end, %for.body10
  %scf.addr.2194 = phi ptr [ %scf.addr.1, %if.end ], [ %incdec.ptr12, %for.body10 ]
  %i.2193 = phi i32 [ %i.1, %if.end ], [ %dec14, %for.body10 ]
  %call11 = tail call i32 @getbits_fast(i32 noundef %conv) #15
  %incdec.ptr12 = getelementptr inbounds i32, ptr %scf.addr.2194, i64 1
  store i32 %call11, ptr %scf.addr.2194, align 4, !tbaa !20
  %dec14 = add nsw i32 %i.2193, -1
  %tobool9.not = icmp eq i32 %dec14, 0
  br i1 %tobool9.not, label %for.body18, label %for.body10, !llvm.loop !96

for.body18:                                       ; preds = %for.body10, %for.body18
  %scf.addr.3196 = phi ptr [ %incdec.ptr20, %for.body18 ], [ %incdec.ptr12, %for.body10 ]
  %i.3195 = phi i32 [ %dec22, %for.body18 ], [ 18, %for.body10 ]
  %call19 = tail call i32 @getbits_fast(i32 noundef %conv4) #15
  %incdec.ptr20 = getelementptr inbounds i32, ptr %scf.addr.3196, i64 1
  store i32 %call19, ptr %scf.addr.3196, align 4, !tbaa !20
  %dec22 = add nsw i32 %i.3195, -1
  %tobool17.not = icmp eq i32 %dec22, 0
  br i1 %tobool17.not, label %for.end23, label %for.body18, !llvm.loop !97

for.end23:                                        ; preds = %for.body18
  %incdec.ptr24 = getelementptr inbounds i32, ptr %scf.addr.3196, i64 2
  store i32 0, ptr %incdec.ptr20, align 4, !tbaa !20
  %incdec.ptr25 = getelementptr inbounds i32, ptr %scf.addr.3196, i64 3
  store i32 0, ptr %incdec.ptr24, align 4, !tbaa !20
  br label %if.end116

if.else:                                          ; preds = %entry
  %5 = load i32, ptr %gr_info, align 8, !tbaa !90
  %cmp29 = icmp slt i32 %5, 0
  br i1 %cmp29, label %for.body34, label %if.else51

for.body34:                                       ; preds = %if.else, %for.body34
  %scf.addr.4188 = phi ptr [ %incdec.ptr36, %for.body34 ], [ %scf, %if.else ]
  %i27.0187 = phi i32 [ %dec38, %for.body34 ], [ 11, %if.else ]
  %call35 = tail call i32 @getbits_fast(i32 noundef %conv) #15
  %incdec.ptr36 = getelementptr inbounds i32, ptr %scf.addr.4188, i64 1
  store i32 %call35, ptr %scf.addr.4188, align 4, !tbaa !20
  %dec38 = add nsw i32 %i27.0187, -1
  %tobool33.not = icmp eq i32 %dec38, 0
  br i1 %tobool33.not, label %for.body42, label %for.body34, !llvm.loop !98

for.body42:                                       ; preds = %for.body34, %for.body42
  %scf.addr.5190 = phi ptr [ %incdec.ptr44, %for.body42 ], [ %incdec.ptr36, %for.body34 ]
  %i27.1189 = phi i32 [ %dec46, %for.body42 ], [ 10, %for.body34 ]
  %call43 = tail call i32 @getbits_fast(i32 noundef %conv4) #15
  %incdec.ptr44 = getelementptr inbounds i32, ptr %scf.addr.5190, i64 1
  store i32 %call43, ptr %scf.addr.5190, align 4, !tbaa !20
  %dec46 = add nsw i32 %i27.1189, -1
  %tobool41.not = icmp eq i32 %dec46, 0
  br i1 %tobool41.not, label %for.end47, label %for.body42, !llvm.loop !99

for.end47:                                        ; preds = %for.body42
  %add48 = add nuw nsw i32 %conv4, %conv
  %mul49 = mul nuw nsw i32 %add48, 10
  %add50 = add nuw nsw i32 %mul49, %conv
  br label %if.end116

if.else51:                                        ; preds = %if.else
  %and = and i32 %5, 8
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %for.body56, label %if.else64

for.body56:                                       ; preds = %if.else51, %for.body56
  %scf.addr.6180 = phi ptr [ %incdec.ptr58, %for.body56 ], [ %scf, %if.else51 ]
  %i27.2179 = phi i32 [ %dec60, %for.body56 ], [ 6, %if.else51 ]
  %call57 = tail call i32 @getbits_fast(i32 noundef %conv) #15
  %incdec.ptr58 = getelementptr inbounds i32, ptr %scf.addr.6180, i64 1
  store i32 %call57, ptr %scf.addr.6180, align 4, !tbaa !20
  %dec60 = add nsw i32 %i27.2179, -1
  %tobool55.not = icmp eq i32 %dec60, 0
  br i1 %tobool55.not, label %for.end61, label %for.body56, !llvm.loop !100

for.end61:                                        ; preds = %for.body56
  %mul62 = mul nuw nsw i32 %conv, 6
  br label %if.end65

if.else64:                                        ; preds = %if.else51
  %add.ptr = getelementptr inbounds i32, ptr %scf, i64 6
  br label %if.end65

if.end65:                                         ; preds = %if.else64, %for.end61
  %numbits.1 = phi i32 [ 0, %if.else64 ], [ %mul62, %for.end61 ]
  %scf.addr.7 = phi ptr [ %add.ptr, %if.else64 ], [ %incdec.ptr58, %for.end61 ]
  %and66 = and i32 %5, 4
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %for.body71, label %if.else79

for.body71:                                       ; preds = %if.end65, %for.body71
  %scf.addr.8182 = phi ptr [ %incdec.ptr73, %for.body71 ], [ %scf.addr.7, %if.end65 ]
  %i27.3181 = phi i32 [ %dec75, %for.body71 ], [ 5, %if.end65 ]
  %call72 = tail call i32 @getbits_fast(i32 noundef %conv) #15
  %incdec.ptr73 = getelementptr inbounds i32, ptr %scf.addr.8182, i64 1
  store i32 %call72, ptr %scf.addr.8182, align 4, !tbaa !20
  %dec75 = add nsw i32 %i27.3181, -1
  %tobool70.not = icmp eq i32 %dec75, 0
  br i1 %tobool70.not, label %for.end76, label %for.body71, !llvm.loop !101

for.end76:                                        ; preds = %for.body71
  %mul77 = mul nuw nsw i32 %conv, 5
  %add78 = add nsw i32 %numbits.1, %mul77
  br label %if.end81

if.else79:                                        ; preds = %if.end65
  %add.ptr80 = getelementptr inbounds i32, ptr %scf.addr.7, i64 5
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %for.end76
  %numbits.2 = phi i32 [ %numbits.1, %if.else79 ], [ %add78, %for.end76 ]
  %scf.addr.9 = phi ptr [ %add.ptr80, %if.else79 ], [ %incdec.ptr73, %for.end76 ]
  %and82 = and i32 %5, 2
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %for.body87, label %if.else95

for.body87:                                       ; preds = %if.end81, %for.body87
  %scf.addr.10184 = phi ptr [ %incdec.ptr89, %for.body87 ], [ %scf.addr.9, %if.end81 ]
  %i27.4183 = phi i32 [ %dec91, %for.body87 ], [ 5, %if.end81 ]
  %call88 = tail call i32 @getbits_fast(i32 noundef %conv4) #15
  %incdec.ptr89 = getelementptr inbounds i32, ptr %scf.addr.10184, i64 1
  store i32 %call88, ptr %scf.addr.10184, align 4, !tbaa !20
  %dec91 = add nsw i32 %i27.4183, -1
  %tobool86.not = icmp eq i32 %dec91, 0
  br i1 %tobool86.not, label %for.end92, label %for.body87, !llvm.loop !102

for.end92:                                        ; preds = %for.body87
  %mul93 = mul nuw nsw i32 %conv4, 5
  %add94 = add nsw i32 %numbits.2, %mul93
  br label %if.end97

if.else95:                                        ; preds = %if.end81
  %add.ptr96 = getelementptr inbounds i32, ptr %scf.addr.9, i64 5
  br label %if.end97

if.end97:                                         ; preds = %if.else95, %for.end92
  %numbits.3 = phi i32 [ %numbits.2, %if.else95 ], [ %add94, %for.end92 ]
  %scf.addr.11 = phi ptr [ %add.ptr96, %if.else95 ], [ %incdec.ptr89, %for.end92 ]
  %and98 = and i32 %5, 1
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %for.body103, label %if.else111

for.body103:                                      ; preds = %if.end97, %for.body103
  %scf.addr.12186 = phi ptr [ %incdec.ptr105, %for.body103 ], [ %scf.addr.11, %if.end97 ]
  %i27.5185 = phi i32 [ %dec107, %for.body103 ], [ 5, %if.end97 ]
  %call104 = tail call i32 @getbits_fast(i32 noundef %conv4) #15
  %incdec.ptr105 = getelementptr inbounds i32, ptr %scf.addr.12186, i64 1
  store i32 %call104, ptr %scf.addr.12186, align 4, !tbaa !20
  %dec107 = add nsw i32 %i27.5185, -1
  %tobool102.not = icmp eq i32 %dec107, 0
  br i1 %tobool102.not, label %for.end108, label %for.body103, !llvm.loop !103

for.end108:                                       ; preds = %for.body103
  %mul109 = mul nuw nsw i32 %conv4, 5
  %add110 = add nsw i32 %numbits.3, %mul109
  br label %if.end116

if.else111:                                       ; preds = %if.end97
  %add.ptr112 = getelementptr inbounds i32, ptr %scf.addr.11, i64 5
  br label %if.end116

if.end116:                                        ; preds = %for.end47, %if.else111, %for.end108, %for.end23
  %scf.addr.13.sink = phi ptr [ %incdec.ptr25, %for.end23 ], [ %incdec.ptr44, %for.end47 ], [ %add.ptr112, %if.else111 ], [ %incdec.ptr105, %for.end108 ]
  %numbits.5 = phi i32 [ %numbits.0, %for.end23 ], [ %add50, %for.end47 ], [ %numbits.3, %if.else111 ], [ %add110, %for.end108 ]
  store i32 0, ptr %scf.addr.13.sink, align 4, !tbaa !20
  ret i32 %numbits.5
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @III_dequantize_sample(ptr noundef %xr, ptr nocapture noundef readonly %scf, ptr noundef %gr_info, i32 noundef %sfreq, i32 noundef %part2bits) unnamed_addr #4 {
entry:
  %l = alloca [3 x i32], align 4
  %max = alloca [4 x i32], align 16
  %scalefac_scale = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 14
  %0 = load i32, ptr %scalefac_scale, align 8, !tbaa !82
  %add = add i32 %0, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %l) #15
  %part2_3_length = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 1
  %1 = load i32, ptr %part2_3_length, align 4, !tbaa !72
  %sub = sub i32 %1, %part2bits
  %big_values = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 2
  %2 = load i32, ptr %big_values, align 8, !tbaa !73
  %region1start = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 11
  %3 = load i32, ptr %region1start, align 4, !tbaa !79
  %region2start = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 12
  %4 = load i32, ptr %region2start, align 8, !tbaa !80
  %sub1 = sub nsw i32 288, %2
  %shr = ashr i32 %sub1, 1
  %cmp.not = icmp sgt i32 %2, %3
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 %2, ptr %l, align 4, !tbaa !20
  %arrayidx2 = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 1
  store i32 0, ptr %arrayidx2, align 4, !tbaa !20
  br label %if.end17

if.else:                                          ; preds = %entry
  store i32 %3, ptr %l, align 4, !tbaa !20
  %cmp5.not = icmp sgt i32 %2, %4
  br i1 %cmp5.not, label %if.else11, label %if.then6

if.then6:                                         ; preds = %if.else
  %sub8 = sub nsw i32 %2, %3
  %arrayidx9 = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 1
  store i32 %sub8, ptr %arrayidx9, align 4, !tbaa !20
  br label %if.end17

if.else11:                                        ; preds = %if.else
  %sub13 = sub nsw i32 %4, %3
  %arrayidx14 = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 1
  store i32 %sub13, ptr %arrayidx14, align 4, !tbaa !20
  %sub15 = sub nsw i32 %2, %4
  br label %if.end17

if.end17:                                         ; preds = %if.then6, %if.else11, %if.then
  %.sink = phi i32 [ 0, %if.then6 ], [ %sub15, %if.else11 ], [ 0, %if.then ]
  %5 = phi i32 [ %3, %if.then6 ], [ %3, %if.else11 ], [ %2, %if.then ]
  %arrayidx10 = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 2
  store i32 %.sink, ptr %arrayidx10, align 4, !tbaa !20
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %6 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp18 = icmp eq i32 %6, 2
  br i1 %cmp18, label %if.then19, label %if.else335

if.then19:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max) #15
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %7 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else30, label %if.then20

if.then20:                                        ; preds = %if.then19
  %arrayidx31 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 3
  store i32 -1, ptr %arrayidx31, align 4, !tbaa !20
  %arrayidx22 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 2
  store i32 2, ptr %arrayidx22, align 8, !tbaa !20
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 1
  store i32 2, ptr %arrayidx23, align 4, !tbaa !20
  store i32 2, ptr %max, align 16, !tbaa !20
  %idxprom = sext i32 %sfreq to i64
  %arrayidx25 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %idxprom
  %arrayidx28 = getelementptr inbounds [9 x [3 x ptr]], ptr @mapend, i64 0, i64 %idxprom
  br label %if.end41

if.else30:                                        ; preds = %if.then19
  %idxprom35 = sext i32 %sfreq to i64
  %arrayidx37 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %idxprom35, i64 1
  %arrayidx40 = getelementptr inbounds [9 x [3 x ptr]], ptr @mapend, i64 0, i64 %idxprom35, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %max, i8 -1, i64 16, i1 false)
  br label %if.end41

if.end41:                                         ; preds = %if.else30, %if.then20
  %me.0.in = phi ptr [ %arrayidx28, %if.then20 ], [ %arrayidx40, %if.else30 ]
  %m.0.in = phi ptr [ %arrayidx25, %if.then20 ], [ %arrayidx37, %if.else30 ]
  %m.0 = load ptr, ptr %m.0.in, align 8, !tbaa !27
  %me.0 = load ptr, ptr %me.0.in, align 8, !tbaa !27
  %pow2gain = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 17
  br label %for.body

for.cond173.preheader:                            ; preds = %for.end
  %tobool1741023 = icmp ugt i32 %sub1, 1
  %cmp1751024 = icmp sgt i32 %part2remain.1.lcssa, 0
  %or.cond1025 = select i1 %tobool1741023, i1 %cmp1751024, i1 false
  br i1 %or.cond1025, label %for.body177.lr.ph, label %while.cond268.preheader

for.body177.lr.ph:                                ; preds = %for.cond173.preheader
  %count1table_select = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 15
  br label %for.body177

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end41
  %8 = phi i32 [ %5, %if.end41 ], [ %.pre1058, %for.end.for.body_crit_edge ]
  %cmp42 = phi i1 [ true, %if.end41 ], [ false, %for.end.for.body_crit_edge ]
  %indvars.iv1053 = phi i64 [ 0, %if.end41 ], [ 1, %for.end.for.body_crit_edge ]
  %scf.addr.01004 = phi ptr [ %scf, %if.end41 ], [ %scf.addr.1.lcssa, %for.end.for.body_crit_edge ]
  %xrpnt.01003 = phi ptr [ %xr, %if.end41 ], [ %xrpnt.1.lcssa, %for.end.for.body_crit_edge ]
  %mc.01002 = phi i32 [ 0, %if.end41 ], [ %mc.1.lcssa, %for.end.for.body_crit_edge ]
  %m.11001 = phi ptr [ %m.0, %if.end41 ], [ %m.2.lcssa, %for.end.for.body_crit_edge ]
  %v.01000 = phi double [ 0.000000e+00, %if.end41 ], [ %v.1.lcssa, %for.end.for.body_crit_edge ]
  %cb.0999 = phi i32 [ 0, %if.end41 ], [ %cb.1.lcssa, %for.end.for.body_crit_edge ]
  %lwin.0998 = phi i32 [ 0, %if.end41 ], [ %lwin.1.lcssa, %for.end.for.body_crit_edge ]
  %step.0997 = phi i32 [ 0, %if.end41 ], [ %step.1.lcssa, %for.end.for.body_crit_edge ]
  %part2remain.0995 = phi i32 [ %sub, %if.end41 ], [ %part2remain.1.lcssa, %for.end.for.body_crit_edge ]
  %arrayidx46 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 6, i64 %indvars.iv1053
  %9 = load i32, ptr %arrayidx46, align 4, !tbaa !20
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds %struct.newhuff, ptr @ht, i64 %idx.ext
  %tobool48.not975 = icmp eq i32 %8, 0
  br i1 %tobool48.not975, label %for.end, label %for.body49.lr.ph

for.body49.lr.ph:                                 ; preds = %for.body
  %table = getelementptr inbounds %struct.newhuff, ptr @ht, i64 %idx.ext, i32 1
  %10 = load ptr, ptr %table, align 8, !tbaa !104
  br label %for.body49

for.body49:                                       ; preds = %for.body49.lr.ph, %if.end166
  %scf.addr.1985 = phi ptr [ %scf.addr.01004, %for.body49.lr.ph ], [ %scf.addr.2, %if.end166 ]
  %xrpnt.1984 = phi ptr [ %xrpnt.01003, %for.body49.lr.ph ], [ %add.ptr168, %if.end166 ]
  %lp.0983 = phi i32 [ %8, %for.body49.lr.ph ], [ %dec169, %if.end166 ]
  %mc.1982 = phi i32 [ %mc.01002, %for.body49.lr.ph ], [ %dec170, %if.end166 ]
  %m.2981 = phi ptr [ %m.11001, %for.body49.lr.ph ], [ %m.3, %if.end166 ]
  %v.1980 = phi double [ %v.01000, %for.body49.lr.ph ], [ %v.2, %if.end166 ]
  %cb.1979 = phi i32 [ %cb.0999, %for.body49.lr.ph ], [ %cb.2, %if.end166 ]
  %lwin.1978 = phi i32 [ %lwin.0998, %for.body49.lr.ph ], [ %lwin.2, %if.end166 ]
  %step.1977 = phi i32 [ %step.0997, %for.body49.lr.ph ], [ %step.2, %if.end166 ]
  %part2remain.1976 = phi i32 [ %part2remain.0995, %for.body49.lr.ph ], [ %part2remain.4, %if.end166 ]
  %tobool50.not = icmp eq i32 %mc.1982, 0
  br i1 %tobool50.not, label %if.then51, label %if.end70

if.then51:                                        ; preds = %for.body49
  %incdec.ptr = getelementptr inbounds i32, ptr %m.2981, i64 1
  %11 = load i32, ptr %m.2981, align 4, !tbaa !20
  %incdec.ptr52 = getelementptr inbounds i32, ptr %m.2981, i64 2
  %12 = load i32, ptr %incdec.ptr, align 4, !tbaa !20
  %idx.ext53 = sext i32 %12 to i64
  %add.ptr54 = getelementptr inbounds double, ptr %xr, i64 %idx.ext53
  %incdec.ptr55 = getelementptr inbounds i32, ptr %m.2981, i64 3
  %13 = load i32, ptr %incdec.ptr52, align 4, !tbaa !20
  %incdec.ptr56 = getelementptr inbounds i32, ptr %m.2981, i64 4
  %14 = load i32, ptr %incdec.ptr55, align 4, !tbaa !20
  %cmp57 = icmp eq i32 %13, 3
  br i1 %cmp57, label %if.end70.sink.split, label %if.else62

if.else62:                                        ; preds = %if.then51
  %idxprom63 = sext i32 %13 to i64
  %arrayidx64 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 16, i64 %idxprom63
  br label %if.end70.sink.split

if.end70.sink.split:                              ; preds = %if.then51, %if.else62
  %pow2gain.sink = phi ptr [ %arrayidx64, %if.else62 ], [ %pow2gain, %if.then51 ]
  %step.2.ph = phi i32 [ 3, %if.else62 ], [ 1, %if.then51 ]
  %lwin.2.ph = phi i32 [ %13, %if.else62 ], [ 3, %if.then51 ]
  %15 = load ptr, ptr %pow2gain.sink, align 8, !tbaa !27
  %incdec.ptr59 = getelementptr inbounds i32, ptr %scf.addr.1985, i64 1
  %16 = load i32, ptr %scf.addr.1985, align 4, !tbaa !20
  %shl = shl i32 %16, %add
  %idxprom60 = sext i32 %shl to i64
  %arrayidx61 = getelementptr inbounds double, ptr %15, i64 %idxprom60
  %17 = load double, ptr %arrayidx61, align 8, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.end70.sink.split, %for.body49
  %step.2 = phi i32 [ %step.1977, %for.body49 ], [ %step.2.ph, %if.end70.sink.split ]
  %lwin.2 = phi i32 [ %lwin.1978, %for.body49 ], [ %lwin.2.ph, %if.end70.sink.split ]
  %cb.2 = phi i32 [ %cb.1979, %for.body49 ], [ %14, %if.end70.sink.split ]
  %v.2 = phi double [ %v.1980, %for.body49 ], [ %17, %if.end70.sink.split ]
  %m.3 = phi ptr [ %m.2981, %for.body49 ], [ %incdec.ptr56, %if.end70.sink.split ]
  %mc.2 = phi i32 [ %mc.1982, %for.body49 ], [ %11, %if.end70.sink.split ]
  %xrpnt.2 = phi ptr [ %xrpnt.1984, %for.body49 ], [ %add.ptr54, %if.end70.sink.split ]
  %scf.addr.2 = phi ptr [ %scf.addr.1985, %for.body49 ], [ %incdec.ptr59, %if.end70.sink.split ]
  %18 = load i16, ptr %10, align 2, !tbaa !29
  %cmp72970 = icmp slt i16 %18, 0
  br i1 %cmp72970, label %while.body, label %while.end

while.body:                                       ; preds = %if.end70, %if.end78
  %19 = phi i16 [ %20, %if.end78 ], [ %18, %if.end70 ]
  %val.1.pn = phi ptr [ %val.1, %if.end78 ], [ %10, %if.end70 ]
  %part2remain.2971 = phi i32 [ %dec, %if.end78 ], [ %part2remain.1976, %if.end70 ]
  %incdec.ptr71972 = getelementptr inbounds i16, ptr %val.1.pn, i64 1
  %call = tail call fastcc i32 @get1bit()
  %tobool74.not = icmp eq i32 %call, 0
  br i1 %tobool74.not, label %if.end78, label %if.then75

if.then75:                                        ; preds = %while.body
  %idx.ext76 = sext i16 %19 to i64
  %idx.neg = sub nsw i64 0, %idx.ext76
  %add.ptr77 = getelementptr inbounds i16, ptr %incdec.ptr71972, i64 %idx.neg
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %while.body
  %val.1 = phi ptr [ %add.ptr77, %if.then75 ], [ %incdec.ptr71972, %while.body ]
  %dec = add nsw i32 %part2remain.2971, -1
  %20 = load i16, ptr %val.1, align 2, !tbaa !29
  %cmp72 = icmp slt i16 %20, 0
  br i1 %cmp72, label %while.body, label %while.end, !llvm.loop !106

while.end:                                        ; preds = %if.end78, %if.end70
  %part2remain.2.lcssa = phi i32 [ %part2remain.1976, %if.end70 ], [ %dec, %if.end78 ]
  %.lcssa = phi i16 [ %18, %if.end70 ], [ %20, %if.end78 ]
  %conv887 = zext i16 %.lcssa to i32
  %shr79888 = lshr i32 %conv887, 4
  %and = and i32 %conv887, 15
  %cmp80 = icmp eq i32 %shr79888, 15
  br i1 %cmp80, label %if.then82, label %if.else100

if.then82:                                        ; preds = %while.end
  %idxprom83 = sext i32 %lwin.2 to i64
  %arrayidx84 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 %idxprom83
  store i32 %cb.2, ptr %arrayidx84, align 4, !tbaa !20
  %21 = load i32, ptr %add.ptr, align 16, !tbaa !107
  %add85.neg = xor i32 %21, -1
  %sub86 = add i32 %part2remain.2.lcssa, %add85.neg
  %call88 = tail call i32 @getbits(i32 noundef %21) #15
  %add89 = add i32 %call88, 15
  %call90 = tail call fastcc i32 @get1bit()
  %tobool91.not = icmp eq i32 %call90, 0
  %idxprom96 = sext i32 %add89 to i64
  %arrayidx97 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom96
  %22 = load double, ptr %arrayidx97, align 8, !tbaa !5
  br i1 %tobool91.not, label %if.else95, label %if.then92

if.then92:                                        ; preds = %if.then82
  %fneg = fneg fast double %v.2
  %mul = fmul fast double %22, %fneg
  store double %mul, ptr %xrpnt.2, align 8, !tbaa !5
  br label %if.end120

if.else95:                                        ; preds = %if.then82
  %mul98 = fmul fast double %22, %v.2
  store double %mul98, ptr %xrpnt.2, align 8, !tbaa !5
  br label %if.end120

if.else100:                                       ; preds = %while.end
  %tobool101.not = icmp ult i16 %.lcssa, 16
  br i1 %tobool101.not, label %if.else118, label %if.then102

if.then102:                                       ; preds = %if.else100
  %idxprom103 = sext i32 %lwin.2 to i64
  %arrayidx104 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 %idxprom103
  store i32 %cb.2, ptr %arrayidx104, align 4, !tbaa !20
  %call105 = tail call fastcc i32 @get1bit()
  %tobool106.not = icmp eq i32 %call105, 0
  %idxprom113889 = zext i32 %shr79888 to i64
  %arrayidx114 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom113889
  %23 = load double, ptr %arrayidx114, align 8, !tbaa !5
  %fneg110 = fneg fast double %23
  %spec.select = select i1 %tobool106.not, double %23, double %fneg110
  %storemerge884 = fmul fast double %spec.select, %v.2
  store double %storemerge884, ptr %xrpnt.2, align 8, !tbaa !5
  %dec117 = add nsw i32 %part2remain.2.lcssa, -1
  br label %if.end120

if.else118:                                       ; preds = %if.else100
  store double 0.000000e+00, ptr %xrpnt.2, align 8, !tbaa !5
  br label %if.end120

if.end120:                                        ; preds = %if.then102, %if.else118, %if.then92, %if.else95
  %part2remain.3 = phi i32 [ %sub86, %if.then92 ], [ %sub86, %if.else95 ], [ %dec117, %if.then102 ], [ %part2remain.2.lcssa, %if.else118 ]
  %24 = zext i32 %step.2 to i64
  %add.ptr122 = getelementptr inbounds double, ptr %xrpnt.2, i64 %24
  switch i32 %and, label %if.then148 [
    i32 15, label %if.then125
    i32 0, label %if.else164
  ]

if.then125:                                       ; preds = %if.end120
  %idxprom126 = sext i32 %lwin.2 to i64
  %arrayidx127 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 %idxprom126
  store i32 %cb.2, ptr %arrayidx127, align 4, !tbaa !20
  %25 = load i32, ptr %add.ptr, align 16, !tbaa !107
  %add129.neg = xor i32 %25, -1
  %sub130 = add i32 %part2remain.3, %add129.neg
  %call132 = tail call i32 @getbits(i32 noundef %25) #15
  %add133 = add i32 %call132, 15
  %call134 = tail call fastcc i32 @get1bit()
  %tobool135.not = icmp eq i32 %call134, 0
  %idxprom142 = sext i32 %add133 to i64
  %arrayidx143 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom142
  %26 = load double, ptr %arrayidx143, align 8, !tbaa !5
  br i1 %tobool135.not, label %if.else141, label %if.then136

if.then136:                                       ; preds = %if.then125
  %fneg139 = fneg fast double %v.2
  %mul140 = fmul fast double %26, %fneg139
  store double %mul140, ptr %add.ptr122, align 8, !tbaa !5
  br label %if.end166

if.else141:                                       ; preds = %if.then125
  %mul144 = fmul fast double %26, %v.2
  store double %mul144, ptr %add.ptr122, align 8, !tbaa !5
  br label %if.end166

if.then148:                                       ; preds = %if.end120
  %idxprom149 = sext i32 %lwin.2 to i64
  %arrayidx150 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 %idxprom149
  store i32 %cb.2, ptr %arrayidx150, align 4, !tbaa !20
  %call151 = tail call fastcc i32 @get1bit()
  %tobool152.not = icmp eq i32 %call151, 0
  %idxprom159 = zext i32 %and to i64
  %arrayidx160 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom159
  %27 = load double, ptr %arrayidx160, align 8, !tbaa !5
  %fneg156 = fneg fast double %27
  %spec.select1107 = select i1 %tobool152.not, double %27, double %fneg156
  %storemerge882 = fmul fast double %spec.select1107, %v.2
  store double %storemerge882, ptr %add.ptr122, align 8, !tbaa !5
  %dec163 = add nsw i32 %part2remain.3, -1
  br label %if.end166

if.else164:                                       ; preds = %if.end120
  store double 0.000000e+00, ptr %add.ptr122, align 8, !tbaa !5
  br label %if.end166

if.end166:                                        ; preds = %if.then148, %if.else164, %if.then136, %if.else141
  %part2remain.4 = phi i32 [ %sub130, %if.then136 ], [ %sub130, %if.else141 ], [ %dec163, %if.then148 ], [ %part2remain.3, %if.else164 ]
  %add.ptr168 = getelementptr inbounds double, ptr %add.ptr122, i64 %24
  %dec169 = add nsw i32 %lp.0983, -1
  %dec170 = add nsw i32 %mc.2, -1
  %tobool48.not = icmp eq i32 %dec169, 0
  br i1 %tobool48.not, label %for.end, label %for.body49, !llvm.loop !108

for.end:                                          ; preds = %if.end166, %for.body
  %part2remain.1.lcssa = phi i32 [ %part2remain.0995, %for.body ], [ %part2remain.4, %if.end166 ]
  %step.1.lcssa = phi i32 [ %step.0997, %for.body ], [ %step.2, %if.end166 ]
  %lwin.1.lcssa = phi i32 [ %lwin.0998, %for.body ], [ %lwin.2, %if.end166 ]
  %cb.1.lcssa = phi i32 [ %cb.0999, %for.body ], [ %cb.2, %if.end166 ]
  %v.1.lcssa = phi double [ %v.01000, %for.body ], [ %v.2, %if.end166 ]
  %m.2.lcssa = phi ptr [ %m.11001, %for.body ], [ %m.3, %if.end166 ]
  %mc.1.lcssa = phi i32 [ %mc.01002, %for.body ], [ %dec170, %if.end166 ]
  %xrpnt.1.lcssa = phi ptr [ %xrpnt.01003, %for.body ], [ %add.ptr168, %if.end166 ]
  %scf.addr.1.lcssa = phi ptr [ %scf.addr.01004, %for.body ], [ %scf.addr.2, %if.end166 ]
  br i1 %cmp42, label %for.end.for.body_crit_edge, label %for.cond173.preheader, !llvm.loop !109

for.end.for.body_crit_edge:                       ; preds = %for.end
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 1
  %arrayidx44.phi.trans.insert = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 %indvars.iv.next1054
  %.pre1058 = load i32, ptr %arrayidx44.phi.trans.insert, align 4, !tbaa !20
  br label %for.body

while.cond268.preheader:                          ; preds = %for.end264, %if.then243, %for.cond173.preheader
  %part2remain.5.lcssa = phi i32 [ %part2remain.1.lcssa, %for.cond173.preheader ], [ %part2remain.81013, %if.then243 ], [ %part2remain.9, %for.end264 ]
  %step.3.lcssa = phi i32 [ %step.1.lcssa, %for.cond173.preheader ], [ %step.6, %if.then243 ], [ %step.6, %for.end264 ]
  %m.4.lcssa = phi ptr [ %m.2.lcssa, %for.cond173.preheader ], [ %m.7, %if.then243 ], [ %m.7, %for.end264 ]
  %mc.3.lcssa = phi i32 [ %mc.1.lcssa, %for.cond173.preheader ], [ %mc.6, %if.then243 ], [ %mc.6, %for.end264 ]
  %xrpnt.3.lcssa = phi ptr [ %xrpnt.1.lcssa, %for.cond173.preheader ], [ %xrpnt.6, %if.then243 ], [ %add.ptr261, %for.end264 ]
  %cmp2691041 = icmp ult ptr %m.4.lcssa, %me.0
  br i1 %cmp2691041, label %while.body271, label %while.end291

for.body177:                                      ; preds = %for.body177.lr.ph, %for.end264
  %scf.addr.31035 = phi ptr [ %scf.addr.1.lcssa, %for.body177.lr.ph ], [ %scf.addr.6, %for.end264 ]
  %xrpnt.31034 = phi ptr [ %xrpnt.1.lcssa, %for.body177.lr.ph ], [ %add.ptr261, %for.end264 ]
  %l3.01033 = phi i32 [ %shr, %for.body177.lr.ph ], [ %dec266, %for.end264 ]
  %mc.31032 = phi i32 [ %mc.1.lcssa, %for.body177.lr.ph ], [ %mc.6, %for.end264 ]
  %m.41031 = phi ptr [ %m.2.lcssa, %for.body177.lr.ph ], [ %m.7, %for.end264 ]
  %v.31030 = phi double [ %v.1.lcssa, %for.body177.lr.ph ], [ %v.6, %for.end264 ]
  %cb.31029 = phi i32 [ %cb.1.lcssa, %for.body177.lr.ph ], [ %cb.6, %for.end264 ]
  %lwin.31028 = phi i32 [ %lwin.1.lcssa, %for.body177.lr.ph ], [ %lwin.6, %for.end264 ]
  %step.31027 = phi i32 [ %step.1.lcssa, %for.body177.lr.ph ], [ %step.6, %for.end264 ]
  %part2remain.51026 = phi i32 [ %part2remain.1.lcssa, %for.body177.lr.ph ], [ %part2remain.9, %for.end264 ]
  %28 = load i32, ptr %count1table_select, align 4, !tbaa !83
  %idx.ext179 = zext i32 %28 to i64
  %table182 = getelementptr inbounds %struct.newhuff, ptr @htc, i64 %idx.ext179, i32 1
  %29 = load ptr, ptr %table182, align 8, !tbaa !104
  %30 = load i16, ptr %29, align 2, !tbaa !29
  %cmp1861006 = icmp slt i16 %30, 0
  br i1 %cmp1861006, label %while.body188, label %while.end203

while.body188:                                    ; preds = %for.body177, %if.end202
  %31 = phi i16 [ %32, %if.end202 ], [ %30, %for.body177 ]
  %val181.1.pn = phi ptr [ %val181.1, %if.end202 ], [ %29, %for.body177 ]
  %part2remain.61007 = phi i32 [ %dec189, %if.end202 ], [ %part2remain.51026, %for.body177 ]
  %incdec.ptr1841008 = getelementptr inbounds i16, ptr %val181.1.pn, i64 1
  %dec189 = add nsw i32 %part2remain.61007, -1
  %cmp190 = icmp slt i32 %part2remain.61007, 1
  br i1 %cmp190, label %while.end203, label %if.end194

if.end194:                                        ; preds = %while.body188
  %call195 = tail call fastcc i32 @get1bit()
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end202, label %if.then197

if.then197:                                       ; preds = %if.end194
  %idx.ext199 = sext i16 %31 to i64
  %idx.neg200 = sub nsw i64 0, %idx.ext199
  %add.ptr201 = getelementptr inbounds i16, ptr %incdec.ptr1841008, i64 %idx.neg200
  br label %if.end202

if.end202:                                        ; preds = %if.then197, %if.end194
  %val181.1 = phi ptr [ %add.ptr201, %if.then197 ], [ %incdec.ptr1841008, %if.end194 ]
  %32 = load i16, ptr %val181.1, align 2, !tbaa !29
  %cmp186 = icmp slt i16 %32, 0
  br i1 %cmp186, label %while.body188, label %while.end203, !llvm.loop !110

while.end203:                                     ; preds = %if.end202, %while.body188, %for.body177
  %part2remain.6.lcssa = phi i32 [ %part2remain.51026, %for.body177 ], [ 0, %while.body188 ], [ %dec189, %if.end202 ]
  %a.0 = phi i16 [ %30, %for.body177 ], [ 0, %while.body188 ], [ %32, %if.end202 ]
  %conv2391059 = zext i16 %a.0 to i32
  br label %for.body207

for.body207:                                      ; preds = %while.end203, %if.end259
  %scf.addr.41022 = phi ptr [ %scf.addr.31035, %while.end203 ], [ %scf.addr.6, %if.end259 ]
  %xrpnt.41021 = phi ptr [ %xrpnt.31034, %while.end203 ], [ %add.ptr261, %if.end259 ]
  %mc.41020 = phi i32 [ %mc.31032, %while.end203 ], [ %mc.6, %if.end259 ]
  %m.51019 = phi ptr [ %m.41031, %while.end203 ], [ %m.7, %if.end259 ]
  %v.41018 = phi double [ %v.31030, %while.end203 ], [ %v.6, %if.end259 ]
  %cb.41017 = phi i32 [ %cb.31029, %while.end203 ], [ %cb.6, %if.end259 ]
  %lwin.41016 = phi i32 [ %lwin.31028, %while.end203 ], [ %lwin.6, %if.end259 ]
  %step.41015 = phi i32 [ %step.31027, %while.end203 ], [ %step.6, %if.end259 ]
  %i.11014 = phi i32 [ 0, %while.end203 ], [ %inc263, %if.end259 ]
  %part2remain.81013 = phi i32 [ %part2remain.6.lcssa, %while.end203 ], [ %part2remain.9, %if.end259 ]
  %and208 = and i32 %i.11014, 1
  %tobool209.not = icmp eq i32 %and208, 0
  br i1 %tobool209.not, label %if.then210, label %if.end238

if.then210:                                       ; preds = %for.body207
  %tobool211.not = icmp eq i32 %mc.41020, 0
  br i1 %tobool211.not, label %if.then212, label %if.end236

if.then212:                                       ; preds = %if.then210
  %incdec.ptr213 = getelementptr inbounds i32, ptr %m.51019, i64 1
  %33 = load i32, ptr %m.51019, align 4, !tbaa !20
  %incdec.ptr214 = getelementptr inbounds i32, ptr %m.51019, i64 2
  %34 = load i32, ptr %incdec.ptr213, align 4, !tbaa !20
  %idx.ext215 = sext i32 %34 to i64
  %add.ptr216 = getelementptr inbounds double, ptr %xr, i64 %idx.ext215
  %incdec.ptr217 = getelementptr inbounds i32, ptr %m.51019, i64 3
  %35 = load i32, ptr %incdec.ptr214, align 4, !tbaa !20
  %incdec.ptr218 = getelementptr inbounds i32, ptr %m.51019, i64 4
  %36 = load i32, ptr %incdec.ptr217, align 4, !tbaa !20
  %cmp219 = icmp eq i32 %35, 3
  br i1 %cmp219, label %if.end236.sink.split, label %if.else227

if.else227:                                       ; preds = %if.then212
  %idxprom229 = sext i32 %35 to i64
  %arrayidx230 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 16, i64 %idxprom229
  br label %if.end236.sink.split

if.end236.sink.split:                             ; preds = %if.then212, %if.else227
  %pow2gain.sink1105 = phi ptr [ %arrayidx230, %if.else227 ], [ %pow2gain, %if.then212 ]
  %step.5.ph = phi i32 [ 3, %if.else227 ], [ 1, %if.then212 ]
  %lwin.5.ph = phi i32 [ %35, %if.else227 ], [ 3, %if.then212 ]
  %37 = load ptr, ptr %pow2gain.sink1105, align 8, !tbaa !27
  %incdec.ptr223 = getelementptr inbounds i32, ptr %scf.addr.41022, i64 1
  %38 = load i32, ptr %scf.addr.41022, align 4, !tbaa !20
  %shl224 = shl i32 %38, %add
  %idxprom225 = sext i32 %shl224 to i64
  %arrayidx226 = getelementptr inbounds double, ptr %37, i64 %idxprom225
  %39 = load double, ptr %arrayidx226, align 8, !tbaa !5
  br label %if.end236

if.end236:                                        ; preds = %if.end236.sink.split, %if.then210
  %step.5 = phi i32 [ %step.41015, %if.then210 ], [ %step.5.ph, %if.end236.sink.split ]
  %lwin.5 = phi i32 [ %lwin.41016, %if.then210 ], [ %lwin.5.ph, %if.end236.sink.split ]
  %cb.5 = phi i32 [ %cb.41017, %if.then210 ], [ %36, %if.end236.sink.split ]
  %v.5 = phi double [ %v.41018, %if.then210 ], [ %39, %if.end236.sink.split ]
  %m.6 = phi ptr [ %m.51019, %if.then210 ], [ %incdec.ptr218, %if.end236.sink.split ]
  %mc.5 = phi i32 [ %mc.41020, %if.then210 ], [ %33, %if.end236.sink.split ]
  %xrpnt.5 = phi ptr [ %xrpnt.41021, %if.then210 ], [ %add.ptr216, %if.end236.sink.split ]
  %scf.addr.5 = phi ptr [ %scf.addr.41022, %if.then210 ], [ %incdec.ptr223, %if.end236.sink.split ]
  %dec237 = add nsw i32 %mc.5, -1
  br label %if.end238

if.end238:                                        ; preds = %if.end236, %for.body207
  %step.6 = phi i32 [ %step.41015, %for.body207 ], [ %step.5, %if.end236 ]
  %lwin.6 = phi i32 [ %lwin.41016, %for.body207 ], [ %lwin.5, %if.end236 ]
  %cb.6 = phi i32 [ %cb.41017, %for.body207 ], [ %cb.5, %if.end236 ]
  %v.6 = phi double [ %v.41018, %for.body207 ], [ %v.5, %if.end236 ]
  %m.7 = phi ptr [ %m.51019, %for.body207 ], [ %m.6, %if.end236 ]
  %mc.6 = phi i32 [ %mc.41020, %for.body207 ], [ %dec237, %if.end236 ]
  %xrpnt.6 = phi ptr [ %xrpnt.41021, %for.body207 ], [ %xrpnt.5, %if.end236 ]
  %scf.addr.6 = phi ptr [ %scf.addr.41022, %for.body207 ], [ %scf.addr.5, %if.end236 ]
  %shr240 = lshr i32 8, %i.11014
  %and241 = and i32 %shr240, %conv2391059
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.end259, label %if.then243

if.then243:                                       ; preds = %if.end238
  %idxprom244 = sext i32 %lwin.6 to i64
  %arrayidx245 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 %idxprom244
  store i32 %cb.6, ptr %arrayidx245, align 4, !tbaa !20
  %cmp247 = icmp slt i32 %part2remain.81013, 1
  br i1 %cmp247, label %while.cond268.preheader, label %if.end251

if.end251:                                        ; preds = %if.then243
  %dec246 = add nsw i32 %part2remain.81013, -1
  %call252 = tail call fastcc i32 @get1bit()
  %tobool253.not = icmp eq i32 %call252, 0
  %fneg255 = fneg fast double %v.6
  %spec.select1110 = select i1 %tobool253.not, double %v.6, double %fneg255
  br label %if.end259

if.end259:                                        ; preds = %if.end251, %if.end238
  %fneg255.sink = phi double [ 0.000000e+00, %if.end238 ], [ %spec.select1110, %if.end251 ]
  %part2remain.9 = phi i32 [ %part2remain.81013, %if.end238 ], [ %dec246, %if.end251 ]
  store double %fneg255.sink, ptr %xrpnt.6, align 8, !tbaa !5
  %40 = zext i32 %step.6 to i64
  %add.ptr261 = getelementptr inbounds double, ptr %xrpnt.6, i64 %40
  %inc263 = add nuw nsw i32 %i.11014, 1
  %exitcond1057.not = icmp eq i32 %inc263, 4
  br i1 %exitcond1057.not, label %for.end264, label %for.body207, !llvm.loop !111

for.end264:                                       ; preds = %if.end259
  %dec266 = add nsw i32 %l3.01033, -1
  %tobool174 = icmp ne i32 %dec266, 0
  %cmp175 = icmp sgt i32 %part2remain.9, 0
  %or.cond = select i1 %tobool174, i1 %cmp175, i1 false
  br i1 %or.cond, label %for.body177, label %while.cond268.preheader, !llvm.loop !112

while.body271:                                    ; preds = %while.cond268.preheader, %if.end285
  %xrpnt.81045 = phi ptr [ %add.ptr290, %if.end285 ], [ %xrpnt.3.lcssa, %while.cond268.preheader ]
  %mc.81044 = phi i32 [ %dec286, %if.end285 ], [ %mc.3.lcssa, %while.cond268.preheader ]
  %m.91043 = phi ptr [ %m.10, %if.end285 ], [ %m.4.lcssa, %while.cond268.preheader ]
  %step.81042 = phi i32 [ %step.10, %if.end285 ], [ %step.3.lcssa, %while.cond268.preheader ]
  %tobool272.not = icmp eq i32 %mc.81044, 0
  br i1 %tobool272.not, label %if.then273, label %if.end285

if.then273:                                       ; preds = %while.body271
  %incdec.ptr274 = getelementptr inbounds i32, ptr %m.91043, i64 1
  %41 = load i32, ptr %m.91043, align 4, !tbaa !20
  %incdec.ptr275 = getelementptr inbounds i32, ptr %m.91043, i64 2
  %42 = load i32, ptr %incdec.ptr274, align 4, !tbaa !20
  %idx.ext276 = sext i32 %42 to i64
  %add.ptr277 = getelementptr inbounds double, ptr %xr, i64 %idx.ext276
  %43 = load i32, ptr %incdec.ptr275, align 4, !tbaa !20
  %cmp279 = icmp eq i32 %43, 3
  %. = select i1 %cmp279, i32 1, i32 3
  %incdec.ptr284 = getelementptr inbounds i32, ptr %m.91043, i64 4
  br label %if.end285

if.end285:                                        ; preds = %if.then273, %while.body271
  %step.10 = phi i32 [ %step.81042, %while.body271 ], [ %., %if.then273 ]
  %m.10 = phi ptr [ %m.91043, %while.body271 ], [ %incdec.ptr284, %if.then273 ]
  %mc.9 = phi i32 [ %mc.81044, %while.body271 ], [ %41, %if.then273 ]
  %xrpnt.9 = phi ptr [ %xrpnt.81045, %while.body271 ], [ %add.ptr277, %if.then273 ]
  %dec286 = add nsw i32 %mc.9, -1
  store double 0.000000e+00, ptr %xrpnt.9, align 8, !tbaa !5
  %44 = zext i32 %step.10 to i64
  %add.ptr288 = getelementptr inbounds double, ptr %xrpnt.9, i64 %44
  store double 0.000000e+00, ptr %add.ptr288, align 8, !tbaa !5
  %add.ptr290 = getelementptr inbounds double, ptr %add.ptr288, i64 %44
  %cmp269 = icmp ult ptr %m.10, %me.0
  br i1 %cmp269, label %while.body271, label %while.end291, !llvm.loop !113

while.end291:                                     ; preds = %if.end285, %while.cond268.preheader
  %45 = load i32, ptr %max, align 16, !tbaa !20
  %add293 = add nsw i32 %45, 1
  %maxband = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 8
  store i32 %add293, ptr %maxband, align 8, !tbaa !20
  %arrayidx295 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 1
  %46 = load i32, ptr %arrayidx295, align 4, !tbaa !20
  %add296 = add nsw i32 %46, 1
  %arrayidx298 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 8, i64 1
  store i32 %add296, ptr %arrayidx298, align 4, !tbaa !20
  %arrayidx299 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 2
  %47 = load i32, ptr %arrayidx299, align 8, !tbaa !20
  %add300 = add nsw i32 %47, 1
  %arrayidx302 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 8, i64 2
  store i32 %add300, ptr %arrayidx302, align 8, !tbaa !20
  %arrayidx303 = getelementptr inbounds [4 x i32], ptr %max, i64 0, i64 3
  %48 = load i32, ptr %arrayidx303, align 4, !tbaa !20
  %add304 = add nsw i32 %48, 1
  %maxbandl = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 9
  store i32 %add304, ptr %maxbandl, align 4, !tbaa !114
  %49 = tail call i32 @llvm.smax.i32(i32 %45, i32 %46)
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 %47)
  %add319 = add nsw i32 %50, 1
  %tobool320.not = icmp eq i32 %add319, 0
  %idxprom327 = sext i32 %sfreq to i64
  br i1 %tobool320.not, label %cond.false326, label %cond.true321

cond.true321:                                     ; preds = %while.end291
  %idxprom324 = sext i32 %add319 to i64
  %arrayidx325 = getelementptr inbounds [9 x [14 x i32]], ptr @shortLimit, i64 0, i64 %idxprom327, i64 %idxprom324
  br label %cond.end333

cond.false326:                                    ; preds = %while.end291
  %idxprom331 = sext i32 %add304 to i64
  %arrayidx332 = getelementptr inbounds [9 x [23 x i32]], ptr @longLimit, i64 0, i64 %idxprom327, i64 %idxprom331
  br label %cond.end333

cond.end333:                                      ; preds = %cond.false326, %cond.true321
  %cond334.in = phi ptr [ %arrayidx325, %cond.true321 ], [ %arrayidx332, %cond.false326 ]
  %cond334 = load i32, ptr %cond334.in, align 4, !tbaa !20
  %maxb = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 10
  store i32 %cond334, ptr %maxb, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max) #15
  br label %if.end597

if.else335:                                       ; preds = %if.end17
  %preflag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 13
  %51 = load i32, ptr %preflag, align 4, !tbaa !86
  %tobool336.not = icmp eq i32 %51, 0
  %cond337 = select i1 %tobool336.not, ptr @pretab2, ptr @pretab1
  %idxprom342 = sext i32 %sfreq to i64
  %arrayidx344 = getelementptr inbounds [9 x [3 x ptr]], ptr @map, i64 0, i64 %idxprom342, i64 2
  %52 = load ptr, ptr %arrayidx344, align 8, !tbaa !27
  %pow2gain368 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 17
  br label %for.body350

for.cond493.preheader:                            ; preds = %for.end489
  %tobool494950 = icmp ugt i32 %sub1, 1
  %cmp496951 = icmp sgt i32 %part2remain.12.lcssa, 0
  %or.cond622952 = select i1 %tobool494950, i1 %cmp496951, i1 false
  br i1 %or.cond622952, label %for.body499.lr.ph, label %for.end576

for.body499.lr.ph:                                ; preds = %for.cond493.preheader
  %count1table_select501 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 15
  br label %for.body499

for.body350:                                      ; preds = %for.end489.for.body350_crit_edge, %if.else335
  %53 = phi i32 [ %5, %if.else335 ], [ %.pre, %for.end489.for.body350_crit_edge ]
  %indvars.iv = phi i64 [ 0, %if.else335 ], [ %indvars.iv.next, %for.end489.for.body350_crit_edge ]
  %scf.addr.8930 = phi ptr [ %scf, %if.else335 ], [ %scf.addr.9.lcssa, %for.end489.for.body350_crit_edge ]
  %mc346.0929 = phi i32 [ 0, %if.else335 ], [ %mc346.1.lcssa, %for.end489.for.body350_crit_edge ]
  %v345.0928 = phi double [ 0.000000e+00, %if.else335 ], [ %v345.1.lcssa, %for.end489.for.body350_crit_edge ]
  %m341.0927 = phi ptr [ %52, %if.else335 ], [ %m341.1.lcssa, %for.end489.for.body350_crit_edge ]
  %cb340.0926 = phi i32 [ 0, %if.else335 ], [ %cb340.1.lcssa, %for.end489.for.body350_crit_edge ]
  %max339.0925 = phi i32 [ -1, %if.else335 ], [ %max339.1.lcssa, %for.end489.for.body350_crit_edge ]
  %pretab.0923 = phi ptr [ %cond337, %if.else335 ], [ %pretab.1.lcssa, %for.end489.for.body350_crit_edge ]
  %xrpnt.10922 = phi ptr [ %xr, %if.else335 ], [ %xrpnt.11.lcssa, %for.end489.for.body350_crit_edge ]
  %part2remain.11921 = phi i32 [ %sub, %if.else335 ], [ %part2remain.12.lcssa, %for.end489.for.body350_crit_edge ]
  %arrayidx357 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 6, i64 %indvars.iv
  %54 = load i32, ptr %arrayidx357, align 4, !tbaa !20
  %idx.ext358 = zext i32 %54 to i64
  %add.ptr359 = getelementptr inbounds %struct.newhuff, ptr @ht, i64 %idx.ext358
  %tobool361.not901 = icmp eq i32 %53, 0
  br i1 %tobool361.not901, label %for.end489, label %for.body362.lr.ph

for.body362.lr.ph:                                ; preds = %for.body350
  %table378 = getelementptr inbounds %struct.newhuff, ptr @ht, i64 %idx.ext358, i32 1
  %55 = load ptr, ptr %table378, align 8, !tbaa !104
  br label %for.body362

for.body362:                                      ; preds = %for.body362.lr.ph, %if.end485
  %scf.addr.9911 = phi ptr [ %scf.addr.8930, %for.body362.lr.ph ], [ %scf.addr.10, %if.end485 ]
  %lp351.0910 = phi i32 [ %53, %for.body362.lr.ph ], [ %dec487, %if.end485 ]
  %mc346.1909 = phi i32 [ %mc346.0929, %for.body362.lr.ph ], [ %dec488, %if.end485 ]
  %v345.1908 = phi double [ %v345.0928, %for.body362.lr.ph ], [ %v345.2, %if.end485 ]
  %m341.1907 = phi ptr [ %m341.0927, %for.body362.lr.ph ], [ %m341.2, %if.end485 ]
  %cb340.1906 = phi i32 [ %cb340.0926, %for.body362.lr.ph ], [ %cb340.2, %if.end485 ]
  %max339.1905 = phi i32 [ %max339.0925, %for.body362.lr.ph ], [ %max339.3, %if.end485 ]
  %pretab.1904 = phi ptr [ %pretab.0923, %for.body362.lr.ph ], [ %pretab.2, %if.end485 ]
  %xrpnt.11903 = phi ptr [ %xrpnt.10922, %for.body362.lr.ph ], [ %xrpnt.15, %if.end485 ]
  %part2remain.12902 = phi i32 [ %part2remain.11921, %for.body362.lr.ph ], [ %part2remain.15, %if.end485 ]
  %tobool365.not = icmp eq i32 %mc346.1909, 0
  br i1 %tobool365.not, label %if.then366, label %if.end376

if.then366:                                       ; preds = %for.body362
  %incdec.ptr367 = getelementptr inbounds i32, ptr %m341.1907, i64 1
  %56 = load i32, ptr %m341.1907, align 4, !tbaa !20
  %57 = load ptr, ptr %pow2gain368, align 8, !tbaa !74
  %incdec.ptr369 = getelementptr inbounds i32, ptr %scf.addr.9911, i64 1
  %58 = load i32, ptr %scf.addr.9911, align 4, !tbaa !20
  %incdec.ptr370 = getelementptr inbounds i32, ptr %pretab.1904, i64 1
  %59 = load i32, ptr %pretab.1904, align 4, !tbaa !20
  %add371 = add nsw i32 %59, %58
  %shl372 = shl i32 %add371, %add
  %idxprom373 = sext i32 %shl372 to i64
  %arrayidx374 = getelementptr inbounds double, ptr %57, i64 %idxprom373
  %60 = load double, ptr %arrayidx374, align 8, !tbaa !5
  %incdec.ptr375 = getelementptr inbounds i32, ptr %m341.1907, i64 2
  %61 = load i32, ptr %incdec.ptr367, align 4, !tbaa !20
  br label %if.end376

if.end376:                                        ; preds = %if.then366, %for.body362
  %pretab.2 = phi ptr [ %pretab.1904, %for.body362 ], [ %incdec.ptr370, %if.then366 ]
  %cb340.2 = phi i32 [ %cb340.1906, %for.body362 ], [ %61, %if.then366 ]
  %m341.2 = phi ptr [ %m341.1907, %for.body362 ], [ %incdec.ptr375, %if.then366 ]
  %v345.2 = phi double [ %v345.1908, %for.body362 ], [ %60, %if.then366 ]
  %mc346.2 = phi i32 [ %mc346.1909, %for.body362 ], [ %56, %if.then366 ]
  %scf.addr.10 = phi ptr [ %scf.addr.9911, %for.body362 ], [ %incdec.ptr369, %if.then366 ]
  %62 = load i16, ptr %55, align 2, !tbaa !29
  %cmp382897 = icmp slt i16 %62, 0
  br i1 %cmp382897, label %while.body384, label %while.end393

while.body384:                                    ; preds = %if.end376, %if.end391
  %63 = phi i16 [ %64, %if.end391 ], [ %62, %if.end376 ]
  %val377.1.pn = phi ptr [ %val377.1, %if.end391 ], [ %55, %if.end376 ]
  %part2remain.13898 = phi i32 [ %dec392, %if.end391 ], [ %part2remain.12902, %if.end376 ]
  %incdec.ptr380899 = getelementptr inbounds i16, ptr %val377.1.pn, i64 1
  %call385 = tail call fastcc i32 @get1bit()
  %tobool386.not = icmp eq i32 %call385, 0
  br i1 %tobool386.not, label %if.end391, label %if.then387

if.then387:                                       ; preds = %while.body384
  %idx.ext388 = sext i16 %63 to i64
  %idx.neg389 = sub nsw i64 0, %idx.ext388
  %add.ptr390 = getelementptr inbounds i16, ptr %incdec.ptr380899, i64 %idx.neg389
  br label %if.end391

if.end391:                                        ; preds = %if.then387, %while.body384
  %val377.1 = phi ptr [ %add.ptr390, %if.then387 ], [ %incdec.ptr380899, %while.body384 ]
  %dec392 = add nsw i32 %part2remain.13898, -1
  %64 = load i16, ptr %val377.1, align 2, !tbaa !29
  %cmp382 = icmp slt i16 %64, 0
  br i1 %cmp382, label %while.body384, label %while.end393, !llvm.loop !115

while.end393:                                     ; preds = %if.end391, %if.end376
  %part2remain.13.lcssa = phi i32 [ %part2remain.12902, %if.end376 ], [ %dec392, %if.end391 ]
  %.lcssa895 = phi i16 [ %62, %if.end376 ], [ %64, %if.end391 ]
  %conv381891 = zext i16 %.lcssa895 to i32
  %shr394892 = lshr i32 %conv381891, 4
  %and395 = and i32 %conv381891, 15
  %cmp396 = icmp eq i32 %shr394892, 15
  br i1 %cmp396, label %if.then398, label %if.else419

if.then398:                                       ; preds = %while.end393
  %65 = load i32, ptr %add.ptr359, align 16, !tbaa !107
  %add400.neg = xor i32 %65, -1
  %sub401 = add i32 %part2remain.13.lcssa, %add400.neg
  %call403 = tail call i32 @getbits(i32 noundef %65) #15
  %add404 = add i32 %call403, 15
  %call405 = tail call fastcc i32 @get1bit()
  %tobool406.not = icmp eq i32 %call405, 0
  %idxprom414 = sext i32 %add404 to i64
  %arrayidx415 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom414
  %66 = load double, ptr %arrayidx415, align 8, !tbaa !5
  br i1 %tobool406.not, label %if.else413, label %if.then407

if.then407:                                       ; preds = %if.then398
  %fneg410 = fneg fast double %v345.2
  %mul411 = fmul fast double %66, %fneg410
  store double %mul411, ptr %xrpnt.11903, align 8, !tbaa !5
  br label %if.end440

if.else413:                                       ; preds = %if.then398
  %mul416 = fmul fast double %66, %v345.2
  store double %mul416, ptr %xrpnt.11903, align 8, !tbaa !5
  br label %if.end440

if.else419:                                       ; preds = %while.end393
  %tobool420.not = icmp ult i16 %.lcssa895, 16
  br i1 %tobool420.not, label %if.else437, label %if.then421

if.then421:                                       ; preds = %if.else419
  %call422 = tail call fastcc i32 @get1bit()
  %tobool423.not = icmp eq i32 %call422, 0
  %idxprom431893 = zext i32 %shr394892 to i64
  %arrayidx432 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom431893
  %67 = load double, ptr %arrayidx432, align 8, !tbaa !5
  %fneg427 = fneg fast double %67
  %spec.select1108 = select i1 %tobool423.not, double %67, double %fneg427
  %storemerge880 = fmul fast double %spec.select1108, %v345.2
  store double %storemerge880, ptr %xrpnt.11903, align 8, !tbaa !5
  %dec436 = add nsw i32 %part2remain.13.lcssa, -1
  br label %if.end440

if.else437:                                       ; preds = %if.else419
  store double 0.000000e+00, ptr %xrpnt.11903, align 8, !tbaa !5
  br label %if.end440

if.end440:                                        ; preds = %if.then421, %if.else437, %if.then407, %if.else413
  %part2remain.14 = phi i32 [ %sub401, %if.then407 ], [ %sub401, %if.else413 ], [ %dec436, %if.then421 ], [ %part2remain.13.lcssa, %if.else437 ]
  %max339.2 = phi i32 [ %cb340.2, %if.then407 ], [ %cb340.2, %if.else413 ], [ %cb340.2, %if.then421 ], [ %max339.1905, %if.else437 ]
  %xrpnt.13 = getelementptr inbounds double, ptr %xrpnt.11903, i64 1
  switch i32 %and395, label %if.then466 [
    i32 15, label %if.then443
    i32 0, label %if.else482
  ]

if.then443:                                       ; preds = %if.end440
  %68 = load i32, ptr %add.ptr359, align 16, !tbaa !107
  %add445.neg = xor i32 %68, -1
  %sub446 = add i32 %part2remain.14, %add445.neg
  %call448 = tail call i32 @getbits(i32 noundef %68) #15
  %add449 = add i32 %call448, 15
  %call450 = tail call fastcc i32 @get1bit()
  %tobool451.not = icmp eq i32 %call450, 0
  %idxprom459 = sext i32 %add449 to i64
  %arrayidx460 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom459
  %69 = load double, ptr %arrayidx460, align 8, !tbaa !5
  br i1 %tobool451.not, label %if.else458, label %if.then452

if.then452:                                       ; preds = %if.then443
  %fneg455 = fneg fast double %v345.2
  %mul456 = fmul fast double %69, %fneg455
  store double %mul456, ptr %xrpnt.13, align 8, !tbaa !5
  br label %if.end485

if.else458:                                       ; preds = %if.then443
  %mul461 = fmul fast double %69, %v345.2
  store double %mul461, ptr %xrpnt.13, align 8, !tbaa !5
  br label %if.end485

if.then466:                                       ; preds = %if.end440
  %call467 = tail call fastcc i32 @get1bit()
  %tobool468.not = icmp eq i32 %call467, 0
  %idxprom476 = zext i32 %and395 to i64
  %arrayidx477 = getelementptr inbounds [8207 x double], ptr @ispow, i64 0, i64 %idxprom476
  %70 = load double, ptr %arrayidx477, align 8, !tbaa !5
  %fneg472 = fneg fast double %70
  %spec.select1109 = select i1 %tobool468.not, double %70, double %fneg472
  %storemerge = fmul fast double %spec.select1109, %v345.2
  store double %storemerge, ptr %xrpnt.13, align 8, !tbaa !5
  %dec481 = add nsw i32 %part2remain.14, -1
  br label %if.end485

if.else482:                                       ; preds = %if.end440
  store double 0.000000e+00, ptr %xrpnt.13, align 8, !tbaa !5
  br label %if.end485

if.end485:                                        ; preds = %if.then466, %if.else482, %if.then452, %if.else458
  %part2remain.15 = phi i32 [ %sub446, %if.then452 ], [ %sub446, %if.else458 ], [ %dec481, %if.then466 ], [ %part2remain.14, %if.else482 ]
  %max339.3 = phi i32 [ %cb340.2, %if.then452 ], [ %cb340.2, %if.else458 ], [ %cb340.2, %if.then466 ], [ %max339.2, %if.else482 ]
  %xrpnt.15 = getelementptr inbounds double, ptr %xrpnt.11903, i64 2
  %dec487 = add nsw i32 %lp351.0910, -1
  %dec488 = add nsw i32 %mc346.2, -1
  %tobool361.not = icmp eq i32 %dec487, 0
  br i1 %tobool361.not, label %for.end489, label %for.body362, !llvm.loop !116

for.end489:                                       ; preds = %if.end485, %for.body350
  %part2remain.12.lcssa = phi i32 [ %part2remain.11921, %for.body350 ], [ %part2remain.15, %if.end485 ]
  %xrpnt.11.lcssa = phi ptr [ %xrpnt.10922, %for.body350 ], [ %xrpnt.15, %if.end485 ]
  %pretab.1.lcssa = phi ptr [ %pretab.0923, %for.body350 ], [ %pretab.2, %if.end485 ]
  %max339.1.lcssa = phi i32 [ %max339.0925, %for.body350 ], [ %max339.3, %if.end485 ]
  %cb340.1.lcssa = phi i32 [ %cb340.0926, %for.body350 ], [ %cb340.2, %if.end485 ]
  %m341.1.lcssa = phi ptr [ %m341.0927, %for.body350 ], [ %m341.2, %if.end485 ]
  %v345.1.lcssa = phi double [ %v345.0928, %for.body350 ], [ %v345.2, %if.end485 ]
  %mc346.1.lcssa = phi i32 [ %mc346.0929, %for.body350 ], [ %dec488, %if.end485 ]
  %scf.addr.9.lcssa = phi ptr [ %scf.addr.8930, %for.body350 ], [ %scf.addr.10, %if.end485 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.cond493.preheader, label %for.end489.for.body350_crit_edge, !llvm.loop !117

for.end489.for.body350_crit_edge:                 ; preds = %for.end489
  %arrayidx353.phi.trans.insert = getelementptr inbounds [3 x i32], ptr %l, i64 0, i64 %indvars.iv.next
  %.pre = load i32, ptr %arrayidx353.phi.trans.insert, align 4, !tbaa !20
  br label %for.body350

for.body499:                                      ; preds = %for.body499.lr.ph, %for.end573
  %scf.addr.11962 = phi ptr [ %scf.addr.9.lcssa, %for.body499.lr.ph ], [ %scf.addr.14, %for.end573 ]
  %mc346.3961 = phi i32 [ %mc346.1.lcssa, %for.body499.lr.ph ], [ %mc346.6, %for.end573 ]
  %v345.3960 = phi double [ %v345.1.lcssa, %for.body499.lr.ph ], [ %v345.6, %for.end573 ]
  %m341.3959 = phi ptr [ %m341.1.lcssa, %for.body499.lr.ph ], [ %m341.6, %for.end573 ]
  %cb340.3958 = phi i32 [ %cb340.1.lcssa, %for.body499.lr.ph ], [ %cb340.6, %for.end573 ]
  %max339.4957 = phi i32 [ %max339.1.lcssa, %for.body499.lr.ph ], [ %max339.6, %for.end573 ]
  %pretab.3956 = phi ptr [ %pretab.1.lcssa, %for.body499.lr.ph ], [ %pretab.6, %for.end573 ]
  %xrpnt.16955 = phi ptr [ %xrpnt.11.lcssa, %for.body499.lr.ph ], [ %xrpnt.18, %for.end573 ]
  %l3.1954 = phi i32 [ %shr, %for.body499.lr.ph ], [ %dec575, %for.end573 ]
  %part2remain.16953 = phi i32 [ %part2remain.12.lcssa, %for.body499.lr.ph ], [ %part2remain.20, %for.end573 ]
  %71 = load i32, ptr %count1table_select501, align 4, !tbaa !83
  %idx.ext502 = zext i32 %71 to i64
  %table505 = getelementptr inbounds %struct.newhuff, ptr @htc, i64 %idx.ext502, i32 1
  %72 = load ptr, ptr %table505, align 8, !tbaa !104
  %73 = load i16, ptr %72, align 2, !tbaa !29
  %cmp510932 = icmp slt i16 %73, 0
  br i1 %cmp510932, label %while.body512, label %while.end527

while.body512:                                    ; preds = %for.body499, %if.end526
  %74 = phi i16 [ %75, %if.end526 ], [ %73, %for.body499 ]
  %val504.1.pn = phi ptr [ %val504.1, %if.end526 ], [ %72, %for.body499 ]
  %part2remain.17933 = phi i32 [ %dec513, %if.end526 ], [ %part2remain.16953, %for.body499 ]
  %incdec.ptr508934 = getelementptr inbounds i16, ptr %val504.1.pn, i64 1
  %dec513 = add nsw i32 %part2remain.17933, -1
  %cmp514 = icmp slt i32 %part2remain.17933, 1
  br i1 %cmp514, label %while.end527, label %if.end518

if.end518:                                        ; preds = %while.body512
  %call519 = tail call fastcc i32 @get1bit()
  %tobool520.not = icmp eq i32 %call519, 0
  br i1 %tobool520.not, label %if.end526, label %if.then521

if.then521:                                       ; preds = %if.end518
  %idx.ext523 = sext i16 %74 to i64
  %idx.neg524 = sub nsw i64 0, %idx.ext523
  %add.ptr525 = getelementptr inbounds i16, ptr %incdec.ptr508934, i64 %idx.neg524
  br label %if.end526

if.end526:                                        ; preds = %if.then521, %if.end518
  %val504.1 = phi ptr [ %add.ptr525, %if.then521 ], [ %incdec.ptr508934, %if.end518 ]
  %75 = load i16, ptr %val504.1, align 2, !tbaa !29
  %cmp510 = icmp slt i16 %75, 0
  br i1 %cmp510, label %while.body512, label %while.end527, !llvm.loop !118

while.end527:                                     ; preds = %if.end526, %while.body512, %for.body499
  %part2remain.17.lcssa = phi i32 [ %part2remain.16953, %for.body499 ], [ 0, %while.body512 ], [ %dec513, %if.end526 ]
  %a506.0 = phi i16 [ %73, %for.body499 ], [ 0, %while.body512 ], [ %75, %if.end526 ]
  %conv5491060 = zext i16 %a506.0 to i32
  br label %for.body531

for.body531:                                      ; preds = %while.end527, %for.inc571
  %scf.addr.12949 = phi ptr [ %scf.addr.11962, %while.end527 ], [ %scf.addr.14, %for.inc571 ]
  %mc346.4948 = phi i32 [ %mc346.3961, %while.end527 ], [ %mc346.6, %for.inc571 ]
  %v345.4947 = phi double [ %v345.3960, %while.end527 ], [ %v345.6, %for.inc571 ]
  %m341.4946 = phi ptr [ %m341.3959, %while.end527 ], [ %m341.6, %for.inc571 ]
  %cb340.4945 = phi i32 [ %cb340.3958, %while.end527 ], [ %cb340.6, %for.inc571 ]
  %max339.5944 = phi i32 [ %max339.4957, %while.end527 ], [ %max339.6, %for.inc571 ]
  %i338.1943 = phi i32 [ 0, %while.end527 ], [ %inc572, %for.inc571 ]
  %pretab.4942 = phi ptr [ %pretab.3956, %while.end527 ], [ %pretab.6, %for.inc571 ]
  %xrpnt.17940 = phi ptr [ %xrpnt.16955, %while.end527 ], [ %xrpnt.18, %for.inc571 ]
  %part2remain.19939 = phi i32 [ %part2remain.17.lcssa, %while.end527 ], [ %part2remain.20, %for.inc571 ]
  %and532 = and i32 %i338.1943, 1
  %tobool533.not = icmp eq i32 %and532, 0
  br i1 %tobool533.not, label %if.then534, label %if.end548

if.then534:                                       ; preds = %for.body531
  %tobool535.not = icmp eq i32 %mc346.4948, 0
  br i1 %tobool535.not, label %if.then536, label %if.end546

if.then536:                                       ; preds = %if.then534
  %incdec.ptr537 = getelementptr inbounds i32, ptr %m341.4946, i64 1
  %76 = load i32, ptr %m341.4946, align 4, !tbaa !20
  %incdec.ptr538 = getelementptr inbounds i32, ptr %m341.4946, i64 2
  %77 = load i32, ptr %incdec.ptr537, align 4, !tbaa !20
  %78 = load ptr, ptr %pow2gain368, align 8, !tbaa !74
  %incdec.ptr540 = getelementptr inbounds i32, ptr %scf.addr.12949, i64 1
  %79 = load i32, ptr %scf.addr.12949, align 4, !tbaa !20
  %incdec.ptr541 = getelementptr inbounds i32, ptr %pretab.4942, i64 1
  %80 = load i32, ptr %pretab.4942, align 4, !tbaa !20
  %add542 = add nsw i32 %80, %79
  %shl543 = shl i32 %add542, %add
  %idxprom544 = sext i32 %shl543 to i64
  %arrayidx545 = getelementptr inbounds double, ptr %78, i64 %idxprom544
  %81 = load double, ptr %arrayidx545, align 8, !tbaa !5
  br label %if.end546

if.end546:                                        ; preds = %if.then536, %if.then534
  %pretab.5 = phi ptr [ %pretab.4942, %if.then534 ], [ %incdec.ptr541, %if.then536 ]
  %cb340.5 = phi i32 [ %cb340.4945, %if.then534 ], [ %77, %if.then536 ]
  %m341.5 = phi ptr [ %m341.4946, %if.then534 ], [ %incdec.ptr538, %if.then536 ]
  %v345.5 = phi double [ %v345.4947, %if.then534 ], [ %81, %if.then536 ]
  %mc346.5 = phi i32 [ %mc346.4948, %if.then534 ], [ %76, %if.then536 ]
  %scf.addr.13 = phi ptr [ %scf.addr.12949, %if.then534 ], [ %incdec.ptr540, %if.then536 ]
  %dec547 = add nsw i32 %mc346.5, -1
  br label %if.end548

if.end548:                                        ; preds = %if.end546, %for.body531
  %pretab.6 = phi ptr [ %pretab.4942, %for.body531 ], [ %pretab.5, %if.end546 ]
  %cb340.6 = phi i32 [ %cb340.4945, %for.body531 ], [ %cb340.5, %if.end546 ]
  %m341.6 = phi ptr [ %m341.4946, %for.body531 ], [ %m341.5, %if.end546 ]
  %v345.6 = phi double [ %v345.4947, %for.body531 ], [ %v345.5, %if.end546 ]
  %mc346.6 = phi i32 [ %mc346.4948, %for.body531 ], [ %dec547, %if.end546 ]
  %scf.addr.14 = phi ptr [ %scf.addr.12949, %for.body531 ], [ %scf.addr.13, %if.end546 ]
  %shr550 = lshr i32 8, %i338.1943
  %and551 = and i32 %shr550, %conv5491060
  %tobool552.not = icmp eq i32 %and551, 0
  br i1 %tobool552.not, label %for.inc571, label %if.then553

if.then553:                                       ; preds = %if.end548
  %cmp555 = icmp slt i32 %part2remain.19939, 1
  br i1 %cmp555, label %for.end576, label %if.end559

if.end559:                                        ; preds = %if.then553
  %dec554 = add nsw i32 %part2remain.19939, -1
  %call560 = tail call fastcc i32 @get1bit()
  %tobool561.not = icmp eq i32 %call560, 0
  %fneg563 = fneg fast double %v345.6
  %spec.select1111 = select i1 %tobool561.not, double %v345.6, double %fneg563
  br label %for.inc571

for.inc571:                                       ; preds = %if.end559, %if.end548
  %.sink1106 = phi double [ 0.000000e+00, %if.end548 ], [ %spec.select1111, %if.end559 ]
  %part2remain.20 = phi i32 [ %part2remain.19939, %if.end548 ], [ %dec554, %if.end559 ]
  %max339.6 = phi i32 [ %max339.5944, %if.end548 ], [ %cb340.6, %if.end559 ]
  store double %.sink1106, ptr %xrpnt.17940, align 8, !tbaa !5
  %xrpnt.18 = getelementptr inbounds double, ptr %xrpnt.17940, i64 1
  %inc572 = add nuw nsw i32 %i338.1943, 1
  %exitcond1052.not = icmp eq i32 %inc572, 4
  br i1 %exitcond1052.not, label %for.end573, label %for.body531, !llvm.loop !119

for.end573:                                       ; preds = %for.inc571
  %dec575 = add nsw i32 %l3.1954, -1
  %tobool494 = icmp ne i32 %dec575, 0
  %cmp496 = icmp sgt i32 %part2remain.20, 0
  %or.cond622 = select i1 %tobool494, i1 %cmp496, i1 false
  br i1 %or.cond622, label %for.body499, label %for.end576, !llvm.loop !120

for.end576:                                       ; preds = %for.end573, %if.then553, %for.cond493.preheader
  %part2remain.16.lcssa = phi i32 [ %part2remain.12.lcssa, %for.cond493.preheader ], [ %part2remain.19939, %if.then553 ], [ %part2remain.20, %for.end573 ]
  %xrpnt.16.lcssa = phi ptr [ %xrpnt.11.lcssa, %for.cond493.preheader ], [ %xrpnt.17940, %if.then553 ], [ %xrpnt.18, %for.end573 ]
  %max339.4.lcssa = phi i32 [ %max339.1.lcssa, %for.cond493.preheader ], [ %cb340.6, %if.then553 ], [ %max339.6, %for.end573 ]
  %arrayidx577 = getelementptr inbounds [18 x double], ptr %xr, i64 32
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx577 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %xrpnt.16.lcssa to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %82 = and i64 %sub.ptr.sub, 68719476720
  %tobool582.not966 = icmp eq i64 %82, 0
  br i1 %tobool582.not966, label %for.end588, label %for.body583.preheader

for.body583.preheader:                            ; preds = %for.end576
  %83 = and i64 %sub.ptr.sub, 68719476720
  call void @llvm.memset.p0.i64(ptr align 8 %xrpnt.16.lcssa, i8 0, i64 %83, i1 false), !tbaa !5
  br label %for.end588

for.end588:                                       ; preds = %for.body583.preheader, %for.end576
  %add589 = add nsw i32 %max339.4.lcssa, 1
  %maxbandl590 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 9
  store i32 %add589, ptr %maxbandl590, align 4, !tbaa !114
  %idxprom594 = zext i32 %add589 to i64
  %arrayidx595 = getelementptr inbounds [9 x [23 x i32]], ptr @longLimit, i64 0, i64 %idxprom342, i64 %idxprom594
  %84 = load i32, ptr %arrayidx595, align 4, !tbaa !20
  %maxb596 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 10
  store i32 %84, ptr %maxb596, align 8, !tbaa !66
  br label %if.end597

if.end597:                                        ; preds = %for.end588, %cond.end333
  %part2remain.22 = phi i32 [ %part2remain.5.lcssa, %cond.end333 ], [ %part2remain.16.lcssa, %for.end588 ]
  %cmp5991046 = icmp sgt i32 %part2remain.22, 16
  br i1 %cmp5991046, label %while.body601, label %while.end604

while.body601:                                    ; preds = %if.end597, %while.body601
  %part2remain.231047 = phi i32 [ %sub603, %while.body601 ], [ %part2remain.22, %if.end597 ]
  %call602 = tail call i32 @getbits(i32 noundef 16) #15
  %sub603 = add nsw i32 %part2remain.231047, -16
  %cmp599 = icmp ugt i32 %part2remain.231047, 32
  br i1 %cmp599, label %while.body601, label %if.then607, !llvm.loop !121

while.end604:                                     ; preds = %if.end597
  %cmp605 = icmp sgt i32 %part2remain.22, 0
  br i1 %cmp605, label %if.then607, label %if.else609

if.then607:                                       ; preds = %while.body601, %while.end604
  %part2remain.23.lcssa1079 = phi i32 [ %part2remain.22, %while.end604 ], [ %sub603, %while.body601 ]
  %call608 = tail call i32 @getbits(i32 noundef %part2remain.23.lcssa1079) #15
  br label %cleanup

if.else609:                                       ; preds = %while.end604
  %cmp610 = icmp slt i32 %part2remain.22, 0
  br i1 %cmp610, label %if.then612, label %cleanup

if.then612:                                       ; preds = %if.else609
  %85 = load ptr, ptr @stderr, align 8, !tbaa !27
  %sub613 = sub nsw i32 0, %part2remain.22
  %call614 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.2, i32 noundef %sub613) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then607, %if.else609, %if.then612
  %retval.0 = phi i32 [ 1, %if.then612 ], [ 0, %if.else609 ], [ 0, %if.then607 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %l) #15
  ret i32 %retval.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @III_i_stereo(ptr nocapture noundef readonly %scalefac, ptr nocapture noundef readonly %gr_info, i32 noundef %sfreq, i32 noundef %ms_stereo, i32 noundef %lsf) unnamed_addr #6 {
entry:
  %idxprom = sext i32 %sfreq to i64
  %arrayidx = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom
  %tobool.not = icmp eq i32 %lsf, 0
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  %scalefac_compress = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 3
  %0 = load i32, ptr %scalefac_compress, align 4, !tbaa !75
  %and = and i32 %0, 1
  %tobool1.not = icmp eq i32 %ms_stereo, 0
  %1 = zext i32 %and to i64
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %arrayidx4 = getelementptr inbounds [2 x [16 x double]], ptr @pow1_2, i64 0, i64 %1
  %arrayidx6 = getelementptr inbounds [2 x [16 x double]], ptr @pow2_2, i64 0, i64 %1
  br label %if.end19

if.else:                                          ; preds = %if.then
  %arrayidx9 = getelementptr inbounds [2 x [16 x double]], ptr @pow1_1, i64 0, i64 %1
  %arrayidx12 = getelementptr inbounds [2 x [16 x double]], ptr @pow2_1, i64 0, i64 %1
  br label %if.end19

if.else14:                                        ; preds = %entry
  %tobool15.not = icmp eq i32 %ms_stereo, 0
  %tan2_1.tan2_2 = select i1 %tobool15.not, ptr @tan2_1, ptr @tan2_2
  %tan1_1.tan1_2 = select i1 %tobool15.not, ptr @tan1_1, ptr @tan1_2
  br label %if.end19

if.end19:                                         ; preds = %if.else14, %if.then2, %if.else
  %tab2.1 = phi ptr [ %arrayidx6, %if.then2 ], [ %arrayidx12, %if.else ], [ %tan2_1.tan2_2, %if.else14 ]
  %tab1.1 = phi ptr [ %arrayidx4, %if.then2 ], [ %arrayidx9, %if.else ], [ %tan1_1.tan1_2, %if.else14 ]
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %2 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then20, label %if.else166

if.then20:                                        ; preds = %if.end19
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %3 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool21.not = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %tobool21.not to i32
  %add67 = sub i32 33, %3
  %arrayidx76 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 2, i64 12
  %arrayidx73 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 3, i64 12
  br label %for.body

for.body:                                         ; preds = %if.then20, %if.end108
  %indvars.iv51 = phi i64 [ 0, %if.then20 ], [ %indvars.iv.next52, %if.end108 ]
  %do_l.021 = phi i32 [ %spec.store.select, %if.then20 ], [ %spec.select, %if.end108 ]
  %arrayidx26 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 8, i64 %indvars.iv51
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !20
  %cmp27 = icmp sgt i32 %4, 3
  %spec.select = select i1 %cmp27, i32 0, i32 %do_l.021
  %cmp3115 = icmp slt i32 %4, 12
  %5 = trunc i64 %indvars.iv51 to i32
  br i1 %cmp3115, label %for.body32.lr.ph, label %for.end66

for.body32.lr.ph:                                 ; preds = %for.body
  %add = sub i32 %5, %3
  %6 = sext i32 %4 to i64
  br label %for.body32

for.body32:                                       ; preds = %for.body32.lr.ph, %for.inc65
  %indvars.iv42 = phi i64 [ %6, %for.body32.lr.ph ], [ %indvars.iv.next43, %for.inc65 ]
  %7 = trunc i64 %indvars.iv42 to i32
  %8 = mul i32 %7, 3
  %sub = add i32 %add, %8
  %idxprom34 = zext i32 %sub to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %scalefac, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !20
  %cmp36.not = icmp eq i32 %9, 7
  br i1 %cmp36.not, label %for.inc65, label %if.then37

if.then37:                                        ; preds = %for.body32
  %arrayidx39 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 3, i64 %indvars.iv42
  %10 = load i16, ptr %arrayidx39, align 2, !tbaa !29
  %idxprom44 = sext i32 %9 to i64
  %arrayidx45 = getelementptr inbounds double, ptr %tab1.1, i64 %idxprom44
  %11 = load double, ptr %arrayidx45, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds double, ptr %tab2.1, i64 %idxprom44
  %12 = load double, ptr %arrayidx47, align 8, !tbaa !5
  %cmp4912 = icmp sgt i16 %10, 0
  br i1 %cmp4912, label %for.body51.preheader, label %for.inc65

for.body51.preheader:                             ; preds = %if.then37
  %arrayidx41 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 2, i64 %indvars.iv42
  %13 = load i16, ptr %arrayidx41, align 2, !tbaa !29
  %conv42 = sext i16 %13 to i64
  %conv64 = zext i16 %10 to i32
  %14 = add i64 %indvars.iv51, %conv42
  %sext = shl i64 %14, 32
  %15 = ashr exact i64 %sext, 32
  br label %for.body51

for.body51:                                       ; preds = %for.body51.preheader, %for.body51
  %indvars.iv39 = phi i64 [ %15, %for.body51.preheader ], [ %indvars.iv.next40, %for.body51 ]
  %sb.014 = phi i32 [ %conv64, %for.body51.preheader ], [ %dec, %for.body51 ]
  %arrayidx54 = getelementptr inbounds [576 x double], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv39
  %16 = load double, ptr %arrayidx54, align 8, !tbaa !5
  %mul55 = fmul fast double %16, %11
  store double %mul55, ptr %arrayidx54, align 8, !tbaa !5
  %mul59 = fmul fast double %16, %12
  %arrayidx62 = getelementptr inbounds [576 x double], ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 0, i64 %indvars.iv39
  store double %mul59, ptr %arrayidx62, align 8, !tbaa !5
  %dec = add nsw i32 %sb.014, -1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 3
  %cmp49 = icmp ugt i32 %sb.014, 1
  br i1 %cmp49, label %for.body51, label %for.inc65, !llvm.loop !122

for.inc65:                                        ; preds = %for.body51, %if.then37, %for.body32
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %lftr.wideiv46 = trunc i64 %indvars.iv.next43 to i32
  %exitcond47.not = icmp eq i32 %lftr.wideiv46, 12
  br i1 %exitcond47.not, label %for.end66, label %for.body32, !llvm.loop !123

for.end66:                                        ; preds = %for.inc65, %for.body
  %sub69 = add i32 %add67, %5
  %idxprom70 = zext i32 %sub69 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %scalefac, i64 %idxprom70
  %17 = load i32, ptr %arrayidx71, align 4, !tbaa !20
  %cmp79.not = icmp eq i32 %17, 7
  br i1 %cmp79.not, label %if.end108, label %if.then81

if.then81:                                        ; preds = %for.end66
  %18 = load i16, ptr %arrayidx73, align 2, !tbaa !29
  %idxprom84 = sext i32 %17 to i64
  %arrayidx85 = getelementptr inbounds double, ptr %tab1.1, i64 %idxprom84
  %19 = load double, ptr %arrayidx85, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds double, ptr %tab2.1, i64 %idxprom84
  %20 = load double, ptr %arrayidx87, align 8, !tbaa !5
  %cmp8918 = icmp sgt i16 %18, 0
  br i1 %cmp8918, label %for.body91.preheader, label %if.end108

for.body91.preheader:                             ; preds = %if.then81
  %conv7463 = zext i16 %18 to i32
  %21 = load i16, ptr %arrayidx76, align 2, !tbaa !29
  %conv77 = sext i16 %21 to i64
  %22 = add i64 %indvars.iv51, %conv77
  %sext67 = shl i64 %22, 32
  %23 = ashr exact i64 %sext67, 32
  br label %for.body91

for.body91:                                       ; preds = %for.body91.preheader, %for.body91
  %indvars.iv48 = phi i64 [ %23, %for.body91.preheader ], [ %indvars.iv.next49, %for.body91 ]
  %sb.120 = phi i32 [ %conv7463, %for.body91.preheader ], [ %dec105, %for.body91 ]
  %arrayidx95 = getelementptr inbounds [576 x double], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv48
  %24 = load double, ptr %arrayidx95, align 8, !tbaa !5
  %mul96 = fmul fast double %24, %19
  store double %mul96, ptr %arrayidx95, align 8, !tbaa !5
  %mul100 = fmul fast double %24, %20
  %arrayidx103 = getelementptr inbounds [576 x double], ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 0, i64 %indvars.iv48
  store double %mul100, ptr %arrayidx103, align 8, !tbaa !5
  %dec105 = add nsw i32 %sb.120, -1
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 3
  %cmp89 = icmp ugt i32 %sb.120, 1
  br i1 %cmp89, label %for.body91, label %if.end108, !llvm.loop !124

if.end108:                                        ; preds = %for.body91, %if.then81, %for.end66
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond54.not, label %for.end111, label %for.body, !llvm.loop !125

for.end111:                                       ; preds = %if.end108
  %tobool112.not = icmp eq i32 %spec.select, 0
  br i1 %tobool112.not, label %if.end256, label %if.then113

if.then113:                                       ; preds = %for.end111
  %maxbandl = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 9
  %25 = load i32, ptr %maxbandl, align 4, !tbaa !114
  %cmp12028 = icmp slt i32 %25, 8
  br i1 %cmp12028, label %for.body122.preheader, label %if.end256

for.body122.preheader:                            ; preds = %if.then113
  %idxprom116 = sext i32 %25 to i64
  %arrayidx117 = getelementptr inbounds [23 x i16], ptr %arrayidx, i64 0, i64 %idxprom116
  %26 = load i16, ptr %arrayidx117, align 2, !tbaa !29
  %conv118 = sext i16 %26 to i32
  br label %for.body122

for.body122:                                      ; preds = %for.body122.preheader, %if.end161
  %indvars.iv58 = phi i64 [ %idxprom116, %for.body122.preheader ], [ %indvars.iv.next59, %if.end161 ]
  %idx115.029 = phi i32 [ %conv118, %for.body122.preheader ], [ %idx115.2, %if.end161 ]
  %arrayidx125 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 1, i64 %indvars.iv58
  %27 = load i16, ptr %arrayidx125, align 2, !tbaa !29
  %conv126 = sext i16 %27 to i32
  %arrayidx129 = getelementptr inbounds i32, ptr %scalefac, i64 %indvars.iv58
  %28 = load i32, ptr %arrayidx129, align 4, !tbaa !20
  %cmp130.not = icmp eq i32 %28, 7
  br i1 %cmp130.not, label %if.else159, label %if.then132

if.then132:                                       ; preds = %for.body122
  %idxprom135 = sext i32 %28 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %tab1.1, i64 %idxprom135
  %29 = load double, ptr %arrayidx136, align 8, !tbaa !5
  %arrayidx138 = getelementptr inbounds double, ptr %tab2.1, i64 %idxprom135
  %30 = load double, ptr %arrayidx138, align 8, !tbaa !5
  %cmp14024 = icmp sgt i16 %27, 0
  br i1 %cmp14024, label %for.body142.preheader, label %if.end161

for.body142.preheader:                            ; preds = %if.then132
  %31 = sext i32 %idx115.029 to i64
  br label %for.body142

for.body142:                                      ; preds = %for.body142.preheader, %for.body142
  %indvars.iv55 = phi i64 [ %31, %for.body142.preheader ], [ %indvars.iv.next56, %for.body142 ]
  %sb123.025 = phi i32 [ %conv126, %for.body142.preheader ], [ %dec156, %for.body142 ]
  %arrayidx146 = getelementptr inbounds [576 x double], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv55
  %32 = load double, ptr %arrayidx146, align 8, !tbaa !5
  %mul147 = fmul fast double %32, %29
  store double %mul147, ptr %arrayidx146, align 8, !tbaa !5
  %mul151 = fmul fast double %32, %30
  %arrayidx154 = getelementptr inbounds [576 x double], ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 0, i64 %indvars.iv55
  store double %mul151, ptr %arrayidx154, align 8, !tbaa !5
  %dec156 = add nsw i32 %sb123.025, -1
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1
  %cmp140 = icmp sgt i32 %sb123.025, 1
  br i1 %cmp140, label %for.body142, label %if.end161.loopexit, !llvm.loop !126

if.else159:                                       ; preds = %for.body122
  %add160 = add nsw i32 %idx115.029, %conv126
  br label %if.end161

if.end161.loopexit:                               ; preds = %for.body142
  %33 = trunc i64 %indvars.iv.next56 to i32
  br label %if.end161

if.end161:                                        ; preds = %if.end161.loopexit, %if.then132, %if.else159
  %idx115.2 = phi i32 [ %add160, %if.else159 ], [ %idx115.029, %if.then132 ], [ %33, %if.end161.loopexit ]
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  %lftr.wideiv61 = trunc i64 %indvars.iv.next59 to i32
  %exitcond62.not = icmp eq i32 %lftr.wideiv61, 8
  br i1 %exitcond62.not, label %if.end256, label %for.body122, !llvm.loop !127

if.else166:                                       ; preds = %if.end19
  %maxbandl168 = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 9
  %34 = load i32, ptr %maxbandl168, align 4, !tbaa !114
  %idxprom172 = sext i32 %34 to i64
  %arrayidx173 = getelementptr inbounds [23 x i16], ptr %arrayidx, i64 0, i64 %idxprom172
  %35 = load i16, ptr %arrayidx173, align 2, !tbaa !29
  %conv174 = sext i16 %35 to i32
  %cmp1765 = icmp slt i32 %34, 21
  br i1 %cmp1765, label %for.body178, label %for.end220

for.body178:                                      ; preds = %if.else166, %if.end217
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %if.end217 ], [ %idxprom172, %if.else166 ]
  %idx170.07 = phi i32 [ %idx170.2, %if.end217 ], [ %conv174, %if.else166 ]
  %arrayidx182 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 1, i64 %indvars.iv33
  %36 = load i16, ptr %arrayidx182, align 2, !tbaa !29
  %conv183 = sext i16 %36 to i32
  %arrayidx185 = getelementptr inbounds i32, ptr %scalefac, i64 %indvars.iv33
  %37 = load i32, ptr %arrayidx185, align 4, !tbaa !20
  %cmp186.not = icmp eq i32 %37, 7
  br i1 %cmp186.not, label %if.else215, label %if.then188

if.then188:                                       ; preds = %for.body178
  %idxprom191 = sext i32 %37 to i64
  %arrayidx192 = getelementptr inbounds double, ptr %tab1.1, i64 %idxprom191
  %38 = load double, ptr %arrayidx192, align 8, !tbaa !5
  %arrayidx194 = getelementptr inbounds double, ptr %tab2.1, i64 %idxprom191
  %39 = load double, ptr %arrayidx194, align 8, !tbaa !5
  %cmp1962 = icmp sgt i16 %36, 0
  br i1 %cmp1962, label %for.body198.preheader, label %if.end217

for.body198.preheader:                            ; preds = %if.then188
  %40 = sext i32 %idx170.07 to i64
  br label %for.body198

for.body198:                                      ; preds = %for.body198.preheader, %for.body198
  %indvars.iv = phi i64 [ %40, %for.body198.preheader ], [ %indvars.iv.next, %for.body198 ]
  %sb179.04 = phi i32 [ %conv183, %for.body198.preheader ], [ %dec212, %for.body198 ]
  %arrayidx202 = getelementptr inbounds [576 x double], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv
  %41 = load double, ptr %arrayidx202, align 8, !tbaa !5
  %mul203 = fmul fast double %41, %38
  store double %mul203, ptr %arrayidx202, align 8, !tbaa !5
  %mul207 = fmul fast double %41, %39
  %arrayidx210 = getelementptr inbounds [576 x double], ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 0, i64 %indvars.iv
  store double %mul207, ptr %arrayidx210, align 8, !tbaa !5
  %dec212 = add nsw i32 %sb179.04, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp196 = icmp sgt i32 %sb179.04, 1
  br i1 %cmp196, label %for.body198, label %if.end217.loopexit, !llvm.loop !128

if.else215:                                       ; preds = %for.body178
  %add216 = add nsw i32 %idx170.07, %conv183
  br label %if.end217

if.end217.loopexit:                               ; preds = %for.body198
  %42 = trunc i64 %indvars.iv.next to i32
  br label %if.end217

if.end217:                                        ; preds = %if.end217.loopexit, %if.then188, %if.else215
  %idx170.2 = phi i32 [ %add216, %if.else215 ], [ %idx170.07, %if.then188 ], [ %42, %if.end217.loopexit ]
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next34 to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, 21
  br i1 %exitcond.not, label %for.end220, label %for.body178, !llvm.loop !129

for.end220:                                       ; preds = %if.end217, %if.else166
  %idx170.0.lcssa = phi i32 [ %conv174, %if.else166 ], [ %idx170.2, %if.end217 ]
  %arrayidx221 = getelementptr inbounds i32, ptr %scalefac, i64 20
  %43 = load i32, ptr %arrayidx221, align 4, !tbaa !20
  %cmp222.not = icmp eq i32 %43, 7
  br i1 %cmp222.not, label %if.end256, label %if.then224

if.then224:                                       ; preds = %for.end220
  %idxprom227 = sext i32 %43 to i64
  %arrayidx228 = getelementptr inbounds double, ptr %tab1.1, i64 %idxprom227
  %44 = load double, ptr %arrayidx228, align 8, !tbaa !5
  %arrayidx231 = getelementptr inbounds double, ptr %tab2.1, i64 %idxprom227
  %45 = load double, ptr %arrayidx231, align 8, !tbaa !5
  %arrayidx233 = getelementptr inbounds [9 x %struct.bandInfoStruct], ptr @bandInfo, i64 0, i64 %idxprom, i32 1, i64 21
  %46 = load i16, ptr %arrayidx233, align 8, !tbaa !29
  %cmp2369 = icmp sgt i16 %46, 0
  br i1 %cmp2369, label %for.body238.preheader, label %if.end256

for.body238.preheader:                            ; preds = %if.then224
  %conv23465 = zext i16 %46 to i32
  %47 = sext i32 %idx170.0.lcssa to i64
  br label %for.body238

for.body238:                                      ; preds = %for.body238.preheader, %for.body238
  %indvars.iv36 = phi i64 [ %47, %for.body238.preheader ], [ %indvars.iv.next37, %for.body238 ]
  %sb225.011 = phi i32 [ %conv23465, %for.body238.preheader ], [ %dec252, %for.body238 ]
  %arrayidx242 = getelementptr inbounds [576 x double], ptr @do_layer3.hybridIn, i64 0, i64 %indvars.iv36
  %48 = load double, ptr %arrayidx242, align 8, !tbaa !5
  %mul243 = fmul fast double %48, %44
  store double %mul243, ptr %arrayidx242, align 8, !tbaa !5
  %mul247 = fmul fast double %48, %45
  %arrayidx250 = getelementptr inbounds [576 x double], ptr getelementptr inbounds ([2 x [32 x [18 x double]]], ptr @do_layer3.hybridIn, i64 0, i64 1, i64 0, i64 0), i64 0, i64 %indvars.iv36
  store double %mul247, ptr %arrayidx250, align 8, !tbaa !5
  %dec252 = add nsw i32 %sb225.011, -1
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %cmp236 = icmp ugt i32 %sb225.011, 1
  br i1 %cmp236, label %for.body238, label %if.end256, !llvm.loop !130

if.end256:                                        ; preds = %for.body238, %if.end161, %if.then224, %if.then113, %for.end220, %for.end111
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @III_antialias(ptr nocapture noundef %xr, ptr nocapture noundef readonly %gr_info) unnamed_addr #6 {
entry:
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %0 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %1 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %cleanup, label %for.cond4.preheader.preheader

if.end2:                                          ; preds = %entry
  %maxb = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 10
  %2 = load i32, ptr %maxb, align 8, !tbaa !66
  %sub = add i32 %2, -1
  %tobool3.not34 = icmp eq i32 %sub, 0
  br i1 %tobool3.not34, label %cleanup, label %for.cond4.preheader.preheader

for.cond4.preheader.preheader:                    ; preds = %if.then, %if.end2
  %sblim.039 = phi i32 [ %sub, %if.end2 ], [ 1, %if.then ]
  %arrayidx = getelementptr inbounds [18 x double], ptr %xr, i64 1
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader.preheader, %for.end
  %xr1.036 = phi ptr [ %add.ptr, %for.end ], [ %arrayidx, %for.cond4.preheader.preheader ]
  %sb.035 = phi i32 [ %dec15, %for.end ], [ %sblim.039, %for.cond4.preheader.preheader ]
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %xr2.033 = phi ptr [ %xr1.036, %for.cond4.preheader ], [ %incdec.ptr, %for.body6 ]
  %ca.032 = phi ptr [ @aa_ca, %for.cond4.preheader ], [ %incdec.ptr11, %for.body6 ]
  %cs.031 = phi ptr [ @aa_cs, %for.cond4.preheader ], [ %incdec.ptr9, %for.body6 ]
  %ss.030 = phi i32 [ 7, %for.cond4.preheader ], [ %dec, %for.body6 ]
  %xr1.129 = phi ptr [ %xr1.036, %for.cond4.preheader ], [ %incdec.ptr13, %for.body6 ]
  %incdec.ptr = getelementptr inbounds double, ptr %xr2.033, i64 -1
  %3 = load double, ptr %incdec.ptr, align 8, !tbaa !5
  %4 = load double, ptr %xr1.129, align 8, !tbaa !5
  %5 = load double, ptr %cs.031, align 8, !tbaa !5
  %mul = fmul fast double %5, %3
  %6 = load double, ptr %ca.032, align 8, !tbaa !5
  %mul7 = fmul fast double %6, %4
  %sub8 = fsub fast double %mul, %mul7
  store double %sub8, ptr %incdec.ptr, align 8, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds double, ptr %cs.031, i64 1
  %7 = load double, ptr %cs.031, align 8, !tbaa !5
  %mul10 = fmul fast double %7, %4
  %incdec.ptr11 = getelementptr inbounds double, ptr %ca.032, i64 1
  %8 = load double, ptr %ca.032, align 8, !tbaa !5
  %mul12 = fmul fast double %8, %3
  %add = fadd fast double %mul12, %mul10
  %incdec.ptr13 = getelementptr inbounds double, ptr %xr1.129, i64 1
  store double %add, ptr %xr1.129, align 8, !tbaa !5
  %dec = add nsw i32 %ss.030, -1
  %cmp5.not = icmp eq i32 %ss.030, 0
  br i1 %cmp5.not, label %for.end, label %for.body6, !llvm.loop !131

for.end:                                          ; preds = %for.body6
  %dec15 = add nsw i32 %sb.035, -1
  %add.ptr = getelementptr inbounds double, ptr %xr1.129, i64 11
  %tobool3.not = icmp eq i32 %dec15, 0
  br i1 %tobool3.not, label %cleanup, label %for.cond4.preheader, !llvm.loop !132

cleanup:                                          ; preds = %for.end, %if.end2, %if.then
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @III_hybrid(ptr noundef %fsIn, ptr nocapture noundef %tsOut, i32 noundef %ch, ptr nocapture noundef readonly %gr_info) unnamed_addr #6 {
entry:
  %0 = load ptr, ptr @gmp, align 8, !tbaa !27
  %hybrid_block = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 7
  %hybrid_blc = getelementptr inbounds %struct.mpstr, ptr %0, i64 0, i32 8
  %idxprom = sext i32 %ch to i64
  %arrayidx = getelementptr inbounds i32, ptr %hybrid_blc, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !20
  %idxprom2 = sext i32 %1 to i64
  %arrayidx5 = getelementptr inbounds [2 x [576 x double]], ptr %hybrid_block, i64 %idxprom2, i64 %idxprom
  %add = sub i32 1, %1
  %idxprom7 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds [2 x [576 x double]], ptr %hybrid_block, i64 %idxprom7, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4, !tbaa !20
  %mixed_block_flag = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 5
  %2 = load i32, ptr %mixed_block_flag, align 4, !tbaa !77
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @dct36(ptr noundef %fsIn, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx10, ptr noundef nonnull @win, ptr noundef %tsOut)
  %arrayidx16 = getelementptr inbounds [18 x double], ptr %fsIn, i64 1
  %add.ptr = getelementptr inbounds double, ptr %arrayidx5, i64 18
  %add.ptr18 = getelementptr inbounds double, ptr %arrayidx10, i64 18
  %add.ptr19 = getelementptr inbounds double, ptr %tsOut, i64 1
  tail call fastcc void @dct36(ptr noundef nonnull %arrayidx16, ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr18, ptr noundef nonnull @win1, ptr noundef nonnull %add.ptr19)
  %add.ptr20 = getelementptr inbounds double, ptr %arrayidx5, i64 36
  %add.ptr21 = getelementptr inbounds double, ptr %arrayidx10, i64 36
  %add.ptr22 = getelementptr inbounds double, ptr %tsOut, i64 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %rawout2.0 = phi ptr [ %add.ptr21, %if.then ], [ %arrayidx10, %entry ]
  %rawout1.0 = phi ptr [ %add.ptr20, %if.then ], [ %arrayidx5, %entry ]
  %sb.0 = phi i32 [ 2, %if.then ], [ 0, %entry ]
  %tspnt.0 = phi ptr [ %add.ptr22, %if.then ], [ %tsOut, %entry ]
  %block_type = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 4
  %3 = load i32, ptr %block_type, align 8, !tbaa !76
  %cmp = icmp eq i32 %3, 2
  %maxb = getelementptr inbounds %struct.gr_info_s, ptr %gr_info, i64 0, i32 10
  %4 = load i32, ptr %maxb, align 8, !tbaa !66
  %cmp24147 = icmp ult i32 %sb.0, %4
  br i1 %cmp, label %for.cond.preheader, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %if.end
  br i1 %cmp24147, label %for.body42.lr.ph, label %for.cond69.preheader.preheader

for.body42.lr.ph:                                 ; preds = %for.cond39.preheader
  %idxprom46 = sext i32 %3 to i64
  %arrayidx47 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom46
  %arrayidx56 = getelementptr inbounds [4 x [36 x double]], ptr @win1, i64 0, i64 %idxprom46
  %5 = zext i32 %sb.0 to i64
  br label %for.body42

for.cond.preheader:                               ; preds = %if.end
  br i1 %cmp24147, label %for.body.preheader, label %for.cond69.preheader.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %6 = zext i32 %sb.0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv167 = phi i64 [ %6, %for.body.preheader ], [ %indvars.iv.next168, %for.body ]
  %tspnt.1151 = phi ptr [ %tspnt.0, %for.body.preheader ], [ %add.ptr36, %for.body ]
  %rawout1.1149 = phi ptr [ %rawout1.0, %for.body.preheader ], [ %add.ptr37, %for.body ]
  %rawout2.1148 = phi ptr [ %rawout2.0, %for.body.preheader ], [ %add.ptr38, %for.body ]
  %arrayidx26 = getelementptr inbounds [18 x double], ptr %fsIn, i64 %indvars.iv167
  tail call fastcc void @dct12(ptr noundef %arrayidx26, ptr noundef nonnull %rawout1.1149, ptr noundef nonnull %rawout2.1148, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2), ptr noundef %tspnt.1151)
  %7 = or i64 %indvars.iv167, 1
  %arrayidx30 = getelementptr inbounds [18 x double], ptr %fsIn, i64 %7
  %add.ptr32 = getelementptr inbounds double, ptr %rawout1.1149, i64 18
  %add.ptr33 = getelementptr inbounds double, ptr %rawout2.1148, i64 18
  %add.ptr34 = getelementptr inbounds double, ptr %tspnt.1151, i64 1
  tail call fastcc void @dct12(ptr noundef nonnull %arrayidx30, ptr noundef nonnull %add.ptr32, ptr noundef nonnull %add.ptr33, ptr noundef getelementptr inbounds ([4 x [36 x double]], ptr @win1, i64 0, i64 2), ptr noundef nonnull %add.ptr34)
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 2
  %add.ptr36 = getelementptr inbounds double, ptr %tspnt.1151, i64 2
  %add.ptr37 = getelementptr inbounds double, ptr %rawout1.1149, i64 36
  %add.ptr38 = getelementptr inbounds double, ptr %rawout2.1148, i64 36
  %8 = load i32, ptr %maxb, align 8, !tbaa !66
  %9 = zext i32 %8 to i64
  %cmp24 = icmp ult i64 %indvars.iv.next168, %9
  br i1 %cmp24, label %for.body, label %if.end65, !llvm.loop !133

for.body42:                                       ; preds = %for.body42.lr.ph, %for.body42
  %indvars.iv = phi i64 [ %5, %for.body42.lr.ph ], [ %indvars.iv.next, %for.body42 ]
  %tspnt.2143 = phi ptr [ %tspnt.0, %for.body42.lr.ph ], [ %add.ptr61, %for.body42 ]
  %rawout1.2141 = phi ptr [ %rawout1.0, %for.body42.lr.ph ], [ %add.ptr62, %for.body42 ]
  %rawout2.2140 = phi ptr [ %rawout2.0, %for.body42.lr.ph ], [ %add.ptr63, %for.body42 ]
  %arrayidx44 = getelementptr inbounds [18 x double], ptr %fsIn, i64 %indvars.iv
  tail call fastcc void @dct36(ptr noundef %arrayidx44, ptr noundef nonnull %rawout1.2141, ptr noundef nonnull %rawout2.2140, ptr noundef nonnull %arrayidx47, ptr noundef %tspnt.2143)
  %10 = or i64 %indvars.iv, 1
  %arrayidx51 = getelementptr inbounds [18 x double], ptr %fsIn, i64 %10
  %add.ptr53 = getelementptr inbounds double, ptr %rawout1.2141, i64 18
  %add.ptr54 = getelementptr inbounds double, ptr %rawout2.2140, i64 18
  %add.ptr58 = getelementptr inbounds double, ptr %tspnt.2143, i64 1
  tail call fastcc void @dct36(ptr noundef nonnull %arrayidx51, ptr noundef nonnull %add.ptr53, ptr noundef nonnull %add.ptr54, ptr noundef nonnull %arrayidx56, ptr noundef nonnull %add.ptr58)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %add.ptr61 = getelementptr inbounds double, ptr %tspnt.2143, i64 2
  %add.ptr62 = getelementptr inbounds double, ptr %rawout1.2141, i64 36
  %add.ptr63 = getelementptr inbounds double, ptr %rawout2.2140, i64 36
  %11 = load i32, ptr %maxb, align 8, !tbaa !66
  %12 = zext i32 %11 to i64
  %cmp41 = icmp ult i64 %indvars.iv.next, %12
  br i1 %cmp41, label %for.body42, label %if.end65, !llvm.loop !134

if.end65:                                         ; preds = %for.body42, %for.body
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next168, %for.body ], [ %indvars.iv.next, %for.body42 ]
  %rawout2.3 = phi ptr [ %add.ptr38, %for.body ], [ %add.ptr63, %for.body42 ]
  %rawout1.3 = phi ptr [ %add.ptr37, %for.body ], [ %add.ptr62, %for.body42 ]
  %tspnt.3 = phi ptr [ %add.ptr36, %for.body ], [ %add.ptr61, %for.body42 ]
  %13 = trunc i64 %indvars.iv.next.lcssa.sink to i32
  %cmp67159 = icmp slt i32 %13, 32
  br i1 %cmp67159, label %for.cond69.preheader.preheader, label %for.end80

for.cond69.preheader.preheader:                   ; preds = %for.cond39.preheader, %for.cond.preheader, %if.end65
  %tspnt.4163.ph = phi ptr [ %tspnt.0, %for.cond39.preheader ], [ %tspnt.0, %for.cond.preheader ], [ %tspnt.3, %if.end65 ]
  %sb.4162.ph = phi i32 [ %sb.0, %for.cond39.preheader ], [ %sb.0, %for.cond.preheader ], [ %13, %if.end65 ]
  %rawout1.4161.ph = phi ptr [ %rawout1.0, %for.cond39.preheader ], [ %rawout1.0, %for.cond.preheader ], [ %rawout1.3, %if.end65 ]
  %rawout2.4160.ph = phi ptr [ %rawout2.0, %for.cond39.preheader ], [ %rawout2.0, %for.cond.preheader ], [ %rawout2.3, %if.end65 ]
  br label %for.cond69.preheader

for.cond69.preheader:                             ; preds = %for.cond69.preheader.preheader, %for.end76
  %tspnt.4163 = phi ptr [ %incdec.ptr79, %for.end76 ], [ %tspnt.4163.ph, %for.cond69.preheader.preheader ]
  %sb.4162 = phi i32 [ %inc78, %for.end76 ], [ %sb.4162.ph, %for.cond69.preheader.preheader ]
  %rawout1.4161 = phi ptr [ %incdec.ptr, %for.end76 ], [ %rawout1.4161.ph, %for.cond69.preheader.preheader ]
  %rawout2.4160 = phi ptr [ %incdec.ptr74, %for.end76 ], [ %rawout2.4160.ph, %for.cond69.preheader.preheader ]
  br label %for.body71

for.body71:                                       ; preds = %for.cond69.preheader, %for.body71
  %indvars.iv171 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next172, %for.body71 ]
  %rawout1.5157 = phi ptr [ %rawout1.4161, %for.cond69.preheader ], [ %incdec.ptr, %for.body71 ]
  %rawout2.5156 = phi ptr [ %rawout2.4160, %for.cond69.preheader ], [ %incdec.ptr74, %for.body71 ]
  %incdec.ptr = getelementptr inbounds double, ptr %rawout1.5157, i64 1
  %14 = load double, ptr %rawout1.5157, align 8, !tbaa !5
  %15 = shl nuw nsw i64 %indvars.iv171, 5
  %arrayidx73 = getelementptr inbounds double, ptr %tspnt.4163, i64 %15
  store double %14, ptr %arrayidx73, align 8, !tbaa !5
  %incdec.ptr74 = getelementptr inbounds double, ptr %rawout2.5156, i64 1
  store double 0.000000e+00, ptr %rawout2.5156, align 8, !tbaa !5
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next172, 18
  br i1 %exitcond.not, label %for.end76, label %for.body71, !llvm.loop !135

for.end76:                                        ; preds = %for.body71
  %inc78 = add nsw i32 %sb.4162, 1
  %incdec.ptr79 = getelementptr inbounds double, ptr %tspnt.4163, i64 1
  %exitcond175.not = icmp eq i32 %inc78, 32
  br i1 %exitcond175.not, label %for.end80, label %for.cond69.preheader, !llvm.loop !136

for.end80:                                        ; preds = %for.end76, %if.end65
  ret void
}

declare i32 @synth_1to1_mono(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @synth_1to1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @getbits(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc i32 @get1bit() unnamed_addr #7 {
entry:
  %0 = load ptr, ptr @wordpointer, align 8, !tbaa !27
  %1 = load i8, ptr %0, align 1, !tbaa !92
  %conv = zext i8 %1 to i32
  %2 = load i32, ptr @bitindex, align 4, !tbaa !20
  %shl = shl i32 %conv, %2
  %inc = add nsw i32 %2, 1
  %shr = ashr i32 %inc, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr @wordpointer, align 8, !tbaa !27
  %and = and i32 %inc, 7
  store i32 %and, ptr @bitindex, align 4, !tbaa !20
  %conv2 = lshr i32 %shl, 7
  %3 = and i32 %conv2, 1
  ret i32 %3
}

declare i32 @getbits_fast(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @dct36(ptr noundef %inbuf, ptr nocapture noundef readonly %o1, ptr nocapture noundef writeonly %o2, ptr noundef readonly %wintab, ptr nocapture noundef writeonly %tsbuf) unnamed_addr #7 {
entry:
  %arrayidx = getelementptr inbounds double, ptr %inbuf, i64 16
  %0 = load double, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds double, ptr %inbuf, i64 17
  %1 = load double, ptr %arrayidx1, align 8, !tbaa !5
  %add = fadd fast double %1, %0
  %arrayidx2 = getelementptr inbounds double, ptr %inbuf, i64 15
  %2 = load double, ptr %arrayidx2, align 8, !tbaa !5
  %add4 = fadd fast double %2, %0
  store double %add4, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds double, ptr %inbuf, i64 14
  %3 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %add7 = fadd fast double %3, %2
  %arrayidx8 = getelementptr inbounds double, ptr %inbuf, i64 13
  %4 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %add10 = fadd fast double %4, %3
  store double %add10, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds double, ptr %inbuf, i64 12
  %5 = load double, ptr %arrayidx11, align 8, !tbaa !5
  %add13 = fadd fast double %5, %4
  %arrayidx14 = getelementptr inbounds double, ptr %inbuf, i64 11
  %6 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %add16 = fadd fast double %6, %5
  store double %add16, ptr %arrayidx11, align 8, !tbaa !5
  %arrayidx17 = getelementptr inbounds double, ptr %inbuf, i64 10
  %7 = load double, ptr %arrayidx17, align 8, !tbaa !5
  %add19 = fadd fast double %7, %6
  %arrayidx20 = getelementptr inbounds double, ptr %inbuf, i64 9
  %8 = load double, ptr %arrayidx20, align 8, !tbaa !5
  %add22 = fadd fast double %8, %7
  store double %add22, ptr %arrayidx17, align 8, !tbaa !5
  %arrayidx23 = getelementptr inbounds double, ptr %inbuf, i64 8
  %9 = load double, ptr %arrayidx23, align 8, !tbaa !5
  %add25 = fadd fast double %9, %8
  %arrayidx26 = getelementptr inbounds double, ptr %inbuf, i64 7
  %10 = load double, ptr %arrayidx26, align 8, !tbaa !5
  %add28 = fadd fast double %10, %9
  store double %add28, ptr %arrayidx23, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds double, ptr %inbuf, i64 6
  %11 = load double, ptr %arrayidx29, align 8, !tbaa !5
  %add31 = fadd fast double %11, %10
  %arrayidx32 = getelementptr inbounds double, ptr %inbuf, i64 5
  %12 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %add34 = fadd fast double %12, %11
  store double %add34, ptr %arrayidx29, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds double, ptr %inbuf, i64 4
  %13 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %add37 = fadd fast double %13, %12
  %arrayidx38 = getelementptr inbounds double, ptr %inbuf, i64 3
  %14 = load double, ptr %arrayidx38, align 8, !tbaa !5
  %add40 = fadd fast double %14, %13
  store double %add40, ptr %arrayidx35, align 8, !tbaa !5
  %arrayidx41 = getelementptr inbounds double, ptr %inbuf, i64 2
  %15 = load double, ptr %arrayidx41, align 8, !tbaa !5
  %add43 = fadd fast double %15, %14
  %arrayidx44 = getelementptr inbounds double, ptr %inbuf, i64 1
  %16 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %add46 = fadd fast double %16, %15
  store double %add46, ptr %arrayidx41, align 8, !tbaa !5
  %17 = load double, ptr %inbuf, align 8, !tbaa !5
  %add49 = fadd fast double %17, %16
  store double %add49, ptr %arrayidx44, align 8, !tbaa !5
  %add52 = fadd fast double %add7, %add
  store double %add52, ptr %arrayidx1, align 8, !tbaa !5
  %add55 = fadd fast double %add13, %add7
  store double %add55, ptr %arrayidx2, align 8, !tbaa !5
  %add58 = fadd fast double %add19, %add13
  store double %add58, ptr %arrayidx8, align 8, !tbaa !5
  %add61 = fadd fast double %add25, %add19
  store double %add61, ptr %arrayidx14, align 8, !tbaa !5
  %add64 = fadd fast double %add31, %add25
  store double %add64, ptr %arrayidx20, align 8, !tbaa !5
  %add67 = fadd fast double %add37, %add31
  store double %add67, ptr %arrayidx26, align 8, !tbaa !5
  %add70 = fadd fast double %add43, %add37
  store double %add70, ptr %arrayidx32, align 8, !tbaa !5
  %add73 = fadd fast double %add49, %add43
  store double %add73, ptr %arrayidx38, align 8, !tbaa !5
  %18 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 3), align 8, !tbaa !5
  %mul = fmul fast double %18, %add34
  %19 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 6), align 16, !tbaa !5
  %mul78 = fmul fast double %19, %add16
  %mul81 = fmul fast double %18, %add67
  %mul84 = fmul fast double %19, %add58
  %20 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 1), align 8, !tbaa !5
  %mul87 = fmul fast double %20, %add46
  %add88 = fadd fast double %mul87, %mul
  %21 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 5), align 8, !tbaa !5
  %mul91 = fmul fast double %21, %add22
  %add92 = fadd fast double %add88, %mul91
  %22 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 7), align 8, !tbaa !5
  %mul95 = fmul fast double %22, %add10
  %add96 = fadd fast double %add92, %mul95
  %mul99 = fmul fast double %20, %add73
  %add100 = fadd fast double %mul99, %mul81
  %mul103 = fmul fast double %21, %add61
  %add104 = fadd fast double %add100, %mul103
  %mul107 = fmul fast double %22, %add55
  %add108 = fadd fast double %add104, %mul107
  %23 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 2), align 16, !tbaa !5
  %mul112 = fmul fast double %23, %add40
  %24 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 4), align 16, !tbaa !5
  %mul116 = fmul fast double %24, %add28
  %25 = load double, ptr getelementptr inbounds ([9 x double], ptr @COS9, i64 0, i64 8), align 16, !tbaa !5
  %mul121 = fmul fast double %25, %add4
  %add113 = fadd fast double %mul78, %17
  %add117 = fadd fast double %add113, %mul112
  %add118 = fadd fast double %add117, %mul116
  %add122 = fadd fast double %add118, %mul121
  %mul126 = fmul fast double %23, %add70
  %mul130 = fmul fast double %24, %add64
  %mul135 = fmul fast double %25, %add52
  %add127 = fadd fast double %mul84, %add49
  %add131 = fadd fast double %add127, %mul126
  %add132 = fadd fast double %add131, %mul130
  %add136 = fadd fast double %add132, %mul135
  %add137 = fadd fast double %add122, %add96
  %add138 = fadd fast double %add136, %add108
  %26 = load double, ptr @tfcos36, align 16, !tbaa !5
  %mul139 = fmul fast double %add138, %26
  %add140 = fadd fast double %mul139, %add137
  %arrayidx141 = getelementptr inbounds double, ptr %wintab, i64 27
  %27 = load double, ptr %arrayidx141, align 8, !tbaa !5
  %mul142 = fmul fast double %add140, %27
  %arrayidx143 = getelementptr inbounds double, ptr %o2, i64 9
  store double %mul142, ptr %arrayidx143, align 8, !tbaa !5
  %arrayidx144 = getelementptr inbounds double, ptr %wintab, i64 26
  %28 = load double, ptr %arrayidx144, align 8, !tbaa !5
  %mul145 = fmul fast double %add140, %28
  %arrayidx146 = getelementptr inbounds double, ptr %o2, i64 8
  store double %mul145, ptr %arrayidx146, align 8, !tbaa !5
  %sub = fsub fast double %add137, %mul139
  %arrayidx147 = getelementptr inbounds double, ptr %o1, i64 8
  %29 = load double, ptr %arrayidx147, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds double, ptr %wintab, i64 8
  %30 = load double, ptr %arrayidx148, align 8, !tbaa !5
  %mul149 = fmul fast double %30, %sub
  %add150 = fadd fast double %mul149, %29
  %arrayidx151 = getelementptr inbounds double, ptr %tsbuf, i64 256
  store double %add150, ptr %arrayidx151, align 8, !tbaa !5
  %arrayidx152 = getelementptr inbounds double, ptr %o1, i64 9
  %31 = load double, ptr %arrayidx152, align 8, !tbaa !5
  %arrayidx153 = getelementptr inbounds double, ptr %wintab, i64 9
  %32 = load double, ptr %arrayidx153, align 8, !tbaa !5
  %mul154 = fmul fast double %32, %sub
  %add155 = fadd fast double %mul154, %31
  %arrayidx156 = getelementptr inbounds double, ptr %tsbuf, i64 288
  store double %add155, ptr %arrayidx156, align 8, !tbaa !5
  %sub159 = fsub fast double %add122, %add96
  %sub160 = fsub fast double %add136, %add108
  %33 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 8), align 16, !tbaa !5
  %mul161 = fmul fast double %33, %sub160
  %add163 = fadd fast double %mul161, %sub159
  %arrayidx164 = getelementptr inbounds double, ptr %wintab, i64 35
  %34 = load double, ptr %arrayidx164, align 8, !tbaa !5
  %mul165 = fmul fast double %add163, %34
  %arrayidx166 = getelementptr inbounds double, ptr %o2, i64 17
  store double %mul165, ptr %arrayidx166, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds double, ptr %wintab, i64 18
  %35 = load double, ptr %arrayidx167, align 8, !tbaa !5
  %mul168 = fmul fast double %35, %add163
  store double %mul168, ptr %o2, align 8, !tbaa !5
  %sub170 = fsub fast double %sub159, %mul161
  %36 = load double, ptr %o1, align 8, !tbaa !5
  %37 = load double, ptr %wintab, align 8, !tbaa !5
  %mul173 = fmul fast double %37, %sub170
  %add174 = fadd fast double %mul173, %36
  store double %add174, ptr %tsbuf, align 8, !tbaa !5
  %arrayidx176 = getelementptr inbounds double, ptr %o1, i64 17
  %38 = load double, ptr %arrayidx176, align 8, !tbaa !5
  %arrayidx177 = getelementptr inbounds double, ptr %wintab, i64 17
  %39 = load double, ptr %arrayidx177, align 8, !tbaa !5
  %mul178 = fmul fast double %39, %sub170
  %add179 = fadd fast double %mul178, %38
  %arrayidx180 = getelementptr inbounds double, ptr %tsbuf, i64 544
  store double %add179, ptr %arrayidx180, align 8, !tbaa !5
  %40 = load double, ptr %arrayidx41, align 8, !tbaa !5
  %41 = load double, ptr %arrayidx17, align 8, !tbaa !5
  %42 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %43 = fadd fast double %41, %42
  %sub189 = fsub fast double %40, %43
  %mul191 = fmul fast double %sub189, %18
  %44 = load double, ptr %arrayidx38, align 8, !tbaa !5
  %45 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %46 = load double, ptr %arrayidx2, align 8, !tbaa !5
  %47 = fadd fast double %45, %46
  %sub196 = fsub fast double %44, %47
  %mul198 = fmul fast double %sub196, %18
  %48 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %49 = load double, ptr %arrayidx23, align 8, !tbaa !5
  %50 = load double, ptr %arrayidx, align 8, !tbaa !5
  %51 = fadd fast double %49, %50
  %sub203 = fsub fast double %48, %51
  %mul205 = fmul fast double %sub203, %19
  %52 = load double, ptr %arrayidx11, align 8, !tbaa !5
  %sub207 = fsub fast double %mul205, %52
  %53 = load double, ptr %inbuf, align 8, !tbaa !5
  %add209 = fadd fast double %sub207, %53
  %54 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %55 = load double, ptr %arrayidx20, align 8, !tbaa !5
  %56 = load double, ptr %arrayidx1, align 8, !tbaa !5
  %57 = fadd fast double %55, %56
  %sub214 = fsub fast double %54, %57
  %mul216 = fmul fast double %sub214, %19
  %58 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %sub218 = fsub fast double %mul216, %58
  %59 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %add220 = fadd fast double %sub218, %59
  %add223 = fadd fast double %add209, %mul191
  %add224 = fadd fast double %add220, %mul198
  %60 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 1), align 8, !tbaa !5
  %mul225 = fmul fast double %add224, %60
  %add227 = fadd fast double %mul225, %add223
  %arrayidx228 = getelementptr inbounds double, ptr %wintab, i64 28
  %61 = load double, ptr %arrayidx228, align 8, !tbaa !5
  %mul229 = fmul fast double %add227, %61
  %arrayidx230 = getelementptr inbounds double, ptr %o2, i64 10
  store double %mul229, ptr %arrayidx230, align 8, !tbaa !5
  %arrayidx231 = getelementptr inbounds double, ptr %wintab, i64 25
  %62 = load double, ptr %arrayidx231, align 8, !tbaa !5
  %mul232 = fmul fast double %add227, %62
  %arrayidx233 = getelementptr inbounds double, ptr %o2, i64 7
  store double %mul232, ptr %arrayidx233, align 8, !tbaa !5
  %sub234 = fsub fast double %add223, %mul225
  %arrayidx235 = getelementptr inbounds double, ptr %o1, i64 7
  %63 = load double, ptr %arrayidx235, align 8, !tbaa !5
  %arrayidx236 = getelementptr inbounds double, ptr %wintab, i64 7
  %64 = load double, ptr %arrayidx236, align 8, !tbaa !5
  %mul237 = fmul fast double %64, %sub234
  %add238 = fadd fast double %mul237, %63
  %arrayidx239 = getelementptr inbounds double, ptr %tsbuf, i64 224
  store double %add238, ptr %arrayidx239, align 8, !tbaa !5
  %arrayidx240 = getelementptr inbounds double, ptr %o1, i64 10
  %65 = load double, ptr %arrayidx240, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds double, ptr %wintab, i64 10
  %66 = load double, ptr %arrayidx241, align 8, !tbaa !5
  %mul242 = fmul fast double %66, %sub234
  %add243 = fadd fast double %mul242, %65
  %arrayidx244 = getelementptr inbounds double, ptr %tsbuf, i64 320
  store double %add243, ptr %arrayidx244, align 8, !tbaa !5
  %sub247 = fsub fast double %add209, %mul191
  %sub248 = fsub fast double %add220, %mul198
  %67 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 7), align 8, !tbaa !5
  %mul249 = fmul fast double %67, %sub248
  %add251 = fadd fast double %mul249, %sub247
  %arrayidx252 = getelementptr inbounds double, ptr %wintab, i64 34
  %68 = load double, ptr %arrayidx252, align 8, !tbaa !5
  %mul253 = fmul fast double %add251, %68
  %arrayidx254 = getelementptr inbounds double, ptr %o2, i64 16
  store double %mul253, ptr %arrayidx254, align 8, !tbaa !5
  %arrayidx255 = getelementptr inbounds double, ptr %wintab, i64 19
  %69 = load double, ptr %arrayidx255, align 8, !tbaa !5
  %mul256 = fmul fast double %69, %add251
  %arrayidx257 = getelementptr inbounds double, ptr %o2, i64 1
  store double %mul256, ptr %arrayidx257, align 8, !tbaa !5
  %sub258 = fsub fast double %sub247, %mul249
  %arrayidx259 = getelementptr inbounds double, ptr %o1, i64 1
  %70 = load double, ptr %arrayidx259, align 8, !tbaa !5
  %arrayidx260 = getelementptr inbounds double, ptr %wintab, i64 1
  %71 = load double, ptr %arrayidx260, align 8, !tbaa !5
  %mul261 = fmul fast double %71, %sub258
  %add262 = fadd fast double %mul261, %70
  %arrayidx263 = getelementptr inbounds double, ptr %tsbuf, i64 32
  store double %add262, ptr %arrayidx263, align 8, !tbaa !5
  %arrayidx264 = getelementptr inbounds double, ptr %o1, i64 16
  %72 = load double, ptr %arrayidx264, align 8, !tbaa !5
  %arrayidx265 = getelementptr inbounds double, ptr %wintab, i64 16
  %73 = load double, ptr %arrayidx265, align 8, !tbaa !5
  %mul266 = fmul fast double %73, %sub258
  %add267 = fadd fast double %mul266, %72
  %arrayidx268 = getelementptr inbounds double, ptr %tsbuf, i64 512
  store double %add267, ptr %arrayidx268, align 8, !tbaa !5
  %74 = load double, ptr %arrayidx41, align 8, !tbaa !5
  %mul275 = fmul fast double %74, %21
  %75 = load double, ptr %arrayidx17, align 8, !tbaa !5
  %76 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %mul283 = fmul fast double %76, %20
  %77 = fmul fast double %75, %22
  %78 = fadd fast double %mul, %77
  %sub280 = fsub fast double %mul275, %78
  %add284 = fadd fast double %sub280, %mul283
  %79 = load double, ptr %arrayidx38, align 8, !tbaa !5
  %mul287 = fmul fast double %79, %21
  %80 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %81 = load double, ptr %arrayidx2, align 8, !tbaa !5
  %mul295 = fmul fast double %81, %20
  %82 = fmul fast double %80, %22
  %83 = fadd fast double %mul81, %82
  %sub292 = fsub fast double %mul287, %83
  %add296 = fadd fast double %sub292, %mul295
  %84 = load double, ptr %inbuf, align 8, !tbaa !5
  %85 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %86 = load double, ptr %arrayidx23, align 8, !tbaa !5
  %mul300.neg = fmul fast double %85, %25
  %mul304.neg = fmul fast double %86, %23
  %87 = load double, ptr %arrayidx, align 8, !tbaa !5
  %mul309 = fmul fast double %87, %24
  %reass.add = fadd fast double %mul304.neg, %mul300.neg
  %sub305 = fadd fast double %84, %mul78
  %add306 = fadd fast double %sub305, %mul309
  %add310 = fsub fast double %add306, %reass.add
  %88 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %89 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %90 = load double, ptr %arrayidx20, align 8, !tbaa !5
  %mul314.neg = fmul fast double %89, %25
  %mul318.neg = fmul fast double %90, %23
  %91 = load double, ptr %arrayidx1, align 8, !tbaa !5
  %mul323 = fmul fast double %91, %24
  %reass.add850 = fadd fast double %mul318.neg, %mul314.neg
  %sub319 = fadd fast double %88, %mul84
  %add320 = fadd fast double %sub319, %mul323
  %add324 = fsub fast double %add320, %reass.add850
  %add327 = fadd fast double %add310, %add284
  %add328 = fadd fast double %add324, %add296
  %92 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 2), align 16, !tbaa !5
  %mul329 = fmul fast double %add328, %92
  %add331 = fadd fast double %mul329, %add327
  %arrayidx332 = getelementptr inbounds double, ptr %wintab, i64 29
  %93 = load double, ptr %arrayidx332, align 8, !tbaa !5
  %mul333 = fmul fast double %add331, %93
  %arrayidx334 = getelementptr inbounds double, ptr %o2, i64 11
  store double %mul333, ptr %arrayidx334, align 8, !tbaa !5
  %arrayidx335 = getelementptr inbounds double, ptr %wintab, i64 24
  %94 = load double, ptr %arrayidx335, align 8, !tbaa !5
  %mul336 = fmul fast double %add331, %94
  %arrayidx337 = getelementptr inbounds double, ptr %o2, i64 6
  store double %mul336, ptr %arrayidx337, align 8, !tbaa !5
  %sub338 = fsub fast double %add327, %mul329
  %arrayidx339 = getelementptr inbounds double, ptr %o1, i64 6
  %95 = load double, ptr %arrayidx339, align 8, !tbaa !5
  %arrayidx340 = getelementptr inbounds double, ptr %wintab, i64 6
  %96 = load double, ptr %arrayidx340, align 8, !tbaa !5
  %mul341 = fmul fast double %sub338, %96
  %add342 = fadd fast double %mul341, %95
  %arrayidx343 = getelementptr inbounds double, ptr %tsbuf, i64 192
  store double %add342, ptr %arrayidx343, align 8, !tbaa !5
  %arrayidx344 = getelementptr inbounds double, ptr %o1, i64 11
  %97 = load double, ptr %arrayidx344, align 8, !tbaa !5
  %arrayidx345 = getelementptr inbounds double, ptr %wintab, i64 11
  %98 = load double, ptr %arrayidx345, align 8, !tbaa !5
  %mul346 = fmul fast double %98, %sub338
  %add347 = fadd fast double %mul346, %97
  %arrayidx348 = getelementptr inbounds double, ptr %tsbuf, i64 352
  store double %add347, ptr %arrayidx348, align 8, !tbaa !5
  %sub351 = fsub fast double %add310, %add284
  %sub352 = fsub fast double %add324, %add296
  %99 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 6), align 16, !tbaa !5
  %mul353 = fmul fast double %99, %sub352
  %add355 = fadd fast double %mul353, %sub351
  %arrayidx356 = getelementptr inbounds double, ptr %wintab, i64 33
  %100 = load double, ptr %arrayidx356, align 8, !tbaa !5
  %mul357 = fmul fast double %add355, %100
  %arrayidx358 = getelementptr inbounds double, ptr %o2, i64 15
  store double %mul357, ptr %arrayidx358, align 8, !tbaa !5
  %arrayidx359 = getelementptr inbounds double, ptr %wintab, i64 20
  %101 = load double, ptr %arrayidx359, align 8, !tbaa !5
  %mul360 = fmul fast double %101, %add355
  %arrayidx361 = getelementptr inbounds double, ptr %o2, i64 2
  store double %mul360, ptr %arrayidx361, align 8, !tbaa !5
  %sub362 = fsub fast double %sub351, %mul353
  %arrayidx363 = getelementptr inbounds double, ptr %o1, i64 2
  %102 = load double, ptr %arrayidx363, align 8, !tbaa !5
  %arrayidx364 = getelementptr inbounds double, ptr %wintab, i64 2
  %103 = load double, ptr %arrayidx364, align 8, !tbaa !5
  %mul365 = fmul fast double %103, %sub362
  %add366 = fadd fast double %mul365, %102
  %arrayidx367 = getelementptr inbounds double, ptr %tsbuf, i64 64
  store double %add366, ptr %arrayidx367, align 8, !tbaa !5
  %arrayidx368 = getelementptr inbounds double, ptr %o1, i64 15
  %104 = load double, ptr %arrayidx368, align 8, !tbaa !5
  %arrayidx369 = getelementptr inbounds double, ptr %wintab, i64 15
  %105 = load double, ptr %arrayidx369, align 8, !tbaa !5
  %mul370 = fmul fast double %105, %sub362
  %add371 = fadd fast double %mul370, %104
  %arrayidx372 = getelementptr inbounds double, ptr %tsbuf, i64 480
  store double %add371, ptr %arrayidx372, align 8, !tbaa !5
  %106 = load double, ptr %arrayidx41, align 8, !tbaa !5
  %mul379 = fmul fast double %106, %22
  %107 = load double, ptr %arrayidx17, align 8, !tbaa !5
  %mul383 = fmul fast double %107, %20
  %108 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %109 = fmul fast double %108, %21
  %110 = fadd fast double %mul379, %mul383
  %111 = fadd fast double %mul, %109
  %sub388 = fsub fast double %110, %111
  %112 = load double, ptr %arrayidx38, align 8, !tbaa !5
  %mul391 = fmul fast double %112, %22
  %113 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %mul395 = fmul fast double %113, %20
  %114 = load double, ptr %arrayidx2, align 8, !tbaa !5
  %115 = fmul fast double %114, %21
  %116 = fadd fast double %mul391, %mul395
  %117 = fadd fast double %mul81, %115
  %sub400 = fsub fast double %116, %117
  %118 = load double, ptr %inbuf, align 8, !tbaa !5
  %119 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %mul404.neg = fmul fast double %119, %24
  %120 = load double, ptr %arrayidx23, align 8, !tbaa !5
  %mul408 = fmul fast double %120, %25
  %121 = load double, ptr %arrayidx, align 8, !tbaa !5
  %mul413.neg = fmul fast double %121, %23
  %reass.add852 = fadd fast double %mul413.neg, %mul404.neg
  %add409 = fadd fast double %118, %mul78
  %add410 = fadd fast double %add409, %mul408
  %sub414 = fsub fast double %add410, %reass.add852
  %122 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %123 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %mul418.neg = fmul fast double %123, %24
  %124 = load double, ptr %arrayidx20, align 8, !tbaa !5
  %mul422 = fmul fast double %124, %25
  %125 = load double, ptr %arrayidx1, align 8, !tbaa !5
  %mul427.neg = fmul fast double %125, %23
  %reass.add854 = fadd fast double %mul427.neg, %mul418.neg
  %add423 = fadd fast double %122, %mul84
  %add424 = fadd fast double %add423, %mul422
  %sub428 = fsub fast double %add424, %reass.add854
  %add431 = fadd fast double %sub414, %sub388
  %add432 = fadd fast double %sub428, %sub400
  %126 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 3), align 8, !tbaa !5
  %mul433 = fmul fast double %add432, %126
  %add435 = fadd fast double %mul433, %add431
  %arrayidx436 = getelementptr inbounds double, ptr %wintab, i64 30
  %127 = load double, ptr %arrayidx436, align 8, !tbaa !5
  %mul437 = fmul fast double %add435, %127
  %arrayidx438 = getelementptr inbounds double, ptr %o2, i64 12
  store double %mul437, ptr %arrayidx438, align 8, !tbaa !5
  %arrayidx439 = getelementptr inbounds double, ptr %wintab, i64 23
  %128 = load double, ptr %arrayidx439, align 8, !tbaa !5
  %mul440 = fmul fast double %add435, %128
  %arrayidx441 = getelementptr inbounds double, ptr %o2, i64 5
  store double %mul440, ptr %arrayidx441, align 8, !tbaa !5
  %sub442 = fsub fast double %add431, %mul433
  %arrayidx443 = getelementptr inbounds double, ptr %o1, i64 5
  %129 = load double, ptr %arrayidx443, align 8, !tbaa !5
  %arrayidx444 = getelementptr inbounds double, ptr %wintab, i64 5
  %130 = load double, ptr %arrayidx444, align 8, !tbaa !5
  %mul445 = fmul fast double %130, %sub442
  %add446 = fadd fast double %mul445, %129
  %arrayidx447 = getelementptr inbounds double, ptr %tsbuf, i64 160
  store double %add446, ptr %arrayidx447, align 8, !tbaa !5
  %arrayidx448 = getelementptr inbounds double, ptr %o1, i64 12
  %131 = load double, ptr %arrayidx448, align 8, !tbaa !5
  %arrayidx449 = getelementptr inbounds double, ptr %wintab, i64 12
  %132 = load double, ptr %arrayidx449, align 8, !tbaa !5
  %mul450 = fmul fast double %132, %sub442
  %add451 = fadd fast double %mul450, %131
  %arrayidx452 = getelementptr inbounds double, ptr %tsbuf, i64 384
  store double %add451, ptr %arrayidx452, align 8, !tbaa !5
  %sub455 = fsub fast double %sub414, %sub388
  %sub456 = fsub fast double %sub428, %sub400
  %133 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 5), align 8, !tbaa !5
  %mul457 = fmul fast double %133, %sub456
  %add459 = fadd fast double %mul457, %sub455
  %arrayidx460 = getelementptr inbounds double, ptr %wintab, i64 32
  %134 = load double, ptr %arrayidx460, align 8, !tbaa !5
  %mul461 = fmul fast double %add459, %134
  %arrayidx462 = getelementptr inbounds double, ptr %o2, i64 14
  store double %mul461, ptr %arrayidx462, align 8, !tbaa !5
  %arrayidx463 = getelementptr inbounds double, ptr %wintab, i64 21
  %135 = load double, ptr %arrayidx463, align 8, !tbaa !5
  %mul464 = fmul fast double %135, %add459
  %arrayidx465 = getelementptr inbounds double, ptr %o2, i64 3
  store double %mul464, ptr %arrayidx465, align 8, !tbaa !5
  %sub466 = fsub fast double %sub455, %mul457
  %arrayidx467 = getelementptr inbounds double, ptr %o1, i64 3
  %136 = load double, ptr %arrayidx467, align 8, !tbaa !5
  %arrayidx468 = getelementptr inbounds double, ptr %wintab, i64 3
  %137 = load double, ptr %arrayidx468, align 8, !tbaa !5
  %mul469 = fmul fast double %137, %sub466
  %add470 = fadd fast double %mul469, %136
  %arrayidx471 = getelementptr inbounds double, ptr %tsbuf, i64 96
  store double %add470, ptr %arrayidx471, align 8, !tbaa !5
  %arrayidx472 = getelementptr inbounds double, ptr %o1, i64 14
  %138 = load double, ptr %arrayidx472, align 8, !tbaa !5
  %arrayidx473 = getelementptr inbounds double, ptr %wintab, i64 14
  %139 = load double, ptr %arrayidx473, align 8, !tbaa !5
  %mul474 = fmul fast double %139, %sub466
  %add475 = fadd fast double %mul474, %138
  %arrayidx476 = getelementptr inbounds double, ptr %tsbuf, i64 448
  store double %add475, ptr %arrayidx476, align 8, !tbaa !5
  %140 = load double, ptr %inbuf, align 8, !tbaa !5
  %141 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %142 = load double, ptr %arrayidx23, align 8, !tbaa !5
  %143 = load double, ptr %arrayidx11, align 8, !tbaa !5
  %144 = load double, ptr %arrayidx, align 8, !tbaa !5
  %145 = fadd fast double %140, %142
  %146 = fadd fast double %141, %143
  %sub485 = fsub fast double %145, %146
  %add487 = fadd fast double %sub485, %144
  %147 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %148 = load double, ptr %arrayidx32, align 8, !tbaa !5
  %149 = load double, ptr %arrayidx20, align 8, !tbaa !5
  %150 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %151 = load double, ptr %arrayidx1, align 8, !tbaa !5
  %152 = fadd fast double %147, %149
  %153 = fadd fast double %148, %150
  %sub494 = fsub fast double %152, %153
  %add496 = fadd fast double %sub494, %151
  %154 = load double, ptr getelementptr inbounds ([9 x double], ptr @tfcos36, i64 0, i64 4), align 16, !tbaa !5
  %mul497 = fmul fast double %add496, %154
  %add499 = fadd fast double %mul497, %add487
  %arrayidx500 = getelementptr inbounds double, ptr %wintab, i64 31
  %155 = load double, ptr %arrayidx500, align 8, !tbaa !5
  %mul501 = fmul fast double %add499, %155
  %arrayidx502 = getelementptr inbounds double, ptr %o2, i64 13
  store double %mul501, ptr %arrayidx502, align 8, !tbaa !5
  %arrayidx503 = getelementptr inbounds double, ptr %wintab, i64 22
  %156 = load double, ptr %arrayidx503, align 8, !tbaa !5
  %mul504 = fmul fast double %add499, %156
  %arrayidx505 = getelementptr inbounds double, ptr %o2, i64 4
  store double %mul504, ptr %arrayidx505, align 8, !tbaa !5
  %sub506 = fsub fast double %add487, %mul497
  %arrayidx507 = getelementptr inbounds double, ptr %o1, i64 4
  %157 = load double, ptr %arrayidx507, align 8, !tbaa !5
  %arrayidx508 = getelementptr inbounds double, ptr %wintab, i64 4
  %158 = load double, ptr %arrayidx508, align 8, !tbaa !5
  %mul509 = fmul fast double %158, %sub506
  %add510 = fadd fast double %mul509, %157
  %arrayidx511 = getelementptr inbounds double, ptr %tsbuf, i64 128
  store double %add510, ptr %arrayidx511, align 8, !tbaa !5
  %arrayidx512 = getelementptr inbounds double, ptr %o1, i64 13
  %159 = load double, ptr %arrayidx512, align 8, !tbaa !5
  %arrayidx513 = getelementptr inbounds double, ptr %wintab, i64 13
  %160 = load double, ptr %arrayidx513, align 8, !tbaa !5
  %mul514 = fmul fast double %160, %sub506
  %add515 = fadd fast double %mul514, %159
  %arrayidx516 = getelementptr inbounds double, ptr %tsbuf, i64 416
  store double %add515, ptr %arrayidx516, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define internal fastcc void @dct12(ptr nocapture noundef readonly %in, ptr nocapture noundef readonly %rawout1, ptr nocapture noundef %rawout2, ptr nocapture noundef readonly %wi, ptr nocapture noundef %ts) unnamed_addr #7 {
entry:
  %0 = load double, ptr %rawout1, align 8, !tbaa !5
  store double %0, ptr %ts, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds double, ptr %rawout1, i64 1
  %1 = load double, ptr %arrayidx2, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds double, ptr %ts, i64 32
  store double %1, ptr %arrayidx3, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds double, ptr %rawout1, i64 2
  %2 = load double, ptr %arrayidx4, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds double, ptr %ts, i64 64
  store double %2, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds double, ptr %rawout1, i64 3
  %3 = load double, ptr %arrayidx6, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds double, ptr %ts, i64 96
  store double %3, ptr %arrayidx7, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds double, ptr %rawout1, i64 4
  %4 = load double, ptr %arrayidx8, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds double, ptr %ts, i64 128
  store double %4, ptr %arrayidx9, align 8, !tbaa !5
  %arrayidx10 = getelementptr inbounds double, ptr %rawout1, i64 5
  %5 = load double, ptr %arrayidx10, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds double, ptr %ts, i64 160
  store double %5, ptr %arrayidx11, align 8, !tbaa !5
  %arrayidx12 = getelementptr inbounds double, ptr %in, i64 15
  %6 = load double, ptr %arrayidx12, align 8, !tbaa !5
  %arrayidx13 = getelementptr inbounds double, ptr %in, i64 12
  %7 = load double, ptr %arrayidx13, align 8, !tbaa !5
  %add = fadd fast double %7, %6
  %arrayidx14 = getelementptr inbounds double, ptr %in, i64 9
  %8 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %add15 = fadd fast double %8, %7
  %arrayidx16 = getelementptr inbounds double, ptr %in, i64 6
  %9 = load double, ptr %arrayidx16, align 8, !tbaa !5
  %add17 = fadd fast double %9, %8
  %arrayidx18 = getelementptr inbounds double, ptr %in, i64 3
  %10 = load double, ptr %arrayidx18, align 8, !tbaa !5
  %add19 = fadd fast double %10, %9
  %11 = load double, ptr %in, align 8, !tbaa !5
  %add21 = fadd fast double %11, %10
  %add22 = fadd fast double %add, %add17
  %add23 = fadd fast double %add21, %add17
  %12 = load double, ptr @COS6_1, align 8, !tbaa !5
  %mul = fmul fast double %12, %add19
  %mul24 = fmul fast double %add23, %12
  %sub = fsub fast double %11, %add15
  %sub25 = fsub fast double %add21, %add22
  %13 = load double, ptr getelementptr inbounds ([3 x double], ptr @tfcos12, i64 0, i64 1), align 8, !tbaa !5
  %mul26 = fmul fast double %sub25, %13
  %add27 = fadd fast double %mul26, %sub
  %sub28 = fsub fast double %sub, %mul26
  %arrayidx29 = getelementptr inbounds double, ptr %rawout1, i64 16
  %14 = load double, ptr %arrayidx29, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds double, ptr %wi, i64 10
  %15 = load double, ptr %arrayidx30, align 8, !tbaa !5
  %mul31 = fmul fast double %add27, %15
  %add32 = fadd fast double %mul31, %14
  %arrayidx33 = getelementptr inbounds double, ptr %ts, i64 512
  store double %add32, ptr %arrayidx33, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds double, ptr %rawout1, i64 13
  %16 = load double, ptr %arrayidx34, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds double, ptr %wi, i64 7
  %17 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %mul36 = fmul fast double %17, %add27
  %add37 = fadd fast double %mul36, %16
  %arrayidx38 = getelementptr inbounds double, ptr %ts, i64 416
  store double %add37, ptr %arrayidx38, align 8, !tbaa !5
  %arrayidx39 = getelementptr inbounds double, ptr %rawout1, i64 7
  %18 = load double, ptr %arrayidx39, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds double, ptr %wi, i64 1
  %19 = load double, ptr %arrayidx40, align 8, !tbaa !5
  %mul41 = fmul fast double %19, %sub28
  %add42 = fadd fast double %mul41, %18
  %arrayidx43 = getelementptr inbounds double, ptr %ts, i64 224
  store double %add42, ptr %arrayidx43, align 8, !tbaa !5
  %arrayidx44 = getelementptr inbounds double, ptr %rawout1, i64 10
  %20 = load double, ptr %arrayidx44, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds double, ptr %wi, i64 4
  %21 = load double, ptr %arrayidx45, align 8, !tbaa !5
  %mul46 = fmul fast double %21, %sub28
  %add47 = fadd fast double %mul46, %20
  %arrayidx48 = getelementptr inbounds double, ptr %ts, i64 320
  store double %add47, ptr %arrayidx48, align 8, !tbaa !5
  %22 = load double, ptr @COS6_2, align 8, !tbaa !5
  %mul49 = fmul fast double %22, %add15
  %add50 = fadd fast double %mul49, %11
  %add51 = fadd fast double %add50, %mul
  %sub52 = fsub fast double %add50, %mul
  %mul53 = fmul fast double %22, %add22
  %add54 = fadd fast double %mul53, %add21
  %add55 = fadd fast double %add54, %mul24
  %23 = load double, ptr @tfcos12, align 16, !tbaa !5
  %mul56 = fmul fast double %add55, %23
  %sub57 = fsub fast double %add54, %mul24
  %24 = load double, ptr getelementptr inbounds ([3 x double], ptr @tfcos12, i64 0, i64 2), align 16, !tbaa !5
  %mul58 = fmul fast double %sub57, %24
  %add59 = fadd fast double %mul56, %add51
  %sub60 = fsub fast double %add51, %mul56
  %add61 = fadd fast double %mul58, %sub52
  %sub62 = fsub fast double %sub52, %mul58
  %arrayidx63 = getelementptr inbounds double, ptr %rawout1, i64 17
  %25 = load double, ptr %arrayidx63, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds double, ptr %wi, i64 11
  %26 = load double, ptr %arrayidx64, align 8, !tbaa !5
  %mul65 = fmul fast double %add61, %26
  %add66 = fadd fast double %mul65, %25
  %arrayidx67 = getelementptr inbounds double, ptr %ts, i64 544
  store double %add66, ptr %arrayidx67, align 8, !tbaa !5
  %arrayidx68 = getelementptr inbounds double, ptr %rawout1, i64 12
  %27 = load double, ptr %arrayidx68, align 8, !tbaa !5
  %arrayidx69 = getelementptr inbounds double, ptr %wi, i64 6
  %28 = load double, ptr %arrayidx69, align 8, !tbaa !5
  %mul70 = fmul fast double %28, %add61
  %add71 = fadd fast double %mul70, %27
  %arrayidx72 = getelementptr inbounds double, ptr %ts, i64 384
  store double %add71, ptr %arrayidx72, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds double, ptr %rawout1, i64 14
  %29 = load double, ptr %arrayidx73, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds double, ptr %wi, i64 8
  %30 = load double, ptr %arrayidx74, align 8, !tbaa !5
  %mul75 = fmul fast double %30, %add59
  %add76 = fadd fast double %mul75, %29
  %arrayidx77 = getelementptr inbounds double, ptr %ts, i64 448
  store double %add76, ptr %arrayidx77, align 8, !tbaa !5
  %arrayidx78 = getelementptr inbounds double, ptr %rawout1, i64 15
  %31 = load double, ptr %arrayidx78, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds double, ptr %wi, i64 9
  %32 = load double, ptr %arrayidx79, align 8, !tbaa !5
  %mul80 = fmul fast double %32, %add59
  %add81 = fadd fast double %mul80, %31
  %arrayidx82 = getelementptr inbounds double, ptr %ts, i64 480
  store double %add81, ptr %arrayidx82, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds double, ptr %rawout1, i64 6
  %33 = load double, ptr %arrayidx83, align 8, !tbaa !5
  %34 = load double, ptr %wi, align 8, !tbaa !5
  %mul85 = fmul fast double %34, %sub62
  %add86 = fadd fast double %mul85, %33
  %arrayidx87 = getelementptr inbounds double, ptr %ts, i64 192
  store double %add86, ptr %arrayidx87, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds double, ptr %rawout1, i64 11
  %35 = load double, ptr %arrayidx88, align 8, !tbaa !5
  %arrayidx89 = getelementptr inbounds double, ptr %wi, i64 5
  %36 = load double, ptr %arrayidx89, align 8, !tbaa !5
  %mul90 = fmul fast double %36, %sub62
  %add91 = fadd fast double %mul90, %35
  %arrayidx92 = getelementptr inbounds double, ptr %ts, i64 352
  store double %add91, ptr %arrayidx92, align 8, !tbaa !5
  %arrayidx93 = getelementptr inbounds double, ptr %rawout1, i64 8
  %37 = load double, ptr %arrayidx93, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds double, ptr %wi, i64 2
  %38 = load double, ptr %arrayidx94, align 8, !tbaa !5
  %mul95 = fmul fast double %38, %sub60
  %add96 = fadd fast double %mul95, %37
  %arrayidx97 = getelementptr inbounds double, ptr %ts, i64 256
  store double %add96, ptr %arrayidx97, align 8, !tbaa !5
  %arrayidx98 = getelementptr inbounds double, ptr %rawout1, i64 9
  %39 = load double, ptr %arrayidx98, align 8, !tbaa !5
  %arrayidx99 = getelementptr inbounds double, ptr %wi, i64 3
  %40 = load double, ptr %arrayidx99, align 8, !tbaa !5
  %mul100 = fmul fast double %40, %sub60
  %add101 = fadd fast double %mul100, %39
  %arrayidx102 = getelementptr inbounds double, ptr %ts, i64 288
  store double %add101, ptr %arrayidx102, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds double, ptr %in, i64 1
  %arrayidx109 = getelementptr inbounds double, ptr %in, i64 16
  %41 = load double, ptr %arrayidx109, align 8, !tbaa !5
  %arrayidx110 = getelementptr inbounds double, ptr %in, i64 13
  %42 = load double, ptr %arrayidx110, align 8, !tbaa !5
  %add111 = fadd fast double %42, %41
  %arrayidx112 = getelementptr inbounds double, ptr %in, i64 10
  %43 = load double, ptr %arrayidx112, align 8, !tbaa !5
  %add113 = fadd fast double %43, %42
  %arrayidx114 = getelementptr inbounds double, ptr %in, i64 7
  %44 = load double, ptr %arrayidx114, align 8, !tbaa !5
  %add115 = fadd fast double %44, %43
  %arrayidx116 = getelementptr inbounds double, ptr %in, i64 4
  %45 = load double, ptr %arrayidx116, align 8, !tbaa !5
  %add117 = fadd fast double %45, %44
  %46 = load double, ptr %incdec.ptr, align 8, !tbaa !5
  %add119 = fadd fast double %46, %45
  %add120 = fadd fast double %add111, %add115
  %add121 = fadd fast double %add119, %add115
  %mul122 = fmul fast double %add117, %12
  %mul123 = fmul fast double %add121, %12
  %sub126 = fsub fast double %46, %add113
  %sub128 = fsub fast double %add119, %add120
  %mul129 = fmul fast double %sub128, %13
  %add130 = fadd fast double %mul129, %sub126
  %sub131 = fsub fast double %sub126, %mul129
  %47 = load double, ptr %arrayidx30, align 8, !tbaa !5
  %mul133 = fmul fast double %add130, %47
  %arrayidx134 = getelementptr inbounds double, ptr %rawout2, i64 4
  store double %mul133, ptr %arrayidx134, align 8, !tbaa !5
  %48 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %mul136 = fmul fast double %add130, %48
  %arrayidx137 = getelementptr inbounds double, ptr %rawout2, i64 1
  store double %mul136, ptr %arrayidx137, align 8, !tbaa !5
  %49 = load double, ptr %arrayidx40, align 8, !tbaa !5
  %mul139 = fmul fast double %49, %sub131
  %50 = load double, ptr %arrayidx38, align 8, !tbaa !5
  %add141 = fadd fast double %50, %mul139
  store double %add141, ptr %arrayidx38, align 8, !tbaa !5
  %51 = load double, ptr %arrayidx45, align 8, !tbaa !5
  %mul143 = fmul fast double %51, %sub131
  %52 = load double, ptr %arrayidx33, align 8, !tbaa !5
  %add145 = fadd fast double %52, %mul143
  store double %add145, ptr %arrayidx33, align 8, !tbaa !5
  %mul146 = fmul fast double %add113, %22
  %add147 = fadd fast double %46, %mul146
  %add148 = fadd fast double %add147, %mul122
  %sub149 = fsub fast double %add147, %mul122
  %mul150 = fmul fast double %add120, %22
  %add151 = fadd fast double %add119, %mul150
  %add152 = fadd fast double %mul123, %add151
  %mul153 = fmul fast double %add152, %23
  %sub154 = fsub fast double %add151, %mul123
  %mul155 = fmul fast double %sub154, %24
  %add156 = fadd fast double %mul153, %add148
  %sub157 = fsub fast double %add148, %mul153
  %add158 = fadd fast double %mul155, %sub149
  %sub159 = fsub fast double %sub149, %mul155
  %53 = load double, ptr %arrayidx64, align 8, !tbaa !5
  %mul161 = fmul fast double %53, %add158
  %arrayidx162 = getelementptr inbounds double, ptr %rawout2, i64 5
  store double %mul161, ptr %arrayidx162, align 8, !tbaa !5
  %54 = load double, ptr %arrayidx69, align 8, !tbaa !5
  %mul164 = fmul fast double %54, %add158
  store double %mul164, ptr %rawout2, align 8, !tbaa !5
  %55 = load double, ptr %arrayidx74, align 8, !tbaa !5
  %mul167 = fmul fast double %55, %add156
  %arrayidx168 = getelementptr inbounds double, ptr %rawout2, i64 2
  store double %mul167, ptr %arrayidx168, align 8, !tbaa !5
  %56 = load double, ptr %arrayidx79, align 8, !tbaa !5
  %mul170 = fmul fast double %56, %add156
  %arrayidx171 = getelementptr inbounds double, ptr %rawout2, i64 3
  store double %mul170, ptr %arrayidx171, align 8, !tbaa !5
  %57 = load double, ptr %wi, align 8, !tbaa !5
  %mul173 = fmul fast double %57, %sub159
  %58 = load double, ptr %arrayidx72, align 8, !tbaa !5
  %add175 = fadd fast double %58, %mul173
  store double %add175, ptr %arrayidx72, align 8, !tbaa !5
  %59 = load double, ptr %arrayidx89, align 8, !tbaa !5
  %mul177 = fmul fast double %59, %sub159
  %60 = load double, ptr %arrayidx67, align 8, !tbaa !5
  %add179 = fadd fast double %60, %mul177
  store double %add179, ptr %arrayidx67, align 8, !tbaa !5
  %61 = load double, ptr %arrayidx94, align 8, !tbaa !5
  %mul181 = fmul fast double %61, %sub157
  %62 = load double, ptr %arrayidx77, align 8, !tbaa !5
  %add183 = fadd fast double %62, %mul181
  store double %add183, ptr %arrayidx77, align 8, !tbaa !5
  %63 = load double, ptr %arrayidx99, align 8, !tbaa !5
  %mul185 = fmul fast double %63, %sub157
  %64 = load double, ptr %arrayidx82, align 8, !tbaa !5
  %add187 = fadd fast double %64, %mul185
  store double %add187, ptr %arrayidx82, align 8, !tbaa !5
  %incdec.ptr188 = getelementptr inbounds double, ptr %in, i64 2
  %arrayidx201 = getelementptr inbounds double, ptr %rawout2, i64 12
  %arrayidx202 = getelementptr inbounds double, ptr %in, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %arrayidx201, i8 0, i64 48, i1 false)
  %65 = load double, ptr %arrayidx202, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds double, ptr %in, i64 14
  %66 = load double, ptr %arrayidx203, align 8, !tbaa !5
  %add204 = fadd fast double %66, %65
  %arrayidx205 = getelementptr inbounds double, ptr %in, i64 11
  %67 = load double, ptr %arrayidx205, align 8, !tbaa !5
  %add206 = fadd fast double %67, %66
  %arrayidx207 = getelementptr inbounds double, ptr %in, i64 8
  %68 = load double, ptr %arrayidx207, align 8, !tbaa !5
  %add208 = fadd fast double %68, %67
  %arrayidx209 = getelementptr inbounds double, ptr %in, i64 5
  %69 = load double, ptr %arrayidx209, align 8, !tbaa !5
  %add210 = fadd fast double %69, %68
  %70 = load double, ptr %incdec.ptr188, align 8, !tbaa !5
  %add212 = fadd fast double %70, %69
  %add213 = fadd fast double %add204, %add208
  %add214 = fadd fast double %add212, %add208
  %mul215 = fmul fast double %add210, %12
  %mul216 = fmul fast double %add214, %12
  %sub219 = fsub fast double %70, %add206
  %sub221 = fsub fast double %add212, %add213
  %mul222 = fmul fast double %sub221, %13
  %add223 = fadd fast double %mul222, %sub219
  %sub224 = fsub fast double %sub219, %mul222
  %71 = load double, ptr %arrayidx30, align 8, !tbaa !5
  %mul226 = fmul fast double %add223, %71
  %arrayidx227 = getelementptr inbounds double, ptr %rawout2, i64 10
  store double %mul226, ptr %arrayidx227, align 8, !tbaa !5
  %72 = load double, ptr %arrayidx35, align 8, !tbaa !5
  %mul229 = fmul fast double %add223, %72
  %arrayidx230 = getelementptr inbounds double, ptr %rawout2, i64 7
  store double %mul229, ptr %arrayidx230, align 8, !tbaa !5
  %73 = load double, ptr %arrayidx40, align 8, !tbaa !5
  %mul232 = fmul fast double %73, %sub224
  %74 = load double, ptr %arrayidx137, align 8, !tbaa !5
  %add234 = fadd fast double %74, %mul232
  store double %add234, ptr %arrayidx137, align 8, !tbaa !5
  %75 = load double, ptr %arrayidx45, align 8, !tbaa !5
  %mul236 = fmul fast double %75, %sub224
  %76 = load double, ptr %arrayidx134, align 8, !tbaa !5
  %add238 = fadd fast double %76, %mul236
  store double %add238, ptr %arrayidx134, align 8, !tbaa !5
  %mul239 = fmul fast double %add206, %22
  %add240 = fadd fast double %70, %mul239
  %add241 = fadd fast double %add240, %mul215
  %sub242 = fsub fast double %add240, %mul215
  %mul243 = fmul fast double %add213, %22
  %add244 = fadd fast double %add212, %mul243
  %add245 = fadd fast double %mul216, %add244
  %mul246 = fmul fast double %add245, %23
  %sub247 = fsub fast double %add244, %mul216
  %mul248 = fmul fast double %sub247, %24
  %add249 = fadd fast double %mul246, %add241
  %sub250 = fsub fast double %add241, %mul246
  %add251 = fadd fast double %mul248, %sub242
  %sub252 = fsub fast double %sub242, %mul248
  %77 = load double, ptr %arrayidx64, align 8, !tbaa !5
  %mul254 = fmul fast double %77, %add251
  %arrayidx255 = getelementptr inbounds double, ptr %rawout2, i64 11
  store double %mul254, ptr %arrayidx255, align 8, !tbaa !5
  %78 = load double, ptr %arrayidx69, align 8, !tbaa !5
  %mul257 = fmul fast double %78, %add251
  %arrayidx258 = getelementptr inbounds double, ptr %rawout2, i64 6
  store double %mul257, ptr %arrayidx258, align 8, !tbaa !5
  %79 = load double, ptr %arrayidx74, align 8, !tbaa !5
  %mul260 = fmul fast double %79, %add249
  %arrayidx261 = getelementptr inbounds double, ptr %rawout2, i64 8
  store double %mul260, ptr %arrayidx261, align 8, !tbaa !5
  %80 = load double, ptr %arrayidx79, align 8, !tbaa !5
  %mul263 = fmul fast double %80, %add249
  %arrayidx264 = getelementptr inbounds double, ptr %rawout2, i64 9
  store double %mul263, ptr %arrayidx264, align 8, !tbaa !5
  %81 = load double, ptr %wi, align 8, !tbaa !5
  %mul266 = fmul fast double %81, %sub252
  %82 = load double, ptr %rawout2, align 8, !tbaa !5
  %add268 = fadd fast double %82, %mul266
  store double %add268, ptr %rawout2, align 8, !tbaa !5
  %83 = load double, ptr %arrayidx89, align 8, !tbaa !5
  %mul270 = fmul fast double %83, %sub252
  %84 = load double, ptr %arrayidx162, align 8, !tbaa !5
  %add272 = fadd fast double %84, %mul270
  store double %add272, ptr %arrayidx162, align 8, !tbaa !5
  %85 = load double, ptr %arrayidx94, align 8, !tbaa !5
  %mul274 = fmul fast double %85, %sub250
  %86 = load double, ptr %arrayidx168, align 8, !tbaa !5
  %add276 = fadd fast double %86, %mul274
  store double %add276, ptr %arrayidx168, align 8, !tbaa !5
  %87 = load double, ptr %arrayidx99, align 8, !tbaa !5
  %mul278 = fmul fast double %87, %sub250
  %88 = load double, ptr %arrayidx171, align 8, !tbaa !5
  %add280 = fadd fast double %88, %mul278
  store double %add280, ptr %arrayidx171, align 8, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

attributes #0 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nosync nounwind readnone willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind willreturn }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !7, i64 0}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"short", !7, i64 0}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{!40, !10, !11}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10, !11}
!44 = distinct !{!44, !10, !11}
!45 = distinct !{!45, !10, !11}
!46 = distinct !{!46, !10, !11}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11}
!54 = distinct !{!54, !10, !11}
!55 = distinct !{!55, !10, !11}
!56 = !{!57, !21, i64 0}
!57 = !{!"frame", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !21, i64 60, !21, i64 64, !21, i64 68}
!58 = !{!57, !21, i64 36}
!59 = !{!57, !21, i64 8}
!60 = !{!57, !21, i64 48}
!61 = !{!57, !21, i64 52}
!62 = !{!57, !21, i64 12}
!63 = !{!64, !21, i64 0}
!64 = !{!"III_sideinfo", !21, i64 0, !21, i64 4, !7, i64 8}
!65 = distinct !{!65, !10, !11}
!66 = !{!67, !21, i64 64}
!67 = !{!"gr_info_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !7, i64 24, !7, i64 36, !7, i64 48, !21, i64 60, !21, i64 64, !21, i64 68, !21, i64 72, !21, i64 76, !21, i64 80, !21, i64 84, !7, i64 88, !28, i64 112}
!68 = distinct !{!68, !10, !11}
!69 = distinct !{!69, !10, !11}
!70 = distinct !{!70, !10, !11}
!71 = distinct !{!71, !10, !11}
!72 = !{!67, !21, i64 4}
!73 = !{!67, !21, i64 8}
!74 = !{!67, !28, i64 112}
!75 = !{!67, !21, i64 12}
!76 = !{!67, !21, i64 16}
!77 = !{!67, !21, i64 20}
!78 = distinct !{!78, !10, !11}
!79 = !{!67, !21, i64 68}
!80 = !{!67, !21, i64 72}
!81 = distinct !{!81, !10, !11}
!82 = !{!67, !21, i64 80}
!83 = !{!67, !21, i64 84}
!84 = distinct !{!84, !10, !11}
!85 = distinct !{!85, !10, !11}
!86 = !{!67, !21, i64 76}
!87 = distinct !{!87, !10, !11}
!88 = distinct !{!88, !10, !11}
!89 = distinct !{!89, !10, !11}
!90 = !{!67, !21, i64 0}
!91 = distinct !{!91, !10, !11}
!92 = !{!7, !7, i64 0}
!93 = distinct !{!93, !10, !11}
!94 = distinct !{!94, !10, !11}
!95 = distinct !{!95, !10, !11}
!96 = distinct !{!96, !10, !11}
!97 = distinct !{!97, !10, !11}
!98 = distinct !{!98, !10, !11}
!99 = distinct !{!99, !10, !11}
!100 = distinct !{!100, !10, !11}
!101 = distinct !{!101, !10, !11}
!102 = distinct !{!102, !10, !11}
!103 = distinct !{!103, !10, !11}
!104 = !{!105, !28, i64 8}
!105 = !{!"newhuff", !21, i64 0, !28, i64 8}
!106 = distinct !{!106, !10, !11}
!107 = !{!105, !21, i64 0}
!108 = distinct !{!108, !10, !11}
!109 = distinct !{!109, !10, !11}
!110 = distinct !{!110, !10, !11}
!111 = distinct !{!111, !10, !11}
!112 = distinct !{!112, !10, !11}
!113 = distinct !{!113, !10, !11}
!114 = !{!67, !21, i64 60}
!115 = distinct !{!115, !10, !11}
!116 = distinct !{!116, !10, !11}
!117 = distinct !{!117, !10, !11}
!118 = distinct !{!118, !10, !11}
!119 = distinct !{!119, !10, !11}
!120 = distinct !{!120, !10, !11}
!121 = distinct !{!121, !10, !11}
!122 = distinct !{!122, !10, !11}
!123 = distinct !{!123, !10, !11}
!124 = distinct !{!124, !10, !11}
!125 = distinct !{!125, !10, !11}
!126 = distinct !{!126, !10, !11}
!127 = distinct !{!127, !10, !11}
!128 = distinct !{!128, !10, !11}
!129 = distinct !{!129, !10, !11}
!130 = distinct !{!130, !10, !11}
!131 = distinct !{!131, !10, !11}
!132 = distinct !{!132, !10, !11}
!133 = distinct !{!133, !10, !11}
!134 = distinct !{!134, !10, !11}
!135 = distinct !{!135, !10, !11}
!136 = distinct !{!136, !10, !11}
