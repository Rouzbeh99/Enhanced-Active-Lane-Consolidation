; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/compress.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HuffmanTable = type { i64, i64, i64, i64 }
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
%struct._Ascii85Info = type { i64, i64, [10 x i8] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._TableType = type { i64, i64, i64 }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compress.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"!!!!\00", align 1
@TWTable = internal constant [65 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 23, i64 53, i64 8, i64 0 }, %struct.HuffmanTable { i64 23, i64 7, i64 6, i64 1 }, %struct.HuffmanTable { i64 23, i64 7, i64 4, i64 2 }, %struct.HuffmanTable { i64 23, i64 8, i64 4, i64 3 }, %struct.HuffmanTable { i64 23, i64 11, i64 4, i64 4 }, %struct.HuffmanTable { i64 23, i64 12, i64 4, i64 5 }, %struct.HuffmanTable { i64 23, i64 14, i64 4, i64 6 }, %struct.HuffmanTable { i64 23, i64 15, i64 4, i64 7 }, %struct.HuffmanTable { i64 23, i64 19, i64 5, i64 8 }, %struct.HuffmanTable { i64 23, i64 20, i64 5, i64 9 }, %struct.HuffmanTable { i64 23, i64 7, i64 5, i64 10 }, %struct.HuffmanTable { i64 23, i64 8, i64 5, i64 11 }, %struct.HuffmanTable { i64 23, i64 8, i64 6, i64 12 }, %struct.HuffmanTable { i64 23, i64 3, i64 6, i64 13 }, %struct.HuffmanTable { i64 23, i64 52, i64 6, i64 14 }, %struct.HuffmanTable { i64 23, i64 53, i64 6, i64 15 }, %struct.HuffmanTable { i64 23, i64 42, i64 6, i64 16 }, %struct.HuffmanTable { i64 23, i64 43, i64 6, i64 17 }, %struct.HuffmanTable { i64 23, i64 39, i64 7, i64 18 }, %struct.HuffmanTable { i64 23, i64 12, i64 7, i64 19 }, %struct.HuffmanTable { i64 23, i64 8, i64 7, i64 20 }, %struct.HuffmanTable { i64 23, i64 23, i64 7, i64 21 }, %struct.HuffmanTable { i64 23, i64 3, i64 7, i64 22 }, %struct.HuffmanTable { i64 23, i64 4, i64 7, i64 23 }, %struct.HuffmanTable { i64 23, i64 40, i64 7, i64 24 }, %struct.HuffmanTable { i64 23, i64 43, i64 7, i64 25 }, %struct.HuffmanTable { i64 23, i64 19, i64 7, i64 26 }, %struct.HuffmanTable { i64 23, i64 36, i64 7, i64 27 }, %struct.HuffmanTable { i64 23, i64 24, i64 7, i64 28 }, %struct.HuffmanTable { i64 23, i64 2, i64 8, i64 29 }, %struct.HuffmanTable { i64 23, i64 3, i64 8, i64 30 }, %struct.HuffmanTable { i64 23, i64 26, i64 8, i64 31 }, %struct.HuffmanTable { i64 23, i64 27, i64 8, i64 32 }, %struct.HuffmanTable { i64 23, i64 18, i64 8, i64 33 }, %struct.HuffmanTable { i64 23, i64 19, i64 8, i64 34 }, %struct.HuffmanTable { i64 23, i64 20, i64 8, i64 35 }, %struct.HuffmanTable { i64 23, i64 21, i64 8, i64 36 }, %struct.HuffmanTable { i64 23, i64 22, i64 8, i64 37 }, %struct.HuffmanTable { i64 23, i64 23, i64 8, i64 38 }, %struct.HuffmanTable { i64 23, i64 40, i64 8, i64 39 }, %struct.HuffmanTable { i64 23, i64 41, i64 8, i64 40 }, %struct.HuffmanTable { i64 23, i64 42, i64 8, i64 41 }, %struct.HuffmanTable { i64 23, i64 43, i64 8, i64 42 }, %struct.HuffmanTable { i64 23, i64 44, i64 8, i64 43 }, %struct.HuffmanTable { i64 23, i64 45, i64 8, i64 44 }, %struct.HuffmanTable { i64 23, i64 4, i64 8, i64 45 }, %struct.HuffmanTable { i64 23, i64 5, i64 8, i64 46 }, %struct.HuffmanTable { i64 23, i64 10, i64 8, i64 47 }, %struct.HuffmanTable { i64 23, i64 11, i64 8, i64 48 }, %struct.HuffmanTable { i64 23, i64 82, i64 8, i64 49 }, %struct.HuffmanTable { i64 23, i64 83, i64 8, i64 50 }, %struct.HuffmanTable { i64 23, i64 84, i64 8, i64 51 }, %struct.HuffmanTable { i64 23, i64 85, i64 8, i64 52 }, %struct.HuffmanTable { i64 23, i64 36, i64 8, i64 53 }, %struct.HuffmanTable { i64 23, i64 37, i64 8, i64 54 }, %struct.HuffmanTable { i64 23, i64 88, i64 8, i64 55 }, %struct.HuffmanTable { i64 23, i64 89, i64 8, i64 56 }, %struct.HuffmanTable { i64 23, i64 90, i64 8, i64 57 }, %struct.HuffmanTable { i64 23, i64 91, i64 8, i64 58 }, %struct.HuffmanTable { i64 23, i64 74, i64 8, i64 59 }, %struct.HuffmanTable { i64 23, i64 75, i64 8, i64 60 }, %struct.HuffmanTable { i64 23, i64 50, i64 8, i64 61 }, %struct.HuffmanTable { i64 23, i64 51, i64 8, i64 62 }, %struct.HuffmanTable { i64 23, i64 52, i64 8, i64 63 }, %struct.HuffmanTable { i64 23, i64 0, i64 0, i64 0 }], align 16, !dbg !0
@MWTable = internal constant [28 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 24, i64 27, i64 5, i64 64 }, %struct.HuffmanTable { i64 24, i64 18, i64 5, i64 128 }, %struct.HuffmanTable { i64 24, i64 23, i64 6, i64 192 }, %struct.HuffmanTable { i64 24, i64 55, i64 7, i64 256 }, %struct.HuffmanTable { i64 24, i64 54, i64 8, i64 320 }, %struct.HuffmanTable { i64 24, i64 55, i64 8, i64 384 }, %struct.HuffmanTable { i64 24, i64 100, i64 8, i64 448 }, %struct.HuffmanTable { i64 24, i64 101, i64 8, i64 512 }, %struct.HuffmanTable { i64 24, i64 104, i64 8, i64 576 }, %struct.HuffmanTable { i64 24, i64 103, i64 8, i64 640 }, %struct.HuffmanTable { i64 24, i64 204, i64 9, i64 704 }, %struct.HuffmanTable { i64 24, i64 205, i64 9, i64 768 }, %struct.HuffmanTable { i64 24, i64 210, i64 9, i64 832 }, %struct.HuffmanTable { i64 24, i64 211, i64 9, i64 896 }, %struct.HuffmanTable { i64 24, i64 212, i64 9, i64 960 }, %struct.HuffmanTable { i64 24, i64 213, i64 9, i64 1024 }, %struct.HuffmanTable { i64 24, i64 214, i64 9, i64 1088 }, %struct.HuffmanTable { i64 24, i64 215, i64 9, i64 1152 }, %struct.HuffmanTable { i64 24, i64 216, i64 9, i64 1216 }, %struct.HuffmanTable { i64 24, i64 217, i64 9, i64 1280 }, %struct.HuffmanTable { i64 24, i64 218, i64 9, i64 1344 }, %struct.HuffmanTable { i64 24, i64 219, i64 9, i64 1408 }, %struct.HuffmanTable { i64 24, i64 152, i64 9, i64 1472 }, %struct.HuffmanTable { i64 24, i64 153, i64 9, i64 1536 }, %struct.HuffmanTable { i64 24, i64 154, i64 9, i64 1600 }, %struct.HuffmanTable { i64 24, i64 24, i64 6, i64 1664 }, %struct.HuffmanTable { i64 24, i64 155, i64 9, i64 1728 }, %struct.HuffmanTable { i64 24, i64 0, i64 0, i64 0 }], align 16, !dbg !761
@EXTable = internal constant [14 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 27, i64 8, i64 11, i64 1792 }, %struct.HuffmanTable { i64 27, i64 12, i64 11, i64 1856 }, %struct.HuffmanTable { i64 27, i64 13, i64 11, i64 1920 }, %struct.HuffmanTable { i64 27, i64 18, i64 12, i64 1984 }, %struct.HuffmanTable { i64 27, i64 19, i64 12, i64 2048 }, %struct.HuffmanTable { i64 27, i64 20, i64 12, i64 2112 }, %struct.HuffmanTable { i64 27, i64 21, i64 12, i64 2176 }, %struct.HuffmanTable { i64 27, i64 22, i64 12, i64 2240 }, %struct.HuffmanTable { i64 27, i64 23, i64 12, i64 2304 }, %struct.HuffmanTable { i64 27, i64 28, i64 12, i64 2368 }, %struct.HuffmanTable { i64 27, i64 29, i64 12, i64 2432 }, %struct.HuffmanTable { i64 27, i64 30, i64 12, i64 2496 }, %struct.HuffmanTable { i64 27, i64 31, i64 12, i64 2560 }, %struct.HuffmanTable { i64 27, i64 0, i64 0, i64 0 }], align 16, !dbg !766
@TBTable = internal constant [65 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 25, i64 55, i64 10, i64 0 }, %struct.HuffmanTable { i64 25, i64 2, i64 3, i64 1 }, %struct.HuffmanTable { i64 25, i64 3, i64 2, i64 2 }, %struct.HuffmanTable { i64 25, i64 2, i64 2, i64 3 }, %struct.HuffmanTable { i64 25, i64 3, i64 3, i64 4 }, %struct.HuffmanTable { i64 25, i64 3, i64 4, i64 5 }, %struct.HuffmanTable { i64 25, i64 2, i64 4, i64 6 }, %struct.HuffmanTable { i64 25, i64 3, i64 5, i64 7 }, %struct.HuffmanTable { i64 25, i64 5, i64 6, i64 8 }, %struct.HuffmanTable { i64 25, i64 4, i64 6, i64 9 }, %struct.HuffmanTable { i64 25, i64 4, i64 7, i64 10 }, %struct.HuffmanTable { i64 25, i64 5, i64 7, i64 11 }, %struct.HuffmanTable { i64 25, i64 7, i64 7, i64 12 }, %struct.HuffmanTable { i64 25, i64 4, i64 8, i64 13 }, %struct.HuffmanTable { i64 25, i64 7, i64 8, i64 14 }, %struct.HuffmanTable { i64 25, i64 24, i64 9, i64 15 }, %struct.HuffmanTable { i64 25, i64 23, i64 10, i64 16 }, %struct.HuffmanTable { i64 25, i64 24, i64 10, i64 17 }, %struct.HuffmanTable { i64 25, i64 8, i64 10, i64 18 }, %struct.HuffmanTable { i64 25, i64 103, i64 11, i64 19 }, %struct.HuffmanTable { i64 25, i64 104, i64 11, i64 20 }, %struct.HuffmanTable { i64 25, i64 108, i64 11, i64 21 }, %struct.HuffmanTable { i64 25, i64 55, i64 11, i64 22 }, %struct.HuffmanTable { i64 25, i64 40, i64 11, i64 23 }, %struct.HuffmanTable { i64 25, i64 23, i64 11, i64 24 }, %struct.HuffmanTable { i64 25, i64 24, i64 11, i64 25 }, %struct.HuffmanTable { i64 25, i64 202, i64 12, i64 26 }, %struct.HuffmanTable { i64 25, i64 203, i64 12, i64 27 }, %struct.HuffmanTable { i64 25, i64 204, i64 12, i64 28 }, %struct.HuffmanTable { i64 25, i64 205, i64 12, i64 29 }, %struct.HuffmanTable { i64 25, i64 104, i64 12, i64 30 }, %struct.HuffmanTable { i64 25, i64 105, i64 12, i64 31 }, %struct.HuffmanTable { i64 25, i64 106, i64 12, i64 32 }, %struct.HuffmanTable { i64 25, i64 107, i64 12, i64 33 }, %struct.HuffmanTable { i64 25, i64 210, i64 12, i64 34 }, %struct.HuffmanTable { i64 25, i64 211, i64 12, i64 35 }, %struct.HuffmanTable { i64 25, i64 212, i64 12, i64 36 }, %struct.HuffmanTable { i64 25, i64 213, i64 12, i64 37 }, %struct.HuffmanTable { i64 25, i64 214, i64 12, i64 38 }, %struct.HuffmanTable { i64 25, i64 215, i64 12, i64 39 }, %struct.HuffmanTable { i64 25, i64 108, i64 12, i64 40 }, %struct.HuffmanTable { i64 25, i64 109, i64 12, i64 41 }, %struct.HuffmanTable { i64 25, i64 218, i64 12, i64 42 }, %struct.HuffmanTable { i64 25, i64 219, i64 12, i64 43 }, %struct.HuffmanTable { i64 25, i64 84, i64 12, i64 44 }, %struct.HuffmanTable { i64 25, i64 85, i64 12, i64 45 }, %struct.HuffmanTable { i64 25, i64 86, i64 12, i64 46 }, %struct.HuffmanTable { i64 25, i64 87, i64 12, i64 47 }, %struct.HuffmanTable { i64 25, i64 100, i64 12, i64 48 }, %struct.HuffmanTable { i64 25, i64 101, i64 12, i64 49 }, %struct.HuffmanTable { i64 25, i64 82, i64 12, i64 50 }, %struct.HuffmanTable { i64 25, i64 83, i64 12, i64 51 }, %struct.HuffmanTable { i64 25, i64 36, i64 12, i64 52 }, %struct.HuffmanTable { i64 25, i64 55, i64 12, i64 53 }, %struct.HuffmanTable { i64 25, i64 56, i64 12, i64 54 }, %struct.HuffmanTable { i64 25, i64 39, i64 12, i64 55 }, %struct.HuffmanTable { i64 25, i64 40, i64 12, i64 56 }, %struct.HuffmanTable { i64 25, i64 88, i64 12, i64 57 }, %struct.HuffmanTable { i64 25, i64 89, i64 12, i64 58 }, %struct.HuffmanTable { i64 25, i64 43, i64 12, i64 59 }, %struct.HuffmanTable { i64 25, i64 44, i64 12, i64 60 }, %struct.HuffmanTable { i64 25, i64 90, i64 12, i64 61 }, %struct.HuffmanTable { i64 25, i64 102, i64 12, i64 62 }, %struct.HuffmanTable { i64 25, i64 103, i64 12, i64 63 }, %struct.HuffmanTable { i64 25, i64 0, i64 0, i64 0 }], align 16, !dbg !771
@MBTable = internal constant [28 x %struct.HuffmanTable] [%struct.HuffmanTable { i64 26, i64 15, i64 10, i64 64 }, %struct.HuffmanTable { i64 26, i64 200, i64 12, i64 128 }, %struct.HuffmanTable { i64 26, i64 201, i64 12, i64 192 }, %struct.HuffmanTable { i64 26, i64 91, i64 12, i64 256 }, %struct.HuffmanTable { i64 26, i64 51, i64 12, i64 320 }, %struct.HuffmanTable { i64 26, i64 52, i64 12, i64 384 }, %struct.HuffmanTable { i64 26, i64 53, i64 12, i64 448 }, %struct.HuffmanTable { i64 26, i64 108, i64 13, i64 512 }, %struct.HuffmanTable { i64 26, i64 109, i64 13, i64 576 }, %struct.HuffmanTable { i64 26, i64 74, i64 13, i64 640 }, %struct.HuffmanTable { i64 26, i64 75, i64 13, i64 704 }, %struct.HuffmanTable { i64 26, i64 76, i64 13, i64 768 }, %struct.HuffmanTable { i64 26, i64 77, i64 13, i64 832 }, %struct.HuffmanTable { i64 26, i64 114, i64 13, i64 896 }, %struct.HuffmanTable { i64 26, i64 115, i64 13, i64 960 }, %struct.HuffmanTable { i64 26, i64 116, i64 13, i64 1024 }, %struct.HuffmanTable { i64 26, i64 117, i64 13, i64 1088 }, %struct.HuffmanTable { i64 26, i64 118, i64 13, i64 1152 }, %struct.HuffmanTable { i64 26, i64 119, i64 13, i64 1216 }, %struct.HuffmanTable { i64 26, i64 82, i64 13, i64 1280 }, %struct.HuffmanTable { i64 26, i64 83, i64 13, i64 1344 }, %struct.HuffmanTable { i64 26, i64 84, i64 13, i64 1408 }, %struct.HuffmanTable { i64 26, i64 85, i64 13, i64 1472 }, %struct.HuffmanTable { i64 26, i64 90, i64 13, i64 1536 }, %struct.HuffmanTable { i64 26, i64 91, i64 13, i64 1600 }, %struct.HuffmanTable { i64 26, i64 100, i64 13, i64 1664 }, %struct.HuffmanTable { i64 26, i64 101, i64 13, i64 1728 }, %struct.HuffmanTable { i64 26, i64 0, i64 0, i64 0 }], align 16, !dbg !776
@LoadImageTag = external constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"`%s' (ZIP)\00", align 1
@Ascii85Tuple.tuple = internal global [6 x i8] zeroinitializer, align 1, !dbg !747
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @Ascii85Initialize(ptr nocapture noundef %image) local_unnamed_addr #0 !dbg !785 {
entry:
  %exception = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !789, metadata !DIExpression()), !dbg !794
  %ascii85 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51, !dbg !795
  %0 = load ptr, ptr %ascii85, align 8, !dbg !795, !tbaa !797
  %cmp = icmp eq ptr %0, null, !dbg !816
  br i1 %cmp, label %if.end, label %if.end10, !dbg !817

if.end:                                           ; preds = %entry
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 32) #10, !dbg !818
  store ptr %call, ptr %ascii85, align 8, !dbg !819, !tbaa !797
  %cmp3 = icmp eq ptr %call, null, !dbg !820
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !821

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception) #11, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %exception, metadata !793, metadata !DIExpression()), !dbg !822
  call void @GetExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !822
  %call5 = tail call ptr @__errno_location() #12, !dbg !822
  %1 = load i32, ptr %call5, align 4, !dbg !822, !tbaa !823
  %call6 = call ptr @GetExceptionMessage(i32 noundef %1) #11, !dbg !822
  call void @llvm.dbg.value(metadata ptr %call6, metadata !790, metadata !DIExpression()), !dbg !824
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 276, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call6) #11, !dbg !822
  %call8 = call ptr @DestroyString(ptr noundef %call6) #11, !dbg !822
  call void @llvm.dbg.value(metadata ptr %call8, metadata !790, metadata !DIExpression()), !dbg !824
  call void @CatchException(ptr noundef nonnull %exception) #11, !dbg !822
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception) #11, !dbg !822
  call void @MagickCoreTerminus() #11, !dbg !822
  call void @_exit(i32 noundef 1) #13, !dbg !822
  unreachable, !dbg !822

if.end10:                                         ; preds = %entry, %if.end
  %2 = phi ptr [ %call, %if.end ], [ %0, %entry ]
  %call12 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %2, i32 noundef 0, i64 noundef 32) #11, !dbg !825
  %3 = load ptr, ptr %ascii85, align 8, !dbg !826, !tbaa !797
  %line_break = getelementptr inbounds %struct._Ascii85Info, ptr %3, i64 0, i32 1, !dbg !827
  store i64 72, ptr %line_break, align 8, !dbg !828, !tbaa !829
  store i64 0, ptr %3, align 8, !dbg !831, !tbaa !832
  ret void, !dbg !833
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: allocsize(0)
declare !dbg !834 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !839 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !843 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !847 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !851 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !855 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !856 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !859 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !863 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Ascii85Flush(ptr noundef %image) local_unnamed_addr #0 !dbg !866 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !868, metadata !DIExpression()), !dbg !870
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !871
  %0 = load i32, ptr %debug, align 8, !dbg !871, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !874
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !875

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !876
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !877
  br label %if.end, !dbg !878

if.end:                                           ; preds = %if.then, %entry
  %ascii85 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51, !dbg !879
  %1 = load ptr, ptr %ascii85, align 8, !dbg !879, !tbaa !797
  %2 = load i64, ptr %1, align 8, !dbg !881, !tbaa !832
  %cmp1 = icmp sgt i64 %2, 0, !dbg !882
  br i1 %cmp1, label %if.then2, label %if.end27, !dbg !883

if.then2:                                         ; preds = %if.end
  %arrayidx = getelementptr inbounds %struct._Ascii85Info, ptr %1, i64 0, i32 2, i64 %2, !dbg !884
  store i8 0, ptr %arrayidx, align 1, !dbg !886, !tbaa !887
  %3 = load ptr, ptr %ascii85, align 8, !dbg !888, !tbaa !797
  %4 = load i64, ptr %3, align 8, !dbg !889, !tbaa !832
  %add = add nsw i64 %4, 1, !dbg !890
  %arrayidx10 = getelementptr inbounds %struct._Ascii85Info, ptr %3, i64 0, i32 2, i64 %add, !dbg !891
  store i8 0, ptr %arrayidx10, align 1, !dbg !892, !tbaa !887
  %5 = load ptr, ptr %ascii85, align 8, !dbg !893, !tbaa !797
  %6 = load i64, ptr %5, align 8, !dbg !894, !tbaa !832
  %add15 = add nsw i64 %6, 2, !dbg !895
  %arrayidx16 = getelementptr inbounds %struct._Ascii85Info, ptr %5, i64 0, i32 2, i64 %add15, !dbg !896
  store i8 0, ptr %arrayidx16, align 1, !dbg !897, !tbaa !887
  %7 = load ptr, ptr %ascii85, align 8, !dbg !898, !tbaa !797
  %buffer18 = getelementptr inbounds %struct._Ascii85Info, ptr %7, i64 0, i32 2, !dbg !899
  call void @llvm.dbg.value(metadata ptr %buffer18, metadata !753, metadata !DIExpression()), !dbg !900
  %8 = load i8, ptr %buffer18, align 1, !dbg !902, !tbaa !887
  %conv.i = zext i8 %8 to i64, !dbg !903
  %arrayidx1.i = getelementptr inbounds i8, ptr %buffer18, i64 1, !dbg !904
  %9 = load i8, ptr %arrayidx1.i, align 1, !dbg !904, !tbaa !887
  %conv2.i = zext i8 %9 to i64, !dbg !905
  %10 = shl nuw nsw i64 %conv.i, 24, !dbg !906
  %11 = shl nuw nsw i64 %conv2.i, 16, !dbg !906
  %shl3.i = or i64 %11, %10, !dbg !906
  %arrayidx4.i = getelementptr inbounds i8, ptr %buffer18, i64 2, !dbg !907
  %12 = load i8, ptr %arrayidx4.i, align 1, !dbg !907, !tbaa !887
  %conv5.i = zext i8 %12 to i64, !dbg !908
  %shl6.i = shl nuw nsw i64 %conv5.i, 8, !dbg !909
  %or7.i = or i64 %shl3.i, %shl6.i, !dbg !910
  %arrayidx8.i = getelementptr inbounds i8, ptr %buffer18, i64 3, !dbg !911
  %13 = load i8, ptr %arrayidx8.i, align 1, !dbg !911, !tbaa !887
  %conv9.i = zext i8 %13 to i64, !dbg !912
  %or10.i = or i64 %or7.i, %conv9.i, !dbg !913
  call void @llvm.dbg.value(metadata i64 %or10.i, metadata !756, metadata !DIExpression()), !dbg !900
  %cmp.i = icmp eq i64 %or10.i, 0, !dbg !914
  br i1 %cmp.i, label %if.then.i, label %for.body.i, !dbg !916

if.then.i:                                        ; preds = %if.then2
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !917, !tbaa !887
  br label %Ascii85Tuple.exit, !dbg !919

for.body.i:                                       ; preds = %if.then2, %for.body.i
  %quantum.03.i = phi i64 [ %div16.i, %for.body.i ], [ 52200625, %if.then2 ]
  %code.02.i = phi i64 [ %sub.i.recomposed, %for.body.i ], [ %or10.i, %if.then2 ]
  %i.01.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %if.then2 ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i, metadata !757, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 %code.02.i, metadata !756, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i64 %i.01.i, metadata !754, metadata !DIExpression()), !dbg !900
  %div.i = udiv i64 %code.02.i, %quantum.03.i, !dbg !920
  call void @llvm.dbg.value(metadata i64 %div.i, metadata !755, metadata !DIExpression()), !dbg !900
  %mul.i = mul nuw i64 %div.i, %quantum.03.i, !dbg !924
  %sub.i.recomposed = urem i64 %code.02.i, %quantum.03.i
  call void @llvm.dbg.value(metadata i64 %sub.i.recomposed, metadata !756, metadata !DIExpression()), !dbg !900
  %14 = trunc i64 %div.i to i8, !dbg !925
  %conv14.i = add i8 %14, 33, !dbg !925
  %arrayidx15.i = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i, !dbg !926
  store i8 %conv14.i, ptr %arrayidx15.i, align 1, !dbg !927, !tbaa !887
  %div16.i = udiv i64 %quantum.03.i, 85, !dbg !928
  call void @llvm.dbg.value(metadata i64 %div16.i, metadata !757, metadata !DIExpression()), !dbg !900
  %inc.i = add nuw nsw i64 %i.01.i, 1, !dbg !929
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !754, metadata !DIExpression()), !dbg !900
  %exitcond.not.i = icmp eq i64 %inc.i, 4, !dbg !930
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !dbg !931, !llvm.loop !932

for.end.i:                                        ; preds = %for.body.i
  %rem.i = urem i64 %sub.i.recomposed, 85, !dbg !936
  %15 = trunc i64 %rem.i to i8, !dbg !937
  %conv18.i = add nuw nsw i8 %15, 33, !dbg !937
  store i8 %conv18.i, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !938, !tbaa !887
  %.pre = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !939, !tbaa !887
  %phi.cmp = icmp eq i8 %.pre, 122, !dbg !940
  %phi.sel = select i1 %phi.cmp, ptr @.str.5, ptr @Ascii85Tuple.tuple, !dbg !940
  br label %Ascii85Tuple.exit, !dbg !940

Ascii85Tuple.exit:                                ; preds = %if.then.i, %for.end.i
  %16 = phi ptr [ %phi.sel, %for.end.i ], [ @.str.5, %if.then.i ]
  %.sink.i = phi ptr [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), %for.end.i ], [ getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), %if.then.i ]
  store i8 0, ptr %.sink.i, align 1, !dbg !900, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !869, metadata !DIExpression()), !dbg !870
  %17 = load i64, ptr %7, align 8, !dbg !941, !tbaa !832
  %add23 = add i64 %17, 1, !dbg !942
  %call26 = tail call i64 @WriteBlob(ptr noundef %image, i64 noundef %add23, ptr noundef nonnull %16) #11, !dbg !943
  br label %if.end27, !dbg !944

if.end27:                                         ; preds = %Ascii85Tuple.exit, %if.end
  %call28 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 126) #11, !dbg !945
  %call29 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 62) #11, !dbg !946
  %call30 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 10) #11, !dbg !947
  ret void, !dbg !948
}

declare !dbg !949 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !954 i64 @WriteBlob(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !958 i64 @WriteBlobByte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %code) local_unnamed_addr #0 !dbg !961 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i8 %code, metadata !966, metadata !DIExpression()), !dbg !970
  %ascii85 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51, !dbg !971
  %0 = load ptr, ptr %ascii85, align 8, !dbg !971, !tbaa !797
  %1 = load i64, ptr %0, align 8, !dbg !972, !tbaa !832
  %arrayidx = getelementptr inbounds %struct._Ascii85Info, ptr %0, i64 0, i32 2, i64 %1, !dbg !973
  store i8 %code, ptr %arrayidx, align 1, !dbg !974, !tbaa !887
  %2 = load ptr, ptr %ascii85, align 8, !dbg !975, !tbaa !797
  %3 = load i64, ptr %2, align 8, !dbg !976, !tbaa !832
  %inc = add nsw i64 %3, 1, !dbg !976
  store i64 %inc, ptr %2, align 8, !dbg !976, !tbaa !832
  %cmp = icmp slt i64 %3, 3, !dbg !977
  br i1 %cmp, label %cleanup, label %for.body.preheader, !dbg !979

for.body.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %2, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !970
  call void @llvm.dbg.value(metadata i64 %inc, metadata !969, metadata !DIExpression()), !dbg !970
  %buffer7 = getelementptr inbounds %struct._Ascii85Info, ptr %2, i64 0, i32 2, !dbg !980
  call void @llvm.dbg.value(metadata ptr %buffer7, metadata !968, metadata !DIExpression()), !dbg !970
  br label %for.body, !dbg !981

for.body:                                         ; preds = %for.body.preheader, %for.end
  %n.074 = phi i64 [ %sub, %for.end ], [ %inc, %for.body.preheader ]
  %p.073 = phi ptr [ %add.ptr, %for.end ], [ %buffer7, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %n.074, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %p.073, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %p.073, metadata !753, metadata !DIExpression()), !dbg !983
  %4 = load i8, ptr %p.073, align 1, !dbg !988, !tbaa !887
  %conv.i = zext i8 %4 to i64, !dbg !989
  %arrayidx1.i = getelementptr inbounds i8, ptr %p.073, i64 1, !dbg !990
  %5 = load i8, ptr %arrayidx1.i, align 1, !dbg !990, !tbaa !887
  %conv2.i = zext i8 %5 to i64, !dbg !991
  %6 = shl nuw nsw i64 %conv.i, 24, !dbg !992
  %7 = shl nuw nsw i64 %conv2.i, 16, !dbg !992
  %shl3.i = or i64 %7, %6, !dbg !992
  %arrayidx4.i = getelementptr inbounds i8, ptr %p.073, i64 2, !dbg !993
  %8 = load i8, ptr %arrayidx4.i, align 1, !dbg !993, !tbaa !887
  %conv5.i = zext i8 %8 to i64, !dbg !994
  %shl6.i = shl nuw nsw i64 %conv5.i, 8, !dbg !995
  %or7.i = or i64 %shl3.i, %shl6.i, !dbg !996
  %arrayidx8.i = getelementptr inbounds i8, ptr %p.073, i64 3, !dbg !997
  %9 = load i8, ptr %arrayidx8.i, align 1, !dbg !997, !tbaa !887
  %conv9.i = zext i8 %9 to i64, !dbg !998
  %or10.i = or i64 %or7.i, %conv9.i, !dbg !999
  call void @llvm.dbg.value(metadata i64 %or10.i, metadata !756, metadata !DIExpression()), !dbg !983
  %cmp.i = icmp eq i64 %or10.i, 0, !dbg !1000
  br i1 %cmp.i, label %Ascii85Tuple.exit.thread, label %for.body.i, !dbg !1001

Ascii85Tuple.exit.thread:                         ; preds = %for.body
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !1002, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !983, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()), !dbg !970
  br label %for.body14.preheader, !dbg !1003

for.body.i:                                       ; preds = %for.body, %for.body.i
  %quantum.03.i = phi i64 [ %div16.i, %for.body.i ], [ 52200625, %for.body ]
  %code.02.i = phi i64 [ %sub.i.recomposed, %for.body.i ], [ %or10.i, %for.body ]
  %i.01.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i, metadata !757, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %code.02.i, metadata !756, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i64 %i.01.i, metadata !754, metadata !DIExpression()), !dbg !983
  %div.i = udiv i64 %code.02.i, %quantum.03.i, !dbg !1004
  call void @llvm.dbg.value(metadata i64 %div.i, metadata !755, metadata !DIExpression()), !dbg !983
  %mul.i = mul nuw i64 %div.i, %quantum.03.i, !dbg !1005
  %sub.i.recomposed = urem i64 %code.02.i, %quantum.03.i
  call void @llvm.dbg.value(metadata i64 %sub.i.recomposed, metadata !756, metadata !DIExpression()), !dbg !983
  %10 = trunc i64 %div.i to i8, !dbg !1006
  %conv14.i = add i8 %10, 33, !dbg !1006
  %arrayidx15.i = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i, !dbg !1007
  store i8 %conv14.i, ptr %arrayidx15.i, align 1, !dbg !1008, !tbaa !887
  %div16.i = udiv i64 %quantum.03.i, 85, !dbg !1009
  call void @llvm.dbg.value(metadata i64 %div16.i, metadata !757, metadata !DIExpression()), !dbg !983
  %inc.i = add nuw nsw i64 %i.01.i, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !754, metadata !DIExpression()), !dbg !983
  %exitcond.not.i = icmp eq i64 %inc.i, 4, !dbg !1011
  br i1 %exitcond.not.i, label %Ascii85Tuple.exit, label %for.body.i, !dbg !1012, !llvm.loop !1013

Ascii85Tuple.exit:                                ; preds = %for.body.i
  %rem.i = urem i64 %sub.i.recomposed, 85, !dbg !1015
  %11 = trunc i64 %rem.i to i8, !dbg !1016
  %conv18.i = add nuw nsw i8 %11, 33, !dbg !1016
  store i8 %conv18.i, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !1017, !tbaa !887
  %.pre = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !1018, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !983, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()), !dbg !970
  %cmp12.not70 = icmp eq i8 %.pre, 0, !dbg !1020
  br i1 %cmp12.not70, label %for.end, label %for.body14.preheader, !dbg !1003

for.body14.preheader:                             ; preds = %Ascii85Tuple.exit.thread, %Ascii85Tuple.exit
  %.ph = phi i8 [ %.pre, %Ascii85Tuple.exit ], [ 122, %Ascii85Tuple.exit.thread ]
  br label %for.body14, !dbg !1003

for.body14:                                       ; preds = %for.body14.preheader, %if.end27
  %12 = phi i8 [ %17, %if.end27 ], [ %.ph, %for.body14.preheader ]
  %q.071 = phi ptr [ %incdec.ptr, %if.end27 ], [ @Ascii85Tuple.tuple, %for.body14.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071, metadata !967, metadata !DIExpression()), !dbg !970
  %13 = load ptr, ptr %ascii85, align 8, !dbg !1021, !tbaa !797
  %line_break = getelementptr inbounds %struct._Ascii85Info, ptr %13, i64 0, i32 1, !dbg !1023
  %14 = load i64, ptr %line_break, align 8, !dbg !1024, !tbaa !829
  %dec = add nsw i64 %14, -1, !dbg !1024
  store i64 %dec, ptr %line_break, align 8, !dbg !1024, !tbaa !829
  %cmp18 = icmp sgt i64 %14, 0, !dbg !1025
  %cmp21.not = icmp eq i8 %12, 37
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp21.not, !dbg !1027
  br i1 %or.cond, label %if.end27, label %if.then23, !dbg !1027

if.then23:                                        ; preds = %for.body14
  %call24 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !1028
  %15 = load ptr, ptr %ascii85, align 8, !dbg !1030, !tbaa !797
  %line_break26 = getelementptr inbounds %struct._Ascii85Info, ptr %15, i64 0, i32 1, !dbg !1031
  store i64 72, ptr %line_break26, align 8, !dbg !1032, !tbaa !829
  %.pre78 = load i8, ptr %q.071, align 1, !dbg !1033, !tbaa !887
  br label %if.end27, !dbg !1034

if.end27:                                         ; preds = %if.then23, %for.body14
  %16 = phi i8 [ %.pre78, %if.then23 ], [ %12, %for.body14 ], !dbg !1033
  %call28 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %16) #11, !dbg !1035
  %incdec.ptr = getelementptr inbounds i8, ptr %q.071, i64 1, !dbg !1036
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !967, metadata !DIExpression()), !dbg !970
  %17 = load i8, ptr %incdec.ptr, align 1, !dbg !1018, !tbaa !887
  %cmp12.not = icmp eq i8 %17, 0, !dbg !1020
  br i1 %cmp12.not, label %for.end, label %for.body14, !dbg !1003, !llvm.loop !1037

for.end:                                          ; preds = %if.end27, %Ascii85Tuple.exit
  %add.ptr = getelementptr inbounds i8, ptr %p.073, i64 8, !dbg !1039
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !968, metadata !DIExpression()), !dbg !970
  %sub = add nsw i64 %n.074, -4, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %sub, metadata !969, metadata !DIExpression()), !dbg !970
  %cmp10 = icmp sgt i64 %n.074, 7, !dbg !1041
  br i1 %cmp10, label %for.body, label %for.end30, !dbg !981, !llvm.loop !1042

for.end30:                                        ; preds = %for.end
  %.pre79 = load ptr, ptr %ascii85, align 8, !dbg !1044, !tbaa !797
  store i64 %sub, ptr %.pre79, align 8, !dbg !1045, !tbaa !832
  %add.ptr33 = getelementptr inbounds i8, ptr %p.073, i64 4, !dbg !1046
  call void @llvm.dbg.value(metadata ptr %add.ptr33, metadata !968, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %add.ptr33, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !970
  %18 = load i8, ptr %add.ptr33, align 1, !dbg !1047, !tbaa !887
  %arrayidx4183 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79, i64 0, i32 2, i64 0, !dbg !1050
  store i8 %18, ptr %arrayidx4183, align 1, !dbg !1051, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()), !dbg !970
  br label %for.body37.for.body37_crit_edge, !dbg !1052

for.body37.for.body37_crit_edge:                  ; preds = %for.end30, %for.body37.for.body37_crit_edge
  %inc4385 = phi i64 [ 1, %for.end30 ], [ %inc43, %for.body37.for.body37_crit_edge ]
  %p.17684 = phi ptr [ %add.ptr33, %for.end30 ], [ %incdec.ptr38, %for.body37.for.body37_crit_edge ]
  call void @llvm.dbg.value(metadata ptr %p.17684, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !970
  %incdec.ptr38 = getelementptr inbounds i8, ptr %p.17684, i64 1, !dbg !1053
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38, metadata !968, metadata !DIExpression()), !dbg !970
  %.pre80 = load ptr, ptr %ascii85, align 8, !dbg !1054, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc4385, metadata !969, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !970
  %19 = load i8, ptr %incdec.ptr38, align 1, !dbg !1047, !tbaa !887
  %arrayidx41 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80, i64 0, i32 2, i64 %inc4385, !dbg !1050
  store i8 %19, ptr %arrayidx41, align 1, !dbg !1051, !tbaa !887
  %inc43 = add nuw nsw i64 %inc4385, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i64 %inc43, metadata !969, metadata !DIExpression()), !dbg !970
  %exitcond.not = icmp eq i64 %inc43, 4, !dbg !1056
  br i1 %exitcond.not, label %cleanup, label %for.body37.for.body37_crit_edge, !dbg !1052, !llvm.loop !1057

cleanup:                                          ; preds = %for.body37.for.body37_crit_edge, %entry
  ret void, !dbg !1059
}

; Function Attrs: nounwind uwtable
define dso_local i32 @HuffmanDecodeImage(ptr noundef %image) local_unnamed_addr #0 !dbg !1060 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !1064, metadata !DIExpression()), !dbg !1096
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1097
  %0 = load i32, ptr %debug, align 8, !dbg !1097, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !1099
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1100

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1101
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 473, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !1102
  br label %if.end, !dbg !1103

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #14, !dbg !1104
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1071, metadata !DIExpression()), !dbg !1096
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef 1021, i64 noundef 8) #14, !dbg !1105
  call void @llvm.dbg.value(metadata ptr %call3, metadata !1072, metadata !DIExpression()), !dbg !1096
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1106
  %1 = load i64, ptr %columns, align 8, !dbg !1106, !tbaa !1107
  %call4 = tail call ptr @AcquireQuantumMemory(i64 noundef %1, i64 noundef 1) #14, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1087, metadata !DIExpression()), !dbg !1096
  %cmp5 = icmp eq ptr %call2, null, !dbg !1109
  %cmp6 = icmp eq ptr %call3, null
  %or.cond = select i1 %cmp5, i1 true, i1 %cmp6, !dbg !1111
  %cmp8 = icmp eq ptr %call4, null
  %or.cond496 = select i1 %or.cond, i1 true, i1 %cmp8, !dbg !1111
  br i1 %or.cond496, label %if.then11, label %for.body, !dbg !1111

if.then11:                                        ; preds = %if.end
  %exception12 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1112
  %filename13 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1112
  %call15 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception12, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename13) #11, !dbg !1112
  br label %cleanup474, !dbg !1112

for.body:                                         ; preds = %if.end, %for.body
  %i.0787 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.0787, metadata !1077, metadata !DIExpression()), !dbg !1096
  %arrayidx = getelementptr inbounds ptr, ptr %call2, i64 %i.0787, !dbg !1115
  store ptr null, ptr %arrayidx, align 8, !dbg !1119, !tbaa !1120
  %arrayidx19 = getelementptr inbounds ptr, ptr %call3, i64 %i.0787, !dbg !1121
  store ptr null, ptr %arrayidx19, align 8, !dbg !1122, !tbaa !1120
  %inc = add nuw nsw i64 %i.0787, 1, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1077, metadata !DIExpression()), !dbg !1096
  %exitcond.not = icmp eq i64 %inc, 1021, !dbg !1124
  br i1 %exitcond.not, label %while.body, label %for.body, !dbg !1125, !llvm.loop !1126

while.body:                                       ; preds = %for.body, %while.body
  %2 = phi i64 [ %4, %while.body ], [ 53, %for.body ]
  %entry1.0788 = phi ptr [ %incdec.ptr, %while.body ], [ @TWTable, %for.body ]
  call void @llvm.dbg.value(metadata ptr %entry1.0788, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length22 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0788, i64 0, i32 2, !dbg !1128
  %3 = load i64, ptr %length22, align 8, !dbg !1128, !tbaa !1131
  %add = add i64 %3, 3510, !dbg !1128
  %add24 = add i64 %2, 1178, !dbg !1128
  %mul = mul i64 %add, %add24, !dbg !1128
  %rem = urem i64 %mul, 1021, !dbg !1128
  %arrayidx25 = getelementptr inbounds ptr, ptr %call3, i64 %rem, !dbg !1128
  store ptr %entry1.0788, ptr %arrayidx25, align 8, !dbg !1128, !tbaa !1120
  %incdec.ptr = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0788, i64 1, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code20 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0788, i64 1, i32 1, !dbg !1133
  %4 = load i64, ptr %code20, align 8, !dbg !1133, !tbaa !1134
  %cmp21.not = icmp eq i64 %4, 0, !dbg !1133
  br i1 %cmp21.not, label %while.body29, label %while.body, !dbg !1133, !llvm.loop !1135

while.body29:                                     ; preds = %while.body, %while.body29
  %5 = phi i64 [ %7, %while.body29 ], [ 27, %while.body ]
  %entry1.1789 = phi ptr [ %incdec.ptr37, %while.body29 ], [ @MWTable, %while.body ]
  call void @llvm.dbg.value(metadata ptr %entry1.1789, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length30 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1789, i64 0, i32 2, !dbg !1136
  %6 = load i64, ptr %length30, align 8, !dbg !1136, !tbaa !1131
  %add31 = add i64 %6, 3510, !dbg !1136
  %add33 = add i64 %5, 1178, !dbg !1136
  %mul34 = mul i64 %add31, %add33, !dbg !1136
  %rem35 = urem i64 %mul34, 1021, !dbg !1136
  %arrayidx36 = getelementptr inbounds ptr, ptr %call3, i64 %rem35, !dbg !1136
  store ptr %entry1.1789, ptr %arrayidx36, align 8, !dbg !1136, !tbaa !1120
  %incdec.ptr37 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1789, i64 1, !dbg !1136
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code27 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1789, i64 1, i32 1, !dbg !1139
  %7 = load i64, ptr %code27, align 8, !dbg !1139, !tbaa !1134
  %cmp28.not = icmp eq i64 %7, 0, !dbg !1139
  br i1 %cmp28.not, label %while.body42, label %while.body29, !dbg !1139, !llvm.loop !1140

while.body42:                                     ; preds = %while.body29, %while.body42
  %8 = phi i64 [ %10, %while.body42 ], [ 8, %while.body29 ]
  %entry1.2790 = phi ptr [ %incdec.ptr50, %while.body42 ], [ @EXTable, %while.body29 ]
  call void @llvm.dbg.value(metadata ptr %entry1.2790, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length43 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.2790, i64 0, i32 2, !dbg !1141
  %9 = load i64, ptr %length43, align 8, !dbg !1141, !tbaa !1131
  %add44 = add i64 %9, 3510, !dbg !1141
  %add46 = add i64 %8, 1178, !dbg !1141
  %mul47 = mul i64 %add44, %add46, !dbg !1141
  %rem48 = urem i64 %mul47, 1021, !dbg !1141
  %arrayidx49 = getelementptr inbounds ptr, ptr %call3, i64 %rem48, !dbg !1141
  store ptr %entry1.2790, ptr %arrayidx49, align 8, !dbg !1141, !tbaa !1120
  %incdec.ptr50 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.2790, i64 1, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code40 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.2790, i64 1, i32 1, !dbg !1144
  %10 = load i64, ptr %code40, align 8, !dbg !1144, !tbaa !1134
  %cmp41.not = icmp eq i64 %10, 0, !dbg !1144
  br i1 %cmp41.not, label %while.body55, label %while.body42, !dbg !1144, !llvm.loop !1145

while.body55:                                     ; preds = %while.body42, %while.body55
  %11 = phi i64 [ %13, %while.body55 ], [ 55, %while.body42 ]
  %entry1.3791 = phi ptr [ %incdec.ptr63, %while.body55 ], [ @TBTable, %while.body42 ]
  call void @llvm.dbg.value(metadata ptr %entry1.3791, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length56 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.3791, i64 0, i32 2, !dbg !1146
  %12 = load i64, ptr %length56, align 8, !dbg !1146, !tbaa !1131
  %add57 = add i64 %12, 293, !dbg !1146
  %add59 = add i64 %11, 2695, !dbg !1146
  %mul60 = mul i64 %add57, %add59, !dbg !1146
  %rem61 = urem i64 %mul60, 1021, !dbg !1146
  %arrayidx62 = getelementptr inbounds ptr, ptr %call2, i64 %rem61, !dbg !1146
  store ptr %entry1.3791, ptr %arrayidx62, align 8, !dbg !1146, !tbaa !1120
  %incdec.ptr63 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.3791, i64 1, !dbg !1146
  call void @llvm.dbg.value(metadata ptr %incdec.ptr63, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code53 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.3791, i64 1, i32 1, !dbg !1149
  %13 = load i64, ptr %code53, align 8, !dbg !1149, !tbaa !1134
  %cmp54.not = icmp eq i64 %13, 0, !dbg !1149
  br i1 %cmp54.not, label %while.body68, label %while.body55, !dbg !1149, !llvm.loop !1150

while.body68:                                     ; preds = %while.body55, %while.body68
  %14 = phi i64 [ %16, %while.body68 ], [ 15, %while.body55 ]
  %entry1.4792 = phi ptr [ %incdec.ptr76, %while.body68 ], [ @MBTable, %while.body55 ]
  call void @llvm.dbg.value(metadata ptr %entry1.4792, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length69 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.4792, i64 0, i32 2, !dbg !1151
  %15 = load i64, ptr %length69, align 8, !dbg !1151, !tbaa !1131
  %add70 = add i64 %15, 293, !dbg !1151
  %add72 = add i64 %14, 2695, !dbg !1151
  %mul73 = mul i64 %add70, %add72, !dbg !1151
  %rem74 = urem i64 %mul73, 1021, !dbg !1151
  %arrayidx75 = getelementptr inbounds ptr, ptr %call2, i64 %rem74, !dbg !1151
  store ptr %entry1.4792, ptr %arrayidx75, align 8, !dbg !1151, !tbaa !1120
  %incdec.ptr76 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.4792, i64 1, !dbg !1151
  call void @llvm.dbg.value(metadata ptr %incdec.ptr76, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code66 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.4792, i64 1, i32 1, !dbg !1154
  %16 = load i64, ptr %code66, align 8, !dbg !1154, !tbaa !1134
  %cmp67.not = icmp eq i64 %16, 0, !dbg !1154
  br i1 %cmp67.not, label %while.body81, label %while.body68, !dbg !1154, !llvm.loop !1155

while.body81:                                     ; preds = %while.body68, %while.body81
  %17 = phi i64 [ %19, %while.body81 ], [ 8, %while.body68 ]
  %entry1.5793 = phi ptr [ %incdec.ptr89, %while.body81 ], [ @EXTable, %while.body68 ]
  call void @llvm.dbg.value(metadata ptr %entry1.5793, metadata !1069, metadata !DIExpression()), !dbg !1096
  %length82 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.5793, i64 0, i32 2, !dbg !1156
  %18 = load i64, ptr %length82, align 8, !dbg !1156, !tbaa !1131
  %add83 = add i64 %18, 293, !dbg !1156
  %add85 = add i64 %17, 2695, !dbg !1156
  %mul86 = mul i64 %add83, %add85, !dbg !1156
  %rem87 = urem i64 %mul86, 1021, !dbg !1156
  %arrayidx88 = getelementptr inbounds ptr, ptr %call2, i64 %rem87, !dbg !1156
  store ptr %entry1.5793, ptr %arrayidx88, align 8, !dbg !1156, !tbaa !1120
  %incdec.ptr89 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.5793, i64 1, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %incdec.ptr89, metadata !1069, metadata !DIExpression()), !dbg !1096
  %code79 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.5793, i64 1, i32 1, !dbg !1159
  %19 = load i64, ptr %code79, align 8, !dbg !1159, !tbaa !1134
  %cmp80.not = icmp eq i64 %19, 0, !dbg !1159
  br i1 %cmp80.not, label %while.body93, label %while.body81, !dbg !1159, !llvm.loop !1160

while.body93:                                     ; preds = %while.body81, %if.end100
  %runlength.0796 = phi i64 [ %spec.select, %if.end100 ], [ 0, %while.body81 ]
  %mask.0795 = phi i64 [ %shr, %if.end100 ], [ 0, %while.body81 ]
  %byte.0794 = phi i32 [ %byte.1, %if.end100 ], [ 0, %while.body81 ]
  call void @llvm.dbg.value(metadata i64 %runlength.0796, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.0795, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.0794, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and = and i64 %mask.0795, 255, !dbg !1161
  %cmp94 = icmp eq i64 %and, 0, !dbg !1161
  br i1 %cmp94, label %if.then95, label %if.end100, !dbg !1164

if.then95:                                        ; preds = %while.body93
  %call96 = tail call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1165
  call void @llvm.dbg.value(metadata i32 %call96, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp97 = icmp eq i32 %call96, -1, !dbg !1167
  br i1 %cmp97, label %do.body.preheader, label %if.end100, !dbg !1165

if.end100:                                        ; preds = %if.then95, %while.body93
  %byte.1 = phi i32 [ %byte.0794, %while.body93 ], [ %call96, %if.then95 ], !dbg !1096
  %mask.1 = phi i64 [ %mask.0795, %while.body93 ], [ 128, %if.then95 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.1, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.1, metadata !1074, metadata !DIExpression()), !dbg !1096
  %inc101 = add nuw nsw i64 %runlength.0796, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %inc101, metadata !1084, metadata !DIExpression()), !dbg !1096
  %conv = sext i32 %byte.1 to i64, !dbg !1164
  %and102 = and i64 %mask.1, %conv, !dbg !1164
  %cmp103.not = icmp eq i64 %and102, 0, !dbg !1164
  call void @llvm.dbg.value(metadata i32 undef, metadata !1079, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr = lshr i64 %mask.1, 1, !dbg !1164
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  %spec.select = select i1 %cmp103.not, i64 %inc101, i64 0, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1084, metadata !DIExpression()), !dbg !1096
  %cmp92 = icmp ult i64 %spec.select, 11, !dbg !1169
  br i1 %cmp92, label %while.body93, label %do.body.preheader, !dbg !1170

do.body.preheader:                                ; preds = %if.then95, %if.end100
  %byte.3.ph = phi i32 [ %byte.1, %if.end100 ], [ -1, %if.then95 ]
  %mask.2.ph = phi i64 [ %shr, %if.end100 ], [ %mask.0795, %if.then95 ]
  br label %do.body, !dbg !1171

do.body:                                          ; preds = %do.body.preheader, %if.end120
  %byte.3 = phi i32 [ %byte.4, %if.end120 ], [ %byte.3.ph, %do.body.preheader ], !dbg !1096
  %mask.2 = phi i64 [ %shr128, %if.end120 ], [ %mask.2.ph, %do.body.preheader ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.2, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.3, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and111 = and i64 %mask.2, 255, !dbg !1172
  %cmp112 = icmp eq i64 %and111, 0, !dbg !1172
  br i1 %cmp112, label %if.then114, label %if.end120, !dbg !1176

if.then114:                                       ; preds = %do.body
  %call115 = tail call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1177
  call void @llvm.dbg.value(metadata i32 %call115, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp116 = icmp eq i32 %call115, -1, !dbg !1179
  br i1 %cmp116, label %do.end, label %if.end120, !dbg !1177

if.end120:                                        ; preds = %if.then114, %do.body
  %byte.4 = phi i32 [ %byte.3, %do.body ], [ %call115, %if.then114 ], !dbg !1096
  %mask.3 = phi i64 [ %mask.2, %do.body ], [ 128, %if.then114 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.3, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.4, metadata !1074, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1096
  %conv122 = sext i32 %byte.4 to i64, !dbg !1176
  %and123 = and i64 %mask.3, %conv122, !dbg !1176
  %cmp124.not = icmp eq i64 %and123, 0, !dbg !1176
  call void @llvm.dbg.value(metadata i1 %cmp124.not, metadata !1079, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr128 = lshr i64 %mask.3, 1, !dbg !1176
  call void @llvm.dbg.value(metadata i64 %shr128, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  br i1 %cmp124.not, label %do.body, label %do.end, !dbg !1181, !llvm.loop !1182

do.end:                                           ; preds = %if.then114, %if.end120
  %byte.5 = phi i32 [ -1, %if.then114 ], [ %byte.4, %if.end120 ], !dbg !1177
  %mask.4 = phi i64 [ %mask.2, %if.then114 ], [ %shr128, %if.end120 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.4, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.5, metadata !1074, metadata !DIExpression()), !dbg !1096
  %x_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !1184
  store double 2.040000e+02, ptr %x_resolution, align 8, !dbg !1185, !tbaa !1186
  %y_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !1187
  store double 1.960000e+02, ptr %y_resolution, align 8, !dbg !1188, !tbaa !1189
  %units = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19, !dbg !1190
  store i32 1, ptr %units, align 8, !dbg !1191, !tbaa !1192
  %exception136 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %exception136, metadata !1070, metadata !DIExpression()), !dbg !1096
  %call137 = tail call ptr @AcquireAuthenticCacheView(ptr noundef %image, ptr noundef nonnull %exception136) #11, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %call137, metadata !1065, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1096
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1195
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1086, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.4, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.5, metadata !1074, metadata !DIExpression()), !dbg !1096
  %20 = load i64, ptr %rows, align 8, !dbg !1209, !tbaa !1210
  %cmp139848 = icmp sgt i64 %20, 0, !dbg !1211
  br i1 %cmp139848, label %for.cond144.preheader.lr.ph, label %for.end466, !dbg !1212

for.cond144.preheader.lr.ph:                      ; preds = %do.end
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.cond144.preheader, !dbg !1212

for.cond144.preheader:                            ; preds = %for.cond144.preheader.lr.ph, %cleanup
  %y.0852 = phi i64 [ 0, %for.cond144.preheader.lr.ph ], [ %y.1, %cleanup ]
  %null_lines.0851 = phi i64 [ 0, %for.cond144.preheader.lr.ph ], [ %null_lines.3, %cleanup ]
  %mask.5850 = phi i64 [ %mask.4, %for.cond144.preheader.lr.ph ], [ %mask.20, %cleanup ]
  %byte.6849 = phi i32 [ %byte.5, %for.cond144.preheader.lr.ph ], [ %byte.23, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0852, metadata !1086, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.0851, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.5850, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.6849, metadata !1074, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1078, metadata !DIExpression()), !dbg !1096
  %21 = load i64, ptr %columns, align 8, !dbg !1214, !tbaa !1107
  %cmp146797 = icmp sgt i64 %21, 0, !dbg !1217
  br i1 %cmp146797, label %for.body148, label %for.cond153.preheader, !dbg !1218

for.cond153.preheader:                            ; preds = %for.body148, %for.cond144.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 1, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.0851, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.5850, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.6849, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp154800807820 = icmp eq i32 %byte.6849, -1, !dbg !1219
  br i1 %cmp154800807820, label %for.end415, label %if.end157.lr.ph.lr.ph, !dbg !1224

for.body148:                                      ; preds = %for.cond144.preheader, %for.body148
  %x.0799 = phi i64 [ %inc151, %for.body148 ], [ 0, %for.cond144.preheader ]
  %p.0798 = phi ptr [ %incdec.ptr149, %for.body148 ], [ %call4, %for.cond144.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0799, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %p.0798, metadata !1078, metadata !DIExpression()), !dbg !1096
  %incdec.ptr149 = getelementptr inbounds i8, ptr %p.0798, i64 1, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %incdec.ptr149, metadata !1078, metadata !DIExpression()), !dbg !1096
  store i8 0, ptr %p.0798, align 1, !dbg !1226, !tbaa !887
  %inc151 = add nuw nsw i64 %x.0799, 1, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !1095, metadata !DIExpression()), !dbg !1213
  %22 = load i64, ptr %columns, align 8, !dbg !1214, !tbaa !1107
  %cmp146 = icmp slt i64 %inc151, %22, !dbg !1217
  br i1 %cmp146, label %for.body148, label %for.cond153.preheader, !dbg !1218, !llvm.loop !1228

if.end157:                                        ; preds = %if.end157.lr.ph, %for.cond153.backedge
  %runlength.4805 = phi i64 [ %runlength.4.ph751812, %if.end157.lr.ph ], [ %runlength.12.ph, %for.cond153.backedge ]
  %length.0804 = phi i64 [ %length.0.ph811, %if.end157.lr.ph ], [ %length.2.ph, %for.cond153.backedge ]
  %mask.6803 = phi i64 [ %mask.6.ph750810, %if.end157.lr.ph ], [ %mask.15.ph, %for.cond153.backedge ]
  %code.0802 = phi i64 [ %code.0.ph809, %if.end157.lr.ph ], [ %code.2.ph, %for.cond153.backedge ]
  %byte.7801 = phi i32 [ %byte.7.ph749808, %if.end157.lr.ph ], [ %byte.17.ph, %for.cond153.backedge ]
  call void @llvm.dbg.value(metadata i64 %runlength.4805, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.0804, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.6803, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.0802, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.7801, metadata !1074, metadata !DIExpression()), !dbg !1096
  %23 = load i64, ptr %columns, align 8, !dbg !1230, !tbaa !1107
  %cmp159.not = icmp slt i64 %x.1.ph826, %23, !dbg !1232
  br i1 %cmp159.not, label %do.body218, label %while.cond162.preheader, !dbg !1233

while.cond162.preheader:                          ; preds = %if.end157
  call void @llvm.dbg.value(metadata i64 %runlength.4805, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.6803, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.7801, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp163828 = icmp ult i64 %runlength.4805, 11, !dbg !1234
  br i1 %cmp163828, label %while.body165, label %do.body189.preheader, !dbg !1236

while.body165:                                    ; preds = %while.cond162.preheader, %if.end175
  %runlength.5831 = phi i64 [ %spec.select742, %if.end175 ], [ %runlength.4805, %while.cond162.preheader ]
  %mask.7830 = phi i64 [ %shr183, %if.end175 ], [ %mask.6803, %while.cond162.preheader ]
  %byte.8829 = phi i32 [ %byte.9, %if.end175 ], [ %byte.7801, %while.cond162.preheader ]
  call void @llvm.dbg.value(metadata i64 %runlength.5831, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.7830, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.8829, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and166 = and i64 %mask.7830, 255, !dbg !1237
  %cmp167 = icmp eq i64 %and166, 0, !dbg !1237
  br i1 %cmp167, label %if.then169, label %if.end175, !dbg !1240

if.then169:                                       ; preds = %while.body165
  %call170 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1241
  call void @llvm.dbg.value(metadata i32 %call170, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp171 = icmp eq i32 %call170, -1, !dbg !1243
  br i1 %cmp171, label %do.body189.preheader, label %if.end175, !dbg !1241

if.end175:                                        ; preds = %if.then169, %while.body165
  %byte.9 = phi i32 [ %byte.8829, %while.body165 ], [ %call170, %if.then169 ], !dbg !1096
  %mask.8 = phi i64 [ %mask.7830, %while.body165 ], [ 128, %if.then169 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.8, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.9, metadata !1074, metadata !DIExpression()), !dbg !1096
  %inc176 = add nuw nsw i64 %runlength.5831, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %inc176, metadata !1084, metadata !DIExpression()), !dbg !1096
  %conv177 = sext i32 %byte.9 to i64, !dbg !1240
  %and178 = and i64 %mask.8, %conv177, !dbg !1240
  %cmp179.not = icmp eq i64 %and178, 0, !dbg !1240
  call void @llvm.dbg.value(metadata i32 undef, metadata !1079, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr183 = lshr i64 %mask.8, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %shr183, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  %spec.select742 = select i1 %cmp179.not, i64 %inc176, i64 0, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %spec.select742, metadata !1084, metadata !DIExpression()), !dbg !1096
  %cmp163 = icmp ult i64 %spec.select742, 11, !dbg !1234
  br i1 %cmp163, label %while.body165, label %do.body189.preheader, !dbg !1236

do.body189.preheader:                             ; preds = %if.end175, %if.then169, %while.cond162.preheader
  %byte.11.ph = phi i32 [ %byte.7801, %while.cond162.preheader ], [ %byte.9, %if.end175 ], [ -1, %if.then169 ]
  %mask.9.ph = phi i64 [ %mask.6803, %while.cond162.preheader ], [ %shr183, %if.end175 ], [ %mask.7830, %if.then169 ]
  br label %do.body189, !dbg !1246

do.body189:                                       ; preds = %do.body189.preheader, %if.end199
  %byte.11 = phi i32 [ %byte.12, %if.end199 ], [ %byte.11.ph, %do.body189.preheader ], !dbg !1245
  %mask.9 = phi i64 [ %shr207, %if.end199 ], [ %mask.9.ph, %do.body189.preheader ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.9, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.11, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and190 = and i64 %mask.9, 255, !dbg !1247
  %cmp191 = icmp eq i64 %and190, 0, !dbg !1247
  br i1 %cmp191, label %if.then193, label %if.end199, !dbg !1251

if.then193:                                       ; preds = %do.body189
  %call194 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1252
  call void @llvm.dbg.value(metadata i32 %call194, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp195 = icmp eq i32 %call194, -1, !dbg !1254
  br i1 %cmp195, label %for.end415, label %if.end199, !dbg !1252

if.end199:                                        ; preds = %if.then193, %do.body189
  %byte.12 = phi i32 [ %byte.11, %do.body189 ], [ %call194, %if.then193 ], !dbg !1245
  %mask.10 = phi i64 [ %mask.9, %do.body189 ], [ 128, %if.then193 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.10, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.12, metadata !1074, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1096
  %conv201 = sext i32 %byte.12 to i64, !dbg !1251
  %and202 = and i64 %mask.10, %conv201, !dbg !1251
  %cmp203.not = icmp eq i64 %and202, 0, !dbg !1251
  call void @llvm.dbg.value(metadata i1 %cmp203.not, metadata !1079, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr207 = lshr i64 %mask.10, 1, !dbg !1251
  call void @llvm.dbg.value(metadata i64 %shr207, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  br i1 %cmp203.not, label %do.body189, label %for.end415, !dbg !1256, !llvm.loop !1257

do.body218:                                       ; preds = %if.end157, %if.end276
  %byte.13 = phi i32 [ %byte.16, %if.end276 ], [ %byte.7801, %if.end157 ], !dbg !1096
  %code.1 = phi i64 [ 0, %if.end276 ], [ %code.0802, %if.end157 ], !dbg !1213
  %mask.11 = phi i64 [ %mask.14, %if.end276 ], [ %mask.6803, %if.end157 ], !dbg !1096
  %length.1 = phi i64 [ %inc278, %if.end276 ], [ %length.0804, %if.end157 ], !dbg !1213
  %runlength.9 = phi i64 [ %runlength.11, %if.end276 ], [ %runlength.4805, %if.end157 ], !dbg !1213
  call void @llvm.dbg.value(metadata i64 %runlength.9, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.11, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.1, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.13, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp219 = icmp ult i64 %runlength.9, 11, !dbg !1259
  %and222 = and i64 %mask.11, 255, !dbg !1262
  %cmp223 = icmp eq i64 %and222, 0, !dbg !1262
  br i1 %cmp219, label %if.then221, label %if.else, !dbg !1263

if.then221:                                       ; preds = %do.body218
  br i1 %cmp223, label %if.then225, label %if.end231, !dbg !1264

if.then225:                                       ; preds = %if.then221
  %call226 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %call226, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp227 = icmp eq i32 %call226, -1, !dbg !1269
  br i1 %cmp227, label %if.end286, label %if.end231, !dbg !1266

if.end231:                                        ; preds = %if.then225, %if.then221
  %byte.14 = phi i32 [ %byte.13, %if.then221 ], [ %call226, %if.then225 ], !dbg !1096
  %mask.12 = phi i64 [ %mask.11, %if.then221 ], [ 128, %if.then225 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.12, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.14, metadata !1074, metadata !DIExpression()), !dbg !1096
  %inc232 = add nuw nsw i64 %runlength.9, 1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %inc232, metadata !1084, metadata !DIExpression()), !dbg !1096
  %conv233 = sext i32 %byte.14 to i64, !dbg !1264
  %and234 = and i64 %mask.12, %conv233, !dbg !1264
  %cmp235.not = icmp eq i64 %and234, 0, !dbg !1264
  call void @llvm.dbg.value(metadata i1 %cmp235.not, metadata !1079, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr239 = lshr i64 %mask.12, 1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %shr239, metadata !1081, metadata !DIExpression()), !dbg !1096
  %spec.select705 = select i1 %cmp235.not, i64 %inc232, i64 0, !dbg !1264
  br label %if.end276, !dbg !1264

if.else:                                          ; preds = %do.body218
  br i1 %cmp223, label %if.then247, label %if.end253, !dbg !1271

if.then247:                                       ; preds = %if.else
  %call248 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %call248, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp249 = icmp eq i32 %call248, -1, !dbg !1277
  br i1 %cmp249, label %if.end286, label %if.end253, !dbg !1274

if.end253:                                        ; preds = %if.then247, %if.else
  %byte.15 = phi i32 [ %byte.13, %if.else ], [ %call248, %if.then247 ], !dbg !1096
  %mask.13 = phi i64 [ %mask.11, %if.else ], [ 128, %if.then247 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.13, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.15, metadata !1074, metadata !DIExpression()), !dbg !1096
  %inc254 = add i64 %runlength.9, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %inc254, metadata !1084, metadata !DIExpression()), !dbg !1096
  %conv255 = sext i32 %byte.15 to i64, !dbg !1271
  %and256 = and i64 %mask.13, %conv255, !dbg !1271
  %cmp257.not = icmp eq i64 %and256, 0, !dbg !1271
  call void @llvm.dbg.value(metadata i1 %cmp257.not, metadata !1079, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr261 = lshr i64 %mask.13, 1, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %shr261, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  br i1 %cmp257.not, label %if.end276, label %do.end282, !dbg !1279

if.end276:                                        ; preds = %if.end231, %if.end253
  %byte.16 = phi i32 [ %byte.15, %if.end253 ], [ %byte.14, %if.end231 ], !dbg !1262
  %bit.0.in.in = phi i1 [ true, %if.end253 ], [ %cmp235.not, %if.end231 ]
  %mask.14 = phi i64 [ %shr261, %if.end253 ], [ %shr239, %if.end231 ], !dbg !1262
  %runlength.11 = phi i64 [ %inc254, %if.end253 ], [ %spec.select705, %if.end231 ], !dbg !1262
  %bit.0.in = xor i1 %bit.0.in.in, true, !dbg !1262
  %bit.0 = zext i1 %bit.0.in to i64, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %runlength.11, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.14, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %bit.0, metadata !1079, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.16, metadata !1074, metadata !DIExpression()), !dbg !1096
  %shl = shl i64 %code.1, 1, !dbg !1280
  %add277 = or i64 %shl, %bit.0, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %add277, metadata !1080, metadata !DIExpression()), !dbg !1096
  %inc278 = add i64 %length.1, 1, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %inc278, metadata !1082, metadata !DIExpression()), !dbg !1096
  %cmp280 = icmp eq i64 %add277, 0, !dbg !1283
  br i1 %cmp280, label %do.body218, label %if.end286, !dbg !1284, !llvm.loop !1285

do.end282:                                        ; preds = %if.end253
  %inc270 = add i64 %null_lines.0851, 1, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %inc270, metadata !1083, metadata !DIExpression()), !dbg !1096
  %cmp271.not = icmp eq i64 %x.1.ph826, 0, !dbg !1291
  %spec.store.select = select i1 %cmp271.not, i64 %inc270, i64 0, !dbg !1293
  call void @llvm.dbg.value(metadata i32 undef, metadata !1088, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %shr261, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.1, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.15, metadata !1074, metadata !DIExpression()), !dbg !1096
  br label %for.end415, !dbg !1294

if.end286:                                        ; preds = %if.then225, %if.end276, %if.then247
  %byte.17.ph = phi i32 [ -1, %if.then247 ], [ %byte.16, %if.end276 ], [ -1, %if.then225 ]
  %code.2.ph = phi i64 [ %code.1, %if.then247 ], [ %add277, %if.end276 ], [ %code.1, %if.then225 ]
  %mask.15.ph = phi i64 [ %mask.11, %if.then247 ], [ %mask.14, %if.end276 ], [ %mask.11, %if.then225 ]
  %length.2.ph = phi i64 [ %length.1, %if.then247 ], [ %inc278, %if.end276 ], [ %length.1, %if.then225 ]
  %runlength.12.ph = phi i64 [ %runlength.9, %if.then247 ], [ %runlength.11, %if.end276 ], [ %runlength.9, %if.then225 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1088, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.1, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %shr261, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.1, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.15, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp287 = icmp ugt i64 %length.2.ph, 13, !dbg !1295
  br i1 %cmp287, label %while.cond290.preheader, label %if.end345, !dbg !1297

while.cond290.preheader:                          ; preds = %if.end286
  call void @llvm.dbg.value(metadata i64 %runlength.12.ph, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.15.ph, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.17.ph, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp291836 = icmp ult i64 %runlength.12.ph, 11, !dbg !1298
  br i1 %cmp291836, label %while.body293, label %do.body317.preheader, !dbg !1300

while.body293:                                    ; preds = %while.cond290.preheader, %if.end303
  %runlength.13839 = phi i64 [ %spec.select743, %if.end303 ], [ %runlength.12.ph, %while.cond290.preheader ]
  %mask.16838 = phi i64 [ %shr311, %if.end303 ], [ %mask.15.ph, %while.cond290.preheader ]
  %byte.18837 = phi i32 [ %byte.19, %if.end303 ], [ %byte.17.ph, %while.cond290.preheader ]
  call void @llvm.dbg.value(metadata i64 %runlength.13839, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.16838, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.18837, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and294 = and i64 %mask.16838, 255, !dbg !1301
  %cmp295 = icmp eq i64 %and294, 0, !dbg !1301
  br i1 %cmp295, label %if.then297, label %if.end303, !dbg !1304

if.then297:                                       ; preds = %while.body293
  %call298 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1305
  call void @llvm.dbg.value(metadata i32 %call298, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp299 = icmp eq i32 %call298, -1, !dbg !1307
  br i1 %cmp299, label %do.body317.preheader, label %if.end303, !dbg !1305

if.end303:                                        ; preds = %if.then297, %while.body293
  %byte.19 = phi i32 [ %byte.18837, %while.body293 ], [ %call298, %if.then297 ], !dbg !1309
  %mask.17 = phi i64 [ %mask.16838, %while.body293 ], [ 128, %if.then297 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.17, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.19, metadata !1074, metadata !DIExpression()), !dbg !1096
  %inc304 = add nuw nsw i64 %runlength.13839, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %inc304, metadata !1084, metadata !DIExpression()), !dbg !1096
  %conv305 = sext i32 %byte.19 to i64, !dbg !1304
  %and306 = and i64 %mask.17, %conv305, !dbg !1304
  %cmp307.not = icmp eq i64 %and306, 0, !dbg !1304
  call void @llvm.dbg.value(metadata i32 undef, metadata !1079, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr311 = lshr i64 %mask.17, 1, !dbg !1304
  call void @llvm.dbg.value(metadata i64 %shr311, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  %spec.select743 = select i1 %cmp307.not, i64 %inc304, i64 0, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %spec.select743, metadata !1084, metadata !DIExpression()), !dbg !1096
  %cmp291 = icmp ult i64 %spec.select743, 11, !dbg !1298
  br i1 %cmp291, label %while.body293, label %do.body317.preheader, !dbg !1300

do.body317.preheader:                             ; preds = %if.end303, %if.then297, %while.cond290.preheader
  %byte.21.ph = phi i32 [ %byte.17.ph, %while.cond290.preheader ], [ %byte.19, %if.end303 ], [ -1, %if.then297 ]
  %mask.18.ph = phi i64 [ %mask.15.ph, %while.cond290.preheader ], [ %shr311, %if.end303 ], [ %mask.16838, %if.then297 ]
  br label %do.body317, !dbg !1311

do.body317:                                       ; preds = %do.body317.preheader, %if.end327
  %byte.21 = phi i32 [ %byte.22, %if.end327 ], [ %byte.21.ph, %do.body317.preheader ], !dbg !1310
  %mask.18 = phi i64 [ %shr335, %if.end327 ], [ %mask.18.ph, %do.body317.preheader ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.18, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.21, metadata !1074, metadata !DIExpression()), !dbg !1096
  %and318 = and i64 %mask.18, 255, !dbg !1312
  %cmp319 = icmp eq i64 %and318, 0, !dbg !1312
  br i1 %cmp319, label %if.then321, label %if.end327, !dbg !1316

if.then321:                                       ; preds = %do.body317
  %call322 = call i32 @ReadBlobByte(ptr noundef %image) #11, !dbg !1317
  call void @llvm.dbg.value(metadata i32 %call322, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp323 = icmp eq i32 %call322, -1, !dbg !1319
  br i1 %cmp323, label %for.end415, label %if.end327, !dbg !1317

if.end327:                                        ; preds = %if.then321, %do.body317
  %byte.22 = phi i32 [ %byte.21, %do.body317 ], [ %call322, %if.then321 ], !dbg !1310
  %mask.19 = phi i64 [ %mask.18, %do.body317 ], [ 128, %if.then321 ], !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.19, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.22, metadata !1074, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 poison, metadata !1084, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1096
  %conv329 = sext i32 %byte.22 to i64, !dbg !1316
  %and330 = and i64 %mask.19, %conv329, !dbg !1316
  %cmp331.not = icmp eq i64 %and330, 0, !dbg !1316
  call void @llvm.dbg.value(metadata i1 %cmp331.not, metadata !1079, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  %shr335 = lshr i64 %mask.19, 1, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %shr335, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 undef, metadata !1084, metadata !DIExpression()), !dbg !1096
  br i1 %cmp331.not, label %do.body317, label %for.end415, !dbg !1321, !llvm.loop !1322

if.end345:                                        ; preds = %if.end286
  br i1 %cmp346.not, label %if.else358, label %if.then348, !dbg !1324

if.then348:                                       ; preds = %if.end345
  %cmp349 = icmp ult i64 %length.2.ph, 4, !dbg !1325
  br i1 %cmp349, label %for.cond153.outer748.loopexit, label %if.end368, !dbg !1329, !llvm.loop !1330

for.cond153.outer748.loopexit:                    ; preds = %if.then348, %if.else358
  %color.0.ph752.ph = phi i32 [ 1, %if.then348 ], [ 0, %if.else358 ]
  call void @llvm.dbg.value(metadata i64 %x.1.ph826, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %color.0.ph752.ph, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %count.0.ph824, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %runlength.12.ph, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.0851, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.2.ph, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.15.ph, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.2.ph, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.17.ph, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp154800 = icmp eq i32 %byte.17.ph, -1, !dbg !1219
  br i1 %cmp154800, label %for.end415, label %if.end157.lr.ph, !dbg !1224

if.end157.lr.ph:                                  ; preds = %if.end157.lr.ph.lr.ph, %for.cond153.outer748.loopexit
  %color.0.ph752813 = phi i32 [ %color.0.ph825, %if.end157.lr.ph.lr.ph ], [ %color.0.ph752.ph, %for.cond153.outer748.loopexit ]
  %runlength.4.ph751812 = phi i64 [ %runlength.4.ph823, %if.end157.lr.ph.lr.ph ], [ %runlength.12.ph, %for.cond153.outer748.loopexit ]
  %length.0.ph811 = phi i64 [ 0, %if.end157.lr.ph.lr.ph ], [ %length.2.ph, %for.cond153.outer748.loopexit ]
  %mask.6.ph750810 = phi i64 [ %mask.6.ph822, %if.end157.lr.ph.lr.ph ], [ %mask.15.ph, %for.cond153.outer748.loopexit ]
  %code.0.ph809 = phi i64 [ 0, %if.end157.lr.ph.lr.ph ], [ %code.2.ph, %for.cond153.outer748.loopexit ]
  %byte.7.ph749808 = phi i32 [ %byte.7.ph821, %if.end157.lr.ph.lr.ph ], [ %byte.17.ph, %for.cond153.outer748.loopexit ]
  call void @llvm.dbg.value(metadata i32 %color.0.ph752813, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %runlength.4.ph751812, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.0.ph811, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.6.ph750810, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.0.ph809, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.7.ph749808, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp346.not = icmp eq i32 %color.0.ph752813, 0
  br label %if.end157, !dbg !1224

if.else358:                                       ; preds = %if.end345
  %cmp359 = icmp ult i64 %length.2.ph, 2, !dbg !1333
  br i1 %cmp359, label %for.cond153.outer748.loopexit, label %if.end368, !dbg !1336, !llvm.loop !1330

if.end368:                                        ; preds = %if.else358, %if.then348
  %.sink967 = phi i64 [ 3510, %if.then348 ], [ 293, %if.else358 ]
  %.sink = phi i64 [ 1178, %if.then348 ], [ 2695, %if.else358 ]
  %call2.sink = phi ptr [ %call3, %if.then348 ], [ %call2, %if.else358 ]
  %add363 = add nuw nsw i64 %length.2.ph, %.sink967, !dbg !1337
  %add364 = add i64 %code.2.ph, %.sink, !dbg !1337
  %mul365 = mul i64 %add363, %add364, !dbg !1337
  %rem366 = urem i64 %mul365, 1021, !dbg !1337
  %arrayidx367 = getelementptr inbounds ptr, ptr %call2.sink, i64 %rem366, !dbg !1337
  %entry1.6 = load ptr, ptr %arrayidx367, align 8, !dbg !1337, !tbaa !1120
  call void @llvm.dbg.value(metadata ptr %entry1.6, metadata !1069, metadata !DIExpression()), !dbg !1096
  %cmp369 = icmp eq ptr %entry1.6, null, !dbg !1338
  br i1 %cmp369, label %for.cond153.backedge, label %if.end372, !dbg !1340

if.end372:                                        ; preds = %if.end368
  %length373 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.6, i64 0, i32 2, !dbg !1341
  %24 = load i64, ptr %length373, align 8, !dbg !1341, !tbaa !1131
  %cmp374.not = icmp eq i64 %24, %length.2.ph, !dbg !1343
  br i1 %cmp374.not, label %lor.lhs.false376, label %for.cond153.backedge, !dbg !1344

lor.lhs.false376:                                 ; preds = %if.end372
  %code377 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.6, i64 0, i32 1, !dbg !1345
  %25 = load i64, ptr %code377, align 8, !dbg !1345, !tbaa !1134
  %cmp378.not = icmp eq i64 %25, %code.2.ph, !dbg !1346
  br i1 %cmp378.not, label %if.end381, label %for.cond153.backedge, !dbg !1347

for.cond153.backedge:                             ; preds = %if.end372, %lor.lhs.false376, %if.end368
  call void @llvm.dbg.value(metadata i64 %x.1.ph826, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %color.0.ph752813, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %count.0.ph824, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %runlength.12.ph, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.0851, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %length.2.ph, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.15.ph, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %code.2.ph, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.17.ph, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp154 = icmp eq i32 %byte.17.ph, -1, !dbg !1219
  br i1 %cmp154, label %for.end415, label %if.end157, !dbg !1224, !llvm.loop !1330

if.end381:                                        ; preds = %lor.lhs.false376
  %26 = load i64, ptr %entry1.6, align 8, !dbg !1348, !tbaa !1349
  switch i64 %26, label %sw.epilog [
    i64 23, label %sw.bb
    i64 25, label %sw.bb
    i64 24, label %sw.bb412
    i64 26, label %sw.bb412
    i64 27, label %sw.bb412
  ], !dbg !1350

sw.bb:                                            ; preds = %if.end381, %if.end381
  %count382 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.6, i64 0, i32 3, !dbg !1351
  %27 = load i64, ptr %count382, align 8, !dbg !1351, !tbaa !1354
  %add383 = add nsw i64 %27, %count.0.ph824, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %add383, metadata !1085, metadata !DIExpression()), !dbg !1096
  %add384 = add i64 %add383, %x.1.ph826, !dbg !1356
  %28 = load i64, ptr %columns, align 8, !dbg !1358, !tbaa !1107
  %cmp386 = icmp sgt i64 %add384, %28, !dbg !1359
  %sub = sub nsw i64 %28, %x.1.ph826
  %spec.select709 = select i1 %cmp386, i64 %sub, i64 %add383, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %spec.select709, metadata !1085, metadata !DIExpression()), !dbg !1096
  %cmp391 = icmp sgt i64 %spec.select709, 0, !dbg !1361
  br i1 %cmp391, label %if.then393, label %if.end408, !dbg !1363

if.then393:                                       ; preds = %sw.bb
  br i1 %cmp346.not, label %for.body402.preheader, label %if.then396, !dbg !1364

for.body402.preheader:                            ; preds = %if.then393
  call void @llvm.dbg.value(metadata i64 %x.1.ph826, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %spec.select709, metadata !1085, metadata !DIExpression()), !dbg !1096
  %uglygep = getelementptr i8, ptr %call4, i64 %x.1.ph826, !dbg !1366
  call void @llvm.memset.p0.i64(ptr align 1 %uglygep, i8 1, i64 %spec.select709, i1 false), !dbg !1369, !tbaa !887
  call void @llvm.dbg.value(metadata i32 undef, metadata !1095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i32 undef, metadata !1085, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1096
  %smin = call i64 @llvm.smin.i64(i64 %28, i64 %add384), !dbg !1366
  br label %if.end408, !dbg !1371

if.then396:                                       ; preds = %if.then393
  %add397 = add nsw i64 %spec.select709, %x.1.ph826, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %add397, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 0, metadata !1085, metadata !DIExpression()), !dbg !1096
  br label %if.end408, !dbg !1374

if.end408:                                        ; preds = %for.body402.preheader, %if.then396, %sw.bb
  %count.3 = phi i64 [ 0, %if.then396 ], [ %spec.select709, %sw.bb ], [ 0, %for.body402.preheader ], !dbg !1375
  %x.3 = phi i64 [ %add397, %if.then396 ], [ %x.1.ph826, %sw.bb ], [ %smin, %for.body402.preheader ], !dbg !1213
  call void @llvm.dbg.value(metadata i64 %x.3, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !1085, metadata !DIExpression()), !dbg !1096
  %cond411 = zext i1 %cmp346.not to i32, !dbg !1371
  call void @llvm.dbg.value(metadata i32 %cond411, metadata !1089, metadata !DIExpression()), !dbg !1096
  br label %sw.epilog, !dbg !1376

sw.bb412:                                         ; preds = %if.end381, %if.end381, %if.end381
  %count413 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.6, i64 0, i32 3, !dbg !1377
  %29 = load i64, ptr %count413, align 8, !dbg !1377, !tbaa !1354
  %add414 = add nsw i64 %29, %count.0.ph824, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %add414, metadata !1085, metadata !DIExpression()), !dbg !1096
  br label %sw.epilog, !dbg !1380

sw.epilog:                                        ; preds = %if.end381, %sw.bb412, %if.end408
  %count.4 = phi i64 [ %count.0.ph824, %if.end381 ], [ %add414, %sw.bb412 ], [ %count.3, %if.end408 ], !dbg !1213
  %color.1 = phi i32 [ %color.0.ph752813, %if.end381 ], [ %color.0.ph752813, %sw.bb412 ], [ %cond411, %if.end408 ], !dbg !1213
  %x.4 = phi i64 [ %x.1.ph826, %if.end381 ], [ %x.1.ph826, %sw.bb412 ], [ %x.3, %if.end408 ], !dbg !1213
  call void @llvm.dbg.value(metadata i64 %x.4, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %color.1, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %count.4, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %runlength.12.ph, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.0851, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1082, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.15.ph, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1080, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.17.ph, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp154800807 = icmp eq i32 %byte.17.ph, -1, !dbg !1219
  br i1 %cmp154800807, label %for.end415, label %if.end157.lr.ph.lr.ph, !dbg !1224, !llvm.loop !1330

if.end157.lr.ph.lr.ph:                            ; preds = %for.cond153.preheader, %sw.epilog
  %x.1.ph826 = phi i64 [ %x.4, %sw.epilog ], [ 0, %for.cond153.preheader ]
  %color.0.ph825 = phi i32 [ %color.1, %sw.epilog ], [ 1, %for.cond153.preheader ]
  %count.0.ph824 = phi i64 [ %count.4, %sw.epilog ], [ 0, %for.cond153.preheader ]
  %runlength.4.ph823 = phi i64 [ %runlength.12.ph, %sw.epilog ], [ 0, %for.cond153.preheader ]
  %mask.6.ph822 = phi i64 [ %mask.15.ph, %sw.epilog ], [ %mask.5850, %for.cond153.preheader ]
  %byte.7.ph821 = phi i32 [ %byte.17.ph, %sw.epilog ], [ %byte.6849, %for.cond153.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.1.ph826, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %color.0.ph825, metadata !1089, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %count.0.ph824, metadata !1085, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %runlength.4.ph823, metadata !1084, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.6.ph822, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.7.ph821, metadata !1074, metadata !DIExpression()), !dbg !1096
  br label %if.end157.lr.ph, !dbg !1224

for.end415:                                       ; preds = %sw.epilog, %if.end199, %if.then193, %if.end327, %if.then321, %for.cond153.outer748.loopexit, %for.cond153.backedge, %for.cond153.preheader, %do.end282
  %byte.23 = phi i32 [ %byte.15, %do.end282 ], [ -1, %for.cond153.preheader ], [ -1, %for.cond153.backedge ], [ -1, %for.cond153.outer748.loopexit ], [ %byte.22, %if.end327 ], [ -1, %if.then321 ], [ %byte.12, %if.end199 ], [ -1, %if.then193 ], [ -1, %sw.epilog ], !dbg !1096
  %mask.20 = phi i64 [ %shr261, %do.end282 ], [ %mask.5850, %for.cond153.preheader ], [ %mask.15.ph, %for.cond153.backedge ], [ %mask.15.ph, %for.cond153.outer748.loopexit ], [ %shr335, %if.end327 ], [ %mask.18, %if.then321 ], [ %shr207, %if.end199 ], [ %mask.9, %if.then193 ], [ %mask.15.ph, %sw.epilog ], !dbg !1096
  %null_lines.3 = phi i64 [ %spec.store.select, %do.end282 ], [ %null_lines.0851, %for.cond153.preheader ], [ %null_lines.0851, %for.cond153.backedge ], [ %null_lines.0851, %for.cond153.outer748.loopexit ], [ %null_lines.0851, %if.then321 ], [ %null_lines.0851, %if.end327 ], [ %null_lines.0851, %if.then193 ], [ %null_lines.0851, %if.end199 ], [ %null_lines.0851, %sw.epilog ], !dbg !1381
  call void @llvm.dbg.value(metadata i64 %null_lines.3, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.20, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.23, metadata !1074, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1078, metadata !DIExpression()), !dbg !1096
  %30 = load i64, ptr %columns, align 8, !dbg !1382, !tbaa !1107
  %call417 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call137, i64 noundef 0, i64 noundef %y.0852, i64 noundef %30, i64 noundef 1, ptr noundef nonnull %exception136) #15, !dbg !1383
  call void @llvm.dbg.value(metadata ptr %call417, metadata !1090, metadata !DIExpression()), !dbg !1213
  %cmp418 = icmp eq ptr %call417, null, !dbg !1384
  br i1 %cmp418, label %for.end466, label %if.end421, !dbg !1386

if.end421:                                        ; preds = %for.end415
  %call422 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call137) #11, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %call422, metadata !1076, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1095, metadata !DIExpression()), !dbg !1213
  %31 = load i64, ptr %columns, align 8, !tbaa !1107
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1078, metadata !DIExpression()), !dbg !1096
  %cmp425844 = icmp sgt i64 %31, 0, !dbg !1388
  br i1 %cmp425844, label %for.body427.lr.ph, label %for.end452, !dbg !1391

for.body427.lr.ph:                                ; preds = %if.end421
  %cmp430.not = icmp eq ptr %call422, null
  %32 = load ptr, ptr %colormap, align 8, !tbaa !1392
  %red437 = getelementptr inbounds %struct._PixelPacket, ptr %call417, i64 0, i32 2
  %green441 = getelementptr inbounds %struct._PixelPacket, ptr %call417, i64 0, i32 1
  %opacity449 = getelementptr inbounds %struct._PixelPacket, ptr %call417, i64 0, i32 3
  br label %for.body427, !dbg !1391

for.body427:                                      ; preds = %for.body427.lr.ph, %if.end434
  %x.5846 = phi i64 [ 0, %for.body427.lr.ph ], [ %inc451, %if.end434 ]
  %p.1845 = phi ptr [ %call4, %for.body427.lr.ph ], [ %incdec.ptr428, %if.end434 ]
  call void @llvm.dbg.value(metadata i64 %x.5846, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %p.1845, metadata !1078, metadata !DIExpression()), !dbg !1096
  %incdec.ptr428 = getelementptr inbounds i8, ptr %p.1845, i64 1, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr428, metadata !1078, metadata !DIExpression()), !dbg !1096
  %33 = load i8, ptr %p.1845, align 1, !dbg !1395, !tbaa !887
  call void @llvm.dbg.value(metadata i8 %33, metadata !1073, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1096
  br i1 %cmp430.not, label %if.end434, label %if.then432, !dbg !1396

if.then432:                                       ; preds = %for.body427
  %conv429 = zext i8 %33 to i16, !dbg !1398
  call void @llvm.dbg.value(metadata i16 %conv429, metadata !1073, metadata !DIExpression()), !dbg !1096
  %add.ptr = getelementptr inbounds i16, ptr %call422, i64 %x.5846, !dbg !1399
  store i16 %conv429, ptr %add.ptr, align 2, !dbg !1399, !tbaa !1401
  br label %if.end434, !dbg !1399

if.end434:                                        ; preds = %if.then432, %for.body427
  %conv435 = zext i8 %33 to i64, !dbg !1402
  %red = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 %conv435, i32 2, !dbg !1402
  %34 = load i16, ptr %red, align 2, !dbg !1402, !tbaa !1404
  store i16 %34, ptr %red437, align 2, !dbg !1402, !tbaa !1404
  %green = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 %conv435, i32 1, !dbg !1402
  %35 = load i16, ptr %green, align 2, !dbg !1402, !tbaa !1405
  store i16 %35, ptr %green441, align 2, !dbg !1402, !tbaa !1405
  %add.ptr444 = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 %conv435, !dbg !1402
  %36 = load i16, ptr %add.ptr444, align 2, !dbg !1402, !tbaa !1406
  store i16 %36, ptr %call417, align 2, !dbg !1402, !tbaa !1406
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %32, i64 %conv435, i32 3, !dbg !1402
  %37 = load i16, ptr %opacity, align 2, !dbg !1402, !tbaa !1407
  store i16 %37, ptr %opacity449, align 2, !dbg !1402, !tbaa !1407
  %inc451 = add nuw nsw i64 %x.5846, 1, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %inc451, metadata !1095, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr %incdec.ptr428, metadata !1078, metadata !DIExpression()), !dbg !1096
  %exitcond914.not = icmp eq i64 %inc451, %31, !dbg !1388
  br i1 %exitcond914.not, label %for.end452, label %for.body427, !dbg !1391, !llvm.loop !1409

for.end452:                                       ; preds = %if.end434, %if.end421
  %call453 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call137, ptr noundef nonnull %exception136) #15, !dbg !1411
  %cmp454 = icmp eq i32 %call453, 0, !dbg !1413
  br i1 %cmp454, label %for.end466, label %if.end457, !dbg !1414

if.end457:                                        ; preds = %for.end452
  %38 = load i64, ptr %rows, align 8, !dbg !1415, !tbaa !1210
  call void @llvm.dbg.value(metadata ptr %image, metadata !1203, metadata !DIExpression()) #11, !dbg !1416
  call void @llvm.dbg.value(metadata ptr @LoadImageTag, metadata !1204, metadata !DIExpression()) #11, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %y.0852, metadata !1205, metadata !DIExpression()) #11, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %38, metadata !1206, metadata !DIExpression()) #11, !dbg !1416
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1207, metadata !DIExpression()) #11, !dbg !1418
  %39 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1419, !tbaa !1421
  %cmp.i = icmp eq ptr %39, null, !dbg !1422
  br i1 %cmp.i, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !1423

SetImageProgress.exit.thread:                     ; preds = %if.end457
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1075, metadata !DIExpression()), !dbg !1096
  br label %cleanup, !dbg !1425

SetImageProgress.exit:                            ; preds = %if.end457
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %filename.i) #11, !dbg !1426
  %40 = load ptr, ptr %progress_monitor.i, align 8, !dbg !1427, !tbaa !1421
  %41 = load ptr, ptr %client_data.i, align 8, !dbg !1428, !tbaa !1429
  %call4.i = call i32 %40(ptr noundef nonnull %message.i, i64 noundef %y.0852, i64 noundef %38, ptr noundef %41) #11, !dbg !1430
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !1424
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1075, metadata !DIExpression()), !dbg !1096
  %cmp460 = icmp eq i32 %call4.i, 0, !dbg !1431
  br i1 %cmp460, label %for.end466, label %SetImageProgress.exit.cleanup_crit_edge, !dbg !1425

SetImageProgress.exit.cleanup_crit_edge:          ; preds = %SetImageProgress.exit
  %.pre = load i64, ptr %rows, align 8, !dbg !1209, !tbaa !1210
  br label %cleanup, !dbg !1425

cleanup:                                          ; preds = %SetImageProgress.exit.cleanup_crit_edge, %SetImageProgress.exit.thread
  %42 = phi i64 [ %.pre, %SetImageProgress.exit.cleanup_crit_edge ], [ %38, %SetImageProgress.exit.thread ], !dbg !1209
  %y.1 = add nuw nsw i64 %y.0852, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %y.1, metadata !1086, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %null_lines.3, metadata !1083, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %mask.20, metadata !1081, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %byte.23, metadata !1074, metadata !DIExpression()), !dbg !1096
  %cmp139 = icmp slt i64 %y.1, %42, !dbg !1211
  %cmp141 = icmp ult i64 %null_lines.3, 3
  %or.cond497 = select i1 %cmp139, i1 %cmp141, i1 false, !dbg !1212
  br i1 %or.cond497, label %for.cond144.preheader, label %for.end466, !dbg !1212

for.end466:                                       ; preds = %cleanup, %for.end415, %for.end452, %SetImageProgress.exit, %do.end
  %y.0.lcssa = phi i64 [ 0, %do.end ], [ %y.0852, %SetImageProgress.exit ], [ %y.0852, %for.end452 ], [ %y.0852, %for.end415 ], [ %y.1, %cleanup ], !dbg !1434
  call void @llvm.dbg.value(metadata i64 %y.0.lcssa, metadata !1086, metadata !DIExpression()), !dbg !1096
  %call467 = call ptr @DestroyCacheView(ptr noundef %call137) #11, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %call467, metadata !1065, metadata !DIExpression()), !dbg !1096
  %sub468 = add nsw i64 %y.0.lcssa, -3, !dbg !1436
  call void @llvm.dbg.value(metadata i64 %sub468, metadata !1437, metadata !DIExpression()) #11, !dbg !1443
  call void @llvm.dbg.value(metadata i64 1, metadata !1442, metadata !DIExpression()) #11, !dbg !1443
  %43 = call i64 @llvm.umax.i64(i64 %sub468, i64 1) #11, !dbg !1443
  store i64 %43, ptr %rows, align 8, !dbg !1445, !tbaa !1210
  %compression = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 2, !dbg !1446
  store i32 6, ptr %compression, align 8, !dbg !1447, !tbaa !1448
  %call471 = call ptr @RelinquishMagickMemory(ptr noundef %call3) #11, !dbg !1449
  call void @llvm.dbg.value(metadata ptr %call471, metadata !1072, metadata !DIExpression()), !dbg !1096
  %call472 = call ptr @RelinquishMagickMemory(ptr noundef %call2) #11, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %call472, metadata !1071, metadata !DIExpression()), !dbg !1096
  %call473 = call ptr @RelinquishMagickMemory(ptr noundef %call4) #11, !dbg !1451
  call void @llvm.dbg.value(metadata ptr %call473, metadata !1087, metadata !DIExpression()), !dbg !1096
  br label %cleanup474, !dbg !1452

cleanup474:                                       ; preds = %if.then11, %for.end466
  %retval.0 = phi i32 [ 1, %for.end466 ], [ 0, %if.then11 ], !dbg !1096
  ret i32 %retval.0, !dbg !1453
}

; Function Attrs: allocsize(0,1)
declare !dbg !1454 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !1457 i32 @ReadBlobByte(ptr noundef) local_unnamed_addr #4

declare !dbg !1460 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1463 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1467 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !1470 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1473 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #4

declare !dbg !1476 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @HuffmanEncodeImage(ptr noundef %image_info, ptr noundef %image, ptr noundef %inject_image) local_unnamed_addr #0 !dbg !1479 {
entry:
  %message.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %image_info, metadata !1613, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %image, metadata !1614, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %inject_image, metadata !1615, metadata !DIExpression()), !dbg !1634
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1635
  %0 = load i32, ptr %debug, align 8, !dbg !1635, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !1637
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1638

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1639
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 767, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !1640
  br label %if.end, !dbg !1641

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i64 1, metadata !1627, metadata !DIExpression()), !dbg !1634
  %columns = getelementptr inbounds %struct._Image, ptr %inject_image, i64 0, i32 7, !dbg !1642
  %1 = load i64, ptr %columns, align 8, !dbg !1642, !tbaa !1107
  call void @llvm.dbg.value(metadata i64 %1, metadata !1628, metadata !DIExpression()), !dbg !1634
  %magick = getelementptr inbounds %struct._ImageInfo, ptr %image_info, i64 0, i32 48, !dbg !1643
  %call3 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1645
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1646
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !1647

if.then5:                                         ; preds = %if.end
  %2 = load i64, ptr %columns, align 8, !dbg !1648, !tbaa !1107
  call void @llvm.dbg.value(metadata i64 %2, metadata !1437, metadata !DIExpression()) #11, !dbg !1649
  call void @llvm.dbg.value(metadata i64 1728, metadata !1442, metadata !DIExpression()) #11, !dbg !1649
  %3 = tail call i64 @llvm.umax.i64(i64 %2, i64 1728) #11, !dbg !1649
  call void @llvm.dbg.value(metadata i64 %3, metadata !1628, metadata !DIExpression()), !dbg !1634
  br label %if.end8, !dbg !1651

if.end8:                                          ; preds = %if.then5, %if.end
  %width.0 = phi i64 [ %3, %if.then5 ], [ %1, %if.end ], !dbg !1634
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !1628, metadata !DIExpression()), !dbg !1634
  %add = add i64 %width.0, 1, !dbg !1652
  %call9 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 1) #14, !dbg !1653
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1633, metadata !DIExpression()), !dbg !1634
  %cmp10 = icmp eq ptr %call9, null, !dbg !1654
  br i1 %cmp10, label %if.then13, label %if.end19, !dbg !1656

if.then13:                                        ; preds = %if.end8
  %exception14 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1657
  %filename15 = getelementptr inbounds %struct._Image, ptr %inject_image, i64 0, i32 53, !dbg !1657
  %call17 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 778, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename15) #11, !dbg !1657
  br label %cleanup, !dbg !1657

if.end19:                                         ; preds = %if.end8
  %call20 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call9, i32 noundef 0, i64 noundef %width.0) #11, !dbg !1660
  %exception21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1661
  %call22 = tail call ptr @CloneImage(ptr noundef nonnull %inject_image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %exception21) #11, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1620, metadata !DIExpression()), !dbg !1634
  %cmp23 = icmp eq ptr %call22, null, !dbg !1663
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1665

if.then24:                                        ; preds = %if.end19
  %call25 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call9) #11, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %call25, metadata !1633, metadata !DIExpression()), !dbg !1634
  br label %cleanup, !dbg !1668

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i32 @SetImageType(ptr noundef nonnull %call22, i32 noundef 1) #11, !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 -128, metadata !1632, metadata !DIExpression()), !dbg !1634
  %call30 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1670
  %cmp31.not = icmp eq i32 %call30, 0, !dbg !1672
  br i1 %cmp31.not, label %for.body, label %if.then32, !dbg !1673

if.then32:                                        ; preds = %if.end26
  tail call void @Ascii85Initialize(ptr noundef nonnull %image), !dbg !1674
  br label %if.end70, !dbg !1674

for.body:                                         ; preds = %if.end26, %for.inc
  %bit.0965 = phi i8 [ %bit.1, %for.inc ], [ -128, %if.end26 ]
  %k.0964 = phi i32 [ %inc, %for.inc ], [ 0, %if.end26 ]
  call void @llvm.dbg.value(metadata i8 %bit.0965, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %k.0964, metadata !1618, metadata !DIExpression()), !dbg !1634
  %4 = lshr i8 %bit.0965, 1, !dbg !1675
  call void @llvm.dbg.value(metadata i8 %4, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp36 = icmp ult i8 %bit.0965, 2, !dbg !1680
  br i1 %cmp36, label %if.then38, label %for.inc, !dbg !1675

if.then38:                                        ; preds = %for.body
  %call41 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1682
  %cmp42 = icmp eq i32 %call41, 0, !dbg !1682
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !1685

if.then44:                                        ; preds = %if.then38
  %call45 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 0) #11, !dbg !1682
  br label %for.inc, !dbg !1682

if.else46:                                        ; preds = %if.then38
  tail call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext 0), !dbg !1682
  br label %for.inc

for.inc:                                          ; preds = %if.then44, %if.else46, %for.body
  %bit.1 = phi i8 [ %4, %for.body ], [ -128, %if.else46 ], [ -128, %if.then44 ], !dbg !1686
  call void @llvm.dbg.value(metadata i8 %bit.1, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1634
  %inc = add nuw nsw i32 %k.0964, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1618, metadata !DIExpression()), !dbg !1634
  %exitcond.not = icmp eq i32 %inc, 11, !dbg !1688
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1689, !llvm.loop !1690

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata i8 %bit.1, metadata !1631, metadata !DIExpression()), !dbg !1634
  %5 = lshr i8 %bit.1, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i8 %5, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp57 = icmp ult i8 %bit.1, 2, !dbg !1694
  br i1 %cmp57, label %if.then59, label %if.end70, !dbg !1692

if.then59:                                        ; preds = %for.end
  %call62 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1696
  %cmp63 = icmp eq i32 %call62, 0, !dbg !1696
  br i1 %cmp63, label %if.then65, label %if.else67, !dbg !1699

if.then65:                                        ; preds = %if.then59
  %call66 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %bit.1) #11, !dbg !1696
  br label %if.end70, !dbg !1696

if.else67:                                        ; preds = %if.then59
  tail call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %bit.1), !dbg !1696
  br label %if.end70

if.end70:                                         ; preds = %if.then65, %if.else67, %for.end, %if.then32
  %byte.2 = phi i8 [ 0, %if.then32 ], [ %bit.1, %for.end ], [ 0, %if.else67 ], [ 0, %if.then65 ], !dbg !1634
  %bit.2 = phi i8 [ -128, %if.then32 ], [ %5, %for.end ], [ -128, %if.else67 ], [ -128, %if.then65 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8 %bit.2, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.2, metadata !1631, metadata !DIExpression()), !dbg !1634
  %exception71 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 58, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %exception71, metadata !1617, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1634
  %columns76 = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 7, !dbg !1701
  %filename.i = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 53, !dbg !1705
  %rows = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 8
  call void @llvm.dbg.value(metadata i8 %bit.2, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.2, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  %6 = load i64, ptr %rows, align 8, !dbg !1709, !tbaa !1210
  %cmp731022 = icmp sgt i64 %6, 0, !dbg !1710
  br i1 %cmp731022, label %for.body75.lr.ph, label %for.end388, !dbg !1711

for.body75.lr.ph:                                 ; preds = %if.end70
  %cmp971012 = icmp sgt i64 %width.0, 0
  %ascii85.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 47
  %client_data.i = getelementptr inbounds %struct._Image, ptr %call22, i64 0, i32 48
  br label %for.body75, !dbg !1711

for.body75:                                       ; preds = %for.body75.lr.ph, %for.inc386
  %bit.31026 = phi i8 [ %bit.2, %for.body75.lr.ph ], [ %bit.18, %for.inc386 ]
  %byte.31025 = phi i8 [ %byte.2, %for.body75.lr.ph ], [ %byte.22, %for.inc386 ]
  %y.01023 = phi i64 [ 0, %for.body75.lr.ph ], [ %inc387, %for.inc386 ]
  call void @llvm.dbg.value(metadata i8 %bit.31026, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.31025, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %y.01023, metadata !1630, metadata !DIExpression()), !dbg !1634
  %7 = load i64, ptr %columns76, align 8, !dbg !1701, !tbaa !1107
  %call77 = call ptr @GetVirtualPixels(ptr noundef nonnull %call22, i64 noundef 0, i64 noundef %y.01023, i64 noundef %7, i64 noundef 1, ptr noundef nonnull %exception71) #11, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1624, metadata !DIExpression()), !dbg !1634
  %cmp78 = icmp eq ptr %call77, null, !dbg !1713
  br i1 %cmp78, label %for.end388, label %for.cond82.preheader, !dbg !1715

for.cond82.preheader:                             ; preds = %for.body75
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call77, metadata !1624, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1634
  %8 = load i64, ptr %columns76, align 8, !dbg !1716, !tbaa !1107
  %cmp84966 = icmp sgt i64 %8, 0, !dbg !1719
  br i1 %cmp84966, label %for.body86, label %for.cond96.preheader, !dbg !1720

for.cond96.preheader:                             ; preds = %for.body86, %for.cond82.preheader
  call void @llvm.dbg.value(metadata i8 %bit.31026, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.31025, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %width.0, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  br i1 %cmp971012, label %land.rhs.preheader, label %for.body331.preheader, !dbg !1721

for.body86:                                       ; preds = %for.cond82.preheader, %for.body86
  %q.1969 = phi ptr [ %incdec.ptr, %for.body86 ], [ %call9, %for.cond82.preheader ]
  %p.0968 = phi ptr [ %incdec.ptr92, %for.body86 ], [ %call77, %for.cond82.preheader ]
  %x.0967 = phi i64 [ %inc94, %for.body86 ], [ 0, %for.cond82.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.1969, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %p.0968, metadata !1624, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %x.0967, metadata !1623, metadata !DIExpression()), !dbg !1634
  %call87 = call float @GetPixelIntensity(ptr noundef nonnull %call22, ptr noundef nonnull %p.0968) #15, !dbg !1723
  %cmp89 = fcmp ult float %call87, 3.276750e+04, !dbg !1725
  %conv91 = zext i1 %cmp89 to i8, !dbg !1726
  %incdec.ptr = getelementptr inbounds i8, ptr %q.1969, i64 1, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1625, metadata !DIExpression()), !dbg !1634
  store i8 %conv91, ptr %q.1969, align 1, !dbg !1728, !tbaa !887
  %incdec.ptr92 = getelementptr inbounds %struct._PixelPacket, ptr %p.0968, i64 1, !dbg !1729
  call void @llvm.dbg.value(metadata ptr %incdec.ptr92, metadata !1624, metadata !DIExpression()), !dbg !1634
  %inc94 = add nuw nsw i64 %x.0967, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %inc94, metadata !1623, metadata !DIExpression()), !dbg !1634
  %9 = load i64, ptr %columns76, align 8, !dbg !1716, !tbaa !1107
  %cmp84 = icmp slt i64 %inc94, %9, !dbg !1719
  br i1 %cmp84, label %for.body86, label %for.cond96.preheader, !dbg !1720, !llvm.loop !1731

land.rhs.preheader:                               ; preds = %for.cond96.preheader, %if.end326
  %bit.41016 = phi i8 [ %bit.14, %if.end326 ], [ %bit.31026, %for.cond96.preheader ]
  %byte.41015 = phi i8 [ %byte.18, %if.end326 ], [ %byte.31025, %for.cond96.preheader ]
  %n.01014 = phi i64 [ %n.2.lcssa1051, %if.end326 ], [ %width.0, %for.cond96.preheader ]
  %q.21013 = phi ptr [ %q.4.lcssa1050, %if.end326 ], [ %call9, %for.cond96.preheader ]
  call void @llvm.dbg.value(metadata i8 %bit.41016, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.41015, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %n.01014, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %q.21013, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 0, metadata !1619, metadata !DIExpression()), !dbg !1634
  %10 = trunc i64 %n.01014 to i32, !dbg !1733
  %uglygep = getelementptr i8, ptr %q.21013, i64 %n.01014, !dbg !1733
  br label %land.rhs, !dbg !1733

land.rhs:                                         ; preds = %land.rhs.preheader, %for.body106
  %n.1973 = phi i64 [ %dec, %for.body106 ], [ %n.01014, %land.rhs.preheader ]
  %q.3972 = phi ptr [ %incdec.ptr107, %for.body106 ], [ %q.21013, %land.rhs.preheader ]
  %runlength.0971 = phi i32 [ %inc108, %for.body106 ], [ 0, %land.rhs.preheader ]
  call void @llvm.dbg.value(metadata i64 %n.1973, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %q.3972, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.0971, metadata !1619, metadata !DIExpression()), !dbg !1634
  %11 = load i8, ptr %q.3972, align 1, !dbg !1737, !tbaa !887
  %cmp104 = icmp eq i8 %11, 0, !dbg !1739
  br i1 %cmp104, label %for.body106, label %for.end110, !dbg !1733

for.body106:                                      ; preds = %land.rhs
  %incdec.ptr107 = getelementptr inbounds i8, ptr %q.3972, i64 1, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %incdec.ptr107, metadata !1625, metadata !DIExpression()), !dbg !1634
  %inc108 = add nuw nsw i32 %runlength.0971, 1, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %inc108, metadata !1619, metadata !DIExpression()), !dbg !1634
  %dec = add nsw i64 %n.1973, -1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %dec, metadata !1629, metadata !DIExpression()), !dbg !1634
  %cmp101 = icmp sgt i64 %n.1973, 1, !dbg !1744
  br i1 %cmp101, label %land.rhs, label %for.end110, !dbg !1745, !llvm.loop !1746

for.end110:                                       ; preds = %land.rhs, %for.body106
  %runlength.0.lcssa = phi i32 [ %runlength.0971, %land.rhs ], [ %10, %for.body106 ], !dbg !1748
  %q.3.lcssa = phi ptr [ %q.3972, %land.rhs ], [ %uglygep, %for.body106 ], !dbg !1749
  %n.1.lcssa = phi i64 [ %n.1973, %land.rhs ], [ 0, %for.body106 ], !dbg !1750
  %cmp111 = icmp ugt i32 %runlength.0.lcssa, 63, !dbg !1751
  br i1 %cmp111, label %if.then113, label %if.end161, !dbg !1753

if.then113:                                       ; preds = %for.end110
  %cmp114 = icmp ult i32 %runlength.0.lcssa, 1792, !dbg !1754
  br i1 %cmp114, label %if.then116, label %if.else117, !dbg !1757

if.then116:                                       ; preds = %if.then113
  %div669 = lshr i32 %runlength.0.lcssa, 6, !dbg !1758
  %sub = add nsw i32 %div669, -1, !dbg !1759
  %12 = zext i32 %sub to i64
  %add.ptr = getelementptr inbounds %struct.HuffmanTable, ptr @MWTable, i64 %12, !dbg !1760
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1616, metadata !DIExpression()), !dbg !1634
  br label %if.end123, !dbg !1761

if.else117:                                       ; preds = %if.then113
  call void @llvm.dbg.value(metadata i32 %runlength.0.lcssa, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !1766
  call void @llvm.dbg.value(metadata i64 2560, metadata !1765, metadata !DIExpression()) #11, !dbg !1766
  %13 = call i32 @llvm.umin.i32(i32 %runlength.0.lcssa, i32 2560), !dbg !1766
  %14 = zext i32 %13 to i64, !dbg !1766
  %sub120 = add nsw i64 %14, -1792, !dbg !1768
  %div121667 = lshr i64 %sub120, 6, !dbg !1769
  %add.ptr122 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %div121667, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %add.ptr122, metadata !1616, metadata !DIExpression()), !dbg !1634
  br label %if.end123

if.end123:                                        ; preds = %if.else117, %if.then116
  %entry1.0 = phi ptr [ %add.ptr, %if.then116 ], [ %add.ptr122, %if.else117 ], !dbg !1771
  call void @llvm.dbg.value(metadata ptr %entry1.0, metadata !1616, metadata !DIExpression()), !dbg !1634
  %count = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0, i64 0, i32 3, !dbg !1772
  %15 = load i64, ptr %count, align 8, !dbg !1772, !tbaa !1354
  %16 = trunc i64 %15 to i32, !dbg !1773
  call void @llvm.dbg.value(metadata i32 %conv126, metadata !1619, metadata !DIExpression()), !dbg !1634
  %length = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0, i64 0, i32 2, !dbg !1774
  %17 = load i64, ptr %length, align 8, !dbg !1774, !tbaa !1131
  %sub127 = add i64 %17, -1, !dbg !1774
  %shl = shl nuw i64 1, %sub127, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1626, metadata !DIExpression()), !dbg !1634
  %code = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.0, i64 0, i32 1
  %18 = load i64, ptr %code, align 8, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %bit.41016, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.41015, metadata !1631, metadata !DIExpression()), !dbg !1634
  br label %while.body, !dbg !1774

while.body:                                       ; preds = %if.end123, %if.end159
  %bit.5984 = phi i8 [ %bit.41016, %if.end123 ], [ %bit.6, %if.end159 ]
  %byte.5983 = phi i8 [ %byte.41015, %if.end123 ], [ %byte.7, %if.end159 ]
  %mask.0982 = phi i64 [ %shl, %if.end123 ], [ %shr160, %if.end159 ]
  call void @llvm.dbg.value(metadata i8 %bit.5984, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.5983, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %mask.0982, metadata !1626, metadata !DIExpression()), !dbg !1634
  %and130 = and i64 %18, %mask.0982, !dbg !1776
  %cmp131.not = icmp eq i64 %and130, 0, !dbg !1776
  %or139668 = select i1 %cmp131.not, i8 0, i8 %bit.5984, !dbg !1780
  %spec.select = or i8 %or139668, %byte.5983, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !1631, metadata !DIExpression()), !dbg !1634
  %19 = lshr i8 %bit.5984, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8 %19, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp147 = icmp ult i8 %bit.5984, 2, !dbg !1781
  br i1 %cmp147, label %if.then149, label %if.end159, !dbg !1780

if.then149:                                       ; preds = %while.body
  %call152 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1783
  %cmp153 = icmp eq i32 %call152, 0, !dbg !1783
  br i1 %cmp153, label %if.then155, label %if.else157, !dbg !1786

if.then155:                                       ; preds = %if.then149
  %call156 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %spec.select) #11, !dbg !1783
  br label %if.end159, !dbg !1783

if.else157:                                       ; preds = %if.then149
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !966, metadata !DIExpression()) #11, !dbg !1787
  %20 = load ptr, ptr %ascii85.i, align 8, !dbg !1789, !tbaa !797
  %21 = load i64, ptr %20, align 8, !dbg !1790, !tbaa !832
  %arrayidx.i = getelementptr inbounds %struct._Ascii85Info, ptr %20, i64 0, i32 2, i64 %21, !dbg !1791
  store i8 %spec.select, ptr %arrayidx.i, align 1, !dbg !1792, !tbaa !887
  %22 = load ptr, ptr %ascii85.i, align 8, !dbg !1793, !tbaa !797
  %23 = load i64, ptr %22, align 8, !dbg !1794, !tbaa !832
  %inc.i = add nsw i64 %23, 1, !dbg !1794
  store i64 %inc.i, ptr %22, align 8, !dbg !1794, !tbaa !832
  %cmp.i = icmp slt i64 %23, 3, !dbg !1795
  br i1 %cmp.i, label %if.end159, label %for.body.preheader.i, !dbg !1796

for.body.preheader.i:                             ; preds = %if.else157
  call void @llvm.dbg.value(metadata ptr %22, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  %buffer7.i = getelementptr inbounds %struct._Ascii85Info, ptr %22, i64 0, i32 2, !dbg !1797
  call void @llvm.dbg.value(metadata ptr %buffer7.i, metadata !968, metadata !DIExpression()) #11, !dbg !1787
  br label %for.body.i, !dbg !1798

for.body.i:                                       ; preds = %for.end.i, %for.body.preheader.i
  %n.074.i = phi i64 [ %sub.i, %for.end.i ], [ %inc.i, %for.body.preheader.i ]
  %p.073.i = phi ptr [ %add.ptr.i, %for.end.i ], [ %buffer7.i, %for.body.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %n.074.i, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %p.073.i, metadata !968, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %p.073.i, metadata !753, metadata !DIExpression()) #11, !dbg !1799
  %24 = load i8, ptr %p.073.i, align 1, !dbg !1801, !tbaa !887
  %conv.i.i = zext i8 %24 to i64, !dbg !1802
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %p.073.i, i64 1, !dbg !1803
  %25 = load i8, ptr %arrayidx1.i.i, align 1, !dbg !1803, !tbaa !887
  %conv2.i.i = zext i8 %25 to i64, !dbg !1804
  %26 = shl nuw nsw i64 %conv.i.i, 24, !dbg !1805
  %27 = shl nuw nsw i64 %conv2.i.i, 16, !dbg !1805
  %shl3.i.i = or i64 %27, %26, !dbg !1805
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %p.073.i, i64 2, !dbg !1806
  %28 = load i8, ptr %arrayidx4.i.i, align 1, !dbg !1806, !tbaa !887
  %conv5.i.i = zext i8 %28 to i64, !dbg !1807
  %shl6.i.i = shl nuw nsw i64 %conv5.i.i, 8, !dbg !1808
  %or7.i.i = or i64 %shl3.i.i, %shl6.i.i, !dbg !1809
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %p.073.i, i64 3, !dbg !1810
  %29 = load i8, ptr %arrayidx8.i.i, align 1, !dbg !1810, !tbaa !887
  %conv9.i.i = zext i8 %29 to i64, !dbg !1811
  %or10.i.i = or i64 %or7.i.i, %conv9.i.i, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %or10.i.i, metadata !756, metadata !DIExpression()) #11, !dbg !1799
  %cmp.i.i = icmp eq i64 %or10.i.i, 0, !dbg !1813
  br i1 %cmp.i.i, label %Ascii85Tuple.exit.thread.i, label %for.body.i.i, !dbg !1814

Ascii85Tuple.exit.thread.i:                       ; preds = %for.body.i
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !1815, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !1799, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !1787
  br label %for.body14.i.preheader, !dbg !1816

for.body.i.i:                                     ; preds = %for.body.i, %for.body.i.i
  %quantum.03.i.i = phi i64 [ %div16.i.i, %for.body.i.i ], [ 52200625, %for.body.i ]
  %code.02.i.i = phi i64 [ %sub.i.i.recomposed, %for.body.i.i ], [ %or10.i.i, %for.body.i ]
  %i.01.i.i = phi i64 [ %inc.i.i, %for.body.i.i ], [ 0, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i.i, metadata !757, metadata !DIExpression()) #11, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %code.02.i.i, metadata !756, metadata !DIExpression()) #11, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %i.01.i.i, metadata !754, metadata !DIExpression()) #11, !dbg !1799
  %div.i.i = udiv i64 %code.02.i.i, %quantum.03.i.i, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %div.i.i, metadata !755, metadata !DIExpression()) #11, !dbg !1799
  %mul.i.i = mul nuw i64 %div.i.i, %quantum.03.i.i, !dbg !1818
  %sub.i.i.recomposed = urem i64 %code.02.i.i, %quantum.03.i.i
  call void @llvm.dbg.value(metadata i64 %sub.i.i.recomposed, metadata !756, metadata !DIExpression()) #11, !dbg !1799
  %30 = trunc i64 %div.i.i to i8, !dbg !1819
  %conv14.i.i = add i8 %30, 33, !dbg !1819
  %arrayidx15.i.i = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i.i, !dbg !1820
  store i8 %conv14.i.i, ptr %arrayidx15.i.i, align 1, !dbg !1821, !tbaa !887
  %div16.i.i = udiv i64 %quantum.03.i.i, 85, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %div16.i.i, metadata !757, metadata !DIExpression()) #11, !dbg !1799
  %inc.i.i = add nuw nsw i64 %i.01.i.i, 1, !dbg !1823
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !754, metadata !DIExpression()) #11, !dbg !1799
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 4, !dbg !1824
  br i1 %exitcond.not.i.i, label %Ascii85Tuple.exit.i, label %for.body.i.i, !dbg !1825, !llvm.loop !1826

Ascii85Tuple.exit.i:                              ; preds = %for.body.i.i
  %rem.i.i = urem i64 %sub.i.i.recomposed, 85, !dbg !1828
  %31 = trunc i64 %rem.i.i to i8, !dbg !1829
  %conv18.i.i = add nuw nsw i8 %31, 33, !dbg !1829
  store i8 %conv18.i.i, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !1830, !tbaa !887
  %.pre.i = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !1831, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !1799, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !1787
  %cmp12.not70.i = icmp eq i8 %.pre.i, 0, !dbg !1832
  br i1 %cmp12.not70.i, label %for.end.i, label %for.body14.i.preheader, !dbg !1816

for.body14.i.preheader:                           ; preds = %Ascii85Tuple.exit.i, %Ascii85Tuple.exit.thread.i
  %.ph1060 = phi i8 [ %.pre.i, %Ascii85Tuple.exit.i ], [ 122, %Ascii85Tuple.exit.thread.i ]
  br label %for.body14.i, !dbg !1816

for.body14.i:                                     ; preds = %for.body14.i.preheader, %if.end27.i
  %32 = phi i8 [ %37, %if.end27.i ], [ %.ph1060, %for.body14.i.preheader ]
  %q.071.i = phi ptr [ %incdec.ptr.i, %if.end27.i ], [ @Ascii85Tuple.tuple, %for.body14.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071.i, metadata !967, metadata !DIExpression()) #11, !dbg !1787
  %33 = load ptr, ptr %ascii85.i, align 8, !dbg !1833, !tbaa !797
  %line_break.i = getelementptr inbounds %struct._Ascii85Info, ptr %33, i64 0, i32 1, !dbg !1834
  %34 = load i64, ptr %line_break.i, align 8, !dbg !1835, !tbaa !829
  %dec.i = add nsw i64 %34, -1, !dbg !1835
  store i64 %dec.i, ptr %line_break.i, align 8, !dbg !1835, !tbaa !829
  %cmp18.i = icmp sgt i64 %34, 0, !dbg !1836
  %cmp21.not.i = icmp eq i8 %32, 37
  %or.cond.i = select i1 %cmp18.i, i1 true, i1 %cmp21.not.i, !dbg !1837
  br i1 %or.cond.i, label %if.end27.i, label %if.then23.i, !dbg !1837

if.then23.i:                                      ; preds = %for.body14.i
  %call24.i = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !1838
  %35 = load ptr, ptr %ascii85.i, align 8, !dbg !1839, !tbaa !797
  %line_break26.i = getelementptr inbounds %struct._Ascii85Info, ptr %35, i64 0, i32 1, !dbg !1840
  store i64 72, ptr %line_break26.i, align 8, !dbg !1841, !tbaa !829
  %.pre78.i = load i8, ptr %q.071.i, align 1, !dbg !1842, !tbaa !887
  br label %if.end27.i, !dbg !1843

if.end27.i:                                       ; preds = %if.then23.i, %for.body14.i
  %36 = phi i8 [ %.pre78.i, %if.then23.i ], [ %32, %for.body14.i ], !dbg !1842
  %call28.i = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %36) #11, !dbg !1844
  %incdec.ptr.i = getelementptr inbounds i8, ptr %q.071.i, i64 1, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !967, metadata !DIExpression()) #11, !dbg !1787
  %37 = load i8, ptr %incdec.ptr.i, align 1, !dbg !1831, !tbaa !887
  %cmp12.not.i = icmp eq i8 %37, 0, !dbg !1832
  br i1 %cmp12.not.i, label %for.end.i, label %for.body14.i, !dbg !1816, !llvm.loop !1846

for.end.i:                                        ; preds = %if.end27.i, %Ascii85Tuple.exit.i
  %add.ptr.i = getelementptr inbounds i8, ptr %p.073.i, i64 8, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !968, metadata !DIExpression()) #11, !dbg !1787
  %sub.i = add nsw i64 %n.074.i, -4, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  %cmp10.i = icmp sgt i64 %n.074.i, 7, !dbg !1850
  br i1 %cmp10.i, label %for.body.i, label %for.end30.i, !dbg !1798, !llvm.loop !1851

for.end30.i:                                      ; preds = %for.end.i
  %.pre79.i = load ptr, ptr %ascii85.i, align 8, !dbg !1853, !tbaa !797
  store i64 %sub.i, ptr %.pre79.i, align 8, !dbg !1854, !tbaa !832
  %add.ptr33.i = getelementptr inbounds i8, ptr %p.073.i, i64 4, !dbg !1855
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %add.ptr33.i, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1787
  %38 = load i8, ptr %add.ptr33.i, align 1, !dbg !1856, !tbaa !887
  %arrayidx41.i979 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79.i, i64 0, i32 2, i64 0, !dbg !1857
  store i8 %38, ptr %arrayidx41.i979, align 1, !dbg !1858, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  br label %for.body37.for.body37_crit_edge.i, !dbg !1859

for.body37.for.body37_crit_edge.i:                ; preds = %for.end30.i, %for.body37.for.body37_crit_edge.i
  %inc43.i981 = phi i64 [ 1, %for.end30.i ], [ %inc43.i, %for.body37.for.body37_crit_edge.i ]
  %p.176.i980 = phi ptr [ %add.ptr33.i, %for.end30.i ], [ %incdec.ptr38.i, %for.body37.for.body37_crit_edge.i ]
  call void @llvm.dbg.value(metadata ptr %p.176.i980, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1787
  %incdec.ptr38.i = getelementptr inbounds i8, ptr %p.176.i980, i64 1, !dbg !1860
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i, metadata !968, metadata !DIExpression()) #11, !dbg !1787
  %.pre80.i = load ptr, ptr %ascii85.i, align 8, !dbg !1861, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc43.i981, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1787
  %39 = load i8, ptr %incdec.ptr38.i, align 1, !dbg !1856, !tbaa !887
  %arrayidx41.i = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80.i, i64 0, i32 2, i64 %inc43.i981, !dbg !1857
  store i8 %39, ptr %arrayidx41.i, align 1, !dbg !1858, !tbaa !887
  %inc43.i = add nuw nsw i64 %inc43.i981, 1, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %inc43.i, metadata !969, metadata !DIExpression()) #11, !dbg !1787
  %exitcond.not.i = icmp eq i64 %inc43.i, 4, !dbg !1863
  br i1 %exitcond.not.i, label %if.end159, label %for.body37.for.body37_crit_edge.i, !dbg !1859, !llvm.loop !1864

if.end159:                                        ; preds = %for.body37.for.body37_crit_edge.i, %if.else157, %if.then155, %while.body
  %byte.7 = phi i8 [ %spec.select, %while.body ], [ 0, %if.then155 ], [ 0, %if.else157 ], [ 0, %for.body37.for.body37_crit_edge.i ], !dbg !1866
  %bit.6 = phi i8 [ %19, %while.body ], [ -128, %if.then155 ], [ -128, %if.else157 ], [ -128, %for.body37.for.body37_crit_edge.i ], !dbg !1866
  call void @llvm.dbg.value(metadata i8 %bit.6, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.7, metadata !1631, metadata !DIExpression()), !dbg !1634
  %shr160 = lshr i64 %mask.0982, 1, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %shr160, metadata !1626, metadata !DIExpression()), !dbg !1634
  %cmp128.not = icmp ult i64 %mask.0982, 2, !dbg !1774
  br i1 %cmp128.not, label %if.end161.loopexit, label %while.body, !dbg !1774, !llvm.loop !1868

if.end161.loopexit:                               ; preds = %if.end159
  %conv126 = sub i32 %runlength.0.lcssa, %16, !dbg !1773
  br label %if.end161, !dbg !1869

if.end161:                                        ; preds = %if.end161.loopexit, %for.end110
  %runlength.1 = phi i32 [ %runlength.0.lcssa, %for.end110 ], [ %conv126, %if.end161.loopexit ], !dbg !1871
  %byte.8 = phi i8 [ %byte.41015, %for.end110 ], [ %byte.7, %if.end161.loopexit ], !dbg !1872
  %bit.7 = phi i8 [ %bit.41016, %for.end110 ], [ %bit.6, %if.end161.loopexit ], !dbg !1873
  call void @llvm.dbg.value(metadata i8 %bit.7, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.8, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.1, metadata !1619, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.1, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #11, !dbg !1869
  call void @llvm.dbg.value(metadata i64 63, metadata !1765, metadata !DIExpression()) #11, !dbg !1869
  %40 = call i32 @llvm.umin.i32(i32 %runlength.1, i32 63), !dbg !1869
  %41 = zext i32 %40 to i64, !dbg !1869
  call void @llvm.dbg.value(metadata !DIArgList(ptr @TWTable, i64 %41), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1634
  %length165 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %41, i32 2, !dbg !1874
  %42 = load i64, ptr %length165, align 16, !dbg !1874, !tbaa !1131
  %sub166 = add i64 %42, -1, !dbg !1874
  %shl167 = shl nuw i64 1, %sub166, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %shl167, metadata !1626, metadata !DIExpression()), !dbg !1634
  %code172 = getelementptr inbounds %struct.HuffmanTable, ptr @TWTable, i64 %41, i32 1
  %43 = load i64, ptr %code172, align 8, !tbaa !1134
  br label %while.body171, !dbg !1874

while.body171:                                    ; preds = %if.end161, %if.end202
  %bit.8990 = phi i8 [ %bit.7, %if.end161 ], [ %bit.9, %if.end202 ]
  %byte.9989 = phi i8 [ %byte.8, %if.end161 ], [ %byte.11, %if.end202 ]
  %mask.1988 = phi i64 [ %shl167, %if.end161 ], [ %shr203, %if.end202 ]
  call void @llvm.dbg.value(metadata i8 %bit.8990, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.9989, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %mask.1988, metadata !1626, metadata !DIExpression()), !dbg !1634
  %and173 = and i64 %43, %mask.1988, !dbg !1876
  %cmp174.not = icmp eq i64 %and173, 0, !dbg !1876
  %or182666 = select i1 %cmp174.not, i8 0, i8 %bit.8990, !dbg !1880
  %spec.select670 = or i8 %or182666, %byte.9989, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %spec.select670, metadata !1631, metadata !DIExpression()), !dbg !1634
  %44 = lshr i8 %bit.8990, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i8 %44, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp190 = icmp ult i8 %bit.8990, 2, !dbg !1881
  br i1 %cmp190, label %if.then192, label %if.end202, !dbg !1880

if.then192:                                       ; preds = %while.body171
  %call195 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !1883
  %cmp196 = icmp eq i32 %call195, 0, !dbg !1883
  br i1 %cmp196, label %if.then198, label %if.else200, !dbg !1886

if.then198:                                       ; preds = %if.then192
  %call199 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %spec.select670) #11, !dbg !1883
  br label %if.end202, !dbg !1883

if.else200:                                       ; preds = %if.then192
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()) #11, !dbg !1887
  call void @llvm.dbg.value(metadata i8 %spec.select670, metadata !966, metadata !DIExpression()) #11, !dbg !1887
  %45 = load ptr, ptr %ascii85.i, align 8, !dbg !1889, !tbaa !797
  %46 = load i64, ptr %45, align 8, !dbg !1890, !tbaa !832
  %arrayidx.i674 = getelementptr inbounds %struct._Ascii85Info, ptr %45, i64 0, i32 2, i64 %46, !dbg !1891
  store i8 %spec.select670, ptr %arrayidx.i674, align 1, !dbg !1892, !tbaa !887
  %47 = load ptr, ptr %ascii85.i, align 8, !dbg !1893, !tbaa !797
  %48 = load i64, ptr %47, align 8, !dbg !1894, !tbaa !832
  %inc.i675 = add nsw i64 %48, 1, !dbg !1894
  store i64 %inc.i675, ptr %47, align 8, !dbg !1894, !tbaa !832
  %cmp.i676 = icmp slt i64 %48, 3, !dbg !1895
  br i1 %cmp.i676, label %if.end202, label %for.body.preheader.i678, !dbg !1896

for.body.preheader.i678:                          ; preds = %if.else200
  call void @llvm.dbg.value(metadata ptr %47, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %inc.i675, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  %buffer7.i677 = getelementptr inbounds %struct._Ascii85Info, ptr %47, i64 0, i32 2, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %buffer7.i677, metadata !968, metadata !DIExpression()) #11, !dbg !1887
  br label %for.body.i693, !dbg !1898

for.body.i693:                                    ; preds = %for.end.i731, %for.body.preheader.i678
  %n.074.i679 = phi i64 [ %sub.i729, %for.end.i731 ], [ %inc.i675, %for.body.preheader.i678 ]
  %p.073.i680 = phi ptr [ %add.ptr.i728, %for.end.i731 ], [ %buffer7.i677, %for.body.preheader.i678 ]
  call void @llvm.dbg.value(metadata i64 %n.074.i679, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %p.073.i680, metadata !968, metadata !DIExpression()) #11, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %p.073.i680, metadata !753, metadata !DIExpression()) #11, !dbg !1899
  %49 = load i8, ptr %p.073.i680, align 1, !dbg !1901, !tbaa !887
  %conv.i.i681 = zext i8 %49 to i64, !dbg !1902
  %arrayidx1.i.i682 = getelementptr inbounds i8, ptr %p.073.i680, i64 1, !dbg !1903
  %50 = load i8, ptr %arrayidx1.i.i682, align 1, !dbg !1903, !tbaa !887
  %conv2.i.i683 = zext i8 %50 to i64, !dbg !1904
  %51 = shl nuw nsw i64 %conv.i.i681, 24, !dbg !1905
  %52 = shl nuw nsw i64 %conv2.i.i683, 16, !dbg !1905
  %shl3.i.i684 = or i64 %52, %51, !dbg !1905
  %arrayidx4.i.i685 = getelementptr inbounds i8, ptr %p.073.i680, i64 2, !dbg !1906
  %53 = load i8, ptr %arrayidx4.i.i685, align 1, !dbg !1906, !tbaa !887
  %conv5.i.i686 = zext i8 %53 to i64, !dbg !1907
  %shl6.i.i687 = shl nuw nsw i64 %conv5.i.i686, 8, !dbg !1908
  %or7.i.i688 = or i64 %shl3.i.i684, %shl6.i.i687, !dbg !1909
  %arrayidx8.i.i689 = getelementptr inbounds i8, ptr %p.073.i680, i64 3, !dbg !1910
  %54 = load i8, ptr %arrayidx8.i.i689, align 1, !dbg !1910, !tbaa !887
  %conv9.i.i690 = zext i8 %54 to i64, !dbg !1911
  %or10.i.i691 = or i64 %or7.i.i688, %conv9.i.i690, !dbg !1912
  call void @llvm.dbg.value(metadata i64 %or10.i.i691, metadata !756, metadata !DIExpression()) #11, !dbg !1899
  %cmp.i.i692 = icmp eq i64 %or10.i.i691, 0, !dbg !1913
  br i1 %cmp.i.i692, label %Ascii85Tuple.exit.thread.i694, label %for.body.i.i706, !dbg !1914

Ascii85Tuple.exit.thread.i694:                    ; preds = %for.body.i693
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !1915, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !1899, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !1887
  br label %for.body14.i719.preheader, !dbg !1916

for.body.i.i706:                                  ; preds = %for.body.i693, %for.body.i.i706
  %quantum.03.i.i695 = phi i64 [ %div16.i.i703, %for.body.i.i706 ], [ 52200625, %for.body.i693 ]
  %code.02.i.i696 = phi i64 [ %sub.i.i700.recomposed, %for.body.i.i706 ], [ %or10.i.i691, %for.body.i693 ]
  %i.01.i.i697 = phi i64 [ %inc.i.i704, %for.body.i.i706 ], [ 0, %for.body.i693 ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i.i695, metadata !757, metadata !DIExpression()) #11, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %code.02.i.i696, metadata !756, metadata !DIExpression()) #11, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %i.01.i.i697, metadata !754, metadata !DIExpression()) #11, !dbg !1899
  %div.i.i698 = udiv i64 %code.02.i.i696, %quantum.03.i.i695, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %div.i.i698, metadata !755, metadata !DIExpression()) #11, !dbg !1899
  %mul.i.i699 = mul nuw i64 %div.i.i698, %quantum.03.i.i695, !dbg !1918
  %sub.i.i700.recomposed = urem i64 %code.02.i.i696, %quantum.03.i.i695
  call void @llvm.dbg.value(metadata i64 %sub.i.i700.recomposed, metadata !756, metadata !DIExpression()) #11, !dbg !1899
  %55 = trunc i64 %div.i.i698 to i8, !dbg !1919
  %conv14.i.i701 = add i8 %55, 33, !dbg !1919
  %arrayidx15.i.i702 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i.i697, !dbg !1920
  store i8 %conv14.i.i701, ptr %arrayidx15.i.i702, align 1, !dbg !1921, !tbaa !887
  %div16.i.i703 = udiv i64 %quantum.03.i.i695, 85, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %div16.i.i703, metadata !757, metadata !DIExpression()) #11, !dbg !1899
  %inc.i.i704 = add nuw nsw i64 %i.01.i.i697, 1, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %inc.i.i704, metadata !754, metadata !DIExpression()) #11, !dbg !1899
  %exitcond.not.i.i705 = icmp eq i64 %inc.i.i704, 4, !dbg !1924
  br i1 %exitcond.not.i.i705, label %Ascii85Tuple.exit.i711, label %for.body.i.i706, !dbg !1925, !llvm.loop !1926

Ascii85Tuple.exit.i711:                           ; preds = %for.body.i.i706
  %rem.i.i707 = urem i64 %sub.i.i700.recomposed, 85, !dbg !1928
  %56 = trunc i64 %rem.i.i707 to i8, !dbg !1929
  %conv18.i.i708 = add nuw nsw i8 %56, 33, !dbg !1929
  store i8 %conv18.i.i708, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !1930, !tbaa !887
  %.pre.i709 = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !1931, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !1899, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !1887
  %cmp12.not70.i710 = icmp eq i8 %.pre.i709, 0, !dbg !1932
  br i1 %cmp12.not70.i710, label %for.end.i731, label %for.body14.i719.preheader, !dbg !1916

for.body14.i719.preheader:                        ; preds = %Ascii85Tuple.exit.i711, %Ascii85Tuple.exit.thread.i694
  %.ph1059 = phi i8 [ %.pre.i709, %Ascii85Tuple.exit.i711 ], [ 122, %Ascii85Tuple.exit.thread.i694 ]
  br label %for.body14.i719, !dbg !1916

for.body14.i719:                                  ; preds = %for.body14.i719.preheader, %if.end27.i727
  %57 = phi i8 [ %62, %if.end27.i727 ], [ %.ph1059, %for.body14.i719.preheader ]
  %q.071.i713 = phi ptr [ %incdec.ptr.i725, %if.end27.i727 ], [ @Ascii85Tuple.tuple, %for.body14.i719.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071.i713, metadata !967, metadata !DIExpression()) #11, !dbg !1887
  %58 = load ptr, ptr %ascii85.i, align 8, !dbg !1933, !tbaa !797
  %line_break.i714 = getelementptr inbounds %struct._Ascii85Info, ptr %58, i64 0, i32 1, !dbg !1934
  %59 = load i64, ptr %line_break.i714, align 8, !dbg !1935, !tbaa !829
  %dec.i715 = add nsw i64 %59, -1, !dbg !1935
  store i64 %dec.i715, ptr %line_break.i714, align 8, !dbg !1935, !tbaa !829
  %cmp18.i716 = icmp sgt i64 %59, 0, !dbg !1936
  %cmp21.not.i717 = icmp eq i8 %57, 37
  %or.cond.i718 = select i1 %cmp18.i716, i1 true, i1 %cmp21.not.i717, !dbg !1937
  br i1 %or.cond.i718, label %if.end27.i727, label %if.then23.i723, !dbg !1937

if.then23.i723:                                   ; preds = %for.body14.i719
  %call24.i720 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !1938
  %60 = load ptr, ptr %ascii85.i, align 8, !dbg !1939, !tbaa !797
  %line_break26.i721 = getelementptr inbounds %struct._Ascii85Info, ptr %60, i64 0, i32 1, !dbg !1940
  store i64 72, ptr %line_break26.i721, align 8, !dbg !1941, !tbaa !829
  %.pre78.i722 = load i8, ptr %q.071.i713, align 1, !dbg !1942, !tbaa !887
  br label %if.end27.i727, !dbg !1943

if.end27.i727:                                    ; preds = %if.then23.i723, %for.body14.i719
  %61 = phi i8 [ %.pre78.i722, %if.then23.i723 ], [ %57, %for.body14.i719 ], !dbg !1942
  %call28.i724 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %61) #11, !dbg !1944
  %incdec.ptr.i725 = getelementptr inbounds i8, ptr %q.071.i713, i64 1, !dbg !1945
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i725, metadata !967, metadata !DIExpression()) #11, !dbg !1887
  %62 = load i8, ptr %incdec.ptr.i725, align 1, !dbg !1931, !tbaa !887
  %cmp12.not.i726 = icmp eq i8 %62, 0, !dbg !1932
  br i1 %cmp12.not.i726, label %for.end.i731, label %for.body14.i719, !dbg !1916, !llvm.loop !1946

for.end.i731:                                     ; preds = %if.end27.i727, %Ascii85Tuple.exit.i711
  %add.ptr.i728 = getelementptr inbounds i8, ptr %p.073.i680, i64 8, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %add.ptr.i728, metadata !968, metadata !DIExpression()) #11, !dbg !1887
  %sub.i729 = add nsw i64 %n.074.i679, -4, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %sub.i729, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  %cmp10.i730 = icmp sgt i64 %n.074.i679, 7, !dbg !1950
  br i1 %cmp10.i730, label %for.body.i693, label %for.end30.i734, !dbg !1898, !llvm.loop !1951

for.end30.i734:                                   ; preds = %for.end.i731
  %.pre79.i732 = load ptr, ptr %ascii85.i, align 8, !dbg !1953, !tbaa !797
  store i64 %sub.i729, ptr %.pre79.i732, align 8, !dbg !1954, !tbaa !832
  %add.ptr33.i733 = getelementptr inbounds i8, ptr %p.073.i680, i64 4, !dbg !1955
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %add.ptr33.i733, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1887
  %63 = load i8, ptr %add.ptr33.i733, align 1, !dbg !1956, !tbaa !887
  %arrayidx41.i737985 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79.i732, i64 0, i32 2, i64 0, !dbg !1957
  store i8 %63, ptr %arrayidx41.i737985, align 1, !dbg !1958, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  br label %for.body37.for.body37_crit_edge.i743, !dbg !1959

for.body37.for.body37_crit_edge.i743:             ; preds = %for.end30.i734, %for.body37.for.body37_crit_edge.i743
  %inc43.i738987 = phi i64 [ 1, %for.end30.i734 ], [ %inc43.i738, %for.body37.for.body37_crit_edge.i743 ]
  %p.176.i736986 = phi ptr [ %add.ptr33.i733, %for.end30.i734 ], [ %incdec.ptr38.i741, %for.body37.for.body37_crit_edge.i743 ]
  call void @llvm.dbg.value(metadata ptr %p.176.i736986, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1887
  %incdec.ptr38.i741 = getelementptr inbounds i8, ptr %p.176.i736986, i64 1, !dbg !1960
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i741, metadata !968, metadata !DIExpression()) #11, !dbg !1887
  %.pre80.i742 = load ptr, ptr %ascii85.i, align 8, !dbg !1961, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc43.i738987, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i741, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !1887
  %64 = load i8, ptr %incdec.ptr38.i741, align 1, !dbg !1956, !tbaa !887
  %arrayidx41.i737 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80.i742, i64 0, i32 2, i64 %inc43.i738987, !dbg !1957
  store i8 %64, ptr %arrayidx41.i737, align 1, !dbg !1958, !tbaa !887
  %inc43.i738 = add nuw nsw i64 %inc43.i738987, 1, !dbg !1962
  call void @llvm.dbg.value(metadata i64 %inc43.i738, metadata !969, metadata !DIExpression()) #11, !dbg !1887
  %exitcond.not.i739 = icmp eq i64 %inc43.i738, 4, !dbg !1963
  br i1 %exitcond.not.i739, label %if.end202, label %for.body37.for.body37_crit_edge.i743, !dbg !1959, !llvm.loop !1964

if.end202:                                        ; preds = %for.body37.for.body37_crit_edge.i743, %if.else200, %if.then198, %while.body171
  %byte.11 = phi i8 [ %spec.select670, %while.body171 ], [ 0, %if.then198 ], [ 0, %if.else200 ], [ 0, %for.body37.for.body37_crit_edge.i743 ], !dbg !1966
  %bit.9 = phi i8 [ %44, %while.body171 ], [ -128, %if.then198 ], [ -128, %if.else200 ], [ -128, %for.body37.for.body37_crit_edge.i743 ], !dbg !1966
  call void @llvm.dbg.value(metadata i8 %bit.9, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.11, metadata !1631, metadata !DIExpression()), !dbg !1634
  %shr203 = lshr i64 %mask.1988, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %shr203, metadata !1626, metadata !DIExpression()), !dbg !1634
  %cmp169.not = icmp ult i64 %mask.1988, 2, !dbg !1874
  br i1 %cmp169.not, label %while.end204, label %while.body171, !dbg !1874, !llvm.loop !1968

while.end204:                                     ; preds = %if.end202
  %cmp205.not = icmp eq i64 %n.1.lcssa, 0, !dbg !1969
  br i1 %cmp205.not, label %for.body331.preheader, label %for.cond208.preheader, !dbg !1971

for.cond208.preheader:                            ; preds = %while.end204
  call void @llvm.dbg.value(metadata i64 %n.1.lcssa, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %q.3.lcssa, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 0, metadata !1619, metadata !DIExpression()), !dbg !1634
  %65 = load i8, ptr %q.3.lcssa, align 1, !dbg !1972, !tbaa !887
  %cmp210991 = icmp ne i8 %65, 0, !dbg !1976
  %cmp213992 = icmp sgt i64 %n.1.lcssa, 0
  %or.cond993 = select i1 %cmp210991, i1 %cmp213992, i1 false, !dbg !1977
  br i1 %or.cond993, label %for.body216, label %if.end282, !dbg !1977

for.body216:                                      ; preds = %for.cond208.preheader, %for.body216
  %n.2996 = phi i64 [ %dec220, %for.body216 ], [ %n.1.lcssa, %for.cond208.preheader ]
  %q.4995 = phi ptr [ %incdec.ptr217, %for.body216 ], [ %q.3.lcssa, %for.cond208.preheader ]
  %runlength.2994 = phi i32 [ %inc218, %for.body216 ], [ 0, %for.cond208.preheader ]
  call void @llvm.dbg.value(metadata i64 %n.2996, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %q.4995, metadata !1625, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.2994, metadata !1619, metadata !DIExpression()), !dbg !1634
  %incdec.ptr217 = getelementptr inbounds i8, ptr %q.4995, i64 1, !dbg !1978
  call void @llvm.dbg.value(metadata ptr %incdec.ptr217, metadata !1625, metadata !DIExpression()), !dbg !1634
  %inc218 = add nuw nsw i32 %runlength.2994, 1, !dbg !1980
  call void @llvm.dbg.value(metadata i32 %inc218, metadata !1619, metadata !DIExpression()), !dbg !1634
  %dec220 = add nsw i64 %n.2996, -1, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %dec220, metadata !1629, metadata !DIExpression()), !dbg !1634
  %66 = load i8, ptr %incdec.ptr217, align 1, !dbg !1972, !tbaa !887
  %cmp210 = icmp ne i8 %66, 0, !dbg !1976
  %cmp213 = icmp ugt i64 %n.2996, 1
  %or.cond = select i1 %cmp210, i1 %cmp213, i1 false, !dbg !1977
  br i1 %or.cond, label %for.body216, label %for.end221, !dbg !1977, !llvm.loop !1982

for.end221:                                       ; preds = %for.body216
  %cmp222 = icmp ugt i32 %runlength.2994, 62, !dbg !1985
  br i1 %cmp222, label %if.then224, label %if.end282, !dbg !1987

if.then224:                                       ; preds = %for.end221
  %div225663 = lshr i32 %inc218, 6, !dbg !1988
  %sub226 = add nsw i32 %div225663, -1, !dbg !1990
  %67 = zext i32 %sub226 to i64
  %add.ptr228 = getelementptr inbounds %struct.HuffmanTable, ptr @MBTable, i64 %67, !dbg !1991
  call void @llvm.dbg.value(metadata ptr %add.ptr228, metadata !1616, metadata !DIExpression()), !dbg !1634
  %cmp229 = icmp ugt i32 %runlength.2994, 1790, !dbg !1992
  br i1 %cmp229, label %if.then231, label %if.end237, !dbg !1994

if.then231:                                       ; preds = %if.then224
  call void @llvm.dbg.value(metadata i32 %inc218, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !1995
  call void @llvm.dbg.value(metadata i64 2560, metadata !1765, metadata !DIExpression()) #11, !dbg !1995
  %68 = call i32 @llvm.umin.i32(i32 %inc218, i32 2560), !dbg !1995
  %69 = zext i32 %68 to i64, !dbg !1995
  %sub234 = add nsw i64 %69, -1792, !dbg !1997
  %div235665 = lshr i64 %sub234, 6, !dbg !1998
  %add.ptr236 = getelementptr inbounds %struct.HuffmanTable, ptr @EXTable, i64 %div235665, !dbg !1999
  call void @llvm.dbg.value(metadata ptr %add.ptr236, metadata !1616, metadata !DIExpression()), !dbg !1634
  br label %if.end237, !dbg !2000

if.end237:                                        ; preds = %if.then231, %if.then224
  %entry1.1 = phi ptr [ %add.ptr236, %if.then231 ], [ %add.ptr228, %if.then224 ], !dbg !2001
  call void @llvm.dbg.value(metadata ptr %entry1.1, metadata !1616, metadata !DIExpression()), !dbg !1634
  %count238 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1, i64 0, i32 3, !dbg !2002
  %70 = load i64, ptr %count238, align 8, !dbg !2002, !tbaa !1354
  %71 = trunc i64 %70 to i32, !dbg !2003
  call void @llvm.dbg.value(metadata i32 %conv241, metadata !1619, metadata !DIExpression()), !dbg !1634
  %length242 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1, i64 0, i32 2, !dbg !2004
  %72 = load i64, ptr %length242, align 8, !dbg !2004, !tbaa !1131
  %sub243 = add i64 %72, -1, !dbg !2004
  %shl244 = shl nuw i64 1, %sub243, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %shl244, metadata !1626, metadata !DIExpression()), !dbg !1634
  %code249 = getelementptr inbounds %struct.HuffmanTable, ptr %entry1.1, i64 0, i32 1
  %73 = load i64, ptr %code249, align 8, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %bit.9, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.11, metadata !1631, metadata !DIExpression()), !dbg !1634
  br label %while.body248, !dbg !2004

while.body248:                                    ; preds = %if.end237, %if.end279
  %bit.101005 = phi i8 [ %bit.9, %if.end237 ], [ %bit.11, %if.end279 ]
  %byte.121004 = phi i8 [ %byte.11, %if.end237 ], [ %byte.14, %if.end279 ]
  %mask.21003 = phi i64 [ %shl244, %if.end237 ], [ %shr280, %if.end279 ]
  call void @llvm.dbg.value(metadata i8 %bit.101005, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.121004, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %mask.21003, metadata !1626, metadata !DIExpression()), !dbg !1634
  %and250 = and i64 %73, %mask.21003, !dbg !2006
  %cmp251.not = icmp eq i64 %and250, 0, !dbg !2006
  %or259664 = select i1 %cmp251.not, i8 0, i8 %bit.101005, !dbg !2010
  %spec.select671 = or i8 %or259664, %byte.121004, !dbg !2010
  call void @llvm.dbg.value(metadata i8 %spec.select671, metadata !1631, metadata !DIExpression()), !dbg !1634
  %74 = lshr i8 %bit.101005, 1, !dbg !2010
  call void @llvm.dbg.value(metadata i8 %74, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp267 = icmp ult i8 %bit.101005, 2, !dbg !2011
  br i1 %cmp267, label %if.then269, label %if.end279, !dbg !2010

if.then269:                                       ; preds = %while.body248
  %call272 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2013
  %cmp273 = icmp eq i32 %call272, 0, !dbg !2013
  br i1 %cmp273, label %if.then275, label %if.else277, !dbg !2016

if.then275:                                       ; preds = %if.then269
  %call276 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %spec.select671) #11, !dbg !2013
  br label %if.end279, !dbg !2013

if.else277:                                       ; preds = %if.then269
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata i8 %spec.select671, metadata !966, metadata !DIExpression()) #11, !dbg !2017
  %75 = load ptr, ptr %ascii85.i, align 8, !dbg !2019, !tbaa !797
  %76 = load i64, ptr %75, align 8, !dbg !2020, !tbaa !832
  %arrayidx.i746 = getelementptr inbounds %struct._Ascii85Info, ptr %75, i64 0, i32 2, i64 %76, !dbg !2021
  store i8 %spec.select671, ptr %arrayidx.i746, align 1, !dbg !2022, !tbaa !887
  %77 = load ptr, ptr %ascii85.i, align 8, !dbg !2023, !tbaa !797
  %78 = load i64, ptr %77, align 8, !dbg !2024, !tbaa !832
  %inc.i747 = add nsw i64 %78, 1, !dbg !2024
  store i64 %inc.i747, ptr %77, align 8, !dbg !2024, !tbaa !832
  %cmp.i748 = icmp slt i64 %78, 3, !dbg !2025
  br i1 %cmp.i748, label %if.end279, label %for.body.preheader.i750, !dbg !2026

for.body.preheader.i750:                          ; preds = %if.else277
  call void @llvm.dbg.value(metadata ptr %77, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %inc.i747, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  %buffer7.i749 = getelementptr inbounds %struct._Ascii85Info, ptr %77, i64 0, i32 2, !dbg !2027
  call void @llvm.dbg.value(metadata ptr %buffer7.i749, metadata !968, metadata !DIExpression()) #11, !dbg !2017
  br label %for.body.i765, !dbg !2028

for.body.i765:                                    ; preds = %for.end.i803, %for.body.preheader.i750
  %n.074.i751 = phi i64 [ %sub.i801, %for.end.i803 ], [ %inc.i747, %for.body.preheader.i750 ]
  %p.073.i752 = phi ptr [ %add.ptr.i800, %for.end.i803 ], [ %buffer7.i749, %for.body.preheader.i750 ]
  call void @llvm.dbg.value(metadata i64 %n.074.i751, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %p.073.i752, metadata !968, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %p.073.i752, metadata !753, metadata !DIExpression()) #11, !dbg !2029
  %79 = load i8, ptr %p.073.i752, align 1, !dbg !2031, !tbaa !887
  %conv.i.i753 = zext i8 %79 to i64, !dbg !2032
  %arrayidx1.i.i754 = getelementptr inbounds i8, ptr %p.073.i752, i64 1, !dbg !2033
  %80 = load i8, ptr %arrayidx1.i.i754, align 1, !dbg !2033, !tbaa !887
  %conv2.i.i755 = zext i8 %80 to i64, !dbg !2034
  %81 = shl nuw nsw i64 %conv.i.i753, 24, !dbg !2035
  %82 = shl nuw nsw i64 %conv2.i.i755, 16, !dbg !2035
  %shl3.i.i756 = or i64 %82, %81, !dbg !2035
  %arrayidx4.i.i757 = getelementptr inbounds i8, ptr %p.073.i752, i64 2, !dbg !2036
  %83 = load i8, ptr %arrayidx4.i.i757, align 1, !dbg !2036, !tbaa !887
  %conv5.i.i758 = zext i8 %83 to i64, !dbg !2037
  %shl6.i.i759 = shl nuw nsw i64 %conv5.i.i758, 8, !dbg !2038
  %or7.i.i760 = or i64 %shl3.i.i756, %shl6.i.i759, !dbg !2039
  %arrayidx8.i.i761 = getelementptr inbounds i8, ptr %p.073.i752, i64 3, !dbg !2040
  %84 = load i8, ptr %arrayidx8.i.i761, align 1, !dbg !2040, !tbaa !887
  %conv9.i.i762 = zext i8 %84 to i64, !dbg !2041
  %or10.i.i763 = or i64 %or7.i.i760, %conv9.i.i762, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %or10.i.i763, metadata !756, metadata !DIExpression()) #11, !dbg !2029
  %cmp.i.i764 = icmp eq i64 %or10.i.i763, 0, !dbg !2043
  br i1 %cmp.i.i764, label %Ascii85Tuple.exit.thread.i766, label %for.body.i.i778, !dbg !2044

Ascii85Tuple.exit.thread.i766:                    ; preds = %for.body.i765
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !2045, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !2029, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2017
  br label %for.body14.i791.preheader, !dbg !2046

for.body.i.i778:                                  ; preds = %for.body.i765, %for.body.i.i778
  %quantum.03.i.i767 = phi i64 [ %div16.i.i775, %for.body.i.i778 ], [ 52200625, %for.body.i765 ]
  %code.02.i.i768 = phi i64 [ %sub.i.i772.recomposed, %for.body.i.i778 ], [ %or10.i.i763, %for.body.i765 ]
  %i.01.i.i769 = phi i64 [ %inc.i.i776, %for.body.i.i778 ], [ 0, %for.body.i765 ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i.i767, metadata !757, metadata !DIExpression()) #11, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %code.02.i.i768, metadata !756, metadata !DIExpression()) #11, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %i.01.i.i769, metadata !754, metadata !DIExpression()) #11, !dbg !2029
  %div.i.i770 = udiv i64 %code.02.i.i768, %quantum.03.i.i767, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %div.i.i770, metadata !755, metadata !DIExpression()) #11, !dbg !2029
  %mul.i.i771 = mul nuw i64 %div.i.i770, %quantum.03.i.i767, !dbg !2048
  %sub.i.i772.recomposed = urem i64 %code.02.i.i768, %quantum.03.i.i767
  call void @llvm.dbg.value(metadata i64 %sub.i.i772.recomposed, metadata !756, metadata !DIExpression()) #11, !dbg !2029
  %85 = trunc i64 %div.i.i770 to i8, !dbg !2049
  %conv14.i.i773 = add i8 %85, 33, !dbg !2049
  %arrayidx15.i.i774 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i.i769, !dbg !2050
  store i8 %conv14.i.i773, ptr %arrayidx15.i.i774, align 1, !dbg !2051, !tbaa !887
  %div16.i.i775 = udiv i64 %quantum.03.i.i767, 85, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %div16.i.i775, metadata !757, metadata !DIExpression()) #11, !dbg !2029
  %inc.i.i776 = add nuw nsw i64 %i.01.i.i769, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %inc.i.i776, metadata !754, metadata !DIExpression()) #11, !dbg !2029
  %exitcond.not.i.i777 = icmp eq i64 %inc.i.i776, 4, !dbg !2054
  br i1 %exitcond.not.i.i777, label %Ascii85Tuple.exit.i783, label %for.body.i.i778, !dbg !2055, !llvm.loop !2056

Ascii85Tuple.exit.i783:                           ; preds = %for.body.i.i778
  %rem.i.i779 = urem i64 %sub.i.i772.recomposed, 85, !dbg !2058
  %86 = trunc i64 %rem.i.i779 to i8, !dbg !2059
  %conv18.i.i780 = add nuw nsw i8 %86, 33, !dbg !2059
  store i8 %conv18.i.i780, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !2060, !tbaa !887
  %.pre.i781 = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !2061, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !2029, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2017
  %cmp12.not70.i782 = icmp eq i8 %.pre.i781, 0, !dbg !2062
  br i1 %cmp12.not70.i782, label %for.end.i803, label %for.body14.i791.preheader, !dbg !2046

for.body14.i791.preheader:                        ; preds = %Ascii85Tuple.exit.i783, %Ascii85Tuple.exit.thread.i766
  %.ph1058 = phi i8 [ %.pre.i781, %Ascii85Tuple.exit.i783 ], [ 122, %Ascii85Tuple.exit.thread.i766 ]
  br label %for.body14.i791, !dbg !2046

for.body14.i791:                                  ; preds = %for.body14.i791.preheader, %if.end27.i799
  %87 = phi i8 [ %92, %if.end27.i799 ], [ %.ph1058, %for.body14.i791.preheader ]
  %q.071.i785 = phi ptr [ %incdec.ptr.i797, %if.end27.i799 ], [ @Ascii85Tuple.tuple, %for.body14.i791.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071.i785, metadata !967, metadata !DIExpression()) #11, !dbg !2017
  %88 = load ptr, ptr %ascii85.i, align 8, !dbg !2063, !tbaa !797
  %line_break.i786 = getelementptr inbounds %struct._Ascii85Info, ptr %88, i64 0, i32 1, !dbg !2064
  %89 = load i64, ptr %line_break.i786, align 8, !dbg !2065, !tbaa !829
  %dec.i787 = add nsw i64 %89, -1, !dbg !2065
  store i64 %dec.i787, ptr %line_break.i786, align 8, !dbg !2065, !tbaa !829
  %cmp18.i788 = icmp sgt i64 %89, 0, !dbg !2066
  %cmp21.not.i789 = icmp eq i8 %87, 37
  %or.cond.i790 = select i1 %cmp18.i788, i1 true, i1 %cmp21.not.i789, !dbg !2067
  br i1 %or.cond.i790, label %if.end27.i799, label %if.then23.i795, !dbg !2067

if.then23.i795:                                   ; preds = %for.body14.i791
  %call24.i792 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !2068
  %90 = load ptr, ptr %ascii85.i, align 8, !dbg !2069, !tbaa !797
  %line_break26.i793 = getelementptr inbounds %struct._Ascii85Info, ptr %90, i64 0, i32 1, !dbg !2070
  store i64 72, ptr %line_break26.i793, align 8, !dbg !2071, !tbaa !829
  %.pre78.i794 = load i8, ptr %q.071.i785, align 1, !dbg !2072, !tbaa !887
  br label %if.end27.i799, !dbg !2073

if.end27.i799:                                    ; preds = %if.then23.i795, %for.body14.i791
  %91 = phi i8 [ %.pre78.i794, %if.then23.i795 ], [ %87, %for.body14.i791 ], !dbg !2072
  %call28.i796 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %91) #11, !dbg !2074
  %incdec.ptr.i797 = getelementptr inbounds i8, ptr %q.071.i785, i64 1, !dbg !2075
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i797, metadata !967, metadata !DIExpression()) #11, !dbg !2017
  %92 = load i8, ptr %incdec.ptr.i797, align 1, !dbg !2061, !tbaa !887
  %cmp12.not.i798 = icmp eq i8 %92, 0, !dbg !2062
  br i1 %cmp12.not.i798, label %for.end.i803, label %for.body14.i791, !dbg !2046, !llvm.loop !2076

for.end.i803:                                     ; preds = %if.end27.i799, %Ascii85Tuple.exit.i783
  %add.ptr.i800 = getelementptr inbounds i8, ptr %p.073.i752, i64 8, !dbg !2078
  call void @llvm.dbg.value(metadata ptr %add.ptr.i800, metadata !968, metadata !DIExpression()) #11, !dbg !2017
  %sub.i801 = add nsw i64 %n.074.i751, -4, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %sub.i801, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  %cmp10.i802 = icmp sgt i64 %n.074.i751, 7, !dbg !2080
  br i1 %cmp10.i802, label %for.body.i765, label %for.end30.i806, !dbg !2028, !llvm.loop !2081

for.end30.i806:                                   ; preds = %for.end.i803
  %.pre79.i804 = load ptr, ptr %ascii85.i, align 8, !dbg !2083, !tbaa !797
  store i64 %sub.i801, ptr %.pre79.i804, align 8, !dbg !2084, !tbaa !832
  %add.ptr33.i805 = getelementptr inbounds i8, ptr %p.073.i752, i64 4, !dbg !2085
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %add.ptr33.i805, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2017
  %93 = load i8, ptr %add.ptr33.i805, align 1, !dbg !2086, !tbaa !887
  %arrayidx41.i8091000 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79.i804, i64 0, i32 2, i64 0, !dbg !2087
  store i8 %93, ptr %arrayidx41.i8091000, align 1, !dbg !2088, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  br label %for.body37.for.body37_crit_edge.i815, !dbg !2089

for.body37.for.body37_crit_edge.i815:             ; preds = %for.end30.i806, %for.body37.for.body37_crit_edge.i815
  %inc43.i8101002 = phi i64 [ 1, %for.end30.i806 ], [ %inc43.i810, %for.body37.for.body37_crit_edge.i815 ]
  %p.176.i8081001 = phi ptr [ %add.ptr33.i805, %for.end30.i806 ], [ %incdec.ptr38.i813, %for.body37.for.body37_crit_edge.i815 ]
  call void @llvm.dbg.value(metadata ptr %p.176.i8081001, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2017
  %incdec.ptr38.i813 = getelementptr inbounds i8, ptr %p.176.i8081001, i64 1, !dbg !2090
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i813, metadata !968, metadata !DIExpression()) #11, !dbg !2017
  %.pre80.i814 = load ptr, ptr %ascii85.i, align 8, !dbg !2091, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc43.i8101002, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i813, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2017
  %94 = load i8, ptr %incdec.ptr38.i813, align 1, !dbg !2086, !tbaa !887
  %arrayidx41.i809 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80.i814, i64 0, i32 2, i64 %inc43.i8101002, !dbg !2087
  store i8 %94, ptr %arrayidx41.i809, align 1, !dbg !2088, !tbaa !887
  %inc43.i810 = add nuw nsw i64 %inc43.i8101002, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %inc43.i810, metadata !969, metadata !DIExpression()) #11, !dbg !2017
  %exitcond.not.i811 = icmp eq i64 %inc43.i810, 4, !dbg !2093
  br i1 %exitcond.not.i811, label %if.end279, label %for.body37.for.body37_crit_edge.i815, !dbg !2089, !llvm.loop !2094

if.end279:                                        ; preds = %for.body37.for.body37_crit_edge.i815, %if.else277, %if.then275, %while.body248
  %byte.14 = phi i8 [ %spec.select671, %while.body248 ], [ 0, %if.then275 ], [ 0, %if.else277 ], [ 0, %for.body37.for.body37_crit_edge.i815 ], !dbg !2096
  %bit.11 = phi i8 [ %74, %while.body248 ], [ -128, %if.then275 ], [ -128, %if.else277 ], [ -128, %for.body37.for.body37_crit_edge.i815 ], !dbg !2096
  call void @llvm.dbg.value(metadata i8 %bit.11, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.14, metadata !1631, metadata !DIExpression()), !dbg !1634
  %shr280 = lshr i64 %mask.21003, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %shr280, metadata !1626, metadata !DIExpression()), !dbg !1634
  %cmp246.not = icmp ult i64 %mask.21003, 2, !dbg !2004
  br i1 %cmp246.not, label %if.end282.loopexit, label %while.body248, !dbg !2004, !llvm.loop !2098

if.end282.loopexit:                               ; preds = %if.end279
  %conv241 = sub i32 %inc218, %71, !dbg !2003
  br label %if.end282, !dbg !2099

if.end282:                                        ; preds = %for.cond208.preheader, %if.end282.loopexit, %for.end221
  %n.2.lcssa1051 = phi i64 [ %dec220, %for.end221 ], [ %dec220, %if.end282.loopexit ], [ %n.1.lcssa, %for.cond208.preheader ]
  %q.4.lcssa1050 = phi ptr [ %incdec.ptr217, %for.end221 ], [ %incdec.ptr217, %if.end282.loopexit ], [ %q.3.lcssa, %for.cond208.preheader ]
  %runlength.3 = phi i32 [ %inc218, %for.end221 ], [ %conv241, %if.end282.loopexit ], [ 0, %for.cond208.preheader ], !dbg !2101
  %byte.15 = phi i8 [ %byte.11, %for.end221 ], [ %byte.14, %if.end282.loopexit ], [ %byte.11, %for.cond208.preheader ], !dbg !1872
  %bit.12 = phi i8 [ %bit.9, %for.end221 ], [ %bit.11, %if.end282.loopexit ], [ %bit.9, %for.cond208.preheader ], !dbg !1873
  call void @llvm.dbg.value(metadata i8 %bit.12, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.15, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.3, metadata !1619, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %runlength.3, metadata !1762, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #11, !dbg !2099
  call void @llvm.dbg.value(metadata i64 63, metadata !1765, metadata !DIExpression()) #11, !dbg !2099
  %95 = call i32 @llvm.umin.i32(i32 %runlength.3, i32 63), !dbg !2099
  %96 = zext i32 %95 to i64, !dbg !2099
  call void @llvm.dbg.value(metadata !DIArgList(ptr @TBTable, i64 %96), metadata !1616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1634
  %length286 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %96, i32 2, !dbg !2102
  %97 = load i64, ptr %length286, align 16, !dbg !2102, !tbaa !1131
  %sub287 = add i64 %97, -1, !dbg !2102
  %shl288 = shl nuw i64 1, %sub287, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %shl288, metadata !1626, metadata !DIExpression()), !dbg !1634
  %code293 = getelementptr inbounds %struct.HuffmanTable, ptr @TBTable, i64 %96, i32 1
  %98 = load i64, ptr %code293, align 8, !tbaa !1134
  br label %while.body292, !dbg !2102

while.body292:                                    ; preds = %if.end282, %if.end323
  %bit.131011 = phi i8 [ %bit.12, %if.end282 ], [ %bit.14, %if.end323 ]
  %byte.161010 = phi i8 [ %byte.15, %if.end282 ], [ %byte.18, %if.end323 ]
  %mask.31009 = phi i64 [ %shl288, %if.end282 ], [ %shr324, %if.end323 ]
  call void @llvm.dbg.value(metadata i8 %bit.131011, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.161010, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %mask.31009, metadata !1626, metadata !DIExpression()), !dbg !1634
  %and294 = and i64 %98, %mask.31009, !dbg !2104
  %cmp295.not = icmp eq i64 %and294, 0, !dbg !2104
  %or303662 = select i1 %cmp295.not, i8 0, i8 %bit.131011, !dbg !2108
  %spec.select672 = or i8 %or303662, %byte.161010, !dbg !2108
  call void @llvm.dbg.value(metadata i8 %spec.select672, metadata !1631, metadata !DIExpression()), !dbg !1634
  %99 = lshr i8 %bit.131011, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i8 %99, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp311 = icmp ult i8 %bit.131011, 2, !dbg !2109
  br i1 %cmp311, label %if.then313, label %if.end323, !dbg !2108

if.then313:                                       ; preds = %while.body292
  %call316 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2111
  %cmp317 = icmp eq i32 %call316, 0, !dbg !2111
  br i1 %cmp317, label %if.then319, label %if.else321, !dbg !2114

if.then319:                                       ; preds = %if.then313
  %call320 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %spec.select672) #11, !dbg !2111
  br label %if.end323, !dbg !2111

if.else321:                                       ; preds = %if.then313
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()) #11, !dbg !2115
  call void @llvm.dbg.value(metadata i8 %spec.select672, metadata !966, metadata !DIExpression()) #11, !dbg !2115
  %100 = load ptr, ptr %ascii85.i, align 8, !dbg !2117, !tbaa !797
  %101 = load i64, ptr %100, align 8, !dbg !2118, !tbaa !832
  %arrayidx.i818 = getelementptr inbounds %struct._Ascii85Info, ptr %100, i64 0, i32 2, i64 %101, !dbg !2119
  store i8 %spec.select672, ptr %arrayidx.i818, align 1, !dbg !2120, !tbaa !887
  %102 = load ptr, ptr %ascii85.i, align 8, !dbg !2121, !tbaa !797
  %103 = load i64, ptr %102, align 8, !dbg !2122, !tbaa !832
  %inc.i819 = add nsw i64 %103, 1, !dbg !2122
  store i64 %inc.i819, ptr %102, align 8, !dbg !2122, !tbaa !832
  %cmp.i820 = icmp slt i64 %103, 3, !dbg !2123
  br i1 %cmp.i820, label %if.end323, label %for.body.preheader.i822, !dbg !2124

for.body.preheader.i822:                          ; preds = %if.else321
  call void @llvm.dbg.value(metadata ptr %102, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %inc.i819, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  %buffer7.i821 = getelementptr inbounds %struct._Ascii85Info, ptr %102, i64 0, i32 2, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %buffer7.i821, metadata !968, metadata !DIExpression()) #11, !dbg !2115
  br label %for.body.i837, !dbg !2126

for.body.i837:                                    ; preds = %for.end.i875, %for.body.preheader.i822
  %n.074.i823 = phi i64 [ %sub.i873, %for.end.i875 ], [ %inc.i819, %for.body.preheader.i822 ]
  %p.073.i824 = phi ptr [ %add.ptr.i872, %for.end.i875 ], [ %buffer7.i821, %for.body.preheader.i822 ]
  call void @llvm.dbg.value(metadata i64 %n.074.i823, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %p.073.i824, metadata !968, metadata !DIExpression()) #11, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %p.073.i824, metadata !753, metadata !DIExpression()) #11, !dbg !2127
  %104 = load i8, ptr %p.073.i824, align 1, !dbg !2129, !tbaa !887
  %conv.i.i825 = zext i8 %104 to i64, !dbg !2130
  %arrayidx1.i.i826 = getelementptr inbounds i8, ptr %p.073.i824, i64 1, !dbg !2131
  %105 = load i8, ptr %arrayidx1.i.i826, align 1, !dbg !2131, !tbaa !887
  %conv2.i.i827 = zext i8 %105 to i64, !dbg !2132
  %106 = shl nuw nsw i64 %conv.i.i825, 24, !dbg !2133
  %107 = shl nuw nsw i64 %conv2.i.i827, 16, !dbg !2133
  %shl3.i.i828 = or i64 %107, %106, !dbg !2133
  %arrayidx4.i.i829 = getelementptr inbounds i8, ptr %p.073.i824, i64 2, !dbg !2134
  %108 = load i8, ptr %arrayidx4.i.i829, align 1, !dbg !2134, !tbaa !887
  %conv5.i.i830 = zext i8 %108 to i64, !dbg !2135
  %shl6.i.i831 = shl nuw nsw i64 %conv5.i.i830, 8, !dbg !2136
  %or7.i.i832 = or i64 %shl3.i.i828, %shl6.i.i831, !dbg !2137
  %arrayidx8.i.i833 = getelementptr inbounds i8, ptr %p.073.i824, i64 3, !dbg !2138
  %109 = load i8, ptr %arrayidx8.i.i833, align 1, !dbg !2138, !tbaa !887
  %conv9.i.i834 = zext i8 %109 to i64, !dbg !2139
  %or10.i.i835 = or i64 %or7.i.i832, %conv9.i.i834, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %or10.i.i835, metadata !756, metadata !DIExpression()) #11, !dbg !2127
  %cmp.i.i836 = icmp eq i64 %or10.i.i835, 0, !dbg !2141
  br i1 %cmp.i.i836, label %Ascii85Tuple.exit.thread.i838, label %for.body.i.i850, !dbg !2142

Ascii85Tuple.exit.thread.i838:                    ; preds = %for.body.i837
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !2143, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !2127, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2115
  br label %for.body14.i863.preheader, !dbg !2144

for.body.i.i850:                                  ; preds = %for.body.i837, %for.body.i.i850
  %quantum.03.i.i839 = phi i64 [ %div16.i.i847, %for.body.i.i850 ], [ 52200625, %for.body.i837 ]
  %code.02.i.i840 = phi i64 [ %sub.i.i844.recomposed, %for.body.i.i850 ], [ %or10.i.i835, %for.body.i837 ]
  %i.01.i.i841 = phi i64 [ %inc.i.i848, %for.body.i.i850 ], [ 0, %for.body.i837 ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i.i839, metadata !757, metadata !DIExpression()) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %code.02.i.i840, metadata !756, metadata !DIExpression()) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %i.01.i.i841, metadata !754, metadata !DIExpression()) #11, !dbg !2127
  %div.i.i842 = udiv i64 %code.02.i.i840, %quantum.03.i.i839, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %div.i.i842, metadata !755, metadata !DIExpression()) #11, !dbg !2127
  %mul.i.i843 = mul nuw i64 %div.i.i842, %quantum.03.i.i839, !dbg !2146
  %sub.i.i844.recomposed = urem i64 %code.02.i.i840, %quantum.03.i.i839
  call void @llvm.dbg.value(metadata i64 %sub.i.i844.recomposed, metadata !756, metadata !DIExpression()) #11, !dbg !2127
  %110 = trunc i64 %div.i.i842 to i8, !dbg !2147
  %conv14.i.i845 = add i8 %110, 33, !dbg !2147
  %arrayidx15.i.i846 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i.i841, !dbg !2148
  store i8 %conv14.i.i845, ptr %arrayidx15.i.i846, align 1, !dbg !2149, !tbaa !887
  %div16.i.i847 = udiv i64 %quantum.03.i.i839, 85, !dbg !2150
  call void @llvm.dbg.value(metadata i64 %div16.i.i847, metadata !757, metadata !DIExpression()) #11, !dbg !2127
  %inc.i.i848 = add nuw nsw i64 %i.01.i.i841, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %inc.i.i848, metadata !754, metadata !DIExpression()) #11, !dbg !2127
  %exitcond.not.i.i849 = icmp eq i64 %inc.i.i848, 4, !dbg !2152
  br i1 %exitcond.not.i.i849, label %Ascii85Tuple.exit.i855, label %for.body.i.i850, !dbg !2153, !llvm.loop !2154

Ascii85Tuple.exit.i855:                           ; preds = %for.body.i.i850
  %rem.i.i851 = urem i64 %sub.i.i844.recomposed, 85, !dbg !2156
  %111 = trunc i64 %rem.i.i851 to i8, !dbg !2157
  %conv18.i.i852 = add nuw nsw i8 %111, 33, !dbg !2157
  store i8 %conv18.i.i852, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !2158, !tbaa !887
  %.pre.i853 = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !2159, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !2127, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2115
  %cmp12.not70.i854 = icmp eq i8 %.pre.i853, 0, !dbg !2160
  br i1 %cmp12.not70.i854, label %for.end.i875, label %for.body14.i863.preheader, !dbg !2144

for.body14.i863.preheader:                        ; preds = %Ascii85Tuple.exit.i855, %Ascii85Tuple.exit.thread.i838
  %.ph1057 = phi i8 [ %.pre.i853, %Ascii85Tuple.exit.i855 ], [ 122, %Ascii85Tuple.exit.thread.i838 ]
  br label %for.body14.i863, !dbg !2144

for.body14.i863:                                  ; preds = %for.body14.i863.preheader, %if.end27.i871
  %112 = phi i8 [ %117, %if.end27.i871 ], [ %.ph1057, %for.body14.i863.preheader ]
  %q.071.i857 = phi ptr [ %incdec.ptr.i869, %if.end27.i871 ], [ @Ascii85Tuple.tuple, %for.body14.i863.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071.i857, metadata !967, metadata !DIExpression()) #11, !dbg !2115
  %113 = load ptr, ptr %ascii85.i, align 8, !dbg !2161, !tbaa !797
  %line_break.i858 = getelementptr inbounds %struct._Ascii85Info, ptr %113, i64 0, i32 1, !dbg !2162
  %114 = load i64, ptr %line_break.i858, align 8, !dbg !2163, !tbaa !829
  %dec.i859 = add nsw i64 %114, -1, !dbg !2163
  store i64 %dec.i859, ptr %line_break.i858, align 8, !dbg !2163, !tbaa !829
  %cmp18.i860 = icmp sgt i64 %114, 0, !dbg !2164
  %cmp21.not.i861 = icmp eq i8 %112, 37
  %or.cond.i862 = select i1 %cmp18.i860, i1 true, i1 %cmp21.not.i861, !dbg !2165
  br i1 %or.cond.i862, label %if.end27.i871, label %if.then23.i867, !dbg !2165

if.then23.i867:                                   ; preds = %for.body14.i863
  %call24.i864 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !2166
  %115 = load ptr, ptr %ascii85.i, align 8, !dbg !2167, !tbaa !797
  %line_break26.i865 = getelementptr inbounds %struct._Ascii85Info, ptr %115, i64 0, i32 1, !dbg !2168
  store i64 72, ptr %line_break26.i865, align 8, !dbg !2169, !tbaa !829
  %.pre78.i866 = load i8, ptr %q.071.i857, align 1, !dbg !2170, !tbaa !887
  br label %if.end27.i871, !dbg !2171

if.end27.i871:                                    ; preds = %if.then23.i867, %for.body14.i863
  %116 = phi i8 [ %.pre78.i866, %if.then23.i867 ], [ %112, %for.body14.i863 ], !dbg !2170
  %call28.i868 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %116) #11, !dbg !2172
  %incdec.ptr.i869 = getelementptr inbounds i8, ptr %q.071.i857, i64 1, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i869, metadata !967, metadata !DIExpression()) #11, !dbg !2115
  %117 = load i8, ptr %incdec.ptr.i869, align 1, !dbg !2159, !tbaa !887
  %cmp12.not.i870 = icmp eq i8 %117, 0, !dbg !2160
  br i1 %cmp12.not.i870, label %for.end.i875, label %for.body14.i863, !dbg !2144, !llvm.loop !2174

for.end.i875:                                     ; preds = %if.end27.i871, %Ascii85Tuple.exit.i855
  %add.ptr.i872 = getelementptr inbounds i8, ptr %p.073.i824, i64 8, !dbg !2176
  call void @llvm.dbg.value(metadata ptr %add.ptr.i872, metadata !968, metadata !DIExpression()) #11, !dbg !2115
  %sub.i873 = add nsw i64 %n.074.i823, -4, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %sub.i873, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  %cmp10.i874 = icmp sgt i64 %n.074.i823, 7, !dbg !2178
  br i1 %cmp10.i874, label %for.body.i837, label %for.end30.i878, !dbg !2126, !llvm.loop !2179

for.end30.i878:                                   ; preds = %for.end.i875
  %.pre79.i876 = load ptr, ptr %ascii85.i, align 8, !dbg !2181, !tbaa !797
  store i64 %sub.i873, ptr %.pre79.i876, align 8, !dbg !2182, !tbaa !832
  %add.ptr33.i877 = getelementptr inbounds i8, ptr %p.073.i824, i64 4, !dbg !2183
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %add.ptr33.i877, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2115
  %118 = load i8, ptr %add.ptr33.i877, align 1, !dbg !2184, !tbaa !887
  %arrayidx41.i8811006 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79.i876, i64 0, i32 2, i64 0, !dbg !2185
  store i8 %118, ptr %arrayidx41.i8811006, align 1, !dbg !2186, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  br label %for.body37.for.body37_crit_edge.i887, !dbg !2187

for.body37.for.body37_crit_edge.i887:             ; preds = %for.end30.i878, %for.body37.for.body37_crit_edge.i887
  %inc43.i8821008 = phi i64 [ 1, %for.end30.i878 ], [ %inc43.i882, %for.body37.for.body37_crit_edge.i887 ]
  %p.176.i8801007 = phi ptr [ %add.ptr33.i877, %for.end30.i878 ], [ %incdec.ptr38.i885, %for.body37.for.body37_crit_edge.i887 ]
  call void @llvm.dbg.value(metadata ptr %p.176.i8801007, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2115
  %incdec.ptr38.i885 = getelementptr inbounds i8, ptr %p.176.i8801007, i64 1, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i885, metadata !968, metadata !DIExpression()) #11, !dbg !2115
  %.pre80.i886 = load ptr, ptr %ascii85.i, align 8, !dbg !2189, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc43.i8821008, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i885, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2115
  %119 = load i8, ptr %incdec.ptr38.i885, align 1, !dbg !2184, !tbaa !887
  %arrayidx41.i881 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80.i886, i64 0, i32 2, i64 %inc43.i8821008, !dbg !2185
  store i8 %119, ptr %arrayidx41.i881, align 1, !dbg !2186, !tbaa !887
  %inc43.i882 = add nuw nsw i64 %inc43.i8821008, 1, !dbg !2190
  call void @llvm.dbg.value(metadata i64 %inc43.i882, metadata !969, metadata !DIExpression()) #11, !dbg !2115
  %exitcond.not.i883 = icmp eq i64 %inc43.i882, 4, !dbg !2191
  br i1 %exitcond.not.i883, label %if.end323, label %for.body37.for.body37_crit_edge.i887, !dbg !2187, !llvm.loop !2192

if.end323:                                        ; preds = %for.body37.for.body37_crit_edge.i887, %if.else321, %if.then319, %while.body292
  %byte.18 = phi i8 [ %spec.select672, %while.body292 ], [ 0, %if.then319 ], [ 0, %if.else321 ], [ 0, %for.body37.for.body37_crit_edge.i887 ], !dbg !2194
  %bit.14 = phi i8 [ %99, %while.body292 ], [ -128, %if.then319 ], [ -128, %if.else321 ], [ -128, %for.body37.for.body37_crit_edge.i887 ], !dbg !2194
  call void @llvm.dbg.value(metadata i8 %bit.14, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.18, metadata !1631, metadata !DIExpression()), !dbg !1634
  %shr324 = lshr i64 %mask.31009, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %shr324, metadata !1626, metadata !DIExpression()), !dbg !1634
  %cmp290.not = icmp ult i64 %mask.31009, 2, !dbg !2102
  br i1 %cmp290.not, label %if.end326, label %while.body292, !dbg !2102, !llvm.loop !2196

if.end326:                                        ; preds = %if.end323
  call void @llvm.dbg.value(metadata i8 %bit.14, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.18, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %n.2.lcssa1051, metadata !1629, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %q.4.lcssa1050, metadata !1625, metadata !DIExpression()), !dbg !1634
  %cmp97 = icmp sgt i64 %n.2.lcssa1051, 0, !dbg !2197
  br i1 %cmp97, label %land.rhs.preheader, label %for.body331.preheader, !dbg !1721, !llvm.loop !2198

for.body331.preheader:                            ; preds = %while.end204, %if.end326, %for.cond96.preheader
  %bit.161021.ph = phi i8 [ %bit.31026, %for.cond96.preheader ], [ %bit.14, %if.end326 ], [ %bit.9, %while.end204 ]
  %byte.201020.ph = phi i8 [ %byte.31025, %for.cond96.preheader ], [ %byte.18, %if.end326 ], [ %byte.11, %while.end204 ]
  br label %for.body331, !dbg !2200

for.body331:                                      ; preds = %for.body331.preheader, %for.inc350
  %bit.161021 = phi i8 [ %bit.17, %for.inc350 ], [ %bit.161021.ph, %for.body331.preheader ]
  %byte.201020 = phi i8 [ %byte.21, %for.inc350 ], [ %byte.201020.ph, %for.body331.preheader ]
  %k.11019 = phi i32 [ %inc351, %for.inc350 ], [ 0, %for.body331.preheader ]
  call void @llvm.dbg.value(metadata i8 %bit.161021, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.201020, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %k.11019, metadata !1618, metadata !DIExpression()), !dbg !1634
  %120 = lshr i8 %bit.161021, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i8 %120, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp337 = icmp ult i8 %bit.161021, 2, !dbg !2205
  br i1 %cmp337, label %if.then339, label %for.inc350, !dbg !2202

if.then339:                                       ; preds = %for.body331
  %call342 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2207
  %cmp343 = icmp eq i32 %call342, 0, !dbg !2207
  br i1 %cmp343, label %if.then345, label %if.else347, !dbg !2210

if.then345:                                       ; preds = %if.then339
  %call346 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %byte.201020) #11, !dbg !2207
  br label %for.inc350, !dbg !2207

if.else347:                                       ; preds = %if.then339
  call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %byte.201020), !dbg !2207
  br label %for.inc350

for.inc350:                                       ; preds = %if.then345, %if.else347, %for.body331
  %byte.21 = phi i8 [ %byte.201020, %for.body331 ], [ 0, %if.else347 ], [ 0, %if.then345 ], !dbg !1634
  %bit.17 = phi i8 [ %120, %for.body331 ], [ -128, %if.else347 ], [ -128, %if.then345 ], !dbg !2211
  call void @llvm.dbg.value(metadata i8 %bit.17, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.21, metadata !1631, metadata !DIExpression()), !dbg !1634
  %inc351 = add nuw nsw i32 %k.11019, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %inc351, metadata !1618, metadata !DIExpression()), !dbg !1634
  %exitcond1042.not = icmp eq i32 %inc351, 11, !dbg !2213
  br i1 %exitcond1042.not, label %for.end352, label %for.body331, !dbg !2200, !llvm.loop !2214

for.end352:                                       ; preds = %for.inc350
  %or355661 = or i8 %bit.17, %byte.21, !dbg !2216
  call void @llvm.dbg.value(metadata i8 %or355661, metadata !1631, metadata !DIExpression()), !dbg !1634
  %121 = lshr i8 %bit.17, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i8 %121, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp362 = icmp ult i8 %bit.17, 2, !dbg !2220
  br i1 %cmp362, label %if.then364, label %if.end374, !dbg !2219

if.then364:                                       ; preds = %for.end352
  %call367 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2222
  %cmp368 = icmp eq i32 %call367, 0, !dbg !2222
  br i1 %cmp368, label %if.then370, label %if.else372, !dbg !2225

if.then370:                                       ; preds = %if.then364
  %call371 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %or355661) #11, !dbg !2222
  br label %if.end374, !dbg !2222

if.else372:                                       ; preds = %if.then364
  call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %or355661), !dbg !2222
  br label %if.end374

if.end374:                                        ; preds = %if.then370, %if.else372, %for.end352
  %byte.22 = phi i8 [ %or355661, %for.end352 ], [ 0, %if.else372 ], [ 0, %if.then370 ], !dbg !2226
  %bit.18 = phi i8 [ %121, %for.end352 ], [ -128, %if.else372 ], [ -128, %if.then370 ], !dbg !2226
  call void @llvm.dbg.value(metadata i8 %bit.18, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.22, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  %call375 = call ptr @GetPreviousImageInList(ptr noundef nonnull %call22) #11, !dbg !2227
  %cmp376 = icmp eq ptr %call375, null, !dbg !2228
  br i1 %cmp376, label %if.then378, label %for.inc386, !dbg !2229

if.then378:                                       ; preds = %if.end374
  %122 = load i64, ptr %rows, align 8, !dbg !2230, !tbaa !1210
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1203, metadata !DIExpression()) #11, !dbg !2231
  call void @llvm.dbg.value(metadata ptr @LoadImageTag, metadata !1204, metadata !DIExpression()) #11, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %y.01023, metadata !1205, metadata !DIExpression()) #11, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %122, metadata !1206, metadata !DIExpression()) #11, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !1207, metadata !DIExpression()) #11, !dbg !2233
  %123 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2234, !tbaa !1421
  %cmp.i889 = icmp eq ptr %123, null, !dbg !2235
  br i1 %cmp.i889, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !2236

SetImageProgress.exit.thread:                     ; preds = %if.then378
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1621, metadata !DIExpression()), !dbg !1634
  br label %for.inc386, !dbg !2238

SetImageProgress.exit:                            ; preds = %if.then378
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.9, ptr noundef nonnull @LoadImageTag, ptr noundef nonnull %filename.i) #11, !dbg !2239
  %124 = load ptr, ptr %progress_monitor.i, align 8, !dbg !2240, !tbaa !1421
  %125 = load ptr, ptr %client_data.i, align 8, !dbg !2241, !tbaa !1429
  %call4.i = call i32 %124(ptr noundef nonnull %message.i, i64 noundef %y.01023, i64 noundef %122, ptr noundef %125) #11, !dbg !2242
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #11, !dbg !2237
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !1621, metadata !DIExpression()), !dbg !1634
  %cmp381 = icmp eq i32 %call4.i, 0, !dbg !2243
  br i1 %cmp381, label %for.end388, label %for.inc386, !dbg !2238

for.inc386:                                       ; preds = %SetImageProgress.exit.thread, %if.end374, %SetImageProgress.exit
  %inc387 = add nuw nsw i64 %y.01023, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i8 %bit.18, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.22, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 %inc387, metadata !1630, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1625, metadata !DIExpression()), !dbg !1634
  %126 = load i64, ptr %rows, align 8, !dbg !1709, !tbaa !1210
  %cmp73 = icmp slt i64 %inc387, %126, !dbg !1710
  br i1 %cmp73, label %for.body75, label %for.end388, !dbg !1711, !llvm.loop !2246

for.end388:                                       ; preds = %for.inc386, %for.body75, %SetImageProgress.exit, %if.end70
  %byte.23 = phi i8 [ %byte.2, %if.end70 ], [ %byte.22, %SetImageProgress.exit ], [ %byte.31025, %for.body75 ], [ %byte.22, %for.inc386 ], !dbg !1634
  %bit.19 = phi i8 [ %bit.2, %if.end70 ], [ %bit.18, %SetImageProgress.exit ], [ %bit.31026, %for.body75 ], [ %bit.18, %for.inc386 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8 %bit.19, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.23, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i64 0, metadata !1622, metadata !DIExpression()), !dbg !1634
  %ascii85.i890 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 51
  br label %for.cond393.preheader, !dbg !2248

for.cond393.preheader:                            ; preds = %for.end388, %for.inc440
  %bit.201041 = phi i8 [ %bit.19, %for.end388 ], [ %bit.23, %for.inc440 ]
  %byte.241040 = phi i8 [ %byte.23, %for.end388 ], [ %byte.27, %for.inc440 ]
  %i.01039 = phi i64 [ 0, %for.end388 ], [ %inc441, %for.inc440 ]
  call void @llvm.dbg.value(metadata i64 %i.01039, metadata !1622, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %bit.201041, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.241040, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 0, metadata !1618, metadata !DIExpression()), !dbg !1634
  br label %for.body396, !dbg !2250

for.body396:                                      ; preds = %for.cond393.preheader, %for.inc415
  %bit.211038 = phi i8 [ %bit.201041, %for.cond393.preheader ], [ %bit.22, %for.inc415 ]
  %byte.251037 = phi i8 [ %byte.241040, %for.cond393.preheader ], [ %byte.26, %for.inc415 ]
  %k.21036 = phi i32 [ 0, %for.cond393.preheader ], [ %inc416, %for.inc415 ]
  call void @llvm.dbg.value(metadata i8 %bit.211038, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.251037, metadata !1631, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %k.21036, metadata !1618, metadata !DIExpression()), !dbg !1634
  %127 = lshr i8 %bit.211038, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i8 %127, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp402 = icmp ult i8 %bit.211038, 2, !dbg !2257
  br i1 %cmp402, label %if.then404, label %for.inc415, !dbg !2254

if.then404:                                       ; preds = %for.body396
  %call407 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2259
  %cmp408 = icmp eq i32 %call407, 0, !dbg !2259
  br i1 %cmp408, label %if.then410, label %if.else412, !dbg !2262

if.then410:                                       ; preds = %if.then404
  %call411 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %byte.251037) #11, !dbg !2259
  br label %for.inc415, !dbg !2259

if.else412:                                       ; preds = %if.then404
  call void @llvm.dbg.value(metadata ptr %image, metadata !965, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata i8 %byte.251037, metadata !966, metadata !DIExpression()) #11, !dbg !2263
  %128 = load ptr, ptr %ascii85.i890, align 8, !dbg !2265, !tbaa !797
  %129 = load i64, ptr %128, align 8, !dbg !2266, !tbaa !832
  %arrayidx.i891 = getelementptr inbounds %struct._Ascii85Info, ptr %128, i64 0, i32 2, i64 %129, !dbg !2267
  store i8 %byte.251037, ptr %arrayidx.i891, align 1, !dbg !2268, !tbaa !887
  %130 = load ptr, ptr %ascii85.i890, align 8, !dbg !2269, !tbaa !797
  %131 = load i64, ptr %130, align 8, !dbg !2270, !tbaa !832
  %inc.i892 = add nsw i64 %131, 1, !dbg !2270
  store i64 %inc.i892, ptr %130, align 8, !dbg !2270, !tbaa !832
  %cmp.i893 = icmp slt i64 %131, 3, !dbg !2271
  br i1 %cmp.i893, label %for.inc415, label %for.body.preheader.i895, !dbg !2272

for.body.preheader.i895:                          ; preds = %if.else412
  call void @llvm.dbg.value(metadata ptr %130, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)) #11, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %inc.i892, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  %buffer7.i894 = getelementptr inbounds %struct._Ascii85Info, ptr %130, i64 0, i32 2, !dbg !2273
  call void @llvm.dbg.value(metadata ptr %buffer7.i894, metadata !968, metadata !DIExpression()) #11, !dbg !2263
  br label %for.body.i910, !dbg !2274

for.body.i910:                                    ; preds = %for.end.i948, %for.body.preheader.i895
  %n.074.i896 = phi i64 [ %sub.i946, %for.end.i948 ], [ %inc.i892, %for.body.preheader.i895 ]
  %p.073.i897 = phi ptr [ %add.ptr.i945, %for.end.i948 ], [ %buffer7.i894, %for.body.preheader.i895 ]
  call void @llvm.dbg.value(metadata i64 %n.074.i896, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %p.073.i897, metadata !968, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %p.073.i897, metadata !753, metadata !DIExpression()) #11, !dbg !2275
  %132 = load i8, ptr %p.073.i897, align 1, !dbg !2277, !tbaa !887
  %conv.i.i898 = zext i8 %132 to i64, !dbg !2278
  %arrayidx1.i.i899 = getelementptr inbounds i8, ptr %p.073.i897, i64 1, !dbg !2279
  %133 = load i8, ptr %arrayidx1.i.i899, align 1, !dbg !2279, !tbaa !887
  %conv2.i.i900 = zext i8 %133 to i64, !dbg !2280
  %134 = shl nuw nsw i64 %conv.i.i898, 24, !dbg !2281
  %135 = shl nuw nsw i64 %conv2.i.i900, 16, !dbg !2281
  %shl3.i.i901 = or i64 %135, %134, !dbg !2281
  %arrayidx4.i.i902 = getelementptr inbounds i8, ptr %p.073.i897, i64 2, !dbg !2282
  %136 = load i8, ptr %arrayidx4.i.i902, align 1, !dbg !2282, !tbaa !887
  %conv5.i.i903 = zext i8 %136 to i64, !dbg !2283
  %shl6.i.i904 = shl nuw nsw i64 %conv5.i.i903, 8, !dbg !2284
  %or7.i.i905 = or i64 %shl3.i.i901, %shl6.i.i904, !dbg !2285
  %arrayidx8.i.i906 = getelementptr inbounds i8, ptr %p.073.i897, i64 3, !dbg !2286
  %137 = load i8, ptr %arrayidx8.i.i906, align 1, !dbg !2286, !tbaa !887
  %conv9.i.i907 = zext i8 %137 to i64, !dbg !2287
  %or10.i.i908 = or i64 %or7.i.i905, %conv9.i.i907, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %or10.i.i908, metadata !756, metadata !DIExpression()) #11, !dbg !2275
  %cmp.i.i909 = icmp eq i64 %or10.i.i908, 0, !dbg !2289
  br i1 %cmp.i.i909, label %Ascii85Tuple.exit.thread.i911, label %for.body.i.i923, !dbg !2290

Ascii85Tuple.exit.thread.i911:                    ; preds = %for.body.i910
  store i8 122, ptr @Ascii85Tuple.tuple, align 1, !dbg !2291, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 1), align 1, !dbg !2275, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2263
  br label %for.body14.i936.preheader, !dbg !2292

for.body.i.i923:                                  ; preds = %for.body.i910, %for.body.i.i923
  %quantum.03.i.i912 = phi i64 [ %div16.i.i920, %for.body.i.i923 ], [ 52200625, %for.body.i910 ]
  %code.02.i.i913 = phi i64 [ %sub.i.i917.recomposed, %for.body.i.i923 ], [ %or10.i.i908, %for.body.i910 ]
  %i.01.i.i914 = phi i64 [ %inc.i.i921, %for.body.i.i923 ], [ 0, %for.body.i910 ]
  call void @llvm.dbg.value(metadata i64 %quantum.03.i.i912, metadata !757, metadata !DIExpression()) #11, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %code.02.i.i913, metadata !756, metadata !DIExpression()) #11, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %i.01.i.i914, metadata !754, metadata !DIExpression()) #11, !dbg !2275
  %div.i.i915 = udiv i64 %code.02.i.i913, %quantum.03.i.i912, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %div.i.i915, metadata !755, metadata !DIExpression()) #11, !dbg !2275
  %mul.i.i916 = mul nuw i64 %div.i.i915, %quantum.03.i.i912, !dbg !2294
  %sub.i.i917.recomposed = urem i64 %code.02.i.i913, %quantum.03.i.i912
  call void @llvm.dbg.value(metadata i64 %sub.i.i917.recomposed, metadata !756, metadata !DIExpression()) #11, !dbg !2275
  %138 = trunc i64 %div.i.i915 to i8, !dbg !2295
  %conv14.i.i918 = add i8 %138, 33, !dbg !2295
  %arrayidx15.i.i919 = getelementptr inbounds [6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 %i.01.i.i914, !dbg !2296
  store i8 %conv14.i.i918, ptr %arrayidx15.i.i919, align 1, !dbg !2297, !tbaa !887
  %div16.i.i920 = udiv i64 %quantum.03.i.i912, 85, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %div16.i.i920, metadata !757, metadata !DIExpression()) #11, !dbg !2275
  %inc.i.i921 = add nuw nsw i64 %i.01.i.i914, 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %inc.i.i921, metadata !754, metadata !DIExpression()) #11, !dbg !2275
  %exitcond.not.i.i922 = icmp eq i64 %inc.i.i921, 4, !dbg !2300
  br i1 %exitcond.not.i.i922, label %Ascii85Tuple.exit.i928, label %for.body.i.i923, !dbg !2301, !llvm.loop !2302

Ascii85Tuple.exit.i928:                           ; preds = %for.body.i.i923
  %rem.i.i924 = urem i64 %sub.i.i917.recomposed, 85, !dbg !2304
  %139 = trunc i64 %rem.i.i924 to i8, !dbg !2305
  %conv18.i.i925 = add nuw nsw i8 %139, 33, !dbg !2305
  store i8 %conv18.i.i925, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 4), align 1, !dbg !2306, !tbaa !887
  %.pre.i926 = load i8, ptr @Ascii85Tuple.tuple, align 1, !dbg !2307, !tbaa !887
  store i8 0, ptr getelementptr inbounds ([6 x i8], ptr @Ascii85Tuple.tuple, i64 0, i64 5), align 1, !dbg !2275, !tbaa !887
  call void @llvm.dbg.value(metadata ptr @Ascii85Tuple.tuple, metadata !967, metadata !DIExpression()) #11, !dbg !2263
  %cmp12.not70.i927 = icmp eq i8 %.pre.i926, 0, !dbg !2308
  br i1 %cmp12.not70.i927, label %for.end.i948, label %for.body14.i936.preheader, !dbg !2292

for.body14.i936.preheader:                        ; preds = %Ascii85Tuple.exit.i928, %Ascii85Tuple.exit.thread.i911
  %.ph = phi i8 [ %.pre.i926, %Ascii85Tuple.exit.i928 ], [ 122, %Ascii85Tuple.exit.thread.i911 ]
  br label %for.body14.i936, !dbg !2292

for.body14.i936:                                  ; preds = %for.body14.i936.preheader, %if.end27.i944
  %140 = phi i8 [ %145, %if.end27.i944 ], [ %.ph, %for.body14.i936.preheader ]
  %q.071.i930 = phi ptr [ %incdec.ptr.i942, %if.end27.i944 ], [ @Ascii85Tuple.tuple, %for.body14.i936.preheader ]
  call void @llvm.dbg.value(metadata ptr %q.071.i930, metadata !967, metadata !DIExpression()) #11, !dbg !2263
  %141 = load ptr, ptr %ascii85.i890, align 8, !dbg !2309, !tbaa !797
  %line_break.i931 = getelementptr inbounds %struct._Ascii85Info, ptr %141, i64 0, i32 1, !dbg !2310
  %142 = load i64, ptr %line_break.i931, align 8, !dbg !2311, !tbaa !829
  %dec.i932 = add nsw i64 %142, -1, !dbg !2311
  store i64 %dec.i932, ptr %line_break.i931, align 8, !dbg !2311, !tbaa !829
  %cmp18.i933 = icmp sgt i64 %142, 0, !dbg !2312
  %cmp21.not.i934 = icmp eq i8 %140, 37
  %or.cond.i935 = select i1 %cmp18.i933, i1 true, i1 %cmp21.not.i934, !dbg !2313
  br i1 %or.cond.i935, label %if.end27.i944, label %if.then23.i940, !dbg !2313

if.then23.i940:                                   ; preds = %for.body14.i936
  %call24.i937 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext 10) #11, !dbg !2314
  %143 = load ptr, ptr %ascii85.i890, align 8, !dbg !2315, !tbaa !797
  %line_break26.i938 = getelementptr inbounds %struct._Ascii85Info, ptr %143, i64 0, i32 1, !dbg !2316
  store i64 72, ptr %line_break26.i938, align 8, !dbg !2317, !tbaa !829
  %.pre78.i939 = load i8, ptr %q.071.i930, align 1, !dbg !2318, !tbaa !887
  br label %if.end27.i944, !dbg !2319

if.end27.i944:                                    ; preds = %if.then23.i940, %for.body14.i936
  %144 = phi i8 [ %.pre78.i939, %if.then23.i940 ], [ %140, %for.body14.i936 ], !dbg !2318
  %call28.i941 = call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext %144) #11, !dbg !2320
  %incdec.ptr.i942 = getelementptr inbounds i8, ptr %q.071.i930, i64 1, !dbg !2321
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i942, metadata !967, metadata !DIExpression()) #11, !dbg !2263
  %145 = load i8, ptr %incdec.ptr.i942, align 1, !dbg !2307, !tbaa !887
  %cmp12.not.i943 = icmp eq i8 %145, 0, !dbg !2308
  br i1 %cmp12.not.i943, label %for.end.i948, label %for.body14.i936, !dbg !2292, !llvm.loop !2322

for.end.i948:                                     ; preds = %if.end27.i944, %Ascii85Tuple.exit.i928
  %add.ptr.i945 = getelementptr inbounds i8, ptr %p.073.i897, i64 8, !dbg !2324
  call void @llvm.dbg.value(metadata ptr %add.ptr.i945, metadata !968, metadata !DIExpression()) #11, !dbg !2263
  %sub.i946 = add nsw i64 %n.074.i896, -4, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %sub.i946, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  %cmp10.i947 = icmp sgt i64 %n.074.i896, 7, !dbg !2326
  br i1 %cmp10.i947, label %for.body.i910, label %for.end30.i951, !dbg !2274, !llvm.loop !2327

for.end30.i951:                                   ; preds = %for.end.i948
  %.pre79.i949 = load ptr, ptr %ascii85.i890, align 8, !dbg !2329, !tbaa !797
  store i64 %sub.i946, ptr %.pre79.i949, align 8, !dbg !2330, !tbaa !832
  %add.ptr33.i950 = getelementptr inbounds i8, ptr %p.073.i897, i64 4, !dbg !2331
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %add.ptr33.i950, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2263
  %146 = load i8, ptr %add.ptr33.i950, align 1, !dbg !2332, !tbaa !887
  %arrayidx41.i9541033 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre79.i949, i64 0, i32 2, i64 0, !dbg !2333
  store i8 %146, ptr %arrayidx41.i9541033, align 1, !dbg !2334, !tbaa !887
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  br label %for.body37.for.body37_crit_edge.i960, !dbg !2335

for.body37.for.body37_crit_edge.i960:             ; preds = %for.end30.i951, %for.body37.for.body37_crit_edge.i960
  %inc43.i9551035 = phi i64 [ 1, %for.end30.i951 ], [ %inc43.i955, %for.body37.for.body37_crit_edge.i960 ]
  %p.176.i9531034 = phi ptr [ %add.ptr33.i950, %for.end30.i951 ], [ %incdec.ptr38.i958, %for.body37.for.body37_crit_edge.i960 ]
  call void @llvm.dbg.value(metadata ptr %p.176.i9531034, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2263
  %incdec.ptr38.i958 = getelementptr inbounds i8, ptr %p.176.i9531034, i64 1, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i958, metadata !968, metadata !DIExpression()) #11, !dbg !2263
  %.pre80.i959 = load ptr, ptr %ascii85.i890, align 8, !dbg !2337, !tbaa !797
  call void @llvm.dbg.value(metadata i64 %inc43.i9551035, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %incdec.ptr38.i958, metadata !968, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !2263
  %147 = load i8, ptr %incdec.ptr38.i958, align 1, !dbg !2332, !tbaa !887
  %arrayidx41.i954 = getelementptr inbounds %struct._Ascii85Info, ptr %.pre80.i959, i64 0, i32 2, i64 %inc43.i9551035, !dbg !2333
  store i8 %147, ptr %arrayidx41.i954, align 1, !dbg !2334, !tbaa !887
  %inc43.i955 = add nuw nsw i64 %inc43.i9551035, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %inc43.i955, metadata !969, metadata !DIExpression()) #11, !dbg !2263
  %exitcond.not.i956 = icmp eq i64 %inc43.i955, 4, !dbg !2339
  br i1 %exitcond.not.i956, label %for.inc415, label %for.body37.for.body37_crit_edge.i960, !dbg !2335, !llvm.loop !2340

for.inc415:                                       ; preds = %for.body37.for.body37_crit_edge.i960, %if.else412, %if.then410, %for.body396
  %byte.26 = phi i8 [ %byte.251037, %for.body396 ], [ 0, %if.then410 ], [ 0, %if.else412 ], [ 0, %for.body37.for.body37_crit_edge.i960 ], !dbg !1634
  %bit.22 = phi i8 [ %127, %for.body396 ], [ -128, %if.then410 ], [ -128, %if.else412 ], [ -128, %for.body37.for.body37_crit_edge.i960 ], !dbg !2342
  call void @llvm.dbg.value(metadata i8 %bit.22, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.26, metadata !1631, metadata !DIExpression()), !dbg !1634
  %inc416 = add nuw nsw i32 %k.21036, 1, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %inc416, metadata !1618, metadata !DIExpression()), !dbg !1634
  %exitcond1043.not = icmp eq i32 %inc416, 11, !dbg !2344
  br i1 %exitcond1043.not, label %for.end417, label %for.body396, !dbg !2250, !llvm.loop !2345

for.end417:                                       ; preds = %for.inc415
  %or420660 = or i8 %bit.22, %byte.26, !dbg !2347
  call void @llvm.dbg.value(metadata i8 %or420660, metadata !1631, metadata !DIExpression()), !dbg !1634
  %148 = lshr i8 %bit.22, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i8 %148, metadata !1632, metadata !DIExpression()), !dbg !1634
  %cmp427 = icmp ult i8 %bit.22, 2, !dbg !2351
  br i1 %cmp427, label %if.then429, label %for.inc440, !dbg !2350

if.then429:                                       ; preds = %for.end417
  %call432 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2353
  %cmp433 = icmp eq i32 %call432, 0, !dbg !2353
  br i1 %cmp433, label %if.then435, label %if.else437, !dbg !2356

if.then435:                                       ; preds = %if.then429
  %call436 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %or420660) #11, !dbg !2353
  br label %for.inc440, !dbg !2353

if.else437:                                       ; preds = %if.then429
  call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %or420660), !dbg !2353
  br label %for.inc440

for.inc440:                                       ; preds = %if.then435, %if.else437, %for.end417
  %byte.27 = phi i8 [ %or420660, %for.end417 ], [ 0, %if.else437 ], [ 0, %if.then435 ], !dbg !2357
  %bit.23 = phi i8 [ %148, %for.end417 ], [ -128, %if.else437 ], [ -128, %if.then435 ], !dbg !2357
  call void @llvm.dbg.value(metadata i8 %bit.23, metadata !1632, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 %byte.27, metadata !1631, metadata !DIExpression()), !dbg !1634
  %inc441 = add nuw nsw i64 %i.01039, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %inc441, metadata !1622, metadata !DIExpression()), !dbg !1634
  %exitcond1044.not = icmp eq i64 %inc441, 6, !dbg !2359
  br i1 %exitcond1044.not, label %for.end442, label %for.cond393.preheader, !dbg !2248, !llvm.loop !2360

for.end442:                                       ; preds = %for.inc440
  %cmp444.not = icmp eq i8 %bit.23, -128, !dbg !2362
  br i1 %cmp444.not, label %if.end458, label %if.then448, !dbg !2364

if.then448:                                       ; preds = %for.end442
  %call451 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2365
  %cmp452 = icmp eq i32 %call451, 0, !dbg !2368
  br i1 %cmp452, label %if.then454, label %if.else456, !dbg !2369

if.then454:                                       ; preds = %if.then448
  %call455 = call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %byte.27) #11, !dbg !2370
  br label %if.end458, !dbg !2371

if.else456:                                       ; preds = %if.then448
  call void @Ascii85Encode(ptr noundef %image, i8 noundef zeroext %byte.27), !dbg !2372
  br label %if.end458

if.end458:                                        ; preds = %if.then454, %if.else456, %for.end442
  %call461 = call i32 @LocaleCompare(ptr noundef nonnull %magick, ptr noundef nonnull @.str.6) #11, !dbg !2373
  %cmp462.not = icmp eq i32 %call461, 0, !dbg !2375
  br i1 %cmp462.not, label %if.end465, label %if.then464, !dbg !2376

if.then464:                                       ; preds = %if.end458
  call void @Ascii85Flush(ptr noundef %image), !dbg !2377
  br label %if.end465, !dbg !2377

if.end465:                                        ; preds = %if.then464, %if.end458
  %call466 = call ptr @DestroyImage(ptr noundef nonnull %call22) #11, !dbg !2378
  call void @llvm.dbg.value(metadata ptr %call466, metadata !1620, metadata !DIExpression()), !dbg !1634
  %call467 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call9) #11, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %call467, metadata !1633, metadata !DIExpression()), !dbg !1634
  br label %cleanup, !dbg !2380

cleanup:                                          ; preds = %if.then13, %if.end465, %if.then24
  %retval.0 = phi i32 [ 0, %if.then24 ], [ 1, %if.end465 ], [ 0, %if.then13 ], !dbg !1634
  ret i32 %retval.0, !dbg !2381
}

declare !dbg !2382 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2385 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !2389 i32 @SetImageType(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2394 ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: hot
declare !dbg !2398 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !2402 ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #4

declare !dbg !2406 ptr @DestroyImage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @LZWEncodeImage(ptr noundef %image, i64 noundef %length, ptr noalias nocapture noundef readonly %pixels) local_unnamed_addr #0 !dbg !723 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !729, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %length, metadata !730, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !731, metadata !DIExpression()), !dbg !2409
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2410
  %0 = load i32, ptr %debug, align 8, !dbg !2410, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !2412
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2413

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2414
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 981, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !2415
  br label %if.end, !dbg !2416

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef 4096, i64 noundef 24) #14, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %call1, metadata !739, metadata !DIExpression()), !dbg !2409
  %cmp2 = icmp eq ptr %call1, null, !dbg !2418
  br i1 %cmp2, label %cleanup, label %while.body.preheader, !dbg !2420

while.body.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 2147483648, metadata !733, metadata !DIExpression()), !dbg !2409
  %call8 = tail call i64 @WriteBlobByte(ptr noundef nonnull %image, i8 noundef zeroext -128) #11, !dbg !2421
  call void @llvm.dbg.value(metadata i64 2147483648, metadata !733, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shl, DW_OP_stack_value)), !dbg !2409
  call void @llvm.dbg.value(metadata i64 undef, metadata !734, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2409
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()), !dbg !2409
  br label %for.body, !dbg !2424

for.body:                                         ; preds = %while.body.preheader, %for.body
  %index.0276 = phi i64 [ 0, %while.body.preheader ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %index.0276, metadata !738, metadata !DIExpression()), !dbg !2409
  %arrayidx = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.0276, !dbg !2426
  store i64 -1, ptr %arrayidx, align 8, !dbg !2429, !tbaa !2430
  %suffix = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.0276, i32 1, !dbg !2432
  store i64 %index.0276, ptr %suffix, align 8, !dbg !2433, !tbaa !2434
  %next = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.0276, i32 2, !dbg !2435
  store i64 -1, ptr %next, align 8, !dbg !2436, !tbaa !2437
  %inc = add nuw nsw i64 %index.0276, 1, !dbg !2438
  call void @llvm.dbg.value(metadata i64 %inc, metadata !738, metadata !DIExpression()), !dbg !2409
  %exitcond.not = icmp eq i64 %inc, 256, !dbg !2439
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2424, !llvm.loop !2440

for.end:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 258, metadata !737, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 9, metadata !735, metadata !DIExpression()), !dbg !2409
  %1 = load i8, ptr %pixels, align 1, !dbg !2442, !tbaa !887
  %conv18 = zext i8 %1 to i64, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %conv18, metadata !736, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 1, metadata !732, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 258, metadata !737, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 9, metadata !735, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 1, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 549755813888, metadata !733, metadata !DIExpression()), !dbg !2409
  %cmp20291 = icmp sgt i64 %length, 1, !dbg !2444
  br i1 %cmp20291, label %while.cond23.preheader, label %for.end117, !dbg !2447

while.cond23.preheader:                           ; preds = %for.end, %for.inc115
  %next_index.0303 = phi i64 [ %next_index.2, %for.inc115 ], [ 258, %for.end ]
  %last_code.0301 = phi i64 [ %last_code.2, %for.inc115 ], [ %conv18, %for.end ]
  %code_width.0299 = phi i64 [ %code_width.2, %for.inc115 ], [ 9, %for.end ]
  %number_bits.1297 = phi i64 [ %number_bits.5, %for.inc115 ], [ 1, %for.end ]
  %accumulator.1295 = phi i64 [ %accumulator.5, %for.inc115 ], [ 549755813888, %for.end ]
  %i.0292 = phi i64 [ %inc116, %for.inc115 ], [ 1, %for.end ]
  call void @llvm.dbg.value(metadata i64 %next_index.0303, metadata !737, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %last_code.0301, metadata !736, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %code_width.0299, metadata !735, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %number_bits.1297, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.1295, metadata !733, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %i.0292, metadata !732, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %last_code.0301, metadata !738, metadata !DIExpression()), !dbg !2409
  %cmp24.not277 = icmp eq i64 %last_code.0301, -1, !dbg !2448
  br i1 %cmp24.not277, label %for.inc115, label %while.body26.lr.ph, !dbg !2450

while.body26.lr.ph:                               ; preds = %while.cond23.preheader
  %arrayidx33 = getelementptr inbounds i8, ptr %pixels, i64 %i.0292
  br label %while.body26, !dbg !2450

while.body26:                                     ; preds = %while.body26.lr.ph, %if.then37
  %index.1278 = phi i64 [ %last_code.0301, %while.body26.lr.ph ], [ %5, %if.then37 ]
  call void @llvm.dbg.value(metadata i64 %index.1278, metadata !738, metadata !DIExpression()), !dbg !2409
  %arrayidx27 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.1278, !dbg !2451
  %2 = load i64, ptr %arrayidx27, align 8, !dbg !2453, !tbaa !2430
  %cmp29.not = icmp eq i64 %2, %last_code.0301, !dbg !2454
  br i1 %cmp29.not, label %lor.lhs.false, label %if.then37, !dbg !2455

lor.lhs.false:                                    ; preds = %while.body26
  %suffix32 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.1278, i32 1, !dbg !2456
  %3 = load i64, ptr %suffix32, align 8, !dbg !2456, !tbaa !2434
  %4 = load i8, ptr %arrayidx33, align 1, !dbg !2457, !tbaa !887
  %conv34 = zext i8 %4 to i64, !dbg !2458
  %cmp35.not = icmp eq i64 %3, %conv34, !dbg !2459
  br i1 %cmp35.not, label %for.inc115, label %if.then37, !dbg !2460

if.then37:                                        ; preds = %lor.lhs.false, %while.body26
  %next39 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.1278, i32 2, !dbg !2461
  %5 = load i64, ptr %next39, align 8, !dbg !2461, !tbaa !2437
  call void @llvm.dbg.value(metadata i64 %5, metadata !738, metadata !DIExpression()), !dbg !2409
  %cmp24.not = icmp eq i64 %5, -1, !dbg !2448
  br i1 %cmp24.not, label %while.end41, label %while.body26, !dbg !2450, !llvm.loop !2462

while.end41:                                      ; preds = %if.then37
  call void @llvm.dbg.value(metadata i64 %last_code.0301, metadata !736, metadata !DIExpression()), !dbg !2409
  br i1 %cmp24.not277, label %for.inc115, label %if.then44, !dbg !2464

if.then44:                                        ; preds = %while.end41
  %sub45 = sub i64 32, %code_width.0299, !dbg !2465
  %sub46 = sub i64 %sub45, %number_bits.1297, !dbg !2465
  %shl47 = shl i64 %last_code.0301, %sub46, !dbg !2465
  %add48 = add i64 %shl47, %accumulator.1295, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %add48, metadata !733, metadata !DIExpression()), !dbg !2409
  %add49 = add i64 %code_width.0299, %number_bits.1297, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %add49, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp51280 = icmp ugt i64 %add49, 7, !dbg !2465
  br i1 %cmp51280, label %while.body53, label %while.end59, !dbg !2465

while.body53:                                     ; preds = %if.then44, %while.body53
  %number_bits.2282 = phi i64 [ %sub58, %while.body53 ], [ %add49, %if.then44 ]
  %accumulator.2281 = phi i64 [ %shl57, %while.body53 ], [ %add48, %if.then44 ]
  call void @llvm.dbg.value(metadata i64 %number_bits.2282, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.2281, metadata !733, metadata !DIExpression()), !dbg !2409
  %shr54 = lshr i64 %accumulator.2281, 24, !dbg !2469
  %conv55 = trunc i64 %shr54 to i8, !dbg !2469
  %call56 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv55) #11, !dbg !2469
  %shl57 = shl i64 %accumulator.2281, 8, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %shl57, metadata !733, metadata !DIExpression()), !dbg !2409
  %sub58 = add i64 %number_bits.2282, -8, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %sub58, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp51 = icmp ugt i64 %sub58, 7, !dbg !2465
  br i1 %cmp51, label %while.body53, label %while.end59, !dbg !2465, !llvm.loop !2471

while.end59:                                      ; preds = %while.body53, %if.then44
  %accumulator.2.lcssa = phi i64 [ %add48, %if.then44 ], [ %shl57, %while.body53 ], !dbg !2472
  %number_bits.2.lcssa = phi i64 [ %add49, %if.then44 ], [ %sub58, %while.body53 ], !dbg !2472
  %arrayidx60 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %next_index.0303, !dbg !2473
  store i64 %last_code.0301, ptr %arrayidx60, align 8, !dbg !2474, !tbaa !2430
  %arrayidx62 = getelementptr inbounds i8, ptr %pixels, i64 %i.0292, !dbg !2475
  %6 = load i8, ptr %arrayidx62, align 1, !dbg !2475, !tbaa !887
  %7 = zext i8 %6 to i64
  %suffix66 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %next_index.0303, i32 1, !dbg !2476
  store i64 %7, ptr %suffix66, align 8, !dbg !2477, !tbaa !2434
  %next68 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %last_code.0301, i32 2, !dbg !2478
  %8 = load i64, ptr %next68, align 8, !dbg !2478, !tbaa !2437
  %next70 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %next_index.0303, i32 2, !dbg !2479
  store i64 %8, ptr %next70, align 8, !dbg !2480, !tbaa !2437
  store i64 %next_index.0303, ptr %next68, align 8, !dbg !2481, !tbaa !2437
  %inc73 = add i64 %next_index.0303, 1, !dbg !2482
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !737, metadata !DIExpression()), !dbg !2409
  %shr74 = lshr i64 %inc73, %code_width.0299, !dbg !2483
  %cmp75.not = icmp eq i64 %shr74, 0, !dbg !2485
  br i1 %cmp75.not, label %for.inc115, label %if.then77, !dbg !2486

if.then77:                                        ; preds = %while.end59
  %inc78 = add i64 %code_width.0299, 1, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !735, metadata !DIExpression()), !dbg !2409
  %cmp79 = icmp ugt i64 %inc78, 12, !dbg !2489
  br i1 %cmp79, label %if.then81, label %for.inc115, !dbg !2491

if.then81:                                        ; preds = %if.then77
  call void @llvm.dbg.value(metadata i64 %code_width.0299, metadata !735, metadata !DIExpression()), !dbg !2409
  %sub83 = sub i64 %sub45, %number_bits.2.lcssa, !dbg !2492
  %shl84 = shl i64 256, %sub83, !dbg !2492
  %add85 = add i64 %shl84, %accumulator.2.lcssa, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %add85, metadata !733, metadata !DIExpression()), !dbg !2409
  %add86 = add i64 %number_bits.2.lcssa, %code_width.0299, !dbg !2492
  call void @llvm.dbg.value(metadata i64 %add86, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp88285 = icmp ugt i64 %add86, 7, !dbg !2492
  br i1 %cmp88285, label %while.body90, label %for.cond97.preheader, !dbg !2492

for.cond97.preheader:                             ; preds = %while.body90, %if.then81
  %accumulator.3.lcssa = phi i64 [ %add85, %if.then81 ], [ %shl94, %while.body90 ], !dbg !2495
  %number_bits.3.lcssa = phi i64 [ %add86, %if.then81 ], [ %sub95, %while.body90 ], !dbg !2495
  call void @llvm.dbg.value(metadata i64 0, metadata !738, metadata !DIExpression()), !dbg !2409
  br label %for.body100, !dbg !2496

while.body90:                                     ; preds = %if.then81, %while.body90
  %number_bits.3287 = phi i64 [ %sub95, %while.body90 ], [ %add86, %if.then81 ]
  %accumulator.3286 = phi i64 [ %shl94, %while.body90 ], [ %add85, %if.then81 ]
  call void @llvm.dbg.value(metadata i64 %number_bits.3287, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.3286, metadata !733, metadata !DIExpression()), !dbg !2409
  %shr91 = lshr i64 %accumulator.3286, 24, !dbg !2498
  %conv92 = trunc i64 %shr91 to i8, !dbg !2498
  %call93 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv92) #11, !dbg !2498
  %shl94 = shl i64 %accumulator.3286, 8, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %shl94, metadata !733, metadata !DIExpression()), !dbg !2409
  %sub95 = add i64 %number_bits.3287, -8, !dbg !2498
  call void @llvm.dbg.value(metadata i64 %sub95, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp88 = icmp ugt i64 %sub95, 7, !dbg !2492
  br i1 %cmp88, label %while.body90, label %for.cond97.preheader, !dbg !2492, !llvm.loop !2500

for.body100:                                      ; preds = %for.cond97.preheader, %for.body100
  %index.2290 = phi i64 [ 0, %for.cond97.preheader ], [ %inc108, %for.body100 ]
  call void @llvm.dbg.value(metadata i64 %index.2290, metadata !738, metadata !DIExpression()), !dbg !2409
  %arrayidx101 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.2290, !dbg !2501
  store i64 -1, ptr %arrayidx101, align 8, !dbg !2504, !tbaa !2430
  %suffix104 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.2290, i32 1, !dbg !2505
  store i64 %index.2290, ptr %suffix104, align 8, !dbg !2506, !tbaa !2434
  %next106 = getelementptr inbounds %struct._TableType, ptr %call1, i64 %index.2290, i32 2, !dbg !2507
  store i64 -1, ptr %next106, align 8, !dbg !2508, !tbaa !2437
  %inc108 = add nuw nsw i64 %index.2290, 1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %inc108, metadata !738, metadata !DIExpression()), !dbg !2409
  %exitcond321.not = icmp eq i64 %inc108, 256, !dbg !2510
  br i1 %exitcond321.not, label %for.inc115, label %for.body100, !dbg !2496, !llvm.loop !2511

for.inc115:                                       ; preds = %lor.lhs.false, %for.body100, %while.cond23.preheader, %while.end59, %if.then77, %while.end41
  %accumulator.5 = phi i64 [ %accumulator.1295, %while.end41 ], [ %accumulator.2.lcssa, %if.then77 ], [ %accumulator.2.lcssa, %while.end59 ], [ %accumulator.1295, %while.cond23.preheader ], [ %accumulator.3.lcssa, %for.body100 ], [ %accumulator.1295, %lor.lhs.false ], !dbg !2409
  %number_bits.5 = phi i64 [ %number_bits.1297, %while.end41 ], [ %number_bits.2.lcssa, %if.then77 ], [ %number_bits.2.lcssa, %while.end59 ], [ %number_bits.1297, %while.cond23.preheader ], [ %number_bits.3.lcssa, %for.body100 ], [ %number_bits.1297, %lor.lhs.false ], !dbg !2409
  %code_width.2 = phi i64 [ %code_width.0299, %while.end41 ], [ %inc78, %if.then77 ], [ %code_width.0299, %while.end59 ], [ %code_width.0299, %while.cond23.preheader ], [ 9, %for.body100 ], [ %code_width.0299, %lor.lhs.false ], !dbg !2409
  %last_code.2 = phi i64 [ -1, %while.end41 ], [ %7, %if.then77 ], [ %7, %while.end59 ], [ -1, %while.cond23.preheader ], [ %7, %for.body100 ], [ %index.1278, %lor.lhs.false ], !dbg !2513
  %next_index.2 = phi i64 [ %next_index.0303, %while.end41 ], [ %inc73, %if.then77 ], [ %inc73, %while.end59 ], [ %next_index.0303, %while.cond23.preheader ], [ 258, %for.body100 ], [ %next_index.0303, %lor.lhs.false ], !dbg !2409
  call void @llvm.dbg.value(metadata i64 %next_index.2, metadata !737, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %last_code.2, metadata !736, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %code_width.2, metadata !735, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %number_bits.5, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.5, metadata !733, metadata !DIExpression()), !dbg !2409
  %inc116 = add nuw nsw i64 %i.0292, 1, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !732, metadata !DIExpression()), !dbg !2409
  %exitcond322.not = icmp eq i64 %inc116, %length, !dbg !2444
  br i1 %exitcond322.not, label %for.end117, label %while.cond23.preheader, !dbg !2447, !llvm.loop !2515

for.end117:                                       ; preds = %for.inc115, %for.end
  %accumulator.1.lcssa = phi i64 [ 549755813888, %for.end ], [ %accumulator.5, %for.inc115 ], !dbg !2409
  %number_bits.1.lcssa = phi i64 [ 1, %for.end ], [ %number_bits.5, %for.inc115 ], !dbg !2409
  %code_width.0.lcssa = phi i64 [ 9, %for.end ], [ %code_width.2, %for.inc115 ], !dbg !2409
  %last_code.0.lcssa = phi i64 [ %conv18, %for.end ], [ %last_code.2, %for.inc115 ], !dbg !2409
  %sub118 = sub i64 32, %code_width.0.lcssa, !dbg !2517
  %sub119 = sub i64 %sub118, %number_bits.1.lcssa, !dbg !2517
  %shl120 = shl i64 %last_code.0.lcssa, %sub119, !dbg !2517
  %add121 = add i64 %shl120, %accumulator.1.lcssa, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %add121, metadata !733, metadata !DIExpression()), !dbg !2409
  %add122 = add i64 %code_width.0.lcssa, %number_bits.1.lcssa, !dbg !2517
  call void @llvm.dbg.value(metadata i64 %add122, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp124309 = icmp ugt i64 %add122, 7, !dbg !2517
  br i1 %cmp124309, label %while.body126, label %while.end132, !dbg !2517

while.body126:                                    ; preds = %for.end117, %while.body126
  %number_bits.6311 = phi i64 [ %sub131, %while.body126 ], [ %add122, %for.end117 ]
  %accumulator.6310 = phi i64 [ %shl130, %while.body126 ], [ %add121, %for.end117 ]
  call void @llvm.dbg.value(metadata i64 %number_bits.6311, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.6310, metadata !733, metadata !DIExpression()), !dbg !2409
  %shr127 = lshr i64 %accumulator.6310, 24, !dbg !2519
  %conv128 = trunc i64 %shr127 to i8, !dbg !2519
  %call129 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv128) #11, !dbg !2519
  %shl130 = shl i64 %accumulator.6310, 8, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %shl130, metadata !733, metadata !DIExpression()), !dbg !2409
  %sub131 = add i64 %number_bits.6311, -8, !dbg !2519
  call void @llvm.dbg.value(metadata i64 %sub131, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp124 = icmp ugt i64 %sub131, 7, !dbg !2517
  br i1 %cmp124, label %while.body126, label %while.end132, !dbg !2517, !llvm.loop !2521

while.end132:                                     ; preds = %while.body126, %for.end117
  %accumulator.6.lcssa = phi i64 [ %add121, %for.end117 ], [ %shl130, %while.body126 ], !dbg !2522
  %number_bits.6.lcssa = phi i64 [ %add122, %for.end117 ], [ %sub131, %while.body126 ], !dbg !2522
  %sub134 = sub i64 %sub118, %number_bits.6.lcssa, !dbg !2523
  %shl135 = shl i64 257, %sub134, !dbg !2523
  %add136 = add i64 %shl135, %accumulator.6.lcssa, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %add136, metadata !733, metadata !DIExpression()), !dbg !2409
  %add137 = add i64 %number_bits.6.lcssa, %code_width.0.lcssa, !dbg !2523
  call void @llvm.dbg.value(metadata i64 %add137, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp139314 = icmp ugt i64 %add137, 7, !dbg !2523
  br i1 %cmp139314, label %while.body141, label %while.end147, !dbg !2523

while.body141:                                    ; preds = %while.end132, %while.body141
  %number_bits.7316 = phi i64 [ %sub146, %while.body141 ], [ %add137, %while.end132 ]
  %accumulator.7315 = phi i64 [ %shl145, %while.body141 ], [ %add136, %while.end132 ]
  call void @llvm.dbg.value(metadata i64 %number_bits.7316, metadata !734, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %accumulator.7315, metadata !733, metadata !DIExpression()), !dbg !2409
  %shr142 = lshr i64 %accumulator.7315, 24, !dbg !2525
  %conv143 = trunc i64 %shr142 to i8, !dbg !2525
  %call144 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv143) #11, !dbg !2525
  %shl145 = shl i64 %accumulator.7315, 8, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %shl145, metadata !733, metadata !DIExpression()), !dbg !2409
  %sub146 = add i64 %number_bits.7316, -8, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %sub146, metadata !734, metadata !DIExpression()), !dbg !2409
  %cmp139 = icmp ugt i64 %sub146, 7, !dbg !2523
  br i1 %cmp139, label %while.body141, label %while.end147, !dbg !2523, !llvm.loop !2527

while.end147:                                     ; preds = %while.body141, %while.end132
  %accumulator.7.lcssa = phi i64 [ %add136, %while.end132 ], [ %shl145, %while.body141 ], !dbg !2528
  %number_bits.7.lcssa = phi i64 [ %add137, %while.end132 ], [ %sub146, %while.body141 ], !dbg !2528
  %cmp148.not = icmp eq i64 %number_bits.7.lcssa, 0, !dbg !2529
  br i1 %cmp148.not, label %if.end154, label %if.then150, !dbg !2531

if.then150:                                       ; preds = %while.end147
  %shr151 = lshr i64 %accumulator.7.lcssa, 24, !dbg !2532
  %conv152 = trunc i64 %shr151 to i8, !dbg !2533
  %call153 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv152) #11, !dbg !2534
  br label %if.end154, !dbg !2535

if.end154:                                        ; preds = %if.then150, %while.end147
  %call155 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #11, !dbg !2536
  call void @llvm.dbg.value(metadata ptr %call155, metadata !739, metadata !DIExpression()), !dbg !2409
  br label %cleanup, !dbg !2537

cleanup:                                          ; preds = %if.end, %if.end154
  %retval.0 = phi i32 [ 1, %if.end154 ], [ 0, %if.end ], !dbg !2409
  ret i32 %retval.0, !dbg !2538
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PackbitsEncodeImage(ptr noundef %image, i64 noundef %length, ptr noalias noundef readonly %pixels) local_unnamed_addr #0 !dbg !2539 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2541, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 %length, metadata !2542, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !2543, metadata !DIExpression()), !dbg !2548
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2549
  %0 = load i32, ptr %debug, align 8, !dbg !2549, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !2551
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2552

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2553
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1116, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !2554
  br label %if.end, !dbg !2555

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef 128, i64 noundef 1) #14, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2547, metadata !DIExpression()), !dbg !2548
  %cmp2 = icmp eq ptr %call1, null, !dbg !2557
  br i1 %cmp2, label %if.then5, label %for.cond.outer, !dbg !2559

if.then5:                                         ; preds = %if.end
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2560
  %filename6 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2560
  %call8 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1121, i32 noundef 400, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %filename6) #11, !dbg !2560
  br label %cleanup, !dbg !2560

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %i.0 = phi i64 [ %i.0.ph, %for.cond.outer ], [ 0, %for.cond.backedge ], !dbg !2563
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2545, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %pixels.addr.0.ph, metadata !2543, metadata !DIExpression()), !dbg !2548
  switch i64 %i.0, label %sw.default [
    i64 0, label %for.end122
    i64 1, label %sw.bb
    i64 2, label %sw.bb14
    i64 3, label %sw.bb18
  ], !dbg !2565

sw.bb:                                            ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2545, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2548
  %call12 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 0) #11, !dbg !2566
  %1 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2571, !tbaa !887
  %call13 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %1) #11, !dbg !2572
  br label %for.cond.backedge, !dbg !2573

sw.bb14:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2545, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !2548
  %call15 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 1) #11, !dbg !2574
  %2 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2576, !tbaa !887
  %call16 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %2) #11, !dbg !2577
  %3 = load i8, ptr %arrayidx, align 1, !dbg !2578, !tbaa !887
  %call17 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %3) #11, !dbg !2579
  br label %for.cond.backedge, !dbg !2580

sw.bb18:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2545, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !2548
  %4 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2581, !tbaa !887
  %5 = load i8, ptr %add.ptr, align 1, !dbg !2584, !tbaa !887
  %cmp21 = icmp eq i8 %4, %5, !dbg !2585
  br i1 %cmp21, label %land.lhs.true, label %if.end32, !dbg !2586

land.lhs.true:                                    ; preds = %sw.bb18
  %6 = load i8, ptr %add.ptr25, align 1, !dbg !2587, !tbaa !887
  %cmp27 = icmp eq i8 %4, %6, !dbg !2588
  br i1 %cmp27, label %if.then29, label %if.end32, !dbg !2589

if.then29:                                        ; preds = %land.lhs.true
  %call30 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext -2) #11, !dbg !2590
  %7 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2592, !tbaa !887
  %call31 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %7) #11, !dbg !2593
  br label %for.cond.backedge, !dbg !2594

if.end32:                                         ; preds = %land.lhs.true, %sw.bb18
  %call33 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext 2) #11, !dbg !2595
  %8 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2596, !tbaa !887
  %call34 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %8) #11, !dbg !2597
  %9 = load i8, ptr %add.ptr, align 1, !dbg !2598, !tbaa !887
  %call36 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %9) #11, !dbg !2599
  %10 = load i8, ptr %arrayidx37, align 1, !dbg !2600, !tbaa !887
  %call38 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %10) #11, !dbg !2601
  br label %for.cond.backedge, !dbg !2602

for.cond.backedge:                                ; preds = %if.end32, %if.then29, %sw.bb14, %sw.bb
  br label %for.cond, !dbg !2548, !llvm.loop !2603

sw.default:                                       ; preds = %for.cond
  %11 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2605, !tbaa !887
  %add.ptr40 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 1, !dbg !2608
  %12 = load i8, ptr %add.ptr40, align 1, !dbg !2609, !tbaa !887
  %cmp42 = icmp eq i8 %11, %12, !dbg !2610
  br i1 %cmp42, label %land.lhs.true44, label %if.end72, !dbg !2611

land.lhs.true44:                                  ; preds = %sw.default
  %add.ptr47 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 2, !dbg !2612
  %13 = load i8, ptr %add.ptr47, align 1, !dbg !2613, !tbaa !887
  %cmp49 = icmp eq i8 %11, %13, !dbg !2614
  br i1 %cmp49, label %while.cond.preheader, label %if.end72, !dbg !2615

while.cond.preheader:                             ; preds = %land.lhs.true44
  %smax = call i64 @llvm.smax.i64(i64 %i.0, i64 3), !dbg !2616
  %14 = trunc i64 %smax to i32, !dbg !2616
  br label %while.cond, !dbg !2616

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv206 = phi i64 [ 3, %while.cond.preheader ], [ %indvars.iv.next207, %while.body ], !dbg !2618
  call void @llvm.dbg.value(metadata i64 %indvars.iv206, metadata !2544, metadata !DIExpression()), !dbg !2548
  %exitcond210.not = icmp eq i64 %indvars.iv206, %smax, !dbg !2619
  br i1 %exitcond210.not, label %while.end, label %land.rhs, !dbg !2620

land.rhs:                                         ; preds = %while.cond
  %add.ptr56 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 %indvars.iv206, !dbg !2621
  %15 = load i8, ptr %add.ptr56, align 1, !dbg !2622, !tbaa !887
  %cmp58 = icmp eq i8 %11, %15, !dbg !2623
  br i1 %cmp58, label %while.body, label %while.end.split.loop.exit216, !dbg !2616

while.body:                                       ; preds = %land.rhs
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next207, metadata !2544, metadata !DIExpression()), !dbg !2548
  %exitcond211 = icmp eq i64 %indvars.iv.next207, 127, !dbg !2626
  br i1 %exitcond211, label %while.end, label %while.cond, !dbg !2628, !llvm.loop !2629

while.end.split.loop.exit216:                     ; preds = %land.rhs
  %16 = trunc i64 %indvars.iv206 to i32, !dbg !2620
  br label %while.end, !dbg !2631

while.end:                                        ; preds = %while.body, %while.cond, %while.end.split.loop.exit216
  %count.1 = phi i32 [ %16, %while.end.split.loop.exit216 ], [ %14, %while.cond ], [ 127, %while.body ], !dbg !2618
  call void @llvm.dbg.value(metadata i32 %count.1, metadata !2544, metadata !DIExpression()), !dbg !2548
  %conv64 = sext i32 %count.1 to i64, !dbg !2631
  call void @llvm.dbg.value(metadata !DIArgList(i64 %i.0, i64 %conv64), metadata !2545, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2548
  %17 = trunc i32 %count.1 to i8, !dbg !2632
  %conv67 = sub i8 1, %17, !dbg !2632
  %call68 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv67) #11, !dbg !2633
  %18 = load i8, ptr %pixels.addr.0.ph, align 1, !dbg !2634, !tbaa !887
  %call69 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %18) #11, !dbg !2635
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pixels.addr.0.ph, i64 %conv64), metadata !2543, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2548
  br label %for.cond.outer.backedge, !dbg !2636

for.cond.outer.backedge:                          ; preds = %while.end107, %for.body116.for.body116_crit_edge, %while.end
  %conv108.pn = phi i64 [ %conv64, %while.end ], [ %conv108, %for.body116.for.body116_crit_edge ], [ %conv108, %while.end107 ]
  %i.0.ph.be = sub nsw i64 %i.0, %conv108.pn, !dbg !2637
  %pixels.addr.0.ph.be = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 %conv108.pn, !dbg !2637
  br label %for.cond.outer, !dbg !2565, !llvm.loop !2603

for.cond.outer:                                   ; preds = %if.end, %for.cond.outer.backedge
  %pixels.addr.0.ph = phi ptr [ %pixels.addr.0.ph.be, %for.cond.outer.backedge ], [ %pixels, %if.end ]
  %i.0.ph = phi i64 [ %i.0.ph.be, %for.cond.outer.backedge ], [ %length, %if.end ]
  %add.ptr = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 1
  %add.ptr25 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 2
  %arrayidx37 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 2
  %arrayidx = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 1
  br label %for.cond, !dbg !2565

if.end72:                                         ; preds = %land.lhs.true44, %sw.default
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()), !dbg !2548
  %sub100 = add nsw i64 %i.0, -3
  %add.ptr75 = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 2, !dbg !2638
  br label %while.cond73, !dbg !2639

while.cond73:                                     ; preds = %while.body93.while.cond73_crit_edge, %if.end72
  %19 = phi i8 [ %.pre212, %while.body93.while.cond73_crit_edge ], [ %12, %if.end72 ], !dbg !2640
  %20 = phi i8 [ %.pre, %while.body93.while.cond73_crit_edge ], [ %11, %if.end72 ], !dbg !2641
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body93.while.cond73_crit_edge ], [ 0, %if.end72 ], !dbg !2637
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2544, metadata !DIExpression()), !dbg !2548
  %cmp81.not = icmp eq i8 %20, %19, !dbg !2642
  br i1 %cmp81.not, label %lor.rhs, label %while.body93, !dbg !2643

lor.rhs:                                          ; preds = %while.cond73
  %add.ptr89 = getelementptr inbounds i8, ptr %add.ptr75, i64 %indvars.iv, !dbg !2644
  %21 = load i8, ptr %add.ptr89, align 1, !dbg !2645, !tbaa !887
  %cmp91.not = icmp eq i8 %19, %21, !dbg !2646
  br i1 %cmp91.not, label %while.end107, label %while.body93, !dbg !2639

while.body93:                                     ; preds = %while.cond73, %lor.rhs
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2647
  %arrayidx97 = getelementptr inbounds i8, ptr %call1, i64 %indvars.iv.next, !dbg !2649
  store i8 %20, ptr %arrayidx97, align 1, !dbg !2650, !tbaa !887
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2544, metadata !DIExpression()), !dbg !2548
  %cmp101 = icmp sle i64 %sub100, %indvars.iv.next, !dbg !2651
  %cmp103 = icmp ugt i64 %indvars.iv, 125
  %or.cond = or i1 %cmp103, %cmp101, !dbg !2653
  br i1 %or.cond, label %while.end107, label %while.body93.while.cond73_crit_edge, !dbg !2653, !llvm.loop !2654

while.body93.while.cond73_crit_edge:              ; preds = %while.body93
  %add.ptr75.phi.trans.insert = getelementptr inbounds i8, ptr %pixels.addr.0.ph, i64 %indvars.iv.next
  %.pre = load i8, ptr %add.ptr75.phi.trans.insert, align 1, !dbg !2641, !tbaa !887
  %add.ptr79.phi.trans.insert = getelementptr inbounds i8, ptr %add.ptr75.phi.trans.insert, i64 1
  %.pre212 = load i8, ptr %add.ptr79.phi.trans.insert, align 1, !dbg !2640, !tbaa !887
  br label %while.cond73, !dbg !2653

while.end107:                                     ; preds = %while.body93, %lor.rhs
  %count.3.in = phi i64 [ %indvars.iv.next, %while.body93 ], [ %indvars.iv, %lor.rhs ]
  call void @llvm.dbg.value(metadata i64 %count.3.in, metadata !2544, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2548
  %sext = shl i64 %count.3.in, 32, !dbg !2656
  %conv108 = ashr exact i64 %sext, 32, !dbg !2656
  call void @llvm.dbg.value(metadata !DIArgList(i64 %i.0, i64 %conv108), metadata !2545, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2548
  %22 = trunc i64 %count.3.in to i8, !dbg !2657
  %conv111 = add i8 %22, -1, !dbg !2657
  store i8 %conv111, ptr %call1, align 1, !dbg !2658, !tbaa !887
  call void @llvm.dbg.value(metadata i64 0, metadata !2546, metadata !DIExpression()), !dbg !2548
  %call118219 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %conv111) #11, !dbg !2659
  call void @llvm.dbg.value(metadata i64 0, metadata !2546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2548
  %exitcond.not220 = icmp eq i64 %sext, 0, !dbg !2662
  br i1 %exitcond.not220, label %for.cond.outer.backedge, label %for.body116.for.body116_crit_edge, !dbg !2663, !llvm.loop !2664

for.body116.for.body116_crit_edge:                ; preds = %while.end107, %for.body116.for.body116_crit_edge
  %j.0204221 = phi i64 [ %inc119, %for.body116.for.body116_crit_edge ], [ 0, %while.end107 ]
  call void @llvm.dbg.value(metadata i64 %j.0204221, metadata !2546, metadata !DIExpression()), !dbg !2548
  %inc119 = add nuw nsw i64 %j.0204221, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %inc119, metadata !2546, metadata !DIExpression()), !dbg !2548
  %arrayidx117.phi.trans.insert = getelementptr inbounds i8, ptr %call1, i64 %inc119
  %.pre213 = load i8, ptr %arrayidx117.phi.trans.insert, align 1, !dbg !2667, !tbaa !887
  %call118 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext %.pre213) #11, !dbg !2659
  call void @llvm.dbg.value(metadata i64 %inc119, metadata !2546, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2548
  %exitcond.not = icmp eq i64 %inc119, %conv108, !dbg !2662
  br i1 %exitcond.not, label %for.cond.outer.backedge, label %for.body116.for.body116_crit_edge, !dbg !2663, !llvm.loop !2664

for.end122:                                       ; preds = %for.cond
  %call123 = tail call i64 @WriteBlobByte(ptr noundef %image, i8 noundef zeroext -128) #11, !dbg !2668
  %call124 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #11, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %call124, metadata !2547, metadata !DIExpression()), !dbg !2548
  br label %cleanup, !dbg !2670

cleanup:                                          ; preds = %if.then5, %for.end122
  %retval.0 = phi i32 [ 1, %for.end122 ], [ 0, %if.then5 ], !dbg !2548
  ret i32 %retval.0, !dbg !2671
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ZLIBEncodeImage(ptr noundef %image, i64 noundef %length, ptr nocapture noundef readnone %pixels) local_unnamed_addr #0 !dbg !2672 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %length, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !2678, metadata !DIExpression()), !dbg !2679
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2680
  %0 = load i32, ptr %debug, align 8, !dbg !2680, !tbaa !873
  %cmp.not = icmp eq i32 %0, 0, !dbg !2682
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2683

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2684
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1308, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #11, !dbg !2685
  br label %if.end, !dbg !2686

if.end:                                           ; preds = %if.then, %entry
  %exception = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !2687
  %filename1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2688
  %call3 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1309, i32 noundef 420, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef nonnull %filename1) #11, !dbg !2689
  ret i32 0, !dbg !2690
}

declare !dbg !2691 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { hot nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!778, !779, !780, !781, !782, !783}
!llvm.ident = !{!784}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TWTable", scope: !2, file: !475, line: 178, type: !773, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !471, globals: !746, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/compress.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "cae6ae6356e273ce65402fb9a311ea2c")
!4 = !{!5, !12, !49, !74, !86, !90, !98, !103, !138, !148, !154, !169, !240, !248, !254, !327, !344, !358, !370, !395, !428, !450}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 204, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "UndefinedClass", value: 0)
!10 = !DIEnumerator(name: "DirectClass", value: 1)
!11 = !DIEnumerator(name: "PseudoClass", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 25, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!15 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!16 = !DIEnumerator(name: "RGBColorspace", value: 1)
!17 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!18 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!19 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!20 = !DIEnumerator(name: "LabColorspace", value: 5)
!21 = !DIEnumerator(name: "XYZColorspace", value: 6)
!22 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!23 = !DIEnumerator(name: "YCCColorspace", value: 8)
!24 = !DIEnumerator(name: "YIQColorspace", value: 9)
!25 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!26 = !DIEnumerator(name: "YUVColorspace", value: 11)
!27 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!28 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!29 = !DIEnumerator(name: "HSBColorspace", value: 14)
!30 = !DIEnumerator(name: "HSLColorspace", value: 15)
!31 = !DIEnumerator(name: "HWBColorspace", value: 16)
!32 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!33 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!34 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!35 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!36 = !DIEnumerator(name: "LogColorspace", value: 21)
!37 = !DIEnumerator(name: "CMYColorspace", value: 22)
!38 = !DIEnumerator(name: "LuvColorspace", value: 23)
!39 = !DIEnumerator(name: "HCLColorspace", value: 24)
!40 = !DIEnumerator(name: "LCHColorspace", value: 25)
!41 = !DIEnumerator(name: "LMSColorspace", value: 26)
!42 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!43 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!44 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!45 = !DIEnumerator(name: "HSIColorspace", value: 30)
!46 = !DIEnumerator(name: "HSVColorspace", value: 31)
!47 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!48 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 25, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!52 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!53 = !DIEnumerator(name: "NoCompression", value: 1)
!54 = !DIEnumerator(name: "BZipCompression", value: 2)
!55 = !DIEnumerator(name: "DXT1Compression", value: 3)
!56 = !DIEnumerator(name: "DXT3Compression", value: 4)
!57 = !DIEnumerator(name: "DXT5Compression", value: 5)
!58 = !DIEnumerator(name: "FaxCompression", value: 6)
!59 = !DIEnumerator(name: "Group4Compression", value: 7)
!60 = !DIEnumerator(name: "JPEGCompression", value: 8)
!61 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!62 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!63 = !DIEnumerator(name: "LZWCompression", value: 11)
!64 = !DIEnumerator(name: "RLECompression", value: 12)
!65 = !DIEnumerator(name: "ZipCompression", value: 13)
!66 = !DIEnumerator(name: "ZipSCompression", value: 14)
!67 = !DIEnumerator(name: "PizCompression", value: 15)
!68 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!69 = !DIEnumerator(name: "B44Compression", value: 17)
!70 = !DIEnumerator(name: "B44ACompression", value: 18)
!71 = !DIEnumerator(name: "LZMACompression", value: 19)
!72 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!73 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 75, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85}
!77 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!78 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!79 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!80 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!81 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!82 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!83 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!84 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!85 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "MagickFalse", value: 0)
!89 = !DIEnumerator(name: "MagickTrue", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 42, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!92 = !{!93, !94, !95, !96, !97}
!93 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!94 = !DIEnumerator(name: "SaturationIntent", value: 1)
!95 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!96 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!97 = !DIEnumerator(name: "RelativeIntent", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 88, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!101 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!102 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !104, line: 32, baseType: !7, size: 32, elements: !105)
!104 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137}
!106 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!107 = !DIEnumerator(name: "PointFilter", value: 1)
!108 = !DIEnumerator(name: "BoxFilter", value: 2)
!109 = !DIEnumerator(name: "TriangleFilter", value: 3)
!110 = !DIEnumerator(name: "HermiteFilter", value: 4)
!111 = !DIEnumerator(name: "HanningFilter", value: 5)
!112 = !DIEnumerator(name: "HammingFilter", value: 6)
!113 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!114 = !DIEnumerator(name: "GaussianFilter", value: 8)
!115 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!116 = !DIEnumerator(name: "CubicFilter", value: 10)
!117 = !DIEnumerator(name: "CatromFilter", value: 11)
!118 = !DIEnumerator(name: "MitchellFilter", value: 12)
!119 = !DIEnumerator(name: "JincFilter", value: 13)
!120 = !DIEnumerator(name: "SincFilter", value: 14)
!121 = !DIEnumerator(name: "SincFastFilter", value: 15)
!122 = !DIEnumerator(name: "KaiserFilter", value: 16)
!123 = !DIEnumerator(name: "WelshFilter", value: 17)
!124 = !DIEnumerator(name: "ParzenFilter", value: 18)
!125 = !DIEnumerator(name: "BohmanFilter", value: 19)
!126 = !DIEnumerator(name: "BartlettFilter", value: 20)
!127 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!128 = !DIEnumerator(name: "LanczosFilter", value: 22)
!129 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!130 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!131 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!132 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!133 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!134 = !DIEnumerator(name: "CosineFilter", value: 28)
!135 = !DIEnumerator(name: "SplineFilter", value: 29)
!136 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!137 = !DIEnumerator(name: "SentinelFilter", value: 31)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 63, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147}
!140 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!141 = !DIEnumerator(name: "NoInterlace", value: 1)
!142 = !DIEnumerator(name: "LineInterlace", value: 2)
!143 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!144 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!145 = !DIEnumerator(name: "GIFInterlace", value: 5)
!146 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!147 = !DIEnumerator(name: "PNGInterlace", value: 7)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 30, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!150 = !{!151, !152, !153}
!151 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!152 = !DIEnumerator(name: "LSBEndian", value: 1)
!153 = !DIEnumerator(name: "MSBEndian", value: 2)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 77, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!157 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!158 = !DIEnumerator(name: "ForgetGravity", value: 0)
!159 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!160 = !DIEnumerator(name: "NorthGravity", value: 2)
!161 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!162 = !DIEnumerator(name: "WestGravity", value: 4)
!163 = !DIEnumerator(name: "CenterGravity", value: 5)
!164 = !DIEnumerator(name: "EastGravity", value: 6)
!165 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!166 = !DIEnumerator(name: "SouthGravity", value: 8)
!167 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!168 = !DIEnumerator(name: "StaticGravity", value: 10)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 25, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!171 = !{!172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!172 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!173 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!174 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!175 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!176 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!177 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!178 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!179 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!180 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!181 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!182 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!183 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!184 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!185 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!186 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!187 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!188 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!189 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!190 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!191 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!192 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!193 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!194 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!195 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!196 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!197 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!198 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!199 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!200 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!201 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!202 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!203 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!204 = !DIEnumerator(name: "InCompositeOp", value: 32)
!205 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!206 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!207 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!208 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!209 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!210 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!211 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!212 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!213 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!214 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!215 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!216 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!217 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!218 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!219 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!220 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!221 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!222 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!223 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!224 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!225 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!226 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!227 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!228 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!229 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!230 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!231 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!232 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!233 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!234 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!235 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!236 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!237 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!238 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!239 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 25, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!242 = !{!243, !244, !245, !246, !247}
!243 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!244 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!245 = !DIEnumerator(name: "NoneDispose", value: 1)
!246 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!247 = !DIEnumerator(name: "PreviousDispose", value: 3)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !249, line: 25, baseType: !7, size: 32, elements: !250)
!249 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!250 = !{!251, !252, !253}
!251 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!252 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!253 = !DIEnumerator(name: "RunningTimerState", value: 2)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !255, line: 28, baseType: !7, size: 32, elements: !256)
!255 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!257 = !DIEnumerator(name: "UndefinedException", value: 0)
!258 = !DIEnumerator(name: "WarningException", value: 300)
!259 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!260 = !DIEnumerator(name: "TypeWarning", value: 305)
!261 = !DIEnumerator(name: "OptionWarning", value: 310)
!262 = !DIEnumerator(name: "DelegateWarning", value: 315)
!263 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!264 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!265 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!266 = !DIEnumerator(name: "BlobWarning", value: 335)
!267 = !DIEnumerator(name: "StreamWarning", value: 340)
!268 = !DIEnumerator(name: "CacheWarning", value: 345)
!269 = !DIEnumerator(name: "CoderWarning", value: 350)
!270 = !DIEnumerator(name: "FilterWarning", value: 352)
!271 = !DIEnumerator(name: "ModuleWarning", value: 355)
!272 = !DIEnumerator(name: "DrawWarning", value: 360)
!273 = !DIEnumerator(name: "ImageWarning", value: 365)
!274 = !DIEnumerator(name: "WandWarning", value: 370)
!275 = !DIEnumerator(name: "RandomWarning", value: 375)
!276 = !DIEnumerator(name: "XServerWarning", value: 380)
!277 = !DIEnumerator(name: "MonitorWarning", value: 385)
!278 = !DIEnumerator(name: "RegistryWarning", value: 390)
!279 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!280 = !DIEnumerator(name: "PolicyWarning", value: 399)
!281 = !DIEnumerator(name: "ErrorException", value: 400)
!282 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!283 = !DIEnumerator(name: "TypeError", value: 405)
!284 = !DIEnumerator(name: "OptionError", value: 410)
!285 = !DIEnumerator(name: "DelegateError", value: 415)
!286 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!287 = !DIEnumerator(name: "CorruptImageError", value: 425)
!288 = !DIEnumerator(name: "FileOpenError", value: 430)
!289 = !DIEnumerator(name: "BlobError", value: 435)
!290 = !DIEnumerator(name: "StreamError", value: 440)
!291 = !DIEnumerator(name: "CacheError", value: 445)
!292 = !DIEnumerator(name: "CoderError", value: 450)
!293 = !DIEnumerator(name: "FilterError", value: 452)
!294 = !DIEnumerator(name: "ModuleError", value: 455)
!295 = !DIEnumerator(name: "DrawError", value: 460)
!296 = !DIEnumerator(name: "ImageError", value: 465)
!297 = !DIEnumerator(name: "WandError", value: 470)
!298 = !DIEnumerator(name: "RandomError", value: 475)
!299 = !DIEnumerator(name: "XServerError", value: 480)
!300 = !DIEnumerator(name: "MonitorError", value: 485)
!301 = !DIEnumerator(name: "RegistryError", value: 490)
!302 = !DIEnumerator(name: "ConfigureError", value: 495)
!303 = !DIEnumerator(name: "PolicyError", value: 499)
!304 = !DIEnumerator(name: "FatalErrorException", value: 700)
!305 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!306 = !DIEnumerator(name: "TypeFatalError", value: 705)
!307 = !DIEnumerator(name: "OptionFatalError", value: 710)
!308 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!309 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!310 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!311 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!312 = !DIEnumerator(name: "BlobFatalError", value: 735)
!313 = !DIEnumerator(name: "StreamFatalError", value: 740)
!314 = !DIEnumerator(name: "CacheFatalError", value: 745)
!315 = !DIEnumerator(name: "CoderFatalError", value: 750)
!316 = !DIEnumerator(name: "FilterFatalError", value: 752)
!317 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!318 = !DIEnumerator(name: "DrawFatalError", value: 760)
!319 = !DIEnumerator(name: "ImageFatalError", value: 765)
!320 = !DIEnumerator(name: "WandFatalError", value: 770)
!321 = !DIEnumerator(name: "RandomFatalError", value: 775)
!322 = !DIEnumerator(name: "XServerFatalError", value: 780)
!323 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!324 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!325 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!326 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 31, baseType: !7, size: 32, elements: !329)
!328 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!330 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!331 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!332 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!333 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!334 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!335 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!336 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!337 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!338 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!339 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!340 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!341 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!342 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!343 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 47, baseType: !7, size: 32, elements: !345)
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!346 = !DIEnumerator(name: "UndefinedType", value: 0)
!347 = !DIEnumerator(name: "BilevelType", value: 1)
!348 = !DIEnumerator(name: "GrayscaleType", value: 2)
!349 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!350 = !DIEnumerator(name: "PaletteType", value: 4)
!351 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!352 = !DIEnumerator(name: "TrueColorType", value: 6)
!353 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!354 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!355 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!356 = !DIEnumerator(name: "OptimizeType", value: 10)
!357 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!358 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !328, line: 67, baseType: !7, size: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369}
!360 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!361 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!362 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!363 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!364 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!365 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!366 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!367 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!368 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!369 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !371, line: 34, baseType: !7, size: 32, elements: !372)
!371 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!373 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!374 = !DIEnumerator(name: "NoEvents", value: 0)
!375 = !DIEnumerator(name: "TraceEvent", value: 1)
!376 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!377 = !DIEnumerator(name: "BlobEvent", value: 4)
!378 = !DIEnumerator(name: "CacheEvent", value: 8)
!379 = !DIEnumerator(name: "CoderEvent", value: 16)
!380 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!381 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!382 = !DIEnumerator(name: "DrawEvent", value: 128)
!383 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!384 = !DIEnumerator(name: "ImageEvent", value: 512)
!385 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!386 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!387 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!388 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!389 = !DIEnumerator(name: "TransformEvent", value: 16384)
!390 = !DIEnumerator(name: "UserEvent", value: 36864)
!391 = !DIEnumerator(name: "WandEvent", value: 65536)
!392 = !DIEnumerator(name: "X11Event", value: 131072)
!393 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!394 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !396, line: 27, baseType: !7, size: 32, elements: !397)
!396 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!398 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!399 = !DIEnumerator(name: "RotatePreview", value: 1)
!400 = !DIEnumerator(name: "ShearPreview", value: 2)
!401 = !DIEnumerator(name: "RollPreview", value: 3)
!402 = !DIEnumerator(name: "HuePreview", value: 4)
!403 = !DIEnumerator(name: "SaturationPreview", value: 5)
!404 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!405 = !DIEnumerator(name: "GammaPreview", value: 7)
!406 = !DIEnumerator(name: "SpiffPreview", value: 8)
!407 = !DIEnumerator(name: "DullPreview", value: 9)
!408 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!409 = !DIEnumerator(name: "QuantizePreview", value: 11)
!410 = !DIEnumerator(name: "DespecklePreview", value: 12)
!411 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!412 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!413 = !DIEnumerator(name: "SharpenPreview", value: 15)
!414 = !DIEnumerator(name: "BlurPreview", value: 16)
!415 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!416 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!417 = !DIEnumerator(name: "SpreadPreview", value: 19)
!418 = !DIEnumerator(name: "SolarizePreview", value: 20)
!419 = !DIEnumerator(name: "ShadePreview", value: 21)
!420 = !DIEnumerator(name: "RaisePreview", value: 22)
!421 = !DIEnumerator(name: "SegmentPreview", value: 23)
!422 = !DIEnumerator(name: "SwirlPreview", value: 24)
!423 = !DIEnumerator(name: "ImplodePreview", value: 25)
!424 = !DIEnumerator(name: "WavePreview", value: 26)
!425 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!426 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!427 = !DIEnumerator(name: "JPEGPreview", value: 29)
!428 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 177, baseType: !7, size: 32, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!430 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!431 = !DIEnumerator(name: "RedChannel", value: 1)
!432 = !DIEnumerator(name: "GrayChannel", value: 1)
!433 = !DIEnumerator(name: "CyanChannel", value: 1)
!434 = !DIEnumerator(name: "GreenChannel", value: 2)
!435 = !DIEnumerator(name: "MagentaChannel", value: 2)
!436 = !DIEnumerator(name: "BlueChannel", value: 4)
!437 = !DIEnumerator(name: "YellowChannel", value: 4)
!438 = !DIEnumerator(name: "AlphaChannel", value: 8)
!439 = !DIEnumerator(name: "OpacityChannel", value: 8)
!440 = !DIEnumerator(name: "MatteChannel", value: 8)
!441 = !DIEnumerator(name: "BlackChannel", value: 32)
!442 = !DIEnumerator(name: "IndexChannel", value: 32)
!443 = !DIEnumerator(name: "CompositeChannels", value: 47)
!444 = !DIEnumerator(name: "AllChannels", value: 134217727)
!445 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!446 = !DIEnumerator(name: "RGBChannels", value: 128)
!447 = !DIEnumerator(name: "GrayChannels", value: 128)
!448 = !DIEnumerator(name: "SyncChannels", value: 256)
!449 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !451, line: 27, baseType: !7, size: 32, elements: !452)
!451 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!453 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!454 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!455 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!456 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!457 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!458 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!459 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!460 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!461 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!462 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!463 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!464 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!465 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!466 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!467 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!468 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!469 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!470 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!471 = !{!472, !489, !490, !491, !492, !494, !486, !496, !505, !506, !497, !478, !713, !7, !527, !715, !716, !532, !717, !719, !482, !721, !745, !563, !626}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !50, line: 52, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !475, line: 71, size: 256, elements: !476)
!475 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cae6ae6356e273ce65402fb9a311ea2c")
!476 = !{!477, !483, !484}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !474, file: !475, line: 74, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !479, line: 77, baseType: !480)
!479 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !481, line: 193, baseType: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!482 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "line_break", scope: !474, file: !475, line: 75, baseType: !478, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !474, file: !475, line: 78, baseType: !485, size: 80, offset: 128)
!485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 80, elements: !487)
!486 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!487 = !{!488}
!488 = !DISubrange(count: 10)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!490 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!491 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !493, line: 46, baseType: !490)
!493 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "HuffmanTable", file: !475, line: 88, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "HuffmanTable", file: !475, line: 81, size: 256, elements: !500)
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !499, file: !475, line: 84, baseType: !492, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !499, file: !475, line: 85, baseType: !492, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !499, file: !475, line: 86, baseType: !492, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !499, file: !475, line: 87, baseType: !492, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !6, line: 221, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !75, line: 150, size: 105920, elements: !509)
!509 = !{!510, !512, !514, !516, !517, !519, !521, !522, !523, !524, !525, !526, !537, !538, !539, !540, !542, !556, !558, !559, !561, !564, !565, !566, !567, !568, !569, !577, !578, !579, !580, !581, !582, !584, !586, !588, !590, !592, !594, !596, !597, !598, !599, !600, !601, !602, !610, !625, !639, !640, !641, !642, !643, !647, !651, !652, !653, !654, !655, !672, !673, !675, !676, !684, !685, !687, !688, !689, !690, !691, !692, !694, !695, !696, !697, !698, !699, !700, !702, !703, !704, !705, !706, !710, !712}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !508, file: !75, line: 153, baseType: !511, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !6, line: 209, baseType: !5)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !508, file: !75, line: 156, baseType: !513, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !13, line: 61, baseType: !12)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !508, file: !75, line: 159, baseType: !515, size: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !50, line: 49, baseType: !49)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !508, file: !75, line: 162, baseType: !492, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !508, file: !75, line: 165, baseType: !518, size: 32, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !75, line: 86, baseType: !74)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !508, file: !75, line: 168, baseType: !520, size: 32, offset: 224)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !86)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !508, file: !75, line: 169, baseType: !520, size: 32, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !508, file: !75, line: 172, baseType: !492, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !508, file: !75, line: 173, baseType: !492, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !508, file: !75, line: 174, baseType: !492, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !508, file: !75, line: 175, baseType: !492, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !508, file: !75, line: 178, baseType: !527, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !328, line: 148, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !328, line: 131, size: 64, elements: !530)
!530 = !{!531, !534, !535, !536}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !529, file: !328, line: 143, baseType: !532, size: 16)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !6, line: 93, baseType: !533)
!533 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !529, file: !328, line: 144, baseType: !532, size: 16, offset: 16)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !529, file: !328, line: 145, baseType: !532, size: 16, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !529, file: !328, line: 146, baseType: !532, size: 16, offset: 48)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !508, file: !75, line: 179, baseType: !528, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !508, file: !75, line: 180, baseType: !528, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !508, file: !75, line: 181, baseType: !528, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !508, file: !75, line: 184, baseType: !541, size: 64, offset: 832)
!541 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !508, file: !75, line: 187, baseType: !543, size: 768, offset: 896)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !75, line: 128, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !75, line: 121, size: 768, elements: !545)
!545 = !{!546, !553, !554, !555}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !544, file: !75, line: 124, baseType: !547, size: 192)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !75, line: 101, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !75, line: 95, size: 192, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !548, file: !75, line: 98, baseType: !541, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !548, file: !75, line: 99, baseType: !541, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !548, file: !75, line: 100, baseType: !541, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !544, file: !75, line: 125, baseType: !547, size: 192, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !544, file: !75, line: 126, baseType: !547, size: 192, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !544, file: !75, line: 127, baseType: !547, size: 192, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !508, file: !75, line: 190, baseType: !557, size: 32, offset: 1664)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !91, line: 49, baseType: !90)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !508, file: !75, line: 193, baseType: !489, size: 64, offset: 1728)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !508, file: !75, line: 196, baseType: !560, size: 32, offset: 1792)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !75, line: 93, baseType: !98)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !508, file: !75, line: 199, baseType: !562, size: 64, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !508, file: !75, line: 200, baseType: !562, size: 64, offset: 1920)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !508, file: !75, line: 201, baseType: !562, size: 64, offset: 1984)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !508, file: !75, line: 204, baseType: !478, size: 64, offset: 2048)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !508, file: !75, line: 207, baseType: !541, size: 64, offset: 2112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !508, file: !75, line: 208, baseType: !541, size: 64, offset: 2176)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !508, file: !75, line: 211, baseType: !570, size: 256, offset: 2240)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !155, line: 130, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !155, line: 121, size: 256, elements: !572)
!572 = !{!573, !574, !575, !576}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !571, file: !155, line: 124, baseType: !492, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !571, file: !155, line: 125, baseType: !492, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !571, file: !155, line: 128, baseType: !478, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !571, file: !155, line: 129, baseType: !478, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !508, file: !75, line: 212, baseType: !570, size: 256, offset: 2496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !508, file: !75, line: 213, baseType: !570, size: 256, offset: 2752)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !508, file: !75, line: 216, baseType: !541, size: 64, offset: 3008)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !508, file: !75, line: 217, baseType: !541, size: 64, offset: 3072)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !508, file: !75, line: 218, baseType: !541, size: 64, offset: 3136)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !508, file: !75, line: 221, baseType: !583, size: 32, offset: 3200)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !104, line: 66, baseType: !103)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !508, file: !75, line: 224, baseType: !585, size: 32, offset: 3232)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !75, line: 73, baseType: !138)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !508, file: !75, line: 227, baseType: !587, size: 32, offset: 3264)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !149, line: 35, baseType: !148)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !508, file: !75, line: 230, baseType: !589, size: 32, offset: 3296)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !155, line: 91, baseType: !154)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !508, file: !75, line: 233, baseType: !591, size: 32, offset: 3328)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !170, line: 99, baseType: !169)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !508, file: !75, line: 236, baseType: !593, size: 32, offset: 3360)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !241, line: 32, baseType: !240)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !508, file: !75, line: 239, baseType: !595, size: 64, offset: 3392)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !508, file: !75, line: 242, baseType: !492, size: 64, offset: 3456)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !508, file: !75, line: 243, baseType: !492, size: 64, offset: 3520)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !508, file: !75, line: 246, baseType: !478, size: 64, offset: 3584)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !508, file: !75, line: 249, baseType: !492, size: 64, offset: 3648)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !508, file: !75, line: 250, baseType: !492, size: 64, offset: 3712)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !508, file: !75, line: 253, baseType: !478, size: 64, offset: 3776)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !508, file: !75, line: 256, baseType: !603, size: 192, offset: 3840)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !604, line: 68, baseType: !605)
!604 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !604, line: 62, size: 192, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !605, file: !604, line: 65, baseType: !541, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !605, file: !604, line: 66, baseType: !541, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !605, file: !604, line: 67, baseType: !541, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !508, file: !75, line: 259, baseType: !611, size: 512, offset: 4032)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !249, line: 51, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !249, line: 40, size: 512, elements: !613)
!613 = !{!614, !621, !622, !624}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !612, file: !249, line: 43, baseType: !615, size: 192)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !249, line: 38, baseType: !616)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !249, line: 32, size: 192, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !616, file: !249, line: 35, baseType: !541, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !616, file: !249, line: 36, baseType: !541, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !616, file: !249, line: 37, baseType: !541, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !612, file: !249, line: 44, baseType: !615, size: 192, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !612, file: !249, line: 47, baseType: !623, size: 32, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !249, line: 30, baseType: !248)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !612, file: !249, line: 50, baseType: !492, size: 64, offset: 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !508, file: !75, line: 262, baseType: !626, size: 64, offset: 4544)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !627, line: 26, baseType: !628)
!627 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!520, !631, !633, !636, !489}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !635)
!635 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !638)
!638 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !508, file: !75, line: 265, baseType: !489, size: 64, offset: 4608)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !508, file: !75, line: 266, baseType: !489, size: 64, offset: 4672)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !508, file: !75, line: 267, baseType: !489, size: 64, offset: 4736)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !508, file: !75, line: 270, baseType: !472, size: 64, offset: 4800)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !508, file: !75, line: 273, baseType: !644, size: 64, offset: 4864)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !6, line: 217, baseType: !646)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !6, line: 217, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !508, file: !75, line: 276, baseType: !648, size: 32768, offset: 4928)
!648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 32768, elements: !649)
!649 = !{!650}
!650 = !DISubrange(count: 4096)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !508, file: !75, line: 277, baseType: !648, size: 32768, offset: 37696)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !508, file: !75, line: 278, baseType: !648, size: 32768, offset: 70464)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !508, file: !75, line: 281, baseType: !492, size: 64, offset: 103232)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !508, file: !75, line: 282, baseType: !492, size: 64, offset: 103296)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !508, file: !75, line: 285, baseType: !656, size: 448, offset: 103360)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !255, line: 102, size: 448, elements: !658)
!658 = !{!659, !661, !662, !663, !664, !665, !666, !671}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !657, file: !255, line: 105, baseType: !660, size: 32)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !255, line: 100, baseType: !254)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !657, file: !255, line: 108, baseType: !491, size: 32, offset: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !657, file: !255, line: 111, baseType: !562, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !657, file: !255, line: 112, baseType: !562, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !657, file: !255, line: 115, baseType: !489, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !657, file: !255, line: 118, baseType: !520, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !657, file: !255, line: 121, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !669, line: 26, baseType: !670)
!669 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !669, line: 25, flags: DIFlagFwdDecl)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !657, file: !255, line: 124, baseType: !492, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !508, file: !75, line: 288, baseType: !520, size: 32, offset: 103808)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !508, file: !75, line: 291, baseType: !674, size: 64, offset: 103872)
!674 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !478)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !508, file: !75, line: 294, baseType: !667, size: 64, offset: 103936)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !508, file: !75, line: 297, baseType: !677, size: 256, offset: 104000)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !91, line: 40, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !91, line: 27, size: 256, elements: !679)
!679 = !{!680, !681, !682, !683}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !91, line: 30, baseType: !562, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !678, file: !91, line: 33, baseType: !492, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !678, file: !91, line: 36, baseType: !505, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !678, file: !91, line: 39, baseType: !492, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !508, file: !75, line: 298, baseType: !677, size: 256, offset: 104256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !508, file: !75, line: 299, baseType: !686, size: 64, offset: 104512)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !508, file: !75, line: 302, baseType: !492, size: 64, offset: 104576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !508, file: !75, line: 305, baseType: !492, size: 64, offset: 104640)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !75, line: 308, baseType: !595, size: 64, offset: 104704)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !508, file: !75, line: 309, baseType: !595, size: 64, offset: 104768)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !75, line: 310, baseType: !595, size: 64, offset: 104832)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !508, file: !75, line: 313, baseType: !693, size: 32, offset: 104896)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !328, line: 47, baseType: !327)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !508, file: !75, line: 316, baseType: !520, size: 32, offset: 104928)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !508, file: !75, line: 319, baseType: !528, size: 64, offset: 104960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !508, file: !75, line: 322, baseType: !595, size: 64, offset: 105024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !508, file: !75, line: 325, baseType: !570, size: 256, offset: 105088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !508, file: !75, line: 328, baseType: !489, size: 64, offset: 105344)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !508, file: !75, line: 329, baseType: !489, size: 64, offset: 105408)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !508, file: !75, line: 332, baseType: !701, size: 32, offset: 105472)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !75, line: 61, baseType: !344)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !508, file: !75, line: 335, baseType: !520, size: 32, offset: 105504)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !508, file: !75, line: 338, baseType: !637, size: 64, offset: 105536)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !508, file: !75, line: 341, baseType: !520, size: 32, offset: 105600)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !508, file: !75, line: 344, baseType: !492, size: 64, offset: 105664)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !508, file: !75, line: 347, baseType: !707, size: 64, offset: 105728)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !708, line: 7, baseType: !709)
!708 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !481, line: 160, baseType: !482)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !508, file: !75, line: 350, baseType: !711, size: 32, offset: 105792)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !328, line: 79, baseType: !358)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !508, file: !75, line: 353, baseType: !492, size: 64, offset: 105856)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !328, line: 129, baseType: !532)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !6, line: 78, baseType: !720)
!720 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "TableType", scope: !723, file: !475, line: 957, baseType: !740)
!723 = distinct !DISubprogram(name: "LZWEncodeImage", scope: !475, file: !475, line: 934, type: !724, scopeLine: 936, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !728)
!724 = !DISubroutineType(types: !725)
!725 = !{!520, !506, !726, !727}
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!727 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !505)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739}
!729 = !DILocalVariable(name: "image", arg: 1, scope: !723, file: !475, line: 934, type: !506)
!730 = !DILocalVariable(name: "length", arg: 2, scope: !723, file: !475, line: 934, type: !726)
!731 = !DILocalVariable(name: "pixels", arg: 3, scope: !723, file: !475, line: 935, type: !727)
!732 = !DILocalVariable(name: "i", scope: !723, file: !475, line: 960, type: !478)
!733 = !DILocalVariable(name: "accumulator", scope: !723, file: !475, line: 963, type: !492)
!734 = !DILocalVariable(name: "number_bits", scope: !723, file: !475, line: 964, type: !492)
!735 = !DILocalVariable(name: "code_width", scope: !723, file: !475, line: 965, type: !492)
!736 = !DILocalVariable(name: "last_code", scope: !723, file: !475, line: 966, type: !492)
!737 = !DILocalVariable(name: "next_index", scope: !723, file: !475, line: 967, type: !492)
!738 = !DILocalVariable(name: "index", scope: !723, file: !475, line: 970, type: !478)
!739 = !DILocalVariable(name: "table", scope: !723, file: !475, line: 973, type: !721)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TableType", scope: !723, file: !475, line: 951, size: 192, elements: !741)
!741 = !{!742, !743, !744}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !740, file: !475, line: 954, baseType: !478, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !740, file: !475, line: 955, baseType: !478, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !740, file: !475, line: 956, baseType: !478, size: 64, offset: 128)
!745 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!746 = !{!747, !0, !761, !766, !771, !776}
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "tuple", scope: !749, file: !475, line: 237, type: !758, isLocal: true, isDefinition: true)
!749 = distinct !DISubprogram(name: "Ascii85Tuple", scope: !475, file: !475, line: 234, type: !750, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{!562, !505}
!752 = !{!753, !754, !755, !756, !757}
!753 = !DILocalVariable(name: "data", arg: 1, scope: !749, file: !475, line: 234, type: !505)
!754 = !DILocalVariable(name: "i", scope: !749, file: !475, line: 240, type: !478)
!755 = !DILocalVariable(name: "x", scope: !749, file: !475, line: 241, type: !478)
!756 = !DILocalVariable(name: "code", scope: !749, file: !475, line: 244, type: !492)
!757 = !DILocalVariable(name: "quantum", scope: !749, file: !475, line: 245, type: !492)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 48, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 6)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "MWTable", scope: !2, file: !475, line: 132, type: !763, isLocal: true, isDefinition: true)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 7168, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 28)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "EXTable", scope: !2, file: !475, line: 120, type: !768, isLocal: true, isDefinition: true)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 3584, elements: !769)
!769 = !{!770}
!770 = !DISubrange(count: 14)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(name: "TBTable", scope: !2, file: !475, line: 151, type: !773, isLocal: true, isDefinition: true)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 16640, elements: !774)
!774 = !{!775}
!775 = !DISubrange(count: 65)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(name: "MBTable", scope: !2, file: !475, line: 101, type: !763, isLocal: true, isDefinition: true)
!778 = !{i32 7, !"Dwarf Version", i32 5}
!779 = !{i32 2, !"Debug Info Version", i32 3}
!780 = !{i32 1, !"wchar_size", i32 4}
!781 = !{i32 7, !"PIC Level", i32 2}
!782 = !{i32 7, !"PIE Level", i32 2}
!783 = !{i32 7, !"uwtable", i32 2}
!784 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!785 = distinct !DISubprogram(name: "Ascii85Initialize", scope: !475, file: !475, line: 268, type: !786, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !506}
!788 = !{!789, !790, !793}
!789 = !DILocalVariable(name: "image", arg: 1, scope: !785, file: !475, line: 268, type: !506)
!790 = !DILocalVariable(name: "message", scope: !791, file: !475, line: 276, type: !562)
!791 = distinct !DILexicalBlock(scope: !792, file: !475, line: 276, column: 5)
!792 = distinct !DILexicalBlock(scope: !785, file: !475, line: 275, column: 7)
!793 = !DILocalVariable(name: "exception", scope: !791, file: !475, line: 276, type: !656)
!794 = !DILocation(line: 0, scope: !785)
!795 = !DILocation(line: 273, column: 14, scope: !796)
!796 = distinct !DILexicalBlock(scope: !785, file: !475, line: 273, column: 7)
!797 = !{!798, !802, i64 600}
!798 = !{!"_Image", !799, i64 0, !799, i64 4, !799, i64 8, !801, i64 16, !799, i64 24, !799, i64 28, !799, i64 32, !801, i64 40, !801, i64 48, !801, i64 56, !801, i64 64, !802, i64 72, !803, i64 80, !803, i64 88, !803, i64 96, !805, i64 104, !806, i64 112, !799, i64 208, !802, i64 216, !799, i64 224, !802, i64 232, !802, i64 240, !802, i64 248, !801, i64 256, !805, i64 264, !805, i64 272, !808, i64 280, !808, i64 312, !808, i64 344, !805, i64 376, !805, i64 384, !805, i64 392, !799, i64 400, !799, i64 404, !799, i64 408, !799, i64 412, !799, i64 416, !799, i64 420, !802, i64 424, !801, i64 432, !801, i64 440, !801, i64 448, !801, i64 456, !801, i64 464, !801, i64 472, !809, i64 480, !810, i64 504, !802, i64 568, !802, i64 576, !802, i64 584, !802, i64 592, !802, i64 600, !802, i64 608, !799, i64 616, !799, i64 4712, !799, i64 8808, !801, i64 12904, !801, i64 12912, !812, i64 12920, !799, i64 12976, !801, i64 12984, !802, i64 12992, !814, i64 13000, !814, i64 13032, !802, i64 13064, !801, i64 13072, !801, i64 13080, !802, i64 13088, !802, i64 13096, !802, i64 13104, !799, i64 13112, !799, i64 13116, !803, i64 13120, !802, i64 13128, !808, i64 13136, !802, i64 13168, !802, i64 13176, !799, i64 13184, !799, i64 13188, !815, i64 13192, !799, i64 13200, !801, i64 13208, !801, i64 13216, !799, i64 13224, !801, i64 13232}
!799 = !{!"omnipotent char", !800, i64 0}
!800 = !{!"Simple C/C++ TBAA"}
!801 = !{!"long", !799, i64 0}
!802 = !{!"any pointer", !799, i64 0}
!803 = !{!"_PixelPacket", !804, i64 0, !804, i64 2, !804, i64 4, !804, i64 6}
!804 = !{!"short", !799, i64 0}
!805 = !{!"double", !799, i64 0}
!806 = !{!"_ChromaticityInfo", !807, i64 0, !807, i64 24, !807, i64 48, !807, i64 72}
!807 = !{!"_PrimaryInfo", !805, i64 0, !805, i64 8, !805, i64 16}
!808 = !{!"_RectangleInfo", !801, i64 0, !801, i64 8, !801, i64 16, !801, i64 24}
!809 = !{!"_ErrorInfo", !805, i64 0, !805, i64 8, !805, i64 16}
!810 = !{!"_TimerInfo", !811, i64 0, !811, i64 24, !799, i64 48, !801, i64 56}
!811 = !{!"_Timer", !805, i64 0, !805, i64 8, !805, i64 16}
!812 = !{!"_ExceptionInfo", !799, i64 0, !813, i64 4, !802, i64 8, !802, i64 16, !802, i64 24, !799, i64 32, !802, i64 40, !801, i64 48}
!813 = !{!"int", !799, i64 0}
!814 = !{!"_ProfileInfo", !802, i64 0, !801, i64 8, !802, i64 16, !801, i64 24}
!815 = !{!"long long", !799, i64 0}
!816 = !DILocation(line: 273, column: 22, scope: !796)
!817 = !DILocation(line: 273, column: 7, scope: !785)
!818 = !DILocation(line: 274, column: 36, scope: !796)
!819 = !DILocation(line: 274, column: 19, scope: !796)
!820 = !DILocation(line: 275, column: 22, scope: !792)
!821 = !DILocation(line: 275, column: 7, scope: !785)
!822 = !DILocation(line: 276, column: 5, scope: !791)
!823 = !{!813, !813, i64 0}
!824 = !DILocation(line: 0, scope: !791)
!825 = !DILocation(line: 277, column: 10, scope: !785)
!826 = !DILocation(line: 278, column: 10, scope: !785)
!827 = !DILocation(line: 278, column: 19, scope: !785)
!828 = !DILocation(line: 278, column: 29, scope: !785)
!829 = !{!830, !801, i64 8}
!830 = !{!"_Ascii85Info", !801, i64 0, !801, i64 8, !799, i64 16}
!831 = !DILocation(line: 279, column: 25, scope: !785)
!832 = !{!830, !801, i64 0}
!833 = !DILocation(line: 280, column: 1, scope: !785)
!834 = !DISubprogram(name: "AcquireMagickMemory", scope: !835, file: !835, line: 40, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!835 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!836 = !DISubroutineType(types: !837)
!837 = !{!489, !726}
!838 = !{}
!839 = !DISubprogram(name: "GetExceptionInfo", scope: !255, file: !255, line: 166, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !842}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!843 = !DISubprogram(name: "GetExceptionMessage", scope: !255, file: !255, line: 137, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!844 = !DISubroutineType(types: !845)
!845 = !{!562, !846}
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!847 = !DISubprogram(name: "ThrowMagickException", scope: !255, file: !255, line: 156, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!848 = !DISubroutineType(types: !849)
!849 = !{!520, !842, !631, !631, !726, !850, !631, !631, null}
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!851 = !DISubprogram(name: "DestroyString", scope: !852, file: !852, line: 46, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!852 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!853 = !DISubroutineType(types: !854)
!854 = !{!562, !562}
!855 = !DISubprogram(name: "CatchException", scope: !255, file: !255, line: 164, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!856 = !DISubprogram(name: "DestroyExceptionInfo", scope: !255, file: !255, line: 148, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!857 = !DISubroutineType(types: !858)
!858 = !{!842, !842}
!859 = !DISubprogram(name: "MagickCoreTerminus", scope: !860, file: !860, line: 147, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!860 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!861 = !DISubroutineType(types: !862)
!862 = !{null}
!863 = !DISubprogram(name: "ResetMagickMemory", scope: !835, file: !835, line: 52, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!864 = !DISubroutineType(types: !865)
!865 = !{!489, !489, !491, !726}
!866 = distinct !DISubprogram(name: "Ascii85Flush", scope: !475, file: !475, line: 282, type: !786, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !867)
!867 = !{!868, !869}
!868 = !DILocalVariable(name: "image", arg: 1, scope: !866, file: !475, line: 282, type: !506)
!869 = !DILocalVariable(name: "tuple", scope: !866, file: !475, line: 285, type: !562)
!870 = !DILocation(line: 0, scope: !866)
!871 = !DILocation(line: 289, column: 14, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !475, line: 289, column: 7)
!873 = !{!798, !799, i64 12976}
!874 = !DILocation(line: 289, column: 20, scope: !872)
!875 = !DILocation(line: 289, column: 7, scope: !866)
!876 = !DILocation(line: 290, column: 68, scope: !872)
!877 = !DILocation(line: 290, column: 12, scope: !872)
!878 = !DILocation(line: 290, column: 5, scope: !872)
!879 = !DILocation(line: 292, column: 14, scope: !880)
!880 = distinct !DILexicalBlock(scope: !866, file: !475, line: 292, column: 7)
!881 = !DILocation(line: 292, column: 23, scope: !880)
!882 = !DILocation(line: 292, column: 30, scope: !880)
!883 = !DILocation(line: 292, column: 7, scope: !866)
!884 = !DILocation(line: 294, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !475, line: 293, column: 5)
!886 = !DILocation(line: 294, column: 53, scope: !885)
!887 = !{!799, !799, i64 0}
!888 = !DILocation(line: 295, column: 14, scope: !885)
!889 = !DILocation(line: 295, column: 46, scope: !885)
!890 = !DILocation(line: 295, column: 52, scope: !885)
!891 = !DILocation(line: 295, column: 7, scope: !885)
!892 = !DILocation(line: 295, column: 55, scope: !885)
!893 = !DILocation(line: 296, column: 14, scope: !885)
!894 = !DILocation(line: 296, column: 46, scope: !885)
!895 = !DILocation(line: 296, column: 52, scope: !885)
!896 = !DILocation(line: 296, column: 7, scope: !885)
!897 = !DILocation(line: 296, column: 55, scope: !885)
!898 = !DILocation(line: 297, column: 33, scope: !885)
!899 = !DILocation(line: 297, column: 42, scope: !885)
!900 = !DILocation(line: 0, scope: !749, inlinedAt: !901)
!901 = distinct !DILocation(line: 297, column: 13, scope: !885)
!902 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !901)
!903 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !901)
!904 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !901)
!905 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !901)
!906 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !901)
!907 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !901)
!908 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !901)
!909 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !901)
!910 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !901)
!911 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !901)
!912 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !901)
!913 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !901)
!914 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !901)
!915 = distinct !DILexicalBlock(scope: !749, file: !475, line: 249, column: 7)
!916 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !901)
!917 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !901)
!918 = distinct !DILexicalBlock(scope: !915, file: !475, line: 250, column: 5)
!919 = !DILocation(line: 253, column: 7, scope: !918, inlinedAt: !901)
!920 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !901)
!921 = distinct !DILexicalBlock(scope: !922, file: !475, line: 257, column: 3)
!922 = distinct !DILexicalBlock(scope: !923, file: !475, line: 256, column: 3)
!923 = distinct !DILexicalBlock(scope: !749, file: !475, line: 256, column: 3)
!924 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !901)
!925 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !901)
!926 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !901)
!927 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !901)
!928 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !901)
!929 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !901)
!930 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !901)
!931 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !901)
!932 = distinct !{!932, !931, !933, !934, !935}
!933 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !901)
!934 = !{!"llvm.loop.mustprogress"}
!935 = !{!"llvm.loop.unroll.disable"}
!936 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !901)
!937 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !901)
!938 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !901)
!939 = !DILocation(line: 299, column: 34, scope: !885)
!940 = !DILocation(line: 265, column: 3, scope: !749, inlinedAt: !901)
!941 = !DILocation(line: 298, column: 55, scope: !885)
!942 = !DILocation(line: 298, column: 61, scope: !885)
!943 = !DILocation(line: 298, column: 14, scope: !885)
!944 = !DILocation(line: 300, column: 5, scope: !885)
!945 = !DILocation(line: 301, column: 10, scope: !866)
!946 = !DILocation(line: 302, column: 10, scope: !866)
!947 = !DILocation(line: 303, column: 10, scope: !866)
!948 = !DILocation(line: 304, column: 1, scope: !866)
!949 = !DISubprogram(name: "LogMagickEvent", scope: !371, file: !371, line: 83, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!950 = !DISubroutineType(types: !951)
!951 = !{!520, !952, !631, !631, !726, !631, null}
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !371, line: 58, baseType: !370)
!954 = !DISubprogram(name: "WriteBlob", scope: !955, file: !955, line: 98, type: !956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!955 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a66ea2eabdd36512a199f3a0075ea4ad")
!956 = !DISubroutineType(types: !957)
!957 = !{!478, !506, !726, !494}
!958 = !DISubprogram(name: "WriteBlobByte", scope: !955, file: !955, line: 99, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!959 = !DISubroutineType(types: !960)
!960 = !{!478, !506, !495}
!961 = distinct !DISubprogram(name: "Ascii85Encode", scope: !475, file: !475, line: 306, type: !962, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !506, !495}
!964 = !{!965, !966, !967, !968, !969}
!965 = !DILocalVariable(name: "image", arg: 1, scope: !961, file: !475, line: 306, type: !506)
!966 = !DILocalVariable(name: "code", arg: 2, scope: !961, file: !475, line: 306, type: !495)
!967 = !DILocalVariable(name: "q", scope: !961, file: !475, line: 309, type: !562)
!968 = !DILocalVariable(name: "p", scope: !961, file: !475, line: 312, type: !505)
!969 = !DILocalVariable(name: "n", scope: !961, file: !475, line: 315, type: !478)
!970 = !DILocation(line: 0, scope: !961)
!971 = !DILocation(line: 320, column: 10, scope: !961)
!972 = !DILocation(line: 320, column: 42, scope: !961)
!973 = !DILocation(line: 320, column: 3, scope: !961)
!974 = !DILocation(line: 320, column: 49, scope: !961)
!975 = !DILocation(line: 321, column: 10, scope: !961)
!976 = !DILocation(line: 321, column: 25, scope: !961)
!977 = !DILocation(line: 322, column: 30, scope: !978)
!978 = distinct !DILexicalBlock(scope: !961, file: !475, line: 322, column: 7)
!979 = !DILocation(line: 322, column: 7, scope: !961)
!980 = !DILocation(line: 324, column: 21, scope: !961)
!981 = !DILocation(line: 325, column: 3, scope: !982)
!982 = distinct !DILexicalBlock(scope: !961, file: !475, line: 325, column: 3)
!983 = !DILocation(line: 0, scope: !749, inlinedAt: !984)
!984 = distinct !DILocation(line: 327, column: 12, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !475, line: 327, column: 5)
!986 = distinct !DILexicalBlock(scope: !987, file: !475, line: 326, column: 3)
!987 = distinct !DILexicalBlock(scope: !982, file: !475, line: 325, column: 3)
!988 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !984)
!989 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !984)
!990 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !984)
!991 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !984)
!992 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !984)
!993 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !984)
!994 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !984)
!995 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !984)
!996 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !984)
!997 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !984)
!998 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !984)
!999 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !984)
!1000 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !984)
!1001 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !984)
!1002 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !984)
!1003 = !DILocation(line: 327, column: 5, scope: !985)
!1004 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !984)
!1005 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !984)
!1006 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !984)
!1007 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !984)
!1008 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !984)
!1009 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !984)
!1010 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !984)
!1011 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !984)
!1012 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !984)
!1013 = distinct !{!1013, !1012, !1014, !934, !935}
!1014 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !984)
!1015 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !984)
!1016 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !984)
!1017 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !984)
!1018 = !DILocation(line: 327, column: 29, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !985, file: !475, line: 327, column: 5)
!1020 = !DILocation(line: 327, column: 32, scope: !1019)
!1021 = !DILocation(line: 329, column: 14, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !475, line: 328, column: 5)
!1023 = !DILocation(line: 329, column: 23, scope: !1022)
!1024 = !DILocation(line: 329, column: 33, scope: !1022)
!1025 = !DILocation(line: 330, column: 39, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !475, line: 330, column: 11)
!1027 = !DILocation(line: 330, column: 44, scope: !1026)
!1028 = !DILocation(line: 332, column: 18, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !475, line: 331, column: 9)
!1030 = !DILocation(line: 333, column: 18, scope: !1029)
!1031 = !DILocation(line: 333, column: 27, scope: !1029)
!1032 = !DILocation(line: 333, column: 37, scope: !1029)
!1033 = !DILocation(line: 335, column: 50, scope: !1022)
!1034 = !DILocation(line: 334, column: 9, scope: !1029)
!1035 = !DILocation(line: 335, column: 14, scope: !1022)
!1036 = !DILocation(line: 327, column: 42, scope: !1019)
!1037 = distinct !{!1037, !1003, !1038, !934, !935}
!1038 = !DILocation(line: 336, column: 5, scope: !985)
!1039 = !DILocation(line: 337, column: 6, scope: !986)
!1040 = !DILocation(line: 325, column: 43, scope: !987)
!1041 = !DILocation(line: 325, column: 36, scope: !987)
!1042 = distinct !{!1042, !981, !1043, !934, !935}
!1043 = !DILocation(line: 338, column: 3, scope: !982)
!1044 = !DILocation(line: 339, column: 10, scope: !961)
!1045 = !DILocation(line: 339, column: 25, scope: !961)
!1046 = !DILocation(line: 340, column: 4, scope: !961)
!1047 = !DILocation(line: 342, column: 32, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !475, line: 341, column: 3)
!1049 = distinct !DILexicalBlock(scope: !961, file: !475, line: 341, column: 3)
!1050 = !DILocation(line: 342, column: 5, scope: !1048)
!1051 = !DILocation(line: 342, column: 30, scope: !1048)
!1052 = !DILocation(line: 341, column: 3, scope: !1049)
!1053 = !DILocation(line: 342, column: 34, scope: !1048)
!1054 = !DILocation(line: 342, column: 12, scope: !1048)
!1055 = !DILocation(line: 341, column: 21, scope: !1048)
!1056 = !DILocation(line: 341, column: 15, scope: !1048)
!1057 = distinct !{!1057, !1052, !1058, !934, !935}
!1058 = !DILocation(line: 342, column: 36, scope: !1049)
!1059 = !DILocation(line: 343, column: 1, scope: !961)
!1060 = distinct !DISubprogram(name: "HuffmanDecodeImage", scope: !475, file: !475, line: 383, type: !1061, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!520, !506}
!1063 = !{!1064, !1065, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1095}
!1064 = !DILocalVariable(name: "image", arg: 1, scope: !1060, file: !475, line: 383, type: !506)
!1065 = !DILocalVariable(name: "image_view", scope: !1060, file: !475, line: 418, type: !1066)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !451, line: 50, baseType: !1068)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !328, line: 160, flags: DIFlagFwdDecl)
!1069 = !DILocalVariable(name: "entry", scope: !1060, file: !475, line: 421, type: !713)
!1070 = !DILocalVariable(name: "exception", scope: !1060, file: !475, line: 424, type: !842)
!1071 = !DILocalVariable(name: "mb_hash", scope: !1060, file: !475, line: 427, type: !496)
!1072 = !DILocalVariable(name: "mw_hash", scope: !1060, file: !475, line: 428, type: !496)
!1073 = !DILocalVariable(name: "index", scope: !1060, file: !475, line: 431, type: !715)
!1074 = !DILocalVariable(name: "byte", scope: !1060, file: !475, line: 434, type: !491)
!1075 = !DILocalVariable(name: "proceed", scope: !1060, file: !475, line: 437, type: !520)
!1076 = !DILocalVariable(name: "indexes", scope: !1060, file: !475, line: 440, type: !716)
!1077 = !DILocalVariable(name: "i", scope: !1060, file: !475, line: 443, type: !478)
!1078 = !DILocalVariable(name: "p", scope: !1060, file: !475, line: 446, type: !505)
!1079 = !DILocalVariable(name: "bit", scope: !1060, file: !475, line: 449, type: !492)
!1080 = !DILocalVariable(name: "code", scope: !1060, file: !475, line: 450, type: !492)
!1081 = !DILocalVariable(name: "mask", scope: !1060, file: !475, line: 451, type: !492)
!1082 = !DILocalVariable(name: "length", scope: !1060, file: !475, line: 452, type: !492)
!1083 = !DILocalVariable(name: "null_lines", scope: !1060, file: !475, line: 453, type: !492)
!1084 = !DILocalVariable(name: "runlength", scope: !1060, file: !475, line: 454, type: !492)
!1085 = !DILocalVariable(name: "count", scope: !1060, file: !475, line: 457, type: !478)
!1086 = !DILocalVariable(name: "y", scope: !1060, file: !475, line: 458, type: !478)
!1087 = !DILocalVariable(name: "scanline", scope: !1060, file: !475, line: 461, type: !505)
!1088 = !DILocalVariable(name: "bail", scope: !1060, file: !475, line: 464, type: !7)
!1089 = !DILocalVariable(name: "color", scope: !1060, file: !475, line: 465, type: !7)
!1090 = !DILocalVariable(name: "q", scope: !1091, file: !475, line: 515, type: !1094)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !475, line: 513, column: 3)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !475, line: 512, column: 3)
!1093 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 512, column: 3)
!1094 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !527)
!1095 = !DILocalVariable(name: "x", scope: !1091, file: !475, line: 518, type: !478)
!1096 = !DILocation(line: 0, scope: !1060)
!1097 = !DILocation(line: 472, column: 14, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 472, column: 7)
!1099 = !DILocation(line: 472, column: 20, scope: !1098)
!1100 = !DILocation(line: 472, column: 7, scope: !1060)
!1101 = !DILocation(line: 473, column: 68, scope: !1098)
!1102 = !DILocation(line: 473, column: 12, scope: !1098)
!1103 = !DILocation(line: 473, column: 5, scope: !1098)
!1104 = !DILocation(line: 474, column: 29, scope: !1060)
!1105 = !DILocation(line: 475, column: 29, scope: !1060)
!1106 = !DILocation(line: 476, column: 67, scope: !1060)
!1107 = !{!798, !801, i64 40}
!1108 = !DILocation(line: 476, column: 30, scope: !1060)
!1109 = !DILocation(line: 478, column: 16, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 478, column: 7)
!1111 = !DILocation(line: 478, column: 43, scope: !1110)
!1112 = !DILocation(line: 481, column: 5, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !475, line: 481, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !475, line: 481, column: 5)
!1115 = !DILocation(line: 488, column: 5, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !475, line: 487, column: 3)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !475, line: 486, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 486, column: 3)
!1119 = !DILocation(line: 488, column: 15, scope: !1116)
!1120 = !{!802, !802, i64 0}
!1121 = !DILocation(line: 489, column: 5, scope: !1116)
!1122 = !DILocation(line: 489, column: 15, scope: !1116)
!1123 = !DILocation(line: 486, column: 28, scope: !1117)
!1124 = !DILocation(line: 486, column: 15, scope: !1117)
!1125 = !DILocation(line: 486, column: 3, scope: !1118)
!1126 = distinct !{!1126, !1125, !1127, !934, !935}
!1127 = !DILocation(line: 490, column: 3, scope: !1118)
!1128 = !DILocation(line: 491, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !475, line: 491, column: 3)
!1130 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 491, column: 3)
!1131 = !{!1132, !801, i64 16}
!1132 = !{!"HuffmanTable", !801, i64 0, !801, i64 8, !801, i64 16, !801, i64 24}
!1133 = !DILocation(line: 491, column: 3, scope: !1130)
!1134 = !{!1132, !801, i64 8}
!1135 = distinct !{!1135, !1133, !1133, !934, !935}
!1136 = !DILocation(line: 492, column: 3, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !475, line: 492, column: 3)
!1138 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 492, column: 3)
!1139 = !DILocation(line: 492, column: 3, scope: !1138)
!1140 = distinct !{!1140, !1139, !1139, !934, !935}
!1141 = !DILocation(line: 493, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !475, line: 493, column: 3)
!1143 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 493, column: 3)
!1144 = !DILocation(line: 493, column: 3, scope: !1143)
!1145 = distinct !{!1145, !1144, !1144, !934, !935}
!1146 = !DILocation(line: 494, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !475, line: 494, column: 3)
!1148 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 494, column: 3)
!1149 = !DILocation(line: 494, column: 3, scope: !1148)
!1150 = distinct !{!1150, !1149, !1149, !934, !935}
!1151 = !DILocation(line: 495, column: 3, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !475, line: 495, column: 3)
!1153 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 495, column: 3)
!1154 = !DILocation(line: 495, column: 3, scope: !1153)
!1155 = distinct !{!1155, !1154, !1154, !934, !935}
!1156 = !DILocation(line: 496, column: 3, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !475, line: 496, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 496, column: 3)
!1159 = !DILocation(line: 496, column: 3, scope: !1158)
!1160 = distinct !{!1160, !1159, !1159, !934, !935}
!1161 = !DILocation(line: 505, column: 4, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !475, line: 505, column: 4)
!1163 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 505, column: 4)
!1164 = !DILocation(line: 505, column: 4, scope: !1163)
!1165 = !DILocation(line: 505, column: 4, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !475, line: 505, column: 4)
!1167 = !DILocation(line: 505, column: 4, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1166, file: !475, line: 505, column: 4)
!1169 = !DILocation(line: 504, column: 20, scope: !1060)
!1170 = !DILocation(line: 504, column: 3, scope: !1060)
!1171 = !DILocation(line: 506, column: 3, scope: !1060)
!1172 = !DILocation(line: 506, column: 8, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !475, line: 506, column: 8)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !475, line: 506, column: 8)
!1175 = distinct !DILexicalBlock(scope: !1060, file: !475, line: 506, column: 6)
!1176 = !DILocation(line: 506, column: 8, scope: !1174)
!1177 = !DILocation(line: 506, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !475, line: 506, column: 8)
!1179 = !DILocation(line: 506, column: 8, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1178, file: !475, line: 506, column: 8)
!1181 = !DILocation(line: 506, column: 23, scope: !1175)
!1182 = distinct !{!1182, !1171, !1183, !934, !935}
!1183 = !DILocation(line: 506, column: 46, scope: !1060)
!1184 = !DILocation(line: 507, column: 10, scope: !1060)
!1185 = !DILocation(line: 507, column: 22, scope: !1060)
!1186 = !{!798, !805, i64 264}
!1187 = !DILocation(line: 508, column: 10, scope: !1060)
!1188 = !DILocation(line: 508, column: 22, scope: !1060)
!1189 = !{!798, !805, i64 272}
!1190 = !DILocation(line: 509, column: 10, scope: !1060)
!1191 = !DILocation(line: 509, column: 15, scope: !1060)
!1192 = !{!798, !799, i64 224}
!1193 = !DILocation(line: 510, column: 22, scope: !1060)
!1194 = !DILocation(line: 511, column: 14, scope: !1060)
!1195 = !DILocation(line: 35, column: 70, scope: !1196, inlinedAt: !1208)
!1196 = distinct !DISubprogram(name: "SetImageProgress", scope: !1197, file: !1197, line: 27, type: !1198, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1197 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!520, !1200, !631, !633, !636}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!1202 = !{!1203, !1204, !1205, !1206, !1207}
!1203 = !DILocalVariable(name: "image", arg: 1, scope: !1196, file: !1197, line: 27, type: !1200)
!1204 = !DILocalVariable(name: "tag", arg: 2, scope: !1196, file: !1197, line: 28, type: !631)
!1205 = !DILocalVariable(name: "offset", arg: 3, scope: !1196, file: !1197, line: 28, type: !633)
!1206 = !DILocalVariable(name: "extent", arg: 4, scope: !1196, file: !1197, line: 28, type: !636)
!1207 = !DILocalVariable(name: "message", scope: !1196, file: !1197, line: 31, type: !648)
!1208 = distinct !DILocation(line: 643, column: 13, scope: !1091)
!1209 = !DILocation(line: 512, column: 36, scope: !1092)
!1210 = !{!798, !801, i64 48}
!1211 = !DILocation(line: 512, column: 17, scope: !1092)
!1212 = !DILocation(line: 512, column: 42, scope: !1092)
!1213 = !DILocation(line: 0, scope: !1091)
!1214 = !DILocation(line: 524, column: 36, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !475, line: 524, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 524, column: 5)
!1217 = !DILocation(line: 524, column: 17, scope: !1215)
!1218 = !DILocation(line: 524, column: 5, scope: !1216)
!1219 = !DILocation(line: 537, column: 16, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 537, column: 11)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !475, line: 536, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !475, line: 535, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 535, column: 5)
!1224 = !DILocation(line: 537, column: 11, scope: !1221)
!1225 = !DILocation(line: 525, column: 9, scope: !1215)
!1226 = !DILocation(line: 525, column: 11, scope: !1215)
!1227 = !DILocation(line: 524, column: 46, scope: !1215)
!1228 = distinct !{!1228, !1218, !1229, !934, !935}
!1229 = !DILocation(line: 525, column: 28, scope: !1216)
!1230 = !DILocation(line: 539, column: 33, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 539, column: 11)
!1232 = !DILocation(line: 539, column: 13, scope: !1231)
!1233 = !DILocation(line: 539, column: 11, scope: !1221)
!1234 = !DILocation(line: 541, column: 28, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !475, line: 540, column: 9)
!1236 = !DILocation(line: 541, column: 11, scope: !1235)
!1237 = !DILocation(line: 542, column: 13, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !475, line: 542, column: 13)
!1239 = distinct !DILexicalBlock(scope: !1235, file: !475, line: 542, column: 13)
!1240 = !DILocation(line: 542, column: 13, scope: !1239)
!1241 = !DILocation(line: 542, column: 13, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1238, file: !475, line: 542, column: 13)
!1243 = !DILocation(line: 542, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1242, file: !475, line: 542, column: 13)
!1245 = !DILocation(line: 0, scope: !1235)
!1246 = !DILocation(line: 543, column: 11, scope: !1235)
!1247 = !DILocation(line: 543, column: 16, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !475, line: 543, column: 16)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !475, line: 543, column: 16)
!1250 = distinct !DILexicalBlock(scope: !1235, file: !475, line: 543, column: 14)
!1251 = !DILocation(line: 543, column: 16, scope: !1249)
!1252 = !DILocation(line: 543, column: 16, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !475, line: 543, column: 16)
!1254 = !DILocation(line: 543, column: 16, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1253, file: !475, line: 543, column: 16)
!1256 = !DILocation(line: 543, column: 31, scope: !1250)
!1257 = distinct !{!1257, !1246, !1258, !934, !935}
!1258 = !DILocation(line: 543, column: 54, scope: !1235)
!1259 = !DILocation(line: 549, column: 23, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !475, line: 549, column: 13)
!1261 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 548, column: 7)
!1262 = !DILocation(line: 0, scope: !1260)
!1263 = !DILocation(line: 549, column: 13, scope: !1261)
!1264 = !DILocation(line: 550, column: 11, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !475, line: 550, column: 11)
!1266 = !DILocation(line: 550, column: 11, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !475, line: 550, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !475, line: 550, column: 11)
!1269 = !DILocation(line: 550, column: 11, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1267, file: !475, line: 550, column: 11)
!1271 = !DILocation(line: 553, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !475, line: 553, column: 13)
!1273 = distinct !DILexicalBlock(scope: !1260, file: !475, line: 552, column: 11)
!1274 = !DILocation(line: 553, column: 13, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !475, line: 553, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !475, line: 553, column: 13)
!1277 = !DILocation(line: 553, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !475, line: 553, column: 13)
!1279 = !DILocation(line: 554, column: 17, scope: !1273)
!1280 = !DILocation(line: 563, column: 20, scope: !1261)
!1281 = !DILocation(line: 563, column: 25, scope: !1261)
!1282 = !DILocation(line: 564, column: 15, scope: !1261)
!1283 = !DILocation(line: 565, column: 21, scope: !1221)
!1284 = !DILocation(line: 565, column: 7, scope: !1261)
!1285 = distinct !{!1285, !1286, !1287, !934, !935}
!1286 = !DILocation(line: 547, column: 7, scope: !1221)
!1287 = !DILocation(line: 565, column: 25, scope: !1221)
!1288 = !DILocation(line: 556, column: 27, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !475, line: 555, column: 15)
!1290 = distinct !DILexicalBlock(scope: !1273, file: !475, line: 554, column: 17)
!1291 = !DILocation(line: 557, column: 23, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !475, line: 557, column: 21)
!1293 = !DILocation(line: 557, column: 21, scope: !1289)
!1294 = !DILocation(line: 566, column: 11, scope: !1221)
!1295 = !DILocation(line: 568, column: 18, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 568, column: 11)
!1297 = !DILocation(line: 568, column: 11, scope: !1221)
!1298 = !DILocation(line: 570, column: 28, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !475, line: 569, column: 9)
!1300 = !DILocation(line: 570, column: 11, scope: !1299)
!1301 = !DILocation(line: 571, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !475, line: 571, column: 12)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !475, line: 571, column: 12)
!1304 = !DILocation(line: 571, column: 12, scope: !1303)
!1305 = !DILocation(line: 571, column: 12, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1302, file: !475, line: 571, column: 12)
!1307 = !DILocation(line: 571, column: 12, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1306, file: !475, line: 571, column: 12)
!1309 = !DILocation(line: 0, scope: !1221)
!1310 = !DILocation(line: 0, scope: !1299)
!1311 = !DILocation(line: 572, column: 11, scope: !1299)
!1312 = !DILocation(line: 572, column: 16, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !475, line: 572, column: 16)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !475, line: 572, column: 16)
!1315 = distinct !DILexicalBlock(scope: !1299, file: !475, line: 572, column: 14)
!1316 = !DILocation(line: 572, column: 16, scope: !1314)
!1317 = !DILocation(line: 572, column: 16, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1313, file: !475, line: 572, column: 16)
!1319 = !DILocation(line: 572, column: 16, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1318, file: !475, line: 572, column: 16)
!1321 = !DILocation(line: 572, column: 31, scope: !1315)
!1322 = distinct !{!1322, !1311, !1323, !934, !935}
!1323 = !DILocation(line: 572, column: 54, scope: !1299)
!1324 = !DILocation(line: 575, column: 11, scope: !1221)
!1325 = !DILocation(line: 577, column: 22, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !475, line: 577, column: 15)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !475, line: 576, column: 9)
!1328 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 575, column: 11)
!1329 = !DILocation(line: 577, column: 15, scope: !1327)
!1330 = distinct !{!1330, !1331, !1332, !935}
!1331 = !DILocation(line: 535, column: 5, scope: !1223)
!1332 = !DILocation(line: 626, column: 5, scope: !1223)
!1333 = !DILocation(line: 583, column: 22, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !475, line: 583, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1328, file: !475, line: 582, column: 9)
!1336 = !DILocation(line: 583, column: 15, scope: !1335)
!1337 = !DILocation(line: 0, scope: !1328)
!1338 = !DILocation(line: 587, column: 17, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 587, column: 11)
!1340 = !DILocation(line: 587, column: 11, scope: !1221)
!1341 = !DILocation(line: 589, column: 19, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 589, column: 11)
!1343 = !DILocation(line: 589, column: 26, scope: !1342)
!1344 = !DILocation(line: 589, column: 37, scope: !1342)
!1345 = !DILocation(line: 589, column: 48, scope: !1342)
!1346 = !DILocation(line: 589, column: 53, scope: !1342)
!1347 = !DILocation(line: 589, column: 11, scope: !1221)
!1348 = !DILocation(line: 591, column: 22, scope: !1221)
!1349 = !{!1132, !801, i64 0}
!1350 = !DILocation(line: 591, column: 7, scope: !1221)
!1351 = !DILocation(line: 596, column: 35, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !475, line: 595, column: 9)
!1353 = distinct !DILexicalBlock(scope: !1221, file: !475, line: 592, column: 7)
!1354 = !{!1132, !801, i64 24}
!1355 = !DILocation(line: 596, column: 16, scope: !1352)
!1356 = !DILocation(line: 597, column: 17, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !475, line: 597, column: 15)
!1358 = !DILocation(line: 597, column: 44, scope: !1357)
!1359 = !DILocation(line: 597, column: 25, scope: !1357)
!1360 = !DILocation(line: 597, column: 15, scope: !1352)
!1361 = !DILocation(line: 599, column: 21, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1352, file: !475, line: 599, column: 15)
!1363 = !DILocation(line: 599, column: 15, scope: !1352)
!1364 = !DILocation(line: 601, column: 19, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1362, file: !475, line: 600, column: 13)
!1366 = !DILocation(line: 607, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !475, line: 607, column: 17)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !475, line: 601, column: 19)
!1369 = !DILocation(line: 608, column: 32, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1367, file: !475, line: 607, column: 17)
!1371 = !DILocation(line: 611, column: 14, scope: !1352)
!1372 = !DILocation(line: 603, column: 20, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !475, line: 602, column: 17)
!1374 = !DILocation(line: 605, column: 17, scope: !1373)
!1375 = !DILocation(line: 0, scope: !1352)
!1376 = !DILocation(line: 612, column: 11, scope: !1352)
!1377 = !DILocation(line: 618, column: 35, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1353, file: !475, line: 617, column: 9)
!1379 = !DILocation(line: 618, column: 16, scope: !1378)
!1380 = !DILocation(line: 619, column: 11, scope: !1378)
!1381 = !DILocation(line: 502, column: 13, scope: !1060)
!1382 = !DILocation(line: 631, column: 59, scope: !1091)
!1383 = !DILocation(line: 631, column: 7, scope: !1091)
!1384 = !DILocation(line: 632, column: 11, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 632, column: 9)
!1386 = !DILocation(line: 632, column: 9, scope: !1091)
!1387 = !DILocation(line: 634, column: 13, scope: !1091)
!1388 = !DILocation(line: 635, column: 17, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !475, line: 635, column: 5)
!1390 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 635, column: 5)
!1391 = !DILocation(line: 635, column: 5, scope: !1390)
!1392 = !{!798, !802, i64 72}
!1393 = !DILocation(line: 637, column: 30, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !475, line: 636, column: 5)
!1395 = !DILocation(line: 637, column: 28, scope: !1394)
!1396 = !DILocation(line: 638, column: 7, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1394, file: !475, line: 638, column: 7)
!1398 = !DILocation(line: 637, column: 13, scope: !1394)
!1399 = !DILocation(line: 638, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !475, line: 638, column: 7)
!1401 = !{!804, !804, i64 0}
!1402 = !DILocation(line: 639, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !475, line: 639, column: 7)
!1404 = !{!803, !804, i64 4}
!1405 = !{!803, !804, i64 2}
!1406 = !{!803, !804, i64 0}
!1407 = !{!803, !804, i64 6}
!1408 = !DILocation(line: 635, column: 46, scope: !1389)
!1409 = distinct !{!1409, !1391, !1410, !934, !935}
!1410 = !DILocation(line: 640, column: 5, scope: !1390)
!1411 = !DILocation(line: 641, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 641, column: 9)
!1413 = !DILocation(line: 641, column: 60, scope: !1412)
!1414 = !DILocation(line: 641, column: 9, scope: !1091)
!1415 = !DILocation(line: 643, column: 58, scope: !1091)
!1416 = !DILocation(line: 0, scope: !1196, inlinedAt: !1208)
!1417 = !DILocation(line: 30, column: 3, scope: !1196, inlinedAt: !1208)
!1418 = !DILocation(line: 31, column: 5, scope: !1196, inlinedAt: !1208)
!1419 = !DILocation(line: 33, column: 14, scope: !1420, inlinedAt: !1208)
!1420 = distinct !DILexicalBlock(scope: !1196, file: !1197, line: 33, column: 7)
!1421 = !{!798, !802, i64 568}
!1422 = !DILocation(line: 33, column: 31, scope: !1420, inlinedAt: !1208)
!1423 = !DILocation(line: 33, column: 7, scope: !1196, inlinedAt: !1208)
!1424 = !DILocation(line: 37, column: 1, scope: !1196, inlinedAt: !1208)
!1425 = !DILocation(line: 644, column: 9, scope: !1091)
!1426 = !DILocation(line: 35, column: 10, scope: !1196, inlinedAt: !1208)
!1427 = !DILocation(line: 36, column: 17, scope: !1196, inlinedAt: !1208)
!1428 = !DILocation(line: 36, column: 63, scope: !1196, inlinedAt: !1208)
!1429 = !{!798, !802, i64 576}
!1430 = !DILocation(line: 36, column: 10, scope: !1196, inlinedAt: !1208)
!1431 = !DILocation(line: 644, column: 17, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1091, file: !475, line: 644, column: 9)
!1433 = !DILocation(line: 0, scope: !1093)
!1434 = !DILocation(line: 512, column: 9, scope: !1093)
!1435 = !DILocation(line: 648, column: 14, scope: !1060)
!1436 = !DILocation(line: 649, column: 44, scope: !1060)
!1437 = !DILocalVariable(name: "x", arg: 1, scope: !1438, file: !475, line: 369, type: !726)
!1438 = distinct !DISubprogram(name: "MagickMax", scope: !475, file: !475, line: 369, type: !1439, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!492, !726, !726}
!1441 = !{!1437, !1442}
!1442 = !DILocalVariable(name: "y", arg: 2, scope: !1438, file: !475, line: 369, type: !726)
!1443 = !DILocation(line: 0, scope: !1438, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 649, column: 24, scope: !1060)
!1445 = !DILocation(line: 649, column: 14, scope: !1060)
!1446 = !DILocation(line: 650, column: 10, scope: !1060)
!1447 = !DILocation(line: 650, column: 21, scope: !1060)
!1448 = !{!798, !799, i64 8}
!1449 = !DILocation(line: 654, column: 29, scope: !1060)
!1450 = !DILocation(line: 655, column: 29, scope: !1060)
!1451 = !DILocation(line: 656, column: 30, scope: !1060)
!1452 = !DILocation(line: 657, column: 3, scope: !1060)
!1453 = !DILocation(line: 658, column: 1, scope: !1060)
!1454 = !DISubprogram(name: "AcquireQuantumMemory", scope: !835, file: !835, line: 42, type: !1455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!489, !726, !726}
!1457 = !DISubprogram(name: "ReadBlobByte", scope: !955, file: !955, line: 79, type: !1458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!491, !506}
!1460 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !451, file: !451, line: 53, type: !1461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1066, !1200, !842}
!1463 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !451, file: !451, line: 101, type: !1464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!527, !1066, !1466, !1466, !726, !726, !842}
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!1467 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !451, file: !451, line: 77, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!716, !1066}
!1470 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !451, file: !451, line: 89, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!520, !1066, !842}
!1473 = !DISubprogram(name: "DestroyCacheView", scope: !451, file: !451, line: 57, type: !1474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1066, !1066}
!1476 = !DISubprogram(name: "RelinquishMagickMemory", scope: !835, file: !835, line: 51, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!489, !489}
!1479 = distinct !DISubprogram(name: "HuffmanEncodeImage", scope: !475, file: !475, line: 688, type: !1480, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1612)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!520, !1482, !506, !506}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !6, line: 223, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !75, line: 356, size: 134336, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1521, !1522, !1523, !1524, !1525, !1526, !1528, !1529, !1530, !1531, !1532, !1533, !1541, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1609, !1610, !1611}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !1485, file: !75, line: 359, baseType: !515, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !1485, file: !75, line: 362, baseType: !518, size: 32, offset: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !1485, file: !75, line: 365, baseType: !520, size: 32, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !1485, file: !75, line: 366, baseType: !520, size: 32, offset: 96)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !1485, file: !75, line: 367, baseType: !520, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !1485, file: !75, line: 368, baseType: !520, size: 32, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1485, file: !75, line: 371, baseType: !562, size: 64, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !1485, file: !75, line: 372, baseType: !562, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1485, file: !75, line: 373, baseType: !562, size: 64, offset: 320)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !1485, file: !75, line: 374, baseType: !562, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !1485, file: !75, line: 377, baseType: !492, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !1485, file: !75, line: 378, baseType: !492, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1485, file: !75, line: 379, baseType: !492, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !1485, file: !75, line: 382, baseType: !585, size: 32, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !1485, file: !75, line: 385, baseType: !587, size: 32, offset: 672)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1485, file: !75, line: 388, baseType: !560, size: 32, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !1485, file: !75, line: 391, baseType: !492, size: 64, offset: 768)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !1485, file: !75, line: 394, baseType: !562, size: 64, offset: 832)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !1485, file: !75, line: 395, baseType: !562, size: 64, offset: 896)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !1485, file: !75, line: 396, baseType: !562, size: 64, offset: 960)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !1485, file: !75, line: 397, baseType: !562, size: 64, offset: 1024)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !1485, file: !75, line: 398, baseType: !562, size: 64, offset: 1088)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !1485, file: !75, line: 401, baseType: !541, size: 64, offset: 1152)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1485, file: !75, line: 402, baseType: !541, size: 64, offset: 1216)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !1485, file: !75, line: 405, baseType: !528, size: 64, offset: 1280)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !1485, file: !75, line: 406, baseType: !528, size: 64, offset: 1344)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !1485, file: !75, line: 407, baseType: !528, size: 64, offset: 1408)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !1485, file: !75, line: 410, baseType: !520, size: 32, offset: 1472)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !1485, file: !75, line: 411, baseType: !520, size: 32, offset: 1504)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !1485, file: !75, line: 414, baseType: !492, size: 64, offset: 1536)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1485, file: !75, line: 417, baseType: !513, size: 32, offset: 1600)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1485, file: !75, line: 420, baseType: !701, size: 32, offset: 1632)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !1485, file: !75, line: 423, baseType: !1520, size: 32, offset: 1664)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !396, line: 59, baseType: !395)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1485, file: !75, line: 426, baseType: !478, size: 64, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !1485, file: !75, line: 429, baseType: !520, size: 32, offset: 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !1485, file: !75, line: 430, baseType: !520, size: 32, offset: 1824)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !1485, file: !75, line: 433, baseType: !562, size: 64, offset: 1856)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !1485, file: !75, line: 434, baseType: !562, size: 64, offset: 1920)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1485, file: !75, line: 437, baseType: !1527, size: 32, offset: 1984)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !6, line: 202, baseType: !428)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1485, file: !75, line: 440, baseType: !506, size: 64, offset: 2048)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1485, file: !75, line: 443, baseType: !489, size: 64, offset: 2112)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !1485, file: !75, line: 446, baseType: !626, size: 64, offset: 2176)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !1485, file: !75, line: 449, baseType: !489, size: 64, offset: 2240)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1485, file: !75, line: 450, baseType: !489, size: 64, offset: 2304)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !1485, file: !75, line: 453, baseType: !1534, size: 64, offset: 2368)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !1535, line: 26, baseType: !1536)
!1535 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!492, !1200, !1539, !726}
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1485, file: !75, line: 456, baseType: !1542, size: 64, offset: 2432)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1544, line: 7, baseType: !1545)
!1544 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1546, line: 49, size: 1728, elements: !1547)
!1546 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1563, !1565, !1566, !1567, !1569, !1570, !1572, !1576, !1579, !1581, !1584, !1587, !1588, !1589, !1590, !1591}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1545, file: !1546, line: 51, baseType: !491, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1545, file: !1546, line: 54, baseType: !562, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1545, file: !1546, line: 55, baseType: !562, size: 64, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1545, file: !1546, line: 56, baseType: !562, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1545, file: !1546, line: 57, baseType: !562, size: 64, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1545, file: !1546, line: 58, baseType: !562, size: 64, offset: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1545, file: !1546, line: 59, baseType: !562, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1545, file: !1546, line: 60, baseType: !562, size: 64, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1545, file: !1546, line: 61, baseType: !562, size: 64, offset: 512)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1545, file: !1546, line: 64, baseType: !562, size: 64, offset: 576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1545, file: !1546, line: 65, baseType: !562, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1545, file: !1546, line: 66, baseType: !562, size: 64, offset: 704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1545, file: !1546, line: 68, baseType: !1561, size: 64, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1546, line: 36, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1545, file: !1546, line: 70, baseType: !1564, size: 64, offset: 832)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1545, file: !1546, line: 72, baseType: !491, size: 32, offset: 896)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1545, file: !1546, line: 73, baseType: !491, size: 32, offset: 928)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1545, file: !1546, line: 74, baseType: !1568, size: 64, offset: 960)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !481, line: 152, baseType: !482)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1545, file: !1546, line: 77, baseType: !533, size: 16, offset: 1024)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1545, file: !1546, line: 78, baseType: !1571, size: 8, offset: 1040)
!1571 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1545, file: !1546, line: 79, baseType: !1573, size: 8, offset: 1048)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 8, elements: !1574)
!1574 = !{!1575}
!1575 = !DISubrange(count: 1)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1545, file: !1546, line: 81, baseType: !1577, size: 64, offset: 1088)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1546, line: 43, baseType: null)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1545, file: !1546, line: 89, baseType: !1580, size: 64, offset: 1152)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !481, line: 153, baseType: !482)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1545, file: !1546, line: 91, baseType: !1582, size: 64, offset: 1216)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1546, line: 37, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1545, file: !1546, line: 92, baseType: !1585, size: 64, offset: 1280)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1546, line: 38, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1545, file: !1546, line: 93, baseType: !1564, size: 64, offset: 1344)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1545, file: !1546, line: 94, baseType: !489, size: 64, offset: 1408)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1545, file: !1546, line: 95, baseType: !492, size: 64, offset: 1472)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1545, file: !1546, line: 96, baseType: !491, size: 32, offset: 1536)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1545, file: !1546, line: 98, baseType: !1592, size: 160, offset: 1568)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !563, size: 160, elements: !1593)
!1593 = !{!1594}
!1594 = !DISubrange(count: 20)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !1485, file: !75, line: 459, baseType: !489, size: 64, offset: 2496)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1485, file: !75, line: 462, baseType: !492, size: 64, offset: 2560)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !1485, file: !75, line: 465, baseType: !648, size: 32768, offset: 2624)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !1485, file: !75, line: 466, baseType: !648, size: 32768, offset: 35392)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !1485, file: !75, line: 467, baseType: !648, size: 32768, offset: 68160)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1485, file: !75, line: 468, baseType: !648, size: 32768, offset: 100928)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1485, file: !75, line: 471, baseType: !520, size: 32, offset: 133696)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !1485, file: !75, line: 474, baseType: !562, size: 64, offset: 133760)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !1485, file: !75, line: 477, baseType: !492, size: 64, offset: 133824)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !1485, file: !75, line: 478, baseType: !492, size: 64, offset: 133888)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !1485, file: !75, line: 481, baseType: !528, size: 64, offset: 133952)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1485, file: !75, line: 484, baseType: !492, size: 64, offset: 134016)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !1485, file: !75, line: 487, baseType: !1608, size: 32, offset: 134080)
!1608 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !451, line: 47, baseType: !450)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !1485, file: !75, line: 490, baseType: !528, size: 64, offset: 134112)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !1485, file: !75, line: 493, baseType: !489, size: 64, offset: 134208)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !1485, file: !75, line: 496, baseType: !520, size: 32, offset: 134272)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1613 = !DILocalVariable(name: "image_info", arg: 1, scope: !1479, file: !475, line: 688, type: !1482)
!1614 = !DILocalVariable(name: "image", arg: 2, scope: !1479, file: !475, line: 689, type: !506)
!1615 = !DILocalVariable(name: "inject_image", arg: 3, scope: !1479, file: !475, line: 689, type: !506)
!1616 = !DILocalVariable(name: "entry", scope: !1479, file: !475, line: 720, type: !713)
!1617 = !DILocalVariable(name: "exception", scope: !1479, file: !475, line: 723, type: !842)
!1618 = !DILocalVariable(name: "k", scope: !1479, file: !475, line: 726, type: !491)
!1619 = !DILocalVariable(name: "runlength", scope: !1479, file: !475, line: 727, type: !491)
!1620 = !DILocalVariable(name: "huffman_image", scope: !1479, file: !475, line: 730, type: !506)
!1621 = !DILocalVariable(name: "proceed", scope: !1479, file: !475, line: 733, type: !520)
!1622 = !DILocalVariable(name: "i", scope: !1479, file: !475, line: 736, type: !478)
!1623 = !DILocalVariable(name: "x", scope: !1479, file: !475, line: 737, type: !478)
!1624 = !DILocalVariable(name: "p", scope: !1479, file: !475, line: 740, type: !717)
!1625 = !DILocalVariable(name: "q", scope: !1479, file: !475, line: 743, type: !505)
!1626 = !DILocalVariable(name: "mask", scope: !1479, file: !475, line: 746, type: !492)
!1627 = !DILocalVariable(name: "one", scope: !1479, file: !475, line: 747, type: !492)
!1628 = !DILocalVariable(name: "width", scope: !1479, file: !475, line: 748, type: !492)
!1629 = !DILocalVariable(name: "n", scope: !1479, file: !475, line: 751, type: !478)
!1630 = !DILocalVariable(name: "y", scope: !1479, file: !475, line: 752, type: !478)
!1631 = !DILocalVariable(name: "byte", scope: !1479, file: !475, line: 755, type: !486)
!1632 = !DILocalVariable(name: "bit", scope: !1479, file: !475, line: 756, type: !486)
!1633 = !DILocalVariable(name: "scanline", scope: !1479, file: !475, line: 757, type: !505)
!1634 = !DILocation(line: 0, scope: !1479)
!1635 = !DILocation(line: 766, column: 14, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 766, column: 7)
!1637 = !DILocation(line: 766, column: 20, scope: !1636)
!1638 = !DILocation(line: 766, column: 7, scope: !1479)
!1639 = !DILocation(line: 767, column: 68, scope: !1636)
!1640 = !DILocation(line: 767, column: 12, scope: !1636)
!1641 = !DILocation(line: 767, column: 5, scope: !1636)
!1642 = !DILocation(line: 771, column: 23, scope: !1479)
!1643 = !DILocation(line: 772, column: 33, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 772, column: 7)
!1645 = !DILocation(line: 772, column: 7, scope: !1644)
!1646 = !DILocation(line: 772, column: 47, scope: !1644)
!1647 = !DILocation(line: 772, column: 7, scope: !1479)
!1648 = !DILocation(line: 773, column: 44, scope: !1644)
!1649 = !DILocation(line: 0, scope: !1438, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 773, column: 20, scope: !1644)
!1651 = !DILocation(line: 773, column: 5, scope: !1644)
!1652 = !DILocation(line: 774, column: 65, scope: !1479)
!1653 = !DILocation(line: 774, column: 30, scope: !1479)
!1654 = !DILocation(line: 776, column: 16, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 776, column: 7)
!1656 = !DILocation(line: 776, column: 7, scope: !1479)
!1657 = !DILocation(line: 777, column: 5, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !475, line: 777, column: 5)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !475, line: 777, column: 5)
!1660 = !DILocation(line: 779, column: 10, scope: !1479)
!1661 = !DILocation(line: 780, column: 64, scope: !1479)
!1662 = !DILocation(line: 780, column: 17, scope: !1479)
!1663 = !DILocation(line: 781, column: 21, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 781, column: 7)
!1665 = !DILocation(line: 781, column: 7, scope: !1479)
!1666 = !DILocation(line: 783, column: 34, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1664, file: !475, line: 782, column: 5)
!1668 = !DILocation(line: 784, column: 7, scope: !1667)
!1669 = !DILocation(line: 786, column: 10, scope: !1479)
!1670 = !DILocation(line: 789, column: 7, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 789, column: 7)
!1672 = !DILocation(line: 789, column: 47, scope: !1671)
!1673 = !DILocation(line: 789, column: 7, scope: !1479)
!1674 = !DILocation(line: 790, column: 5, scope: !1671)
!1675 = !DILocation(line: 797, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !475, line: 797, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !475, line: 796, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 796, column: 7)
!1679 = distinct !DILexicalBlock(scope: !1671, file: !475, line: 792, column: 5)
!1680 = !DILocation(line: 797, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !475, line: 797, column: 9)
!1682 = !DILocation(line: 797, column: 9, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !475, line: 797, column: 9)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !475, line: 797, column: 9)
!1685 = !DILocation(line: 797, column: 9, scope: !1684)
!1686 = !DILocation(line: 0, scope: !1676)
!1687 = !DILocation(line: 796, column: 26, scope: !1677)
!1688 = !DILocation(line: 796, column: 19, scope: !1677)
!1689 = !DILocation(line: 796, column: 7, scope: !1678)
!1690 = distinct !{!1690, !1689, !1691, !934, !935}
!1691 = !DILocation(line: 797, column: 9, scope: !1678)
!1692 = !DILocation(line: 798, column: 7, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1679, file: !475, line: 798, column: 7)
!1694 = !DILocation(line: 798, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1693, file: !475, line: 798, column: 7)
!1696 = !DILocation(line: 798, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !475, line: 798, column: 7)
!1698 = distinct !DILexicalBlock(scope: !1695, file: !475, line: 798, column: 7)
!1699 = !DILocation(line: 798, column: 7, scope: !1698)
!1700 = !DILocation(line: 803, column: 30, scope: !1479)
!1701 = !DILocation(line: 807, column: 57, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !475, line: 806, column: 3)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !475, line: 805, column: 3)
!1704 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 805, column: 3)
!1705 = !DILocation(line: 35, column: 70, scope: !1196, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 872, column: 17, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !475, line: 871, column: 7)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 870, column: 9)
!1709 = !DILocation(line: 805, column: 42, scope: !1703)
!1710 = !DILocation(line: 805, column: 15, scope: !1703)
!1711 = !DILocation(line: 805, column: 3, scope: !1704)
!1712 = !DILocation(line: 807, column: 7, scope: !1702)
!1713 = !DILocation(line: 808, column: 11, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 808, column: 9)
!1715 = !DILocation(line: 808, column: 9, scope: !1702)
!1716 = !DILocation(line: 810, column: 44, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !475, line: 810, column: 5)
!1718 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 810, column: 5)
!1719 = !DILocation(line: 810, column: 17, scope: !1717)
!1720 = !DILocation(line: 810, column: 5, scope: !1718)
!1721 = !DILocation(line: 820, column: 5, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 820, column: 5)
!1723 = !DILocation(line: 812, column: 29, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !475, line: 811, column: 5)
!1725 = !DILocation(line: 812, column: 64, scope: !1724)
!1726 = !DILocation(line: 812, column: 12, scope: !1724)
!1727 = !DILocation(line: 812, column: 9, scope: !1724)
!1728 = !DILocation(line: 812, column: 11, scope: !1724)
!1729 = !DILocation(line: 814, column: 8, scope: !1724)
!1730 = !DILocation(line: 810, column: 54, scope: !1717)
!1731 = distinct !{!1731, !1720, !1732, !934, !935}
!1732 = !DILocation(line: 815, column: 5, scope: !1718)
!1733 = !DILocation(line: 825, column: 7, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 825, column: 7)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !475, line: 821, column: 5)
!1736 = distinct !DILexicalBlock(scope: !1722, file: !475, line: 820, column: 5)
!1737 = !DILocation(line: 825, column: 38, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !475, line: 825, column: 7)
!1739 = !DILocation(line: 825, column: 41, scope: !1738)
!1740 = !DILocation(line: 827, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1738, file: !475, line: 826, column: 7)
!1742 = !DILocation(line: 828, column: 18, scope: !1741)
!1743 = !DILocation(line: 825, column: 50, scope: !1738)
!1744 = !DILocation(line: 825, column: 29, scope: !1738)
!1745 = !DILocation(line: 825, column: 34, scope: !1738)
!1746 = distinct !{!1746, !1733, !1747, !934, !935}
!1747 = !DILocation(line: 829, column: 7, scope: !1734)
!1748 = !DILocation(line: 0, scope: !1734)
!1749 = !DILocation(line: 0, scope: !1702)
!1750 = !DILocation(line: 0, scope: !1722)
!1751 = !DILocation(line: 830, column: 21, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 830, column: 11)
!1753 = !DILocation(line: 830, column: 11, scope: !1735)
!1754 = !DILocation(line: 832, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !475, line: 832, column: 15)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !475, line: 831, column: 9)
!1757 = !DILocation(line: 832, column: 15, scope: !1756)
!1758 = !DILocation(line: 833, column: 38, scope: !1755)
!1759 = !DILocation(line: 833, column: 42, scope: !1755)
!1760 = !DILocation(line: 833, column: 26, scope: !1755)
!1761 = !DILocation(line: 833, column: 13, scope: !1755)
!1762 = !DILocalVariable(name: "x", arg: 1, scope: !1763, file: !475, line: 376, type: !726)
!1763 = distinct !DISubprogram(name: "MagickMin", scope: !475, file: !475, line: 376, type: !1439, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1764)
!1764 = !{!1762, !1765}
!1765 = !DILocalVariable(name: "y", arg: 2, scope: !1763, file: !475, line: 376, type: !726)
!1766 = !DILocation(line: 0, scope: !1763, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 835, column: 28, scope: !1755)
!1768 = !DILocation(line: 835, column: 62, scope: !1755)
!1769 = !DILocation(line: 835, column: 68, scope: !1755)
!1770 = !DILocation(line: 835, column: 26, scope: !1755)
!1771 = !DILocation(line: 0, scope: !1755)
!1772 = !DILocation(line: 836, column: 36, scope: !1756)
!1773 = !DILocation(line: 836, column: 20, scope: !1756)
!1774 = !DILocation(line: 837, column: 11, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1756, file: !475, line: 837, column: 11)
!1776 = !DILocation(line: 837, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !475, line: 837, column: 11)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !475, line: 837, column: 11)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !475, line: 837, column: 11)
!1780 = !DILocation(line: 837, column: 11, scope: !1778)
!1781 = !DILocation(line: 837, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1778, file: !475, line: 837, column: 11)
!1783 = !DILocation(line: 837, column: 11, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !475, line: 837, column: 11)
!1785 = distinct !DILexicalBlock(scope: !1782, file: !475, line: 837, column: 11)
!1786 = !DILocation(line: 837, column: 11, scope: !1785)
!1787 = !DILocation(line: 0, scope: !961, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 837, column: 11, scope: !1784)
!1789 = !DILocation(line: 320, column: 10, scope: !961, inlinedAt: !1788)
!1790 = !DILocation(line: 320, column: 42, scope: !961, inlinedAt: !1788)
!1791 = !DILocation(line: 320, column: 3, scope: !961, inlinedAt: !1788)
!1792 = !DILocation(line: 320, column: 49, scope: !961, inlinedAt: !1788)
!1793 = !DILocation(line: 321, column: 10, scope: !961, inlinedAt: !1788)
!1794 = !DILocation(line: 321, column: 25, scope: !961, inlinedAt: !1788)
!1795 = !DILocation(line: 322, column: 30, scope: !978, inlinedAt: !1788)
!1796 = !DILocation(line: 322, column: 7, scope: !961, inlinedAt: !1788)
!1797 = !DILocation(line: 324, column: 21, scope: !961, inlinedAt: !1788)
!1798 = !DILocation(line: 325, column: 3, scope: !982, inlinedAt: !1788)
!1799 = !DILocation(line: 0, scope: !749, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 327, column: 12, scope: !985, inlinedAt: !1788)
!1801 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !1800)
!1802 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !1800)
!1803 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !1800)
!1804 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !1800)
!1805 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !1800)
!1806 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !1800)
!1807 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !1800)
!1808 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !1800)
!1809 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !1800)
!1810 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !1800)
!1811 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !1800)
!1812 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !1800)
!1813 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !1800)
!1814 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !1800)
!1815 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !1800)
!1816 = !DILocation(line: 327, column: 5, scope: !985, inlinedAt: !1788)
!1817 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !1800)
!1818 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !1800)
!1819 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !1800)
!1820 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !1800)
!1821 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !1800)
!1822 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !1800)
!1823 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !1800)
!1824 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !1800)
!1825 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !1800)
!1826 = distinct !{!1826, !1825, !1827, !934, !935}
!1827 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !1800)
!1828 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !1800)
!1829 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !1800)
!1830 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !1800)
!1831 = !DILocation(line: 327, column: 29, scope: !1019, inlinedAt: !1788)
!1832 = !DILocation(line: 327, column: 32, scope: !1019, inlinedAt: !1788)
!1833 = !DILocation(line: 329, column: 14, scope: !1022, inlinedAt: !1788)
!1834 = !DILocation(line: 329, column: 23, scope: !1022, inlinedAt: !1788)
!1835 = !DILocation(line: 329, column: 33, scope: !1022, inlinedAt: !1788)
!1836 = !DILocation(line: 330, column: 39, scope: !1026, inlinedAt: !1788)
!1837 = !DILocation(line: 330, column: 44, scope: !1026, inlinedAt: !1788)
!1838 = !DILocation(line: 332, column: 18, scope: !1029, inlinedAt: !1788)
!1839 = !DILocation(line: 333, column: 18, scope: !1029, inlinedAt: !1788)
!1840 = !DILocation(line: 333, column: 27, scope: !1029, inlinedAt: !1788)
!1841 = !DILocation(line: 333, column: 37, scope: !1029, inlinedAt: !1788)
!1842 = !DILocation(line: 335, column: 50, scope: !1022, inlinedAt: !1788)
!1843 = !DILocation(line: 334, column: 9, scope: !1029, inlinedAt: !1788)
!1844 = !DILocation(line: 335, column: 14, scope: !1022, inlinedAt: !1788)
!1845 = !DILocation(line: 327, column: 42, scope: !1019, inlinedAt: !1788)
!1846 = distinct !{!1846, !1816, !1847, !934, !935}
!1847 = !DILocation(line: 336, column: 5, scope: !985, inlinedAt: !1788)
!1848 = !DILocation(line: 337, column: 6, scope: !986, inlinedAt: !1788)
!1849 = !DILocation(line: 325, column: 43, scope: !987, inlinedAt: !1788)
!1850 = !DILocation(line: 325, column: 36, scope: !987, inlinedAt: !1788)
!1851 = distinct !{!1851, !1798, !1852, !934, !935}
!1852 = !DILocation(line: 338, column: 3, scope: !982, inlinedAt: !1788)
!1853 = !DILocation(line: 339, column: 10, scope: !961, inlinedAt: !1788)
!1854 = !DILocation(line: 339, column: 25, scope: !961, inlinedAt: !1788)
!1855 = !DILocation(line: 340, column: 4, scope: !961, inlinedAt: !1788)
!1856 = !DILocation(line: 342, column: 32, scope: !1048, inlinedAt: !1788)
!1857 = !DILocation(line: 342, column: 5, scope: !1048, inlinedAt: !1788)
!1858 = !DILocation(line: 342, column: 30, scope: !1048, inlinedAt: !1788)
!1859 = !DILocation(line: 341, column: 3, scope: !1049, inlinedAt: !1788)
!1860 = !DILocation(line: 342, column: 34, scope: !1048, inlinedAt: !1788)
!1861 = !DILocation(line: 342, column: 12, scope: !1048, inlinedAt: !1788)
!1862 = !DILocation(line: 341, column: 21, scope: !1048, inlinedAt: !1788)
!1863 = !DILocation(line: 341, column: 15, scope: !1048, inlinedAt: !1788)
!1864 = distinct !{!1864, !1859, !1865, !934, !935}
!1865 = !DILocation(line: 342, column: 36, scope: !1049, inlinedAt: !1788)
!1866 = !DILocation(line: 0, scope: !1778)
!1867 = !DILocation(line: 837, column: 11, scope: !1779)
!1868 = distinct !{!1868, !1774, !1774, !934, !935}
!1869 = !DILocation(line: 0, scope: !1763, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 839, column: 21, scope: !1735)
!1871 = !DILocation(line: 0, scope: !1735)
!1872 = !DILocation(line: 787, column: 7, scope: !1479)
!1873 = !DILocation(line: 788, column: 6, scope: !1479)
!1874 = !DILocation(line: 840, column: 7, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 840, column: 7)
!1876 = !DILocation(line: 840, column: 7, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !475, line: 840, column: 7)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !475, line: 840, column: 7)
!1879 = distinct !DILexicalBlock(scope: !1875, file: !475, line: 840, column: 7)
!1880 = !DILocation(line: 840, column: 7, scope: !1878)
!1881 = !DILocation(line: 840, column: 7, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !475, line: 840, column: 7)
!1883 = !DILocation(line: 840, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !475, line: 840, column: 7)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !475, line: 840, column: 7)
!1886 = !DILocation(line: 840, column: 7, scope: !1885)
!1887 = !DILocation(line: 0, scope: !961, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 840, column: 7, scope: !1884)
!1889 = !DILocation(line: 320, column: 10, scope: !961, inlinedAt: !1888)
!1890 = !DILocation(line: 320, column: 42, scope: !961, inlinedAt: !1888)
!1891 = !DILocation(line: 320, column: 3, scope: !961, inlinedAt: !1888)
!1892 = !DILocation(line: 320, column: 49, scope: !961, inlinedAt: !1888)
!1893 = !DILocation(line: 321, column: 10, scope: !961, inlinedAt: !1888)
!1894 = !DILocation(line: 321, column: 25, scope: !961, inlinedAt: !1888)
!1895 = !DILocation(line: 322, column: 30, scope: !978, inlinedAt: !1888)
!1896 = !DILocation(line: 322, column: 7, scope: !961, inlinedAt: !1888)
!1897 = !DILocation(line: 324, column: 21, scope: !961, inlinedAt: !1888)
!1898 = !DILocation(line: 325, column: 3, scope: !982, inlinedAt: !1888)
!1899 = !DILocation(line: 0, scope: !749, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 327, column: 12, scope: !985, inlinedAt: !1888)
!1901 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !1900)
!1902 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !1900)
!1903 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !1900)
!1904 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !1900)
!1905 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !1900)
!1906 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !1900)
!1907 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !1900)
!1908 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !1900)
!1909 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !1900)
!1910 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !1900)
!1911 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !1900)
!1912 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !1900)
!1913 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !1900)
!1914 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !1900)
!1915 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !1900)
!1916 = !DILocation(line: 327, column: 5, scope: !985, inlinedAt: !1888)
!1917 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !1900)
!1918 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !1900)
!1919 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !1900)
!1920 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !1900)
!1921 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !1900)
!1922 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !1900)
!1923 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !1900)
!1924 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !1900)
!1925 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !1900)
!1926 = distinct !{!1926, !1925, !1927, !934, !935}
!1927 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !1900)
!1928 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !1900)
!1929 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !1900)
!1930 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !1900)
!1931 = !DILocation(line: 327, column: 29, scope: !1019, inlinedAt: !1888)
!1932 = !DILocation(line: 327, column: 32, scope: !1019, inlinedAt: !1888)
!1933 = !DILocation(line: 329, column: 14, scope: !1022, inlinedAt: !1888)
!1934 = !DILocation(line: 329, column: 23, scope: !1022, inlinedAt: !1888)
!1935 = !DILocation(line: 329, column: 33, scope: !1022, inlinedAt: !1888)
!1936 = !DILocation(line: 330, column: 39, scope: !1026, inlinedAt: !1888)
!1937 = !DILocation(line: 330, column: 44, scope: !1026, inlinedAt: !1888)
!1938 = !DILocation(line: 332, column: 18, scope: !1029, inlinedAt: !1888)
!1939 = !DILocation(line: 333, column: 18, scope: !1029, inlinedAt: !1888)
!1940 = !DILocation(line: 333, column: 27, scope: !1029, inlinedAt: !1888)
!1941 = !DILocation(line: 333, column: 37, scope: !1029, inlinedAt: !1888)
!1942 = !DILocation(line: 335, column: 50, scope: !1022, inlinedAt: !1888)
!1943 = !DILocation(line: 334, column: 9, scope: !1029, inlinedAt: !1888)
!1944 = !DILocation(line: 335, column: 14, scope: !1022, inlinedAt: !1888)
!1945 = !DILocation(line: 327, column: 42, scope: !1019, inlinedAt: !1888)
!1946 = distinct !{!1946, !1916, !1947, !934, !935}
!1947 = !DILocation(line: 336, column: 5, scope: !985, inlinedAt: !1888)
!1948 = !DILocation(line: 337, column: 6, scope: !986, inlinedAt: !1888)
!1949 = !DILocation(line: 325, column: 43, scope: !987, inlinedAt: !1888)
!1950 = !DILocation(line: 325, column: 36, scope: !987, inlinedAt: !1888)
!1951 = distinct !{!1951, !1898, !1952, !934, !935}
!1952 = !DILocation(line: 338, column: 3, scope: !982, inlinedAt: !1888)
!1953 = !DILocation(line: 339, column: 10, scope: !961, inlinedAt: !1888)
!1954 = !DILocation(line: 339, column: 25, scope: !961, inlinedAt: !1888)
!1955 = !DILocation(line: 340, column: 4, scope: !961, inlinedAt: !1888)
!1956 = !DILocation(line: 342, column: 32, scope: !1048, inlinedAt: !1888)
!1957 = !DILocation(line: 342, column: 5, scope: !1048, inlinedAt: !1888)
!1958 = !DILocation(line: 342, column: 30, scope: !1048, inlinedAt: !1888)
!1959 = !DILocation(line: 341, column: 3, scope: !1049, inlinedAt: !1888)
!1960 = !DILocation(line: 342, column: 34, scope: !1048, inlinedAt: !1888)
!1961 = !DILocation(line: 342, column: 12, scope: !1048, inlinedAt: !1888)
!1962 = !DILocation(line: 341, column: 21, scope: !1048, inlinedAt: !1888)
!1963 = !DILocation(line: 341, column: 15, scope: !1048, inlinedAt: !1888)
!1964 = distinct !{!1964, !1959, !1965, !934, !935}
!1965 = !DILocation(line: 342, column: 36, scope: !1049, inlinedAt: !1888)
!1966 = !DILocation(line: 0, scope: !1878)
!1967 = !DILocation(line: 840, column: 7, scope: !1879)
!1968 = distinct !{!1968, !1874, !1874, !934, !935}
!1969 = !DILocation(line: 841, column: 13, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1735, file: !475, line: 841, column: 11)
!1971 = !DILocation(line: 841, column: 11, scope: !1735)
!1972 = !DILocation(line: 846, column: 31, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !475, line: 846, column: 11)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !475, line: 846, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1970, file: !475, line: 842, column: 9)
!1976 = !DILocation(line: 846, column: 34, scope: !1973)
!1977 = !DILocation(line: 846, column: 40, scope: !1973)
!1978 = !DILocation(line: 848, column: 14, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !475, line: 847, column: 11)
!1980 = !DILocation(line: 849, column: 22, scope: !1979)
!1981 = !DILocation(line: 846, column: 54, scope: !1973)
!1982 = distinct !{!1982, !1983, !1984, !934, !935}
!1983 = !DILocation(line: 846, column: 11, scope: !1974)
!1984 = !DILocation(line: 850, column: 11, scope: !1974)
!1985 = !DILocation(line: 851, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1975, file: !475, line: 851, column: 15)
!1987 = !DILocation(line: 851, column: 15, scope: !1975)
!1988 = !DILocation(line: 853, column: 40, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !475, line: 852, column: 13)
!1990 = !DILocation(line: 853, column: 44, scope: !1989)
!1991 = !DILocation(line: 853, column: 28, scope: !1989)
!1992 = !DILocation(line: 854, column: 29, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !475, line: 854, column: 19)
!1994 = !DILocation(line: 854, column: 19, scope: !1989)
!1995 = !DILocation(line: 0, scope: !1763, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 855, column: 32, scope: !1993)
!1997 = !DILocation(line: 855, column: 66, scope: !1993)
!1998 = !DILocation(line: 855, column: 72, scope: !1993)
!1999 = !DILocation(line: 855, column: 30, scope: !1993)
!2000 = !DILocation(line: 855, column: 17, scope: !1993)
!2001 = !DILocation(line: 0, scope: !1989)
!2002 = !DILocation(line: 856, column: 40, scope: !1989)
!2003 = !DILocation(line: 856, column: 24, scope: !1989)
!2004 = !DILocation(line: 857, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !475, line: 857, column: 15)
!2006 = !DILocation(line: 857, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !475, line: 857, column: 15)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !475, line: 857, column: 15)
!2009 = distinct !DILexicalBlock(scope: !2005, file: !475, line: 857, column: 15)
!2010 = !DILocation(line: 857, column: 15, scope: !2008)
!2011 = !DILocation(line: 857, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !475, line: 857, column: 15)
!2013 = !DILocation(line: 857, column: 15, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !475, line: 857, column: 15)
!2015 = distinct !DILexicalBlock(scope: !2012, file: !475, line: 857, column: 15)
!2016 = !DILocation(line: 857, column: 15, scope: !2015)
!2017 = !DILocation(line: 0, scope: !961, inlinedAt: !2018)
!2018 = distinct !DILocation(line: 857, column: 15, scope: !2014)
!2019 = !DILocation(line: 320, column: 10, scope: !961, inlinedAt: !2018)
!2020 = !DILocation(line: 320, column: 42, scope: !961, inlinedAt: !2018)
!2021 = !DILocation(line: 320, column: 3, scope: !961, inlinedAt: !2018)
!2022 = !DILocation(line: 320, column: 49, scope: !961, inlinedAt: !2018)
!2023 = !DILocation(line: 321, column: 10, scope: !961, inlinedAt: !2018)
!2024 = !DILocation(line: 321, column: 25, scope: !961, inlinedAt: !2018)
!2025 = !DILocation(line: 322, column: 30, scope: !978, inlinedAt: !2018)
!2026 = !DILocation(line: 322, column: 7, scope: !961, inlinedAt: !2018)
!2027 = !DILocation(line: 324, column: 21, scope: !961, inlinedAt: !2018)
!2028 = !DILocation(line: 325, column: 3, scope: !982, inlinedAt: !2018)
!2029 = !DILocation(line: 0, scope: !749, inlinedAt: !2030)
!2030 = distinct !DILocation(line: 327, column: 12, scope: !985, inlinedAt: !2018)
!2031 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !2030)
!2032 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !2030)
!2033 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !2030)
!2034 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !2030)
!2035 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !2030)
!2036 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !2030)
!2037 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !2030)
!2038 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !2030)
!2039 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !2030)
!2040 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !2030)
!2041 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !2030)
!2042 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !2030)
!2043 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !2030)
!2044 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !2030)
!2045 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !2030)
!2046 = !DILocation(line: 327, column: 5, scope: !985, inlinedAt: !2018)
!2047 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !2030)
!2048 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !2030)
!2049 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !2030)
!2050 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !2030)
!2051 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !2030)
!2052 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !2030)
!2053 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !2030)
!2054 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !2030)
!2055 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !2030)
!2056 = distinct !{!2056, !2055, !2057, !934, !935}
!2057 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !2030)
!2058 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !2030)
!2059 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !2030)
!2060 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !2030)
!2061 = !DILocation(line: 327, column: 29, scope: !1019, inlinedAt: !2018)
!2062 = !DILocation(line: 327, column: 32, scope: !1019, inlinedAt: !2018)
!2063 = !DILocation(line: 329, column: 14, scope: !1022, inlinedAt: !2018)
!2064 = !DILocation(line: 329, column: 23, scope: !1022, inlinedAt: !2018)
!2065 = !DILocation(line: 329, column: 33, scope: !1022, inlinedAt: !2018)
!2066 = !DILocation(line: 330, column: 39, scope: !1026, inlinedAt: !2018)
!2067 = !DILocation(line: 330, column: 44, scope: !1026, inlinedAt: !2018)
!2068 = !DILocation(line: 332, column: 18, scope: !1029, inlinedAt: !2018)
!2069 = !DILocation(line: 333, column: 18, scope: !1029, inlinedAt: !2018)
!2070 = !DILocation(line: 333, column: 27, scope: !1029, inlinedAt: !2018)
!2071 = !DILocation(line: 333, column: 37, scope: !1029, inlinedAt: !2018)
!2072 = !DILocation(line: 335, column: 50, scope: !1022, inlinedAt: !2018)
!2073 = !DILocation(line: 334, column: 9, scope: !1029, inlinedAt: !2018)
!2074 = !DILocation(line: 335, column: 14, scope: !1022, inlinedAt: !2018)
!2075 = !DILocation(line: 327, column: 42, scope: !1019, inlinedAt: !2018)
!2076 = distinct !{!2076, !2046, !2077, !934, !935}
!2077 = !DILocation(line: 336, column: 5, scope: !985, inlinedAt: !2018)
!2078 = !DILocation(line: 337, column: 6, scope: !986, inlinedAt: !2018)
!2079 = !DILocation(line: 325, column: 43, scope: !987, inlinedAt: !2018)
!2080 = !DILocation(line: 325, column: 36, scope: !987, inlinedAt: !2018)
!2081 = distinct !{!2081, !2028, !2082, !934, !935}
!2082 = !DILocation(line: 338, column: 3, scope: !982, inlinedAt: !2018)
!2083 = !DILocation(line: 339, column: 10, scope: !961, inlinedAt: !2018)
!2084 = !DILocation(line: 339, column: 25, scope: !961, inlinedAt: !2018)
!2085 = !DILocation(line: 340, column: 4, scope: !961, inlinedAt: !2018)
!2086 = !DILocation(line: 342, column: 32, scope: !1048, inlinedAt: !2018)
!2087 = !DILocation(line: 342, column: 5, scope: !1048, inlinedAt: !2018)
!2088 = !DILocation(line: 342, column: 30, scope: !1048, inlinedAt: !2018)
!2089 = !DILocation(line: 341, column: 3, scope: !1049, inlinedAt: !2018)
!2090 = !DILocation(line: 342, column: 34, scope: !1048, inlinedAt: !2018)
!2091 = !DILocation(line: 342, column: 12, scope: !1048, inlinedAt: !2018)
!2092 = !DILocation(line: 341, column: 21, scope: !1048, inlinedAt: !2018)
!2093 = !DILocation(line: 341, column: 15, scope: !1048, inlinedAt: !2018)
!2094 = distinct !{!2094, !2089, !2095, !934, !935}
!2095 = !DILocation(line: 342, column: 36, scope: !1049, inlinedAt: !2018)
!2096 = !DILocation(line: 0, scope: !2008)
!2097 = !DILocation(line: 857, column: 15, scope: !2009)
!2098 = distinct !{!2098, !2004, !2004, !934, !935}
!2099 = !DILocation(line: 0, scope: !1763, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 859, column: 25, scope: !1975)
!2101 = !DILocation(line: 0, scope: !1975)
!2102 = !DILocation(line: 860, column: 11, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1975, file: !475, line: 860, column: 11)
!2104 = !DILocation(line: 860, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !475, line: 860, column: 11)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !475, line: 860, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !475, line: 860, column: 11)
!2108 = !DILocation(line: 860, column: 11, scope: !2106)
!2109 = !DILocation(line: 860, column: 11, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2106, file: !475, line: 860, column: 11)
!2111 = !DILocation(line: 860, column: 11, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !475, line: 860, column: 11)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !475, line: 860, column: 11)
!2114 = !DILocation(line: 860, column: 11, scope: !2113)
!2115 = !DILocation(line: 0, scope: !961, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 860, column: 11, scope: !2112)
!2117 = !DILocation(line: 320, column: 10, scope: !961, inlinedAt: !2116)
!2118 = !DILocation(line: 320, column: 42, scope: !961, inlinedAt: !2116)
!2119 = !DILocation(line: 320, column: 3, scope: !961, inlinedAt: !2116)
!2120 = !DILocation(line: 320, column: 49, scope: !961, inlinedAt: !2116)
!2121 = !DILocation(line: 321, column: 10, scope: !961, inlinedAt: !2116)
!2122 = !DILocation(line: 321, column: 25, scope: !961, inlinedAt: !2116)
!2123 = !DILocation(line: 322, column: 30, scope: !978, inlinedAt: !2116)
!2124 = !DILocation(line: 322, column: 7, scope: !961, inlinedAt: !2116)
!2125 = !DILocation(line: 324, column: 21, scope: !961, inlinedAt: !2116)
!2126 = !DILocation(line: 325, column: 3, scope: !982, inlinedAt: !2116)
!2127 = !DILocation(line: 0, scope: !749, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 327, column: 12, scope: !985, inlinedAt: !2116)
!2129 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !2128)
!2130 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !2128)
!2131 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !2128)
!2132 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !2128)
!2133 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !2128)
!2134 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !2128)
!2135 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !2128)
!2136 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !2128)
!2137 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !2128)
!2138 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !2128)
!2139 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !2128)
!2140 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !2128)
!2141 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !2128)
!2142 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !2128)
!2143 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !2128)
!2144 = !DILocation(line: 327, column: 5, scope: !985, inlinedAt: !2116)
!2145 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !2128)
!2146 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !2128)
!2147 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !2128)
!2148 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !2128)
!2149 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !2128)
!2150 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !2128)
!2151 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !2128)
!2152 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !2128)
!2153 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !2128)
!2154 = distinct !{!2154, !2153, !2155, !934, !935}
!2155 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !2128)
!2156 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !2128)
!2157 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !2128)
!2158 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !2128)
!2159 = !DILocation(line: 327, column: 29, scope: !1019, inlinedAt: !2116)
!2160 = !DILocation(line: 327, column: 32, scope: !1019, inlinedAt: !2116)
!2161 = !DILocation(line: 329, column: 14, scope: !1022, inlinedAt: !2116)
!2162 = !DILocation(line: 329, column: 23, scope: !1022, inlinedAt: !2116)
!2163 = !DILocation(line: 329, column: 33, scope: !1022, inlinedAt: !2116)
!2164 = !DILocation(line: 330, column: 39, scope: !1026, inlinedAt: !2116)
!2165 = !DILocation(line: 330, column: 44, scope: !1026, inlinedAt: !2116)
!2166 = !DILocation(line: 332, column: 18, scope: !1029, inlinedAt: !2116)
!2167 = !DILocation(line: 333, column: 18, scope: !1029, inlinedAt: !2116)
!2168 = !DILocation(line: 333, column: 27, scope: !1029, inlinedAt: !2116)
!2169 = !DILocation(line: 333, column: 37, scope: !1029, inlinedAt: !2116)
!2170 = !DILocation(line: 335, column: 50, scope: !1022, inlinedAt: !2116)
!2171 = !DILocation(line: 334, column: 9, scope: !1029, inlinedAt: !2116)
!2172 = !DILocation(line: 335, column: 14, scope: !1022, inlinedAt: !2116)
!2173 = !DILocation(line: 327, column: 42, scope: !1019, inlinedAt: !2116)
!2174 = distinct !{!2174, !2144, !2175, !934, !935}
!2175 = !DILocation(line: 336, column: 5, scope: !985, inlinedAt: !2116)
!2176 = !DILocation(line: 337, column: 6, scope: !986, inlinedAt: !2116)
!2177 = !DILocation(line: 325, column: 43, scope: !987, inlinedAt: !2116)
!2178 = !DILocation(line: 325, column: 36, scope: !987, inlinedAt: !2116)
!2179 = distinct !{!2179, !2126, !2180, !934, !935}
!2180 = !DILocation(line: 338, column: 3, scope: !982, inlinedAt: !2116)
!2181 = !DILocation(line: 339, column: 10, scope: !961, inlinedAt: !2116)
!2182 = !DILocation(line: 339, column: 25, scope: !961, inlinedAt: !2116)
!2183 = !DILocation(line: 340, column: 4, scope: !961, inlinedAt: !2116)
!2184 = !DILocation(line: 342, column: 32, scope: !1048, inlinedAt: !2116)
!2185 = !DILocation(line: 342, column: 5, scope: !1048, inlinedAt: !2116)
!2186 = !DILocation(line: 342, column: 30, scope: !1048, inlinedAt: !2116)
!2187 = !DILocation(line: 341, column: 3, scope: !1049, inlinedAt: !2116)
!2188 = !DILocation(line: 342, column: 34, scope: !1048, inlinedAt: !2116)
!2189 = !DILocation(line: 342, column: 12, scope: !1048, inlinedAt: !2116)
!2190 = !DILocation(line: 341, column: 21, scope: !1048, inlinedAt: !2116)
!2191 = !DILocation(line: 341, column: 15, scope: !1048, inlinedAt: !2116)
!2192 = distinct !{!2192, !2187, !2193, !934, !935}
!2193 = !DILocation(line: 342, column: 36, scope: !1049, inlinedAt: !2116)
!2194 = !DILocation(line: 0, scope: !2106)
!2195 = !DILocation(line: 860, column: 11, scope: !2107)
!2196 = distinct !{!2196, !2102, !2102, !934, !935}
!2197 = !DILocation(line: 820, column: 31, scope: !1736)
!2198 = distinct !{!2198, !1721, !2199, !934, !935}
!2199 = !DILocation(line: 862, column: 5, scope: !1722)
!2200 = !DILocation(line: 866, column: 5, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 866, column: 5)
!2202 = !DILocation(line: 867, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !475, line: 867, column: 7)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !475, line: 866, column: 5)
!2205 = !DILocation(line: 867, column: 7, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !475, line: 867, column: 7)
!2207 = !DILocation(line: 867, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !475, line: 867, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !475, line: 867, column: 7)
!2210 = !DILocation(line: 867, column: 7, scope: !2209)
!2211 = !DILocation(line: 0, scope: !2203)
!2212 = !DILocation(line: 866, column: 24, scope: !2204)
!2213 = !DILocation(line: 866, column: 17, scope: !2204)
!2214 = distinct !{!2214, !2200, !2215, !934, !935}
!2215 = !DILocation(line: 867, column: 7, scope: !2201)
!2216 = !DILocation(line: 868, column: 5, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !475, line: 868, column: 5)
!2218 = distinct !DILexicalBlock(scope: !1702, file: !475, line: 868, column: 5)
!2219 = !DILocation(line: 868, column: 5, scope: !2218)
!2220 = !DILocation(line: 868, column: 5, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2218, file: !475, line: 868, column: 5)
!2222 = !DILocation(line: 868, column: 5, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !475, line: 868, column: 5)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !475, line: 868, column: 5)
!2225 = !DILocation(line: 868, column: 5, scope: !2224)
!2226 = !DILocation(line: 0, scope: !2218)
!2227 = !DILocation(line: 870, column: 9, scope: !1708)
!2228 = !DILocation(line: 870, column: 47, scope: !1708)
!2229 = !DILocation(line: 870, column: 9, scope: !1702)
!2230 = !DILocation(line: 873, column: 26, scope: !1707)
!2231 = !DILocation(line: 0, scope: !1196, inlinedAt: !1706)
!2232 = !DILocation(line: 30, column: 3, scope: !1196, inlinedAt: !1706)
!2233 = !DILocation(line: 31, column: 5, scope: !1196, inlinedAt: !1706)
!2234 = !DILocation(line: 33, column: 14, scope: !1420, inlinedAt: !1706)
!2235 = !DILocation(line: 33, column: 31, scope: !1420, inlinedAt: !1706)
!2236 = !DILocation(line: 33, column: 7, scope: !1196, inlinedAt: !1706)
!2237 = !DILocation(line: 37, column: 1, scope: !1196, inlinedAt: !1706)
!2238 = !DILocation(line: 874, column: 13, scope: !1707)
!2239 = !DILocation(line: 35, column: 10, scope: !1196, inlinedAt: !1706)
!2240 = !DILocation(line: 36, column: 17, scope: !1196, inlinedAt: !1706)
!2241 = !DILocation(line: 36, column: 63, scope: !1196, inlinedAt: !1706)
!2242 = !DILocation(line: 36, column: 10, scope: !1196, inlinedAt: !1706)
!2243 = !DILocation(line: 874, column: 21, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !1707, file: !475, line: 874, column: 13)
!2245 = !DILocation(line: 805, column: 49, scope: !1703)
!2246 = distinct !{!2246, !1711, !2247, !934, !935}
!2247 = !DILocation(line: 877, column: 3, scope: !1704)
!2248 = !DILocation(line: 881, column: 3, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 881, column: 3)
!2250 = !DILocation(line: 883, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !475, line: 883, column: 5)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !475, line: 882, column: 3)
!2253 = distinct !DILexicalBlock(scope: !2249, file: !475, line: 881, column: 3)
!2254 = !DILocation(line: 884, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !475, line: 884, column: 7)
!2256 = distinct !DILexicalBlock(scope: !2251, file: !475, line: 883, column: 5)
!2257 = !DILocation(line: 884, column: 7, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2255, file: !475, line: 884, column: 7)
!2259 = !DILocation(line: 884, column: 7, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !475, line: 884, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !475, line: 884, column: 7)
!2262 = !DILocation(line: 884, column: 7, scope: !2261)
!2263 = !DILocation(line: 0, scope: !961, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 884, column: 7, scope: !2260)
!2265 = !DILocation(line: 320, column: 10, scope: !961, inlinedAt: !2264)
!2266 = !DILocation(line: 320, column: 42, scope: !961, inlinedAt: !2264)
!2267 = !DILocation(line: 320, column: 3, scope: !961, inlinedAt: !2264)
!2268 = !DILocation(line: 320, column: 49, scope: !961, inlinedAt: !2264)
!2269 = !DILocation(line: 321, column: 10, scope: !961, inlinedAt: !2264)
!2270 = !DILocation(line: 321, column: 25, scope: !961, inlinedAt: !2264)
!2271 = !DILocation(line: 322, column: 30, scope: !978, inlinedAt: !2264)
!2272 = !DILocation(line: 322, column: 7, scope: !961, inlinedAt: !2264)
!2273 = !DILocation(line: 324, column: 21, scope: !961, inlinedAt: !2264)
!2274 = !DILocation(line: 325, column: 3, scope: !982, inlinedAt: !2264)
!2275 = !DILocation(line: 0, scope: !749, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 327, column: 12, scope: !985, inlinedAt: !2264)
!2277 = !DILocation(line: 247, column: 20, scope: !749, inlinedAt: !2276)
!2278 = !DILocation(line: 247, column: 11, scope: !749, inlinedAt: !2276)
!2279 = !DILocation(line: 247, column: 45, scope: !749, inlinedAt: !2276)
!2280 = !DILocation(line: 247, column: 36, scope: !749, inlinedAt: !2276)
!2281 = !DILocation(line: 247, column: 54, scope: !749, inlinedAt: !2276)
!2282 = !DILocation(line: 248, column: 15, scope: !749, inlinedAt: !2276)
!2283 = !DILocation(line: 248, column: 6, scope: !749, inlinedAt: !2276)
!2284 = !DILocation(line: 248, column: 23, scope: !749, inlinedAt: !2276)
!2285 = !DILocation(line: 247, column: 61, scope: !749, inlinedAt: !2276)
!2286 = !DILocation(line: 248, column: 40, scope: !749, inlinedAt: !2276)
!2287 = !DILocation(line: 248, column: 31, scope: !749, inlinedAt: !2276)
!2288 = !DILocation(line: 248, column: 29, scope: !749, inlinedAt: !2276)
!2289 = !DILocation(line: 249, column: 12, scope: !915, inlinedAt: !2276)
!2290 = !DILocation(line: 249, column: 7, scope: !749, inlinedAt: !2276)
!2291 = !DILocation(line: 251, column: 15, scope: !918, inlinedAt: !2276)
!2292 = !DILocation(line: 327, column: 5, scope: !985, inlinedAt: !2264)
!2293 = !DILocation(line: 258, column: 22, scope: !921, inlinedAt: !2276)
!2294 = !DILocation(line: 259, column: 18, scope: !921, inlinedAt: !2276)
!2295 = !DILocation(line: 260, column: 14, scope: !921, inlinedAt: !2276)
!2296 = !DILocation(line: 260, column: 5, scope: !921, inlinedAt: !2276)
!2297 = !DILocation(line: 260, column: 13, scope: !921, inlinedAt: !2276)
!2298 = !DILocation(line: 261, column: 12, scope: !921, inlinedAt: !2276)
!2299 = !DILocation(line: 256, column: 21, scope: !922, inlinedAt: !2276)
!2300 = !DILocation(line: 256, column: 15, scope: !922, inlinedAt: !2276)
!2301 = !DILocation(line: 256, column: 3, scope: !923, inlinedAt: !2276)
!2302 = distinct !{!2302, !2301, !2303, !934, !935}
!2303 = !DILocation(line: 262, column: 3, scope: !923, inlinedAt: !2276)
!2304 = !DILocation(line: 263, column: 26, scope: !749, inlinedAt: !2276)
!2305 = !DILocation(line: 263, column: 12, scope: !749, inlinedAt: !2276)
!2306 = !DILocation(line: 263, column: 11, scope: !749, inlinedAt: !2276)
!2307 = !DILocation(line: 327, column: 29, scope: !1019, inlinedAt: !2264)
!2308 = !DILocation(line: 327, column: 32, scope: !1019, inlinedAt: !2264)
!2309 = !DILocation(line: 329, column: 14, scope: !1022, inlinedAt: !2264)
!2310 = !DILocation(line: 329, column: 23, scope: !1022, inlinedAt: !2264)
!2311 = !DILocation(line: 329, column: 33, scope: !1022, inlinedAt: !2264)
!2312 = !DILocation(line: 330, column: 39, scope: !1026, inlinedAt: !2264)
!2313 = !DILocation(line: 330, column: 44, scope: !1026, inlinedAt: !2264)
!2314 = !DILocation(line: 332, column: 18, scope: !1029, inlinedAt: !2264)
!2315 = !DILocation(line: 333, column: 18, scope: !1029, inlinedAt: !2264)
!2316 = !DILocation(line: 333, column: 27, scope: !1029, inlinedAt: !2264)
!2317 = !DILocation(line: 333, column: 37, scope: !1029, inlinedAt: !2264)
!2318 = !DILocation(line: 335, column: 50, scope: !1022, inlinedAt: !2264)
!2319 = !DILocation(line: 334, column: 9, scope: !1029, inlinedAt: !2264)
!2320 = !DILocation(line: 335, column: 14, scope: !1022, inlinedAt: !2264)
!2321 = !DILocation(line: 327, column: 42, scope: !1019, inlinedAt: !2264)
!2322 = distinct !{!2322, !2292, !2323, !934, !935}
!2323 = !DILocation(line: 336, column: 5, scope: !985, inlinedAt: !2264)
!2324 = !DILocation(line: 337, column: 6, scope: !986, inlinedAt: !2264)
!2325 = !DILocation(line: 325, column: 43, scope: !987, inlinedAt: !2264)
!2326 = !DILocation(line: 325, column: 36, scope: !987, inlinedAt: !2264)
!2327 = distinct !{!2327, !2274, !2328, !934, !935}
!2328 = !DILocation(line: 338, column: 3, scope: !982, inlinedAt: !2264)
!2329 = !DILocation(line: 339, column: 10, scope: !961, inlinedAt: !2264)
!2330 = !DILocation(line: 339, column: 25, scope: !961, inlinedAt: !2264)
!2331 = !DILocation(line: 340, column: 4, scope: !961, inlinedAt: !2264)
!2332 = !DILocation(line: 342, column: 32, scope: !1048, inlinedAt: !2264)
!2333 = !DILocation(line: 342, column: 5, scope: !1048, inlinedAt: !2264)
!2334 = !DILocation(line: 342, column: 30, scope: !1048, inlinedAt: !2264)
!2335 = !DILocation(line: 341, column: 3, scope: !1049, inlinedAt: !2264)
!2336 = !DILocation(line: 342, column: 34, scope: !1048, inlinedAt: !2264)
!2337 = !DILocation(line: 342, column: 12, scope: !1048, inlinedAt: !2264)
!2338 = !DILocation(line: 341, column: 21, scope: !1048, inlinedAt: !2264)
!2339 = !DILocation(line: 341, column: 15, scope: !1048, inlinedAt: !2264)
!2340 = distinct !{!2340, !2335, !2341, !934, !935}
!2341 = !DILocation(line: 342, column: 36, scope: !1049, inlinedAt: !2264)
!2342 = !DILocation(line: 0, scope: !2255)
!2343 = !DILocation(line: 883, column: 24, scope: !2256)
!2344 = !DILocation(line: 883, column: 17, scope: !2256)
!2345 = distinct !{!2345, !2250, !2346, !934, !935}
!2346 = !DILocation(line: 884, column: 7, scope: !2251)
!2347 = !DILocation(line: 885, column: 5, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !475, line: 885, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2252, file: !475, line: 885, column: 5)
!2350 = !DILocation(line: 885, column: 5, scope: !2349)
!2351 = !DILocation(line: 885, column: 5, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2349, file: !475, line: 885, column: 5)
!2353 = !DILocation(line: 885, column: 5, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !475, line: 885, column: 5)
!2355 = distinct !DILexicalBlock(scope: !2352, file: !475, line: 885, column: 5)
!2356 = !DILocation(line: 885, column: 5, scope: !2355)
!2357 = !DILocation(line: 0, scope: !2349)
!2358 = !DILocation(line: 881, column: 21, scope: !2253)
!2359 = !DILocation(line: 881, column: 15, scope: !2253)
!2360 = distinct !{!2360, !2248, !2361, !934, !935}
!2361 = !DILocation(line: 886, column: 3, scope: !2249)
!2362 = !DILocation(line: 890, column: 18, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 890, column: 7)
!2364 = !DILocation(line: 890, column: 7, scope: !1479)
!2365 = !DILocation(line: 892, column: 11, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !475, line: 892, column: 11)
!2367 = distinct !DILexicalBlock(scope: !2363, file: !475, line: 891, column: 5)
!2368 = !DILocation(line: 892, column: 51, scope: !2366)
!2369 = !DILocation(line: 892, column: 11, scope: !2367)
!2370 = !DILocation(line: 893, column: 16, scope: !2366)
!2371 = !DILocation(line: 893, column: 9, scope: !2366)
!2372 = !DILocation(line: 895, column: 9, scope: !2366)
!2373 = !DILocation(line: 897, column: 7, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !1479, file: !475, line: 897, column: 7)
!2375 = !DILocation(line: 897, column: 47, scope: !2374)
!2376 = !DILocation(line: 897, column: 7, scope: !1479)
!2377 = !DILocation(line: 898, column: 5, scope: !2374)
!2378 = !DILocation(line: 899, column: 17, scope: !1479)
!2379 = !DILocation(line: 900, column: 30, scope: !1479)
!2380 = !DILocation(line: 901, column: 3, scope: !1479)
!2381 = !DILocation(line: 902, column: 1, scope: !1479)
!2382 = !DISubprogram(name: "LocaleCompare", scope: !852, file: !852, line: 66, type: !2383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!491, !631, !631}
!2385 = !DISubprogram(name: "CloneImage", scope: !75, file: !75, line: 508, type: !2386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!506, !1200, !726, !726, !2388, !842}
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!2389 = !DISubprogram(name: "SetImageType", scope: !2390, file: !2390, line: 37, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2390 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!520, !506, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!2394 = !DISubprogram(name: "GetVirtualPixels", scope: !2395, file: !2395, line: 44, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2395 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!717, !1200, !1466, !1466, !726, !726, !842}
!2398 = !DISubprogram(name: "GetPixelIntensity", scope: !328, file: !328, line: 181, type: !2399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!719, !1200, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !717)
!2402 = !DISubprogram(name: "GetPreviousImageInList", scope: !2403, file: !2403, line: 34, type: !2404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2403 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!506, !1200}
!2406 = !DISubprogram(name: "DestroyImage", scope: !75, file: !75, line: 510, type: !2407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!506, !506}
!2409 = !DILocation(line: 0, scope: !723)
!2410 = !DILocation(line: 980, column: 14, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !723, file: !475, line: 980, column: 7)
!2412 = !DILocation(line: 980, column: 20, scope: !2411)
!2413 = !DILocation(line: 980, column: 7, scope: !723)
!2414 = !DILocation(line: 981, column: 68, scope: !2411)
!2415 = !DILocation(line: 981, column: 12, scope: !2411)
!2416 = !DILocation(line: 981, column: 5, scope: !2411)
!2417 = !DILocation(line: 983, column: 23, scope: !723)
!2418 = !DILocation(line: 984, column: 13, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !723, file: !475, line: 984, column: 7)
!2420 = !DILocation(line: 984, column: 7, scope: !723)
!2421 = !DILocation(line: 993, column: 3, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !475, line: 993, column: 3)
!2423 = distinct !DILexicalBlock(scope: !723, file: !475, line: 993, column: 3)
!2424 = !DILocation(line: 994, column: 3, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !723, file: !475, line: 994, column: 3)
!2426 = !DILocation(line: 996, column: 5, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2428, file: !475, line: 995, column: 3)
!2428 = distinct !DILexicalBlock(scope: !2425, file: !475, line: 994, column: 3)
!2429 = !DILocation(line: 996, column: 24, scope: !2427)
!2430 = !{!2431, !801, i64 0}
!2431 = !{!"_TableType", !801, i64 0, !801, i64 8, !801, i64 16}
!2432 = !DILocation(line: 997, column: 18, scope: !2427)
!2433 = !DILocation(line: 997, column: 24, scope: !2427)
!2434 = !{!2431, !801, i64 8}
!2435 = !DILocation(line: 998, column: 18, scope: !2427)
!2436 = !DILocation(line: 998, column: 22, scope: !2427)
!2437 = !{!2431, !801, i64 16}
!2438 = !DILocation(line: 994, column: 35, scope: !2428)
!2439 = !DILocation(line: 994, column: 23, scope: !2428)
!2440 = distinct !{!2440, !2424, !2441, !934, !935}
!2441 = !DILocation(line: 999, column: 3, scope: !2425)
!2442 = !DILocation(line: 1002, column: 22, scope: !723)
!2443 = !DILocation(line: 1002, column: 13, scope: !723)
!2444 = !DILocation(line: 1003, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !475, line: 1003, column: 3)
!2446 = distinct !DILexicalBlock(scope: !723, file: !475, line: 1003, column: 3)
!2447 = !DILocation(line: 1003, column: 3, scope: !2446)
!2448 = !DILocation(line: 1009, column: 18, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2445, file: !475, line: 1004, column: 3)
!2450 = !DILocation(line: 1009, column: 5, scope: !2449)
!2451 = !DILocation(line: 1010, column: 12, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !475, line: 1010, column: 11)
!2453 = !DILocation(line: 1010, column: 25, scope: !2452)
!2454 = !DILocation(line: 1010, column: 32, scope: !2452)
!2455 = !DILocation(line: 1010, column: 56, scope: !2452)
!2456 = !DILocation(line: 1011, column: 25, scope: !2452)
!2457 = !DILocation(line: 1011, column: 45, scope: !2452)
!2458 = !DILocation(line: 1011, column: 35, scope: !2452)
!2459 = !DILocation(line: 1011, column: 32, scope: !2452)
!2460 = !DILocation(line: 1010, column: 11, scope: !2449)
!2461 = !DILocation(line: 1012, column: 28, scope: !2452)
!2462 = distinct !{!2462, !2450, !2463, !934, !935}
!2463 = !DILocation(line: 1017, column: 9, scope: !2449)
!2464 = !DILocation(line: 1018, column: 9, scope: !2449)
!2465 = !DILocation(line: 1023, column: 9, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !475, line: 1023, column: 9)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !475, line: 1019, column: 7)
!2468 = distinct !DILexicalBlock(scope: !2449, file: !475, line: 1018, column: 9)
!2469 = !DILocation(line: 1023, column: 9, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2466, file: !475, line: 1023, column: 9)
!2471 = distinct !{!2471, !2465, !2465, !934, !935}
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 1024, column: 9, scope: !2467)
!2474 = !DILocation(line: 1024, column: 33, scope: !2467)
!2475 = !DILocation(line: 1025, column: 42, scope: !2467)
!2476 = !DILocation(line: 1025, column: 27, scope: !2467)
!2477 = !DILocation(line: 1025, column: 33, scope: !2467)
!2478 = !DILocation(line: 1026, column: 49, scope: !2467)
!2479 = !DILocation(line: 1026, column: 27, scope: !2467)
!2480 = !DILocation(line: 1026, column: 31, scope: !2467)
!2481 = !DILocation(line: 1027, column: 30, scope: !2467)
!2482 = !DILocation(line: 1028, column: 19, scope: !2467)
!2483 = !DILocation(line: 1032, column: 25, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2467, file: !475, line: 1032, column: 13)
!2485 = !DILocation(line: 1032, column: 40, scope: !2484)
!2486 = !DILocation(line: 1032, column: 13, scope: !2467)
!2487 = !DILocation(line: 1034, column: 23, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !475, line: 1033, column: 11)
!2489 = !DILocation(line: 1035, column: 28, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2488, file: !475, line: 1035, column: 17)
!2491 = !DILocation(line: 1035, column: 17, scope: !2488)
!2492 = !DILocation(line: 1041, column: 17, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !475, line: 1041, column: 17)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !475, line: 1036, column: 15)
!2495 = !DILocation(line: 0, scope: !2493)
!2496 = !DILocation(line: 1042, column: 17, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !475, line: 1042, column: 17)
!2498 = !DILocation(line: 1041, column: 17, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !475, line: 1041, column: 17)
!2500 = distinct !{!2500, !2492, !2492, !934, !935}
!2501 = !DILocation(line: 1044, column: 19, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !475, line: 1043, column: 17)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !475, line: 1042, column: 17)
!2504 = !DILocation(line: 1044, column: 38, scope: !2502)
!2505 = !DILocation(line: 1045, column: 32, scope: !2502)
!2506 = !DILocation(line: 1045, column: 38, scope: !2502)
!2507 = !DILocation(line: 1046, column: 32, scope: !2502)
!2508 = !DILocation(line: 1046, column: 36, scope: !2502)
!2509 = !DILocation(line: 1042, column: 49, scope: !2503)
!2510 = !DILocation(line: 1042, column: 37, scope: !2503)
!2511 = distinct !{!2511, !2496, !2512, !934, !935}
!2512 = !DILocation(line: 1047, column: 17, scope: !2497)
!2513 = !DILocation(line: 0, scope: !2449)
!2514 = !DILocation(line: 1003, column: 36, scope: !2445)
!2515 = distinct !{!2515, !2447, !2516, !934, !935}
!2516 = !DILocation(line: 1054, column: 3, scope: !2446)
!2517 = !DILocation(line: 1058, column: 3, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !723, file: !475, line: 1058, column: 3)
!2519 = !DILocation(line: 1058, column: 3, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2518, file: !475, line: 1058, column: 3)
!2521 = distinct !{!2521, !2517, !2517, !934, !935}
!2522 = !DILocation(line: 0, scope: !2518)
!2523 = !DILocation(line: 1059, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !723, file: !475, line: 1059, column: 3)
!2525 = !DILocation(line: 1059, column: 3, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2524, file: !475, line: 1059, column: 3)
!2527 = distinct !{!2527, !2523, !2523, !934, !935}
!2528 = !DILocation(line: 0, scope: !2524)
!2529 = !DILocation(line: 1060, column: 19, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !723, file: !475, line: 1060, column: 7)
!2531 = !DILocation(line: 1060, column: 7, scope: !723)
!2532 = !DILocation(line: 1061, column: 61, scope: !2530)
!2533 = !DILocation(line: 1061, column: 32, scope: !2530)
!2534 = !DILocation(line: 1061, column: 12, scope: !2530)
!2535 = !DILocation(line: 1061, column: 5, scope: !2530)
!2536 = !DILocation(line: 1062, column: 23, scope: !723)
!2537 = !DILocation(line: 1063, column: 3, scope: !723)
!2538 = !DILocation(line: 1064, column: 1, scope: !723)
!2539 = distinct !DISubprogram(name: "PackbitsEncodeImage", scope: !475, file: !475, line: 1097, type: !724, scopeLine: 1099, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2540)
!2540 = !{!2541, !2542, !2543, !2544, !2545, !2546, !2547}
!2541 = !DILocalVariable(name: "image", arg: 1, scope: !2539, file: !475, line: 1097, type: !506)
!2542 = !DILocalVariable(name: "length", arg: 2, scope: !2539, file: !475, line: 1098, type: !726)
!2543 = !DILocalVariable(name: "pixels", arg: 3, scope: !2539, file: !475, line: 1098, type: !727)
!2544 = !DILocalVariable(name: "count", scope: !2539, file: !475, line: 1101, type: !491)
!2545 = !DILocalVariable(name: "i", scope: !2539, file: !475, line: 1104, type: !478)
!2546 = !DILocalVariable(name: "j", scope: !2539, file: !475, line: 1105, type: !478)
!2547 = !DILocalVariable(name: "packbits", scope: !2539, file: !475, line: 1108, type: !505)
!2548 = !DILocation(line: 0, scope: !2539)
!2549 = !DILocation(line: 1115, column: 14, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2539, file: !475, line: 1115, column: 7)
!2551 = !DILocation(line: 1115, column: 20, scope: !2550)
!2552 = !DILocation(line: 1115, column: 7, scope: !2539)
!2553 = !DILocation(line: 1116, column: 68, scope: !2550)
!2554 = !DILocation(line: 1116, column: 12, scope: !2550)
!2555 = !DILocation(line: 1116, column: 5, scope: !2550)
!2556 = !DILocation(line: 1118, column: 30, scope: !2539)
!2557 = !DILocation(line: 1119, column: 16, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2539, file: !475, line: 1119, column: 7)
!2559 = !DILocation(line: 1119, column: 7, scope: !2539)
!2560 = !DILocation(line: 1120, column: 5, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !475, line: 1120, column: 5)
!2562 = distinct !DILexicalBlock(scope: !2558, file: !475, line: 1120, column: 5)
!2563 = !DILocation(line: 0, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2539, file: !475, line: 1122, column: 3)
!2565 = !DILocation(line: 1122, column: 3, scope: !2564)
!2566 = !DILocation(line: 1129, column: 16, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !475, line: 1127, column: 7)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !475, line: 1125, column: 5)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !475, line: 1123, column: 3)
!2570 = distinct !DILexicalBlock(scope: !2564, file: !475, line: 1122, column: 3)
!2571 = !DILocation(line: 1130, column: 36, scope: !2567)
!2572 = !DILocation(line: 1130, column: 16, scope: !2567)
!2573 = !DILocation(line: 1131, column: 9, scope: !2567)
!2574 = !DILocation(line: 1136, column: 16, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2568, file: !475, line: 1134, column: 7)
!2576 = !DILocation(line: 1137, column: 36, scope: !2575)
!2577 = !DILocation(line: 1137, column: 16, scope: !2575)
!2578 = !DILocation(line: 1138, column: 36, scope: !2575)
!2579 = !DILocation(line: 1138, column: 16, scope: !2575)
!2580 = !DILocation(line: 1139, column: 9, scope: !2575)
!2581 = !DILocation(line: 1144, column: 14, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !475, line: 1144, column: 13)
!2583 = distinct !DILexicalBlock(scope: !2568, file: !475, line: 1142, column: 7)
!2584 = !DILocation(line: 1144, column: 25, scope: !2582)
!2585 = !DILocation(line: 1144, column: 22, scope: !2582)
!2586 = !DILocation(line: 1144, column: 38, scope: !2582)
!2587 = !DILocation(line: 1144, column: 57, scope: !2582)
!2588 = !DILocation(line: 1144, column: 54, scope: !2582)
!2589 = !DILocation(line: 1144, column: 13, scope: !2583)
!2590 = !DILocation(line: 1146, column: 20, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2582, file: !475, line: 1145, column: 11)
!2592 = !DILocation(line: 1147, column: 40, scope: !2591)
!2593 = !DILocation(line: 1147, column: 20, scope: !2591)
!2594 = !DILocation(line: 1148, column: 13, scope: !2591)
!2595 = !DILocation(line: 1150, column: 16, scope: !2583)
!2596 = !DILocation(line: 1151, column: 36, scope: !2583)
!2597 = !DILocation(line: 1151, column: 16, scope: !2583)
!2598 = !DILocation(line: 1152, column: 36, scope: !2583)
!2599 = !DILocation(line: 1152, column: 16, scope: !2583)
!2600 = !DILocation(line: 1153, column: 36, scope: !2583)
!2601 = !DILocation(line: 1153, column: 16, scope: !2583)
!2602 = !DILocation(line: 1154, column: 9, scope: !2583)
!2603 = distinct !{!2603, !2565, !2604, !934, !935}
!2604 = !DILocation(line: 1196, column: 3, scope: !2564)
!2605 = !DILocation(line: 1158, column: 14, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !475, line: 1158, column: 13)
!2607 = distinct !DILexicalBlock(scope: !2568, file: !475, line: 1157, column: 7)
!2608 = !DILocation(line: 1158, column: 33, scope: !2606)
!2609 = !DILocation(line: 1158, column: 25, scope: !2606)
!2610 = !DILocation(line: 1158, column: 22, scope: !2606)
!2611 = !DILocation(line: 1158, column: 38, scope: !2606)
!2612 = !DILocation(line: 1158, column: 65, scope: !2606)
!2613 = !DILocation(line: 1158, column: 57, scope: !2606)
!2614 = !DILocation(line: 1158, column: 54, scope: !2606)
!2615 = !DILocation(line: 1158, column: 13, scope: !2607)
!2616 = !DILocation(line: 1164, column: 13, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2606, file: !475, line: 1159, column: 11)
!2618 = !DILocation(line: 0, scope: !2617)
!2619 = !DILocation(line: 1164, column: 37, scope: !2617)
!2620 = !DILocation(line: 1164, column: 42, scope: !2617)
!2621 = !DILocation(line: 1164, column: 65, scope: !2617)
!2622 = !DILocation(line: 1164, column: 57, scope: !2617)
!2623 = !DILocation(line: 1164, column: 54, scope: !2617)
!2624 = !DILocation(line: 1166, column: 20, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2617, file: !475, line: 1165, column: 13)
!2626 = !DILocation(line: 1167, column: 25, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2625, file: !475, line: 1167, column: 19)
!2628 = !DILocation(line: 1167, column: 19, scope: !2625)
!2629 = distinct !{!2629, !2616, !2630, !934, !935}
!2630 = !DILocation(line: 1169, column: 13, scope: !2617)
!2631 = !DILocation(line: 1170, column: 16, scope: !2617)
!2632 = !DILocation(line: 1171, column: 40, scope: !2617)
!2633 = !DILocation(line: 1171, column: 20, scope: !2617)
!2634 = !DILocation(line: 1172, column: 40, scope: !2617)
!2635 = !DILocation(line: 1172, column: 20, scope: !2617)
!2636 = !DILocation(line: 1174, column: 13, scope: !2617)
!2637 = !DILocation(line: 0, scope: !2607)
!2638 = !DILocation(line: 1180, column: 25, scope: !2607)
!2639 = !DILocation(line: 1180, column: 9, scope: !2607)
!2640 = !DILocation(line: 1180, column: 36, scope: !2607)
!2641 = !DILocation(line: 1180, column: 17, scope: !2607)
!2642 = !DILocation(line: 1180, column: 33, scope: !2607)
!2643 = !DILocation(line: 1180, column: 55, scope: !2607)
!2644 = !DILocation(line: 1181, column: 52, scope: !2607)
!2645 = !DILocation(line: 1181, column: 38, scope: !2607)
!2646 = !DILocation(line: 1181, column: 35, scope: !2607)
!2647 = !DILocation(line: 1183, column: 25, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2607, file: !475, line: 1182, column: 9)
!2649 = !DILocation(line: 1183, column: 11, scope: !2648)
!2650 = !DILocation(line: 1183, column: 28, scope: !2648)
!2651 = !DILocation(line: 1185, column: 32, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2648, file: !475, line: 1185, column: 15)
!2653 = !DILocation(line: 1185, column: 42, scope: !2652)
!2654 = distinct !{!2654, !2639, !2655, !934, !935}
!2655 = !DILocation(line: 1187, column: 9, scope: !2607)
!2656 = !DILocation(line: 1188, column: 12, scope: !2607)
!2657 = !DILocation(line: 1189, column: 19, scope: !2607)
!2658 = !DILocation(line: 1189, column: 18, scope: !2607)
!2659 = !DILocation(line: 1191, column: 18, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2661, file: !475, line: 1190, column: 9)
!2661 = distinct !DILexicalBlock(scope: !2607, file: !475, line: 1190, column: 9)
!2662 = !DILocation(line: 1190, column: 21, scope: !2660)
!2663 = !DILocation(line: 1190, column: 9, scope: !2661)
!2664 = distinct !{!2664, !2663, !2665, !934, !935}
!2665 = !DILocation(line: 1191, column: 49, scope: !2661)
!2666 = !DILocation(line: 1190, column: 42, scope: !2660)
!2667 = !DILocation(line: 1191, column: 38, scope: !2660)
!2668 = !DILocation(line: 1197, column: 10, scope: !2539)
!2669 = !DILocation(line: 1198, column: 30, scope: !2539)
!2670 = !DILocation(line: 1199, column: 3, scope: !2539)
!2671 = !DILocation(line: 1200, column: 1, scope: !2539)
!2672 = distinct !DISubprogram(name: "ZLIBEncodeImage", scope: !475, file: !475, line: 1302, type: !2673, scopeLine: 1304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!520, !506, !726, !505}
!2675 = !{!2676, !2677, !2678}
!2676 = !DILocalVariable(name: "image", arg: 1, scope: !2672, file: !475, line: 1302, type: !506)
!2677 = !DILocalVariable(name: "length", arg: 2, scope: !2672, file: !475, line: 1303, type: !726)
!2678 = !DILocalVariable(name: "pixels", arg: 3, scope: !2672, file: !475, line: 1303, type: !505)
!2679 = !DILocation(line: 0, scope: !2672)
!2680 = !DILocation(line: 1307, column: 14, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2672, file: !475, line: 1307, column: 7)
!2682 = !DILocation(line: 1307, column: 20, scope: !2681)
!2683 = !DILocation(line: 1307, column: 7, scope: !2672)
!2684 = !DILocation(line: 1308, column: 68, scope: !2681)
!2685 = !DILocation(line: 1308, column: 12, scope: !2681)
!2686 = !DILocation(line: 1308, column: 5, scope: !2681)
!2687 = !DILocation(line: 1309, column: 39, scope: !2672)
!2688 = !DILocation(line: 1311, column: 12, scope: !2672)
!2689 = !DILocation(line: 1309, column: 10, scope: !2672)
!2690 = !DILocation(line: 1312, column: 3, scope: !2672)
!2691 = !DISubprogram(name: "FormatLocaleString", scope: !2692, file: !2692, line: 71, type: !2693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !838)
!2692 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!478, !2695, !726, !2696, null}
!2695 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !562)
!2696 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !631)
